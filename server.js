const express=require('express');
const static=require('express-static');
const bodyParser=require("body-parser");
const multer=require("multer");
const multerObj=multer({dest:'./static/upload'});
const mysql=require("mysql");
const cookieParser=require("cookie-parser");
const cookieSession=require("cookie-session");
const consolidate=require("consolidate");
const expressRoute=require("express-route");

var server = express();
server.use(bodyParser.urlencoded({extended:false}));
server.listen(3000);

server.use(multerObj.any());
server.use(cookieParser());
(function(){
	var keys=[];
	for (var i = 0; i < 100000; i++) {
		keys[i]="a_"+Math.random();	
	}

	server.use(cookieSession({
		name:'session_id',
		keys:keys,
		maxAge:20*60*1000 //20min
	}));
})();




server.engine("html",consolidate.ejs);
server.set("views","template");
server.set("view_engine","html");

server.use("/",require("./route/web.js")());
server.use("/admin",require("./route/admin/index.js")());

server.use(static("./static/"));