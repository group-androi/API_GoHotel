-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 18, 2019 at 12:33 PM
-- Server version: 10.1.34-MariaDB
-- PHP Version: 7.2.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bookroomhotel`
--

-- --------------------------------------------------------

--
-- Table structure for table `bookroom`
--

CREATE TABLE `bookroom` (
  `id_book` int(11) NOT NULL,
  `device_id` varchar(256) COLLATE utf8_unicode_ci DEFAULT NULL,
  `hotel_id` int(11) NOT NULL,
  `room_id` int(11) NOT NULL,
  `user_id` varchar(16) COLLATE utf8_unicode_ci DEFAULT NULL,
  `date_start` varchar(16) COLLATE utf8_unicode_ci DEFAULT NULL,
  `date_end` varchar(16) COLLATE utf8_unicode_ci DEFAULT NULL,
  `price` varchar(16) COLLATE utf8_unicode_ci DEFAULT NULL,
  `time_book` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(16) COLLATE utf8_unicode_ci DEFAULT NULL,
  `info_user_booked` varchar(1024) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `reviewed` varchar(16) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `bookroom`
--

INSERT INTO `bookroom` (`id_book`, `device_id`, `hotel_id`, `room_id`, `user_id`, `date_start`, `date_end`, `price`, `time_book`, `phone`, `info_user_booked`, `status`, `reviewed`) VALUES
(9, '670a319f7460372c3d1eca4b04f7ec56', 8, 10, '077820445', '2019-06-18', '2019-06-19', '400000', '2019-06-18 03:50:52', '0778204451', '', 1, NULL),
(10, '670a319f7460372c3d1eca4b04f7ec56', 8, 10, '077820445', '2019-06-18', '2019-06-19', '400000', '2019-06-18 04:04:13', '0778204451', '', 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `city`
--

CREATE TABLE `city` (
  `id_city` int(11) NOT NULL,
  `name_city` varchar(32) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

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

CREATE TABLE `device` (
  `id_device` char(128) COLLATE utf8_unicode_ci NOT NULL,
  `latitude` char(16) COLLATE utf8_unicode_ci DEFAULT NULL,
  `longitude` char(16) COLLATE utf8_unicode_ci DEFAULT NULL
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

CREATE TABLE `district` (
  `id_district` int(11) NOT NULL,
  `name_district` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `city_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

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

