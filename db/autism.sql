-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 23, 2021 at 11:05 PM
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
-- Table structure for table `adir`
--

CREATE TABLE `adir` (
  `id` int(11) NOT NULL,
  `adir_questions` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `adir`
--

INSERT INTO `adir` (`id`, `adir_questions`) VALUES
(1, 'When you smile to your baby, does he meet you with a smile too?'),
(2, 'When your child is busy playing with himself and you call him by his name, does he look at you expressing his response to his calling by his name?'),
(3, 'When you are pointing at something with the index finger, does your child follow it and look at the thing you are referring to?'),
(4, 'When you try to play with your child, does he play with you?'),
(5, 'When you try to teach your child an alternate playing method using one of the toys, does your child watch it and try to copy it?'),
(6, 'When someone familiar to your child comes, does he respond to him and look at him?'),
(7, 'Does your child seem preoccupied and entertained in a certain activity, does he look at you and smile to express his happiness and enjoyment to you?'),
(8, 'When you laugh at your child`s action or movement, does your child bring it back to make you laugh again?'),
(9, 'Does your child point to something or offer you something in order to share his interest or liking for that thing?'),
(10, 'Is your child trying to invite you to play with him by offering you his toy and looking at you to express his desire to play with you?'),
(11, 'Does your child approach other children and try to play with them?'),
(12, 'Does your child look at you when you talk or play with him?'),
(13, 'Does your child play games in an unusual way (cars)?'),
(14, 'Does your child move his hands or body in an unusual way?'),
(15, 'Does your child have specific interests that take a long time?'),
(16, 'Is the child accustomed to performing behaviors in a consistent way?'),
(17, 'Does the child resist your attempt to change the environment or activity?'),
(18, 'Is the child unable to imitate your actions if you ask him to do so?');

-- --------------------------------------------------------

--
-- Table structure for table `adir_result`
--

CREATE TABLE `adir_result` (
  `id` int(11) NOT NULL,
  `adir_id` int(11) NOT NULL,
  `result` int(11) NOT NULL,
  `comment` text NOT NULL,
  `pateint_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `attached_reports`
--

CREATE TABLE `attached_reports` (
  `id` int(11) NOT NULL,
  `details` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `attached_reports`
--

INSERT INTO `attached_reports` (`id`, `details`) VALUES
(1, 'Audiometer'),
(2, 'Resonance ray'),
(3, 'A CT scan of the brain'),
(4, 'Ear and nose report'),
(5, 'Prior diagnosis of genetic conditions in the family'),
(6, 'Linguistic deficiency');

-- --------------------------------------------------------

--
-- Table structure for table `attahced_reports_result`
--

CREATE TABLE `attahced_reports_result` (
  `id` int(11) NOT NULL,
  `attached_id` int(11) NOT NULL,
  `attached_url` text NOT NULL,
  `result` int(11) NOT NULL,
  `comment` text NOT NULL,
  `patient_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `autism_checker`
--

CREATE TABLE `autism_checker` (
  `id` int(11) NOT NULL,
  `case_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gender` enum('male','female') COLLATE utf8mb4_unicode_ci NOT NULL,
  `age` int(3) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `autism_checker`
--

INSERT INTO `autism_checker` (`id`, `case_name`, `gender`, `age`, `user_id`) VALUES
(1, 'Michelle Keebler', 'male', 9, 1),
(2, 'Daisha Bayer', 'male', 2, 2),
(3, 'Dr. Cortez Brekke', 'male', 6, 3),
(4, 'Vicenta Herzog', 'male', 4, 4),
(5, 'Prof. Marquis Satterfield', 'male', 2, 5),
(6, 'Talia Adams', 'male', 5, 6),
(7, 'Abigail Rowe', 'female', 9, 7),
(8, 'Freddie Lubowitz', 'male', 8, 8),
(9, 'Jenifer Gislason', 'male', 4, 9),
(10, 'Alfred Green', 'male', 4, 10);

-- --------------------------------------------------------

--
-- Table structure for table `autism_checker_question`
--

CREATE TABLE `autism_checker_question` (
  `id` int(11) NOT NULL,
  `checker_qustions` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `checker_question_result` enum('yes','no') COLLATE utf8mb4_unicode_ci NOT NULL,
  `autism_checker_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `autism_checker_question`
--

INSERT INTO `autism_checker_question` (`id`, `checker_qustions`, `checker_question_result`, `autism_checker_id`) VALUES
(1, 'If you point at something across the room, does your child look at it?(FOR EXAMPLE, if you point at a toy or an animal, does your child look at the toy or animal?)', 'yes', 1),
(2, 'Have you ever wondered if your child might be deaf?', 'yes', 1),
(3, 'Does your child play pretend or make-believe?(FOR EXAMPLE, pretend to drink from an empty cup, pretend to talk on a phone, or pretend to feed a doll or stuffed animal?)\r\n', 'no', 1),
(4, 'Does your child like climbing on things? (FOR EXAMPLE, furniture, playground equipment, or stairs) ', 'yes', 1),
(5, 'Does your child make unusual finger movements near his or her eyes? (FOR EXAMPLE, does your child wiggle his or her fingers close to his or her eyes?)', 'yes', 1),
(6, 'Does your child point with one finger to ask for something or to get help? (FOR EXAMPLE, pointing to a snack or toy that is out of reach)', 'yes', 1),
(7, 'Does your child point with one finger to show you something interesting? (FOR EXAMPLE, pointing to an airplane in the sky or a big truck in the road)', 'yes', 1),
(8, 'Is your child interested in other children?  (FOR EXAMPLE, does your child watch other children, smile at them, or go to them?)', 'yes', 1),
(9, 'Does your child show you things by bringing them to you or holding them up for you to see – not to get help, but just to share? (FOR EXAMPLE, showing you a flower, a stuffed animal, or a toy truck)', 'yes', 1),
(10, 'Does your child respond when you call his or her name? (FOR EXAMPLE, does he or she look up, talk or babble, or stop what he or she is doing when you call his or her name?)\r\n', 'no', 1),
(11, 'When you smile at your child, does he or she smile back at you?', 'no', 1),
(12, 'Does your child get upset by everyday noises? (FOR EXAMPLE, does your.child scream or cry to noise such as a vacuum cleaner or loud music?)', 'no', 1),
(13, 'Does your child walk?', 'no', 1),
(14, 'Does your child look you in the eye when you are talking to him or her, playing with him or her, or dressing him or her?', 'yes', 1),
(15, 'Does your child try to copy what you do? (FOR EXAMPLE, wave bye-bye, clap, or make a funny noise when you do)', 'yes', 1),
(16, 'If you turn your head to look at something, does your child look around to see what you are looking at?', 'yes', 1),
(17, 'Does your child try to get you to watch him or her? (FOR EXAMPLE, does your child look at you for praise, or say “look” or “watch me”?)\r\n', 'no', 1),
(18, 'Does your child understand when you tell him or her to do something? (FOR EXAMPLE, if you don’t point, can your child understand “put the book on the chair” or “bring me the blanket”?)', 'yes', 1),
(19, 'If something new happens, does your child look at your face to see how you feel about it? (FOR EXAMPLE, if he or she hears a strange or funny noise, or sees a new toy, will\r\nhe or she look at your face?)', 'yes', 1),
(20, 'Does your child like movement activities? (FOR EXAMPLE, being swung or bounced on your knee)', 'no', 1);

-- --------------------------------------------------------

--
-- Table structure for table `caregiver`
--

CREATE TABLE `caregiver` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sp_serial_no` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `caregiver`
--

INSERT INTO `caregiver` (`id`, `name`, `photo`, `email`, `password`, `phone`, `sp_serial_no`) VALUES
(1, 'Loy', 'http://lorempixel.com/640/480/', 'reichel.treva@example.net', '$2y$10$XK6Hoxeax6JbWcw9xbeOUOwUo.jieRmam0bVduUeT.ATUd1d/noW.', '639.728.5038x9193', 64214504),
(2, 'Sincere', 'http://lorempixel.com/640/480/', 'ahilll@example.com', '$2y$10$XK6Hoxeax6JbWcw9xbeOUOwUo.jieRmam0bVduUeT.ATUd1d/noW.', '1-342-390-6436x1066', 42619734),
(3, 'Carolyne', 'http://lorempixel.com/640/480/', 'johnathon.hudson@example.org', '$2y$10$XK6Hoxeax6JbWcw9xbeOUOwUo.jieRmam0bVduUeT.ATUd1d/noW.', '1-586-654-9080', 16605077),
(4, 'River', 'http://lorempixel.com/640/480/', 'eino.schulist@example.org', '$2y$10$XK6Hoxeax6JbWcw9xbeOUOwUo.jieRmam0bVduUeT.ATUd1d/noW.', '(690)021-5767x3524', 37733001),
(5, 'Marlee', 'http://lorempixel.com/640/480/', 'zjakubowski@example.org', '$2y$10$XK6Hoxeax6JbWcw9xbeOUOwUo.jieRmam0bVduUeT.ATUd1d/noW.', '+91(7)5303688928', 44378271),
(6, 'Lawrence', 'http://lorempixel.com/640/480/', 'ibogan@example.net', '$2y$10$XK6Hoxeax6JbWcw9xbeOUOwUo.jieRmam0bVduUeT.ATUd1d/noW.', '830.143.2849', 27129708),
(7, 'Lurline', 'http://lorempixel.com/640/480/', 'eunice08@example.net', '$2y$10$XK6Hoxeax6JbWcw9xbeOUOwUo.jieRmam0bVduUeT.ATUd1d/noW.', '1-964-176-0506', 96900871),
(8, 'Mustafa', 'http://lorempixel.com/640/480/', 'katrina46@example.org', '$2y$10$XK6Hoxeax6JbWcw9xbeOUOwUo.jieRmam0bVduUeT.ATUd1d/noW.', '01066687285', 74823451),
(9, 'Moamen Ali', '', 'admin@gmail.com', '$2y$10$nydSJC0YcCDQ5YZ9VkXZoO6ghX.mmB/Ke.oDNSqqmAbLAWXZutNNC', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `dsm5`
--

CREATE TABLE `dsm5` (
  `id` int(11) NOT NULL,
  `dsm5_category-result` int(11) NOT NULL,
  `pateint_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `dsm5`
--

INSERT INTO `dsm5` (`id`, `dsm5_category-result`, `pateint_id`) VALUES
(1, 6, 101),
(2, 3, 102),
(3, 3, 103);

-- --------------------------------------------------------

--
-- Table structure for table `dsm5_question`
--

CREATE TABLE `dsm5_question` (
  `id` int(11) NOT NULL,
  `dsm5_questions` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `dsm5_question_category` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dsm5_question_result` int(11) NOT NULL,
  `dsm5_category_result` int(11) NOT NULL,
  `dsm5_id` int(11) NOT NULL,
  `pateint_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `dsm5_question`
--

INSERT INTO `dsm5_question` (`id`, `dsm5_questions`, `dsm5_question_category`, `dsm5_question_result`, `dsm5_category_result`, `dsm5_id`, `pateint_id`) VALUES
(1, 'Abnormal social interaction appears', 'Difficulty with social and emotional exchange', 8, 5, 1, 101),
(2, 'Failed to have a regular dialogue exchange', 'Difficulty with social and emotional exchange', 8, 5, 1, 101),
(3, 'Fails to share interests, emotions, and moods', 'Difficulty with social and emotional exchange', 8, 5, 1, 101),
(4, 'Fails to initiate or respond to a social interaction', 'Difficulty with social and emotional exchange', 8, 5, 1, 101),
(5, 'Impaired integration of verbal and nonverbal communication', 'Difficulty with nonverbal communication behaviors used in social interaction', 4, 5, 1, 101),
(6, 'Impaired eye contact and body language', 'Difficulty with nonverbal communication behaviors used in social interaction', 4, 5, 1, 101),
(7, 'Difficulty understanding and using bodily expressions', 'Difficulty with nonverbal communication behaviors used in social interaction', 4, 5, 1, 101),
(8, 'Difficulty understanding and using gestures', 'Difficulty with nonverbal communication behaviors used in social interaction', 4, 5, 1, 101),
(9, 'Complete absence of facial expressions and non-verbal communication', 'Difficulty with nonverbal communication behaviors used in social interaction', 2, 5, 1, 101),
(10, 'Difficulty adjusting behavior to suit different social situations', 'Difficulty creating, maintaining, or understanding relationships', 4, 5, 1, 101),
(11, 'Difficulty sharing imaginative play', 'Difficulty creating, maintaining, or understanding relationships', 7, 5, 1, 101),
(12, 'Difficulties making friends', 'Difficulty creating, maintaining, or understanding relationships', 7, 5, 1, 101),
(13, 'Loss of interest in peers', 'Difficulty creating, maintaining, or understanding relationships', 7, 5, 1, 101);

-- --------------------------------------------------------

--
-- Table structure for table `evaluation_history`
--

CREATE TABLE `evaluation_history` (
  `id` int(11) NOT NULL,
  `evaluation_questions` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `evaluation_history`
--

INSERT INTO `evaluation_history` (`id`, `evaluation_questions`) VALUES
(1, 'Is there a relationship between the father and the mother?'),
(2, 'Did problems occur during pregnancy (physical condition)?'),
(3, 'Are drugs taken during pregnancy?'),
(4, 'Psychological state during pregnancy (depression - sadness - nervousness - other than\r\nthat)?'),
(5, 'other notes..........'),
(6, 'Was an audiometer, resonance ray, or a CT scan done on the brain?'),
(7, 'Has the child been shown to an ear, nose and throat doctor?'),
(8, 'When was a problem noticed in the child (date)?'),
(9, ' What is the problem observed on the child?'),
(10, 'Has the child been subject to previous sessions in any center?'),
(11, 'What is the child`s daily routine?'),
(12, 'What happens when any part of the child`s routine changes? What is his reaction\r\n(screaming - tense, ......)?'),
(13, ' What is the child`s eating routine?'),
(14, 'I like baby food (chocolate, chips, lollipop, cake, ..........)'),
(15, 'Does the child have a constantly repeating pattern?'),
(16, 'What are the child`s reinforcements (games, television, computer, food, ...) ');

-- --------------------------------------------------------

--
-- Table structure for table `evaluation_history_result`
--

CREATE TABLE `evaluation_history_result` (
  `id` int(11) NOT NULL,
  `evaluation_id` int(11) NOT NULL,
  `result` int(11) NOT NULL,
  `comment` text NOT NULL,
  `pateint_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `long_term`
--

CREATE TABLE `long_term` (
  `id` int(11) NOT NULL,
  `long_term_discription` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `plan_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `long_term`
--

INSERT INTO `long_term` (`id`, `long_term_discription`, `plan_id`) VALUES
(1, 'Vitae consequuntur labore quia minus molestiae reiciendis.', 1),
(2, 'Aut qui et dicta.', 2),
(3, 'Architecto quo autem porro ut in molestiae.', 3),
(4, 'Neque voluptatem modi consectetur quia ex enim ullam.', 4),
(5, 'Et et et cum vel.', 5),
(6, 'Ut et odit animi cupiditate exercitationem aliquid tempore.', 6),
(7, 'Nulla quod fuga ut dolores.', 7),
(8, 'Qui qui officia doloribus in quo optio.', 8);

-- --------------------------------------------------------

--
-- Table structure for table `lovaas_category`
--

CREATE TABLE `lovaas_category` (
  `id` int(11) NOT NULL,
  `category` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `lovaas_category`
--

INSERT INTO `lovaas_category` (`id`, `category`) VALUES
(1, 'Attention and attendance skills'),
(2, 'Imitation skills'),
(3, 'Language understanding skills'),
(4, 'Expressive language skills'),
(5, 'Pre-academic skills'),
(6, 'Self-care skills');

-- --------------------------------------------------------

--
-- Table structure for table `lovaas_questions`
--

CREATE TABLE `lovaas_questions` (
  `id` int(11) NOT NULL,
  `lovass_questions` text COLLATE utf8_unicode_ci NOT NULL,
  `lovaas_category_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `lovaas_questions`
--

INSERT INTO `lovaas_questions` (`id`, `lovass_questions`, `lovaas_category_id`) VALUES
(1, 'Keep calling for 5 seconds in response to hearing his name', 1),
(2, 'Make eye contact in response to hearing his name while playing', 1),
(3, 'Make eye contact from a distance', 1),
(4, 'Responding when someone call him', 1),
(5, 'Imitation of large movements from a standing position', 1),
(6, 'Imitation of large sequential movements', 1),
(7, 'Imitation of sequential movements of things', 2),
(8, 'Imitation of movements coupled with sounds', 2),
(9, 'Imitation of models with cubes', 2),
(10, 'Minor copying fees', 2),
(11, 'Learn about rooms', 2),
(12, 'Learn about feelings and emotions', 2),
(13, 'Learn about places', 2),
(14, 'Follow two-step instructions', 2),
(15, 'It gives two things', 2),
(16, 'Recovers things he does not see', 2),
(17, 'Identify the distinguishing characteristics of things', 2),
(18, 'Get to know the helpers in the community', 2),
(19, 'Pretend to do things', 2),
(20, 'Knows the categories of things', 2),
(21, 'Knows pronouns', 2),
(22, 'It follows instructions that contain prepositions', 2),
(23, 'He recognizes things when you describe him in his field of view', 2),
(24, 'Put the cards in sequence in order', 3),
(25, 'Knows the missing elements', 3),
(26, 'He answers questions about things that are missing', 3),
(27, 'Answer with yes or no response to things about activities and things', 3),
(28, 'He calls things touch', 3),
(29, 'Imitates a sentence of two or three sentences', 3),
(30, 'Asking what he wants in sentences in response to the question (what do you want)', 3),
(31, 'He asks what he wants automatically in his sentences', 3),
(32, 'He calls something that depends on a Job', 4),
(33, 'It defines the function of things', 4),
(34, 'Identifies and refers to the parts of his body according to their responsibility', 4),
(35, 'Mention the job of his body parts', 4),
(36, 'Names places', 4),
(37, 'Called agitation', 4),
(38, 'He calls the group of things', 4),
(39, 'Mention a simple sentence', 4),
(40, 'He shares his information', 4),
(41, 'He says (I donnot know) when he asks for the name of something he doesnott know', 4),
(42, 'Asks questions (what is it - what is there)', 4),
(43, 'He calls prepositions Expressive language skills', 4),
(44, 'The gender is called (male - female)', 4),
(45, 'Describes the picture in a sentence', 4),
(46, 'Describes the things he sees and their most important characteristics', 4),
(47, 'He can recall the experiences of his previous one', 4),
(48, 'It answers questions that start with where', 4),
(49, 'He called the assets stone', 4),
(50, 'Mentions cabins functions', 4),
(51, 'It reminds the assistant jobs of the community', 4),
(52, 'Answers questions that start with when', 4),
(53, 'Describes the sequence of images', 4),
(54, 'Send a small message', 4),
(55, 'Role-playing games with dolls', 4),
(56, 'Offer help', 4),
(57, 'Connects items with the same class', 4),
(58, 'It gives a specified quantity of things', 5),
(59, 'Connects numbers and quantities', 5),
(60, 'Connect between different shapes with letters', 5),
(61, 'Connect matching words', 5),
(62, 'Get to know more and less', 5),
(63, 'Sequences letters and numbers', 5),
(64, 'Completes simple homework', 5),
(65, 'Copies numbers and letters', 5),
(66, 'Recognize written names', 5),
(67, 'Draws simple paintings', 5),
(68, 'Write his name', 5),
(69, 'Plaster and knead', 6),
(70, 'It shears with scissors', 6),
(71, 'He colors within the boundaries of his drawing', 6),
(72, 'To brush his teeth', 6),
(73, 'To close and open the zipper', 6),
(74, 'He buttoned the buttons', 6),
(75, 'To crack his tongue', 6);

-- --------------------------------------------------------

--
-- Table structure for table `lovaas_results`
--

CREATE TABLE `lovaas_results` (
  `id` int(11) NOT NULL,
  `lovaas_question_result` int(20) NOT NULL,
  `lovaas_question_id` int(11) NOT NULL,
  `patient_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `lovaas_results`
--

INSERT INTO `lovaas_results` (`id`, `lovaas_question_result`, `lovaas_question_id`, `patient_id`) VALUES
(1, 8, 1, 101),
(2, 7, 1, 101),
(3, 4, 1, 101),
(4, 4, 1, 101),
(5, 7, 1, 101),
(6, 6, 1, 101),
(7, 4, 1, 101),
(8, 6, 1, 101),
(9, 6, 1, 101),
(10, 6, 1, 101),
(11, 6, 1, 101),
(12, 6, 1, 101),
(13, 6, 1, 101),
(14, 6, 1, 101),
(15, 6, 1, 101),
(16, 6, 1, 101),
(17, 6, 1, 101),
(18, 6, 1, 101),
(19, 6, 1, 101),
(20, 6, 1, 101),
(21, 6, 1, 101),
(22, 6, 1, 101),
(23, 6, 1, 101),
(24, 6, 1, 101),
(25, 6, 1, 101);

-- --------------------------------------------------------

--
-- Table structure for table `notic`
--

CREATE TABLE `notic` (
  `id` int(11) NOT NULL,
  `notic_q_id` int(11) NOT NULL,
  `notic_category` text NOT NULL,
  `result` int(11) NOT NULL,
  `comment` text NOT NULL,
  `pateint_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `notic_questions`
--

CREATE TABLE `notic_questions` (
  `id` int(11) NOT NULL,
  `notice_questions` text NOT NULL,
  `notic_question_category` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `notic_questions`
--

INSERT INTO `notic_questions` (`id`, `notice_questions`, `notic_question_category`) VALUES
(1, 'Non-conscientious communication (impaired eye contact and body language - difficulty understanding the use of physical expression)', 'Child communication'),
(2, 'Difficulty making relationships - difficulties sharing imaginative play - loss of interest in peers', 'Child communication'),
(3, 'Failed to have a regular conversation', 'Child s social interaction'),
(4, 'Failure to initiate or respond to a social interaction', 'child s social interaction'),
(5, 'Failure to share interests, emotions, and moods', 'Child s social interaction'),
(6, 'Inability to hold things or move limbs', 'Body Use'),
(7, 'Random movements in front of the face', 'Body Use'),
(8, 'Modularity (arranging games in line or turning them around - making an echo - repeating special phrases meaningless)', 'play'),
(9, 'Routine (insistence on the symmetry of actions - a permanent attachment to routine actions)', 'Adapt to routine'),
(10, 'A special welcome ritual', 'Adapt to routine'),
(11, 'Great strike when a small change occurs - difficulties with change', 'Adapt to routine'),
(12, 'The need to eat the same food every day - the need to take the same route', 'Adapt to routine'),
(13, 'Hyper or low mobility', 'Use of the senses '),
(14, 'Failure to feel the limbs or pressure on him', 'Use of the senses ');

-- --------------------------------------------------------

--
-- Table structure for table `patient`
--

CREATE TABLE `patient` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `age` int(3) NOT NULL,
  `date_of_birth` date NOT NULL,
  `school` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gender` enum('male','female') COLLATE utf8mb4_unicode_ci NOT NULL,
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
-- Dumping data for table `patient`
--

INSERT INTO `patient` (`id`, `name`, `age`, `date_of_birth`, `school`, `gender`, `class`, `photo`, `No_of_bro`, `arr_btw_bro`, `spcialist_id`, `caregiver_id`, `caregiver_name`, `caregiver_relationship`, `caregiver_phone`) VALUES
(101, 'Cora', 8, '1998-01-20', 'Tempora inventore blanditiis sed.', 'male', 'voluptatem porro. Sed deserunt', 'http://lorempixel.com/640/480/', 3, 7, 11, 1, 'Stewart', 'mother', 1021212123),
(102, 'Osvaldo', 4, '2008-10-29', 'Voluptatem earum id voluptatem voluptates doloremque velit quisquam.', 'female', 'voluptatem porro. Sed deserunt', 'http://lorempixel.com/640/480/', 8, 8, 11, 2, 'Antonette', 'mother', 152354953),
(103, 'Jermaine', 10, '2010-07-29', 'Voluptatem rem rem error cum optio nihil voluptatem et.', 'male', 'voluptatem porro. Sed deserunt', 'http://lorempixel.com/640/480/', 9, 4, 11, 3, 'Chaz', 'mother', 4452589),
(104, 'Art', 8, '1984-03-25', 'Non et aliquam facilis ab.', 'male', 'voluptatem porro. Sed deserunt', 'http://lorempixel.com/640/480/', 4, 5, 11, 4, 'Delbert', 'mother', 12132122),
(105, 'Harmon', 6, '1981-08-20', 'Quas in dolorem eveniet.', 'female', 'voluptatem porro. Sed deserunt', 'http://lorempixel.com/640/480/', 2, 4, 11, 5, 'Frieda', 'mother', 381042555),
(106, 'Eugenia', 11, '1981-08-30', 'Aut sed minus necessitatibus doloremque molestiae labore quis quidem.', 'female', 'voluptatem porro. Sed deserunt', 'http://lorempixel.com/640/480/', 4, 5, 11, 6, 'Doug', 'father', 15452375),
(107, 'Marcelle', 9, '2010-09-30', 'Voluptas numquam eos necessitatibus sit.', 'female', 'voluptatem porro. Sed deserunt', 'http://lorempixel.com/640/480/', 7, 7, 11, 7, 'Garland', 'father', 2455420),
(108, 'Robert', 10, '1990-03-04', 'Aut nemo libero voluptas repudiandae saepe.', 'male', 'voluptatem porro. Sed deserunt', 'http://lorempixel.com/640/480/', 8, 8, 11, 8, 'Lillie', 'uncle', 718455754),
(109, 'Cora', 8, '1998-01-20', 'Tempora inventore blanditiis sed.', 'male', 'voluptatem porro. Sed deserunt', 'http://lorempixel.com/640/480/', 3, 7, 11, 1, 'Stewart', 'mother', 154545754),
(110, 'Osvaldo', 4, '2008-10-29', 'Voluptatem earum id voluptatem voluptates doloremque velit quisquam.', 'female', 'voluptatem porro. Sed deserunt', 'http://lorempixel.com/640/480/', 8, 8, 11, 2, 'Antonette', 'mother', 352545754),
(111, 'Jermaine', 10, '2010-07-29', 'Voluptatem rem rem error cum optio nihil voluptatem et.', 'male', 'voluptatem porro. Sed deserunt', 'http://lorempixel.com/640/480/', 9, 4, 11, 3, 'Chaz', 'mother', 445545752),
(112, 'Art', 8, '1984-03-25', 'Non et aliquam facilis ab.', 'male', 'voluptatem porro. Sed deserunt', 'http://lorempixel.com/640/480/', 4, 5, 11, 4, 'Delbert', 'mother', 1545754),
(113, 'Harmon', 6, '1981-08-20', 'Quas in dolorem eveniet.', 'female', 'voluptatem porro. Sed deserunt', 'http://lorempixel.com/640/480/', 2, 4, 11, 5, 'Frieda', 'mother', 38104254),
(114, 'Eugenia', 11, '1981-08-30', 'Aut sed minus necessitatibus doloremque molestiae labore quis quidem.', 'female', 'voluptatem porro. Sed deserunt', 'http://lorempixel.com/640/480/', 4, 5, 11, 6, 'Doug', 'father', 14170457),
(115, 'Marcelle', 9, '2010-09-30', 'Voluptas numquam eos necessitatibus sit.', 'female', 'voluptatem porro. Sed deserunt', 'http://lorempixel.com/640/480/', 7, 7, 11, 7, 'Garland', 'father', 454445455),
(116, 'Robert', 10, '1990-03-04', 'Aut nemo libero voluptas repudiandae saepe.', 'male', 'voluptatem porro. Sed deserunt', 'http://lorempixel.com/640/480/', 8, 8, 11, 8, 'Lillie', 'uncle', 718575757);

-- --------------------------------------------------------

--
-- Table structure for table `plan`
--

CREATE TABLE `plan` (
  `id` int(11) NOT NULL,
  `lovaas_id` int(11) NOT NULL,
  `pateint_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `plan`
--

INSERT INTO `plan` (`id`, `lovaas_id`, `pateint_id`) VALUES
(1, 1, 101),
(2, 2, 102),
(3, 3, 103),
(4, 4, 104),
(5, 5, 105),
(6, 6, 106),
(7, 7, 107),
(8, 8, 108);

-- --------------------------------------------------------

--
-- Table structure for table `scale`
--

CREATE TABLE `scale` (
  `id` int(11) NOT NULL,
  `dsm5_id` int(11) NOT NULL,
  `pateint_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `scale`
--

INSERT INTO `scale` (`id`, `dsm5_id`, `pateint_id`) VALUES
(1, 1, 101),
(2, 2, 102),
(3, 3, 103);

-- --------------------------------------------------------

--
-- Table structure for table `scale_questions`
--

CREATE TABLE `scale_questions` (
  `id` int(11) NOT NULL,
  `scale_question` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `scale_question_category` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `scale_question_result` int(11) NOT NULL,
  `scale_category_result` int(11) NOT NULL,
  `scale_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `scale_questions`
--

INSERT INTO `scale_questions` (`id`, `scale_question`, `scale_question_category`, `scale_question_result`, `scale_category_result`, `scale_id`) VALUES
(101, 'Most of his time is spent performing typical repetitive behaviors if he is left alone', 'Stereotypic / repetitive behaviors', 3, 7, 1),
(102, 'Is involved in a specific and abnormally stimulus', 'Stereotypic / repetitive behaviors', 2, 7, 1),
(103, 'He stares at the hands and objects in the environment, with a distance of at least 5 seconds', 'Stereotypic / repetitive behaviors', 1, 7, 1),
(104, 'Moves (taps) the fingers quickly, with a angle of at least 5 seconds', 'Stereotypic / repetitive behaviors', 0, 7, 1),
(105, 'It moves quickly and impulsively when moving from one place to another', 'Stereotypic / repetitive behaviors', 2, 7, 1),
(106, 'He flips (moves) the hands or fingers in front of or next to the face', 'Stereotypic / repetitive behaviors', 1, 7, 1),
(107, 'Makes high-pitched voices (like ayeye) or any other sounds as a matter of self-excitement', 'Stereotypic / repetitive behaviors', 2, 7, 1),
(108, 'Uses toys and objects in an inappropriate way, makes the car spin, disassembles the moving parts of toys', 'Stereotypic / repetitive behaviors', 3, 5, 1),
(109, 'He does things in ritual repetition', 'Stereotypic / repetitive behaviors', 3, 7, 1),
(110, 'He engages in playing stereotypically when he uses objects or games', 'Stereotypic / repetitive behaviors', 3, 7, 1),
(111, 'Repeats incomprehensible sounds (babbling) over and over', 'Stereotypic / repetitive behaviors', 3, 7, 1),
(112, 'It shows a great and unusual interest in the sensory aspects of playing materials, body parts, or objects', 'Stereotypic / repetitive behaviors', 3, 7, 1),
(113, 'Shows compulsive behaviors that cannot be resisted', 'Stereotypic / repetitive behaviors', 2, 7, 1),
(114, 'Does not initiate conversations with peers or others', 'Social interaction', 2, 7, 1),
(115, 'Little or no attention is given to what the peers are doing', 'Social interaction', 2, 7, 1),
(116, 'Fails to imitate others while playing or when performing educational activities', 'Social interaction', 2, 7, 1),
(117, 'Does not follow other people hints - gestures - to direct the gaze of something, for example: when someone gestures with his head or points with his hand or uses any other body movements', 'Social interaction', 2, 7, 1),
(118, 'Seems uninterested in getting other peoples attention (does not attempt to obtain, maintain, or direct another persons attention)', 'Social interaction', 2, 7, 1),
(119, 'Minimum excitement appears when interacting with others', 'Social interaction', 2, 7, 1),
(120, 'A little excitement appears - it may not appear entirely - when viewing games, objects, or others', 'Social interaction', 2, 7, 1),
(121, 'They seem uninterested in pointing out to others about their surroundings in the environment', 'Social interaction', 2, 7, 1),
(122, 'It appears he has no desire or object to have interactions with others', 'Social interaction', 2, 7, 1),
(123, 'He appears minimal or unresponsive as others try to interact with him', 'Social interaction', 2, 7, 1),
(124, 'Does not show a little bit of social interaction and may not show it at all (for example, he refuses to say bye bye in response to someone saying bye bye)', 'Social interaction', 2, 7, 1),
(125, 'He does not seek to establish friendly relations with other people', 'Social interaction', 2, 7, 1),
(126, 'Fails to play creatively or imaginatively', 'Social interaction', 2, 7, 1),
(127, 'Shows little or no interest in other people', 'Social interaction', 2, 7, 1),
(128, 'Responds inappropriately to stimuli that require a sense of humor (for example: laughs at jokes, cartoons, and funny anecdotes)', 'Social communication', 2, 7, 1),
(129, 'He has difficulty understanding the jokes', 'Social communication', 2, 7, 1),
(130, 'Has difficulty understanding colloquial expressions', 'Social communication', 2, 7, 1),
(131, 'He finds it difficult to know if someone is intentionally harassing him', 'Social communication', 2, 7, 1),
(132, 'He finds it difficult to understand if it is the subject of mockery by others', 'Social communication', 2, 7, 1),
(133, 'He finds it difficult to understand why people do not like him (to understand why others are bothered by him)', 'Social communication', 2, 7, 1),
(134, 'Fails to predict the possible consequences of social events', 'Social communication', 2, 7, 1),
(135, 'It seems as if he does not understand that other people have different thoughts and feelings about him', 'Social communication', 2, 7, 1),
(136, 'It looks as if the other person does not know anything', 'Social communication', 2, 7, 1),
(137, 'It needs a lot of reassurance if things change or something goes wrong', 'Emotional / Sentimental Respons', 2, 7, 1),
(138, 'He becomes frustrated and frustrated when he fails at something', 'Emotional / Sentimental Respons', 2, 7, 1),
(139, 'He gets tantrums when frustrated', 'Emotional / Sentimental Respons', 2, 7, 1),
(140, 'Resent the usual change of routine', 'Emotional / Sentimental Respons', 2, 7, 1),
(141, 'Responds negatively - he refuses - when he is advised, asked for something, or is directed', 'Emotional / Sentimental Respons', 2, 7, 1),
(142, 'Responds with a sharp reaction (such as: intense crying, screaming, or angry outbursts) when hearing a loud voice or unexpected noise', 'Emotional / Sentimental Respons', 2, 7, 1),
(143, 'He gets a tantrum when he doesnot get what he wants in his own way', 'Emotional / Sentimental Respons', 2, 7, 1),
(144, 'He gets a tantrum when someone tells him to stop doing something they enjoy', 'Emotional / Sentimental Respons', 2, 7, 1),
(145, 'He uses exceptionally accurate words while speaking', 'Cognitive pattern', 2, 7, 1),
(146, 'It is closely related to the tangible - physical - meanings of words', 'Cognitive pattern', 2, 7, 1),
(147, 'He talks excessively about a specific topic', 'Cognitive pattern', 2, 7, 1),
(148, 'Demonstrates superior skill or knowledge in specific subjects', 'Cognitive pattern', 2, 7, 1),
(149, 'Shows an excellent memory', 'Cognitive pattern', 2, 5, 1),
(150, 'Shows keen interest in certain intellectual topics', 'Cognitive pattern', 2, 7, 1),
(151, 'He makes naive remarks (unconscious of the results of other peoples reactions)', 'Cognitive pattern', 2, 7, 1),
(152, 'Repeats - echo/Poaching - words or phrases verbal or with gestures', 'Adaptive language', 2, 7, 1),
(153, 'Repeats words out of context (repeats words or phrases he may have heard earlier)', 'Adaptive language', 2, 7, 1),
(154, 'He speaks in situations that affect superficially', 'Adaptive language', 2, 7, 1),
(155, 'Uses (yes and no) inappropriately, says yes when asked about something he does not like, or says no when asked about a favorite game or gift he wants', 'Adaptive language', 2, 7, 1),
(156, 'Uses the pronouns (he or she) instead of (me) when referring to himself', 'Adaptive language', 2, 7, 1),
(157, 'He speaks abnormally in terms of tone or rate', 'Adaptive language', 2, 7, 1),
(158, 'Uttering distinctive words or phrases, but without meaning', 'Adaptive language', 2, 7, 1);

-- --------------------------------------------------------

--
-- Table structure for table `schedule`
--

CREATE TABLE `schedule` (
  `id` int(11) NOT NULL,
  `schedule_time` time NOT NULL,
  `schedule_date` date NOT NULL,
  `specialist_id` int(11) NOT NULL,
  `caregiver_id` int(11) NOT NULL,
  `patient_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `schedule`
--

INSERT INTO `schedule` (`id`, `schedule_time`, `schedule_date`, `specialist_id`, `caregiver_id`, `patient_id`) VALUES
(1, '06:00:06', '2010-04-26', 11, 1, 101),
(2, '09:03:20', '2015-11-20', 11, 1, 101),
(3, '18:44:55', '2001-09-09', 11, 1, 102),
(4, '01:43:10', '2001-07-02', 11, 1, 101),
(5, '22:36:52', '1976-05-22', 11, 1, 104),
(6, '08:16:38', '1995-07-03', 1, 1, 101),
(7, '04:26:27', '2008-10-04', 1, 1, 103),
(8, '15:07:05', '1988-06-15', 1, 1, 102);

-- --------------------------------------------------------

--
-- Table structure for table `short_term`
--

CREATE TABLE `short_term` (
  `id` int(11) NOT NULL,
  `short_term_description` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `plan_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `short_term`
--

INSERT INTO `short_term` (`id`, `short_term_description`, `plan_id`) VALUES
(101, 'Aut voluptas iure unde eum aut ad aspernatur. Reiciendis dolore maxime hic ipsam aperiam. Est nesciunt deserunt et consequatur est quaerat id. Ducimus non non ducimus molestiae. Dolor dolorum est ipsum ullam.', 1),
(102, 'Est similique et deserunt. Non voluptatum unde quae quia debitis animi doloribus. Ut a earum optio libero quibusdam doloremque voluptatem.', 2),
(103, 'Et eum totam officiis vel molestiae alias. Praesentium omnis nulla id expedita corporis molestiae dolorum non. Et voluptates qui consequuntur quia.', 3),
(104, 'Est et distinctio pariatur sunt aliquam deleniti blanditiis. Possimus quisquam cumque quia at. Aut dicta minima voluptatem alias velit. Qui est iure quo ex dolores praesentium.', 4),
(105, 'Harum aperiam maxime id debitis consectetur. Aperiam sit harum adipisci illo nam enim ut id. Distinctio quia repudiandae fugit nisi quo.', 5),
(106, 'Eaque culpa ullam ut voluptates saepe laudantium. Non eum et harum mollitia voluptatibus nihil incidunt. Est dolore quo nihil est quo qui.', 6),
(107, 'Qui repudiandae nulla vero dolore. Dolor vitae nesciunt est voluptatem impedit. Vitae dolor maxime non repudiandae. Perspiciatis ipsam ut rerum voluptatum quasi similique. Doloremque eos distinctio corrupti minus quidem.', 7),
(108, 'Ratione dolores officia repudiandae et quisquam tenetur laboriosam. Est beatae nemo neque sed. Porro magnam unde odit nulla rem dicta voluptas ducimus. Recusandae ullam dignissimos delectus incidunt.', 8);

-- --------------------------------------------------------

--
-- Table structure for table `specialist`
--

CREATE TABLE `specialist` (
  `id` int(11) NOT NULL,
  `serial_no` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `age` int(3) DEFAULT NULL,
  `phone` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `specialist`
--

INSERT INTO `specialist` (`id`, `serial_no`, `name`, `email`, `password`, `age`, `phone`) VALUES
(1, 64214504, 'Everardo Streich', 'cartwright.andreane@example.net', '$2y$10$FwvwzeRv8PYOKh9Lml2yqufkiCxwjqg/mm/JsjWvoC.FoS0W6rjnS', 32, 0),
(2, 42619734, 'Preston Thiel', 'gideon.sporer@example.net', '$2y$10$FwvwzeRv8PYOKh9Lml2yqufkiCxwjqg/mm/JsjWvoC.FoS0W6rjnS', 21, 0),
(3, 16605077, 'Dr. Solon Rempel II', 'adelia.quigley@example.com', '$2y$10$FwvwzeRv8PYOKh9Lml2yqufkiCxwjqg/mm/JsjWvoC.FoS0W6rjnS', 33, 2147483647),
(4, 37733001, 'Dawn Shields', 'gfay@example.com', '$2y$10$FwvwzeRv8PYOKh9Lml2yqufkiCxwjqg/mm/JsjWvoC.FoS0W6rjnS', 28, 0),
(5, 44378271, 'Miss Jayda Prosacco', 'bnienow@example.com', '$2y$10$FwvwzeRv8PYOKh9Lml2yqufkiCxwjqg/mm/JsjWvoC.FoS0W6rjnS', 40, 76),
(6, 27129708, 'Valentine Graham', 'rogahn.robert@example.org', '$2y$10$FwvwzeRv8PYOKh9Lml2yqufkiCxwjqg/mm/JsjWvoC.FoS0W6rjnS', 45, 532),
(7, 96900871, 'Josie Sporer', 'rowan49@example.net', '$2y$10$FwvwzeRv8PYOKh9Lml2yqufkiCxwjqg/mm/JsjWvoC.FoS0W6rjnS', 4, 752017),
(8, 74823451, 'Alejandrin Rath', 'myrna.zieme@example.com', '$2y$10$FwvwzeRv8PYOKh9Lml2yqufkiCxwjqg/mm/JsjWvoC.FoS0W6rjnS', 6, 1),
(9, 70145045, 'Prof. John Carter', 'schamberger.retha@example.net', '$2y$10$FwvwzeRv8PYOKh9Lml2yqufkiCxwjqg/mm/JsjWvoC.FoS0W6rjnS', 2, 1),
(10, 63828023, 'Prof. Daren Schultz', 'mwehner@example.org', '$2y$10$iu8IeXj2me0IiyTj7N.G3eGVcVDlWFFDYWNv/qYZ/ZJxtyyyoergO', 3, 786),
(11, 0, 'Moamen Ali', 'admin@gmail.com', '$2y$10$hRGRd2PgrpufYsGUKYhTwui4vCEZaltdQA5ZJGqi3MHJ.O4CtXhfO', NULL, NULL);

-- --------------------------------------------------------

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
-- Dumping data for table `status`
--

INSERT INTO `status` (`id`, `title`, `status_description`, `status_degree`, `plan_id`) VALUES
(1, 'If you point at something across the room', 'does your child look at it?(FOR EXAMPLE, if you point at a toy or an animal, does your child look at the toy or animal?)', 9, 1),
(2, 'Have you ever wondered if your child might be deaf?', 'does your child look at it?(FOR EXAMPLE, if you point at a toy or an animal, does your child look at the toy or animal?)', 9, 1),
(3, 'Does your child play pretend ', 'or make-believe?(FOR EXAMPLE, pretend to drink from an empty cup, pretend to talk on a phone, or pretend to feed a doll or stuffed animal?)', 9, 1),
(4, 'Does your child like climbing on things?', 'or make-believe?(FOR EXAMPLE, pretend to drink from an empty cup, pretend to talk on a phone, or pretend to feed a doll or stuffed animal?)', 9, 1),
(5, 'Does your child make unusual finger ', 'movements near his or her eyes? (FOR EXAMPLE, does your child wiggle his or her fingers close to his or her eyes?)', 9, 1),
(6, 'Does your child point with one finger ', 'to ask for something or to get help? (FOR EXAMPLE, pointing to a snack or toy that is out of reach)', 9, 1),
(7, 'Does your child point with one finger ', 'to show you something interesting? (FOR EXAMPLE, pointing to an airplane in the sky or a big truck in the road)', 9, 1);

-- --------------------------------------------------------

--
-- Table structure for table `strength_point`
--

CREATE TABLE `strength_point` (
  `id` int(11) NOT NULL,
  `strength_point_description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `plan_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `strength_point`
--

INSERT INTO `strength_point` (`id`, `strength_point_description`, `plan_id`) VALUES
(101, 'Distinctio iste ut omnis quia debitis. Et assumenda est sed quisquam corrupti facere non qui. Repudiandae qui corrupti non officia ea aut quas.', 1),
(102, 'Qui aliquid dolorum omnis. Hic debitis ipsam neque. Voluptas veritatis veniam est nihil voluptatem ipsa facilis. Rem rerum ducimus quasi dolor quam minima a.', 2),
(103, 'Ut dolorum et eligendi et. Blanditiis dolor minima labore ut dolorem. Aliquid iure officiis deserunt mollitia sunt. Eum assumenda fugit suscipit recusandae quisquam aut eum.', 3),
(104, 'Sunt animi aliquid nesciunt quia. Expedita facere vel vero nihil velit quia eum. Error iusto sint iure blanditiis blanditiis recusandae. Maiores dolor et facilis molestiae magni.', 1),
(105, 'Accusamus nisi iste neque nemo. Quaerat dolorem unde quo temporibus vel ea. Vitae similique eligendi sed ea consequatur.', 4),
(106, 'Officiis aut laborum possimus vel. Labore quo omnis nostrum. Vel dolor id rerum commodi amet voluptas. Dolorem voluptatem corporis amet ullam quis dolorum sint.', 6),
(107, 'Eius consequatur ipsa nobis sit nesciunt. Voluptatem repellendus natus qui. Dolor blanditiis asperiores maxime dolore. Est atque quis aut. Ut eos non magni et facilis.', 5),
(108, 'A ratione tempora ratione repudiandae itaque. Qui soluta esse aut molestiae culpa eos. Voluptatem aut magni voluptas fugiat.', 8),
(110, 'Lorem Ipsum', 4),
(111, 'Lorem Ipsum is simply dummy ', 4),
(112, 'Lorem Ipsum is simply ', 4),
(113, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. ', 4),
(114, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been ', 4);

-- --------------------------------------------------------

--
-- Table structure for table `to_do`
--

CREATE TABLE `to_do` (
  `id` int(11) NOT NULL,
  `to_do_details` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `specialist_id` int(11) NOT NULL,
  `caregiver_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `to_do`
--

INSERT INTO `to_do` (`id`, `to_do_details`, `title`, `specialist_id`, `caregiver_id`) VALUES
(1, 'Quia autem rerum doloremque voluptatem non.', 'Lorem ipsum dolor sit amet consectetur adipisicing elit.', 1, 1),
(2, 'Eum id perferendis quia aperiam consequuntur.', 'Lorem ipsum dolor sit amet consectetur adipisicing elit.', 1, 1),
(3, 'Accusantium est quidem error earum voluptas veritatis beatae.', 'Lorem ipsum dolor sit amet consectetur adipisicing elit.', 1, 1),
(4, 'Hic odit excepturi voluptatem ratione iste et.', 'Lorem ipsum dolor sit amet consectetur adipisicing elit.', 1, 1),
(5, 'Voluptas qui quis dicta sit voluptates quo.', 'Lorem ipsum dolor sit amet consectetur adipisicing elit.', 1, 1),
(6, 'Voluptates aut ea nesciunt tempora sequi odio suscipit.', 'Lorem ipsum dolor sit amet consectetur adipisicing elit.', 1, 1),
(7, 'Dolores suscipit amet nesciunt et recusandae voluptatibus est.', 'Lorem ipsum dolor sit amet consectetur adipisicing elit.', 1, 1),
(8, 'Est consequatur dolorum enim est magnam placeat eligendi recusandae.', 'Lorem ipsum dolor sit amet consectetur adipisicing elit.', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`) VALUES
(1, 'Prof. Jayne Gusikowski', 'lane.aufderhar@example.org', 'e734be5d9d159610b9cbc6ae5030436839629a6e'),
(2, 'Fernando Lehner III', 'ebernhard@example.org', '72eb628e68fc009c4098735431a23f079efab4a7'),
(3, 'Roscoe Runolfsson', 'vankunding@example.org', '8e960699185f144b4dc86fce2f3d036a187e6884'),
(4, 'Lucas Toy', 'kuvalis.victoria@example.com', '15729bce73575a55e1f253286a58e33dba5848a5'),
(5, 'Prof. Daryl Fadel Sr.', 'swift.conrad@example.com', '965e5888c1339483a6dd650d5a1928ffad288a22'),
(6, 'Trey Cormier', 'legros.judy@example.org', '219acad53c6b6ae1b0a223f64d311bc7152b9126'),
(7, 'Orin Legros', 'wbergstrom@example.com', '8b3f1c105d6d3a1bf38e9b73bbdf6a4ee55ba221'),
(8, 'Braxton Dietrich', 'doconner@example.net', '078b1915c5ef28a27418eea35adf07441761b212'),
(9, 'Mr. Cary Bayer', 'claire83@example.org', '6a7e968c610c97e6b699f4250ff0df2ccd33f8ee'),
(10, 'Miss Anita Kutch', 'elegros@example.com', '$2y$10$iu8IeXj2me0IiyTj7N.G3eGVcVDlWFFDYWNv/qYZ/ZJxtyyyoergO'),
(19, 'Moamen Ali', 'moa@gmail.com', '$2y$10$JH8yD0fWRvrZvgfzYCKxFeNuTNp8/XLnmtGHKdZ63K7GK83qoVvMG'),
(20, 'Moamen Ali', 'mo@gmail.com', '$2y$10$8MsilFk4pM1BvLsC2povZuHErA4lVEdQxpaV5G9Zr.NDXOrdalxJ6');

-- --------------------------------------------------------

--
-- Table structure for table `weknees_point`
--

CREATE TABLE `weknees_point` (
  `id` int(11) NOT NULL,
  `weeknees_point_description` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `plan_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `weknees_point`
--

INSERT INTO `weknees_point` (`id`, `weeknees_point_description`, `plan_id`) VALUES
(1, 'Neque voluptate architecto autem tempore qui.', 1),
(2, 'Earum aut nesciunt sunt esse ea officiis exercitationem.', 8),
(3, 'Asperiores ex tenetur quia.', 1),
(4, 'Eius voluptatum deserunt aut nulla dolore enim.', 4),
(5, 'Quasi rerum commodi sunt quos.', 5),
(6, 'Dolores eum iste quis at.', 7),
(7, 'Magnam dolor ea placeat amet quidem ut quia.', 6),
(8, 'Unde adipisci itaque rerum id culpa.', 3);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `adir`
--
ALTER TABLE `adir`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `adir_result`
--
ALTER TABLE `adir_result`
  ADD PRIMARY KEY (`id`),
  ADD KEY `adir` (`adir_id`),
  ADD KEY `pateints` (`pateint_id`);

--
-- Indexes for table `attached_reports`
--
ALTER TABLE `attached_reports`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `attahced_reports_result`
--
ALTER TABLE `attahced_reports_result`
  ADD PRIMARY KEY (`id`),
  ADD KEY `att` (`attached_id`),
  ADD KEY `patient_att` (`patient_id`);

--
-- Indexes for table `autism_checker`
--
ALTER TABLE `autism_checker`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_id` (`user_id`);

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
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `sp_Serial_No` (`sp_serial_no`);

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
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `evaluation_history_result`
--
ALTER TABLE `evaluation_history_result`
  ADD PRIMARY KEY (`id`),
  ADD KEY `evaluation` (`evaluation_id`),
  ADD KEY `pateint_ev` (`pateint_id`);

--
-- Indexes for table `long_term`
--
ALTER TABLE `long_term`
  ADD PRIMARY KEY (`id`),
  ADD KEY `plan_id` (`plan_id`) USING BTREE;

--
-- Indexes for table `lovaas_category`
--
ALTER TABLE `lovaas_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lovaas_questions`
--
ALTER TABLE `lovaas_questions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `lovaas_category_id` (`lovaas_category_id`);

--
-- Indexes for table `lovaas_results`
--
ALTER TABLE `lovaas_results`
  ADD PRIMARY KEY (`id`),
  ADD KEY `lovaas_id` (`lovaas_question_id`) USING BTREE,
  ADD KEY `patient_id` (`patient_id`);

--
-- Indexes for table `notic`
--
ALTER TABLE `notic`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notic_p` (`pateint_id`),
  ADD KEY `notic_q` (`notic_q_id`);

--
-- Indexes for table `notic_questions`
--
ALTER TABLE `notic_questions`
  ADD PRIMARY KEY (`id`);

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
  ADD UNIQUE KEY `lovaas_id` (`lovaas_id`),
  ADD KEY `pateint_id` (`pateint_id`);

--
-- Indexes for table `scale`
--
ALTER TABLE `scale`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `dsm5_id` (`dsm5_id`),
  ADD KEY `pateint_id` (`pateint_id`);

--
-- Indexes for table `scale_questions`
--
ALTER TABLE `scale_questions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `scale_id` (`scale_id`) USING BTREE;

--
-- Indexes for table `schedule`
--
ALTER TABLE `schedule`
  ADD PRIMARY KEY (`id`),
  ADD KEY `specialist_id` (`specialist_id`) USING BTREE,
  ADD KEY `caregiver_id` (`caregiver_id`) USING BTREE,
  ADD KEY `patient_id` (`patient_id`);

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
-- Indexes for table `users`
--
ALTER TABLE `users`
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `adir_result`
--
ALTER TABLE `adir_result`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `attached_reports`
--
ALTER TABLE `attached_reports`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `attahced_reports_result`
--
ALTER TABLE `attahced_reports_result`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `autism_checker`
--
ALTER TABLE `autism_checker`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `autism_checker_question`
--
ALTER TABLE `autism_checker_question`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `caregiver`
--
ALTER TABLE `caregiver`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `dsm5`
--
ALTER TABLE `dsm5`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `dsm5_question`
--
ALTER TABLE `dsm5_question`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `evaluation_history`
--
ALTER TABLE `evaluation_history`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `evaluation_history_result`
--
ALTER TABLE `evaluation_history_result`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `long_term`
--
ALTER TABLE `long_term`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `lovaas_questions`
--
ALTER TABLE `lovaas_questions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;

--
-- AUTO_INCREMENT for table `lovaas_results`
--
ALTER TABLE `lovaas_results`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;

--
-- AUTO_INCREMENT for table `notic`
--
ALTER TABLE `notic`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `notic_questions`
--
ALTER TABLE `notic_questions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `patient`
--
ALTER TABLE `patient`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=117;

--
-- AUTO_INCREMENT for table `plan`
--
ALTER TABLE `plan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `scale`
--
ALTER TABLE `scale`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `scale_questions`
--
ALTER TABLE `scale_questions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=159;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `status`
--
ALTER TABLE `status`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `strength_point`
--
ALTER TABLE `strength_point`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=115;

--
-- AUTO_INCREMENT for table `to_do`
--
ALTER TABLE `to_do`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `weknees_point`
--
ALTER TABLE `weknees_point`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `adir_result`
--
ALTER TABLE `adir_result`
  ADD CONSTRAINT `adir` FOREIGN KEY (`adir_id`) REFERENCES `adir` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `pateints` FOREIGN KEY (`pateint_id`) REFERENCES `patient` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `attahced_reports_result`
--
ALTER TABLE `attahced_reports_result`
  ADD CONSTRAINT `att` FOREIGN KEY (`attached_id`) REFERENCES `attached_reports` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `patient_att` FOREIGN KEY (`patient_id`) REFERENCES `patient` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `autism_checker`
--
ALTER TABLE `autism_checker`
  ADD CONSTRAINT `autism_checker_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

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
-- Constraints for table `evaluation_history_result`
--
ALTER TABLE `evaluation_history_result`
  ADD CONSTRAINT `evaluation` FOREIGN KEY (`evaluation_id`) REFERENCES `evaluation_history` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `pateint_ev` FOREIGN KEY (`pateint_id`) REFERENCES `patient` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `long_term`
--
ALTER TABLE `long_term`
  ADD CONSTRAINT `long_term_ibfk_1` FOREIGN KEY (`plan_id`) REFERENCES `plan` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `lovaas_questions`
--
ALTER TABLE `lovaas_questions`
  ADD CONSTRAINT `lovaas_questions_ibfk_1` FOREIGN KEY (`lovaas_category_id`) REFERENCES `lovaas_category` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `lovaas_results`
--
ALTER TABLE `lovaas_results`
  ADD CONSTRAINT `lovaas_results_ibfk_1` FOREIGN KEY (`lovaas_question_id`) REFERENCES `lovaas_questions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `lovaas_results_ibfk_2` FOREIGN KEY (`patient_id`) REFERENCES `patient` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `notic`
--
ALTER TABLE `notic`
  ADD CONSTRAINT `notic_p` FOREIGN KEY (`pateint_id`) REFERENCES `patient` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `notic_q` FOREIGN KEY (`notic_q_id`) REFERENCES `notic_questions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

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
  ADD CONSTRAINT `plan_ibfk_1` FOREIGN KEY (`lovaas_id`) REFERENCES `lovaas_questions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
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
  ADD CONSTRAINT `schedule_ibfk_2` FOREIGN KEY (`specialist_id`) REFERENCES `specialist` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `schedule_ibfk_3` FOREIGN KEY (`patient_id`) REFERENCES `patient` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

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
