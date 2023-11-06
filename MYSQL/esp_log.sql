-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Nov 06, 2023 at 01:45 PM
-- Server version: 8.0.30
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `esp_log`
--

-- --------------------------------------------------------

--
-- Table structure for table `station1`
--

CREATE TABLE `station1` (
  `id` int UNSIGNED NOT NULL,
  `suhu` double NOT NULL,
  `kelembaban` double NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `station1`
--

INSERT INTO `station1` (`id`, `suhu`, `kelembaban`, `created_at`) VALUES
(1, 56, 15, '2023-11-06 13:39:54'),
(2, 38, 55, '2023-11-06 13:40:04'),
(3, 53, 16, '2023-11-06 13:40:14'),
(4, 96, 27, '2023-11-06 13:40:24'),
(5, 77, 60, '2023-11-06 13:40:34'),
(6, 90, 4, '2023-11-06 13:40:44'),
(7, 59, 45, '2023-11-06 13:40:54'),
(8, 75, 16, '2023-11-06 13:41:04'),
(9, 6, 96, '2023-11-06 13:41:14'),
(10, 63, 12, '2023-11-06 13:41:24'),
(11, 23, 60, '2023-11-06 13:41:34'),
(12, 79, 33, '2023-11-06 13:41:44'),
(13, 40, 61, '2023-11-06 13:41:54'),
(14, 85, 50, '2023-11-06 13:42:04'),
(15, 68, 93, '2023-11-06 13:42:14'),
(16, 34, 1, '2023-11-06 13:42:24'),
(17, 69, 63, '2023-11-06 13:42:34'),
(18, 51, 34, '2023-11-06 13:42:44'),
(19, 81, 53, '2023-11-06 13:42:54'),
(20, 50, 32, '2023-11-06 13:43:04'),
(21, 41, 64, '2023-11-06 13:43:15'),
(22, 25, 20, '2023-11-06 13:43:25'),
(23, 15, 31, '2023-11-06 13:43:35'),
(24, 63, 79, '2023-11-06 13:44:07'),
(25, 45, 4, '2023-11-06 13:44:17'),
(26, 73, 94, '2023-11-06 13:44:27'),
(27, 30, 95, '2023-11-06 13:44:37'),
(28, 93, 59, '2023-11-06 13:44:47'),
(29, 64, 72, '2023-11-06 13:44:57'),
(30, 22, 46, '2023-11-06 13:45:07');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `station1`
--
ALTER TABLE `station1`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `station1`
--
ALTER TABLE `station1`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
