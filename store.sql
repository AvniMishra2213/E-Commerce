-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 06, 2020 at 10:05 AM
-- Server version: 10.3.15-MariaDB
-- PHP Version: 7.3.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `store`
--

-- --------------------------------------------------------

--
-- Table structure for table `items`
--

CREATE TABLE `items` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `items`
--

INSERT INTO `items` (`id`, `name`, `price`) VALUES
(1, 'Canon EOS ', 36000),
(2, 'Nikon DSLR ', 40000),
(3, 'Sony DSLR ', 45000),
(4, 'Olympus DSLR ', 50000),
(5, 'Titan Model #301 ', 13000),
(6, 'Titan Model #201 ', 3000),
(7, 'HMT Milan ', 8000),
(8, 'Faber Luba #111 ', 18000),
(9, 'H&W ', 800),
(10, 'Luis Phil ', 1000),
(11, 'John Zok ', 1500),
(12, 'Jhalsani ', 1300),
(13, 'Instax Mini ', 5600),
(14, 'Sony DSC RX100 ', 22980),
(15, 'Instax Mini Neo', 58000),
(16, 'GoPro HERO7', 19499),
(17, 'Titan Ladies Neo', 2800),
(18, 'Fastrack Black trap', 1800),
(19, 'Fastrack Digital Unisex Watch', 3654),
(20, 'Rolex Daytona Oyster', 14850),
(21, 'Cutout Mini Dress',3000 ),
(22, 'Ruched Bodycon' ,2100),
(23, 'Casual Skater Dress' ,1200),
(24, 'Plunged Neck Dress' ,2800),
(25, 'Grey Pencil Dress' ,1250),
(26, 'Contrast Wing Cami' ,1800),
(27, 'Cape Sleeve Dress' ,2150),
(28, 'Two Piece Dress' ,1554),
(29, 'Fauxe Suede Boots' ,3000),
(30, 'Flat Heel Boots' ,1600),
(31, 'Velvet Boots' ,2700),
(32, 'Feather Boots' ,2800),
(33, 'Carrie White' ,2899),
(34, 'The Knee Boots' ,1800),
(35, 'Ankle Boots' ,1999),
(36, 'Leopard Platform' ,2899),
(37, 'Cat Eye Sunglass' ,1224),
(38, 'Full Rim Cat Eye' ,1200),
(39, 'Classic Polarized' ,1499),
(40, 'Black Round' ,999),
(41, 'Octagon Shades' ,1140),
(42, 'Rimless Ombre' ,1649),
(43, 'Boho Plain Frame' ,1119),
(44, 'Vintage Cat Eye' ,1389),
(45, 'Green Marquise' ,649),
(46, 'Three Drop Long' ,560),
(47, 'Long Dangle Drop' ,399),
(48,'Trendy Red Silver',449)
(49, 'Luxury Round' ,1140),
(50, 'Bowknot Round' ,999),
(51, 'Black Stone' ,349),
(52, 'Luxury Bronze' ,789);


-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `contact` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `contact`, `city`, `address`) VALUES
(1, 'kartik', 'kk@go.in', 'c8d39cdb56a46ad807969ee04c4e660b', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `users_items`
--

CREATE TABLE `users_items` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `status` enum('Added to cart','Confirmed') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users_items`
--

INSERT INTO `users_items` (`id`, `user_id`, `item_id`, `status`) VALUES
(1, 1, 1, 'Added to cart');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users_items`
--
ALTER TABLE `users_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `item_id` (`item_id`),
  ADD KEY `user_id` (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `items`
--
ALTER TABLE `items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users_items`
--
ALTER TABLE `users_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `users_items`
--
ALTER TABLE `users_items`
  ADD CONSTRAINT `users_items_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `users_items_ibfk_2` FOREIGN KEY (`item_id`) REFERENCES `items` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
