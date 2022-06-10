var express = require('express');
const members = express.Router();
const connection = require('../../modules/mysql_config');
const multer = require('multer');
const upload = multer();
// const session = require('express-session');

// http://localhost:3001/members 找出所有會員列表
members.get('/',(req,res,next)=>{
    const sql = "SELECT * FROM member ORDER by mid";   
    connection.query(sql,function(err,results,fields){
        console.log(err);
        res.json(results);
    })
})
// http://localhost:3001/members/email?memail=ting@yahoo.com 找出某位會員(by email)
members.get('/email',(req,res,next)=>{
    // const mid = req.params.mid;
    const sql = "SELECT * FROM member where memail = ?";   
    connection.query(sql,[req.query.memail],function(err,results,fields){
        console.log(err);
        res.json(results);
    })
})
// http://localhost:3001/members/1 找出某位會員(by mid) -->使用'動態路由'找出某會員(by mid)--> 放在所有路由的最後面，以免上列的某些路由失效
members.get('/:mid',(req,res,next)=>{
    const mid = req.params.mid;
    const sql = "SELECT mname, msex, mvocation, mbirthday, mcity, maddress, mchild, mphone, mpassword FROM member where mid = ?";   
    connection.query(sql,[mid],function(err,results,fields){
        console.log(err);
        res.json(results);
    })
})

// 用POST方式向 http://localhost:3001/members 要求某會員帳密(由表單POST而來的email來查詢password)
members.post('/',upload.none(), (req,res,next)=>{
    // const member = req.body;
    // res.send(`POST:${member.email} --- ${member.password}`);
    const sql = "SELECT memail, mpassword FROM member WHERE memail = ?";   
    connection.query(sql,[req.body.email],function(err,results,fields){
        console.log(err);
        // res.send(results[0].memail+'-'+results[0].mpassword);
        if(results.length == 1){
            results.map((v,i)=>{
                const {memail,mpassword} = v;
                // res.send(`${memail}---${mpassword}`);
                if(req.body.email == memail && req.body.password == mpassword){
                    // req.session.authenticated = true;
                    // req.session.memail = memail;
                    // res.send(`歡迎帳號:${req.session.memail} 登入`);
                    res.send(true);
                }else{
                    res.send(false);
                }
            })
        }else{
            res.send(false);
        }
    })
})
// 用PUT方式向 http://localhost:3001/members/7 更改某會員資料(由表單PUT而來的mid來做變更)
members.put('/:mid',upload.none(), async (req,res,next)=>{
    let output = { ok:false };
    const mid = req.params.mid;
    const member = req.body;
    const sql = "UPDATE member SET mname=?, msex=?, mvocation=?, mbirthday=?, mcity=?, maddress=?, mchild=?, mphone=?, mpassword=? WHERE mid=?";
    const [datas] = await connection.query(sql,[member.mname,member.msex,member.mvocation, member.mbirthday, member.mcity, member.maddress, member.mchild, member.mphone, member.mpassword, mid]);
    if(datas.affectedRows === 1){
            output.ok = true;
    }
    res.json(output) ;
})

module.exports = members;