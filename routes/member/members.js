var express = require('express');
const router = express.Router();
const db = require('../../modules/mysql_config');
const multer = require('multer');
const upload = multer();
// const session = require('express-session');

router.route('/')
// http://localhost:3001/members 找出所有會員列表
    .get(async(req,res,next)=>{
        const sql = "SELECT * FROM member ORDER by mid";   
        const [datas] = await db.query(sql);
        res.json(datas);
    })
    // 用POST方式向 http://localhost:3001/members 要求某會員帳密(由表單POST而來的email來查詢password)
    .post(upload.none(), async(req,res,next)=>{
        const member = req.body;
        const sql = "SELECT memail, mpassword FROM member WHERE memail = ?";   
        const [datas] = await db.query(sql,[req.body.email]);
        if (datas.length == 1) {
            // res.send(true);
            datas.map((v,i)=>{
                const {memail,mpassword} = v;
                // res.send(`${memail}---${mpassword}`);
                if(req.body.email == memail && req.body.password == mpassword){
                    res.send(true);
                }else{
                    // res.send('wrong pwd');
                    res.send(false);
                }
            })
        }else{
            // res.send('wrong email');
            res.send(false);
        }
    })
    // .post(upload.none(), (req,res,next)=>{
    //     // const member = req.body;
    //     // res.send(`POST:${member.email} --- ${member.password}`);
    //     const sql = "SELECT memail, mpassword FROM member WHERE memail = ?";   
    //     db.query(sql,[req.body.email],function(err,results,fields){
    //         console.log(err);
    //         // res.send(results[0].memail+'-'+results[0].mpassword);
    //         if(results.length == 1){
    //             results.map((v,i)=>{
    //                 const {memail,mpassword} = v;
    //                 // res.send(`${memail}---${mpassword}`);
    //                 if(req.body.email == memail && req.body.password == mpassword){
    //                     // req.session.authenticated = true;
    //                     // req.session.memail = memail;
    //                     // res.send(`歡迎帳號:${req.session.memail} 登入`);
    //                     res.send(true);
    //                 }else{
    //                     res.send(false);
    //                 }
    //             })
    //         }else{
    //             res.send(false);
    //         }
    //     })
    // })
    
router.route('/email')
    // http://localhost:3001/members/email?memail=fan@gmail.com 找出某位會員(by email)
    .get(async(req,res,next)=>{
        // const mid = req.params.mid;
        const sql = "SELECT * FROM member WHERE memail = ?";   
        const [datas] = await db.query(sql,[req.query.memail]);
        res.json(datas);
    })

router.route('/:id')
    .get(async(req,res,next)=>{
        const id = req.params.id;
        const sql = "SELECT mname, msex, mvocation, mbirthday, mcity, maddress, mchild, memail, mphone, mpassword FROM member where mid = ?";   
        const [datas] = await db.query(sql,[id]);
        res.json(datas);
    })
// 用PUT方式向 http://localhost:3001/members/7 更改某會員資料(由表單PUT而來的mid來做變更)
    .put(upload.none(), async (req,res,next)=>{
        let output = { 
            ok:false 
        }
        const id = req.params.id;
        // const member = req.body;
        const sql = "UPDATE member SET mname=?, msex=?, mvocation=?, mbirthday=?, mcity=?, maddress=?, mchild=?, mphone=?, mpassword=? WHERE mid=?";
        const [datas] = await db.query(sql,[member.mname,member.msex,member.mvocation, member.mbirthday, member.mcity, member.maddress, member.mchild, member.mphone, member.mpassword, mid]);
        // const sql = "UPDATE member SET Mcity=?, Mphone=? WHERE MID=?";
        // const [datas] = await db.query(sql,[req.body.mcity, req.body.mphone, id]);
        if(datas.affectedRows === 1){
                output.ok = true;
        }
        res.json(output) ;
    }   )
    .delete(async (req,res,next)=>{
        let output = {
            ok:false
        }
        const id = req.params.id;
        const sql = "DELETE FROM member WHERE MID=?";
        const[datas] = await db.query(sql,[id]);
        if(datas.affectedRows === 1){
            output.ok = true;
         }
       res.json(output) ;
    })

module.exports = router;