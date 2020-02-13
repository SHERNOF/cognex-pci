-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 13, 2020 at 12:58 PM
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
-- Database: `cognex-pci`
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
(1, 'AT70', '2020-02-13 11:44:57'),
(2, 'Checker', '2020-02-13 11:45:05'),
(3, 'DM100', '2020-02-13 11:45:16'),
(4, 'DM200', '2020-02-13 11:45:22'),
(5, 'Deluxe IO', '2020-02-13 11:45:38'),
(6, 'DM300', '2020-02-13 11:45:47'),
(7, 'DM50', '2020-02-13 11:45:58'),
(24, 'DM70', '2020-02-13 11:46:05'),
(25, 'Falcon', '2020-02-13 11:46:17'),
(26, 'iBase', '2020-02-13 11:46:24'),
(27, 'IS5X', '2020-02-13 11:46:35'),
(28, 'ism', '2020-02-13 11:46:41'),
(29, 'Finch', '2020-02-13 11:47:23'),
(30, 'Merlin', '2020-02-13 11:47:29'),
(31, 'Rhino', '2020-02-13 11:47:40'),
(32, 'RoadRunner', '2020-02-13 11:47:51'),
(33, 'Rogue', '2020-02-13 11:48:02'),
(34, 'Slide In', '2020-02-13 11:48:10'),
(35, 'Viper', '2020-02-13 11:48:20'),
(36, 'Vision Box', '2020-02-13 11:48:26'),
(37, 'Wren', '2020-02-13 11:48:33'),
(38, 'Zebra', '2020-02-13 11:48:43'),
(39, 'Others', '2020-02-13 11:48:49');

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
(1, 1, '100', 'Stick Calibration ', '', 1, 0, 0, 0, '0000-00-00 00:00:00'),
(2, 1, '101', 'Detention key ', '', 1, 0, 0, 0, '0000-00-00 00:00:00'),
(3, 1, '102', 'BUNA-N Balls', '', 3, 0, 0, 0, '0000-00-00 00:00:00'),
(4, 1, '103', 'Electronics Switch', '', 0, 0, 0, 0, '0000-00-00 00:00:00'),
(5, 1, '104', 'Electronics Switch', '', 8, 0, 0, 0, '0000-00-00 00:00:00'),
(6, 1, '105', 'Calibration handle', '', 5, 0, 0, 0, '0000-00-00 00:00:00'),
(7, 1, '106', 'Connector', '', 20, 0, 0, 0, '0000-00-00 00:00:00'),
(8, 1, '107', 'Pcb Connector', '', 4, 0, 0, 0, '0000-00-00 00:00:00'),
(9, 1, '108', 'Connector', '', 1, 0, 0, 0, '0000-00-00 00:00:00'),
(10, 1, '109', 'Pcb Connector', '', 23, 0, 0, 0, '0000-00-00 00:00:00'),
(11, 1, '110', 'Automation DIRECT motor', '', 3, 0, 0, 0, '0000-00-00 00:00:00'),
(12, 1, '111', 'Conector  ( Product Side ) / ( Fixture Side )  HFY031CY', '', 40, 0, 0, 0, '0000-00-00 00:00:00'),
(13, 1, '112', 'Heli-Cal Connector for DM360 Motor Stepper ', '', 1, 0, 0, 0, '0000-00-00 00:00:00'),
(14, 1, '113', 'Gardner Spring', '', 45, 0, 0, 0, '0000-00-00 00:00:00'),
(15, 1, '114', 'Nest', '', 0, 0, 0, 0, '0000-00-00 00:00:00'),
(16, 1, '115', 'Automation DIRECT motor', '', 2, 0, 0, 0, '0000-00-00 00:00:00'),
(17, 2, '200', '185-1010R REV C', '', 2, 0, 0, 0, '0000-00-00 00:00:00'),
(18, 2, '201', 'Battery 1.5', '', 3, 0, 0, 0, '0000-00-00 00:00:00'),
(19, 2, '202', 'SERIAL CABLES DB9 (FEMALE TO FEMALE) 2 METERS  ( Pin 9 )', '', 13, 0, 0, 0, '0000-00-00 00:00:00'),
(20, 2, '203', 'SERIAL CABLES DB 9 (MALE TO FEMALE) 2 METERS ( Pin 9 )', '', 4, 0, 0, 0, '0000-00-00 00:00:00'),
(21, 2, '204', 'SERIAL CABLES DB 9 (MALE TO MALE) 2 METERS ( Pin 9 )', '', 5, 0, 0, 0, '0000-00-00 00:00:00'),
(22, 2, '205', 'Led Probe Boards Checker Light Ring', '', 0, 0, 0, 0, '0000-00-00 00:00:00'),
(23, 2, '206', 'Modified Cable 185-1010R REV C', '', 1, 0, 0, 0, '0000-00-00 00:00:00'),
(24, 2, '207', 'COGNEX CKR-200-I0B0X CHECKER 200 IO MODULE', '', 10, 0, 0, 0, '0000-00-00 00:00:00'),
(25, 2, '208', 'CHECKER TEST BOARD', '', 1, 0, 0, 0, '0000-00-00 00:00:00'),
(26, 2, '209', 'Digimatic', '', 1, 0, 0, 0, '0000-00-00 00:00:00'),
(27, 2, '210', 'Cable', '', 2, 0, 0, 0, '0000-00-00 00:00:00'),
(28, 2, '211', 'SERIAL CABLES ( MALE TO FEMALE   Pin 15 ) 2 METERS (Replaced with VGA Cable)', '', 11, 0, 0, 0, '0000-00-00 00:00:00'),
(29, 2, '212', 'IC VP485', '', 10, 0, 0, 0, '0000-00-00 00:00:00'),
(30, 2, '213', 'POE', '', 4, 0, 0, 0, '0000-00-00 00:00:00'),
(31, 3, '300', 'Link Conector L-Com A to B', '', 5, 0, 0, 0, '0000-00-00 00:00:00'),
(32, 3, '301', 'Motor Automatic Sommer / GEP1402 BH29023AD', '', 1, 0, 0, 0, '0000-00-00 00:00:00'),
(33, 3, '302', 'USB CABLE A TO MINI B (2 meter )', '', 3, 0, 0, 0, '0000-00-00 00:00:00'),
(34, 3, '303', 'DM FINAL TESTER  CONTRLOL BOARD REV.1', '', 1, 0, 0, 0, '0000-00-00 00:00:00'),
(35, 3, '304', 'FMMT614 NPN Bipolar Transistor', '', 0, 0, 0, 0, '0000-00-00 00:00:00'),
(36, 3, '305', 'DM 100 IO BOX ', '', 6, 0, 0, 0, '0000-00-00 00:00:00'),
(37, 3, '306', 'Automation DIRECT motor  ( Conector DB9 )', '', 2, 0, 0, 0, '0000-00-00 00:00:00'),
(38, 3, '307', 'STAMP IC ( Processor )', '', 3, 0, 0, 0, '0000-00-00 00:00:00'),
(39, 3, '308', 'Automotive fuse (1A)', '', 13, 0, 0, 0, '0000-00-00 00:00:00'),
(40, 3, '309', 'FAN MOTOR TESTER MAINBOARD', '', 1, 0, 0, 0, '0000-00-00 00:00:00'),
(41, 3, '310', 'Omron EE-101', '', 12, 0, 0, 0, '0000-00-00 00:00:00'),
(42, 3, '311', 'Sensor ', '', 1, 0, 0, 0, '0000-00-00 00:00:00'),
(43, 3, '312', 'Gripper motor controller ', '', 0, 0, 0, 0, '0000-00-00 00:00:00'),
(44, 3, '313', 'TB01A 203-3065-RAÂ©', '', 3, 0, 0, 0, '0000-00-00 00:00:00'),
(45, 3, '314', 'HD15 GENDER CHANGERS Female to Female', '', 14, 0, 0, 0, '0000-00-00 00:00:00'),
(46, 3, '315', 'HD15 GENDER CHANGERS Male to Female', '', 19, 0, 0, 0, '0000-00-00 00:00:00'),
(47, 3, '316', 'HD15 GENDER CHANGERS Male to Male', '', 4, 0, 0, 0, '0000-00-00 00:00:00'),
(48, 4, '400', 'Rubber Strip', '', 1, 0, 0, 0, '0000-00-00 00:00:00'),
(49, 4, '401', 'POWER IO cables ( Not threaded)  Black Colour / Panjang', '', 2, 0, 0, 0, '0000-00-00 00:00:00'),
(50, 4, '402', 'Motor Supply PCBA', '', 2, 0, 0, 0, '0000-00-00 00:00:00'),
(51, 4, '403', 'USB CABLE A TO B 6\'A-B', '', 4, 0, 0, 0, '0000-00-00 00:00:00'),
(52, 4, '404', 'PIN PROBE AND PCB HOLDER', '', 1, 0, 0, 0, '0000-00-00 00:00:00'),
(53, 4, '405', 'CHECKER POWER SUPPLY (input 115/230 VAC - Output 24VDC 240W)', '', 2, 0, 0, 0, '0000-00-00 00:00:00'),
(54, 4, '406', 'C-Mount Lens', '', 2, 0, 0, 0, '0000-00-00 00:00:00'),
(55, 4, '407', 'Power Supply PC', '', 0, 0, 0, 0, '0000-00-00 00:00:00'),
(56, 4, '408', 'IC ULN2003APG', '', 0, 0, 0, 0, '0000-00-00 00:00:00'),
(57, 4, '409', 'IC ULN2803APG ', '', 14, 0, 0, 0, '0000-00-00 00:00:00'),
(58, 4, '410', 'IM483 Stepper Com Board OPT-232', '', 5, 0, 0, 0, '0000-00-00 00:00:00'),
(59, 4, '411', '100MM RED LED PANEL / Flat Light Unit', '', 1, 0, 0, 0, '0000-00-00 00:00:00'),
(60, 4, '412', 'DM200 Gripper lens', '', 4, 0, 0, 0, '0000-00-00 00:00:00'),
(61, 4, '413', 'LCD Tester', '', 1, 0, 0, 0, '0000-00-00 00:00:00'),
(62, 4, '414', 'Datamax O\'neil printer Head', '', 1, 0, 0, 0, '0000-00-00 00:00:00'),
(63, 5, '500', 'PN FT4232H Mini Module', '', 2, 0, 0, 0, '0000-00-00 00:00:00'),
(64, 5, '501', 'HD9 GENDER CHANGERS Male to Female', '', 7, 0, 0, 0, '0000-00-00 00:00:00'),
(65, 6, '600', 'Conector Pin 6 ', '', 5, 0, 0, 0, '0000-00-00 00:00:00'),
(66, 6, '601', 'Conector Female (Small )Pin 6', '', 0, 0, 0, 0, '0000-00-00 00:00:00'),
(67, 6, '602', 'Cover silicon', '', 0, 0, 0, 0, '0000-00-00 00:00:00'),
(68, 6, '603', 'Ring silicon', '', 5, 0, 0, 0, '0000-00-00 00:00:00'),
(69, 6, '604', 'Flexy pin 21020-0434 FFC 40 way / Flexible Cable for DM300 Aligment', '', 46, 0, 0, 0, '0000-00-00 00:00:00'),
(70, 6, '605', 'ILL accy side Small', '', 16, 0, 0, 0, '0000-00-00 00:00:00'),
(71, 6, '606', 'Pogo pin ligued lens', '', 50, 0, 0, 0, '0000-00-00 00:00:00'),
(72, 6, '607', 'Receptacle Liquid Lens Probe for DM300 Tester', '', 50, 0, 0, 0, '0000-00-00 00:00:00'),
(73, 6, '608', 'ILL accy side', '', 0, 0, 0, 0, '0000-00-00 00:00:00'),
(74, 6, '609', 'Male Plug Connector', '', 0, 0, 0, 0, '0000-00-00 00:00:00'),
(75, 6, '610', 'Smart vision lights', '', 2, 0, 0, 0, '0000-00-00 00:00:00'),
(76, 6, '611', 'Conector Pin 14 to 12 ', '', 1, 0, 0, 0, '0000-00-00 00:00:00'),
(77, 6, '612', 'POWER IO cables (Non threaded)  Black Colour / Pendek ( pakai conector )', '', 1, 0, 0, 0, '0000-00-00 00:00:00'),
(78, 6, '613', 'IO Cable / Panjang Tread', '', 12, 0, 0, 0, '0000-00-00 00:00:00'),
(79, 6, '614', 'Conector Female large', '', 15, 0, 0, 0, '0000-00-00 00:00:00'),
(80, 6, '615', 'Conector Male large', '', 14, 0, 0, 0, '0000-00-00 00:00:00'),
(81, 6, '616', 'DM300 PCB Sensor', '', 0, 0, 0, 0, '0000-00-00 00:00:00'),
(82, 6, '617', 'Owl Illumination', '', 3, 0, 0, 0, '0000-00-00 00:00:00'),
(83, 6, '618', 'Calibration Tool', '', 1, 0, 0, 0, '0000-00-00 00:00:00'),
(84, 6, '619', 'Cable IO to Conector pin 12', '', 1, 0, 0, 0, '0000-00-00 00:00:00'),
(85, 6, '620', 'Router', '', 0, 0, 0, 0, '0000-00-00 00:00:00'),
(86, 6, '621', 'COGMUX Rev3 + CIO-1400', '', 3, 0, 0, 0, '0000-00-00 00:00:00'),
(87, 6, '622', 'Connector FH8E-40S-0.5SH(05) large', '', 9, 0, 0, 0, '0000-00-00 00:00:00'),
(88, 6, '623', 'Illumination Connector Boards', '', 4, 0, 0, 0, '0000-00-00 00:00:00'),
(89, 6, '624', 'Lens', '', 2, 0, 0, 0, '0000-00-00 00:00:00'),
(90, 6, '625', 'Glass Target', '', 3, 0, 0, 0, '0000-00-00 00:00:00'),
(91, 6, '626', 'Liquid Lens Connector Pogo Pins', '', 0, 0, 0, 0, '0000-00-00 00:00:00'),
(92, 6, '627', 'Cable IO to Conector pin 4', '', 1, 0, 0, 0, '0000-00-00 00:00:00'),
(93, 6, '628', 'Hinges for DM300 JW31 tester ', '', 5, 0, 0, 0, '0000-00-00 00:00:00'),
(94, 6, '629', 'DM300 Final test ILL accy plug board (Connector Boards )', '', 3, 0, 0, 0, '0000-00-00 00:00:00'),
(95, 6, '630', 'Lock Key Claps for DM300 testers ( Small )', '', 8, 0, 0, 0, '0000-00-00 00:00:00'),
(96, 6, '631', 'Lock Key Claps for DM300 testers ( Big )', '', 2, 0, 0, 0, '0000-00-00 00:00:00'),
(97, 6, '632', 'Braket Assembly G296', '', 2, 0, 0, 0, '0000-00-00 00:00:00'),
(98, 6, '633', 'Nest Alignment', '', 1, 0, 0, 0, '0000-00-00 00:00:00'),
(99, 6, '634', 'Cakra4', '', 1, 0, 0, 0, '0000-00-00 00:00:00'),
(100, 6, '635', 'PCB Connector', '', 0, 0, 0, 0, '0000-00-00 00:00:00'),
(101, 6, '636', 'PCB', '', 0, 0, 0, 0, '0000-00-00 00:00:00'),
(102, 6, '637', 'PCB Connector', '', 3, 0, 0, 0, '0000-00-00 00:00:00'),
(103, 6, '638', 'PCB', '', 0, 0, 0, 0, '0000-00-00 00:00:00'),
(104, 6, '639', 'POWER SUPPLY 24 VOLTS ', '', 1, 0, 0, 0, '0000-00-00 00:00:00'),
(105, 6, '640', 'Cable IO', '', 5, 0, 0, 0, '0000-00-00 00:00:00'),
(106, 6, '641', 'NA', '', 25, 0, 0, 0, '0000-00-00 00:00:00'),
(107, 6, '642', 'Cognex CIO-1400 800-9012-2R Rev. B I/O Expansion Module 24 VDC CIO1400 80090122R', '', 0, 0, 0, 0, '0000-00-00 00:00:00'),
(108, 6, '643', 'Set Screw with tail Mc master 92432A458', '', 5, 0, 0, 0, '0000-00-00 00:00:00'),
(109, 6, '644', 'Spare Nest', '', 1, 0, 0, 0, '0000-00-00 00:00:00'),
(110, 6, '645', 'Spare Pogo', '', 1, 0, 0, 0, '0000-00-00 00:00:00'),
(111, 6, '646', 'Spare test connector', '', 7, 0, 0, 0, '0000-00-00 00:00:00'),
(112, 6, '647', 'ILS Ultimate3460XT Printer head', '', 1, 0, 0, 0, '0000-00-00 00:00:00'),
(113, 6, '648', 'Digital Audio Conversion ', '', 0, 0, 0, 0, '0000-00-00 00:00:00'),
(114, 7, '700', 'Nest Jig', '', 0, 0, 0, 0, '0000-00-00 00:00:00'),
(115, 8, '800', '4\'Micro USB Cable - Black', '', 3, 0, 0, 0, '0000-00-00 00:00:00'),
(116, 8, '801', 'PCB', '', 20, 0, 0, 0, '0000-00-00 00:00:00'),
(117, 8, '802', 'PCB', '', 3, 0, 0, 0, '0000-00-00 00:00:00'),
(118, 8, '803', 'FFC', '', 93, 0, 0, 0, '0000-00-00 00:00:00'),
(119, 8, '804', 'ICT690-48SB_full power Supplies Â» Rack Mount Power Supply Â» 24 Vdc', '', 1, 0, 0, 0, '0000-00-00 00:00:00'),
(120, 8, '805', 'Connector USB for UUT', '', 9, 0, 0, 0, '0000-00-00 00:00:00'),
(121, 8, '806', 'DM70 USB-C Adapter rev1.0', '', 16, 0, 0, 0, '0000-00-00 00:00:00'),
(122, 8, '807', 'PC', '', 0, 0, 0, 0, '0000-00-00 00:00:00'),
(123, 8, '808', 'Module', '', 8, 0, 0, 0, '0000-00-00 00:00:00'),
(124, 8, '809', 'Module', '', 4, 0, 0, 0, '0000-00-00 00:00:00'),
(125, 9, '900', 'Falcon WI-FI Slide In Nest Top', '', 3, 0, 0, 0, '0000-00-00 00:00:00'),
(126, 9, '901', 'Falcon WI-FI Slide In Nest Bottom', '', 7, 0, 0, 0, '0000-00-00 00:00:00'),
(127, 9, '902', 'IC Comparator (Battery Charging)', '', 0, 0, 0, 0, '0000-00-00 00:00:00'),
(128, 9, '903', 'Lcom USB Cable A To B', '', 11, 0, 0, 0, '0000-00-00 00:00:00'),
(129, 9, '904', 'PCB IDI8X-Riser ( Falcon Final )', '', 18, 0, 0, 0, '0000-00-00 00:00:00'),
(130, 10, '1000', 'Lcom USB Cable A To B', '', 11, 0, 0, 0, '0000-00-00 00:00:00'),
(131, 10, '1001', 'Lcom Comport Connector Serial', '', 3, 0, 0, 0, '0000-00-00 00:00:00'),
(132, 10, '1002', 'Lcom RJ45 Cable', '', 24, 0, 0, 0, '0000-00-00 00:00:00'),
(133, 10, '1003', 'Power Cable ', '', 4, 0, 0, 0, '0000-00-00 00:00:00'),
(134, 10, '1004', 'Cable USB To USB color Black/ Blue', '', 16, 0, 0, 0, '0000-00-00 00:00:00'),
(135, 11, '1100', 'IS5K BURN-IN TEST PCBA', '', 4, 0, 0, 0, '0000-00-00 00:00:00'),
(136, 11, '1101', '5-port industrial ethernet switch', '', 5, 0, 0, 0, '0000-00-00 00:00:00'),
(137, 11, '1102', 'POWER OVER Com ETHERNET cables  Black Colour', '', 4, 0, 0, 0, '0000-00-00 00:00:00'),
(138, 11, '1103', 'Connector Com 15 pin', '', 11, 0, 0, 0, '0000-00-00 00:00:00'),
(139, 11, '1104', 'IC UCC38502N', '', 2, 0, 0, 0, '0000-00-00 00:00:00'),
(140, 11, '1105', 'IS5K Lens', '', 3, 0, 0, 0, '0000-00-00 00:00:00'),
(141, 11, '1106', 'Lcom RJ45 Cable', '', 13, 0, 0, 0, '0000-00-00 00:00:00'),
(142, 11, '1107', 'Link Conector RJ45 pin 8 / Cat 5e', '', 4, 0, 0, 0, '0000-00-00 00:00:00'),
(143, 11, '1108', 'IS5k Receptacle Pin', '', 100, 0, 0, 0, '0000-00-00 00:00:00'),
(144, 11, '1109', 'Nest - Lock UUT ', '', 0, 0, 0, 0, '0000-00-00 00:00:00'),
(145, 11, '1110', 'Usb Converter to RJ45 ', '', 1, 0, 0, 0, '0000-00-00 00:00:00'),
(146, 11, '1111', 'Standard LEDs - SMD Red/Green ', '', 200, 0, 0, 0, '0000-00-00 00:00:00'),
(147, 11, '1112', 'Power Supply for PC Mini Box', '', 1, 0, 0, 0, '0000-00-00 00:00:00'),
(148, 11, '1113', 'Lens Cover', '', 9, 0, 0, 0, '0000-00-00 00:00:00'),
(149, 11, '1114', 'Lens Cover', '', 9, 0, 0, 0, '0000-00-00 00:00:00'),
(150, 11, '1115', 'Recepracle', '', 51, 0, 0, 0, '0000-00-00 00:00:00'),
(151, 11, '1116', 'IC SOIC 8 pins', '', 0, 0, 0, 0, '0000-00-00 00:00:00'),
(152, 12, '1200', 'Cable Conector 24VDC (Threaded)  Black Colour', '', 9, 0, 0, 0, '0000-00-00 00:00:00'),
(153, 12, '1201', 'Cable Conector 24VDC (NON -Threaded)  Black Colour', '', 5, 0, 0, 0, '0000-00-00 00:00:00'),
(154, 12, '1202', 'Single Port Power Over Ethernet ', '', 4, 0, 0, 0, '0000-00-00 00:00:00'),
(155, 12, '1203', ' Fuse Glass 500MA 250VAC ', '', 83, 0, 0, 0, '0000-00-00 00:00:00'),
(156, 12, '1204', 'POWER OVER ETHERNET cables (threaded) Green Colour/Panjang', '', 2, 0, 0, 0, '0000-00-00 00:00:00'),
(157, 12, '1205', 'NETGEAR ROUTER', '', 0, 0, 0, 0, '0000-00-00 00:00:00'),
(158, 12, '1206', 'POWER OVER ETHERNET cables (threaded)  Green Colour', '', 7, 0, 0, 0, '0000-00-00 00:00:00'),
(159, 12, '1207', 'POWER OVER ETHERNET cables (NON -threaded) Green Colour', '', 0, 0, 0, 0, '0000-00-00 00:00:00'),
(160, 12, '1208', 'POWER OVER ETHERNET cables (threaded)  Green Colour', '', 20, 0, 0, 0, '0000-00-00 00:00:00'),
(161, 12, '1209', 'POWER OVER ETHERNET cables (NON -threaded) Green Colour/Panjang', '', 0, 0, 0, 0, '0000-00-00 00:00:00'),
(162, 12, '1210', 'ISM ADAPTER BOARDS FOR CPU BOARD TEST FIXTURE', '', 7, 0, 0, 0, '0000-00-00 00:00:00'),
(163, 12, '1211', 'ISM Final INJECTOR OF POWER OVER ETHERNET', '', 1, 0, 0, 0, '0000-00-00 00:00:00'),
(164, 12, '1212', 'I/O ISM cable For Burn-In Tester (Yelow Cable) (threaded)', '', 3, 0, 0, 0, '0000-00-00 00:00:00'),
(165, 12, '1213', 'I/O ISM cable For Burn-In Tester (Yelow Cable) (NON -threaded)', '', 9, 0, 0, 0, '0000-00-00 00:00:00'),
(166, 12, '1214', 'IS5k Lens', '', 1, 0, 0, 0, '0000-00-00 00:00:00'),
(167, 12, '1215', 'Cable Conector', '', 1, 0, 0, 0, '0000-00-00 00:00:00'),
(168, 12, '1216', 'Cable Conector', '', 1, 0, 0, 0, '0000-00-00 00:00:00'),
(169, 12, '1217', 'Cable Conector', '', 1, 0, 0, 0, '0000-00-00 00:00:00'),
(170, 12, '1218', 'Cable Conector', '', 3, 0, 0, 0, '0000-00-00 00:00:00'),
(171, 12, '1219', 'POE21-240', '', 1, 0, 0, 0, '0000-00-00 00:00:00'),
(172, 12, '1220', 'power Supply', '', 1, 0, 0, 0, '0000-00-00 00:00:00'),
(173, 13, '1300', 'Flexible Cable for Falcon Imager board', '', 70, 0, 0, 0, '0000-00-00 00:00:00'),
(174, 13, '1301', 'RS232', '', 2, 0, 0, 0, '0000-00-00 00:00:00'),
(175, 13, '1302', 'Connect Board Kestrel Focus', '', 1, 0, 0, 0, '0000-00-00 00:00:00'),
(176, 13, '1303', 'Inter connect Board / Falcon Focus ZIF Connect Board Kestrel Focus', '', 10, 0, 0, 0, '0000-00-00 00:00:00'),
(177, 13, '1304', 'Calibration handle', '', 2, 0, 0, 0, '0000-00-00 00:00:00'),
(178, 14, '1400', 'Cable RJ45 To Com RS232-ESD Female DB9', '', 2, 0, 0, 0, '0000-00-00 00:00:00'),
(179, 14, '1401', 'Magnet Ring Cover Nest', '', 1, 0, 0, 0, '0000-00-00 00:00:00'),
(180, 14, '1402', 'Silicon screw', '', 2, 0, 0, 0, '0000-00-00 00:00:00'),
(181, 14, '1403', 'Nest key', '', 1, 0, 0, 0, '0000-00-00 00:00:00'),
(182, 14, '1404', 'Cable IO power Conector : L', '', 0, 0, 0, 0, '0000-00-00 00:00:00'),
(183, 14, '1405', 'Cable IO power Conector', '', 0, 0, 0, 0, '0000-00-00 00:00:00'),
(184, 14, '1406', 'Merlin screw base (part & drawing)', '', 1, 0, 0, 0, '0000-00-00 00:00:00'),
(185, 14, '1407', 'Littlefuse Surface Mount Fuses 125mA', '', 4, 0, 0, 0, '0000-00-00 00:00:00'),
(186, 14, '1408', 'Screw GEARS OF WHEEL MECHANISM', '', 50, 0, 0, 0, '0000-00-00 00:00:00'),
(187, 14, '1409', '1A 250VAC ', '', 120, 0, 0, 0, '0000-00-00 00:00:00'),
(188, 14, '1410', 'Conector Little Fuse 345 Series 250v', '', 3, 0, 0, 0, '0000-00-00 00:00:00'),
(189, 14, '1411', 'UUT/Dummy', '', 2, 0, 0, 0, '0000-00-00 00:00:00'),
(190, 14, '1412', 'Dumy', '', 5, 0, 0, 0, '0000-00-00 00:00:00'),
(191, 14, '1413', 'Cable USB To USB A', '', 5, 0, 0, 0, '0000-00-00 00:00:00'),
(192, 14, '1414', 'Clamps Nest Merlin', '', 20, 0, 0, 0, '0000-00-00 00:00:00'),
(193, 14, '1415', 'Cover nest ', '', 1, 0, 0, 0, '0000-00-00 00:00:00'),
(194, 14, '1416', 'Solid State Relay', '', 6, 0, 0, 0, '0000-00-00 00:00:00'),
(195, 14, '1417', 'Dwyer A-295 Cable Gland Connector with male & female M-12 connection', '', 4, 0, 0, 0, '0000-00-00 00:00:00'),
(196, 14, '1418', 'Cat6 RJ45 Mini Coupler Shielded RJ45 (8x8) Panel Mount Style', '', 2, 0, 0, 0, '0000-00-00 00:00:00'),
(197, 14, '1419', 'PoE Injector', '', 2, 0, 0, 0, '0000-00-00 00:00:00'),
(198, 14, '1420', 'Conector RJ45 pin 8 to conector', '', 4, 0, 0, 0, '0000-00-00 00:00:00'),
(199, 14, '1421', 'Fuse Glass 200MA 250VAC', '', 37, 0, 0, 0, '0000-00-00 00:00:00'),
(200, 14, '1422', 'Fuse Board MNT 500mA 24VDC', '', 6, 0, 0, 0, '0000-00-00 00:00:00'),
(201, 14, '1423', 'Module', '', 2, 0, 0, 0, '0000-00-00 00:00:00'),
(202, 14, '1424', 'USB', '', 1, 0, 0, 0, '0000-00-00 00:00:00'),
(203, 14, '1425', 'Ring', '', 9, 0, 0, 0, '0000-00-00 00:00:00'),
(204, 14, '1426', 'Cable USB Male to Female', '', 0, 0, 0, 0, '0000-00-00 00:00:00'),
(205, 14, '1427', 'Pcba Pin connector', '', 5, 0, 0, 0, '0000-00-00 00:00:00'),
(206, 14, '1428', 'ATEN USB 2.0 HUB', '', 1, 0, 0, 0, '0000-00-00 00:00:00'),
(207, 14, '1429', 'L-Com Conector RJ45 male pin8', '', 2, 0, 0, 0, '0000-00-00 00:00:00'),
(208, 14, '1430', 'Reflective ring', '', 25, 0, 0, 0, '0000-00-00 00:00:00'),
(209, 14, '1431', 'Ring bulkhead', '', 12, 0, 0, 0, '0000-00-00 00:00:00'),
(210, 14, '1432', 'Nest/Jig for unit', '', 2, 0, 0, 0, '0000-00-00 00:00:00'),
(211, 14, '1433', 'Merlin Interconnect Rev B', '', 1, 0, 0, 0, '0000-00-00 00:00:00'),
(212, 14, '1434', 'FFC Connector (VM59B COGNEX 2015/SCC174340)', '', 2, 0, 0, 0, '0000-00-00 00:00:00'),
(213, 14, '1435', 'Screw for Nest', '', 100, 0, 0, 0, '0000-00-00 00:00:00'),
(214, 14, '1436', 'Motor Maecanical', '', 0, 0, 0, 0, '0000-00-00 00:00:00'),
(215, 14, '1437', 'Machine motor', '', 1, 0, 0, 0, '0000-00-00 00:00:00'),
(216, 14, '1438', 'NA', '', 5, 0, 0, 0, '0000-00-00 00:00:00'),
(217, 14, '1439', 'Com & Conector', '', 4, 0, 0, 0, '0000-00-00 00:00:00'),
(218, 14, '1440', 'Sensor', '', 1, 0, 0, 0, '0000-00-00 00:00:00'),
(219, 14, '1441', 'Sensor', '', 1, 0, 0, 0, '0000-00-00 00:00:00'),
(220, 14, '1442', 'Sensor', '', 6, 0, 0, 0, '0000-00-00 00:00:00'),
(221, 14, '1443', 'Sensor', '', 2, 0, 0, 0, '0000-00-00 00:00:00'),
(222, 14, '1444', 'Sensor', '', 10, 0, 0, 0, '0000-00-00 00:00:00'),
(223, 14, '1445', 'Sensor', '', 10, 0, 0, 0, '0000-00-00 00:00:00'),
(224, 14, '1446', 'Terminal cable 321037VM ', '', 30, 0, 0, 0, '0000-00-00 00:00:00'),
(225, 14, '1447', 'Terminal cable E1008 C294', '', 0, 0, 0, 0, '0000-00-00 00:00:00'),
(226, 14, '1448', 'UNDK 09T9114/D1 F043', '', 1, 0, 0, 0, '0000-00-00 00:00:00'),
(227, 14, '1449', 'HD9 GENDER CHANGERS Female to Female', '', 14, 0, 0, 0, '0000-00-00 00:00:00'),
(228, 14, '1450', 'USB-SWITCHER V1/V2', '', 6, 0, 0, 0, '0000-00-00 00:00:00'),
(229, 14, '1451', 'Red Mirror For Merlin tester ', '', 0, 0, 0, 0, '0000-00-00 00:00:00'),
(230, 15, '1500', 'HDMI Connector', '', 5, 0, 0, 0, '0000-00-00 00:00:00'),
(231, 15, '1501', 'Trimpot / Resistor', '', 17, 0, 0, 0, '0000-00-00 00:00:00'),
(232, 15, '1502', 'Connector Female', '', 1, 0, 0, 0, '0000-00-00 00:00:00'),
(233, 15, '1503', 'Connector Female', '', 3, 0, 0, 0, '0000-00-00 00:00:00'),
(234, 15, '1504', '8GB', '', 3, 0, 0, 0, '0000-00-00 00:00:00'),
(235, 16, '1600', 'D-Link 4-Port USB 2.0 Hub / Small ', '', 2, 0, 0, 0, '0000-00-00 00:00:00'),
(236, 17, '1700', 'Pin 6 Conector (Support PCB) / Small ', '', 22, 0, 0, 0, '0000-00-00 00:00:00'),
(237, 17, '1701', 'Rogue Board PCB ', '', 9, 0, 0, 0, '0000-00-00 00:00:00'),
(238, 17, '1702', 'Rogue Final (Support PCB)', '', 1, 0, 0, 0, '0000-00-00 00:00:00'),
(239, 17, '1703', 'Rogue Light Cable', '', 13, 0, 0, 0, '0000-00-00 00:00:00'),
(240, 17, '1704', 'PCB Connector', '', 1, 0, 0, 0, '0000-00-00 00:00:00'),
(241, 17, '1705', 'Light Plate Controller', '', 2, 0, 0, 0, '0000-00-00 00:00:00'),
(242, 17, '1706', 'Rogue Connector Board (Support PCB)', '', 2, 0, 0, 0, '0000-00-00 00:00:00'),
(243, 18, '1800', 'Cover Charging Battery conection', '', 1, 0, 0, 0, '0000-00-00 00:00:00'),
(244, 18, '1801', 'Flat Cable RJ45 10 pin 7 feet length / 6 Meters', '', 0, 0, 0, 0, '0000-00-00 00:00:00'),
(245, 18, '1802', 'Module', '', 0, 0, 0, 0, '0000-00-00 00:00:00'),
(246, 18, '1803', 'Flexible Cable for Falcon Imager board 40 pin / 20cm', '', 84, 0, 0, 0, '0000-00-00 00:00:00'),
(247, 18, '1804', 'Capacitor', '', 9, 0, 0, 0, '0000-00-00 00:00:00'),
(248, 18, '1805', 'Trimpot', '', 2, 0, 0, 0, '0000-00-00 00:00:00'),
(249, 18, '1806', 'Relay Fake Batteray Charging', '', 20, 0, 0, 0, '0000-00-00 00:00:00'),
(250, 18, '1807', 'Fake Battery', '', 0, 0, 0, 0, '0000-00-00 00:00:00'),
(251, 18, '1808', '-', '', 2, 0, 0, 0, '0000-00-00 00:00:00'),
(252, 18, '1809', 'Cable RJ45 to RJ45', '', 10, 0, 0, 0, '0000-00-00 00:00:00'),
(253, 18, '1810', 'Industrial PoE Power Injector', '', 3, 0, 0, 0, '0000-00-00 00:00:00'),
(254, 18, '1811', 'PCBA', '', 1, 0, 0, 0, '0000-00-00 00:00:00'),
(255, 18, '1812', 'STAMP IC ( Processor )', '', 4, 0, 0, 0, '0000-00-00 00:00:00'),
(256, 18, '1813', 'Industrial PoE Power Injector', '', 2, 0, 0, 0, '0000-00-00 00:00:00'),
(257, 18, '1814', 'USB Osciloscope', '', 1, 0, 0, 0, '0000-00-00 00:00:00'),
(258, 18, '1815', 'POWER SUPPLY 5.1 VOLTS ', '', 2, 0, 0, 0, '0000-00-00 00:00:00'),
(259, 18, '1816', 'POWER SUPPLY 12 VOLTS ', '', 2, 0, 0, 0, '0000-00-00 00:00:00'),
(260, 18, '1817', 'Trimpot', '', 5, 0, 0, 0, '0000-00-00 00:00:00'),
(261, 18, '1818', 'Trimpot', '', 15, 0, 0, 0, '0000-00-00 00:00:00'),
(262, 19, '1900', 'Cable connection for mask alignment tester', '', 1, 0, 0, 0, '0000-00-00 00:00:00'),
(263, 19, '1901', '15021-0433', '', 16, 0, 0, 0, '0000-00-00 00:00:00'),
(264, 19, '1902', 'Motor', '', 1, 0, 0, 0, '0000-00-00 00:00:00'),
(265, 19, '1903', 'LED Sensor', '', 2, 0, 0, 0, '0000-00-00 00:00:00'),
(266, 19, '1904', 'LED Board for All tester', '', 2, 0, 0, 0, '0000-00-00 00:00:00'),
(267, 19, '1905', 'Mask clamp Alignment for mask alignment tester', '', 26, 0, 0, 0, '0000-00-00 00:00:00'),
(268, 19, '1906', 'Cognex Metal Clamps for Viper Mask Assembly Fixture', '', 26, 0, 0, 0, '0000-00-00 00:00:00'),
(269, 19, '1907', 'Pcba Boards/DC-DC XL6009E1', '', 4, 0, 0, 0, '0000-00-00 00:00:00'),
(270, 19, '1908', 'Programmable LED drive boards', '', 2, 0, 0, 0, '0000-00-00 00:00:00'),
(271, 19, '1909', 'Imager Quality Captive Unit [821-10158-1R rev02]', '', 2, 0, 0, 0, '0000-00-00 00:00:00'),
(272, 19, '1910', '- Mask Aligner Captive Unit [821-10158-1R rev04]', '', 0, 0, 0, 0, '0000-00-00 00:00:00'),
(273, 19, '1911', 'Frame focus target Viper backlight Tester', '', 1, 0, 0, 0, '0000-00-00 00:00:00'),
(274, 19, '1912', 'FFC pin 33', '', 6, 0, 0, 0, '0000-00-00 00:00:00'),
(275, 19, '1913', 'Braket Assembly', '', 4, 0, 0, 0, '0000-00-00 00:00:00'),
(276, 19, '1914', 'Heatsrink Tubing', '', 2, 0, 0, 0, '0000-00-00 00:00:00'),
(277, 19, '1915', 'PCBA VCSELL', '', 1, 0, 0, 0, '0000-00-00 00:00:00'),
(278, 19, '1916', 'Screw Gripper for focus tester', '', 48, 0, 0, 0, '0000-00-00 00:00:00'),
(279, 19, '1917', 'Screw unit for final test tester', '', 30, 0, 0, 0, '0000-00-00 00:00:00'),
(280, 19, '1918', 'Thermal pad for LED board', '', 1, 0, 0, 0, '0000-00-00 00:00:00'),
(281, 19, '1919', 'VCSEL Board', '', 1, 0, 0, 0, '0000-00-00 00:00:00'),
(282, 19, '1920', 'Connector Pcba', '', 10, 0, 0, 0, '0000-00-00 00:00:00'),
(283, 20, '2000', 'Cover com 15 pin', '', 10, 0, 0, 0, '0000-00-00 00:00:00'),
(284, 20, '2001', 'POWER SUPPLY 24 VOLTS', '', 4, 0, 0, 0, '0000-00-00 00:00:00'),
(285, 20, '2002', 'DM7500 2D SCANNER USB CABLE', '', 1, 0, 0, 0, '0000-00-00 00:00:00'),
(286, 20, '2003', 'Cable sensor (DS1 & DS2)', '', 4, 0, 0, 0, '0000-00-00 00:00:00'),
(287, 20, '2004', 'Cable E- / E+', '', 8, 0, 0, 0, '0000-00-00 00:00:00'),
(288, 20, '2005', 'Cable Out put (IO CABLE)', '', 0, 0, 0, 0, '0000-00-00 00:00:00'),
(289, 20, '2006', 'Cable In put (IO CABLE)', '', 7, 0, 0, 0, '0000-00-00 00:00:00'),
(290, 20, '2007', 'Cable Power', '', 3, 0, 0, 0, '0000-00-00 00:00:00'),
(291, 20, '2008', 'Na', '', 18, 0, 0, 0, '0000-00-00 00:00:00'),
(292, 20, '2009', 'CRYSTAL Component', '', 3, 0, 0, 0, '0000-00-00 00:00:00'),
(293, 20, '2010', 'IC Soic pin 18', '', 2, 0, 0, 0, '0000-00-00 00:00:00'),
(294, 20, '2011', 'Pogo pin ', '', 0, 0, 0, 0, '0000-00-00 00:00:00'),
(295, 20, '2012', 'HD15 GENDER CHANGERS Male to Female / pin 15 ( Besar )', '', 10, 0, 0, 0, '0000-00-00 00:00:00'),
(296, 20, '2013', '-', '', 2, 0, 0, 0, '0000-00-00 00:00:00'),
(297, 20, '2014', 'USB DataTraveler Workspace', '', 0, 0, 0, 0, '0000-00-00 00:00:00'),
(298, 21, '2100', '1.5v', '', 14, 0, 0, 0, '0000-00-00 00:00:00'),
(299, 21, '2101', 'Cap screw ', '', 100, 0, 0, 0, '0000-00-00 00:00:00'),
(300, 21, '2102', 'IC', '', 10, 0, 0, 0, '0000-00-00 00:00:00'),
(301, 21, '2103', 'FFC', '', 7, 0, 0, 0, '0000-00-00 00:00:00'),
(302, 21, '2104', 'Gripper', '', 1, 0, 0, 0, '0000-00-00 00:00:00'),
(303, 21, '2105', 'Jig tool', '', 2, 0, 0, 0, '0000-00-00 00:00:00'),
(304, 21, '2106', 'DM70 Plug Board', '', 27, 0, 0, 0, '0000-00-00 00:00:00'),
(305, 21, '2107', 'Gripper 8MM', '', 11, 0, 0, 0, '0000-00-00 00:00:00'),
(306, 21, '2108', 'Lock Gripper Cover', '', 2, 0, 0, 0, '0000-00-00 00:00:00'),
(307, 21, '2109', 'Lock Gripper', '', 3, 0, 0, 0, '0000-00-00 00:00:00'),
(308, 21, '2110', 'Nest', '', 3, 0, 0, 0, '0000-00-00 00:00:00'),
(309, 21, '2111', 'Frame focus target wren', '', 2, 0, 0, 0, '0000-00-00 00:00:00'),
(310, 21, '2112', 'Nest', '', 1, 0, 0, 0, '0000-00-00 00:00:00'),
(311, 21, '2113', 'PCB 10040-2R', '', 8, 0, 0, 0, '0000-00-00 00:00:00'),
(312, 21, '2114', 'Supply', '', 1, 0, 0, 0, '0000-00-00 00:00:00'),
(313, 21, '2115', 'D-Link Des-1008A ', '', 1, 0, 0, 0, '0000-00-00 00:00:00'),
(314, 21, '2116', 'NA', '', 4, 0, 0, 0, '0000-00-00 00:00:00'),
(315, 21, '2117', 'NA', '', 40, 0, 0, 0, '0000-00-00 00:00:00'),
(316, 21, '2118', 'NA', '', 1, 0, 0, 0, '0000-00-00 00:00:00'),
(317, 21, '2119', 'USB Type-C to Type-A Braided Cable', '', 6, 0, 0, 0, '0000-00-00 00:00:00'),
(318, 21, '2120', 'Wren Connector Test Board', '', 3, 0, 0, 0, '0000-00-00 00:00:00'),
(319, 22, '2200', '3DPrinted Plastic Unit Front Test Cover', '', 1, 0, 0, 0, '0000-00-00 00:00:00'),
(320, 22, '2201', '3DPrinted Plastic Unit Front Test Cover Locking Clip', '', 5, 0, 0, 0, '0000-00-00 00:00:00'),
(321, 22, '2202', 'PCBA LED Boards', '', 1, 0, 0, 0, '0000-00-00 00:00:00'),
(322, 22, '2203', 'Cognex Illumination Housing', '', 0, 0, 0, 0, '0000-00-00 00:00:00'),
(323, 22, '2204', 'Sensor', '', 1, 0, 0, 0, '0000-00-00 00:00:00'),
(324, 22, '2205', 'PCB Connector', '', 2, 0, 0, 0, '0000-00-00 00:00:00'),
(325, 22, '2206', 'Photo transistor', '', 41, 0, 0, 0, '0000-00-00 00:00:00'),
(326, 22, '2207', 'PCBA converter', '', 7, 0, 0, 0, '0000-00-00 00:00:00'),
(327, 22, '2208', 'Relay mosfet SPST 3.5A 40v 6SMT', '', 5, 0, 0, 0, '0000-00-00 00:00:00'),
(328, 22, '2209', 'Pcba connector', '', 0, 0, 0, 0, '0000-00-00 00:00:00'),
(329, 22, '2210', '-', '', 11, 0, 0, 0, '0000-00-00 00:00:00'),
(330, 22, '2211', 'HFY031CY', '', 29, 0, 0, 0, '0000-00-00 00:00:00'),
(331, 22, '2212', '-', '', 3, 0, 0, 0, '0000-00-00 00:00:00'),
(332, 22, '2213', '-', '', 4, 0, 0, 0, '0000-00-00 00:00:00'),
(333, 22, '2214', 'Bracket', '', 3, 0, 0, 0, '0000-00-00 00:00:00'),
(334, 22, '2215', 'NA', '', 10, 0, 0, 0, '0000-00-00 00:00:00'),
(335, 22, '2216', 'Crystal 24MHZ ', '', 10, 0, 0, 0, '0000-00-00 00:00:00'),
(336, 22, '2217', 'FFC', '', 16, 0, 0, 0, '0000-00-00 00:00:00'),
(337, 22, '2218', 'Lens', '', 5, 0, 0, 0, '0000-00-00 00:00:00'),
(338, 22, '2219', 'Fuse Board MNT 2A 125VAC/VDC SMD', '', 8, 0, 0, 0, '0000-00-00 00:00:00'),
(339, 22, '2220', 'Fuse Board MNT 250mA 124VAC/VDC', '', 15, 0, 0, 0, '0000-00-00 00:00:00'),
(340, 22, '2221', 'Cable', '', 2, 0, 0, 0, '0000-00-00 00:00:00'),
(341, 22, '2222', 'IC Pin 6', '', 1, 0, 0, 0, '0000-00-00 00:00:00'),
(342, 22, '2223', 'IC Pin 16', '', 7, 0, 0, 0, '0000-00-00 00:00:00'),
(343, 22, '2224', 'IC Pin 24', '', 8, 0, 0, 0, '0000-00-00 00:00:00'),
(344, 22, '2225', 'IC Pin 8', '', 8, 0, 0, 0, '0000-00-00 00:00:00'),
(345, 22, '2226', 'IC Pin 5', '', 10, 0, 0, 0, '0000-00-00 00:00:00'),
(346, 22, '2227', 'PCB Connector', '', 8, 0, 0, 0, '0000-00-00 00:00:00'),
(347, 22, '2228', '-', '', 1, 0, 0, 0, '0000-00-00 00:00:00'),
(348, 22, '2229', '-', '', 1, 0, 0, 0, '0000-00-00 00:00:00'),
(349, 22, '2230', 'Connector', '', 4, 0, 0, 0, '0000-00-00 00:00:00'),
(350, 22, '2231', 'Connector', '', 5, 0, 0, 0, '0000-00-00 00:00:00'),
(351, 22, '2232', 'Category: Straight Line Action Clamps', '', 3, 0, 0, 0, '0000-00-00 00:00:00'),
(352, 22, '2233', '-', '', 3, 0, 0, 0, '0000-00-00 00:00:00'),
(353, 22, '2234', 'Mecanical', '', 3, 0, 0, 0, '0000-00-00 00:00:00'),
(354, 22, '2235', 'Round Ring', '', 7, 0, 0, 0, '0000-00-00 00:00:00'),
(355, 22, '2236', 'Ring box', '', 8, 0, 0, 0, '0000-00-00 00:00:00'),
(356, 22, '2237', 'PCB Connector', '', 0, 0, 0, 0, '0000-00-00 00:00:00'),
(357, 22, '2238', 'PCB Connector', '', 3, 0, 0, 0, '0000-00-00 00:00:00'),
(358, 22, '2239', 'PCB', '', 19, 0, 0, 0, '0000-00-00 00:00:00'),
(359, 22, '2240', 'PCB connector', '', 18, 0, 0, 0, '0000-00-00 00:00:00'),
(360, 22, '2241', 'Connector', '', 10, 0, 0, 0, '0000-00-00 00:00:00'),
(361, 22, '2242', 'Connector', '', 10, 0, 0, 0, '0000-00-00 00:00:00'),
(362, 22, '2243', 'Connector', '', 10, 0, 0, 0, '0000-00-00 00:00:00'),
(363, 22, '2244', 'Connector', '', 10, 0, 0, 0, '0000-00-00 00:00:00'),
(364, 22, '2245', 'Pcba connector', '', 10, 0, 0, 0, '0000-00-00 00:00:00'),
(365, 22, '2246', 'Connector', '', 10, 0, 0, 0, '0000-00-00 00:00:00'),
(366, 22, '2247', 'NA', '', 10, 0, 0, 0, '0000-00-00 00:00:00'),
(367, 22, '2248', 'PCB Connector', '', 0, 0, 0, 0, '0000-00-00 00:00:00'),
(368, 22, '2249', 'PCB Connector', '', 0, 0, 0, 0, '0000-00-00 00:00:00'),
(369, 22, '2250', 'Na', '', 98, 0, 0, 0, '0000-00-00 00:00:00'),
(370, 22, '2251', 'PCBA Connector', '', 6, 0, 0, 0, '0000-00-00 00:00:00'),
(371, 22, '2252', 'Photo Transistor/1080-1384-1ND', '', 41, 0, 0, 0, '0000-00-00 00:00:00'),
(372, 22, '2253', 'PCB Connector', '', 4, 0, 0, 0, '0000-00-00 00:00:00'),
(373, 23, '2300', 'USB 2.0 Card PCI slot', '', 3, 0, 0, 0, '0000-00-00 00:00:00'),
(374, 23, '2301', 'Lcom USB Cable A To B', '', 11, 0, 0, 0, '0000-00-00 00:00:00'),
(375, 23, '2302', 'Lcom Comport Connector Serial', '', 3, 0, 0, 0, '0000-00-00 00:00:00'),
(376, 23, '2303', 'Lcom RJ45 Cable', '', 24, 0, 0, 0, '0000-00-00 00:00:00'),
(377, 23, '2304', 'Power Cable ', '', 4, 0, 0, 0, '0000-00-00 00:00:00'),
(378, 23, '2305', 'Nest/Jig for unit', '', 3, 0, 0, 0, '0000-00-00 00:00:00'),
(379, 23, '2306', '5 Port GB Switch', '', 2, 0, 0, 0, '0000-00-00 00:00:00'),
(380, 23, '2307', 'Omron D2SW-01L2MS', '', 5, 0, 0, 0, '0000-00-00 00:00:00'),
(381, 23, '2308', 'W24NT750 / 24 Volt', '', 1, 0, 0, 0, '0000-00-00 00:00:00'),
(382, 23, '2309', 'Electronic Relay  RTD14005F', '', 26, 0, 0, 0, '0000-00-00 00:00:00'),
(383, 23, '2310', 'COM Card PCI slot', '', 3, 0, 0, 0, '0000-00-00 00:00:00'),
(384, 23, '2311', 'Conector Module', '', 8, 0, 0, 0, '0000-00-00 00:00:00'),
(385, 23, '2312', 'Thermaltake (AC-053-CN1OTN-C1AL000549) ', '', 2, 0, 0, 0, '0000-00-00 00:00:00'),
(386, 23, '2313', 'USB-To- Serial Converter (RS-232)/ UC-232A', '', 2, 0, 0, 0, '0000-00-00 00:00:00'),
(387, 23, '2314', 'Wireless Contact Board', '', 3, 0, 0, 0, '0000-00-00 00:00:00');

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `parts`
--
ALTER TABLE `parts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=388;

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
