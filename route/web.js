const express=require('express');
const mysql=require('mysql');
module.exports=function(){
	var router = express.Router();
	router.get("/",(req,res)=>{
		console.log("asdf");
		res.render("web/index.ejs",{});
	});

	router.use("/news",require("./news.js")());
	return router;
}