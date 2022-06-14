var createError = require('http-errors');
var express = require('express');
var path = require('path');
var cookieParser = require('cookie-parser');
var logger = require('morgan');
const cors = require('cors')

var indexRouter = require('./routes/index');
var usersRouter = require('./routes/users');

// ****** 定義 關於我們/門市資訊/會員登入 頁面的路由 **********
let shopMapRouter = require('./routes/about/shopMap.js');
let shopListsRouter = require('./routes/store/shopLists.js');
let membersRouter = require('./routes/member/members.js');
const signupRouter = require('./routes/contact/signup.js');
const contactRouter = require('./routes/contact/contact.js');
// ********************************************************

var app = express();

// view engine setup
app.set('views', path.join(__dirname, 'views'));
app.set('view engine', 'ejs');

app.use(logger('dev'));
app.use(express.json());
app.use(express.urlencoded({ extended: false }));
app.use(cookieParser());
app.use(express.static(path.join(__dirname, 'public')));
app.use(cors());

app.use('/', indexRouter);
app.use('/users', usersRouter);

// ******* 掛載 關於我們/門市資訊/會員登入 頁面的路由到指定路徑 *******
//存取shopMap的URL: http://localhost:3001/shopMap
app.use('/shopMap',shopMapRouter);
//存取shopLists的URL: http://localhost:3001/shopLists
app.use('/shopLists',shopListsRouter);
//存取members的URL: http://localhost:3001/members
app.use('/members',membersRouter);
app.use('/signup',signupRouter);//註冊
app.use('/contact',contactRouter);//聯絡我們
// ***************************************************************


// catch 404 and forward to error handler
app.use(function(req, res, next) {
  next(createError(404));
});

// error handler
app.use(function(err, req, res, next) {
  // set locals, only providing error in development
  res.locals.message = err.message;
  res.locals.error = req.app.get('env') === 'development' ? err : {};

  // render the error page
  res.status(err.status || 500);
  res.render('error');
});

module.exports = app;
