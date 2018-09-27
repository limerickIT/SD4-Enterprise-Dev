-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Nov 11, 2015 at 08:33 PM
-- Server version: 5.6.21
-- PHP Version: 5.6.3
CREATE DATABASE bankofmunster;
USE bankofmunster;
SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `bankofmunster`
--

-- --------------------------------------------------------

--
-- Table structure for table `accounts`
--

CREATE TABLE IF NOT EXISTS `accounts` (
  `AccountNumber` int(11) NOT NULL,
  `FirstName` varchar(50) NOT NULL,
  `LastName` varchar(50) NOT NULL,
  `SortCode` varchar(10) NOT NULL,
  `Balance` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `accounts`
--

INSERT INTO `accounts` (`AccountNumber`, `FirstName`, `LastName`, `SortCode`, `Balance`) VALUES
(12345, 'Alan', 'Ryan', '34-34-98', 9000000.01),
(32456, 'Seamus', 'Doyle', '76-55-08', -567),
(34456, 'Gerry', 'Guinane', '34-45-34', 1799),
(54321, 'Brendan', 'Watson', '90-34-35', -97318.23),
(78655, 'Ita', 'Kavanagh', '89-32-30', 9876),
(98765, 'Tom', 'Costello', '56-34-34', 2799.34),
(363663, 'Elizabeth', 'Bourke', '39-32-65', 100000),
(583822, 'Carol', 'Rainsford', '90-34-35', 98763),
(7854744, 'Michael', 'Winterburn', '34-45-34', 9788),
(9082834, 'Desmond', 'OCarroll', '87-45-54', -98);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accounts`
--
ALTER TABLE `accounts`
 ADD PRIMARY KEY (`AccountNumber`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
