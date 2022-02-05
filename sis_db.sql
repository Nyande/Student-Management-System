-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Feb 05, 2022 at 07:46 AM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sis_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `attendance`
--

CREATE TABLE `attendance` (
  `attendance_id` int(10) NOT NULL,
  `PRN_number` bigint(15) NOT NULL,
  `course` varchar(50) NOT NULL,
  `status` varchar(10) NOT NULL,
  `Date_taken` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `attendance`
--

INSERT INTO `attendance` (`attendance_id`, `PRN_number`, `course`, `status`, `Date_taken`) VALUES
(1, 800, 'Web Technologies', 'Present', '25-01-2022'),
(2, 801, 'Software Engineering ', 'Absent', '2022-01-26'),
(3, 801, 'Data Communications and Networking ', 'Present', '2022-01-25'),
(4, 802, 'Finance and Accounting ', 'Absent', '2022-01-25'),
(5, 802, 'Information System and Technologies ', 'Present', '2022-01-26');

-- --------------------------------------------------------

--
-- Table structure for table `courses_info`
--

CREATE TABLE `courses_info` (
  `Course_code` varchar(10) NOT NULL,
  `Course_name` varchar(50) NOT NULL,
  `course_credit` int(3) NOT NULL,
  `instructor` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `courses_info`
--

INSERT INTO `courses_info` (`Course_code`, `Course_name`, `course_credit`, `instructor`) VALUES
('MSC100', 'Web Technologies', 3, 'Krishna Rastogi'),
('MSC101', 'Software Engineering', 2, 'Mitali Hora'),
('MSC102', 'Data Communications and Networking', 3, 'Kshitij Tripathi'),
('MSC103', 'Finance and Accounting', 3, 'Jignesh Shah'),
('MSC104', 'Java Programming', 3, 'Pritibala Patel'),
('MSC105', 'Information System and Technologies', 3, 'Krina Shah');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `user_id` int(10) NOT NULL,
  `Password` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`user_id`, `Password`) VALUES
(100, '123456'),
(600, '123456');

-- --------------------------------------------------------

--
-- Table structure for table `programs`
--

CREATE TABLE `programs` (
  `Program_id` varchar(10) NOT NULL,
  `Program_name` varchar(50) NOT NULL,
  `no_of_years` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `programs`
--

INSERT INTO `programs` (`Program_id`, `Program_name`, `no_of_years`) VALUES
('BCA', 'Bachelor of Computer Applications', 3),
('MSC IT', 'Master of Science in Information Technology', 2);

-- --------------------------------------------------------

--
-- Table structure for table `results`
--

CREATE TABLE `results` (
  `ID` int(10) NOT NULL,
  `PRN_number` bigint(15) NOT NULL,
  `Student_name` varchar(50) NOT NULL,
  `Course_code` varchar(10) NOT NULL,
  `Course_name` varchar(50) NOT NULL,
  `Credit_units` int(3) NOT NULL,
  `instructor` varchar(50) NOT NULL,
  `Marks` float NOT NULL,
  `Grade` char(1) NOT NULL,
  `Comment` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `results`
--

INSERT INTO `results` (`ID`, `PRN_number`, `Student_name`, `Course_code`, `Course_name`, `Credit_units`, `instructor`, `Marks`, `Grade`, `Comment`) VALUES
(1, 800, 'Nyande Paul Natale', 'MSC100', 'Web Technologies', 3, 'Krishna Rastogi', 90, 'O', 'Outstanding Performance Nyande. Keep it up'),
(2, 800, 'Nyande Paul Natale', 'MSC101', 'Software Engineering', 2, 'Mitali Hora', 89, 'A', 'Keep it up, But aim for outstanding result'),
(3, 800, 'Nyande Paul Natale', 'MSC102', 'Data Communications and Networking', 3, 'Kshitij Tripathi', 90, 'O', 'Oustanding performance to you'),
(4, 800, 'Nyande Paul Natale', 'MSC103', 'Finance and Accounting', 3, 'Jignesh Shah', 80, 'A', 'Great result but aim for Outstanding'),
(5, 800, 'Nyande Paul Natale', 'MSC104', 'Java Programming', 3, 'Pritabala Patel', 100, 'O', 'Congratulations and Excellent perfromance'),
(6, 800, 'Nyande Paul Natale', 'MSC105', 'Information System and Technologies', 3, 'Krina Shah', 75, 'B', 'Aim for a better grade above this'),
(7, 801, 'Darshan Bhat', 'MSC100', 'Web Technologies', 3, 'Krishna Rastogi', 100, 'O', 'Wow,Congratulations'),
(8, 802, 'Hannah Rajput', 'MSC101', 'Software Engineering', 2, 'Mitali Hora', 80, 'A', 'Well Done, But aim for Oustanding performance next time'),
(10, 801, 'Darshan Bhat', 'MSC102', 'Data Communications and Networking ', 3, 'Kshitij Tripathi', 35, 'F', 'You failed the Course, Prepare to do it next time offered'),
(11, 802, 'Hannah Rajput', 'MSC103', 'Finance and Accounting ', 3, 'Jignesh Shah ', 100, '0', 'Oustanding performance Hannah. keep it up'),
(12, 801, 'Darshan Bhat', 'MSC105', 'Information System and Technologies ', 3, 'Krina Shah ', 100, '0', 'Oustanding performance Darshan. keep it up');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `session_id` int(11) NOT NULL,
  `session` varchar(30) NOT NULL,
  `created_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `student_info`
--

CREATE TABLE `student_info` (
  `PRN_number` bigint(15) NOT NULL,
  `Student_name` varchar(100) NOT NULL,
  `Phone_number` bigint(11) NOT NULL,
  `email_address` varchar(100) NOT NULL,
  `Gender` varchar(10) NOT NULL,
  `Department` varchar(10) NOT NULL,
  `Semester` varchar(10) NOT NULL,
  `Enrolment` varchar(10) NOT NULL,
  `Address` text NOT NULL,
  `Password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `student_info`
--

INSERT INTO `student_info` (`PRN_number`, `Student_name`, `Phone_number`, `email_address`, `Gender`, `Department`, `Semester`, `Enrolment`, `Address`, `Password`) VALUES
(800, 'Nyande Paul Natale', 9737892394, 'nyande@gmail.com', 'Male', 'MSC IT', 'One', '2021/2022', 'Praptagunj', '123456789'),
(801, 'Darshan Bhat', 9787345674, 'darshan@gmail.com', 'Male', 'MSC IT', 'One', '2021/2022', 'Alkapuri', '12345678'),
(802, 'Hannah Rajput', 9784567834, 'hannah@gmail.com', 'Female', 'MSC IT', 'One', '2021/2022', 'Sayagunj', '1234567');

-- --------------------------------------------------------

--
-- Table structure for table `teacher_info`
--

CREATE TABLE `teacher_info` (
  `Id_number` int(10) NOT NULL,
  `Name` varchar(100) NOT NULL,
  `Designation` varchar(50) NOT NULL,
  `Gender` varchar(10) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `Phone_number` bigint(20) NOT NULL,
  `Address` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `teacher_info`
--

INSERT INTO `teacher_info` (`Id_number`, `Name`, `Designation`, `Gender`, `Email`, `Phone_number`, `Address`) VALUES
(800400, 'Krishna Rastogi', 'Assistant Professor', 'Male', 'Krishna@gmail.com', 893748294, 'Sayajigang'),
(800401, 'Pritibala Patel', 'Assistant \r\n															Professor', 'Female', 'pritibalapatel@gmail.com', 9867553454, 'fategunj'),
(800402, 'Krina Shah', 'Lecturer', 'Female', 'krina@gmail.com', 9789372717, 'Alkapuri'),
(800403, 'Mitali Hora', 'Assistant \r\n															Professor', 'Female', 'mitali@gmail.com', 9867544545, 'Alkapuri'),
(800404, 'Kshitij Tripathi', 'Professor', 'Male', 'Kshitij@gmail.com', 9856734845, 'Praptagunj'),
(800405, 'Jignesh Shah', 'Professor', 'Male', 'Jignesh@gmail.com', 9873456725, 'Fategunj');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `attendance`
--
ALTER TABLE `attendance`
  ADD PRIMARY KEY (`attendance_id`);

--
-- Indexes for table `courses_info`
--
ALTER TABLE `courses_info`
  ADD PRIMARY KEY (`Course_code`);

--
-- Indexes for table `programs`
--
ALTER TABLE `programs`
  ADD PRIMARY KEY (`Program_id`);

--
-- Indexes for table `results`
--
ALTER TABLE `results`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`session_id`);

--
-- Indexes for table `student_info`
--
ALTER TABLE `student_info`
  ADD PRIMARY KEY (`PRN_number`);

--
-- Indexes for table `teacher_info`
--
ALTER TABLE `teacher_info`
  ADD PRIMARY KEY (`Id_number`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `attendance`
--
ALTER TABLE `attendance`
  MODIFY `attendance_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `results`
--
ALTER TABLE `results`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `sessions`
--
ALTER TABLE `sessions`
  MODIFY `session_id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
