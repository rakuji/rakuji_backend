const express = require('express');
const router = express.Router();
const multer = require('multer');
const db = require('../../modules/mysql_config');
const upload = multer();
//GET　http://localhost:3001/latest_news
router.route('/')
    .get(async (req,res,next)=>{
        // DESC 倒敘顯示
        const sql = "SELECT * FROM latest_news ORDER BY sid DESC" ;
        const [datas] = await db.query(sql);
       res.json(datas);
    })
    .post(upload.none(),async (req,res,next)=>{
        const sql = "INSERT INTO categories(CategoryID,CategoryName,Description) VALUES (?,?,?)";
       // const [datas] = await db.query(sql,[req.body]);
        const [datas] = await db.query(sql,[req.body.CategoryID,req.body.CategoryName,req.body.Description]);
        console.log(datas)
        res.send("新增資料")
    })
   

router.route('/:id')
    .get(async (req,res,next)=>{
        const id = req.params.id;
        const sql = "SELECT * FROM latest_news WHERE sid=?" ;
        const [datas] = await db.query(sql,[id]);
       res.json(datas);
      //  res.send(`讀取${id}的資料`)
    })
    // .put(upload.none(), async (req,res,next)=>{
    //     let output = {
    //         ok:false
    //     }
    //     const id = req.params.id;
    //     const sql = "UPDATE categories SET CategoryName=?, Description=? WHERE CategoryID=?";
    //     const [datas] = await db.query(sql,[req.body.CategoryName,req.body.Description,id]);
    //     if(datas.affectedRows === 1){
    //         output.ok = true;
    //      }
    //    res.json(output) ;
        
    // })
    .delete(async (req,res,next)=>{
        let output = {
            ok:false
        }
        const id = req.params.id;
        console.log(id)
        const sql = "DELETE FROM latest_news WHERE sid=?";
        const[datas] = await db.query(sql,[id]);
        if(datas.affectedRows === 1){
            output.ok = true;
         }
       res.json(output) ;
    })

module.exports = router;

