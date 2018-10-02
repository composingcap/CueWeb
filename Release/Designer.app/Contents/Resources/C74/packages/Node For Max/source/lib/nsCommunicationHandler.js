const MaxComm = require("./communication");
const MaxUtils = require("./utils");
const NSProcessManager = require("./nsProcessManager.js");
const Logger = require("./logger");
const { API_MESSAGES, NPM_STATUSES, STATUS_CODES } = require("./constants");

class NSCommunicationHandler {

	constructor({
		port = null,
		socket = null
	}) {

		this._processToClientLookup = new Map();

		this._tcpServer = MaxComm.createCommunicator(MaxComm.COMMUNICATION_TYPES.SOCKET, {
			port: port || null,
			path: socket || null,
			maxConnections: 0
		});

		this._tcpServer.on("client_connect", this._onClientConnected.bind(this));
		this._tcpServer.on("client_disconnect", this._onClientDisconnected.bind(this));
		this._tcpServer.on("client_message", this._onClientMessage.bind(this));

		this._procManager = new NSProcessManager();

		this._procManager.on("error", this._onManagerError.bind(this));
		this._procManager.on("process_error", this._onProcessError.bind(this));
		this._procManager.on("process_close", this._onProcessClose.bind(this));
		this._procManager.on("process_restarting", this._onProcessRestarting.bind(this));
		this._procManager.on("process_restarted", this._onProcessRestarted.bind(this));

	}

	_storeProcessClientAssociation(procId, clientId) {
		this._processToClientLookup.set(procId, clientId);
	}

	_removeProcessClientAssociation(procId) {
		this._processToClientLookup.delete(procId);
	}

	_getClientAssociationForProcess(procId) {
		return this._processToClientLookup.get(procId) || null;
	}

	_sendRawToClient(clientID, msg) {
		const client = this._tcpServer.getClient(clientID);
		if (!client) return void Logger.debug("Unknown client %s for %j", clientID, msg);
		client.write(msg);
	}

	_sendMessageToClient({ clientID, uid, type, payload, status = 74 }) {
		const msg = {
			uid: uid ? uid : MaxUtils.uniqID(),
			type,
			status,
			payload
		};

		Logger.debug("Sending message to client %s %j", clientID, msg);
		this._sendRawToClient(clientID, msg);
	}

	_sendErrorToClient({ clientID, uid, type, err }) {
		const msg = {
			uid: uid ? uid : MaxUtils.uniqID(),
			type,
			status: STATUS_CODES.ERROR,
			payload: {
				error: {
					code: err.code,
					details: err.details || null,
					message: err.message,
					stack: err.stack,
					log: err.log || null
				}
			}
		};

		Logger.debug("Sending error message to client %s %j", clientID, msg);
		this._sendRawToClient(clientID, msg);
	}

	_onClientConnected(client) {
		Logger.debug("Client %s connected", client.id);
	}

	async _onClientDisconnected(client) {
		Logger.debug("Client %s disconnected", client.id);

		// Kill All Processes for the client here
		const processList = Array.from(this._processToClientLookup);
		let killed = 0;

		for (let i = 0, il = processList.length; i < il; i++) {
			const [procID, clientID] = processList[i];
			if (clientID !== client.id) continue;

			try {
				await this._procManager.stopProcess(procID);
			} catch (err) {
				Logger.debug("Error while trying to stop process %s due to client %s disconnecting", procID, clientID);
				Logger.debug("%o", err);
			} finally {
				// Clear the lookup table entry
				this._removeProcessClientAssociation(procID);
				killed++;
			}
		}
		Logger.debug("Stopped %d processes due to client %s disconnecting.", killed, client.id);
	}

