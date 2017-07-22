const mysql = require('mysql');
const qs=require('querystring');
//数据库连接池
var pool = mysql.createPool({
  host: '127.0.0.1',
  user: 'root',
  password:'',
  database: 'xiangyuequeqiao',
  port: 3306,
  connectionLimit: 5
});

module.exports = {
  getI: (req, res)=>{
    pool.getConnection((err, conn)=>{
      conn.query('SELECT * FROM navbar_nav',(err, result)=>{
        //把查询结果集转换为JSON字符串，输出给客户端
        res.json(result);
        conn.release();//释放连接回连接池
      })
    })
  },
  getA: (req, res)=>{
    pool.getConnection((err, conn)=>{
      conn.query('SELECT * FROM all_h',(err, result)=>{
        //把查询结果集转换为JSON字符串，输出给客户端
        res.json(result);
        conn.release();//释放连接回连接池
      })
    })
  },

  getCat: (req, res)=>{
    pool.getConnection((err, conn)=>{
      conn.query('SELECT * FROM img_all',(err, result)=>{
        //把查询结果集转换为JSON字符串，输出给客户端
        res.json(result);
        conn.release();//释放连接回连接池
      })
    })
  },
  getCus: (req, res)=>{
    pool.getConnection((err, conn)=>{
      conn.query('SELECT * FROM customer_img',(err, result)=>{
        //把查询结果集转换为JSON字符串，输出给客户端
        res.json(result);
        conn.release();//释放连接回连接池
      })
    })
  },
  getNid: (req, res)=>{
    var nid=req.params.nid;
    //console.log(nid);
    pool.getConnection((err, conn)=>{
      conn.query('SELECT * FROM photo_all WHERE nid=?',[nid],(err, result)=>{
        //把查询结果集转换为JSON字符串，输出给客户端
        res.json(result);
        conn.release();//释放连接回连接池
      })
    })
  },
  getGift: (req, res)=>{
    req.on('data',(buf)=>{
      //console.log(buf.toString());
      var obj=qs.parse(buf.toString());
      var uname=obj.uname;
      var tel=obj.tel;
      pool.getConnection((err, conn)=>{
        conn.query('INSERT INTO gift VALUES(null,?,?)',['uname','tel'],(err, result)=>{
          //console.log(result);
          if(result.affectedRows===1){
            var data={
              code:200,
              msg:'提交成功,进店凭身份证并提供填写的手机号码可免费拍摄个人写真两张',
              uid:result.insertId
            };
          }else{
            var data={
              code:500,
              msg:'信息提交失败'
            };
          }
          res.json(data);
          conn.release();//释放连接回连接池
        })
      })
    });
  },
  getMsg: (req, res)=>{
    req.on('data',(buf)=>{
      //console.log(buf.toString());
      var obj=qs.parse(buf.toString());
      var uname=obj.name;
      var email=obj.email;
      var msg=obj.msg;
      pool.getConnection((err, conn)=>{
        conn.query('INSERT INTO message VALUES(null,?,?,?,now())',[uname,email,msg],(err, result)=>{
          //console.log(result);
          if(result.affectedRows===1){
            var data={
              code:200,
              msg:'您的留言提交成功',
              uid:result.insertId
            };
          }else{
            var data={
              code:500,
              msg:'您的留言提交失败'
            };
          }
          res.json(data);
          conn.release();//释放连接回连接池
        })
      })
    });
  },

  getSearch: (req, res)=>{
    pool.getConnection((err, conn)=>{
      conn.query('SELECT * FROM message ORDER BY time DESC',(err, result)=>{
        //把查询结果集转换为JSON字符串，输出给客户端
        res.json(result);
        conn.release();//释放连接回连接池
      })
    })
  }






};




