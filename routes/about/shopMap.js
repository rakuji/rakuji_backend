var express = require('express');
var router = express.Router();
const connection = require('../../modules/mysql_config');

///http://localhost:3001/shopmap/area
// router.get('/area',(req,res,next)=>{
//     const sql = "select * from shop_area order by area_id desc";   
//     connection.query(sql,function(err,results,fields){
//         console.log(err)
//        res.json(results);
//     })
// })
router.get('/area',async (req,res,next)=>{
    const sql = "select * from shop_area order by area_id desc";   
    const [results] = await connection.query(sql);
    res.json(results);
    })

//http://localhost:3001/shopmap/shop?area_id=2
router.get('/shop',(req,res,next)=>{
    const sql = "select shop_id, shop_name from shop_info where area_id=? order by shop_id";   
    connection.query(sql,[req.query.area_id],function(err,results,fields){
        console.log(err)
       res.json(results);
    })
})

//http://localhost:3001/shopmap/address?shop_id=3
router.get('/address',(req,res,next)=>{
    const sql = "select shop_address from shop_info where shop_id=?";   
    connection.query(sql,[req.query.shop_id],function(err,results,fields){
        console.log(err)
       res.json(results);
    })
})
module.exports = router;