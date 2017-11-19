//Variables
var cueWeb;
var socket; //IO to server
var squareSide; //Stores the smallest side
var flag = 'blank'; //Prepends the frame

//Timing vars
var metroCount = 0; //Counter for metro
var count= 0; //Counter
var measure = 1; //Stores measure number
var then; //time that is was

var loopInfo;// Store info for the conductor loop
var cueMarker = 0;

//Server modified data (see frameChange())
var tempo = 120;
var frame = 'blank'; //Frame stores the next frame
var thisEnsemble = ''; //This devices ensemble
var countIn = 0; //Count in time before frame begins
var duration = 0; //Length of the frame
var textMsg; //Message for display in the text and countIn frames
var seq; //Conductor sequence
var nextCue; //This no longer does anything -- See textMsg

//enssemble selection
var ensembles = ['error']; //Stores enssemble lists
var sel;

function preload(){ //This calls the ensemble list from the server on load.
  loadJSON('/data/ensemble', function(reply){
    ensembles = reply;
    ensembles = ensembles.concat(["global"])
  });
    socket = io.connect(window.location.href);
    socket.on('FrameMessage', frameChange);
    console.log(ensembles)
  }

//P5 Setup and network init
function setup() {
  createCanvas(windowWidth,windowHeight);
      if (height > width){
    squareSide = width;
  }
  else{
    squareSide = height;
  }

    sel = createSelect();
    sel.position(width-250,height-50);
    for (i = 0; i < ensembles.length; i++){
      sel.option(ensembles[i]);
      sel.changed(setEnsemble);
  }
}

//This code sets the state

function frameChange(data){

  /*Frame types determine how the interface will interact with incoming data.
  Frames include:
  metro: gives a pulse at a given tempo for a duration of beats
  timer: gives a time and progress bar for a duration of time
  conductor: acts a a virtual conductor that will give beats at a given tempo in a sequence. New tempos may be given using the "T=" identifier, measure junps are identified with "M=".

  The countin element will signify a countin time in either beats or seconds. Depending on the frame type.

  example of incoming data [ensemble, frame, tempo, countIn, duration/sequence]
  so if the ensemble was named "Cats" and the score calls for a conductor cue that starts at measure 26 and contains a three beat count in, 4 bars of 4/4 at tempo 120 and a bar of 5/4 at tempo 50 if would look like as follows:
    ["Cats", "conductor", "M=26", 120, 3, 4, "T=50", 5]
  */


  if (data !== undefined){
      console.log(data);
  if ((data[0] === thisEnsemble) || (thisEnsemble === "global")){
    nextCue = data[1];
    frame = data[2];
    tempo = data[3];
    countIn = data[4];
    textMsg = data[6].replace(/_/g , ' ');
    seq = data.slice(7);
    cueMarker= 0;

   duration = int(data[5]);
    //console.log(duration);
    metroCount = 0;
    count = 0;
    }
  else if (data[0] == "global"){
    if (data[1] == "clear"){
      flag = 'blank';
      frame = 'blank';
      }
  }
  }
}

function setEnsemble(){
  thisEnsemble = sel.value();
}

//p5 draw loop

function draw() {
  if (countIn < 1){
    flag = frame;
  }
  else flag = 'countdown';


      background(0,0,0);
      if (flag === 'metro') metro(tempo);
      else if (flag ==='text') displayText();
      else if (flag === 'blink') blink(250);
      else if (flag === 'countdown'){
        if ((frame === 'metro')||(frame ==='conductor')) metroCountIn(tempo, countIn);
        else countdown(countIn);
      }
      else if (flag === 'timer') stopwatch();
      else if (flag === 'conductor') conduct(seq);
      else count = 0;

  }

  function windowResized(){
    resizeCanvas(windowWidth,windowHeight);
      if (height > width){
      squareSide = width;
    }
    else{
      squareSide = height;
    }
     sel.position(width-100,height-50);
  }



//Count In Frames

