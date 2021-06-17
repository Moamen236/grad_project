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
-- Dumping data for table `adir`
--

INSERT INTO `adir` (`id`, `adir_questions`, `adir-question-result`, `pateint_id`) VALUES
(1, `When you smile to your baby, does he meet you with a smile too?`, 5, 101),
(2, `When your child is busy playing with himself and you call him by his name, does he look at you expressing his response to his calling by his name?`, 7, 102),
(3, `When you are pointing at something with the index finger, does your child follow it and look at the thing you are referring to?`, 4, 103),
(4, `When you try to play with your child, does he play with you?`, 3, 104),
(5, `When you try to teach your child an alternate playing method using one of the toys, does your child watch it and try to copy it?`, 7, 105),
(6, `When someone familiar to your child comes, does he respond to him and look at him?`, 1, 106),
(7, `Does your child seem preoccupied and entertained in a certain activity, does he look at you and smile to express his happiness and enjoyment to you?`, 4, 107),
(8, `When you laugh at your child's action or movement, does your child bring it back to make you laugh again?` , 2, 108),
(9, `Does your child point to something or offer you something in order to share his interest or liking for that thing?`, 5, 109),
(10, `Is your child trying to invite you to play with him by offering you his toy and looking at you to express his desire to play with you?`, 2, 110),
(11, `Does your child approach other children and try to play with them?`, 5, 111),
(12, `Does your child look at you when you talk or play with him?`, 6, 112),
(13, `Does your child play games in an unusual way (cars)?`, 9, 113),
(14, `Does your child move his hands or body in an unusual way?`, 1, 114),
(15, `Does your child have specific interests that take a long time?`, 9, 115),
(16, `Is the child accustomed to performing behaviors in a consistent way?`, 6, 116),
(17, `Does the child resist your attempt to change the environment or activity?`, 8, 117),
(18, `Is the child unable to imitate your actions if you ask him to do so?`, 7, 118);

-- --------------------------------------------------------

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
-- Dumping data for table `attached_reports`
--

INSERT INTO `attached_reports` (`id`, `result`, `attached-report-details`, `photo`, `pateint_id`) VALUES
(1, 7, `Audiometer`, `http://lorempixel.com/640/480/`, 101),
(2, 6, `Resonance ray`, `http://lorempixel.com/640/480/`, 102),
(3, 1, `A CT scan of the brain`, `http://lorempixel.com/640/480/`, 103),
(4, 9, `Ear and nose report`, `http://lorempixel.com/640/480/`, 104),
(5, 2, `Prior diagnosis of genetic conditions in the family`, `http://lorempixel.com/640/480/`, 105),
(6, 2, `Linguistic deficiency`, `http://lorempixel.com/640/480/`, 106);

-- --------------------------------------------------------

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
-- Dumping data for table `autism_checker`
--

INSERT INTO `autism_checker` (`id`, `case_name`, `gender`, `age`, `user_id`) VALUES
(1, `Michelle Keebler`, `male`, 9, 1),
(2, `Daisha Bayer`, ``, 2, 2),
(3, `Dr. Cortez Brekke`, ``, 6, 3),
(4, `Vicenta Herzog`, ``, 4, 4),
(5, `Prof. Marquis Satterfield`, ``, 2, 5),
(6, `Talia Adams`, ``, 5, 6),
(7, `Abigail Rowe`, ``, 9, 7),
(8, `Freddie Lubowitz`, ``, 8, 8),
(9, `Jenifer Gislason`, ``, 4, 9),
(10, `Alfred Green`, ``, 4, 10),
(11, `Gordon Dibbert`, ``, 5, 11),
(12, `Prof. Jordyn Strosin III`, ``, 6, 12),
(13, `Lilliana Hessel`, ``, 6, 13),
(14, `Retta Jacobs`, ``, 8, 14),
(15, `Zora Mayert Jr.`, ``, 5, 15),
(16, `Alexandra Emmerich`, ``, 5, 16),
(17, `Kaela Zieme`, ``, 8, 17),
(18, `Miss Aditya McClure Jr.`, ``, 9, 18),
(19, `Prof. Laurine Johns DDS`, ``, 7, 19),
(20, `Dr. Drake Goyette`, ``, 9, 20),
(21, `Mr. Joan Watsica`, ``, 5, 21),
(22, `Mckayla Parisian`, ``, 6, 22),
(23, `Margret Klocko`, ``, 2, 23),
(24, `Christa Sipes`, ``, 6, 24),
(25, `Prof. Oswaldo Heidenreich`, ``, 5, 25),
(26, `Willie Yost`, ``, 8, 26),
(27, `Bernadette Auer`, ``, 4, 27),
(28, `Zola Berge DVM`, ``, 1, 28),
(29, `Winston Dare II`, ``, 6, 29),
(30, `Trevion Heathcote`, ``, 1, 30),
(31, `Nathen Hilpert`, ``, 4, 31),
(32, `Dr. Ryley White`, ``, 9, 32),
(33, `Alexandro Kautzer`, ``, 1, 33),
(34, `Prof. Nyasia Zboncak`, ``, 9, 34),
(35, `Jarret Runolfsson`, ``, 5, 35),
(36, `Mr. Antonio Hettinger DDS`, ``, 3, 36),
(37, `Tristin Wiegand`, ``, 1, 37),
(38, `Robin Jacobi`, ``, 9, 38),
(39, `Keshaun Tillman`, ``, 5, 39),
(40, `Josh Cummerata III`, ``, 6, 40),
(41, `Abdullah Romaguera DVM`, ``, 5, 41),
(42, `Prof. Clotilde O\`Kon`, ``, 1, 42),
(43, `Jameson Eichmann`, ``, 9, 43),
(44, `Joyce Heathcote Sr.`, ``, 1, 44),
(45, `Jack Kertzmann Jr.`, ``, 2, 45),
(46, `Remington Rogahn`, ``, 8, 46),
(47, `Connor Hand`, ``, 4, 47),
(48, `Miss Zora Hand`, ``, 8, 48),
(49, `Dr. Jalyn Dickinson DVM`, ``, 6, 49);

-- --------------------------------------------------------

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
-- Dumping data for table `autism_checker_question`
--

