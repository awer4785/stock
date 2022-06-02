-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 31, 2022 at 09:11 AM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `stock`
--

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `brand_id` int(11) NOT NULL,
  `brand_name` varchar(255) NOT NULL,
  `brand_active` int(11) NOT NULL DEFAULT 0,
  `brand_status` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`brand_id`, `brand_name`, `brand_active`, `brand_status`) VALUES
(15, 'งานไฟฟ้า', 1, 1),
(16, 'งานประปา', 1, 1),
(17, 'งานซ่อมบำรุง(งานไม้)', 1, 1),
(18, 'อื่นๆ', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `categories_id` int(11) NOT NULL,
  `categories_name` varchar(255) NOT NULL,
  `categories_active` int(11) NOT NULL DEFAULT 0,
  `categories_status` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`categories_id`, `categories_name`, `categories_active`, `categories_status`) VALUES
(10, 'สวิทซ์', 1, 1),
(11, 'หลอดไฟ', 1, 1),
(12, 'เต้ารับ', 1, 1),
(13, 'หน้ากาก', 1, 1),
(14, 'บล็อคลอย', 1, 1),
(15, 'ขาหลอด', 1, 1),
(16, 'รางไฟ', 1, 1),
(17, 'ก๊อก', 1, 1),
(18, 'แกนน้ำดี', 1, 1),
(19, 'สะดืออ่าง', 1, 1),
(20, 'ท่อ', 1, 1),
(21, 'หัวชำระ', 1, 1),
(22, 'ฝักบัว', 1, 1),
(23, 'ยาง', 1, 1),
(24, 'สะดือซิงค์', 2, 1),
(25, 'สายยาง', 1, 1),
(26, 'มุ้งลวด', 1, 1),
(27, 'ลูกบิด', 1, 1),
(28, 'กลอน', 1, 1),
(29, 'บานพับ', 1, 1),
(30, 'มือจับ', 1, 1),
(31, 'บานพับ', 1, 2),
(32, 'ตะปู', 2, 1),
(33, 'สายยู', 1, 1),
(34, 'สเปรย์', 1, 1),
(35, 'น้ำมัน', 1, 1),
(36, 'ตะขอ', 1, 1),
(37, 'ถุงมือ', 1, 1),
(38, 'แปรง', 1, 1),
(39, 'ไม้กวาด', 1, 1),
(40, 'ถัง', 1, 1),
(41, 'ขัน', 1, 1),
(42, 'เจล', 1, 1),
(43, 'สบู่', 1, 1),
(44, 'น้ำยา', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `order_id` int(11) NOT NULL,
  `order_date` date NOT NULL,
  `client_name` varchar(255) NOT NULL,
  `client_contact` varchar(255) NOT NULL,
  `sub_total` float NOT NULL,
  `description` varchar(250) CHARACTER SET utf8 NOT NULL,
  `order_status` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`order_id`, `order_date`, `client_name`, `client_contact`, `sub_total`, `description`, `order_status`) VALUES
(58, '2022-05-18', 'dorm 1', '0-123-456', 900, 'dorm1', 1),
(59, '2022-05-24', 'dorm 2', '0-23456', 50, '12', 1),
(60, '2022-05-24', 'กนพท 3', '0-255', 100, '11', 1),
(61, '2022-05-24', 'dorm 4', '5', 150, '5', 1),
(62, '2022-05-24', 'AA', '0123', 150, '- ', 1),
(63, '2022-05-25', 'admin2', '2', 150, '2 ', 1),
(64, '2022-05-26', 'ทดสอบ', '0123', 150, 'หอ 1 ', 1);

-- --------------------------------------------------------

--
-- Table structure for table `order_item`
--