function countdown(seconds){
    strokeWeight(squareSide/100);
     stroke(100);
    if (flag === 'countdown'){
    if (count === 0) then = millis();
    fill(255);
    var timer = (seconds*1000-(millis()-then));
    secs = Math.floor(timer*0.001);
    ms = Math.floor((timer - secs*1000)*0.01);
    textSize(squareSide/4);
    textAlign(CENTER);
    text(String(secs)+ " : " +String(ms), width/2, height/2);
    textSize(squareSide/6);
    fill(255,0,0);
    stroke(255,255,255);
    text(String(textMsg), width/2, height/5);


    fill(0);
    rect(width/4, height/1.5 ,width/2, height/10);
    strokeWeight(0);
    fill('green');
    var progress = 1-(timer*0.001/seconds);
    rect(width/3.95, height/1.49 ,width/2.01*progress, height/11);
    count++;
    if (timer <= 0){
      count = 0;
      flag = 'blink';
      countIn = 0;
      }
    }
  }

function metroCountIn(tempo){
    var now = millis();
    var interval = 60/tempo*1000;
    var metroColor = [0,0,0];
    var clickTime = interval*8/9;


    if (count === 0){
      then = -interval;
      //console.log("metro init");
    }

      if(now >= (then + interval)){
        metroColor = [250,250,0];
        fill(metroColor);
        metroCount += 1;
        then = now;

        //console.log("metro on");
      }
      else if(now < then+clickTime){
        if (metroColor[0] > 0) metroColor[0] += -250/15;
        if (metroColor[1] > 0) metroColor[1] += -250/15;
        fill(metroColor);
        //console.log("metro dimming");
      }
      else{
        fill(0);
        //console.log("metro off", then);
      }
    var countDown = countIn - metroCount+1;
    if (countDown >= 1){
    strokeWeight(squareSide*0.01);
    stroke(100);
    ellipse(width*0.5,height*0.5, squareSide-50,squareSide-50);
    count ++;
    strokeWeight(0);


    textSize(squareSide/2);
    textAlign(CENTER,CENTER);
    fill(160);
    text(countDown, width/2 , height/2);
    }
     else{
      countIn = 0;
      metroCount = 0;
      count = 0;
      if ((duration === 0) && (frame !== "conductor")) blink(1000);

      flag = frame;

      return;
    }
    textSize(squareSide/6);
    fill(255,0,0);
    stroke(255,255,255);
    text(String(textMsg), width/2, height/5);
  }

function blink(blinkTime){
    if (count === 0) then = millis();
    background('yellow');
    if (millis() - then >= blinkTime){
      count = 0;
      if (flag === 'countdown')flag = frame;
      else {flag = 'blank'; frame = "blank";}
    }
    count ++;
  }

// Frames

function displayText(){
  /*  var now = milis();
    if (count === 0){
      var then = now;
     }
     var timer = (now - then);
     if ((duration === 0) || (duration*1000 <= timer)){ */
      background(150);
      fill(0);
      textSize(squareSide/4);
      textAlign(CENTER, CENTER);
      text(textMsg, 0, 0, width, height);
     // }
  }

function metro(tempo){
  var now = millis();
  var interval = 60/tempo*1000;
  var metroColor = [0,0,0];
  var clickTime = interval*8/9;

  if (count === 0){
    then = -interval;
    //console.log("metro init");
  }


    if(now >= (then + interval)){
      metroColor = [250,250,0];
      fill(metroColor);
      metroCount += 1;
      then = now;

      //console.log("metro on");
    }
    else if(now < then+clickTime){
      if (metroColor[0] > 0) metroColor[0] += -250/15;
      if (metroColor[1] > 0) metroColor[1] += -250/30;
      fill(metroColor);
      //console.log("metro dimming");
    }
    else{
      fill(0);
      //console.log("metro off", then);
    }
   if ((metroCount-1 < duration) || (duration == -1)){
    strokeWeight(squareSide*0.01);
    stroke(100);
    ellipse(width*0.5,height*0.5, squareSide-50,squareSide-50);
    count ++;
   }

    else {frame = 'blank'; flag = 'blank'; metroCount = 0;}

}

