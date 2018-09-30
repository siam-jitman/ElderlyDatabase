-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 30, 2018 at 08:29 PM
-- Server version: 10.1.25-MariaDB
-- PHP Version: 5.6.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `elderly`
--

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `idCategory` int(11) NOT NULL COMMENT 'รหัสของประเภทเนื้อหา',
  `nameCategory` text COLLATE utf8_unicode_ci NOT NULL COMMENT 'ชื่อของประเภทเนื้อหา'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='ตารางประเภทเนื้อหา';

-- --------------------------------------------------------

--
-- Table structure for table `content`
--

CREATE TABLE `content` (
  `idContent` int(11) NOT NULL COMMENT 'รหัสของเนื้อหาประเภทวิดีโอ',
  `nameContentVideo` text COLLATE utf8_unicode_ci NOT NULL COMMENT 'รหัสของเนื้อหาประเภทวิดีโอ',
  `detailContentVdeo` text COLLATE utf8_unicode_ci NOT NULL COMMENT 'รหัสของเนื้อหาประเภทวิดีโอ',
  `urlContentVideo` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT 'รหัสของเนื้อหาประเภทวิดีโอ',
  `contentType` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT 'ประเภทการแสดงเนื้อหา',
  `idCategory` int(11) NOT NULL DEFAULT '1' COMMENT 'รหัสประเภทเนื้อหา',
  `idMember` int(11) NOT NULL COMMENT 'รหัสสมาชิกเจ้าของเนื้อหา',
  `activeStatus` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'สถานะการโชว์เนื้อหา',
  `createTime` int(11) NOT NULL COMMENT 'เวลาที่สร้างเนื้อหา',
  `updateTime` int(11) NOT NULL COMMENT 'เวลาที่แก้ไขเนื้อหาล่าสุด'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='ตารางเนื้อหาประเภทวิดีโอ';

--
-- Dumping data for table `content`
--

INSERT INTO `content` (`idContent`, `nameContentVideo`, `detailContentVdeo`, `urlContentVideo`, `contentType`, `idCategory`, `idMember`, `activeStatus`, `createTime`, `updateTime`) VALUES
(3, '1111111111', '11111111111', '1111111111', 'video', 1, 1, 0, 123456, 123456),
(4, '1111111111', '11111111111', '1111111111', 'image', 1, 1, 0, 123456, 123456),
(5, '1111111111', '11111111111', '1111111111', 'EPUB3', 1, 1, 0, 123456, 123456),
(6, '1111111111', '11111111111', '1111111111', 'image3D', 1, 1, 0, 123456, 123456);

-- --------------------------------------------------------

--
-- Table structure for table `image`
--

CREATE TABLE `image` (
  `idImage` int(11) NOT NULL COMMENT 'รหัสรูปภาพของเนื้อหา',
  `filenameImage` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT 'ชื่อไฟล์รูปภาพของเนื้อหา',
  `idContent` int(11) NOT NULL COMMENT 'รหัสของเนื้อหา'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='ตารางรูปภาพของเนื้อหา';

-- --------------------------------------------------------

--
-- Table structure for table `member`
--

CREATE TABLE `member` (
  `idMember` int(11) NOT NULL COMMENT 'รหัสสมาชิก',
  `usernameMember` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT 'ชื่อเข้าใช้งานสมาชิก',
  `passwordMember` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT 'รหัสเข้าใช้งานสมาชิก',
  `nameMember` text COLLATE utf8_unicode_ci NOT NULL COMMENT 'ชื่อสมาชิก',
  `addressMember` text COLLATE utf8_unicode_ci NOT NULL COMMENT 'ที่อยู่สมาชิก',
  `genderMember` tinyint(4) NOT NULL COMMENT 'เพศสมาชิก',
  `birthdayMember` int(11) NOT NULL COMMENT 'วันเกิดสมาชิก',
  `telMember` text COLLATE utf8_unicode_ci NOT NULL COMMENT 'เบอร์ติดต่อสมาชิก',
  `emailMember` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT 'อีเมลล์สมาชิก',
  `imageMember` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT 'ชื่อไฟล์รูปโปรไฟล์ของสมาชิก',
  `roleMember` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'member'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='ตารางสมาชิก';

-- --------------------------------------------------------

--
-- Table structure for table `system`
--

CREATE TABLE `system` (
  `idSystem` int(11) NOT NULL,
  `userKeySystem` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `nameOwnerSystem` text COLLATE utf8_unicode_ci NOT NULL,
  `createDateSystem` int(11) NOT NULL,
  `roleSystem` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `update_content`
--

CREATE TABLE `update_content` (
  `idContent` int(11) NOT NULL COMMENT 'รหัสของเนื้อหาประเภทวิดีโอ',
  `nameContentVideo` text COLLATE utf8_unicode_ci NOT NULL COMMENT 'รหัสของเนื้อหาประเภทวิดีโอ',
  `detailContentVdeo` text COLLATE utf8_unicode_ci NOT NULL COMMENT 'รหัสของเนื้อหาประเภทวิดีโอ',
  `urlContentVideo` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT 'รหัสของเนื้อหาประเภทวิดีโอ',
  `contentType` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT 'ประเภทการแสดงเนื้อหา',
  `idCategory` int(11) NOT NULL DEFAULT '1' COMMENT 'รหัสประเภทเนื้อหา',
  `idMember` int(11) NOT NULL COMMENT 'รหัสสมาชิกเจ้าของเนื้อหา',
  `activeStatus` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'สถานะการโชว์เนื้อหา',
  `createTime` int(11) NOT NULL COMMENT 'เวลาที่สร้างเนื้อหา',
  `updateTime` int(11) NOT NULL COMMENT 'เวลาที่แก้ไขเนื้อหาล่าสุด'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='ตารางเนื้อหาประเภทวิดีโอ';

--
-- Dumping data for table `update_content`
--

INSERT INTO `update_content` (`idContent`, `nameContentVideo`, `detailContentVdeo`, `urlContentVideo`, `contentType`, `idCategory`, `idMember`, `activeStatus`, `createTime`, `updateTime`) VALUES
(3, '1111111111', '11111111111', '1111111111', 'video', 1, 1, 0, 123456, 123456),
(4, '1111111111', '11111111111', '1111111111', 'image', 1, 1, 0, 123456, 123456),
(5, '1111111111', '11111111111', '1111111111', 'EPUB3', 1, 1, 0, 123456, 123456),
(6, '1111111111', '11111111111', '1111111111', 'image3D', 1, 1, 0, 123456, 123456);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`idCategory`);

--
-- Indexes for table `content`
--
ALTER TABLE `content`
  ADD PRIMARY KEY (`idContent`);

--
-- Indexes for table `image`
--
ALTER TABLE `image`
  ADD PRIMARY KEY (`idImage`);

--
-- Indexes for table `member`
--
ALTER TABLE `member`
  ADD PRIMARY KEY (`idMember`);

--
-- Indexes for table `system`
--
ALTER TABLE `system`
  ADD PRIMARY KEY (`idSystem`);

--
-- Indexes for table `update_content`
--
ALTER TABLE `update_content`
  ADD PRIMARY KEY (`idContent`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `idCategory` int(11) NOT NULL AUTO_INCREMENT COMMENT 'รหัสของประเภทเนื้อหา';
--
-- AUTO_INCREMENT for table `content`
--
ALTER TABLE `content`
  MODIFY `idContent` int(11) NOT NULL AUTO_INCREMENT COMMENT 'รหัสของเนื้อหาประเภทวิดีโอ', AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `image`
--
ALTER TABLE `image`
  MODIFY `idImage` int(11) NOT NULL AUTO_INCREMENT COMMENT 'รหัสรูปภาพของเนื้อหา';
--
-- AUTO_INCREMENT for table `member`
--
ALTER TABLE `member`
  MODIFY `idMember` int(11) NOT NULL AUTO_INCREMENT COMMENT 'รหัสสมาชิก', AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `system`
--
ALTER TABLE `system`
  MODIFY `idSystem` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `update_content`
--
ALTER TABLE `update_content`
  MODIFY `idContent` int(11) NOT NULL AUTO_INCREMENT COMMENT 'รหัสของเนื้อหาประเภทวิดีโอ', AUTO_INCREMENT=7;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
