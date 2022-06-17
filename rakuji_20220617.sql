-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- 主機： 127.0.0.1
-- 產生時間： 2022-06-17 15:18:34
-- 伺服器版本： 8.0.28
-- PHP 版本： 7.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 資料庫: `rakuji`
--

-- --------------------------------------------------------

--
-- 資料表結構 `best_meal_vote`
--

CREATE TABLE `best_meal_vote` (
  `id` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '餐點編號',
  `men_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '餐點名稱',
  `men_title` varchar(10) NOT NULL COMMENT '餐點標題',
  `men_desc` varchar(30) NOT NULL COMMENT '餐點內容',
  `men_img` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '餐點照片',
  `time` datetime NOT NULL COMMENT '時間'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='最佳餐點票選資料表(待確認項目)';

-- --------------------------------------------------------

--
-- 資料表結構 `booking`
--

CREATE TABLE `booking` (
  `id` int NOT NULL COMMENT '訂位編號',
  `member_id` int NOT NULL COMMENT '會員編號',
  `booking_date` varchar(255) NOT NULL COMMENT '訂位日期',
  `store` varchar(255) NOT NULL COMMENT '分店',
  `people_adult` int NOT NULL COMMENT '人數(大人)',
  `people_kid` int NOT NULL COMMENT '人數(小孩)',
  `meal_time` varchar(2) NOT NULL COMMENT '用餐時段',
  `booking_time` varchar(5) NOT NULL COMMENT '訂位時間',
  `name` varchar(255) NOT NULL COMMENT '訂位人姓名',
  `phone` varchar(255) NOT NULL COMMENT '訂位人手機',
  `email` varchar(255) NOT NULL COMMENT '訂位人信箱',
  `statue` varchar(255) NOT NULL COMMENT '備註',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '訂位創建時間'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- 傾印資料表的資料 `booking`
--

INSERT INTO `booking` (`id`, `member_id`, `booking_date`, `store`, `people_adult`, `people_kid`, `meal_time`, `booking_time`, `name`, `phone`, `email`, `statue`, `created_at`) VALUES
(140, 5, '2022/06/13', '高雄前金店', 4, 4, '中午', '12:00', '黃雅坤', '0918701487', 'wprJwD8E8uWk@gmail.com', '', '2022-06-12 14:29:42'),
(141, 5, '2022/06/13', '高雄左營店', 2, 0, '中午', '12:00', '王小名', '0912345678', 'yoyoman870221@gmail.com', '', '2022-06-12 17:11:31'),
(142, 5, '2022/06/13', '高雄左營店', 2, 0, '中午', '12:00', '王小名', '0912345678', 'yoyoman870221@gmail.com', '', '2022-06-12 17:28:39'),
(143, 5, '2022/06/13', '高雄左營店', 2, 0, '中午', '12:00', '王大大', '0987123456', 'yoyoman870221@gmail.com', '', '2022-06-12 17:55:38'),
(144, 5, '2022/06/13', '高雄左營店', 2, 0, '中午', '12:00', '黃雅坤', '0918701487', 'yoyoman870221@gmail.com', '', '2022-06-12 18:20:45'),
(145, 5, '2022/06/13', '高雄左營店', 2, 0, '中午', '12:00', '黃雅坤', '0918701487', 'yoyoman870221@gmail.com', '', '2022-06-12 18:21:55'),
(146, 5, '2022/06/13', '高雄左營店', 2, 0, '中午', '12:00', '黃雅坤', '0918701487', 'yoyoman870221@gmail.com', '', '2022-06-12 18:22:14'),
(147, 5, '2022/06/13', '高雄左營店', 2, 0, '中午', '12:00', '黃雅坤', '0918701487', 'yoyoman870221@gmail.com', '', '2022-06-12 18:36:31'),
(148, 5, '2022/06/13', '高雄左營店', 2, 0, '中午', '12:00', '黃雅坤', '0918701487', 'yoyoman870221@gmail.com', '', '2022-06-12 18:37:29'),
(149, 5, '2022/06/13', '高雄左營店', 2, 0, '中午', '12:00', '黃雅坤', '0918701487', 'yoyoman870221@gmail.com', '', '2022-06-12 18:37:49'),
(150, 5, '2022/06/13', '高雄左營店', 2, 0, '中午', '12:00', '黃雅坤', '0918701487', 'yoyoman870221@gmail.com', '', '2022-06-12 18:38:30'),
(151, 5, '2022/06/13', '高雄左營店', 2, 0, '中午', '12:00', '黃雅坤', '0918701487', 'yoyoman870221@gmail.com', '', '2022-06-12 18:39:33'),
(152, 5, '2022/06/13', '高雄左營店', 1, 0, '中午', '12:00', '黃雅坤', '0918701487', 'yoyoman870221@gmail.com', '', '2022-06-12 18:44:46'),
(153, 35, '2022/06/14', '高雄左營店', 1, 0, '中午', '12:00', '亞瑟王', '0987123456', 'yoyoman870221@gmail.com', '2022/06/14測試', '2022-06-13 16:52:07'),
(154, 35, '2022/06/14', '高雄左營店', 1, 0, '中午', '12:00', '亞瑟王', '0987123456', 'yoyoman870221@gmail.com', '測試測試', '2022-06-13 17:22:04'),
(155, 35, '2022/06/14', '高雄左營店', 1, 0, '中午', '14:00', '亞瑟王', '0984125252', 'yoyoman870221@gmail.com', '', '2022-06-13 19:02:32'),
(156, 35, '2022/06/14', '高雄左營店', 8, 0, '中午', '12:00', '亞瑟王', '0984125252', 'yoyoman870221@gmail.com', '', '2022-06-13 19:58:05'),
(157, 35, '2022/06/14', '高雄左營店', 8, 0, '中午', '12:00', '亞瑟王', '0984125252', 'yoyoman870221@gmail.com', '', '2022-06-13 20:00:27'),
(158, 35, '2022/06/14', '高雄左營店', 3, 3, '中午', '12:00', '亞瑟王', '0984125252', 'yoyoman870221@gmail.com', '', '2022-06-13 20:01:44'),
(159, 35, '2022/06/14', '高雄左營店', 1, 0, '晚上', '20:00', '亞瑟王', '0987123456', 'wang@gmail.com', '', '2022-06-14 11:14:35'),
(160, 35, '2022/06/14', '高雄前金店', 1, 0, '晚上', '20:00', '亞瑟王', '0987123456', 'wang@gmail.com', '', '2022-06-14 11:17:38'),
(161, 35, '2022/06/15', '高雄左營店', 1, 0, '中午', '11:30', '亞瑟王', '0987123456', 'wang@gmail.com', '', '2022-06-14 11:19:35'),
(162, 35, '2022/06/15', '高雄左營店', 8, 0, '中午', '13:00', '亞瑟王', '0987123456', 'yoyoman870221@gmail.com', '', '2022-06-15 01:18:45'),
(163, 35, '2022/06/15', '高雄左營店', 8, 0, '中午', '13:00', '亞瑟王', '0987123456', 'yoyoman870221@gmail.com', '', '2022-06-15 01:27:32'),
(164, 35, '2022/06/15', '高雄左營店', 8, 0, '中午', '13:00', '亞瑟王', '0987123456', 'yoyoman870221@gmail.com', '', '2022-06-15 01:28:04'),
(165, 35, '2022/06/15', '高雄左營店', 4, 4, '中午', '12:00', '亞瑟王', '0987123456', 'yoyoman870222@gmail.com', '', '2022-06-15 01:32:49'),
(166, 35, '2022/06/15', '高雄左營店', 5, 3, '中午', '12:00', '亞瑟王', '0987123456', 'yoyoman870221@gmail.com', '', '2022-06-15 01:33:12'),
(167, 35, '2022/06/15', '高雄左營店', 8, 0, '中午', '12:00', '亞瑟王', '0987123456', 'yoyoman870221@gmail.com', '', '2022-06-15 01:33:25'),
(168, 35, '2022/06/15', '高雄左營店', 1, 0, '中午', '12:30', '亞瑟王', '0987123456', 'yoyoman870221@gmail.com', '', '2022-06-15 01:33:41'),
(169, 35, '2022/06/15', '高雄左營店', 3, 0, '中午', '13:30', '亞瑟王', '0987123456', 'yoyoman870221@gmail.com', '', '2022-06-15 01:33:53'),
(170, 35, '2022/06/15', '高雄左營店', 1, 0, '中午', '13:30', '王鮭魚', '0984125252', 'yoyoman870221@gmail.com', '', '2022-06-15 02:13:06'),
(171, 35, '2022/06/15', '高雄左營店', 1, 0, '中午', '13:30', '王曉明', '0987123456', 'rakuji.github@gmail.com', 'test', '2022-06-15 03:40:47'),
(172, 35, '2022/06/15', '高雄左營店', 8, 0, '晚上', '19:00', '王鮭魚', '0984125252', 'yoyoman870221@gmail.com', '', '2022-06-15 06:35:59'),
(173, 35, '2022/06/15', '高雄左營店', 8, 0, '晚上', '19:00', '王鮭魚', '0984125252', 'rakuji.github@gmail.com', '', '2022-06-15 06:37:05'),
(174, 35, '2022/06/15', '高雄左營店', 6, 0, '晚上', '19:00', '王曉明', '0923456789', 'rakuji.github@gmail.com', '朋友慶生', '2022-06-15 07:55:04'),
(175, 35, '2022/06/16', '高雄左營店', 8, 0, '中午', '13:00', '王鮭魚', '0984125252', 'yoyoman870221@gmail.com', '', '2022-06-16 01:26:29'),
(176, 35, '2022/06/16', '高雄左營店', 8, 0, '中午', '13:00', '王鮭魚', '0984125252', 'yoyoman870221@gmail.com', '', '2022-06-16 01:26:49'),
(177, 35, '2022/06/16', '高雄左營店', 8, 0, '中午', '13:00', '王鮭魚', '0984125252', 'yoyoman870221@gmail.com', '', '2022-06-16 01:26:59'),
(178, 35, '2022/06/16', '高雄左營店', 2, 0, '中午', '10:30', '王鮭魚', '0984125252', 'yoyoman870221@gmail.com', '', '2022-06-16 01:32:19'),
(179, 35, '2022/06/16', '高雄左營店', 4, 0, '中午', '11:30', '王鮭魚', '0984125252', 'yoyoman870221@gmail.com', '', '2022-06-16 01:33:59'),
(180, 35, '2022/06/16', '高雄左營店', 3, 0, '中午', '14:00', '王曉明', '0923456789', 'rakuji.github@gmail.com', '123132123123', '2022-06-16 04:03:09'),
(181, 35, '2022/06/17', '高雄左營店', 8, 0, '中午', '13:00', '王鮭魚', '0984125252', 'yoyoman870221@gmail.com', '', '2022-06-16 09:25:16'),
(182, 35, '2022/06/17', '高雄左營店', 8, 0, '中午', '13:00', '王鮭魚', '0984125252', 'rakuji.github@gmail.com', '', '2022-06-16 09:25:54'),
(183, 35, '2022/06/17', '高雄左營店', 8, 0, '中午', '13:00', '王鮭魚', '0984125252', 'rakuji.github@gmail.com', '', '2022-06-16 09:26:42'),
(184, 35, '2022/06/17', '高雄左營店', 4, 0, '中午', '12:00', '王鮭魚', '0984125252', 'yoyoman870221@gmail.com', '', '2022-06-17 01:19:41'),
(185, 35, '2022/06/17', '高雄左營店', 3, 0, '中午', '11:30', '王鮭魚', '0984125252', 'yoyoman870221@gmail.com', '', '2022-06-17 01:20:25'),
(186, 35, '2022/06/17', '高雄左營店', 6, 0, '中午', '10:30', '王鮭魚', '0984125252', 'yoyoman870221@gmail.com', '', '2022-06-17 01:20:58'),
(187, 35, '2022/06/17', '高雄左營店', 6, 0, '中午', '13:00', '王曉明', '0923456798', 'rakuji.github@gmail.com', '1', '2022-06-17 04:23:40');

-- --------------------------------------------------------

--
-- 資料表結構 `contact`
--

CREATE TABLE `contact` (
  `id` int NOT NULL,
  `name` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `email` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `select1` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `subject` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `message` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 傾印資料表的資料 `contact`
--

INSERT INTO `contact` (`id`, `name`, `email`, `select1`, `subject`, `message`) VALUES
(20, '顧客', 'aa558@gmail.com', '2.餐點回饋', '讚', '讚'),
(21, '顧客', 'aa558@gmail.com', '3.客訴', '讚', '讚'),
(22, '顧客', 'aa558@gmail.com', '1.一般消費建議', '讚', '讚'),
(23, '顧客', 'xx123@gmail.com', '2.餐點回饋', 'GOOD', 'GOOD'),
(24, '顧客', 'dsa123@gmail.com', '2.餐點回饋', '讚', '讚讚喔'),
(25, '王曉明', '1232@gmai.com', '2.餐點回饋', '讚讚', '讚讚'),
(27, '陳小華', 'jason@gmail.com', '2.餐點回饋', '讚讚', '讚'),
(28, '陳小華', 'wen@gmail.com', '1.一般消費建議', '讚讚', '讚'),
(29, 'John Dow', 'B7nLV30f@gmail.com', '1.一般消費建議', '讚讚', 'good'),
(31, '王曉明', '1232@gmai.com', '1.一般消費建議', '讚', 'good'),
(32, '顧客', 'qq12@gmail.com', '2.餐點回饋', '讚', 'holoo'),
(33, '顧客', 'xx123@gmail.com', '2.餐點回饋', '讚讚', '大拇指的拉'),
(35, '陳小華', 'tian@gmail.com', '1.一般消費建議', '讚讚', 'good'),
(39, '顧客', 'qw123@gmail.com', '2.餐點回饋', '讚', 'GJ'),
(41, '顧客100', 'qw123@gmail.com', '2.餐點回饋', '超好吃', '超好吃');

-- --------------------------------------------------------

--
-- 資料表結構 `creative_recipes`
--

CREATE TABLE `creative_recipes` (
  `cr_id` int NOT NULL,
  `cr_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '料理名稱',
  `match_id` int NOT NULL COMMENT '食材搭配ID	',
  `photo_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '料理照片',
  `cm_text` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '調理方法',
  `member_id` int NOT NULL COMMENT '會員系統ID',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '創建日期'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='創意食譜';

--
-- 傾印資料表的資料 `creative_recipes`
--

INSERT INTO `creative_recipes` (`cr_id`, `cr_name`, `match_id`, `photo_id`, `cm_text`, `member_id`, `created_at`) VALUES
(1, '蕃茄燉牛楠 ', 1, 'https://tokyo-kitchen.icook.network/uploads/recipe/cover/264257/3d25ad22c8813624.jpg', '1', 1, '2022-03-07 08:42:16'),
(2, '起司炸雞排 ', 2, 'https://cdn2.ettoday.net/images/5155/5155718.jpg', '2', 1, '2022-03-07 08:42:33'),
(3, '日式炸豬排 ', 3, 'https://img.ltn.com.tw/Upload/food/page/2016/11/25/161125-4960-000-4WQJH.jpg', '3', 3, '2022-03-10 04:51:59'),
(4, '宮保雞丁 ', 4, 'https://d3l76hx23vw40a.cloudfront.net/recipe/gy47-040.jpg', '4', 5, '2022-03-10 04:51:59'),
(7, '骰子牛調理包', 3, 'https://b.ecimg.tw/items/DBCP2QA900BGGYD/000002_1623402378.jpg', '3', 3, '2022-03-16 02:52:44'),
(11, '唐揚雞歐姆蛋咖哩飯', 2, 'https://live.staticflickr.com/65535/51401244071_de93f10122_c.jpg', '2', 1, '2022-03-16 02:54:31'),
(13, '黃金豬排定食', 1, 'https://lh3.googleusercontent.com/VAOVC9iEn462At0yjVGMeGedCqqxkYHll5qwCQZEeV-nnQfW5vObieTlc0VZJPq-dasXdmb7oe3pHuY=w800', '1', 1, '2022-03-16 02:57:31'),
(14, '日式溏心蛋沙拉', 1, 'https://tokyo-kitchen.icook.network/uploads/recipe/cover/343417/b98e322e1bb51124.jpg', '1', 1, '2022-03-16 05:16:44'),
(17, '12', 1, '1', '1', 1, '2022-03-18 08:30:45'),
(20, '全麥漢堡麵包佐香料豬漢堡排', 1, 'https://img-global.cpcdn.com/recipes/528b18e6a26a05f7/680x482cq70/%E5%85%A8%E9%BA%A5%E6%BC%A2%E5%A0%A1%E9%BA%B5%E5%8C%85%E4%BD%90%E9%A6%99%E6%96%99%E8%B1%AC%E6%BC%A2%E5%A0%A1%E6%8E%92-%E9%A3%9F%E8%AD%9C%E6%88%90%E5%93%81%E7%85%A7%E7%89%87.webp', '1', 1, '2022-03-21 06:03:05'),
(21, '烏龍麵', 1, 'https://567324-1830343-7-raikfcquaxqncofqfm.stackpathdns.com/wp-content/uploads/%E7%83%8F%E9%BE%8D%E9%BA%B5.png', '1', 1, '2022-03-21 06:07:34'),
(24, '2', 2, '2', '2', 2, '2022-03-21 06:30:47'),
(26, '2', 2, '2', '1', 1, '2022-03-21 06:30:56');

-- --------------------------------------------------------

--
-- 資料表結構 `departments`
--

CREATE TABLE `departments` (
  `department_id` int UNSIGNED NOT NULL,
  `department_name` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- 傾印資料表的資料 `departments`
--

INSERT INTO `departments` (`department_id`, `department_name`) VALUES
(1, '外場'),
(2, '內場'),
(3, '管理');

-- --------------------------------------------------------

--
-- 資料表結構 `employees`
--

CREATE TABLE `employees` (
  `employee_id` int UNSIGNED NOT NULL,
  `name` varchar(25) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `email` varchar(25) NOT NULL,
  `phone_number` varchar(20) DEFAULT NULL,
  `hire_date` date NOT NULL,
  `job_id` varchar(10) NOT NULL,
  `salary` int NOT NULL,
  `department_id` int UNSIGNED DEFAULT NULL,
  `birthday` date NOT NULL,
  `age` char(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `education` varchar(25) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `address` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `created_at` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- 傾印資料表的資料 `employees`
--

INSERT INTO `employees` (`employee_id`, `name`, `email`, `phone_number`, `hire_date`, `job_id`, `salary`, `department_id`, `birthday`, `age`, `education`, `address`, `created_at`) VALUES
(34, '員工3', 'qw123@gmail.com', '0955888999', '2022-03-21', '1', 100, 1, '2022-03-21', '25', '台灣大學', '高雄市XX路X號', '2022-03-21'),
(35, '員工2', 'qq12@gmail.com', '0955888999', '2022-03-21', '2', 55, 2, '2022-03-21', '22', '台灣大學', '高雄市XX路XX號', '2022-03-21'),
(36, '員工1', '1232@gmail.com', '0955888999', '2022-03-21', '1', 55, 1, '2022-03-21', '18', '台灣大學', '高雄市XX路XX號', '2022-03-21');

-- --------------------------------------------------------

--
-- 資料表結構 `hour_day`
--

CREATE TABLE `hour_day` (
  `day_id` int NOT NULL COMMENT '午間營業時間編號',
  `day_content` varchar(100) NOT NULL COMMENT '午間營業時間內容'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='午間營業時間資料表';

--
-- 傾印資料表的資料 `hour_day`
--

INSERT INTO `hour_day` (`day_id`, `day_content`) VALUES
(1, '午間 - 11:00 ~ 14:30 (最後點餐時間 14:00)');

-- --------------------------------------------------------

--
-- 資料表結構 `hour_night`
--

CREATE TABLE `hour_night` (
  `night_id` int NOT NULL COMMENT '晚間營業時間編號',
  `night_content` varchar(100) NOT NULL COMMENT '晚間營業時間內容'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='晚間營業時間資料表';

--
-- 傾印資料表的資料 `hour_night`
--

INSERT INTO `hour_night` (`night_id`, `night_content`) VALUES
(1, '晚間 - 17:30 ~ 21:30 (最後點餐時間 20:30)');

-- --------------------------------------------------------

--
-- 資料表結構 `inv_unit`
--

CREATE TABLE `inv_unit` (
  `unit_id` int NOT NULL,
  `unit_name` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='庫存單位';

--
-- 傾印資料表的資料 `inv_unit`
--

INSERT INTO `inv_unit` (`unit_id`, `unit_name`) VALUES
(1, '份'),
(2, '包'),
(3, '個'),
(4, '公克'),
(5, '公斤'),
(6, '隻'),
(7, '尾'),
(8, '盒'),
(9, '組');

-- --------------------------------------------------------

--
-- 資料表結構 `jobs`
--

CREATE TABLE `jobs` (
  `job_id` varchar(10) NOT NULL,
  `job_title` varchar(35) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- 傾印資料表的資料 `jobs`
--

INSERT INTO `jobs` (`job_id`, `job_title`) VALUES
('1', '外場人員'),
('2', '內場人員');

-- --------------------------------------------------------

--
-- 資料表結構 `latest_news`
--

CREATE TABLE `latest_news` (
  `sid` int NOT NULL COMMENT '最新消息編號',
  `name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '最新消息標題',
  `imgid` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '最新消息圖片',
  `timestart` date NOT NULL COMMENT '時間起',
  `timeend` date NOT NULL COMMENT '時間結',
  `content` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '最新消息內容'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- 傾印資料表的資料 `latest_news`
--

INSERT INTO `latest_news` (`sid`, `name`, `imgid`, `timestart`, `timeend`, `content`) VALUES
(2, '樂時町聖誕節', 'ba45e79434462e9ad7bd7af800d641f4448572a5.jpg', '2021-12-01', '2021-12-25', '2021年末慶聖誕!慰勞一整年的辛苦!來樂時町飲品暢飲!'),
(3, '春節過好年', '584d44594d5e7f3c05c83df98006d138037f38b1.jpg', '2022-01-01', '2022-02-28', '來樂時町猶如在宮廷御膳一般的享受啊！限定的過年優惠，早鳥下訂還可享受優惠價!'),
(5, '母親節', 'a4412d35783a87a20c7d64e5d2ea89439b8b77e8.png', '2022-05-01', '2022-05-31', '母愛是最無私的感情母愛如春天的甘霖，每一年都要來樂時町度過母親節!享受母親節的限定特餐!'),
(91, '前程似錦', 'c13d5f5acaa5f1347938332146a5713306b878b0.jpg', '2022-06-01', '2022-06-30', '告別林蔭校園，揚帆起航，展開拼搏的篇章，樂食町與您一同慶祝畢業，同桌每人皆享有甜品!\r\n\r\n'),
(92, '爸爸節', '3ef0684188cf540aa5a58289e630b8bd500cc697.jpg', '2022-08-01', '2022-08-31', '父親節快到，想慰勞一下爸爸，不如花點心思諗諗父親節慶祝活動吧！'),
(93, '生日派對', '3c51b04d141b9d0c418cf9c17228b6d2b2b7a930.png', '2022-10-01', '2022-10-31', '十月份的壽星們還在煩惱要去哪裡慶生嗎？快來樂時町跟JISOO一起慶生!\r\n'),
(94, '教師節', '8933bce0820713eb6d5fb1aae9fd04f1d9ae2b24.jpg', '2022-09-01', '2022-09-30', '樂時町教師節推出一日快閃「沐浴春風˙愛老師」優惠活動!\r\n'),
(95, '人才招募', 'b8da104e8f6823da480ef3edb3b9bb8f58195631.jpg', '2022-01-01', '2022-12-31', '人才，在哪裡？快來樂時町這裡!請將您的履歷及提供方便連絡的時間，樂時町將與您聯繫!'),
(99, '食品認證', '4c7708eb5e6eab418e8d365b3361229308442381.jpg', '2022-01-01', '2022-12-31', '樂時町通過「ISO17025實驗室管理系統認證」及「 ISO 22000食品安全管理系統驗證與HACCP」認證，，展現為食安把關、守護消費者的硬實力!'),
(1111133, '安心測試', '79d1ea5ccc05be911af9187cf349cc3dd8d61e93.jpg', '2022-06-17', '2022-06-17', '測試食品');

-- --------------------------------------------------------

--
-- 資料表結構 `main_class`
--

CREATE TABLE `main_class` (
  `mclass_id` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '主類別編號',
  `mclass_name` varchar(50) NOT NULL COMMENT '主類別名稱'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='品號主類別';

--
-- 傾印資料表的資料 `main_class`
--

INSERT INTO `main_class` (`mclass_id`, `mclass_name`) VALUES
('C', '外購商品commodity'),
('G', '食材ingredient'),
('M', '餐點meal'),
('P', '自製包裝商品package food');

-- --------------------------------------------------------

--
-- 資料表結構 `meal_time`
--

CREATE TABLE `meal_time` (
  `id` int NOT NULL,
  `booking_time` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '用餐時段',
  `time` varchar(255) NOT NULL COMMENT '訂位時間'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- 傾印資料表的資料 `meal_time`
--

INSERT INTO `meal_time` (`id`, `booking_time`, `time`) VALUES
(1, '中午', '10:30'),
(2, '中午', '11:00'),
(3, '中午', '11:30'),
(4, '中午', '12:00'),
(5, '中午', '12:30'),
(6, '中午', '13:00'),
(7, '中午', '13:30'),
(8, '中午', '14:00'),
(9, '晚上', '16:30'),
(10, '晚上', '17:00'),
(11, '晚上', '17:30'),
(12, '晚上', '18:00'),
(13, '晚上', '18:30'),
(14, '晚上', '19:00'),
(15, '晚上', '19:30'),
(16, '晚上', '20:00');

-- --------------------------------------------------------

--
-- 資料表結構 `member`
--

CREATE TABLE `member` (
  `MID` int NOT NULL COMMENT '會員編碼',
  `Mcreate_date` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '會員創建日期',
  `Mpic` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '大頭照',
  `Mname` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '會員名稱',
  `Midentity` char(15) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '會員身分證',
  `Msex` enum('男','女') CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '會員性別',
  `Mvocation` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '會員職業',
  `Mbirthday` date DEFAULT NULL COMMENT '會員生日',
  `Mcity` varchar(5) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '居住城市',
  `Maddress` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '居住地址',
  `Mmarry` enum('已婚','未婚') CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '婚姻狀況',
  `Mchild` enum('有小孩','無小孩') CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '有無子嗣',
  `Memail` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '電子郵件',
  `Mphone` char(10) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '手機號碼',
  `Mpassword` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '會員密碼'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- 傾印資料表的資料 `member`
--

INSERT INTO `member` (`MID`, `Mcreate_date`, `Mpic`, `Mname`, `Midentity`, `Msex`, `Mvocation`, `Mbirthday`, `Mcity`, `Maddress`, `Mmarry`, `Mchild`, `Memail`, `Mphone`, `Mpassword`) VALUES
(1, '2022-03-04 01:54:16', '', '吳建凡', 'A193871609', '男', '工程師', '1983-03-12', '彰化縣', '伸港鄉埤墘一路13號', '已婚', '有小孩', 'fan@gmail.com', '0912479061', 'fan'),
(2, '2022-03-06 11:19:20', '  ', '吳俊能', 'E196895954', '男', '廚師', '2001-01-17', '宜蘭縣', '宜蘭市南橋二路5號', '未婚', '無小孩', 'nan@gmail.com', '0978605291', 'nan'),
(3, '2022-04-01 20:36:35', '', '許志文', 'H196059137', '男', '學生', '2003-01-11', '屏東縣', '新埤鄉振南路15號', '未婚', '無小孩', 'wen@gmail.com', '0963596423', 'wen'),
(4, '2022-04-21 14:04:53', '', '藍淑芬', 'B291167381', '女', '學生', '2006-04-08', '新竹縣', '湖口鄉南窩路15號', '未婚', '無小孩', 'feng@gmail.com', '0925629306', 'feng'),
(5, '2022-04-25 12:25:42', '', '黃雅坤', 'G194796887', '男', '家管', '1962-11-20', '臺北市', '中山區大直街16號', '已婚', '有小孩', 'kung@gmail.com', '0918701487', 'kung'),
(6, '2022-05-10 17:26:15', '', '陳筱婷', 'G299803923', '女', '公務員', '1978-02-12', '宜蘭縣', '五結鄉公園三路33號', '未婚', '無小孩', 'ting@gmail.com', '0988772938', 'ting'),
(7, '2022-05-21 12:29:50', '', '王怡映', 'H195038134', '女', '翻譯', '1986-01-09', '臺中市', '東區東英五街14號', '已婚', '有小孩', 'ying@gmail.com', '0900956712', 'ying'),
(8, '2022-06-21 16:19:15', '', '朱亮志', 'F199146324', '男', '建築師', '1984-03-17', '桃園市', '新屋區四維街14號', '已婚', '無小孩', 'chi@gmail.com', '0913418875', 'chi'),
(9, '2022-07-08 12:29:50', '', '彭依恬', 'D295331736', '女', '學生', '2008-07-20', '南投縣', '草屯鎮玉成路31號', '未婚', '無小孩', 'tian@gmail.com', '0947417120', 'tian'),
(10, '2022-07-20 11:10:45', '', '謝美玲', 'F291189905', '女', '行銷', '1953-09-18', '苗栗縣', '大湖鄉舊糖廠12號', '已婚', '有小孩', 'ling@gmail.com', '0996096953', 'ling'),
(12, '2022-03-15 18:31:41', '', '吳艾台', '32twewt', '女', '家管', '1980-09-16', '嘉義市', '垂楊路98巷7號', '未婚', '有小孩', 'wetw@gmail.com', '0933215789', 'wetw'),
(18, '2022-03-16 17:05:09', '', '尤貳', '222', '男', '工程師', '1990-11-19', '新竹市', '光復路198巷75號', '已婚', '無小孩', 'user222@gmail.com', '0933215999', 'user222'),
(19, '2022-03-16 17:06:33', '', '1', '2', '女', ' 2E2E', '2022-03-17', '', '', '已婚', '無小孩', 'uer1@hotmail.com', '0912123123', 'DEWWER'),
(20, '2022-03-16 18:44:20', '', '張庭', '111', '女', '11', '2022-03-10', '111', '111', '未婚', '無小孩', 'chang@yahoo.com', '0911112222', 'chang'),
(21, '2022-03-18 17:15:16', '', 'gggg1', '2', '男', 'aaaa', '2022-03-18', 'aaa', '', '已婚', '有小孩', 'ijfitj@wjrpq.com', '0912333444', '24124'),
(29, '2022-03-21 13:13:45', '', '12312', '123123', '女', '32123', '2022-03-21', '1123', '123123', '未婚', '無小孩', 'user1231@xyz.com', '0954655546', 'fgweer'),
(30, '2022-03-21 13:24:27', '', 'eeee2', 'eee', '女', 'eee', '2022-03-21', 'ee', 'ee', '已婚', '有小孩', 'usereee@fmail.com', '0912123123', 'rgdeed'),
(32, '2022-03-21 17:36:54', 'wqf0613', '', 'wqwfq', '男', 'qwe', '2022-03-21', 'r3ii', 'wfw', '已婚', '有小孩', 'userwqf@reach.com.tw', '0912123123', 'gerggweg'),
(34, '', '', 'admin', 'A123456789', '男', '管理員', '2011-11-11', '台北市', NULL, '未婚', '無小孩', 'admin@gmail.com', '0912123123', 'admin'),
(35, '2022/06/14', NULL, '王鮭魚', NULL, '男', NULL, '1999-09-09', NULL, '高雄市前金區中正四路211號', NULL, NULL, 'wang@gmail.com', '0984125252', 'wang'),
(36, NULL, NULL, NULL, NULL, NULL, NULL, '1998-03-05', NULL, NULL, NULL, NULL, 'jason@gmail.com', NULL, 'jason'),
(37, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'chen@gmail.com', NULL, 'chen'),
(38, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'tian4@gmail.com', NULL, '123456'),
(39, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'qw12355@gmail.com', NULL, '456123'),
(40, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'qw123@gmail.com', NULL, '123'),
(43, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'qw1253@gmail.com', NULL, '45567'),
(44, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'qw123555@gmail.com', NULL, '123'),
(45, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'xx123@gmail.com', NULL, '123'),
(46, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'da123@gmail.com', NULL, '123'),
(47, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'aa123@gmail.com', NULL, 'aa123'),
(48, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, '123456'),
(49, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'tian55@gmail.com', NULL, '123456'),
(50, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'tian456@gmail.com', NULL, '123456'),
(51, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'tian55555@gmail.com', NULL, '123456'),
(52, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'aa123456@gmail.com', NULL, '123456'),
(53, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'qw1235556@gmail.com', NULL, '123456'),
(54, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'aa12377@gmail.com', NULL, '123'),
(55, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'aa12355@gmail.com', NULL, '123456'),
(56, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'abc123@gmail.com', NULL, '123456'),
(57, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'aa1234@gmail.com', NULL, '12345'),
(58, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'abc1236@gmail.com', NULL, '123456'),
(59, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'aa1235555@gmail.com', NULL, '123456');

-- --------------------------------------------------------

--
-- 資料表結構 `nutrition_label`
--

CREATE TABLE `nutrition_label` (
  `nl_id` int NOT NULL,
  `fnl_name` varchar(50) NOT NULL COMMENT '食材名稱',
  `fnl_photo` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '食材圖片',
  `fnl_kcal` float DEFAULT NULL COMMENT '熱量(每100g)',
  `fnl_Fat` float DEFAULT NULL COMMENT '脂肪(每100g)',
  `fnl_protein` float DEFAULT NULL COMMENT '蛋白質(每100g)',
  `fnl_carbohydrate` float DEFAULT NULL COMMENT '碳水化合物(每100g)',
  `fnl_sodium` float DEFAULT NULL COMMENT '鈉(每100g有多少mg)',
  `fnl_Potassium` float DEFAULT NULL COMMENT '鉀(每100g有多少mg)	',
  `fnl_iron` float DEFAULT NULL COMMENT '鐵(每100g有多少mg)'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='營養標示';

--
-- 傾印資料表的資料 `nutrition_label`
--

INSERT INTO `nutrition_label` (`nl_id`, `fnl_name`, `fnl_photo`, `fnl_kcal`, `fnl_Fat`, `fnl_protein`, `fnl_carbohydrate`, `fnl_sodium`, `fnl_Potassium`, `fnl_iron`) VALUES
(1, '牛楠 ', 'https://y3.yooho.com.tw/images/201803/goods_img/3855_G_1521685631499.jpg', 155, 7, 21, 0, 79, 330, 1.9),
(2, '薑 ', '', 79, 0.8, 1.8, 18, 13, 415, 0.6),
(3, '蒜 ', '', 148, 0.5, 6, 33, 17, 401, 1.7),
(4, '蔥 ', '', 33, 0.4, 1.9, 7, 17, 212, 1.2),
(5, '紅蘿蔔 ', '', 41, 0.2, 0.9, 10, 69, 320, 0.3),
(6, '洋蔥 ', '', 39, 0.1, 1.1, 9, 4, 146, 0.2),
(7, '蕃茄 ', '', 17, 0.2, 0.9, 3.9, 5, 237, 0.3),
(8, '雞胸肉 ', '', 164, 3.6, 31, 0, 74, 256, 1),
(9, '莫扎瑞拉起司 ', '', 280, 17, 28, 3.1, 16, 95, 0.3),
(10, '台畜三明治火腿 ', '', 149, 5, 16, 10, 640, NULL, NULL),
(11, '麵粉 ', '', 364, 1, 10, 76, 2, 107, 1.2),
(12, '玉米粉 ', '', 381, 0.1, 0.3, 91, 9, 3, 0.5),
(13, '台鹽高級碘鹽', '', NULL, NULL, NULL, NULL, 39143, NULL, NULL),
(14, '台糖貳號砂糖', '', 398.4, NULL, NULL, 99.2, 3, NULL, NULL),
(15, '龜甲萬甘醇醬油', '', 109.7, NULL, 9.1, 11.7, 5104, NULL, NULL),
(16, '白胡椒粉 ', '', 357, 2.2, 9.6, 76.9, NULL, NULL, NULL),
(17, '黑胡椒粉 ', '', 372, 6.7, 67.7, 7, NULL, NULL, NULL),
(18, '黑胡椒鹽 ', '', 162, 1.6, 14.4, 22, 22970, NULL, NULL),
(19, '黑胡椒粗粒 ', '', 380, 10, 10, 7, 7, NULL, NULL),
(20, '可果美番茄醬 ', '', 111, NULL, 1.3, 26.2, 1230, NULL, NULL),
(21, '辣椒粉 ', '', 387, 14.1, 14.7, 59.1, 12, NULL, NULL),
(22, '東泉辣椒醬 ', '', 30, NULL, 2, 6, 2470, NULL, NULL),
(23, '油 ', '', 884, 100, NULL, NULL, NULL, NULL, NULL),
(24, '米酒 ', '', 123.2, NULL, NULL, NULL, NULL, NULL, NULL),
(25, '台糖晶冰糖 ', '', 400, NULL, NULL, 100, NULL, NULL, NULL),
(26, '大蒜粉 ', '', 331, 0.7, 17, 73, 60, 1193, 5.7),
(27, '薑黃粉 ', '', 354, 10, 8, 65, 38, 2525, 41.4),
(28, '咖哩粉 ', '', 417, 14.1, 13.9, 58.5, 552, NULL, NULL),
(29, '洋蔥粉 ', '', 341, 1, 10, 79, 73, 985, NULL),
(32, '不測試', '5', 5, 1, 1, 1, 1, 1, 1),
(33, '測試', '5', 5, 5, 5, 5, 5, 5, 5),
(34, '測試', '5', 5, 5, 5, 5, 5, 5, 5),
(35, '測試', '1', 1, 1, 1, 1, 1, 1, 1),
(38, '333', NULL, 1, 1, 1, 1, 1, 1, 1),
(39, '1', NULL, 1, 1, 1, 1, 1, 1, 1);

-- --------------------------------------------------------

--
-- 資料表結構 `order`
--

CREATE TABLE `order` (
  `sid` int NOT NULL COMMENT '訂單編號',
  `cartTotal` int NOT NULL COMMENT '商品小計',
  `couponPrice` int NOT NULL COMMENT '優惠折扣金額',
  `cartTotalPrice` int NOT NULL COMMENT '商品總計',
  `name` varchar(255) NOT NULL COMMENT '訂購人姓名',
  `phone` varchar(255) NOT NULL COMMENT '訂購人手機',
  `email` varchar(255) NOT NULL COMMENT '訂購人信箱',
  `address` varchar(255) NOT NULL COMMENT '外送地址',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '訂購時間'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- 傾印資料表的資料 `order`
--

INSERT INTO `order` (`sid`, `cartTotal`, `couponPrice`, `cartTotalPrice`, `name`, `phone`, `email`, `address`, `created_at`) VALUES
(308, 250, 0, 250, '吳建凡', '0912479060', 'fan@gmail.com', '伸港鄉埤墘一路13號', '2022-06-13 15:30:35'),
(309, 250, 0, 250, '吳建凡', '0912479060', 'fan@gmail.com', '伸港鄉埤墘一路13號', '2022-06-13 15:31:53'),
(310, 810, 0, 810, '吳建凡', '0912479060', 'fan@gmail.com', '伸港鄉埤墘一路13號', '2022-06-13 16:34:34'),
(311, 530, 100, 430, '亞瑟王', '0984125252', 'wang@gmail.com', '高雄市前金區中正四路211號', '2022-06-13 17:32:48'),
(312, 500, 0, 500, '亞瑟王', '0984125252', 'wang@gmail.com', '高雄市前金區中正四路211號', '2022-06-13 17:35:47'),
(313, 500, 0, 500, '亞瑟王', '0984125252', 'wang@gmail.com', '高雄市前金區中正四路211號', '2022-06-13 17:36:43'),
(314, 540, 0, 540, '亞瑟王', '0984125252', 'wang@gmail.com', '高雄市前金區中正四路211號', '2022-06-13 17:45:23'),
(315, 500, 0, 500, '亞瑟王', '0984125252', 'wang@gmail.com', '高雄市前金區中正四路211號', '2022-06-13 17:48:10'),
(316, 500, 0, 500, '吳建凡', '0912479060', 'fan@gmail.com', '伸港鄉埤墘一路13號', '2022-06-13 17:49:36'),
(317, 500, 0, 500, '吳建凡', '0912479060', 'fan@gmail.com', '伸港鄉埤墘一路13號', '2022-06-13 17:51:20'),
(318, 500, 0, 500, '吳建凡', '0912479060', 'fan@gmail.com', '伸港鄉埤墘一路13號', '2022-06-13 17:56:01'),
(319, 2150, 100, 2050, '亞瑟王', '0984125252', 'wang@gmail.com', '高雄市前金區中正四路211號', '2022-06-13 17:57:48'),
(320, 900, 30, 870, '亞瑟王', '0984125252', 'wang@gmail.com', '高雄市前金區中正四路211號', '2022-06-13 19:42:39'),
(323, 520, 0, 520, '亞瑟王', '0987123456', 'wang@gmail.com', '高雄市前金區中正四路211號', '2022-06-14 11:14:00'),
(324, 250, 0, 250, '亞瑟王', '0987123456', 'wang@gmail.com', '高雄市前金區中正四路211號', '2022-06-15 01:29:45'),
(325, 530, 0, 530, '王鮭魚', '0984125252', 'wang@gmail.com', '高雄市前金區中正四路211號', '2022-06-15 02:13:17'),
(326, 2290, 100, 2190, '吳建凡', '0912479065', 'fan@gmail.com', '伸港鄉埤墘一路13號', '2022-06-15 02:30:41'),
(327, 520, 100, 420, '王鮭魚', '0984125252', 'wang@gmail.com', '高雄市前金區中正四路211號', '2022-06-15 03:41:53'),
(328, 520, 100, 420, '王鮭魚', '0984125252', 'wang@gmail.com', '高雄市前金區中正四路211號', '2022-06-15 06:37:46'),
(329, 3420, 50, 3370, '王鮭魚', '0984125252', 'wang@gmail.com', '高雄市前金區中正四路211號', '2022-06-15 08:01:05'),
(330, 250, 0, 250, '王鮭魚', '0984125252', 'wang@gmail.com', '高雄市前金區中正四路211號', '2022-06-16 01:34:17'),
(331, 3720, 100, 3620, '王鮭魚', '0984125252', 'wang@gmail.com', '高雄市前金區中正四路211號', '2022-06-16 04:08:02'),
(332, 780, 0, 780, '王鮭魚', '0984125252', 'wang@gmail.com', '高雄市前金區中正四路211號', '2022-06-16 09:27:10'),
(333, 780, 0, 780, '王鮭魚', '0984125252', 'wang@gmail.com', '高雄市前金區中正四路211號', '2022-06-17 01:21:11'),
(334, 3470, 30, 3440, '王鮭魚', '0984125252', 'wang@gmail.com', '高雄市前金區中正四路211號', '2022-06-17 04:28:44');

-- --------------------------------------------------------

--
-- 資料表結構 `orderdetail`
--

CREATE TABLE `orderdetail` (
  `id` int NOT NULL COMMENT '編號',
  `order_id` int NOT NULL COMMENT '訂單編號',
  `product_id` int NOT NULL COMMENT '商品編號',
  `quantity` int NOT NULL COMMENT '商品數量'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- 傾印資料表的資料 `orderdetail`
--

INSERT INTO `orderdetail` (`id`, `order_id`, `product_id`, `quantity`) VALUES
(432, 308, 1, 1),
(433, 309, 1, 1),
(434, 310, 2, 3),
(435, 311, 2, 1),
(436, 311, 3, 1),
(437, 312, 1, 2),
(438, 313, 1, 2),
(439, 314, 2, 2),
(440, 315, 1, 2),
(441, 316, 1, 2),
(442, 317, 1, 2),
(443, 318, 1, 2),
(444, 319, 1, 3),
(445, 319, 2, 1),
(446, 319, 3, 1),
(447, 319, 4, 1),
(448, 319, 6, 1),
(449, 319, 5, 1),
(450, 320, 6, 2),
(451, 320, 17, 1),
(452, 320, 26, 1),
(453, 320, 35, 1),
(461, 323, 1, 1),
(462, 323, 2, 1),
(463, 324, 1, 1),
(464, 325, 2, 1),
(465, 325, 3, 1),
(466, 326, 1, 1),
(467, 326, 2, 1),
(468, 326, 6, 4),
(469, 326, 3, 1),
(470, 326, 4, 1),
(471, 327, 1, 1),
(472, 327, 2, 1),
(473, 328, 2, 1),
(474, 328, 1, 1),
(475, 329, 6, 4),
(476, 329, 17, 4),
(477, 329, 2, 6),
(478, 330, 1, 1),
(479, 331, 26, 9),
(480, 331, 2, 5),
(481, 331, 6, 4),
(482, 331, 17, 3),
(483, 332, 1, 1),
(484, 332, 2, 1),
(485, 332, 3, 1),
(486, 333, 1, 1),
(487, 333, 2, 1),
(488, 333, 3, 1),
(489, 334, 6, 4),
(490, 334, 17, 4),
(491, 334, 2, 5),
(492, 334, 26, 4);

-- --------------------------------------------------------

--
-- 資料表結構 `period`
--

CREATE TABLE `period` (
  `period_id` int NOT NULL COMMENT '供應時段編號',
  `period_name` varchar(10) DEFAULT NULL COMMENT '供應時段名稱'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='餐點/商品供應時段';

--
-- 傾印資料表的資料 `period`
--

INSERT INTO `period` (`period_id`, `period_name`) VALUES
(1, '不分時段'),
(2, '午餐'),
(3, '晚餐'),
(4, '午晚餐');

-- --------------------------------------------------------

--
-- 資料表結構 `products`
--

CREATE TABLE `products` (
  `id` int NOT NULL COMMENT '商品編號',
  `picture` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '商品圖片',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '商品名稱',
  `price` int NOT NULL COMMENT '商品價格',
  `category` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '商品類別',
  `introduction` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '商品簡介'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- 傾印資料表的資料 `products`
--

INSERT INTO `products` (`id`, `picture`, `name`, `price`, `category`, `introduction`) VALUES
(1, 'MB-001黃金豬排丼飯.jpeg', '黃金豬排丼飯', 250, '主食', '台灣人氣No.1重磅級豬排，淋上滿滿的醬汁，美味的餐點值得您來享受。'),
(2, 'MB-002唐揚雞歐姆蛋咖喱飯.jpeg', '唐揚雞歐姆蛋咖喱飯', 270, '主食', '咖哩是使用多種蔬菜水果熬製出來的，也是日籍主廚的拿手料理之一，不用出國就能吃到甘甜濃郁且不膩口的日式咖哩，採用當季蔬果像是南瓜、蘋果、香蕉等下去打成泥再搭配日式咖哩熬煮，吃起來不僅有濃濃的蔬果甜味，加上微微咖哩香料氣息更是絕配，不僅大人喜歡，完全不辣的味蕾連小朋友都超愛。'),
(3, 'MB-003天婦羅丼.jpg', '天婦羅丼', 260, '主食', '炸蝦採用白蝦搭配酥脆麵衣，吃起來既有白蝦的Q彈鮮美，沾附咖哩醬更多了一股濃郁甜美的味蕾，讓人一口接一口停不下來。'),
(4, 'MB-004文青花魚飯.jpg', '文青花魚飯', 310, '主食', '魚肉本身的鹹香與多汁，搭配Q彈的白飯，喜歡海鮮的饕客非常值得試試。'),
(5, 'MB-005親子丼.jpg', '親子丼', 260, '主食', '口感滑嫩的親子丼，是男女老少都喜歡的一道日式家庭料理。'),
(6, 'MB-006裝蒜牛五花飯.jpg', '裝蒜牛五花飯', 300, '主食', '喜歡吃牛肉的你千萬別錯過這道「裝蒜牛五花」，用心地使用新鮮的炸蒜片進行調味，與牛五花的油花、肉汁相當班配，與「寶島燒豚飯」相同，肉片堆成小山般的份量十分誘人，牛肉特有的香氣與溏心蛋濃郁的蛋香更是絕配，想來點風味濃郁的特色便當，這份「裝蒜牛五花」相信你會愛上！'),
(7, 'MB-007熔岩唐揚雞飯.jpg', '熔岩唐揚雞飯', 280, '主食', '將新鮮醃製後的雞肉裹粉油炸，大口咬下金黃酥脆的麵衣，還聽的見清脆過癮的回響，仔細看唐揚雞的橫切面，還能看見雞汁汨汨流出，最後淋上的黃芥末醬酸甜滋味交雜，整體風味非常棒。'),
(8, 'MB-008寶島燒豚飯.jpg', '寶島燒豚飯', 250, '主食', '燒肉油脂比例恰到好處、口感軟嫩不乾柴，搭配特色醬汁烘烤過，鹹甜交織的美味讓人欲罷不能，溏心蛋與酸白菜等配菜也讓整體風味更有層次，綜合來說是個CP值相當高的人氣商品！'),
(9, 'MB-009月見海鮮丼.jpg', '月見海鮮丼', 320, '主食', '簡單的生鮪魚丁及滑嫩酪梨丁，搭配黃澄澄的蛋黃及醋飯，月見海鮮丼是夏日裡受歡迎的爽口主餐。'),
(10, 'MB-010炊飯.jpg', '炊飯', 240, '主食', '這道用蔬菜高湯炊煮的炊飯，蔬菜香氣四溢，是您搭配其他餐點的好搭檔。'),
(11, 'MB-011蛋包飯.jpg', '蛋包飯', 200, '主食', '大人小孩都喜歡的蛋包飯!'),
(12, 'MB-012漢堡排.jpg', '漢堡排', 190, '主食', '漢堡肉是嚴選「進口澳洲牛」，新鮮原肉搭配特製醬汁，黃金比例完美呈現，手工現作。'),
(13, 'MB-013明太子義大利麵.jpg', '明太子義大利麵', 240, '主食', '使用義式奶油拌入橘紅色的明太子，還有檸檬獨特的清香風味，搭配鮭魚和鮮蝦，吃起來微鹹又涮嘴！'),
(14, 'MA-001日式溏心蛋沙拉.jpg', '日式溏心蛋沙拉', 120, '前菜', '日式醬油糖心蛋佐清爽生菜。'),
(15, 'MA-002小魚豆腐沙拉.png', '小魚豆腐沙拉', 90, '前菜', '小魚乾佐鮮嫩豆腐沙拉，搭配日式醬汁。'),
(16, 'MA-003和風野菜沙拉.jpg', '和風野菜沙拉', 80, '前菜', '新鮮野菜佐和風沙拉醋汁，給你清爽開胃的口感。'),
(17, 'MA-004牛肉沙拉.jpg', '牛肉沙拉', 150, '前菜', '嫩煎進口牛肉丁搭配爽口生菜及紅酒醋，是您開胃前菜的首選。'),
(18, 'MA-005炒鮮菇綠蘆筍.jpg', '炒鮮菇綠蘆筍', 80, '前菜', '嫩炒鮮菇及綠蘆筍，是生菜之外的另一種選擇。'),
(19, 'MA-006海鮮玉子燒.webp', '海鮮玉子燒', 70, '前菜', '整條明太子捲進玉子燒裡，每咬一口都有滿滿明太子，又是滿足的一餐！'),
(20, 'MA-007日式唐楊雞.jpg', '日式唐楊雞', 120, '前菜', '鹹酥香脆的外皮，多汁肉嫩的雞肉，酥脆外皮一咬，充滿日式風味的口感瞬間在嘴裡蔓延開。'),
(21, 'MA-008可樂餅.jpg', '可樂餅', 70, '前菜', '超人氣日式可樂餅， 吃完真的充滿幸福感唷~'),
(22, 'MA-009煎餃子.jpg', '煎餃子', 80, '前菜', '色澤金黃又有卡滋脆皮的煎餃，是非吃不可的一道日式小點。'),
(23, 'MA-010薯條.jpg', '和風薯條', 60, '前菜', '外脆內軟的完美薯條，佐日式美乃滋，是大人小孩的最愛。'),
(24, 'MC-001味噌湯.jpg', '味噌湯', 50, '湯品', '湯底是水煮昆布（海帶），取出後加入柴魚片過濾，最後放入味噌，然後混入不同的時蔬、豆腐。'),
(25, 'MC-002南瓜濃湯.jpg', '南瓜濃湯', 70, '湯品', '南瓜削皮切小塊水煮至軟後取出壓成泥，加入奶油再將洋蔥一起拌炒，將高湯加入南瓜泥、炒過的洋蔥、鮮奶油一起煮滾，再加入鹽調味即可製作出完美的南瓜湯。'),
(26, 'MC-003烤鮭魚蘿蔔味增湯.jpg', '烤鮭魚蘿蔔味增湯', 80, '湯品', '將鮭魚烤過之後再加入高湯燉煮，湯底是水煮昆布（海帶），取出後加入柴魚片過濾，最後放入味噌，然後混入不同的時蔬、豆腐。'),
(27, 'MC-004豬肉湯.jpg', '豬肉湯', 50, '湯品', '將豬大骨熬煮八小時之後，製作出新鮮的高湯，使用台灣豬肉，新鮮又可口。'),
(28, 'ME-001抹茶冰淇淋.jpg', '抹茶冰淇淋', 90, '甜點', '由鮮奶、抹茶粉等食材製成的美食。'),
(29, 'ME-002紅豆湯圓.jpg', '紅豆湯圓', 75, '甜點', '紅豆餡料包進嚴選濁水溪純正圓糯米，且遵循六道古法工序製成的Q彈湯圓皮。'),
(30, 'ME-003焦糖布丁.jpg', '焦糖布丁', 40, '甜點', '焦糖布丁'),
(31, 'ME-004起士蛋糕.jpg', '起士蛋糕', 65, '甜點', '起士蛋糕'),
(32, 'ME-005提拉米蘇.jpg', '提拉米蘇', 85, '甜點', '提拉米蘇'),
(33, 'ME-006義式奶酪.jpg', '義式奶酪', 60, '甜點', '對我個人而言，食物不僅僅是一個重大的事件，還可能會改變我的人生。食物似乎是一種巧合，但如果我們從一個更大的角度看待問題，這似乎是一種不可避免的事實。探討食物時，如果發現非常複雜，那麼想必不簡單。顯克微支說過，誰能從道德敗壞的地方脫出來，還保持潔白，便是有了最偉大的功德。請諸位將這段話在心中默念三遍。'),
(34, 'ME-007鬆餅.jpg', '鬆餅', 40, '甜點', '對我個人而言，食物不僅僅是一個重大的事件，還可能會改變我的人生。食物似乎是一種巧合，但如果我們從一個更大的角度看待問題，這似乎是一種不可避免的事實。探討食物時，如果發現非常複雜，那麼想必不簡單。顯克微支說過，誰能從道德敗壞的地方脫出來，還保持潔白，便是有了最偉大的功德。請諸位將這段話在心中默念三遍。'),
(35, 'MD-001抹茶拿鐵.jpg', '抹茶拿鐵', 70, '飲品', '對我個人而言，食物不僅僅是一個重大的事件，還可能會改變我的人生。食物似乎是一種巧合，但如果我們從一個更大的角度看待問題，這似乎是一種不可避免的事實。探討食物時，如果發現非常複雜，那麼想必不簡單。顯克微支說過，誰能從道德敗壞的地方脫出來，還保持潔白，便是有了最偉大的功德。請諸位將這段話在心中默念三遍。'),
(36, 'MD-002可爾必思.jpg', '可爾必思', 60, '飲品', '對我個人而言，食物不僅僅是一個重大的事件，還可能會改變我的人生。食物似乎是一種巧合，但如果我們從一個更大的角度看待問題，這似乎是一種不可避免的事實。探討食物時，如果發現非常複雜，那麼想必不簡單。顯克微支說過，誰能從道德敗壞的地方脫出來，還保持潔白，便是有了最偉大的功德。請諸位將這段話在心中默念三遍。'),
(37, 'MD-003藍色氣泡飲.jpg', '藍色氣泡飲', 60, '飲品', '對我個人而言，食物不僅僅是一個重大的事件，還可能會改變我的人生。食物似乎是一種巧合，但如果我們從一個更大的角度看待問題，這似乎是一種不可避免的事實。探討食物時，如果發現非常複雜，那麼想必不簡單。顯克微支說過，誰能從道德敗壞的地方脫出來，還保持潔白，便是有了最偉大的功德。請諸位將這段話在心中默念三遍。'),
(38, 'MD-004季節果汁.PNG', '季節果汁', 50, '飲品', '對我個人而言，食物不僅僅是一個重大的事件，還可能會改變我的人生。食物似乎是一種巧合，但如果我們從一個更大的角度看待問題，這似乎是一種不可避免的事實。探討食物時，如果發現非常複雜，那麼想必不簡單。顯克微支說過，誰能從道德敗壞的地方脫出來，還保持潔白，便是有了最偉大的功德。請諸位將這段話在心中默念三遍。'),
(39, 'MD-005紅茶.PNG', '紅茶', 40, '飲品', '對我個人而言，食物不僅僅是一個重大的事件，還可能會改變我的人生。食物似乎是一種巧合，但如果我們從一個更大的角度看待問題，這似乎是一種不可避免的事實。探討食物時，如果發現非常複雜，那麼想必不簡單。顯克微支說過，誰能從道德敗壞的地方脫出來，還保持潔白，便是有了最偉大的功德。請諸位將這段話在心中默念三遍。'),
(40, 'MD-006美式咖啡.PNG', '美式咖啡', 60, '飲品', '對我個人而言，食物不僅僅是一個重大的事件，還可能會改變我的人生。食物似乎是一種巧合，但如果我們從一個更大的角度看待問題，這似乎是一種不可避免的事實。探討食物時，如果發現非常複雜，那麼想必不簡單。顯克微支說過，誰能從道德敗壞的地方脫出來，還保持潔白，便是有了最偉大的功德。請諸位將這段話在心中默念三遍。'),
(41, 'MD-007拿鐵.PNG', '拿鐵', 60, '飲品', '對我個人而言，食物不僅僅是一個重大的事件，還可能會改變我的人生。食物似乎是一種巧合，但如果我們從一個更大的角度看待問題，這似乎是一種不可避免的事實。探討食物時，如果發現非常複雜，那麼想必不簡單。顯克微支說過，誰能從道德敗壞的地方脫出來，還保持潔白，便是有了最偉大的功德。請諸位將這段話在心中默念三遍。'),
(42, 'CH-001綜合寶寶粥.jpg', '綜合寶寶粥', 130, '副產品', '對我個人而言，食物不僅僅是一個重大的事件，還可能會改變我的人生。食物似乎是一種巧合，但如果我們從一個更大的角度看待問題，這似乎是一種不可避免的事實。探討食物時，如果發現非常複雜，那麼想必不簡單。顯克微支說過，誰能從道德敗壞的地方脫出來，還保持潔白，便是有了最偉大的功德。請諸位將這段話在心中默念三遍。'),
(43, 'CH-002心干貝貝粥.jpg', '心干貝貝粥', 140, '副產品', '對我個人而言，食物不僅僅是一個重大的事件，還可能會改變我的人生。食物似乎是一種巧合，但如果我們從一個更大的角度看待問題，這似乎是一種不可避免的事實。探討食物時，如果發現非常複雜，那麼想必不簡單。顯克微支說過，誰能從道德敗壞的地方脫出來，還保持潔白，便是有了最偉大的功德。請諸位將這段話在心中默念三遍。'),
(44, 'CH-003乖乖豬豬粥.jpg', '乖乖豬豬粥', 130, '副產品', '對我個人而言，食物不僅僅是一個重大的事件，還可能會改變我的人生。食物似乎是一種巧合，但如果我們從一個更大的角度看待問題，這似乎是一種不可避免的事實。探討食物時，如果發現非常複雜，那麼想必不簡單。顯克微支說過，誰能從道德敗壞的地方脫出來，還保持潔白，便是有了最偉大的功德。請諸位將這段話在心中默念三遍。'),
(45, 'CH-004南瓜飽飽粥.jpg', '南瓜飽飽粥', 120, '副產品', '對我個人而言，食物不僅僅是一個重大的事件，還可能會改變我的人生。食物似乎是一種巧合，但如果我們從一個更大的角度看待問題，這似乎是一種不可避免的事實。探討食物時，如果發現非常複雜，那麼想必不簡單。顯克微支說過，誰能從道德敗壞的地方脫出來，還保持潔白，便是有了最偉大的功德。請諸位將這段話在心中默念三遍。'),
(46, 'CH-005原淬寶寶粥.jpg', '原淬寶寶粥', 150, '副產品', '對我個人而言，食物不僅僅是一個重大的事件，還可能會改變我的人生。食物似乎是一種巧合，但如果我們從一個更大的角度看待問題，這似乎是一種不可避免的事實。探討食物時，如果發現非常複雜，那麼想必不簡單。顯克微支說過，誰能從道德敗壞的地方脫出來，還保持潔白，便是有了最偉大的功德。請諸位將這段話在心中默念三遍。'),
(47, 'PG-001日式咖哩調理包.jpg', '日式咖哩調理包', 160, '副產品', '對我個人而言，食物不僅僅是一個重大的事件，還可能會改變我的人生。食物似乎是一種巧合，但如果我們從一個更大的角度看待問題，這似乎是一種不可避免的事實。探討食物時，如果發現非常複雜，那麼想必不簡單。顯克微支說過，誰能從道德敗壞的地方脫出來，還保持潔白，便是有了最偉大的功德。請諸位將這段話在心中默念三遍。'),
(48, 'PG-002骰子牛調理包.webp', '骰子牛調理包', 200, '副產品', '對我個人而言，食物不僅僅是一個重大的事件，還可能會改變我的人生。食物似乎是一種巧合，但如果我們從一個更大的角度看待問題，這似乎是一種不可避免的事實。探討食物時，如果發現非常複雜，那麼想必不簡單。顯克微支說過，誰能從道德敗壞的地方脫出來，還保持潔白，便是有了最偉大的功德。請諸位將這段話在心中默念三遍。'),
(49, 'PG-003冷凍可樂餅.jpg', '冷凍可樂餅', 170, '副產品', '對我個人而言，食物不僅僅是一個重大的事件，還可能會改變我的人生。食物似乎是一種巧合，但如果我們從一個更大的角度看待問題，這似乎是一種不可避免的事實。探討食物時，如果發現非常複雜，那麼想必不簡單。顯克微支說過，誰能從道德敗壞的地方脫出來，還保持潔白，便是有了最偉大的功德。請諸位將這段話在心中默念三遍。');

-- --------------------------------------------------------

--
-- 資料表結構 `products_comment`
--

CREATE TABLE `products_comment` (
  `id` int NOT NULL COMMENT '編號',
  `product_id` int NOT NULL COMMENT '商品編號',
  `rating` int NOT NULL COMMENT '評分',
  `member_id` int NOT NULL COMMENT '會員編號',
  `contents` varchar(255) NOT NULL COMMENT '評論內容',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '留言時間'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- 傾印資料表的資料 `products_comment`
--

INSERT INTO `products_comment` (`id`, `product_id`, `rating`, `member_id`, `contents`, `created_at`) VALUES
(264, 2, 1, 5, '給你六顆星，這是多出來的那一顆', '2022-06-12 07:52:12'),
(273, 1, 5, 1, '好吃一直吃', '2022-06-15 02:08:47'),
(276, 3, 5, 35, '超讚的出貨速度', '2022-06-15 06:37:22'),
(279, 1, 5, 35, '超讚的出貨速度', '2022-06-16 09:27:56'),
(280, 4, 3, 35, 'good', '2022-06-17 01:21:27');

-- --------------------------------------------------------

--
-- 資料表結構 `product_2`
--

CREATE TABLE `product_2` (
  `product_id` varchar(10) NOT NULL COMMENT '餐點/商品品號',
  `product_name` varchar(50) DEFAULT NULL COMMENT '餐點/商品名稱',
  `product_desc` varchar(100) DEFAULT NULL COMMENT '餐點/商品敘述',
  `product_price` int DEFAULT NULL COMMENT '餐點/商品單價',
  `period_id` int DEFAULT NULL COMMENT '供應時段編號',
  `unit_id` int DEFAULT NULL COMMENT '單位編號',
  `product_image` varchar(100) DEFAULT NULL COMMENT '餐點/商品照片',
  `product_cal` int DEFAULT NULL COMMENT '餐點/商品熱量:kcal',
  `vendor_id` int DEFAULT NULL COMMENT '供應商編號'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='餐點及商品主檔';

--
-- 傾印資料表的資料 `product_2`
--

INSERT INTO `product_2` (`product_id`, `product_name`, `product_desc`, `product_price`, `period_id`, `unit_id`, `product_image`, `product_cal`, `vendor_id`) VALUES
('MA-001', '日式溏心蛋沙拉', '日式醬油糖心蛋佐清爽生菜', 59, 4, 1, 'MA-001.jpg', 100, 1),
('MA-002', '小魚豆腐沙拉', '小魚乾佐鮮嫩豆腐沙拉，搭配日式醬汁。', 79, 4, 1, 'MA-002.png', 150, 1),
('MA-003', '和風野菜沙拉', '新鮮野菜佐和風沙拉醋汁，給你清爽開胃的口感。', 59, 4, 1, 'MA-003.jpg', 100, 1),
('MA-004', '牛肉沙拉', '嫩煎進口牛肉丁搭配爽口生菜及紅酒醋，是您開胃前菜的首選。', 99, 4, 1, 'MA-004.jpg', 350, 1),
('MA-005', '炒鮮菇綠蘆筍', '嫩炒鮮菇及綠蘆筍，是生菜之外的另一種選擇。', 59, 4, 1, 'MA-005.jpg', 120, 1),
('MA-006', '海鮮玉子燒', '整條明太子捲進玉子燒裡，每咬一口都有滿滿明太子，又是滿足的一餐！', 119, 4, 1, 'MA-006.webp', 350, 1),
('MA-007', '日式唐揚雞', '鹹酥香脆的外皮，多汁肉嫩的雞肉，酥脆外皮一咬，充滿日式風味的口感瞬間在嘴裡蔓延開。', 120, 4, 1, 'MA-007.jpg', 500, 1),
('MA-008', '可樂餅', '超人氣日式可樂餅， 吃完真的充滿幸福感唷~(每份兩顆)', 99, 4, 1, 'MA-008.jpg', 490, 1),
('MA-009', '煎餃子', '色澤金黃又有卡滋脆皮的煎餃，是非吃不可的一道日式小點。', 79, 4, 1, 'MA-009.jpg', 550, 1),
('MA-010', '和風薯條', '外脆內軟的完美薯條，佐日式美乃滋，是大人小孩的最愛。', 69, 4, 1, 'MA-010.jpg', 510, 1),
('MB-001', '黃金豬排丼飯', '台灣人氣No.1重磅級豬排', 210, 4, 1, 'MB-001.jpeg', 850, 1),
('MB-002', '唐揚雞歐姆蛋咖哩飯', '本店人氣No.1,保證好吃,8種食材精心熬製咖哩醬', 199, 4, 1, 'MB-002.jpeg', 600, 1),
('MB-003', '天婦羅丼', '天婦羅麵衣酥鬆帶點微軟的口感，半熟蛋裹覆的米飯增添些許溫潤風味，是許多人難以抗拒的美味。', 290, 4, 1, 'MB-003.jpg', 890, 1),
('MB-004', '文青花魚飯', '魚肉本身的鹹香與多汁，搭配Q彈的白飯，喜歡海鮮的饕客非常值得試試。', 319, 4, 1, 'MB-004.jpg', 750, 1),
('MB-005', '親子丼', '口感滑嫩的親子丼，是男女老少都喜歡的一道日式家庭料理。', 200, 4, 1, 'MB-005.jpg', 600, 1),
('MB-006', '裝蒜牛五花飯', '使用新鮮的炸蒜片進行調味，搭配牛五花的油花特有的香氣與溏心蛋濃郁的蛋香更是絕配，想來點風味濃郁的特色丼飯，「裝蒜牛五花」相信你會愛上！', 330, 4, 1, 'MB-006.jpg', 770, 1),
('MB-007', '熔岩唐揚雞飯', '將新鮮醃製後的雞肉裹粉油炸，大口咬下金黃酥脆的麵衣，還聽的見清脆過癮的回響，仔細看唐揚雞的橫切面，還能看見雞汁汨汨流出，最後淋上的黃芥末醬酸甜滋味交雜，整體風味非常棒。', 300, 4, 1, 'MB-007.jpg', 775, 1),
('MB-008', '寶島燒豚飯', '燒肉油脂比例恰到好處、口感軟嫩不乾柴，搭配特色醬汁烘烤過，鹹甜交織的美味讓人欲罷不能，溏心蛋與酸白菜等配菜也讓整體風味更有層次，綜合來說是個CP值相當高的人氣商品！', 300, 4, 1, 'MB-008.jpg', 795, 1),
('MB-009', '月見海鮮丼', '簡單的生鮪魚丁及滑嫩酪梨丁，搭配黃澄澄的蛋黃及醋飯，月見海鮮丼是夏日裡受歡迎的爽口主餐。', 310, 4, 1, 'MB-009.jpg', 600, 1),
('MB-010', '炊飯', '這道用蔬菜高湯炊煮的炊飯，蔬菜香氣四溢，是您搭配其他餐點的好搭檔。', 120, 4, 1, 'MB-010.jpg', 200, 1),
('MB-011', '蛋包飯', '大人小孩都喜歡的蛋包飯!', 150, 4, 1, 'MB-011.jpg', 350, 1),
('MB-012', '漢堡排', '漢堡肉是嚴選「進口澳洲牛」，新鮮原肉搭配特製醬汁，黃金比例完美呈現，手工現作。', 250, 4, 1, 'MB-012.jpg', 550, 1),
('MB-013', '明太子義大利麵', '使用義式奶油拌入橘紅色的明太子，還有檸檬獨特的清香風味，搭配鮭魚和鮮蝦，吃起來微鹹又涮嘴！', 270, 4, 1, 'MB-013.jpg', 510, 1),
('MC-001', '味噌湯', '味噌湯', 49, 4, 1, 'MC-001.jpg', 150, 1),
('MC-002', '南瓜濃湯', '南瓜濃湯', 69, 4, 1, 'MC-002.jpg', 150, 1),
('MC-003', '烤鮭魚蘿蔔味增湯', '烤鮭魚丁搭配蘿蔔熬煮，魚脂蔬香融合在一碗之中。', 79, 4, 1, 'MC-003.jpg', 200, 1),
('MC-004', '豬肉湯', '豬肉湯', 69, 4, 1, 'MC-004.jpg', 180, 1),
('MD-001', '抹茶拿鐵', '抹茶拿鐵', 120, 4, 1, 'MD-001.jpg', 120, 1),
('MD-002', '可爾必思', '可爾必思', 90, 4, 1, 'MD-002.jpg', 100, 1),
('MD-003', '藍色氣泡飲', '藍色氣泡飲', 110, 4, 1, 'MD-003.jpg', 50, 1),
('MD-004', '季節果汁', '季節果汁', 90, 4, 1, 'MD-004.PNG', 50, 1),
('MD-005', '紅茶', '紅茶', 79, 4, 1, 'MD-005.PNG', 30, 1),
('MD-006', '美式咖啡', '美式咖啡', 100, 4, 1, 'MD-006.PNG', 50, 1),
('MD-007', '拿鐵', '拿鐵', 110, 4, 1, 'MD-007.PNG', 80, 1),
('ME-001', '抹茶冰淇淋', '抹茶冰淇淋', 80, 4, 1, 'ME-001.jpg', 150, 1),
('ME-002', '紅豆湯圓', '紅豆湯圓', 75, 4, 1, 'ME-002.jpg', 150, 1),
('ME-003', '焦糖布丁', '焦糖布丁', 69, 4, 1, 'ME-003.jpg', 90, 1),
('ME-004', '起士蛋糕', '起士蛋糕', 90, 4, 1, 'ME-004.jpg', 100, 1),
('ME-005', '提拉米蘇', '提拉米蘇', 120, 4, 1, 'ME-005.jpg', 200, 1),
('ME-006', '義式奶酪', '義式奶酪', 90, 4, 1, 'ME-006.jpg', 180, 1),
('ME-007', '鬆餅', '鬆餅', 120, 4, 1, 'ME-007.jpg', 250, 1),
('PG-001', '日式咖哩調理包', '8種食材精心熬製咖哩醬,讓您快速上桌享用', 150, 1, 2, 'PG-001.jpg', 700, 1),
('PG-002', '骰子牛調理包', '嚴選梅花牛肉，將每塊牛肉切至黃金比例的骰子大小，一口就可吃出肉汁甘甜滋味，富有嚼勁的肉質，口感厚實。商品規格:1kg/盒。', 680, 1, 2, 'PG-002.webp', 1200, 1),
('PG-003', '冷凍可樂餅', '酥炸可樂餅急凍冷藏，保留香酥美味。商品規格:每包6顆。', 180, 1, 2, 'PG-003.jpg', 900, 1),
('PH-001', '綜合樂食寶寶粥組(28入/4盒)', '寶寶粥食品28入(心干貝貝粥7入,乖乖豬豬粥7入,原淬寶寶粥7入,南瓜飽飽粥7入)', 2000, 1, 9, 'PH-001.jpg', 500, 1),
('PH-002', '心干貝貝粥7入/盒', '最多網友好評推薦的常溫寶寶粥', 420, 1, 8, 'PH-002.jpg', 500, 1),
('PH-003', '乖乖豬豬粥7入/盒', '純天然、無添加，用愛烹煮的美味', 420, 1, 8, 'PH-003.jpg', 500, 1),
('PH-004', '南瓜飽飽粥7入/盒', '優質蛋白質搭配多色蔬果，營養均衡', 420, 1, 8, 'PH-004.jpg', 500, 1),
('PH-005', '原淬寶寶粥7入/盒', '公開檢驗報告，從原料製程到成品都安心', 420, 1, 8, 'PH-005.jpg', 500, 1);

-- --------------------------------------------------------

--
-- 資料表結構 `recipesboxcooking`
--

CREATE TABLE `recipesboxcooking` (
  `RecipesBoxCooking1_ID` int NOT NULL,
  `RecipesBoxCooking` int NOT NULL,
  `RecipesBoxCooking_text` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Recipes_ID` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 傾印資料表的資料 `recipesboxcooking`
--

INSERT INTO `recipesboxcooking` (`RecipesBoxCooking1_ID`, `RecipesBoxCooking`, `RecipesBoxCooking_text`, `Recipes_ID`) VALUES
(1, 1, '將三顆雞蛋打成蛋汁，蛋汁倒入白飯內攪拌均勻。', 1),
(2, 2, '先將油倒進炒菜鍋內，再將沾滿蛋汁的白飯與其他食材倒入鍋中，轉中火快炒5分鐘，期間須不斷翻炒，避免食材燒焦。', 1),
(3, 1, '砂糖、醬油混合後，將雞腿肉切成小塊放入攪拌，靜置15分鐘等待入味。', 2),
(4, 2, '將油倒入鍋中加熱，油鍋預先加熱備用。再將麵粉和水混合攪拌均勻後，將醃好的雞肉塊放入麵液內。', 2),
(5, 1, 'TEST72將三顆雞蛋打成蛋汁，蛋汁倒入白飯內攪拌均勻。', 3),
(6, 1, 'TEST19將三顆雞蛋打成蛋汁，蛋汁倒入白飯內攪拌均勻。', 4),
(7, 1, 'TEST27將三顆雞蛋打成蛋汁，蛋汁倒入白飯內攪拌均勻。', 5),
(8, 1, 'TEST96將三顆雞蛋打成蛋汁，蛋汁倒入白飯內攪拌均勻。', 6),
(9, 1, 'TEST18將三顆雞蛋打成蛋汁，蛋汁倒入白飯內攪拌均勻。', 7),
(10, 1, 'TEST73將三顆雞蛋打成蛋汁，蛋汁倒入白飯內攪拌均勻。', 8),
(11, 1, 'TEST21將三顆雞蛋打成蛋汁，蛋汁倒入白飯內攪拌均勻。', 9),
(12, 1, 'TEST40將三顆雞蛋打成蛋汁，蛋汁倒入白飯內攪拌均勻。', 10),
(13, 1, 'TEST72將三顆雞蛋打成蛋汁，蛋汁倒入白飯內攪拌均勻。', 11),
(14, 1, 'TEST8將三顆雞蛋打成蛋汁，蛋汁倒入白飯內攪拌均勻。', 12),
(15, 1, 'TEST15將三顆雞蛋打成蛋汁，蛋汁倒入白飯內攪拌均勻。', 13),
(16, 1, 'TEST47將三顆雞蛋打成蛋汁，蛋汁倒入白飯內攪拌均勻。', 14),
(17, 1, 'TEST100將三顆雞蛋打成蛋汁，蛋汁倒入白飯內攪拌均勻。', 15),
(18, 1, 'TEST86將三顆雞蛋打成蛋汁，蛋汁倒入白飯內攪拌均勻。', 16),
(19, 2, 'TEST37砂糖、醬油混合後，將雞腿肉切成小塊放入攪拌，靜置15分鐘等待入味。', 3),
(20, 2, 'TEST92砂糖、醬油混合後，將雞腿肉切成小塊放入攪拌，靜置15分鐘等待入味。', 4),
(21, 2, 'TEST38砂糖、醬油混合後，將雞腿肉切成小塊放入攪拌，靜置15分鐘等待入味。', 5),
(22, 2, 'TEST30砂糖、醬油混合後，將雞腿肉切成小塊放入攪拌，靜置15分鐘等待入味。', 6),
(23, 2, 'TEST72砂糖、醬油混合後，將雞腿肉切成小塊放入攪拌，靜置15分鐘等待入味。', 7),
(24, 2, 'TEST59砂糖、醬油混合後，將雞腿肉切成小塊放入攪拌，靜置15分鐘等待入味。', 8),
(25, 2, 'TEST29砂糖、醬油混合後，將雞腿肉切成小塊放入攪拌，靜置15分鐘等待入味。', 9),
(26, 2, 'TEST82砂糖、醬油混合後，將雞腿肉切成小塊放入攪拌，靜置15分鐘等待入味。', 10),
(27, 2, 'TEST50砂糖、醬油混合後，將雞腿肉切成小塊放入攪拌，靜置15分鐘等待入味。', 11),
(28, 2, 'TEST24砂糖、醬油混合後，將雞腿肉切成小塊放入攪拌，靜置15分鐘等待入味。', 12),
(29, 2, 'TEST17砂糖、醬油混合後，將雞腿肉切成小塊放入攪拌，靜置15分鐘等待入味。', 13),
(30, 2, 'TEST77砂糖、醬油混合後，將雞腿肉切成小塊放入攪拌，靜置15分鐘等待入味。', 14),
(31, 2, 'TEST3砂糖、醬油混合後，將雞腿肉切成小塊放入攪拌，靜置15分鐘等待入味。', 15),
(32, 2, 'TEST95砂糖、醬油混合後，將雞腿肉切成小塊放入攪拌，靜置15分鐘等待入味。', 16),
(33, 3, 'TEST7將油倒入鍋中加熱，油鍋預先加熱備用。再將麵粉和水混合攪拌均勻後，將醃好的雞肉塊放入麵液內。', 9),
(34, 3, 'TEST72將油倒入鍋中加熱，油鍋預先加熱備用。再將麵粉和水混合攪拌均勻後，將醃好的雞肉塊放入麵液內。', 10),
(35, 3, 'TEST66將油倒入鍋中加熱，油鍋預先加熱備用。再將麵粉和水混合攪拌均勻後，將醃好的雞肉塊放入麵液內。', 11),
(36, 3, 'TEST3將油倒入鍋中加熱，油鍋預先加熱備用。再將麵粉和水混合攪拌均勻後，將醃好的雞肉塊放入麵液內。', 12),
(37, 3, 'TEST88將油倒入鍋中加熱，油鍋預先加熱備用。再將麵粉和水混合攪拌均勻後，將醃好的雞肉塊放入麵液內。', 13),
(38, 3, 'TEST90將油倒入鍋中加熱，油鍋預先加熱備用。再將麵粉和水混合攪拌均勻後，將醃好的雞肉塊放入麵液內。', 14),
(39, 3, 'TEST3將油倒入鍋中加熱，油鍋預先加熱備用。再將麵粉和水混合攪拌均勻後，將醃好的雞肉塊放入麵液內。', 15),
(40, 3, 'TEST72將油倒入鍋中加熱，油鍋預先加熱備用。再將麵粉和水混合攪拌均勻後，將醃好的雞肉塊放入麵液內。', 16),
(41, 4, 'TEST51將油倒入鍋中加熱，油鍋預先加熱備用。再將麵粉和水混合攪拌均勻後，將醃好的雞肉塊放入麵液內。', 13),
(42, 4, 'TEST87將油倒入鍋中加熱，油鍋預先加熱備用。再將麵粉和水混合攪拌均勻後，將醃好的雞肉塊放入麵液內。', 14),
(43, 4, 'TEST84將油倒入鍋中加熱，油鍋預先加熱備用。再將麵粉和水混合攪拌均勻後，將醃好的雞肉塊放入麵液內。', 15),
(44, 4, 'TEST38將油倒入鍋中加熱，油鍋預先加熱備用。再將麵粉和水混合攪拌均勻後，將醃好的雞肉塊放入麵液內。', 16),
(45, 1, 'TEST62倒入寬油', 18),
(46, 1, 'TEST95倒入寬油', 19),
(47, 1, 'TEST58倒入寬油', 20),
(48, 1, 'TEST49倒入寬油', 21),
(49, 1, 'TEST20倒入寬油', 22),
(50, 1, 'TEST54倒入寬油', 23),
(51, 1, 'TEST2倒入寬油', 24),
(52, 1, 'TEST41倒入寬油', 25),
(53, 1, 'TEST22倒入寬油', 26),
(54, 1, 'TEST32倒入寬油', 27),
(55, 1, 'TEST46倒入寬油', 28),
(56, 1, 'TEST100倒入寬油', 29),
(57, 1, 'TEST32倒入寬油', 30),
(58, 1, 'TEST8倒入寬油', 31),
(59, 1, 'TEST46倒入寬油', 32),
(60, 2, 'TEST9下油鍋', 18),
(61, 2, 'TEST60下油鍋', 19),
(62, 2, 'TEST86下油鍋', 20),
(63, 2, 'TEST72下油鍋', 21),
(64, 2, 'TEST90下油鍋', 22),
(65, 2, 'TEST16下油鍋', 23),
(66, 2, 'TEST24下油鍋', 24),
(67, 2, 'TEST70下油鍋', 25),
(68, 2, 'TEST43下油鍋', 26),
(69, 2, 'TEST56下油鍋', 27),
(70, 2, 'TEST63下油鍋', 28),
(71, 2, 'TEST91下油鍋', 29),
(72, 2, 'TEST86下油鍋', 30),
(73, 2, 'TEST64下油鍋', 31),
(74, 2, 'TEST40下油鍋', 32),
(75, 3, 'TEST78接下來將由廚師長進行技術總結', 18),
(76, 3, 'TEST11接下來將由廚師長進行技術總結', 19),
(77, 3, 'TEST45接下來將由廚師長進行技術總結', 20),
(78, 3, 'TEST58接下來將由廚師長進行技術總結', 21),
(79, 3, 'TEST26接下來將由廚師長進行技術總結', 22),
(80, 3, 'TEST74接下來將由廚師長進行技術總結', 23),
(81, 3, 'TEST83接下來將由廚師長進行技術總結', 24),
(82, 3, 'TEST74接下來將由廚師長進行技術總結', 25),
(83, 3, 'TEST40接下來將由廚師長進行技術總結', 26),
(84, 3, 'TEST45接下來將由廚師長進行技術總結', 27),
(85, 3, 'TEST97接下來將由廚師長進行技術總結', 28),
(86, 3, 'TEST54接下來將由廚師長進行技術總結', 29),
(87, 3, 'TEST34接下來將由廚師長進行技術總結', 30),
(88, 3, 'TEST36接下來將由廚師長進行技術總結', 31),
(89, 3, 'TEST25接下來將由廚師長進行技術總結', 32),
(90, 4, 'TEST7以下是技術總結 1.倒入寬油  2.依序下料', 18),
(91, 4, 'TEST97以下是技術總結 1.倒入寬油  2.依序下料', 19),
(92, 4, 'TEST84以下是技術總結 1.倒入寬油  2.依序下料', 20),
(93, 4, 'TEST24以下是技術總結 1.倒入寬油  2.依序下料', 21),
(94, 4, 'TEST40以下是技術總結 1.倒入寬油  2.依序下料', 22),
(95, 4, 'TEST72以下是技術總結 1.倒入寬油  2.依序下料', 23),
(96, 4, 'TEST87以下是技術總結 1.倒入寬油  2.依序下料', 24),
(97, 4, 'TEST80以下是技術總結 1.倒入寬油  2.依序下料', 25),
(98, 4, 'TEST91以下是技術總結 1.倒入寬油  2.依序下料', 26),
(99, 4, 'TEST3以下是技術總結 1.倒入寬油  2.依序下料', 27),
(100, 4, 'TEST8以下是技術總結 1.倒入寬油  2.依序下料', 28),
(101, 4, 'TEST26以下是技術總結 1.倒入寬油  2.依序下料', 29),
(102, 4, 'TEST78以下是技術總結 1.倒入寬油  2.依序下料', 30),
(103, 4, 'TEST15以下是技術總結 1.倒入寬油  2.依序下料', 31),
(104, 4, 'TEST57以下是技術總結 1.倒入寬油  2.依序下料', 32);

-- --------------------------------------------------------

--
-- 資料表結構 `recipesingredients`
--

CREATE TABLE `recipesingredients` (
  `RecipesIngredients_ID` int NOT NULL,
  `recipesIngredients_Name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `RecipesIngredients_Quantity` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Recipes_ID` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 傾印資料表的資料 `recipesingredients`
--

INSERT INTO `recipesingredients` (`RecipesIngredients_ID`, `recipesIngredients_Name`, `RecipesIngredients_Quantity`, `Recipes_ID`) VALUES
(1, '雞蛋', '3顆', 1),
(2, '白飯', '200g', 1),
(3, '三色豆', '50g', 1),
(4, '油', '50g', 1),
(5, '雞胸肉', '600g', 2),
(6, '蔥', '20g', 2),
(7, '薑', '20g', 2),
(8, '蒜', '20g', 2),
(9, '麵粉', '200g', 2),
(10, '油', '200g', 2),
(11, '水', '200g', 2),
(12, '馬鈴薯', '300g', 3),
(13, '洋蔥', '50g', 3),
(14, '牛絞肉\r\n', '120g', 3),
(15, '水', '50ml', 3),
(16, '低筋麵粉\r\n', '200g', 3),
(17, '雞蛋', '1顆', 3),
(18, '麵包粉\r\n', '50g', 3),
(19, '蔥', '27g', 16),
(20, '蔥', '17g', 17),
(21, '蔥', '17g', 18),
(22, '蔥', '13g', 3),
(23, '蔥', '28g', 4),
(24, '蔥', '23g', 5),
(25, '蔥', '25g', 6),
(26, '蔥', '20g', 7),
(27, '蔥', '20g', 8),
(28, '蔥', '29g', 9),
(29, '蔥', '18g', 10),
(30, '蔥', '22g', 11),
(31, '蔥', '18g', 12),
(32, '蔥', '26g', 13),
(33, '蔥', '14g', 14),
(34, '蔥', '18g', 15),
(35, '洋蔥', '12g', 4),
(36, '洋蔥', '18g', 5),
(37, '洋蔥', '20g', 6),
(38, '洋蔥', '10g', 7),
(39, '洋蔥', '26g', 8),
(40, '洋蔥', '11g', 9),
(41, '洋蔥', '18g', 10),
(42, '洋蔥', '17g', 11),
(43, '洋蔥', '18g', 12),
(44, '洋蔥', '27g', 13),
(45, '洋蔥', '21g', 14),
(46, '洋蔥', '25g', 15),
(47, '洋蔥', '100g', 16),
(48, '水', '200g', 4),
(49, '水', '200g', 5),
(50, '水', '200g', 6),
(51, '水', '200g', 7),
(52, '水', '200g', 8),
(53, '水', '200g', 9),
(54, '水', '200g', 10),
(55, '水', '200g', 11),
(56, '水', '200g', 12),
(57, '水', '200g', 13),
(58, '水', '200g', 14),
(59, '水', '200g', 15),
(60, '水', '200g', 16),
(61, '麵粉', '131g', 4),
(62, '麵粉', '239g', 5),
(63, '麵粉', '116g', 6),
(64, '麵粉', '132g', 7),
(65, '麵粉', '104g', 8),
(66, '麵粉', '258g', 9),
(67, '麵粉', '278g', 10),
(68, '麵粉', '203g', 11),
(69, '麵粉', '123g', 12),
(70, '麵粉', '155g', 13),
(71, '麵粉', '144g', 14),
(72, '麵粉', '103g', 15),
(73, '麵粉', '167g', 16),
(74, '馬鈴薯', '4顆', 19),
(75, '馬鈴薯', '3顆', 20),
(76, '馬鈴薯', '1顆', 21),
(77, '馬鈴薯', '2顆', 22),
(78, '馬鈴薯', '2顆', 23),
(79, '馬鈴薯', '3顆', 24),
(80, '馬鈴薯', '1顆', 25),
(81, '馬鈴薯', '3顆', 26),
(82, '馬鈴薯', '4顆', 27),
(83, '馬鈴薯', '3顆', 28),
(84, '馬鈴薯', '2顆', 29),
(85, '馬鈴薯', '2顆', 30),
(86, '馬鈴薯', '2顆', 31),
(87, '馬鈴薯', '4顆', 32),
(88, '馬鈴薯', '1顆', 33),
(89, '馬鈴薯', '1顆', 34),
(90, '洋蔥', '4顆', 19),
(91, '洋蔥', '3顆', 20),
(92, '洋蔥', '4顆', 21),
(93, '洋蔥', '2顆', 22),
(94, '洋蔥', '3顆', 23),
(95, '洋蔥', '1顆', 24),
(96, '洋蔥', '1顆', 25),
(97, '洋蔥', '2顆', 26),
(98, '洋蔥', '3顆', 27),
(99, '洋蔥', '2顆', 28),
(100, '洋蔥', '1顆', 29),
(101, '洋蔥', '3顆', 30),
(102, '洋蔥', '2顆', 31),
(103, '洋蔥', '4顆', 32),
(104, '洋蔥', '3顆', 33),
(105, '洋蔥', '4顆', 34),
(106, '麵粉', '285g', 19),
(107, '麵粉', '340g', 20),
(108, '麵粉', '257g', 21),
(109, '麵粉', '103g', 22),
(110, '麵粉', '113g', 23),
(111, '麵粉', '191g', 24),
(112, '麵粉', '111g', 25),
(113, '麵粉', '383g', 26),
(114, '麵粉', '128g', 27),
(115, '麵粉', '226g', 28),
(116, '麵粉', '363g', 29),
(117, '麵粉', '155g', 30),
(118, '麵粉', '120g', 31),
(119, '麵粉', '361g', 32),
(120, '麵粉', '237g', 33),
(121, '麵粉', '383g', 34),
(122, '里肌肉', '375g', 19),
(123, '里肌肉', '515g', 20),
(124, '里肌肉', '259g', 21),
(125, '里肌肉', '580g', 22),
(126, '里肌肉', '116g', 23),
(127, '里肌肉', '208g', 24),
(128, '里肌肉', '420g', 25),
(129, '里肌肉', '365g', 26),
(130, '里肌肉', '102g', 27),
(131, '里肌肉', '381g', 28),
(132, '里肌肉', '364g', 29),
(133, '里肌肉', '318g', 30),
(134, '里肌肉', '309g', 31),
(135, '里肌肉', '441g', 32),
(136, '里肌肉', '182g', 33),
(137, '里肌肉', '595g', 34),
(138, '牛絞肉', '191g', 19),
(139, '牛絞肉', '199g', 20),
(140, '牛絞肉', '245g', 21),
(141, '牛絞肉', '128g', 22),
(142, '牛絞肉', '277g', 23),
(143, '牛絞肉', '294g', 24),
(144, '牛絞肉', '181g', 25),
(145, '牛絞肉', '197g', 26),
(146, '牛絞肉', '103g', 27),
(147, '牛絞肉', '137g', 28),
(148, '牛絞肉', '227g', 29),
(149, '牛絞肉', '208g', 30),
(150, '牛絞肉', '209g', 31),
(151, '牛絞肉', '129g', 32),
(152, '牛絞肉', '122g', 33),
(153, '牛絞肉', '161g', 34);

-- --------------------------------------------------------

--
-- 資料表結構 `recipeslist`
--

CREATE TABLE `recipeslist` (
  `Recipes_ID` int NOT NULL,
  `Recipes_Name` varchar(50) NOT NULL,
  `Recipes_Clicks` int NOT NULL,
  `Recipes_Time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `Recipes_Picture` varchar(50) NOT NULL,
  `RecipesBox_Kcal` float NOT NULL,
  `RecipesBox_Time` int NOT NULL,
  `RecipesBox_SeveralCopies` int NOT NULL,
  `RecipesClass` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- 傾印資料表的資料 `recipeslist`
--

INSERT INTO `recipeslist` (`Recipes_ID`, `Recipes_Name`, `Recipes_Clicks`, `Recipes_Time`, `Recipes_Picture`, `RecipesBox_Kcal`, `RecipesBox_Time`, `RecipesBox_SeveralCopies`, `RecipesClass`) VALUES
(1, '蛋包飯', 7, '2022-06-15 03:23:24', '蛋包飯.jpg', 759.1, 50, 1, '主食'),
(2, '日式唐楊雞ver1.0', 35545, '2022-06-16 03:02:03', '日式唐楊雞.jpg', 417, 43, 3, '主菜'),
(3, '可樂餅', 99, '2022-06-13 08:51:01', '可樂餅.jpg', 444, 36, 4, '前菜'),
(4, '明太子義大利麵', 5, '2022-06-16 03:02:13', '明太子義大利麵.jpg', 645, 43, 3, '主食'),
(5, '奶油鮮菇濃湯', 2, '2022-06-16 03:02:09', '奶油鮮菇濃湯.jpeg', 370, 10, 2, '湯品'),
(6, '青蔬鮭魚濃湯', 2, '2022-06-16 07:19:22', '青蔬鮭魚濃湯.jpeg', 164, 19, 1, '湯品'),
(7, '白醬奶油煙燻鮭魚義大利麵', 0, '2022-06-02 02:54:54', '白醬奶油煙燻鮭魚義大利麵.jpeg', 577, 38, 1, '主食'),
(8, '日式火腿干酪熱三明治', 4, '2022-06-16 07:19:18', '日式火腿干酪熱三明治.jpeg', 291, 50, 3, '主食'),
(9, '拿坡里義大利麵', 6, '2022-06-16 03:02:25', '拿坡里義大利麵.jpg', 727, 32, 1, '主食'),
(10, '日式唐楊雞ver2.0', 7, '2022-06-16 03:19:41', '日式唐楊雞.jpg', 700, 25, 2, '主菜'),
(11, '特大蛋包飯', 15, '2022-06-17 01:38:10', '蛋包飯.jpg', 498, 23, 2, '主食'),
(12, '拿坡里義大利麵', 4, '2022-06-15 03:32:48', '拿坡里義大利麵.jpg', 439, 36, 2, '主食'),
(13, '青蔬鮭魚濃湯ver2.0', 3, '2022-06-14 09:27:37', '青蔬鮭魚濃湯.jpeg', 531, 41, 2, '湯品'),
(14, '日式唐楊雞ver3.0', 4, '2022-06-15 02:52:23', '日式唐楊雞.jpg', 523, 37, 3, '主菜'),
(15, '特大可樂餅', 58, '2022-06-17 04:18:26', '可樂餅.jpg', 753, 43, 3, '前菜'),
(16, '日式火腿干酪熱三明治Ver2.0', 2, '2022-06-14 09:32:45', '日式火腿干酪熱三明治.jpeg', 710, 38, 4, '主食'),
(25, '北非蛋', 13, '2022-06-16 07:19:14', '北非蛋.jpg', 233.4, 50, 1, '前菜'),
(26, '奶茶', 102, '2022-06-17 05:28:27', '奶茶.PNG', 233.9, 11, 1, '飲品');

-- --------------------------------------------------------

--
-- 資料表結構 `recipesnutrient`
--

CREATE TABLE `recipesnutrient` (
  `RecipesNutrient_ID` int NOT NULL,
  `RecipesNutrient_Name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `RecipesNutrient_Quantity` float NOT NULL,
  `Recipes_ID` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 傾印資料表的資料 `recipesnutrient`
--

INSERT INTO `recipesnutrient` (`RecipesNutrient_ID`, `RecipesNutrient_Name`, `RecipesNutrient_Quantity`, `Recipes_ID`) VALUES
(1, '脂肪(g)', 27.3, 1),
(2, '蛋白質(g)', 15.6, 1),
(3, '碳水化合物(g)', 11.4, 1),
(4, '鈉(mg)', 677, 1),
(5, '脂肪(g)', 34, 2),
(6, '脂肪(g)', 24, 3),
(7, '脂肪(g)', 8, 4),
(8, '脂肪(g)', 18, 5),
(9, '脂肪(g)', 21, 6),
(10, '脂肪(g)', 27, 7),
(11, '脂肪(g)', 24, 8),
(12, '脂肪(g)', 12, 9),
(13, '脂肪(g)', 21, 10),
(14, '脂肪(g)', 33, 11),
(15, '脂肪(g)', 29, 12),
(16, '脂肪(g)', 33, 13),
(17, '脂肪(g)', 14, 14),
(18, '脂肪(g)', 27, 15),
(19, '脂肪(g)', 8, 16),
(20, '脂肪(g)', 19, 17),
(21, '脂肪(g)', 28, 18),
(22, '蛋白質(g)', 8, 3),
(23, '蛋白質(g)', 30, 4),
(24, '蛋白質(g)', 14, 5),
(25, '蛋白質(g)', 23, 6),
(26, '蛋白質(g)', 20, 7),
(27, '蛋白質(g)', 31, 8),
(28, '蛋白質(g)', 28, 9),
(29, '蛋白質(g)', 13, 10),
(30, '蛋白質(g)', 8, 11),
(31, '蛋白質(g)', 25, 12),
(32, '蛋白質(g)', 32, 13),
(33, '蛋白質(g)', 18, 14),
(34, '蛋白質(g)', 27, 15),
(35, '蛋白質(g)', 23, 16),
(36, '蛋白質(g)', 24, 17),
(37, '蛋白質(g)', 23, 2),
(38, '碳水化合物(g)', 34, 3),
(39, '碳水化合物(g)', 10, 4),
(40, '碳水化合物(g)', 18, 5),
(41, '碳水化合物(g)', 22, 6),
(42, '碳水化合物(g)', 10, 7),
(43, '碳水化合物(g)', 8, 8),
(44, '碳水化合物(g)', 25, 9),
(45, '碳水化合物(g)', 15, 10),
(46, '碳水化合物(g)', 9, 11),
(47, '碳水化合物(g)', 13, 12),
(48, '碳水化合物(g)', 32, 13),
(49, '碳水化合物(g)', 33, 14),
(50, '碳水化合物(g)', 27, 15),
(51, '碳水化合物(g)', 31, 16),
(52, '碳水化合物(g)', 9, 17),
(53, '碳水化合物(g)', 13, 2),
(54, '鈉(mg)', 27, 2),
(55, '鈉(mg)', 33, 3),
(56, '鈉(mg)', 20, 4),
(57, '鈉(mg)', 9, 5),
(58, '鈉(mg)', 32, 6),
(59, '鈉(mg)', 26, 7),
(60, '鈉(mg)', 9, 8),
(61, '鈉(mg)', 33, 9),
(62, '鈉(mg)', 25, 10),
(63, '鈉(mg)', 18, 11),
(64, '鈉(mg)', 13, 12),
(65, '鈉(mg)', 29, 13),
(66, '鈉(mg)', 16, 14),
(67, '鈉(mg)', 20, 15),
(68, '鈉(mg)', 16, 16),
(69, '脂肪(g)', 17, 19),
(70, '脂肪(g)', 34, 20),
(71, '脂肪(g)', 27, 21),
(72, '脂肪(g)', 24, 22),
(73, '脂肪(g)', 23, 23),
(74, '脂肪(g)', 44, 24),
(75, '脂肪(g)', 20, 25),
(76, '脂肪(g)', 49, 26),
(77, '脂肪(g)', 33, 27),
(78, '脂肪(g)', 40, 28),
(79, '脂肪(g)', 46, 29),
(80, '脂肪(g)', 42, 30),
(81, '脂肪(g)', 6, 31),
(82, '脂肪(g)', 20, 32),
(83, '脂肪(g)', 5, 33),
(84, '脂肪(g)', 27, 34),
(85, '蛋白質(g)', 13, 19),
(86, '蛋白質(g)', 35, 20),
(87, '蛋白質(g)', 18, 21),
(88, '蛋白質(g)', 43, 22),
(89, '蛋白質(g)', 12, 23),
(90, '蛋白質(g)', 14, 24),
(91, '蛋白質(g)', 34, 25),
(92, '蛋白質(g)', 50, 26),
(93, '蛋白質(g)', 33, 27),
(94, '蛋白質(g)', 20, 28),
(95, '蛋白質(g)', 30, 29),
(96, '蛋白質(g)', 19, 30),
(97, '蛋白質(g)', 39, 31),
(98, '蛋白質(g)', 14, 32),
(99, '蛋白質(g)', 28, 33),
(100, '蛋白質(g)', 25, 34),
(101, '碳水化合物(g)', 18, 19),
(102, '碳水化合物(g)', 17, 20),
(103, '碳水化合物(g)', 14, 21),
(104, '碳水化合物(g)', 43, 22),
(105, '碳水化合物(g)', 40, 23),
(106, '碳水化合物(g)', 8, 24),
(107, '碳水化合物(g)', 20, 25),
(108, '碳水化合物(g)', 29, 26),
(109, '碳水化合物(g)', 28, 27),
(110, '碳水化合物(g)', 5, 28),
(111, '碳水化合物(g)', 35, 29),
(112, '碳水化合物(g)', 17, 30),
(113, '碳水化合物(g)', 29, 31),
(114, '碳水化合物(g)', 44, 32),
(115, '碳水化合物(g)', 16, 33),
(116, '碳水化合物(g)', 26, 34),
(117, '鈉(mg)', 1053, 19),
(118, '鈉(mg)', 707, 20),
(119, '鈉(mg)', 1001, 21),
(120, '鈉(mg)', 928, 22),
(121, '鈉(mg)', 410, 23),
(122, '鈉(mg)', 453, 24),
(123, '鈉(mg)', 157, 25),
(124, '鈉(mg)', 601, 26),
(125, '鈉(mg)', 189, 27),
(126, '鈉(mg)', 356, 28),
(127, '鈉(mg)', 485, 29),
(128, '鈉(mg)', 424, 30),
(129, '鈉(mg)', 1047, 31),
(130, '鈉(mg)', 164, 32),
(131, '鈉(mg)', 1095, 33),
(132, '鈉(mg)', 767, 34);

-- --------------------------------------------------------

--
-- 資料表結構 `recipesseasoning`
--

CREATE TABLE `recipesseasoning` (
  `RecipesSeasoning_ID` int NOT NULL,
  `RecipesSeasoning_Name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `RecipeSseasoning_Quantity` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Recipes_ID` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 傾印資料表的資料 `recipesseasoning`
--

INSERT INTO `recipesseasoning` (`RecipesSeasoning_ID`, `RecipesSeasoning_Name`, `RecipeSseasoning_Quantity`, `Recipes_ID`) VALUES
(1, '鹽', '5g', 1),
(2, '醬油', '50g', 2),
(3, '糖', '50g', 2),
(4, '番茄醬', '40g', 3),
(5, '醬油', '40g', 3),
(6, '砂糖', '20g', 3),
(7, '胡椒\r\n', '5g', 3),
(8, '鹽', '9g', 4),
(9, '鹽', '4g', 5),
(10, '鹽', '6g', 6),
(11, '鹽', '11g', 7),
(12, '鹽', '10g', 8),
(13, '鹽', '3g', 9),
(14, '鹽', '10g', 10),
(15, '鹽', '10g', 11),
(16, '鹽', '10g', 12),
(17, '鹽', '10g', 13),
(18, '鹽', '10g', 14),
(19, '鹽', '10g', 15),
(20, '鹽', '6g', 16),
(21, '鹽', '8g', 25),
(22, '糖', '30g', 26),
(23, '糖', '70g', 27),
(24, '糖', '50g', 29),
(25, '糖', '30g', 30),
(26, '糖', '20g', 9),
(27, '糖', '20g', 10),
(28, '糖', '20g', 11),
(29, '糖', '20g', 12),
(30, '糖', '20g', 13),
(31, '糖', '20g', 14),
(32, '糖', '20g', 15),
(33, '糖', '20g', 16),
(34, '胡椒', '20g', 4),
(35, '胡椒', '20g', 5),
(36, '胡椒', '20g', 6),
(37, '胡椒', '20g', 7),
(38, '胡椒', '20g', 8),
(39, '胡椒', '20g', 9),
(40, '胡椒', '20g', 10),
(41, '胡椒', '20g', 11),
(42, '胡椒', '20g', 12),
(43, '胡椒', '20g', 13),
(44, '胡椒', '20g', 14),
(45, '胡椒', '20g', 15),
(46, '胡椒', '20g', 16),
(47, '咖哩粉', '20g', 4),
(48, '咖哩粉', '20g', 5),
(49, '咖哩粉', '20g', 6),
(50, '咖哩粉', '20g', 7),
(51, '咖哩粉', '20g', 8),
(52, '咖哩粉', '20g', 9),
(53, '鹽', '7g', 25),
(54, '砂糖', '22g', 26),
(55, '砂糖', '65g', 27),
(57, '砂糖', '50g', 29),
(58, '砂糖', '20g', 30),
(59, '番茄醬', '21g', 19),
(60, '番茄醬', '28g', 20),
(61, '番茄醬', '35g', 21),
(62, '番茄醬', '42g', 22),
(63, '番茄醬', '42g', 23),
(64, '番茄醬', '26g', 24),
(65, '番茄醬', '25g', 25),
(66, '番茄醬', '33g', 26),
(67, '番茄醬', '21g', 27),
(68, '番茄醬', '35g', 28),
(69, '番茄醬', '42g', 29),
(70, '番茄醬', '24g', 30),
(71, '番茄醬', '23g', 31),
(72, '番茄醬', '27g', 32),
(73, '番茄醬', '34g', 33),
(74, '番茄醬', '47g', 34),
(75, '胡椒', '10g', 19),
(76, '胡椒', '6g', 20),
(77, '胡椒', '12g', 21),
(78, '胡椒', '9g', 22),
(79, '胡椒', '12g', 23),
(80, '胡椒', '13g', 24),
(81, '胡椒', '8g', 25),
(82, '胡椒', '7g', 26),
(83, '胡椒', '7g', 27),
(84, '胡椒', '9g', 28),
(85, '胡椒', '6g', 29),
(86, '胡椒', '10g', 30),
(87, '胡椒', '12g', 31),
(88, '胡椒', '5g', 32),
(89, '胡椒', '8g', 33),
(90, '胡椒', '9g', 34),
(91, '咖哩粉', '5g', 19),
(92, '咖哩粉', '14g', 20),
(93, '咖哩粉', '8g', 21),
(94, '咖哩粉', '13g', 22),
(95, '咖哩粉', '14g', 23),
(96, '咖哩粉', '13g', 24),
(97, '咖哩粉', '6g', 25),
(98, '咖哩粉', '15g', 26),
(99, '咖哩粉', '5g', 27),
(100, '咖哩粉', '11g', 28),
(101, '咖哩粉', '5g', 29),
(102, '咖哩粉', '5g', 30),
(103, '咖哩粉', '9g', 31),
(104, '咖哩粉', '11g', 32),
(105, '咖哩粉', '15g', 33),
(106, '咖哩粉', '15g', 34);

-- --------------------------------------------------------

--
-- 資料表結構 `recipes_match`
--

CREATE TABLE `recipes_match` (
  `match_id` int NOT NULL,
  `cr_id` int NOT NULL COMMENT '食譜ID',
  `nl_id` int NOT NULL COMMENT '食材ID',
  `Food_dosage` int DEFAULT NULL COMMENT '食材用量'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='食譜~食材用量';

--
-- 傾印資料表的資料 `recipes_match`
--

INSERT INTO `recipes_match` (`match_id`, `cr_id`, `nl_id`, `Food_dosage`) VALUES
(1, 1, 1, 600),
(2, 1, 2, 20),
(3, 1, 3, 30),
(4, 1, 4, 30),
(5, 1, 5, 300),
(6, 1, 6, 300),
(7, 1, 7, 300),
(8, 1, 23, 20),
(9, 1, 19, 5),
(10, 1, 20, 50),
(11, 1, 15, 40),
(12, 1, 24, 50),
(13, 1, 25, 50),
(14, 1, 13, 20),
(15, 2, 13, 10),
(16, 2, 21, 10),
(17, 2, 26, 10),
(18, 2, 14, 30),
(19, 2, 28, 10),
(20, 2, 27, 10),
(21, 2, 29, 10),
(22, 2, 16, 5),
(23, 2, 17, 5),
(24, 2, 8, 300),
(25, 2, 9, 100),
(26, 2, 10, 50),
(27, 2, 11, 100),
(28, 2, 12, 100),
(29, 2, 4, 50);

-- --------------------------------------------------------

--
-- 資料表結構 `shop_area`
--

CREATE TABLE `shop_area` (
  `area_id` int NOT NULL COMMENT '區域編號',
  `area_name` varchar(10) NOT NULL COMMENT '區域名稱'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='分店區域資料表';

--
-- 傾印資料表的資料 `shop_area`
--

INSERT INTO `shop_area` (`area_id`, `area_name`) VALUES
(1, '北北基'),
(2, '桃竹苗'),
(3, '中彰投'),
(4, '雲嘉南'),
(5, '高屏');

-- --------------------------------------------------------

--
-- 資料表結構 `shop_info`
--

CREATE TABLE `shop_info` (
  `shop_id` int NOT NULL COMMENT '門市編號',
  `area_id` int NOT NULL COMMENT '門市區域編號',
  `shop_name` varchar(50) NOT NULL COMMENT '門市名稱',
  `shop_address` varchar(100) NOT NULL COMMENT '門市地址',
  `shop_tel` varchar(50) NOT NULL COMMENT '門市電話',
  `day_id` int NOT NULL COMMENT '午間營業時間編號',
  `night_id` int NOT NULL COMMENT '晚間營業時間編號',
  `info_detail` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '門市詳述',
  `info_traffic` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '交通資訊',
  `info_parking` varchar(50) DEFAULT NULL COMMENT '停車資訊'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='門市資訊資料表';

--
-- 傾印資料表的資料 `shop_info`
--

INSERT INTO `shop_info` (`shop_id`, `area_id`, `shop_name`, `shop_address`, `shop_tel`, `day_id`, `night_id`, `info_detail`, `info_traffic`, `info_parking`) VALUES
(1, 5, '高雄左營店', '高雄市左營區文守路196號', '07-963-5566', 1, 1, '牆面上的墨鏡與懸掛式冰塊燈，營造如繁星般光影變化，讓整體空間增添獨特寧靜感! 位處捷運巨蛋站，緊鄰「健康、休憩、購物」三合一多功能體育園區，不遠處即是熱鬧漢神巨蛋商圈及世運會主場地巨蛋，可欣賞建築藝術，或者不定期舉辦的演唱會活動。', '捷運- 【巨蛋站2號出口】對面。', '裕誠路472巷有私人收費停車場。'),
(2, 5, '高雄前金店', '高雄市前金區中正路250號', '07-223-7755', 1, 1, '鄰近河堤社區，座落在人文薈萃的文教區域，以和風雅緻的用餐環境，迎接每一位貴賓的蒞臨。用餐後還可以到河堤公園悠閒散步，感受住宅區靜懿悠閒的氣氛。', '鄰近捷運紅線生態園區站', '河堤路路邊收費停車格$30/H'),
(3, 5, '高雄駁二店', '高雄市鹽埕區大義街150號', '07-223-7788', 1, 1, '花園裡的餐桌，淺木紋點綴綠色元素，呈現簡約、溫馨自然氛圍，共享恬靜的餐桌響宴。鄰近的駁二藝術特區是您飯後散步的號好去處', '鄰近捷運橘線鹽埕埔站', '車堡寶停車場（平假日40/HR)'),
(4, 5, '高雄鳳山店', '高雄市鳳山區青年路211號', '07-223-1122', 1, 1, '周邊交通便利並備有捷運接駁車可到達。店內以人文和風的書香裝潢，打造舒適溫馨的用餐氛圍，是家庭聚餐及商務聚餐的最佳選擇！', '鄰近捷運橘線鳳山站', '路邊停車格'),
(5, 5, '屏東站前店', '屏東縣屏東市民族路850號', '08-226-135', 1, 1, '店內以舒適的木紋搭配書香風格的裝置藝術，讓這溫暖的城市，增添人文氣質。分店座落於熱鬧的太平洋百貨商圈，臨近屏東美術館、中正公園，讓您以綠光森林佐餐，細細品味美食饗宴。', '公車- 搭乘市區公車於【警察局站】下車', '中華路與林森路交接口樂活停車場汽車每小時收費20元。'),
(6, 4, '台南忠義店', '台南市中西區忠義路二段20號', '06-221-7600', 1, 1, '揉合幾何圖形剪影與垂直立線的美感表現，讓空間散發一股品味風格，位於台南府城藝文、人文薈萃聚集處，鄰近台灣文學館及孔廟，瀰漫濃濃學術氣息，與店內書櫃展示架相互呼應，有著如沐春風的輕鬆。', '公車- 藍幹線/林百貨(忠義路)。', '【美術館地下停車場】24小時對外營業。平日30元/時；假日40元/時'),
(7, 4, '台南大學店', '台南市東區大學路18號2樓', '06-200-6189', 1, 1, '座落於台南成大校區的成大綜合商場內，提供學生聚會或犒賞慶祝的最佳去處!空間設計以「一頁成大」為主軸，現代新和風的設計風格結合木質書櫃隔間，有如漫步書店，正巧與校區獨特的書卷、人文味相互呼應，處處可見的紫色薰衣草識別，增添時尚氣氛。', '公車- 搭乘市區公車(6號線)於成大會館站下車', '成大商場附設地下室【嘟嘟房停車場】，平日每小時收費30元，假日40元。'),
(8, 4, '嘉義林森西店', '嘉義市東區林森西路15號2樓', '05-228-8239', 1, 1, '簡雅的隔間，創造獨特文化品味，是約會、家庭聚餐的最佳選擇，腹地涵蓋著名的圓環及火車站周邊，可至附近的中正公園閒散走走或到噴水圓環盡情購物，享受餐後愜意時', '火車- 嘉義火車站前站-往林森西路直走，經過地下道後，與國華街交叉口。', '鄰近【中正公園地下停車場】及【中央廣場停車場】，每小時皆收費30元。'),
(9, 3, '台中台灣大道店', '台中市西區台灣大道二段36號2樓', '04-2319-9323', 1, 1, '地處台中市最舒適的綠園道路段，緊鄰科博館，遠眺可欣賞窗外綠意街景，溫暖明亮的採光，營造清新透明度，搭配沉穩的內裝家具，猶如散步美術館裡，讓人心曠神怡，是輕鬆減壓的好去處！', '公車- 科學博物館站下。', '科博館三中停車場\n。平日：40元 / 假日：50元'),
(10, 3, '台中河南店', '台中市西屯區河南路二段63號2樓', '04-2452-5731', 1, 1, '室內空間運用金屬線條，搭配溫暖木質書櫃，營造溫馨、現代氣氛，象徵品牌花的薰衣草方塊巧妙融入，展現時尚風華；寬廣的200多個位席，是約會、家庭聚餐、好友聚會最佳選擇，台中最熱鬧的逢甲商圈，又多了一處品嚐美味的好地方!', '公車- 於【青海河南路口】下車，右轉往西屯路方向走。', '【青海停車場】每小時皆收費30元。'),
(11, 3, '彰化東民店', '彰化縣彰化市東民街139號', '04-727-9385', 1, 1, '現代和風設計的獨棟餐廳，溫馨雅緻，讓人備感放鬆，緊臨八卦山風景區下，能直接欣賞八卦山大佛，結合著當地質樸熱情的人文采風，饗食間更能體驗書香人文氛圍。', '公車- 彰化縣縣會、彰化縣文化局站。', '鄰近【華陽立體停車場】及【縣府南郭路停車場】，每小時皆收費30元。'),
(12, 2, '中壢中山店', '桃園市中壢區中山路11號2樓', '03-280-7070', 1, 1, '鄰近中壢火車站以及潮流聖地中平商圈，店內設計以溫暖木色裝潢為主，傳遞人文書香的品牌精神，更成為繁忙都市中，與親友歡聚分享的好去處。', '公車- 請於【農會站】下車，往建國路郵局方向走。', '【中央地下停車場】299格車位：$30/hr'),
(13, 2, '桃園八德店', '桃園市八德區金和路27號2樓', '03-218-2928', 1, 1, '桃園八德的文創美學新據點「桃拾生活廣場」，地點位於介壽路、金和路口熱鬧的大潤發商圈，讓人在享用完和風饗宴後，還可以順道採買購物，或是在周邊公園綠蔭漫步，愜意度過餐後美好時光。', '公車- 大湳辦事處下車，往大和路右轉共5-7分鐘路程。', '桃拾生活廣場周邊附設停車格皆可停。'),
(14, 2, '新竹光復店', '新竹市東區光復路一段30號', '03-561-7168', 1, 1, '簡約書卷風格中帶有書香花園的氣息，有如家的溫暖與舒適感。', '火車：新竹火車站下車後往後站方向東南街接食品路步行約 1.1 公里（15 分鐘左右）', '頂竹圍停車場，步行約5-7分鐘，每小時收費20元。'),
(15, 2, '竹北光明店', '新竹縣竹北市光明六路東一段150號', '03-550-0153', 1, 1, '隔間設計以飛機機翼獨特的菱角線條，巧妙地營造視覺穿透感；摟空交錯的幾何書架、以簡單、溫馨裝置藝術妝點，若隱若現間，舒緩了都市專有的緊張、忙碌；光影折射灑落牆面，以科技聞名的竹塹風城，也柔軟地增添了人文的溫度。', '竹北市免費公車: 搭乘至體育館站，往光明六路東一段及莊敬南路交叉口步行約5-10分鐘。', '新竹縣體育館停車場每小時收費20元。'),
(16, 1, '台北光復南店', '台北市大安區光復南路28號B1', '02-2741-1600  ', 1, 1, '以溫暖木色為基調搭配柔和光線，打造明亮的人文書香空間，也讓人全然放鬆地徜徉在舒適的用餐氛圍中。 分店鄰近國父紀念館，沿著忠孝東路往信義區方向走，能遠眺101大樓，還有信義商圈，新光三越，華納威秀影城等，享受用餐後的休憩時光。', '捷運- 【國父紀念館3號出口】出來直接左轉，分店位於斜對角的麥當勞隔壁。', '【國父紀念館平面停車場】以及後方的【僑安地下室停車場】，皆為一小時40元。'),
(17, 1, '台北南京東店', '台北市中山區南京東路二段178號2樓', '02-2504-1711', 1, 1, '緊鄰南京金融商圈，位於二樓雅緻的面窗用餐環境，可一邊享受美食一邊觀賞大都會的車水馬龍。鄰近伊通商圈，巷弄間有各式飾品、服飾店，還可散步到充滿當代藝術氣息的伊通公園欣賞畫作。', '捷運-【松江南京4號出口(手扶梯)】出來後至南京東路口右轉。', '建國高架橋下收費停車場/1小時40元。'),
(18, 1, '板橋新埔店', '新北市板橋區文化路一段30號2F', '02-2255-2900', 1, 1, '位於板橋捷運新埔站「三猿廣場」2樓，地點便利，不管搭乘捷運或是開車皆十分方便。在享用完和風料理後，還可以順道鄰近商圈採買購物，或是在周邊優閒漫步，愜意度過餐後美好時光。', '捷運新埔站4號出口無須出站，搭乘電梯往三猿廣場2F，即可抵達!', '【三猿廣場停車場】\n\n周日~周四營業至晚間9:30。\n\n周五、周六及例假日前一日營業至晚間10:00'),
(19, 1, '淡水市鎮店', '新北市淡水區中山北路二段38號3樓', '02-2623-7515', 1, 1, '淡水新市鎮店，以淺木紋為主色，呈現主體自然色彩,用餐體驗希望提供最優質的餐點及有溫度的服務，寬廣舒適空間規劃，適合闔家聚餐同樂，一同享受閑靜的用餐時光。', '淡水輕軌: 淡海輕軌綠山線到淡水行政中心站下車,步行往中山北路二段及濱海路交叉口即可抵達。', '地點:淡新家樂福地下停車場,40元/小時'),
(20, 1, '基隆信一店', '基隆市中正區信一路177號', '02-2425-5500', 1, 1, '基隆分店座落於基隆市區最高的大樓中，店內充滿著書香人文氣息，享用美味同時眺望基隆港景色，最適合家庭用餐與朋友聚會，餐後可以散步到鄰近的基隆海港，享受生活的微加幸福。', '公車– 循環站下車。', '【東岸停車場】平假日$30元/H。');

-- --------------------------------------------------------

--
-- 資料表結構 `specialdates_coupon`
--

CREATE TABLE `specialdates_coupon` (
  `Mname` varchar(50) NOT NULL COMMENT '會員姓名',
  `Mid` int NOT NULL COMMENT '會員編號',
  `Msex` enum('''男性''','''女性''') NOT NULL COMMENT '會員性別',
  `Mbirthday` date NOT NULL COMMENT '會員生日',
  `Memail` varchar(50) NOT NULL COMMENT '會員電子信箱',
  `Mphone` int NOT NULL COMMENT '會員手機號碼',
  `Mchild` enum('''有''','''無''') NOT NULL COMMENT '會員有無子女',
  `Mvocation` varchar(50) NOT NULL COMMENT '會員職業'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='特殊節日及生日優惠券(不公開顯示)';

-- --------------------------------------------------------

--
-- 資料表結構 `store`
--

CREATE TABLE `store` (
  `id` int NOT NULL COMMENT '分店編號',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '分店名稱',
  `picture` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '分店圖片',
  `address` varchar(255) NOT NULL COMMENT '分店地址 ',
  `phone` varchar(255) NOT NULL COMMENT '電話'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- 傾印資料表的資料 `store`
--

INSERT INTO `store` (`id`, `name`, `picture`, `address`, `phone`) VALUES
(1, '高雄左營店', 'zuoying.jpg', '高雄市左營區文守路196號', '07-963-5566'),
(2, '高雄前金店', 'qianjin.jpg', '高雄市前金區中正路250號', '07-223-7755'),
(3, '高雄駁二店', 'pier2.jpg', '高雄市鹽埕區大義街150號', '07-223-7788'),
(4, '高雄鳳山店', 'fengshan.jpg', '高雄市鳳山區青年路211號', '07-223-1122'),
(5, '屏東站前店', 'pingtungstation.jpg', '屏東縣屏東市民族路850號', '08-226-135');

-- --------------------------------------------------------

--
-- 資料表結構 `sub_class`
--

CREATE TABLE `sub_class` (
  `sclass_id` varchar(10) NOT NULL COMMENT '次類別編號',
  `sclass_name` varchar(50) NOT NULL COMMENT '次類別名稱'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='品號次類別';

--
-- 傾印資料表的資料 `sub_class`
--

INSERT INTO `sub_class` (`sclass_id`, `sclass_name`) VALUES
('0', '(食材)其他'),
('1', '(食材)海鮮'),
('2', '(食材)家禽'),
('3', '(食材)家畜'),
('4', '(食材)蔬果植物'),
('5', '(食材)調味料'),
('A', '(產品)小菜/點心'),
('B', '(產品)主食'),
('C', '(產品)湯品'),
('D', '(產品)飲料'),
('E', '(產品)甜點'),
('F', '(產品)冷凍包裝食品'),
('G', '(產品)常溫包裝食品'),
('X', '(產品)其他');

-- --------------------------------------------------------

--
-- 資料表結構 `vendor`
--

CREATE TABLE `vendor` (
  `vendor_id` int NOT NULL COMMENT '供應商編號',
  `vendor_name` varchar(50) DEFAULT NULL COMMENT '供應商名稱',
  `vendor_desc` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '供應商全名',
  `vendor_tel` varchar(50) DEFAULT NULL COMMENT '供應商電話',
  `vendor_address` varchar(100) DEFAULT NULL COMMENT '供應商地址'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='供應商主檔';

--
-- 傾印資料表的資料 `vendor`
--

INSERT INTO `vendor` (`vendor_id`, `vendor_name`, `vendor_desc`, `vendor_tel`, `vendor_address`) VALUES
(1, '樂食町', '樂食町餐飲有限公司', '07-12345678', '高雄市鹽埕區樂食町1番地'),
(2, '源食', '源食食品材料行', '07-3358776', '高雄市鳳山區勝利路999號'),
(3, '達昌', '達昌肉舖行', '07-3535762', '高雄市岡山區岡興路256巷7號'),
(4, '莘農', '莘農蔬果批發有限公司', '07-5566331', '高雄市阿蓮區蓮池路66號'),
(5, '勝餘', '勝餘水產批發行', '07-8763325', '高雄市永安區永達路28號');

-- --------------------------------------------------------

--
-- 替換檢視表以便查看 `view_shop`
-- (請參考以下實際畫面)
--
CREATE TABLE `view_shop` (
`area_name` varchar(10)
,`shop_id` int
,`shop_name` varchar(50)
,`shop_address` varchar(100)
,`shop_tel` varchar(50)
,`day_content` varchar(100)
,`night_content` varchar(100)
,`info_detail` varchar(150)
,`info_traffic` varchar(50)
,`info_parking` varchar(50)
);

-- --------------------------------------------------------

--
-- 資料表結構 `voting_results`
--

CREATE TABLE `voting_results` (
  `UserID` int NOT NULL COMMENT '會員ID(投票數)',
  `MealID1` varchar(30) NOT NULL COMMENT '餐點ID(最高票)',
  `Meal_img1` int NOT NULL COMMENT '餐點照片(最高票)',
  `MealID2` varchar(30) NOT NULL COMMENT '餐點ID(票數第二名)',
  `Meal_img2` int NOT NULL COMMENT '餐點照片(票數第二名)',
  `MealID3` varchar(30) NOT NULL COMMENT '餐點ID(票數第三名)',
  `Meal_img3` int NOT NULL COMMENT '餐點照片(票數第三名)',
  `MealID4` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '餐點ID(票數第四名)',
  `Meal_img4` int NOT NULL COMMENT '餐點照片(票數第四名)',
  `time` datetime NOT NULL COMMENT '時間'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='投票結果資料表';

-- --------------------------------------------------------

--
-- 檢視表結構 `view_shop`
--
DROP TABLE IF EXISTS `view_shop`;

CREATE ALGORITHM=UNDEFINED DEFINER=`John`@`%` SQL SECURITY DEFINER VIEW `view_shop`  AS SELECT `area`.`area_name` AS `area_name`, `sh`.`shop_id` AS `shop_id`, `sh`.`shop_name` AS `shop_name`, `sh`.`shop_address` AS `shop_address`, `sh`.`shop_tel` AS `shop_tel`, `day`.`day_content` AS `day_content`, `night`.`night_content` AS `night_content`, `sh`.`info_detail` AS `info_detail`, `sh`.`info_traffic` AS `info_traffic`, `sh`.`info_parking` AS `info_parking` FROM (((`shop_info` `sh` join `hour_day` `day` on((`sh`.`day_id` = `day`.`day_id`))) join `hour_night` `night` on((`sh`.`night_id` = `night`.`night_id`))) join `shop_area` `area` on((`sh`.`area_id` = `area`.`area_id`))) ;

--
-- 已傾印資料表的索引
--

--
-- 資料表索引 `best_meal_vote`
--
ALTER TABLE `best_meal_vote`
  ADD KEY `id` (`id`);

--
-- 資料表索引 `booking`
--
ALTER TABLE `booking`
  ADD PRIMARY KEY (`id`),
  ADD KEY `member_id` (`member_id`);

--
-- 資料表索引 `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `creative_recipes`
--
ALTER TABLE `creative_recipes`
  ADD PRIMARY KEY (`cr_id`),
  ADD KEY `match_id` (`match_id`),
  ADD KEY `member_id` (`member_id`);

--
-- 資料表索引 `departments`
--
ALTER TABLE `departments`
  ADD PRIMARY KEY (`department_id`);

--
-- 資料表索引 `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`employee_id`),
  ADD KEY `job_id` (`job_id`),
  ADD KEY `department_id` (`department_id`);

--
-- 資料表索引 `hour_day`
--
ALTER TABLE `hour_day`
  ADD PRIMARY KEY (`day_id`);

--
-- 資料表索引 `hour_night`
--
ALTER TABLE `hour_night`
  ADD PRIMARY KEY (`night_id`);

--
-- 資料表索引 `inv_unit`
--
ALTER TABLE `inv_unit`
  ADD PRIMARY KEY (`unit_id`);

--
-- 資料表索引 `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`job_id`);

--
-- 資料表索引 `latest_news`
--
ALTER TABLE `latest_news`
  ADD PRIMARY KEY (`sid`);

--
-- 資料表索引 `main_class`
--
ALTER TABLE `main_class`
  ADD PRIMARY KEY (`mclass_id`);

--
-- 資料表索引 `meal_time`
--
ALTER TABLE `meal_time`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `member`
--
ALTER TABLE `member`
  ADD PRIMARY KEY (`MID`) USING BTREE,
  ADD UNIQUE KEY `Memail` (`Memail`);

--
-- 資料表索引 `nutrition_label`
--
ALTER TABLE `nutrition_label`
  ADD PRIMARY KEY (`nl_id`);

--
-- 資料表索引 `order`
--
ALTER TABLE `order`
  ADD PRIMARY KEY (`sid`);

--
-- 資料表索引 `orderdetail`
--
ALTER TABLE `orderdetail`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_id` (`order_id`);

--
-- 資料表索引 `period`
--
ALTER TABLE `period`
  ADD PRIMARY KEY (`period_id`);

--
-- 資料表索引 `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `products_comment`
--
ALTER TABLE `products_comment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `member_id` (`member_id`);

--
-- 資料表索引 `product_2`
--
ALTER TABLE `product_2`
  ADD PRIMARY KEY (`product_id`),
  ADD KEY `period_id` (`period_id`),
  ADD KEY `unit_id` (`unit_id`),
  ADD KEY `vendor_id` (`vendor_id`);

--
-- 資料表索引 `recipeslist`
--
ALTER TABLE `recipeslist`
  ADD PRIMARY KEY (`Recipes_ID`);

--
-- 資料表索引 `recipes_match`
--
ALTER TABLE `recipes_match`
  ADD PRIMARY KEY (`match_id`),
  ADD KEY `fnl_id` (`nl_id`),
  ADD KEY `cr_id` (`cr_id`);

--
-- 資料表索引 `shop_area`
--
ALTER TABLE `shop_area`
  ADD PRIMARY KEY (`area_id`);

--
-- 資料表索引 `shop_info`
--
ALTER TABLE `shop_info`
  ADD PRIMARY KEY (`shop_id`);

--
-- 資料表索引 `store`
--
ALTER TABLE `store`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `sub_class`
--
ALTER TABLE `sub_class`
  ADD PRIMARY KEY (`sclass_id`);

--
-- 資料表索引 `vendor`
--
ALTER TABLE `vendor`
  ADD PRIMARY KEY (`vendor_id`);

--
-- 在傾印的資料表使用自動遞增(AUTO_INCREMENT)
--

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `booking`
--
ALTER TABLE `booking`
  MODIFY `id` int NOT NULL AUTO_INCREMENT COMMENT '訂位編號', AUTO_INCREMENT=188;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `contact`
--
ALTER TABLE `contact`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `creative_recipes`
--
ALTER TABLE `creative_recipes`
  MODIFY `cr_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `employees`
--
ALTER TABLE `employees`
  MODIFY `employee_id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `inv_unit`
--
ALTER TABLE `inv_unit`
  MODIFY `unit_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `latest_news`
--
ALTER TABLE `latest_news`
  MODIFY `sid` int NOT NULL AUTO_INCREMENT COMMENT '最新消息編號', AUTO_INCREMENT=1111134;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `meal_time`
--
ALTER TABLE `meal_time`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `member`
--
ALTER TABLE `member`
  MODIFY `MID` int NOT NULL AUTO_INCREMENT COMMENT '會員編碼', AUTO_INCREMENT=60;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `nutrition_label`
--
ALTER TABLE `nutrition_label`
  MODIFY `nl_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `order`
--
ALTER TABLE `order`
  MODIFY `sid` int NOT NULL AUTO_INCREMENT COMMENT '訂單編號', AUTO_INCREMENT=335;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `orderdetail`
--
ALTER TABLE `orderdetail`
  MODIFY `id` int NOT NULL AUTO_INCREMENT COMMENT '編號', AUTO_INCREMENT=493;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `period`
--
ALTER TABLE `period`
  MODIFY `period_id` int NOT NULL AUTO_INCREMENT COMMENT '供應時段編號', AUTO_INCREMENT=6;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `products`
--
ALTER TABLE `products`
  MODIFY `id` int NOT NULL AUTO_INCREMENT COMMENT '商品編號', AUTO_INCREMENT=50;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `products_comment`
--
ALTER TABLE `products_comment`
  MODIFY `id` int NOT NULL AUTO_INCREMENT COMMENT '編號', AUTO_INCREMENT=282;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `recipeslist`
--
ALTER TABLE `recipeslist`
  MODIFY `Recipes_ID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `recipes_match`
--
ALTER TABLE `recipes_match`
  MODIFY `match_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `store`
--
ALTER TABLE `store`
  MODIFY `id` int NOT NULL AUTO_INCREMENT COMMENT '分店編號', AUTO_INCREMENT=6;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `vendor`
--
ALTER TABLE `vendor`
  MODIFY `vendor_id` int NOT NULL AUTO_INCREMENT COMMENT '供應商編號', AUTO_INCREMENT=6;

--
-- 已傾印資料表的限制式
--

--
-- 資料表的限制式 `best_meal_vote`
--
ALTER TABLE `best_meal_vote`
  ADD CONSTRAINT `best_meal_vote_ibfk_1` FOREIGN KEY (`id`) REFERENCES `product_2` (`product_id`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- 資料表的限制式 `booking`
--
ALTER TABLE `booking`
  ADD CONSTRAINT `booking_ibfk_1` FOREIGN KEY (`member_id`) REFERENCES `member` (`MID`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- 資料表的限制式 `creative_recipes`
--
ALTER TABLE `creative_recipes`
  ADD CONSTRAINT `creative_recipes_ibfk_1` FOREIGN KEY (`match_id`) REFERENCES `recipes_match` (`match_id`),
  ADD CONSTRAINT `creative_recipes_ibfk_2` FOREIGN KEY (`member_id`) REFERENCES `member` (`MID`);

--
-- 資料表的限制式 `employees`
--
ALTER TABLE `employees`
  ADD CONSTRAINT `employees_ibfk_1` FOREIGN KEY (`job_id`) REFERENCES `jobs` (`job_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `employees_ibfk_2` FOREIGN KEY (`department_id`) REFERENCES `departments` (`department_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 資料表的限制式 `orderdetail`
--
ALTER TABLE `orderdetail`
  ADD CONSTRAINT `orderdetail_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `order` (`sid`) ON DELETE CASCADE ON UPDATE RESTRICT;

--
-- 資料表的限制式 `products_comment`
--
ALTER TABLE `products_comment`
  ADD CONSTRAINT `products_comment_ibfk_1` FOREIGN KEY (`member_id`) REFERENCES `member` (`MID`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- 資料表的限制式 `product_2`
--
ALTER TABLE `product_2`
  ADD CONSTRAINT `product_2_ibfk_1` FOREIGN KEY (`period_id`) REFERENCES `period` (`period_id`),
  ADD CONSTRAINT `product_2_ibfk_2` FOREIGN KEY (`unit_id`) REFERENCES `inv_unit` (`unit_id`),
  ADD CONSTRAINT `product_2_ibfk_3` FOREIGN KEY (`vendor_id`) REFERENCES `vendor` (`vendor_id`);

--
-- 資料表的限制式 `recipes_match`
--
ALTER TABLE `recipes_match`
  ADD CONSTRAINT `recipes_match_ibfk_1` FOREIGN KEY (`cr_id`) REFERENCES `creative_recipes` (`cr_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
