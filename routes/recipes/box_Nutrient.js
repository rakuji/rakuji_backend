const express = require('express');
const router = express.Router();
const multer = require('multer');
const db = require("../../modules/mysql_config");
const upload = multer();
const perPage = 8;//每一頁有幾筆
//GET　http://localhost:3001/recipes/box_Nutrient

router.route('/abcef/:id')
    .get(async (req,res,next)=>{
        const id = req.params.id;
        const sql = "SELECT * FROM recipeslist  JOIN recipesnutrient ON recipesnutrient.Recipes_ID=recipeslist.Recipes_ID  WHERE recipeslist.Recipes_ID=?";
        const [datas] = await db.query(sql,[id]);
       res.json(datas);
      //  res.send(`讀取${id}的資料`)
    })

module.exports = router;

