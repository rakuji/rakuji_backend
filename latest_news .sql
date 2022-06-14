-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- 主機： 127.0.0.1
-- 產生時間： 2022-06-14 17:43:58
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
(1111114, '安心測試食用', '20949bf5e91cdbf153bbbe4713a412aa08d20ff2.jpg', '2022-02-22', '0222-02-25', '活動');

--
-- 已傾印資料表的索引
--

--
-- 資料表索引 `latest_news`
--
ALTER TABLE `latest_news`
  ADD PRIMARY KEY (`sid`);

--
-- 在傾印的資料表使用自動遞增(AUTO_INCREMENT)
--

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `latest_news`
--
ALTER TABLE `latest_news`
  MODIFY `sid` int NOT NULL AUTO_INCREMENT COMMENT '最新消息編號', AUTO_INCREMENT=1111116;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
