-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 30, 2022 at 09:36 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `messanger`
--

-- --------------------------------------------------------

--
-- Table structure for table `chat`
--

CREATE TABLE `chat` (
  `id` int(3) NOT NULL,
  `fname` varchar(15) NOT NULL,
  `lname` varchar(15) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(20) NOT NULL,
  `date_chat` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `chat`
--

INSERT INTO `chat` (`id`, `fname`, `lname`, `username`, `password`, `date_chat`) VALUES
(1, '', '', '', '', 'monday'),
(2, '', '', '', '', 'monday'),
(3, 'Kabiru', 'kolawole', 'kkolawole', '12345', 'monday'),
(4, '', '', '', '', 'monday'),
(5, '', '', '', '', 'monday'),
(6, '', '', '', '', 'monday'),
(7, '', '', '', '', 'monday'),
(8, '', '', '', '', 'monday'),
(9, '', '', '', '', 'monday'),
(10, 'idris', 'kolade', 'idris', 'kolad', 'monday'),
(11, 'idris', 'kolade', 'idris', 'kolad', 'monday'),
(12, 'idris', 'kolade', 'idris', 'kolad', 'monday'),
(13, '', '', '', '', 'monday'),
(14, '', '', '', '', 'monday'),
(15, '', '', '', '', 'monday'),
(16, '', '', '', '', 'monday'),
(17, '', '', '', '', 'monday'),
(18, '', '', '', '', 'monday'),
(19, '', '', '', '', 'monday'),
(20, '', '', '', '', 'monday'),
(21, '', '', '', '', 'monday'),
(22, '', '', '', '', 'monday'),
(23, '', '', '', '', 'monday'),
(24, '', '', '', '', 'monday'),
(25, '', '', '', '', 'monday'),
(26, '', '', '', '', 'monday'),
(27, '', '', '', '', 'monday'),
(28, '', '', '', '', 'monday'),
(29, '', '', '', '', 'monday'),
(30, '', '', '', '', 'monday'),
(31, '', '', '', '', 'monday'),
(32, '', '', '', '', 'monday'),
(33, '', '', '', '', 'monday'),
(34, '', '', '', '', 'monday'),
(35, '', '', '', '', 'monday'),
(36, '', '', '', '', 'monday'),
(37, '', '', '', '', 'monday'),
(38, '', '', '', '', 'monday'),
(39, '', '', '', '', 'monday'),
(40, '', '', '', '', 'monday'),
(41, '', '', '', '', 'monday'),
(42, '', '', '', '', 'monday'),
(43, '', '', '', '', 'monday'),
(44, '', '', '', '', 'monday'),
(45, '', '', '', '', 'monday'),
(46, '', '', '', '', 'monday'),
(47, '', '', '', '', 'monday'),
(48, '', '', '', '', 'monday'),
(49, '', '', '', '', 'monday'),
(50, '', '', '', '', 'monday'),
(51, '', '', '', '', 'monday'),
(52, '', '', '', '', 'monday'),
(53, '', '', '', '', 'monday'),
(54, '', '', '', '', 'monday'),
(55, '', '', '', '', 'monday'),
(56, '', '', '', '', 'monday'),
(57, '', '', '', '', 'monday');

-- --------------------------------------------------------

--
-- Table structure for table `chat2`
--

CREATE TABLE `chat2` (
  `id` int(11) NOT NULL,
  `fname` text NOT NULL,
  `lname` text NOT NULL,
  `username` varchar(125) NOT NULL,
  `password` varchar(125) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `chat2`
--

INSERT INTO `chat2` (`id`, `fname`, `lname`, `username`, `password`) VALUES
(1, 'goat', 'goat', 'goat', '1234567'),
(2, 'maria', 'maria', 'maria', '1234567');

-- --------------------------------------------------------

--
-- Table structure for table `msg`
--

CREATE TABLE `msg` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `msg` varchar(225) NOT NULL,
  `date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `msg`
--

INSERT INTO `msg` (`id`, `name`, `msg`, `date`) VALUES
(1, 'goat', 'what is your name please', '2022-11-30 00:44:28'),
(2, 'goat', 'sssd', '2022-11-30 07:18:53'),
(3, 'maria', 'hello', '2022-11-30 07:21:28'),
(4, 'maria', 'how are you', '2022-11-30 07:22:50'),
(5, 'maria', 'hi', '2022-11-30 07:24:48'),
(6, 'maria', 'hi', '2022-11-30 07:32:31'),
(7, 'maria', 'hello', '2022-11-30 07:55:18'),
(8, 'maria', 'how are you', '2022-11-30 08:00:57'),
(9, 'maria', 'hi', '2022-11-30 08:22:47'),
(10, 'maria', 'hello', '2022-11-30 09:28:49'),
(11, 'goat', 'hwehuifhuwefioejferfuwfiewuforwehfvuiwegyyfofgi09efuody8wpiqahfuied', '2022-11-30 09:30:41');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `chat`
--
ALTER TABLE `chat`
  ADD KEY `id` (`id`);

--
-- Indexes for table `chat2`
--
ALTER TABLE `chat2`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `msg`
--
ALTER TABLE `msg`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `chat`
--
ALTER TABLE `chat`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT for table `chat2`
--
ALTER TABLE `chat2`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `msg`
--
ALTER TABLE `msg`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
