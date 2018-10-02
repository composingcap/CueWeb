const EventEmitter = require("events").EventEmitter;
const net = require("net");
const ServerBase = require("./base.js");
const fs = require("fs");

const utils = require("../utils");

/**
 * Protocol Message Header Size
 * @constant MSG_LENGTH_SIZE
 * @type {Number}
 * @memberOf SocketProtocol
 */
const MSG_LENGTH_SIZE = 4;

/**
 * @class SocketProtocol
 * @classdesc SocketProtocol instances handle the marshalling of incoming and outgoing messages for a stream following a
 * predefined Protocol.
 *
 * @example <caption>The current protocol follows this structure (header and body)</caption>
 *
 * ----------------------
 * MESSAGE LENGTH
 * [UInt32BE]
 * ----------------------
 * JSON MESSAGE
 * [String]
 * ----------------------
 *
 * @extends EventEmitter
 * @param {net.Socket} socket
 */
class SocketProtocol extends EventEmitter {

	constructor(stream) {
		super();

		this._stream = stream;
		this._stream.on("data", this._read.bind(this));

		this._sizeBuffer = null;
		this._sizeBufferLength = 0;

		this._messageBuffer = null;
		this._messageBufferLength = 0;

	}

	/**
	 * @private
	 */
	_read(pck) {

		const pckLength = pck.length;
		let headerOffset = 0;

		if (!this._sizeBuffer) {

			this._sizeBuffer = Buffer.alloc(MSG_LENGTH_SIZE);

			if (pckLength < 4) {
				// partial size
				this._sizeBufferLength = pckLength;
				pck.copy(this._sizeBuffer, 0, 0, pckLength);
			} else {
				// full size header
				this._sizeBufferLength = MSG_LENGTH_SIZE;
				pck.copy(this._sizeBuffer, 0, 0, MSG_LENGTH_SIZE);
				headerOffset = MSG_LENGTH_SIZE;
			}

		} else if (this._sizeBufferLength !== MSG_LENGTH_SIZE) {

			if (this._sizeBufferLength + pckLength >= MSG_LENGTH_SIZE) {
				// full size header
				const sizeOffset = MSG_LENGTH_SIZE - this._sizeBufferLength;
				headerOffset = sizeOffset;

				pck.copy(this._sizeBuffer, this._sizeBufferLength, 0, sizeOffset);
				this._sizeBufferLength = MSG_LENGTH_SIZE;

			} else {
				pck.copy(this._sizeBuffer, this._sizeBufferLength, 0, pckLength);
				this._sizeBufferLength += pckLength;
			}
		}

		// We know the full message length
		if (this._sizeBufferLength === MSG_LENGTH_SIZE) {
			const msgLength = this._sizeBuffer.readUInt32BE(0);

			if (!this._messageBuffer) {
				this._messageBuffer = Buffer.alloc(msgLength);
				this._messageBufferLength = 0;
			}

			if (headerOffset > pckLength) return;

			const msgRemain = msgLength - this._messageBufferLength;
			const pckRemain = pckLength - headerOffset;


			if (msgRemain > pckRemain) { // only partial message
				pck.copy(this._messageBuffer, this._messageBufferLength, headerOffset, pckLength);
				this._messageBufferLength += pckRemain;

			} else if (msgRemain === pckRemain) { // exactly the message
				pck.copy(this._messageBuffer, this._messageBufferLength, headerOffset, pckLength);

				this._parseAndEmitMessage();

			} else { // pckRemain > msgRemain => more than the message

				// contains full msg
				const msgEndCursor = headerOffset + (msgLength - this._messageBufferLength);
				pck.copy(this._messageBuffer, this._messageBufferLength, headerOffset, msgEndCursor);

				this._parseAndEmitMessage();

				// handle remaining data
				const bufLeft = Buffer.alloc(pckLength - msgEndCursor);
				pck.copy(bufLeft, 0, msgEndCursor, pckLength);
				this._read(bufLeft);
			}
		}
	}

	/**
	 * @fires SocketProtocol#message
	 * @fires SocketProtocol#parse_error
	 * @private
	 */
	_parseAndEmitMessage() {
		let msgString = this._messageBuffer.toString("utf8");
		let msg;
		try {
			msg = JSON.parse(msgString);
		} catch (err) {
			msg = null;
			/**
			 * Message Parsing Error event
			 *
			 * @event SocketProtocol#parse_error
			 * @param {Error} err The occured Error
			 * @param {String} message The message String that could not be parsed
			 */
			this.emit("parse_error", err, msgString);
		} finally {
			// reset
			this._messageBuffer = null;
			this._messageBufferLength = 0;
			this._sizeBuffer = null;
			this._sizeBufferLength = 0;
		}

		if (msg) {
			/**
			 * Message Received event
			 *
			 * @event SocketProtocol#message
			 * @param {MaxNodeCommunication.Message} messsage The received message
			 */
			this.emit("message", msg);
		}
	}

