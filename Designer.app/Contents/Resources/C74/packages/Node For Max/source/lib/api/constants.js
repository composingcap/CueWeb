/**
 * Built-in message types used for generic event handling
 * @enum
 * @memberof MaxNodeAPI
 * @type {String}
 */
const MESSAGE_TYPES = {
	/** Generic Type for *all* kinds of messages */
	ALL: "all",
	/** Bang message type */
	BANG: "bang",
	/** Dictionary message type */
	DICT: "dict",
	/** Number message type */
	NUMBER: "number",
	/** List message type */
	LIST: "list"
};

module.exports.MESSAGE_TYPES = MESSAGE_TYPES;

/**
 * Post/Log Levels
 * @enum
 * @memberof MaxNodeAPI
 * @type {String}
 */
const POST_LEVELS = {
	/** error level messages */
	ERROR: "error",
	/** info level messages */
	INFO: "info",
	/** warn level messages */
	WARN: "warn"
};

module.exports.POST_LEVELS = POST_LEVELS;

// Internal Constants
module.exports.API_MESSAGES = Object.freeze({
	GET_DICT: "getDict",
	SET_DICT: "setDict",
	OUTLET: "outlet",
	OUTLET_BANG: "outletBang",
	INLET: "inlet",
	POST: "post"
});


module.exports.ERROR_CODES = Object.freeze({
	INVALID_PARAMETERS: 1,
	REQUEST_TIMEOUT: 2,
	INVALID_RESPONSE: 3
});

module.exports.STATUS_CODES = Object.freeze({
	ERROR: -1,
	SUCCESS: 74
});
