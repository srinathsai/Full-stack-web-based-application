-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 29, 2022 at 06:16 AM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ecom_db`
--

DELIMITER $$
--
-- Procedures
--
CREATE DEFINER=`root`@`localhost` PROCEDURE `getCategories` ()   SELECT * FROM categories$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `cat_id` int(11) NOT NULL,
  `cat_title` varchar(255) COLLATE utf8_unicode_nopad_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_nopad_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`cat_id`, `cat_title`) VALUES
(1, 'example 1'),
(2, 'example 2');

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `Feedback_content` text COLLATE utf8_unicode_nopad_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_nopad_ci;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`Feedback_content`) VALUES
('Amazing stuff would love to shop again and again and will recommend to others as well.');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `order_id` int(11) NOT NULL,
  `order_amount` float NOT NULL,
  `order_transaction` varchar(255) COLLATE utf8_unicode_nopad_ci NOT NULL,
  `order_status` varchar(255) COLLATE utf8_unicode_nopad_ci NOT NULL,
  `order_currency` varchar(255) COLLATE utf8_unicode_nopad_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_nopad_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`order_id`, `order_amount`, `order_transaction`, `order_status`, `order_currency`) VALUES
(10, 345, 'USA', '34535434', 'Completed'),
(11, 345, 'USA', '34535434', 'Completed'),
(12, 345, 'USA', '34535434', 'Completed'),
(13, 345, 'USA', '34535434', 'Completed'),
(14, 345, '34535434', 'completed', 'usd'),
(15, 345, '34535434', 'Completed', 'USA'),
(16, 345, '34535434', 'Completed', 'USA'),
(17, 345, '34535434', 'Completed', 'USA'),
(18, 345, '34535434', 'Completed', 'USA');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `product_id` int(11) NOT NULL,
  `product_title` varchar(25) COLLATE utf8_unicode_nopad_ci NOT NULL,
  `product_category_id` int(11) NOT NULL,
  `product_price` float NOT NULL,
  `product_quantity` int(11) NOT NULL,
  `product_description` text COLLATE utf8_unicode_nopad_ci NOT NULL,
  `short_desc` text COLLATE utf8_unicode_nopad_ci NOT NULL,
  `product_image` varchar(255) COLLATE utf8_unicode_nopad_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_nopad_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_id`, `product_title`, `product_category_id`, `product_price`, `product_quantity`, `product_description`, `short_desc`, `product_image`) VALUES
(3, 'Aot manga', 2, 5, 10, 'Manga of final season', '', 'aot.jpg'),
(9, 'code geass', 2, 5, 10, 'One of the best animes where protoganist becomes antagonist to save the world.', 'Best mind thriller.', 'anime-2.jpg'),
(11, 'Dark chocolate icecream', 1, 12, 15, 'A naturally enriched dark chocolate ice cream with bourbon addon.', 'best Dark choclate ice cream.', 'choclate.jpg'),
(12, 'kitchen utensils', 1, 20, 7, 'A kit of whole utensils for any types of cooking.', 'kitchen utensils', 'utensils.jpg');

-- --------------------------------------------------------

--
-- Stand-in structure for view `report`
-- (See below for the actual view)
--
CREATE TABLE `report` (
`report_id` int(11)
,`product_id` int(11)
,`product_price` int(11)
);

-- --------------------------------------------------------

--
-- Table structure for table `reports`
--

CREATE TABLE `reports` (
  `report_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_price` int(11) NOT NULL,
  `product_title` varchar(255) COLLATE utf8_unicode_nopad_ci NOT NULL,
  `product_quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_nopad_ci;

--
-- Dumping data for table `reports`
--

INSERT INTO `reports` (`report_id`, `product_id`, `order_id`, `product_price`, `product_title`, `product_quantity`) VALUES
(7, 1, 0, 25, '', 1),
(8, 1, 0, 25, '', 1),
(9, 1, 0, 25, '', 1),
(10, 1, 11, 25, '', 1),
(11, 1, 12, 25, 'product 1', 1),
(12, 2, 12, 299, 'product 2', 1),
(13, 1, 13, 25, 'product 1', 1),
(14, 1, 14, 25, 'product 1', 1),
(15, 1, 15, 25, 'product 1', 1),
(16, 2, 16, 299, 'product 2', 1),
(17, 3, 17, 5, 'Aot manga', 2),
(18, 11, 18, 12, 'Dark chocolate icecream', 2);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `username` varchar(255) COLLATE utf8_unicode_nopad_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_nopad_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_nopad_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_nopad_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `username`, `email`, `password`) VALUES
(1, 'rico', 'rico@hotmail.com', '123'),
(3, 'srinath', 'stripur@okstate.edu', '123'),
(5, 'kira', 'kira@hates.loosing', '123');

--
-- Triggers `users`
--
DELIMITER $$
CREATE TRIGGER `uservalidation` BEFORE INSERT ON `users` FOR EACH ROW IF NEW.`email` NOT LIKE '%_@%_.__%' THEN
		SIGNAL SQLSTATE VALUE '45000'
			SET MESSAGE_TEXT = ' please follow correct emailtype';
	END IF
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Structure for view `report`
--
DROP TABLE IF EXISTS `report`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `report`  AS SELECT `reports`.`report_id` AS `report_id`, `reports`.`product_id` AS `product_id`, `reports`.`product_price` AS `product_price` FROM `reports` WHERE `reports`.`product_price` = 2525  ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`cat_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `reports`
--
ALTER TABLE `reports`
  ADD PRIMARY KEY (`report_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `cat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `reports`
--
ALTER TABLE `reports`
  MODIFY `report_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
