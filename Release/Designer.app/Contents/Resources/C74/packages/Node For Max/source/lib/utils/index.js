
const pid = process.pid.toString(10);
const PID_PREFIX = pid.length > 4 ? pid.slice(-4) : pid.slice(-1 * pid.length);
const DATE_LENGTH = PID_PREFIX.length + 1 - 9; // symbol_unique uses a 9 digit number

/**
 * Return a unique symbol by matching the signature of symbol_unique
 */
module.exports.uniqID = () => {
	return `u${PID_PREFIX}${Date.now().toString(10).slice(DATE_LENGTH)}${~~(Math.random() * 9)}`;
};

module.exports.enhanceServerWithDestroy = (server) => {
	const connections = new Map();

	server.on("connection", (conn) => {
		const key = [conn.remoteAddress, conn.remotePort].join(":");
		connections.set(key, conn);
		conn.on("close", () => {
			connections.delete(key);
		});
	});

	server.destroy = (cb) => {
		return new Promise((resolve, reject) => {
			server.close((err) => {
				if (err) return reject(err);
				return resolve();
			});

			connections.forEach((conn, id) => {
				conn.end();
			});
		});
	};
};

module.exports.sleep = (t) => {
	return new Promise(resolve => {
		setTimeout(resolve, t || 0);
	});
};
