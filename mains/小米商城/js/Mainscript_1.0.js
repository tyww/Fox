;
(function(method){
	method(window,window.document,jQuery);
})(function(win,doc,$){
	fn.mainscript=function(){
		var app={
			init:function(){
				app.start();
			},
			clearStyle:function(){
				var de=document.querySelector("#d2-"+app.i);
				de.className="";
				if(app.i==1){
					var de1=document.querySelector("#d2-"+5);
					de1.className="dis";
				}
				if(app.i>1){
					var de1=document.querySelector("#d2-"+(app.i-1));
					de1.className="dis";
				}
				app.i++;
				if(app.i>5){
					app.i=1;
				}
			},
			stop:function(){
				clearInterval(app.time);
			},
			start:function(){
				app.time=setInterval(app.clearStyle,1000);
			}
		}
		app.init();
	}
	
}