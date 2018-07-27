const express=require('express');
const common=require('../../libs/common');
const mysql=require('mysql');
const fs=require('fs');
const pathLib=require('path');

const connection=mysql.createPool({
  host:"127.0.0.1",
  port:"3306",
  user:"root",
  password:"root",
  database:"news"
});
//引入xss
const xss = require('xss');

module.exports=function(){
	var router = express.Router();

	// 获取所有新闻列表
	router.get('/getnews', function(req, res, next) {
	    //得到前台传输的值
	    var page = req.query.number;
	    var pagenumber = req.query.pagenumber;
	    //查询语句
	    if (!page) {
	        connection.query('SELECT * FROM `news` order by newsid DESC limit 0,20', function(err, rows) {
	            //返回数据给前台
	            res.json(rows);
	        });
	    } else {
	        connection.query('SELECT * FROM `news` order by newsid DESC limit ' + page * pagenumber + ',20', function(err, rows) {
	            //返回数据给前台
	            res.json(rows);
	        });
	    }

	});
	//确认修改  
	router.get('/curnews', function(req, res, next) {
	    //得到前台传输的值
	    var newsid = req.query.newsid;
	    //发送查询语句
	    connection.query("SELECT * FROM `news` WHERE `newsid` = ?", [newsid], function(err, rows) {
	        res.json(rows);
	    });
	});
	//点击确认
	router.post('/updelete',function(req, res, next) {
	    //获取前台传输的数据
	    var newsid = xss(req.body.newsid);
	    var newstitle = xss(req.body.newstitle);
	    var newstime = xss(req.body.newstime);
	    //var newsimg = xss(req.body.newsimg);
	    var newstype = xss(req.body.newstype);


	    var ext=pathLib.parse(req.files[0].originalname).ext;
	    var oldPath=req.files[0].path;
	    var newPath=req.files[0].path+ext;
	    var newFileName=req.files[0].filename+ext;
	    fs.rename(oldPath,newPath,(err)=>{
	    	if(err){
	    		res.status(500).send("file error").end();
	    	}else{		
	    		connection.query("SELECT * FROM `news` WHERE `newsid` = ?", [newsid], function(err, data) {
	        		if (err) {
    					res.status(500).send('database error').end();
    				}else{

    					var news=data[0];
    					console.log(newFileName);  		
						//发送查询语句
	    				connection.query("UPDATE `news` SET `newstime`=?,`newstitle`=?,`newsimg`=?,`newstype`=? WHERE `newsid`=?", [newstime, newstitle, newFileName, newstype, newsid], function(err, rows) {
	    					if(!err){	
		    					//如果之前的图片存在就删除图片
		    					fs.exists("./static/upload/"+news['newsimg'],function(exists){
		    						if(exists){
		    							fs.unlinkSync("./static/upload/"+news['newsimg']);
		    						}
		    					})

		    					res.json(rows);
					        	// console.log(rows.changedRows)
							}else{
					    		res.status(500).send("database error").end();
					    	}
			        	});
    					
    				}
				});		        
			    
	    	
	    	}
	    }); 
	});

	//删除新闻
	router.post('/delete', function(req, res, next) {
	    //得到值
	    var newsid = req.body.newsid;
	    connection.query('DELETE FROM `news` WHERE `newsid` = ?', [newsid], function(err, result) {
	        console.log(result.affectedRows)
	    });
	});

	//增加新闻
	router.post('/insert',function(req, res, next) {
	    //得到值
	    var newstitle = xss(req.body.newstitle);
	    var newstime = xss(req.body.newstime);
	    var newsimg = xss(req.body.newsimg);
	    var newstype = xss(req.body.newstype);


	    console.log(req.files[0]); //上传文件信息
	    var ext=pathLib.parse(req.files[0].originalname).ext;
	    var oldPath=req.files[0].path;
	    var newPath=req.files[0].path+ext;
	    var newFileName=req.files[0].filename+ext;

	     fs.rename(oldPath,newPath,(err)=>{
	    	if(err){
	    		res.status(500).send("file error").end();
	    	}else{

	    		console.log(newFileName);

	    		//发送查询数据
			    connection.query('INSERT INTO `news`( `newstitle`, `newstime`, `newsimg`, `newstype`) VALUES (?,?,?,?)', [newstitle, newstime, newFileName, newstype], function(err, result) {
			        res.json("添加信息成功");
			    });

	    	}
	    });

	    
	});

	return router;
}

