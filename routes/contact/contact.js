var express = require("express");
var router = express.Router();
const db = require("../../modules/mysql_config");

router.post("/", async function (req, res, next) {
  const sql =
    "INSERT INTO `contact` (`name`, `email`, `select1`, `subject`, `message`) VALUES (?,?,?,?,?)";
  const [data] = await db.query(sql, [
    req.body.name,
    req.body.email,
    req.body.select1,
    req.body.subject,
    req.body.message,
  ]);
  console.log(data);

  if (data.affectedRows === 1) {
    res.send("Values Inserted");
  } else 
   res.send("err")
});

module.exports = router;
