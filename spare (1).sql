-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 13, 2020 at 07:09 AM
-- Server version: 10.3.16-MariaDB
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
-- Database: `spare`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `category` text COLLATE utf8_bin NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `category`, `date`) VALUES
(1, 'Electromechanic Equipment', '2020-01-14 07:51:53'),
(2, 'Drills', '2020-01-14 07:50:24'),
(3, 'Scaffolds', '2020-01-14 07:50:32'),
(4, 'energy Generators', '2020-01-14 07:50:41'),
(5, 'construction equipment', '2020-01-14 07:50:48'),
(6, 'Mechanic hammers', '2020-01-14 07:50:55'),
(7, 'Merlin', '2020-01-14 07:53:11');

-- --------------------------------------------------------

--
-- Table structure for table `parts`
--

CREATE TABLE `parts` (
  `id` int(11) NOT NULL,
  `idCategory` int(11) NOT NULL,
  `code` text COLLATE utf8_spanish_ci NOT NULL,
  `description` text COLLATE utf8_spanish_ci NOT NULL,
  `image` text COLLATE utf8_spanish_ci NOT NULL,
  `stock` int(11) NOT NULL,
  `buyingPrice` float NOT NULL,
  `sellingPrice` float NOT NULL,
  `sales` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Dumping data for table `parts`
--

INSERT INTO `parts` (`id`, `idCategory`, `code`, `description`, `image`, `stock`, `buyingPrice`, `sellingPrice`, `sales`, `date`) VALUES
(1, 1, '101', 'Industrial vacuum cleaner', 'views/img/parts/101/955.jpg', 6, 50, 100, 4, '2020-02-08 14:47:34'),
(2, 1, '102', 'Floating Plate for Palletizer', 'views/img/parts/102/439.jpg', 3, 1000, 1500, 8, '2020-02-11 05:10:21'),
(3, 1, '103', 'Air Compressor for painting', 'views/img/parts/103/712.jpg', 13, 3000, 4200, 10, '2020-02-11 04:11:33'),
(4, 1, '104', 'Brick Cutter without Disk', 'views/img/parts/104/188.jpg', 14, 4000, 5600, 6, '2020-02-12 06:26:38'),
(5, 1, '105', 'Floor Cutter without Disk', 'views/img/parts/105/970.jpg', 12, 1540, 2156, 14, '2020-02-11 04:13:32'),
(6, 1, '106', 'Diamond Tip Disk', 'views/img/parts/106/129.jpg', 11, 1100, 1540, 9, '2020-02-12 06:24:16'),
(7, 1, '107', 'Air extractor', 'views/img/parts/107/871.jpg', 19, 1540, 2156, 1, '2020-02-10 12:01:42'),
(8, 1, '108', 'Mower', 'views/img/parts/108/484.jpg', 14, 1540, 2156, 11, '2020-02-11 05:11:18'),
(9, 1, '109', 'Electric Water Washer', 'views/img/parts/109/332.jpg', 20, 2600, 3640, 0, '2020-01-29 06:05:14'),
(10, 1, '110', 'Petrol pressure washer', 'views/img/parts/110/424.jpg', 14, 2210, 3094, 6, '2020-02-11 04:15:34'),
(11, 1, '111', 'Gasoline motor pump', 'views/img/parts/111/930.jpg', 20, 3000, 4200, 0, '2020-01-15 07:04:16'),
(12, 1, '112', 'Electric motor pump', 'views/img/parts/112/206.png', 19, 2400, 3360, 1, '2020-02-08 16:33:55'),
(13, 1, '113', 'Circular saw', 'views/img/parts/113/344.png', 19, 1100, 1540, 1, '2020-02-09 10:54:22'),
(14, 1, '114', 'Tungsten disc for circular saw', 'views/img/parts/114/525.png', 20, 4500, 6300, 0, '2020-01-15 07:04:58'),
(15, 1, '115', 'Electric welder', 'views/img/parts/default/anonymous.png', 20, 1980, 2772, 0, '2020-01-14 07:43:08'),
(16, 1, '116', 'Welders face', 'views/img/parts/default/anonymous.png', 20, 4200, 5880, 0, '2020-01-14 07:43:15'),
(17, 1, '117', 'Illumination tower', 'views/img/parts/default/anonymous.png', 13, 1800, 2520, 7, '2020-02-10 12:01:42'),
(18, 2, '201', 'Floor Demolishing Hammer 110V', 'views/img/parts/default/anonymous.png', 20, 5600, 7840, 0, '2020-01-14 07:43:23'),
(19, 2, '202', 'Muela or chisel hammer demolishing floor', 'views/img/parts/202/593.jpg', 19, 9600, 13440, 1, '2020-02-10 05:46:43'),
(20, 2, '203', 'Wall Wrecking Drill 110V', 'views/img/parts/default/anonymous.png', 20, 3850, 5390, 0, '2020-01-14 07:43:32'),
(21, 2, '204', 'Muela or chisel hammer demolition wall', 'views/img/parts/204/321.png', 20, 9600, 13440, 0, '2020-01-15 07:06:50'),
(22, 2, '205', '1/2 Hammer Drill Wood and Metal', 'views/img/parts/default/anonymous.png', 19, 8000, 11200, 1, '2020-02-08 17:01:39'),
(23, 2, '206', 'Drill Percussion SDS Plus 110V', 'views/img/parts/default/anonymous.png', 18, 3900, 5460, 2, '2020-02-10 12:01:42'),
(24, 2, '207', 'Drill Percussion SDS Max 110V (Mining)', 'views/img/parts/default/anonymous.png', 19, 4600, 6440, 1, '2020-02-08 16:59:08'),
(25, 3, '301', 'Hanging scaffolding', 'views/img/parts/default/anonymous.png', 20, 1440, 2016, 0, '2020-01-14 07:43:58'),
(26, 3, '302', 'Scaffolding hanging spacer', 'views/img/parts/default/anonymous.png', 20, 1600, 2240, 0, '2020-01-14 07:44:13'),
(27, 3, '303', 'Modular scaffolding frame', 'views/img/parts/default/anonymous.png', 20, 900, 1260, 0, '2020-01-14 07:44:17'),
(28, 3, '304', 'Frame scaffolding scissors', 'views/img/parts/default/anonymous.png', 18, 100, 140, 2, '2020-02-10 12:01:42'),
(29, 3, '305', 'Scaffolding scissors', 'views/img/parts/default/anonymous.png', 19, 162, 226, 1, '2020-02-08 16:21:28'),
(30, 3, '306', 'Internal ladder for scaffolding', 'views/img/parts/default/anonymous.png', 19, 270, 378, 1, '2020-02-08 16:35:31'),
(31, 3, '307', 'Security handrails', 'views/img/parts/307/378.png', 19, 75, 105, 1, '2020-02-08 16:24:28'),
(32, 3, '308', 'Rotating wheel for scaffolding', 'views/img/parts/default/anonymous.png', 19, 168, 235, 1, '2020-02-08 16:45:55'),
(33, 3, '309', 'safety harness', 'views/img/parts/default/anonymous.png', 19, 1750, 2450, 1, '2020-02-08 16:21:28'),
(34, 3, '310', 'Sling for harness', 'views/img/parts/default/anonymous.png', 19, 175, 245, 1, '2020-02-08 16:44:57'),
(35, 3, '311', 'Metallic Platform', 'views/img/parts/default/anonymous.png', 20, 420, 588, 0, '2020-01-14 07:44:35'),
(36, 4, '401', '6 Kva Diesel Power Plant', 'views/img/parts/default/anonymous.png', 15, 3500, 4900, 6, '2020-02-10 07:50:47'),
(37, 4, '402', '10 Kva Diesel Power Plant', 'views/img/parts/default/anonymous.png', 20, 3550, 4970, 0, '2020-01-14 07:44:41'),
(38, 4, '403', '20 Kva Diesel Power Plant', 'views/img/parts/default/anonymous.png', 18, 3600, 5040, 2, '2020-02-08 16:24:28'),
(39, 4, '404', '30 Kva Diesel Power Plant', 'views/img/parts/default/anonymous.png', 20, 3650, 5110, 0, '2020-01-14 07:44:54'),
(40, 4, '405', '60 Kva Diesel Power Plant', 'views/img/parts/default/anonymous.png', 20, 3700, 5180, 0, '2020-01-14 07:44:57'),
(41, 4, '406', '75 Kva Diesel Power Plant', 'views/img/parts/default/anonymous.png', 20, 3750, 5250, 0, '2020-01-14 07:45:00'),
(42, 4, '407', '100 Kva Diesel Power Plant', 'views/img/parts/default/anonymous.png', 20, 3800, 5320, 0, '2020-01-14 07:45:06'),
(43, 4, '408', '120 Kva Diesel Power Plant', 'views/img/parts/default/anonymous.png', 19, 3850, 5390, 1, '2020-02-09 10:59:27'),
(44, 5, '501', 'Aluminum Scissor Ladder', 'views/img/parts/default/anonymous.png', 19, 350, 490, 1, '2020-02-08 16:59:51'),
(45, 5, '502', 'Electric extension', 'views/img/parts/default/anonymous.png', 19, 370, 518, 1, '2020-02-09 10:55:33'),
(46, 5, '503', 'Tensioner cat', 'views/img/parts/503/513.png', 19, 380, 532, 1, '2020-02-09 11:28:42'),
(47, 5, '504', 'Lamina Covers Gap', 'views/img/parts/default/anonymous.png', 20, 380, 532, 0, '2020-01-14 07:45:27'),
(48, 5, '505', 'Pipe wrench', 'views/img/parts/default/anonymous.png', 20, 480, 672, 0, '2020-01-14 07:45:29'),
(49, 5, '506', 'Manila by Metro', 'views/img/parts/default/anonymous.png', 20, 600, 840, 0, '2020-01-14 07:45:33'),
(50, 5, '507', '2-channel pulley', 'views/img/parts/default/anonymous.png', 20, 900, 1260, 0, '2020-01-14 07:45:35'),
(51, 5, '508', 'Tensor', 'views/img/parts/508/758.jpg', 30, 200, 220, 0, '2020-01-15 06:24:21'),
(52, 5, '509', 'Weighing machine', 'views/img/parts/default/anonymous.png', 19, 130, 182, 1, '2020-02-09 10:58:27'),
(53, 5, '510', 'Hydrostatic pump', 'views/img/parts/default/anonymous.png', 19, 770, 1078, 1, '2020-02-08 16:34:46'),
(54, 5, '511', 'Chapeta', 'views/img/parts/default/anonymous.png', 19, 660, 924, 1, '2020-02-08 16:19:37'),
(55, 5, '512', 'Concrete sample cylinder', 'views/img/parts/default/anonymous.png', 19, 400, 560, 1, '2020-02-08 16:19:37');

-- --------------------------------------------------------

--
-- Table structure for table `partsuser`
--

CREATE TABLE `partsuser` (
  `id` int(11) NOT NULL,
  `name` text COLLATE utf8_bin NOT NULL,
  `idDocument` int(11) NOT NULL,
  `email` text COLLATE utf8_bin NOT NULL,
  `phone` text COLLATE utf8_bin NOT NULL,
  `address` text COLLATE utf8_bin NOT NULL,
  `birthdate` date NOT NULL,
  `partsWithdrawn` int(11) NOT NULL,
  `lastWithdrawn` datetime NOT NULL,
  `registerDate` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `partsuser`
--

INSERT INTO `partsuser` (`id`, `name`, `idDocument`, `email`, `phone`, `address`, `birthdate`, `partsWithdrawn`, `lastWithdrawn`, `registerDate`) VALUES
(1, 'J', 222, 'jamaludding@pciltd.com.sg', '6281270068807', 'Batam', '1978-10-07', 61, '2020-02-12 01:26:38', '2020-02-12 06:26:38'),
(2, 'S', 222, 'sherwin.nofuente@cognex.com', '97781073', 'SG', '1978-10-07', 37, '2020-02-12 01:24:16', '2020-02-12 06:24:16'),
(3, 'A', 111111, 'angelynnofuente@yahoo.com', '91780406', 'SG', '1980-04-06', 9, '2020-02-10 03:52:28', '2020-02-10 08:52:28');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `user` text NOT NULL,
  `password` text NOT NULL,
  `profile` text NOT NULL,
  `photo` text NOT NULL,
  `status` int(11) NOT NULL,
  `lastLogin` datetime NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `user`, `password`, `profile`, `photo`, `status`, `lastLogin`, `date`) VALUES
(11, 'Sherwin Nofuente', 'sherwin', '$2a$07$usesomesillystringforeOyL9OHkEHx2/qTzssLMVGM8Mg9uR9Xy', 'Administrator', 'views/img/users/sherwin/869.jpg', 1, '2020-02-13 14:07:30', '2020-02-13 06:07:30'),
(33, 'Angelyn Nofuente', 'angie', '$2a$07$usesomesillystringforeOyL9OHkEHx2/qTzssLMVGM8Mg9uR9Xy', 'Special', 'views/img/users/angie/607.jpg', 1, '2020-02-10 11:05:14', '2020-02-10 03:05:14'),
(34, 'Boss', 'boss', '$2a$07$usesomesillystringforeOyL9OHkEHx2/qTzssLMVGM8Mg9uR9Xy', 'Seller', 'views/img/users/boss/972.png', 1, '2020-02-07 11:48:08', '2020-02-07 03:48:08'),
(35, 'A', 'A', '$2a$07$usesomesillystringforeOyL9OHkEHx2/qTzssLMVGM8Mg9uR9Xy', 'Administrator', 'views/img/users/A/616.jpg', 0, '0000-00-00 00:00:00', '2019-12-28 18:12:11'),
(36, 'b', 'b', '$2a$07$usesomesillystringforeOyL9OHkEHx2/qTzssLMVGM8Mg9uR9Xy', 'Administrator', 'views/img/users/b/609.jpg', 0, '0000-00-00 00:00:00', '2019-12-31 16:19:16'),
(37, 'c', 'c', '$2a$07$usesomesillystringforeOyL9OHkEHx2/qTzssLMVGM8Mg9uR9Xy', 'Administrator', 'views/img/users/c/433.jpg', 0, '0000-00-00 00:00:00', '2019-12-31 16:19:31'),
(38, 'd', 'd', '$2a$07$usesomesillystringforeOyL9OHkEHx2/qTzssLMVGM8Mg9uR9Xy', 'Administrator', 'views/img/users/d/570.jpg', 0, '0000-00-00 00:00:00', '2019-12-31 16:19:47'),
(39, 'e', 'e', '$2a$07$usesomesillystringforeOyL9OHkEHx2/qTzssLMVGM8Mg9uR9Xy', 'Administrator', 'views/img/users/e/868.jpg', 0, '0000-00-00 00:00:00', '2019-12-31 16:20:05'),
(40, 'f', 'f', '$2a$07$usesomesillystringforeOyL9OHkEHx2/qTzssLMVGM8Mg9uR9Xy', 'Administrator', 'views/img/users/f/242.jpg', 0, '0000-00-00 00:00:00', '2019-12-31 16:20:17'),
(41, 'g', 'g', '$2a$07$usesomesillystringforeOyL9OHkEHx2/qTzssLMVGM8Mg9uR9Xy', 'Administrator', 'views/img/users/g/305.jpg', 0, '0000-00-00 00:00:00', '2019-12-31 16:20:28'),
(43, 'h', 'h', '$2a$07$usesomesillystringforeOyL9OHkEHx2/qTzssLMVGM8Mg9uR9Xy', 'Administrator', 'views/img/users/h/711.jpg', 0, '0000-00-00 00:00:00', '2020-01-01 14:31:37');

-- --------------------------------------------------------

--
-- Table structure for table `withdrawal`
--

CREATE TABLE `withdrawal` (
  `id` int(11) NOT NULL,
  `code` int(11) NOT NULL,
  `idPartsUser` int(11) NOT NULL,
  `idIssuer` int(11) NOT NULL,
  `parts` text COLLATE utf8_spanish_ci NOT NULL,
  `disc` int(11) NOT NULL,
  `tax` int(11) NOT NULL,
  `netPrice` float NOT NULL,
  `totalPrice` float NOT NULL,
  `paymentMethod` text COLLATE utf8_spanish_ci NOT NULL,
  `withdrawalDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci ROW_FORMAT=COMPACT;

--
-- Dumping data for table `withdrawal`
--

INSERT INTO `withdrawal` (`id`, `code`, `idPartsUser`, `idIssuer`, `parts`, `disc`, `tax`, `netPrice`, `totalPrice`, `paymentMethod`, `withdrawalDate`) VALUES
(1, 10001, 1, 11, '[{\"id\":\"1\",\"description\":\"Industrial vacuum cleaner\",\"quantity\":\"1\",\"stock\":\"9\",\"price\":\"100\",\"totalPrice\":\"100\"}]', 0, 10, 100, 110, 'cash', '2020-01-30 00:06:41'),
(2, 10002, 1, 11, '[{\"id\":\"3\",\"description\":\"Air Compressor for painting\",\"quantity\":\"1\",\"stock\":\"19\",\"price\":\"4200\",\"totalPrice\":\"4200\"}]', 0, 420, 4200, 4620, 'cash', '2020-01-31 00:30:12'),
(3, 10003, 1, 33, '[{\"id\":\"4\",\"description\":\"Brick Cutter without Disk\",\"quantity\":\"2\",\"stock\":\"18\",\"price\":\"5600\",\"totalPrice\":\"11200\"}]', 0, 1008, 11200, 12208, 'cash', '2020-02-02 20:51:01'),
(4, 10004, 2, 33, '[{\"id\":\"4\",\"description\":\"Brick Cutter without Disk\",\"quantity\":\"1\",\"stock\":\"17\",\"price\":\"5600\",\"totalPrice\":\"5600\"}]', 0, 560, 5600, 6160, 'cash', '2020-02-02 21:21:55'),
(5, 10005, 2, 33, '[{\"id\":\"2\",\"description\":\"Floating Plate for Palletizer\",\"quantity\":\"1\",\"stock\":\"9\",\"price\":\"1500\",\"totalPrice\":\"1500\"},{\"id\":\"6\",\"description\":\"Diamond Tip Disk\",\"quantity\":\"3\",\"stock\":\"17\",\"price\":\"1540\",\"totalPrice\":\"4620\"},{\"id\":\"10\",\"description\":\"Petrol pressure washer\",\"quantity\":\"2\",\"stock\":\"18\",\"price\":\"3094\",\"totalPrice\":\"6188\"}]', 0, 1231, 12308, 13538.8, 'cash', '2020-02-02 21:22:25'),
(6, 10006, 1, 11, '[{\"id\":\"1\",\"description\":\"Industrial vacuum cleaner\",\"quantity\":\"2\",\"stock\":\"7\",\"price\":\"100\",\"totalPrice\":\"200\"}]', 0, 20, 200, 220, 'cash', '2020-02-05 20:19:50'),
(7, 10007, 1, 11, '[{\"id\":\"8\",\"description\":\"Mower\",\"quantity\":\"1\",\"stock\":\"19\",\"price\":\"2156\",\"totalPrice\":\"2156\"}]', 0, 216, 2156, 2371.6, 'cash', '2020-02-05 20:20:16'),
(8, 10008, 3, 11, '[{\"id\":\"17\",\"description\":\"Illumination tower\",\"quantity\":\"1\",\"stock\":\"19\",\"price\":\"2520\",\"totalPrice\":\"2520\"}]', 0, 252, 2520, 2772, 'cash', '2020-02-05 20:21:19'),
(9, 10009, 3, 11, '[{\"id\":\"10\",\"description\":\"Petrol pressure washer\",\"quantity\":\"1\",\"stock\":\"17\",\"price\":\"3094\",\"totalPrice\":\"3094\"}]', 0, 309, 3094, 3403.4, 'cash', '2020-02-05 20:57:30'),
(10, 10010, 1, 11, '[{\"id\":\"17\",\"description\":\"Illumination tower\",\"quantity\":\"1\",\"stock\":\"18\",\"price\":\"2520\",\"totalPrice\":\"2520\"}]', 0, 252, 2520, 2772, 'cash', '2020-02-08 02:23:29'),
(11, 10011, 2, 11, '[{\"id\":\"8\",\"description\":\"Mower\",\"quantity\":\"1\",\"stock\":\"18\",\"price\":\"2156\",\"totalPrice\":\"2156\"}]', 0, 216, 2156, 2371.6, 'cash', '2020-02-08 02:28:43'),
(12, 10011, 2, 11, '[{\"id\":\"8\",\"description\":\"Mower\",\"quantity\":\"1\",\"stock\":\"18\",\"price\":\"2156\",\"totalPrice\":\"2156\"}]', 0, 216, 2156, 2371.6, 'cash', '2020-02-08 02:33:45'),
(13, 10011, 2, 11, '[{\"id\":\"8\",\"description\":\"Mower\",\"quantity\":\"1\",\"stock\":\"18\",\"price\":\"2156\",\"totalPrice\":\"2156\"}]', 0, 216, 2156, 2371.6, 'cash', '2020-02-08 02:33:50'),
(14, 10011, 2, 11, '[{\"id\":\"8\",\"description\":\"Mower\",\"quantity\":\"1\",\"stock\":\"18\",\"price\":\"2156\",\"totalPrice\":\"2156\"}]', 0, 216, 2156, 2371.6, 'cash', '2020-02-08 02:34:32'),
(15, 10012, 1, 11, '[{\"id\":\"5\",\"description\":\"Floor Cutter without Disk\",\"quantity\":\"1\",\"stock\":\"19\",\"price\":\"2156\",\"totalPrice\":\"2156\"}]', 0, 216, 2156, 2371.6, 'cash', '2020-02-08 02:35:03'),
(16, 10012, 1, 11, '[{\"id\":\"5\",\"description\":\"Floor Cutter without Disk\",\"quantity\":\"1\",\"stock\":\"19\",\"price\":\"2156\",\"totalPrice\":\"2156\"}]', 0, 216, 2156, 2371.6, 'cash', '2020-02-08 02:51:24'),
(17, 10012, 1, 11, '[{\"id\":\"5\",\"description\":\"Floor Cutter without Disk\",\"quantity\":\"1\",\"stock\":\"19\",\"price\":\"2156\",\"totalPrice\":\"2156\"}]', 0, 216, 2156, 2371.6, 'cash', '2020-02-08 02:51:30'),
(18, 10012, 1, 11, '[{\"id\":\"5\",\"description\":\"Floor Cutter without Disk\",\"quantity\":\"1\",\"stock\":\"19\",\"price\":\"2156\",\"totalPrice\":\"2156\"}]', 0, 216, 2156, 2371.6, 'cash', '2020-02-08 02:55:19'),
(19, 10012, 1, 11, '[{\"id\":\"5\",\"description\":\"Floor Cutter without Disk\",\"quantity\":\"1\",\"stock\":\"19\",\"price\":\"2156\",\"totalPrice\":\"2156\"}]', 0, 216, 2156, 2371.6, 'cash', '2020-02-08 02:55:23'),
(20, 10012, 1, 11, '[{\"id\":\"5\",\"description\":\"Floor Cutter without Disk\",\"quantity\":\"1\",\"stock\":\"19\",\"price\":\"2156\",\"totalPrice\":\"2156\"}]', 0, 216, 2156, 2371.6, 'cash', '2020-02-08 03:55:09'),
(21, 10012, 1, 11, '[{\"id\":\"5\",\"description\":\"Floor Cutter without Disk\",\"quantity\":\"1\",\"stock\":\"19\",\"price\":\"2156\",\"totalPrice\":\"2156\"}]', 0, 216, 2156, 2371.6, 'cash', '2020-02-08 03:55:18'),
(22, 10013, 1, 11, '[{\"id\":\"3\",\"description\":\"Air Compressor for painting\",\"quantity\":\"1\",\"stock\":\"18\",\"price\":\"4200\",\"totalPrice\":\"4200\"}]', 0, 420, 4200, 4620, 'cash', '2020-02-08 04:04:46'),
(23, 10014, 2, 11, '[{\"id\":\"3\",\"description\":\"Air Compressor for painting\",\"quantity\":\"1\",\"stock\":\"17\",\"price\":\"4200\",\"totalPrice\":\"4200\"}]', 0, 420, 4200, 4620, 'cash', '2020-02-08 04:59:39'),
(24, 10014, 2, 11, '[{\"id\":\"3\",\"description\":\"Air Compressor for painting\",\"quantity\":\"1\",\"stock\":\"17\",\"price\":\"4200\",\"totalPrice\":\"4200\"}]', 0, 420, 4200, 4620, 'cash', '2020-02-08 05:16:59'),
(25, 10015, 1, 11, '[{\"id\":\"8\",\"description\":\"Mower\",\"quantity\":\"1\",\"stock\":\"17\",\"price\":\"2156\",\"totalPrice\":\"2156\"}]', 0, 216, 2156, 2371.6, 'cash', '2020-02-08 05:47:58'),
(26, 10015, 1, 11, '[{\"id\":\"8\",\"description\":\"Mower\",\"quantity\":\"1\",\"stock\":\"17\",\"price\":\"2156\",\"totalPrice\":\"2156\"}]', 0, 216, 2156, 2371.6, 'cash', '2020-02-08 05:49:41'),
(27, 10016, 1, 11, '[{\"id\":\"36\",\"description\":\"6 Kva Diesel Power Plant\",\"quantity\":\"1\",\"stock\":\"19\",\"price\":\"4900\",\"totalPrice\":\"4900\"}]', 0, 490, 4900, 5390, 'cash', '2020-02-08 06:24:37'),
(28, 10016, 1, 11, '[{\"id\":\"36\",\"description\":\"6 Kva Diesel Power Plant\",\"quantity\":\"1\",\"stock\":\"19\",\"price\":\"4900\",\"totalPrice\":\"4900\"}]', 0, 490, 4900, 5390, 'cash', '2020-02-08 06:24:52'),
(29, 10017, 3, 11, '[{\"id\":\"36\",\"description\":\"6 Kva Diesel Power Plant\",\"quantity\":\"1\",\"stock\":\"18\",\"price\":\"4900\",\"totalPrice\":\"4900\"}]', 0, 490, 4900, 5390, 'cash', '2020-02-08 06:25:26'),
(30, 10018, 1, 11, '[{\"id\":\"2\",\"description\":\"Floating Plate for Palletizer\",\"quantity\":\"1\",\"stock\":\"8\",\"price\":\"1500\",\"totalPrice\":\"1500\"}]', 0, 150, 1500, 1650, 'cash', '2020-02-08 06:38:54'),
(31, 10018, 1, 11, '[{\"id\":\"2\",\"description\":\"Floating Plate for Palletizer\",\"quantity\":\"1\",\"stock\":\"8\",\"price\":\"1500\",\"totalPrice\":\"1500\"}]', 0, 150, 1500, 1650, 'cash', '2020-02-08 06:45:54'),
(32, 10019, 1, 11, '[{\"id\":\"4\",\"description\":\"Brick Cutter without Disk\",\"quantity\":\"1\",\"stock\":\"16\",\"price\":\"5600\",\"totalPrice\":\"5600\"}]', 0, 56, 5600, 5656, 'cash', '2020-02-08 06:46:19'),
(33, 10020, 1, 11, '[{\"id\":\"1\",\"description\":\"Industrial vacuum cleaner\",\"quantity\":\"1\",\"stock\":\"6\",\"price\":\"100\",\"totalPrice\":\"100\"}]', 0, 10, 100, 110, 'cash', '2020-02-08 06:47:34'),
(34, 10021, 3, 11, '[{\"id\":\"10\",\"description\":\"Petrol pressure washer\",\"quantity\":\"1\",\"stock\":\"16\",\"price\":\"3094\",\"totalPrice\":\"3094\"}]', 0, 309, 3094, 3403.4, 'cash', '2020-02-08 06:49:28'),
(35, 10022, 1, 11, '[{\"id\":\"5\",\"description\":\"Floor Cutter without Disk\",\"quantity\":\"1\",\"stock\":\"18\",\"price\":\"2156\",\"totalPrice\":\"2156\"}]', 0, 216, 2156, 2371.6, 'cash', '2020-02-08 06:50:40'),
(36, 10023, 1, 11, '[{\"id\":\"5\",\"description\":\"Floor Cutter without Disk\",\"quantity\":\"1\",\"stock\":\"17\",\"price\":\"2156\",\"totalPrice\":\"2156\"}]', 0, 216, 2156, 2371.6, 'cash', '2020-02-08 06:54:18'),
(37, 10024, 2, 11, '[{\"id\":\"8\",\"description\":\"Mower\",\"quantity\":\"1\",\"stock\":\"16\",\"price\":\"2156\",\"totalPrice\":\"2156\"}]', 0, 216, 2156, 2371.6, 'cash', '2020-02-08 07:21:12'),
(38, 10025, 1, 11, '[{\"id\":\"8\",\"description\":\"Mower\",\"quantity\":\"1\",\"stock\":\"15\",\"price\":\"2156\",\"totalPrice\":\"2156\"}]', 0, 216, 2156, 2371.6, 'cash', '2020-02-08 07:23:19'),
(39, 10026, 1, 11, '[{\"id\":\"5\",\"description\":\"Floor Cutter without Disk\",\"quantity\":\"1\",\"stock\":\"16\",\"price\":\"2156\",\"totalPrice\":\"2156\"}]', 0, 216, 2156, 2371.6, 'cash', '2020-02-08 07:24:54'),
(40, 10027, 2, 11, '[{\"id\":\"36\",\"description\":\"6 Kva Diesel Power Plant\",\"quantity\":\"1\",\"stock\":\"17\",\"price\":\"4900\",\"totalPrice\":\"4900\"}]', 0, 490, 4900, 5390, 'cash', '2020-02-08 07:26:33'),
(41, 10028, 1, 11, '[{\"id\":\"17\",\"description\":\"Illumination tower\",\"quantity\":\"1\",\"stock\":\"17\",\"price\":\"2520\",\"totalPrice\":\"2520\"}]', 0, 252, 2520, 2772, 'cash', '2020-02-08 07:47:08'),
(42, 10029, 1, 11, '[{\"id\":\"3\",\"description\":\"Air Compressor for painting\",\"quantity\":\"1\",\"stock\":\"16\",\"price\":\"4200\",\"totalPrice\":\"4200\"}]', 0, 420, 4200, 4620, 'cash', '2020-02-08 07:51:41'),
(43, 10030, 1, 11, '[{\"id\":\"3\",\"description\":\"Air Compressor for painting\",\"quantity\":\"1\",\"stock\":\"15\",\"price\":\"4200\",\"totalPrice\":\"4200\"}]', 0, 420, 4200, 4620, 'cash', '2020-02-08 08:16:32'),
(44, 10031, 2, 11, '[{\"id\":\"38\",\"description\":\"20 Kva Diesel Power Plant\",\"quantity\":\"1\",\"stock\":\"19\",\"price\":\"5040\",\"totalPrice\":\"5040\"}]', 0, 504, 5040, 5544, 'cash', '2020-02-08 08:18:10'),
(45, 10032, 1, 11, '[{\"id\":\"55\",\"description\":\"Concrete sample cylinder\",\"quantity\":\"1\",\"stock\":\"19\",\"price\":\"560\",\"totalPrice\":\"560\"},{\"id\":\"54\",\"description\":\"Chapeta\",\"quantity\":\"1\",\"stock\":\"19\",\"price\":\"924\",\"totalPrice\":\"924\"}]', 0, 148, 1484, 1632.4, 'cash', '2020-02-08 08:19:37'),
(46, 10033, 3, 11, '[{\"id\":\"33\",\"description\":\"safety harness\",\"quantity\":\"1\",\"stock\":\"19\",\"price\":\"2450\",\"totalPrice\":\"2450\"},{\"id\":\"29\",\"description\":\"Scaffolding scissors\",\"quantity\":\"1\",\"stock\":\"19\",\"price\":\"226\",\"totalPrice\":\"226\"}]', 0, 268, 2676, 2943.6, 'cash', '2020-02-08 08:21:28'),
(47, 10034, 1, 11, '[{\"id\":\"31\",\"description\":\"Security handrails\",\"quantity\":\"1\",\"stock\":\"19\",\"price\":\"105\",\"totalPrice\":\"105\"},{\"id\":\"38\",\"description\":\"20 Kva Diesel Power Plant\",\"quantity\":\"1\",\"stock\":\"18\",\"price\":\"5040\",\"totalPrice\":\"5040\"}]', 0, 515, 5145, 5659.5, 'cash', '2020-02-08 08:24:28'),
(48, 10035, 1, 11, '[{\"id\":\"12\",\"description\":\"Electric motor pump\",\"quantity\":\"1\",\"stock\":\"19\",\"price\":\"3360\",\"totalPrice\":\"3360\"}]', 0, 336, 3360, 3696, 'cash', '2020-02-08 08:33:55'),
(49, 10036, 2, 11, '[{\"id\":\"53\",\"description\":\"Hydrostatic pump\",\"quantity\":\"1\",\"stock\":\"19\",\"price\":\"1078\",\"totalPrice\":\"1078\"}]', 0, 108, 1078, 1185.8, 'cash', '2020-02-08 08:34:46'),
(50, 10037, 2, 11, '[{\"id\":\"30\",\"description\":\"Internal ladder for scaffolding\",\"quantity\":\"1\",\"stock\":\"19\",\"price\":\"378\",\"totalPrice\":\"378\"}]', 0, 38, 378, 415.8, 'cash', '2020-02-08 08:35:31'),
(51, 10038, 1, 11, '[{\"id\":\"34\",\"description\":\"Sling for harness\",\"quantity\":\"1\",\"stock\":\"19\",\"price\":\"245\",\"totalPrice\":\"245\"}]', 0, 25, 245, 269.5, 'cash', '2020-02-08 08:44:57'),
(52, 10039, 2, 11, '[{\"id\":\"32\",\"description\":\"Rotating wheel for scaffolding\",\"quantity\":\"1\",\"stock\":\"19\",\"price\":\"235\",\"totalPrice\":\"235\"}]', 0, 24, 235, 258.5, 'cash', '2020-02-08 08:45:55'),
(53, 10040, 1, 11, '[{\"id\":\"10\",\"description\":\"Petrol pressure washer\",\"quantity\":\"1\",\"stock\":\"15\",\"price\":\"3094\",\"totalPrice\":\"3094\"}]', 0, 309, 3094, 3403.4, 'cash', '2020-02-08 08:58:24'),
(54, 10041, 1, 11, '[{\"id\":\"24\",\"description\":\"Drill Percussion SDS Max 110V (Mining)\",\"quantity\":\"1\",\"stock\":\"19\",\"price\":\"6440\",\"totalPrice\":\"6440\"}]', 0, 644, 6440, 7084, 'cash', '2020-02-08 08:59:08'),
(55, 10042, 2, 11, '[{\"id\":\"44\",\"description\":\"Aluminum Scissor Ladder\",\"quantity\":\"1\",\"stock\":\"19\",\"price\":\"490\",\"totalPrice\":\"490\"}]', 0, 49, 490, 539, 'cash', '2020-02-08 08:59:51'),
(56, 10043, 1, 11, '[{\"id\":\"17\",\"description\":\"Illumination tower\",\"quantity\":\"1\",\"stock\":\"16\",\"price\":\"2520\",\"totalPrice\":\"2520\"}]', 0, 252, 2520, 2772, 'cash', '2020-02-08 09:00:29'),
(57, 10044, 1, 11, '[{\"id\":\"22\",\"description\":\"1/2 Hammer Drill Wood and Metal\",\"quantity\":\"1\",\"stock\":\"19\",\"price\":\"11200\",\"totalPrice\":\"11200\"}]', 0, 1120, 11200, 12320, 'cash', '2020-02-08 09:01:39'),
(58, 10045, 2, 11, '[{\"id\":\"28\",\"description\":\"Frame scaffolding scissors\",\"quantity\":\"1\",\"stock\":\"19\",\"price\":\"140\",\"totalPrice\":\"140\"}]', 0, 14, 140, 154, 'cash', '2020-02-09 02:53:24'),
(59, 10046, 2, 11, '[{\"id\":\"13\",\"description\":\"Circular saw\",\"quantity\":\"1\",\"stock\":\"19\",\"price\":\"1540\",\"totalPrice\":\"1540\"}]', 0, 154, 1540, 1694, 'cash', '2020-02-09 02:54:22'),
(60, 10047, 1, 11, '[{\"id\":\"45\",\"description\":\"Electric extension\",\"quantity\":\"1\",\"stock\":\"19\",\"price\":\"518\",\"totalPrice\":\"518\"}]', 0, 52, 518, 569.8, 'cash', '2020-02-09 02:55:34'),
(61, 10048, 2, 11, '[{\"id\":\"52\",\"description\":\"Weighing machine\",\"quantity\":\"1\",\"stock\":\"19\",\"price\":\"182\",\"totalPrice\":\"182\"}]', 0, 18, 182, 200.2, 'cash', '2020-02-09 02:58:27'),
(62, 10049, 2, 11, '[{\"id\":\"43\",\"description\":\"120 Kva Diesel Power Plant\",\"quantity\":\"1\",\"stock\":\"19\",\"price\":\"5390\",\"totalPrice\":\"5390\"}]', 0, 539, 5390, 5929, 'cash', '2020-02-09 02:59:27'),
(63, 10050, 3, 11, '[{\"id\":\"19\",\"description\":\"Muela or chisel hammer demolishing floor\",\"quantity\":\"1\",\"stock\":\"19\",\"price\":\"13440\",\"totalPrice\":\"13440\"}]', 0, 1344, 13440, 14784, 'cash', '2020-02-09 03:02:35'),
(64, 10051, 2, 11, '[{\"id\":\"36\",\"description\":\"6 Kva Diesel Power Plant\",\"quantity\":\"1\",\"stock\":\"16\",\"price\":\"4900\",\"totalPrice\":\"4900\"}]', 0, 147, 4900, 5047, 'cash', '2020-02-09 03:04:50'),
(65, 10052, 2, 11, '[{\"id\":\"17\",\"description\":\"Illumination tower\",\"quantity\":\"1\",\"stock\":\"15\",\"price\":\"2520\",\"totalPrice\":\"2520\"}]', 0, 50, 2520, 2570.4, 'cash', '2020-02-09 03:05:35'),
(66, 10053, 1, 11, '[{\"id\":\"23\",\"description\":\"Drill Percussion SDS Plus 110V\",\"quantity\":\"1\",\"stock\":\"19\",\"price\":\"5460\",\"totalPrice\":\"5460\"}]', 0, 55, 5460, 5514.6, 'cash', '2020-02-09 03:16:31'),
(67, 10054, 3, 11, '[{\"id\":\"46\",\"description\":\"Tensioner cat\",\"quantity\":\"1\",\"stock\":\"19\",\"price\":\"532\",\"totalPrice\":\"532\"}]', 0, 53, 532, 585.2, 'cash', '2020-02-09 03:28:42'),
(139, 10055, 1, 11, '[{\"id\":\"36\",\"description\":\"6 Kva Diesel Power Plant\",\"quantity\":\"1\",\"stock\":\"15\",\"price\":\"4900\",\"totalPrice\":\"4900\"}]', 0, 0, 4900, 4410, 'cash', '2020-02-10 07:50:47'),
(140, 10056, 1, 11, '[{\"id\":\"4\",\"description\":\"Brick Cutter without Disk\",\"quantity\":\"1\",\"stock\":\"15\",\"price\":\"5600\",\"totalPrice\":\"5600\"}]', 280, 0, 5600, 5320, 'cash', '2020-02-10 08:02:12'),
(141, 10057, 1, 11, '[{\"id\":\"17\",\"description\":\"Illumination tower\",\"quantity\":\"1\",\"stock\":\"14\",\"price\":\"2520\",\"totalPrice\":\"2520\"}]', 126, 0, 2394, 2394, 'cash', '2020-02-10 08:22:56'),
(142, 10058, 3, 11, '[{\"id\":\"5\",\"description\":\"Floor Cutter without Disk\",\"quantity\":\"1\",\"stock\":\"15\",\"price\":\"2156\",\"totalPrice\":\"2156\"}]', 216, 0, 1940.4, 2156, 'cash', '2020-02-10 08:52:28'),
(143, 10059, 1, 11, '[{\"id\":\"5\",\"description\":\"Floor Cutter without Disk\",\"quantity\":\"1\",\"stock\":\"14\",\"price\":\"2156\",\"totalPrice\":\"2156\"}]', 216, 0, 1940.4, 2156, 'cash', '2020-02-10 08:56:02'),
(144, 10060, 1, 11, '[{\"id\":\"2\",\"description\":\"Floating Plate for Palletizer\",\"quantity\":\"1\",\"stock\":\"7\",\"price\":\"1500\",\"totalPrice\":\"1500\"}]', 30, 0, 1470, 1500, 'cash', '2020-02-10 11:36:28'),
(145, 10061, 2, 11, '[{\"id\":\"5\",\"description\":\"Floor Cutter without Disk\",\"quantity\":\"1\",\"stock\":\"13\",\"price\":\"2156\",\"totalPrice\":\"2156\"}]', 108, 0, 2048.2, 2156, 'cash', '2020-02-10 11:53:53'),
(146, 10062, 2, 11, '[{\"id\":\"17\",\"description\":\"Illumination tower\",\"quantity\":\"1\",\"stock\":\"13\",\"price\":\"2520\",\"totalPrice\":\"2520\"},{\"id\":\"28\",\"description\":\"Frame scaffolding scissors\",\"quantity\":\"1\",\"stock\":\"18\",\"price\":\"140\",\"totalPrice\":\"140\"},{\"id\":\"23\",\"description\":\"Drill Percussion SDS Plus 110V\",\"quantity\":\"1\",\"stock\":\"18\",\"price\":\"5460\",\"totalPrice\":\"5460\"},{\"id\":\"7\",\"description\":\"Air extractor\",\"quantity\":\"1\",\"stock\":\"19\",\"price\":\"2156\",\"totalPrice\":\"2156\"}]', 1028, 0, 9248.4, 10276, 'cash', '2020-02-10 12:01:42'),
(147, 10063, 1, 1, '[{\"id\":\"2\",\"description\":\"Floating Plate for Palletizer\",\"quantity\":\"1\",\"stock\":\"6\",\"price\":\"1500\",\"totalPrice\":\"1500\"}]', 75, 0, 1425, 1500, 'cash', '2020-02-10 12:42:04'),
(148, 10064, 1, 1, '[{\"id\":\"3\",\"description\":\"Air Compressor for painting\",\"quantity\":\"1\",\"stock\":\"13\",\"price\":\"4200\",\"totalPrice\":\"4200\"}]', 420, 0, 4200, 3780, 'cash', '2020-02-11 04:11:33'),
(149, 10065, 1, 1, '[{\"id\":\"5\",\"description\":\"Floor Cutter without Disk\",\"quantity\":\"1\",\"stock\":\"12\",\"price\":\"2156\",\"totalPrice\":\"2156\"}]', 216, 0, 0, 1940, 'cash', '2020-02-11 04:13:32'),
(150, 10066, 1, 1, '[{\"id\":\"10\",\"description\":\"Petrol pressure washer\",\"quantity\":\"1\",\"stock\":\"14\",\"price\":\"3094\",\"totalPrice\":\"3094\"}]', 309, 0, 0, 2785, 'cash', '2020-02-11 04:15:34'),
(151, 10067, 2, 1, '[{\"id\":\"6\",\"description\":\"Diamond Tip Disk\",\"quantity\":\"1\",\"stock\":\"16\",\"price\":\"1540\",\"totalPrice\":\"1540\"}]', 154, 0, 1540, 1386, 'cash', '2020-02-11 04:16:56'),
(152, 10068, 1, 1, '[{\"id\":\"2\",\"description\":\"Floating Plate for Palletizer\",\"quantity\":\"1\",\"stock\":\"5\",\"price\":\"1500\",\"totalPrice\":\"1500\"}]', 150, 0, 1350, 1500, 'cash', '2020-02-11 04:25:55'),
(153, 10069, 1, 1, '[{\"id\":\"6\",\"description\":\"Diamond Tip Disk\",\"quantity\":\"1\",\"stock\":\"15\",\"price\":\"1540\",\"totalPrice\":\"1540\"}]', 154, 0, 1540, 1540, 'cash', '2020-02-11 04:30:07'),
(154, 10070, 1, 1, '[{\"id\":\"6\",\"description\":\"Diamond Tip Disk\",\"quantity\":\"1\",\"stock\":\"14\",\"price\":\"1540\",\"totalPrice\":\"1540\"}]', 154, 0, 1540, 1386, 'cash', '2020-02-11 04:36:01'),
(155, 10071, 2, 1, '[{\"id\":\"6\",\"description\":\"Diamond Tip Disk\",\"quantity\":\"1\",\"stock\":\"13\",\"price\":\"1540\",\"totalPrice\":\"1540\"}]', 154, 0, 1386, 1540, 'cash', '2020-02-11 04:38:08'),
(156, 10072, 1, 1, '[{\"id\":\"6\",\"description\":\"Diamond Tip Disk\",\"quantity\":\"1\",\"stock\":\"12\",\"price\":\"1540\",\"totalPrice\":\"1540\"}]', 154, 0, 1540, 1386, 'cash', '2020-02-11 04:51:32'),
(157, 10073, 2, 1, '[{\"id\":\"2\",\"description\":\"Floating Plate for Palletizer\",\"quantity\":\"1\",\"stock\":\"4\",\"price\":\"1500\",\"totalPrice\":\"1500\"}]', 150, 0, 1350, 1500, 'cash', '2020-02-11 04:57:53'),
(158, 10074, 2, 1, '[{\"id\":\"2\",\"description\":\"Floating Plate for Palletizer\",\"quantity\":\"1\",\"stock\":\"3\",\"price\":\"1500\",\"totalPrice\":\"1500\"}]', 150, 0, 1350, 1500, 'cash', '2020-02-11 05:10:21'),
(159, 10075, 2, 1, '[{\"id\":\"8\",\"description\":\"Mower\",\"quantity\":\"1\",\"stock\":\"14\",\"price\":\"2156\",\"totalPrice\":\"2156\"}]', 216, 0, 1940, 2156, 'cash', '2020-02-11 05:11:18'),
(160, 10076, 2, 11, '[{\"id\":\"6\",\"description\":\"Diamond Tip Disk\",\"quantity\":\"1\",\"stock\":\"11\",\"price\":\"1540\",\"totalPrice\":\"1540\"}]', 154, 0, 1386, 1540, 'cash', '2020-02-12 06:24:16'),
(161, 10077, 1, 11, '[{\"id\":\"4\",\"description\":\"Brick Cutter without Disk\",\"quantity\":\"1\",\"stock\":\"14\",\"price\":\"5600\",\"totalPrice\":\"5600\"}]', 560, 0, 5040, 5600, 'cash', '2020-02-12 06:26:38');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `parts`
--
ALTER TABLE `parts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `partsuser`
--
ALTER TABLE `partsuser`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `withdrawal`
--
ALTER TABLE `withdrawal`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `parts`
--
ALTER TABLE `parts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- AUTO_INCREMENT for table `partsuser`
--
ALTER TABLE `partsuser`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `withdrawal`
--
ALTER TABLE `withdrawal`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=162;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
