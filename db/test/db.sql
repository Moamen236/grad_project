-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 10, 2021 at 12:09 AM
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
-- Database: `auuut`
--

-- --------------------------------------------------------

--
-- Table structure for table `adir`
--

CREATE TABLE `adir` (
  `id` int(11) NOT NULL,
  `adir_questions` text NOT NULL,
  `adir-question-result` int(255) NOT NULL,
  `pateint_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Table structure for table `attached_reports`
--

CREATE TABLE `attached_reports` (
  `id` int(11) NOT NULL,
  `result` int(11) NOT NULL,
  `attached-report-details` text NOT NULL,
  `photo` varchar(255) NOT NULL,
  `pateint_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Table structure for table `autism_checker`
--

CREATE TABLE `autism_checker` (
  `id` int(11) NOT NULL,
  `case_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gender` enum(`male`,`female`) COLLATE utf8mb4_unicode_ci NOT NULL,
  `age` int(3) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Table structure for table `autism_checker_question`
--

CREATE TABLE `autism_checker_question` (
  `id` int(11) NOT NULL,
  `checker_qustions` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `checker_question_result` enum(`yes`,`no`) COLLATE utf8mb4_unicode_ci NOT NULL,
  `autism_checker_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Table structure for table `caregiver`
--

CREATE TABLE `caregiver` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sp_serial_no` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Table structure for table `dsm5`
--

CREATE TABLE `dsm5` (
  `id` int(11) NOT NULL,
  `dsm5_category` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dsm5_category-result` int(11) NOT NULL,
  `pateint_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Table structure for table `dsm5_question`
--

CREATE TABLE `dsm5_question` (
  `id` int(11) NOT NULL,
  `dsm5_questions` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `dsm5_question_category` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dsm5_question_result` int(11) NOT NULL,
  `dsm5_id` int(11) NOT NULL,
  `pateint_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


--
-- Table structure for table `evaluation_history`
--

CREATE TABLE `evaluation_history` (
  `id` int(11) NOT NULL,
  `evaluation_questions` text NOT NULL,
  `evaluation_question_result` int(50) NOT NULL,
  `pateint_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


--
-- Table structure for table `long_term`
--

CREATE TABLE `long_term` (
  `id` int(11) NOT NULL,
  `long_term_discription` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `plan_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


--
-- Table structure for table `lovaas`
--

CREATE TABLE `lovaas` (
  `id` int(11) NOT NULL,
  `lovaas_category` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `pateint_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


--
-- Table structure for table `lovaas_question`
--

CREATE TABLE `lovaas_question` (
  `id` int(11) NOT NULL,
  `lovaas_questions` text COLLATE utf8_unicode_ci NOT NULL,
  `lovaas_question_category` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `lovaas_question_result` int(20) NOT NULL,
  `lovaas_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


--
-- Table structure for table `notic`
--

CREATE TABLE `notic` (
  `id` int(11) NOT NULL,
  `category` varchar(255) NOT NULL,
  `pateint_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Table structure for table `notic_questions`
--

CREATE TABLE `notic_questions` (
  `id` int(11) NOT NULL,
  `notice_questions` text NOT NULL,
  `notic_question_category` varchar(255) NOT NULL,
  `question_result` int(11) NOT NULL,
  `notic_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


--
-- Table structure for table `patient`
--

CREATE TABLE `patient` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `age` int(3) NOT NULL,
  `date_of_birth` date NOT NULL,
  `school` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gender` enum(`male`,`female`) COLLATE utf8mb4_unicode_ci NOT NULL,
  `class` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` varchar(225) COLLATE utf8mb4_unicode_ci NOT NULL,
  `No_of_bro` int(11) NOT NULL,
  `arr_btw_bro` int(11) NOT NULL,
  `spcialist_id` int(11) NOT NULL,
  `caregiver_id` int(11) NOT NULL,
  `caregiver_name` varchar(225) COLLATE utf8mb4_unicode_ci NOT NULL,
  `caregiver_relationship` varchar(225) COLLATE utf8mb4_unicode_ci NOT NULL,
  `caregiver_phone` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Table structure for table `plan`
--

CREATE TABLE `plan` (
  `id` int(11) NOT NULL,
  `lovaas_id` int(11) NOT NULL,
  `pateint_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


--
-- Table structure for table `scale`
--

CREATE TABLE `scale` (
  `id` int(11) NOT NULL,
  `scale_category` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `scale_category_result` int(11) NOT NULL,
  `dsm5_id` int(11) NOT NULL,
  `pateint_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


--
-- Table structure for table `scale_questions`
--

CREATE TABLE `scale_questions` (
  `id` int(11) NOT NULL,
  `scale_question` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `scale_question_category` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `scale_question_result` int(11) NOT NULL,
  `scale_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


--
-- Table structure for table `schedule`
--

CREATE TABLE `schedule` (
  `id` int(11) NOT NULL,
  `schedule_appointment` datetime NOT NULL,
  `specialist_id` int(11) NOT NULL,
  `caregiver_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


--
-- Table structure for table `short_term`
--

CREATE TABLE `short_term` (
  `id` int(11) NOT NULL,
  `short_term_description` text COLLATE utf8_unicode_ci NOT NULL,
  `plan_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Table structure for table `specialist`
--

CREATE TABLE `specialist` (
  `id` int(11) NOT NULL,
  `serial_no` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `age` int(3) DEFAULT NULL,
  `phone` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Table structure for table `status`
--

CREATE TABLE `status` (
  `id` int(11) NOT NULL,
  `title` text NOT NULL,
  `status_description` text NOT NULL,
  `status_degree` int(11) NOT NULL,
  `plan_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Table structure for table `strength_point`
--

CREATE TABLE `strength_point` (
  `id` int(11) NOT NULL,
  `strength_point_description` text COLLATE utf8_unicode_ci NOT NULL,
  `plan_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Table structure for table `to_do`
--

CREATE TABLE `to_do` (
  `id` int(11) NOT NULL,
  `to_do_details` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `specialist_id` int(11) NOT NULL,
  `caregiver_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


--
-- Table structure for table `weknees_point`
--

CREATE TABLE `weknees_point` (
  `id` int(11) NOT NULL,
  `weeknees_point_description` text COLLATE utf8_unicode_ci NOT NULL,
  `plan_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `adir`
--
ALTER TABLE `adir`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pateint_id` (`pateint_id`);

--
-- Indexes for table `attached_reports`
--
ALTER TABLE `attached_reports`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pateint_id` (`pateint_id`);

--
-- Indexes for table `autism_checker`
--
ALTER TABLE `autism_checker`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`) USING BTREE;

--
-- Indexes for table `autism_checker_question`
--
ALTER TABLE `autism_checker_question`
  ADD PRIMARY KEY (`id`),
  ADD KEY `autism_checker_id` (`autism_checker_id`) USING BTREE;

--
-- Indexes for table `caregiver`
--
ALTER TABLE `caregiver`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`) USING BTREE,
  ADD KEY `sp_Serial_No` (`sp_serial_no`) USING BTREE;

--
-- Indexes for table `dsm5`
--
ALTER TABLE `dsm5`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pateint_id` (`pateint_id`);

--
-- Indexes for table `dsm5_question`
--
ALTER TABLE `dsm5_question`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pateint_id` (`pateint_id`),
  ADD KEY `dsm5_id` (`dsm5_id`);

--
-- Indexes for table `evaluation_history`
--
ALTER TABLE `evaluation_history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pateint_id` (`pateint_id`);

--
-- Indexes for table `long_term`
--
ALTER TABLE `long_term`
  ADD PRIMARY KEY (`id`),
  ADD KEY `plan_id` (`plan_id`) USING BTREE;

--
-- Indexes for table `lovaas`
--
ALTER TABLE `lovaas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pateint_id` (`pateint_id`);

--
-- Indexes for table `lovaas_question`
--
ALTER TABLE `lovaas_question`
  ADD PRIMARY KEY (`id`),
  ADD KEY `lovaas_id` (`lovaas_id`) USING BTREE;

--
-- Indexes for table `notic`
--
ALTER TABLE `notic`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pateint_id` (`pateint_id`);

--
-- Indexes for table `notic_questions`
--
ALTER TABLE `notic_questions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notic_id` (`notic_id`) USING BTREE;

--
-- Indexes for table `patient`
--
ALTER TABLE `patient`
  ADD PRIMARY KEY (`id`),
  ADD KEY `spcialist_id` (`spcialist_id`) USING BTREE,
  ADD KEY `caregiver_id` (`caregiver_id`) USING BTREE;

--
-- Indexes for table `plan`
--
ALTER TABLE `plan`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pateint_id` (`pateint_id`),
  ADD KEY `lovaas_id` (`lovaas_id`) USING BTREE;

--
-- Indexes for table `scale`
--
ALTER TABLE `scale`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pateint_id` (`pateint_id`),
  ADD KEY `dsm5_id` (`dsm5_id`) USING BTREE;

--
-- Indexes for table `scale_questions`
--
ALTER TABLE `scale_questions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `scale_category` (`scale_id`) USING BTREE;

--
-- Indexes for table `schedule`
--
ALTER TABLE `schedule`
  ADD PRIMARY KEY (`id`),
  ADD KEY `specialist_id` (`specialist_id`) USING BTREE,
  ADD KEY `caregiver_id` (`caregiver_id`) USING BTREE;

--
-- Indexes for table `short_term`
--
ALTER TABLE `short_term`
  ADD PRIMARY KEY (`id`),
  ADD KEY `plan_id` (`plan_id`) USING BTREE;

--
-- Indexes for table `specialist`
--
ALTER TABLE `specialist`
  ADD PRIMARY KEY (`id`,`serial_no`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `serial_no` (`serial_no`);

--
-- Indexes for table `status`
--
ALTER TABLE `status`
  ADD PRIMARY KEY (`id`),
  ADD KEY `plan_id` (`plan_id`);

--
-- Indexes for table `strength_point`
--
ALTER TABLE `strength_point`
  ADD PRIMARY KEY (`id`),
  ADD KEY `plan_id` (`plan_id`) USING BTREE;

--
-- Indexes for table `to_do`
--
ALTER TABLE `to_do`
  ADD PRIMARY KEY (`id`),
  ADD KEY `specialist_id` (`specialist_id`) USING BTREE,
  ADD KEY `caregiver_id` (`caregiver_id`) USING BTREE;

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `weknees_point`
--
ALTER TABLE `weknees_point`
  ADD PRIMARY KEY (`id`),
  ADD KEY `plan_id` (`plan_id`) USING BTREE;

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `adir`
--
ALTER TABLE `adir`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `attached_reports`
--
ALTER TABLE `attached_reports`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `autism_checker`
--
ALTER TABLE `autism_checker`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT for table `autism_checker_question`
--
ALTER TABLE `autism_checker_question`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT for table `caregiver`
--
ALTER TABLE `caregiver`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `dsm5`
--
ALTER TABLE `dsm5`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `dsm5_question`
--
ALTER TABLE `dsm5_question`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `evaluation_history`
--
ALTER TABLE `evaluation_history`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `long_term`
--
ALTER TABLE `long_term`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `lovaas`
--
ALTER TABLE `lovaas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `lovaas_question`
--
ALTER TABLE `lovaas_question`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `notic`
--
ALTER TABLE `notic`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `notic_questions`
--
ALTER TABLE `notic_questions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `patient`
--
ALTER TABLE `patient`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=109;

--
-- AUTO_INCREMENT for table `plan`
--
ALTER TABLE `plan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `scale`
--
ALTER TABLE `scale`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `scale_questions`
--
ALTER TABLE `scale_questions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=109;

--
-- AUTO_INCREMENT for table `schedule`
--
ALTER TABLE `schedule`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `short_term`
--
ALTER TABLE `short_term`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=109;

--
-- AUTO_INCREMENT for table `specialist`
--
ALTER TABLE `specialist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT for table `status`
--
ALTER TABLE `status`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `strength_point`
--
ALTER TABLE `strength_point`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=109;

--
-- AUTO_INCREMENT for table `to_do`
--
ALTER TABLE `to_do`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT for table `weknees_point`
--
ALTER TABLE `weknees_point`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `adir`
--
ALTER TABLE `adir`
  ADD CONSTRAINT `adir_ibfk_1` FOREIGN KEY (`pateint_id`) REFERENCES `patient` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `attached_reports`
--
ALTER TABLE `attached_reports`
  ADD CONSTRAINT `attached_reports_ibfk_1` FOREIGN KEY (`pateint_id`) REFERENCES `patient` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `autism_checker`
--
ALTER TABLE `autism_checker`
  ADD CONSTRAINT `autism_checker_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);

--
-- Constraints for table `autism_checker_question`
--
ALTER TABLE `autism_checker_question`
  ADD CONSTRAINT `autism_checker_question_ibfk_1` FOREIGN KEY (`autism_checker_id`) REFERENCES `autism_checker` (`id`);

--
-- Constraints for table `caregiver`
--
ALTER TABLE `caregiver`
  ADD CONSTRAINT `caregiver_ibfk_4` FOREIGN KEY (`sp_serial_no`) REFERENCES `specialist` (`serial_no`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `dsm5`
--
ALTER TABLE `dsm5`
  ADD CONSTRAINT `dsm5_ibfk_1` FOREIGN KEY (`pateint_id`) REFERENCES `patient` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `dsm5_question`
--
ALTER TABLE `dsm5_question`
  ADD CONSTRAINT `dsm5_question_ibfk_1` FOREIGN KEY (`pateint_id`) REFERENCES `patient` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `dsm5_question_ibfk_2` FOREIGN KEY (`dsm5_id`) REFERENCES `dsm5` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `evaluation_history`
--
ALTER TABLE `evaluation_history`
  ADD CONSTRAINT `evaluation_history_ibfk_1` FOREIGN KEY (`pateint_id`) REFERENCES `patient` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `long_term`
--
ALTER TABLE `long_term`
  ADD CONSTRAINT `long_term_ibfk_1` FOREIGN KEY (`plan_id`) REFERENCES `plan` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `lovaas`
--
ALTER TABLE `lovaas`
  ADD CONSTRAINT `lovaas_ibfk_1` FOREIGN KEY (`pateint_id`) REFERENCES `patient` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `lovaas_question`
--
ALTER TABLE `lovaas_question`
  ADD CONSTRAINT `lovaas_question_ibfk_1` FOREIGN KEY (`lovaas_id`) REFERENCES `lovaas` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `notic`
--
ALTER TABLE `notic`
  ADD CONSTRAINT `notic_ibfk_1` FOREIGN KEY (`pateint_id`) REFERENCES `patient` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `notic_questions`
--
ALTER TABLE `notic_questions`
  ADD CONSTRAINT `notic_questions_ibfk_1` FOREIGN KEY (`notic_id`) REFERENCES `notic` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `patient`
--
ALTER TABLE `patient`
  ADD CONSTRAINT `patient_ibfk_1` FOREIGN KEY (`spcialist_id`) REFERENCES `specialist` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `patient_ibfk_2` FOREIGN KEY (`caregiver_id`) REFERENCES `caregiver` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `plan`
--
ALTER TABLE `plan`
  ADD CONSTRAINT `plan_ibfk_1` FOREIGN KEY (`lovaas_id`) REFERENCES `lovaas` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `plan_ibfk_2` FOREIGN KEY (`pateint_id`) REFERENCES `patient` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `scale`
--
ALTER TABLE `scale`
  ADD CONSTRAINT `scale_ibfk_1` FOREIGN KEY (`dsm5_id`) REFERENCES `dsm5` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `scale_ibfk_2` FOREIGN KEY (`pateint_id`) REFERENCES `patient` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `scale_questions`
--
ALTER TABLE `scale_questions`
  ADD CONSTRAINT `scale_questions_ibfk_1` FOREIGN KEY (`scale_id`) REFERENCES `scale` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `schedule`
--
ALTER TABLE `schedule`
  ADD CONSTRAINT `schedule_ibfk_1` FOREIGN KEY (`caregiver_id`) REFERENCES `caregiver` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `schedule_ibfk_2` FOREIGN KEY (`specialist_id`) REFERENCES `specialist` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `short_term`
--
ALTER TABLE `short_term`
  ADD CONSTRAINT `short_term_ibfk_1` FOREIGN KEY (`plan_id`) REFERENCES `plan` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `status`
--
ALTER TABLE `status`
  ADD CONSTRAINT `status_ibfk_1` FOREIGN KEY (`plan_id`) REFERENCES `plan` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `strength_point`
--
ALTER TABLE `strength_point`
  ADD CONSTRAINT `strength_point_ibfk_1` FOREIGN KEY (`plan_id`) REFERENCES `plan` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `to_do`
--
ALTER TABLE `to_do`
  ADD CONSTRAINT `to_do_ibfk_1` FOREIGN KEY (`caregiver_id`) REFERENCES `caregiver` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `to_do_ibfk_2` FOREIGN KEY (`specialist_id`) REFERENCES `specialist` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `weknees_point`
--
ALTER TABLE `weknees_point`
  ADD CONSTRAINT `weknees_point_ibfk_1` FOREIGN KEY (`plan_id`) REFERENCES `plan` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
