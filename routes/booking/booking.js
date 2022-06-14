const express = require("express");
const router = express.Router();
const multer = require("multer");
const upload = multer();
const db = require("../../modules/mysql_config");
const nodemailer = require("nodemailer");
//GET　http://localhost:3001/booking/

//傳送訂位
router
  .route("/")
  .post(async (req, res, next) => {
    const {
      mid,
      startDateformat,
      storeInput,
      peopleAdultInput,
      peopleKidInput,
      mealTimeInput,
      bookingTimeInput,
      name,
      phone,
      email,
      status,
    } = req.body;

    // console.log(loginMemberId);
    // console.log(startDateformat);
    // console.log(storeInput);
    // console.log(peopleAdultInput);
    // console.log(peopleKidInput);
    // console.log(mealTimeInput);
    // console.log(bookingTimeInput);
    // console.log(name);
    // console.log(phone);
    // console.log(email);
    // console.log(status);

    //新增進order資料表
    const sql =
      "INSERT INTO `booking`(member_id,booking_date,store,people_adult,people_kid,meal_time,booking_time,name,phone,email,statue,created_at) VALUES (?,?,?,?,?,?,?,?,?,?,?,Now())"; //order需要加反引號，否則會報錯，因為order為sql保留字
    const datas = await db.query(sql, [
      mid,
      startDateformat,
      storeInput,
      peopleAdultInput,
      peopleKidInput,
      mealTimeInput,
      bookingTimeInput,
      name,
      phone,
      email,
      status,
    ]);
    const b_id = datas[0].insertId; //這是order資料表中的訂位編號

    console.log("新增一筆訂位編號為:" + b_id);
    res.json(b_id); //回傳訂位編號

    let transporter = nodemailer.createTransport({
      host: "smtp.gmail.com",
      port: 587,
      secure: false, // true for 465, false for other ports
      auth: {
        user: process.env.SMTP_TO_EMAIL, // Gmail 帳號
        pass: process.env.SMTP_TO_PASSWORD, // Gmail 的應用程式的密碼
      },
    });

    let info = await transporter.sendMail({
      from: `"Rakuji 樂時町" <${process.env.SMTP_TO_EMAIL}>`, // sender address
      to: email, // list of receivers
      subject: `線上訂位成功! 訂位編號${b_id}`, // Subject line
      text: "Hello world?", // plain text body
      html: `
      <h3>親愛的 ${name} 您好! 以下是您的訂位資訊</h3>
      <p>訂位分店：${storeInput}</p>
      <p>用餐人數：${peopleAdultInput}位大人，${peopleKidInput}位小孩</p>
      <p>用餐日期：${startDateformat}</p>
      <p>訂位人姓名：${name}</p>
      <p>訂位人電話：${phone}</p>
      <p>訂位人Email：${email}</p>
      <p>備註：${status}</p>
      <br/>
      <p>如有任何問題，請撥打電話與我們聯繫</p>
      <img src="" alt="" />
      `, // html body
      attachments: [
        {
          filename: "7.jpg",
          path: "./routes/booking/images/7.jpg",
        },
      ],
    });

    console.log("Message sent: %s", info.messageId);
  })

  //查詢訂位資訊
  .get(async (req, res, next) => {
    const sql = "SELECT * FROM `booking`";
    const [datas] = await db.query(sql);
    res.json(datas);
  });

//查詢分店資訊
router.route("/store").get(async (req, res, next) => {
  const sql = "SELECT * FROM `store`";
  const [datas] = await db.query(sql);
  res.json(datas);
});

//查詢用餐時段資訊
router.route("/mealtime").get(async (req, res, next) => {
  const sql = "SELECT * FROM `meal_time`";
  const [datas] = await db.query(sql);
  res.json(datas);
});

//查詢會員資訊
router.route("/member").get(async (req, res, next) => {
  const sql = "SELECT * FROM `member`";
  const [datas] = await db.query(sql);
  res.json(datas);
});

//查詢訂位資訊&店家資訊
router.route("/bookingfinish").get(async (req, res, next) => {
  const sql =
    "SELECT `booking`.`id`,`member_id`,`booking_date`,`booking`.`store`,`people_adult`,`people_kid`,`meal_time`,`booking_time`,`booking`.`name` AS 'booking_name',`booking`.`phone` AS 'booking_phone',`booking`.`email`,`statue`,`store`.`picture` AS `store_picture`,`store`.`address` AS 'store_address',`store`.`phone` AS `store_phone` FROM `booking` JOIN `store` ON `store`.`name`=`booking`.`store`";
  const [datas] = await db.query(sql);
  res.json(datas);
});

module.exports = router;
