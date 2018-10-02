// readline is a builtin node module for reading from a byte stream
// it separates the stream on newline characters and fires a 'line' event
// with the text that appeared before the newline character
const readline = require('readline');
const Max = require("max-api");

const rl = readline.createInterface({
  input: process.stdin,
  output: process.stdout,
  terminal: false
});

rl.on('line', function(line){

  // This will be posted to the Max console
  Max.post(`Received ${line} on stdin`);

  // If you run this without Max, this will go to stdout, which is usually
  // the JS console. In a node.script object, this output is redirected to Max
  // with the prefix stdout
  console.log(`Echoing ${line} to stdout`);
});

Max.addHandler('error', function() {

  // This is also routed to Max and gets the prefix stderr
  console.error("Error: Does not compute");
});
