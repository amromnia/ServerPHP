-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 11, 2022 at 10:28 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `restaurant`
--

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(30) NOT NULL,
  `fname` varchar(40) DEFAULT NULL,
  `lname` varchar(40) DEFAULT NULL,
  `password` varchar(128) DEFAULT NULL,
  `email` varchar(40) DEFAULT NULL,
  `picture` varchar(40) DEFAULT NULL,
  `nationalID` varchar(40) DEFAULT NULL,
  `isActive` tinyint(1) DEFAULT 0,
  `type` varchar(40) DEFAULT '0',
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `fname`, `lname`, `password`, `email`, `picture`, `nationalID`, `isActive`, `type`, `createdAt`, `updatedAt`) VALUES
(1, '', 'admin', 'admin', 'admin', 'admin@admin.com', '/resources/images/admin.png', '00000000000000', 1, '1', '2022-05-06 19:30:12', '2022-05-06 19:30:12'),
(2, 'user', NULL, NULL, 'pass', 'user@user.com', NULL, NULL, 0, '0', '2022-06-06 15:56:13', '2022-06-06 15:56:13'),
(110, 'vbvbv', NULL, NULL, 'vbvb', 'vbvbv', NULL, NULL, 0, '0', '2022-06-06 15:56:13', '2022-06-06 15:56:13'),
(111, 'dfgdfg', 'fgdfgdg', 'fdgdg', NULL, NULL, NULL, NULL, 0, '0', '2022-06-06 22:31:10', '2022-06-06 22:31:10'),
(112, '', NULL, NULL, '', '', NULL, NULL, 0, '0', '2022-06-06 15:56:13', '2022-06-06 15:56:13'),
(113, 'dfdf', NULL, NULL, 'dfdf', 'dfdf', NULL, NULL, 0, '0', '2022-06-06 15:56:13', '2022-06-06 15:56:13'),
(117, 'dsfdf', NULL, NULL, 'trete', 'dsfdf', NULL, NULL, 0, '0', '2022-06-06 15:56:13', '2022-06-06 15:56:13'),
(119, 'username', NULL, NULL, 'password', 'username', NULL, NULL, 0, '0', '2022-06-06 15:56:13', '2022-06-06 15:56:13'),
(121, 'werwer', NULL, NULL, 'werewr', 'werwer', NULL, NULL, 0, '0', '2022-06-06 15:56:13', '2022-06-06 15:56:13'),
(123, 'gergte', NULL, NULL, 'gdfgh', 'gergte', NULL, NULL, 0, '0', '2022-06-06 15:56:13', '2022-06-06 15:56:13'),
(125, 'joey_mohamad', NULL, NULL, 'thisis pasdf', 'joey_mohamad', NULL, NULL, 0, '0', '2022-06-06 15:56:13', '2022-06-06 15:56:13'),
(127, 'ahmad_sicko', NULL, NULL, 'thisuyryiwer', 'ahmad_sicko', NULL, NULL, 0, '0', '2022-06-06 15:56:13', '2022-06-06 15:56:13'),
(129, 'tyutyu', NULL, NULL, 'tyutyu', 'tyutyu', NULL, NULL, 0, '0', '2022-06-06 15:56:13', '2022-06-06 15:56:13'),
(147, 'Mohamed', NULL, NULL, 'ueyridhkdj', 'Mohamed', NULL, NULL, 0, '0', '2022-06-06 15:56:13', '2022-06-06 15:56:13'),
(149, 'shehabs', NULL, NULL, 'passwords', 'shehabs', NULL, NULL, 0, '0', '2022-06-06 15:56:13', '2022-06-06 15:56:13'),
(159, 'asasas', NULL, NULL, 'asas', 'asasas', NULL, NULL, 0, '0', '2022-06-06 15:56:13', '2022-06-06 15:56:13'),
(161, 'asasasds', NULL, NULL, 'asasas', 'asasasds', NULL, NULL, 0, '0', '2022-06-06 15:56:13', '2022-06-06 15:56:13'),
(163, 'asasasds@mail.com', NULL, NULL, 'asasas', 'asasasds@mail.com', NULL, NULL, 0, '0', '2022-06-06 15:56:13', '2022-06-06 15:56:13'),
(165, 'PEEPO', NULL, NULL, 'asasas', 'PEEPO', NULL, NULL, 0, '0', '2022-06-06 15:56:13', '2022-06-06 15:56:13'),
(169, 'PEEPOs', NULL, NULL, 'asasas', 'PEEPOs', NULL, NULL, 0, '0', '2022-06-06 15:56:13', '2022-06-06 15:56:13');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=170;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
