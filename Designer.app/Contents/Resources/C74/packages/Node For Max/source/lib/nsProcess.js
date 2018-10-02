const child_process = require("child_process");
const chokidar = require("chokidar");
const EventEmitter = require("events").EventEmitter;
const fs = require("fs");
const net = require("net");
const path = require("path");

const MaxUtils = require("./utils");

const Logger = require("./logger");
const { CHILD_PROCESS_MESSAGES, ERROR_CODES, RESTART_REASONS } = require("./constants");
const RUNNER_PATH = path.join(__dirname, "nsRunner.js");

const STATES = Object.freeze({
	IDLE: 0,
	STARTING: 1,
	RUNNING: 2,
	EXIT: 3,
	CLOSED: 4,
	RESTARTING: 5,
	CLOSING: 6,
	ERROR: -1
});

class NSProcess extends EventEmitter {

	constructor(options = {}) {
		super();

		if (!options || !options.path) {
			const err = new Error("Invalid arguments for process creation");
			err.code = ERROR_CODES.INVALID_REQUEST;
			err.details = JSON.stringify(options);
			throw err;
		}

		this._args = options.args || [];
		this._cwd = path.dirname(options.path);
		this._id = MaxUtils.uniqID();
		this._script = path.basename(options.path);

		// for now we are shimming the old API here
		this._socketDescription = options.socketDescription;

		this._stdio = null;
		this._stderr = null;

		this._startedSuccessful = false;

		this._doRestart = options.restart || true;
		this._totalRestartCount = 0;
		this._errorRestartCount = 0;
		this._maxRestarts = options.maxRestarts || 5;

		this._watch = options.watch || false;
		this._watcher = null;

		this._state = STATES.IDLE;
		this._process = null;
	}

	_clean() {
		if (this._process) {
			this._process.removeAllListeners();
			this._process = null;
		}
	}

	_onProcessIOClose() {
		this._doRestart = false;
		if (this.status === STATES.CLOSING || this.status === STATES.RESTARTING) return;

		const err = new Error("Remote Process I/O pipe closed. Killing Process.");
		err.code = ERROR_CODES.PROCESS_IO_CLOSED;
		this._onProcessError(err);
	}

	_onProcessIOError(error) {
		this._doRestart = false;
		if (this.status === STATES.CLOSING || this.status === STATES.RESTARTING) return;

		const err = new Error("Remote Process I/O pipe closed. Killing Process.");
		err.code = ERROR_CODES.PROCESS_IO_ERROR;
		err.details = error.message;
		err.stack = error.stack;
		this._onProcessError(err);
	}

	_destroySocket(sock) {
		sock.removeAllListeners();

		// We kill the process and all it's IO.
		// So any subsequent close/error events should be caught but don't
		// matter that much.
		sock.on("close", () => sock.removeAllListeners());
		sock.on("error", err => Logger.debug("Socket for process %s shutdown with an error after calling '.end()' %o.", this.id, err));
		sock.end();
	}

	_closeProcessIO() {
		if (this._stdio) this._destroySocket(this._stdio);
		if (this._stderr) this._destroySocket(this._stderr);

		this._stdio = null;
		this._stderr = null;
	}

	_doSetupSocket(socketPath) {
		return new Promise((resolve, reject) => {

			const onError = err => reject(err);
			const sock = net.createConnection(socketPath);

			sock.once("connect", () => {

				sock.removeListener("error", onError);

				// add close, error etc listeners here
				sock.once("error", this._onProcessIOError.bind(this));
				sock.once("close", this._onProcessIOClose.bind(this));
				sock.once("end", this._onProcessIOClose.bind(this));

				return void resolve(sock);
			});

			sock.once("error", onError);
		});
	}

	async _setupSocket(socketPath) {

		let attempts = 0;
		const maxAttempts = 5;
		let socket = null;

		do {
			attempts++;
			try {
				socket = await this._doSetupSocket(socketPath);
			} catch (err) {
				if (attempts === maxAttempts) throw err;
				await MaxUtils.sleep(750);
			}
		} while (!socket && attempts <= maxAttempts);

		return socket;
	}

	async _setupProcessIO() {
		// Already setup?!
		if (this._stdio) {
			return {
				stderr: this._stderr,
				stdio: this._stdio
			};
		}

		this._stdio = await this._setupSocket(this._socketDescription.stdio);
		this._stderr = await this._setupSocket(this._socketDescription.stderr);

		return {
			stderr: this._stderr,
			stdio: this._stdio
		};
	}

