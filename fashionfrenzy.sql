-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Mar 08, 2025 at 01:03 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `fashionfrenzy`
--

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `categoryname` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `categoryname`) VALUES
(45, 'men'),
(46, 'Womens'),
(47, 'kids');

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `id` int(11) NOT NULL,
  `fullname` varchar(250) NOT NULL,
  `email` varchar(250) NOT NULL,
  `phoneno` decimal(10,0) NOT NULL,
  `object` varchar(250) NOT NULL,
  `message` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`id`, `fullname`, `email`, `phoneno`, `object`, `message`) VALUES
(4, 'milan miyani', 'smit1@gmail.com', 7046234457, 'sfadfs', 'sdddsdsdsd'),
(5, 'gf', 'fdg@gmail.com', 7177777756, 'sfadfsh43', 'gdhf'),
(6, 'gf', 'fdg@gmail.com', 7177777756, 'sfadfsh43', 'gdhf'),
(7, 'gf', 'fdg@gmail.com', 7177777756, 'sfadfsh43', 'gdhf'),
(8, 'gf', 'fdg@gmail.com', 7177777756, 'sfadfsh43', 'gdhf'),
(9, 'd', 'd@gmail.com', 7046234457, 'fsfd', 'sfsfds'),
(10, 'milan miyani', 'smit1@gmail.com', 7046234457, 'g', 'hgfh'),
(11, 'milan miyani', 'smit1@gmail.com', 7046234457, 'sa', 'sa'),
(12, 'milan miyani', 'smit1@gmail.com', 7046234457, 'sa', 'sa'),
(13, 'milan miyani', 'smit1@gmail.com', 7046234457, 'sa', 'sa');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `productname` varchar(100) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `description` text NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `category_id`, `productname`, `price`, `description`, `image`) VALUES
(36, 45, 'T-shirt', 5000.00, 'good prodcut', '17411692914732 . jpg'),
(40, 47, 'T-shirt', 45456.00, 'dsa', '17411708615308 . jpg'),
(47, 47, 'T-shirt', 45456.00, 'hf', '17412535488320 . jpg'),
(48, 46, 'T-shirt', 45456.00, 'sa', '17412539263296 . jpg'),
(52, 45, 'T-shirt', 45456.00, 's', '17412541448103 . jpg'),
(53, 45, 'T-shirt', 45456.00, 'ss', '17412549071397 . jpg');

-- --------------------------------------------------------

--
-- Table structure for table `register`
--

CREATE TABLE `register` (
  `id` int(11) NOT NULL,
  `fullname` varchar(250) NOT NULL,
  `email` varchar(250) NOT NULL,
  `dateofbrith` date NOT NULL,
  `address` text NOT NULL,
  `country` varchar(250) NOT NULL,
  `city` varchar(250) NOT NULL,
  `gender` varchar(250) NOT NULL,
  `phoneno` decimal(10,0) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `register`
--

INSERT INTO `register` (`id`, `fullname`, `email`, `dateofbrith`, `address`, `country`, `city`, `gender`, `phoneno`) VALUES
(19, 'milan miyani', 'milanmiyani235@gmail.com', '2025-03-20', '86,I SHREE KHODIYAR KURPA SOC, NEAR SHREE SARDA VIDHAYAMADIR, KATARGAM SURAT', 'India', 'Surat', 'male', 7046234457);

-- --------------------------------------------------------

--
-- Table structure for table `subscribe`
--

CREATE TABLE `subscribe` (
  `id` int(11) NOT NULL,
  `email` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `subscribe`
--

INSERT INTO `subscribe` (`id`, `email`) VALUES
(3, 'abc@gmail.com'),
(4, 'abc@gmail.com'),
(5, 'abc@gmail.com'),
(6, 'abc@gmail.com'),
(7, 'a@gmail.com'),
(8, 'a@gmail.com'),
(9, 'a@gmail.com'),
(10, 'a@gmail.com'),
(11, 'a@gmail.com');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_id` (`category_id`);

--
-- Indexes for table `register`
--
ALTER TABLE `register`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subscribe`
--
ALTER TABLE `subscribe`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT for table `register`
--
ALTER TABLE `register`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `subscribe`
--
ALTER TABLE `subscribe`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
