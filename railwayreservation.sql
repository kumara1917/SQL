-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 01, 2024 at 06:43 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `railwayreservation`
--

-- --------------------------------------------------------

--
-- Table structure for table `bookings`
--

CREATE TABLE `bookings` (
  `pnr` int(10) NOT NULL,
  `jourid` int(11) NOT NULL,
  `email` varchar(20) NOT NULL,
  `noofseats` varchar(255) DEFAULT NULL,
  `source` varchar(50) NOT NULL,
  `destination` varchar(50) NOT NULL,
  `class` varchar(10) NOT NULL,
  `pnrid` int(11) NOT NULL,
  `classtype` varchar(255) DEFAULT NULL,
  `contactno` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `bookings_seq`
--

CREATE TABLE `bookings_seq` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `bookings_seq`
--

INSERT INTO `bookings_seq` (`next_val`) VALUES
(1);

-- --------------------------------------------------------

--
-- Table structure for table `journey`
--

CREATE TABLE `journey` (
  `jourid` int(11) NOT NULL,
  `wl_of_seater` int(11) DEFAULT NULL,
  `wl_of_sleeper` int(11) DEFAULT NULL,
  `datetime` int(11) DEFAULT NULL,
  `seater_availability` int(11) DEFAULT NULL,
  `sleeper_availability` int(11) DEFAULT NULL,
  `trainno` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `journeymap`
--

CREATE TABLE `journeymap` (
  `jourid` int(11) NOT NULL,
  `aadharnumber` int(11) DEFAULT NULL,
  `seatid` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `journeymap_seq`
--

CREATE TABLE `journeymap_seq` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `journeymap_seq`
--

INSERT INTO `journeymap_seq` (`next_val`) VALUES
(1);

-- --------------------------------------------------------

--
-- Table structure for table `journey_seq`
--

CREATE TABLE `journey_seq` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `journey_seq`
--

INSERT INTO `journey_seq` (`next_val`) VALUES
(1);

-- --------------------------------------------------------

--
-- Table structure for table `passenger`
--

CREATE TABLE `passenger` (
  `passengerid` int(5) NOT NULL,
  `name` varchar(30) NOT NULL,
  `aadharnumber` int(12) NOT NULL,
  `age` int(3) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `seatpreference` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `passenger_seq`
--

CREATE TABLE `passenger_seq` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `passenger_seq`
--

INSERT INTO `passenger_seq` (`next_val`) VALUES
(1);

-- --------------------------------------------------------

--
-- Table structure for table `trains`
--

CREATE TABLE `trains` (
  `trainid` int(10) NOT NULL,
  `trainno` int(10) NOT NULL,
  `trainname` varchar(50) NOT NULL,
  `source` varchar(50) NOT NULL,
  `destination` varchar(50) NOT NULL,
  `noofseats` int(10) NOT NULL,
  `sleeper` int(10) NOT NULL,
  `seater` int(10) NOT NULL,
  `noofstops` int(10) NOT NULL,
  `stops` varchar(200) NOT NULL,
  `arrival` varchar(20) NOT NULL,
  `departure` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `trains`
--

INSERT INTO `trains` (`trainid`, `trainno`, `trainname`, `source`, `destination`, `noofseats`, `sleeper`, `seater`, `noofstops`, `stops`, `arrival`, `departure`) VALUES
(1, 12244, 'shatabdi sf express', 'coimbatore', 'chennai', 1100, 700, 300, 6, 'Tiruppur,Erode,Salem,Jolarpettai,katpadi,arakkonam\r\n', '09:45', '13:30'),
(2, 12672, 'nilgiri sf express', 'coimbatore', 'chennai', 1300, 1000, 300, 6, 'Tiruppur,Erode,Salem,Jolarpettai,katpadi,arakkonam\r\n', '14:45', '17:25'),
(3, 12674, 'cheran sf express', 'coimbatore', 'chennai', 1000, 600, 200, 6, 'Tiruppur,Erode,Salem,Jolarpettai,katpadi,arakkonam\r\n', '15:00', '16:00'),
(4, 12676, 'kovai sf express', 'coimbatore', 'chennai', 1200, 700, 200, 6, 'Tiruppur,Erode,Salem,Jolarpettai,katpadi,arakkonam\r\n', '21:00', '22:45'),
(5, 12696, 'm.g.r chennai central sf express', 'coimbatore', 'chennai', 1000, 400, 400, 6, 'Tiruppur,Erode,Salem,Jolarpettai,katpadi,arakkonam\r\n', '17:25', '07:22'),
(6, 12567, 'rapti sagar sf express', 'coimbatore', 'chennai', 900, 700, 100, 6, 'Tiruppur,Erode,Salem,Jolarpettai,katpadi,arakkonam\r\n', '13:30', '15:00'),
(7, 20644, 'm.g.r chennai central Vande Bharat express', 'coimbatore', 'chennai', 800, 200, 600, 3, 'Tiruppur,Erode,Salem\r\n', '12:12', '23:34'),
(8, 22208, 'm.g.r chennai central AC sf express', 'coimbatore', 'chennai', 1200, 700, 300, 6, 'Tiruppur,Erode,Salem,Jolarpettai,katpadi,arakkonam\r\n', '18:30', '02:45'),
(9, 22638, 'west coast sf express', 'coimbatore', 'chennai', 1200, 700, 300, 6, 'Tiruppur,Erode,Salem,Jolarpettai,katpadi,arakkonam\r\n', '03:30', '11:25'),
(10, 17230, 'kochuveli sf express', 'coimbatore', 'trivandrum', 1200, 500, 500, 5, 'palakkad,thissur,ernakulam,kottayam,kollam,', '11:55', '12:00'),
(11, 12676, 'kerala sf express', 'coimbatore', 'trivandrum', 1000, 400, 400, 5, 'palakkad,thissur,ernakulam,kottayam,kollam,', '05:30', '07:00'),
(12, 16315, 'kochuveli sf express', 'trivandrum', 'coimbatore', 1200, 500, 500, 5, 'palakkad,thissur,ernakulam,kottayam,kollam,', '03:50', '08:30'),
(13, 22207, 'kerala sf express', 'trivandrum', 'coimbatore', 1000, 400, 400, 5, 'palakkad,thissur,ernakulam,kottayam,kollam', '15:30', '18:00'),
(14, 23232, 'trivandrum humsafur sf express', 'coimbatore', 'trivandrum', 1000, 600, 200, 5, 'palakkad,thissur,ernakulam,kottayam,kollam', '04:45', '10:25'),
(15, 12243, 'shatabdi sf express', 'chennai', 'coimbatore', 1100, 700, 300, 6, 'Tiruppur,Erode,Salem,Jolarpettai,katpadi,arakkonam\r\n', '04:10', '15:59'),
(16, 12671, 'nilgiri sf express', 'chennai', 'coimbatore', 1300, 1000, 300, 6, 'Tiruppur,Erode,Salem,Jolarpettai,katpadi,arakkonam\r\n', '07:15', '00:00'),
(17, 12673, 'cheran sf express', 'chennai', 'coimbatore', 1000, 600, 200, 6, 'Tiruppur,Erode,Salem,Jolarpettai,katpadi,arakkonam\r\n', '16:45', '05:00'),
(18, 12675, 'kovai sf express', 'chennai', 'coimbatore', 1200, 700, 200, 6, 'Tiruppur,Erode,Salem,Jolarpettai,katpadi,arakkonam\r\n', '22:15', '07:30'),
(19, 12695, 'm.g.r chennai central sf express', 'chennai', 'coimbatore', 1000, 400, 400, 6, 'Tiruppur,Erode,Salem,Jolarpettai,katpadi,arakkonam\r\n', '09:00', '14:44'),
(20, 12566, 'rapti sagar sf express', 'chennai', 'coimbatore', 900, 700, 100, 6, 'Tiruppur,Erode,Salem,Jolarpettai,katpadi,arakkonam\r\n', '02:30', '05:33'),
(21, 20644, 'm.g.r chennai central Vande Bharat express', 'chennai', 'coimbatore', 800, 200, 600, 3, 'Tiruppur,Erode,Salem\r\n', '03:34', '05:23'),
(22, 22207, 'm.g.r chennai central AC sf express', 'chennai', 'coimbatore', 1200, 700, 300, 6, 'Tiruppur,Erode,Salem,Jolarpettai,katpadi,arakkonam\r\n', '08:00', '11:45'),
(23, 22637, 'west coast sf express', 'chennai', 'coimbatore', 1200, 700, 300, 6, 'Tiruppur,Erode,Salem,Jolarpettai,katpadi,arakkonam\r\n', '06:30', '01:00'),
(24, 23232, 'coimatore humsafur sf express', 'trivandrum', 'coimbatore', 1000, 600, 200, 5, 'palakkad,thissur,ernakulam,kottayam,kollam', '12:00', '13:00'),
(25, 12511, 'kochuveli rapti sagar sf express', 'chennai', 'trivandrum', 1200, 700, 300, 11, 'katpadi,jolarpettai,salem,erode,tiruppur,coimbatore,palakkad,thrissur,ernakulam,alappuzha,kollam', '18:00', '17:13'),
(26, 12695, 'trivandrum central sf express', 'chennai', 'trivandrum', 1000, 600, 200, 11, 'katpadi,jolarpettai,salem,erode,tiruppur,coimbatore,palakkad,thrissur,ernakulam,alappuzha,kollam', '0', '0'),
(27, 20635, 'ananthapuri sf express', 'chennai', 'trivandrum', 1100, 500, 400, 11, 'katpadi,jolarpettai,salem,erode,tiruppur,coimbatore,palakkad,thrissur,ernakulam,alappuzha,kollam', '0', '0'),
(28, 12511, 'kochuveli rapti sagar sf express', 'trivandrum', 'chennai', 1200, 700, 300, 11, 'katpadi,jolarpettai,salem,erode,tiruppur,coimbatore,palakkad,thrissur,ernakulam,alappuzha,kollam', '0', '0'),
(29, 12695, 'trivandrum central sf express', 'trivandrum', 'chennai', 1000, 600, 200, 11, 'katpadi,jolarpettai,salem,erode,tiruppur,coimbatore,palakkad,thrissur,ernakulam,alappuzha,kollam', '0', '0'),
(30, 20635, 'ananthapuri sf express', 'trivandrum', 'chennai', 1100, 500, 400, 11, 'katpadi,jolarpettai,salem,erode,tiruppur,coimbatore,palakkad,thrissur,ernakulam,alappuzha,kollam', '0', '0');

-- --------------------------------------------------------

--
-- Table structure for table `trains_seq`
--

CREATE TABLE `trains_seq` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `trains_seq`
--

INSERT INTO `trains_seq` (`next_val`) VALUES
(1);

-- --------------------------------------------------------

--
-- Table structure for table `userprofile`
--

CREATE TABLE `userprofile` (
  `name` varchar(20) NOT NULL,
  `email` varchar(30) NOT NULL,
  `irctcid` int(7) NOT NULL,
  `password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `userprofile`
--

INSERT INTO `userprofile` (`name`, `email`, `irctcid`, `password`) VALUES
('prajeesh', 'gdunksdmcs@gmail.com', 52, 'pjh'),
('adithya', 'adithyamahrajvsb@gmail.com', 152, '!23qwA'),
('adithya', 'adithyamahrajvsb@gmail.com', 153, '!23qwA'),
('chandru', 'chandru16504@gmail.com', 154, '!@34dsQW'),
('Praj', 'prajeeshpranav76@gmail.com', 202, '!23Fdh'),
('Praj', 'adithyamahrajvsb@gmail.com', 203, '!@e4faSD'),
('Praje', 'chandru16504@gmail.com', 204, '#fy&hJG*'),
('prajeesh', 'gdunksdmcs@gmail.com', 253, 'pjh'),
('barathraj', 'gduncs@gmail.com', 254, 'brj');

-- --------------------------------------------------------

--
-- Table structure for table `userprofile_seq`
--

CREATE TABLE `userprofile_seq` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `userprofile_seq`
--

INSERT INTO `userprofile_seq` (`next_val`) VALUES
(351);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bookings`
--
ALTER TABLE `bookings`
  ADD PRIMARY KEY (`pnr`);

--
-- Indexes for table `journey`
--
ALTER TABLE `journey`
  ADD PRIMARY KEY (`jourid`);

--
-- Indexes for table `journeymap`
--
ALTER TABLE `journeymap`
  ADD PRIMARY KEY (`jourid`);

--
-- Indexes for table `passenger`
--
ALTER TABLE `passenger`
  ADD PRIMARY KEY (`passengerid`);

--
-- Indexes for table `trains`
--
ALTER TABLE `trains`
  ADD PRIMARY KEY (`trainid`);

--
-- Indexes for table `userprofile`
--
ALTER TABLE `userprofile`
  ADD PRIMARY KEY (`irctcid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bookings`
--
ALTER TABLE `bookings`
  MODIFY `pnr` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `passenger`
--
ALTER TABLE `passenger`
  MODIFY `passengerid` int(5) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `trains`
--
ALTER TABLE `trains`
  MODIFY `trainid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `userprofile`
--
ALTER TABLE `userprofile`
  MODIFY `irctcid` int(7) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=255;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