	_startWatcher() {
		return new Promise((resolve, reject) => {
			if (!this._watch) return void resolve();

			const watcher = chokidar.watch(
				this._script,
				{
					usePolling: true,
					cwd: this._cwd,
					ignoreInitial: true
				}
			);

			const onError = (err) => {
				watcher.close();
				return void reject(err);
			};

			watcher.once("error", onError);
			watcher.once("ready", () => {

				watcher.removeAllListeners("error");
				watcher.once("error", this._onWatcherError.bind(this));
				watcher.once("all", this._onFileChange.bind(this));
				this._watcher = watcher;
				return void resolve();
			});
		});
	}

	_stopWatcher() {
		if (!this._watcher) return;
		this._watcher.close();
		this._watcher = null;
	}

	_onFileChange(action, filePath) {
		if (this.status !== STATES.RUNNING) return;
		this._restart(RESTART_REASONS.FILE_CHANGE, {
			filePath: path.join(this._cwd, filePath)
		});
	}

	_onWatcherError(err) {
		Logger.debug("Watcher encountered error %s", err.message);
	}

	_addFileToWatcher({ filePath }) {
		if (!this._watcher) return;
		this._watcher.add(path.relative(this._cwd, filePath));
	}

	_onProcessExit() {
		this._closeProcessIO();
		this._stopWatcher();

		this._state = STATES.EXIT;
	}

	_onProcessClose(code, signal) {
		this.emit("close", this, this.doesRestart);
		this._state = STATES.CLOSED;

		this._clean();
		this._restart(RESTART_REASONS.CLOSE);
	}

	_onProcessError(err) {
		this.emit("error", err, this, this.doesRestart);
		this._state = STATES.ERROR;

		this._clean();
		this._closeProcessIO();
		this._stopWatcher();

		this._restart(RESTART_REASONS.ERROR);
	}

	_onProcessRestarted(reason, details) {
		this.emit("restarted", this, reason, this.restartCount, details);
	}

	_onProcessRestartError(err) {
		const logError = new Error("Process failed to restart.");
		logError.details = err.message;
		logError.code = ERROR_CODES.RESTART_FAILED;
		this.emit("error", logError, this, false);

		this._state = STATES.ERROR;

		this._clean();
		this._closeProcessIO();
		this._stopWatcher();
	}

	_onProcessMessage(msg = {}) {
		const payload = msg.payload || {};
		const id = msg.id || null;

		switch (msg.type) {

			// Lifecycle Messages -> unidirect from child to manager
			case CHILD_PROCESS_MESSAGES.UP: {

				this._state = STATES.RUNNING;
				this.emit("__running", this, payload);
				break;
			}
			case CHILD_PROCESS_MESSAGES.UNCAUGHT_EXCEPTION: {

				this._state = STATES.ERROR;

				const err = new Error(payload.error.message);
				err.details = payload.error.details;
				err.code = payload.error.code;
				err.stack = payload.error.stack;

				this._onProcessError(err);
				break;
			}
			case CHILD_PROCESS_MESSAGES.SETUP_FAIL: {
				this._state = STATES.ERROR;
				this._startedSuccessful = false;

				const err = new Error(payload.error.message);
				err.details = payload.error.details;
				err.code = payload.error.code;
				err.stack = payload.error.stack;

				this._onProcessError(err);
				break;
			}

			// Request Response messages with an id!
			case CHILD_PROCESS_MESSAGES.PROCESS_STATUS: {
				this.emit(id, payload);
				return;
			}

			case CHILD_PROCESS_MESSAGES.DISABLE_RESTART: {
				// process indicates that it would like to quit/exit.
				// => disable restarting
				this._doRestart = false;
				return;
			}

			case CHILD_PROCESS_MESSAGES.WATCH_PATH: {
				this._addFileToWatcher(payload);
				return;
			}

			case CHILD_PROCESS_MESSAGES.KILL: {
				return;
			}

			// Misc
			case CHILD_PROCESS_MESSAGES.UNKNOWN_MESSAGE_WARNING:
			default:
				Logger.debug("Unknown message type %s %j", msg.type, msg);
				// return something?!
		}
	}

	_requestFromProcess(msg = {}) {
		return new Promise((resolve, reject) => {
			if (!msg.id) msg.id = MaxUtils.uniqID();

			let respTimeout = null;
			const responseHandler = payload => {
				clearTimeout(respTimeout);
				return void resolve(payload);
			};

			this.once(msg.id, responseHandler);
			this._process.send(msg, (err) => {
				if (err) {
					this.removeAllListeners(msg.id, clearTimeout(respTimeout));
					return void reject(err);
				}
			});

			// Timeout after 3s
			setTimeout(() => {
				this.removeAllListeners(msg.id);
				const err = new Error("IPC Message timed out");
				err.code = ERROR_CODES.IPC_MESSAGE_TIMEOUT;
				return void reject(err);
			}, 3000);
		});
	}

