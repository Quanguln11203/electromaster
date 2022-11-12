-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1:3306
-- Thời gian đã tạo: Th10 12, 2022 lúc 02:43 PM
-- Phiên bản máy phục vụ: 5.7.31
-- Phiên bản PHP: 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `nhom10`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `dangnhapuser`
--

DROP TABLE IF EXISTS `dangnhapuser`;
CREATE TABLE IF NOT EXISTS `dangnhapuser` (
  `userid` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`userid`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `dangnhapuser`
--

INSERT INTO `dangnhapuser` (`userid`, `username`, `password`) VALUES
(1, 'dung', '123'),
(4, 'quang', '123'),
(5, 'thong', '123'),
(6, 'tuan', '123'),
(7, 'member', '123'),
(8, 'nhom10', '123');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hoadon`
--

DROP TABLE IF EXISTS `hoadon`;
CREATE TABLE IF NOT EXISTS `hoadon` (
  `MaKH` int(11) NOT NULL AUTO_INCREMENT,
  `id` int(11) NOT NULL,
  `Tongtien` text COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`MaKH`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `khachhang`
--

DROP TABLE IF EXISTS `khachhang`;
CREATE TABLE IF NOT EXISTS `khachhang` (
  `MaKH` int(11) NOT NULL AUTO_INCREMENT,
  `NameKH` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `Email` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `Address` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `Phone` int(10) NOT NULL,
  PRIMARY KEY (`MaKH`)
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `khachhang`
--

INSERT INTO `khachhang` (`MaKH`, `NameKH`, `Email`, `Address`, `Phone`) VALUES
(2, 'Dung', 'dung@gmail.com', 'Thủ Đức', 123455),
(4, 'Quang', 'quang@mail.com', 'Thủ Đức', 12356978),
(13, 'Thong', 'thong@gmail.com', 'Thủ Đức', 1234567),
(15, 'Tuấn', 'tuan@gmail.com', 'hcm', 368390949);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `manufactures`
--

DROP TABLE IF EXISTS `manufactures`;
CREATE TABLE IF NOT EXISTS `manufactures` (
  `manu_id` int(11) NOT NULL AUTO_INCREMENT,
  `manu_name` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`manu_id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `manufactures`
--

INSERT INTO `manufactures` (`manu_id`, `manu_name`) VALUES
(8, 'Ipad'),
(7, 'MSI'),
(6, 'Macbook'),
(5, 'Apple'),
(4, 'SamSung'),
(3, 'Asus'),
(2, 'Oppo'),
(1, 'XiaoChaoMeng');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `products`
--

DROP TABLE IF EXISTS `products`;
CREATE TABLE IF NOT EXISTS `products` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `manu_id` int(11) DEFAULT NULL,
  `type_id` int(11) NOT NULL,
  `price` int(20) NOT NULL,
  `image` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `feature` tinyint(4) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=32 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `products`
--

INSERT INTO `products` (`id`, `name`, `manu_id`, `type_id`, `price`, `image`, `description`, `feature`, `created_at`) VALUES
(25, 'Điện thoại iPhone 14 ProMax 128GB', 5, 2, 33990000, '', 'Mànhình: OLED6.7 \"SuperRetinaXDR, Hệ điềuhành: iOS16, Camera sau: Chính 48 MP & Phụ 12 MP, 12MP, Camera trước: 12 MPChip: Apple A16 Bionic, RAM: 6 GB, Dung lượng lưu trữ: 128 GBSIM: 1 Nano SIM & 1 eSIM Hỗ trợ 5G, Pin Sạc: 4323 mAh20 W\r\n', NULL, NULL),
(26, 'Điện thoại iPhone 14 Plus 128GB', 5, 2, 25790000, '', 'Màn hình: OLED6.7\"Super Retina XDR, Hệ điều hành: iOS 16Camera sau: 2 camera 12 MPCamera trước: 12 MP, Chip: Apple A15 Bionic, RAM: 6 GB, Dung lượng lưu trữ: 128 GB, SIM: 1 Nano SIM & 1 eSIM Hỗ trợ 5G, Pin Sạc: 4325 mAh20 W.', NULL, NULL),
(27, 'Điện thoại iPhone 12 mini 256GB\r\n', 5, 2, 14490000, '', 'Màn hình: OLED5.4\"Super Retina XDR, Hệ điều hành: iOS 15, Camera sau: 2 camera 12 MP, Camera trước: 12 MP, Chip: Apple A14 Bionic, RAM: 4 GB, Dung lượng lưu trữ: 256 GB, SIM: 1 Nano SIM & 1 eSIM Hỗ trợ 5G, Pin Sạc: 2227 mAh20 W\r\n', NULL, NULL),
(28, 'Điện thoại iPhone 13 Pro 128GB', 5, 2, 2599000, '\r\n', 'Màn hình: OLED6.1\"Super Retina XDR, Hệ điều hành: iOS 15, Camera sau: 3 camera 12 MPCamera trước: 12 MP, Chip: Apple A15 Bionic, RAM: 6 GB, Dung lượng lưu trữ: 128GBSIM: 1 Nano SIM & 1 eSIM Hỗ trợ 5G, Pin, Sạc: 3095 mAh20 W', NULL, NULL),
(29, 'Điện thoại Samsung Galaxy Z Flip4 128GB', 4, 2, 21900000, '\r\n', 'Màn hình: Chính: Dynamic AMOLED 2X, Phụ: Super AMOLEDChính 6.7\" & Phụ 1.9\"FullHD+, Hệ điều hành: Android 12, Camera sau: 2 camera 12 MP, Camera trước: 10 MP, Chip: Snapdragon 8+ Gen 1, RAM: 8 GB, Dung lượng lưu trữ: 128 GB, SIM: 1 Nano SIM & 1 eSIMHỗ trợ 5G, Pin Sạc: 3700 mAh25 W', NULL, NULL),
(30, 'Điện thoại Samsung Galaxy S22 Ultra 5G 128GB', 4, 2, 25590000, '', 'Màn hình: Dynamic AMOLED 2X6.8\"Quad HD (2K+), Hệ điều hành: Android 12, Camera sau: Chính 108 MP & Phụ 12 MP, 10 MP, 10 MP, Camera trước: 40 MP, Chip: Snapdragon 8 Gen 1, RAM: 8 GB, Dung lượng lưu trữ: 128 GB, SIM: 2 Nano SIM hoặc 1 Nano SIM + 1 eSIMHỗ trợ 5G, Pin, Sạc: 5000 mAh45 W\r\n', NULL, NULL),
(31, 'Điện thoại Samsung Galaxy A53 5G 128GB', 4, 2, 8590000, '', 'Màn hình: Super AMOLED6.5\"Full HD+, Hệ điều hành: Android 12, Camera sau: Chính 64 MP & Phụ 12 MP, 5 MP, 5 MP, Camera trước: 32 MP, Chip: Exynos 1280, RAM:\r\n8 GB, Dung lượng lưu trữ:128 GB, SIM: 2 Nano SIM (SIM 2 chung khe thẻ nhớ)Hỗ trợ 5G, Pin, Sạc: 5000 mAh25 W\r\n', NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `protypes`
--

DROP TABLE IF EXISTS `protypes`;
CREATE TABLE IF NOT EXISTS `protypes` (
  `type_id` int(11) NOT NULL,
  `type_name` char(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`type_id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `protypes`
--

INSERT INTO `protypes` (`type_id`, `type_name`) VALUES
(5, 'Smartwacth'),
(4, 'Tablet'),
(3, 'Tai nghe'),
(2, 'Điện Thoại'),
(1, 'LapTop');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `user`
--

INSERT INTO `user` (`user_id`, `username`, `password`) VALUES
(1, 'admin123', '123');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
