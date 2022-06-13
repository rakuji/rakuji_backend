const express = require("express");
const router = express.Router();
const multer = require("multer");
const db = require("../../modules/mysql_config");
const upload = multer();
const perPage = 8; //每一頁有幾筆
//GET　http://localhost:3001/recipes/recipesbackAdd/
router.route("/").get(async (req, res, next) => {
  const sql = "SELECT * FROM recipeslist";
  const [datas] = await db.query(sql);
  res.json(datas);
});
//GET　http://localhost:3001/recipes/recipesbackAdd/new/

router.route("/new").post(upload.none(), async (req, res, next) => {
  const id = req.params.id;
  const sql =
    "INSERT INTO recipeslist(Recipes_ID) VALUES (?)";
  // const [datas] = await db.query(sql,[req.body]);
  const [datas] = await db.query(sql, [
    req.body.Recipes_ID
  ]);
  console.log(datas);
  res.send("新增資料");
});

module.exports = router;
