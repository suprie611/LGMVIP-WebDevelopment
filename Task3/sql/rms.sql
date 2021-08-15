-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Aug 15, 2021 at 07:56 AM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 8.0.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `rms`
--

-- --------------------------------------------------------

--
-- Table structure for table `result`
--

CREATE TABLE `result` (
  `Sno` int(55) NOT NULL,
  `Roll` int(3) NOT NULL,
  `CLASS` varchar(6) NOT NULL,
  `Subject1` varchar(15) NOT NULL,
  `Marks1` int(11) NOT NULL,
  `Subject2` varchar(15) NOT NULL,
  `Marks2` int(11) NOT NULL,
  `Subject3` varchar(15) NOT NULL,
  `Marks3` int(11) NOT NULL,
  `Subject4` varchar(15) NOT NULL,
  `Marks4` int(11) NOT NULL,
  `Subject5` varchar(15) NOT NULL,
  `Marks5` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `result`
--

INSERT INTO `result` (`Sno`, `Roll`, `CLASS`, `Subject1`, `Marks1`, `Subject2`, `Marks2`, `Subject3`, `Marks3`, `Subject4`, `Marks4`, `Subject5`, `Marks5`) VALUES
(1, 1, '5 A', 'English', 85, 'Maths', 75, 'Social Sutudies', 48, 'Science`', 89, 'Hindi', 81),
(2, 5, '5 B', 'English', 83, 'Maths', 49, 'Social Sutudies', 25, 'Science`', 93, 'Hindi', 71),
(3, 1, '6 A', 'English', 85, 'Maths', 89, 'Social Sutudies', 95, 'Science`', 90, 'Hindi', 81),
(4, 2, '6 A', 'English ', 99, 'Hindi', 93, 'Maths', 82, 'Social Studies', 95, 'Science', 98),
(5, 1, '8 A', 'English', 98, 'Maths', 100, 'Science', 100, 'Social Science', 100, 'Hindi', 97),
(6, 2, '8 A', 'English', 97, 'Maths', 95, 'Science', 93, 'Social Science', 100, 'Hindi', 80),
(7, 1, '7 B', 'English', 98, 'Maths', 100, 'Science', 100, 'Social Science', 100, 'Hindi', 99),
(8, 2, '7 B', 'English', 86, 'Maths', 92, 'Science ', 100, 'Social Science', 100, 'Hindi', 98),
(9, 1, '9 A', 'Hindi', 99, 'English', 98, 'Maths', 100, 'Science', 92, 'Social Studies', 90),
(10, 1, '9 B', 'English', 85, 'Maths', 90, 'Science', 96, 'Social Science', 99, 'Hindi', 95),
(11, 5, '9 A', 'Maths', 79, 'Science', 84, 'English', 85, 'Hindi', 78, 'Social', 68),
(12, 6, '9 A', 'Maths', 75, 'Science', 50, 'English', 68, 'Hindi', 85, 'Social', 48);

-- --------------------------------------------------------

--
-- Table structure for table `stream`
--

CREATE TABLE `stream` (
  `S_no` int(11) NOT NULL,
  `name` varchar(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `stream`
--

INSERT INTO `stream` (`S_no`, `name`) VALUES
(1, '5 A'),
(2, '5 B'),
(3, '6 A'),
(4, '6 B'),
(5, '6 C'),
(6, '6 D'),
(7, '7 A'),
(8, '7 B'),
(9, '7 C'),
(10, '7 D'),
(11, '8 A'),
(12, '8 B'),
(13, '8 C'),
(14, '8 D'),
(15, '9 A'),
(16, '9 B'),
(17, '9 C');

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `Sno` int(3) NOT NULL,
  `name` varchar(25) NOT NULL,
  `roll` int(2) NOT NULL,
  `class` varchar(7) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`Sno`, `name`, `roll`, `class`) VALUES
(1, 'Mehek Gupta', 1, '5 A'),
(2, 'Allan Joesph', 2, '6 A'),
(3, 'Eena Chaursia', 3, '6 A'),
(4, 'Umang Sadhwani', 4, '6 A'),
(5, 'Vatsal Gangrade', 5, '6 A'),
(6, 'Mayukh Jain', 6, '6 A'),
(7, 'Vanshika Agarwal', 7, '6 A'),
(8, 'Priya Malik', 8, '6 A'),
(9, 'Rumi Singh', 9, '6 A'),
(10, 'Shivani Jain', 10, '6 A'),
(11, 'Aisha Khanna', 11, '6 A'),
(12, 'Yuvraj Singh', 12, '6 B'),
(13, 'Rashmi Pandey', 13, '6 B'),
(14, 'Dimpy Pandit', 14, '6 B'),
(15, 'Shaan Ansari', 15, '6 B'),
(16, 'Himanshu Yadav', 16, '6 C'),
(17, 'Abhinav Singh', 17, '6 C'),
(18, 'Priyank Jain', 18, '6 C'),
(19, 'Anna Philips', 19, '6 D'),
(20, 'Gurbani Kaur', 20, '6 D'),
(21, 'Mini Philips', 5, '9 A'),
(22, 'maya', 4, '7 D'),
(23, 'Om singh', 6, '9 A');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `name` varchar(25) NOT NULL,
  `designation` varchar(20) NOT NULL,
  `userid` varchar(30) NOT NULL,
  `Password` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`name`, `designation`, `userid`, `Password`) VALUES
('admin', 'admin', 'admin', 'admin'),
('Deep ', 'Teacher', 'Deep01', 'deep'),
('fiza', 'Teacher', 'fiza01', 'fiza'),
('Nishi', 'Principle', 'Nishi01', 'nishi'),
('Varsh', 'Teacher', 'Varsh01', 'varsha');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `result`
--
ALTER TABLE `result`
  ADD UNIQUE KEY `Sno` (`Sno`);

--
-- Indexes for table `stream`
--
ALTER TABLE `stream`
  ADD PRIMARY KEY (`S_no`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD UNIQUE KEY `Sno` (`Sno`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`userid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `result`
--
ALTER TABLE `result`
  MODIFY `Sno` int(55) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `stream`
--
ALTER TABLE `stream`
  MODIFY `S_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `Sno` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