INSERT INTO `autism_checker_question` (`id`, `checker_qustions`, `checker_question_result`, `autism_checker_id`) VALUES
(1, `If you point at something across the room, does your child look at it?(FOR EXAMPLE, if you point at a toy or an animal, does your child look at the toy or animal?)`, `yes`, 1),
(2, `Have you ever wondered if your child might be deaf?`, `yes`, 2),
(3, `Does your child play pretend or make-believe?(FOR EXAMPLE, pretend to drink from an empty cup, pretend to talk on a phone, or pretend to feed a doll or stuffed animal?)
`, `no`, 3),
(4, `Does your child like climbing on things? (FOR EXAMPLE, furniture, playground equipment, or stairs) `, `yes`, 4),
(5, `Does your child make unusual finger movements near his or her eyes? (FOR EXAMPLE, does your child wiggle his or her fingers close to his or her eyes?)`, `yes`, 5),
(6, `Does your child point with one finger to ask for something or to get help? (FOR EXAMPLE, pointing to a snack or toy that is out of reach)`, `yes`, 6),
(7, `Does your child point with one finger to show you something interesting? (FOR EXAMPLE, pointing to an airplane in the sky or a big truck in the road)`, `yes`, 7),
(8, `Is your child interested in other children?  (FOR EXAMPLE, does your child watch other children, smile at them, or go to them?)`, `yes`, 8),
(9, `Does your child show you things by bringing them to you or holding them up for you to see – not to get help, but just to share? (FOR EXAMPLE, showing you a flower, a stuffed animal, or a toy truck)`, `yes`, 9),
(10, `Does your child respond when you call his or her name? (FOR EXAMPLE, does he or she look up, talk or babble, or stop what he or she is doing when you call his or her name?)
`, `no`, 10),
(11, `When you smile at your child, does he or she smile back at you?`, `no`, 11),
(12, `Does your child get upset by everyday noises? (FOR EXAMPLE, does your.child scream or cry to noise such as a vacuum cleaner or loud music?)`, `no`, 12),
(13, `Does your child walk?`, `no`, 13),
(14, `Does your child look you in the eye when you are talking to him or her, playing with him or her, or dressing him or her?`, `yes`, 14),
(15, `Does your child try to copy what you do? (FOR EXAMPLE, wave bye-bye, clap, or make a funny noise when you do)`, `yes`, 15),
(16, `If you turn your head to look at something, does your child look around to see what you are looking at?`, `yes`, 16),
(17, `Does your child try to get you to watch him or her? (FOR EXAMPLE, does your child look at you for praise, or say “look” or “watch me”?)
`, `no`, 17),
(18, `Does your child understand when you tell him or her to do something? (FOR EXAMPLE, if you don’t point, can your child understand “put the book on the chair” or “bring me the blanket”?)`, `yes`, 18),
(19, `If something new happens, does your child look at your face to see how you feel about it? (FOR EXAMPLE, if he or she hears a strange or funny noise, or sees a new toy, will
he or she look at your face?)`, `yes`, 19),
(20, `Does your child like movement activities? (FOR EXAMPLE, being swung or bounced on your knee)`, `no`, 20),


-- --------------------------------------------------------

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
-- Dumping data for table `caregiver`
--

INSERT INTO `caregiver` (`id`, `name`, `email`, `phone`, `sp_serial_no`) VALUES
(1, `Loy`, `reichel.treva@example.net`, `639.728.5038x9193`, 64214504),
(2, `Sincere`, `ahilll@example.com`, `1-342-390-6436x1066`, 42619734),
(3, `Carolyne`, `johnathon.hudson@example.org`, `1-586-654-9080`, 16605077),
(4, `River`, `eino.schulist@example.org`, `(690)021-5767x3524`, 37733001),
(5, `Marlee`, `zjakubowski@example.org`, `+91(7)5303688928`, 44378271),
(6, `Lawrence`, `ibogan@example.net`, `830.143.2849`, 27129708),
(7, `Lurline`, `eunice08@example.net`, `1-964-176-0506`, 96900871),
(8, `Mustafa`, `katrina46@example.org`, `01066687285`, 74823451);

-- --------------------------------------------------------

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
-- Dumping data for table `dsm5`
--

INSERT INTO `dsm5` (`id`, `dsm5_category`, `dsm5_category-result`, `pateint_id`) VALUES
(1, `Difficulty with social and emotional exchange`, 6, 101),
(2, `Difficulty with nonverbal communication behaviors used in social interaction`, 3, 102),
(3, `Difficulty creating, maintaining, or understanding relationships`, 3, 103),

-- --------------------------------------------------------

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
-- Dumping data for table `dsm5_question`
--

INSERT INTO `dsm5_question` (`id`, `dsm5_questions`, `dsm5_question_category`, `dsm5_question_result`, `dsm5_id`, `pateint_id`) VALUES
(1, `Abnormal social interaction appears`, `Difficulty with social and emotional exchange`, 8, 1, 101),
(2, `Failed to have a regular dialogue exchange`, `Difficulty with social and emotional exchange`, 8, 1, 101),
(3, `Fails to share interests, emotions, and moods`, `Difficulty with social and emotional exchange`, 8, 1, 101),
(4, `Fails to initiate or respond to a social interaction`, `Difficulty with social and emotional exchange`, 8, 1, 101),
(5, `Impaired integration of verbal and nonverbal communication`, `Difficulty with nonverbal communication behaviors used in social interaction`, 4, 2, 102),
(6, `Impaired eye contact and body language`, `Difficulty with nonverbal communication behaviors used in social interaction`, 4, 2, 102),
(7, `Difficulty understanding and using bodily expressions`, `Difficulty with nonverbal communication behaviors used in social interaction`, 4, 2, 102),
(8, `Difficulty understanding and using gestures`, `Difficulty with nonverbal communication behaviors used in social interaction`, 4, 2, 102),
(9, `Complete absence of facial expressions and non-verbal communication`, `Difficulty with nonverbal communication behaviors used in social interaction`, 2, 3, 103),
(10, `Difficulty adjusting behavior to suit different social situations`, `Difficulty creating, maintaining, or understanding relationships`, 4, 3, 104),
(11, `Difficulty sharing imaginative play`, `Difficulty creating, maintaining, or understanding relationships`, 7, 3, 105),
(12, `Difficulties making friends`, `Difficulty creating, maintaining, or understanding relationships`, 7, 3, 106),
(13, `Loss of interest in peers`, `Difficulty creating, maintaining, or understanding relationships`, 7, 3, 107);

-- --------------------------------------------------------

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
-- Dumping data for table `evaluation_history`
--

INSERT INTO `evaluation_history` (`id`, `evaluation_questions`, `evaluation_question_result`, `pateint_id`) VALUES
(1, `Is there a relationship between the father and the mother?`, 7, 101),
(2, `Did problems occur during pregnancy (physical condition)?`, 5, 102),
(3, `Are drugs taken during pregnancy?`, 5, 103),
(4, `Psychological state during pregnancy (depression - sadness - nervousness - other than
that)?`, 6, 104),
(5, `other notes..........`, 4, 105),
(6, `Was an audiometer, resonance ray, or a CT scan done on the brain?`, 8, 106),
(7, `- Has the child been shown to an ear, nose and throat doctor?`, 4, 107),
(8, `When was a problem noticed in the child (date)?`, 1, 108),
(9, ` What is the problem observed on the child?` , 2 ,109 ), 
(10,`Has the child been subject to previous sessions in any center?`, 6 , 110 )
(11,`What is the child's daily routine?`, 3 , 111)
(12,`What happens when any part of the child's routine changes? What is his reaction
(screaming - tense, ......)? ` , 8 , 112)
(13,` What is the child's eating routine?` , 9 , 113)
(14,`I like baby food (chocolate, chips, lollipop, cake, ..........)`, 4 , 114 )
(15, `- Does the child have a constantly repeating pattern?` , 3, 115)
(16, `What are the child's reinforcements (games, television, computer, food, ...) , 6 , 116`) ;

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
(1, `Vitae consequuntur labore quia minus molestiae reiciendis.`, 1),
(2, `Aut qui et dicta.`, 2),
(3, `Architecto quo autem porro ut in molestiae.`, 3),
(4, `Neque voluptatem modi consectetur quia ex enim ullam.`, 4),
(5, `Et et et cum vel.`, 5),
(6, `Ut et odit animi cupiditate exercitationem aliquid tempore.`, 6),
(7, `Nulla quod fuga ut dolores.`, 7),
(8, `Qui qui officia doloribus in quo optio.`, 8);

