const MaxNodeComm = require("../communication");
const MaxUtils = require("../utils");
const EventEmitter = require("events").EventEmitter;
const loSet = require("lodash.set");

const { MESSAGE_TYPES, API_MESSAGES, ERROR_CODES, POST_LEVELS, STATUS_CODES } = require("./constants.js");

const makeError = (message, code) => {
	const err = new Error(message);
	err.code = code;
	return err;
};

const isPostLevel = (arg) => {
	return arg === POST_LEVELS.INFO || arg === POST_LEVELS.WARN || arg === POST_LEVELS.ERROR;
};

/**
 * @class APICommunicator
 */
class APICommunicator extends EventEmitter {

	constructor(options = {}) {

		super();

		this._options = Object.assign({
			maxConnections: 1,
			protocol: MaxNodeComm.COMMUNICATION_TYPES.SOCKET,
			reqTimeout: 3000
		}, options);

		this._requestEvents = new EventEmitter();
		this._inletEvents = new EventEmitter();

		this._communicator = MaxNodeComm.createCommunicator(this._options.protocol, {
			path: this._options.path,
			port: this._options.port,
			maxConnections: this._options.maxConnections
		});

		this._communicator.on("client_connect", this._onClientConnect.bind(this));
		this._communicator.on("client_disconnect", this._onClientDisconnect.bind(this));
		this._communicator.on("client_message", this._onClientMessage.bind(this));


		this._communicator.on("close", this._onServerClose.bind(this));
		this._communicator.on("error", this._onServerError.bind(this));
	}

	/**
	 * @private
	 * @fires APICommunicator#connected
	 */
	_onClientConnect(client) {
		/**
		 * Commuicator got remote connection event
		 *
		 * @event APICommunicator#connected
		 */
		this.emit("connected");
	}

	/**
	 * @private
	 * @fires APICommunicator#disconnected
	 */
	_onClientDisconnect(client) {

		/**
		 * Commuicator lost remote connection event
		 *
		 * @event APICommunicator#disconnected
		 */
		this.emit("disconnected");
	}

	/**
	 * @private
	 * @param {Client} client The client sending the inlet message
	 * @param {String} uid The message uid
	 * @param {Object} payload The received payload
	 */
	async _onInlet(client, uid, payload) {

		const inletValue = payload.value;

		if (!inletValue || (Array.isArray(inletValue) && inletValue.length === 0)) {
			try {
				await client.write({
					type: API_MESSAGES.INLET,
					uid,
					status: STATUS_CODES.ERROR,
					payload: {
						err: {
							message: "Invalid inlet message footprint: Missing value.",
							code: ERROR_CODES.INVALID_PARAMETERS,
							details: JSON.stringify(payload)
						}
					}
				});
			} catch (err) {
				// error while attempting to echo the inlet..Not really a big deal
			}
			return;
		}

		let selector;
		let args = [];

		if (Array.isArray(inletValue)) {

			[selector, ...args] = inletValue;

			// Is the first element of the list is a number, then prepend
			// the "list" selector
			if (typeof selector === "number") {
				args.unshift(selector);
				selector = MESSAGE_TYPES.LIST;
			}

		} else if (typeof inletValue === "number") {

			args = [inletValue];
			selector = MESSAGE_TYPES.NUMBER;

		} else if (typeof inletValue === "object") {

			args = [inletValue];
			selector = MESSAGE_TYPES.DICT;

		} else if (inletValue === MESSAGE_TYPES.BANG) {

			selector = MESSAGE_TYPES.BANG;
			args = [];

		} else {

			// generic message handler
			selector = inletValue;
			args = [];

		}

		const selectorCount = this._inletEvents.listenerCount(selector);
		const allCount = this._inletEvents.listenerCount(MESSAGE_TYPES.ALL);

		if (selectorCount > 0) this._inletEvents.emit(selector, ...args);
		if (allCount > 0) this._inletEvents.emit(MESSAGE_TYPES.ALL, selectorCount > 0, selector, ...args);

		if (!(allCount || selectorCount)) {
			try {
				await this.post(`Unhandled Message: ${JSON.stringify(inletValue)}`, POST_LEVELS.WARN);
			} catch (err) {
				// Simply ignore at this point as it's just a info headsup
			}
		}

		try {
			// echo the successful receiption
			await client.write({
				type: API_MESSAGES.INLET,
				uid,
				status: STATUS_CODES.SUCCESS,
				payload: {}
			});
		} catch (err) {
			// error while attempting to echo the inlet..Not really a big deal
		}
	}

