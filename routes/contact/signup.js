var express = require("express");
var router = express.Router();
const db = require("../../modules/mysql_config");
const multer = require("multer");
const upload = multer();


/* GET home page. */
router.post("/", async function (req, res, next) {
  let output = {
    ok: false,
  };
  // const [datas] = db.query('SELECT COUNT(*) AS TOTAL FROM member WHERE Memail =?','abc123@gmail.com')
  console.log(req.body);
  const sql = "SELECT COUNT(*) AS TOTAL FROM member WHERE Memail =?";
  // const sql = 'SELECT COUNT(*) AS TOTAL FROM member WHERE Memail =?'
  // const datas = await db.query(sql, function (error, result) {
  //   console.log(error);
  //   console.log(result);
  // });
  // const promisePool = db.promise();
  // query database using promises
  
  const [members,fields] = await promisePool.query(sql,req.body.Memail);
  console.log(members);
  // const total = datas[0].TOTAL;
  if (members && members[0].TOTAL > 0) {
    res.json(output);
  } else {
    const sql2 = "INSERT INTO `member`(`Memail`, `Mpassword`) VALUES (?,?)";
    const [newMember,fields] = await promisePool.query(sql2,[req.body.Memail, req.body.Mpassword]);
    console.log(newMember);
    // const datas2 = db.query(sql2, [req.body.Memail, req.body.Mpassword]);
    // console.log(datas2);
    if (newMember.affectedRows===1) {
      output.ok = true;
      res.json(output);
    }
  }
});

module.exports = router;
