-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 22, 2018 at 12:29 PM
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
  `imageContent` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `nameContent` text COLLATE utf8_unicode_ci NOT NULL COMMENT 'รหัสของเนื้อหาประเภท',
  `scriptContent` text COLLATE utf8_unicode_ci NOT NULL,
  `detailContent` text COLLATE utf8_unicode_ci NOT NULL COMMENT 'รหัสของเนื้อหาประเภท',
  `urlContent` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT 'รหัสของเนื้อหาประเภท',
  `fileEBookContent` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `contentType` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT 'ประเภทการแสดงเนื้อหา',
  `idCategory` int(11) NOT NULL DEFAULT '1' COMMENT 'รหัสประเภทเนื้อหา',
  `idMember` int(11) NOT NULL COMMENT 'รหัสสมาชิกเจ้าของเนื้อหา',
  `activeStatus` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'สถานะการโชว์เนื้อหา',
  `createTime` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT 'เวลาที่สร้างเนื้อหา',
  `updateTime` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT 'เวลาที่แก้ไขเนื้อหาล่าสุด'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='ตารางเนื้อหาประเภทวิดีโอ';

--
-- Dumping data for table `content`
--

INSERT INTO `content` (`idContent`, `imageContent`, `nameContent`, `scriptContent`, `detailContent`, `urlContent`, `fileEBookContent`, `contentType`, `idCategory`, `idMember`, `activeStatus`, `createTime`, `updateTime`) VALUES
(3, '', '1111111111', '', '11111111111', '1111111111', '', 'video', 1, 1, 0, '0000-00-00', '0000-00-00'),
(4, '', '1111111111', '', '11111111111', '1111111111', '', 'image', 9, 1, 0, '0000-00-00', '0000-00-00'),
(5, '', '1111111111', '', '11111111111', '1111111111', '', 'EPUB3', 1, 1, 0, '0000-00-00', '0000-00-00'),
(6, '', '1111111111', '', '11111111111', '1111111111', '', 'image3D', 8, 1, 0, '0000-00-00', '0000-00-00'),
(7, '1542482270663_80rbsmcdgjolu498n.png', 'ชื่อเนื้อหาxxxxxxxx', 'รายละเอียดโดยย่อxxxxxxxxx', '<blockquote><p>รายละเอียดโดยย่อรายละเอียดโดยย่อรายละเอียดโดยย่อรายละเอียดโดยย่อรายละเอียดโดยย่อรายละเอียดโดยย่อรายละเอียดโดยย่อรายละเอียดโดยย่อรายละเอียดโดยย่อรายละเอียดโดยย่อรายละเอียดโดยย่อรายละเอียดโดยย่อรายละเอียดโดยย่อรายละเอียดโดยย่อรายละเอียดโดยย่อรายละเอียดโดยย่อรายละเอียดโดยย่อรายละเอียดโดยย่อรายละเอียดโดยย่อรายละเอียดโดยย่อรายละเอียดโดยย่อรายละเอียดโดยย่อรายละเอียดโดยย่อรายละเอียดโดยย่อรายละเอียดโดยย่อรายละเอียดโดยย่อ</p></blockquote><ol><li>รายละเอียดโดยย่อ1</li><li>รายละเอียดโดยย่อ2</li><li>รายละเอียดโดยย่อ3</li><li>รายละเอียดโดยย่อ4</li></ol><figure class=\"image\"><img src=\"http://localhost:3000/public/image/1542482267279_80rbsmcdgjolu46mo.jpg\"></figure>', '', '', 'image', 2, 1, 0, '0000-00-00', '0000-00-00'),
(8, '1542482551555_80rbsmr64jolua9z9.png', 'ชื่อเนื้อหา', 'รายละเอียดโดยย่อ', '<p>รายละเอียดโดยย่อรายละเอียดโดยย่อรายละเอียดโดยย่อรายละเอียดโดยย่อรายละเอียดโดยย่อรายละเอียดโดยย่อรายละเอียดโดยย่อ</p>', '', '', 'image', 2, 1, 0, '0000-00-00', '0000-00-00'),
(9, '1542482702797_80rbsmr64joludiod.png', 'asdsad', 'asdsad', '<p>asdsad</p>', '', '', 'image', 2, 1, 0, 'Sun Nov 18 2018 02:25:02 GMT+0700 (SE Asia Standard Time)', 'Sun Nov 18 2018 02:25:02 GMT+0700 (SE Asia Standard Time)'),
(10, '1542485939052_80rbsmvccjolwavsd.jpg', 'video', 'รายละเอียดโดยย่อ', '<p>รายละเอียดเนื้อหา</p>', 'https://www.youtube.com/watch?v=sDOSsdD0YK8', '', 'video', 1, 1, 0, '1542485939055', '1542485939055'),
(11, '1542489018556_80rbsmqw8joly4vy4.jpg', 'ebook', 'รายละเอียดโดยย่อ', '<p>รายละเอียดโดยย่อ</p>', '', 'undefined', 'EBook', 4, 1, 0, 'Sun Nov 18 2018 04:10:18 GMT+0700 (SE Asia Standard Time)', 'Sun Nov 18 2018 04:10:18 GMT+0700 (SE Asia Standard Time)'),
(12, '1542633609135_80rbsmdh0jooc7yr3.jpg', 'image', 'imageimageimageimageimageimageimageimageimage', '<blockquote><p>imageimageimageimageimageimageimageimageimageimageimageimageimageimageimageimageimageimageimageimageimageimageimageimageimageimageimageimageimageimageimageimageimageimageimageimageimageimageimageimageimageimageimageimageimageimageimageimageimageimageimageimageimageimageimageimageimageimageimageimageimageimageimageimageimageimageimageimageimageimageimageimagei</p></blockquote><ol><li>image1</li><li>image2</li><li>image3</li></ol><figure class=\"image\"><img src=\"http://localhost:3000/public/image/1542633605050_80rbsmdh0jooc7vln.jpg\"></figure>', '', '', 'image', 2, 1, 0, 'Mon Nov 19 2018 20:20:09 GMT+0700 (SE Asia Standard Time)', 'Mon Nov 19 2018 20:20:09 GMT+0700 (SE Asia Standard Time)'),
(13, '1542633917937_80rbsmdh0joocel0x.png', 'image2', 'image', '<p><strong>imageimageimageimageimageimageimageimageimage</strong></p>', '', '', 'image', 2, 1, 0, 'Mon Nov 19 2018 20:25:17 GMT+0700 (SE Asia Standard Time)', 'Mon Nov 19 2018 20:25:17 GMT+0700 (SE Asia Standard Time)');

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

--
-- Dumping data for table `member`
--

INSERT INTO `member` (`idMember`, `usernameMember`, `passwordMember`, `nameMember`, `addressMember`, `genderMember`, `birthdayMember`, `telMember`, `emailMember`, `imageMember`, `roleMember`) VALUES
(1, 'test', 'password', 'test test', '123/123 test test test', 1, 1538797966, '0123456789', 'mail.mail@mail.com', '', 'member'),
(2, 'admin', 'admin', '', '', 0, 0, '', '', '', 'admin');

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
  MODIFY `idContent` int(11) NOT NULL AUTO_INCREMENT COMMENT 'รหัสของเนื้อหาประเภทวิดีโอ', AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `image`
--
ALTER TABLE `image`
  MODIFY `idImage` int(11) NOT NULL AUTO_INCREMENT COMMENT 'รหัสรูปภาพของเนื้อหา';
--
-- AUTO_INCREMENT for table `member`
--
ALTER TABLE `member`
  MODIFY `idMember` int(11) NOT NULL AUTO_INCREMENT COMMENT 'รหัสสมาชิก', AUTO_INCREMENT=3;
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