	/**
	 * Writes and therefore sends a message to the underlying client socket.
	 * @param {Object} message The object to marshall and send to the client. The object will be transformed using JSON.stringify.
	 */
	write(message) {
		const msgString = JSON.stringify(message);
		const msgLength = Buffer.byteLength(msgString, "utf8");

		const out = Buffer.alloc(msgLength + 4);

		out.writeUInt32BE(msgLength, 0);
		out.write(msgString, 4);

		this._stream.write(out);
	}
}

SocketProtocol.MSG_LENGTH_SIZE = MSG_LENGTH_SIZE;

/**
 * @class SocketClient
 * @classdesc SocketClient wraps a connected client in a higher level class to simplify and streamline communication, handling and managing the client instance.
 * @extends EventEmitter
 * @implements ClientInterface
 * @param {net.Socket} socket The client socket
 */
class SocketClient extends EventEmitter {
	constructor(socket) {
		super();

		this._uid = utils.uniqID();
		this._socket = socket;

		this._socket.on("close", this._onConnectionClosed.bind(this));
		this._socket.on("error", this._onConnectionError.bind(this));

		this._protocol = new SocketProtocol(this._socket);
		this._protocol.on("message", this._onMsgReceived.bind(this));
		this._protocol.on("parse_error", this._onMsgParseError.bind(this));
	}

	/**
	 * @override
	 */
	get id() {
		return this._uid;
	}

	/**
	 * Call this to properly clean up after the client closed to leave no trace
	 * or memory around
	 * @private
	 */
	_destroy() {
		if (this._protocol) {
			this._protocol.removeAllListeners();
			this._protocol = null;
		}

		if (this._socket) {
			this._socket.removeAllListeners();
			this._socket = null;
		}

		this.removeAllListeners();
	}

	/**
	 * Handle received messages emitted by the protocol
	 * @private
	 * @param {MaxNodeCommunication.Message} message The received message object
	 * @fires ClientInterface#message
	 */
	_onMsgReceived(msg) {
		/**
		 * Message Received event
		 *
		 * @event SocketClient#message
		 * @param {MaxNodeCommunication.Message} messsage The received message
		 * @param {SocketClient} this A pointer to the emitting instance
		 */
		this.emit("message", msg, this);
	}

	/**
	 * Handle Message Parsing Errors by the protocol
	 * @private
	 * @fires SocketClient#message_error
	 * @param {Error} err The Error
	 * @param {String} msgString The String that couldn't be parsed
	 */
	_onMsgParseError(err, msgString) {

		/**
		 * Message Parsing Error event
		 *
		 * @event SocketClient#message_error
		 * @param {Error} err The occured error
		 * @param {Object} messsage The received message
		 * @param {ClientInterface} this A pointer to the emitting instance
		 */
		this.emit("message_error", err, msgString, this);
	}

	/**
	 * @fires SocketClient#closed
	 * @private
	 * @param {Boolean} hadError Whether the connection has been closed due to an error or not
	 */
	_onConnectionClosed(hadError) {
		/**
		 * Connection Closed Event
		 *
		 * @event SocketClient#closed
		 * @param {SocketClient} this A pointer to the emitting instance
		 */
		this.emit("closed", this);

		// Clean up here!
		this._destroy();
	}

	/**
	 * @fires SocketClient#error
	 * @private
	 * @param {Error} error The error that occured
	 */
	_onConnectionError(error) {

		/**
		 * Connection Error Event
		 *
		 * @event SocketClient#error
		 * @param {Error} error The error that occured
		 * @param {SocketClient} this A pointer to the emitting instance
		 */
		this.emit("error", error, this);
	}

	/**
	 * @override
	 */
	disconnect() {
		return new Promise((resolve, reject) => {
			if (!this._protocol) return reject(new Error("Client is already closed and doesn't need to be disconnected."));

			this._socket.end();
			this._socket.destroy();

			return resolve();
		});
	}

	/**
	 * @override
	 */
	write(obj) {
		return new Promise((resolve, reject) => {
			if (!this._protocol) return reject(new Error("Client is already closed and can't be written to anymore"));

			this._protocol.write(obj);
			return resolve();
		});
	}

}

/**
 * Protocol Message Header Size
 * @enum {Object} SOCKET_TYPES
 * @readonly
 * @memberOf SocketServer
 * @property {Number} NAMED_PIPE Named Pipe identifier
 * @property {Number} TCP_IP TCP/IP identifier
 * @property {Number} UNIX_SOCKET Unix Socket identifier
 */
