-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jun 10, 2022 at 04:10 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `Restaurant`
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
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `image` varchar(100) NOT NULL,
  `Description` varchar(450) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `food`
--

INSERT INTO `food` (`id`, `name`, `type`, `price`, `createdAt`, `updatedAt`, `image`, `Description`) VALUES
(1, 'Chicken Dynamite ', 'Appetizers', 99.9, '2022-06-07 18:15:54', '2022-06-07 18:15:54', 'src/Assets/Appetizers/Chicken Dynamite.jpg', 'Fired chicken poppers glazed in our spicy dynamite sauce served with crispy tempura vegetable bites'),
(2, 'Chicken Strips', 'Appetizers', 85, '2022-06-07 18:17:39', '2022-06-07 18:17:39', 'src/Assets/Appetizers/Chicken Strips.jpg', 'Five pieces of crispy fried chicken strips coated in panko herb breadcrumbs, dipped in tempura butter, served with honey mustard dip'),
(3, 'Grilled Vegetables', 'Appetizers', 47.5, '2022-06-07 18:21:13', '2022-06-07 18:21:13', 'src/Assets/Appetizers/Marinated Grilled Vegetables.jpg', 'Marinated chargrilled zucchini, eggplants, colored bell peppers, mushrooms and onions, served with pesto sauce'),
(4, 'spinach Mushroom', 'Appetizers', 86.5, '2022-06-07 18:23:17', '2022-06-07 18:23:17', 'src/Assets/Appetizers/Spinach Mushroom.jpg', 'Oven creamy stuffed mushroom with spinach and provolone cheese served with our special bread'),
(5, 'Beef fillet three sauces', 'Beef', 235.75, '2022-06-07 18:24:45', '2022-06-07 18:24:45', 'src/Assets/Beef/Beef Fillet Three Sauces.jpg', 'Three pieces of medallion charbroiled fillet, topped with three sauces (pepper, mushroom and blue cheese) served with rice and sauteed vegetables'),
(6, 'Beef Teriyaki', 'Beef', 235.75, '2022-06-07 18:26:30', '2022-06-07 18:26:30', 'src/Assets/Beef/Beef Teriyaki.jpg', 'Charbroiled beef fillet strips, glazed with teriyaki sauce, beans and fresh spinach, served with noodles'),
(7, 'Charboiled Fillet Tenderloin', 'Beef', 235.75, '2022-06-07 18:27:42', '2022-06-07 18:27:42', 'src/Assets/Beef/Charbroiled Fillet Tenderloin.jpg', 'Charbroiled beef steak in brown sauce, mustard seeds and mushrooms, served with rice and sauteed vegetables'),
(8, '4-Meat Pizza', 'Pizza', 125, '2022-06-09 02:47:55', '2022-06-09 02:47:55', '/Users/hassanreda/Desktop/DB-images/Pizza1.JPG', 'Roasted beef fillet strips, sausage, pepperoni, mixed peppers, provolone cheese, and homemade garlic confit paste, served with our signature spinach and artichoke sauce'),
(9, 'Chicken Ranch', 'pizza', 172, '2022-06-09 02:50:50', '2022-06-09 02:50:50', '/Users/hassanreda/Desktop/DB-images/Pizza2.JPG', 'Mozzarella cheese, chicken with Ranch sauce and colored bell peppers, olives.'),
(10, 'Red Pizza', 'pizza', 118, '2022-06-09 02:52:12', '2022-06-09 02:52:12', '/Users/hassanreda/Desktop/DB-images/Pizza3.JPG', 'Mozzarella cheese and fresh mushrooms'),
(11, 'Pepperoni ', 'pizza', 117, '2022-06-09 02:54:02', '2022-06-09 02:54:02', '/Users/hassanreda/Desktop/DB-images/Pizza4.JPG', 'Mozzarella cheese, pepperoni and dried oregano'),
(12, 'Vegetarian', 'pizza', 98, '2022-06-09 02:54:55', '2022-06-09 02:54:55', '/Users/hassanreda/Desktop/DB-images/Pizza5.JPG', 'Mozzarella cheese, mushrooms, olives and colored bell peppers and sweet corn'),
(13, 'Doughnuts ', 'dessert', 84, '2022-06-09 02:56:15', '2022-06-09 02:56:15', '/Users/hassanreda/Desktop/DB-images/dessert1.jpg', '6 pieces of your choice.'),
(14, 'White Cake with mixed berries', 'dessert', 114, '2022-06-09 02:58:30', '2022-06-09 02:58:30', '/Users/hassanreda/Desktop/DB-images/dessert2.jpg', 'White cake made with almond milk, mixed berries and vanilla sauce.'),
(15, 'Mini Cupcakes', 'dessert', 230, '2022-06-09 02:59:26', '2022-06-09 02:59:26', '/Users/hassanreda/Desktop/DB-images/dessert3.jpg', 'Colorful mini-cupcakes with fruits and toppings of your choice.'),
(16, 'Waffle', 'dessert', 82, '2022-06-09 03:00:57', '2022-06-09 03:00:57', '/Users/hassanreda/Desktop/DB-images/dessert4.JPG', 'Waffle with maple syrup, berries and strawberries.'),
(17, 'GRND Crepe', 'dessert', 123, '2022-06-09 03:02:09', '2022-06-09 03:02:09', '/Users/hassanreda/Desktop/DB-images/dessert5.JPG', 'Our Special crepe served with strawberries and vanilla ice cream.'),
(18, 'Fettuccine Chicken Alfredo', 'pasta', 142.7, '2022-06-09 03:03:38', '2022-06-09 03:03:38', '/Users/hassanreda/Desktop/DB-images/pasta1.JPG', 'Fettuccine Pasta served with white sauce, mushrooms and chicken breasts.'),
(19, 'Penne Arabiata', 'pasta', 107.7, '2022-06-09 03:06:30', '2022-06-09 03:06:30', '/Users/hassanreda/Desktop/DB-images/pasta3.JPG', 'Penne with red sauce and meat balls.'),
(20, 'Brown Pasta', 'pasta', 143.4, '2022-06-09 03:09:30', '2022-06-09 03:09:30', '/Users/hassanreda/Desktop/DB-images/pasta4.JPG', 'Brown sauced chicken pasta with chicken'),
(21, 'Sea Food Pasta', 'pasta', 178.8, '2022-06-09 03:10:41', '2022-06-09 03:10:41', '/Users/hassanreda/Desktop/DB-images/pasta5.JPG', 'Spaghetti with shrimps, Red sauce, cherry Tomatoes.');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `food`
--
ALTER TABLE `food`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `food`
--
ALTER TABLE `food`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
