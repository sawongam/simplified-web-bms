-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 21, 2024 at 09:27 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 7.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bms`
--

-- --------------------------------------------------------

--
-- Table structure for table `balance`
--

CREATE TABLE `balance` (
  `AccNo` int(11) NOT NULL,
  `Balance` decimal(10,0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `balance`
--

INSERT INTO `balance` (`AccNo`, `Balance`) VALUES
(197, '100'),
(198, '106'),
(199, '114'),
(200, '80');

-- --------------------------------------------------------

--
-- Table structure for table `credentials`
--

CREATE TABLE `credentials` (
  `AccNo` int(11) NOT NULL,
  `Pass` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `credentials`
--

INSERT INTO `credentials` (`AccNo`, `Pass`) VALUES
(197, '$2y$10$7IIfksddC.juTraxmYGTceLp.81mwMB2e2NOBB9YZy.ii9oY1Li8W'),
(198, '$2y$10$TJGtCn8Nd4ZHng8OY/K1LODLWd3SMnbXjIlzHo8vjPy5pGK6qocPO'),
(199, '$2y$10$h6Eq4XrzBTudR7Vo2fZ/IemkyV8DgPPfe.CBv0UI1Bbm.kJOYfeYi'),
(200, '$2y$10$dop1oPiHyey.V.86PakZCuDrZbgOCtOqRDOE8vT3.U4Of4RpeIqXS');

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `Sender` int(11) NOT NULL,
  `Receiver` int(11) NOT NULL,
  `Amount` decimal(10,0) NOT NULL,
  `Remarks` varchar(50) NOT NULL,
  `Date` date NOT NULL DEFAULT current_timestamp(),
  `Time` time NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `transactions`
--

INSERT INTO `transactions` (`Sender`, `Receiver`, `Amount`, `Remarks`, `Date`, `Time`) VALUES
(200, 199, '10', 'Salary Allowance', '2024-01-21', '07:58:18'),
(199, 200, '1', 'Tax Return', '2024-01-21', '07:59:00'),
(199, 200, '5', 'Monthly Expenses', '2024-01-21', '08:00:12'),
(200, 198, '6', 'Office Rent', '2024-01-21', '08:02:00'),
(200, 199, '10', 'test', '2024-01-21', '08:48:05');

-- --------------------------------------------------------

--
-- Table structure for table `userinfo`
--

CREATE TABLE `userinfo` (
  `AccNo` int(11) NOT NULL,
  `Name` varchar(30) DEFAULT NULL,
  `Address` varchar(30) DEFAULT NULL,
  `Email` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `userinfo`
--

INSERT INTO `userinfo` (`AccNo`, `Name`, `Address`, `Email`) VALUES
(197, 'Ram Bahadur', 'Pokhara', 'ram@bahadur.com'),
(198, 'Sam bahadur', 'Kathmandu', 'sam@bahadur.com'),
(199, 'Dam Bahadur', 'Dhanghadi', 'dam@bahadur.com'),
(200, 'Sangam Adhikari', 'Pokhara', 'sangam@adhikari.com');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `balance`
--
ALTER TABLE `balance`
  ADD PRIMARY KEY (`AccNo`);

--
-- Indexes for table `credentials`
--
ALTER TABLE `credentials`
  ADD PRIMARY KEY (`AccNo`);

--
-- Indexes for table `userinfo`
--
ALTER TABLE `userinfo`
  ADD PRIMARY KEY (`AccNo`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `credentials`
--
ALTER TABLE `credentials`
  MODIFY `AccNo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=201;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `balance`
--
ALTER TABLE `balance`
  ADD CONSTRAINT `balance_ibfk_1` FOREIGN KEY (`AccNo`) REFERENCES `credentials` (`AccNo`);

--
-- Constraints for table `userinfo`
--
ALTER TABLE `userinfo`
  ADD CONSTRAINT `userinfo_ibfk_1` FOREIGN KEY (`AccNo`) REFERENCES `credentials` (`AccNo`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