function stopwatch(){
  strokeWeight(squareSide/100);
   stroke(100);
  if (flag === 'timer'){
  if (count === 0) then = millis();
  fill(255);
  var timer = (millis()-then);
  secs = Math.floor(timer*0.001);
  ms =  Math.floor((timer - secs*1000)*0.01);
  textSize(squareSide/4);
  textAlign(CENTER);
  text(String(secs)+ " : " +String(ms), width/2, height/2);


  fill(0);
  rect(width/4, height/1.5 ,width/2, height/10);
  strokeWeight(0);
  fill('green');
  var progress =  (timer/(duration*1000));
  rect(width/3.95, height/1.49 ,width/2.01*progress, height/11);
  count++;
  if (timer > duration*1000){
    count = 0;
    frame = 'blink';
    flag = 'blink';
    countIn = 0;
    }
  }
}

function conduct(listOfCues){
  var now = millis();
  var metroColor = [0,0,0];
  var clickTime = interval*8/9;
  if (listOfCues[cueMarker] === undefined) return;
  thisCue = listOfCues[cueMarker].replace(/,/g,"");  //console.log(thisCue);

  while ((thisCue[0] === "T") || (thisCue[0] === "M") ||(thisCue[0] === 'F') || (thisCue[0] === 'L' )){
  if (thisCue[0] === "T"){
    tempo = thisCue.slice(2);
    cueMarker ++;
    //console.log("Tempo Changed")
  }
  else if (thisCue[0] === "M"){
    measure = thisCue.slice(2);
    cueMarker ++;
  }
  else if (thisCue[0] === "F"){
    frame = thisCue.slice(2);
    return;
  }

   else if (thisCue[0] === "L"){
    if (thisCue[1] === "s"){
      loopInfo = [(cueMarker + 1), measure, 0];
      cueMarker ++;
      //console.log("the loop has started");
    }
    else if (thisCue[1] === 'e'){
      if ((thisCue[2] == 'i') || (loopInfo[2] < thisCue[2])){
      cueMarker = loopInfo[0];
      measure = loopInfo[1];
      loopInfo[2]=  loopInfo[2] + 1;
      //console.log("the loop has started over");
       }
      else{
      cueMarker++;
      //console.log("the loop has ended");
      }
    }
  }

  if (listOfCues[cueMarker] === undefined) return;
  thisCue = listOfCues[cueMarker].replace(/,/g,"");

  }

  var interval = 60/tempo*1000;

  if (count === 0){
    then = -interval;
    count = 1;
    //console.log("metro init");
  }

    if(now >= (then + interval)){
      metroColor = [250,250,0];
      fill(metroColor);
      metroCount += 1;
      then = now;

      //console.log("metro on");
    }
    else if(now < then+clickTime){
      if (metroColor[0] > 0) metroColor[0] += -250/15;
      if (metroColor[1] > 0) metroColor[1] += -250/15;
      fill(metroColor);
      //console.log("metro dimming");
    }
    else{
      fill(0);
      //console.log("metro off", then);
    }
  var beat = metroCount;
  if(beat > int(listOfCues[cueMarker])){
    countIn = 0;
    metroCount = 0;
    count = 0;
    cueMarker ++;
    measure ++;
    //console.log(cueMarker);
  }
    if ( listOfCues[cueMarker] === undefined){  //If there is no cue- switch to blank frame
    frame = "blank";
    flag = "blank";
    cueMarker = 0;
    return;
  }
  strokeWeight(squareSide*0.01);
  stroke(100);
  ellipse(width*0.5,height*0.5, squareSide-50,squareSide-50);
  strokeWeight(0);
  //console.log(beat);
  textSize(squareSide/2);
  textAlign(CENTER,CENTER);
  fill(160);
  if (beat == 1){
    textSize(squareSide/1.5);
    fill(255,0,0);
    text(measure, width/2 , height/2);
  }
  else text(beat, width/2 , height/2);
}
