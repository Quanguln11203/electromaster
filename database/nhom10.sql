-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1:3306
-- Thời gian đã tạo: Th10 14, 2022 lúc 08:14 PM
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
(2, 'Dung', 'dung@gmail.com', 'Thu Duc', 123455),
(4, 'Quang', 'quang@mail.com', 'Thu Duc', 12356978),
(13, 'Thong', 'thong@gmail.com', 'Thu Duc', 1234567),
(15, 'Tuan', 'tuan@gmail.com', 'HCM', 368390949);

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
) ENGINE=MyISAM AUTO_INCREMENT=57 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `products`
--

INSERT INTO `products` (`id`, `name`, `manu_id`, `type_id`, `price`, `image`, `description`, `feature`, `created_at`) VALUES
(1, 'Điện thoại iPhone 14 ProMax 128GB', 5, 2, 33990000, 'iphone14promax128.jpg', 'Mànhình: OLED6.7 \"SuperRetinaXDR, Hệ điềuhành: iOS16, Camera sau: Chính 48 MP & Phụ 12 MP, 12MP, Camera trước: 12 MPChip: Apple A16 Bionic, RAM: 6 GB, Dung lượng lưu trữ: 128 GBSIM: 1 Nano SIM & 1 eSIM Hỗ trợ 5G, Pin Sạc: 4323 mAh20 W\r\n', NULL, NULL),
(2, 'Điện thoại iPhone 14 Plus 128GB', 5, 2, 25790000, 'iPhone-14-plus.jpg', 'Màn hình: OLED6.7\"Super Retina XDR, Hệ điều hành: iOS 16Camera sau: 2 camera 12 MPCamera trước: 12 MP, Chip: Apple A15 Bionic, RAM: 6 GB, Dung lượng lưu trữ: 128 GB, SIM: 1 Nano SIM & 1 eSIM Hỗ trợ 5G, Pin Sạc: 4325 mAh20 W.', NULL, NULL),
(3, 'Điện thoại iPhone 12 mini 256GB', 5, 2, 14490000, 'iphone-12-mini.jpg', 'Màn hình: OLED5.4\"Super Retina XDR, Hệ điều hành: iOS 15, Camera sau: 2 camera 12 MP, Camera trước: 12 MP, Chip: Apple A14 Bionic, RAM: 4 GB, Dung lượng lưu trữ: 256 GB, SIM: 1 Nano SIM & 1 eSIM Hỗ trợ 5G, Pin Sạc: 2227 mAh20 W\r\n', NULL, NULL),
(4, 'Điện thoại iPhone 13 Pro 128GB', 5, 2, 2599000, 'iphone-13-promax-128gb.jpg', 'Màn hình: OLED6.1\"Super Retina XDR, Hệ điều hành: iOS 15, Camera sau: 3 camera 12 MPCamera trước: 12 MP, Chip: Apple A15 Bionic, RAM: 6 GB, Dung lượng lưu trữ: 128GBSIM: 1 Nano SIM & 1 eSIM Hỗ trợ 5G, Pin, Sạc: 3095 mAh20 W', NULL, NULL),
(5, 'Điện thoại Samsung Galaxy Z Flip4 128GB', 4, 2, 21900000, 'samsung-galaxy-z-flip4-5g-128gb.jpg', 'Màn hình: Chính: Dynamic AMOLED 2X, Phụ: Super AMOLEDChính 6.7\" & Phụ 1.9\"FullHD+, Hệ điều hành: Android 12, Camera sau: 2 camera 12 MP, Camera trước: 10 MP, Chip: Snapdragon 8+ Gen 1, RAM: 8 GB, Dung lượng lưu trữ: 128 GB, SIM: 1 Nano SIM & 1 eSIMHỗ trợ 5G, Pin Sạc: 3700 mAh25 W', NULL, NULL),
(6, 'Điện thoại Samsung Galaxy S22 Ultra 5G 128GB', 4, 2, 25590000, 'Galaxy-S22-Ultra.jpg', 'Màn hình: Dynamic AMOLED 2X6.8\"Quad HD (2K+), Hệ điều hành: Android 12, Camera sau: Chính 108 MP & Phụ 12 MP, 10 MP, 10 MP, Camera trước: 40 MP, Chip: Snapdragon 8 Gen 1, RAM: 8 GB, Dung lượng lưu trữ: 128 GB, SIM: 2 Nano SIM hoặc 1 Nano SIM + 1 eSIMHỗ trợ 5G, Pin, Sạc: 5000 mAh45 W\r\n', NULL, NULL),
(7, 'Điện thoại Samsung Galaxy A53 5G 128GB', 4, 2, 8590000, 'Samsung-Galaxy-A53-xanh.jpg', 'Màn hình: Super AMOLED6.5\"Full HD+, Hệ điều hành: Android 12, Camera sau: Chính 64 MP & Phụ 12 MP, 5 MP, 5 MP, Camera trước: 32 MP, Chip: Exynos 1280, RAM:\r\n8 GB, Dung lượng lưu trữ:128 GB, SIM: 2 Nano SIM (SIM 2 chung khe thẻ nhớ)Hỗ trợ 5G, Pin, Sạc: 5000 mAh25 W\r\n', NULL, NULL),
(8, 'Điện thoại Xiaomi Redmi Note 11 (4GB/64GB)', 1, 2, 4290000, 'xiaomi-redmi-note-11-128gb.jpg', 'Màn hình: AMOLED 6.43\"Full HD+, Hệ điều hành: Android 11, Camera sau: Chính 50 MP & Phụ 8 MP 2 MP 2 MP, Camera trước: 13 MP, Chip: Snapdragon 680, RAM: 4 GB, Dung lượng lưu trữ: 64 GB, SIM: 2 Nano SIM Hỗ trợ 4G, Pin, Sạc: 5000 mAh33 W\r\n.n', NULL, NULL),
(9, 'Điện thoại Xiaomi 12T Pro', 1, 2, 16490000, 'xiaomi-12T.jpg', 'Màn hình: AMOLED6.67\"1.5K, Hệ điều hành: Android 12, Camera sau: Chính 200 MP & Phụ 8 MP, 2 MP, Camera trước: 20 MP, Chip: Snapdragon 8+ Gen 1, RAM: 12 GB, Dung lượng lưu trữ: 256 GB, SIM: 2 Nano SIM Hỗ trợ 5G, Pin, Sạc: 5000 mAh120 W.', NULL, NULL),
(10, 'Điện thoại Xiaomi Redmi Note 10 Pro (8GB/128GB)', 1, 2, 7090000, 'xiaomi-redmi-note-10-pro.jpg', 'Màn hình: AMOLED6.67\"Full HD+, Hệ điều hành: Android 11, Camera sau: Chính 108 MP & Phụ 8 MP, 5 MP, 2 MP, Camera trước: 16 MP, Chip: Snapdragon 732G, RAM: 8 GB, Dung lượng lưu trữ: 128 GB, SIM: 2 Nano SIM Hỗ trợ 4G, Pin Sạc: 5020 mAh33 W.', NULL, NULL),
(19, 'Laptop Asus TUF Gaming FX517ZC i5 12450H/8GB/512GB/4GB RTX3050/144Hz/Win11 (HN077W) ', 3, 5, 27990000, 'LaptopAsusTUFGamingFX517ZC.jpg', 'CPU: i512450H2GHz, RAM: 8 GBDDR5 2 khe (1 khe 8 GB + 1 khe trống)4800 MHz, Ổ cứng: 512 GB SSD NVMe PCIe (Có thể tháo ra, lắp thanh khác tối đa 1TB) Hỗ trợ thêm 1 khe cắm SSD M.2 PCIe mở rộng (nâng cấp tối đa 1TB), Màn hình: 15.6\"Full HD (1920 x 1080) 144Hz, Card màn hình: Card rờiRTX 3050 4GB, Cổng kết nối: 1x USB 3.2 Gen 2 Type-C support DisplayPort / power delivery / G-SYNCLAN (RJ45)2 x USB 3.2 HDMI Thunderbolt 4 Jack tai nghe 3.5 mm, Đặc biệt: Có đèn bàn phím, Hệ điều hành: Windows 11 Home SL, Thiết kế: Vỏ nhựa, Kích thước, khối lượng: Dài 354 mm - Rộng 251 mm - Dày 20.7 mm - Nặng 2 kg, Thời điểm ra mắt: 2022.', NULL, NULL),
(18, 'Laptop Apple MacBook Pro 13 inch M2 2022 16GB/256GB/10-core GPU (Z16R0003V)', 6, 5, 41990000, 'macbook-pro-m2-2022-bac-1.jpg', 'CPU: Apple M2100GB/s, RAM: 16 GB, Ổ cứng: 256 GB SSD, Màn hình: 13.3\"Retina (2560 x 1600), Card màn hình: Card tích hợp10 nhân GPU, Cổng kết nối: 2 x Thunderbolt 3 Jack tai nghe 3.5 mm, Đặc biệt: Có đèn bàn phím, Hệ điều hành: Mac OS, Thiết kế: Vỏ kim loại, Kích thước, khối lượng: Dài 304.1 mm - Rộng 212.4 mm - Dày 15.6 mm - Nặng 1.4 kg, Thời điểm ra mắt: 6/2022.', NULL, NULL),
(12, 'Điện thoại Xiaomi Redmi 10A', 1, 2, 2490000, 'xiaomi-redmi-10a.jpg', 'Màn hình: IPS LCD6.53\"HD+, Hệ điều hành: Android 11, Camera sau: Chính 13 MP & Phụ 2 MP, Camera trước: 5 MP, Chip: MediaTek Helio G25, RAM: 2 GB, Dung lượng lưu trữ: 32 GB, SIM: 2 Nano SIM Hỗ trợ 4G, Pin Sạc: 5000 mAh10 W.', NULL, NULL),
(13, 'Điện thoại OPPO Reno8 Pro 5G', 2, 2, 18490000, 'oppo-reno8-pro.jpg', 'Màn hình: AMOLED6.7\"Full HD+, Hệ điều hành: Android 12, Camera sau: Chính 50 MP & Phụ 8 MP, 2 MP, Camera trước: 32 MP, Chip: MediaTek Dimensity 8100 Max 8 nhân, RAM: 12 GB, Dung lượng lưu trữ: 256 GB, SIM: 2 Nano SIM Hỗ trợ 5GPin, Sạc: 4500 mAh 80 W.', NULL, NULL),
(14, 'Điện thoại OPPO A76 ', 2, 2, 5490000, 'OPPO-A76.jpg', 'Màn hình: IPS LCD6.56\"HD+, Hệ điều hành: Android 11, Camera sau: Chính 13 MP & Phụ 2 MP, Camera trước: 8 MP, Chip: Snapdragon 680, RAM: 6 GB, Dung lượng lưu trữ: 128 GB, SIM: 2 Nano SIM Hỗ trợ 4G, Pin Sạc: 5000 mAh33 W.', NULL, NULL),
(15, 'Điện thoại OPPO A16 ', 2, 2, 3590000, 'oppo-a16-silver-8.jpg', 'Màn hình: IPS LCD6.52\"HD+, Hệ điều hành: Android 11Camera sau: Chính 13 MP & Phụ 2 MP 2 MP, Camera trước:8 MP, Chip: MediaTek Helio G35, RAM: 3 GB, Dung lượng lưu trữ: 32 GBSIM: 2 Nano SIM Hỗ trợ 4G, Pin Sạc: 5000 mAh10 W.', NULL, NULL),
(16, 'Điện thoại OPPO A17K', 2, 2, 3290000, 'oppo-a17k-3gb-64gb.jpg', 'Màn hình: IPS LCD6.56\"HD+, Hệ điều hành: Android 12, Camera sau: 8 MP, Camera trước: 5MP, Chip: MediaTek Helio G35, RAM: 3 GB, Dung lượng lưu trữ: 64 GB, SIM: 2 Nano SIM Hỗ trợ 4G, Pin Sạc: 5000 mAh10 W.', NULL, NULL),
(17, 'Laptop Apple MacBook Air M1 2020 16GB/256GB/7-core GPU (Z124000DE)', 6, 5, 33490000, 'apple-macbook-air-m1-16gb-256gb7core-gpu-gold.jpg', 'CPU: Apple M1, RAM: 16 GB, Ổ cứng: 256 GB SSD, Màn hình: 13.3\"Retina (2560 x 1600), Card màn hình: Card tích hợp 7 nhân GPU, Cổng kết nối: 2 x Thunderbolt 3 (USB-C) Jack tai nghe 3.5 mm, Đặc biệt: Có đèn bàn phím, Hệ điều hành: Mac OS, Thiết kế: Vỏ kim loại nguyên khối, Kích thước, khối lượng: Dài 304.1 mm - Rộng 212.4 mm - Dày 4.1 mm đến 16.1 mm - Nặng 1.29 kg, Thời điểm ra mắt: 2020', NULL, NULL),
(20, 'Laptop MSI Gaming GF63 Thin 11UC i5 11400H/8GB/512GB/4GB RTX3050/Balo/Chuột/Win10 (445VN)', 7, 5, 22990000, 'msi-gf63_thin_11_ha4.jpg', 'CPU: i511400H2.7GHz, RAM: 8 GBDDR4 2 khe (1 khe 8 GB + 1 khe rời)3200 MHz, Ổ cứng: Hỗ trợ khe cắm HDD SATA (nâng cấp tối đa 2TB)512 GB SSD NVMe PCIe (Có thể tháo ra, lắp thanh khác tối đa 2TB), Màn hình: 15.6\"Full HD (1920 x 1080), Card màn hình: Card rờiRTX 3050 4GB, Cổng kết nối: USB Type-CLAN (RJ45)3 x USB 3.2 HDMI Jack tai nghe 3.5 mm, Đặc biệt: Có đèn bàn phím, Hệ điều hành: Windows 10 Home SL, Thiết kế: Vỏ nhựa - nắp lưng bằng kim loại, Kích thước, khối lượng: Dài 359 mm - Rộng 254 mm - Dày 21.7 mm - Nặng 1.86 kg, Thời điểm ra mắt: 2021.', NULL, NULL),
(21, 'Tai nghe Bluetooth AirPods Pro (2nd Gen) MagSafe Charge Apple MQD83 Trắng', 5, 3, 6490000, 'tai-nghe-bluetooth-airpods-pro-2.jpg', 'Thời gian tai nghe: Dùng 6 giờ, Thời gian hộp sạc: Dùng 30 giờ, Cổng sạc: LightningSạc không dây QiSạc MagSafe, Công nghệ âm thanh: Active Noise CancellationAdaptive EQChip Apple H2, Tương thích: Android, iOS, Windows, Tiện ích: Có mic thoạiSạc nhanhTrợ lý ảo SiriChống nước IPX4Sạc không dâyChống ồn chủ động ANC, Hỗ trợ kết nối: Bluetooth 5.3, Điều khiển bằng: Cảm ứng chạm, Hãng: Apple.', NULL, NULL),
(22, 'Tai nghe Bluetooth True Wireless Samsung Galaxy Buds 2 R177N ', 4, 3, 1990000, 'bluetooth-true-wireless-samsung-buds-2-r177n.jpg', 'Thời gian tai nghe: Dùng 7.5 giờ - Sạc 1.5 giờ, Thời gian hộp sạc: Dùng 29 giờ - Sạc 1.5 giờ, Cổng sạc: Sạc không dâyType-C, Công nghệ âm thanh: Active Noise CancellingAmbient Sound, Tương thích: Ram 1.5G trở lênAndroid, Ứng dụng kết nối: Galaxy Wearable, Tiện ích: Có mic thoạiChống nước IPX2Chống ồn, Hỗ trợ kết nối: Bluetooth 5.2, Điều khiển bằng: Cảm ứng chạm, Hãng: Samsung.', NULL, NULL),
(23, 'Tai nghe Bluetooth True Wireless Gaming Asus Rog Cetra Đen', 3, 3, 1495000, 'tai-nghe-bluetooth-true-wireless-gaming-asus-rog-cetra.jpg', 'Thời gian tai nghe: Dùng 5.5 giờ - Sạc 33 phút, Thời gian hộp sạc: Dùng 21.5 giờ - Sạc 2.5 giờ, Cổng sạc: Type-C, Công nghệ âm thanh: Hybrid ANC, Tương thích: WindowsiOS (iPhone)Nintendo Switch MacOS Android, Ứng dụng kết nối: Armoury, Crate, Tiện ích: Có đèn RGB, Chống nước IPX4, Sạc không dây, Chống ồn chủ động ANC, Hỗ trợ kết nối: Bluetooth 5.0, Điều khiển bằng: Cảm ứng chạm, Hãng: Asus.\r\n', NULL, NULL),
(24, 'Tai nghe Bluetooth True Wireless OPPO ENCO Buds 2 ETE41', 2, 3, 1090000, 'tai-nghe-bluetooth-tws-oppo-enco-buds-2.jpg', 'Thời gian tai nghe: Dùng 7 giờ - Sạc 1.5 giờ, Thời gian hộp sạc: Dùng 28 giờ - Sạc 3 giờ, Cổng sạc: Type-C, Công nghệ âm thanh: codecAACcodecSBC, Tương thích: iOS (iPhone)Android, Ứng dụng kết nối: HeyMelody App, Tiện ích: Game Mode, Chống nước IPX4, Chụp ảnh nhanh, Hỗ trợ kết nối: Bluetooth 5.2, Điều khiển bằng: Cảm ứng chạm, Hãng: OPPO.', NULL, NULL),
(25, 'Máy tính bảng iPad Pro M2 12.9 inch WiFi Cellular 128GB', 5, 4, 35990000, 'ipad_pro_12_9_2021_grey.jpg', 'Màn hình: 12.9\"Liquid Retina XDR, Hệ điều hành: iPadOS 16, Chip: Apple M2 8 nhân, RAM: 8 GB, Dung lượng lưu trữ:128 GB, Kết nối: 5GNghe gọi qua FaceTime, SIM: 1 Nano SIM hoặc 1 eSIM, Camera sau: Chính 12 MP & Phụ 10 MP, TOF 3D LiDAR, Camera trước: 12 MP, Pin Sạc: 40.88 Wh (~ 10.835 mAh)20 W.', NULL, NULL),
(26, 'Máy tính bảng Samsung Galaxy Tab S8 5G', 4, 4, 20490000, 'samsung-galaxy-tab-s8-ultra.jpg', 'Màn hình: 11\"LTPS, Hệ điều hành: Android 12, Chip: Snapdragon 8 Gen 1, RAM: 8 GB, Dung lượng lưu trữ: 128 GB, Kết nối: 5G Có nghe gọi, SIM: 1 Nano SIM, Camera sau: Chính 13 MP & Phụ 6 MP, Camera trước: 12 MP, Pin Sạc: 8000 mAh45 W, Hãng: Samsung.', NULL, NULL),
(27, 'Máy tính bảng Samsung Galaxy Tab A8 (2022)', 4, 4, 7490000, 'samsung-galaxy-tab-a8.jpg', 'Màn hình: 10.5\"TFT LCD, Hệ điều hành: Android 11, Chip: UniSOC T618, RAM: 4 GB, Dung lượng lưu trữ: 64 GB, Kết nối: Hỗ trợ 4G Có nghe gọi, SIM: 1 Nano SIM, Camera sau: 8 MP, Camera trước: 5 MP, Pin, Sạc: 7040 mAh15 W, Hãng: Samsung.', NULL, NULL),
(28, 'Máy tính bảng OPPO Pad Air', 2, 4, 6990000, 'OPPO-padair-xam.jpg', 'Màn hình: 10.36\"IPS LCD, Hệ điều hành: Android 12, Chip: Snapdragon 680, RAM: 4 GB, Dung lượng lưu trữ: 64 GB, Camera sau: 8 MP, Camera trước: 5 MP, Pin Sạc: 7100 mAh18 W.', NULL, NULL),
(29, 'Đồng hồ thông minh Samsung Galaxy Watch 4 40mm', 4, 1, 3990000, 'samsung-galaxy-watch-4-40mm.jpg', 'Màn hình: SUPER AMOLED1.2 inch, Thời lượng pin: Khoảng 1.5 ngày, Kết nối với hệ điều hành: Android 7.0 trở lên dùng Google Mobile Service, Mặt: Kính cường lực Gorilla Glass Dx+40 mm, Tính năng cho sức khỏe: Tính lượng calories tiêu thụ, Đo nồng độ oxy (SpO2) Theo dõi giấc ngủ, Đo nhịp tim, Đếm số bước chânĐo huyết áp (chỉ hỗ trợ khi kết nối với điện thoại Samsung), Điện tâm đồ (chỉ hỗ trợ khi kết nối với điện thoại Samsung), Hãng: Samsung.', NULL, NULL),
(30, 'Apple Watch S6 40mm viền nhôm dây silicone', 5, 1, 8490000, 'apple-watch-s6-40mm-vien-nhom-day-cao-su.jpg', 'Màn hình: OLED1.57 inch, Thời lượng pin: Khoảng 1.5 ngày, Kết nối với hệ điều hành: iPhone 8 trở lên với iOS phiên bản mới nhất, Mặt: Ion-X strengthened glass, Tính năng cho sức khỏe: Tính quãng đường chạy, Tính lượng calories tiêu thụ, Đo nồng độ oxy (SpO2), Đếm số bước chân, Chế độ luyện tập, Theo dõi giấc ngủ, Điện tâm đồ, Đo nhịp tim, Hãng: Apple.', NULL, NULL),
(31, 'Đồng hồ thông minh Xiaomi Watch S1 46.5mm', 1, 1, 4879000, 'dong-ho-thong-minh-xiaomi-watch-s1.jpg', 'Màn hình: AMOLED 1.43 inch, Thời lượng pin: Khoảng 12 ngày, Kết nối với hệ điều hành: Android 6.0 trở lên iOS 10 trở lên, Mặt: Kính Sapphire 46.5 mm, Tính năng cho sức khỏe: Theo dõi chu kì kinh nguyệt, Theo dõi mức độ stress, Đo nồng độ oxy (SpO2) Theo dõi nhịp thở, Chế độ luyện tập, Theo dõi giấc ngủ, Theo dõi nhịp tim 24h, Hãng: Xiaomi.', NULL, NULL);

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
(2, 'Dien Thoai'),
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