-- --------------------------------------------------------

--
-- Table structure for table `lovaas`
--

CREATE TABLE `lovaas` (
  `id` int(11) NOT NULL,
  `lovaas_category` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `pateint_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `lovaas`
--

INSERT INTO `lovaas` (`id`, `lovaas_category`, `pateint_id`) VALUES
(1, `aut`, 101),
(2, `id`, 102),
(3, `consequatur`, 103),
(4, `voluptatem`, 104),
(5, `consequatur`, 105),
(6, `fugiat`, 106),
(7, `voluptates`, 107),
(8, `necessitatibus`, 108);

-- --------------------------------------------------------

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
-- Dumping data for table `lovaas_question`
--

INSERT INTO `lovaas_question` (`id`, `lovaas_questions`, `lovaas_question_category`, `lovaas_question_result`, `lovaas_id`) VALUES
(1, `Keep calling for 5 seconds in response to hearing his name`, `Attention and attendance skills`, 8, 1),
(2, `Make eye contact in response to hearing his name while playing`, `Attention and attendance skills`, 7, 1),
(3, `Make eye contact from a distance`, `Attention and attendance skills`, 4, 1),
(4, 'Responding when someone call him', `Attention and attendance skills`, 4, 1),
(5, `Imitation of large movements from a standing position`, `Imitation skills`, 7, 1),
(6, `Imitation of large sequential movements`, `Imitation skills`, 6, 1),
(7, `Imitation of sequential movements of things`, `Imitation skills`, 4, 1),
(8, `Imitation of movements coupled with sounds`, `Imitation skills`, 6, 1);
(9, `Imitation of models with cubes`, `Imitation skills`, 6, 1);
(10, `Minor copying fees`, `Imitation skills`, 6, 1);

(10, `Learn about rooms`, `Language understanding skills `, 6, 1);
(11, `Learn about feelings and emotions`, `Language understanding skills `, 6, 1);
(12, `Learn about places`, `Language understanding skills `, 6, 1);
(13, `Follow two-step instructions`, `Language understanding skills `, 6, 1);
(14, `It gives two things`, `Language understanding skills `, 6, 1);
(15, `Recovers things he does not see`, `Language understanding skills `, 6, 1);
(16, `Identify the distinguishing characteristics of things`, `Language understanding skills `, 6, 1);
(17, `Get to know the helpers in the community`, `Language understanding skills `, 6, 1);
(18, `Pretend to do things`, `Language understanding skills `, 6, 1);
(19, `Knows the categories of things`, `Language understanding skills `, 6, 1);
(20, `Knows pronouns`, `Language understanding skills `, 6, 1);
(21, `It follows instructions that contain prepositions`, `Language understanding skills `, 6, 1);
(22, `He recognizes things when you describe him in his field of view`, `Language understanding skills `, 6, 1);
(23, `Put the cards in sequence in order`, `Language understanding skills `, 6, 1);
(24, `Knows the missing elements`, `Language understanding skills `, 6, 1);
(25, `He answers questions about things that are missing`, `Language understanding skills `, 6, 1);
(26, `Answer with yes or no response to things about activities and things`, `Language understanding skills `, 6, 1);
(27, `He calls things touch`, `Language understanding skills `, 6, 1);

(28, 'Imitates a sentence of two or three sentences', 'Expressive language skills', 8, 1),
(29, 'Asking what he wants in sentences in response to the question (what do you want)', 'Expressive language skills', 8, 1),
(30, 'He asks what he wants automatically in his sentences', 'Expressive language skills', 8, 1),
(31, 'He calls something that depends on a Job', 'Expressive language skills', 8, 1),
(32, 'It defines the function of things', 'Expressive language skills', 8, 1),
(33, 'Identifies and refers to the parts of his body according to their responsibility', 'Expressive language skills', 8, 1),
(34, 'Mention the job of his body parts', 'Expressive language skills', 8, 1),
(35, 'Names places', 'Expressive language skills', 8, 1),
(36, 'Called agitation', 'Expressive language skills', 8, 1),
(37, 'He calls the group of things', 'Expressive language skills', 8, 1),
(38, 'Mention a simple sentence', 'Expressive language skills', 8, 1),
(39, 'He shares his information', 'Expressive language skills', 8, 1),
(40, 'He says (I donnot know) when he asks for the name of something he doesnott know', 'Expressive language skills', 8, 1),
(41, 'Asks questions (what is it - what is there)', 'Expressive language skills', 8, 1),
(42, 'He calls prepositions, Expressive language skills', 8, 1),
(43, 'The gender is called (male - female)', 8, 1),
(44, 'Describes the picture in a sentence', 'Expressive language skills', 8, 1),
(45, 'Describes the things he sees and their most important characteristics', 'Expressive language skills', 8, 1),
(46, 'He can recall the experiences of his previous one', 'Expressive language skills', 8, 1),
(47, 'It answers questions that start with where', 'Expressive language skills', 8, 1),
(48, 'He called the assets stone', 'Expressive language skills', 8, 1),
(49, 'Mentions cabins functions', 'Expressive language skills', 8, 1),
(50, 'It reminds the assistant jobs of the community', 'Expressive language skills', 8, 1),
(51, 'Answers questions that start with when', 'Expressive language skills', 8, 1),
(52, 'Describes the sequence of images', 'Expressive language skills', 8, 1),
(53, 'Send a small message', 'Expressive language skills', 8, 1),
(54, 'Role-playing games with dolls', 'Expressive language skills', 8, 1),
(55, 'Offer help', 'Expressive language skills', 8, 1),

(56, 'Connects items with the same class', 'Pre-academic skills', 8, 1),
(57, 'It gives a specified quantity of things', 'Pre-academic skills', 8, 1),
(58, 'Connects numbers and quantities', 'Pre-academic skills', 8, 1),
(60, 'Connect between different shapes with letters', 'Pre-academic skills', 8, 1),
(61, 'Connect matching words', 'Pre-academic skills', 8, 1),
(62, 'Get to know more and less', 'Pre-academic skills', 8, 1),
(63, 'Sequences letters and numbers', 'Pre-academic skills', 8, 1),
(64, 'Completes simple homework', 'Pre-academic skills', 8, 1),
(65, 'Copies numbers and letters', 'Pre-academic skills', 8, 1),
(66, 'Recognize written names', 'Pre-academic skills', 8, 1),
(67, 'Draws simple paintings', 'Pre-academic skills', 8, 1),
(68, 'Write his name', 'Pre-academic skills', 8, 1),
(69, 'Plaster and knead', 'Pre-academic skills', 8, 1),
(70, 'It shears with scissors', 'Pre-academic skills', 8, 1),
(71, 'He colors within the boundaries of his drawing', 'Pre-academic skills', 8, 1),

(72, 'To brush his teeth', 'Self-care skills', 8, 1),
(73, 'To close and open the zipper', 'Self-care skills', 8, 1),
(74, 'He buttoned the buttons', 'Self-care skills', 8, 1),
(75, 'To crack his tongue', 'Self-care skills', 8, 1)

-- --------------------------------------------------------

--
-- Table structure for table `notic`
--

CREATE TABLE `notic` (
  `id` int(11) NOT NULL,
  `category` varchar(255) NOT NULL,
  `pateint_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `notic`
--

INSERT INTO `notic` (`id`, `category`, `pateint_id`) VALUES
(1, `Child communication`, 101),
(2, `Child s social interaction.`, 102),
(3, `Body Use`, 103),
(4, `Play`, 104),
(5, `Adapt to routine.`, 105),
(6, `Use of the senses`, 106);

-- --------------------------------------------------------

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
-- Dumping data for table `notic_questions`
--

INSERT INTO `notic_questions` (`id`, `notice_questions`, `notic_question_category`, `question_result`, `notic_id`) VALUES
(1, `Non-conscientious communication (impaired eye contact and body language - difficulty understanding the use of physical expression)`, `Child communication`, 1, 1),
(2, `Difficulty making relationships - difficulties sharing imaginative play - loss of interest in peers`, `Child communication`, 1, 2),
(3, `Failed to have a regular conversation`, `Child s social interaction`, 1, 3),
(4, `Failure to initiate or respond to a social interaction`, `hild s social interaction`, 4, 4),
(5, `- Failure to share interests, emotions, and moods`, `Child s social interaction`, 4, 5),
(6, `Inability to hold things or move limbs`, `Body Use`, 7, 6),
(7, `Random movements in front of the face`, `Body Use`, 6, 7),
(8, `Modularity (arranging games in line or turning them around - making an echo - repeating special phrases meaningless)`, `play`, 7, 8)
(9, `Routine (insistence on the symmetry of actions - a permanent attachment to routine
actions)`, `Adapt to routine`, 3, 5),
(10, `A special welcome ritual`, `Adapt to routine`, 4, 8),
(11, `Great strike when a small change occurs - difficulties with change`, `Adapt to routine`, 6, 9),
(12, `The need to eat the same food every day - the need to take the same route`, `Adapt to routine`, 6, 9),
(13, `Hyper or low mobility`, `Use of the senses `, 5, 3),
(14, `Failure to feel the limbs or pressure on him`, `Use of the senses `, 7, 1);

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
-- Dumping data for table `patient`
--

INSERT INTO `patient` (`id`, `name`, `age`, `date_of_birth`, `school`, `gender`, `class`, `photo`, `No_of_bro`, `arr_btw_bro`, `spcialist_id`, `caregiver_id`, `caregiver_name`, `caregiver_relationship`, `caregiver_phone`) VALUES
(101, `Cora`, 85, `1998-01-20`, `Tempora inventore blanditiis sed.`, `male`, `Odio debitis est architecto voluptatem. Eveniet qui quisquam qui quis voluptatem porro. Sed deserunt est omnis velit.`, `http://lorempixel.com/640/480/`, 3, 7, 1, 1, `Stewart`, `\`mother\``, 1),
(102, `Osvaldo`, 812997, `2008-10-29`, `Voluptatem earum id voluptatem voluptates doloremque velit quisquam.`, `female`, `Distinctio officia impedit molestias sed voluptatibus adipisci. Voluptatem ipsum nulla saepe iste aliquam magni deleniti. Asperiores minus culpa sit laudantium natus aut. Quaerat quia ea non accusantium.`, `http://lorempixel.com/640/480/`, 8, 8, 2, 2, `Antonette`, `\`mother\``, 352),
(103, `Jermaine`, 71919506, `2010-07-29`, `Voluptatem rem rem error cum optio nihil voluptatem et.`, `male`, `Ut voluptatum aut ipsam deserunt sed illo et aliquam. Pariatur sequi optio voluptatum architecto perferendis quaerat. Dolore nobis provident deleniti pariatur non. Veritatis animi non cupiditate rerum sequi ab.`, `http://lorempixel.com/640/480/`, 9, 4, 3, 3, `Chaz`, `\`mother\``, 445),
(104, `Art`, 8, `1984-03-25`, `Non et aliquam facilis ab.`, `male`, `Occaecati a porro tempora deserunt ea nostrum non. Quo tenetur numquam aliquid quaerat. Qui placeat incidunt sit quasi. Sed et omnis sapiente magni ducimus dolorem aut.`, `http://lorempixel.com/640/480/`, 4, 5, 4, 4, `Delbert`, `\`mother\``, 1),
(105, `Harmon`, 0, `1981-08-20`, `Quas in dolorem eveniet.`, `female`, `Quis veritatis quia explicabo modi. Iste quisquam ut maxime aut sequi quaerat. Et dolor voluptates illo blanditiis magni dolore facilis.`, `http://lorempixel.com/640/480/`, 2, 4, 5, 5, `Frieda`, `\`mother\``, 381042),
(106, `Eugenia`, 914, `1981-08-30`, `Aut sed minus necessitatibus doloremque molestiae labore quis quidem.`, `female`, `Aperiam dolor sequi adipisci dolorum. Voluptatem qui nam odit occaecati vero consequatur. Beatae excepturi est voluptas quae eveniet non maxime.`, `http://lorempixel.com/640/480/`, 4, 5, 6, 6, `Doug`, `\`father\``, 1),
(107, `Marcelle`, 0, `2010-09-30`, `Voluptas numquam eos necessitatibus sit.`, `female`, `Facere distinctio qui repellat laboriosam esse in. Sed unde ratione saepe nobis quia. Nam rem ut ipsam doloremque aliquid rerum.`, `http://lorempixel.com/640/480/`, 7, 7, 7, 7, `Garland`, `\`father\``, 0),
(108, `Robert`, 12205757, `1990-03-04`, `Aut nemo libero voluptas repudiandae saepe.`, `male`, `Eius quo dolor est corrupti voluptates enim perferendis. Corporis quos rerum fuga dolorum omnis voluptatem eum dolorem. Rerum sit aliquam saepe incidunt. Numquam sint veritatis neque sed perspiciatis ut.`, `http://lorempixel.com/640/480/`, 8, 8, 8, 8, `Lillie`, `\`uncle\``, 718);

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
  `scale_category` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `scale_category_result` int(11) NOT NULL,
  `dsm5_id` int(11) NOT NULL,
  `pateint_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `scale`
--

INSERT INTO `scale` (`id`, `scale_category`, `scale_category_result`, `dsm5_id`, `pateint_id`) VALUES
(1, `Stereotypic / repetitive behaviors`, 2, 1, 101),
(2, `Social interaction`, 5, 2, 102),
(3, `Social communication`, 8, 3, 103),
(4, `Emotional / Sentimental Respons`, 5, 4, 104),
(5, `Cognitive pattern`, 2, 5, 105),
(6, `Adaptive language`, 4, 6, 106);

-- --------------------------------------------------------

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
-- Dumping data for table `scale_questions`
--

INSERT INTO `scale_questions` (`id`, `scale_question`, `scale_question_category`, `scale_question_result`, `scale_id`) VALUES
(101, `Most of his time is spent performing typical repetitive behaviors if he is left alone`, `Stereotypic / repetitive behaviors`, 3, 1),
(102, `Is involved in a specific and abnormally stimulus`, `Stereotypic / repetitive behaviors`, 2, 1),
(103, `He stares at the hands and objects in the environment, with a distance of at least 5 seconds`, `Stereotypic / repetitive behaviors`, 1, 4),
(104, `Moves (taps) the fingers quickly, with a angle of at least 5 seconds`, `Stereotypic / repetitive behaviors`, 0, 1),
(105, `It moves quickly and impulsively when moving from one place to another`, `Stereotypic / repetitive behaviors`, 2, 1),
(106, `He flips (moves) the hands or fingers in front of or next to the face`, `Stereotypic / repetitive behaviors`, 1, 1),
(107, `Makes high-pitched voices (like ayeye) or any other sounds as a matter of self-excitement`, `Stereotypic / repetitive behaviors`, 2, 1)
(108, `Uses toys and objects in an inappropriate way, makes the car spin, disassembles the moving parts of toys`, `Stereotypic / repetitive behaviors`, 3, 1),
(109, `He does things in ritual repetition`, `Stereotypic / repetitive behaviors`, 3, 1),
(110, `He engages in playing stereotypically when he uses objects or games`, `Stereotypic / repetitive behaviors`, 3, 1),
(111, `Repeats incomprehensible sounds (babbling) over and over`, `Stereotypic / repetitive behaviors`, 3, 1),
(112, `It shows a great and unusual interest in the sensory aspects of playing materials, body parts, or objects`, `Stereotypic / repetitive behaviors`, 3, 1),
(113, `Shows compulsive behaviors that cannot be resisted`, `Stereotypic / repetitive behaviors`, 2, 1),
(114, `Does not initiate conversations with peers or others`, `Social interaction`, 2, 1),
(115, `Little or no attention is given to what the peers are doing`, `Social interaction`, 2, 1),
(116, `Fails to imitate others while playing or when performing educational activities`, `Social interaction`, 2, 1),
(117, `Does not follow other people hints - gestures - to direct the gaze of something, for example: when someone gestures with his head or points with his hand or uses any other body movements`, `Social interaction`, 2, 1),
(118, `Seems uninterested in getting other peoples attention (does not attempt to obtain, maintain, or direct another persons attention)`, `Social interaction`, 2, 1),
(119, `Minimum excitement appears when interacting with others`, `Social interaction`, 2, 1),
(120, `A little excitement appears - it may not appear entirely - when viewing games, objects, or others`, `Social interaction`, 2, 1),
(121, `They seem uninterested in pointing out to others about their surroundings in the environment`, `Social interaction`, 2, 1),
(122, `It appears he has no desire or object to have interactions with others`, `Social interaction`, 2, 1),
(123, `He appears minimal or unresponsive as others try to interact with him`, `Social interaction`, 2, 1),
(124, `Does not show a little bit of social interaction and may not show it at all (for example, he refuses to say bye bye in response to someone saying bye bye)`, `Social interaction`, 2, 1),
(125, `He does not seek to establish friendly relations with other people`, `Social interaction`, 2, 1),
(126, `Fails to play creatively or imaginatively`, `Social interaction`, 2, 1),
(127, `Shows little or no interest in other people`, `Social interaction`, 2, 1),
(128, `Responds inappropriately to stimuli that require a sense of humor (for example: laughs at jokes, cartoons, and funny anecdotes)`, `Social communication`, 2, 1),
(129, `He has difficulty understanding the jokes`, `Social communication`, 2, 1),
(130, `Has difficulty understanding colloquial expressions`, `Social communication`, 2, 1),
(131, `He finds it difficult to know if someone is intentionally harassing him`, `Social communication`, 2, 1),
(132, `He finds it difficult to understand if it is the subject of mockery by others`, `Social communication`, 2, 1),
(133, `He finds it difficult to understand why people do not like him (to understand why others are bothered by him)`, `Social communication`, 2, 1),
(134, `Fails to predict the possible consequences of social events`, `Social communication`, 2, 1),
(135, `It seems as if he does not understand that other people have different thoughts and feelings about him`, `Social communication`, 2, 1),
(136, `It looks as if the other person does not know anything`, `Social communication`, 2, 1),
(137, `It needs a lot of reassurance if things change or something goes wrong`, `Emotional / Sentimental Respons`, 2, 1),
(138, `He becomes frustrated and frustrated when he fails at something`, `Emotional / Sentimental Respons`, 2, 1),
(139, `He gets tantrums when frustrated`, `Emotional / Sentimental Respons`, 2, 1),
(140, `Resent the usual change of routine`, `Emotional / Sentimental Respons`, 2, 1),
(141, `Responds negatively - he refuses - when he is advised, asked for something, or is directed`, `Emotional / Sentimental Respons`, 2, 1),
(142, `Responds with a sharp reaction (such as: intense crying, screaming, or angry outbursts) when hearing a loud voice or unexpected noise`, `Emotional / Sentimental Respons`, 2, 1),
(143, `He gets a tantrum when he doesnot get what he wants in his own way`, `Emotional / Sentimental Respons`, 2, 1),
(144, `He gets a tantrum when someone tells him to stop doing something they enjoy`, `Emotional / Sentimental Respons`, 2, 1),
(145, `He uses exceptionally accurate words while speaking`, `Cognitive pattern`, 2, 1),
(146, `It is closely related to the tangible - physical - meanings of words`, `Cognitive pattern`, 2, 1),
(147, `He talks excessively about a specific topic`, `Cognitive pattern`, 2, 1),
(148, `Demonstrates superior skill or knowledge in specific subjects`, `Cognitive pattern`, 2, 1),
(149, `Shows an excellent memory`, `Cognitive pattern`, 2, 1),
(150, `Shows keen interest in certain intellectual topics`, `Cognitive pattern`, 2, 1),
(151, `He makes naive remarks (unconscious of the results of other peoples reactions)`, `Cognitive pattern`, 2, 1),
(152, `Repeats - echo/Poaching - words or phrases verbal or with gestures`, `Adaptive language`, 2, 1),
(153, `Repeats words out of context (repeats words or phrases he may have heard earlier)`, `Adaptive language`, 2, 1),
(154, `He speaks in situations that affect superficially`, `Adaptive language`, 2, 1),
(155, `Uses (yes and no) inappropriately, says yes when asked about something he does not like, or says no when asked about a favorite game or gift he wants`, `Adaptive language`, 2, 1),
(156, `Uses the pronouns (he or she) instead of (me) when referring to himself`, `Adaptive language`, 2, 1),
(157, `He speaks abnormally in terms of tone or rate`, `Adaptive language`, 2, 1),
(158, `Uttering distinctive words or phrases, but without meaning`, `Adaptive language`, 2, 1);

-- --------------------------------------------------------

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
-- Dumping data for table `schedule`
--

INSERT INTO `schedule` (`id`, `schedule_appointment`, `specialist_id`, `caregiver_id`) VALUES
(1, `2010-04-26 06:00:06`, 1, 1),
(2, `2015-11-20 09:03:20`, 2, 2),
(3, `2001-09-09 18:44:55`, 3, 3),
(4, `2001-07-02 01:43:10`, 4, 4),
(5, `1976-05-22 22:36:52`, 5, 5),
(6, `1995-07-03 08:16:38`, 6, 6),
(7, `2008-10-04 04:26:27`, 7, 7),
(8, `1988-06-15 15:07:05`, 8, 8);

-- --------------------------------------------------------

--
-- Table structure for table `short_term`
--

CREATE TABLE `short_term` (
  `id` int(11) NOT NULL,
  `short_term_description` text COLLATE utf8_unicode_ci NOT NULL,
  `plan_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `short_term`
--

INSERT INTO `short_term` (`id`, `short_term_description`, `plan_id`) VALUES
(101, `Aut voluptas iure unde eum aut ad aspernatur. Reiciendis dolore maxime hic ipsam aperiam. Est nesciunt deserunt et consequatur est quaerat id. Ducimus non non ducimus molestiae. Dolor dolorum est ipsum ullam.`, 1),
(102, `Est similique et deserunt. Non voluptatum unde quae quia debitis animi doloribus. Ut a earum optio libero quibusdam doloremque voluptatem.`, 2),
(103, `Et eum totam officiis vel molestiae alias. Praesentium omnis nulla id expedita corporis molestiae dolorum non. Et voluptates qui consequuntur quia.`, 3),
(104, `Est et distinctio pariatur sunt aliquam deleniti blanditiis. Possimus quisquam cumque quia at. Aut dicta minima voluptatem alias velit. Qui est iure quo ex dolores praesentium.`, 4),
(105, `Harum aperiam maxime id debitis consectetur. Aperiam sit harum adipisci illo nam enim ut id. Distinctio quia repudiandae fugit nisi quo.`, 5),
(106, `Eaque culpa ullam ut voluptates saepe laudantium. Non eum et harum mollitia voluptatibus nihil incidunt. Est dolore quo nihil est quo qui.`, 6),
(107, `Qui repudiandae nulla vero dolore. Dolor vitae nesciunt est voluptatem impedit. Vitae dolor maxime non repudiandae. Perspiciatis ipsam ut rerum voluptatum quasi similique. Doloremque eos distinctio corrupti minus quidem.`, 7),
(108, `Ratione dolores officia repudiandae et quisquam tenetur laboriosam. Est beatae nemo neque sed. Porro magnam unde odit nulla rem dicta voluptas ducimus. Recusandae ullam dignissimos delectus incidunt.`, 8);

-- --------------------------------------------------------

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
-- Dumping data for table `specialist`
--

INSERT INTO `specialist` (`id`, `serial_no`, `name`, `email`, `age`, `phone`) VALUES
(1, 64214504, `Everardo Streich`, `cartwright.andreane@example.net`, 3, 0),
(2, 42619734, `Preston Thiel`, `gideon.sporer@example.net`, 1, 0),
(3, 16605077, `Dr. Solon Rempel II`, `adelia.quigley@example.com`, 3, 2147483647),
(4, 37733001, `Dawn Shields`, `gfay@example.com`, 8, 0),
(5, 44378271, `Miss Jayda Prosacco`, `bnienow@example.com`, 4, 76),
(6, 27129708, `Valentine Graham`, `rogahn.robert@example.org`, 5, 532),
(7, 96900871, `Josie Sporer`, `rowan49@example.net`, 4, 752017),
(8, 74823451, `Alejandrin Rath`, `myrna.zieme@example.com`, 6, 1),
(9, 70145045, `Prof. John Carter`, `schamberger.retha@example.net`, 2, 1),
(10, 63828023, `Prof. Daren Schultz`, `mwehner@example.org`, 3, 786),
(11, 5775873, `Quinten Lind`, `jada45@example.net`, 7, 2147483647),
(12, 2904634, `Elizabeth Wilderman DDS`, `stephany.toy@example.org`, 4, 0),
(13, 35871200, `Augusta Harvey I`, `candelario42@example.net`, 6, 2147483647),
(14, 78349582, `Isadore Roberts`, `tbeer@example.net`, 5, 887),
(15, 69918995, `Cassie Greenfelder`, `madeline36@example.org`, 3, 202587),
(16, 86642521, `Dr. Herbert Johns`, `ysmith@example.com`, 5, 606497),
(17, 29423200, `Harrison Cole`, `lkoss@example.org`, 6, 849),
(18, 31016179, `Mr. Vincent Trantow`, `sophia.rutherford@example.org`, 3, 1),
(19, 31466271, `Freida Sporer`, `xledner@example.com`, 7, 1),
(20, 83062018, `Ms. Clotilde Rohan`, `bauch.jordyn@example.net`, 2, 193),
(21, 73202387, `Carole Torphy`, `zweber@example.com`, 8, 0),
(22, 62244961, `Darlene Mayert II`, `armstrong.noelia@example.net`, 4, 755182),
(23, 53647887, `Blaise Parker`, `cadams@example.com`, 6, 0),
(24, 28114178, `Sigmund Kovacek II`, `nbotsford@example.org`, 9, 37),
(25, 73897200, `Ines Schmidt`, `drutherford@example.org`, 9, 21),
(26, 11519249, `Brisa Schimmel`, `river71@example.org`, 4, 1),
(27, 46777904, `Mr. Ewald Kertzmann Sr.`, `kyler.mccullough@example.com`, 9, 596893),
(28, 88797113, `Rashawn Nitzsche`, `pacocha.jessie@example.com`, 2, 469),
(29, 90437731, `Lauren Beer V`, `ernser.sydnie@example.com`, 4, 737),
(30, 35812791, `Octavia Johnston`, `greenfelder.jayne@example.net`, 8, 580),
(31, 44866655, `Kacie Deckow II`, `shields.enoch@example.com`, 9, 0),
(32, 91279316, `Freda Stanton DDS`, `block.marina@example.com`, 5, 797),
(33, 76539527, `Jarod Grady`, `petra85@example.com`, 3, 652983),
(34, 77577771, `Prof. Silas Leffler`, `itorphy@example.com`, 4, 494),
(35, 8299000, `Craig Skiles`, `polly.connelly@example.org`, 4, 0),
(36, 80011156, `Mauricio Vandervort`, `brakus.carlotta@example.org`, 2, 44),
(37, 7722974, `Prof. Ismael Turcotte PhD`, `ygraham@example.com`, 7, 702081),
(38, 53454447, `Ella Bahringer`, `zjacobs@example.com`, 9, 2147483647),
(39, 77761637, `Ms. Verona Schmeler`, `rbednar@example.org`, 3, 0),
(40, 29687886, `Dr. Ezekiel Cremin`, `vincent70@example.com`, 8, 886),
(41, 82375003, `Jayne Barton`, `davis.renee@example.com`, 7, 0),
(42, 18876130, `Devon Kuvalis`, `treutel.marlee@example.net`, 2, 34),
(43, 45889561, `Tre Flatley`, `lazaro.mcglynn@example.org`, 7, 476),
(44, 21054440, `Nella Vandervort`, `kade.hansen@example.net`, 8, 0),
(45, 46798534, `Meta Abernathy`, `koch.therese@example.net`, 8, 2147483647),
(46, 24419949, `Billie Hackett`, `qgorczany@example.com`, 1, 87),
(47, 34201664, `Mr. Ellis Rempel`, `aron.turcotte@example.org`, 1, 91),
(48, 51583194, `Elliot Dietrich`, `rbogisich@example.net`, 3, 841863),
(49, 14199110, `Kenny Roberts`, `dorcas.brown@example.com`, 8, 0);

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
(1, `Sed rerum in tempora tempora optio similique. Fuga maxime et aut sint cumque. Voluptas illo facilis quaerat commodi nihil quia.`, `Officiis natus corporis natus repellat doloribus consequatur. Reiciendis cumque eligendi vero ratione reiciendis. Ut ipsam itaque id architecto. Molestiae non nam aperiam sed reiciendis aut ea atque.`, 3, 1),
(2, `Modi voluptas repellendus neque molestiae laborum sequi. Soluta officia cumque velit. Dolorem nam iure eos.`, `Voluptatem est voluptatem perspiciatis repellendus. Eligendi adipisci sed quasi sunt omnis et eius. Beatae sapiente nam earum.`, 1, 2),
(3, `Autem dolor repellat omnis deserunt. Beatae sit voluptatum blanditiis adipisci. Nemo facere natus earum est nobis. Nostrum deserunt ea ducimus autem delectus earum aliquid qui.`, `Repellat mollitia nemo dolore totam voluptatem. Suscipit et voluptatem et sint est at. Provident et id in. Doloremque eligendi eveniet est iusto voluptas deserunt blanditiis.`, 5, 3),
(4, `Iusto sed et quibusdam dicta et ab id. Eligendi accusamus earum et et in.`, `Ullam ipsam totam tenetur error aut nam. Voluptatem quisquam debitis adipisci sunt expedita. Provident illo cum sed et sed dolores quis. Reiciendis voluptatum beatae eos aliquid.`, 8, 4),
(5, `Voluptate harum labore quod. Soluta excepturi tempore cum provident. Sed sint magni tenetur aut omnis vero est.`, `Dolorem accusamus deserunt ut architecto earum. Mollitia delectus amet et aut aut repellendus sit. Vel voluptas id debitis consequatur quaerat.`, 8, 5),
(6, `Quo odio alias provident voluptatem amet accusantium non. Perferendis amet harum incidunt quia aliquam est occaecati. Aut sunt sit laborum. Beatae accusantium ut atque temporibus. Unde ipsam adipisci tempore.`, `Dicta pariatur nemo maiores explicabo velit. Veniam nihil ipsam qui sunt consequatur quia rerum. Consectetur aperiam suscipit reprehenderit quis.`, 3, 6),
(7, `Illum unde ab et aliquam impedit doloribus qui. Laborum qui fuga ut corrupti. Voluptas eaque accusantium aut totam amet illum laudantium.`, `Sit odio veniam cum nostrum sunt. Occaecati dolore voluptatem aut non. Aut inventore voluptatum in culpa sit consequatur vitae. In et est molestiae eum enim quis.`, 8, 7),
(8, `Omnis eum odio veniam voluptatem non. Fuga minus quisquam quam dolorem nam. Corporis dolores saepe sapiente vitae libero pariatur. Iste molestias soluta doloribus quisquam occaecati.`, `Aperiam veniam laboriosam aut vitae est quibusdam maiores. Dignissimos consequatur eum aut. Perferendis sit eos dolorem autem illum dolore.`, 9, 8);

-- --------------------------------------------------------

--
-- Table structure for table `strength_point`
--

CREATE TABLE `strength_point` (
  `id` int(11) NOT NULL,
  `strength_point_description` text COLLATE utf8_unicode_ci NOT NULL,
  `plan_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `strength_point`
--

INSERT INTO `strength_point` (`id`, `strength_point_description`, `plan_id`) VALUES
(101, `Distinctio iste ut omnis quia debitis. Et assumenda est sed quisquam corrupti facere non qui. Repudiandae qui corrupti non officia ea aut quas.`, 1),
(102, `Qui aliquid dolorum omnis. Hic debitis ipsam neque. Voluptas veritatis veniam est nihil voluptatem ipsa facilis. Rem rerum ducimus quasi dolor quam minima a.`, 2),
(103, `Ut dolorum et eligendi et. Blanditiis dolor minima labore ut dolorem. Aliquid iure officiis deserunt mollitia sunt. Eum assumenda fugit suscipit recusandae quisquam aut eum.`, 3),
(104, `Sunt animi aliquid nesciunt quia. Expedita facere vel vero nihil velit quia eum. Error iusto sint iure blanditiis blanditiis recusandae. Maiores dolor et facilis molestiae magni.`, 4),
(105, `Accusamus nisi iste neque nemo. Quaerat dolorem unde quo temporibus vel ea. Vitae similique eligendi sed ea consequatur.`, 5),
(106, `Officiis aut laborum possimus vel. Labore quo omnis nostrum. Vel dolor id rerum commodi amet voluptas. Dolorem voluptatem corporis amet ullam quis dolorum sint.`, 6),
(107, `Eius consequatur ipsa nobis sit nesciunt. Voluptatem repellendus natus qui. Dolor blanditiis asperiores maxime dolore. Est atque quis aut. Ut eos non magni et facilis.`, 7),
(108, `A ratione tempora ratione repudiandae itaque. Qui soluta esse aut molestiae culpa eos. Voluptatem aut magni voluptas fugiat.`, 8);

-- --------------------------------------------------------

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
-- Dumping data for table `to_do`
--

INSERT INTO `to_do` (`id`, `to_do_details`, `specialist_id`, `caregiver_id`) VALUES
(1, `Quia autem rerum doloremque voluptatem non.`, 1, 1),
(2, `Eum id perferendis quia aperiam consequuntur.`, 2, 2),
(3, `Accusantium est quidem error earum voluptas veritatis beatae.`, 3, 3),
(4, `Hic odit excepturi voluptatem ratione iste et.`, 4, 4),
(5, `Voluptas qui quis dicta sit voluptates quo.`, 5, 5),
(6, `Voluptates aut ea nesciunt tempora sequi odio suscipit.`, 6, 6),
(7, `Dolores suscipit amet nesciunt et recusandae voluptatibus est.`, 7, 7),
(8, `Est consequatur dolorum enim est magnam placeat eligendi recusandae.`, 8, 8);

-- --------------------------------------------------------

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
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `name`, `email`, `password`) VALUES
(1, `Prof. Jayne Gusikowski`, `lane.aufderhar@example.org`, `e734be5d9d159610b9cbc6ae5030436839629a6e`),
(2, `Fernando Lehner III`, `ebernhard@example.org`, `72eb628e68fc009c4098735431a23f079efab4a7`),
(3, `Roscoe Runolfsson`, `vankunding@example.org`, `8e960699185f144b4dc86fce2f3d036a187e6884`),
(4, `Lucas Toy`, `kuvalis.victoria@example.com`, `15729bce73575a55e1f253286a58e33dba5848a5`),
(5, `Prof. Daryl Fadel Sr.`, `swift.conrad@example.com`, `965e5888c1339483a6dd650d5a1928ffad288a22`),
(6, `Trey Cormier`, `legros.judy@example.org`, `219acad53c6b6ae1b0a223f64d311bc7152b9126`),
(7, `Orin Legros`, `wbergstrom@example.com`, `8b3f1c105d6d3a1bf38e9b73bbdf6a4ee55ba221`),
(8, `Braxton Dietrich`, `do\conner@example.net`, `078b1915c5ef28a27418eea35adf07441761b212`),
(9, `Mr. Cary Bayer`, `claire83@example.org`, `6a7e968c610c97e6b699f4250ff0df2ccd33f8ee`),
(10, `Miss Anita Kutch`, `elegros@example.com`, `f077e0085affe8aae1f726ede5af84a0ec44fe2a`),
(11, `Aiyana VonRueden`, `schneider.shanon@example.com`, `4af9759d305b1b62eff67bbe32c33b3988b3a77b`),
(12, `Theresia Bashirian`, `ckub@example.com`, `ab88b52570ee12fbec83b2452cf165fce1855a74`),
(13, `Prof. Norris Deckow III`, `carmela.schowalter@example.net`, `87cdd6e2c06d0779cf383296e4c1bc42209087dd`),
(14, `Rudy Wilkinson`, `hferry@example.org`, `674739134fd9327d2a7d859413cdd32ee9333fd7`),
(15, `Ms. Modesta Stanton`, `ken.kris@example.com`, `42d98513d0d4b1033f5e57babae9142f5bec5b19`),
(16, `Rhea Mills`, `shea19@example.net`, `423cf497ac5d8aa26b5ee769398aa7ed924276f6`),
(17, `Monserrat McCullough`, `napoleon17@example.net`, `710a539d0389d688aa3d6b5cf44e760b0398959b`),
(18, `Ms. Zoie Schmidt`, `uwiza@example.com`, `6a3c34c60e926bb66f2890b75a2dc77b2289dc47`),
(19, `Blake Deckow DVM`, `micah.hagenes@example.org`, `b11c38f347f2be2a60e9001a1bcc195528c1e914`),
(20, `Gisselle Ledner DVM`, `josianne52@example.net`, `ce916a9fa7ab1aaa289cd18f9b34b7dea0eb9daa`),
(21, `Shawn Kessler Sr.`, `xyundt@example.com`, `4d732cc1b440d5f95b7fd98cf89d89fa3541cc33`),
(22, `Dr. Austyn Walker MD`, `go\keefe@example.net`, `d63f73c8f717214553de228997464916de4d7193`),
(23, `Clemmie Cruickshank`, `thettinger@example.net`, `802ba9c1c4b6fa373696ae2505bfebd0a170d68f`),
(24, `Barry King`, `kristy35@example.net`, `87960f9de31790f1dc4424d9086b0da0631f6e13`),
(25, `Lera Daniel`, `vena.huel@example.org`, `eb4f4635306a7bea01ce77a8cc97b35601ab8158`),
(26, `Vincenzo Conroy`, `miller.sherman@example.net`, `0dba5c4507f517bb0e1371863091e4ab21aeceff`),
(27, `Nettie Oberbrunner`, `lowe.jessyca@example.net`, `20be19bb560fe22d3b6cc622987969cfe7648845`),
(28, `Libbie Sipes`, `johnson.deja@example.net`, `7169ac267cfdded89cf75d9dee90ffe713f46f46`),
(29, `Einar Wisoky`, `sunny.bogan@example.org`, `a9bf59b792c314d8d4c4ee5429d0809a54a9d9f0`),
(30, `Madge Tremblay`, `amueller@example.org`, `ceb5c1904859b9ce92ced8db53e7d73a3ec06fdf`),
(31, `Herman Emmerich`, `oren.shanahan@example.org`, `65fef76be69e030e6bdda1b4346fc3c8e915a87e`),
(32, `Austin Tromp`, `odie89@example.com`, `b0dc93839c7fb8c6056a0487b30eaa5951168114`),
(33, `Pinkie Kunze`, `cecelia.kub@example.org`, `0b621be7e13d273a44813e08762c6b7855df0fe1`),
(34, `Felix Heathcote`, `emilie.torp@example.org`, `d5480d02490615eb3c1ca0b232937991cce4278b`),
(35, `Marquise Boyle`, `ywillms@example.net`, `d711bf9dec71dfa133310b4c47d1b2ee1d4b731c`),
(36, `Ena Jacobs`, `windler.adam@example.org`, `c790c77c77b57f091d84119668b0d15f1da3fa59`),
(37, `Martin Spencer PhD`, `rlueilwitz@example.net`, `446d406749eecfa556d873b4decade3da6f01aa1`),
(38, `Prof. Lue Sauer`, `leffler.ericka@example.net`, `41956bb334bd0fbb987110147502b6d29679e9a9`),
(39, `Jay Fisher`, `wromaguera@example.com`, `95f4cc761e4a423f134aea23f7bf71806973e1e3`),
(40, `Isadore Reichert`, `breitenberg.arthur@example.com`, `c0b5b2521bbdebf2c3dd7e615e8f6d6025f67087`),
(41, `Myrtis Halvorson`, `xkerluke@example.com`, `04542630695679b50650433198121cdd88818d08`),
(42, `Raheem Mayer`, `hirthe.jaleel@example.net`, `235ae034410acb67bbc378b30a1dd531cf33fb40`),
(43, `Magnus Bailey`, `aniya36@example.com`, `1246a51a0076f7ea850bed8034918a6b847d934c`),
(44, `Dayna Harris`, `chad05@example.com`, `05e1cfdeb20eabcb097f4f3ea34560124cbdd58c`),
(45, `Mabel Bartell`, `upacocha@example.net`, `e54c8497ee7e66e1f3b90b819e91f470363141d4`),
(46, `Donavon Hand Sr.`, `everardo50@example.net`, `9df20d596d7e8f4f6a3b67a3ebeb67fccfa74e0a`),
(47, `Christopher Hoppe`, `kthompson@example.com`, `62dbb455ae2a56e94cd86463284ba5641b891692`),
(48, `Kenyon Rutherford`, `arvilla16@example.com`, `6001d2438919e0108e8945c544ce0da70675f897`),
(49, `Dr. Martina Lindgren DVM`, `trent.hauck@example.net`, `811be322c1b233b7012836389d33b74ac4373cd4`);

-- --------------------------------------------------------

--
-- Table structure for table `weknees_point`
--

CREATE TABLE `weknees_point` (
  `id` int(11) NOT NULL,
  `weeknees_point_description` text COLLATE utf8_unicode_ci NOT NULL,
  `plan_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `weknees_point`
--

INSERT INTO `weknees_point` (`id`, `weeknees_point_description`, `plan_id`) VALUES
(1, `Neque voluptate architecto autem tempore qui.`, 1),
(2, `Earum aut nesciunt sunt esse ea officiis exercitationem.`, 2),
(3, `Asperiores ex tenetur quia.`, 3),
(4, `Eius voluptatum deserunt aut nulla dolore enim.`, 4),
(5, `Quasi rerum commodi sunt quos.`, 5),
(6, `Dolores eum iste quis at.`, 6),
(7, `Magnam dolor ea placeat amet quidem ut quia.`, 7),
(8, `Unde adipisci itaque rerum id culpa.`, 8);

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
