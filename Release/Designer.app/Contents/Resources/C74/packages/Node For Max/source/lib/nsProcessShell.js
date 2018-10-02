const { EventEmitter } = require("events");
const { basename, dirname, join } = require("path");

const MaxNodeAPI = require("./api");
const { uniqID } = require("./utils");

const { CHILD_PROCESS_MESSAGES, ERROR_CODES, NAMED_PIPE_PREFIX, WAIT_FOR_CTRL_CONN_TIMEOUT } = require("./constants.js");

// We intercept module loading in order to enhance our process watcher
// at runtime. Trying to be very very sensitive here! Also note that we overwrite
// any require calls to "MaxAPI" in order to give access to the instantiated
// API module wrapped with the shell.
let MaxAPI = null;
const Module = require("module");
const _backupLoader = Module._load;

const getRequiredModulePath = (modulePath, source) => {
	let fullPath;

	try {
		fullPath = require.resolve(modulePath);
	} catch (e) {
		fullPath = null;
		// to be expected when not a npm dependency
	}

	// System Modules, f.e. fs, path etc
	if (fullPath === modulePath) return null;

	if (fullPath) return fullPath;

	try {
		fullPath = join(dirname(source), modulePath);
		return Module._resolveFilename(fullPath);
	} catch (e) {
		return null;
	}
};

Module._load = (fr, context, isMain) => {
	if (fr === "max-api") return MaxAPI;

	const requiredPath = getRequiredModulePath(fr.slice(0), context.filename.slice(0));

	if (requiredPath) {
		process.send({
			type: CHILD_PROCESS_MESSAGES.WATCH_PATH,
			id: uniqID(),
			payload: {
				filePath: requiredPath
			}
		});
	}

	return _backupLoader.call(this, fr, context, isMain);
};

// we override process.exit in order to allow client scripts to smoothly exit by themselves if necessary
const exit = process.exit;

const mysToMs = (mys = 0) => {
	return mys / 1000;
};

const hrToMs = (t) => {
	return t[0] * 1000 + t[1] / 1000000;
};

class NSProcessShell extends EventEmitter {

	constructor() {
		super();

		this._controlSockPath = process.platform === "win32" ? `${NAMED_PIPE_PREFIX}${process.env.SCRIPT_ID}ctrl` : `/tmp/${process.env.SCRIPT_ID}_ctrl.sock`;

		this._maxAPI = new MaxNodeAPI.APICommunicator({
			path: this._controlSockPath
		});

		this._shutdownFct = null;
		this.shutdown = this.shutdown.bind(this);

		process.on("message", this._handleParentProcessMessage.bind(this));
		process.exit = this._callExit.bind(this);
	}

	_callExit(code) {
		process.send({
			type: CHILD_PROCESS_MESSAGES.DISABLE_RESTART,
			id: uniqID()
		}, () => {
			this.shutdown(code);
		});
	}

	_getCPUUsage() {
		return new Promise((resolve, reject) => {

			const start = process.hrtime();
			const usage = process.cpuUsage();

			setTimeout(() => {
				const elapsedTime = hrToMs(process.hrtime(start));
				const elapsedUsage = process.cpuUsage(usage);

				const elapSys = mysToMs(elapsedUsage.system);
				const elapUser = mysToMs(elapsedUsage.user);

				return resolve({
					user: elapUser,
					system: elapSys,
					timeframe: elapsedTime,
					percentage: (elapUser + elapSys) / elapsedTime
				});
			}, 100);
		});
	}

	_handleParentProcessMessage(msg) {
		const { type, id } = msg;
		switch (type) {

			case CHILD_PROCESS_MESSAGES.PROCESS_STATUS: {
				this._getCPUUsage()
					.then((usage) => {
						process.send({
							type,
							id,
							payload: {
								cpuUsage: usage,
								cwd: process.cwd(),
								filename: basename(process.env.SCRIPT_PATH),
								memoryUsage: (() => {
									const { rss, heapUsed, heapTotal } = process.memoryUsage();
									return {
										rss,
										heapUsed,
										heapTotal
									};
								})(),
								nodePath: process.execPath,
								nodeVersion: process.version,
								uptime: Math.floor(process.uptime())
							}
						});
					});
				return;
			}
			case CHILD_PROCESS_MESSAGES.KILL: {
				process.send({
					type: type,
					id,
					payload: {}
				});
				this.shutdown();
				return;
			}
			default: {
				process.send({
					type: CHILD_PROCESS_MESSAGES.UNKNOWN_MESSAGE_WARNING,
					id: id,
					payload: {
						error: {
							message: `Unkown IPC Message ${type}`,
							code: ERROR_CODES.UNKNOWN_IPC_MESSAGE
						}
					}
				});
				return;
			}
		}
	}

