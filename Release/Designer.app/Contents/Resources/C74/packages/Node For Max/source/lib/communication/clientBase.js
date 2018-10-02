const { EventEmitter } = require("events");

/**
 * @interface ClientInterface
 */
class ClientInterface extends EventEmitter {


	/**
	 * The uniqe id of the socket
	 * @abstract
	 * @type {String}
	 * @readonly
	 */
	/* eslint-disable-next-line getter-return */
	get id() {}

	/**
	 * Disconnect the client
	 * @abstract
	 * @returns {Promise.<null, Error>}
	 */
	disconnect() {}

	/**
	 * Writes and sends the given object to the client
	 * @abstract
	 * @param {MaxNodeCommunication.Message} object The message object to send
	 * @returns {Promise.<null, Error>}
	 */
	write(obj) {}

}

module.exports = ClientInterface;
