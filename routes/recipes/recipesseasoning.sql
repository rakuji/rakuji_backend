-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- 主機： 127.0.0.1
-- 產生時間： 2022-06-14 12:23:33
-- 伺服器版本： 10.4.24-MariaDB
-- PHP 版本： 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 資料庫： `rakuji`
--

-- --------------------------------------------------------

--
-- 資料表結構 `recipesseasoning`
--

CREATE TABLE `recipesseasoning` (
  `RecipesSeasoning_ID` int(11) NOT NULL,
  `RecipesSeasoning_Name` varchar(255) NOT NULL,
  `RecipeSseasoning_Quantity` varchar(255) NOT NULL,
  `Recipes_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
(58, '砂糖', '20g', 30);

--
-- 已傾印資料表的索引
--

--
-- 資料表索引 `recipesseasoning`
--
ALTER TABLE `recipesseasoning`
  ADD PRIMARY KEY (`RecipesSeasoning_ID`);

--
-- 在傾印的資料表使用自動遞增(AUTO_INCREMENT)
--

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `recipesseasoning`
--
ALTER TABLE `recipesseasoning`
  MODIFY `RecipesSeasoning_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
