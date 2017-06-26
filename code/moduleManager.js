outlets= 4;

var m = new Dict("Modules");
//var c = new Dict("cueList");
var cueList = [[]];

var network = new Dict("network");

defaultEpisode= new Dict("defaultEpisode");

function restoreDefault(){ 
	defaultEpisode.set('frame', 'blank');
	defaultEpisode.set('countIn', '0');
	defaultEpisode.set('duration', '0');
}


function addModule(mName){
	// Deal with undefined variables

	//Fields
	thisM = new Dict();
	thisM.set('1', defaultEpisode);
	thisM.set('ensemble', '');
	
	//Adds a module to the dictionary 
	m.set(mName, thisM);
	outlet (0, 'bang');
		}
		
function addEpisode(mName){
	//adds a default episode entry to module mName

	if (m.contains(mName)){
			thisModule = m.get(mName);
			nEp = thisModule.getkeys().length;
			thisModule.set(nEp, defaultEpisode);
			m.replace(mName, thisModule);
			thisModule.clear();
			outlet (1, 'bang');
		}
	}
	
function editEp(mName, eName, key, value){
	//Modifies episode eName in module mName to 'key' : 'value'
	
	thisModule = m.get(mName);
	thisEp = thisModule.get(eName);
	thisEp.replace(key, value);
	thisModule.replace(eName,thisEp);
	m.replace(mName, thisModule);
	thisModule.clear();
	thisEp.clear();
	outlet (2, 'bang');
	
	}
	
function editModule(mName, key, value){
	thisModule = m.get(mName);
	thisModule.replace(key, value);
	m.replace(mName, thisModule);
	thisModule.clear();
	outlet(2, 'bang');
	}


function changeName(mName, newName){
		thisModule = m.get(mName);
		m.set(newName, thisModule);
		m.remove(mName);
		outlet(2, 'bang');

}
			
	
function addCue(index, cue){
	cueList[index] = cueList[index].push(cue);
}

function dumpCues(){
 	for ( i = 0; i < cueList.length; i ++ ){
			for( i2 = 0; i2 < cueList[i]; i2++){
				outlet(3, "cueDump" + cueList[i][i2]);
				}
			}
		}
		

	
	