	async _kill() {
		try {
			await this._requestFromProcess({ type: CHILD_PROCESS_MESSAGES.KILL });
		} catch (e) {
			//
		}
	}

	_restart(reason, details = {}) {
		if (!this._startedSuccessful) return;
		if (!this.doesRestart && reason !== RESTART_REASONS.FILE_CHANGE) return;

		this._totalRestartCount++;
		this.emit("restarting", this, reason, this.restartCount, details);

		if (this.status === STATES.RUNNING) {

			this._state = STATES.RESTARTING;

			this._process.removeAllListeners("close");
			this._process.once("close", () => {

				this.emit("close", this, true);
				this._clean();

				this.run()
					.then(() => this._onProcessRestarted(reason, details))
					.catch(this._onProcessRestartError.bind(this));
			});

			this._kill();

		} else {
			// Process is already down
			this._state = STATES.RESTARTING;
			this._errorRestartCount++;

			this.run()
				.then(() => this._onProcessRestarted(reason, details))
				.catch(this._onProcessRestartError.bind(this));
		}
	}

	get doesRestart() {
		return this._doRestart && this._errorRestartCount < this._maxRestarts && this._startedSuccessful;
	}

	get error() {
		return this._err || null;
	}

	get id() {
		return this._id;
	}

	get pid() {
		return this._process ? this._process.pid : null;
	}

	get restartCount() {
		return this._totalRestartCount;
	}

	get status() {
		return this._state;
	}

	get scriptPath() {
		return path.join(this._cwd, this._script);
	}

	get watch() {
		return this._watch;
	}

	destroy() {
		if (this._process) {
			this._process.removeAllListeners();
			this._process = null;
		}

		this.removeAllListeners();
	}

	async getStatus() {
		const statusInfo = await this._requestFromProcess({ type: CHILD_PROCESS_MESSAGES.PROCESS_STATUS });
		return statusInfo;
	}

	quit() {
		return new Promise(async (resolve, reject) => {

			if (!this._process || this.status !== STATES.RUNNING) {
				const err = new Error("Can't quit non-running process.");
				err.code = ERROR_CODES.PROCESS_OFFLINE;
				return void reject(err);
			}

			this._state = STATES.CLOSING;
			this._doRestart = false;

			this.once("close", () => resolve(this));
			await this._kill();
		});
	}

	run() {
		return new Promise(async (resolve, reject) => {
			this._err = null;
			this._state = STATES.STARTING;

			// Validate Script Path
			if (!fs.existsSync(this.scriptPath)) {
				const err = new Error(`Failed to create process. File ${this.scriptPath} not found.`);
				err.code = ERROR_CODES.FILE_NOT_FOUND;
				this._err = err;
				return void reject(err);
			}

			// Validate Socket Descriptors
			if (
				!this._socketDescription ||
				!this._socketDescription.stdio ||
				!this._socketDescription.stderr
			) {
				const err = new Error("Missing Proccess I/O Socket descriptors.");
				err.code = ERROR_CODES.MISSING_SOCKET_DESCRIPTION;
				this._err = err;
				return void reject(err);
			}

			await this._startWatcher();
			const sockets = await this._setupProcessIO();
			const env = Object.assign({}, process.env, {
				SCRIPT_PATH: this.scriptPath,
				SCRIPT_ID: this.id
			});

			// Fork the Process
			this._process = child_process.fork(
				RUNNER_PATH,
				this._args,
				{
					cwd: this._cwd,
					env,
					silent: false,
					stdio: [
						"pipe",
						"pipe",
						"pipe",
						"ipc"
					]
				}
			);

			sockets.stdio.pipe(this._process.stdin);
			this._process.stdout.pipe(sockets.stdio);
			this._process.stderr.pipe(sockets.stderr);

			// Setup Message Listener to catch __running event
			this._process.on("message", this._onProcessMessage.bind(this));

			// Initial Error Listener to ensure process managed to start up properly
			const onError = (err) => { return reject(err); };
			this.once("error", onError);

			// Process started up successfully
			this.once("__running", (self, payload) => {

				this._startedSuccessful = true;

				// Switch to general error handling
				this.removeListener("error", onError);
				this._process.on("error", this._onProcessError.bind(this));
				this._process.on("exit", this._onProcessExit.bind(this));
				this._process.on("close", this._onProcessClose.bind(this));

				return void resolve({
					cwd: this._cwd,
					filename: this._script,
					socketDescription: {
						control: payload.controlSocket
					}
				});
			});
		});
	}
}

NSProcess.STATES = STATES;
module.exports = NSProcess;
