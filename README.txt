  ______  __    __   _______ ____    __    ____  _______ .______   
 /      ||  |  |  | |   ____|\   \  /  \  /   / |   ____||   _  \  
|  ,----'|  |  |  | |  |__    \   \/    \/   /  |  |__   |  |_)  | 
|  |     |  |  |  | |   __|    \            /   |   __|  |   _  <  
|  `----.|  `--'  | |  |____    \    /\    /    |  |____ |  |_)  | 
 \______| \______/  |_______|    \__/  \__/     |_______||______/  


A node.js and p5.js based cueing system.

CueWeb is made up of three distinct parts:
-A Max/MSP patch which creates and sends cues
-A node.js server which receives messages from max
-A p5.js sketch which filters and animates those messages

This being said: Timing is decentralized and over a network may not be exact.

To run CueWeb open the Max/MSP project inside of max.

===== New Features! ======

-Alert Frame
-Secondary line of text
-Ability to resize the interface

===== Using the EventDesigner ======

To add a module simply click the add module button.  This will create a module of the given name.
You will then need to add episodes.  The episodes can be cued and understood by the p5.js sketches.
All attributes are UNIQUE to each episode except for ensemble.  The ensemble is inherited from the Module and must remain constant throughout.
The Direct Edit button will open the JS dictionary containing all of the attributes.  It may be easier to edit in plain text on some occasions.
Further description appear in the form of hints in the max patch.

Description of functions

add episode: adds an episode to the selected module
remove ep: removes an episode from the selected module
add module: adds a module of the given name (to the right)
remove module: removes the selected module

Frame Attribues

Ensemble: The name of the ensemble who will recieve the modules messages
Frame Type: The classification of the frame.
Duration: The length of the frame (in beats of seconds)
CountIn: The amount of countIn Time (in beats or seconds)
Tempo: Sets the tempo
Conductor Sequence: Special messaging system for the conductor frame.
Label: The display name for this episode.

===== Using the CueMaker ======

The CueMaker allows for a sequence of cues to be saved and recalled.
The main display shows a cue number followed by events bound to that cue.
As many events my be added to a cue, but the same ensemble may not have multiple cues.
To compensate for the CountIn   feature, CueMaker has a "Sync. Events" feature.  This will cause the events to start (after the countIn) at the same time.
The GUI may be viewed as text by pressing the view as text button.

==== Server =====
To run the server either click the toggle in the Max Project (tested on mac os) or run the executable in the root of the folder called “cuewebserver-*platform*”
If you want to mess with the source, it can be run uncompiled with node.js installed.
The server creates a host for the index.html which contains the sketch.js.  Most of what happens is in that script. Devices must be on the same network as the host and will be able to access the scetch at the router IP at port 4087 by default.
