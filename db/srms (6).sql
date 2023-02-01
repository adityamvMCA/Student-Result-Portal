-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 05, 2021 at 08:00 AM
-- Server version: 10.4.20-MariaDB
-- PHP Version: 8.0.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `srms`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `UserName` varchar(100) NOT NULL,
  `Password` varchar(100) NOT NULL,
  `updationDate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `UserName`, `Password`, `updationDate`) VALUES
(1, 'admin', '202cb962ac59075b964b07152d234b70', '2021-08-29 14:55:25');

-- --------------------------------------------------------

--
-- Table structure for table `tblclasses`
--

CREATE TABLE `tblclasses` (
  `id` int(11) NOT NULL,
  `ClassName` varchar(80) DEFAULT NULL,
  `ClassNameNumeric` int(4) NOT NULL,
  `Section` varchar(5) NOT NULL,
  `CreationDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblclasses`
--

INSERT INTO `tblclasses` (`id`, `ClassName`, `ClassNameNumeric`, `Section`, `CreationDate`, `UpdationDate`) VALUES
(1, '1st Standard', 1, 'A', '2021-08-25 19:21:02', '2021-09-04 14:31:16'),
(2, '1st Standard', 2, 'B', '2021-09-04 14:27:09', '2021-09-04 14:31:36'),
(3, '2nd  Standard', 1, 'A', '2021-09-04 14:27:31', '2021-09-04 14:31:53'),
(4, '2nd  Standard', 2, 'B', '2021-09-04 14:27:44', '2021-09-04 14:32:04'),
(5, '3rd  Standard', 1, 'A', '2021-09-04 14:27:58', '2021-09-04 14:32:16'),
(6, '3rd   Standard', 2, 'B', '2021-09-04 14:28:10', '2021-09-04 14:32:29'),
(7, '4th Standard', 1, 'A', '2021-09-04 14:29:57', '0000-00-00 00:00:00'),
(8, '4th Standard', 2, 'B', '2021-09-04 14:30:28', '0000-00-00 00:00:00'),
(9, '5th Standard', 1, 'A', '2021-09-04 14:30:43', '0000-00-00 00:00:00'),
(10, '5th Standard', 2, 'B', '2021-09-04 14:33:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `tblresult`
--

CREATE TABLE `tblresult` (
  `id` int(11) NOT NULL,
  `StudentId` int(11) DEFAULT NULL,
  `ClassId` int(11) DEFAULT NULL,
  `SubjectId` int(11) DEFAULT NULL,
  `marks` int(11) DEFAULT NULL,
  `PostingDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblresult`
--

INSERT INTO `tblresult` (`id`, `StudentId`, `ClassId`, `SubjectId`, `marks`, `PostingDate`, `UpdationDate`) VALUES
(68, 3, 1, 8, 50, '2021-09-05 05:35:23', NULL),
(69, 3, 1, 9, 58, '2021-09-05 05:35:23', NULL),
(70, 3, 1, 7, 63, '2021-09-05 05:35:24', NULL),
(71, 3, 1, 12, 54, '2021-09-05 05:35:24', NULL),
(72, 3, 1, 10, 50, '2021-09-05 05:35:24', NULL),
(73, 3, 1, 11, 54, '2021-09-05 05:35:24', NULL),
(74, 22, 4, 8, 56, '2021-09-05 05:38:39', NULL),
(75, 22, 4, 7, 52, '2021-09-05 05:38:39', NULL),
(76, 22, 4, 12, 48, '2021-09-05 05:38:39', NULL),
(77, 22, 4, 13, 56, '2021-09-05 05:38:39', NULL),
(78, 22, 4, 10, 65, '2021-09-05 05:38:39', NULL),
(79, 22, 4, 11, 36, '2021-09-05 05:38:39', NULL),
(80, 26, 5, 8, 56, '2021-09-05 05:39:00', NULL),
(81, 26, 5, 9, 45, '2021-09-05 05:39:00', NULL),
(82, 26, 5, 7, 65, '2021-09-05 05:39:00', NULL),
(83, 26, 5, 12, 35, '2021-09-05 05:39:00', NULL),
(84, 26, 5, 10, 46, '2021-09-05 05:39:00', NULL),
(85, 26, 5, 11, 58, '2021-09-05 05:39:00', NULL),
(86, 42, 8, 8, 65, '2021-09-05 05:40:03', NULL),
(87, 42, 8, 7, 58, '2021-09-05 05:40:03', NULL),
(88, 42, 8, 12, 65, '2021-09-05 05:40:03', NULL),
(89, 42, 8, 13, 52, '2021-09-05 05:40:03', NULL),
(90, 42, 8, 10, 56, '2021-09-05 05:40:03', NULL),
(91, 42, 8, 11, 80, '2021-09-05 05:40:03', NULL),
(92, 48, 9, 8, 56, '2021-09-05 05:41:40', NULL),
(93, 48, 9, 9, 60, '2021-09-05 05:41:41', NULL),
(94, 48, 9, 7, 59, '2021-09-05 05:41:41', NULL),
(95, 48, 9, 12, 56, '2021-09-05 05:41:41', NULL),
(96, 48, 9, 10, 55, '2021-09-05 05:41:41', NULL),
(97, 48, 9, 11, 89, '2021-09-05 05:41:41', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblstudents`
--

