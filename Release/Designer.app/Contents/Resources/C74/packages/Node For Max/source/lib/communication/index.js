
const SocketServer = require("./socket.js");

/**
 * MaxNodeCommunication Global Namespace
 * @namespace MaxNodeCommunication
 */


/**
 * Messages are plain objects that will be marshalled using JSON.parse and JSON.stringify in
 * order to communicate via the chosen communicaton layer.
 * @typedef {Object} Message
 * @memberof MaxNodeCommunication
 *
 */

/**
 * Available Communication Protocols
 * @enum
 * @memberof MaxNodeCommunication
 * @type {Object}
 * @property {String} SOCKET TCP/IP | Unix Socket | Named Pipe
 */
const COMMUNICATION_TYPES = Object.freeze({
	SOCKET: "socket"
});

module.exports.COMMUNICATION_TYPES = COMMUNICATION_TYPES;

/**
 * Create an instance of a communicator given a Communication Protocol
 * @function createCommunicator
 * @memberof MaxNodeCommunication
 *
 * @param {COMMUNICATION_TYPES} type The type of protocol to use
 * @param {Object} options The options to pass to the communicator instance
 *
 * @return {ServerInterface} A communicator instance implementing the BaseCommunicator interface
 * @throws {Error} If the given type is not known/unsupported
 */
module.exports.createCommunicator = (type = COMMUNICATION_TYPES.SOCKET, options = {}) => {
	if (!type) throw new Error("Please provide a valid type when attempting to create a MaxCommunicator");

	if (type === COMMUNICATION_TYPES.SOCKET) {
		return new SocketServer(options);
	}

	throw new Error(`Unkown or unsupported communication type ${type}.`);
};
