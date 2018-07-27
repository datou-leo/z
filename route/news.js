const express=require('express');
const mysql=require('mysql');
module.exports=function(){
	var router = express.Router();	

	router.get('/', function(req, res, next) {


	  var newstype = req.query.newstype;
	  var pagenumber = req.query.pagenumber;

	  //创建数据库链接
	  var connection = mysql.createConnection({
		  host:"127.0.0.1",
		  port:"3306",
		  user:"root",
		  password:"root",
		  database:"news"
		});
	  //链接数据库
	  connection.connect();

	  connection.query('SELECT * FROM `news` WHERE `newstype`=? ORDER BY `newsid` DESC LIMIT '+pagenumber+',3',[newstype],function(error,rows,fields){
	  		if(error){
	  			res.status(500).send("database error").end();
	  		}else{  			
	  			res.json(rows);
	  		}
	  });
	});

	return router;
}