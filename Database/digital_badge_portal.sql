-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 24, 2026 at 11:22 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `digital_badge_portal`
--

-- --------------------------------------------------------

--
-- Table structure for table `badges`
--

CREATE TABLE `badges` (
  `badge_id` varchar(20) NOT NULL,
  `student_id` varchar(20) NOT NULL,
  `module_id` varchar(20) NOT NULL,
  `verification_code` varchar(100) NOT NULL,
  `issued_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `badges`
--

INSERT INTO `badges` (`badge_id`, `student_id`, `module_id`, `verification_code`, `issued_at`) VALUES
('B001', 'STU001', 'M001', 'SVT8A29F1', '2026-08-31 07:06:10'),
('B002', 'STU001', 'M002', 'JDBC7B92A', '2026-08-31 07:06:10'),
('B003', 'STU002', 'M001', 'SVT91C82D', '2026-08-31 07:06:10'),
('B004', 'STU001', 'M005', 'BADGE-8EC61C0021', '2026-08-31 09:07:22'),
('B005', 'STU002', 'M003', 'BADGE-D19C138247', '2026-08-31 09:07:22'),
('B006', 'STU002', 'M004', 'BADGE-4998F4AC2D', '2026-08-31 09:07:22'),
('B007', 'STU003', 'M001', 'BADGE-E446B789FC', '2026-08-31 09:07:22'),
('B008', 'STU003', 'M006', 'BADGE-49B4004F79', '2026-08-31 09:07:22'),
('B009', 'STU003', 'M007', 'BADGE-DF1398095B', '2026-08-31 09:07:22'),
('B010', 'STU004', 'M004', 'BADGE-C1699AC353', '2026-08-31 09:07:22'),
('B011', 'STU004', 'M005', 'BADGE-462DD21F57', '2026-08-31 09:07:22'),
('B012', 'STU004', 'M008', 'BADGE-C063F8565B', '2026-08-31 09:07:22'),
('B013', 'STU005', 'M002', 'BADGE-EECF7A0664', '2026-08-31 09:07:22'),
('B014', 'STU005', 'M006', 'BADGE-192B786FA4', '2026-08-31 09:07:22'),
('B015', 'STU005', 'M009', 'BADGE-4043853555', '2026-08-31 09:07:22'),
('B016', 'STU006', 'M004', 'BADGE-35F4BE147C', '2026-08-31 09:07:22'),
('B017', 'STU006', 'M005', 'BADGE-F5A1BD94D7', '2026-08-31 09:07:22'),
('B018', 'STU007', 'M001', 'BADGE-CEEB89F0F6', '2026-08-31 09:07:22'),
('B019', 'STU007', 'M006', 'BADGE-107BC25B96', '2026-08-31 09:07:22'),
('B020', 'STU008', 'M007', 'BADGE-A838AF3439', '2026-08-31 09:07:22'),
('B021', 'STU008', 'M008', 'BADGE-AB6FA030CF', '2026-08-31 09:07:22'),
('B022', 'STU009', 'M002', 'BADGE-8AE8D97480', '2026-08-31 09:07:22'),
('B023', 'STU009', 'M009', 'BADGE-59DD10ECFD', '2026-08-31 09:07:22'),
('B024', 'STU010', 'M003', 'BADGE-FC7A7B1551', '2026-08-31 09:07:22'),
('B025', 'STU010', 'M010', 'BADGE-ED4D61FBC8', '2026-08-31 09:07:22');

-- --------------------------------------------------------

--
-- Table structure for table `badge_tiers`
--

CREATE TABLE `badge_tiers` (
  `tier_id` varchar(10) NOT NULL,
  `tier_name` varchar(20) NOT NULL,
  `minimum_score` int(11) NOT NULL,
  `maximum_score` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `badge_tiers`
--

INSERT INTO `badge_tiers` (`tier_id`, `tier_name`, `minimum_score`, `maximum_score`) VALUES
('T001', 'Bronze', 50, 69),
('T002', 'Silver', 70, 89),
('T003', 'Gold', 90, 100);

-- --------------------------------------------------------

--
-- Table structure for table `modules`
--

CREATE TABLE `modules` (
  `module_id` varchar(20) NOT NULL,
  `title` varchar(100) NOT NULL,
  `unit` varchar(100) NOT NULL,
  `description` text DEFAULT NULL,
  `difficulty` varchar(20) DEFAULT NULL,
  `duration_hours` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `modules`
--

INSERT INTO `modules` (`module_id`, `title`, `unit`, `description`, `difficulty`, `duration_hours`) VALUES
('M001', 'Servlet Fundamentals', 'Web Technologies', 'Learn the fundamentals of Java Servlets, servlet architecture, request handling and dynamic web content.', 'Intermediate', 6),
('M002', 'JDBC Basics', 'Web Technologies', 'Learn database connectivity using JDBC, including connections, statements, prepared statements and result sets.', 'Intermediate', 5),
('M003', 'CGI Fundamentals', 'Web Technologies', 'Understand Common Gateway Interface, request processing and the role of CGI scripts in web applications.', 'Intermediate', 4),
('M004', 'HTML Fundamentals', 'Unit 1', 'Learn HTML structure, elements, forms, links, tables and semantic web page design.', 'Beginner', 4),
('M005', 'CSS Fundamentals', 'Unit 1', 'Learn styling, selectors, layouts, responsive design and modern CSS techniques.', 'Beginner', 5),
('M006', 'JavaScript Basics', 'Unit 2', 'Learn JavaScript variables, functions, events, DOM manipulation and basic validation.', 'Beginner', 6),
('M007', 'Servlet Lifecycle', 'Unit 3', 'Understand servlet initialization, request processing, service methods and servlet destruction.', 'Advanced', 5),
('M008', 'Database Connectivity', 'Unit 4', 'Learn how web applications communicate with relational databases using JDBC.', 'Intermediate', 5),
('M009', 'Session Management', 'Unit 5', 'Learn sessions, cookies, session tracking and maintaining user state in web applications.', 'Intermediate', 4),
('M010', 'Web Application Security', 'Unit 5', 'Understand authentication, authorization, input validation and common web security practices.', 'Advanced', 6);

-- --------------------------------------------------------

--
-- Table structure for table `module_completions`
--

CREATE TABLE `module_completions` (
  `completion_id` varchar(20) NOT NULL,
  `student_id` varchar(20) NOT NULL,
  `module_id` varchar(20) NOT NULL,
  `score` int(11) NOT NULL,
  `completed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `module_completions`
--

INSERT INTO `module_completions` (`completion_id`, `student_id`, `module_id`, `score`, `completed_at`) VALUES
('C001', 'STU001', 'M001', 94, '2026-08-31 09:07:22'),
('C002', 'STU001', 'M002', 86, '2026-08-31 09:07:22'),
('C003', 'STU001', 'M005', 91, '2026-08-31 09:07:22'),
('C004', 'STU002', 'M001', 78, '2026-08-31 09:07:22'),
('C005', 'STU002', 'M003', 88, '2026-08-31 09:07:22'),
('C006', 'STU002', 'M004', 92, '2026-08-31 09:07:22'),
('C007', 'STU003', 'M001', 96, '2026-08-31 09:07:22'),
('C008', 'STU003', 'M006', 84, '2026-08-31 09:07:22'),
('C009', 'STU003', 'M007', 90, '2026-08-31 09:07:22'),
('C010', 'STU004', 'M004', 73, '2026-08-31 09:07:22'),
('C011', 'STU004', 'M005', 81, '2026-08-31 09:07:22'),
('C012', 'STU004', 'M008', 89, '2026-08-31 09:07:22'),
('C013', 'STU005', 'M002', 95, '2026-08-31 09:07:22'),
('C014', 'STU005', 'M006', 87, '2026-08-31 09:07:22'),
('C015', 'STU005', 'M009', 76, '2026-08-31 09:07:22'),
('C016', 'STU006', 'M004', 68, '2026-08-31 09:07:22'),
('C017', 'STU006', 'M005', 74, '2026-08-31 09:07:22'),
('C018', 'STU007', 'M001', 82, '2026-08-31 09:07:22'),
('C019', 'STU007', 'M006', 93, '2026-08-31 09:07:22'),
('C020', 'STU008', 'M007', 97, '2026-08-31 09:07:22'),
('C021', 'STU008', 'M008', 91, '2026-08-31 09:07:22'),
('C022', 'STU009', 'M002', 79, '2026-08-31 09:07:22'),
('C023', 'STU009', 'M009', 88, '2026-08-31 09:07:22'),
('C024', 'STU010', 'M003', 94, '2026-08-31 09:07:22'),
('C025', 'STU010', 'M010', 85, '2026-08-31 09:07:22');

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `student_id` varchar(20) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `department` varchar(50) DEFAULT NULL,
  `year` int(11) DEFAULT NULL,
  `joined_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`student_id`, `name`, `email`, `department`, `year`, `joined_at`) VALUES
('STU001', 'Jasmitha Reddy', 'jasmitha@gmail.com', 'CSE', 2, '2026-08-31 09:01:47'),
('STU002', 'Adarsh', 'adarsh@gmail.com', 'CSE', 2, '2026-08-31 09:01:47'),
('STU003', 'Yeshwanth', 'yeshwanth@gmail.com', 'CSE', 3, '2026-08-31 09:01:47'),
('STU004', 'Arjun Kumar', 'arjun@gmail.com', 'CSE', 2, '2026-08-31 09:03:25'),
('STU005', 'Sneha Patel', 'sneha@gmail.com', 'IT', 3, '2026-08-31 09:03:25'),
('STU006', 'Varun Reddy', 'varun@gmail.com', 'CSE', 1, '2026-08-31 09:03:25'),
('STU007', 'Meera Nair', 'meera@gmail.com', 'ECE', 2, '2026-08-31 09:03:25'),
('STU008', 'Aditya Rao', 'aditya@gmail.com', 'CSE', 4, '2026-08-31 09:03:25'),
('STU009', 'Priya Sharma', 'priya@gmail.com', 'IT', 2, '2026-08-31 09:03:25'),
('STU010', 'Karthik Reddy', 'karthik@gmail.com', 'CSE', 3, '2026-08-31 09:03:25'),
('STU011', 'Ishita Singh', 'ishita@gmail.com', 'CSE', 2, '2026-08-31 09:03:25'),
('STU012', 'Rohan Verma', 'rohan@gmail.com', 'ECE', 3, '2026-08-31 09:03:25'),
('STU013', 'Diya Kapoor', 'diya@gmail.com', 'IT', 1, '2026-08-31 09:03:25'),
('STU014', 'Nikhil Rao', 'nikhil@gmail.com', 'CSE', 4, '2026-08-31 09:03:25'),
('STU015', 'Aarav Mehta', 'aarav@gmail.com', 'CSE', 3, '2026-08-31 09:03:25');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `badges`
--
ALTER TABLE `badges`
  ADD PRIMARY KEY (`badge_id`),
  ADD UNIQUE KEY `verification_code` (`verification_code`),
  ADD KEY `student_id` (`student_id`),
  ADD KEY `module_id` (`module_id`);

--
-- Indexes for table `badge_tiers`
--
ALTER TABLE `badge_tiers`
  ADD PRIMARY KEY (`tier_id`),
  ADD UNIQUE KEY `tier_name` (`tier_name`);

--
-- Indexes for table `modules`
--
ALTER TABLE `modules`
  ADD PRIMARY KEY (`module_id`);

--
-- Indexes for table `module_completions`
--
ALTER TABLE `module_completions`
  ADD PRIMARY KEY (`completion_id`),
  ADD UNIQUE KEY `student_id` (`student_id`,`module_id`),
  ADD KEY `module_id` (`module_id`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`student_id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `badges`
--
ALTER TABLE `badges`
  ADD CONSTRAINT `badges_ibfk_1` FOREIGN KEY (`student_id`) REFERENCES `students` (`student_id`),
  ADD CONSTRAINT `badges_ibfk_2` FOREIGN KEY (`module_id`) REFERENCES `modules` (`module_id`);

--
-- Constraints for table `module_completions`
--
ALTER TABLE `module_completions`
  ADD CONSTRAINT `module_completions_ibfk_1` FOREIGN KEY (`student_id`) REFERENCES `students` (`student_id`),
  ADD CONSTRAINT `module_completions_ibfk_2` FOREIGN KEY (`module_id`) REFERENCES `modules` (`module_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
