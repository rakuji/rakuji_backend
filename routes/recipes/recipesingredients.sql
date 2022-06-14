-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- 主機： 127.0.0.1
-- 產生時間： 2022-06-14 12:23:13
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
-- 資料表結構 `recipesingredients`
--

CREATE TABLE `recipesingredients` (
  `RecipesIngredients_ID` int(11) NOT NULL,
  `recipesIngredients_Name` varchar(255) NOT NULL,
  `RecipesIngredients_Quantity` varchar(255) NOT NULL,
  `Recipes_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
(73, '麵粉', '167g', 16);

--
-- 已傾印資料表的索引
--

--
-- 資料表索引 `recipesingredients`
--
ALTER TABLE `recipesingredients`
  ADD PRIMARY KEY (`RecipesIngredients_ID`);

--
-- 在傾印的資料表使用自動遞增(AUTO_INCREMENT)
--

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `recipesingredients`
--
ALTER TABLE `recipesingredients`
  MODIFY `RecipesIngredients_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=74;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
