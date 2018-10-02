const { EventEmitter } = require("events");
const { exec } = require("child_process");
const { promisify } = require("util");
const execAsync = promisify(exec);

const Logger = require("./logger");
const NSProcess = require("./nsProcess.js");
const NSNPMCommand = require("./nsNPMCommand.js");
const { ERROR_CODES, NPM_CMD_PATH } = require("./constants.js");

class NSProcessManager extends EventEmitter {

	constructor() {
		super();

		this._processes = new Map();
	}

	_onProcessClose(proc, willRestart) {
		if (!willRestart) this._removeProcess(proc.id);
		this.emit("process_close", proc, willRestart);
	}

	_onProcessError(err, proc, willRestart) {
		if (!willRestart) this._removeProcess(proc.id);
		this.emit("process_error", err, proc, willRestart);
	}

	_onProcessRestarting(proc, reason, restartCount, details = {}) {
		this.emit("process_restarting", proc, reason, restartCount, details);
	}

	_onProcessRestarted(proc, reason, restartCount, details = {}) {
		this.emit("process_restarted", proc, reason, restartCount, details);
	}

	_removeProcess(id) {
		const proc = this._processes.get(id);
		if (!proc) return;

		proc.destroy();
		this._processes.delete(id);
	}

	async getGlobalStatus() {
		let npmVersion;

		const { stdout: result } = await execAsync(`"${NPM_CMD_PATH}" --version`);
		const match = result.toString().match(/([0-9]*\.[0-9]*\.[0-9]*)/);

		if (!match) {
			const err = new Error("Unable to parse NPM version.");
			err.code = ERROR_CODES.NPM_EXEC_ERROR;
			throw err;
		}

		npmVersion = match[0];
		return {
			nodePath: process.execPath,
			nodeVersion: process.version,
			npmVersion,
			os: process.platform,
			processes: Array.from(this._processes.keys())
		};
	}

	async getPocessStatus({ id }) {
		const proc = this._processes.get(id);

		if (!proc) {
			const apiError = new Error(`Unknown Process. No such process with id ${id}`);
			apiError.code = ERROR_CODES.UNKOWN_PROCESS;
			throw apiError;
		}

		const status = await proc.getStatus();
		return status;
	}

	async startProcess({ path, args, socketDescription, watch }) {
		const proc = new NSProcess({
			path,
			socketDescription,
			args,
			watch
		});

		const onError = this._onProcessError.bind(this);

		try {
			proc.on("error", onError);
			const info = await proc.run();

			this._processes.set(proc.id, proc);

			proc.on("close", this._onProcessClose.bind(this));
			proc.on("restarting", this._onProcessRestarting.bind(this));
			proc.on("restarted", this._onProcessRestarted.bind(this));

			return Object.assign({}, { id: proc.id, watch: proc.watch }, info);
		} catch (e) {
			proc.removeListener("error", onError);
			throw e;
		}
	}

	async stopProcess({ id }) {
		const proc = this._processes.get(id);

		if (!proc) {
			const apiError = new Error(`Unknown Process. No such process with id ${id}`);
			apiError.code = ERROR_CODES.UNKOWN_PROCESS;
			throw apiError;
		}

		await proc.quit();
		this._removeProcess(id);
		return id;
	}

	async runNPMCommand({ path, args, npmPath }) {

		const npmProc = new NSNPMCommand({
			path,
			args,
			npmPath
		});

		this._processes.set(npmProc.id, npmProc);

		// emit a started thingie here
		try {
			const result = await npmProc.perform();
			return result;
		} catch (e) {
			throw e;
		} finally {
			this._removeProcess(npmProc.id);
		}
	}

	async shutdown() {
		const procs = Array.from(this._processes, entry => entry[1]);

		for (let i = 0, il = procs.length; i < il; i++) {
			const proc = procs[i];
			try {
				await proc.quit();
				this._removeProcess(proc.id);
			} catch (e) {
				Logger.debug("Unable to quit process with %s for shutdown", proc.id);
				throw e;
			}
		}
	}
}

module.exports = NSProcessManager;
