-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 04, 2021 at 02:06 PM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `phpbank`
--

-- --------------------------------------------------------

--
-- Table structure for table `customerdata`
--

CREATE TABLE `customerdata` (
  `ID` int(5) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `father_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `email_address` varchar(30) NOT NULL,
  `mobile_no` varchar(30) NOT NULL,
  `account_no` varchar(30) NOT NULL,
  `aadhar_no` varchar(30) NOT NULL,
  `address` varchar(100) NOT NULL,
  `city` varchar(30) NOT NULL,
  `taluka` varchar(30) NOT NULL,
  `district` varchar(30) NOT NULL,
  `state` varchar(30) NOT NULL,
  `dob` varchar(20) NOT NULL,
  `balance` varchar(50) NOT NULL,
  `pincode` varchar(10) NOT NULL,
  `customer_img` varchar(50) NOT NULL,
  `gender` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customerdata`
--

INSERT INTO `customerdata` (`ID`, `first_name`, `father_name`, `last_name`, `email_address`, `mobile_no`, `account_no`, `aadhar_no`, `address`, `city`, `taluka`, `district`, `state`, `dob`, `balance`, `pincode`, `customer_img`, `gender`) VALUES
(110, 'Jay', 'Rajeshbhai', 'Patel', 'jay123@gmail.com', '7851456325', '460558695', '12342222555', 'Ambedkar Soc.', 'Surat', 'Surat', 'Surat', 'Gujarat', '1996-06-12', '3800', '395003', '', 'Male'),
(2521, 'Raj', 'Arvind', 'Malhotra', 'rj123@gmail.com', '7894589523', '125125', '000012129898', 'pal', 'surat', 'surat', 'surat', 'Gujrat', '1999-03-03', '4700', '395006', '', 'Male'),
(2522, 'Namrata', 'Mansukhlal', 'Munjani', 'namu56@gmail.com', '7859853651', '1711330760', '1258985212', 'Kalyan Nagar', 'Surat', 'Surat', 'Surat', 'Gujarat', '2000-06-05', '11000', '395003', '', 'Female'),
(2523, 'Sahil', 'Umesh', 'Jathava', 'jahil@gmail.com', '7853256450', '925412892', '7878982253', 'Gopnath Soc.', 'Surat', 'Surat', 'Surat', 'Gujarat', '2005-06-14', '3000', '360005', '', 'Male');

-- --------------------------------------------------------

--
-- Table structure for table `customer_contacts`
--

CREATE TABLE `customer_contacts` (
  `ID` int(10) NOT NULL,
  `fullname` varchar(50) NOT NULL,
  `email_address` varchar(30) NOT NULL,
  `subject` varchar(50) NOT NULL,
  `message` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer_contacts`
--

INSERT INTO `customer_contacts` (`ID`, `fullname`, `email_address`, `subject`, `message`) VALUES
(6, 'harsh', 'harsh24@gmail.com', 'project', 'hello'),
(7, 'khushal', 'jay123@gmail.com', 'TRY ', 'THIS IS TRY'),
(8, 'Raj', 'rj@gmail.com', 'Apply for employee', 'Apply for employee'),
(12, 'khushalvadher229@gmail.com', 'jhdjd@gmail.com', 'dd', 'dj');

-- --------------------------------------------------------

--
-- Table structure for table `employeedata`
--

CREATE TABLE `employeedata` (
  `ID` int(5) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `father_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `email_address` varchar(30) NOT NULL,
  `pass` varchar(30) NOT NULL,
  `mobile_no` varchar(20) NOT NULL,
  `aadhar_no` varchar(20) NOT NULL,
  `emp_id` varchar(10) NOT NULL,
  `dob` varchar(10) NOT NULL,
  `qualification` varchar(50) NOT NULL,
  `address` varchar(100) NOT NULL,
  `city` varchar(20) NOT NULL,
  `taluka` varchar(20) NOT NULL,
  `district` varchar(20) NOT NULL,
  `state` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employeedata`
--

INSERT INTO `employeedata` (`ID`, `first_name`, `father_name`, `last_name`, `email_address`, `pass`, `mobile_no`, `aadhar_no`, `emp_id`, `dob`, `qualification`, `address`, `city`, `taluka`, `district`, `state`) VALUES
(1, 'Rajesh', 'ketanbhai', 'jadav', 'rajesh13@gmail.com', '1q2w3e4r', '7676767878', '8787676767', '3292', '24/1/2002', 'B.com', 'Adajan', 'surat', 'surat', 'surat', 'Gujarat'),
(20, 'Khushal', 'dilipbhai', 'Vadher', 'khushalvadher229@gmail.com', '8kd9kdv', '9898989867', '98765432', '4140', '2021-06-30', 'B.com', 'palanpur jakatnaka', 'Surat', 'Surat', 'Surat', 'Gujarat');

-- --------------------------------------------------------

--
-- Table structure for table `manager`
--

CREATE TABLE `manager` (
  `ID` int(5) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(30) NOT NULL,
  `pass` varchar(50) NOT NULL,
  `dob` varchar(10) NOT NULL,
  `address` varchar(100) NOT NULL,
  `mobile` varchar(30) NOT NULL,
  `aadhar_no` varchar(30) NOT NULL,
  `qualification` varchar(50) NOT NULL,
  `age` varchar(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `manager`
--

INSERT INTO `manager` (`ID`, `name`, `email`, `pass`, `dob`, `address`, `mobile`, `aadhar_no`, `qualification`, `age`) VALUES
(1, 'Ajay kedia', 'kdvadher1510@gmail.com', '24680', '24/1/1990', 'abc', '9876543210', '9876543210', 'B.com', '31');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customerdata`
--
ALTER TABLE `customerdata`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `customer_contacts`
--
ALTER TABLE `customer_contacts`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `employeedata`
--
ALTER TABLE `employeedata`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `customerdata`
--
ALTER TABLE `customerdata`
  MODIFY `ID` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2524;

--
-- AUTO_INCREMENT for table `customer_contacts`
--
ALTER TABLE `customer_contacts`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `employeedata`
--
ALTER TABLE `employeedata`
  MODIFY `ID` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
