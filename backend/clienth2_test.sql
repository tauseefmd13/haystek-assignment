-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Aug 29, 2024 at 08:02 AM
-- Server version: 5.7.23-23
-- PHP Version: 8.1.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `clienth2_test`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `category_id` int(11) NOT NULL,
  `category_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`category_id`, `category_name`) VALUES
(1, 'Electronics'),
(2, 'Books'),
(3, 'Clothing'),
(4, 'Furniture'),
(5, 'Toys'),
(6, 'Groceries'),
(7, 'Automotive'),
(8, 'Sports'),
(9, 'Home Appliances'),
(10, 'Office Supplies');

-- --------------------------------------------------------

--
-- Table structure for table `prices`
--

CREATE TABLE `prices` (
  `price_id` int(11) NOT NULL,
  `product_id` int(11) DEFAULT NULL,
  `price` decimal(10,2) NOT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `prices`
--

INSERT INTO `prices` (`price_id`, `product_id`, `price`, `start_date`, `end_date`) VALUES
(1, 1, 699.99, '2024-01-01', '2024-12-31'),
(2, 2, 1199.99, '2024-01-01', '2024-06-30'),
(3, 3, 399.99, '2024-01-01', '2024-12-31'),
(4, 4, 199.99, '2024-01-01', '2024-12-31'),
(5, 5, 89.99, '2024-01-01', '2024-12-31'),
(6, 6, 59.99, '2024-01-01', '2024-12-31'),
(7, 7, 499.99, '2024-01-01', '2024-12-31'),
(8, 8, 799.99, '2024-01-01', '2024-12-31'),
(9, 9, 129.99, '2024-01-01', '2024-12-31'),
(10, 10, 24.99, '2024-01-01', '2024-12-31'),
(11, 11, 14.99, '2024-01-01', '2024-12-31'),
(12, 12, 29.99, '2024-01-01', '2024-12-31'),
(13, 13, 9.99, '2024-01-01', '2024-12-31'),
(14, 14, 49.99, '2024-01-01', '2024-12-31'),
(15, 15, 79.99, '2024-01-01', '2024-12-31'),
(16, 16, 149.99, '2024-01-01', '2024-12-31'),
(17, 17, 39.99, '2024-01-01', '2024-12-31'),
(18, 18, 69.99, '2024-01-01', '2024-12-31'),
(19, 19, 99.99, '2024-01-01', '2024-12-31'),
(20, 20, 119.99, '2024-01-01', '2024-12-31'),
(21, 21, 299.99, '2024-01-01', '2024-12-31'),
(22, 22, 499.99, '2024-01-01', '2024-12-31'),
(23, 23, 179.99, '2024-01-01', '2024-12-31'),
(24, 24, 239.99, '2024-01-01', '2024-12-31'),
(25, 25, 149.99, '2024-01-01', '2024-12-31'),
(26, 26, 59.99, '2024-01-01', '2024-12-31'),
(27, 27, 29.99, '2024-01-01', '2024-12-31'),
(28, 28, 5.99, '2024-01-01', '2024-12-31'),
(29, 29, 79.99, '2024-01-01', '2024-12-31'),
(30, 30, 129.99, '2024-01-01', '2024-12-31'),
(31, 31, 89.99, '2024-01-01', '2024-12-31'),
(32, 32, 299.99, '2024-01-01', '2024-12-31'),
(33, 33, 399.99, '2024-01-01', '2024-12-31'),
(34, 34, 249.99, '2024-01-01', '2024-12-31'),
(35, 35, 99.99, '2024-01-01', '2024-12-31'),
(36, 36, 39.99, '2024-01-01', '2024-12-31'),
(37, 37, 15.99, '2024-01-01', '2024-12-31'),
(38, 38, 79.99, '2024-01-01', '2024-12-31'),
(39, 39, 89.99, '2024-01-01', '2024-12-31'),
(40, 40, 129.99, '2024-01-01', '2024-12-31'),
(41, 41, 149.99, '2024-01-01', '2024-12-31'),
(42, 42, 29.99, '2024-01-01', '2024-12-31'),
(43, 43, 49.99, '2024-01-01', '2024-12-31'),
(44, 44, 79.99, '2024-01-01', '2024-12-31'),
(45, 45, 59.99, '2024-01-01', '2024-12-31'),
(46, 46, 149.99, '2024-01-01', '2024-12-31'),
(47, 47, 199.99, '2024-01-01', '2024-12-31'),
(48, 48, 249.99, '2024-01-01', '2024-12-31'),
(49, 49, 99.99, '2024-01-01', '2024-12-31'),
(50, 50, 139.99, '2024-01-01', '2024-12-31');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `product_id` int(11) NOT NULL,
  `product_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `supplier_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_id`, `product_name`, `category_id`, `supplier_id`) VALUES
