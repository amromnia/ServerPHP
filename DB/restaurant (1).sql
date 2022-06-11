-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 11, 2022 at 09:15 PM
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
-- Table structure for table `food`
--

CREATE TABLE `food` (
  `id` int(11) NOT NULL,
  `name` varchar(40) DEFAULT NULL,
  `type` varchar(40) DEFAULT NULL,
  `price` float DEFAULT NULL,
  `description` varchar(255) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `image` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `food`
--

INSERT INTO `food` (`id`, `name`, `type`, `price`, `description`, `createdAt`, `updatedAt`, `image`) VALUES
(1, 'cheesedog', 'sandwitch', 60420, 'a dog coverd in cheese, delicious indeed', '2022-06-07 19:29:07', '2022-06-07 19:29:07', 'na'),
(2, 'margarata', 'pizza', 42069, 'italiano pizzarano koftarano', '2022-06-07 21:19:56', '2022-06-07 21:19:56', ''),
(3, 'chocolata', 'chocobaby', 469, 'this is a description yes no yes yes', '2022-06-10 16:49:53', '2022-06-10 16:49:53', ''),
(69, 'youre', 'ewwwr', 34223, 'dsfadfafdgd', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `order_food`
--

CREATE TABLE `order_food` (
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `orderId` int(11) NOT NULL,
  `foodId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
(147, 'Mohamed', NULL, NULL, 'ueyridhkdj', 'Mohamed', NULL, NULL, 0, '0', '2022-06-06 15:56:13', '2022-06-06 15:56:13');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `food`
--
ALTER TABLE `food`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `order_food`
--
ALTER TABLE `order_food`
  ADD PRIMARY KEY (`orderId`,`foodId`),
  ADD KEY `foodId` (`foodId`);

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
-- AUTO_INCREMENT for table `food`
--
ALTER TABLE `food`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=148;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `order_food`
--
ALTER TABLE `order_food`
  ADD CONSTRAINT `order_food_ibfk_1` FOREIGN KEY (`orderId`) REFERENCES `orders` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `order_food_ibfk_2` FOREIGN KEY (`foodId`) REFERENCES `food` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
