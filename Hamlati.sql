-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Aug 02, 2018 at 04:57 AM
-- Server version: 10.1.31-MariaDB
-- PHP Version: 7.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `Hamlati`
--

-- --------------------------------------------------------

--
-- Table structure for table `hamlahTable`
--

CREATE TABLE `hamlahTable` (
  `ID` int(11) NOT NULL,
  `permissionNum` varchar(100) NOT NULL,
  `logo` varchar(100) NOT NULL,
  `Name` varchar(100) NOT NULL,
  `email` varchar(50) NOT NULL,
  `phoneNum` varchar(50) NOT NULL,
  `managerName` varchar(50) NOT NULL,
  `reception` tinyint(1) NOT NULL,
  `transport` tinyint(1) NOT NULL,
  `wheelChair` tinyint(1) NOT NULL,
  `food` tinyint(1) NOT NULL,
  `drinks` tinyint(1) NOT NULL,
  `medicalCare` tinyint(1) NOT NULL,
  `deafAssistant` tinyint(1) NOT NULL,
  `blindAssistant` tinyint(1) NOT NULL,
  `dumbAssistant` tinyint(1) NOT NULL,
  `assistant` tinyint(1) NOT NULL,
  `programs` tinyint(1) NOT NULL,
  `wheelChairAssistant` tinyint(1) NOT NULL,
  `others` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hamlahTable`
--

INSERT INTO `hamlahTable` (`ID`, `permissionNum`, `logo`, `Name`, `email`, `phoneNum`, `managerName`, `reception`, `transport`, `wheelChair`, `food`, `drinks`, `medicalCare`, `deafAssistant`, `blindAssistant`, `dumbAssistant`, `assistant`, `programs`, `wheelChairAssistant`, `others`) VALUES
(1, '3452692678', 'Jeddah', 'ALQURASHI HAJJ RESIDENCE', 'qurashi.1@gmail.com', '+96654444444', 'AHMAD ALMADHI', 1, 0, 1, 0, 0, 1, 1, 1, 1, 0, 1, 1, 'N/A');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `hamlahTable`
--
ALTER TABLE `hamlahTable`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `hamlahTable`
--
ALTER TABLE `hamlahTable`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
