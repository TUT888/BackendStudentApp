-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th12 21, 2022 lúc 12:55 PM
-- Phiên bản máy phục vụ: 10.4.25-MariaDB
-- Phiên bản PHP: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `giasuapp`
--
CREATE DATABASE IF NOT EXISTS giasuapp DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci;
USE giasuapp;
-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `admin_account`
--

CREATE TABLE `admin_account` (
  `username` char(30) COLLATE utf8_unicode_ci NOT NULL,
  `password` char(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `admin_account`
--

INSERT INTO `admin_account` (`username`, `password`) VALUES
('admin', '123456');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `class`
--

CREATE TABLE `class` (
  `id` char(15) NOT NULL,
  `className` varchar(200) NOT NULL,
  `tutorPhone` char(10) NOT NULL,
  `studentPhone` char(10) NOT NULL,
  `place` varchar(255) NOT NULL,
  `status` int(1) NOT NULL,
  `fee` int(255) NOT NULL,
  `dateTime` varchar(255) NOT NULL,
  `startDate` date NOT NULL,
  `endDate` date NOT NULL,
  `method` varchar(30) NOT NULL,
  `subject` varchar(255) NOT NULL,
  `field` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `class`
--

INSERT INTO `class` (`id`, `className`, `tutorPhone`, `studentPhone`, `place`, `status`, `fee`, `dateTime`, `startDate`, `endDate`, `method`, `subject`, `field`) VALUES
('P01012022124731', 'Khác 3', '0716795009', '0977912094', 'Quận 9', 1, 300000, 'Thứ 5: 3h-5h', '2022-01-10', '2022-03-20', 'offline', 'Khác 3', 'Khác'),
('P01122020213758', 'Âm Nhạc 5', '0188754944', '0424784342', 'Quận Tân Phú', 1, 400000, 'Thứ 3: 1h-3h', '2020-12-11', '2021-02-08', 'offline', 'Âm Nhạc 5', 'Âm Nhạc'),
('P02042020211032', 'Hội Họa 1', '0560060871', '0616198518', 'Quận 5', 0, 100000, 'Thứ 2: 8h30-9h30', '2020-04-12', '2020-07-09', 'offline', 'Hội Họa 1', 'Hội Họa'),
('P02102022122145', 'Vật Lý 11', '0542930417', '0680310118', 'Huyện Nhà Bè', 0, 200000, 'Chủ nhật: 3h30-5h30', '2022-10-06', '2023-01-04', 'offline', 'Vật Lý 11', 'Vật Lý'),
('P03062022210541', 'Văn Học 12', '0359420330', '0204530972', 'Quận Thủ Đức', -1, 150000, 'Chủ nhật: 7h-9h', '2022-06-11', '2023-07-12', 'onlline', 'Khác 12', 'Khác'),
('P03122021073011', 'Hóa Học 5', '0761857656', '0423012325', 'Quận 1', 2, 500000, 'Thứ 7: 1h-3h', '2021-12-12', '2022-01-23', 'onlline', 'Hóa Học 5', 'Hóa Học'),
('P04122020172435', 'Vật Lý 11', '0359420330', '0344245515', 'Huyện Củ Chi', 0, 650000, 'Thứ 4: 3h30-5h30', '2020-12-13', '2021-02-20', 'offline', 'Vật Lý 11', 'Vật Lý'),
('P07022020022127', 'Địa Lý 9', '0972005792', '0344245515', 'Quận Tân Bình', 2, 500000, 'Thứ 5: 8h-9h30', '2020-02-14', '2020-03-24', 'offline', 'Địa Lý 9', 'Địa Lý'),
('P07052022052540', 'Sinh Học 5', '0582611553', '0512011852', 'Quận 1', 2, 600000, 'Thứ 3: 9h-11h', '2022-05-08', '2022-07-16', 'offline', 'Sinh Học 5', 'Sinh Học'),
('P08042021042308', 'Kỹ thuật 6', '0442761314', '0178898996', 'Quận Bình Thạnh', 0, 350000, 'Thứ 5: 7h-9h', '2021-04-21', '2021-07-18', 'onlline', 'Kỹ thuật 6', 'Kỹ thuật'),
('P08092021081603', 'Hóa Học 5', '0955157851', '0223553263', 'Quận 8', -1, 300000, 'Thứ 3: 8h30-9h30', '2021-09-14', '2023-11-20', 'offline', 'Hóa Học 5', 'Hóa Học'),
('P09022020092501', 'Ngữ Văn 4', '0680984062', '0344245515', 'Huyện Nhà Bè', 2, 400000, 'Thứ 4: 7h-9h', '2020-02-16', '2020-03-26', 'offline', 'Ngữ Văn 4', 'Ngữ Văn'),
('P09022020170201', 'Khác 1', '0972005792', '0977912094', 'Quận 11', -1, 350000, 'Thứ 2: 8h-9h30', '2020-02-17', '2023-03-03', 'offline', 'Khác 1', 'Khác'),
('P09052021204659', 'Y Học 11', '0972005792', '0694390344', 'Quận 5', 1, 250000, 'Thứ 4: 8h-9h30', '2021-05-10', '2021-05-21', 'onlline', 'Y Học 11', 'Y Học'),
('P10012021220536', 'Sinh Học 1', '0747135210', '0662365093', 'Huyện Nhà Bè', 2, 200000, 'Thứ 7: 1h30-3h30', '2021-01-25', '2021-02-05', 'onlline', 'Sinh Học 1', 'Sinh Học'),
('P10022021071212', 'Kỹ thuật 3', '0648741242', '0227873675', 'Quận 5', 0, 450000, 'Thứ 4: 8h30-9h30', '2021-02-24', '2021-03-24', 'onlline', 'Kỹ thuật 3', 'Kỹ thuật'),
('P10072020081405', 'Toán Học 2', '0980969584', '0439066167', 'Quận 7', 1, 550000, 'Thứ 4: 3h-5h', '2020-07-17', '2020-08-04', 'onlline', 'Toán Học 2', 'Toán Học'),
('P11032020100020', 'Vật Lý 12', '0747135210', '0431784813', 'Huyện Cần Giờ', -1, 650000, 'Chủ nhật: 3h-5h', '2020-03-13', '2023-05-06', 'onlline', 'Vật Lý 12', 'Vật Lý'),
('P12112022180934', 'Kỹ thuật 3', '0436646810', '0810747737', 'Quận 2', 0, 100000, 'Thứ 6: 3h30-5h30', '2022-11-14', '2023-02-10', 'onlline', 'Kỹ thuật 3', 'Kỹ thuật'),
('P14102021000826', 'Khác 8', '0188434976', '0662365093', 'Huyện Cần Giờ', 2, 650000, 'Thứ 4: 3h30-5h30', '2021-10-25', '2021-12-13', 'offline', 'Khác 8', 'Khác'),
('P15042022184602', 'Toán Học 12', '0757708371', '0725478898', 'Quận 6', 0, 250000, 'Thứ 3: 8h-9h30', '2022-04-26', '2022-07-24', 'offline', 'Toán Học 12', 'Toán Học'),
('P15122022063847', 'Sinh Học 9', '0582611553', '0439066167', 'Huyện Nhà Bè', -1, 450000, 'Chủ nhật: 1h-3h', '2022-12-30', '2023-02-09', 'onlline', 'Sinh Học 9', 'Sinh Học'),
('P16072020115924', 'Vật Lý 1', '0717255586', '0962278285', 'Huyện Củ Chi', 1, 200000, 'Thứ 5: 8h30-9h30', '2020-07-21', '2020-09-09', 'onlline', 'Vật Lý 1', 'Vật Lý'),
('P17052021120452', 'Công nghệ thông tin 9', '0955157851', '0204530972', 'Quận Phú Nhuận', -1, 150000, 'Thứ 2: 8h-9h30', '2021-06-01', '2023-07-23', 'onlline', 'Công nghệ thông tin 9', 'Công nghệ thông tin'),
('P18082022015240', 'Y Học 8', '0914618619', '0662365093', 'Quận Tân Bình', 1, 350000, 'Thứ 4: 1h-3h', '2022-08-23', '2022-10-20', 'onlline', 'Y Học 8', 'Y Học'),
('P18102020075524', 'Kỹ thuật 8', '0761857656', '0178898996', 'Quận Tân Phú', 2, 600000, 'Thứ 2: 7h-9h', '2020-10-28', '2020-11-24', 'onlline', 'Kỹ thuật 8', 'Kỹ thuật');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `post`
--

CREATE TABLE `post` (
  `id` char(15) NOT NULL,
  `title` varchar(255) NOT NULL,
  `status` int(1) NOT NULL,
  `idUser` char(10) NOT NULL,
  `subject` varchar(60) NOT NULL,
  `field` varchar(100) NOT NULL,
  `dateTimesLearning` varchar(255) NOT NULL,
  `learningPlaces` varchar(255) NOT NULL,
  `method` varchar(30) NOT NULL,
  `tuition` int(255) NOT NULL,
  `description` varchar(1000) NOT NULL,
  `postDate` date NOT NULL,
  `hideFrom` text NOT NULL,
  `role` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `post`
--

INSERT INTO `post` (`id`, `title`, `status`, `idUser`, `subject`, `field`, `dateTimesLearning`, `learningPlaces`, `method`, `tuition`, `description`, `postDate`, `hideFrom`, `role`) VALUES
('P01012021121029', 'Tìm gia sư môn Vật Lý 9', -1, '0680310118', 'Vật Lý 9', 'Vật Lý', 'Chủ nhật: 7h30-9h30', 'Quận 2, Huyện Nhà Bè, Quận 3, Quận 8', 'onlline', 150000, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', '2021-01-01', '', 0),
('P01012022124731', 'Tìm gia sư môn Khác 3', 1, '0977912094', 'Khác 3', 'Khác', 'Chủ nhật: 7h30-9h30, Thứ 6: 3h-5h, Thứ 5: 3h-5h', 'Quận 9', 'offline', 300000, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', '2022-01-01', '', 0),
('P01042020200046', 'Tìm học viên môn Ngữ Văn 10', 2, '0804729998', 'Ngữ Văn 10', 'Ngữ Văn', 'Thứ 2: 8h30-9h30', 'Huyện Bình Chánh, Huyện Nhà Bè, Quận 1, Quận 8', 'onlline', 650000, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', '2020-04-01', '', 1),
('P01122020213758', 'Tìm học viên môn Âm Nhạc 5', 1, '0188754944', 'Âm Nhạc 5', 'Âm Nhạc', 'Thứ 5: 8h30-9h30, Thứ 6: 8h-9h30, Thứ 3: 1h-3h', 'Huyện Bình Chánh, Huyện Củ Chi, Quận Tân Phú', 'offline', 400000, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', '2020-12-01', '', 1),
('P01122022163116', 'Tìm học viên môn Kỹ Năng 4', 0, '0327697247', 'Kỹ Năng 4', 'Kỹ Năng', 'Thứ 4: 6h30-8h30, Chủ nhật: 1h-3h, Thứ 7: 1h-3h', 'Huyện Bình Chánh, Quận Tân Phú', 'offline', 200000, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', '2022-12-01', '', 1),
('P02012020085215', 'Tìm học viên môn Âm Nhạc 3', -1, '0674080432', 'Âm Nhạc 3', 'Âm Nhạc', 'Thứ 4: 8h-9h30, Thứ 7: 9h30-11h30, Thứ 7: 3h30-5h30', 'Quận Bình Thạnh, Quận 10, Quận 7', 'onlline', 300000, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', '2020-01-02', '', 1),
('P02042020211032', 'Tìm học viên môn Hội Họa 1', 1, '0560060871', 'Hội Họa 1', 'Hội Họa', 'Thứ 2: 8h30-9h30', 'Huyện Hóc Môn, Huyện Nhà Bè, Quận 10, Quận 5, Quận Tân Bình', 'offline', 100000, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', '2020-04-02', '', 1),
('P02052021122845', 'Tìm học viên môn Âm Nhạc 8', 2, '0288952796', 'Âm Nhạc 8', 'Âm Nhạc', 'Thứ 4: 3h-5h, Thứ 7: 6h30-8h30, Thứ 2: 1h-3h', 'Huyện Hóc Môn, Huyện Nhà Bè, Quận 1, Quận Gò Vấp, Quận 7', 'offline', 450000, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', '2021-05-02', '', 1),
('P02102022122145', 'Tìm gia sư môn Vật Lý 11', 1, '0680310118', 'Vật Lý 11', 'Vật Lý', 'Chủ nhật: 3h30-5h30', 'Huyện Nhà Bè', 'offline', 200000, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', '2022-10-02', '', 0),
('P03012020145351', 'Tìm học viên môn Lịch Sử 10', -1, '0972005792', 'Lịch Sử 10', 'Lịch Sử', 'Thứ 4: 3h30-5h30', 'Quận Bình Tân, Quận Gò Vấp, Quận 12, Quận 5, Huyện Củ Chi', 'offline', 550000, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', '2020-01-03', '', 1),
('P03062022120659', 'Tìm học viên môn Kỹ Năng 6', 0, '0327697247', 'Kỹ Năng 6', 'Kỹ Năng', 'Thứ 2: 8h30-9h30, Thứ 5: 9h-11h, Thứ 6: 9h-11h', 'Quận Thủ Đức, Quận 12, Quận 1, Quận 4', 'offline', 450000, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', '2022-06-03', '', 1),
('P03062022210541', 'Tìm học viên môn Văn học 12', 1, '0359420330', 'Khác 12', 'Văn học', 'Chủ nhật: 7h-9h, Thứ 7: 3h-5h', 'Quận 3, Quận 11, Quận Gò Vấp, Quận Thủ Đức, Quận Tân Bình, Huyện Củ Chi', 'onlline', 150000, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', '2022-06-03', '', 1),
('P03072021023217', 'Tìm học viên môn Vật Lý 4', -1, '0359420330', 'Vật Lý 4', 'Vật Lý', 'Thứ 2: 3h30-5h30, Thứ 7: 6h-8h', 'Huyện Nhà Bè, Quận Gò Vấp, Quận 4', 'offline', 250000, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', '2021-07-03', '', 1),
('P03102020121026', 'Tìm học viên môn Hóa Học 3', 0, '0914618619', 'Hóa Học 3', 'Hóa Học', 'Thứ 4: 7h-9h', 'Quận Bình Thạnh, Huyện Nhà Bè, Quận 8', 'offline', 450000, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', '2020-10-03', '', 1),
('P03112021203920', 'Tìm gia sư môn Vật Lý 4', -1, '0680310118', 'Vật Lý 4', 'Vật Lý', 'Thứ 7: 9h30-11h30, Thứ 3: 1h30-3h30, Thứ 5: 9h-11h', 'Quận 7', 'offline', 150000, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', '2021-11-03', '', 0),
('P03122021073011', 'Tìm học viên môn Hóa Học 5', 1, '0761857656', 'Hóa Học 5', 'Hóa Học', 'Thứ 7: 1h-3h', 'Huyện Hóc Môn, Quận 1, Quận 11, Quận 12, Quận 7', 'onlline', 500000, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', '2021-12-03', '', 1),
('P04012021121601', 'Tìm gia sư môn Kỹ thuật 9', 0, '0432548999', 'Kỹ thuật 9', 'Kỹ thuật', 'Thứ 5: 8h-9h30, Thứ 4: 6h30-8h30', 'Quận 9, Huyện Bình Chánh, Quận 3, Quận Phú Nhuận, Quận 6', 'onlline', 400000, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', '2021-01-04', '', 0),
('P04012021174430', 'Tìm học viên môn Vật Lý 5', 0, '0171046296', 'Vật Lý 5', 'Vật Lý', 'Thứ 6: 7h-9h, Thứ 7: 3h30-5h30, Thứ 5: 9h30-11h30', 'Quận 2, Quận Bình Tân, Quận 4, Quận 3', 'offline', 550000, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', '2021-01-04', '', 1),
('P04022022000019', 'Tìm học viên môn Âm Nhạc 12', -1, '0761857656', 'Âm Nhạc 12', 'Âm Nhạc', 'Thứ 5: 6h30-8h30, Thứ 6: 3h-5h', 'Quận Bình Thạnh, Quận Tân Bình, Huyện Cần Giờ, Quận 7', 'onlline', 600000, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', '2022-02-04', '', 1),
('P04042021180312', 'Tìm học viên môn Khác 2', 0, '0188434976', 'Khác 2', 'Khác', 'Thứ 6: 1h30-3h30, Thứ 5: 3h-5h', 'Quận Gò Vấp, Quận 6', 'onlline', 450000, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', '2021-04-04', '', 1),
('P04072020134201', 'Tìm học viên môn Kinh Tế 11', -1, '0509866207', 'Kinh Tế 11', 'Kinh Tế', 'Thứ 4: 1h30-3h30, Thứ 3: 7h30-9h30, Thứ 4: 3h30-5h30', 'Quận 1, Quận Gò Vấp, Quận 12, Quận Thủ Đức, Quận 7', 'onlline', 400000, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', '2020-07-04', '', 1),
('P04122020172435', 'Tìm học viên môn Vật Lý 11', 1, '0359420330', 'Vật Lý 11', 'Vật Lý', 'Chủ nhật: 6h30-8h30, Thứ 4: 3h30-5h30, Thứ 3: 1h30-3h30', 'Huyện Củ Chi', 'offline', 650000, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', '2020-12-04', '', 1),
('P05032021033220', 'Tìm học viên môn Hóa Học 9', -1, '0904219538', 'Hóa Học 9', 'Hóa Học', 'Thứ 3: 1h-3h', 'Quận 10, Quận 12', 'onlline', 600000, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', '2021-03-05', '', 1),
('P05032022053337', 'Tìm gia sư môn Sinh Học 12', 2, '0662365093', 'Sinh Học 12', 'Sinh Học', 'Thứ 4: 8h-9h30, Chủ nhật: 6h-8h', 'Quận Bình Tân, Quận 11, Quận Tân Phú, Quận 2, Huyện Củ Chi', 'onlline', 200000, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', '2022-03-05', '', 0),
('P05032022100058', 'Tìm học viên môn Kỹ Năng 4', 0, '0440908076', 'Kỹ Năng 4', 'Kỹ Năng', 'Thứ 6: 7h30-9h30, Thứ 3: 8h30-9h30, Thứ 2: 9h-11h', 'Quận 1, Quận 2, Quận Thủ Đức, Quận 5, Huyện Củ Chi', 'onlline', 550000, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', '2022-03-05', '', 1),
('P05052021062345', 'Tìm học viên môn Hóa Học 11', 0, '0761857656', 'Hóa Học 11', 'Hóa Học', 'Thứ 3: 8h30-9h30, Thứ 6: 8h-9h30, Thứ 3: 9h30-11h30', 'Huyện Cần Giờ, Quận 1, Quận 11, Quận Gò Vấp, Quận 5, Quận 6', 'onlline', 100000, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', '2021-05-05', '', 1),
('P06022020000352', 'Tìm gia sư môn Âm Nhạc 5', 0, '0424784342', 'Âm Nhạc 5', 'Âm Nhạc', 'Thứ 3: 3h30-5h30', 'Quận Bình Thạnh, Quận 1, Quận Phú Nhuận, Quận 4', 'offline', 300000, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', '2020-02-06', '', 0),
('P06032022095502', 'Tìm học viên môn Ngữ Văn 11', -1, '0440908076', 'Ngữ Văn 11', 'Ngữ Văn', 'Thứ 4: 3h-5h, Chủ nhật: 3h-5h', 'Huyện Nhà Bè', 'offline', 400000, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', '2022-03-06', '', 1),
('P06062022031046', 'Tìm học viên môn Công nghệ thông tin 2', 0, '0442761314', 'Công nghệ thông tin 2', 'Công nghệ thông tin', 'Thứ 2: 3h30-5h30, Thứ 3: 9h30-11h30, Thứ 2: 6h30-8h30', 'Quận Tân Bình', 'offline', 650000, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', '2022-06-06', '', 1),
('P06082020210803', 'Tìm học viên môn Địa Lý 2', 0, '0490420988', 'Địa Lý 2', 'Địa Lý', 'Thứ 5: 1h-3h, Thứ 7: 1h-3h', 'Huyện Củ Chi, Quận Phú Nhuận', 'onlline', 350000, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', '2020-08-06', '', 1),
('P06112022201016', 'Tìm học viên môn Âm Nhạc 1', 0, '0172983076', 'Âm Nhạc 1', 'Âm Nhạc', 'Thứ 5: 1h30-3h30, Thứ 6: 3h30-5h30', 'Quận 2, Huyện Bình Chánh', 'onlline', 550000, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', '2022-11-06', '', 1),
('P07012021203723', 'Tìm gia sư môn Kinh Tế 4', 0, '0810747737', 'Kinh Tế 4', 'Kinh Tế', 'Chủ nhật: 9h-11h, Chủ nhật: 8h30-9h30', 'Quận 2, Huyện Nhà Bè', 'offline', 300000, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', '2021-01-07', '', 0),
('P07022020022127', 'Tìm học viên môn Địa Lý 9', 1, '0972005792', 'Địa Lý 9', 'Địa Lý', 'Thứ 6: 6h-8h, Thứ 3: 7h30-9h30, Thứ 5: 8h-9h30', 'Quận Tân Bình, Huyện Cần Giờ', 'offline', 500000, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', '2020-02-07', '', 1),
('P07052020195257', 'Tìm học viên môn Địa Lý 7', 2, '0792963960', 'Địa Lý 7', 'Địa Lý', 'Chủ nhật: 9h-11h, Thứ 4: 9h-11h, Thứ 2: 6h-8h', 'Quận 9, Quận Bình Tân, Quận Phú Nhuận, Quận 8', 'onlline', 450000, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', '2020-05-07', '', 1),
('P07052022052540', 'Tìm học viên môn Sinh Học 5', 1, '0582611553', 'Sinh Học 5', 'Sinh Học', 'Thứ 3: 9h-11h', 'Quận Thủ Đức, Huyện Nhà Bè, Quận 1, Quận Phú Nhuận', 'offline', 600000, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', '2022-05-07', '', 1),
('P07072022233112', 'Tìm gia sư môn Kỹ Năng 11', -1, '0423012325', 'Kỹ Năng 11', 'Kỹ Năng', 'Thứ 7: 8h-9h30, Thứ 4: 3h30-5h30, Thứ 7: 3h-5h', 'Quận 9, Quận 6', 'onlline', 200000, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', '2022-07-07', '', 0),
('P07092021011255', 'Tìm gia sư môn Kinh Tế 4', 2, '0810747737', 'Kinh Tế 4', 'Kinh Tế', 'Thứ 3: 8h30-9h30, Chủ nhật: 8h30-9h30, Thứ 2: 8h30-9h30', 'Quận Phú Nhuận', 'offline', 200000, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', '2021-09-07', '', 0),
('P07122022162537', 'Tìm học viên môn Toán Học 9', -1, '0875315975', 'Toán Học 9', 'Toán Học', 'Thứ 6: 1h30-3h30', 'Quận 1', 'offline', 150000, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', '2022-12-07', '', 1),
('P08012022084651', 'Tìm học viên môn Âm Nhạc 1', 0, '0288952796', 'Âm Nhạc 1', 'Âm Nhạc', 'Thứ 4: 8h-9h30', 'Huyện Hóc Môn, Quận 1, Quận 11, Quận Thủ Đức, Huyện Củ Chi', 'onlline', 150000, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', '2022-01-08', '', 1),
('P08032020010606', 'Tìm học viên môn Kỹ Năng 5', 2, '0509866207', 'Kỹ Năng 5', 'Kỹ Năng', 'Chủ nhật: 6h-8h, Thứ 7: 7h30-9h30', 'Quận Bình Thạnh', 'onlline', 150000, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', '2020-03-08', '', 1),
('P08042021042308', 'Tìm học viên môn Kỹ thuật 6', 1, '0442761314', 'Kỹ thuật 6', 'Kỹ thuật', 'Thứ 4: 3h-5h, Thứ 5: 7h-9h', 'Quận Bình Thạnh, Quận Tân Phú', 'onlline', 350000, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', '2021-04-08', '', 1),
('P08042021111232', 'Tìm gia sư môn Địa Lý 7', -1, '0224282397', 'Địa Lý 7', 'Địa Lý', 'Chủ nhật: 9h-11h, Thứ 7: 9h30-11h30, Chủ nhật: 8h-9h30', 'Quận Bình Thạnh, Huyện Hóc Môn, Quận Thủ Đức', 'onlline', 200000, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', '2021-04-08', '', 0),
('P08072021181259', 'Tìm học viên môn Kỹ Năng 1', 2, '0725946115', 'Kỹ Năng 1', 'Kỹ Năng', 'Thứ 6: 3h30-5h30, Chủ nhật: 7h-9h, Thứ 5: 9h-11h', 'Quận 6', 'offline', 450000, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', '2021-07-08', '', 1),
('P08092021081603', 'Tìm gia sư môn Hóa Học 5', 1, '0223553263', 'Hóa Học 5', 'Hóa Học', 'Thứ 3: 8h30-9h30, Thứ 3: 1h-3h', 'Quận 2, Quận 8', 'offline', 300000, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', '2021-09-08', '', 0),
('P08102020200526', 'Tìm học viên môn Hóa Học 1', -1, '0674080432', 'Hóa Học 1', 'Hóa Học', 'Chủ nhật: 8h30-9h30', 'Quận 9, Quận Phú Nhuận', 'onlline', 200000, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', '2020-10-08', '', 1),
('P08112021061007', 'Tìm học viên môn Kỹ Năng 10', -1, '0327697247', 'Kỹ Năng 10', 'Kỹ Năng', 'Chủ nhật: 1h-3h', 'Huyện Nhà Bè', 'offline', 350000, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', '2021-11-08', '', 1),
('P09022020092501', 'Tìm học viên môn Ngữ Văn 4', 1, '0680984062', 'Ngữ Văn 4', 'Ngữ Văn', 'Thứ 4: 7h-9h', 'Huyện Nhà Bè', 'offline', 400000, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', '2020-02-09', '', 1),
('P09022020170201', 'Tìm gia sư môn Khác 1', 1, '0977912094', 'Khác 1', 'Khác', 'Thứ 2: 8h-9h30, Thứ 7: 1h-3h', 'Quận 2, Quận 11, Quận 8', 'offline', 350000, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', '2020-02-09', '', 0),
('P09022020202822', 'Tìm học viên môn Tiếng Anh 1', 2, '0708115828', 'Tiếng Anh 1', 'Tiếng Anh', 'Thứ 2: 3h30-5h30, Thứ 5: 7h-9h', 'Huyện Bình Chánh, Huyện Cần Giờ, Quận Gò Vấp, Quận Bình Tân, Quận Phú Nhuận', 'onlline', 150000, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', '2020-02-09', '', 1),
('P09022020204734', 'Tìm gia sư môn Hóa Học 1', 2, '0223553263', 'Hóa Học 1', 'Hóa Học', 'Thứ 7: 1h30-3h30', 'Quận 9, Huyện Nhà Bè, Quận 10, Quận 8', 'onlline', 300000, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', '2020-02-09', '', 0),
('P09052021204659', 'Tìm gia sư môn Y Học 11', 1, '0694390344', 'Y Học 11', 'Y Học', 'Thứ 4: 8h-9h30, Thứ 6: 3h-5h, Thứ 2: 3h-5h', 'Quận Bình Tân, Quận 1, Quận 11, Quận 12, Quận 5', 'onlline', 250000, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', '2021-05-09', '', 0),
('P09092022084707', 'Tìm học viên môn Kỹ thuật 1', -1, '0442761314', 'Kỹ thuật 1', 'Kỹ thuật', 'Thứ 3: 6h-8h', 'Quận 3, Huyện Cần Giờ, Quận Thủ Đức, Quận 5, Huyện Củ Chi', 'offline', 200000, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', '2022-09-09', '', 1),
('P10012021194513', 'Tìm học viên môn Ngữ Văn 4', 2, '0717255586', 'Ngữ Văn 4', 'Ngữ Văn', 'Thứ 3: 1h30-3h30', 'Quận Gò Vấp, Quận 4', 'offline', 450000, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', '2021-01-10', '', 1),
('P10012021220536', 'Tìm học viên môn Sinh Học 1', 1, '0747135210', 'Sinh Học 1', 'Sinh Học', 'Thứ 7: 1h30-3h30, Thứ 3: 6h30-8h30, Thứ 2: 6h-8h', 'Huyện Nhà Bè, Quận 10, Quận Phú Nhuận, Quận 7, Quận 6', 'onlline', 200000, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', '2021-01-10', '', 1),
('P10022021071212', 'Tìm gia sư môn Kỹ thuật 3', 1, '0227873675', 'Kỹ thuật 3', 'Kỹ thuật', 'Thứ 4: 8h30-9h30, Thứ 2: 8h-9h30', 'Quận 5, Quận Bình Tân', 'onlline', 450000, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', '2021-02-10', '', 0),
('P10052020001852', 'Tìm học viên môn Âm Nhạc 10', -1, '0288952796', 'Âm Nhạc 10', 'Âm Nhạc', 'Thứ 3: 3h-5h, Thứ 3: 6h30-8h30', 'Quận 11, Huyện Cần Giờ, Quận Gò Vấp, Quận 7', 'offline', 400000, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', '2020-05-10', '', 1),
('P10072020081405', 'Tìm học viên môn Toán Học 2', 1, '0980969584', 'Toán Học 2', 'Toán Học', 'Thứ 4: 3h-5h, Thứ 2: 1h-3h', 'Quận 7, Quận 4, Quận Phú Nhuận, Quận 12', 'onlline', 550000, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', '2020-07-10', '', 1),
('P10082021202636', 'Tìm học viên môn Công nghệ thông tin 3', 0, '0747135210', 'Công nghệ thông tin 3', 'Công nghệ thông tin', 'Thứ 7: 6h30-8h30, Thứ 4: 3h-5h, Thứ 4: 1h-3h', 'Quận 2, Quận Thủ Đức, Huyện Cần Giờ, Quận 6', 'onlline', 200000, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', '2021-08-10', '', 1),
('P10092022224201', 'Tìm học viên môn Y Học 1', 0, '0704819286', 'Y Học 1', 'Y Học', 'Thứ 7: 1h30-3h30, Thứ 6: 1h-3h, Thứ 7: 9h-11h', 'Huyện Hóc Môn, Quận 10, Quận 11, Quận 12', 'offline', 100000, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', '2022-09-10', '', 1),
('P11022021030821', 'Tìm gia sư môn Công nghệ thông tin 8', -1, '0978757744', 'Công nghệ thông tin 8', 'Công nghệ thông tin', 'Thứ 4: 9h30-11h30, Thứ 2: 8h30-9h30, Thứ 2: 8h-9h30', 'Huyện Nhà Bè', 'offline', 600000, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', '2021-02-11', '', 0),
('P11032020100020', 'Tìm học viên môn Vật Lý 12', 1, '0747135210', 'Vật Lý 12', 'Vật Lý', 'Chủ nhật: 3h-5h', 'Quận 2, Huyện Nhà Bè, Huyện Cần Giờ', 'onlline', 650000, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', '2020-03-11', '', 1),
('P11032022113902', 'Tìm học viên môn Hóa Học 1', 0, '0804729998', 'Hóa Học 1', 'Hóa Học', 'Thứ 3: 3h30-5h30', 'Quận Thủ Đức, Huyện Hóc Môn, Quận Bình Thạnh', 'onlline', 400000, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', '2022-03-11', '', 1),
('P11032022170225', 'Tìm gia sư môn Kỹ thuật 9', -1, '0123167360', 'Kỹ thuật 9', 'Kỹ thuật', 'Thứ 5: 6h30-8h30, Thứ 5: 7h30-9h30, Chủ nhật: 6h-8h', 'Huyện Hóc Môn, Quận 10, Quận 4, Quận Tân Bình, Quận 6', 'offline', 150000, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', '2022-03-11', '', 0);
INSERT INTO `post` (`id`, `title`, `status`, `idUser`, `subject`, `field`, `dateTimesLearning`, `learningPlaces`, `method`, `tuition`, `description`, `postDate`, `hideFrom`, `role`) VALUES
('P11102020021621', 'Tìm học viên môn Y Học 2', 2, '0680984062', 'Y Học 2', 'Y Học', 'Thứ 6: 3h30-5h30, Thứ 2: 1h30-3h30', 'Quận 9, Quận Tân Bình', 'onlline', 400000, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', '2020-10-11', '', 1),
('P11102020032837', 'Tìm học viên môn Kinh Tế 7', 2, '0242108419', 'Kinh Tế 7', 'Kinh Tế', 'Thứ 6: 3h30-5h30, Thứ 6: 3h-5h', 'Huyện Cần Giờ, Quận Phú Nhuận', 'onlline', 600000, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', '2020-10-11', '', 1),
('P11122020125931', 'Tìm học viên môn Sinh Học 6', 2, '0821681794', 'Sinh Học 6', 'Sinh Học', 'Thứ 7: 1h30-3h30, Chủ nhật: 1h30-3h30', 'Huyện Hóc Môn', 'offline', 150000, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', '2020-12-11', '', 1),
('P12032021151422', 'Tìm học viên môn Âm Nhạc 10', 0, '0359420330', 'Âm Nhạc 10', 'Âm Nhạc', 'Thứ 2: 1h-3h, Thứ 3: 9h30-11h30, Thứ 2: 6h-8h', 'Quận 11, Quận Phú Nhuận', 'offline', 350000, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', '2021-03-12', '', 1),
('P12112022180934', 'Tìm gia sư môn Kỹ thuật 3', 1, '0810747737', 'Kỹ thuật 3', 'Kỹ thuật', 'Thứ 6: 3h30-5h30', 'Quận 9, Quận 3, Huyện Cần Giờ, Quận 8, Quận 2', 'onlline', 100000, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', '2022-11-12', '', 0),
('P13012022064427', 'Tìm học viên môn Khác 2', 0, '0188434976', 'Khác 2', 'Khác', 'Thứ 2: 8h30-9h30', 'Quận 12, Quận 8', 'offline', 600000, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', '2022-01-13', '', 1),
('P13062022213958', 'Tìm gia sư môn Y Học 9', 0, '0616198518', 'Y Học 9', 'Y Học', 'Thứ 4: 3h-5h', 'Quận 3, Huyện Hóc Môn, Huyện Cần Giờ, Quận 7, Quận 4', 'onlline', 550000, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', '2022-06-13', '', 0),
('P13072020110603', 'Tìm học viên môn Kinh Tế 1', -1, '0985576457', 'Kinh Tế 1', 'Kinh Tế', 'Thứ 4: 8h-9h30', 'Quận 5, Quận 12, Quận 6, Quận 8', 'onlline', 500000, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', '2020-07-13', '', 1),
('P13092022044435', 'Tìm gia sư môn Kinh Tế 11', 0, '0810747737', 'Kinh Tế 11', 'Kinh Tế', 'Thứ 7: 8h30-9h30, Thứ 2: 8h-9h30', 'Huyện Nhà Bè, Quận 10, Quận 11, Quận 2, Quận 5, Huyện Củ Chi', 'onlline', 450000, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', '2022-09-13', '', 0),
('P13102020020101', 'Tìm học viên môn Vật Lý 10', 0, '0980969584', 'Vật Lý 10', 'Vật Lý', 'Thứ 4: 3h-5h, Thứ 3: 1h30-3h30', 'Quận Bình Tân, Quận 10, Quận Phú Nhuận, Quận 12, Quận 8, Quận Bình Thạnh', 'offline', 450000, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', '2020-10-13', '', 1),
('P13112022060151', 'Tìm gia sư môn Y Học 1', 0, '0227873675', 'Y Học 1', 'Y Học', 'Thứ 6: 8h-9h30', 'Quận Tân Bình', 'offline', 450000, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', '2022-11-13', '', 0),
('P14022022160441', 'Tìm gia sư môn Lịch Sử 10', 2, '0680310118', 'Lịch Sử 10', 'Lịch Sử', 'Thứ 4: 7h-9h', 'Quận Gò Vấp', 'onlline', 600000, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', '2022-02-14', '', 0),
('P14052022075502', 'Tìm học viên môn Hội Họa 1', 0, '0582611553', 'Hội Họa 1', 'Hội Họa', 'Thứ 5: 3h30-5h30', 'Huyện Củ Chi, Quận 4', 'offline', 200000, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', '2022-05-14', '', 1),
('P14072020152450', 'Tìm gia sư môn Tiếng Anh 3', 0, '0633517838', 'Tiếng Anh 3', 'Tiếng Anh', 'Thứ 5: 7h-9h, Thứ 5: 8h30-9h30', 'Quận 10, Quận 12', 'offline', 500000, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', '2020-07-14', '', 0),
('P14102021000826', 'Tìm học viên môn Khác 8', 1, '0188434976', 'Khác 8', 'Khác', 'Thứ 4: 3h30-5h30', 'Quận Bình Tân, Huyện Cần Giờ, Quận Phú Nhuận', 'offline', 650000, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', '2021-10-14', '', 1),
('P14102022002835', 'Tìm gia sư môn Hóa Học 9', 2, '0975948805', 'Hóa Học 9', 'Hóa Học', 'Thứ 7: 3h30-5h30', 'Huyện Nhà Bè, Quận 8, Quận 5', 'onlline', 600000, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', '2022-10-14', '', 0),
('P15012021152051', 'Tìm học viên môn Kinh Tế 4', 2, '0497352098', 'Kinh Tế 4', 'Kinh Tế', 'Thứ 2: 6h30-8h30, Thứ 3: 9h-11h', 'Huyện Hóc Môn, Quận Phú Nhuận, Quận 11, Quận 3', 'onlline', 650000, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', '2021-01-15', '', 1),
('P15042022184602', 'Tìm gia sư môn Toán Học 12', 1, '0725478898', 'Toán Học 12', 'Toán Học', 'Thứ 5: 1h30-3h30, Thứ 3: 8h-9h30', 'Quận 3, Huyện Hóc Môn, Quận 8, Quận Tân Bình, Quận 6', 'offline', 250000, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', '2022-04-15', '', 0),
('P15122022063847', 'Tìm học viên môn Sinh Học 9', 1, '0582611553', 'Sinh Học 9', 'Sinh Học', 'Chủ nhật: 1h-3h, Thứ 6: 9h-11h', 'Quận 3, Huyện Nhà Bè, Quận 10, Quận Bình Thạnh, Quận Tân Bình', 'onlline', 450000, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', '2022-12-15', '', 1),
('P15122022110307', 'Tìm học viên môn Kỹ thuật 5', -1, '0442761314', 'Kỹ thuật 5', 'Kỹ thuật', 'Thứ 2: 7h-9h, Thứ 2: 9h-11h, Thứ 2: 3h-5h', 'Quận 1, Quận Phú Nhuận, Quận 12, Quận Thủ Đức, Quận 2, Huyện Củ Chi', 'offline', 150000, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', '2022-12-15', '', 1),
('P16072020041627', 'Tìm gia sư môn Công nghệ thông tin 8', -1, '0432548999', 'Công nghệ thông tin 8', 'Công nghệ thông tin', 'Thứ 7: 6h30-8h30, Thứ 7: 3h30-5h30, Thứ 5: 7h30-9h30', 'Quận Gò Vấp', 'offline', 250000, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', '2020-07-16', '', 0),
('P16072020115924', 'Tìm gia sư môn Vật Lý 1', 1, '0962278285', 'Vật Lý 1', 'Vật Lý', 'Thứ 7: 3h30-5h30, Thứ 5: 8h30-9h30', 'Quận 9, Huyện Cần Giờ, Quận 12, Quận Tân Bình, Huyện Củ Chi', 'onlline', 200000, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', '2020-07-16', '', 0),
('P16092021005003', 'Tìm gia sư môn Ngữ Văn 7', 2, '0411766812', 'Ngữ Văn 7', 'Ngữ Văn', 'Thứ 5: 3h30-5h30, Thứ 3: 8h30-9h30, Thứ 5: 1h-3h', 'Quận 2, Quận 1, Quận 10', 'onlline', 600000, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', '2021-09-16', '', 0),
('P17012020063534', 'Tìm gia sư môn Sinh Học 4', 2, '0178898996', 'Sinh Học 4', 'Sinh Học', 'Thứ 5: 7h30-9h30, Thứ 7: 7h30-9h30', 'Huyện Hóc Môn, Quận 1, Quận Tân Phú, Quận 7, Quận Tân Bình', 'offline', 600000, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', '2020-01-17', '', 0),
('P17022021042801', 'Tìm gia sư môn Công nghệ thông tin 10', -1, '0243409396', 'Công nghệ thông tin 10', 'Công nghệ thông tin', 'Thứ 5: 1h30-3h30, Thứ 2: 1h30-3h30', 'Quận Thủ Đức, Quận 9, Huyện Cần Giờ', 'offline', 450000, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', '2021-02-17', '', 0),
('P17022021065946', 'Tìm học viên môn Công nghệ thông tin 12', 0, '0440908076', 'Công nghệ thông tin 12', 'Công nghệ thông tin', 'Thứ 6: 8h-9h30', 'Quận Thủ Đức, Quận Bình Tân, Quận Tân Phú, Quận 6', 'offline', 350000, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', '2021-02-17', '', 1),
('P17052020233356', 'Tìm học viên môn Địa Lý 7', -1, '0798800652', 'Địa Lý 7', 'Địa Lý', 'Thứ 4: 9h-11h, Thứ 3: 8h-9h30', 'Quận Bình Thạnh, Huyện Nhà Bè, Huyện Củ Chi', 'onlline', 350000, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', '2020-05-17', '', 1),
('P17052021120452', 'Tìm gia sư môn Công nghệ thông tin 9', 1, '0204530972', 'Công nghệ thông tin 9', 'Công nghệ thông tin', 'Chủ nhật: 8h-9h30, Thứ 2: 8h-9h30', 'Quận Phú Nhuận, Quận Gò Vấp', 'onlline', 150000, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', '2021-05-17', '', 0),
('P17082021125225', 'Tìm học viên môn Âm Nhạc 6', 0, '0147605646', 'Âm Nhạc 6', 'Âm Nhạc', 'Thứ 5: 8h-9h30, Chủ nhật: 7h-9h', 'Huyện Bình Chánh, Huyện Hóc Môn, Quận Bình Tân, Quận 4, Quận 5', 'onlline', 100000, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', '2021-08-17', '', 1),
('P17092021102525', 'Tìm học viên môn Âm Nhạc 4', -1, '0761857656', 'Âm Nhạc 4', 'Âm Nhạc', 'Thứ 2: 8h30-9h30', 'Quận 3, Huyện Cần Giờ, Quận Phú Nhuận, Quận Tân Phú, Quận 4, Quận Bình Thạnh', 'offline', 600000, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', '2021-09-17', '', 1),
('P17102021082456', 'Tìm học viên môn Ngữ Văn 4', 0, '0873218013', 'Ngữ Văn 4', 'Ngữ Văn', 'Thứ 5: 7h-9h', 'Quận 9, Huyện Bình Chánh, Huyện Nhà Bè, Quận Tân Phú, Quận 7', 'onlline', 600000, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', '2021-10-17', '', 1),
('P17112021212457', 'Tìm học viên môn Ngữ Văn 5', 2, '0873218013', 'Ngữ Văn 5', 'Ngữ Văn', 'Chủ nhật: 7h30-9h30', 'Huyện Hóc Môn, Quận Tân Bình, Quận Phú Nhuận, Quận 6', 'offline', 650000, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', '2021-11-17', '', 1),
('P18032022193332', 'Tìm gia sư môn Hóa Học 7', 2, '0227873675', 'Hóa Học 7', 'Hóa Học', 'Thứ 7: 7h-9h, Chủ nhật: 9h30-11h30, Thứ 2: 6h-8h', 'Quận Thủ Đức, Quận 6', 'onlline', 150000, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', '2022-03-18', '', 0),
('P18062021181213', 'Tìm học viên môn Địa Lý 1', 2, '0985576457', 'Địa Lý 1', 'Địa Lý', 'Thứ 5: 6h-8h, Thứ 7: 8h30-9h30, Thứ 2: 3h-5h', 'Huyện Nhà Bè, Quận 10, Quận Gò Vấp, Quận 4, Quận 8', 'offline', 650000, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', '2021-06-18', '', 1),
('P18082020011744', 'Tìm học viên môn Hóa Học 6', -1, '0620819644', 'Hóa Học 6', 'Hóa Học', 'Thứ 6: 8h30-9h30, Chủ nhật: 6h30-8h30', 'Quận Bình Thạnh, Huyện Bình Chánh, Quận Gò Vấp, Quận 3', 'onlline', 250000, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', '2020-08-18', '', 1),
('P18082022015240', 'Tìm gia sư môn Y Học 8', 1, '0662365093', 'Y Học 8', 'Y Học', 'Thứ 4: 1h-3h, Thứ 2: 9h-11h, Thứ 2: 8h30-9h30', 'Huyện Hóc Môn, Quận Tân Bình, Quận 3', 'onlline', 350000, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', '2022-08-18', '', 0),
('P18102020075524', 'Tìm gia sư môn Kỹ thuật 8', 1, '0178898996', 'Kỹ thuật 8', 'Kỹ thuật', 'Thứ 2: 7h-9h', 'Quận 9, Quận Tân Phú, Quận 8', 'onlline', 600000, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', '2020-10-18', '', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `rate`
--

CREATE TABLE `rate` (
  `classID` char(15) NOT NULL,
  `rate` float DEFAULT NULL,
  `comment` varchar(200) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `rate`
--

INSERT INTO `rate` (`classID`, `rate`, `comment`, `date`) VALUES
('P03122021073011', 2, 'Gia sư dạy khó hiểu', '2022-01-31'),
('P07022020022127', 0, 'Không được thực hành nhiều', '2020-04-04'),
('P07052022052540', 5, '', '2022-07-26'),
('P09022020092501', 3, 'Giảng viên đúng giờ', '2020-04-10'),
('P10012021220536', 4, 'Tôi học được nhiều thứ', '2021-02-07'),
('P14102021000826', 4, 'Tôi học được nhiều thứ', '2021-12-25'),
('P18102020075524', 5, 'Tôi học được nhiều thứ', '2020-12-02');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `student`
--

CREATE TABLE `student` (
  `id` char(10) NOT NULL,
  `fields` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `student`
--

INSERT INTO `student` (`id`, `fields`) VALUES
('0123167360', 'Kỹ thuật, Khác'),
('0158431810', 'Kỹ Năng, Tiếng Anh, Địa Lý, Công nghệ thông tin, Hội Họa'),
('0178898996', 'Sinh Học, Kỹ thuật'),
('0204530972', 'Ngữ Văn, Công nghệ thông tin, Khác'),
('0223553263', 'Âm Nhạc, Y Học, Hóa Học, Lịch Sử'),
('0224282397', 'Sinh Học, Y Học, Địa Lý, Lịch Sử'),
('0227873675', 'Kinh Tế, Y Học, Kỹ thuật, Hóa Học'),
('0243409396', 'Công nghệ thông tin, Ngữ Văn'),
('0272895840', 'Âm Nhạc, Ngữ Văn'),
('0344245515', 'Tiếng Anh, Địa Lý, Ngữ Văn'),
('0352278230', 'Sinh Học, Kinh Tế, Âm Nhạc, Hội Họa'),
('0379313770', 'Tiếng Anh, Kinh Tế, Y Học'),
('0411766812', 'Âm Nhạc, Y Học, Ngữ Văn'),
('0423012325', 'Kỹ Năng, Hội Họa'),
('0424784342', 'Âm Nhạc, Y Học, Địa Lý, Công nghệ thông tin'),
('0431784813', 'Kinh Tế, Hóa Học, Toán Học, Ngữ Văn, Vật Lý'),
('0432548999', 'Sinh Học, Kỹ thuật, Khác, Địa Lý, Hóa Học, Công nghệ thông tin'),
('0434610830', 'Y Học'),
('0439066167', 'Tiếng Anh, Y Học, Khác'),
('0490367912', 'Âm Nhạc, Tiếng Anh, Lịch Sử'),
('0512011852', 'Sinh Học, Kỹ Năng, Vật Lý'),
('0565945581', 'Lịch Sử, Khác'),
('0590627170', 'Kỹ thuật, Kinh Tế, Khác'),
('0616198518', 'Kỹ Năng, Y Học, Kinh Tế, Công nghệ thông tin, Hội Họa'),
('0633517838', 'Kỹ Năng, Tiếng Anh'),
('0662365093', 'Sinh Học, Y Học'),
('0680310118', 'Vật Lý, Lịch Sử'),
('0694390344', 'Y Học, Hội Họa'),
('0725478898', 'Lịch Sử, Sinh Học, Tiếng Anh, Toán Học, Vật Lý'),
('0810747737', 'Kinh Tế, Kỹ thuật'),
('0962278285', 'Kỹ thuật, Toán Học, Vật Lý'),
('0975948805', 'Sinh Học, Kỹ thuật, Khác, Kinh Tế, Hóa Học, Toán Học'),
('0977912094', 'Khác'),
('0978757744', 'Âm Nhạc, Kỹ Năng, Công nghệ thông tin'),
('0994563314', 'Tiếng Anh, Kinh Tế, Toán Học'),
('0999999999', 'Kỹ Năng, Kinh Tế, Y Học, Hóa Học');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tutor`
--

CREATE TABLE `tutor` (
  `id` char(10) NOT NULL,
  `school` varchar(255) NOT NULL,
  `academicLevel` varchar(100) NOT NULL,
  `fields` varchar(255) NOT NULL,
  `areas` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `tutor`
--

INSERT INTO `tutor` (`id`, `school`, `academicLevel`, `fields`, `areas`) VALUES
('0123489383', 'Trường Đại học Sư phạm Hà Nội', 'Phó giáo sư', 'Tiếng Anh', 'Huyện Hóc Môn, Quận 1, Quận 11, Quận Tân Phú, Huyện Củ Chi'),
('0143530520', 'Trường Đại học Kinh tế – ĐH QGHN', 'Sinh Viên', 'Sinh Học', 'Quận Phú Nhuận, Quận Gò Vấp, Quận Tân Phú'),
('0145171478', 'Trường Đại học Ngoại ngữ – ĐH QGHN', 'Phó giáo sư', 'Ngữ Văn, Hội Họa', 'Quận Bình Tân'),
('0147605646', 'Trường Trường Đại học Việt – Nhật – ĐH QGHN', 'Giáo sư', 'Âm Nhạc', 'Quận 2'),
('0171046296', 'Trường Đại học Sư phạm Kỹ thuật Thành phố Hồ Chí Minh', 'Thạc sĩ', 'Lịch Sử, Địa Lý, Toán Học, Vật Lý, Hội Họa', 'Quận 1, Quận Bình Tân, Quận Tân Phú, Quận 10'),
('0172983076', 'Trường Đại học Kinh tế – ĐH QGHN', 'Sinh Viên', 'Âm Nhạc, Công nghệ thông tin', 'Huyện Bình Chánh, Quận Gò Vấp'),
('0185024545', 'Trường Đại học Khoa học Xã hội và Nhân văn – ĐH QGHN', 'Thạc sĩ', 'Âm Nhạc, Vật Lý', 'Huyện Cần Giờ, Quận Gò Vấp, Quận 8, Quận 7, Quận Tân Bình'),
('0186006031', 'Trường Đại học Sư phạm Thành phố Hồ Chí Minh', 'Cứ nhân', 'Lịch Sử, Kỹ Năng, Khác, Hóa Học, Công nghệ thông tin', 'Quận Bình Thạnh, Quận Bình Tân, Quận 12'),
('0188434976', 'Trường Đại học Bách khoa Hà Nội', 'Sinh Viên', 'Vật Lý, Khác', 'Quận Gò Vấp, Quận Bình Tân, Quận Phú Nhuận'),
('0188754944', 'Trường Đại học Bách khoa Hà Nội', 'Tiến sĩ', 'Âm Nhạc, Sinh Học', 'Quận Bình Thạnh, Huyện Bình Chánh, Quận Bình Tân, Quận Phú Nhuận'),
('0242108419', 'Trường Đại học Công nghệ – ĐH QGHN', 'Giáo sư', 'Kỹ thuật, Khác, Kinh Tế, Địa Lý, Ngữ Văn, Vật Lý', 'Quận 8, Quận Bình Thạnh, Quận 2, Huyện Củ Chi, Quận 6'),
('0288952796', 'Trường Đại học Sư phạm Hà Nội', 'Phó giáo sư', 'Âm Nhạc', 'Quận Bình Thạnh, Quận 5, Huyện Củ Chi, Quận 10'),
('0327697247', 'Trường Đại học Sư phạm Nghệ thuật Trung ương', 'Phó giáo sư', 'Kỹ Năng', 'Quận 9, Huyện Bình Chánh, Quận 3, Huyện Hóc Môn, Quận Tân Phú'),
('0359420330', 'Trường Đại học Công nghệ – ĐH QGHN', 'Thạc sĩ', 'Lịch Sử, Âm Nhạc, Khác, Kinh Tế, Vật Lý', 'Quận Tân Bình, Quận 11, Huyện Cần Giờ, Quận Gò Vấp'),
('0429229667', 'Trường Đại học Kinh tế – ĐH QGHN', 'Sinh Viên', 'Tiếng Anh, Hóa Học, Toán Học, Ngữ Văn', 'Quận 5, Quận Bình Tân, Quận 11'),
('0436646810', 'Trường Đại học Khoa học Xã hội và Nhân văn – ĐH QGHN', 'Cứ nhân', 'Âm Nhạc, Kỹ thuật, Y Học', 'Quận Phú Nhuận, Quận 11, Quận 6'),
('0440908076', 'Trường Trường Đại học Việt – Nhật – ĐH QGHN', 'Phó giáo sư', 'Kỹ Năng, Công nghệ thông tin, Ngữ Văn', 'Quận Thủ Đức'),
('0442761314', 'Trường Đại học Kinh tế – ĐH QGHN', 'Cứ nhân', 'Kỹ thuật, Công nghệ thông tin', 'Quận 7, Quận 3, Huyện Củ Chi, Quận 6'),
('0452755963', 'Trường Đại học Bách khoa Hà Nội', 'Cứ nhân', 'Y Học, Lịch Sử, Khác', 'Quận Bình Tân, Quận Phú Nhuận, Quận 7, Quận 12, Huyện Củ Chi'),
('0457389025', 'Trường Đại học Sư phạm Nghệ thuật Trung ương', 'Tiến sĩ', 'Sinh Học, Lịch Sử', 'Huyện Nhà Bè, Huyện Củ Chi'),
('0490420988', 'Trường Đại học Công nghệ – ĐH QGHN', 'Phó giáo sư', 'Âm Nhạc, Y Học, Địa Lý, Công nghệ thông tin, Hội Họa', 'Huyện Hóc Môn, Quận 11'),
('0497352098', 'Trường Đại học Sư phạm Hà Nội', 'Cứ nhân', 'Kỹ Năng, Kinh Tế, Địa Lý, Ngữ Văn', 'Quận Thủ Đức, Quận Bình Tân, Quận 10, Quận Gò Vấp'),
('0509866207', 'Trường Đại học Công nghệ – ĐH QGHN', 'Cứ nhân', 'Sinh Học, Kỹ Năng, Khác, Kinh Tế, Ngữ Văn, Hội Họa', 'Quận 9, Quận 11, Quận 6'),
('0517733664', 'Trường Đại học Bách khoa Hà Nội', 'Tiến sĩ', 'Kinh Tế, Hóa Học, Công nghệ thông tin', 'Quận 9, Huyện Nhà Bè, Quận 1, Quận Phú Nhuận'),
('0542930417', 'Trường Đại học Sư phạm Hà Nội', 'Sinh Viên', 'Tiếng Anh, Y Học, Hội Họa', 'Quận Bình Thạnh, Huyện Cần Giờ, Quận 11, Quận 8'),
('0560060871', 'Trường Đại học Sư phạm Thể dục Thể thao Thành phố Hồ Chí Minh', 'Sinh Viên', 'Lịch Sử, Kỹ Năng, Y Học, Toán Học, Hội Họa', 'Huyện Nhà Bè, Quận 4'),
('0566825415', 'Trường Đại học Bách khoa Hà Nội', 'Tiến sĩ', 'Hóa Học, Khác', 'Quận Bình Thạnh, Huyện Cần Giờ'),
('0582611553', 'Trường Đại học Khoa học Tự nhiên – ĐH QGHN', 'Tiến sĩ', 'Sinh Học, Vật Lý, Hội Họa', 'Quận 10, Quận Tân Phú, Quận 4'),
('0599978952', 'Đại học Quốc gia Hà Nội', 'Thạc sĩ', 'Kỹ thuật, Địa Lý, Kinh Tế, Vật Lý', 'Huyện Bình Chánh, Quận 11, Huyện Củ Chi, Quận Bình Tân'),
('0602921391', 'Trường Đại học Sư phạm Thể dục Thể thao Hà Nội', 'Phó giáo sư', 'Vật Lý, Ngữ Văn', 'Huyện Bình Chánh, Quận 9, Huyện Nhà Bè, Huyện Cần Giờ, Quận Gò Vấp, Quận 8'),
('0604310327', 'Trường Đại học Giáo dục – ĐH QGHN', 'Tiến sĩ', 'Vật Lý', 'Quận 2'),
('0620819644', 'Trường Đại học Công nghệ – ĐH QGHN', 'Phó giáo sư', 'Hóa Học', 'Huyện Bình Chánh, Quận 1, Quận Tân Phú, Quận 7, Quận 2, Quận 6'),
('0648741242', 'Đại học Thương mại', 'Cứ nhân', 'Kỹ thuật', 'Huyện Bình Chánh, Quận Gò Vấp, Quận 11, Quận 8, Quận 2, Quận 6'),
('0674080432', 'Trường Đại học Sư phạm Kỹ thuật Thành phố Hồ Chí Minh', 'Thạc sĩ', 'Âm Nhạc, Hóa Học', 'Huyện Bình Chánh, Quận 11, Quận 8, Quận 4, Quận Tân Bình, Quận 6'),
('0680984062', 'Đại học Quốc gia Hà Nội', 'Giáo sư', 'Sinh Học, Tiếng Anh, Y Học, Kỹ Năng, Ngữ Văn, Vật Lý', 'Quận 3, Quận 11, Quận 12, Quận 2, Quận Tân Bình'),
('0704819286', 'Trường Đại học Ngoại ngữ – ĐH QGHN', 'Thạc sĩ', 'Tiếng Anh, Y Học, Công nghệ thông tin, Khác', 'Quận Tân Bình, Quận 9, Quận Bình Tân'),
('0708115828', 'Trường Trường Đại học Việt – Nhật – ĐH QGHN', 'Thạc sĩ', 'Tiếng Anh, Kỹ thuật, Vật Lý', 'Huyện Nhà Bè, Quận Phú Nhuận, Quận 7, Quận 4, Quận Thủ Đức, Huyện Củ Chi'),
('0716795009', 'Đại học Thương mại', 'Thạc sĩ', 'Âm Nhạc, Kỹ Năng, Ngữ Văn, Khác', 'Quận Phú Nhuận'),
('0717255586', 'Đại học Thương mại', 'Sinh Viên', 'Lịch Sử, Khác, Địa Lý, Hóa Học, Ngữ Văn, Vật Lý', 'Quận 9, Quận 12'),
('0725946115', 'Trường Đại học Giáo dục – ĐH QGHN', 'Phó giáo sư', 'Sinh Học, Kỹ Năng, Lịch Sử, Công nghệ thông tin', 'Huyện Bình Chánh, Huyện Nhà Bè, Quận Bình Tân, Quận Gò Vấp, Quận 2'),
('0729564969', 'Trường Đại học Ngoại ngữ – ĐH QGHN', 'Sinh Viên', 'Lịch Sử, Kỹ Năng, Tiếng Anh, Khác, Kinh Tế, Công nghệ thông tin', 'Huyện Hóc Môn, Quận 9, Huyện Củ Chi, Quận 3'),
('0737803560', 'Trường Đại học Giáo dục – ĐH QGHN', 'Tiến sĩ', 'Âm Nhạc, Kỹ Năng, Địa Lý, Công nghệ thông tin', 'Quận 9, Quận Bình Tân, Quận Phú Nhuận, Quận 4, Quận 12'),
('0747135210', 'Trường Đại học Giáo dục – ĐH QGHN', 'Cứ nhân', 'Kỹ Năng, Sinh Học, Địa Lý, Vật Lý, Công nghệ thông tin', 'Huyện Hóc Môn, Quận 4'),
('0757708371', 'Trường Đại học Sư phạm Thể dục Thể thao Thành phố Hồ Chí Minh', 'Thạc sĩ', 'Lịch Sử, Âm Nhạc, Tiếng Anh, Hóa Học, Toán Học', 'Quận 1, Quận 11, Quận Tân Phú, Quận 4, Quận 8, Quận 7'),
('0761857656', 'Trường Trường Đại học Việt – Nhật – ĐH QGHN', 'Giáo sư', 'Âm Nhạc, Hóa Học', 'Quận Bình Thạnh, Quận Tân Phú'),
('0774703850', 'Trường Đại học Kinh tế – ĐH QGHN', 'Cứ nhân', 'Y Học, Công nghệ thông tin', 'Quận 11, Quận Gò Vấp'),
('0792247497', 'Trường Đại học Sư phạm Hà Nội', 'Tiến sĩ', 'Y Học', 'Quận 1'),
('0792963960', 'Trường Đại học Sư phạm Thể dục Thể thao Hà Nội', 'Tiến sĩ', 'Địa Lý', 'Quận 11, Huyện Cần Giờ, Quận Gò Vấp'),
('0798800652', 'Trường Đại học Khoa học Tự nhiên – ĐH QGHN', 'Giáo sư', 'Lịch Sử, Âm Nhạc, Khác, Địa Lý, Toán Học', 'Huyện Nhà Bè, Huyện Bình Chánh, Quận Phú Nhuận, Quận Tân Phú'),
('0804729998', 'Trường Đại học Kinh tế – ĐH QGHN', 'Tiến sĩ', 'Kỹ Năng, Hóa Học, Ngữ Văn, Vật Lý, Hội Họa', 'Quận Bình Tân, Quận 10, Quận 8'),
('0821681794', 'Trường Đại học Khoa học Tự nhiên – ĐH QGHN', 'Cứ nhân', 'Sinh Học, Kỹ thuật', 'Huyện Bình Chánh, Quận Bình Tân, Quận Bình Thạnh, Quận 5, Huyện Củ Chi'),
('0825779909', 'Đại học Thương mại', 'Sinh Viên', 'Âm Nhạc, Tiếng Anh, Y Học, Kỹ Năng', 'Quận 2, Quận 10, Quận 1, Quận 3'),
('0873218013', 'Trường Đại học Sư phạm Thành phố Hồ Chí Minh', 'Tiến sĩ', 'Ngữ Văn', 'Quận Bình Tân, Quận Gò Vấp, Quận 1, Quận 2, Quận Tân Bình'),
('0875315975', 'Trường Đại học Công nghệ – ĐH QGHN', 'Cứ nhân', 'Sinh Học, Kỹ thuật, Toán Học, Vật Lý, Hội Họa', 'Quận Bình Tân, Huyện Củ Chi, Quận Phú Nhuận, Quận 5'),
('0904219538', 'Trường Đại học Khoa học Xã hội và Nhân văn – ĐH QGHN', 'Phó giáo sư', 'Hóa Học', 'Huyện Bình Chánh, Quận 1, Quận Bình Tân, Quận Gò Vấp, Huyện Cần Giờ, Huyện Củ Chi'),
('0914388662', 'Trường Đại học Sư phạm Thành phố Hồ Chí Minh', 'Thạc sĩ', 'Hội Họa', 'Quận 9, Quận Bình Tân, Quận 11, Quận 4, Quận Thủ Đức, Quận 7'),
('0914618619', 'Trường Đại học Kinh tế – ĐH QGHN', 'Tiến sĩ', 'Sinh Học, Y Học, Hóa Học, Toán Học, Ngữ Văn, Vật Lý', 'Huyện Bình Chánh, Quận 4'),
('0925176349', 'Trường Đại học Khoa học Tự nhiên – ĐH QGHN', 'Sinh Viên', 'Tiếng Anh, Vật Lý, Lịch Sử, Ngữ Văn', 'Quận 1, Huyện Củ Chi, Quận 10'),
('0941114636', 'Trường Đại học Khoa học Tự nhiên – ĐH QGHN', 'Giáo sư', 'Ngữ Văn', 'Huyện Bình Chánh, Huyện Cần Giờ, Quận Gò Vấp, Quận Tân Phú, Quận 12, Quận 2'),
('0941734122', 'Trường Đại học Sư phạm Nghệ thuật Trung ương', 'Cứ nhân', 'Âm Nhạc, Sinh Học, Lịch Sử, Hội Họa', 'Quận Thủ Đức, Quận Tân Phú'),
('0955157851', 'Trường Đại học Công nghệ – ĐH QGHN', 'Cứ nhân', 'Sinh Học, Y Học, Công nghệ thông tin', 'Quận Phú Nhuận, Quận 3'),
('0972005792', 'Trường Đại học Sư phạm Hà Nội', 'Giáo sư', 'Lịch Sử, Kỹ Năng, Y Học, Khác, Địa Lý, Ngữ Văn', 'Quận Tân Bình, Quận Gò Vấp, Quận 12'),
('0980969584', 'Trường Đại học Sư phạm Hà Nội', 'Thạc sĩ', 'Kinh Tế, Địa Lý, Toán Học, Ngữ Văn, Vật Lý', 'Quận Bình Thạnh, Quận Gò Vấp'),
('0985576457', 'Đại học Thương mại', 'Giáo sư', 'Tiếng Anh, Y Học, Địa Lý, Kinh Tế', 'Quận 8, Quận Bình Tân, Quận 11, Quận 3');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user`
--

CREATE TABLE `user` (
  `phoneNumber` char(10) NOT NULL,
  `name` varchar(100) NOT NULL,
  `status` int(3) NOT NULL,
  `area` varchar(255) NOT NULL,
  `gender` int(1) NOT NULL,
  `birthday` date NOT NULL,
  `email` char(100) NOT NULL,
  `avatar` varchar(100) NOT NULL,
  `password` char(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `user`
--

INSERT INTO `user` (`phoneNumber`, `name`, `status`, `area`, `gender`, `birthday`, `email`, `avatar`, `password`) VALUES
('0123167360', 'Chí Giang', -1, 'Huyện Hóc Môn', 0, '2014-10-07', 'chigiang07102014@gmail.com', 'avatar.jpg', 'chigiang07102014'),
('0123489383', 'Minh Thúy', 1, 'Quận 4', 1, '1993-07-03', 'minhthuy03071993@gmail.com', 'avatar.jpg', 'minhthuy03071993'),
('0143530520', 'Cẩm Yến', -1, 'Huyện Bình Chánh', 1, '1992-06-28', 'camyen28061992@gmail.com', 'avatar.jpg', 'camyen28061992'),
('0145171478', 'Bích Quyên', -1, 'Quận 5', 1, '1988-04-10', 'bichquyen10041988@gmail.com', 'avatar.jpg', 'bichquyen10041988'),
('0147605646', 'Xuân Thuyết', 1, 'Quận 11', 0, '1982-06-24', 'xuanthuyet24061982@gmail.com', 'avatar.jpg', 'xuanthuyet24061982'),
('0158431810', 'Ðan Tâm', 1, 'Huyện Bình Chánh', 0, '2016-02-21', 'dantam21022016@gmail.com', 'avatar.jpg', 'dantam21022016'),
('0171046296', 'Quang Hùng', 0, 'Quận 10', 0, '1993-08-24', 'quanghung24081993@gmail.com', 'avatar.jpg', 'quanghung24081993'),
('0172983076', 'Hữu Bào', -1, 'Quận 2', 0, '1997-06-22', 'huubao22061997@gmail.com', 'avatar.jpg', 'huubao22061997'),
('0178898996', 'Việt Khuê', -1, 'Quận 10', 1, '2007-04-07', 'vietkhue07042007@gmail.com', 'avatar.jpg', 'vietkhue07042007'),
('0185024545', 'Vàng Anh', 0, 'Quận 8', 1, '1988-01-20', 'vanganh20011988@gmail.com', 'avatar.jpg', 'vanganh20011988'),
('0186006031', 'Minh Khánh', 1, 'Quận Thủ Đức', 0, '1981-11-05', 'minhkhanh05111981@gmail.com', 'avatar.jpg', 'minhkhanh05111981'),
('0188434976', 'Yến Thanh', 0, 'Quận 11', 1, '1997-10-07', 'yenthanh07101997@gmail.com', 'avatar.jpg', 'yenthanh07101997'),
('0188754944', 'Diệu Hiền', 0, 'Huyện Cần Giờ', 1, '2001-04-11', 'dieuhien11042001@gmail.com', 'avatar.jpg', 'dieuhien11042001'),
('0204530972', 'Hoài Thương', 1, 'Quận 8', 1, '2015-05-07', 'hoaithuong07052015@gmail.com', 'avatar.jpg', 'hoaithuong07052015'),
('0223553263', 'Hữu Nghị', 1, 'Quận Bình Thạnh', 0, '2009-09-23', 'huunghi23092009@gmail.com', 'avatar.jpg', 'huunghi23092009'),
('0224282397', 'Yến Hồng', 1, 'Huyện Cần Giờ', 1, '2004-09-25', 'yenhong25092004@gmail.com', 'avatar.jpg', 'yenhong25092004'),
('0227873675', 'Ánh Linh', 1, 'Quận Bình Tân', 1, '2008-11-15', 'anhlinh15112008@gmail.com', 'avatar.jpg', 'anhlinh15112008'),
('0242108419', 'Quang Nhân', 0, 'Huyện Bình Chánh', 0, '1980-11-21', 'quangnhan21111980@gmail.com', 'avatar.jpg', 'quangnhan21111980'),
('0243409396', 'Thu Sinh', -1, 'Quận Thủ Đức', 0, '2012-08-24', 'thusinh24082012@gmail.com', 'avatar.jpg', 'thusinh24082012'),
('0272895840', 'Tuấn Ðức', 1, 'Huyện Bình Chánh', 0, '2011-06-20', 'tuanduc20062011@gmail.com', 'avatar.jpg', 'tuanduc20062011'),
('0288952796', 'Đoan Thanh', -1, 'Huyện Bình Chánh', 1, '1992-05-17', 'doanthanh17051992@gmail.com', 'avatar.jpg', 'doanthanh17051992'),
('0327697247', 'Duy Mỹ', -1, 'Quận Phú Nhuận', 1, '1997-02-06', 'duymy06021997@gmail.com', 'avatar.jpg', 'duymy06021997'),
('0344245515', 'Thục Ðình', 0, 'Quận Tân Bình', 1, '2013-08-07', 'thucdinh07082013@gmail.com', 'avatar.jpg', 'thucdinh07082013'),
('0352278230', 'Ðức Tâm', 0, 'Quận 3', 0, '2007-07-28', 'ductam28072007@gmail.com', 'avatar.jpg', 'ductam28072007'),
('0359420330', 'Tuyền Lâm', 1, 'Quận Gò Vấp', 1, '1994-05-16', 'tuyenlam16051994@gmail.com', 'avatar.jpg', 'tuyenlam16051994'),
('0379313770', 'Viễn Thông', 0, 'Quận 3', 0, '2008-03-27', 'vienthong27032008@gmail.com', 'avatar.jpg', 'vienthong27032008'),
('0411766812', 'Khánh Ngọc', -1, 'Quận Phú Nhuận', 1, '2013-04-07', 'khanhngoc07042013@gmail.com', 'avatar.jpg', 'khanhngoc07042013'),
('0423012325', 'Anh Hương', 0, 'Quận Thủ Đức', 1, '2006-11-25', 'anhhuong25112006@gmail.com', 'avatar.jpg', 'anhhuong25112006'),
('0424784342', 'Phi Hoàng', -1, 'Huyện Cần Giờ', 0, '2011-01-08', 'phihoang08012011@gmail.com', 'avatar.jpg', 'phihoang08012011'),
('0429229667', 'Ðức Tài', 1, 'Quận 11', 0, '1988-12-14', 'ductai14121988@gmail.com', 'avatar.jpg', 'ductai14121988'),
('0431784813', 'Ngọc Phụng', 1, 'Quận 3', 1, '2009-02-02', 'ngocphung02022009@gmail.com', 'avatar.jpg', 'ngocphung02022009'),
('0432548999', 'Khúc Lan', -1, 'Quận Bình Tân', 1, '2015-01-21', 'khuclan21012015@gmail.com', 'avatar.jpg', 'khuclan21012015'),
('0434610830', 'Tịnh Như', 1, 'Quận 4', 1, '2015-08-22', 'tinhnhu22082015@gmail.com', 'avatar.jpg', 'tinhnhu22082015'),
('0436646810', 'Văn Tuyển', 0, 'Quận 4', 0, '1993-06-15', 'vantuyen15061993@gmail.com', 'avatar.jpg', 'vantuyen15061993'),
('0439066167', 'Thế Bình', -1, 'Quận 10', 0, '2013-05-09', 'thebinh09052013@gmail.com', 'avatar.jpg', 'thebinh09052013'),
('0440908076', 'Tùng Anh', 0, 'Quận Thủ Đức', 0, '1981-10-23', 'tunganh23101981@gmail.com', 'avatar.jpg', 'tunganh23101981'),
('0442761314', 'Quế Chi', -1, 'Quận 1', 1, '1983-12-10', 'quechi10121983@gmail.com', 'avatar.jpg', 'quechi10121983'),
('0452755963', 'Thanh Vân', 0, 'Huyện Cần Giờ', 1, '1999-01-06', 'thanhvan06011999@gmail.com', 'avatar.jpg', 'thanhvan06011999'),
('0457389025', 'Kiều Dung', 1, 'Huyện Cần Giờ', 1, '1999-11-25', 'kieudung25111999@gmail.com', 'avatar.jpg', 'kieudung25111999'),
('0490367912', 'Hồng Vân', 0, 'Quận 4', 1, '2006-11-15', 'hongvan15112006@gmail.com', 'avatar.jpg', 'hongvan15112006'),
('0490420988', 'Kỳ Duyên', 1, 'Huyện Củ Chi', 1, '1992-09-10', 'kyduyen10091992@gmail.com', 'avatar.jpg', 'kyduyen10091992'),
('0497352098', 'Tuấn Ðức', 0, 'Quận 2', 0, '2002-05-05', 'tuanduc05052002@gmail.com', 'avatar.jpg', 'tuanduc05052002'),
('0509866207', 'Khánh Vân', -1, 'Quận Tân Bình', 1, '1992-10-11', 'khanhvan11101992@gmail.com', 'avatar.jpg', 'khanhvan11101992'),
('0512011852', 'Thanh Thiên', -1, 'Quận Gò Vấp', 0, '2013-04-15', 'thanhthien15042013@gmail.com', 'avatar.jpg', 'thanhthien15042013'),
('0517733664', 'Long Giang', 1, 'Quận Phú Nhuận', 0, '2003-07-10', 'longgiang10072003@gmail.com', 'avatar.jpg', 'longgiang10072003'),
('0542930417', 'Chấn Hưng', 1, 'Quận 6', 0, '1992-06-20', 'chanhung20061992@gmail.com', 'avatar.jpg', 'chanhung20061992'),
('0560060871', 'Diễm Thảo', 0, 'Quận 8', 1, '1992-08-08', 'diemthao08081992@gmail.com', 'avatar.jpg', 'diemthao08081992'),
('0565945581', 'Hương Nhi', 0, 'Quận Thủ Đức', 1, '2006-01-28', 'huongnhi28012006@gmail.com', 'avatar.jpg', 'huongnhi28012006'),
('0566825415', 'Thành Thiện', 1, 'Quận 1', 0, '1982-10-27', 'thanhthien27101982@gmail.com', 'avatar.jpg', 'thanhthien27101982'),
('0582611553', 'Việt Duy', -1, 'Quận Tân Phú', 0, '1983-01-17', 'vietduy17011983@gmail.com', 'avatar.jpg', 'vietduy17011983'),
('0590627170', 'Anh Tài', -1, 'Quận Phú Nhuận', 0, '2008-06-27', 'anhtai27062008@gmail.com', 'avatar.jpg', 'anhtai27062008'),
('0599978952', 'Mai Ly', -1, 'Quận Bình Tân', 1, '1981-04-06', 'maily06041981@gmail.com', 'avatar.jpg', 'maily06041981'),
('0602921391', 'Thúy Vi', 0, 'Quận Gò Vấp', 1, '1997-12-07', 'thuyvi07121997@gmail.com', 'avatar.jpg', 'thuyvi07121997'),
('0604310327', 'Sơn Hà', -1, 'Quận 8', 0, '1997-02-18', 'sonha18021997@gmail.com', 'avatar.jpg', 'sonha18021997'),
('0616198518', 'Thụy Trinh', 1, 'Quận 7', 1, '2014-03-21', 'thuytrinh21032014@gmail.com', 'avatar.jpg', 'thuytrinh21032014'),
('0620819644', 'Hà Mi', 1, 'Huyện Nhà Bè', 1, '1989-08-25', 'hami25081989@gmail.com', 'avatar.jpg', 'hami25081989'),
('0633517838', 'Nhật Bảo Long', 1, 'Quận Bình Tân', 0, '2009-12-09', 'nhatbaolong09122009@gmail.com', 'avatar.jpg', 'nhatbaolong09122009'),
('0648741242', 'Mai Liên', -1, 'Quận 10', 1, '1991-02-19', 'mailien19021991@gmail.com', 'avatar.jpg', 'mailien19021991'),
('0662365093', 'Quốc Phong', 1, 'Quận 7', 0, '2015-06-14', 'quocphong14062015@gmail.com', 'avatar.jpg', 'quocphong14062015'),
('0674080432', 'Hữu Hiệp', -1, 'Quận 10', 0, '2003-11-18', 'huuhiep18112003@gmail.com', 'avatar.jpg', 'huuhiep18112003'),
('0680310118', 'Ðông Vy', 0, 'Quận 3', 1, '2006-01-04', 'dongvy04012006@gmail.com', 'avatar.jpg', 'dongvy04012006'),
('0680984062', 'Ngọc Thy', 1, 'Quận 9', 1, '1980-09-13', 'ngocthy13091980@gmail.com', 'avatar.jpg', 'ngocthy13091980'),
('0694390344', 'Kỳ Duyên', -1, 'Quận Gò Vấp', 1, '2013-09-04', 'kyduyen04092013@gmail.com', 'avatar.jpg', 'kyduyen04092013'),
('0704819286', 'Hoàng Mai', -1, 'Quận Bình Thạnh', 1, '1988-12-02', 'hoangmai02121988@gmail.com', 'avatar.jpg', 'hoangmai02121988'),
('0708115828', 'Mai Châu', 1, 'Quận 9', 1, '1992-07-23', 'maichau23071992@gmail.com', 'avatar.jpg', 'maichau23071992'),
('0716795009', 'Hoài Thương', 0, 'Quận Gò Vấp', 1, '2003-05-13', 'hoaithuong13052003@gmail.com', 'avatar.jpg', 'hoaithuong13052003'),
('0717255586', 'Hồng Vinh', 0, 'Quận 4', 0, '2003-04-21', 'hongvinh21042003@gmail.com', 'avatar.jpg', 'hongvinh21042003'),
('0725478898', 'Thảo Uyên', 0, 'Quận Bình Thạnh', 1, '2010-04-20', 'thaouyen20042010@gmail.com', 'avatar.jpg', 'thaouyen20042010'),
('0725946115', 'Tuyết Nga', 0, 'Huyện Hóc Môn', 1, '1983-03-02', 'tuyetnga02031983@gmail.com', 'avatar.jpg', 'tuyetnga02031983'),
('0729564969', 'Thùy Dương', 0, 'Quận Gò Vấp', 1, '1980-11-19', 'thuyduong19111980@gmail.com', 'avatar.jpg', 'thuyduong19111980'),
('0737803560', 'Huy Tường', 0, 'Quận Gò Vấp', 0, '1996-05-10', 'huytuong10051996@gmail.com', 'avatar.jpg', 'huytuong10051996'),
('0747135210', 'Thu Minh', 1, 'Huyện Cần Giờ', 1, '1993-12-08', 'thuminh08121993@gmail.com', 'avatar.jpg', 'thuminh08121993'),
('0757708371', 'Quang Thịnh', -1, 'Quận 1', 0, '1995-07-28', 'quangthinh28071995@gmail.com', 'avatar.jpg', 'quangthinh28071995'),
('0761857656', 'Ngọc Khanh', 0, 'Quận 4', 1, '1980-08-10', 'ngockhanh10081980@gmail.com', 'avatar.jpg', 'ngockhanh10081980'),
('0774703850', 'Hà Nhi', -1, 'Huyện Củ Chi', 1, '1980-01-21', 'hanhi21011980@gmail.com', 'avatar.jpg', 'hanhi21011980'),
('0792247497', 'Trung Thực', 0, 'Quận 3', 0, '1982-03-07', 'trungthuc07031982@gmail.com', 'avatar.jpg', 'trungthuc07031982'),
('0792963960', 'Diễm Thảo', 1, 'Quận Gò Vấp', 1, '1986-10-17', 'diemthao17101986@gmail.com', 'avatar.jpg', 'diemthao17101986'),
('0798800652', 'Hồng Phúc', 1, 'Quận 4', 1, '1983-11-20', 'hongphuc20111983@gmail.com', 'avatar.jpg', 'hongphuc20111983'),
('0804729998', 'Bích Hạnh', -1, 'Quận 10', 1, '1998-09-28', 'bichhanh28091998@gmail.com', 'avatar.jpg', 'bichhanh28091998'),
('0810747737', 'Mộng Vi', -1, 'Huyện Nhà Bè', 1, '2011-10-21', 'mongvi21102011@gmail.com', 'avatar.jpg', 'mongvi21102011'),
('0821681794', 'Uyên My', 1, 'Quận 4', 1, '1992-07-07', 'uyenmy07071992@gmail.com', 'avatar.jpg', 'uyenmy07071992'),
('0825779909', 'Thiên Kim', 0, 'Quận Bình Thạnh', 1, '1989-08-14', 'thienkim14081989@gmail.com', 'avatar.jpg', 'thienkim14081989'),
('0873218013', 'Ðông Nghi', -1, 'Huyện Củ Chi', 1, '1980-01-14', 'dongnghi14011980@gmail.com', 'avatar.jpg', 'dongnghi14011980'),
('0875315975', 'Thành Ân', -1, 'Quận 5', 0, '1982-11-26', 'thanhan26111982@gmail.com', 'avatar.jpg', 'thanhan26111982'),
('0904219538', 'Thúy Kiều', -1, 'Quận Tân Phú', 1, '1993-08-20', 'thuykieu20081993@gmail.com', 'avatar.jpg', 'thuykieu20081993'),
('0914388662', 'Sơn Hải', -1, 'Huyện Cần Giờ', 0, '1987-02-13', 'sonhai13021987@gmail.com', 'avatar.jpg', 'sonhai13021987'),
('0914618619', 'Tâm Nguyệt', 1, 'Quận 6', 1, '1989-05-09', 'tamnguyet09051989@gmail.com', 'avatar.jpg', 'tamnguyet09051989'),
('0925176349', 'Cát Tường', 1, 'Huyện Cần Giờ', 0, '1983-06-02', 'cattuong02061983@gmail.com', 'avatar.jpg', 'cattuong02061983'),
('0941114636', 'Hữu Hoàng', -1, 'Quận 7', 0, '1991-07-20', 'huuhoang20071991@gmail.com', 'avatar.jpg', 'huuhoang20071991'),
('0941734122', 'Nguyệt Hồng', -1, 'Quận 2', 1, '1981-09-09', 'nguyethong09091981@gmail.com', 'avatar.jpg', 'nguyethong09091981'),
('0955157851', 'Giang Lam', 1, 'Quận 12', 0, '1980-05-19', 'gianglam19051980@gmail.com', 'avatar.jpg', 'gianglam19051980'),
('0962278285', 'Dạ Yến', 0, 'Quận 4', 1, '2007-12-22', 'dayen22122007@gmail.com', 'avatar.jpg', 'dayen22122007'),
('0972005792', 'Quốc Tiến', 1, 'Quận Phú Nhuận', 0, '1997-07-11', 'quoctien11071997@gmail.com', 'avatar.jpg', 'quoctien11071997'),
('0975948805', 'Thường Xuân', 1, 'Quận 5', 1, '2011-10-19', 'thuongxuan19102011@gmail.com', 'avatar.jpg', 'thuongxuan19102011'),
('0977912094', 'Ngọc Phụng', 0, 'Quận Tân Phú', 1, '2011-02-04', 'ngocphung04022011@gmail.com', 'avatar.jpg', 'ngocphung04022011'),
('0978757744', 'Việt Chính', 1, 'Quận 5', 0, '2015-10-28', 'vietchinh28102015@gmail.com', 'avatar.jpg', 'vietchinh28102015'),
('0980969584', 'Tuyết Hồng', -1, 'Quận 3', 1, '1993-03-26', 'tuyethong26031993@gmail.com', 'avatar.jpg', 'tuyethong26031993'),
('0985576457', 'Bích Hạnh', 1, 'Quận 2', 1, '1985-06-25', 'bichhanh25061985@gmail.com', 'avatar.jpg', 'bichhanh25061985'),
('0994563314', 'Nhật Hòa', 1, 'Quận 5', 0, '2007-06-13', 'nhathoa13062007@gmail.com', 'avatar.jpg', 'nhathoa13062007'),
('0999999999', 'Khắc Triệu', 1, 'Quận 10', 0, '2009-09-06', 'khactrieu06092009@gmail.com', 'avatar.jpg', '123456'),
('1234567890', 'admin', 1, 'Quận 1', 1, '2001-01-01', 'admin@gmail.com', 'admin.jpg', 'admin');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `admin_account`
--
ALTER TABLE `admin_account`
  ADD PRIMARY KEY (`username`);

--
-- Chỉ mục cho bảng `class`
--
ALTER TABLE `class`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `post`
--
ALTER TABLE `post`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `rate`
--
ALTER TABLE `rate`
  ADD PRIMARY KEY (`classID`);

--
-- Chỉ mục cho bảng `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tutor`
--
ALTER TABLE `tutor`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`phoneNumber`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