CREATE TABLE `order_item` (
  `order_item_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL DEFAULT 0,
  `product_id` int(11) NOT NULL DEFAULT 0,
  `quantity` varchar(255) NOT NULL,
  `rate` varchar(255) NOT NULL,
  `total` varchar(255) NOT NULL,
  `order_item_status` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `order_item`
--

INSERT INTO `order_item` (`order_item_id`, `order_id`, `product_id`, `quantity`, `rate`, `total`, `order_item_status`) VALUES
(75, 58, 75, '5', '50', '250.00', 0),
(76, 59, 32, '1', '50', '50.00', 0),
(77, 60, 36, '1', '50', '50.00', 0),
(78, 61, 32, '1', '50', '50.00', 0),
(79, 62, 38, '1', '50', '50.00', 1),
(80, 62, 37, '1', '50', '50.00', 1),
(81, 62, 39, '1', '50', '50.00', 1),
(82, 63, 40, '1', '50', '50.00', 1),
(83, 63, 39, '1', '50', '50.00', 1),
(84, 63, 38, '1', '50', '50.00', 1),
(85, 64, 92, '2', '50', '100.00', 1),
(86, 64, 70, '1', '50', '50.00', 1);

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `product_id` int(11) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `product_image` mediumtext NOT NULL,
  `brand_id` int(11) NOT NULL,
  `categories_id` int(11) NOT NULL,
  `quantity` varchar(255) NOT NULL,
  `rate` varchar(255) NOT NULL,
  `active` int(11) NOT NULL DEFAULT 0,
  `status` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`product_id`, `product_name`, `product_image`, `brand_id`, `categories_id`, `quantity`, `rate`, `active`, `status`) VALUES
(19, 'สวิทซ์ทางเดียวก้นเขียว WEG5001K', '../assests/images/stock/1332833208628dd388f195d.png', 15, 10, '34', '35', 1, 1),
(20, 'สวิทซ์ 2 ทางใหญ่ก้นเขียว WEG5001K', '../assests/images/stock/981351991628dd3f859781.png', 15, 10, '17', '35', 1, 1),
(21, 'สวิทซ์เมจิก(ติชิโน่) หอ.1-4', '../assests/images/stock/1369312877628dd436d5ef6.png', 15, 10, '17', '0', 1, 1),
(22, 'สวิทซ์ 2 ทางเล็ก WNG5002-701', '../assests/images/stock/707306917628dd48447b11.png', 15, 10, '41', '65', 1, 1),
(23, 'สวิทซ์เมจิกทางเดียว (พานาโซนิค)', '../assests/images/stock/985020430628dd4cf2b839.png', 15, 10, '11', '35', 1, 1),
(24, 'หลอด PHILIPS 10 W (ใช้ที่หอพัก 10)', '../assests/images/stock/2123185804628dd51a17220.png', 15, 11, '18', '130', 1, 1),
(25, 'หลอดกลมแผง(ใช้ หอ.5/10)', '../assests/images/stock/1152349759628dd578e1539.png', 15, 11, '3', '160', 3, 1),
(26, 'หลอดยาว 18 วัตต์', '../assests/images/stock/771290769628dd5d068c21.png', 15, 11, '8', '100', 1, 1),
(27, 'หลอดสั้น 9 วัตต์', '../assests/images/stock/731191942628dd6305199a.png', 15, 11, '22', '80', 1, 1),
(28, 'หลอดตะเกียบคู่ แบบเสียบล็อค', '../assests/images/stock/1651478846628dd65ea73a4.png', 15, 11, '10', '90', 1, 1),
(29, 'เต้ารับเมจิก(พานาโซนิค)ก้นเขียว', '../assests/images/stock/1735801337628dd6a88da20.png', 15, 12, '27', '38', 1, 1),
(30, 'เต้ารับเมจิก(พานาโซนิก)รุ่นเล็ก', '../assests/images/stock/524463832628dd71af2935.png', 15, 12, '9', '38', 1, 1),
(31, 'เต้ารับเมจิก(พานาโซนิค)สามตา', '../assests/images/stock/502930217628dd75ccb730.png', 15, 12, '8', '0', 1, 1),
(32, 'เต้ารับ(อิชิโน่)ใช้หอ 1-4', '../assests/images/stock/369432141628dd786b1430.png', 15, 12, '18', '0', 1, 1),
(33, 'หน้ากาก 1 ช่อง(รุ่นเล็ก)', '../assests/images/stock/661677437628dd7c244907.png', 15, 13, '14', '25', 1, 1),
(34, 'หน้ากาก 2 ช่อง(รุ่นเล็ก)', '../assests/images/stock/787072947628dd7dcdb426.png', 15, 13, '5', '0', 1, 1),
(35, 'หน้ากาก 3 ช่อง(รุ่นเล็ก)', '../assests/images/stock/2059427598628dd800ab37d.png', 15, 13, '4', '0', 3, 1),
(36, 'บล็อคลอย 2 x 4 นิ้ว', '../assests/images/stock/1760550823628dd86442673.png', 15, 14, '53', '15', 1, 1),
(37, 'หน้ากาก 1 ช่อง(รุ่นใหม่)', '../assests/images/stock/794391036628dd88565df4.png', 15, 13, '19', '25', 1, 1),
(38, 'หน้ากาก 2 ช่อง(รุ่นใหม่)', '../assests/images/stock/1619732107628dd8c283d23.png', 15, 13, '8', '0', 1, 1),
(39, 'หน้ากาก 3 ช่อง(รุ่นใหม่)', '../assests/images/stock/561048906628dd8e12e8e4.png', 15, 13, '8', '25', 1, 1),
(40, 'ขาหลอดธรรมดา A.N.B (ใช้ที่หอพัก 10)', '../assests/images/stock/750885519628dd92f09428.png', 15, 15, '39', '0', 1, 1),
(41, 'รางไฟ', '../assests/images/stock/937557446628dd94582338.png', 15, 16, '27', '0', 1, 1),
(42, 'ขาหลอดแบบสปริง', '../assests/images/stock/1574351623628dd97f30901.png', 15, 15, '148', '0', 1, 1),
(43, 'ก๊อกอ่างล้างหน้า', '../assests/images/stock/733693745628dd9ba7f7f8.png', 16, 17, '8', '240', 1, 1),
(44, 'ก๊อกโถปัสสาวะ (ประตูน้ำฝักบัว)', '../assests/images/stock/1640252335628dd9fc49add.png', 16, 17, '15', '220', 1, 1),
(45, 'ก๊อกบอลวาล์ว 4 หุน', '../assests/images/stock/1769664226628dda4ad0c23.png', 16, 17, '21', '120', 1, 1),
(46, 'แกนน้ำดี', '../assests/images/stock/115484933628dda65cc7e0.png', 16, 18, '5', '80', 1, 1),
(47, 'สะดืออ่าง(ท/ล+เลส)', '../assests/images/stock/1673581459628dda9429fa0.png', 16, 19, '28', '70', 1, 1),
(48, 'ท่อกันเหม็น(P-TRAP ยืดหดได้)K-122', '../assests/images/stock/42123711628ddad76f445.png', 16, 20, '14', '120', 1, 1),
(49, 'สายยางน้ำดี 4-4 หุน', '../assests/images/stock/655385265628ddb12134ac.png', 16, 25, '36', '0', 1, 1),
(50, 'สะดือท่อน้ำล้น 3 นิ้วกล่องฟ้า', '../assests/images/stock/1610522555628ddb55189e2.png', 16, 20, '4', '0', 3, 1),
(51, 'หัวชำระพร้อมสาย', '../assests/images/stock/1652571659628ddb834151a.png', 16, 21, '11', '180', 1, 1),
(52, 'ฝักบัวสายอ่อน', '../assests/images/stock/735634595628ddbb195081.png', 16, 22, '18', '180', 1, 1),
(53, 'ท่อน้ำทิ้ง(กะเปาะ)K-131 (ใช้ที่หอพัก 5,6)', '../assests/images/stock/1883106013628ddbf24a2bf.png', 16, 20, '7', '0', 1, 1),
(54, 'ท่อน้ำทิ้ง P-TRAP(กล่องเขียว)K-1202', '../assests/images/stock/1451461662628ddc2d26b85.png', 16, 20, '1', '0', 3, 1),
(55, 'ท่อชาร์ปน้ำทิ้งอ่างล้างหน้า', '../assests/images/stock/1656563119628ddc9940317.png', 16, 20, '4', '0', 3, 1),
(56, 'ท่อกันเหม็น(กล่องฟ้า)K-430', '../assests/images/stock/335221108628ddce6d3e47.png', 16, 20, '0', '0', 2, 1),
(57, 'ยางปั๊มอ่าง', '../assests/images/stock/974430796628ddd17f2202.png', 16, 23, '15', '90', 1, 1),
(58, 'สะดือซิงค์อ่างขนาด 3 นิ้วครึ่ง', '../assests/images/stock/1618300534628ddd5718096.png', 16, 24, '0', '0', 2, 1),
(59, 'สายยางน้ำดี 4-6หุน', '../assests/images/stock/361199005628ddd8827118.png', 16, 25, '5', '0', 1, 1),
(60, 'มุ้งลวด ขนาด 36 นิ้ว', '../assests/images/stock/1427361474628dde0825c0d.png', 17, 26, '0', '0', 2, 1),
(61, 'มุ้งลวด ขนาด 48 นิ้ว', '../assests/images/stock/2068736070628dde46deb95.png', 17, 26, '1', '2600', 3, 1),
(62, 'ลูกบิดประตู (ธรรมดา)', '../assests/images/stock/309529922628dde8574771.png', 17, 27, '17', '290', 1, 1),
(63, 'ลูกบิดประตู (ลูกครึ่ง)', '../assests/images/stock/1086678369628ddea83f698.png', 17, 27, '12', '0', 1, 1),
(64, 'กลอนเหล็ก 4 นิ้ว', '../assests/images/stock/1549837641628ddecb2e52d.png', 17, 28, '65', '0', 1, 1),
(65, 'บานพับ 4 นิ้ว', '../assests/images/stock/1235644430628ddeecf2f42.png', 17, 29, '92', '18', 1, 1),
(66, 'บานพับ 3 นิ้ว', '../assests/images/stock/1234898166628ddf0bd41a8.png', 17, 31, '12', '12', 1, 1),
(67, 'บานพับ 2 นิ้ว', '../assests/images/stock/1073887840628ddf36b9f31.png', 17, 29, '0', '5', 2, 1),
(68, 'กลอนประตู 6 นิ้ว', '../assests/images/stock/900948506628ddf860f8f0.png', 17, 28, '17', '20', 1, 1),
(69, 'มือจับ 6 นิ้ว', '../assests/images/stock/392099055628ddfb651f88.png', 17, 30, '49', '25', 1, 1),
(70, 'มือจับประตู 5 นิ้ว', '../assests/images/stock/981387990628ddfe2cf6df.png', 17, 30, '16', '20', 1, 1),
(71, 'สายยูบานพับเหล็ก', '../assests/images/stock/1574464483628de02dc8f9a.png', 17, 29, '48', '10', 1, 1),
(72, 'กันชนมุ้งลวด', '../assests/images/stock/215645412628de07679f3e.png', 17, 26, '5', '70', 1, 1),
(73, 'ตุ๊กตามุ้งลวด', '../assests/images/stock/1137270428628de0ac02130.png', 17, 26, '95', '0', 1, 1),
(74, 'มือจับเอียง 3 นิ้ว', '../assests/images/stock/708990675628de0caec5a5.png', 17, 30, '7', '15', 1, 1),
(75, 'มือจับบานกระทุ้ง', '../assests/images/stock/2072151624628de1221f39f.png', 17, 30, '13', '95', 1, 1),
(76, 'ตะปูเกลียวหัวเป็ด 4 หุน(ถุง)', '../assests/images/stock/1864446852628de1693ee74.png', 17, 32, '0', '20', 2, 1),
(77, 'ตะปูเกลียวหัวเป็ด 5 หุน(กล่อง)', '../assests/images/stock/933459608628de1c7db9da.png', 17, 32, '0', '20', 2, 1),
(78, 'ตะปูเกลียวหัวเป็ด 6 หุน(กล่อง)', '../assests/images/stock/1038034440628de1f5d7ba5.png', 17, 32, '0', '20', 2, 1),
(79, 'กลอนอลูมิเนียม 3 นิ้ว', '../assests/images/stock/1761136498628de21d98994.png', 17, 28, '57', '0', 1, 1),
(80, 'สายยูหูช้างเล็ก 1.5 นิ้ว', '../assests/images/stock/1908499712628de265d1cf2.png', 17, 33, '57', '0', 1, 1),
(81, 'สเปรย์โฟมอุดรอยรั่ว', '../assests/images/stock/1050398931628de2946f838.png', 17, 34, '4 ', '0', 3, 1),
(82, 'น้ำมันฉีดกันสนิม Sonic ใหญ่', '../assests/images/stock/1729551848628de2eb32d48.png', 17, 35, '3', '0', 3, 1),
(83, 'น้ำมันฉีดกันสนิม Sonic เล็ก', '../assests/images/stock/2114686072628de2ff5098a.png', 17, 35, '2', '0', 3, 1),
(84, 'ตะขอแขวน(ค)', '../assests/images/stock/846278416628de3332884e.png', 17, 36, '2', '0', 3, 1),
(85, 'มือจับ 5 1/2', '../assests/images/stock/711682473628de37625b89.png', 17, 30, '20', '20', 1, 1),
(86, 'สเปรย์กำจัดปลวก', '../assests/images/stock/1165422472628de3a9764db.png', 18, 34, '4', '95', 3, 1),
(87, 'ถุงมือส้มไซร์ M', '../assests/images/stock/1539670901628de3d2ab174.png', 18, 37, '13', '30', 1, 1),
(88, 'ถุงมือส้มไซร์ L', '../assests/images/stock/1519553771628de3fb80fe2.png', 18, 37, '15', '30', 1, 1),
(89, 'ถุงมือผ้า', '../assests/images/stock/1569445085628de420ee7cd.png', 18, 37, '9', '10', 1, 1),
(90, 'แปรงเตารีด', '../assests/images/stock/2028508522628de43ff3c2f.png', 18, 38, '26', '40', 1, 1),
(91, 'แปรงถูคอส้วม', '../assests/images/stock/2042612280628de46473310.png', 18, 38, '1', '0', 3, 1),
(92, 'ไม้กวาดดอกหญ้า', '../assests/images/stock/2012820378628de48411871.png', 18, 39, '3', '0', 3, 1),
(93, 'ไม้กวาดก้านมะพร้าว', '../assests/images/stock/1893545014628de4be9021b.png', 18, 39, '0', '0', 2, 1),
(94, 'ถังน้ำสีดำ', '../assests/images/stock/1205859050628de4ed76f52.png', 18, 40, '20', '0', 1, 1),
(95, 'ขันน้ำ', '../assests/images/stock/1075479987628de5107fc95.png', 18, 41, '40', '0', 1, 1),
(96, 'เจลแอลกอฮอล์ 50 ml', '../assests/images/stock/1823283568628de54b13b84.png', 18, 42, '460', '0', 1, 1),
(97, 'เจลแอลกอฮอล์ 236 ml', '../assests/images/stock/1717302908628de592951c7.png', 18, 42, '1291', '0', 1, 1),
(98, 'สบู่ล้างมือ', '../assests/images/stock/22364787628de5c02c313.png', 18, 43, '5', '0', 1, 1),
(99, 'น้ำยาฆ่าเชื้อ', '../assests/images/stock/657396706628de5e503758.png', 18, 44, '7', '0', 1, 1),
(100, 'แมส', '../assests/images/stock/1911397387628de6005a7b0.png', 18, 13, '0', '0', 2, 1),
(101, 'psu', '../assests/images/stock/888528776628f38383bdd2.png', 18, 10, '10', '10', 1, 2);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `role` int(10) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `username`, `password`, `email`, `role`) VALUES
(1, 'admin', '5f4dcc3b5aa765d61d8327deb882cf99', '', 1),
(3, 'admin2', 'c84258e9c39059a89ab77d846ddab909', 'admin@admin', 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`brand_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`categories_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `order_item`
--
ALTER TABLE `order_item`
  ADD PRIMARY KEY (`order_item_id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `brand_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `categories_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT for table `order_item`
--
ALTER TABLE `order_item`
  MODIFY `order_item_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=87;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=102;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
