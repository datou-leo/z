# z
z是一个基于nodejs的express框架开发的一个简单实现了前后台的demo

# Todo List
- [X] 浏览新闻
- [X] 新闻管理
- [X] 管理员登录
- [X] 管理员退出登录
- [X] Ajax图片上传

目录结构

<pre>
z  WEB部署目录
├─libs                     存放自定义库文件
│  └─common                自定义库文件 
├─node_modules             nodejs模块│
├─route                   
│  ├─admin                 存放后台路由文件
│  │  ├─news.js            后台新闻模块的路由文件
│  │  ├─login.js           后台登录模块的路由文件
│  │  └─index.js           后台顶级路由文件   
│  ├─news.js               前台新闻模块的路由文件
│  └─web.js                前台顶级路由文件 
├─static                   公共文件夹
│  ├─css                   存放样式文件
│  ├─iconfont              存放字体文件
│  ├─js                    存放js文件
│  │  ├─news.js            前台新闻展示程序
│  │  └─newsadmin.js       后台处理新闻管理程序 
│  └─upload                存放上传图片  
├─template                 存放模板文件
│  ├─admin                 存放后台模板文件
│  │  ├─login.ejs          后台登录模板文件
│  │  └─index.ejs          后台首页模板文件   
│  └─web                   存放前台模板文件 
│    └─index.ejs           前台新闻模板文件    
├─LICENSE.txt              授权说明文件
├─news.sql                 数据库文件
├─server.js                入口文件
└─README.md                README 文件
</pre>

 新闻显示地址 http://127.0.0.1:3000/
 新闻管理地址 http://127.0.0.1:3000/admin/news

<h2>作者长期从事程序开发</h2>
<pre>
<ul>
<li>昵称:datou</li>
<li>qq:2323178881</li>
<li>Tel:18329123270</li>
<li>微信:datou-leo</li>
<li>ci使用开发群:646864389</li>
</ul>
<pre>

# 界面预览

1.新闻展示
--
![image](web.gif)

2.新闻管理
![image](back.gif)



