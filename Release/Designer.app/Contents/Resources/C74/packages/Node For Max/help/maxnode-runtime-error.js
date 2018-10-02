// This file will start just fine, but will throw an error when you try to send it 'error'
const Max = require("max-api");

const objects = [
	{
		name: "Frank"
	}
];

Max.addHandler('error', () => console.log(objects[1].name));
Max.addHandler(Max.MESSAGE_TYPES.ALL, () => {
	Max.post(`Got the value ${value} but no idea what to do with it`);
});
