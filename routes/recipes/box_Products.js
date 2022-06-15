const express = require('express');
const router = express.Router();
const multer = require('multer');
const db = require("../../modules/mysql_config");
const upload = multer();
//GET　http://localhost:3001/recipes/box_Products/products
router.route("/products").get(async (req, res, next) => {
    const sql = "SELECT * FROM products order by id= rand(3) LIMIT 3 OFFSET 8";
    const [datas] = await db.query(sql);
    res.json(datas);
  });


module.exports = router;

