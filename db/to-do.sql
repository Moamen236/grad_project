-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 28, 2021 at 03:51 PM
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
-- Database: `autism`
--

-- --------------------------------------------------------

--
-- Table structure for table `to_do`
--

CREATE TABLE `to_do` (
  `id` int(11) NOT NULL,
  `to_do_details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `specialist_id` int(11) NOT NULL,
  `caregiver_id` int(11) DEFAULT NULL,
  `patient_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `done` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `to_do`
--

INSERT INTO `to_do` (`id`, `to_do_details`, `title`, `specialist_id`, `caregiver_id`, `patient_id`, `created_at`, `done`) VALUES
(1, 'Quia autem rerum doloremque voluptatem non.', 'Lorem ipsum dolor sit amet consectetur adipisicing elit.', 1, 1, 101, '2021-06-20 00:07:01', NULL),
(2, 'Eum id perferendis quia aperiam consequuntur.', 'Lorem ipsum dolor sit amet consectetur adipisicing elit.', 1, 1, 101, '2021-06-20 00:07:01', NULL),
(3, 'Accusantium est quidem error earum voluptas veritatis beatae.', 'Lorem ipsum dolor sit amet consectetur adipisicing elit.', 1, 1, 101, '2021-06-20 00:07:01', NULL),
(4, 'Hic odit excepturi voluptatem ratione iste et.', 'Lorem ipsum dolor sit amet consectetur adipisicing elit.', 1, 1, 101, '2021-06-20 00:07:01', NULL),
(5, 'Voluptas qui quis dicta sit voluptates quo.', 'Lorem ipsum dolor sit amet consectetur adipisicing elit.', 1, 1, 101, '2021-06-20 00:07:01', NULL),
(6, 'Voluptates aut ea nesciunt tempora sequi odio suscipit.', 'Lorem ipsum dolor sit amet consectetur adipisicing elit.', 1, 1, 101, '2021-06-20 00:07:01', NULL),
(7, 'Dolores suscipit amet nesciunt et recusandae voluptatibus est.', 'Lorem ipsum dolor sit amet consectetur adipisicing elit.', 1, 1, 101, '2021-06-20 00:07:01', NULL),
(8, 'Est consequatur dolorum enim est magnam placeat eligendi recusandae.', 'Lorem ipsum dolor sit amet consectetur adipisicing elit.', 1, 1, 101, '2021-06-20 00:07:01', NULL),
(14, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', 'This is first title for caregiver', 11, 4, 104, '2021-06-20 00:07:01', NULL),
(15, 'lorem test add new', 'That is a new Title', 11, 9, 112, '2021-06-20 00:07:01', 'done'),
(16, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'That is a static title', 11, 9, 112, '2021-06-20 00:39:19', 'done'),
(21, 'Lorem Ipsum is simply', 'new Title ', 11, 9, 112, '2021-06-20 00:43:42', 'done'),
(23, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'new test title ', 11, 9, 112, '2021-06-20 00:46:01', NULL),
(24, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'test 5', 11, 9, 112, '2021-06-20 00:53:50', 'done'),
(26, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'test 5', 11, 9, 112, '2021-06-20 00:54:35', NULL),
(34, 'Now, I will create a submit method in jQuery which will validate the input data, and select the latest notification(s),', 'test 2', 11, 9, 112, '2021-06-20 20:32:01', NULL),
(35, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Danya Amal Basit Title', 11, 9, 112, '2021-06-21 21:04:37', NULL),
(36, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Danya Amal Basit Title', 11, 9, 109, '2021-06-21 21:04:52', NULL),
(37, 'dasu askjdsa dsji fuif fdiuahf fiuaf d faif afiuahf  fskahfa faigfa  fajfha fiuahfnufa f aia f afua f ajfd fdafhaufhaf ufnaf ajfaf dufhd fdfukduf  fdaiufhd fdu fafd fdufndaf daufakfniufsd fdsifds fdsiunf', 'Danya Amal Basit Title 2', 11, 9, 109, '2021-06-21 21:06:19', NULL),
(38, 'dasu askjdsa dsji fuif fdiuahf fiuaf d faif afiuahf  fskahfa faigfa  fajfha fiuahfnufa f aia f afua f ajfd fdafhaufhaf ufnaf ajfaf dufhd fdfukduf  fdaiufhd fdu fafd fdufndaf daufakfniufsd fdsifds fdsiunf fdsvuvfdsbfdyisf fdusg fdsygf fdugfds uyftds fsduygfds fdusy  fdsugfds fdusf sufds fdsufds ufds ufds fdsu  fdsuifds fdsiufsdfdsfsf sdufhds fdsiufds  fdisufds  fdsifds  fdsiufds fidshfds fidusf sfidushfds', 'Danya Amal Basit Title 3', 11, 9, 109, '2021-06-21 21:06:56', NULL),
(59, 'sa', 'Danya Amal Basit Title', 11, 36, 142, '2021-06-27 19:29:55', 'done'),
(62, 'ay', 'Danya Amal Basit Title', 11, 35, 155, '2021-06-28 08:28:50', NULL),
(63, '', '', 11, 9, 109, '2021-06-28 13:02:12', NULL),
(64, '', '', 11, 9, 109, '2021-06-28 13:16:44', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `to_do`
--
ALTER TABLE `to_do`
  ADD PRIMARY KEY (`id`),
  ADD KEY `specialist_id` (`specialist_id`) USING BTREE,
  ADD KEY `caregiver_id` (`caregiver_id`) USING BTREE;

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `to_do`
--
ALTER TABLE `to_do`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `to_do`
--
ALTER TABLE `to_do`
  ADD CONSTRAINT `to_do_ibfk_1` FOREIGN KEY (`caregiver_id`) REFERENCES `caregiver` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `to_do_ibfk_2` FOREIGN KEY (`specialist_id`) REFERENCES `specialist` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
