
class module{
    constructor(name, ensemble){
    this.name= name;   
    this.ensemble= ensemble; 
    this.episodes= {};
    }
};

var app = new Vue({
 el: "#app",
    data: {
        title: "Cue Web Module Editor",
        
        modules: [ new module('tester','test'),
                  new module('testy','test')
        ],
        
        
        newModule:  {
            dialog: false,
            name: null,
            ensemble: null,
            
        }      
    },
    methods: {
      
            newModuleCreate: function(){
                if(this.newModule.name !== null){
                var thisModule = new module( this.newModule.name,this.newModule.ensemble);
                this.modules.push(thisModule);
                console.log(this.modules);
                }
                this.newModule.dialog= false;
                this.newModule.name = null;
                this.newModule.ensemble= null;
                
            },
        removeModule: function(index){
            this.modules.splice(index,1);
            console.log(this.modules);
        },
        
        saveModules: function(){
        },
        
        loadModules: function(){
          
         
        }
        
    }
})