(1, 'Smartphone', 1, 1),
(2, 'Laptop', 1, 2),
(3, 'Tablet', 1, 3),
(4, 'Smartwatch', 1, 4),
(5, 'Bluetooth Speaker', 1, 5),
(6, 'Headphones', 1, 6),
(7, 'Camera', 1, 7),
(8, 'Television', 1, 8),
(9, 'E-Book Reader', 2, 1),
(10, 'Novel', 2, 2),
(11, 'Cookbook', 2, 3),
(12, 'Children\'s Book', 2, 4),
(13, 'Graphic Novel', 2, 5),
(14, 'Jacket', 3, 6),
(15, 'Jeans', 3, 7),
(16, 'T-Shirt', 3, 8),
(17, 'Dress', 3, 9),
(18, 'Winter Coat', 3, 10),
(19, 'Dining Table', 4, 1),
(20, 'Sofa', 4, 2),
(21, 'Office Chair', 4, 3),
(22, 'Bed Frame', 4, 4),
(23, 'Bookshelf', 4, 5),
(24, 'Teddy Bear', 5, 6),
(25, 'Action Figure', 5, 7),
(26, 'Board Game', 5, 8),
(27, 'Puzzle', 5, 9),
(28, 'Dollhouse', 5, 10),
(29, 'Organic Apples', 6, 1),
(30, 'Bread', 6, 2),
(31, 'Milk', 6, 3),
(32, 'Eggs', 6, 4),
(33, 'Chicken Breast', 6, 5),
(34, 'Car Battery', 7, 1),
(35, 'Motor Oil', 7, 2),
(36, 'Air Filter', 7, 3),
(37, 'Tire', 7, 4),
(38, 'Wiper Blades', 7, 5),
(39, 'Tennis Racket', 8, 1),
(40, 'Soccer Ball', 8, 2),
(41, 'Golf Clubs', 8, 3),
(42, 'Yoga Mat', 8, 4),
(43, 'Dumbbells', 8, 5),
(44, 'Refrigerator', 9, 1),
(45, 'Microwave Oven', 9, 2),
(46, 'Washing Machine', 9, 3),
(47, 'Vacuum Cleaner', 9, 4),
(48, 'Blender', 9, 5),
(49, 'Printer', 10, 1),
(50, 'Office Desk', 10, 2),
(51, 'Notebooks', 10, 3),
(52, 'Pens', 10, 4),
(53, 'File Cabinet', 10, 5);

-- --------------------------------------------------------

--
-- Table structure for table `suppliers`
--

