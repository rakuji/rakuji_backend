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
// ********************************************************
// ****** 定義 創意食譜列表/詳細食譜 頁面的路由 **********
const recipesRouter = require('./routes/recipes/recipes');
const recipesboxRouter = require('./routes/recipes/box');
const recipesboxRouterIngredients = require('./routes/recipes/box_Ingredients');
const recipesboxRouterSeasoning = require('./routes/recipes/box_Seasoning');
const recipesboxRouterCookingsteps = require('./routes/recipes/box_Cookingsteps');
const recipesboxRouterBox_Nutrient = require('./routes/recipes/box_Nutrient');
const recipesbackEdit = require('./routes/recipes/recipesbackEdit');
// ********************************************************

// ****** 定義 創意食譜列表/詳細食譜 頁面的路由 **********
const latestNews = require('./routes/new/latestNews')
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

// ******* 掛載 創意食譜列表/詳細食譜 頁面的路由到指定路徑 *******
//存取shopMap的URL: http://localhost:3001/recipes
app.use('/recipes',recipesRouter);
//存取shopLists的URL: http://localhost:3001/box
app.use('/recipes/box',recipesboxRouter);
//存取members的URL: http://localhost:3001/recipes/box_Ingredients
app.use('/recipes/box_Ingredients',recipesboxRouterIngredients);
//存取members的URL: http://localhost:3001/box
app.use('/recipes/box_Seasoning',recipesboxRouterSeasoning);
//存取members的URL: http://localhost:3001/recipes/box_Cookingsteps
app.use('/recipes/box_Cookingsteps',recipesboxRouterCookingsteps);
//存取members的URL: http://localhost:3001/recipes/box_Nutrient
app.use('/recipes/box_Nutrient',recipesboxRouterBox_Nutrient);
//存取members的URL: http://localhost:3001/recipes/recipesbackEdit
app.use('/recipes/recipesbackEdit',recipesbackEdit);
// ***************************************************************

// ******* 掛載 關於我們/門市資訊/會員登入 頁面的路由到指定路徑 *******
//存取shopMap的URL: http://localhost:3001/shopMap
app.use('/shopMap',shopMapRouter);
//存取shopLists的URL: http://localhost:3001/shopLists
app.use('/shopLists',shopListsRouter);
//存取members的URL: http://localhost:3001/members
app.use('/members',membersRouter);
// ***************************************************************

// ******* 掛載 最新消息列表 頁面的路由到指定路徑 *******
//http://localhost:3001/latest_news
app.use('/latest_news',latestNews);
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
