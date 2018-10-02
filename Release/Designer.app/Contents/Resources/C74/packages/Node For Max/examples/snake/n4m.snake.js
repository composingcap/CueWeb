// ---------------------------------------------------------------------------
//
// n4m.snake.js
//
// Node For Max Snake "Game Engine" backend
//
// ---------------------------------------------------------------------------
const maxAPI = require("max-api");

const DEFAULT_DIMS = {x: 20, y: 20};
const INITIAL_SEGMENTS = 10;
const INITIAL_POSITION = {x: 10, y: 10};

const DIRECTIONS = Object.freeze({
	NONE: "NONE",
	LEFT: "LEFT",
	RIGHT: "RIGHT",
	DOWN: "DOWN",
	UP: "UP"
});

const STATES = Object.freeze({
	PLAYING: "PLAYING",
	GAME_OVER: "GAME_OVER"
});


const opposite = (d1, d2) => {
	return (d1 === DIRECTIONS.LEFT && d2 === DIRECTIONS.RIGHT) ||
		(d1 === DIRECTIONS.RIGHT && d2 === DIRECTIONS.LEFT) ||
		(d1 === DIRECTIONS.UP && d2 === DIRECTIONS.DOWN) ||
		(d1 === DIRECTIONS.DOWN && d2 === DIRECTIONS.UP);
};
class DrawablePixel {
	constructor(x, y) {

		this.position = { x, y };
		this._hidden = false;
	}

	get hidden() {
		return this._hidden;
	}

	set hidden(tf) {
		this._hidden = tf;
	}

	draw(pixelList) {
		if (!this.hidden) {
			pixelList.push(this.position.x);
			pixelList.push(this.position.y);
		}
	}
}

class SnakeSegment extends DrawablePixel {
	constructor(x, y) {
		super(x, y);
		this._direction = DIRECTIONS.NONE;
	}

	get direction() {
		return this._direction;
	}

	set direction(d) {
		this._direction = d;
	}

	update(dims) {
		if (this._direction === DIRECTIONS.LEFT) {
			this.position.x -= 1;
		} else if (this._direction === DIRECTIONS.RIGHT) {
			this.position.x += 1;
		} else if (this._direction === DIRECTIONS.UP) {
			this.position.y -= 1;
		} else if (this._direction === DIRECTIONS.DOWN) {
			this.position.y += 1;
		}

		this.position.x = (this.position.x + dims.x) % dims.x;
		this.position.y = (this.position.y + dims.y) % dims.y;
	}
}

class SnakeGame {

	constructor() {
		this.dims = Object.assign({}, DEFAULT_DIMS); // Create a copy of the default dimensions
		this.initializeGame();
	}

	initializeGame() {
		this.blinkTimer = 0;
		this.segments = [];
		this.state = STATES.PLAYING;
		const startPosition = this.deathPosition ? this.deathPosition : INITIAL_POSITION;

		for (let i = 0; i < INITIAL_SEGMENTS; i++) {
			this.segments.push(new SnakeSegment(startPosition.x, startPosition.y));
		}
		this.segments[0].direction = DIRECTIONS.LEFT;
		this.addFruit();
	}

	addFruit() {
		this.fruit = new DrawablePixel(
			Math.floor(Math.random() * this.dims.x),
			Math.floor(Math.random() * this.dims.y)
		);
	}

	addSegment() {
		const last_segment = this.segments[this.segments.length - 1];
		this.segments.push(new SnakeSegment(last_segment.position.x, last_segment.position.y));
	}

	getPixels() {
		const pixels = ["pixels"];
		this.segments.forEach(segment => segment.draw(pixels));
		this.fruit.draw(pixels);
		return pixels;
	}

	_updateGameOver() {
		this.blinkTimer = (this.blinkTimer + 1) % 8;
		this.segments.forEach(segment => {
			segment.hidden = this.blinkTimer >= 4;
		});
	}

	_updatePlaying() {
		const segments = this.segments;
		segments.forEach(segment => segment.update(this.dims));

		for (let i = segments.length - 1; i > 0; i--) {

			const this_segment = segments[i];
			const next_segment = segments[i - 1];
			this_segment.direction = next_segment.direction;

			// Check for game over
			if (i !== 0) {
				if (segments[i].position.x === segments[0].position.x &&
					segments[i].position.y === segments[0].position.y
				) {
					this.state = STATES.GAME_OVER;
					this.deathPosition = Object.assign({}, segments[0].position);
				}
			}
		}

		// Check if you should add a fruit
		if (segments[0].position.x === this.fruit.position.x &&
			segments[0].position.y === this.fruit.position.y
		) {
			this.addSegment();
			this.addFruit();
		}
	}

	update() {
		if (this.state === STATES.PLAYING) {
			this._updatePlaying();
		} else if (this.state === STATES.GAME_OVER) {
			this._updateGameOver();
		}
	}
}

const game = new SnakeGame();

maxAPI.addHandlers({
	addSegment: () => game.addSegment,
	getPixels: () => {
		const pixels = game.getPixels();
		maxAPI.outlet(pixels);
	},
	input: (d) => {
		if (!DIRECTIONS.hasOwnProperty(d)) {
			maxAPI.post("Invalid input to snake game " + d, maxAPI.POST_LEVELS.WARN);
		} else {
			if (!opposite(game.segments[0].direction, d)) game.segments[0].direction = d;
			if (game.state === STATES.GAME_OVER) {
				game.initializeGame();
			}
		}
	},
	update: () => {
		game.update();
		maxAPI.outlet("didUpdate");
	}
});

game.initializeGame();
