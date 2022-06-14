-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- 主機： 127.0.0.1
-- 產生時間： 2022-06-14 12:23:19
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
-- 資料表結構 `recipeslist`
--

CREATE TABLE `recipeslist` (
  `Recipes_ID` int(11) NOT NULL,
  `Recipes_Name` varchar(50) NOT NULL,
  `Recipes_Clicks` int(11) NOT NULL,
  `Recipes_Time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `Recipes_Picture` varchar(50) NOT NULL,
  `RecipesBox_Kcal` float NOT NULL,
  `RecipesBox_Time` int(11) NOT NULL,
  `RecipesBox_SeveralCopies` int(11) NOT NULL,
  `RecipesClass` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- 傾印資料表的資料 `recipeslist`
--

INSERT INTO `recipeslist` (`Recipes_ID`, `Recipes_Name`, `Recipes_Clicks`, `Recipes_Time`, `Recipes_Picture`, `RecipesBox_Kcal`, `RecipesBox_Time`, `RecipesBox_SeveralCopies`, `RecipesClass`) VALUES
(1, '蛋包飯', 0, '2022-06-13 06:05:21', '蛋包飯.jpg', 759.1, 50, 1, '主食'),
(2, '日式唐楊雞', 35535, '2022-06-10 07:06:46', '日式唐楊雞.jpg', 417, 43, 3, '主菜'),
(3, '可樂餅', 99, '2022-06-13 08:51:01', '可樂餅.jpg', 444, 36, 4, '前菜'),
(4, '明太子義大利麵', 3, '2022-06-13 01:33:20', '明太子義大利麵.jpg', 645, 43, 3, '主食'),
(5, '奶油鮮菇濃湯', 0, '2022-06-02 02:54:54', '奶油鮮菇濃湯.jpeg', 370, 10, 2, '湯品'),
(6, '青蔬鮭魚濃湯', 1, '2022-06-14 09:13:57', '青蔬鮭魚濃湯.jpeg', 164, 19, 1, '湯品'),
(7, '白醬奶油煙燻鮭魚義大利麵', 0, '2022-06-02 02:54:54', '白醬奶油煙燻鮭魚義大利麵.jpeg', 577, 38, 1, '主食'),
(8, '日式火腿干酪熱三明治', 0, '2022-06-02 02:54:54', '日式火腿干酪熱三明治.jpeg', 291, 50, 3, '主食'),
(9, '拿坡里義大利麵', 3, '2022-06-14 09:11:36', '拿坡里義大利麵.jpg', 727, 32, 1, '主食'),
(10, '日式唐楊雞', 2, '2022-06-14 09:32:48', '日式唐楊雞.jpg', 700, 25, 2, '主菜'),
(11, '蛋包飯', 9, '2022-06-14 08:06:40', '蛋包飯.jpg', 498, 23, 2, '主食'),
(12, '拿坡里義大利麵', 1, '2022-06-13 09:34:26', '拿坡里義大利麵.jpg', 439, 36, 2, '主食'),
(13, '青蔬鮭魚濃湯', 3, '2022-06-14 09:27:37', '青蔬鮭魚濃湯.jpeg', 531, 41, 2, '湯品'),
(14, '日式唐楊雞', 3, '2022-06-14 09:27:29', '日式唐楊雞.jpg', 523, 37, 3, '主菜'),
(15, '可樂餅', 57, '2022-06-13 07:34:11', '可樂餅.jpg', 753, 43, 3, '前菜'),
(16, '日式火腿干酪熱三明治', 2, '2022-06-14 09:32:45', '日式火腿干酪熱三明治.jpeg', 710, 38, 4, '主食'),
(25, '北非蛋', 10, '2022-06-13 09:36:07', '北非蛋.jpg', 233.4, 50, 1, '前菜'),
(26, '奶茶', 99, '2022-06-08 05:08:25', '奶茶.PNG', 233.9, 11, 1, '飲品'),
(27, '冰淇淋', 137, '2022-06-14 09:30:44', '冰淇淋.jpg', 323, 33, 1, '甜點'),
(28, '紅茶', 31, '2022-06-14 09:30:50', '紅茶.PNG', 4, 30, 1, '飲品'),
(29, '草莓脆脆酒巧克力', 248, '2022-06-14 09:33:12', '草莓脆脆酒巧克力.jpg', 437, 50, 1, '甜點'),
(30, '鬆餅', 84, '2022-06-14 09:30:40', '鬆餅.jpg', 279.6, 27, 1, '甜點'),
(31, '日式火腿干酪熱三明治', 358, '2022-06-14 10:05:57', '日式火腿干酪熱三明治.jpeg', 299, 28, 1, '主食');

--
-- 已傾印資料表的索引
--

--
-- 資料表索引 `recipeslist`
--
ALTER TABLE `recipeslist`
  ADD PRIMARY KEY (`Recipes_ID`);

--
-- 在傾印的資料表使用自動遞增(AUTO_INCREMENT)
--

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `recipeslist`
--
ALTER TABLE `recipeslist`
  MODIFY `Recipes_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
