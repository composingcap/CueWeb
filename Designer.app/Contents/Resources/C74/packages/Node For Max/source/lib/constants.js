const { join, normalize } = require("path");

let BIN_PATH;
if (process.env.N4M_DEV === "true") {
	BIN_PATH = normalize(join(__dirname, "..", "..", "bin", process.platform === "darwin" ? "osx" : "pc_x64"));
} else {
	BIN_PATH = normalize(join(__dirname, "..", "bin", process.platform === "darwin" ? "osx" : "pc_x64"));
}

module.exports.BIN_PATH = BIN_PATH;
module.exports.NPM_CMD_PATH = join(BIN_PATH, process.platform === "darwin" ? "npm" : "npm.cmd");
module.exports.NAMED_PIPE_PREFIX = "\\\\.\\pipe\\";
module.exports.PATH_ENV_SEPARATOR = process.platform === "win32" ? ";" : ":";
module.exports.WAIT_FOR_CTRL_CONN_TIMEOUT = 3000;

module.exports.API_MESSAGES = Object.freeze({

	START_PROCESS: "start",
	STOP_PROCESS: "stop",

	NPM: "npm",

	GLOBAL_STATUS: "status",
	PROCESS_STATUS: "processStatus",

	RESTARTING: "restarting",
	RESTARTED: "restarted",
	TERMINATED: "terminated"

});

module.exports.STATUS_CODES = Object.freeze({

	ERROR: -1,
	INFO: 73,
	SUCCESS: 74

});

module.exports.ERROR_CODES = Object.freeze({

	FILE_NOT_FOUND: 1,
	UNCAUGHT_EXCEPTION: 2,
	PROCESS_OFFLINE: 3,
	UNKOWN_PROCESS: 4,
	UNCAUGHT_PROCESS_EXCEPTION: 5,
	PROCESS_SETUP_FAIL: 6,
	MISSING_SOCKET_DESCRIPTION: 7,
	PROCESS_IO_CLOSED: 8,
	PROCESS_IO_ERROR: 9,
	UNKNOWN_IPC_MESSAGE: 10,
	IPC_MESSAGE_TIMEOUT: 11,
	CONTROL_SOCKET_ERROR: 12,
	CONTROL_SOCKET_CLOSED: 13,
	CONTROL_SOCKET_DISCONNECTED: 14,
	CONTROL_SOCKET_TIMEOUT: 15,
	NO_SIMULTANEOUS_NPM: 16,
	NPM_DEBUG_NO_ACCESS: 17,
	NPM_EXEC_ERROR: 18,
	INVALID_REQUEST: 19,
	RESTART_FAILED: 20
});

module.exports.NPM_STATUSES = Object.freeze({
	STARTED: "started",
	COMPLETED: "completed"
});

module.exports.RESTART_REASONS = Object.freeze({
	ERROR: "error",
	CLOSE: "closed",
	FILE_CHANGE: "file_change"
});

module.exports.CHILD_PROCESS_MESSAGES = Object.freeze({
	UNCAUGHT_EXCEPTION: 1,
	UP: 0,
	SETUP_FAIL: 2,
	PROCESS_STATUS: 3,
	UNKNOWN_MESSAGE_WARNING: 4,
	DISABLE_RESTART: 5,
	WATCH_PATH: 6,
	KILL: 7
});