	/**
	 * @private
	 * @param {String} type The message type
	 * @param {Object} payload The payload to send
	 *
	 * @returns {Promise.<MaxNodeAPI.Response, Error>} Returns the response if resolved or an Error if rejected
	 */
	_request(type, payload = {}) {
		return new Promise((resolve, reject) => {


			let respTimeout = null;
			const uid = MaxUtils.uniqID();


			const responseHandler = (status, responsePayload) => {
				clearTimeout(respTimeout);

				if (status === STATUS_CODES.ERROR) {
					const errDetails = responsePayload.error || {};
					reject(makeError(errDetails.message, errDetails.code));
					return;
				}

				if (status === STATUS_CODES.SUCCESS) {
					resolve(responsePayload);
					return;
				}

				// TODO: other STATUS_CODES!?
			};

			this._requestEvents.once(uid, responseHandler);

			this._communicator.broadcast({
				type,
				uid,
				payload
			})
				.then(() => {
					// nothing, we wait for the response
				})
				.catch((err) => {
					if (err) {
						this._requestEvents.removeAllListeners(uid, clearTimeout(respTimeout));
						reject(err);
						return;
					}
				});

			// Schedule Timeout
			setTimeout(() => {
				this._requestEvents.removeAllListeners(uid);
				reject(makeError("Max API Message Request timed out.", ERROR_CODES.REQUEST_TIMEOUT));
				return;
			}, this._options.reqTimeout);

		});
	}

	/**
	 * Remote message handler
	 *
	 * @private
	 * @param {Object} msg The received msg object
	 * @param {Client} client The client sending the msg
	 */
	_onClientMessage(msg = {}, client) {
		const { uid, payload, status, type } = msg;

		switch (type) {

			// API Call Responses
			case API_MESSAGES.OUTLET: {
				this._requestEvents.emit(uid, status, payload);
				return;
			}

			case API_MESSAGES.POST: {
				this._requestEvents.emit(uid, status, payload);
				return;
			}

			case API_MESSAGES.GET_DICT: {
				this._requestEvents.emit(uid, status, payload);
				return;
			}

			case API_MESSAGES.SET_DICT: {
				this._requestEvents.emit(uid, status, payload);
				return;
			}

			// API Call Remote Requests
			case API_MESSAGES.INLET: {
				this._onInlet(client, uid, payload);
				return;
			}

			default:
				// TODO:
				console.log("Unknown message");
				console.log(msg);
				return;
		}
	}

	/**
	 * @private
	 * @fires APICommunicator#closed
	 */
	_onServerClose() {
		/**
		 * Communicator server closed Event
		 *
		 * @event APICommunicator#closed
		 */
		this.emit("closed");
	}

	/**
	 * @private
	 * @fires APICommunicator#error
	 */
	_onServerError(err) {
		/**
		 * Communicator server error Event
		 *
		 * @event APICommunicator#error
		 * @param {Error} err The occured error
		 */
		this.emit("error", err);
	}

	/**
	 * Access the contents of a dictionary in Max
	 * @param {MaxNodeAPI.DictIdentifier} id The identifier of the dictionary
	 *
	 * @returns {Promise.<MaxNodeAPI.Dict, Error>} Return the dictionary if resolved or an Error if rejected
	 */
	async getDict(id) {

		if (!id) throw makeError("Missing name for getDict request. Please make sure you provide a (valid) name.", ERROR_CODES.INVALID_PARAMETERS);

		const payload = await this._request(API_MESSAGES.GET_DICT, {
			name: id
		});
		if (!payload || !payload.content) throw makeError("Invalid response for getDict request. Please make sure the requested dict exists.", ERROR_CODES.INVALID_RESPONSE);
		return payload.content;
	}

	/**
	 * Overrides the *entire* content of a dictionary in Max
	 * @param {MaxNodeAPI.DictIdentifier} id The identifier of the dictionary
	 * @param {MaxNodeAPI.Dict} content The new content of the dictionary
	 *
	 * @returns {Promise.<MaxNodeAPI.Dict, Error>} Return the updated dictionary if resolved or an Error if rejected
	 */
	async setDict(id, content) {
		if (!id) throw makeError("Missing name for setDict request. Please make sure you provide a (valid) name.", ERROR_CODES.INVALID_PARAMETERS);
		if (!content) throw makeError("Missing value for setDict request. A dict cannot be set to null.", ERROR_CODES.INVALID_PARAMETERS);

		const payload = await this._request(API_MESSAGES.SET_DICT, {
			name: id,
			merge: false,
			content
		});
		if (!payload || !payload.content) throw makeError("Invalid response for setDict request. Please make sure the requested dict exists.", ERROR_CODES.INVALID_RESPONSE);
		return payload.content;
	}

	/**
	 * Updates the content of a dictionary in Max at the given path with the given value
	 *
	 * @param {MaxNodeAPI.DictIdentifier} id The identifier of the dictionary
	 * @param {MaxNodeAPI.DictPath} path The path of the value change within the dictionary
	 * @param {MaxNodeAPI.Anything} value The value to set at this path
	 *
	 * @returns {Promise.<MaxNodeAPI.Dict, Error>} Return the updated dictionary if resolved or an Error if rejected
	 */
	async updateDict(id, updatePath, updateValue) {
		if (!id) throw makeError("Missing name for setDict request. Please make sure you provide a (valid) name.", ERROR_CODES.INVALID_PARAMETERS);
		if (!updatePath) throw makeError("Missing path value for updateDict request.", ERROR_CODES.INVALID_PARAMETERS);

		const dict = await this.getDict(id);
		const newDict = loSet(dict, updatePath, updateValue);
		await this.setDict(id, newDict);

		return newDict;
	}

