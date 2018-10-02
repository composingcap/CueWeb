/**
 * Global MaxBridge Namespace
 * @namespace MaxNodeAPI
 */

/**
 * A message identifier is the message symbol received from Max.
 * @typedef {String} MessageIdentifier
 * @memberof MaxNodeAPI
*/

/**
 * Message Handlers are function callbacks assigned to inlet messages from Max.
 * @typedef {Function} MessageHandler
 * @memberof MaxNodeAPI
*/

/**
 * Dictionaries are referenced by a unique String identifier . So use this type to interact with dicts defined in Max
 * @typedef {String} DictIdentifier
 * @memberof MaxNodeAPI
 * @example
 *
 * // in Max [dit mydict]
 *
 * const dictId = "mydict";
 * maxAPI.getDict(dictId)
 *   .then(...)
 *   .catch(...);
 */

/**
 * A DictPath is a string describing the access path to a portion of content within a Dict.
 * @typedef {String} DictPath
 * @memberof MaxNodeAPI
 * @example
 * const dict = {
 *   a: 1,
 *   b: {
 *     c: 2
 *   },
 *   d: {
 *     e: {
 *       f: 3
 *     }
 *   },
 *   h: [0, 1, 2, 3]
 * };
 *
 * const pathToA = "a"; // 1
 * const pathToC = "b.c"; // 2
 * const pathtoE = "d.e"; // { f: 3 }
 * const pathToF = "d.e.f"; // 3
 * const arrayAccess = "h[1]"; // 1
 */

/**
 * Dicts in Max are very similiar to simple, JS Object structures. Therefore the type is simply an
 * object representing the contents in a JSON like structure
 * @typedef {Object} Dict
 * @memberof MaxNodeAPI
 * @example
 * const dict = {
 *   "my": "content",
 *   "is": {
 *     "here", "!",
 *     "1": 2,
 *     "a": [0,1,2]
 *   }
 * };
 */

/**
 * Mirroring the "anything" type known in Max. Can be lists (represented as array), numbers, strings and dictionaries
 * @typedef {String} Anything
 * @memberof MaxNodeAPI
 * @example
 * const list = ["this", "is", "a", "list", 1, 2, 3];
 * const str = "this is a string message";
 * const numi = 42;
 * const numf = 42.42;
 * const dict = { "my": "dict" };
 */

/**
 * Used internally
 * @typedef {Object} Response
 * @memberof MaxNodeAPI
 * @private
 */

const APICommunicator = require("./apiCommunicator.js");

// constants export
const { MESSAGE_TYPES, POST_LEVELS } = require("./constants.js");

module.exports = {
	APICommunicator,
	MESSAGE_TYPES,
	POST_LEVELS
};
