const child_process = require("child_process");
const fs = require("fs");
const path = require("path");
const Logger = require("./logger");
const MaxUtils = require("./utils");

const { ERROR_CODES, NPM_CMD_PATH } = require("./constants");

const STATES = Object.freeze({
	IDLE: 0,
	RUNNING: 1,
	CLOSED: 2,
	ERROR: -1
});

// We only allow one command per Node Project at a time
const lockedFolders = new Set();
class NSNPMCommand {

	constructor(options = {}) {

		this._args = options.args || [];
		this._args.unshift("--scripts-prepend-node-path=true");

		this._npmPath = options.npmPath || null;
		this._cwd = options.path;
		this._id = MaxUtils.uniqID();

		this._err = null;
		this._state = STATES.IDLE;
	}

	get _npmDebugPath() {
		return path.join(this._cwd, `npm-debug-${this._id}.log`);
	}

	_clean() {
		this._unlockPath();
	}

	_unlockPath() {
		lockedFolders.delete(this.cwd);
		return true;
	}

	_lockPath() {
		if (lockedFolders.has(this.cwd)) return false;
		lockedFolders.add(this.cwd);
		return true;
	}

	_createNPMWriteStream() {
		return new Promise((resolve, reject) => {
			const stream = fs.createWriteStream(this._npmDebugPath);

			stream.once("error", err => {
				stream.removeAllListeners();
				Logger.debug("Unable to open WriteStream for NPM command with fd at %s. Skipping log output...", this._npmDebugPath);
				return void resolve(null);
			});

			stream.once("open", () => {
				stream.removeAllListeners("error");
				return void resolve(stream);
			});
		});
	}

	_removeNPMDebug() {
		return new Promise((resolve, reject) => {
			fs.access(this._npmDebugPath, (err) => {
				if (err) {
					// assume the file doesn't exists
					resolve();
					return;
				}

				// remove the file
				fs.unlink(this._npmDebugPath, (unlinkErr) => {
					if (unlinkErr) {
						const resErr = new Error(`Can't remove npm-debug-log at ${this.cwd}`);
						resErr.code = ERROR_CODES.NPM_DEBUG_NO_ACCESS;
						resErr.details = unlinkErr.message;
						reject(resErr);
						return;
					}

					resolve();
					return;
				});
			});
		});
	}

	_runNPMCommand(stderr = null) {
		return new Promise((resolve, reject) => {
			let proc;
			if (this._npmPath) {
				proc = child_process.spawn(
					this._npmPath,
					this._args,
					{
						cwd: this.cwd,
						// shell: true,
						stdio: ["ignore", "ignore", stderr || "ignore"]
					}
				);
			} else {
				proc = child_process.spawn(
					NPM_CMD_PATH,
					this._args,
					{
						cwd: this.cwd,
						// shell: true,
						stdio: ["ignore", "ignore", stderr || "ignore"]
					}
				);
			}

			proc.once("error", (err) => {
				proc.removeAllListeners();
				const errResult = new Error(`Error while attempting to run npm command in ${this.cwd}`);
				errResult.code = ERROR_CODES.NPM_EXEC_ERROR;
				errResult.details = err.message;
				return reject(errResult);
			});

			proc.once("close", (code) => {
				proc.removeAllListeners();

				if (code !== 0) {
					const err = new Error(`NPM exited with  non-zero code "${code}" at ${this.cwd}`);
					err.code = ERROR_CODES.NPM_EXEC_ERROR;
					err.log = stderr ? this._npmDebugPath : "";
					return reject(err);
				}

				return resolve();
			});
		});
	}

	get id() {
		return this._id;
	}

	get status() {
		return this._state;
	}

	get cwd() {
		return this._cwd;
	}

	destroy() {
		// No-Op
	}

	perform() {
		return new Promise((resolve, reject) => {

			if (!this._lockPath()) {
				const err = new Error(`Can't perform simultaneous NPM command for folder ${this.cwd}`);
				err.code = ERROR_CODES.NO_SIMULTANEOUS_NPM;
				reject(err);
				return;
			}


			// Validate Script Path
			if (!fs.existsSync(this.cwd)) {

				const err = new Error(`Failed to create process. Folder ${this.cwd} not found.`);
				err.code = ERROR_CODES.FILE_NOT_FOUND;
				this._err = err;
				this._state = err;

				reject(err);
				return;
			}

			this._state = STATES.RUNNING;
			let stdErrStream;

			this._createNPMWriteStream()
				.then((debugStream) => {

					// Uses AutoClose so no need to handle that separately down the line
					if (debugStream) {
						stdErrStream = debugStream;
						stdErrStream.once("error", (err) => {
							Logger.debug("WriteStream Error for NPM command with fd at %s", this._npmDebugPath);
						});
					}

					return this._runNPMCommand(stdErrStream);
				})
				.then(() => {
					this._state = STATES.CLOSED;
					this._clean();

					return this._removeNPMDebug();
				})
				.then(resolve)
				.catch((err) => {
					this._state = STATES.ERROR;
					this._clean();
					this._err = err;
					return reject(err);
				});
		});
	}
}

NSNPMCommand.STATES = STATES;
module.exports = NSNPMCommand;
