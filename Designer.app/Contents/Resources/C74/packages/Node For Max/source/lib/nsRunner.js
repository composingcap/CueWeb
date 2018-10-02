const NSProcessShell = require("./nsProcessShell.js");

const constants = require("./constants.js");
const CHILD_PROCESS_MESSAGES = constants.CHILD_PROCESS_MESSAGES;
const ERROR_CODES = constants.ERROR_CODES;
const { EOL } = require("os");

const runnerShell = new NSProcessShell();
let loadedSuccessfully = false;

// listen for TERM signal .e.g. kill
process.on("SIGTERM", runnerShell.shutdown);

// listen for INT signal e.g. Ctrl-C
process.on("SIGINT", runnerShell.shutdown);

// handle Uncaught Exceptions
process.on("uncaughtException", (err) => {
	let type;
	let error;
	let code;

	if (loadedSuccessfully) {
		type = CHILD_PROCESS_MESSAGES.UNCAUGHT_EXCEPTION;
		code = ERROR_CODES.UNCAUGHT_EXCEPTION;
		error = {
			message: err.message,
			details: err.details,
			code: code,
			stack: err.stack
		};
	} else {
		type = CHILD_PROCESS_MESSAGES.SETUP_FAIL;
		code = ERROR_CODES.PROCESS_SETUP_FAIL;
		error = {
			message: "Unable to launch process",
			details: err.message,
			code: code,
			stack: err.stack
		};
	}
	process.send({
		type,
		payload: {
			error
		}
	});

	runnerShell.shutdown(code);
});

// Shutdown on RunnerShell Errors
runnerShell.on("error", (err) => {
	process.send({
		type: CHILD_PROCESS_MESSAGES.UNCAUGHT_EXCEPTION,
		payload: {
			error: {
				message: err.message,
				details: err.details,
				code: err.code,
				stack: err.stack
			}
		}
	});

	runnerShell.shutdown(ERROR_CODES.UNCAUGHT_EXCEPTION);
});

runnerShell.setup()
	.then(() => {

		// Advertise subset of process shell API
		runnerShell.registerPublicAPI();

		// write initial newline char
		process.stdout.write(EOL);
		process.stderr.write(EOL);

		// Kick off things and load user script
		require(process.env.SCRIPT_PATH);
		loadedSuccessfully = true;

	})
	.catch((err) => {
		process.send({
			type: CHILD_PROCESS_MESSAGES.SETUP_FAIL,
			payload: {
				error: {
					message: "Unable to launch process",
					details: err.message,
					code: ERROR_CODES.PROCESS_SETUP_FAIL,
					stack: err.stack
				}
			}
		});
		return runnerShell.shutdown(ERROR_CODES.PROCESS_SETUP_FAIL);
	});


