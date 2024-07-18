-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- 主機： 127.0.0.1
-- 產生時間： 2024-07-11 11:50:24
-- 伺服器版本： 8.4.0
-- PHP 版本： 8.1.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 資料庫： `reservations`
--

-- --------------------------------------------------------

--
-- 資料表結構 `members`
--

CREATE TABLE `members` (
  `member_id` int NOT NULL,
  `email` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `password_hash` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `mobile` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `nickname` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `create_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 傾印資料表的資料 `members`
--

INSERT INTO `members` (`member_id`, `email`, `password_hash`, `mobile`, `nickname`, `create_at`) VALUES
(3, 'lyjcolin@gmail.com', '$2y$10$d31g58CoXSdQqX51w5VK1OJ4GC4bMWLxoQbQXDTf/m/lYTZWQBy0u', '0918222333', '帥哥', '2019-01-07 10:39:38'),
(7, 'shin@test.com', '$2y$10$gi7ldq1x0FU64onECqbplOm56LQDqfOBLeN5VaG1C9Z1MsmqfvTSa', '0918222555', '小新', '2020-09-17 10:30:38');

-- --------------------------------------------------------

--
-- 資料表結構 `reservations`
--

CREATE TABLE `reservations` (
  `reserve_id` varchar(10) NOT NULL,
  `customer_name` varchar(50) DEFAULT NULL,
  `contact_number` varchar(15) DEFAULT NULL,
  `store` varchar(10) DEFAULT NULL,
  `reservation_date` date DEFAULT NULL,
  `reservation_time` time DEFAULT NULL,
  `count` int DEFAULT NULL,
  `cancel` tinyint DEFAULT NULL,
  `member_id` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- 傾印資料表的資料 `reservations`
--

INSERT INTO `reservations` (`reserve_id`, `customer_name`, `contact_number`, `store`, `reservation_date`, `reservation_time`, `count`, `cancel`, `member_id`) VALUES
('001', '張雪由', '0985-177-145', '003', '2024-03-16', '11:30:00', 2, 0, 'S001'),
('002', '劉的划', '0965-298-612', '003', '2024-03-16', '13:20:00', 3, 0, 'S002'),
('003', '郭傳程', '0930-645-339', '003', '2024-03-18', '10:30:00', 2, 0, NULL),
('004', '梨敏', '0955-584-415', '006', '2024-03-23', '11:00:00', 4, 0, NULL),
('005', '周心慈', '0996-705-613', '007', '2024-03-30', '14:45:00', 3, 1, 'S005'),
('006', '啟孟', '0925-236-614', '013', '2024-04-01', '11:15:00', 6, 0, NULL),
('007', '鄭依建', '0935-745-615', '013', '2024-04-01', '15:30:00', 3, 0, NULL),
('008', '張楂灰', '0902-214-616', '010', '2024-04-02', '11:00:00', 5, 0, NULL),
('009', '志鱒葆', '0918-155-617', '011', '2024-04-02', '13:00:00', 2, 0, NULL),
('010', '陳筱春', '0920-198-678', '012', '2024-04-02', '14:30:00', 2, 0, 'S010');

--
-- 已傾印資料表的索引
--

--
-- 資料表索引 `members`
--
ALTER TABLE `members`
  ADD PRIMARY KEY (`member_id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- 資料表索引 `reservations`
--
ALTER TABLE `reservations`
  ADD PRIMARY KEY (`reserve_id`);

--
-- 在傾印的資料表使用自動遞增(AUTO_INCREMENT)
--

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `members`
--
ALTER TABLE `members`
  MODIFY `member_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
