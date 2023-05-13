-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 08, 2023 at 07:19 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `research`
--

-- --------------------------------------------------------

--
-- Table structure for table `duties`
--

CREATE TABLE `duties` (
  `D_ID` int(20) NOT NULL,
  `Employee Safety` varchar(70) NOT NULL,
  `Budget-and-Resource` varchar(69) NOT NULL,
  `Compliance-Handling` varchar(68) NOT NULL,
  `Communication` varchar(67) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `duties`
--

INSERT INTO `duties` (`D_ID`, `Employee Safety`, `Budget-and-Resource`, `Compliance-Handling`, `Communication`) VALUES
(1, 'abc', '39', '12', 'ok'),
(2, 'abc', '39', '12', 'ok');

-- --------------------------------------------------------

--
-- Stand-in structure for view `duties_supervisor`
-- (See below for the actual view)
--
CREATE TABLE `duties_supervisor` (
`D_ID` int(20)
,`ID` int(11)
);

-- --------------------------------------------------------

--
-- Table structure for table `supervisor`
--

CREATE TABLE `supervisor` (
  `ID` int(11) NOT NULL,
  `Name` varchar(20) NOT NULL,
  `Organizational-Name` varchar(30) NOT NULL,
  `Employee-ID` varchar(17) NOT NULL,
  `Rank` varchar(20) NOT NULL,
  `Experience` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `supervisor`
--

INSERT INTO `supervisor` (`ID`, `Name`, `Organizational-Name`, `Employee-ID`, `Rank`, `Experience`) VALUES
(1, 'Usama', 'abc', '1', '3', '10'),
(2, 'Usama', 'abc', '1', '3', '10');

-- --------------------------------------------------------

--
-- Structure for view `duties_supervisor`
--
DROP TABLE IF EXISTS `duties_supervisor`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `duties_supervisor`  AS SELECT `duties`.`D_ID` AS `D_ID`, `supervisor`.`ID` AS `ID` FROM (`duties` left join `supervisor` on(`duties`.`D_ID` = `supervisor`.`ID`))  ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `duties`
--
ALTER TABLE `duties`
  ADD PRIMARY KEY (`D_ID`);

--
-- Indexes for table `supervisor`
--
ALTER TABLE `supervisor`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `duties`
--
ALTER TABLE `duties`
  MODIFY `D_ID` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `supervisor`
--
ALTER TABLE `supervisor`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
