const debug = require("debug");
const { createWriteStream, existsSync, lstatSync } = require("fs");
const { EOL } = require("os");
const { join } = require("path");
const { format } = require("util");

class Logger {

	constructor() {
		this._filestreams = [];
		this._log = debug("n4m");
	}

	_onFileStreamError(e) {
		this._log("Error on debug file log output %s", e.message);
	}

	get enabled() {
		return debug.enabled("n4m");
	}

	closeFileLogs() {
		this._filestreams.forEach((fs) => {
			fs.destroy();
			fs.removeAllListeners("error");
		});

		this._filestreams = [];
	}

	debug(...args) {
		this._log(...args);
	}

	disable() {
		debug.disable("n4m");
	}

	enable() {
		debug.enable("n4m");
	}

	enableFileLog(fpath) {
		if (!this.enabled) this.enable();

		// user requests logging to file
		let logPath = /^.{1,2}\//.test(fpath) ? join(process.cwd(), fpath) : fpath;
		if (existsSync(logPath) && lstatSync(logPath).isDirectory()) logPath = join(logPath, "debug.log");

		debug.log = (...args) => {
			console.log(...args);
			/* eslint-disable-next-line no-control-regex */
			this._fileStream.write(format(...args).replace(/[\u001b\u009b][[()#;?]*(?:[0-9]{1,4}(?:;[0-9]{0,4})*)?[0-9A-ORZcf-nqry=><]/g, ""));
			this._fileStream.write(EOL);
		};

		this._fileStream = createWriteStream(logPath, { flags: "a+" });
		this._fileStream.on("error", this._onFileStreamError.bind(this));
		this._log("Enabled file logging to %s", logPath);
	}
}

module.exports = new Logger();