	/**
	 * Set a handler/callback function for the given message
	 *
	 * @param {MaxNodeAPI.MessageIdentifier} msg The message identifier to set the handler for
	 * @param {MaxNodeAPI.MessageHandler} handler The message handler to add
	 */
	addHandler(msg, handler) {
		this._inletEvents.addListener(msg, handler);
	}

	/**
	 * Bulk register a set of handlers provided in an object fashion
	 *
	 * @param {Object} handlers The handler objects
	 * @example
	 *
	 * const handlers = {
	 *   [MESSAGE_TYPES.BANG]: () => {
	 *     console.log("got a bang");
	 *   },
	 *   [MESSAGE_TYPES.NUMBER]: (num) => {
	 *   },
	 *   my_message: () => {
	 *     console.log("got my_message");
	 *   },
	 *   my_message_with_args: (arg1, arg2) => {
	 *     console.log("got my arged message: ${arg1}, ${arg2} ");
	 *   }
	 *   [MESSAGE_TYPES.ALL]: (handled, ...args) => {
	 *     console.log("This will be called for ALL messages");
	 *     console.log(`The following inlet event was ${!handled ? "not " : "" }handled`);
	 *     console.log(args);
	 *   }
	 * };
	 * api.addHandlers(handlers);
	 */
	addHandlers(handlers) {
		const msgIds = Object.keys(handlers);
		for (let i = 0, il = msgIds.length; i < il; i++) {
			const id = msgIds[i];
			this.addHandler(id, handlers[id]);
		}
	}

	/**
	 * Set a handler/callback function for the given message
	 *
	 * @param {MaxNodeAPI.MessageIdentifier} msg The message identifier to remove the handler for
	 * @param {MaxNodeAPI.MessageHandler} handler The message handler to remove
	 */
	removeHandler(msg, handler) {
		this._inletEvents.removeListener(msg, handler);
	}

	/**
	 * Remove all inlet handlers for the given MessageIdentifier. If no identifer is provided
	 * this function call removes *all* inlet handlers for *all* messages
	 *
	 * @param {MaxNodeAPI.MessageIdentifier} [msg] - The message identifier to remove the handler for
	 */
	removeHandlers(msg) {
		if (msg) {
			this._inletEvents.removeAllListeners(msg);
		} else {
			this._inletEvents.removeAllListeners();
		}
	}

	/**
	 * Outlets the given value of the object's outlet in Max
	 *
	 * @param {...MaxNodeAPI.Anything} anything The value to output
	 *
	 * @returns {Promise.<null, Error>} Returns null if resolved or an Error if rejected
	 */
	async outlet(...args) {

		if (!args || !args.length) throw makeError("Missing values for outlet call.", ERROR_CODES.INVALID_PARAMETERS);

		await this._request(API_MESSAGES.OUTLET, {
			value: args.length === 1 ? args[0] : args
		});
		return;
	}

	/**
	 * Sends a bang out of the object's outlet
	 *
	 * @returns {Promise.<null, Error>} Returns null if resolved or an Error if rejected
	 */
	async outletBang() {
		await this._request(API_MESSAGES.OUTLET, {
			value: MESSAGE_TYPES.BANG
		});
		return;
	}

	/**
	 * Print the given value to the Max console
	 *
	 * @param {...MaxNodeAPI.Anything} anything The value to post
	 * @param {MaxNodeAPI.POST_LEVELS} level=POST_LEVELS.INFO The log level of the post
	 *
	 * @returns {Promise.<null, Error>} Returns null if resolved or an Error if rejected
	 */
	async post(...message) {

		if (!message || !message.length) throw makeError("Missing values for post call.", ERROR_CODES.INVALID_PARAMETERS);

		let level = POST_LEVELS.INFO;
		// check if we got a POST_LEVEL as last attribute
		if (message.length > 1 && isPostLevel(message.slice(-1)[0])) level = message.pop();

		await this._request(API_MESSAGES.POST, {
			level,
			value: message.length === 1 ? message[0] : message
		});
		return;
	}

	/**
	 * Close the communication channel.
	 * The server can be activated again using Bridge.listen
	 * @returns {Promise.<null, Error>} Returns null if resolved, or an Error if rejected.
	 */
	close() {
		this._requestEvents.removeAllListeners();
		return this._communicator.close();
	}

	/**
	 * Destroy the communication channel entirely.
	 * The server cannot be reactivated after this.
	 * @returns {Promise.<null, Error>} Returns null if resolved, or an Error if rejected.
	 */
	destroy() {
		this._requestEvents.removeAllListeners();
		return this._communicator.destroy();
	}

	/**
	 * Activate/Start the communication channel with Max
	 * @returns {Promise.<Object, Error>} Returns the domain specific connections details if resolved, or an Error if rejected.
	 */
	listen() {
		return this._communicator.listen();
	}

}

module.exports = APICommunicator;
