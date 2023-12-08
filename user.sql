-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 15, 2022 at 08:48 AM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `user`
--

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `IDuser` int(11) NOT NULL,
  `firstname` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastname` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gender` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `priority` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`IDuser`, `firstname`, `lastname`, `email`, `gender`, `address`, `username`, `password`, `priority`) VALUES
(2, 'Bonnibelle', 'Strippling', 'bstrippling0@miitbeian.gov.cn', 'Genderqueer', '6.107.54.112', 'admin', '123456', 'admin'),
(3, 'Edgar', 'Rawlcliffe', 'erawlcliffe1@joomla.org', 'Polygender', '220.203.102.24', 'user1', '123456', 'user'),
(4, 'Dennie', 'Gerhold', 'dgerhold2@prweb.com', 'Bigender', '134.25.170.67', 'user2', '123456', 'user'),
(5, 'Seana', 'Reubel', 'sreubel3@ameblo.jp', 'Genderqueer', '188.56.6.121', 'user', '123456', 'user'),
(6, 'Avril', 'Quinn', 'aquinn4@smugmug.com', 'Agender', '134.54.29.80', 'user', '123456', 'user'),
(7, 'Honor', 'Apark', 'hapark5@eventbrite.com', 'Polygender', '15.240.64.109', 'user', '123456', 'user'),
(8, 'Annaliese', 'Rosenfield', 'arosenfield6@chron.com', 'NULL', '108.28.178.238', 'user', '123456', 'user'),
(9, 'Heindrick', 'Mathieu', 'hmathieu7@feedburner.com', 'Bigender', '109.63.200.205', 'user', '123456', 'user'),
(10, 'Panithan', 'Kunkaew', 'lovee12345e@hotmail.com', 'Female', '192.168.1.1', 'admin2', '123456', 'user'),
(11, 'Panithan', 'Kunkaew', 'lovee12345e@hotmail.com', 'Male', '192.168.1.23', 'admin3', '123456', 'admin'),
(13, 'Panithan', 'Kunkaew', 'lovee12345e@hotmail.com', 'Male', '192.168.1.23', 'admin4', '123456', 'user'),
(14, 'Panithan', 'Kunkaew', 'lovee12345e@hotmail.com', 'Male', '192.168.1.1', 'admin5', '123456', 'user');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`IDuser`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `IDuser` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
