const http = require('http');
const express = require('express');
const queqiao = require('./queqiao');

var app = express();
http.createServer(app).listen(8080);

//使用中间件向客户端返回静态内容
app.use(express.static('public'));

//定义路由，向客户端返回动态内容
//app.get('/user', queqiao.getI);
//app.get('/aaa', queqiao.getA);
app.get('/cat', queqiao.getCat);
app.get('/customer', queqiao.getCus);
app.get('/imgNid/:nid', queqiao.getNid);
app.post('/gift', queqiao.getGift);
app.post('/msg', queqiao.getMsg);
app.get('/search', queqiao.getSearch);