CREATE TABLE `hotel` (
  `id_hotel` int(11) NOT NULL,
  `name_hotel` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `district_id` int(11) DEFAULT NULL,
  `city_id` int(11) DEFAULT NULL,
  `price_room_per_day` char(16) COLLATE utf8_unicode_ci DEFAULT NULL,
  `latitude` char(16) COLLATE utf8_unicode_ci DEFAULT NULL,
  `longitude` char(16) COLLATE utf8_unicode_ci DEFAULT NULL,
  `check_in` char(16) COLLATE utf8_unicode_ci DEFAULT NULL,
  `check_out` char(16) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `hotel`
--

INSERT INTO `hotel` (`id_hotel`, `name_hotel`, `address`, `district_id`, `city_id`, `price_room_per_day`, `latitude`, `longitude`, `check_in`, `check_out`) VALUES
(7, 'SAMI HOTEL', '5 Dương Bá Trạc, Phường 1, Quận 8, Hồ Chí Minh, Việt Nam', 776, 79, '350000', '10.7502896', '106.688164200000', '12', '12'),
(8, 'HUỲNH ANH HOTEL', '10 Đường số 51, Phường 14, Gò Vấp, Hồ Chí Minh, Việt Nam', 764, 79, '220000', '10.8467412', '106.642359800000', '21', '12'),
(9, 'REDDOORZ NEAR TAN SON NHAT AIRPORT 3', 'B102 Đường Bạch Đằng, Phường 2, Tân Bình, Hồ Chí Minh, Việt Nam', 766, 79, '400000', '10.815577', '106.669703000000', '14', '12'),
(10, 'HÀ NỘI HOTEL', '19/1 Hoàng Việt, Phường 4, Tân Bình, Hồ Chí Minh, Việt Nam', 766, 79, '250000', '10.796567', '106.660229999999', '12', '12'),
(11, 'LYLY HOTEL', '110 Song Hành, Phường 10, Quận 6, Hồ Chí Minh, Việt Nam', 775, 79, '200000', '10.734159', '106.628556099999', '23', '8'),
(12, 'REDDOORZ PLUS @ TRUNG SON RESIDENCE', '57 Đường số 6, Bình Hưng, Bình Chánh, Hồ Chí Minh, Việt Nam', 785, 79, '300000', '10.7375477', '106.691662899999', '14', '12'),
(13, 'REDDOORZ PLUS NEAR LE QUANG DINH STREET', '11A Trần Bình Trọng, Phường 5, Bình Thạnh, Hồ Chí Minh, Vietnam', 765, 79, '280000', '10.811086', '106.689546999999', '14', '12'),
(14, 'REDDOORZ NEAR MIEN TAY BUS STATION', '45 Song Hành, Phường 10, Quận 6, Hồ Chí Minh, Việt Nam', 785, 79, '430000', '10.7343171', '106.627374000000', '14', '12'),
(15, 'FRIDAY PHAN XÍCH LONG', '36/4 Cù Lao, phường 2, Phú Nhuận, Hồ Chí Minh, Việt Nam', 768, 79, '500000', '10.796288', '106.689263999999', '12', '12'),
(17, 'DRAGON HOTEL', '616/41 Lê Đức Thọ, Phường 15, Gò Vấp, Hồ Chí Minh, Việt Nam', 764, 79, '450000', '10.8502539', '106.664236299999', '14', '12'),
(18, 'FRIDAY ROYAL', '662, 7 Sư Vạn Hạnh, Phường 12, Quận 10, Hồ Chí Minh, Việt Nam', 771, 79, '500000', '10.7738427', '106.669084300000', '12', '12'),
(19, 'FRIDAY LÊ HỒNG PHONG', '781/A11 Đường Lê Hồng Phong, Phường 12, Quận 10,Thành Phố Hồ Chí Minh', 771, 79, '500000', '10.7718176', '106.671957799999', '12', '12'),
(20, 'FRIDAY CITY VIEW', '811 Lê Hồng Phong, Phường 12, Quận 10, Hồ Chí Minh, Việt Nam', 771, 79, '500000', '10.7729184', '106.671766599999', '12', '12'),
(21, 'SẠCH HOA CÚC', '50-52-54 Lô C, Hoa Cúc, P.7, Q. Phú Nhuận', 768, 79, '500000', '10.7986405', '106.688793600000', '12', '12'),
(22, 'BANANA HOTEL', '385B Cộng Hòa, P.12, Q. Tân Bình.', 766, 79, '400000', '10.8032037', '106.638096500000', '12', '13'),
(23, 'SẠCH THỦ ĐỨC', '76/2N/1 Lê văn Chí, KP1, P. Linh Trung, Q. Thủ Đức.', 762, 79, '350000', '10.8032037', '106.638096500000', '13', '11'),
(24, 'SONG ANH HOTEL', '372 Lê Hồng Phong, P1, Q10.', 771, 79, NULL, '10.7639583', '106.675943100000', NULL, NULL),
(25, 'FIDE HOTEL', '472 - 474 Phạm Thái Bường, Tân Phong, Q7.', 778, 79, NULL, '10.7272949', '106.705948400000', NULL, NULL),
(26, 'BOSS 3 HOTEL', '14 Phó Đức Chính, p. Nguyễn Thái Bình, Quận 1.', 760, 79, NULL, '10.768409', '106.700688000000', NULL, NULL),
(27, 'ĐÔNG ĐÔ HOTEL', NULL, NULL, 79, NULL, NULL, NULL, NULL, NULL),
(28, 'CHÂU DUY KHÁNH HOTEL', 'Số 104 Nguyễn Khuyến, Văn Miếu Đống Đa,Hà Nội', 6, 1, '500000', '21.0283581', '105.838599700000', '12', '12');

-- --------------------------------------------------------

--
-- Table structure for table `image`
--

CREATE TABLE `image` (
  `name_image` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `hotel_id` int(11) NOT NULL,
  `room_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `image`
--

INSERT INTO `image` (`name_image`, `hotel_id`, `room_id`) VALUES
('http://api.go2joy.vn/hotelapi/hotel/download/downloadHotelImageViaKey?imageKey=5ce5bc442078d88519b37281317a1f20&highQuality', 0, NULL),
('http://api.go2joy.vn/hotelapi/hotel/download/downloadHotelImageViaKey?imageKey=5f00c3c96e57372e330e5fb57394a132&highQuality', 0, NULL),
('http://api.go2joy.vn/hotelapi/hotel/download/downloadHotelImageViaKey?imageKey=691c8b3b6e1bf1d2b22bfb40a907342d&highQuality', 0, NULL),
('http://api.go2joy.vn/hotelapi/hotel/download/downloadHotelImageViaKey?imageKey=99f86178abc8ee5323496768436fbb04&highQuality', 0, NULL),
('http://api.go2joy.vn/hotelapi/hotel/download/downloadHotelImageViaKey?imageKey=0071e303a63a0b943f19c8e940adf204&highQuality=true', 22, NULL),
('http://api.go2joy.vn/hotelapi/hotel/download/downloadHotelImageViaKey?imageKey=0dd27001433e855e1823b280cf8940d7&highQuality', 8, NULL),
('http://api.go2joy.vn/hotelapi/hotel/download/downloadHotelImageViaKey?imageKey=0e21445f2737ef92fb2991e9ad236aef&highQuality=true', 23, NULL),
('http://api.go2joy.vn/hotelapi/hotel/download/downloadHotelImageViaKey?imageKey=10bff56c19307a8d7810760e076ba046&highQuality', 12, NULL),
('http://api.go2joy.vn/hotelapi/hotel/download/downloadHotelImageViaKey?imageKey=11450b255df744f780f7b7b5de2fdb3d&highQuality=true', 20, NULL),
('http://api.go2joy.vn/hotelapi/hotel/download/downloadHotelImageViaKey?imageKey=1383fd21cf87438527680f9d3c10aa85&highQuality', 12, NULL),
('http://api.go2joy.vn/hotelapi/hotel/download/downloadHotelImageViaKey?imageKey=174f120441ad4a34af99c959b904f142&highQuality=true', 20, NULL),
('http://api.go2joy.vn/hotelapi/hotel/download/downloadHotelImageViaKey?imageKey=194622e51d73d7f7afec0c45be2d36e0&highQuality', 14, NULL),
('http://api.go2joy.vn/hotelapi/hotel/download/downloadHotelImageViaKey?imageKey=1dee754acc4bf7e259d85d56d2f70429&highQuality=true', 24, NULL),
('http://api.go2joy.vn/hotelapi/hotel/download/downloadHotelImageViaKey?imageKey=22b5a726105a2e1f04c57934c5683b38&highQuality', 10, NULL),
('http://api.go2joy.vn/hotelapi/hotel/download/downloadHotelImageViaKey?imageKey=23bff4938752fafdebcc73998f1236df&highQuality=true', 23, NULL),
('http://api.go2joy.vn/hotelapi/hotel/download/downloadHotelImageViaKey?imageKey=24fa161987808dc7204861a294a9d13e&highQuality', 13, NULL),
('http://api.go2joy.vn/hotelapi/hotel/download/downloadHotelImageViaKey?imageKey=2b7037d615541236e2e0d813dd75c85f&highQuality=true', 21, NULL),
('http://api.go2joy.vn/hotelapi/hotel/download/downloadHotelImageViaKey?imageKey=36729932b1104531688cbb1f1f7361e5&highQuality=true', 19, NULL),
('http://api.go2joy.vn/hotelapi/hotel/download/downloadHotelImageViaKey?imageKey=373f696d107ea2c20a963824f5156048&highQuality', 8, NULL),
('http://api.go2joy.vn/hotelapi/hotel/download/downloadHotelImageViaKey?imageKey=37473278468de350d28d5c417a9e5256&highQuality', 15, NULL),
('http://api.go2joy.vn/hotelapi/hotel/download/downloadHotelImageViaKey?imageKey=3a469f7e35c654b5348a888a22e6f45f&highQuality=true', 23, NULL),
('http://api.go2joy.vn/hotelapi/hotel/download/downloadHotelImageViaKey?imageKey=45de462222ccba2d50ce8868b2d1aa35&highQuality', 11, NULL),
('http://api.go2joy.vn/hotelapi/hotel/download/downloadHotelImageViaKey?imageKey=4895d0a16b977546578bf6aacbda3706&highQuality=true', 19, NULL),
('http://api.go2joy.vn/hotelapi/hotel/download/downloadHotelImageViaKey?imageKey=4a4d96ae13091fd5653e56feb95e1682&highQuality=true', 26, NULL),
('http://api.go2joy.vn/hotelapi/hotel/download/downloadHotelImageViaKey?imageKey=4f38b818360650c0af37f5ba98acd6b6&highQuality', 15, NULL),
('http://api.go2joy.vn/hotelapi/hotel/download/downloadHotelImageViaKey?imageKey=50d7f0db15da8a535de5124806ba5c73&highQuality=true', 26, NULL),
('http://api.go2joy.vn/hotelapi/hotel/download/downloadHotelImageViaKey?imageKey=50dedd4fe4fdba85aaae9f4cb40a013f&highQuality=true', 21, NULL),
('http://api.go2joy.vn/hotelapi/hotel/download/downloadHotelImageViaKey?imageKey=527a9546237826709472a29cc9e3a368&highQuality', 10, NULL),
('http://api.go2joy.vn/hotelapi/hotel/download/downloadHotelImageViaKey?imageKey=5341b6a636a32d90a2c0abfd031a64be&highQuality', 8, NULL),
('http://api.go2joy.vn/hotelapi/hotel/download/downloadHotelImageViaKey?imageKey=59956d9e87fc2484252faa6c2e3d0486&highQuality=true', 18, NULL),
('http://api.go2joy.vn/hotelapi/hotel/download/downloadHotelImageViaKey?imageKey=599f6773a3eff47d8f898c5db73379f8&highQuality', 8, NULL),
('http://api.go2joy.vn/hotelapi/hotel/download/downloadHotelImageViaKey?imageKey=5a790adae987d01219cd30bd07644fc1&highQuality', 9, NULL),
('http://api.go2joy.vn/hotelapi/hotel/download/downloadHotelImageViaKey?imageKey=5cd0371883feb4d53b22a4d2f208403d&highQuality', 14, NULL),
('http://api.go2joy.vn/hotelapi/hotel/download/downloadHotelImageViaKey?imageKey=5cf8d4a1264e0a1924c84401b14ddf40&highQuality', 17, NULL),
('http://api.go2joy.vn/hotelapi/hotel/download/downloadHotelImageViaKey?imageKey=5f2d1b0c3d551ebc21dd265729e9b3c8&highQuality', 10, NULL),
('http://api.go2joy.vn/hotelapi/hotel/download/downloadHotelImageViaKey?imageKey=6116405d5e755da3fc6bc3e65fb81f17&highQuality=true', 23, NULL),
('http://api.go2joy.vn/hotelapi/hotel/download/downloadHotelImageViaKey?imageKey=68a6d89c06e87296ef8d7e64edf22925&highQuality=true', 25, NULL),
('http://api.go2joy.vn/hotelapi/hotel/download/downloadHotelImageViaKey?imageKey=6d3620054a7b224c4094ed0b8cef1e9b&highQuality', 8, NULL),
('http://api.go2joy.vn/hotelapi/hotel/download/downloadHotelImageViaKey?imageKey=73649a11b457c1499a672a5f0d943c9b&highQuality', 15, NULL),
('http://api.go2joy.vn/hotelapi/hotel/download/downloadHotelImageViaKey?imageKey=7ac0bba49229d4cce7703cde7217b29e&highQuality', 15, NULL),
('http://api.go2joy.vn/hotelapi/hotel/download/downloadHotelImageViaKey?imageKey=815032af7ecf2be51bfe37eed79f7901&highQuality', 17, NULL),
('http://api.go2joy.vn/hotelapi/hotel/download/downloadHotelImageViaKey?imageKey=838b430a5f229359fdc208b48f45d55e&highQuality=true', 18, NULL),
('http://api.go2joy.vn/hotelapi/hotel/download/downloadHotelImageViaKey?imageKey=85a580712dcb3d8dd219723004dcea34&highQuality', 10, NULL),
('http://api.go2joy.vn/hotelapi/hotel/download/downloadHotelImageViaKey?imageKey=864b7d9f52896b00c876561753c3ed68&highQuality', 15, NULL),
('http://api.go2joy.vn/hotelapi/hotel/download/downloadHotelImageViaKey?imageKey=894176bf09133a68822364aed8f52783&highQuality', 7, NULL),
('http://api.go2joy.vn/hotelapi/hotel/download/downloadHotelImageViaKey?imageKey=8e43de186641dfce20249fd50007abde&highQuality', 11, NULL),
('http://api.go2joy.vn/hotelapi/hotel/download/downloadHotelImageViaKey?imageKey=8f2a81a67dba433170a95f05f67089c9&highQuality=true', 19, NULL),
('http://api.go2joy.vn/hotelapi/hotel/download/downloadHotelImageViaKey?imageKey=91160450ee470afdc66eed2094a8e3e3&highQuality=true', 24, NULL),
('http://api.go2joy.vn/hotelapi/hotel/download/downloadHotelImageViaKey?imageKey=930cf00abeab95db530fe34f40ca746c&highQuality=true', 19, NULL),
('http://api.go2joy.vn/hotelapi/hotel/download/downloadHotelImageViaKey?imageKey=95381240f60d3f63098bff53d860caab&highQuality', 17, NULL),
('http://api.go2joy.vn/hotelapi/hotel/download/downloadHotelImageViaKey?imageKey=9a3aa5981d217752485ccc1bb03bd3e9&highQuality', 12, NULL),
('http://api.go2joy.vn/hotelapi/hotel/download/downloadHotelImageViaKey?imageKey=9c5b996065852ff8a5f1f28ce624824b&highQuality', 7, NULL),
('http://api.go2joy.vn/hotelapi/hotel/download/downloadHotelImageViaKey?imageKey=9de71bb0929d48546e4e45c042992780&highQuality=true', 25, NULL),
('http://api.go2joy.vn/hotelapi/hotel/download/downloadHotelImageViaKey?imageKey=a03dd71095c78bab8f5a0867be24b97a&highQuality=true', 20, NULL),
('http://api.go2joy.vn/hotelapi/hotel/download/downloadHotelImageViaKey?imageKey=abc409d7cd9d241148f94271fd9a389e&highQuality=true', 20, NULL),
('http://api.go2joy.vn/hotelapi/hotel/download/downloadHotelImageViaKey?imageKey=b065c8988569b1cae5e912cc226b13d3&highQuality=true', 18, NULL),
('http://api.go2joy.vn/hotelapi/hotel/download/downloadHotelImageViaKey?imageKey=b2590590085107ec3520034982fbb247&highQuality', 14, NULL),
('http://api.go2joy.vn/hotelapi/hotel/download/downloadHotelImageViaKey?imageKey=baaeca3e6ee63e32a9aa7d5bd60b7b60&highQuality=true', 18, NULL),
('http://api.go2joy.vn/hotelapi/hotel/download/downloadHotelImageViaKey?imageKey=bfe0272380a847fe9073fe573e733997&highQuality=true', 23, NULL),
('http://api.go2joy.vn/hotelapi/hotel/download/downloadHotelImageViaKey?imageKey=d36ea8aa5282da5ff2bdf1db2e65c6db&highQuality=true', 20, NULL),
('http://api.go2joy.vn/hotelapi/hotel/download/downloadHotelImageViaKey?imageKey=d5b5285b93e68e92be8f86f6962650d0&highQuality', 13, NULL),
('http://api.go2joy.vn/hotelapi/hotel/download/downloadHotelImageViaKey?imageKey=d5be49da8bc3ed7d60a54e126c864000&highQuality', 8, NULL),
('http://api.go2joy.vn/hotelapi/hotel/download/downloadHotelImageViaKey?imageKey=d7eeccb1a044dbb4cc2b281b14bc7cc9&highQuality=true', 22, NULL),
('http://api.go2joy.vn/hotelapi/hotel/download/downloadHotelImageViaKey?imageKey=d8312d55cc7d97fe7287c499d0055db9&highQuality=true', 18, NULL),
('http://api.go2joy.vn/hotelapi/hotel/download/downloadHotelImageViaKey?imageKey=e56eca1fc6056c7d5c630ccf0d3bc19f&highQuality', 10, NULL),
('http://api.go2joy.vn/hotelapi/hotel/download/downloadHotelImageViaKey?imageKey=e5d1a538eb9d70fda60bccccd185200b&highQuality=true', 19, NULL),
('http://api.go2joy.vn/hotelapi/hotel/download/downloadHotelImageViaKey?imageKey=ef9bafa039f53f02bd4c0139a55c6220&highQuality', 7, NULL),
('http://api.go2joy.vn/hotelapi/hotel/download/downloadHotelImageViaKey?imageKey=efd67b091fab17ddb021720b1e8c7ef1&highQuality=true', 22, NULL),
('http://api.go2joy.vn/hotelapi/hotel/download/downloadHotelImageViaKey?imageKey=f45ed112e72585c6ed17d1b3d5e1000f&highQuality=true', 22, NULL),
('http://api.go2joy.vn/hotelapi/hotel/download/downloadHotelImageViaKey?imageKey=fa8ab173372b907458bbc81756c8da3e&highQuality', 7, NULL),
('http://api.go2joy.vn/hotelapi/hotel/download/downloadHotelImageViaKey?imageKey=fbd5a2b11361e6edd10bae8c5f24c810&highQuality=true', 25, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `key_word`
--

CREATE TABLE `key_word` (
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
('Kh'),
('H');

-- --------------------------------------------------------

--
-- Table structure for table `review`
--

CREATE TABLE `review` (
  `hotel_id` int(11) NOT NULL,
  `room_id` int(11) NOT NULL,
  `user_id` varchar(254) COLLATE utf8_unicode_ci NOT NULL,
  `star` varchar(4) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `review`
--

INSERT INTO `review` (`hotel_id`, `room_id`, `user_id`, `star`, `comment`) VALUES
(7, 3, '077820445', '5', 'khách sạn rất tốt'),
(8, 10, '077820445', '5', 'avc');

-- --------------------------------------------------------

--
-- Table structure for table `room`
--

CREATE TABLE `room` (
  `id_room` int(11) NOT NULL,
  `name_room` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `price_per_day` char(16) COLLATE utf8_unicode_ci DEFAULT NULL,
  `image` varchar(256) COLLATE utf8_unicode_ci DEFAULT NULL,
  `count` char(4) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` varchar(16) COLLATE utf8_unicode_ci DEFAULT NULL,
  `hotel_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `room`
--

INSERT INTO `room` (`id_room`, `name_room`, `price_per_day`, `image`, `count`, `status`, `hotel_id`) VALUES
(3, 'Phòng Đôi', '400000', 'http://api.go2joy.vn/hotelapi/hotel/download/downloadHotelImageViaKey?imageKey=11eef86c21775f9ece396f4e06c95778&highQuality=true', '12', '1', 7),
(4, 'Phòng Cao Cấp', '300000', 'http://api.go2joy.vn/hotelapi/hotel/download/downloadHotelImageViaKey?imageKey=9518faedda905f302a2b2d4b258e062a&highQuality=true', '12', '1', 7),
(5, 'Phòng Sang Trọng', '350000', 'http://api.go2joy.vn/hotelapi/hotel/download/downloadHotelImageViaKey?imageKey=5170e4464540a816903742d11c4614ea&highQuality=true', '23', '1', 7),
(6, 'Deluxe Room', '345000', 'http://api.go2joy.vn/hotelapi/hotel/download/downloadHotelI', '12', '1', 0),
(7, 'Superior Room', '295000', 'http://api.go2joy.vn/hotelapi/hotel/download/downloadHotelI', '12', '1', 0),
(8, 'Phòng Đơn Nhỏ', '222000', 'http://api.go2joy.vn/hotelapi/hotel/download/downloadHotelImageViaKey?imageKey=fbbad239441229dea31a19135e2d8510&highQuality=true', '12', '1', 8),
(9, 'Phòng Đơn Lớn', '250000', 'http://api.go2joy.vn/hotelapi/hotel/download/downloadHotelImageViaKey?imageKey=55afbebd79c849e3e4d1ac648db5a67e&highQuality=true', '12', '1', 8),
(10, 'Phòng Đôi Nhỏ', '400000', 'http://api.go2joy.vn/hotelapi/hotel/download/downloadHotelImageViaKey?imageKey=4f337b060d1c03fb2f7dc93fda1fe8ba&highQuality=true', '12', '1', 8),
(11, 'Phòng Đôi Lớn', '450000', 'http://api.go2joy.vn/hotelapi/hotel/download/downloadHotelImageViaKey?imageKey=5cb284c28e8a8413aecb2d42deca4e3b&highQuality=true', '12', '1', 8),
(12, 'Standard Room', '250000', 'http://api.go2joy.vn/hotelapi/hotel/download/downloadHotelImageViaKey?imageKey=2c6adb594746f21e22ac6151a0d499f7&highQuality=true', '12', '1', 9),
(13, 'Deluxe Room', '350000', 'http://api.go2joy.vn/hotelapi/hotel/download/downloadHotelImageViaKey?imageKey=4b962870365cbbca17b005ddf2414bfb&highQuality=true', '12', '1', 9),
(14, 'Family Room', '400000', 'http://api.go2joy.vn/hotelapi/hotel/download/downloadHotelImageViaKey?imageKey=1feb3e4878cd77f0716a054e2300fbec&highQuality=true', '12', '1', 9),
(15, 'DELUXE DOUBLE ROOM', '999000', 'http://api.go2joy.vn/hotelapi/hotel/download/downloadHotelImageViaKey?imageKey=946a6279ad92bd5e79b78258a23a7a68&highQuality=true', '12', '1', 10),
(16, 'DELUXE TWIN ROOM', '1200000', 'http://api.go2joy.vn/hotelapi/hotel/download/downloadHotelImageViaKey?imageKey=2efec4b09141f82113dc3ada3850349c&highQuality=true', '12', '1', 10),
(17, 'VIP ROOM', '650000', 'http://api.go2joy.vn/hotelapi/hotel/download/downloadHotelImageViaKey?imageKey=42d2c6dc9cb657ae380207d83c79aebd&highQuality=true', '12', '1', 11),
(18, 'Phòng Lớn', '550000', 'http://api.go2joy.vn/hotelapi/hotel/download/downloadHotelImageViaKey?imageKey=53146c8c76ce8ec46ba8975d4927eb19&highQuality=true', '12', '1', 11),
(19, 'Phòng Nhỏ', '400000', 'http://api.go2joy.vn/hotelapi/hotel/download/downloadHotelImageViaKey?imageKey=14d1ee86a259384c50be8bbb05e586da&highQuality=true', '12', '1', 11),
(20, 'Standard Room', '750000', 'http://api.go2joy.vn/hotelapi/hotel/download/downloadHotelImageViaKey?imageKey=9b28ab9c0991856fcf535aa9e7bace70&highQuality=true', '12', '1', 12),
(21, 'Superior Room', '700000', 'http://api.go2joy.vn/hotelapi/hotel/download/downloadHotelImageViaKey?imageKey=98c7bf894c54f4bd0f27ebdbc1e6452e&highQuality=true', '12', '1', 12),
(22, 'Family Room', '850000', 'http://api.go2joy.vn/hotelapi/hotel/download/downloadHotelImageViaKey?imageKey=ed3c0a8841b36f3eb8a4ae952f234327&highQuality=true', '12', '1', 12),
(23, 'Standard Room', '500000', 'http://api.go2joy.vn/hotelapi/hotel/download/downloadHotelImageViaKey?imageKey=359e52b1650d9cfc91216911f07986d8&highQuality=true', '12', '1', 13),
(24, 'Deluxe Room', '400000', 'http://api.go2joy.vn/hotelapi/hotel/download/downloadHotelImageViaKey?imageKey=ce8e637e313813cf3705cc40d1bf50f9&highQuality=true', '12', '1', 13),
(25, 'Deluxe with Balcony Room', '470000', 'http://api.go2joy.vn/hotelapi/hotel/download/downloadHotelImageViaKey?imageKey=47516407f7d35b10aa83ec4fd5682289&highQuality=true', '12', '1', 13),
(26, 'Standard Room', '300000', 'http://api.go2joy.vn/hotelapi/hotel/download/downloadHotelImageViaKey?imageKey=927318a22566638042fa4925b04d7a85&highQuality=true', '12', '1', 14),
(27, 'Superior Double Room', '400000', 'http://api.go2joy.vn/hotelapi/hotel/download/downloadHotelImageViaKey?imageKey=663adc28f3a553b3937709c4170ff2d9&highQuality=true', '12', '1', 14),
(28, 'Superior Twin Room', '450000', 'http://api.go2joy.vn/hotelapi/hotel/download/downloadHotelImageViaKey?imageKey=fd6ebed8965bee97860b3c24060d84db&highQuality=true', '12', '1', 14),
(29, 'Standard', '250000', 'http://api.go2joy.vn/hotelapi/hotel/download/downloadHotelImageViaKey?imageKey=beca608df8c426819552f66b737b6c9b&highQuality=true', '12', '1', 15),
(30, 'Superior', '300000', 'http://api.go2joy.vn/hotelapi/hotel/download/downloadHotelImageViaKey?imageKey=6fbbef430c4fa0d27a18c8fe41e5263c&highQuality=true', '12', '1', 15),
(31, 'Deluxe Room', '345000', 'http://api.go2joy.vn/hotelapi/hotel/download/downloadHotelImageViaKey?imageKey=3fab5fd2a4743633eb500b684f462512&highQuality=true', '12', '1', 17),
(32, 'Superior Room', '295000', 'http://api.go2joy.vn/hotelapi/hotel/download/downloadHotelImageViaKey?imageKey=2e3432952e28a252c3eb6475e5566cae&highQuality=true', '12', '1', 17),
(33, 'Superior', '300000', 'http://api.go2joy.vn/hotelapi/hotel/download/downloadHotelImageViaKey?imageKey=abf9046a4fb908a490e266d459bdd7d4&highQuality=true', '12', '1', 18),
(34, 'Deluxe', '350000', 'http://api.go2joy.vn/hotelapi/hotel/download/downloadHotelImageViaKey?imageKey=2704c005d9b5631d48154522e0abeb79&highQuality=true', '12', '1', 18),
(35, 'Standard', '300000', 'http://api.go2joy.vn/hotelapi/hotel/download/downloadHotelImageViaKey?imageKey=b1dce554207a49edfb04ed0b17ed536e&highQuality=true', '12', '1', 19),
(36, 'Superior', '300000', 'http://api.go2joy.vn/hotelapi/hotel/download/downloadHotelImageViaKey?imageKey=d79c8500c96b7e6fefb497d94464edcf&highQuality=true', '12', '1', 19),
(37, 'Deluxe', '300000', 'http://api.go2joy.vn/hotelapi/hotel/download/downloadHotelImageViaKey?imageKey=5ce59873917a732c6cda5818dca4150d&highQuality=true', '12', '1', 19),
(38, 'Standard', '250000', 'http://api.go2joy.vn/hotelapi/hotel/download/downloadHotelImageViaKey?imageKey=8d6cb87c5d50058069458c4545a44bef&highQuality=true', '12', '1', 20),
(39, 'Deluxe', '350000', 'http://api.go2joy.vn/hotelapi/hotel/download/downloadHotelImageViaKey?imageKey=56238389c4d35a884331c59de6fd8043&highQuality=true', '12', '1', 20),
(40, 'Superior', '300000', 'http://api.go2joy.vn/hotelapi/hotel/download/downloadHotelImageViaKey?imageKey=74375c85b8cf558d270c62ee8c63ca10&highQuality=true', '12', '1', 20),
(41, 'SMALL SINGLE', '220000', 'http://api.go2joy.vn/hotelapi/hotel/download/downloadHotelImageViaKey?imageKey=96fd61b70468e3a857ac90bbfe17c2a3&highQuality=true', '12', '1', 21),
(42, 'VIP ROOM', '450000', 'http://api.go2joy.vn/hotelapi/hotel/download/downloadHotelImageViaKey?imageKey=e625d4c94a243ccbc060abfca01b5a16&highQuality=true', '12', '1', 21),
(43, 'DOUBLE ROOM', '500000', 'http://api.go2joy.vn/hotelapi/hotel/download/downloadHotelImageViaKey?imageKey=462a4650f36809b267f7271b2c7d17e4&highQuality=true', '12', '1', 21),
(44, 'ROMANCE ROOM', '350000', 'http://api.go2joy.vn/hotelapi/hotel/download/downloadHotelImageViaKey?imageKey=3e9e467b54665c9f38826aeca5804b4d&highQuality=true', '12', '1', 21),
(45, 'Superior Room', '350000', 'http://api.go2joy.vn/hotelapi/hotel/download/downloadHotelImageViaKey?imageKey=251efd75109b1930e4d7afa31b8d985f&highQuality=true', '12', '1', 22),
(46, 'Deluxe Room', '400000', 'http://api.go2joy.vn/hotelapi/hotel/download/downloadHotelImageViaKey?imageKey=ed7fd9dabab3166b38cafb45e030ac41&highQuality=true', '12', '1', 22),
(47, 'VIP ROOM', '450000', 'http://api.go2joy.vn/hotelapi/hotel/download/downloadHotelImageViaKey?imageKey=867b4a16c93994f5210ea6dc620983b4&highQuality=true', '12', '1', 22),
(48, 'Deluxe Room', '300000', 'http://api.go2joy.vn/hotelapi/hotel/download/downloadHotelImageViaKey?imageKey=ee3fe0c3f2f0884ab12b56a40e6f489b&highQuality=true', '12', '1', 23),
(49, 'Deluxe room', '500000', 'http://api.go2joy.vn/hotelapi/hotel/download/downloadHotelImageViaKey?imageKey=b85c77c5dc6277b456a1495a95c15880&highQuality=true', '12', '1', 28),
(50, 'Twin room', '500000', 'http://api.go2joy.vn/hotelapi/hotel/download/downloadHotelImageViaKey?imageKey=55cfffc2e14349ff7715a1442b54dc7b&highQuality=true', '12', '1', 28);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `dob` char(16) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` char(16) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(256) COLLATE utf8_unicode_ci DEFAULT NULL,
  `device_id` char(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  `gender` varchar(8) COLLATE utf8_unicode_ci DEFAULT NULL,
  `token` char(128) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`dob`, `phone`, `email`, `device_id`, `password`, `gender`, `token`) VALUES
('2000-06-10', '077820445', 'nhdang2@gmail.com', '670a319f7460372c3d1eca4b04f7ec56', '887a68923ad2a18b7290cd6ed92ac29a', 'nam', '7ed172452dffcc975d21aa032ae6e34992a14f0f2ea728484aa21d757ba120d4'),
('10/06/2001', '0778204451', 'nhdang69@gmail.com', '670a319f7460372c3d1eca4b04f7ec56', '887a68923ad2a18b7290cd6ed92ac29a', 'nam', 'e31d48e66e8dc789e237a9f82b517064ae63091ab13d1fbe557c32ad7cfd870b'),
('10/06/2001', '0778204452', 'mynamedang222@gmail.com', '670a319f7460372c3d1eca4b04f7ec56', '887a68923ad2a18b7290cd6ed92ac29a', 'nam', '4ff432788253769eec20322d8f4bd090bad0c558c47ba2a77ca2deaa95160fd2'),
('10/06/2001', '0778204453', 'nhdang69@gmail.com', '670a319f7460372c3d1eca4b04f7ec56', '887a68923ad2a18b7290cd6ed92ac29a', 'nam', 'c7770bc8870f2a85e6295e1b87ddf94caa14403d48094c44b6e79c89d733ec51'),
('10/06/2001', '0778204454', 'nhdang1@gmail.com', '670a319f7460372c3d1eca4b04f7ec56', '887a68923ad2a18b7290cd6ed92ac29a', 'nam', '22dae0fc71f13e9a452e70e968eddde5b2226ee747b75953aab35e3253ac3c82'),
('1996-05-06', '0947065823', NULL, '72e11234567894561235678975641345689', '9319cb8aaafec663d657b9966bf1f7fc', 'nam', 'b8ec524d183d23898e6baeb8fd1e4d6eaad089e8a177748bbae5016c471352b1');

-- --------------------------------------------------------

--
-- Table structure for table `utility`
--

CREATE TABLE `utility` (
  `id_utility` int(11) NOT NULL,
  `name_utility` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(256) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

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

CREATE TABLE `utilityroom` (
  `utility_id` int(11) NOT NULL,
  `hotel_id` int(11) NOT NULL,
  `room_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `utilityroom`
--

INSERT INTO `utilityroom` (`utility_id`, `hotel_id`, `room_id`) VALUES
(2, 2, NULL),
(3, 2, 2),
(4, 2, 2),
(5, 2, 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bookroom`
--
ALTER TABLE `bookroom`
  ADD PRIMARY KEY (`id_book`);

--
-- Indexes for table `city`
--
ALTER TABLE `city`
  ADD PRIMARY KEY (`id_city`);

--
-- Indexes for table `device`
--
ALTER TABLE `device`
  ADD PRIMARY KEY (`id_device`);

--
-- Indexes for table `district`
--
ALTER TABLE `district`
  ADD PRIMARY KEY (`id_district`),
  ADD KEY `city_id` (`city_id`);

--
-- Indexes for table `hotel`
--
ALTER TABLE `hotel`
  ADD PRIMARY KEY (`id_hotel`),
  ADD KEY `city_id` (`city_id`,`district_id`);

--
-- Indexes for table `image`
--
ALTER TABLE `image`
  ADD PRIMARY KEY (`name_image`,`hotel_id`),
  ADD UNIQUE KEY `name_image` (`name_image`,`hotel_id`,`room_id`),
  ADD KEY `room_id` (`room_id`),
  ADD KEY `hotel_id` (`hotel_id`,`room_id`);

--
-- Indexes for table `room`
--
ALTER TABLE `room`
  ADD PRIMARY KEY (`id_room`),
  ADD KEY `hotel_id` (`hotel_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`phone`),
  ADD UNIQUE KEY `phone` (`phone`),
  ADD KEY `device_id` (`device_id`);

--
-- Indexes for table `utility`
--
ALTER TABLE `utility`
  ADD PRIMARY KEY (`id_utility`);

--
-- Indexes for table `utilityroom`
--
ALTER TABLE `utilityroom`
  ADD PRIMARY KEY (`utility_id`,`hotel_id`),
  ADD UNIQUE KEY `utility_id` (`utility_id`,`hotel_id`,`room_id`),
  ADD KEY `room_id` (`room_id`),
  ADD KEY `room_id_2` (`room_id`),
  ADD KEY `hotel_id` (`hotel_id`,`room_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bookroom`
--
ALTER TABLE `bookroom`
  MODIFY `id_book` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `city`
--
ALTER TABLE `city`
  MODIFY `id_city` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=97;

--
-- AUTO_INCREMENT for table `district`
--
ALTER TABLE `district`
  MODIFY `id_district` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=974;

--
-- AUTO_INCREMENT for table `hotel`
--
ALTER TABLE `hotel`
  MODIFY `id_hotel` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `room`
--
ALTER TABLE `room`
  MODIFY `id_room` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `utility`
--
ALTER TABLE `utility`
  MODIFY `id_utility` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