	_onControlClientDisconnected() {
		if (this._shuttingDown) return; // expected

		const err = new Error("Remote control client disconnected");
		err.code = ERROR_CODES.CONTROL_SOCKET_DISCONNECTED;

		this.emit("error", err);
	}

	_onControlSocketClose() {
		if (this._shuttingDown) return; // expected

		const err = new Error("Control Server closed unexpectedly");
		err.code = ERROR_CODES.CONTROL_SOCKET_CLOSED;

		this.emit("error", err);
	}

	_onControlSocketError(sockErr) {
		if (this._shuttingDown) return; // expected

		const err = new Error("Control Server error encountered");
		err.code = ERROR_CODES.CONTROL_SOCKET_ERROR;
		err.details = sockErr.message;

		this.emit("error", err);
	}

	get shutdownFct() {
		return this._shutdownFct;
	}

	registerShutdownHook(fct) {
		if (!fct || !(fct instanceof Function)) throw new Error("Shutdownhook registration is only possible with a valid function.");
		this._shutdownFct = fct;
	}

	setup() {
		return new Promise((resolve, reject) => {

			this._maxAPI.listen()
				.then((address) => {

					this._maxAPI.once("error", this._onControlSocketError.bind(this));

					// We wait until the remote client has connected before we resolve to make
					// sure that EVERYTHING is in place/set up b4 the user defined script and other
					// tasks are executed. However, to make that happen we need so send the UP message b4
					let waitForConnectionTimeout = null;

					process.send({
						type: CHILD_PROCESS_MESSAGES.UP,
						payload: {
							controlSocket: address
						}
					});

					this._maxAPI.once("connected", () => {
						clearTimeout(waitForConnectionTimeout);

						// we consider any disconnection, closing etc an error!
						this._maxAPI.once("disconnected", this._onControlClientDisconnected.bind(this));
						this._maxAPI.once("close", this._onControlSocketClose.bind(this));

						return resolve();
					});

					// Schedule Timeout to catch a never connecting Max end
					waitForConnectionTimeout = setTimeout(() => {
						this._maxAPI.removeAllListeners();

						const err = new Error("Control client connection timed out.");
						err.details = `The Max end never connected within ${WAIT_FOR_CTRL_CONN_TIMEOUT}ms`;
						err.code = ERROR_CODES.CONTROL_SOCKET_TIMEOUT;

						return reject(err);

					}, WAIT_FOR_CTRL_CONN_TIMEOUT);
				})
				.catch((err) => {
					return reject(err);
				});
		});
	}

	shutdown(code = 0) {
		this._shuttingDown = true;

		let returnVal;
		if (this._shutdownFct) returnVal = this._shutdownFct();

		if (!returnVal || !(returnVal instanceof Promise)) returnVal = Promise.resolve();

		returnVal
			.then(() => {
				return this._maxAPI.destroy();
			})
			.then(() => {
				exit(code);
			})
			.catch((err) => {
				exit(code);
			});
	}

	registerPublicAPI() {

		// NSRunner Methods
		const api = [
			"registerShutdownHook"
		].reduce((sum, methodName) => {
			sum[methodName] = this[methodName];
			return sum;
		}, {});

		// APICommunicator Methods
		[
			"addHandler",
			"addHandlers",
			"removeHandler",
			"removeHandlers",

			"outlet",
			"outletBang",

			"post",

			"getDict",
			"setDict",
			"updateDict"
		].reduce((sum, methodName) => {
			sum[methodName] = this._maxAPI[methodName].bind(this._maxAPI);
			return sum;
		}, api);

		// Exposed global constants
		[
			"MESSAGE_TYPES",
			"POST_LEVELS"
		].reduce((sum, constantName) => {
			sum[constantName] = MaxNodeAPI[constantName];
			return sum;
		}, api);

		MaxAPI = Object.freeze(api);
	}
}

module.exports = NSProcessShell;
