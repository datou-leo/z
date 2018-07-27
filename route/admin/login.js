const express=require('express');
const common=require('../../libs/common');
const mysql=require('mysql');
const db=mysql.createPool({
  host:"127.0.0.1",
  port:"3306",
  user:"root",
  password:"root",
  database:"news"
});

module.exports=function(){
	var router = express.Router();

	router.get("/",(req,res)=>{		
		res.render('admin/login.ejs',{});
	});

	router.post("/",(req,res)=>{		
		if(!req.body.username || !req.body.password ){
			res.status(400).send("arg error!").end();
		}else{

			var username= req.body.username;
			var password= common.md5(req.body.password+common.MD5_SUFFIX);
			db.query(`SELECT * FROM admin where username ='${username}'`,(err,data)=>{
				if(err){
					console.log(err);
					res.status(500).send("database error").end();
				}else{
					if(data.length>0){
						var user = data[0];
						if(user.password==password){
							//保存admin_id
							req.session['admin_id']=user.id;
							res.redirect("/admin/");
						}else{
							res.status(400).send("password error").end();
						}
					}else{
						res.status(400).send("no this admin").end();
					}
				}
			})
		}			
	});

	return router;
}


	