	async _onClientMessage(msg, client) {

		const clientID = client.id;

		// Ensure associated client is present
		if (!client) return void Logger.debug("Missing associated client for message: %j", msg);
		if (!msg) return void Logger.debug("Received invalid message");

		if (!msg.uid) {
			const err = new Error("Invalid Message signature. Missing uid.");
			err.details = JSON.stringify(msg);
			return void this._sendErrorToClient({ clientID, uid: MaxUtils.uniqID(), type: msg.type, err });
		}

		// ensure payload is at least present, each specific msg handler
		// will handle and ensure the necessary parameters itself
		const payload = msg.payload || {};
		const { uid, type } = msg;

		// Message Switch
		switch (msg.type) {

			case API_MESSAGES.START_PROCESS: {
				try {
					const info = await this._procManager.startProcess(payload);
					this._storeProcessClientAssociation(info.id, clientID);
					this._sendMessageToClient({ clientID, uid, type, payload: info });
					return;
				} catch (err) {
					return void this._sendErrorToClient({ clientID, uid, type, err });
				}
			}
			case API_MESSAGES.STOP_PROCESS: {
				try {
					const id = await this._procManager.stopProcess(payload);
					this._sendMessageToClient({ clientID, uid, type, payload: { id } });
					this._removeProcessClientAssociation(id);
					return;
				} catch (err) {
					return void this._sendErrorToClient({ clientID, uid, type, err });
				}
			}

			case API_MESSAGES.GLOBAL_STATUS: {
				try {
					const status = await this._procManager.getGlobalStatus();
					this._sendMessageToClient({ clientID, uid, type, payload: { description: status } });
					return;
				} catch (err) {
					return void this._sendErrorToClient({ clientID, uid, type, err });
				}
			}

			case API_MESSAGES.PROCESS_STATUS: {
				try {
					const status = await this._procManager.getPocessStatus(payload);
					this._sendMessageToClient({ clientID, uid, type, payload: {
						id: payload.id,
						description: status
					}});
					return;
				} catch (err) {
					return void this._sendErrorToClient({ clientID, uid, type, err });
				}
			}

			case API_MESSAGES.NPM: {
				try {
				// Send message that we'll run this first
					this._sendMessageToClient({
						clientID,
						uid,
						type,
						payload: {
							args: payload.args,
							status: NPM_STATUSES.STARTED
						}
					});

					await this._procManager.runNPMCommand(payload);
					this._sendMessageToClient({
						clientID,
						uid,
						type,
						payload: {
							args: payload.args,
							status: NPM_STATUSES.COMPLETED
						}
					});
					return;
				} catch (err) {
					return void this._sendErrorToClient({ clientID, uid, type, err });
				}
			}
			default:
				Logger.debug("Skipping message due to unknown message type '%s' %j", msg.type, msg);
		}
	}

	_onManagerError(err) {
		Logger.debug(`Process Manager Error: ${err.message} | ${err.stack}`);
	}

	_onProcessError(err, proc, willRestart) {
		Logger.debug("Process %s Error (willRestart=%s) %o", proc.id, willRestart, err);

		const clientID = this._getClientAssociationForProcess(proc.id);
		if (!willRestart || !clientID) this._removeProcessClientAssociation(proc.id);
		if (!clientID) return;

		this._sendMessageToClient({
			clientID,
			type: API_MESSAGES.TERMINATED,
			payload: {
				id: proc.id,
				willRestart,
				error: {
					message: err.message,
					details: err.details,
					stack: err.stack,
					code: err.code
				}
			},
			status: STATUS_CODES.ERROR
		});
	}

	_onProcessClose(proc, willRestart) {
		Logger.debug("Process %s Terminated willRestart=%s", proc.id, willRestart);

		const clientID = this._getClientAssociationForProcess(proc.id);
		if (!willRestart || !clientID) this._removeProcessClientAssociation(proc.id);
		if (!clientID) return;

		this._sendMessageToClient({
			clientID,
			type: API_MESSAGES.TERMINATED,
			payload: {
				id: proc.id,
				willRestart
			},
			status: STATUS_CODES.INFO
		});
	}

	_onProcessRestarting(proc, reason, restartCount, details) {
		Logger.debug("Process %s Restarting due to %s", proc.id, reason);

		const clientID = this._getClientAssociationForProcess(proc.id);
		if (!clientID) return void this._removeProcessClientAssociation(proc.id);

		this._sendMessageToClient({
			clientID,
			type: API_MESSAGES.RESTARTING,
			payload: {
				id: proc.id,
				reason,
				restartCount
			},
			status: STATUS_CODES.INFO
		});
	}

	_onProcessRestarted(proc, reason, restartCount, details) {
		Logger.debug("Process %s successfully Restarted", proc.id);

		const clientID = this._getClientAssociationForProcess(proc.id);
		if (!clientID) return void this._removeProcessClientAssociation(proc.id);

		this._sendMessageToClient({
			clientID,
			type: API_MESSAGES.RESTARTED,
			payload: {
				id: proc.id,
				reason,
				restartCount
			},
			status: STATUS_CODES.INFO
		});

	}

	async shutdown() {
		try {
			await this._procManager.shutdown();
		} catch (e) {
			// nothing for now
		}

		try {
			await this._tcpServer.destroy();
		} catch (e) {
			// nothing for now
		}
	}

	async startup() {
		const address = await this._tcpServer.listen();
		Logger.debug("Listening on socket %j", address);
		return address;
	}
}

module.exports = NSCommunicationHandler;