const SOCKET_TYPES = Object.freeze({
	NAMED_PIPE: 0,
	TCP_IP: 1,
	UNIX_SOCKET: 2
});

/**
 * A bidirectional communication Socket server supporting communication via TCP/IP, Unix Sockets and Named Pipes.
 * @class
 * @classdesc Class
 * @implements ServerInterface
 * @extends EventEmitter
 *
 * @param {Object} options The options
 * @param {String} options.host The host to allow connections from when using TCP/IP
 * @param {String} options.path The path for the Unix Socket / Named Pipe to use. When this is set the socket will *not* use TCP/IP and ignore the host option
 * @param {String} options.port=0 The port to use (will be ignored if path is set). When set to 0 will use an OS assigned, free port.
 * @param {Number} options.maxConnections=1 The number of allowed connections (0 means no maximum)
 */
class SocketServer extends EventEmitter {

	constructor(options = {}) {
		super();

		this._clients = new Map();
		this._error = null;
		this._options = Object.assign({
			host: "0.0.0.0",
			path: null,
			port: 0,
			maxConnections: 1
		}, options);

		this._type = this._options.path ? process.platform === "win32" ? SOCKET_TYPES.NAMED_PIPE : SOCKET_TYPES.UNIX_SOCKET : SOCKET_TYPES.TCP_IP;
		this._state = ServerBase.STATES.CLOSED;
		this._initServer();
	}

	/**
	 * Init the Socket Server
	 * @private
	 */
	_initServer() {
		this._server = net.createServer();
		if (this._options.maxConnections) this._server.maxConnections = this._options.maxConnections;
		this._server.on("connection", this._onClientConnection.bind(this));
		this._server.on("close", this._onServerClose.bind(this));
		this._server.on("error", this._onServerError.bind(this));
	}

	/**
	 * Handle server close event
	 * @private
	 * @fires SocketServer#server_closes
	 */
	_onServerClose() {
		/**
		 * Server Closed Event
		 *
		 * @event SocketServer#close
		 */
		this.emit("close");
		if (this._state !== ServerBase.STATES.ERROR && this._state !== ServerBase.STATES.DESTROYED) this._state = ServerBase.STATES.CLOSED;
	}

	/**
	 * Handle a server error and close.
	 * @private
	 * @param {Error} err The error that occured
	 * @fires SocketServer#server_error
	 */
	_onServerError(err) {
		this._state = ServerBase.STATES.ERROR;
		this._error = err;

		/**
		 * Server Error Event
		 *
		 * @event SocketServer#error
		 * @param {Error} err The Error that occured
		*/
		this.emit("error", err);

		this.close();
	}

	/**
	 * Handle newly connected client
	 * @private
	 * @param {net.Socket} connection
	 * @fires SocketServer#client_connect
	 */
	_onClientConnection(connection) {
		const client = new SocketClient(connection);
		this._clients.set(client.id, client);

		client.on("message", this._onClientMessage.bind(this));
		client.on("closed", this._onClientClosed.bind(this));
		client.on("error", this._onClientError.bind(this));

		/**
		 * New Client Connection Event
		 *
		 * @event SocketServer#client_connect
		 * @param {SocketClient} client The connected client
		 */
		this.emit("client_connect", client);
	}

	/**
	 * Handle Closed Client connection
	 * @private
	 * @param {SocketClient} client
	 * @fires SocketServer#client_disconnect
	 */
	_onClientClosed(client) {
		this._clients.delete(client.id);

		/**
		 * Client Disconnected Event
		 *
		 * @event SocketServer#client_disconnect
		 * @param {SocketClient} client The disconnected client
		 */
		this.emit("client_disconnect", client);
	}

	/**
	 * Handle Client connection error
	 * @private
	 * @param {Error} err
	 * @param {SocketClient} client
	 * @fires SocketServer#client_error
	 */
	_onClientError(err, client) {
		/**
		 * Connection Error Event
		 *
		 * @event SocketServer#client_error
		 * @param {Error} error The error that occured
		 * @param {SocketClient} client A pointer to the emitting instance
		 */
		this.emit("client_error", err, client);

		// According to this https://nodejs.org/api/net.html#net_event_error_1 the close
		// event will be fired right after. So we will clean up there and not here.
	}

	/**
	 * Handle Client Message
	 * @private
	 * @param {MaxNodeCommunication.Message} msg The received message
	 * @param {SocketClient} client The client the message was received from
	 * @fires SocketServer#client_message
	 */
	_onClientMessage(msg, client) {

		/**
		 * Client Message Event
		 *
		 * @event SocketServer#client_message
		 * @param {MaxNodeCommunication.Message} message The received message object
		 * @param {SocketClient} client The client that sent the message
		 */
		this.emit("client_message", msg, client);
	}

	/**
	 * The Address details of the socket
	 * @type {Object}
	 * @readonly
	 */
	get address() {
		return this._server.address();
	}

