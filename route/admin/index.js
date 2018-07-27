const express=require('express');
module.exports=function(){
	var router = express.Router();
	
	//检查登录状态
	router.use((req,res,next)=>{
		console.log(req.url);
		if(!req.session['admin_id'] && req.url!='/login'){
			res.redirect("/admin/login");
		}else{
			next();
		}
	});

	router.get("/",(req,res)=>{
		res.render("admin/index.ejs",{});
	});

	router.use("/login",require("./login.js")());
	router.use("/news",require("./news.js")());

	router.get("/logout",(req,res)=>{
		delete req.session.admin_id;//清除session
        res.redirect('/admin/login');
	});

	
	return router;
}