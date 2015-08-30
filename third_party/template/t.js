/* global T */

var g_nameSpace = {}
if(typeof window !== 'undefined' && window)
{
	var T = {}
	g_nameSpace = window.T;	
}	
else	
	g_nameSpace = module.exports;

(function (NameSpace) {
		
	var p1 = 5;
	var f1 = function(value) {
	return value + p1;
	};
	
	var o1 = function(){
		this.p1 = 1;
	}
	
	NameSpace.p1 = p1;
	NameSpace.f1 = f1;
	NameSpace.o1 = o1;
			
})(g_nameSpace);


