var express = require('express');
var router = express.Router();
const connection = require('../../modules/mysql_config');

// http://localhost:3001/shopLists 找出所有門市列表
// router.get('/',(req,res,next)=>{
//     const sql = "SELECT * FROM view_shop ORDER by shop_id";   
//     connection.query(sql,function(err,results,fields){
//         console.log(err);
//         res.json(results);
//     })
// })
router.get('/',async (req,res,next)=>{
    const sql = "SELECT * FROM view_shop ORDER by shop_id";   
    const [results] = await connection.query(sql);
    res.json(results);
})

// http://localhost:3001/shopLists/shop?shop_id=7 找出某一家門市(by shop_id)
// router.get('/shop',(req,res,next)=>{
//     const sql = "select * from view_shop where shop_id=? ";   
//     connection.query(sql,[req.query.shop_id],function(err,results,fields){
//         console.log(sql);
//         console.log(err);
//         res.json(results);
//     })
// })
router.get('/shop',async (req,res,next)=>{
    const sql = "select * from view_shop where shop_id=? ";   
    const [results] = await connection.query(sql,[req.query.shop_id])
        res.json(results);
})

// http://localhost:3001/shopLists/firstShop 找出各區域的第一家門市(shop_id最小者)
// router.get('/firstShop',(req,res,next)=>{
//     const sql = "SELECT MIN(shop_id) AS shop_id,area_name FROM view_shop GROUP BY area_name ORDER BY shop_id";   
//     connection.query(sql,function(err,results,fields){
//        console.log(err);
//        res.json(results);
//     })
// })
router.get('/firstShop',async (req,res,next)=>{
    const sql = "SELECT MIN(shop_id) AS shop_id,area_name FROM view_shop GROUP BY area_name ORDER BY shop_id";   
    const [results] = await connection.query(sql)
       res.json(results);
    })

// http://localhost:3001/shopLists/7 使用'動態路由'找出某一家門市(by shop_id)--> 放在所有路由的最後面，以免上列的某些路由失效
// router.get('/:id',(req,res,next)=>{
//     const id = req.params.id;
//     const sql = "select * from view_shop where shop_id=? ";   
//     connection.query(sql,[id],function(err,results,fields){
//         console.log(err);
//         res.json(results);
//     })
// })
router.get('/:id',async (req,res,next)=>{
    const id = req.params.id;
    const sql = "select * from view_shop where shop_id=? ";   
    const [results] = await connection.query(sql,[id])
        res.json(results);
    })



module.exports = router;