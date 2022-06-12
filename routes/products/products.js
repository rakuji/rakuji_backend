const express = require("express");
const router = express.Router();
const multer = require("multer");
const db = require("../../modules/mysql_config");
const upload = multer();

//GET　http://localhost:3001/products/
router.route("/").get(async (req, res, next) => {
  const sql = "SELECT * FROM products";
  const [datas] = await db.query(sql);
  res.json(datas);
});

router.route("/productcomment").post(async (req, res, next) => {
  const product_id = req.body.product_id;
  const rating = req.body.rating;
  const comments = req.body.comments;
  const loginMemberId = req.body.loginMemberId;

  // console.log(typeof product_id)
  // console.log(typeof rating)
  // console.log(typeof comments)
  // console.log(typeof loginMemberId)

  const sql =
    "INSERT INTO `products_comment`(product_id,rating,member_id,contents,created_at) VALUES (?,?,?,?,Now())";
  const datas = await db.query(sql, [product_id, rating, loginMemberId, comments]);

  console.log("新增成功");
  res.json(datas);
});

router.route("/productcommentsearch").get(async (req, res, next) => {
  const sql =
    "SELECT `products_comment`.`id`,`product_id`,`rating`,`member_id`,`contents`,`products_comment`.`created_at`,`name` FROM `products_comment` JOIN `member` ON `member`.`id` = `products_comment`.`member_id` ORDER BY `id` DESC";
  const [datas] = await db.query(sql);
  res.json(datas);
});

router.route("/:id").delete(async (req, res, next) => {
  let output = {
    ok: false,
  };
  const id = req.params.id;
  const sql = "DELETE FROM products_comment WHERE `products_comment`.`id`=?";
  const [datas] = await db.query(sql, [id]);
  if (datas.affectedRows === 1) {
    output.ok = true;
  }
  res.json(output);
  console.log("刪除一筆評論編號為:" + id)
});

module.exports = router;
