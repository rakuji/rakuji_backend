var express = require('express');
var router = express.Router();
const connection = require('../../modules/mysql_config');

// http://localhost:3001/shopmap/area 找出(門市)所有區域
// **************************************************************
// 方法一: 若mysql_config.js不使用promise (module.exports = pool)
// router.get('/area',(req,res,next)=>{
//     const sql = "select * from shop_area order by area_id desc";   
//     connection.query(sql,function(err,results,fields){
//         console.log(err)
//        res.json(results);
//     })
// })
// 方法二: 若mysql_config.js有使用promise (module.exports = pool.promise())
router.get('/area',async (req,res,next)=>{
    const sql = "select * from shop_area order by area_id desc";   
    const [results] = await connection.query(sql);
    res.json(results);
})

//  http://localhost:3001/shopmap/shop?area_id=2 找出某區域的所有門市
// *******************************************************************
// 方法一: 若mysql_config.js不使用promise (module.exports = pool)
// router.get('/shop',(req,res,next)=>{
//     const sql = "select shop_id, shop_name from shop_info where area_id=? order by shop_id";   
//     connection.query(sql,[req.query.area_id],function(err,results,fields){
//         console.log(err)
//        res.json(results);
//     })
// })
// 方法二: 若mysql_config.js有使用promise (module.exports = pool.promise())
router.get('/shop',async(req,res,next)=>{
    const sql = "select shop_id, shop_name from shop_info where area_id=? order by shop_id";   
    const [results] = await connection.query(sql,[req.query.area_id]);
    res.json(results);
})


// http://localhost:3001/shopmap/address?shop_id=3 找出某門市的地址
// ********************************************************************
// 方法一: 若mysql_config.js不使用promise (module.exports = pool)
// router.get('/address',(req,res,next)=>{
//     const sql = "select shop_address from shop_info where shop_id=?";   
//     connection.query(sql,[req.query.shop_id],function(err,results,fields){
//         console.log(err)
//        res.json(results);
//     })
// })
// 方法二: 若mysql_config.js有使用promise (module.exports = pool.promise())
router.get('/address',async (req,res,next)=>{
    const sql = "select shop_address from shop_info where shop_id=?";   
    const [results] = await connection.query(sql,[req.query.shop_id]);
       res.json(results);
})

module.exports = router;