CREATE TABLE `suppliers` (
  `supplier_id` int(11) NOT NULL,
  `supplier_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `suppliers`
--

INSERT INTO `suppliers` (`supplier_id`, `supplier_name`) VALUES
(1, 'Supplier A'),
(2, 'Supplier B'),
(3, 'Supplier C'),
(4, 'Supplier D'),
(5, 'Supplier E'),
(6, 'Supplier F'),
(7, 'Supplier G'),
(8, 'Supplier H'),
(9, 'Supplier I'),
(10, 'Supplier J');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `first_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `last_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `username` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `first_name`, `last_name`, `email`, `phone`, `username`, `password`) VALUES
(1, 'Mrunal', 'Rangdal', '9638527412', 'mrunal@gmail.com', 'mrunal', '$2y$10$10m9p6jFIVEU9222MWGtUeNQ7LEBkyx9xpwJ27T9qdKt7Fzgdgic.'),
(2, 'Mrunal', 'Rangdal', '9638527412', 'mrunal@gmail.com', 'mrunal', '$2y$10$SLycf0FvWJkuobBkttrt0e0pwUH5PXr7iS9Cl2HHMrUjRGwn1ctxe'),
(3, '', '', '', '', '', '$2y$10$H4nV83GWEl813E8PnCdGEe8gHynhZIFTFu78Ew/5DZD75vNE3NVXy'),
(4, 'raghav', 'raghav', 'raghav@gmail.com', '243234324', 'raghav', 'vashishth'),
(5, 'raghav', 'raghav', 'raghav@vashishth.com', '9876543', 'raghavv', 'qwerty'),
(6, 'raghav', 'vashishth', 'raghav@gmail.com', '3535332', 'tttttt', 'd8578edf8458ce06fbc5bb76a58c5ca4'),
(7, 'leela rajesh', 'vaida', 'akilraj1255@gmail.com', '09603644727', 'akilraj1255@gmail.com', 'e10adc3949ba59abbe56e057f20f883e'),
(8, 'e', 'S', 'akilraj1255@gmail.com', '9603644727', 'akilraj1255@gmail.com', 'e10adc3949ba59abbe56e057f20f883e'),
(9, '', '', '', '', '', '$2y$10$iQCeP5I2laz2Gqd.Ft.t0OBiojzfuA6wMiNDGlFFqooWwDVpY.8Pu'),
(10, '', '', '', '', '', '$2y$10$jLO23dmMTJq3xY8z3rLq3.eZyv4PfY0N5V3fiqmAns737iZsNEOUW'),
(11, '', '', '', '', '', '$2y$10$djmuyBL67K71y8jYNglYt.UjhcUTQq3MESYAlSi9pQox23JJtn/Ve'),
(12, '', '', '', '', '', '$2y$10$./EFIck8ILUQuDggiVp4fu9VJoukS9keESx4qGNxi1bHqKwArtIvC'),
(13, '', '', '', '', '', '$2y$10$e3tpRwthigSmyzuwRHywGueQpg1TsxkFmU3OWctxOPHnqZr1DNGyK'),
(14, '', '', 'dsds2321', '', 'aaa', '$2y$10$L52xq4Vj8FwaUeX4T/.IeuDAQev36cTJ5Xl.zLNvFzEL366cZuNZK'),
(15, '', '', '', '', '', '$2y$10$5DbmpsgwItYZ2xJwc5lqVO1J3w9FzET6LhLpuDme0D/0pX5SPOQgu'),
(16, '', '', '', '', 'aaaa', '$2y$10$rAg4hqExz0kGOENUxN7Lf.nS9YB5nTB2ujNYxbOefUMk5SUa0ZU4q'),
(17, '', '', '1231231234', '', 'aaa', '$2y$10$4jrwJjSfjF4l652f4UzFxe/jCd3Jx3YOAAg3mNm91mZvaOVYdHHXa'),
(18, 'aaa', 'aaa', 'aa', 'aaa', '', '$2y$10$ltwtEPvdoEqM5WoAUMa5JOBHh1jM598aLjZX13nHPKUUcgxG82eTC'),
(19, 'aaa', 'aaa', '1234567896', 'aaa@a.aaa', '', '$2y$10$5dDzBUJa/ZmNpyxwElRIsOceNwl/l7pj3KpY2Ak2WhZ7Zq51zclAC'),
(20, 'aaa', 'aaa', '1234567941', 'aaa@aaa.aaa', '', '$2y$10$C/RH4WWV3b6pWptNRsysE.pKx/eZci5LOYK.eCjNnWlEGCxxoW5fK'),
(21, 'adsa', 'sadasd', '1234567896', 'aaa@a.aaa', 'mrunal', '$2y$10$UtWGeo3AMvt0EteHOzPjJukN1.URx7HwjILPbk6RbCNuR8tL86F1O'),
(22, 'aaa', 'aaa', '1231231234', 'aaa@a.aaa', 'mrunal', '$2y$10$4Fw1ybjvNsQLpjSx2u1QbucKKBcwZoRHUGCxtYCM9TNpw30.5Gzn.'),
(23, 'aaa', 'aaa', '1231231234', 'aaa@a.aaa', 'mrunal', '$2y$10$iYpP0dr3N.tGeFgAbE6vr.RTRNRICLdEOMMdWA7ZJSovbk8789DOq'),
(24, 'aaa', 'aaa', '1234567941', 'aaa@a.aaa', 'mrunal', '$2y$10$adQVJ3GqZq4ImxFaVelySeaYkOHWDlrx.RGvlszTycZ0L5G2SMiJK'),
(25, 'aaa', 'aaa', '1234567941', 'aaa@a.aaa', 'mrunal', '$2y$10$w0sSTYATvhjfKtVLwJpK5./nYEjO/Yj2QByJvTmpqZWG7WXgphoci'),
(26, 'Leela Rajesh', 'Vaida', '9603644727', 'akilraj1255@gmil.com', '123456', '$2y$10$3/rQVL1SovZ2d32Eg8EMs.eppZ0DufXMaVAfzCB/AdTvPSFwEoOJ6'),
(27, 'Amritha', 'Sunny', 'amrithasunny11@gmail.com', '7356889520', 'amritha', 'e10adc3949ba59abbe56e057f20f883e'),
(28, 'leela rajesh', 'vaida', 'akilraj1255@gmail.com', '09603644727', 'admin', 'e807f1fcf82d132f9bb018ca6738a19f'),
(29, 'leela rajesh', 'vaida', 'akilraj1255@gmail.com', '09603644727', 'admin', 'e807f1fcf82d132f9bb018ca6738a19f');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `prices`
--
ALTER TABLE `prices`
  ADD PRIMARY KEY (`price_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`),
  ADD KEY `category_id` (`category_id`),
  ADD KEY `supplier_id` (`supplier_id`);

--
-- Indexes for table `suppliers`
--
ALTER TABLE `suppliers`
  ADD PRIMARY KEY (`supplier_id`);

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
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `prices`
--
ALTER TABLE `prices`
  MODIFY `price_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT for table `suppliers`
--
ALTER TABLE `suppliers`
  MODIFY `supplier_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `prices`
--
ALTER TABLE `prices`
  ADD CONSTRAINT `prices_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `products` (`product_id`);

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `categories` (`category_id`),
  ADD CONSTRAINT `products_ibfk_2` FOREIGN KEY (`supplier_id`) REFERENCES `suppliers` (`supplier_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
