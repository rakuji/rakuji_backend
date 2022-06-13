const express = require("express");
const router = express.Router();
const multer = require("multer");
const db = require("../../modules/mysql_config");
const upload = multer();
const perPage = 8; //每一頁有幾筆
//GET　http://localhost:3001/recipes/recipesbackEdit/
router.route("/").get(async (req, res, next) => {
  const sql = "SELECT * FROM recipeslist";
  const [datas] = await db.query(sql);
  res.json(datas);
});

router.route("/:id").get(async (req, res, next) => {
  const id = req.params.id;
  const sql = "SELECT * FROM recipeslist WHERE Recipes_ID=?";
  const [datas] = await db.query(sql, [id]);
  res.json(datas);
  //  res.send(`讀取${id}的資料`)
});

///////////////////////修改瀏覽次數///////////////////////////
router.route("/:id").put(upload.none(), async (req, res, next) => {
  let output = {
    ok: false,
  };
  const id = req.params.id;

  const sql = "UPDATE recipeslist SET recipeslist WHERE Recipes_ID=?";
  const [datas] = await db.query(sql, [
    req.body.Recipes_Name,
    req.body.Recipes_Clicks,
    req.body.Recipes_Picture,
    req.body.RecipesBox_Kcal,
    req.body.RecipesBox_Time,
    req.body.RecipesBox_SeveralCopies,
    id,
  ]);
  console.log(datas);
  if (datas.affectedRows === 1) {
    output.ok = true;
  }
  res.json(output);
});
///////////////////////修改瀏覽次數///////////////////////////

module.exports = router;
