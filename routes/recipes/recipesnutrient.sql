-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- 主機： 127.0.0.1
-- 產生時間： 2022-06-14 12:23:25
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
-- 資料表結構 `recipesnutrient`
--

CREATE TABLE `recipesnutrient` (
  `RecipesNutrient_ID` int(11) NOT NULL,
  `RecipesNutrient_Name` varchar(255) NOT NULL,
  `RecipesNutrient_Quantity` float NOT NULL,
  `Recipes_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
(68, '鈉(mg)', 16, 16);

--
-- 已傾印資料表的索引
--

--
-- 資料表索引 `recipesnutrient`
--
ALTER TABLE `recipesnutrient`
  ADD PRIMARY KEY (`RecipesNutrient_ID`);

--
-- 在傾印的資料表使用自動遞增(AUTO_INCREMENT)
--

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `recipesnutrient`
--
ALTER TABLE `recipesnutrient`
  MODIFY `RecipesNutrient_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
