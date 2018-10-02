// ---------------------------------------------------------------------------
//
// n4m.downloader.js
//
// Download and unpack the Node For Max Examples Repository
// to the user's 'Documents/Max 8/Library' folder
//
// ---------------------------------------------------------------------------

const { exec } = require("child_process");
const { existsSync, lstat, mkdir, readdir, rmdir, unlink, rename } = require("fs");
const { basename, join } = require("path");
const { promisify } = require("util");

const execAsync = promisify(exec);
const lstatAsync = promisify(lstat);
const mkdirAsync = promisify(mkdir);
const readdirAsync = promisify(readdir);
const renameAsync = promisify(rename);
const rmdirAsync = promisify(rmdir);
const unlinkAsync = promisify(unlink);

const maxAPI = require("max-api");

const STATES = Object.freeze({
	STARTING: "STARTING",
	DOWNLOADING: "DOWNLOADING",
	UNZIPPING: "UNZIPPING",
	COMPLETE: "COMPLETE",
	ERROR: "ERROR"
});

const GITHUB_URI = "github.com/Cycling74/n4m-examples.git";
const EXAMPLES_DIR_NAME = basename(GITHUB_URI, ".git");

const doDownload = (targetPath) => {
	return execAsync(`npm install git+https://${GITHUB_URI}`, { cwd: targetPath });
};

const removeDir = async (dir) => {
	if (!existsSync(dir)) return;

	const files = await readdirAsync(dir);

	for (let i = 0, il = files.length; i < il; i++) {

		// Pass on "." and ".."
		if (files[i] === "." || files[i] === "..") continue;

		const filePath = join(dir, files[i]);
		const fileInfo = await lstatAsync(filePath);

		if (fileInfo.isDirectory()) {
			await removeDir(filePath);
		} else {
			await unlinkAsync(filePath);
		}
	}

	// remove the now empty directory
	await rmdirAsync(dir);
};

// Tnis example downloads the examples in the the Node for Max examples repo using NPM's "install" command and saves them to the specified folder
// If this is coming from Max, it's expected to be the user library folder

let inProgress = false;

maxAPI.addHandler("download", async (targetPath) => {


	const examplesOutPath = join(targetPath, EXAMPLES_DIR_NAME);
	const tempDownloadPath = join(targetPath, `${EXAMPLES_DIR_NAME}_tmp`);

	try {

		if (inProgress) throw new Error("Example download is already in progress. Please wait.");
		inProgress = true;

		maxAPI.outlet("state", STATES.STARTING);

		if (!existsSync(targetPath)) throw new Error(`Directory ${targetPath} does not exist.`);
		if (existsSync(examplesOutPath)) throw new Error(`N4M-Examples directory already exists at ${examplesOutPath}`);

		// Create examples and temporary folder
		await mkdirAsync(tempDownloadPath);


		// Download from GitHub using npm
		maxAPI.outlet("state", STATES.DOWNLOADING);
		await doDownload(tempDownloadPath);

		// Move content package content into correct location
		await renameAsync(join(tempDownloadPath, "node_modules", EXAMPLES_DIR_NAME), examplesOutPath);

		maxAPI.post("Success!");
		maxAPI.outlet("state", STATES.COMPLETE);

	} catch (err) {

		maxAPI.post(err);
		maxAPI.outlet("state", STATES.ERROR);
		maxAPI.post("Error", maxAPI.POST_LEVELS.ERROR);
		maxAPI.post(err.message, maxAPI.POST_LEVELS.ERROR);

	} finally {
		// Remove temporary download directory in any case
		if (existsSync(tempDownloadPath)) await removeDir(tempDownloadPath);
		inProgress = false;
	}
});
