const express = require('express');
const router = express.Router();
const multer = require('multer');
const upload = multer();
const db = require('../../modules/mysql_config');
//GET　http://localhost:3001/cart/

//傳送訂單
router.route('/')
    .post(async (req, res, next) => {

        const name = req.body.name
        const phone = req.body.phone
        const email = req.body.email
        const address = req.body.address
        const items = req.body.items
        const totalItems = req.body.totalItems
        const cartTotal = req.body.cartTotal
        const couponPrice = req.body.couponPrice
        const cartTotalPrice = req.body.cartTotalPrice


        // 測試用
        // -----------------------------------------
        // console.log(name) //姓名
        // console.log(phone) //手機 
        // console.log(email) //信箱
        // console.log(address) //外送地址
        // console.log(items) //商品明細
        // console.log(totalItems) //商品數量
        // console.log(cartTotal) //商品小計
        // console.log(couponPrice) //優惠折扣金額
        // console.log(cartTotalPrice) //商品總計

        //新增進order資料表
        const sql = "INSERT INTO `order`(cartTotal,couponPrice,cartTotalPrice,name,phone,email,address,created_at) VALUES (?,?,?,?,?,?,?,Now())";  //order需要加反引號，否則會報錯，因為order為sql保留字
        const datas = await db.query(sql, [cartTotal, couponPrice, cartTotalPrice, name, phone, email, address])
        const o_id = datas[0].insertId  //這是order資料表中的訂單編號


        //新增進orderdetails資料表
        // console.log(items)
        items.map((v, i) => {
            const sql2 = "INSERT INTO `orderdetail`(`order_id`,`product_id`,`quantity`) VALUES (?,?,?)";
            const datas2 = db.query(sql2, [o_id, v.id, v.quantity])
        })

        console.log("新增一筆訂單編號為:" + o_id)
        res.json(o_id);   //回傳訂單編號

    })

//查詢訂單聯絡資訊
router.route('/order')
    .get(async (req, res, next) => {
        const sql = "SELECT * FROM `order`";
        const [datas] = await db.query(sql);
        res.json(datas);
    })

//查詢訂單商品明細
router.route('/orderdetail')
    .get(async (req, res, next) => {
        const sql = "SELECT * FROM `orderdetail` JOIN `products` ON `products`.`id` = `orderdetail`.`product_id`";
        const [datas] = await db.query(sql);
        res.json(datas);
    })



module.exports = router;
