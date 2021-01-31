-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 31, 2021 at 04:33 PM
-- Server version: 10.4.8-MariaDB
-- PHP Version: 7.3.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `enotice`
--

-- --------------------------------------------------------

--
-- Table structure for table `academic`
--

CREATE TABLE `academic` (
  `eveid` varchar(20) NOT NULL,
  `dept` varchar(20) NOT NULL,
  `date` varchar(15) NOT NULL,
  `descrip` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `academic`
--

INSERT INTO `academic` (`eveid`, `dept`, `date`, `descrip`) VALUES
('2021fest', 'CS', '03/03/2021', 'fest will be conducted');

-- --------------------------------------------------------

--
-- Table structure for table `activity`
--

CREATE TABLE `activity` (
  `eventid` varchar(15) NOT NULL,
  `event` varchar(1000) NOT NULL,
  `venue` varchar(50) NOT NULL,
  `date` varchar(20) NOT NULL,
  `time` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `activity`
--

INSERT INTO `activity` (`eventid`, `event`, `venue`, `date`, `time`) VALUES
('354df', 'sdmfest', 'sidda', '12/09/2000', '22:20');

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `name` varchar(20) NOT NULL,
  `id` varchar(15) NOT NULL,
  `email` varchar(20) NOT NULL,
  `phone` varchar(11) NOT NULL,
  `branch` varchar(20) NOT NULL,
  `pass` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`name`, `id`, `email`, `phone`, `branch`, `pass`) VALUES
('tgs', 'sdm123', 'sdm1123@mail.com', '9753974374', 'cs', 'sdmcshod');

-- --------------------------------------------------------

--
-- Table structure for table `scholar`
--

CREATE TABLE `scholar` (
  `sname` varchar(20) NOT NULL,
  `active` varchar(15) NOT NULL,
  `expire` varchar(15) NOT NULL,
  `docreq` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `scholar`
--

INSERT INTO `scholar` (`sname`, `active`, `expire`, `docreq`) VALUES
('ds', '22/09/1999', '31/11/2020', 'sjak');

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `name` varchar(20) NOT NULL,
  `usn` varchar(15) NOT NULL,
  `phone` varchar(11) NOT NULL,
  `email` varchar(25) NOT NULL,
  `pass` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`name`, `usn`, `phone`, `email`, `pass`) VALUES
('preetham', '4su17cs066', '9731996434', 'kmpd@gmail.com', '1ac0ji'),
('raja', '4su17cs070', '9780978097', 'raj@mail.com', 'rajat'),
--
-- Indexes for dumped tables
--

--
-- Indexes for table `academic`
--
ALTER TABLE `academic`
  ADD PRIMARY KEY (`eveid`);

--
-- Indexes for table `activity`
--
ALTER TABLE `activity`
  ADD PRIMARY KEY (`eventid`);

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `scholar`
--
ALTER TABLE `scholar`
  ADD PRIMARY KEY (`sname`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`usn`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
