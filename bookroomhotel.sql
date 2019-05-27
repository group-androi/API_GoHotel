-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: May 27, 2019 at 05:55 PM
-- Server version: 5.7.24
-- PHP Version: 7.2.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bookroomhotel1`
--

-- --------------------------------------------------------

--
-- Table structure for table `bookroom`
--

DROP TABLE IF EXISTS `bookroom`;
CREATE TABLE IF NOT EXISTS `bookroom` (
  `id_book` int(11) NOT NULL AUTO_INCREMENT,
  `hotel_id` int(11) NOT NULL,
  `room_id` int(11) NOT NULL,
  `date_start` varchar(16) COLLATE utf8_unicode_ci DEFAULT NULL,
  `date_end` varchar(16) COLLATE utf8_unicode_ci DEFAULT NULL,
  `price` varchar(16) COLLATE utf8_unicode_ci DEFAULT NULL,
  `time_book` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(16) COLLATE utf8_unicode_ci DEFAULT NULL,
  `info_user_booked` varchar(254) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id_book`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `city`
--

DROP TABLE IF EXISTS `city`;
CREATE TABLE IF NOT EXISTS `city` (
  `id_city` int(11) NOT NULL AUTO_INCREMENT,
  `name_city` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id_city`)
) ENGINE=InnoDB AUTO_INCREMENT=97 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `city`
--

INSERT INTO `city` (`id_city`, `name_city`) VALUES
(1, 'Thành phố Hà Nội'),
(2, 'Tỉnh Hà Giang'),
(4, 'Tỉnh Cao Bằng'),
(6, 'Tỉnh Bắc Kạn'),
(8, 'Tỉnh Tuyên Quang'),
(10, 'Tỉnh Lào Cai'),
(11, 'Tỉnh Điện Biên'),
(12, 'Tỉnh Lai Châu'),
(14, 'Tỉnh Sơn La'),
(15, 'Tỉnh Yên Bái'),
(17, 'Tỉnh Hoà Bình'),
(19, 'Tỉnh Thái Nguyên'),
(20, 'Tỉnh Lạng Sơn'),
(22, 'Tỉnh Quảng Ninh'),
(24, 'Tỉnh Bắc Giang'),
(25, 'Tỉnh Phú Thọ'),
(26, 'Tỉnh Vĩnh Phúc'),
(27, 'Tỉnh Bắc Ninh'),
(30, 'Tỉnh Hải Dương'),
(31, 'Thành phố Hải Phòng'),
(33, 'Tỉnh Hưng Yên'),
(34, 'Tỉnh Thái Bình'),
(35, 'Tỉnh Hà Nam'),
(36, 'Tỉnh Nam Định'),
(37, 'Tỉnh Ninh Bình'),
(38, 'Tỉnh Thanh Hóa'),
(40, 'Tỉnh Nghệ An'),
(42, 'Tỉnh Hà Tĩnh'),
(44, 'Tỉnh Quảng Bình'),
(45, 'Tỉnh Quảng Trị'),
(46, 'Tỉnh Thừa Thiên Huế'),
(48, 'Thành phố Đà Nẵng'),
(49, 'Tỉnh Quảng Nam'),
(51, 'Tỉnh Quảng Ngãi'),
(52, 'Tỉnh Bình Định'),
(54, 'Tỉnh Phú Yên'),
(56, 'Tỉnh Khánh Hòa'),
(58, 'Tỉnh Ninh Thuận'),
(60, 'Tỉnh Bình Thuận'),
(62, 'Tỉnh Kon Tum'),
(64, 'Tỉnh Gia Lai'),
(66, 'Tỉnh Đắk Lắk'),
(67, 'Tỉnh Đắk Nông'),
(68, 'Tỉnh Lâm Đồng'),
(70, 'Tỉnh Bình Phước'),
(72, 'Tỉnh Tây Ninh'),
(74, 'Tỉnh Bình Dương'),
(75, 'Tỉnh Đồng Nai'),
(77, 'Tỉnh Bà Rịa - Vũng Tàu'),
(79, 'Thành phố Hồ Chí Minh'),
(80, 'Tỉnh Long An'),
(82, 'Tỉnh Tiền Giang'),
(83, 'Tỉnh Bến Tre'),
(84, 'Tỉnh Trà Vinh'),
(86, 'Tỉnh Vĩnh Long'),
(87, 'Tỉnh Đồng Tháp'),
(89, 'Tỉnh An Giang'),
(91, 'Tỉnh Kiên Giang'),
(92, 'Thành phố Cần Thơ'),
(93, 'Tỉnh Hậu Giang'),
(94, 'Tỉnh Sóc Trăng'),
(95, 'Tỉnh Bạc Liêu'),
(96, 'Tỉnh Cà Mau');

-- --------------------------------------------------------

--
-- Table structure for table `device`
--

DROP TABLE IF EXISTS `device`;
CREATE TABLE IF NOT EXISTS `device` (
  `id_device` char(128) COLLATE utf8_unicode_ci NOT NULL,
  `latitude` char(16) COLLATE utf8_unicode_ci DEFAULT NULL,
  `longitude` char(16) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id_device`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `device`
--

INSERT INTO `device` (`id_device`, `latitude`, `longitude`) VALUES
('sQxjxx8tCFWtyzqm', '10.7629123', '106.682188');

-- --------------------------------------------------------

--
-- Table structure for table `district`
--

DROP TABLE IF EXISTS `district`;
CREATE TABLE IF NOT EXISTS `district` (
  `id_district` int(11) NOT NULL AUTO_INCREMENT,
  `name_district` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `city_id` int(11) NOT NULL,
  PRIMARY KEY (`id_district`),
  KEY `city_id` (`city_id`)
) ENGINE=InnoDB AUTO_INCREMENT=974 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `district`
--

INSERT INTO `district` (`id_district`, `name_district`, `city_id`) VALUES
(1, 'Quận Ba Đình', 1),
(2, 'Quận Hoàn Kiếm', 1),
(3, 'Quận Tây Hồ', 1),
(4, 'Quận Long Biên', 1),
(5, 'Quận Cầu Giấy', 1),
(6, 'Quận Đống Đa', 1),
(7, 'Quận Hai Bà Trưng', 1),
(8, 'Quận Hoàng Mai', 1),
(9, 'Quận Thanh Xuân', 1),
(16, 'Huyện Sóc Sơn', 1),
(17, 'Huyện Đông Anh', 1),
(18, 'Huyện Gia Lâm', 1),
(19, 'Quận Nam Từ Liêm', 1),
(20, 'Huyện Thanh Trì', 1),
(21, 'Quận Bắc Từ Liêm', 1),
(24, 'Thành phố Hà Giang', 2),
(26, 'Huyện Đồng Văn', 2),
(27, 'Huyện Mèo Vạc', 2),
(28, 'Huyện Yên Minh', 2),
(29, 'Huyện Quản Bạ', 2),
(30, 'Huyện Vị Xuyên', 2),
(31, 'Huyện Bắc Mê', 2),
(32, 'Huyện Hoàng Su Phì', 2),
(33, 'Huyện Xín Mần', 2),
(34, 'Huyện Bắc Quang', 2),
(35, 'Huyện Quang Bình', 2),
(40, 'Thành phố Cao Bằng', 4),
(42, 'Huyện Bảo Lâm', 4),
(43, 'Huyện Bảo Lạc', 4),
(44, 'Huyện Thông Nông', 4),
(45, 'Huyện Hà Quảng', 4),
(46, 'Huyện Trà Lĩnh', 4),
(47, 'Huyện Trùng Khánh', 4),
(48, 'Huyện Hạ Lang', 4),
(49, 'Huyện Quảng Uyên', 4),
(50, 'Huyện Phục Hoà', 4),
(51, 'Huyện Hoà An', 4),
(52, 'Huyện Nguyên Bình', 4),
(53, 'Huyện Thạch An', 4),
(58, 'Thành Phố Bắc Kạn', 6),
(60, 'Huyện Pác Nặm', 6),
(61, 'Huyện Ba Bể', 6),
(62, 'Huyện Ngân Sơn', 6),
(63, 'Huyện Bạch Thông', 6),
(64, 'Huyện Chợ Đồn', 6),
(65, 'Huyện Chợ Mới', 6),
(66, 'Huyện Na Rì', 6),
(70, 'Thành phố Tuyên Quang', 8),
(71, 'Huyện Lâm Bình', 8),
(72, 'Huyện Nà Hang', 8),
(73, 'Huyện Chiêm Hóa', 8),
(74, 'Huyện Hàm Yên', 8),
(75, 'Huyện Yên Sơn', 8),
(76, 'Huyện Sơn Dương', 8),
(80, 'Thành phố Lào Cai', 10),
(82, 'Huyện Bát Xát', 10),
(83, 'Huyện Mường Khương', 10),
(84, 'Huyện Si Ma Cai', 10),
(85, 'Huyện Bắc Hà', 10),
(86, 'Huyện Bảo Thắng', 10),
(87, 'Huyện Bảo Yên', 10),
(88, 'Huyện Sa Pa', 10),
(89, 'Huyện Văn Bàn', 10),
(94, 'Thành phố Điện Biên Phủ', 11),
(95, 'Thị Xã Mường Lay', 11),
(96, 'Huyện Mường Nhé', 11),
(97, 'Huyện Mường Chà', 11),
(98, 'Huyện Tủa Chùa', 11),
(99, 'Huyện Tuần Giáo', 11),
(100, 'Huyện Điện Biên', 11),
(101, 'Huyện Điện Biên Đông', 11),
(102, 'Huyện Mường Ảng', 11),
(103, 'Huyện Nậm Pồ', 11),
(105, 'Thành phố Lai Châu', 12),
(106, 'Huyện Tam Đường', 12),
(107, 'Huyện Mường Tè', 12),
(108, 'Huyện Sìn Hồ', 12),
(109, 'Huyện Phong Thổ', 12),
(110, 'Huyện Than Uyên', 12),
(111, 'Huyện Tân Uyên', 12),
(112, 'Huyện Nậm Nhùn', 12),
(116, 'Thành phố Sơn La', 14),
(118, 'Huyện Quỳnh Nhai', 14),
(119, 'Huyện Thuận Châu', 14),
(120, 'Huyện Mường La', 14),
(121, 'Huyện Bắc Yên', 14),
(122, 'Huyện Phù Yên', 14),
(123, 'Huyện Mộc Châu', 14),
(124, 'Huyện Yên Châu', 14),
(125, 'Huyện Mai Sơn', 14),
(126, 'Huyện Sông Mã', 14),
(127, 'Huyện Sốp Cộp', 14),
(128, 'Huyện Vân Hồ', 14),
(132, 'Thành phố Yên Bái', 15),
(133, 'Thị xã Nghĩa Lộ', 15),
(135, 'Huyện Lục Yên', 15),
(136, 'Huyện Văn Yên', 15),
(137, 'Huyện Mù Căng Chải', 15),
(138, 'Huyện Trấn Yên', 15),
(139, 'Huyện Trạm Tấu', 15),
(140, 'Huyện Văn Chấn', 15),
(141, 'Huyện Yên Bình', 15),
(148, 'Thành phố Hòa Bình', 17),
(150, 'Huyện Đà Bắc', 17),
(151, 'Huyện Kỳ Sơn', 17),
(152, 'Huyện Lương Sơn', 17),
(153, 'Huyện Kim Bôi', 17),
(154, 'Huyện Cao Phong', 17),
(155, 'Huyện Tân Lạc', 17),
(156, 'Huyện Mai Châu', 17),
(157, 'Huyện Lạc Sơn', 17),
(158, 'Huyện Yên Thủy', 17),
(159, 'Huyện Lạc Thủy', 17),
(164, 'Thành phố Thái Nguyên', 19),
(165, 'Thành phố Sông Công', 19),
(167, 'Huyện Định Hóa', 19),
(168, 'Huyện Phú Lương', 19),
(169, 'Huyện Đồng Hỷ', 19),
(170, 'Huyện Võ Nhai', 19),
(171, 'Huyện Đại Từ', 19),
(172, 'Thị xã Phổ Yên', 19),
(173, 'Huyện Phú Bình', 19),
(178, 'Thành phố Lạng Sơn', 20),
(180, 'Huyện Tràng Định', 20),
(181, 'Huyện Bình Gia', 20),
(182, 'Huyện Văn Lãng', 20),
(183, 'Huyện Cao Lộc', 20),
(184, 'Huyện Văn Quan', 20),
(185, 'Huyện Bắc Sơn', 20),
(186, 'Huyện Hữu Lũng', 20),
(187, 'Huyện Chi Lăng', 20),
(188, 'Huyện Lộc Bình', 20),
(189, 'Huyện Đình Lập', 20),
(193, 'Thành phố Hạ Long', 22),
(194, 'Thành phố Móng Cái', 22),
(195, 'Thành phố Cẩm Phả', 22),
(196, 'Thành phố Uông Bí', 22),
(198, 'Huyện Bình Liêu', 22),
(199, 'Huyện Tiên Yên', 22),
(200, 'Huyện Đầm Hà', 22),
(201, 'Huyện Hải Hà', 22),
(202, 'Huyện Ba Chẽ', 22),
(203, 'Huyện Vân Đồn', 22),
(204, 'Huyện Hoành Bồ', 22),
(205, 'Thị xã Đông Triều', 22),
(206, 'Thị xã Quảng Yên', 22),
(207, 'Huyện Cô Tô', 22),
(213, 'Thành phố Bắc Giang', 24),
(215, 'Huyện Yên Thế', 24),
(216, 'Huyện Tân Yên', 24),
(217, 'Huyện Lạng Giang', 24),
(218, 'Huyện Lục Nam', 24),
(219, 'Huyện Lục Ngạn', 24),
(220, 'Huyện Sơn Động', 24),
(221, 'Huyện Yên Dũng', 24),
(222, 'Huyện Việt Yên', 24),
(223, 'Huyện Hiệp Hòa', 24),
(227, 'Thành phố Việt Trì', 25),
(228, 'Thị xã Phú Thọ', 25),
(230, 'Huyện Đoan Hùng', 25),
(231, 'Huyện Hạ Hoà', 25),
(232, 'Huyện Thanh Ba', 25),
(233, 'Huyện Phù Ninh', 25),
(234, 'Huyện Yên Lập', 25),
(235, 'Huyện Cẩm Khê', 25),
(236, 'Huyện Tam Nông', 25),
(237, 'Huyện Lâm Thao', 25),
(238, 'Huyện Thanh Sơn', 25),
(239, 'Huyện Thanh Thuỷ', 25),
(240, 'Huyện Tân Sơn', 25),
(243, 'Thành phố Vĩnh Yên', 26),
(244, 'Thị xã Phúc Yên', 26),
(246, 'Huyện Lập Thạch', 26),
(247, 'Huyện Tam Dương', 26),
(248, 'Huyện Tam Đảo', 26),
(249, 'Huyện Bình Xuyên', 26),
(250, 'Huyện Mê Linh', 1),
(251, 'Huyện Yên Lạc', 26),
(252, 'Huyện Vĩnh Tường', 26),
(253, 'Huyện Sông Lô', 26),
(256, 'Thành phố Bắc Ninh', 27),
(258, 'Huyện Yên Phong', 27),
(259, 'Huyện Quế Võ', 27),
(260, 'Huyện Tiên Du', 27),
(261, 'Thị xã Từ Sơn', 27),
(262, 'Huyện Thuận Thành', 27),
(263, 'Huyện Gia Bình', 27),
(264, 'Huyện Lương Tài', 27),
(268, 'Quận Hà Đông', 1),
(269, 'Thị xã Sơn Tây', 1),
(271, 'Huyện Ba Vì', 1),
(272, 'Huyện Phúc Thọ', 1),
(273, 'Huyện Đan Phượng', 1),
(274, 'Huyện Hoài Đức', 1),
(275, 'Huyện Quốc Oai', 1),
(276, 'Huyện Thạch Thất', 1),
(277, 'Huyện Chương Mỹ', 1),
(278, 'Huyện Thanh Oai', 1),
(279, 'Huyện Thường Tín', 1),
(280, 'Huyện Phú Xuyên', 1),
(281, 'Huyện Ứng Hòa', 1),
(282, 'Huyện Mỹ Đức', 1),
(288, 'Thành phố Hải Dương', 30),
(290, 'Thị xã Chí Linh', 30),
(291, 'Huyện Nam Sách', 30),
(292, 'Huyện Kinh Môn', 30),
(293, 'Huyện Kim Thành', 30),
(294, 'Huyện Thanh Hà', 30),
(295, 'Huyện Cẩm Giàng', 30),
(296, 'Huyện Bình Giang', 30),
(297, 'Huyện Gia Lộc', 30),
(298, 'Huyện Tứ Kỳ', 30),
(299, 'Huyện Ninh Giang', 30),
(300, 'Huyện Thanh Miện', 30),
(303, 'Quận Hồng Bàng', 31),
(304, 'Quận Ngô Quyền', 31),
(305, 'Quận Lê Chân', 31),
(306, 'Quận Hải An', 31),
(307, 'Quận Kiến An', 31),
(308, 'Quận Đồ Sơn', 31),
(309, 'Quận Dương Kinh', 31),
(311, 'Huyện Thuỷ Nguyên', 31),
(312, 'Huyện An Dương', 31),
(313, 'Huyện An Lão', 31),
(314, 'Huyện Kiến Thuỵ', 31),
(315, 'Huyện Tiên Lãng', 31),
(316, 'Huyện Vĩnh Bảo', 31),
(317, 'Huyện Cát Hải', 31),
(318, 'Huyện Bạch Long Vĩ', 31),
(323, 'Thành phố Hưng Yên', 33),
(325, 'Huyện Văn Lâm', 33),
(326, 'Huyện Văn Giang', 33),
(327, 'Huyện Yên Mỹ', 33),
(328, 'Huyện Mỹ Hào', 33),
(329, 'Huyện Ân Thi', 33),
(330, 'Huyện Khoái Châu', 33),
(331, 'Huyện Kim Động', 33),
(332, 'Huyện Tiên Lữ', 33),
(333, 'Huyện Phù Cừ', 33),
(336, 'Thành phố Thái Bình', 34),
(338, 'Huyện Quỳnh Phụ', 34),
(339, 'Huyện Hưng Hà', 34),
(340, 'Huyện Đông Hưng', 34),
(341, 'Huyện Thái Thụy', 34),
(342, 'Huyện Tiền Hải', 34),
(343, 'Huyện Kiến Xương', 34),
(344, 'Huyện Vũ Thư', 34),
(347, 'Thành phố Phủ Lý', 35),
(349, 'Huyện Duy Tiên', 35),
(350, 'Huyện Kim Bảng', 35),
(351, 'Huyện Thanh Liêm', 35),
(352, 'Huyện Bình Lục', 35),
(353, 'Huyện Lý Nhân', 35),
(356, 'Thành phố Nam Định', 36),
(358, 'Huyện Mỹ Lộc', 36),
(359, 'Huyện Vụ Bản', 36),
(360, 'Huyện Ý Yên', 36),
(361, 'Huyện Nghĩa Hưng', 36),
(362, 'Huyện Nam Trực', 36),
(363, 'Huyện Trực Ninh', 36),
(364, 'Huyện Xuân Trường', 36),
(365, 'Huyện Giao Thủy', 36),
(366, 'Huyện Hải Hậu', 36),
(369, 'Thành phố Ninh Bình', 37),
(370, 'Thành phố Tam Điệp', 37),
(372, 'Huyện Nho Quan', 37),
(373, 'Huyện Gia Viễn', 37),
(374, 'Huyện Hoa Lư', 37),
(375, 'Huyện Yên Khánh', 37),
(376, 'Huyện Kim Sơn', 37),
(377, 'Huyện Yên Mô', 37),
(380, 'Thành phố Thanh Hóa', 38),
(381, 'Thị xã Bỉm Sơn', 38),
(382, 'Thị xã Sầm Sơn', 38),
(384, 'Huyện Mường Lát', 38),
(385, 'Huyện Quan Hóa', 38),
(386, 'Huyện Bá Thước', 38),
(387, 'Huyện Quan Sơn', 38),
(388, 'Huyện Lang Chánh', 38),
(389, 'Huyện Ngọc Lặc', 38),
(390, 'Huyện Cẩm Thủy', 38),
(391, 'Huyện Thạch Thành', 38),
(392, 'Huyện Hà Trung', 38),
(393, 'Huyện Vĩnh Lộc', 38),
(394, 'Huyện Yên Định', 38),
(395, 'Huyện Thọ Xuân', 38),
(396, 'Huyện Thường Xuân', 38),
(397, 'Huyện Triệu Sơn', 38),
(398, 'Huyện Thiệu Hóa', 38),
(399, 'Huyện Hoằng Hóa', 38),
(400, 'Huyện Hậu Lộc', 38),
(401, 'Huyện Nga Sơn', 38),
(402, 'Huyện Như Xuân', 38),
(403, 'Huyện Như Thanh', 38),
(404, 'Huyện Nông Cống', 38),
(405, 'Huyện Đông Sơn', 38),
(406, 'Huyện Quảng Xương', 38),
(407, 'Huyện Tĩnh Gia', 38),
(412, 'Thành phố Vinh', 40),
(413, 'Thị xã Cửa Lò', 40),
(414, 'Thị xã Thái Hoà', 40),
(415, 'Huyện Quế Phong', 40),
(416, 'Huyện Quỳ Châu', 40),
(417, 'Huyện Kỳ Sơn', 40),
(418, 'Huyện Tương Dương', 40),
(419, 'Huyện Nghĩa Đàn', 40),
(420, 'Huyện Quỳ Hợp', 40),
(421, 'Huyện Quỳnh Lưu', 40),
(422, 'Huyện Con Cuông', 40),
(423, 'Huyện Tân Kỳ', 40),
(424, 'Huyện Anh Sơn', 40),
(425, 'Huyện Diễn Châu', 40),
(426, 'Huyện Yên Thành', 40),
(427, 'Huyện Đô Lương', 40),
(428, 'Huyện Thanh Chương', 40),
(429, 'Huyện Nghi Lộc', 40),
(430, 'Huyện Nam Đàn', 40),
(431, 'Huyện Hưng Nguyên', 40),
(432, 'Thị xã Hoàng Mai', 40),
(436, 'Thành phố Hà Tĩnh', 42),
(437, 'Thị xã Hồng Lĩnh', 42),
(439, 'Huyện Hương Sơn', 42),
(440, 'Huyện Đức Thọ', 42),
(441, 'Huyện Vũ Quang', 42),
(442, 'Huyện Nghi Xuân', 42),
(443, 'Huyện Can Lộc', 42),
(444, 'Huyện Hương Khê', 42),
(445, 'Huyện Thạch Hà', 42),
(446, 'Huyện Cẩm Xuyên', 42),
(447, 'Huyện Kỳ Anh', 42),
(448, 'Huyện Lộc Hà', 42),
(449, 'Thị xã Kỳ Anh', 42),
(450, 'Thành Phố Đồng Hới', 44),
(452, 'Huyện Minh Hóa', 44),
(453, 'Huyện Tuyên Hóa', 44),
(454, 'Huyện Quảng Trạch', 44),
(455, 'Huyện Bố Trạch', 44),
(456, 'Huyện Quảng Ninh', 44),
(457, 'Huyện Lệ Thủy', 44),
(458, 'Thị xã Ba Đồn', 44),
(461, 'Thành phố Đông Hà', 45),
(462, 'Thị xã Quảng Trị', 45),
(464, 'Huyện Vĩnh Linh', 45),
(465, 'Huyện Hướng Hóa', 45),
(466, 'Huyện Gio Linh', 45),
(467, 'Huyện Đa Krông', 45),
(468, 'Huyện Cam Lộ', 45),
(469, 'Huyện Triệu Phong', 45),
(470, 'Huyện Hải Lăng', 45),
(471, 'Huyện Cồn Cỏ', 45),
(474, 'Thành phố Huế', 46),
(476, 'Huyện Phong Điền', 46),
(477, 'Huyện Quảng Điền', 46),
(478, 'Huyện Phú Vang', 46),
(479, 'Thị xã Hương Thủy', 46),
(480, 'Thị xã Hương Trà', 46),
(481, 'Huyện A Lưới', 46),
(482, 'Huyện Phú Lộc', 46),
(483, 'Huyện Nam Đông', 46),
(490, 'Quận Liên Chiểu', 48),
(491, 'Quận Thanh Khê', 48),
(492, 'Quận Hải Châu', 48),
(493, 'Quận Sơn Trà', 48),
(494, 'Quận Ngũ Hành Sơn', 48),
(495, 'Quận Cẩm Lệ', 48),
(497, 'Huyện Hòa Vang', 48),
(498, 'Huyện Hoàng Sa', 48),
(502, 'Thành phố Tam Kỳ', 49),
(503, 'Thành phố Hội An', 49),
(504, 'Huyện Tây Giang', 49),
(505, 'Huyện Đông Giang', 49),
(506, 'Huyện Đại Lộc', 49),
(507, 'Thị xã Điện Bàn', 49),
(508, 'Huyện Duy Xuyên', 49),
(509, 'Huyện Quế Sơn', 49),
(510, 'Huyện Nam Giang', 49),
(511, 'Huyện Phước Sơn', 49),
(512, 'Huyện Hiệp Đức', 49),
(513, 'Huyện Thăng Bình', 49),
(514, 'Huyện Tiên Phước', 49),
(515, 'Huyện Bắc Trà My', 49),
(516, 'Huyện Nam Trà My', 49),
(517, 'Huyện Núi Thành', 49),
(518, 'Huyện Phú Ninh', 49),
(519, 'Huyện Nông Sơn', 49),
(522, 'Thành phố Quảng Ngãi', 51),
(524, 'Huyện Bình Sơn', 51),
(525, 'Huyện Trà Bồng', 51),
(526, 'Huyện Tây Trà', 51),
(527, 'Huyện Sơn Tịnh', 51),
(528, 'Huyện Tư Nghĩa', 51),
(529, 'Huyện Sơn Hà', 51),
(530, 'Huyện Sơn Tây', 51),
(531, 'Huyện Minh Long', 51),
(532, 'Huyện Nghĩa Hành', 51),
(533, 'Huyện Mộ Đức', 51),
(534, 'Huyện Đức Phổ', 51),
(535, 'Huyện Ba Tơ', 51),
(536, 'Huyện Lý Sơn', 51),
(540, 'Thành phố Qui Nhơn', 52),
(542, 'Huyện An Lão', 52),
(543, 'Huyện Hoài Nhơn', 52),
(544, 'Huyện Hoài Ân', 52),
(545, 'Huyện Phù Mỹ', 52),
(546, 'Huyện Vĩnh Thạnh', 52),
(547, 'Huyện Tây Sơn', 52),
(548, 'Huyện Phù Cát', 52),
(549, 'Thị xã An Nhơn', 52),
(550, 'Huyện Tuy Phước', 52),
(551, 'Huyện Vân Canh', 52),
(555, 'Thành phố Tuy Hoà', 54),
(557, 'Thị xã Sông Cầu', 54),
(558, 'Huyện Đồng Xuân', 54),
(559, 'Huyện Tuy An', 54),
(560, 'Huyện Sơn Hòa', 54),
(561, 'Huyện Sông Hinh', 54),
(562, 'Huyện Tây Hoà', 54),
(563, 'Huyện Phú Hoà', 54),
(564, 'Huyện Đông Hòa', 54),
(568, 'Thành phố Nha Trang', 56),
(569, 'Thành phố Cam Ranh', 56),
(570, 'Huyện Cam Lâm', 56),
(571, 'Huyện Vạn Ninh', 56),
(572, 'Thị xã Ninh Hòa', 56),
(573, 'Huyện Khánh Vĩnh', 56),
(574, 'Huyện Diên Khánh', 56),
(575, 'Huyện Khánh Sơn', 56),
(576, 'Huyện Trường Sa', 56),
(582, 'Thành phố Phan Rang-Tháp Chàm', 58),
(584, 'Huyện Bác Ái', 58),
(585, 'Huyện Ninh Sơn', 58),
(586, 'Huyện Ninh Hải', 58),
(587, 'Huyện Ninh Phước', 58),
(588, 'Huyện Thuận Bắc', 58),
(589, 'Huyện Thuận Nam', 58),
(593, 'Thành phố Phan Thiết', 60),
(594, 'Thị xã La Gi', 60),
(595, 'Huyện Tuy Phong', 60),
(596, 'Huyện Bắc Bình', 60),
(597, 'Huyện Hàm Thuận Bắc', 60),
(598, 'Huyện Hàm Thuận Nam', 60),
(599, 'Huyện Tánh Linh', 60),
(600, 'Huyện Đức Linh', 60),
(601, 'Huyện Hàm Tân', 60),
(602, 'Huyện Phú Quí', 60),
(608, 'Thành phố Kon Tum', 62),
(610, 'Huyện Đắk Glei', 62),
(611, 'Huyện Ngọc Hồi', 62),
(612, 'Huyện Đắk Tô', 62),
(613, 'Huyện Kon Plông', 62),
(614, 'Huyện Kon Rẫy', 62),
(615, 'Huyện Đắk Hà', 62),
(616, 'Huyện Sa Thầy', 62),
(617, 'Huyện Tu Mơ Rông', 62),
(618, 'Huyện Ia H\' Drai', 62),
(622, 'Thành phố Pleiku', 64),
(623, 'Thị xã An Khê', 64),
(624, 'Thị xã Ayun Pa', 64),
(625, 'Huyện KBang', 64),
(626, 'Huyện Đăk Đoa', 64),
(627, 'Huyện Chư Păh', 64),
(628, 'Huyện Ia Grai', 64),
(629, 'Huyện Mang Yang', 64),
(630, 'Huyện Kông Chro', 64),
(631, 'Huyện Đức Cơ', 64),
(632, 'Huyện Chư Prông', 64),
(633, 'Huyện Chư Sê', 64),
(634, 'Huyện Đăk Pơ', 64),
(635, 'Huyện Ia Pa', 64),
(637, 'Huyện Krông Pa', 64),
(638, 'Huyện Phú Thiện', 64),
(639, 'Huyện Chư Pưh', 64),
(643, 'Thành phố Buôn Ma Thuột', 66),
(644, 'Thị Xã Buôn Hồ', 66),
(645, 'Huyện Ea H\'leo', 66),
(646, 'Huyện Ea Súp', 66),
(647, 'Huyện Buôn Đôn', 66),
(648, 'Huyện Cư M\'gar', 66),
(649, 'Huyện Krông Búk', 66),
(650, 'Huyện Krông Năng', 66),
(651, 'Huyện Ea Kar', 66),
(652, 'Huyện M\'Đrắk', 66),
(653, 'Huyện Krông Bông', 66),
(654, 'Huyện Krông Pắc', 66),
(655, 'Huyện Krông A Na', 66),
(656, 'Huyện Lắk', 66),
(657, 'Huyện Cư Kuin', 66),
(660, 'Thị xã Gia Nghĩa', 67),
(661, 'Huyện Đăk Glong', 67),
(662, 'Huyện Cư Jút', 67),
(663, 'Huyện Đắk Mil', 67),
(664, 'Huyện Krông Nô', 67),
(665, 'Huyện Đắk Song', 67),
(666, 'Huyện Đắk R\'Lấp', 67),
(667, 'Huyện Tuy Đức', 67),
(672, 'Thành phố Đà Lạt', 68),
(673, 'Thành phố Bảo Lộc', 68),
(674, 'Huyện Đam Rông', 68),
(675, 'Huyện Lạc Dương', 68),
(676, 'Huyện Lâm Hà', 68),
(677, 'Huyện Đơn Dương', 68),
(678, 'Huyện Đức Trọng', 68),
(679, 'Huyện Di Linh', 68),
(680, 'Huyện Bảo Lâm', 68),
(681, 'Huyện Đạ Huoai', 68),
(682, 'Huyện Đạ Tẻh', 68),
(683, 'Huyện Cát Tiên', 68),
(688, 'Thị xã Phước Long', 70),
(689, 'Thị xã Đồng Xoài', 70),
(690, 'Thị xã Bình Long', 70),
(691, 'Huyện Bù Gia Mập', 70),
(692, 'Huyện Lộc Ninh', 70),
(693, 'Huyện Bù Đốp', 70),
(694, 'Huyện Hớn Quản', 70),
(695, 'Huyện Đồng Phú', 70),
(696, 'Huyện Bù Đăng', 70),
(697, 'Huyện Chơn Thành', 70),
(698, 'Huyện Phú Riềng', 70),
(703, 'Thành phố Tây Ninh', 72),
(705, 'Huyện Tân Biên', 72),
(706, 'Huyện Tân Châu', 72),
(707, 'Huyện Dương Minh Châu', 72),
(708, 'Huyện Châu Thành', 72),
(709, 'Huyện Hòa Thành', 72),
(710, 'Huyện Gò Dầu', 72),
(711, 'Huyện Bến Cầu', 72),
(712, 'Huyện Trảng Bàng', 72),
(718, 'Thành phố Thủ Dầu Một', 74),
(719, 'Huyện Bàu Bàng', 74),
(720, 'Huyện Dầu Tiếng', 74),
(721, 'Thị xã Bến Cát', 74),
(722, 'Huyện Phú Giáo', 74),
(723, 'Thị xã Tân Uyên', 74),
(724, 'Thị xã Dĩ An', 74),
(725, 'Thị xã Thuận An', 74),
(726, 'Huyện Bắc Tân Uyên', 74),
(731, 'Thành phố Biên Hòa', 75),
(732, 'Thị xã Long Khánh', 75),
(734, 'Huyện Tân Phú', 75),
(735, 'Huyện Vĩnh Cửu', 75),
(736, 'Huyện Định Quán', 75),
(737, 'Huyện Trảng Bom', 75),
(738, 'Huyện Thống Nhất', 75),
(739, 'Huyện Cẩm Mỹ', 75),
(740, 'Huyện Long Thành', 75),
(741, 'Huyện Xuân Lộc', 75),
(742, 'Huyện Nhơn Trạch', 75),
(747, 'Thành phố Vũng Tàu', 77),
(748, 'Thành phố Bà Rịa', 77),
(750, 'Huyện Châu Đức', 77),
(751, 'Huyện Xuyên Mộc', 77),
(752, 'Huyện Long Điền', 77),
(753, 'Huyện Đất Đỏ', 77),
(754, 'Huyện Tân Thành', 77),
(755, 'Huyện Côn Đảo', 77),
(760, 'Quận 1', 79),
(761, 'Quận 12', 79),
(762, 'Quận Thủ Đức', 79),
(763, 'Quận 9', 79),
(764, 'Quận Gò Vấp', 79),
(765, 'Quận Bình Thạnh', 79),
(766, 'Quận Tân Bình', 79),
(767, 'Quận Tân Phú', 79),
(768, 'Quận Phú Nhuận', 79),
(769, 'Quận 2', 79),
(770, 'Quận 3', 79),
(771, 'Quận 10', 79),
(772, 'Quận 11', 79),
(773, 'Quận 4', 79),
(774, 'Quận 5', 79),
(775, 'Quận 6', 79),
(776, 'Quận 8', 79),
(777, 'Quận Bình Tân', 79),
(778, 'Quận 7', 79),
(783, 'Huyện Củ Chi', 79),
(784, 'Huyện Hóc Môn', 79),
(785, 'Huyện Bình Chánh', 79),
(786, 'Huyện Nhà Bè', 79),
(787, 'Huyện Cần Giờ', 79),
(794, 'Thành phố Tân An', 80),
(795, 'Thị xã Kiến Tường', 80),
(796, 'Huyện Tân Hưng', 80),
(797, 'Huyện Vĩnh Hưng', 80),
(798, 'Huyện Mộc Hóa', 80),
(799, 'Huyện Tân Thạnh', 80),
(800, 'Huyện Thạnh Hóa', 80),
(801, 'Huyện Đức Huệ', 80),
(802, 'Huyện Đức Hòa', 80),
(803, 'Huyện Bến Lức', 80),
(804, 'Huyện Thủ Thừa', 80),
(805, 'Huyện Tân Trụ', 80),
(806, 'Huyện Cần Đước', 80),
(807, 'Huyện Cần Giuộc', 80),
(808, 'Huyện Châu Thành', 80),
(815, 'Thành phố Mỹ Tho', 82),
(816, 'Thị xã Gò Công', 82),
(817, 'Thị xã Cai Lậy', 82),
(818, 'Huyện Tân Phước', 82),
(819, 'Huyện Cái Bè', 82),
(820, 'Huyện Cai Lậy', 82),
(821, 'Huyện Châu Thành', 82),
(822, 'Huyện Chợ Gạo', 82),
(823, 'Huyện Gò Công Tây', 82),
(824, 'Huyện Gò Công Đông', 82),
(825, 'Huyện Tân Phú Đông', 82),
(829, 'Thành phố Bến Tre', 83),
(831, 'Huyện Châu Thành', 83),
(832, 'Huyện Chợ Lách', 83),
(833, 'Huyện Mỏ Cày Nam', 83),
(834, 'Huyện Giồng Trôm', 83),
(835, 'Huyện Bình Đại', 83),
(836, 'Huyện Ba Tri', 83),
(837, 'Huyện Thạnh Phú', 83),
(838, 'Huyện Mỏ Cày Bắc', 83),
(842, 'Thành phố Trà Vinh', 84),
(844, 'Huyện Càng Long', 84),
(845, 'Huyện Cầu Kè', 84),
(846, 'Huyện Tiểu Cần', 84),
(847, 'Huyện Châu Thành', 84),
(848, 'Huyện Cầu Ngang', 84),
(849, 'Huyện Trà Cú', 84),
(850, 'Huyện Duyên Hải', 84),
(851, 'Thị xã Duyên Hải', 84),
(855, 'Thành phố Vĩnh Long', 86),
(857, 'Huyện Long Hồ', 86),
(858, 'Huyện Mang Thít', 86),
(859, 'Huyện  Vũng Liêm', 86),
(860, 'Huyện Tam Bình', 86),
(861, 'Thị xã Bình Minh', 86),
(862, 'Huyện Trà Ôn', 86),
(863, 'Huyện Bình Tân', 86),
(866, 'Thành phố Cao Lãnh', 87),
(867, 'Thành phố Sa Đéc', 87),
(868, 'Thị xã Hồng Ngự', 87),
(869, 'Huyện Tân Hồng', 87),
(870, 'Huyện Hồng Ngự', 87),
(871, 'Huyện Tam Nông', 87),
(872, 'Huyện Tháp Mười', 87),
(873, 'Huyện Cao Lãnh', 87),
(874, 'Huyện Thanh Bình', 87),
(875, 'Huyện Lấp Vò', 87),
(876, 'Huyện Lai Vung', 87),
(877, 'Huyện Châu Thành', 87),
(883, 'Thành phố Long Xuyên', 89),
(884, 'Thành phố Châu Đốc', 89),
(886, 'Huyện An Phú', 89),
(887, 'Thị xã Tân Châu', 89),
(888, 'Huyện Phú Tân', 89),
(889, 'Huyện Châu Phú', 89),
(890, 'Huyện Tịnh Biên', 89),
(891, 'Huyện Tri Tôn', 89),
(892, 'Huyện Châu Thành', 89),
(893, 'Huyện Chợ Mới', 89),
(894, 'Huyện Thoại Sơn', 89),
(899, 'Thành phố Rạch Giá', 91),
(900, 'Thị xã Hà Tiên', 91),
(902, 'Huyện Kiên Lương', 91),
(903, 'Huyện Hòn Đất', 91),
(904, 'Huyện Tân Hiệp', 91),
(905, 'Huyện Châu Thành', 91),
(906, 'Huyện Giồng Riềng', 91),
(907, 'Huyện Gò Quao', 91),
(908, 'Huyện An Biên', 91),
(909, 'Huyện An Minh', 91),
(910, 'Huyện Vĩnh Thuận', 91),
(911, 'Huyện Phú Quốc', 91),
(912, 'Huyện Kiên Hải', 91),
(913, 'Huyện U Minh Thượng', 91),
(914, 'Huyện Giang Thành', 91),
(916, 'Quận Ninh Kiều', 92),
(917, 'Quận Ô Môn', 92),
(918, 'Quận Bình Thuỷ', 92),
(919, 'Quận Cái Răng', 92),
(923, 'Quận Thốt Nốt', 92),
(924, 'Huyện Vĩnh Thạnh', 92),
(925, 'Huyện Cờ Đỏ', 92),
(926, 'Huyện Phong Điền', 92),
(927, 'Huyện Thới Lai', 92),
(930, 'Thành phố Vị Thanh', 93),
(931, 'Thị xã Ngã Bảy', 93),
(932, 'Huyện Châu Thành A', 93),
(933, 'Huyện Châu Thành', 93),
(934, 'Huyện Phụng Hiệp', 93),
(935, 'Huyện Vị Thuỷ', 93),
(936, 'Huyện Long Mỹ', 93),
(937, 'Thị xã Long Mỹ', 93),
(941, 'Thành phố Sóc Trăng', 94),
(942, 'Huyện Châu Thành', 94),
(943, 'Huyện Kế Sách', 94),
(944, 'Huyện Mỹ Tú', 94),
(945, 'Huyện Cù Lao Dung', 94),
(946, 'Huyện Long Phú', 94),
(947, 'Huyện Mỹ Xuyên', 94),
(948, 'Thị xã Ngã Năm', 94),
(949, 'Huyện Thạnh Trị', 94),
(950, 'Thị xã Vĩnh Châu', 94),
(951, 'Huyện Trần Đề', 94),
(954, 'Thành phố Bạc Liêu', 95),
(956, 'Huyện Hồng Dân', 95),
(957, 'Huyện Phước Long', 95),
(958, 'Huyện Vĩnh Lợi', 95),
(959, 'Thị xã Giá Rai', 95),
(960, 'Huyện Đông Hải', 95),
(961, 'Huyện Hoà Bình', 95),
(964, 'Thành phố Cà Mau', 96),
(966, 'Huyện U Minh', 96),
(967, 'Huyện Thới Bình', 96),
(968, 'Huyện Trần Văn Thời', 96),
(969, 'Huyện Cái Nước', 96),
(970, 'Huyện Đầm Dơi', 96),
(971, 'Huyện Năm Căn', 96),
(972, 'Huyện Phú Tân', 96),
(973, 'Huyện Ngọc Hiển', 96);

-- --------------------------------------------------------

--
-- Table structure for table `hotel`
--

DROP TABLE IF EXISTS `hotel`;
CREATE TABLE IF NOT EXISTS `hotel` (
  `id_hotel` int(11) NOT NULL AUTO_INCREMENT,
  `name_hotel` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `district_id` int(11) DEFAULT NULL,
  `city_id` int(11) DEFAULT NULL,
  `price_room_per_day` char(16) COLLATE utf8_unicode_ci DEFAULT NULL,
  `latitude` char(16) COLLATE utf8_unicode_ci DEFAULT NULL,
  `longitude` char(16) COLLATE utf8_unicode_ci DEFAULT NULL,
  `check_in` char(16) COLLATE utf8_unicode_ci DEFAULT NULL,
  `check_out` char(16) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id_hotel`),
  KEY `city_id` (`city_id`,`district_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `hotel`
--

INSERT INTO `hotel` (`id_hotel`, `name_hotel`, `address`, `district_id`, `city_id`, `price_room_per_day`, `latitude`, `longitude`, `check_in`, `check_out`) VALUES
(1, 'Khách sạn Grand', '2 Nguyễn Du, Phường 1', 747, 77, '1166667', '10.3437429', '107.0054358', NULL, NULL),
(2, 'Vũng Tàu Intourco Resort', '1A Thùy Vân, Phường 8', 747, 77, '1219672', '10.3523074', '107.0324322', NULL, NULL),
(3, 'Leman Cap Resort Vung Tau', '60 Hạ Long, Phường 2', 747, 77, '1510234', '10.3300774', '107.0073424', NULL, NULL),
(4, 'Green Hotel Vũng Tàu', '147C Thùy Vân, Phường Thắng Tam', 747, 77, '612500', '10.3373428', '107.0208231', NULL, NULL),
(5, 'Lan Rừng Resort & Spa', '03-06 Hạ Long', 747, 77, '708400', '10.3267925', '107.0111984', NULL, NULL),
(6, 'Khách sạn Mường Thanh', '09 Thống Nhất, Phường 1', 747, 77, '1105032', '10.3456574', '107.0053234', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `image`
--

DROP TABLE IF EXISTS `image`;
CREATE TABLE IF NOT EXISTS `image` (
  `name_image` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `hotel_id` int(11) NOT NULL,
  `room_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`name_image`,`hotel_id`),
  UNIQUE KEY `name_image` (`name_image`,`hotel_id`,`room_id`),
  KEY `room_id` (`room_id`),
  KEY `hotel_id` (`hotel_id`,`room_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `image`
--

INSERT INTO `image` (`name_image`, `hotel_id`, `room_id`) VALUES
('/image//files/62233943.jpg', 1, NULL),
('/image/files/0831201714160578.jpg', 1, NULL),
('/image/files/234434_17031708540051594325.jpg', 1, NULL),
('/image/files/62233934.jpg', 1, NULL),
('/image/files/grand_hotel_green.jpg', 1, NULL),
('/image/files/grand-hotel-vung-tau1.jpg', 1, NULL),
('/image/files/khach-san-grand-vung-tau.jpg', 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `key_word`
--

DROP TABLE IF EXISTS `key_word`;
CREATE TABLE IF NOT EXISTS `key_word` (
  `key_word` varchar(254) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `key_word`
--

INSERT INTO `key_word` (`key_word`) VALUES
('Hotel'),
('Hotel'),
('Hotel'),
('Hotel'),
('Hotel'),
('Hotel'),
('Hotel'),
('%Hotel%'),
('Hotel'),
('Hotel'),
('Hotel'),
('Hotel'),
('H'),
('H'),
(''),
(''),
('H'),
('H'),
('Hotel'),
('H'),
('H'),
('H'),
('H'),
('H'),
('H'),
('H'),
('H'),
('H'),
('H'),
('H'),
('H'),
('H'),
('H'),
('H'),
('H'),
('H'),
('H'),
('H'),
('Hotel'),
('Hotel'),
('Hotel'),
('Hotel'),
('Hotel'),
('Kh'),
('Kh'),
('Kh'),
('Kh'),
('Kh'),
('Kh'),
('Kh'),
('Kh'),
('Kh'),
('Kh'),
('Kh'),
('Kh');

-- --------------------------------------------------------

--
-- Table structure for table `review`
--

DROP TABLE IF EXISTS `review`;
CREATE TABLE IF NOT EXISTS `review` (
  `hotel_id` int(11) NOT NULL,
  `room_id` int(11) NOT NULL,
  `user_id` varchar(254) COLLATE utf8_unicode_ci NOT NULL,
  `star` varchar(4) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `room`
--

DROP TABLE IF EXISTS `room`;
CREATE TABLE IF NOT EXISTS `room` (
  `id_room` int(11) NOT NULL AUTO_INCREMENT,
  `name_room` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `price_per_day` char(16) COLLATE utf8_unicode_ci DEFAULT NULL,
  `image` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `count` char(4) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` varchar(16) COLLATE utf8_unicode_ci DEFAULT NULL,
  `hotel_id` int(11) NOT NULL,
  PRIMARY KEY (`id_room`),
  KEY `hotel_id` (`hotel_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `room`
--

INSERT INTO `room` (`id_room`, `name_room`, `price_per_day`, `image`, `count`, `status`, `hotel_id`) VALUES
(1, 'Phòng đơn', '320000', '', '12', 'Còn phòng', 1),
(2, 'Phòng đơn', '350000', '/room/files/khach-san-iris-can-tho[1].jpg', '19', 'Còn ít', 2);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `dob` char(16) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` char(16) COLLATE utf8_unicode_ci NOT NULL,
  `device_id` char(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  `gender` varchar(8) COLLATE utf8_unicode_ci DEFAULT NULL,
  `token` char(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`phone`),
  UNIQUE KEY `phone` (`phone`),
  KEY `device_id` (`device_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`dob`, `phone`, `device_id`, `password`, `gender`, `token`) VALUES
('1996-05-06', '0947065823', '72e11234567894561235678975641345689', '9319cb8aaafec663d657b9966bf1f7fc', 'nam', 'b8ec524d183d23898e6baeb8fd1e4d6eaad089e8a177748bbae5016c471352b1');

-- --------------------------------------------------------

--
-- Table structure for table `utility`
--

DROP TABLE IF EXISTS `utility`;
CREATE TABLE IF NOT EXISTS `utility` (
  `id_utility` int(11) NOT NULL AUTO_INCREMENT,
  `name_utility` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id_utility`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `utility`
--

INSERT INTO `utility` (`id_utility`, `name_utility`, `image`) VALUES
(2, 'Cảm biến ánh sáng', '/utility/files/2599_denled8[1].jpg'),
(3, 'Có Tivi', '/utility/files/SonyLCD[1].jpg'),
(4, 'Đưa đón sân bay', '/utility/files/duadonsanbay.png'),
(5, 'Nằm ở trung tâm', '/utility/files/namotrungtam.png'),
(6, 'Wifi miễn phí cho mọi phòng', '/utility/files/wifi.png'),
(7, 'Dịch vụ làm đẹp', '/utility/files/maysaytoc.png'),
(8, 'Gần bãi biển', '/utility/files/ganbien.png'),
(9, 'Có bar', '/utility/files/minibar.png'),
(10, 'Dọn phòng hằng ngày', '/utility/files/donphonghangngay.png');

-- --------------------------------------------------------

--
-- Table structure for table `utilityroom`
--

DROP TABLE IF EXISTS `utilityroom`;
CREATE TABLE IF NOT EXISTS `utilityroom` (
  `utility_id` int(11) NOT NULL,
  `hotel_id` int(11) NOT NULL,
  `room_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`utility_id`,`hotel_id`),
  UNIQUE KEY `utility_id` (`utility_id`,`hotel_id`,`room_id`),
  KEY `room_id` (`room_id`),
  KEY `room_id_2` (`room_id`),
  KEY `hotel_id` (`hotel_id`,`room_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `utilityroom`
--

INSERT INTO `utilityroom` (`utility_id`, `hotel_id`, `room_id`) VALUES
(2, 2, NULL),
(3, 2, 2),
(4, 2, 2),
(5, 2, 2);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