CREATE TABLE `tblstudents` (
  `StudentId` int(11) NOT NULL,
  `StudentName` varchar(100) NOT NULL,
  `RollId` varchar(100) NOT NULL,
  `StudentEmail` varchar(100) NOT NULL,
  `Gender` varchar(10) NOT NULL,
  `DOB` varchar(100) NOT NULL,
  `ClassId` int(11) NOT NULL,
  `RegDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `Status` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblstudents`
--

INSERT INTO `tblstudents` (`StudentId`, `StudentName`, `RollId`, `StudentEmail`, `Gender`, `DOB`, `ClassId`, `RegDate`, `UpdationDate`, `Status`) VALUES
(3, 'Basavaraj Annigeri', '101', 'basu@gmail.com', 'Male', '2021-08-06', 1, '2021-08-25 19:47:39', '2021-09-05 03:16:26', 1),
(4, 'Abhilash K', '102', 'abhilashk@gmail.com', 'Male', '2000-01-01', 1, '2021-09-04 14:39:47', '2021-09-04 14:52:17', 1),
(5, 'Bhimu L', '103', 'bhimu@gmail.com', 'Male', '2017-01-04', 1, '2021-09-04 14:42:29', '2021-09-04 14:52:29', 1),
(6, 'Damachi', '104', 'damachi@gmail.com', 'Female', '2017-10-04', 1, '2021-09-04 14:44:14', '2021-09-04 14:52:42', 1),
(7, 'Swati L', '105', 'swati@gmail.com', 'Female', '2017-07-02', 1, '2021-09-04 14:45:52', '2021-09-04 14:53:03', 1),
(10, 'Veeresh A', '106', 'veeresh@gmail.com', 'Male', '2017-05-13', 2, '2021-09-04 14:48:38', '2021-09-04 14:53:51', 1),
(11, 'Pooja S', '107', 'pooja@gmail.com', 'Female', '2017-05-04', 2, '2021-09-04 14:54:41', NULL, 1),
(12, 'Manju V', '108', 'manju@gmail.com', 'Male', '2017-06-04', 2, '2021-09-04 14:55:27', NULL, 1),
(13, 'Mantu A', '109', 'mantu@gmail.com', 'Male', '2017-12-20', 2, '2021-09-04 14:56:20', NULL, 1),
(14, 'Basaamma H', '110', 'basaamma@gmail.com', 'Female', '2017-12-04', 2, '2021-09-04 14:57:37', NULL, 1),
(15, 'Parimala N', '201', '.pari@gmail.com', 'Female', '2016-01-01', 3, '2021-09-04 14:59:01', NULL, 1),
(16, 'Parveen Z', '202', 'par@gmail.com', 'Female', '2016-02-01', 3, '2021-09-04 14:59:41', NULL, 1),
(17, 'Pradeep X', '203', 'pradeep@gmail.com', 'Male', '2016-03-01', 3, '2021-09-04 15:00:28', NULL, 1),
(19, 'Bablu N', '204', 'bb@gmail.com', 'Male', '2016-10-04', 3, '2021-09-04 15:03:17', NULL, 1),
(20, 'Chetan M', '205', 'chetan@gmail.com', 'Male', '2016-06-23', 3, '2021-09-04 15:05:42', NULL, 1),
(21, 'Channu H', '206', 'chann@gmail.com', 'Male', '2016-05-10', 4, '2021-09-04 15:06:40', NULL, 1),
(22, 'Ashwini G', '207', 'ash@gmail.com', 'Female', '2016-02-03', 4, '2021-09-04 15:07:40', NULL, 1),
(23, 'Shankar A', '208', 'shank@gmail.com', 'Male', '2016-09-20', 4, '2021-09-04 15:08:28', NULL, 1),
(24, 'Swati K', '209', 'swati@gmail.com', 'Female', '2016-10-07', 4, '2021-09-04 15:10:55', NULL, 1),
(25, 'Kiran T', '210', 'kiran@gmail.com', 'Male', '2016-10-19', 4, '2021-09-04 15:11:38', NULL, 1),
(26, 'Praveen N', '301', 'praveen@gmail.com', 'Male', '2016-05-04', 5, '2021-09-04 15:13:16', NULL, 1),
(27, 'Ravi D', '302', 'ravi@gmail.com', 'Male', '2015-05-13', 5, '2021-09-04 15:13:58', NULL, 1),
(28, 'Pajju C', '303', 'pajju@gmail.com', 'Male', '2015-06-25', 5, '2021-09-04 15:14:33', NULL, 1),
(29, 'anannya M', '304', 'anannya@gmail.com', 'Female', '2015-06-17', 5, '2021-09-04 15:15:40', NULL, 1),
(30, 'Vikas H', '305', 'vikas@gmail.com', 'Male', '2015-01-07', 5, '2021-09-04 15:16:07', NULL, 1),
(31, 'Shruti D', '306', 'shruti@gmail.com', 'Female', '2015-02-04', 6, '2021-09-04 15:16:43', NULL, 1),
(32, 'Divya  SD', '307', 'divay@gmail.com', 'Female', '2015-06-25', 6, '2021-09-04 15:17:30', NULL, 1),
(33, 'Kamala K', '308', 'kamala@gmail.com', 'Female', '2015-06-16', 6, '2021-09-04 15:17:54', NULL, 1),
(34, 'Priya L', '309', 'priya@gmail.com', 'Female', '2015-06-20', 6, '2021-09-04 15:18:36', NULL, 1),
(35, 'Ameer Z', '310', 'ameer@gmail.com', 'Male', '2015-12-25', 6, '2021-09-04 15:19:01', NULL, 1),
(36, 'Nimbarak N', '401', 'nim@gmail.com', 'Male', '2014-10-04', 7, '2021-09-04 15:20:37', NULL, 1),
(37, 'Nam deo', '402', 'deo@gmail.com', 'Female', '2014-06-13', 7, '2021-09-04 15:21:11', NULL, 1),
(38, 'Sam K', '403', 'sam@gmail.com', 'Male', '2014-05-15', 7, '2021-09-04 15:21:40', NULL, 1),
(39, 'Kabir', '404', 'kabir@gmail.com', 'Male', '2014-08-16', 7, '2021-09-04 15:22:03', NULL, 1),
(40, 'Devaraj S', '405', 'dev@gmail.com', 'Male', '2014-07-18', 7, '2021-09-04 15:22:49', NULL, 1),
(41, 'Praveen H', '406', 'pavvi@gmail.com', 'Male', '2014-11-12', 8, '2021-09-04 15:27:22', NULL, 1),
(42, 'Virat K', '407', 'virat@gmail.com', 'Male', '2014-11-13', 8, '2021-09-04 15:28:10', NULL, 1),
(43, 'mahi D', '408', 'mahi@gmail.com', 'Male', '2014-05-23', 8, '2021-09-04 15:28:45', NULL, 1),
(44, 'Rahul', '409', 'rahul@gmail.com', 'Male', '2014-07-16', 8, '2021-09-04 15:29:23', NULL, 1),
(45, 'Smriti M', '410', 'sm@gmail.com', 'Female', '2014-06-04', 8, '2021-09-04 15:29:54', NULL, 1),
(46, 'ram', '501', 'ram@gmail.com', 'Male', '2013-01-04', 9, '2021-09-04 15:35:07', NULL, 1),
(47, 'sandeep', '502', 'sandeep@gmail.com', 'Male', '2013-02-04', 9, '2021-09-04 15:37:11', NULL, 1),
(48, 'sagar', '503', 'sagar@gmail.com', 'Male', '2013-03-06', 9, '2021-09-04 15:38:08', NULL, 1),
(49, 'deepa E', '504', 'deepa@gmail.com', 'Female', '2013-06-06', 9, '2021-09-04 15:39:50', NULL, 1),
(50, 'pooja h', '505', 'pooja@gmail.com', 'Female', '2013-07-12', 9, '2021-09-04 15:40:46', '2021-09-04 15:43:38', 1),
(51, 'shahid j', '506', 'shahid@gmail.com', 'Male', '2013-08-25', 10, '2021-09-04 15:41:48', NULL, 1),
(52, 'anand O', '507', 'anand@gmail.com', 'Male', '2013-10-04', 10, '2021-09-04 15:44:43', NULL, 1),
(53, ' vinod J', '508', 'vinod@gmail.com', 'Male', '2013-08-04', 10, '2021-09-04 15:45:31', NULL, 1),
(54, 'Laxmi K', '509', 'laxmi@gmail.com', 'Female', '2013-08-04', 10, '2021-09-04 15:46:26', NULL, 1),
(55, 'vinay C', '510', 'vinay@gmail.com', 'Male', '2013-06-04', 10, '2021-09-04 15:47:02', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tblsubjectcombination`
--

CREATE TABLE `tblsubjectcombination` (
  `id` int(11) NOT NULL,
  `ClassId` int(11) NOT NULL,
  `SubjectId` int(11) NOT NULL,
  `status` int(1) DEFAULT NULL,
  `CreationDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `Updationdate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblsubjectcombination`
--

INSERT INTO `tblsubjectcombination` (`id`, `ClassId`, `SubjectId`, `status`, `CreationDate`, `Updationdate`) VALUES
(99, 1, 7, 1, '2021-09-05 05:21:49', '2021-09-05 05:21:49'),
(100, 1, 8, 1, '2021-09-05 05:21:54', '2021-09-05 05:21:54'),
(101, 1, 9, 1, '2021-09-05 05:21:59', '2021-09-05 05:21:59'),
(102, 1, 10, 1, '2021-09-05 05:22:04', '2021-09-05 05:22:04'),
(103, 1, 11, 1, '2021-09-05 05:22:08', '2021-09-05 05:22:08'),
(104, 1, 12, 1, '2021-09-05 05:22:11', '2021-09-05 05:22:11'),
(105, 2, 7, 1, '2021-09-05 05:22:16', '2021-09-05 05:22:16'),
(106, 2, 8, 1, '2021-09-05 05:22:21', '2021-09-05 05:22:21'),
(107, 2, 10, 1, '2021-09-05 05:22:25', '2021-09-05 05:22:25'),
(108, 2, 11, 1, '2021-09-05 05:22:34', '2021-09-05 05:22:34'),
(109, 2, 12, 1, '2021-09-05 05:22:39', '2021-09-05 05:22:39'),
(110, 2, 13, 1, '2021-09-05 05:22:44', '2021-09-05 05:22:44'),
(111, 3, 7, 1, '2021-09-05 05:23:07', '2021-09-05 05:23:07'),
(112, 3, 8, 1, '2021-09-05 05:23:12', '2021-09-05 05:23:12'),
(113, 3, 9, 1, '2021-09-05 05:23:16', '2021-09-05 05:23:16'),
(114, 3, 10, 1, '2021-09-05 05:23:21', '2021-09-05 05:23:21'),
(115, 3, 11, 1, '2021-09-05 05:23:25', '2021-09-05 05:23:25'),
(116, 3, 12, 1, '2021-09-05 05:23:30', '2021-09-05 05:23:30'),
(117, 4, 7, 1, '2021-09-05 05:23:34', '2021-09-05 05:23:34'),
(118, 4, 8, 1, '2021-09-05 05:23:39', '2021-09-05 05:23:39'),
(119, 4, 10, 1, '2021-09-05 05:23:45', '2021-09-05 05:23:45'),
(120, 4, 11, 1, '2021-09-05 05:23:50', '2021-09-05 05:23:50'),
(121, 4, 12, 1, '2021-09-05 05:23:55', '2021-09-05 05:23:55'),
(122, 4, 13, 1, '2021-09-05 05:24:00', '2021-09-05 05:24:00'),
(123, 5, 7, 1, '2021-09-05 05:25:47', '2021-09-05 05:25:47'),
(124, 5, 8, 1, '2021-09-05 05:25:52', '2021-09-05 05:25:52'),
(125, 5, 9, 1, '2021-09-05 05:25:57', '2021-09-05 05:25:57'),
(126, 5, 10, 1, '2021-09-05 05:26:03', '2021-09-05 05:26:03'),
(127, 5, 11, 1, '2021-09-05 05:26:08', '2021-09-05 05:26:08'),
(128, 5, 12, 1, '2021-09-05 05:26:14', '2021-09-05 05:26:14'),
(129, 6, 7, 1, '2021-09-05 05:26:19', '2021-09-05 05:26:19'),
(130, 6, 8, 1, '2021-09-05 05:26:24', '2021-09-05 05:26:24'),
(131, 6, 10, 1, '2021-09-05 05:26:32', '2021-09-05 05:26:32'),
(132, 6, 11, 1, '2021-09-05 05:26:38', '2021-09-05 05:26:38'),
(133, 6, 12, 1, '2021-09-05 05:26:43', '2021-09-05 05:26:43'),
(134, 6, 13, 1, '2021-09-05 05:26:49', '2021-09-05 05:26:49'),
(135, 7, 7, 1, '2021-09-05 05:27:20', '2021-09-05 05:27:20'),
(136, 7, 8, 1, '2021-09-05 05:27:25', '2021-09-05 05:27:25'),
(137, 7, 9, 1, '2021-09-05 05:27:30', '2021-09-05 05:27:30'),
(138, 7, 10, 1, '2021-09-05 05:27:35', '2021-09-05 05:27:35'),
(139, 7, 11, 1, '2021-09-05 05:27:40', '2021-09-05 05:27:40'),
(140, 7, 12, 1, '2021-09-05 05:27:45', '2021-09-05 05:27:45'),
(141, 8, 7, 1, '2021-09-05 05:27:50', '2021-09-05 05:27:50'),
(142, 8, 8, 1, '2021-09-05 05:27:55', '2021-09-05 05:27:55'),
(143, 8, 10, 1, '2021-09-05 05:27:59', '2021-09-05 05:27:59'),
(144, 8, 11, 1, '2021-09-05 05:28:04', '2021-09-05 05:28:04'),
(145, 8, 12, 1, '2021-09-05 05:28:13', '2021-09-05 05:28:13'),
(146, 8, 13, 1, '2021-09-05 05:28:18', '2021-09-05 05:28:18'),
(147, 9, 7, 1, '2021-09-05 05:29:31', '2021-09-05 05:29:31'),
(148, 9, 8, 1, '2021-09-05 05:29:36', '2021-09-05 05:29:36'),
(149, 9, 9, 1, '2021-09-05 05:30:12', '2021-09-05 05:30:12'),
(150, 9, 10, 1, '2021-09-05 05:30:17', '2021-09-05 05:30:17'),
(151, 9, 11, 1, '2021-09-05 05:30:21', '2021-09-05 05:30:21'),
(152, 9, 12, 1, '2021-09-05 05:30:26', '2021-09-05 05:30:26'),
(153, 10, 7, 1, '2021-09-05 05:30:32', '2021-09-05 05:30:32'),
(154, 10, 8, 1, '2021-09-05 05:30:39', '2021-09-05 05:30:39'),
(155, 10, 10, 1, '2021-09-05 05:30:44', '2021-09-05 05:30:44'),
(156, 10, 11, 1, '2021-09-05 05:30:49', '2021-09-05 05:30:49'),
(157, 10, 12, 1, '2021-09-05 05:30:55', '2021-09-05 05:30:55'),
(158, 10, 13, 1, '2021-09-05 05:31:01', '2021-09-05 05:31:01');

-- --------------------------------------------------------

--
-- Table structure for table `tblsubjects`
--

CREATE TABLE `tblsubjects` (
  `id` int(11) NOT NULL,
  `SubjectName` varchar(100) NOT NULL,
  `SubjectCode` varchar(100) NOT NULL,
  `Creationdate` timestamp NOT NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblsubjects`
--

INSERT INTO `tblsubjects` (`id`, `SubjectName`, `SubjectCode`, `Creationdate`, `UpdationDate`) VALUES
(7, 'Kannada', '101', '2021-08-25 19:43:41', '0000-00-00 00:00:00'),
(8, 'English', '102', '2021-08-25 19:43:53', '0000-00-00 00:00:00'),
(9, 'Hindi', '103', '2021-08-25 19:44:07', '0000-00-00 00:00:00'),
(10, 'Science', '104', '2021-08-25 19:44:19', '0000-00-00 00:00:00'),
(11, 'Social Science', '105', '2021-08-25 19:44:50', '0000-00-00 00:00:00'),
(12, 'Maths', '106', '2021-08-25 19:45:05', '0000-00-00 00:00:00'),
(13, 'sanskrit', 'S101', '2021-09-05 04:51:46', '0000-00-00 00:00:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblclasses`
--
ALTER TABLE `tblclasses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblresult`
--
ALTER TABLE `tblresult`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblstudents`
--
ALTER TABLE `tblstudents`
  ADD PRIMARY KEY (`StudentId`);

--
-- Indexes for table `tblsubjectcombination`
--
ALTER TABLE `tblsubjectcombination`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblsubjects`
--
ALTER TABLE `tblsubjects`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblclasses`
--
ALTER TABLE `tblclasses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tblresult`
--
ALTER TABLE `tblresult`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=98;

--
-- AUTO_INCREMENT for table `tblstudents`
--
ALTER TABLE `tblstudents`
  MODIFY `StudentId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT for table `tblsubjectcombination`
--
ALTER TABLE `tblsubjectcombination`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=159;

--
-- AUTO_INCREMENT for table `tblsubjects`
--
ALTER TABLE `tblsubjects`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
