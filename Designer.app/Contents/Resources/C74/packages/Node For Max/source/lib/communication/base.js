/**
 * @interface ServerInterface
 */
class ServerInterface {


	/**
	 * Broadcast a message to all connected clients
	 * @abstract
	 * @param {MaxNodeCommunication.Message} message The message to broadcast
	 * @returns {Promise.<null, Error>} Returns null if resolved, or an Error if rejected.
	 */
	broadcast(message) {}

	/**
	 * Close the Server
	 * @abstract
	 * @returns {Promise.<null, Error>} Returns null if resolved, or an Error if rejected.
	 */
	close() {}

	/**
	 * Destroy the server
	 * @abstract
	 * @returns {Promise.<null, Error>} Returns null if resolved, or an Error if rejected.
	 */
	destroy() {}

	/**
	 * Get a list of all connected clients
	 * @abstract
	 * @returns {ClientInterface[]} An array of connected clients
	 */
	getClients() {}

	/**
	 * Get a specific client by its identifier
	 * @abstract
	 * @return {?Object} The requested client or null
	 */
	getClient() {}

	/**
	 * Make the connection server listen
	 * @abstract
	 * @returns {Promise.<Object, Error>} Returns the domain specific connections details if resolved, or an Error if rejected.
	 */
	listen() {}
}

/**
 * Communicaton Connection State
 * @enum {Object} STATES
 * @readonly
 * @memberOf ServerInterface
 * @property {Number} ERROR An error occured and the connection is therefore CLOSED. Can be reinstatiated via .listen()
 * @property {Number} CLOSING The connection is currently in closing state, will be followed by CLOSED
 * @property {Number} CLOSED The connection is currently closed but can be reinstantiated via .listen()
 * @property {Number} DESTROYED The connection has been destroyed and can not be recovered
 * @property {Number} LISTENING The Connection is currently active and listening
 */
ServerInterface.STATES = Object.freeze({
	ERROR: -1,

	CLOSING: 1,
	CLOSED: 2,
	DESTROYED: 3,
	LISTENING: 4
});

module.exports = ServerInterface;
