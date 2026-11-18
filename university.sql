-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 18, 2026 at 11:39 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `university`
--

-- --------------------------------------------------------

--
-- Table structure for table `advisor`
--

CREATE TABLE `advisor` (
  `s_ID` varchar(5) NOT NULL,
  `i_ID` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `advisor`
--

INSERT INTO `advisor` (`s_ID`, `i_ID`) VALUES
('08090', '08090'),
('10100', '19997'),
('12345', '44554'),
('23423', '33322'),
('33333', '44554'),
('44144', '45464'),
('60606', '11001'),
('66710', '45464'),
('78787', '00900'),
('81134', '00900');

-- --------------------------------------------------------

--
-- Table structure for table `course`
--

CREATE TABLE `course` (
  `course_ID` varchar(8) NOT NULL,
  `title` varchar(50) NOT NULL,
  `dept_name` varchar(20) NOT NULL,
  `credits` decimal(2,0) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `course`
--

INSERT INTO `course` (`course_ID`, `title`, `dept_name`, `credits`) VALUES
('AR100001', 'Intro to Art', 'Art', 2),
('AR100002', 'Art 2', 'Art', 2),
('BS100001', 'Intro to Business', 'Business', 2),
('BS100002', 'Business 2', 'Business', 2),
('CS100001', 'Intro to Computer Science', 'Computer Science', 2),
('CS100002', 'Computer Science 2', 'Computer Science', 2),
('PS100001', 'Intro to Psychology', 'Psychology', 2),
('PS100002', 'Psychology 2', 'Psychology', 2);

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE `department` (
  `dept_name` varchar(20) NOT NULL,
  `building` varchar(15) NOT NULL,
  `budget` decimal(12,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `department`
--

INSERT INTO `department` (`dept_name`, `building`, `budget`) VALUES
('Art', 'Engel Hall', 50000000.00),
('Business', 'Johnson Hall', 200.00),
('Computer Science', 'Cool Hall', 120000000.00),
('Psychology', 'Bowman Hall', 3000000.00);

-- --------------------------------------------------------

--
-- Table structure for table `instructor`
--

CREATE TABLE `instructor` (
  `ID` varchar(5) NOT NULL,
  `name_first` varchar(20) NOT NULL,
  `name_last` varchar(20) NOT NULL,
  `dept_name` varchar(20) NOT NULL,
  `salary` decimal(8,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `instructor`
--

INSERT INTO `instructor` (`ID`, `name_first`, `name_last`, `dept_name`, `salary`) VALUES
('00900', 'Personal', 'Computer', 'Computer Science', 89000.00),
('08090', 'Björk', 'Guðmundsdóttir', 'Art', 999999.99),
('11001', 'Burger', 'Yum', 'Business', 100000.00),
('19997', 'Strong', 'Bad', 'Business', 0.02),
('31393', 'Smiling', 'Grinner', 'Computer Science', 2800.00),
('33322', 'Alison', 'Bechdel', 'Computer Science', 420000.00),
('44554', 'Meg', 'Griffin', 'Art', 1200.00),
('45464', 'Pork', 'Chop', 'Psychology', 999999.99);

-- --------------------------------------------------------

--
-- Table structure for table `prereq`
--

CREATE TABLE `prereq` (
  `course_ID` varchar(8) NOT NULL,
  `prereq_ID` varchar(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `prereq`
--

INSERT INTO `prereq` (`course_ID`, `prereq_ID`) VALUES
('AR100002', 'AR100001'),
('BS100002', 'BS100001'),
('CS100002', 'CS100001'),
('PS100002', 'PS100001');

-- --------------------------------------------------------

--
-- Table structure for table `section`
--

CREATE TABLE `section` (
  `course_ID` varchar(8) NOT NULL,
  `sec_ID` varchar(8) NOT NULL,
  `semester` varchar(6) NOT NULL,
  `year` decimal(4,0) NOT NULL,
  `building` varchar(15) NOT NULL,
  `room_num` varchar(7) NOT NULL,
  `time_slot_ID` varchar(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `section`
--

INSERT INTO `section` (`course_ID`, `sec_ID`, `semester`, `year`, `building`, `room_num`, `time_slot_ID`) VALUES
('AR100001', '1', 'Summer', 2022, 'Johnson Hall', '345', 'A'),
('AR100001', '2', 'Fall', 2022, 'Johnson Hall', '120', 'B'),
('AR100002', '1', 'Spring', 2024, 'Painter Hall', '305', 'C'),
('BS100001', '1', 'Winter', 2023, 'Smith Hall', '455', 'D'),
('BS100002', '1', 'Fall', 2023, 'Smith Hall', '104', 'B'),
('CS100001', '1', 'Spring', 2024, 'Cool Hall', '239', 'E'),
('CS100002', '1', 'Summer', 2024, 'Cool Hall', '239', 'F'),
('PS100001', '1', 'Winter', 2023, 'Bowman Hall', '345', 'G'),
('PS100002', '1', 'Fall', 2024, 'Painter Hall', '111', 'H');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `ID` varchar(5) NOT NULL,
  `name_first` varchar(20) NOT NULL,
  `name_last` varchar(20) NOT NULL,
  `dept_name` varchar(20) NOT NULL,
  `tot_cred` decimal(3,0) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`ID`, `name_first`, `name_last`, `dept_name`, `tot_cred`) VALUES
('08090', 'Brendan', 'Valleau', 'Computer Science', 67),
('10100', 'Archie', 'Horne', 'Computer Science', 89),
('12345', 'Peter', 'Griffin', 'Business', 35),
('23423', 'Smelly', 'Girl', 'Psychology', 35),
('33333', 'Colin', 'Grant', 'Business', 28),
('44144', 'Meldin', 'Bektic', 'Computer Science', 42),
('60606', 'Giovanni', 'Viallobos Herrera', 'Computer Science', 69),
('66710', 'Stinky', 'Guy', 'Psychology', 12),
('78787', 'Ben', 'Purdem', 'Art', 10),
('81134', 'Charlie', 'Burrows', 'Computer Science', 92);

-- --------------------------------------------------------

--
-- Table structure for table `takes`
--

CREATE TABLE `takes` (
  `student_ID` varchar(5) NOT NULL,
  `course_ID` varchar(8) NOT NULL,
  `sec_ID` varchar(8) NOT NULL,
  `semester` varchar(6) NOT NULL,
  `year` decimal(4,0) NOT NULL,
  `grade` varchar(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `takes`
--

INSERT INTO `takes` (`student_ID`, `course_ID`, `sec_ID`, `semester`, `year`, `grade`) VALUES
('08090', 'CS100001', '1', 'Spring', 2024, 'A'),
('10100', 'CS100001', '1', 'Spring', 2024, 'B+'),
('12345', 'BS100001', '1', 'Spring', 2024, 'F'),
('23423', 'PS100001', '1', 'Winter', 2023, 'G'),
('23423', 'PS100002', '1', 'Fall', 2024, 'D'),
('33333', 'BS100001', '1', 'Fall', 2023, 'B');

-- --------------------------------------------------------

--
-- Table structure for table `teaches`
--

CREATE TABLE `teaches` (
  `instructor_ID` varchar(5) NOT NULL,
  `course_ID` varchar(8) NOT NULL,
  `sec_ID` varchar(8) NOT NULL,
  `semester` varchar(6) NOT NULL,
  `year` decimal(4,0) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `teaches`
--

INSERT INTO `teaches` (`instructor_ID`, `course_ID`, `sec_ID`, `semester`, `year`) VALUES
('00900', 'CS100001', '1', 'Spring', 2024),
('08090', 'AR100001', '1', 'Summer', 2022),
('08090', 'AR100001', '2', 'Fall', 2022),
('08090', 'AR100002', '1', 'Spring', 2024),
('11001', 'BS100002', '1', 'Fall', 2023),
('19997', 'BS100001', '1', 'Spring', 2024),
('31393', 'CS100002', '1', 'Summer', 2024),
('45464', 'PS100001', '1', 'Winter', 2023),
('45464', 'PS100002', '1', 'Fall', 2024);

-- --------------------------------------------------------

--
-- Table structure for table `time_slot`
--

CREATE TABLE `time_slot` (
  `time_slot_ID` varchar(4) NOT NULL,
  `day` varchar(1) NOT NULL,
  `start_hr` float(2,0) NOT NULL,
  `start_min` decimal(2,0) NOT NULL,
  `end_hr` decimal(2,0) NOT NULL,
  `end_min` decimal(2,0) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `time_slot`
--

INSERT INTO `time_slot` (`time_slot_ID`, `day`, `start_hr`, `start_min`, `end_hr`, `end_min`) VALUES
('A', 'F', 8, 0, 8, 50),
('A', 'M', 8, 0, 8, 50),
('A', 'W', 8, 0, 8, 50),
('B', 'F', 9, 0, 9, 50),
('B', 'M', 9, 0, 9, 50),
('B', 'W', 9, 0, 9, 50),
('C', 'F', 11, 0, 11, 50),
('C', 'M', 11, 0, 11, 50),
('C', 'W', 11, 0, 11, 50),
('D', 'F', 13, 0, 13, 50),
('D', 'M', 13, 0, 13, 50),
('D', 'W', 13, 0, 13, 50),
('E', 'R', 10, 30, 11, 45),
('E', 'T', 10, 30, 11, 45),
('F', 'R', 14, 30, 15, 45),
('F', 'T', 14, 30, 15, 45),
('G', 'F', 16, 0, 16, 50),
('G', 'M', 16, 0, 16, 50),
('G', 'W', 16, 0, 16, 50),
('H', 'W', 10, 0, 12, 30);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `advisor`
--
ALTER TABLE `advisor`
  ADD PRIMARY KEY (`s_ID`,`i_ID`);

--
-- Indexes for table `course`
--
ALTER TABLE `course`
  ADD PRIMARY KEY (`course_ID`),
  ADD KEY `dept_name` (`dept_name`);

--
-- Indexes for table `department`
--
ALTER TABLE `department`
  ADD PRIMARY KEY (`dept_name`);

--
-- Indexes for table `instructor`
--
ALTER TABLE `instructor`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `dept_name` (`dept_name`);

--
-- Indexes for table `prereq`
--
ALTER TABLE `prereq`
  ADD PRIMARY KEY (`course_ID`,`prereq_ID`);

--
-- Indexes for table `section`
--
ALTER TABLE `section`
  ADD PRIMARY KEY (`course_ID`,`sec_ID`,`semester`,`year`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `dept_name` (`dept_name`);

--
-- Indexes for table `takes`
--
ALTER TABLE `takes`
  ADD PRIMARY KEY (`student_ID`,`course_ID`,`sec_ID`,`semester`,`year`);

--
-- Indexes for table `teaches`
--
ALTER TABLE `teaches`
  ADD PRIMARY KEY (`instructor_ID`,`course_ID`,`sec_ID`,`semester`,`year`);

--
-- Indexes for table `time_slot`
--
ALTER TABLE `time_slot`
  ADD PRIMARY KEY (`time_slot_ID`,`day`,`start_hr`,`start_min`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
