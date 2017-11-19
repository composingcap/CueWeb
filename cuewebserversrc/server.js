//Library includes
'use strict';
var fs = require('fs');
const exit = require("exit");
const express = require('express');

const dgram = require ('dgram');

const socket = require('socket.io');

var ensembleList = ["please refresh"] ;


// This code creates a UDP connection to max through DGRAM.

const fromMax = dgram.createSocket('udp4'); //Connects to max through UDP

fromMax.on('error', (err) => {
  console.log(`server error:\n${err.stack}`);
  fromMax.close();
});

fromMax.on('message', (osc, rinfo) => {
  osc = String(osc).replace(',',"");

  if (osc.slice(0,5) == '_EXIT') {
    console.log("CueWeb Now Quitting...");
    exit(0);
  }
  var msg = osc.split("/");

  if (msg[0] == '_ensembles'){
    ensembleList = msg.slice(1, msg.length-1);
    ensembleList.unshift("*please select an ensemble");
    console.log("got new ensemble list");
    cueWeb.get('/data/ensemble', function(req, res){
      res.send(ensembleList);
    });

  }

  else{
  console.log("broadcasting  " + msg);
  io.sockets.emit("FrameMessage", msg);
  }
});

fromMax.on('listening', () => {
  const address = fromMax.address();
  console.log(`server listening ${address.address}:${address.port}`);
});

fromMax.bind(8087);

//This code creates and Express Server for cueWeb


var cueWeb = express(); //Creates app server

cueWeb.use('/',   express.static(__dirname + '/public')); //Finds files

cueWeb.get('/data/ensemble', function(req, res){
  res.send(ensembleList);
});

var toCueWeb = cueWeb.listen(4087); //Clients will listen

var io = socket(toCueWeb);

io.sockets.on('connection', newConnection);

function newConnection(socket){
    console.log('new connection:  ' + socket.id);
}
