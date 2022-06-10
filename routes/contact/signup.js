var express = require('express');
var router = express.Router();
const db = require('../../modules/mysql_config');
const multer = require('multer');
const upload = multer();

/* GET home page. */
router.post('/',  async function(req, res, next) {
  let output ={
    ok:false
  }
  console.log(req.body);
  const sql = 'SELECT COUNT(*) AS TOTAL FROM member WHERE Memail =?'
  const [datas] = await db.query(sql,req.body.Memail)
  console.log(datas[0].TOTAL);
  const total = datas[0].TOTAL
  if(total>0){
    res.json(output)
  }else{
    const sql2 = 'INSERT INTO `member`(`Memail`, `Mpassword`) VALUES (?,?)'
    const [datas2] = await db.query(sql2,[req.body.Memail,req.body.Mpassword])
    console.log(datas2);
    if(datas2.affectedRows===1){
      output.ok=true
      res.json(output)
    }
  }

});

module.exports = router;
