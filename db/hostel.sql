-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 18, 2024 at 07:21 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hostel`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(300) NOT NULL,
  `reg_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `updation_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `email`, `password`, `reg_date`, `updation_date`) VALUES
(1, 'admin', 'mrafee710@gmail.com', '1234', '2016-04-04 20:31:45', '2024-02-06'),
(2, 'ashwin', 'ashwin@gmail.com', '123456789', '2024-01-10 08:49:45', '0000-00-00');

-- --------------------------------------------------------

--
-- Table structure for table `adminlog`
--

CREATE TABLE `adminlog` (
  `id` int(11) NOT NULL,
  `adminid` int(11) NOT NULL,
  `ip` varbinary(16) NOT NULL,
  `logintime` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `booking`
--

CREATE TABLE `booking` (
  `id` int(11) NOT NULL,
  `roomno` int(11) DEFAULT NULL,
  `seater` int(11) DEFAULT NULL,
  `feespm` int(11) DEFAULT NULL,
  `foodstatus` int(11) DEFAULT NULL,
  `stayfrom` date DEFAULT NULL,
  `duration` int(11) DEFAULT NULL,
  `totalfee` int(10) NOT NULL,
  `feepaid` int(10) NOT NULL DEFAULT 0,
  `feepending` int(10) NOT NULL,
  `paidmonth` int(10) NOT NULL DEFAULT 0,
  `pendingmonth` int(10) NOT NULL,
  `course` varchar(500) DEFAULT NULL,
  `regno` varchar(255) DEFAULT NULL,
  `firstName` varchar(500) DEFAULT NULL,
  `middleName` varchar(500) DEFAULT NULL,
  `lastName` varchar(500) DEFAULT NULL,
  `gender` varchar(250) DEFAULT NULL,
  `contactno` bigint(11) DEFAULT NULL,
  `emailid` varchar(500) DEFAULT NULL,
  `egycontactno` bigint(11) DEFAULT NULL,
  `guardianName` varchar(500) DEFAULT NULL,
  `guardianRelation` varchar(500) DEFAULT NULL,
  `guardianContactno` bigint(11) DEFAULT NULL,
  `corresAddress` varchar(500) DEFAULT NULL,
  `corresCIty` varchar(500) DEFAULT NULL,
  `corresState` varchar(500) DEFAULT NULL,
  `corresPincode` int(11) DEFAULT NULL,
  `pmntAddress` varchar(500) DEFAULT NULL,
  `pmntCity` varchar(500) DEFAULT NULL,
  `pmnatetState` varchar(500) DEFAULT NULL,
  `pmntPincode` int(11) DEFAULT NULL,
  `status` varchar(100) NOT NULL DEFAULT 'ACTIVE',
  `postingDate` timestamp NULL DEFAULT current_timestamp(),
  `updationDate` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `booking`
--

INSERT INTO `booking` (`id`, `roomno`, `seater`, `feespm`, `foodstatus`, `stayfrom`, `duration`, `totalfee`, `feepaid`, `feepending`, `paidmonth`, `pendingmonth`, `course`, `regno`, `firstName`, `middleName`, `lastName`, `gender`, `contactno`, `emailid`, `egycontactno`, `guardianName`, `guardianRelation`, `guardianContactno`, `corresAddress`, `corresCIty`, `corresState`, `corresPincode`, `pmntAddress`, `pmntCity`, `pmnatetState`, `pmntPincode`, `status`, `postingDate`, `updationDate`) VALUES
(37, 201, 2, 6000, 1, '2024-02-06', 7, 56000, 56000, 0, 7, 0, 'Bachelor Of Computer Application', 'Sa21bcar01', 'abdulrahiman', 'Sifarath', 'Ali', 'male', 8888800000, 'chippz@gmail.com', 99999, 'aarro', 'arro', 9900990099, 'Pallikkal(h) bededuka (po) chengala(via) Kasaragod', 'Kasaragod', 'Kerala', 671541, 'Pallikkal(h) bededuka (po) chengala(via) Kasaragod', 'Kasaragod', 'Kerala', 671541, 'VACATED', '2024-02-06 04:23:52', NULL),
(38, 444, 4, 3000, 0, '2024-02-06', 7, 21000, 6000, 15000, 2, 5, 'Bachelor Of Computer Application', 'Sa21bcar04', 'Muhammad', 'Rafeeque', 'P H', 'male', 9778552464, 'muhammadrafee710@gmail.com', 9778552464, 'Habeeb', 'Father', 6282782300, 'Pallikkal(h) bededuka (po) chengala(via) Kasaragod', 'Kasaragod', 'Kerala', 671541, 'Pallikkal(h) bededuka (po) chengala(via) Kasaragod', 'Kasaragod', 'Kerala', 671541, 'VACATED', '2024-02-06 08:19:43', NULL),
(39, 777, 1, 6000, 1, '2024-02-14', 9, 72000, 8000, 64000, 1, 8, 'Master of Computer Application', 'Sa21bcar13', 'Habeeb', 'Rafeeque', 'P.H', 'female', 9999999999, 'uiuiur4@gmail.com', 999999999, 'kumar', 'lover', 8888800011, 'Pallikkal(h) bededuka (po) chengala(via) Kasaragod', 'Kasaragod', 'Kerala', 671541, 'Pallikkal(h) bededuka (po) chengala(via) Kasaragod', 'Kasaragod', 'Kerala', 671541, 'ACTIVE', '2024-02-15 06:28:20', NULL),
(40, 200, 2, 6000, 0, '2024-02-23', 7, 42000, 0, 42000, 0, 7, 'Bachelor Of Computer Application', 'Sa21bcar05', 'Fathima', 'M', 'A', 'female', 8714066474, 'me@gmail.com', 9911991199, 'aarro', 'arro', 999988, 'Pallikkal(h) bededuka (po) chengala(via) Kasaragod', 'Kasaragod', 'Kerala', 671541, 'Pallikkal(h) bededuka (po) chengala(via) Kasaragod', 'Kasaragod', 'Kerala', 671541, 'VACATED', '2024-02-21 08:31:15', NULL),
(41, 132, 5, 2000, 0, '2024-03-02', 5, 10000, 0, 10000, 0, 5, 'Bachelor Of Computer Application', 'Sa21bcar20', 'Ashwin', 'A', 'B', 'male', 999999922, 'rasel@gmail.com', 8888800001, 'aarro', 'arro', 8888800011, 'Pallikkal(h) bededuka (po) chengala(via) Kasaragod', 'Kasaragod', 'Kerala', 671541, 'Pallikkal(h) bededuka (po) chengala(via) Kasaragod', 'Kasaragod', 'Kerala', 671541, 'ACTIVE', '2024-03-02 06:45:30', NULL),
(42, 200, 2, 6000, 1, '2024-03-02', 5, 40000, 0, 40000, 0, 5, 'Bachelor Of Computer Application', 'Sa21bcar50', 'Nikhil', 'M', 'V', 'male', 5666565566, '123456@gmail.com', 8888800001, 'aarro', 'arro', 8888800011, 'Pallikkal(h) bededuka (po) chengala(via) Kasaragod', 'Kasaragod', 'Kerala', 671541, 'Pallikkal(h) bededuka (po) chengala(via) Kasaragod', 'Kasaragod', 'Kerala', 671541, 'ACTIVE', '2024-03-02 16:47:39', NULL),
(43, 444, 4, 3000, 1, '2024-03-04', 10, 50000, 40000, 10000, 8, 2, 'Bachelor Of Computer Application', 'Sa21bcar45', 'Abdul', 'Basith', 'A', 'male', 1234567899, 'Basee456@gmail.com', 444400, 'Basheer', 'Father', 2222555522, 'Naimarmoola', 'Kasaragod', 'Kerala', 671548, 'Naimarmoola', 'Kasaragod', 'Kerala', 671548, 'VACATED', '2024-03-04 05:58:29', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

CREATE TABLE `courses` (
  `id` int(11) NOT NULL,
  `course_code` varchar(255) DEFAULT NULL,
  `course_sn` varchar(255) DEFAULT NULL,
  `course_fn` varchar(255) DEFAULT NULL,
  `posting_date` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`id`, `course_code`, `course_sn`, `course_fn`, `posting_date`) VALUES
(1, 'B10992', 'B.Tech', 'Bachelor  of Technology', '2020-07-04 19:31:42'),
(2, 'BCOM1453', 'B.Com', 'Bachelor Of commerce ', '2020-07-04 19:31:42'),
(3, 'BSC12', 'BSC', 'Bachelor  of Science', '2020-07-04 19:31:42'),
(4, 'BC36356', 'BCA', 'Bachelor Of Computer Application', '2020-07-04 19:31:42'),
(5, 'MCA565', 'MCA', 'Master of Computer Application', '2020-07-04 19:31:42'),
(6, 'MBA75', 'MBA', 'Master of Business Administration', '2020-07-04 19:31:42'),
(7, 'BE765', 'BE', 'Bachelor of Engineering', '2020-07-04 19:31:42');

-- --------------------------------------------------------

--
-- Table structure for table `feemsg`
--

CREATE TABLE `feemsg` (
  `msg_id` int(255) NOT NULL,
  `regno` varchar(20) NOT NULL,
  `name` varchar(255) NOT NULL,
  `monthupdate` int(10) NOT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'UNREAD',
  `postingdate` varchar(255) NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `feemsg`
--

INSERT INTO `feemsg` (`msg_id`, `regno`, `name`, `monthupdate`, `status`, `postingdate`) VALUES
(1, 'Sa21bcar04', 'Muhammad Rafeeque P H', 2, 'READ', '2024-02-24 00:57:52');

-- --------------------------------------------------------

--
-- Table structure for table `hostelmanager`
--

CREATE TABLE `hostelmanager` (
  `id` int(11) NOT NULL,
  `username` varchar(10) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(20) NOT NULL,
  `reg_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `updation_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `hostelmanager`
--

INSERT INTO `hostelmanager` (`id`, `username`, `email`, `password`, `reg_date`, `updation_date`) VALUES
(1, 'manager', 'manager@gmail.com', '1234', '2023-12-11 06:46:48', '2023-12-11'),
(4, 'manager1', 'manager1@gmail.com', '1234', '2024-03-02 06:42:30', '0000-00-00');

-- --------------------------------------------------------

--
-- Table structure for table `rooms`
--

CREATE TABLE `rooms` (
  `id` int(11) NOT NULL,
  `seater` int(11) DEFAULT NULL,
  `available_seater` int(10) NOT NULL,
  `room_no` int(11) DEFAULT NULL,
  `fees` int(11) DEFAULT NULL,
  `posting_date` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `rooms`
--

INSERT INTO `rooms` (`id`, `seater`, `available_seater`, `room_no`, `fees`, `posting_date`) VALUES
(2, 2, 2, 201, 6000, '2020-04-12 01:30:47'),
(3, 2, 1, 200, 6000, '2020-04-12 01:30:58'),
(4, 3, 3, 112, 4000, '2020-04-12 01:31:07'),
(5, 5, 4, 132, 2000, '2020-04-12 01:31:15'),
(9, 5, 5, 555, 2000, '2024-01-31 08:49:50'),
(10, 4, 4, 444, 3000, '2024-02-06 04:48:38'),
(11, 1, 0, 777, 6000, '2024-02-15 06:21:22'),
(12, 2, 2, 547, 5000, '2024-02-22 09:00:05');

-- --------------------------------------------------------

--
-- Table structure for table `states`
--

CREATE TABLE `states` (
  `id` int(11) NOT NULL,
  `State` varchar(150) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `states`
--

INSERT INTO `states` (`id`, `State`) VALUES
(1, 'Andaman and Nicobar Island (UT)'),
(2, 'Andhra Pradesh'),
(3, 'Arunachal Pradesh'),
(4, 'Assam'),
(5, 'Bihar'),
(6, 'Chandigarh (UT)'),
(7, 'Chhattisgarh'),
(8, 'Dadra and Nagar Haveli (UT)'),
(9, 'Daman and Diu (UT)'),
(10, 'Delhi (NCT)'),
(11, 'Goa'),
(12, 'Gujarat'),
(13, 'Haryana'),
(14, 'Himachal Pradesh'),
(15, 'Jammu and Kashmir'),
(16, 'Jharkhand'),
(17, 'Karnataka'),
(18, 'Kerala'),
(19, 'Lakshadweep (UT)'),
(20, 'Madhya Pradesh'),
(21, 'Maharashtra'),
(22, 'Manipur'),
(23, 'Meghalaya'),
(24, 'Mizoram'),
(25, 'Nagaland'),
(26, 'Odisha'),
(27, 'Puducherry (UT)'),
(28, 'Punjab'),
(29, 'Rajastha'),
(30, 'Sikkim'),
(31, 'Tamil Nadu'),
(32, 'Telangana'),
(33, 'Tripura'),
(34, 'Uttarakhand'),
(35, 'Uttar Pradesh'),
(36, 'West Bengal');

-- --------------------------------------------------------

--
-- Table structure for table `userlog`
--

CREATE TABLE `userlog` (
  `id` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `userEmail` varchar(255) NOT NULL,
  `userIp` varbinary(16) NOT NULL,
  `city` varchar(255) NOT NULL,
  `country` varchar(255) NOT NULL,
  `loginTime` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `userlog`
--

INSERT INTO `userlog` (`id`, `userId`, `userEmail`, `userIp`, `city`, `country`, `loginTime`) VALUES
(8, 9, 'terry@mail.com', 0x3a3a31, '', '', '2023-12-20 09:15:04'),
(9, 9, 'terry@mail.com', 0x3a3a31, '', '', '2023-12-20 09:26:33'),
(10, 9, 'sa21bcar14', 0x3a3a31, '', '', '2024-01-01 05:38:33'),
(11, 10, 'Sa21bcar18', 0x3a3a31, '', '', '2024-01-05 05:13:54'),
(12, 10, 'Sa21bcar18', 0x3a3a31, '', '', '2024-01-05 05:35:41'),
(13, 10, 'Sa21bcar18', 0x3a3a31, '', '', '2024-01-05 06:12:16'),
(14, 9, '14', 0x3a3a31, '', '', '2024-01-05 06:24:28'),
(15, 10, '19', 0x3a3a31, '', '', '2024-01-05 06:28:34'),
(16, 10, '19', 0x3a3a31, '', '', '2024-01-05 09:11:45'),
(17, 9, 'Sa21bcar01', 0x3a3a31, '', '', '2024-01-05 09:17:22'),
(18, 10, 'Sa21bcar19', 0x3a3a31, '', '', '2024-01-05 09:27:36'),
(19, 9, 'terry@mail.com', 0x3a3a31, '', '', '2024-01-10 08:10:03'),
(20, 9, 'terry@mail.com', 0x3a3a31, '', '', '2024-01-10 08:12:54'),
(21, 9, 'Sa21bcar01', 0x3a3a31, '', '', '2024-01-10 08:43:00'),
(22, 10, 'Sa21bcar19', 0x3a3a31, '', '', '2024-01-10 09:03:29'),
(23, 10, 'Sa21bcar19', 0x3a3a31, '', '', '2024-01-10 09:15:51'),
(24, 10, 'Sa21bcar19', 0x3a3a31, '', '', '2024-01-10 09:15:52'),
(25, 10, 'Sa21bcar19', 0x3a3a31, '', '', '2024-01-10 09:15:52'),
(26, 9, 'terry@mail.com', 0x3a3a31, '', '', '2024-01-11 05:32:45'),
(27, 9, 'terry@mail.com', 0x3a3a31, '', '', '2024-01-16 09:28:07'),
(28, 9, 'terry@mail.com', 0x3a3a31, '', '', '2024-01-16 09:30:44'),
(29, 9, 'terry@mail.com', 0x3a3a31, '', '', '2024-01-16 09:30:46'),
(30, 9, 'terry@mail.com', 0x3a3a31, '', '', '2024-01-16 09:30:49'),
(31, 9, 'terry@mail.com', 0x3a3a31, '', '', '2024-01-16 09:31:10'),
(32, 9, 'terry@mail.com', 0x3a3a31, '', '', '2024-01-16 09:31:31'),
(33, 9, 'terry@mail.com', 0x3a3a31, '', '', '2024-01-16 09:31:44'),
(34, 9, 'terry@mail.com', 0x3a3a31, '', '', '2024-01-16 09:31:44'),
(35, 9, 'terry@mail.com', 0x3a3a31, '', '', '2024-01-16 09:31:44'),
(36, 9, 'terry@mail.com', 0x3a3a31, '', '', '2024-01-16 09:31:44'),
(37, 9, 'terry@mail.com', 0x3a3a31, '', '', '2024-01-16 09:31:44'),
(38, 9, 'terry@mail.com', 0x3a3a31, '', '', '2024-01-16 09:31:44'),
(39, 9, 'terry@mail.com', 0x3a3a31, '', '', '2024-01-16 09:31:44'),
(40, 9, 'terry@mail.com', 0x3a3a31, '', '', '2024-01-16 09:31:44'),
(41, 9, 'terry@mail.com', 0x3a3a31, '', '', '2024-01-16 10:07:38'),
(42, 9, 'terry@mail.com', 0x3a3a31, '', '', '2024-01-16 10:12:10'),
(43, 10, 'Sa21bcar19', 0x3a3a31, '', '', '2024-01-17 09:39:27'),
(44, 10, 'Sa21bcar19', 0x3a3a31, '', '', '2024-01-17 09:41:37'),
(45, 10, 'Sa21bcar19', 0x3a3a31, '', '', '2024-01-17 09:41:57'),
(46, 10, 'Sa21bcar19', 0x3a3a31, '', '', '2024-01-17 09:48:04'),
(47, 10, 'Sa21bcar19', 0x3a3a31, '', '', '2024-01-17 09:59:47'),
(48, 10, 'Sa21bcar19', 0x3a3a31, '', '', '2024-01-17 10:02:18'),
(49, 10, 'Sa21bcar19', 0x3a3a31, '', '', '2024-01-18 10:55:26'),
(50, 10, 'Sa21bcar19', 0x3a3a31, '', '', '2024-01-18 10:57:50'),
(51, 15, 'Sa21bcar01', 0x3a3a31, '', '', '2024-01-23 08:26:24'),
(52, 15, 'Sa21bcar01', 0x3a3a31, '', '', '2024-01-23 08:37:47'),
(53, 15, 'Sa21bcar01', 0x3a3a31, '', '', '2024-01-23 08:37:54'),
(54, 15, 'Sa21bcar01', 0x3a3a31, '', '', '2024-01-23 08:46:26'),
(55, 15, 'Sa21bcar01', 0x3a3a31, '', '', '2024-01-23 09:23:32'),
(56, 15, 'Sa21bcar01', 0x3a3a31, '', '', '2024-01-24 05:12:55'),
(57, 15, 'Sa21bcar01', 0x3a3a31, '', '', '2024-01-24 05:36:31'),
(58, 15, 'Sa21bcar01', 0x3a3a31, '', '', '2024-01-24 05:40:49'),
(59, 15, 'Sa21bcar01', 0x3a3a31, '', '', '2024-01-24 08:06:38'),
(60, 15, 'Sa21bcar01', 0x3a3a31, '', '', '2024-01-25 09:01:21'),
(61, 15, 'Sa21bcar01', 0x3a3a31, '', '', '2024-01-30 08:16:54'),
(62, 15, 'Sa21bcar01', 0x3a3a31, '', '', '2024-01-30 09:02:09'),
(63, 15, 'Sa21bcar01', 0x3a3a31, '', '', '2024-01-30 09:08:00'),
(64, 15, 'Sa21bcar01', 0x3a3a31, '', '', '2024-01-30 09:12:28'),
(65, 15, 'Sa21bcar01', 0x3a3a31, '', '', '2024-01-31 09:01:20'),
(66, 15, 'Sa21bcar01', 0x3a3a31, '', '', '2024-02-01 09:25:33'),
(67, 15, 'Sa21bcar01', 0x3a3a31, '', '', '2024-02-06 04:23:01'),
(68, 16, 'Sa21bcar04', 0x3a3a31, '', '', '2024-02-06 08:18:20'),
(69, 16, 'Sa21bcar04', 0x3a3a31, '', '', '2024-02-06 08:21:52'),
(70, 16, 'Sa21bcar04', 0x3a3a31, '', '', '2024-02-06 08:43:17'),
(71, 16, 'Sa21bcar04', 0x3a3a31, '', '', '2024-02-06 08:44:10'),
(72, 16, 'Sa21bcar04', 0x3a3a31, '', '', '2024-02-06 09:25:33'),
(73, 16, 'Sa21bcar04', 0x3a3a31, '', '', '2024-02-07 14:24:43'),
(74, 16, 'Sa21bcar04', 0x3a3a31, '', '', '2024-02-09 08:45:26'),
(75, 16, 'Sa21bcar04', 0x3a3a31, '', '', '2024-02-09 08:48:43'),
(76, 16, 'Sa21bcar04', 0x3a3a31, '', '', '2024-02-09 09:26:24'),
(77, 16, 'Sa21bcar04', 0x3a3a31, '', '', '2024-02-11 09:27:35'),
(78, 16, 'Sa21bcar04', 0x3a3a31, '', '', '2024-02-15 05:50:34'),
(79, 17, 'Sa21bcar13', 0x3a3a31, '', '', '2024-02-15 06:27:18'),
(80, 16, 'Sa21bcar04', 0x3a3a31, '', '', '2024-02-19 16:00:08'),
(81, 16, 'Sa21bcar04', 0x3a3a31, '', '', '2024-02-19 16:00:59'),
(82, 16, 'Sa21bcar04', 0x3a3a31, '', '', '2024-02-19 16:02:23'),
(83, 16, 'Sa21bcar04', 0x3a3a31, '', '', '2024-02-19 16:05:54'),
(84, 16, 'Sa21bcar04', 0x3a3a31, '', '', '2024-02-19 16:06:45'),
(85, 16, 'Sa21bcar04', 0x3a3a31, '', '', '2024-02-19 16:08:42'),
(86, 16, 'Sa21bcar04', 0x3a3a31, '', '', '2024-02-19 16:19:09'),
(87, 16, 'Sa21bcar04', 0x3a3a31, '', '', '2024-02-19 16:29:48'),
(88, 17, 'Sa21bcar13', 0x3a3a31, '', '', '2024-02-19 16:44:11'),
(89, 16, 'Sa21bcar04', 0x3a3a31, '', '', '2024-02-19 16:48:08'),
(90, 17, 'Sa21bcar13', 0x3a3a31, '', '', '2024-02-19 16:48:49'),
(91, 16, 'Sa21bcar04', 0x3a3a31, '', '', '2024-02-19 16:49:05'),
(92, 16, 'Sa21bcar04', 0x3a3a31, '', '', '2024-02-19 16:50:28'),
(93, 16, 'Sa21bcar04', 0x3a3a31, '', '', '2024-02-19 16:52:59'),
(94, 16, 'Sa21bcar04', 0x3a3a31, '', '', '2024-02-19 16:58:36'),
(95, 16, 'Sa21bcar04', 0x3a3a31, '', '', '2024-02-21 08:24:39'),
(96, 16, 'Sa21bcar04', 0x3a3a31, '', '', '2024-02-21 08:24:51'),
(97, 17, 'Sa21bcar13', 0x3a3a31, '', '', '2024-02-21 08:26:45'),
(98, 18, 'Sa21bcar05', 0x3a3a31, '', '', '2024-02-21 08:29:03'),
(99, 16, 'Sa21bcar04', 0x3a3a31, '', '', '2024-02-22 08:53:53'),
(100, 17, 'Sa21bcar13', 0x3a3a31, '', '', '2024-02-22 08:56:01'),
(101, 16, 'Sa21bcar04', 0x3a3a31, '', '', '2024-02-23 09:09:37'),
(102, 16, 'Sa21bcar04', 0x3a3a31, '', '', '2024-02-23 09:10:21'),
(103, 16, 'Sa21bcar04', 0x3a3a31, '', '', '2024-02-23 17:14:26'),
(104, 20, 'Sa21bcar20', 0x3a3a31, '', '', '2024-03-02 06:44:28'),
(105, 19, 'Sa21bcar21', 0x3a3a31, '', '', '2024-03-02 06:46:58'),
(106, 23, 'Sa21bcar30', 0x3a3a31, '', '', '2024-03-02 16:03:34'),
(107, 24, 'Sa21bcar50', 0x3a3a31, '', '', '2024-03-02 16:26:01'),
(108, 22, 'Sa21bcar26', 0x3a3a31, '', '', '2024-03-02 16:48:49'),
(109, 25, 'Sa21bcar45', 0x3a3a31, '', '', '2024-03-04 05:55:51'),
(110, 25, 'Sa21bcar45', 0x3a3a31, '', '', '2024-03-04 06:06:57'),
(111, 25, 'Sa21bcar45', 0x3a3a31, '', '', '2024-03-04 06:18:15'),
(112, 23, 'Sa21bcar30', 0x3a3a31, '', '', '2024-03-04 06:19:13'),
(113, 23, 'Sa21bcar30', 0x3a3a31, '', '', '2024-03-04 06:24:35'),
(114, 20, 'Sa21bcar20', 0x3a3a31, '', '', '2024-03-04 06:28:55'),
(115, 20, 'Sa21bcar20', 0x3a3a31, '', '', '2024-03-04 06:29:52');

-- --------------------------------------------------------

--
-- Table structure for table `userregistration`
--

CREATE TABLE `userregistration` (
  `id` int(11) NOT NULL,
  `regNo` varchar(255) DEFAULT NULL,
  `firstName` varchar(255) DEFAULT NULL,
  `middleName` varchar(255) DEFAULT NULL,
  `lastName` varchar(255) DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `contactNo` bigint(20) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `regDate` timestamp NULL DEFAULT current_timestamp(),
  `updationDate` varchar(45) DEFAULT NULL,
  `passUdateDate` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `userregistration`
--

INSERT INTO `userregistration` (`id`, `regNo`, `firstName`, `middleName`, `lastName`, `gender`, `contactNo`, `email`, `password`, `regDate`, `updationDate`, `passUdateDate`) VALUES
(17, 'Sa21bcar13', 'Habeeb', 'Rafeeque', 'P.H', 'female', 9999999999, 'uiuiur4@gmail.com', '4321', '2024-02-15 06:26:36', NULL, '15-02-2024 12:00:14'),
(19, 'Sa21bcar21', 'Rafeeque', 'p', 'h', 'male', 999999922, '123@gmail.com', '1234', '2024-02-22 09:01:06', NULL, NULL),
(20, 'Sa21bcar20', 'Ashwin', 'A', 'B', 'male', 999999922, 'rasel@gmail.com', '1234', '2024-03-02 06:41:27', NULL, '02-03-2024 12:15:55'),
(21, 'Sa21bca17', 'abdulrahiman', 'L', 'M', 'male', 8888800000, '1234@gmail.com', '1234', '2024-03-02 06:52:07', NULL, NULL),
(22, 'Sa21bcar26', 'Rafee', 'A', 'B', 'male', 987654321, 'raseel@gmail.com', '1234', '2024-03-02 06:54:19', NULL, NULL),
(24, 'Sa21bcar50', 'Nikhil', 'M', 'V', 'male', 5666565566, '123456@gmail.com', '1234', '2024-03-02 16:24:13', NULL, NULL),
(25, 'Sa21bcar45', 'Abdul', 'Basith', 'A', 'male', 1234567899, 'Basee456@gmail.com', '1234', '2024-03-04 05:54:51', NULL, NULL),
(26, 'sa21590', 'fathi', 'maaa', 'raaf', 'female', 9876543223, 'fathi@gmail.com', '123', '2024-03-05 16:39:33', NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `booking`
--
ALTER TABLE `booking`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `feemsg`
--
ALTER TABLE `feemsg`
  ADD PRIMARY KEY (`msg_id`);

--
-- Indexes for table `hostelmanager`
--
ALTER TABLE `hostelmanager`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rooms`
--
ALTER TABLE `rooms`
  ADD PRIMARY KEY (`id`),
  ADD KEY `room_no` (`room_no`);

--
-- Indexes for table `states`
--
ALTER TABLE `states`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `userlog`
--
ALTER TABLE `userlog`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `userregistration`
--
ALTER TABLE `userregistration`
  ADD PRIMARY KEY (`id`),
  ADD KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `booking`
--
ALTER TABLE `booking`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `courses`
--
ALTER TABLE `courses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `feemsg`
--
ALTER TABLE `feemsg`
  MODIFY `msg_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `hostelmanager`
--
ALTER TABLE `hostelmanager`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `rooms`
--
ALTER TABLE `rooms`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `states`
--
ALTER TABLE `states`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `userlog`
--
ALTER TABLE `userlog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=116;

--
-- AUTO_INCREMENT for table `userregistration`
--
ALTER TABLE `userregistration`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