	/**
	 * The used connection type
	 * @type {SocketServer.SOCKET_TYPES}
	 * @readonly
	 */
	get connectionType() {
		return this._type;
	}

	/**
	 * The error if the server error is an Error State
	 * @type {?Error}
	 * @readonly
	 */
	get error() {
		return this._error;
	}

	/**
	 * If the server is using a Unix Socket to communicate
	 * @type {Boolean}
	 * @readonly
	 */
	get isUnixSocket() {
		return this._type === SOCKET_TYPES.UNIX_SOCKET;
	}

	/**
	 * If the server is using a TCP/IP Socket to communicate
	 * @type {Boolean}
	 * @readonly
	 */
	get isTcpIP() {
		return this._type === SOCKET_TYPES.TCP_IP;
	}

	/**
	 * If the server is using a Named Pipe to communicate
	 * @type {Boolean}
	 * @readonly
	 */
	get isNamedPipe() {
		return this._type === SOCKET_TYPES.NAMED_PIPE;
	}

	/**
	 * The path to the Unix Socket or Named Pipe if using
	 * @type {?String}
	 * @readonly
	 */
	get path() {
		return this._options.path || null;
	}

	/**
	 * The port in use if using TCP/IP
	 * @type {?Number}
	 * @readonly
	 */
	get port() {
		if (this._options.path) return null;

		return this.address.port;
	}

	/**
	 * The current state of the server
	 * @type {ServerInterface.STATES}
	 * @readonly
	 */
	get state() {
		return this._state;
	}

	/**
	 * @override
	 */
	broadcast(msg) {
		return new Promise((reject, resolve) => {
			if (this._state !== ServerBase.STATES.LISTENING) return reject(new Error("Server is currently not listening and can therefore not send any messages"));
			if (!msg) return reject(new Error("Can't send empty message to clients"));

			this._clients.forEach((client, id) => {
				client.write(msg);
			});

			return resolve();
		});
	}

	/**
	 * @override
	 */
	close() {
		return new Promise((resolve, reject) => {

			if (this._state === ServerBase.STATES.CLOSING) return void reject(new Error("Closing the server has already been triggered. Please wait for the server_closed event."));
			if (this._state === ServerBase.STATES.CLOSED) return void reject(new Error("Server is already closed."));

			// Update state if necessary
			if (this._state !== ServerBase.STATES.ERROR && this._state !== ServerBase.STATES.DESTROYED) this._state = ServerBase.STATES.CLOSING;

			this._clients.forEach((client, id) => {
				client.disconnect();
			});

			this._server.close((err) => {
				this._clients = new Map();
				if (this._state !== ServerBase.STATES.ERROR && this._state !== ServerBase.STATES.DESTROYED) this._state = ServerBase.STATES.CLOSED;
				if (err) return reject(err);

				return resolve();
			});
		});
	}

	/**
	 * @override
	 */
	destroy() {
		return new Promise((resolve, reject) => {

			if (this._state === ServerBase.STATES.DESTROYED) {
				reject(new Error("Server has already been destroyed."));
				return;
			}

			const postClose = () => {
				this._state = ServerBase.STATES.DESTROYED;
				this._server.removeAllListeners();
				this._server = null;
				this._clients = new Map();
				if (this.isUnixSocket) {
					fs.unlink(this.path, (err) => {
						resolve();
					});
				} else {
					resolve();
				}
				return;
			};

			if (this._state === ServerBase.STATES.LISTENING) {
				this._server.removeAllListeners("closed");
				this.close()
					.then(postClose)
					.catch(postClose);
			} else {
				postClose();
			}
		});
	}

	/**
	 * @override
	 */
	getClient(id) {
		return this._clients.get(id) || null;
	}

	/**
	 * @override
	 */
	getClients() {
		return Array.from(this._clients, entry => entry[1]);
	}

	/**
	 * @override
	 */
	listen() {
		return new Promise((resolve, reject) => {

			if (this._state === ServerBase.STATES.CLOSING) return void reject(new Error("Server is about to close. Please run the server again once the server_closed event has fired."));
			if (this._state === ServerBase.STATES.DESTROYED) return void reject(new Error("Server has been destroyed and can therefore not listen again."));
			if (this._state === ServerBase.STATES.LISTENING) return void reject(new Error("Server is already listening"));

			this._server.once("listening", () => {
				this._error = null;
				this._state = ServerBase.STATES.LISTENING;
				return resolve(this.address);
			});

			this._server.listen(this._options.path || this._options.port, this._options.host);
		});
	}
}

SocketServer.SOCKET_TYPES = SOCKET_TYPES;
/**
 * @static
 */
SocketServer.Protocol = SocketProtocol;

module.exports = SocketServer;
