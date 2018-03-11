-- phpMyAdmin SQL Dump
-- version 4.0.4
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Mar 05, 2018 at 10:07 PM
-- Server version: 5.6.12-log
-- PHP Version: 5.4.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `employees`
--
CREATE DATABASE IF NOT EXISTS `employees` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `employees`;

-- --------------------------------------------------------

--
-- Table structure for table `departments`
--

CREATE TABLE IF NOT EXISTS `departments` (
  `dept_no` char(4) NOT NULL,
  `dept_name` varchar(40) NOT NULL,
  PRIMARY KEY (`dept_no`),
  UNIQUE KEY `dept_name` (`dept_name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `departments`
--

INSERT INTO `departments` (`dept_no`, `dept_name`) VALUES
('d009', 'Customer Service'),
('d005', 'Development'),
('d002', 'Finance'),
('d003', 'Human Resources'),
('d001', 'Marketing'),
('d004', 'Production'),
('d006', 'Quality Management'),
('d008', 'Research'),
('d007', 'Sales');

-- --------------------------------------------------------

--
-- Table structure for table `dept_emp`
--

CREATE TABLE IF NOT EXISTS `dept_emp` (
  `emp_no` int(11) NOT NULL,
  `dept_no` char(4) NOT NULL,
  `from_date` date NOT NULL,
  `to_date` date NOT NULL,
  PRIMARY KEY (`emp_no`,`dept_no`),
  KEY `dept_no` (`dept_no`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dept_emp`
--

INSERT INTO `dept_emp` (`emp_no`, `dept_no`, `from_date`, `to_date`) VALUES
(10001, 'd005', '1986-06-26', '9999-01-01'),
(10002, 'd007', '1996-08-03', '9999-01-01'),
(10003, 'd004', '1995-12-03', '9999-01-01'),
(10004, 'd004', '1986-12-01', '9999-01-01'),
(10005, 'd003', '1989-09-12', '9999-01-01'),
(10006, 'd005', '1990-08-05', '9999-01-01'),
(10014, 'd005', '1993-12-29', '9999-01-01');

-- --------------------------------------------------------

--
-- Table structure for table `dept_manager`
--

CREATE TABLE IF NOT EXISTS `dept_manager` (
  `emp_no` int(11) NOT NULL,
  `dept_no` char(4) NOT NULL,
  `from_date` date NOT NULL,
  `to_date` date NOT NULL,
  PRIMARY KEY (`emp_no`,`dept_no`),
  KEY `dept_no` (`dept_no`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dept_manager`
--

INSERT INTO `dept_manager` (`emp_no`, `dept_no`, `from_date`, `to_date`) VALUES
(10002, 'd001', '1985-01-01', '1991-10-01'),
(10003, 'd001', '1991-10-01', '9999-01-01'),
(10004, 'd004', '1988-09-09', '1992-08-02'),
(10005, 'd004', '1985-01-01', '1988-09-09'),
(10006, 'd003', '1992-03-21', '9999-01-01'),
(10008, 'd002', '1985-01-01', '1989-12-17'),
(10011, 'd002', '1989-12-17', '9999-01-01'),
(10013, 'd003', '1985-01-01', '1992-03-21');

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE IF NOT EXISTS `employees` (
  `emp_no` int(11) NOT NULL,
  `birth_date` date NOT NULL,
  `first_name` varchar(14) NOT NULL,
  `last_name` varchar(16) NOT NULL,
  `gender` enum('M','F') NOT NULL,
  `hire_date` date NOT NULL,
  PRIMARY KEY (`emp_no`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`emp_no`, `birth_date`, `first_name`, `last_name`, `gender`, `hire_date`) VALUES
(10001, '1991-10-01', 'Georgi', 'Facello', 'M', '1991-10-01'),
(10002, '1964-06-02', 'Bezalel', 'Simmel', 'F', '1985-11-21'),
(10003, '1959-12-03', 'Parto', 'Bamford', 'M', '1986-08-28'),
(10004, '1954-05-01', 'Chirstian', 'Koblick', 'M', '1986-12-01'),
(10005, '1955-01-21', 'Kyoichi', 'Maliniak', 'M', '1989-09-12'),
(10006, '1953-04-20', 'Anneke', 'Preusig', 'F', '1989-06-02'),
(10007, '1957-05-23', 'Tzvetan', 'Zielinski', 'F', '1989-02-10'),
(10008, '1958-02-19', 'Saniya', 'Kalloufi', 'M', '1994-09-15'),
(10009, '1952-04-19', 'Sumant', 'Peac', 'F', '1985-02-18'),
(10010, '1963-06-01', 'Duangkaew', 'Piveteau', 'F', '1989-08-24'),
(10011, '1953-11-07', 'Mary', 'Sluis', 'F', '1990-01-22'),
(10012, '1960-10-04', 'Patricio', 'Bridgland', 'M', '1992-12-18'),
(10013, '1963-06-07', 'Eberhardt', 'Terkki', 'M', '1985-10-20'),
(10014, '1956-02-12', 'Berni', 'Genin', 'M', '1987-03-11');

-- --------------------------------------------------------

--
-- Table structure for table `salaries`
--

CREATE TABLE IF NOT EXISTS `salaries` (
  `emp_no` int(11) NOT NULL,
  `salary` int(11) NOT NULL,
  `from_date` date NOT NULL,
  `to_date` date NOT NULL,
  PRIMARY KEY (`emp_no`,`from_date`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `salaries`
--

INSERT INTO `salaries` (`emp_no`, `salary`, `from_date`, `to_date`) VALUES
(10001, 60117, '1986-06-26', '1987-06-26'),
(10001, 62102, '1987-06-26', '1988-06-25'),
(10001, 66074, '1988-06-25', '1989-06-25'),
(10001, 66596, '1989-06-25', '1990-06-25'),
(10001, 66961, '1990-06-25', '1991-06-25'),
(10001, 71046, '1991-06-25', '1992-06-24'),
(10001, 74333, '1992-06-24', '1993-06-24'),
(10001, 75286, '1993-06-24', '1994-06-24'),
(10001, 75994, '1994-06-24', '1995-06-24');

-- --------------------------------------------------------

--
-- Table structure for table `titles`
--

CREATE TABLE IF NOT EXISTS `titles` (
  `emp_no` int(11) NOT NULL,
  `title` varchar(50) NOT NULL,
  `from_date` date NOT NULL,
  `to_date` date DEFAULT NULL,
  PRIMARY KEY (`emp_no`,`title`,`from_date`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `titles`
--

INSERT INTO `titles` (`emp_no`, `title`, `from_date`, `to_date`) VALUES
(10001, 'Senior Engineer', '1986-06-26', '9999-01-01'),
(10002, 'Staff', '1996-08-03', '9999-01-01'),
(10003, 'Senior Engineer', '1995-12-03', '9999-01-01'),
(10004, 'Engineer', '1986-12-01', '1995-12-01'),
(10004, 'Senior Engineer', '1995-12-01', '9999-01-01'),
(10005, 'Senior Staff', '1996-09-12', '9999-01-01'),
(10005, 'Staff', '1989-09-12', '1996-09-12'),
(10006, 'Senior Engineer', '1990-08-05', '9999-01-01'),
(10007, 'Senior Staff', '1996-02-11', '9999-01-01'),
(10007, 'Staff', '1989-02-10', '1996-02-11'),
(10008, 'Assistant Engineer', '1998-03-11', '2000-07-31');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `dept_emp`
--
ALTER TABLE `dept_emp`
  ADD CONSTRAINT `dept_emp_ibfk_1` FOREIGN KEY (`emp_no`) REFERENCES `employees` (`emp_no`) ON DELETE CASCADE,
  ADD CONSTRAINT `dept_emp_ibfk_2` FOREIGN KEY (`dept_no`) REFERENCES `departments` (`dept_no`) ON DELETE CASCADE;

--
-- Constraints for table `dept_manager`
--
ALTER TABLE `dept_manager`
  ADD CONSTRAINT `dept_manager_ibfk_1` FOREIGN KEY (`emp_no`) REFERENCES `employees` (`emp_no`) ON DELETE CASCADE,
  ADD CONSTRAINT `dept_manager_ibfk_2` FOREIGN KEY (`dept_no`) REFERENCES `departments` (`dept_no`) ON DELETE CASCADE;

--
-- Constraints for table `salaries`
--
ALTER TABLE `salaries`
  ADD CONSTRAINT `salaries_ibfk_1` FOREIGN KEY (`emp_no`) REFERENCES `employees` (`emp_no`) ON DELETE CASCADE;

--
-- Constraints for table `titles`
--
ALTER TABLE `titles`
  ADD CONSTRAINT `titles_ibfk_1` FOREIGN KEY (`emp_no`) REFERENCES `employees` (`emp_no`) ON DELETE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
