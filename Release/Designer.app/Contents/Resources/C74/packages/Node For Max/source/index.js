const program = require("commander");
const { BIN_PATH, PATH_ENV_SEPARATOR } = require("./lib/constants");

program
	.description("Process manager to launch, monitor and communicate with Node processes and npm commands")
	.option("-s --socket <socket>", "The Unix Socket / Named pipe to set up and listen on")
	.option("-p --port <port>", "The TCP Port to listen on.")
	.option("-l --log <path>", "Log to a file at the given path")
	.option("-v --verbose", "Log verbose console output")
	.option("-i --ppid <pid>", "The pid of the parent process to watch for automatic shutdown")
	.parse(process.argv);

// Mandatory args check
if (!program.socket && !program.port) throw new Error("Missing option! Please declare socket info using the --socket or --port option");
if (program.socket && program.port) throw new Error("Port and Socket info provided. Please use a single option here.");

process.title = "N4M PM";

// adjust process PATH
process.env.PATH = [BIN_PATH, process.env.PATH].join(PATH_ENV_SEPARATOR);

const Logger = require("./lib/logger");

if (program.verbose || program.log) Logger.enable();
if (program.log) Logger.enableFileLog(program.log);

Logger.debug("Process Manager started with [%s]", process.argv.slice(2).join(" "));

// check if we do ppid watching
if (!program.ppid) Logger.debug("Skipping PID watching to quit when Max quits.");

let maxCheckerTimeout = null;

const NSCommunicationHandler = require("./lib/nsCommunicationHandler.js");
const communicator = new NSCommunicationHandler({ port: program.port, socket: program.socket });

const gracefulShutdown = (codeOrSignal = 0, err = null) => {

	let exitCode;

	const exit = async () => {
		clearTimeout(maxCheckerTimeout);
		await communicator.shutdown();
		if (Logger.enabled) Logger.closeFileLogs();
		process.exit(exitCode);
	};

	if (err) {
		exitCode = codeOrSignal || 1;
		Logger.debug("Error: Shutting down due to an uncaught exception. exitCode=%s", `${exitCode}`);
		if (err.message) Logger.debug("%s", err.message);
		if (err.stack) Logger.debug("%j", err.stack);
	} else if (typeof codeOrSignal === "string") {
		exitCode = 0;
		Logger.debug("Shutting down due to %s signal exitCode=%d", `${codeOrSignal}`, exitCode);
	} else {
		exitCode = codeOrSignal;
		Logger.debug("Shutting down. exitCode=%s", `${exitCode}`);
	}

	exit();
};

process.on("uncaughtException", (err) => gracefulShutdown(1, err)); // Handle Uncaught Exceptions and try to shutdown gracefully
process.on("SIGTERM", () => gracefulShutdown("SIGTERM")); // listen for TERM signal .e.g. kill
process.on("SIGINT", () => gracefulShutdown("SIGINT")); // listen for INT signal e.g. Ctrl-C

if (program.ppid) {

	const ppid = parseInt(program.ppid, 10);
	const PROCESS_CHECK_ITV = 300;

	// Quit when Max is gone
	const isProcessRunning = (pid) => {
		try {
			process.kill(pid, 0);
			return true;
		} catch (e) {
			// process doesn't exist anymore
			return false;
		}
	};

	const checkIfMaxIsRunning = () => {
		if (!isProcessRunning(ppid)) {
			gracefulShutdown(0);
			return;
		}

		maxCheckerTimeout = setTimeout(checkIfMaxIsRunning, PROCESS_CHECK_ITV);
	};

	maxCheckerTimeout = setTimeout(checkIfMaxIsRunning, PROCESS_CHECK_ITV);
}

communicator.startup();
