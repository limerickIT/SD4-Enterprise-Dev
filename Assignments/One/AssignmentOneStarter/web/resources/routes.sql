-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 09, 2018 at 12:05 AM
-- Server version: 10.1.30-MariaDB
-- PHP Version: 7.2.1
CREATE DATABASE routes;
USE routes;
SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `routes`
--

-- --------------------------------------------------------

--
-- Table structure for table `passengers`
--

CREATE TABLE `passengers` (
  `Code` varchar(3) NOT NULL,
  `City` text NOT NULL,
  `Airport` text NOT NULL,
  `Q1` int(11) NOT NULL,
  `Q2` int(11) NOT NULL,
  `Q3` int(11) NOT NULL,
  `Q4` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `passengers`
--

INSERT INTO `passengers` (`Code`, `City`, `Airport`, `Q1`, `Q2`, `Q3`, `Q4`) VALUES
('ATL', 'Atlanta', 'Hartsfield–Jackson Atlanta International', 330, 331, 332, 333),
('BOS', 'Boston', 'Logan International Airport', 69, 256, 162, 84),
('CLT', 'Charlotte', 'Charlotte Douglas International', 52, 60, 122, 152),
('DEN', 'Denver', 'Denver International', 53, 200, 121, 171),
('DFW', 'Dallas Fort Worth International', 'Dallas Fort Worth', 108, 148, 240, 63),
('DTW', 'Detroit', 'Detroit Metropolitan Airport', 47, 143, 168, 136),
('FLL', 'Fort Lauderdale', 'Fort Lauderdale–Hollywood International', 246, 271, 119, 157),
('JFK', 'New York', 'John F Kennedy International', 81, 256, 88, 39),
('LAS', 'Las Vegas', 'McCarran International', 4, 129, 86, 61),
('LAX', 'Los Angeles', 'Los Angeles International', 113, 212, 163, 187),
('MSP', 'Minneapolis–Saint Paul', 'Minneapolis–Saint Paul International', 215, 3, 224, 82),
('ORD', 'Chicago', 'Chicago O\'Hare International', 64, 48, 294, 182),
('PHX', 'Phoenix', 'Phoenix Sky Harbor International', 13, 232, 126, 328),
('SEA', 'Seattle', 'Seattle–Tacoma International', 204, 12, 85, 88),
('SFO', 'San Francisco', 'San Francisco International', 312, 31, 47, 126);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `passengers`
--
ALTER TABLE `passengers`
  ADD PRIMARY KEY (`Code`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
