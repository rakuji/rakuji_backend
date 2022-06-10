var express = require('express');
var router = express.Router();
const db = require('../../modules/mysql_config');

router.post("/", async function (req, res, next) {
    const sql = 'INSERT INTO `contact` (`name`, `email`, `select1`, `subject`, `message`) VALUES (?,?,?,?,?)'
    const [data] = await db.query(sql,[req.body.name,req.body.email,req.body.select1,req.body.subject,req.body.message])
    console.log(data);
   
    if (err) {
     console.log(err); 
    } else 
    res.send("Values Inserted");
    
    });

module.exports = router;