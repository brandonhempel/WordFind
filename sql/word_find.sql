-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 18, 2020 at 09:51 AM
-- Server version: 10.4.13-MariaDB
-- PHP Version: 7.2.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `word_find`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `cat_id` int(11) NOT NULL,
  `cat_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`cat_id`, `cat_name`) VALUES
(1, 'Cat1'),
(2, 'Cat2'),
(3, 'Cat3'),
(4, 'Cat4'),
(5, 'Cat5'),
(6, 'Cat6'),
(7, 'Cat7'),
(26, 'Cat8'),
(31, 'Two Words'),
(33, 'Burger King'),
(35, 'Telegu'),
(39, 'Category');

-- --------------------------------------------------------

--
-- Table structure for table `puzzles`
--

CREATE TABLE `puzzles` (
  `puzzle_id` int(11) NOT NULL,
  `cat_id` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_on` date NOT NULL DEFAULT current_timestamp(),
  `language` varchar(255) NOT NULL,
  `word_direction` varchar(255) NOT NULL,
  `height` int(11) NOT NULL DEFAULT 10,
  `width` int(11) NOT NULL DEFAULT 10,
  `share_chars` tinyint(1) NOT NULL DEFAULT 1,
  `filler_char_types` varchar(255) NOT NULL,
  `word_bank` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`word_bank`)),
  `board` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`board`)),
  `solution_directions` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`solution_directions`)),
  `answer_coordinates` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`answer_coordinates`))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `puzzles`
--

INSERT INTO `puzzles` (`puzzle_id`, `cat_id`, `title`, `description`, `user_id`, `created_on`, `language`, `word_direction`, `height`, `width`, `share_chars`, `filler_char_types`, `word_bank`, `board`, `solution_directions`, `answer_coordinates`) VALUES
(137, '1', 'json_encode', 'Testing json_encode and json_decode', 1, '2020-10-28', 'English', 'horizontal', 10, 10, 0, 'Any', '[\"DOG\",\"CAT\",\"FOX\",\"MULE\",\"HORSE\"]', '[[\"E\",\"A\",\"A\",\"G\",\"V\",\"G\",\"M\",\"K\",\"P\",\"P\"],[\"V\",\"R\",\"S\",\"Z\",\"L\",\"N\",\"K\",\"Q\",\"Y\",\"C\"],[\"M\",\"O\",\"E\",\"C\",\"Y\",\"P\",\"Z\",\"K\",\"H\",\"L\"],[\"Y\",\"P\",\"B\",\"D\",\"C\",\"E\",\"S\",\"R\",\"O\",\"H\"],[\"Y\",\"O\",\"I\",\"R\",\"N\",\"Z\",\"B\",\"U\",\"U\",\"O\"],[\"I\",\"D\",\"Y\",\"W\",\"S\",\"C\",\"A\",\"T\",\"F\",\"V\"],[\"D\",\"G\",\"O\",\"D\",\"A\",\"W\",\"T\",\"T\",\"E\",\"M\"],[\"Q\",\"P\",\"A\",\"L\",\"I\",\"P\",\"H\",\"A\",\"C\",\"X\"],[\"B\",\"N\",\"Z\",\"X\",\"O\",\"F\",\"J\",\"Q\",\"D\",\"R\"],[\"Y\",\"M\",\"U\",\"L\",\"E\",\"P\",\"T\",\"J\",\"F\",\"X\"]]', '[\"W\",\"E\",\"W\",\"E\",\"W\"]', '[[[6,3],[6,2],[6,1]],[[5,5],[5,6],[5,7]],[[8,5],[8,4],[8,3]],[[9,1],[9,2],[9,3],[9,4]],[[3,9],[3,8],[3,7],[3,6],[3,5]]]'),
(138, '1', 'Testing', 'This is a test', 1, '2020-10-28', 'English', 'all', 10, 10, 0, 'Any', '[\"DOG\",\"CAT\",\"MOUSE\"]', '[[\"X\",\"V\",\"A\",\"G\",\"Y\",\"W\",\"M\",\"V\",\"F\",\"J\"],[\"A\",\"E\",\"V\",\"K\",\"Q\",\"X\",\"Y\",\"U\",\"H\",\"B\"],[\"N\",\"E\",\"M\",\"W\",\"B\",\"K\",\"P\",\"M\",\"U\",\"G\"],[\"Q\",\"G\",\"Z\",\"L\",\"P\",\"P\",\"R\",\"U\",\"C\",\"Z\"],[\"Z\",\"N\",\"T\",\"P\",\"L\",\"V\",\"U\",\"C\",\"O\",\"U\"],[\"L\",\"G\",\"Z\",\"D\",\"Y\",\"H\",\"N\",\"K\",\"B\",\"Z\"],[\"D\",\"P\",\"X\",\"V\",\"E\",\"S\",\"U\",\"O\",\"M\",\"P\"],[\"E\",\"C\",\"T\",\"Z\",\"T\",\"G\",\"G\",\"M\",\"H\",\"R\"],[\"C\",\"C\",\"F\",\"A\",\"O\",\"Y\",\"V\",\"R\",\"Q\",\"Y\"],[\"O\",\"T\",\"C\",\"D\",\"P\",\"X\",\"D\",\"D\",\"G\",\"R\"]]', '[\"NE\",\"NE\",\"W\"]', '[[[9,3],[8,4],[7,5]],[[9,2],[8,3],[7,4]],[[6,8],[6,7],[6,6],[6,5],[6,4]]]'),
(139, '2', 'Telugu', 'Testing Telugu', 2, '2020-10-28', 'Telugu', 'vertical', 10, 10, 0, 'Any', '[\"\\u0c15\\u0c41\\u0c15\\u0c4d\\u0c15\",\"\\u0c2a\\u0c3f\\u0c32\\u0c4d\\u0c32\\u0c3f\",\"\\u0c28\\u0c15\\u0c4d\\u0c15\"]', '[[\"  \\u0c28\\u0c4d\\u0c2e  \",\"  \\u0c17\\u0c3f  \",\"  \\u0c37\\u0c46  \",\"  \\u0c18\\u0c41  \",\"  \\u0c28\\u0c4d\\u0c2f  \",\"  \\u0c2f\\u0c4d\\u0c19  \",\"  \\u0c28\\u0c48  \",\"  \\u0c15\\u0c4d\\u0c24\\u0c4d\\u0c30  \",\"  \\u0c37\\u0c41  \",\"  \\u0c1b\\u0c3f  \"],[\"  \\u0c1b\\u0c4c  \",\"  \\u0c1f\\u0c4a  \",\"  \\u0c1c\\u0c46  \",\"  \\u0c2d\\u0c4a  \",\"  \\u0c18\\u0c40  \",\"  \\u0c30\\u0c4d\\u0c39\\u0c4d\\u0c2f  \",\"  \\u0c2f\\u0c4d\\u0c32  \",\"  \\u0c23\\u0c02  \",\"  \\u0c2b\\u0c4a  \",\"  \\u0c2c  \"],[\"  \\u0c1b\\u0c4b  \",\"  \\u0c2f\\u0c41  \",\"  \\u0c2e\\u0c4d\\u0c39  \",\"  \\u0c20\\u0c3e  \",\"  \\u0c2a\\u0c4a  \",\"  \\u0c15\\u0c4d\\u0c39  \",\"  \\u0c2a\\u0c4a  \",\"  \\u0c35\\u0c4d\\u0c31  \",\"  \\u0c1b\\u0c02  \",\"  \\u0c24\\u0c3f  \"],[\"  \\u0c15\\u0c4d\\u0c22  \",\"  \\u0c30\\u0c4d\\u0c2e\\u0c4d\\u0c2f  \",\"  \\u0c2f\\u0c4d\\u0c26  \",\"  \\u0c2b\\u0c02  \",\"\\u0c28\",\"\\u0c15\\u0c41\",\"  \\u0c1b\\u0c02  \",\"  \\u0c30\\u0c4d\\u0c16  \",\"  \\u0c2f\\u0c4d\\u0c20  \",\"  \\u0c36\\u0c48  \"],[\"  \\u0c2e\\u0c4d\\u0c21  \",\"  \\u0c18\\u0c3f  \",\"  \\u0c27\\u0c47  \",\"  \\u0c36\\u0c4a  \",\"\\u0c15\\u0c4d\\u0c15\",\"\\u0c15\\u0c4d\\u0c15\",\"  \\u0c32\\u0c4d\\u0c2e  \",\"  \\u0c1c\\u0c4c  \",\"  \\u0c1d\\u0c42  \",\"  \\u0c25\\u0c3f  \"],[\"  \\u0c30\\u0c4d\\u0c2f  \",\"  \\u0c35\\u0c4d\\u0c1f  \",\"  \\u0c27\\u0c48  \",\"  \\u0c1d\\u0c3f  \",\"  \\u0c39\\u0c3f  \",\"  \\u0c20\\u0c46  \",\"  \\u0c38\\u0c4d\\u0c24\\u0c4d\\u0c30\\u0c3f  \",\"  \\u0c1b\\u0c4c  \",\"  \\u0c32\\u0c4d\\u0c38  \",\"  \\u0c1a\\u0c4a  \"],[\"  \\u0c30\\u0c4d\\u0c36\\u0c4d\\u0c35  \",\"  \\u0c28\\u0c46  \",\"  \\u0c2a\\u0c48  \",\"  \\u0c2f\\u0c4d\\u0c1b  \",\"  \\u0c25\\u0c3e  \",\"  \\u0c27\\u0c41  \",\"  \\u0c15\\u0c4d\\u0c15  \",\"  \\u0c1a\\u0c48  \",\"  \\u0c17\\u0c4d\\u0c17  \",\"  \\u0c35\\u0c42  \"],[\"  \\u0c35\\u0c4d\\u0c1d  \",\"  \\u0c2a\\u0c41  \",\"  \\u0c17\\u0c4b  \",\"  \\u0c28\\u0c4d\\u0c28  \",\"  \\u0c35\\u0c4b  \",\"  \\u0c15\\u0c4d\\u0c37  \",\"\\u0c32\\u0c4d\\u0c32\\u0c3f\",\"  \\u0c37\\u0c4d\\u0c1f\\u0c4d\\u0c30  \",\"  \\u0c39\\u0c02  \",\"  \\u0c1f\\u0c4a  \"],[\"  \\u0c15\\u0c4a  \",\"  \\u0c30\\u0c4d\\u0c39  \",\"  \\u0c24\\u0c4d\\u0c1e  \",\"  \\u0c39\\u0c3f  \",\"  \\u0c35\\u0c48  \",\"  \\u0c38\\u0c4a  \",\"\\u0c2a\\u0c3f\",\"  \\u0c25\\u0c40  \",\"  \\u0c28\\u0c4d\\u0c21  \",\"  \\u0c28\\u0c4d\\u0c1c  \"],[\"  \\u0c1f\\u0c02  \",\"  \\u0c28\\u0c4d\\u0c35  \",\"  \\u0c28\\u0c4d\\u0c2d  \",\"  \\u0c2e\\u0c4d\\u0c2b  \",\"  \\u0c32\\u0c4d\\u0c20  \",\"  \\u0c21\\u0c3e  \",\"  \\u0c1d\\u0c3e  \",\"  \\u0c2f\\u0c4d\\u0c19  \",\"  \\u0c23\\u0c4d\\u0c23  \",\"  \\u0c15\\u0c4d\\u0c22  \"]]', '[\"S\",\"N\",\"S\"]', '[[[3,5],[4,5]],[[8,6],[7,6]],[[3,4],[4,4]]]'),
(152, '3', 'Header Redirect', 'Testing header redirect function', 1, '2020-10-28', 'English', 'diagonal', 10, 10, 0, 'Constants', '[\"HEADER\",\"REDIRECT\"]', '[[\"N\",\"F\",\"E\",\"T\",\"J\",\"H\",\"J\",\"Z\",\"V\",\"Q\"],[\"K\",\"J\",\"O\",\"I\",\"U\",\"F\",\"Y\",\"K\",\"Z\",\"V\"],[\"V\",\"Y\",\"Q\",\"X\",\"S\",\"P\",\"D\",\"F\",\"T\",\"D\"],[\"X\",\"J\",\"R\",\"V\",\"Q\",\"N\",\"Q\",\"C\",\"A\",\"L\"],[\"J\",\"X\",\"B\",\"D\",\"Z\",\"Q\",\"E\",\"J\",\"R\",\"Q\"],[\"V\",\"D\",\"J\",\"G\",\"J\",\"R\",\"W\",\"E\",\"P\",\"L\"],[\"R\",\"W\",\"G\",\"O\",\"I\",\"P\",\"D\",\"T\",\"L\",\"S\"],[\"U\",\"O\",\"O\",\"D\",\"G\",\"A\",\"X\",\"W\",\"B\",\"D\"],[\"H\",\"K\",\"E\",\"T\",\"E\",\"U\",\"G\",\"C\",\"E\",\"S\"],[\"W\",\"R\",\"B\",\"H\",\"R\",\"Z\",\"U\",\"F\",\"Y\",\"N\"]]', '[\"NE\",\"NE\"]', '[[[9,3],[8,4],[7,5],[6,6],[5,7],[4,8]],[[9,1],[8,2],[7,3],[6,4],[5,5],[4,6],[3,7],[2,8]]]'),
(155, '5', 'jQuery', 'Testing jQuery controls when generating a puzzle', 1, '2020-10-31', 'English', 'vertical', 10, 10, 0, 'Any', '[\"DOG\",\"CAT\",\"FOX\"]', '[[\"C\",\"M\",\"Q\",\"M\",\"H\",\"R\",\"U\",\"Y\",\"K\",\"R\"],[\"A\",\"P\",\"K\",\"N\",\"E\",\"Z\",\"S\",\"I\",\"U\",\"V\"],[\"T\",\"C\",\"J\",\"P\",\"G\",\"X\",\"J\",\"C\",\"Z\",\"I\"],[\"I\",\"R\",\"C\",\"E\",\"P\",\"O\",\"G\",\"Z\",\"Z\",\"N\"],[\"Y\",\"H\",\"P\",\"R\",\"B\",\"F\",\"H\",\"Z\",\"V\",\"H\"],[\"O\",\"T\",\"U\",\"A\",\"M\",\"P\",\"E\",\"Z\",\"C\",\"A\"],[\"Z\",\"X\",\"V\",\"F\",\"L\",\"V\",\"F\",\"W\",\"E\",\"R\"],[\"I\",\"H\",\"D\",\"A\",\"W\",\"Z\",\"P\",\"Q\",\"G\",\"Y\"],[\"W\",\"P\",\"E\",\"B\",\"E\",\"X\",\"V\",\"H\",\"O\",\"O\"],[\"L\",\"V\",\"Q\",\"K\",\"K\",\"A\",\"J\",\"A\",\"D\",\"J\"]]', '[\"N\",\"S\",\"N\"]', '[[[9,8],[8,8],[7,8]],[[0,0],[1,0],[2,0]],[[4,5],[3,5],[2,5]]]'),
(157, '6', 'Security', 'Things security officers wear', 1, '2020-10-31', 'English', 'vertical', 10, 10, 0, 'Any', '[\"BELT\",\"FLASHLIGHT\",\"TASER\",\"HANDCUFFS\"]', '[[\"I\",\"T\",\"K\",\"F\",\"H\",\"S\",\"E\",\"R\",\"O\",\"Z\"],[\"K\",\"B\",\"W\",\"L\",\"A\",\"R\",\"D\",\"P\",\"T\",\"W\"],[\"L\",\"P\",\"J\",\"A\",\"N\",\"E\",\"J\",\"C\",\"L\",\"R\"],[\"W\",\"Z\",\"N\",\"S\",\"D\",\"S\",\"N\",\"R\",\"E\",\"V\"],[\"U\",\"W\",\"E\",\"H\",\"C\",\"A\",\"Y\",\"M\",\"B\",\"B\"],[\"F\",\"B\",\"N\",\"L\",\"U\",\"T\",\"K\",\"Z\",\"F\",\"J\"],[\"U\",\"L\",\"N\",\"I\",\"F\",\"Z\",\"B\",\"G\",\"G\",\"N\"],[\"H\",\"Z\",\"X\",\"G\",\"F\",\"S\",\"H\",\"B\",\"D\",\"L\"],[\"F\",\"I\",\"S\",\"H\",\"S\",\"K\",\"U\",\"B\",\"R\",\"I\"],[\"L\",\"D\",\"U\",\"T\",\"A\",\"J\",\"P\",\"U\",\"A\",\"Q\"]]', '[\"N\",\"S\",\"N\",\"S\"]', '[[[4,8],[3,8],[2,8],[1,8]],[[0,3],[1,3],[2,3],[3,3],[4,3],[5,3],[6,3],[7,3],[8,3],[9,3]],[[5,5],[4,5],[3,5],[2,5],[1,5]],[[0,4],[1,4],[2,4],[3,4],[4,4],[5,4],[6,4],[7,4],[8,4]]]'),
(161, '6', 'Removed Beginning Coordinates', 'Realized I didn&#39;t need these. They are already there.', 1, '2020-10-31', 'English', 'diagonal', 10, 10, 0, 'Any', '[\"BEGIN\",\"COORD\",\"IS\",\"GONE\"]', '[[\"A\",\"T\",\"Q\",\"N\",\"O\",\"I\",\"C\",\"J\",\"P\",\"H\"],[\"G\",\"C\",\"D\",\"R\",\"A\",\"Z\",\"S\",\"E\",\"U\",\"O\"],[\"I\",\"K\",\"T\",\"K\",\"D\",\"E\",\"E\",\"U\",\"V\",\"A\"],[\"H\",\"J\",\"R\",\"Q\",\"H\",\"G\",\"W\",\"W\",\"W\",\"Q\"],[\"L\",\"W\",\"W\",\"E\",\"O\",\"E\",\"I\",\"B\",\"U\",\"I\"],[\"C\",\"D\",\"Y\",\"N\",\"O\",\"E\",\"E\",\"I\",\"G\",\"O\"],[\"Q\",\"U\",\"R\",\"E\",\"P\",\"G\",\"F\",\"Z\",\"H\",\"W\"],[\"L\",\"N\",\"N\",\"O\",\"I\",\"F\",\"G\",\"K\",\"T\",\"T\"],[\"U\",\"O\",\"K\",\"N\",\"O\",\"D\",\"T\",\"Y\",\"I\",\"E\"],[\"G\",\"W\",\"R\",\"I\",\"I\",\"C\",\"E\",\"H\",\"X\",\"J\"]]', '[\"SW\",\"NW\",\"SE\",\"NE\"]', '[[[4,7],[5,6],[6,5],[7,4],[8,3]],[[9,5],[8,4],[7,3],[6,2],[5,1]],[[0,5],[1,6]],[[9,0],[8,1],[7,2],[6,3]]]'),
(162, '7', 'Diagonal', 'Testing diagonal solutions', 1, '2020-10-31', 'English', 'diagonal', 10, 10, 0, 'Any', '[\"DOG\",\"CAT\",\"FOX\",\"MULE\"]', '[[\"N\",\"E\",\"O\",\"Y\",\"R\",\"N\",\"O\",\"Q\",\"O\",\"V\"],[\"P\",\"V\",\"V\",\"X\",\"A\",\"C\",\"O\",\"G\",\"M\",\"A\"],[\"P\",\"H\",\"Z\",\"Q\",\"A\",\"W\",\"X\",\"M\",\"F\",\"B\"],[\"F\",\"V\",\"V\",\"T\",\"E\",\"D\",\"P\",\"O\",\"M\",\"C\"],[\"H\",\"M\",\"T\",\"J\",\"O\",\"L\",\"N\",\"A\",\"F\",\"G\"],[\"L\",\"G\",\"Y\",\"G\",\"H\",\"V\",\"U\",\"R\",\"V\",\"U\"],[\"F\",\"B\",\"W\",\"G\",\"U\",\"Y\",\"U\",\"M\",\"S\",\"A\"],[\"U\",\"K\",\"K\",\"B\",\"F\",\"V\",\"N\",\"Q\",\"F\",\"H\"],[\"S\",\"E\",\"T\",\"X\",\"F\",\"T\",\"S\",\"V\",\"B\",\"E\"],[\"Y\",\"J\",\"G\",\"Z\",\"D\",\"I\",\"T\",\"M\",\"T\",\"B\"]]', '[\"SW\",\"SW\",\"NW\",\"NW\"]', '[[[3,5],[4,4],[5,3]],[[1,5],[2,4],[3,3]],[[4,8],[3,7],[2,6]],[[6,7],[5,6],[4,5],[3,4]]]'),
(165, '7', 'All', 'Testing all directions', 1, '2020-11-02', 'English', 'all', 10, 10, 0, 'Any', '[\"DOG\",\"CAT\",\"FOX\",\"HERE\",\"TEST\",\"IS\",\"THIS\"]', '[[\"O\",\"Z\",\"S\",\"G\",\"T\",\"P\",\"S\",\"Y\",\"N\",\"T\"],[\"D\",\"O\",\"G\",\"H\",\"V\",\"T\",\"X\",\"R\",\"X\",\"W\"],[\"Y\",\"G\",\"I\",\"B\",\"L\",\"X\",\"S\",\"G\",\"R\",\"L\"],[\"G\",\"S\",\"Z\",\"K\",\"T\",\"O\",\"Q\",\"E\",\"H\",\"M\"],[\"G\",\"W\",\"D\",\"C\",\"I\",\"Z\",\"U\",\"E\",\"T\",\"V\"],[\"A\",\"I\",\"L\",\"C\",\"G\",\"X\",\"R\",\"H\",\"H\",\"A\"],[\"F\",\"U\",\"O\",\"K\",\"S\",\"L\",\"E\",\"K\",\"Q\",\"C\"],[\"U\",\"A\",\"B\",\"R\",\"A\",\"R\",\"C\",\"I\",\"C\",\"A\"],[\"L\",\"I\",\"N\",\"Z\",\"E\",\"M\",\"B\",\"S\",\"O\",\"T\"],[\"V\",\"B\",\"T\",\"Z\",\"L\",\"P\",\"B\",\"X\",\"O\",\"F\"]]', '[\"E\",\"S\",\"W\",\"SW\",\"NW\",\"S\",\"SW\"]', '[[[1,0],[1,1],[1,2]],[[6,9],[7,9],[8,9]],[[9,9],[9,8],[9,7]],[[5,7],[6,6],[7,5],[8,4]],[[4,8],[3,7],[2,6],[1,5]],[[7,7],[8,7]],[[0,4],[1,3],[2,2],[3,1]]]'),
(166, '1', 'test puzzle', 'this is a test', 2, '2020-11-02', 'English', 'all', 10, 10, 0, 'Any', '[\"DOG\",\"CAT\",\"MOUSE\",\"HORSE\"]', '[[\"P\",\"M\",\"B\",\"J\",\"Y\",\"I\",\"E\",\"U\",\"N\",\"J\"],[\"N\",\"C\",\"O\",\"V\",\"C\",\"Y\",\"N\",\"F\",\"F\",\"D\"],[\"S\",\"A\",\"C\",\"U\",\"C\",\"A\",\"Z\",\"O\",\"L\",\"V\"],[\"O\",\"G\",\"C\",\"M\",\"S\",\"A\",\"Y\",\"Y\",\"L\",\"C\"],[\"C\",\"A\",\"Z\",\"G\",\"U\",\"E\",\"T\",\"Y\",\"H\",\"G\"],[\"G\",\"E\",\"T\",\"G\",\"G\",\"L\",\"K\",\"O\",\"Y\",\"X\"],[\"C\",\"E\",\"M\",\"O\",\"H\",\"V\",\"R\",\"U\",\"Q\",\"A\"],[\"W\",\"J\",\"A\",\"Y\",\"B\",\"S\",\"H\",\"G\",\"Z\",\"W\"],[\"H\",\"E\",\"T\",\"O\",\"E\",\"S\",\"C\",\"T\",\"O\",\"N\"],[\"R\",\"M\",\"K\",\"X\",\"I\",\"U\",\"N\",\"X\",\"Q\",\"D\"]]', '[\"NW\",\"SE\",\"SE\",\"SW\"]', '[[[9,9],[8,8],[7,7]],[[2,4],[3,5],[4,6]],[[0,1],[1,2],[2,3],[3,4],[4,5]],[[4,8],[5,7],[6,6],[7,5],[8,4]]]'),
(167, '1', 'save puzzle', 'testing save puzzle', 1, '2020-11-02', 'English', 'all', 10, 10, 0, 'Any', '[\"DOG\",\"CAT\"]', '[[\"D\",\"Q\",\"P\",\"L\",\"J\",\"S\",\"D\",\"B\",\"F\",\"E\"],[\"H\",\"D\",\"M\",\"T\",\"E\",\"E\",\"M\",\"C\",\"B\",\"M\"],[\"T\",\"G\",\"I\",\"Y\",\"H\",\"B\",\"H\",\"Y\",\"Y\",\"E\"],[\"A\",\"I\",\"M\",\"D\",\"V\",\"S\",\"A\",\"P\",\"K\",\"Q\"],[\"C\",\"Z\",\"B\",\"Y\",\"Q\",\"D\",\"P\",\"P\",\"Z\",\"V\"],[\"H\",\"B\",\"Q\",\"A\",\"O\",\"Z\",\"S\",\"S\",\"Z\",\"T\"],[\"C\",\"N\",\"Q\",\"G\",\"Z\",\"K\",\"P\",\"Y\",\"R\",\"I\"],[\"F\",\"R\",\"D\",\"Q\",\"D\",\"H\",\"G\",\"K\",\"J\",\"S\"],[\"W\",\"B\",\"Y\",\"M\",\"O\",\"H\",\"Q\",\"V\",\"L\",\"Q\"],[\"Q\",\"Q\",\"O\",\"Z\",\"G\",\"D\",\"Z\",\"P\",\"G\",\"K\"]]', '[\"SW\",\"N\"]', '[[[4,5],[5,4],[6,3]],[[4,0],[3,0],[2,0]]]'),
(170, '2', 'Generate Board', 'Testing generated_board when word bank is larger than grid', 1, '2020-11-04', 'English', 'all', 10, 10, 0, 'Any', '[\"DOG\",\"CAT\",\"FOX\",\"MULE\",\"HORSE\",\"TURTLE\"]', '[[\"U\",\"K\",\"W\",\"T\",\"A\",\"E\",\"W\",\"H\",\"K\",\"G\"],[\"T\",\"G\",\"N\",\"W\",\"G\",\"Y\",\"E\",\"W\",\"H\",\"I\"],[\"T\",\"H\",\"S\",\"M\",\"T\",\"T\",\"H\",\"Y\",\"E\",\"X\"],[\"M\",\"W\",\"F\",\"A\",\"R\",\"I\",\"B\",\"N\",\"X\",\"T\"],[\"C\",\"S\",\"C\",\"A\",\"V\",\"T\",\"A\",\"V\",\"K\",\"P\"],[\"Y\",\"L\",\"B\",\"O\",\"E\",\"L\",\"U\",\"M\",\"V\",\"L\"],[\"N\",\"J\",\"J\",\"K\",\"X\",\"M\",\"P\",\"I\",\"D\",\"Z\"],[\"H\",\"O\",\"R\",\"S\",\"E\",\"B\",\"M\",\"V\",\"O\",\"E\"],[\"M\",\"P\",\"X\",\"O\",\"F\",\"A\",\"A\",\"Y\",\"G\",\"X\"],[\"B\",\"Q\",\"T\",\"U\",\"R\",\"T\",\"L\",\"E\",\"W\",\"L\"]]', '[\"S\",\"NE\",\"W\",\"W\",\"E\",\"E\"]', '[[[6,8],[7,8],[8,8]],[[4,2],[3,3],[2,4]],[[8,4],[8,3],[8,2]],[[5,7],[5,6],[5,5],[5,4]],[[7,0],[7,1],[7,2],[7,3],[7,4]],[[9,2],[9,3],[9,4],[9,5],[9,6],[9,7]]]'),
(172, '26', 'Circle Answers', 'Testing updated circleAnswers', 1, '2020-11-04', 'English', 'all', 10, 10, 0, 'Any', '[\"DOG\",\"CAT\",\"FOX\",\"MOUSE\",\"MULE\",\"HORSE\",\"FROG\",\"PIG\"]', '[[\"C\",\"W\",\"S\",\"W\",\"H\",\"Q\",\"P\",\"F\",\"A\",\"O\"],[\"M\",\"D\",\"V\",\"S\",\"W\",\"X\",\"G\",\"J\",\"S\",\"U\"],[\"T\",\"M\",\"F\",\"F\",\"W\",\"M\",\"I\",\"B\",\"I\",\"D\"],[\"R\",\"E\",\"M\",\"U\",\"L\",\"E\",\"T\",\"A\",\"C\",\"M\"],[\"H\",\"G\",\"S\",\"F\",\"P\",\"C\",\"I\",\"I\",\"U\",\"S\"],[\"Y\",\"I\",\"O\",\"R\",\"O\",\"U\",\"D\",\"G\",\"H\",\"E\"],[\"D\",\"P\",\"F\",\"D\",\"O\",\"X\",\"Q\",\"Y\",\"N\",\"S\"],[\"F\",\"R\",\"O\",\"G\",\"J\",\"H\",\"V\",\"P\",\"M\",\"U\"],[\"X\",\"D\",\"O\",\"M\",\"U\",\"F\",\"W\",\"H\",\"S\",\"O\"],[\"G\",\"O\",\"S\",\"I\",\"Y\",\"X\",\"R\",\"A\",\"R\",\"M\"]]', '[\"NW\",\"W\",\"SE\",\"N\",\"E\",\"NW\",\"E\",\"N\"]', '[[[6,3],[5,2],[4,1]],[[3,8],[3,7],[3,6]],[[4,3],[5,4],[6,5]],[[9,9],[8,9],[7,9],[6,9],[5,9]],[[3,2],[3,3],[3,4],[3,5]],[[7,5],[6,4],[5,3],[4,2],[3,1]],[[7,0],[7,1],[7,2],[7,3]],[[6,1],[5,1],[4,1]]]'),
(180, '26', 'Helpr', 'Using this puzzle to post a question on stackoverflow because I am stuck', 1, '2020-11-07', 'English', 'horizontal', 5, 5, 0, 'Any', '[\"DOG\",\"CAT\"]', '[[\"M\",\"V\",\"N\",\"T\",\"S\"],[\"E\",\"T\",\"A\",\"C\",\"U\"],[\"H\",\"D\",\"O\",\"G\",\"J\"],[\"D\",\"W\",\"N\",\"B\",\"R\"],[\"H\",\"Z\",\"D\",\"H\",\"J\"]]', '[\"E\",\"W\"]', '[[[2,1],[2,2],[2,3]],[[1,3],[1,2],[1,1]]]'),
(202, '33', 'Places', 'Description', 1, '2020-11-11', 'Telugu', 'all', 12, 12, 0, 'Any', '[\"\\u0c2c\\u0c30\\u0c4d\\u0c17\\u0c30\\u0c4d \\u0c15\\u0c3f\\u0c02\\u0c17\\u0c4d\",\"\\u0c1f\\u0c4b\\u0c1f\\u0c32\\u0c4d \\u0c35\\u0c48\\u0c28\\u0c4d\\u0c38\\u0c4d \\u0c05\\u0c02\\u0c21\\u0c4d \\u0c32\\u0c3f\\u0c15\\u0c4d\\u0c15\\u0c30\\u0c4d\\u0c38\\u0c4d\"]', '[[\"  \\u0c2d\\u0c4a  \",\"  \\u0c21\\u0c48  \",\"\\u0c30\\u0c4d\\u0c38\\u0c4d\",\"\\u0c15\\u0c4d\\u0c15\",\"\\u0c32\\u0c3f\",\"\\u0c21\\u0c4d\",\"\\u0c05\\u0c02\",\"\\u0c28\\u0c4d\\u0c38\\u0c4d\",\"\\u0c35\\u0c48\",\"\\u0c32\\u0c4d\",\"\\u0c1f\",\"\\u0c1f\\u0c4b\"],[\"  \\u0c2f\\u0c4d\\u0c25  \",\"  \\u0c32\\u0c4d\\u0c2e  \",\"  \\u0c33\\u0c4d\\u0c33  \",\"  \\u0c2d\\u0c4b  \",\"  \\u0c21  \",\"  \\u0c15\\u0c4c  \",\"  \\u0c2f\\u0c4d\\u0c27  \",\"  \\u0c24\\u0c02  \",\"  \\u0c23\\u0c4c  \",\"  \\u0c23\\u0c47  \",\"  \\u0c39\\u0c47  \",\"  \\u0c28\\u0c48  \"],[\"  \\u0c20\\u0c41  \",\"  \\u0c36\\u0c4b  \",\"  \\u0c2b\\u0c4a  \",\"  \\u0c28\\u0c4d\\u0c19  \",\"  \\u0c30\\u0c4d\\u0c2e\\u0c4d\\u0c2f  \",\"  \\u0c17\\u0c41  \",\"  \\u0c25  \",\"  \\u0c38\\u0c41  \",\"  \\u0c26\\u0c42  \",\"  \\u0c32\\u0c4d\\u0c21  \",\"  \\u0c35\\u0c4a  \",\"  \\u0c35\\u0c4d\\u0c24  \"],[\"  \\u0c28\\u0c4c  \",\"  \\u0c28\\u0c4d\\u0c21  \",\"  \\u0c2a\\u0c48  \",\"  \\u0c27\\u0c3e  \",\"  \\u0c35\\u0c4d\\u0c38  \",\"  \\u0c32\\u0c3f  \",\"  \\u0c2e\\u0c46  \",\"  \\u0c15\\u0c4d\\u0c21  \",\"  \\u0c35\\u0c48  \",\"  \\u0c21\\u0c4b  \",\"  \\u0c28\\u0c4d\\u0c22  \",\"  \\u0c2e\\u0c4d\\u0c20  \"],[\"  \\u0c35\\u0c4d\\u0c1a  \",\"  \\u0c32\\u0c3e  \",\"  \\u0c2b\\u0c4c  \",\"  \\u0c32\\u0c4d\\u0c2c  \",\"  \\u0c2d\\u0c46  \",\"  \\u0c2d\\u0c46  \",\"  \\u0c30\\u0c4d\\u0c21  \",\"  \\u0c28\\u0c3f  \",\"\\u0c2c\",\"  \\u0c35\\u0c4d\\u0c18  \",\"  \\u0c2d\\u0c4a  \",\"  \\u0c21\\u0c3e  \"],[\"  \\u0c28\\u0c4d\\u0c26  \",\"  \\u0c36\\u0c3e  \",\"  \\u0c24\\u0c4d\\u0c27  \",\"  \\u0c2f\\u0c4d\\u0c33  \",\"  \\u0c28\\u0c4d\\u0c39  \",\"  \\u0c1b\\u0c4b  \",\"  \\u0c15\\u0c41  \",\"\\u0c30\\u0c4d\\u0c17\",\"  \\u0c32\\u0c4d\\u0c18  \",\"  \\u0c32\\u0c4d\\u0c38  \",\"  \\u0c30\\u0c4d\\u0c30  \",\"  \\u0c1a\\u0c46  \"],[\"  \\u0c18\\u0c48  \",\"  \\u0c24\\u0c4d\\u0c22  \",\"  \\u0c39\\u0c48  \",\"  \\u0c2f\\u0c4d\\u0c27  \",\"  \\u0c2f\\u0c42  \",\"  \\u0c2e\\u0c4d\\u0c1f  \",\"\\u0c30\\u0c4d\",\"  \\u0c2b\\u0c46  \",\"  \\u0c2f\\u0c48  \",\"  \\u0c28\\u0c4d\\u0c2e  \",\"  \\u0c30\\u0c4d\\u0c36\\u0c4d\\u0c35  \",\"  \\u0c22\\u0c42  \"],[\"  \\u0c32\\u0c4d\\u0c32  \",\"  \\u0c2c\\u0c4b  \",\"  \\u0c37\\u0c4b  \",\"  \\u0c28\\u0c4d\\u0c26\\u0c4d\\u0c2f  \",\"  \\u0c35\\u0c4a  \",\"\\u0c15\\u0c3f\\u0c02\",\"  \\u0c27\\u0c4a  \",\"  \\u0c30\\u0c48  \",\"  \\u0c15\\u0c4d\\u0c1a  \",\"  \\u0c37\\u0c3f  \",\"  \\u0c35\\u0c4d\\u0c37  \",\"  \\u0c1c\\u0c02  \"],[\"  \\u0c2e\\u0c4d\\u0c39  \",\"  \\u0c2f\\u0c4d\\u0c37  \",\"  \\u0c16\\u0c40  \",\"  \\u0c24\\u0c42  \",\"\\u0c17\\u0c4d\",\"  \\u0c1c\\u0c4d\\u0c1c  \",\"  \\u0c2a\\u0c48  \",\"  \\u0c1a\\u0c4b  \",\"  \\u0c22\\u0c4a  \",\"  \\u0c17  \",\"  \\u0c37\\u0c02  \",\"  \\u0c24\\u0c4d\\u0c38\\u0c4d\\u0c28  \"],[\"  \\u0c36\\u0c3f  \",\"  \\u0c30\\u0c47  \",\"  \\u0c28\\u0c4d\\u0c2c  \",\"  \\u0c35\\u0c4d\\u0c32  \",\"  \\u0c17\\u0c4d\\u0c17  \",\"  \\u0c2f\\u0c4d\\u0c38  \",\"  \\u0c1a  \",\"  \\u0c1c\\u0c4c  \",\"  \\u0c38\\u0c3f  \",\"  \\u0c24\\u0c4d\\u0c2f  \",\"  \\u0c2e\\u0c4d\\u0c32  \",\"  \\u0c24\\u0c4d\\u0c23  \"],[\"  \\u0c37\\u0c46  \",\"  \\u0c23\\u0c41  \",\"  \\u0c16\\u0c47  \",\"  \\u0c32\\u0c4c  \",\"  \\u0c30\\u0c4d\\u0c38  \",\"  \\u0c24\\u0c48  \",\"  \\u0c39\\u0c46  \",\"  \\u0c32\\u0c4d\\u0c2c  \",\"  \\u0c35\\u0c4d\\u0c37  \",\"  \\u0c2f\\u0c4d\\u0c2b  \",\"  \\u0c15\\u0c4d\\u0c26  \",\"  \\u0c39\\u0c48  \"],[\"  \\u0c24\\u0c4d\\u0c1c  \",\"  \\u0c27\\u0c48  \",\"  \\u0c38\\u0c4d\\u0c24\\u0c4d\\u0c30  \",\"  \\u0c2e\\u0c4d\\u0c19  \",\"  \\u0c1b\\u0c46  \",\"  \\u0c2e\\u0c4d\\u0c32  \",\"  \\u0c30\\u0c48  \",\"  \\u0c2f\\u0c4c  \",\"  \\u0c2e  \",\"  \\u0c32\\u0c4d\\u0c1b  \",\"  \\u0c15\\u0c4d\\u0c15  \",\"  \\u0c15\\u0c4d\\u0c23  \"]]', '[\"SW\",\"W\"]', '[[[4,8],[5,7],[6,6],[7,5],[8,4]],[[0,11],[0,10],[0,9],[0,8],[0,7],[0,6],[0,5],[0,4],[0,3],[0,2]]]'),
(207, '35', 'Horizontal', 'Description', 1, '2020-11-13', 'Telugu', 'horizontal', 10, 10, 0, 'Any', '[\"\\u0c15\\u0c41\\u0c15\\u0c4d\\u0c15\",\"\\u0c2a\\u0c3f\\u0c32\\u0c4d\\u0c32\\u0c3f\",\"\\u0c28\\u0c15\\u0c4d\\u0c15\",\"\\u0c1c\\u0c3f\\u0c02\\u0c15\"]', '[[\"  \\u0c20\\u0c4c  \",\"  \\u0c15\\u0c4d\\u0c2f  \",\"  \\u0c1c\\u0c42  \",\"  \\u0c20\\u0c3f  \",\"  \\u0c16  \",\"  \\u0c24\\u0c4d\\u0c22  \",\"  \\u0c20\\u0c4b  \",\"  \\u0c30\\u0c4d\\u0c27  \",\"  \\u0c28\\u0c4d\\u0c2e  \",\"  \\u0c2e\\u0c4d\\u0c26  \"],[\"  \\u0c35\\u0c4d\\u0c1e  \",\"  \\u0c1f\\u0c02  \",\"\\u0c15\\u0c4d\\u0c15\",\"\\u0c15\\u0c41\",\"  \\u0c30\\u0c4d\\u0c22  \",\"  \\u0c27\\u0c48  \",\"  \\u0c35\\u0c4d\\u0c39  \",\"  \\u0c32\\u0c4d\\u0c23  \",\"  \\u0c2e\\u0c4d\\u0c17  \",\"  \\u0c30\\u0c4d\\u0c2b  \"],[\"  \\u0c2c\\u0c41  \",\"  \\u0c2d\\u0c3e  \",\"  \\u0c2a\\u0c48  \",\"  \\u0c35\\u0c4d\\u0c28  \",\"  \\u0c30\\u0c4d\\u0c36\\u0c4d\\u0c35  \",\"  \\u0c2f\\u0c4d\\u0c16  \",\"  \\u0c2e\\u0c4d\\u0c39  \",\"  \\u0c32\\u0c46  \",\"  \\u0c16  \",\"  \\u0c21\\u0c4a  \"],[\"  \\u0c15\\u0c41  \",\"  \\u0c15\\u0c4d\\u0c2a  \",\"  \\u0c30\\u0c4d\\u0c33  \",\"  \\u0c22\\u0c3f  \",\"  \\u0c30\\u0c4d\\u0c1b  \",\"  \\u0c24\\u0c4d\\u0c24  \",\"  \\u0c24\\u0c4d\\u0c2c  \",\"  \\u0c21\\u0c46  \",\"\\u0c15\",\"\\u0c1c\\u0c3f\\u0c02\"],[\"  \\u0c2e\\u0c4d\\u0c18  \",\"  \\u0c32\\u0c4d\\u0c28  \",\"  \\u0c2e\\u0c02  \",\"  \\u0c2f\\u0c4d\\u0c24  \",\"  \\u0c30\\u0c4d\\u0c1c  \",\"  \\u0c27\\u0c4b  \",\"  \\u0c15\\u0c4d\\u0c22  \",\"  \\u0c35\\u0c4d\\u0c2d  \",\"  \\u0c22\\u0c41  \",\"  \\u0c30\\u0c4d\\u0c37\\u0c4d\\u0c2f  \"],[\"  \\u0c30\\u0c4d\\u0c1a  \",\"  \\u0c30\\u0c42  \",\"  \\u0c2a\\u0c40  \",\"  \\u0c20\\u0c47  \",\"  \\u0c28\\u0c4d\\u0c30  \",\"  \\u0c23\\u0c40  \",\"  \\u0c26\\u0c48  \",\"  \\u0c30\\u0c02  \",\"  \\u0c26\\u0c3f  \",\"  \\u0c30\\u0c48  \"],[\"  \\u0c2a\\u0c46  \",\"  \\u0c28\\u0c4d\\u0c35  \",\"  \\u0c37\\u0c42  \",\"  \\u0c30\\u0c4d\\u0c32  \",\"  \\u0c30\\u0c4d\\u0c2b  \",\"  \\u0c2f\\u0c02  \",\"\\u0c28\",\"\\u0c15\\u0c4d\\u0c15\",\"  \\u0c20\\u0c4c  \",\"  \\u0c15\\u0c4d\\u0c1e  \"],[\"  \\u0c2f\\u0c4d\\u0c1b  \",\"  \\u0c23\\u0c42  \",\"\\u0c32\\u0c4d\\u0c32\\u0c3f\",\"\\u0c2a\\u0c3f\",\"  \\u0c35\\u0c4d\\u0c1f  \",\"  \\u0c30\\u0c4c  \",\"  \\u0c28\\u0c4d\\u0c33  \",\"  \\u0c22\\u0c47  \",\"  \\u0c37\\u0c41  \",\"  \\u0c25\\u0c4b  \"],[\"  \\u0c1d\\u0c3e  \",\"  \\u0c37\\u0c4d\\u0c1f\\u0c4d\\u0c30  \",\"  \\u0c17\\u0c46  \",\"  \\u0c30\\u0c4d\\u0c1b  \",\"  \\u0c32\\u0c4d\\u0c18  \",\"  \\u0c38\\u0c4d\\u0c38  \",\"  \\u0c28\\u0c4d\\u0c18  \",\"  \\u0c2e\\u0c4d\\u0c2c  \",\"  \\u0c30\\u0c4d\\u0c39\\u0c4d\\u0c2f  \",\"  \\u0c1f\\u0c4a  \"],[\"  \\u0c2c  \",\"  \\u0c2f\\u0c4d\\u0c2a  \",\"  \\u0c2f\\u0c4d\\u0c2d  \",\"  \\u0c27\\u0c4a  \",\"  \\u0c17\\u0c47  \",\"  \\u0c35\\u0c4d\\u0c30  \",\"  \\u0c35\\u0c46  \",\"  \\u0c2c\\u0c40  \",\"  \\u0c16\\u0c47  \",\"  \\u0c28\\u0c4d\\u0c28  \"]]', '[\"W\",\"W\",\"E\",\"W\"]', '[[[1,3],[1,2]],[[7,3],[7,2]],[[6,6],[6,7]],[[3,9],[3,8]]]'),
(209, '7', 'Vertical', 'Testing Vertical Lines', 1, '2020-11-13', 'English', 'vertical', 12, 12, 0, 'Any', '[\"DOG\",\"CAT\",\"FOX\"]', '[[\"Z\",\"L\",\"B\",\"G\",\"N\",\"N\",\"M\",\"M\",\"I\",\"H\",\"F\",\"D\"],[\"N\",\"L\",\"T\",\"K\",\"C\",\"G\",\"K\",\"V\",\"O\",\"K\",\"C\",\"X\"],[\"A\",\"L\",\"Q\",\"Y\",\"E\",\"A\",\"N\",\"B\",\"Z\",\"L\",\"A\",\"C\"],[\"N\",\"I\",\"P\",\"W\",\"M\",\"J\",\"U\",\"N\",\"O\",\"W\",\"T\",\"K\"],[\"Z\",\"E\",\"A\",\"T\",\"U\",\"D\",\"V\",\"E\",\"S\",\"O\",\"N\",\"U\"],[\"I\",\"S\",\"G\",\"J\",\"G\",\"P\",\"L\",\"A\",\"B\",\"X\",\"K\",\"U\"],[\"T\",\"X\",\"G\",\"L\",\"K\",\"T\",\"Q\",\"U\",\"G\",\"O\",\"Y\",\"M\"],[\"O\",\"Z\",\"U\",\"E\",\"P\",\"R\",\"L\",\"L\",\"V\",\"F\",\"L\",\"N\"],[\"A\",\"S\",\"S\",\"Z\",\"M\",\"S\",\"Z\",\"M\",\"E\",\"O\",\"G\",\"G\"],[\"O\",\"D\",\"Q\",\"N\",\"C\",\"W\",\"M\",\"Z\",\"Z\",\"N\",\"Z\",\"O\"],[\"D\",\"P\",\"V\",\"V\",\"R\",\"R\",\"S\",\"C\",\"D\",\"X\",\"N\",\"D\"],[\"T\",\"X\",\"Y\",\"D\",\"V\",\"T\",\"Z\",\"M\",\"X\",\"D\",\"J\",\"F\"]]', '[\"N\",\"S\",\"N\"]', '[[[10,11],[9,11],[8,11]],[[1,10],[2,10],[3,10]],[[7,9],[6,9],[5,9]]]'),
(210, '35', 'Vertical', 'Testing Vertical Lines', 1, '2020-11-13', 'Telugu', 'vertical', 10, 10, 0, 'Any', '[\"\\u0c15\\u0c41\\u0c15\\u0c4d\\u0c15\",\"\\u0c2a\\u0c3f\\u0c32\\u0c4d\\u0c32\\u0c3f\",\"\\u0c28\\u0c15\\u0c4d\\u0c15\",\"\\u0c1c\\u0c3f\\u0c02\\u0c15\"]', '[[\"  \\u0c15\\u0c4d\\u0c15  \",\"  \\u0c1a\\u0c4d\\u0c1a  \",\"  \\u0c1d\\u0c46  \",\"  \\u0c38\\u0c4d\\u0c24\\u0c4d\\u0c30\\u0c40  \",\"  \\u0c36\\u0c48  \",\"  \\u0c2a\\u0c46  \",\"  \\u0c37\\u0c46  \",\"  \\u0c32\\u0c4d\\u0c30  \",\"  \\u0c1f\\u0c48  \",\"  \\u0c38\\u0c3e  \"],[\"  \\u0c23\\u0c3f  \",\"  \\u0c15\\u0c4d\\u0c25  \",\"  \\u0c28\\u0c4d\\u0c31  \",\"  \\u0c15\\u0c4d\\u0c1c  \",\"  \\u0c1b\\u0c4b  \",\"  \\u0c36\\u0c41  \",\"  \\u0c30\\u0c4d\\u0c2c  \",\"  \\u0c2f\\u0c41  \",\"  \\u0c38\\u0c4d\\u0c24\\u0c4d\\u0c30\\u0c3f  \",\"  \\u0c37\\u0c3e  \"],[\"  \\u0c15\\u0c3f  \",\"  \\u0c24\\u0c4b  \",\"  \\u0c17\\u0c4d\\u0c2d\\u0c4d\\u0c30  \",\"  \\u0c35\\u0c4d\\u0c1c  \",\"  \\u0c38\\u0c41  \",\"\\u0c15\\u0c4d\\u0c15\",\"  \\u0c32\\u0c4d\\u0c2f  \",\"  \\u0c2f\\u0c4d\\u0c24  \",\"  \\u0c15\\u0c4b  \",\"  \\u0c22\\u0c3e  \"],[\"  \\u0c2b\\u0c40  \",\"  \\u0c1a\\u0c3e  \",\"  \\u0c25  \",\"  \\u0c1f  \",\"  \\u0c2f\\u0c4d\\u0c27  \",\"\\u0c15\\u0c41\",\"  \\u0c32\\u0c4d\\u0c20  \",\"  \\u0c15\\u0c41  \",\"  \\u0c24\\u0c4d\\u0c27  \",\"  \\u0c1a\\u0c4d\\u0c1a  \"],[\"  \\u0c28\\u0c4d\\u0c15  \",\"\\u0c1c\\u0c3f\\u0c02\",\"  \\u0c35\\u0c4d\\u0c28  \",\"  \\u0c35\\u0c4d\\u0c35  \",\"  \\u0c2e\\u0c4d\\u0c2a  \",\"  \\u0c37\\u0c4d\\u0c1f\\u0c4d\\u0c30  \",\"  \\u0c38\\u0c4b  \",\"  \\u0c15\\u0c4d\\u0c24\\u0c4d\\u0c30  \",\"  \\u0c39\\u0c47  \",\"  \\u0c2f\\u0c4d\\u0c27  \"],[\"  \\u0c2d\\u0c40  \",\"\\u0c15\",\"  \\u0c15\\u0c4d\\u0c32  \",\"  \\u0c1c  \",\"  \\u0c24\\u0c4b  \",\"  \\u0c24\\u0c4d\\u0c20  \",\"  \\u0c25\\u0c42  \",\"  \\u0c38\\u0c40  \",\"  \\u0c20\\u0c46  \",\"  \\u0c2d\\u0c4b  \"],[\"  \\u0c35\\u0c4d\\u0c33  \",\"  \\u0c15\\u0c42  \",\"  \\u0c27\\u0c4c  \",\"  \\u0c32\\u0c4d\\u0c2c  \",\"  \\u0c17\\u0c4d\\u0c17  \",\"  \\u0c32\\u0c4d\\u0c2c  \",\"  \\u0c24\\u0c4d\\u0c36  \",\"  \\u0c32\\u0c4d\\u0c28  \",\"\\u0c32\\u0c4d\\u0c32\\u0c3f\",\"  \\u0c35\\u0c48  \"],[\"  \\u0c16\\u0c47  \",\"  \\u0c2a\\u0c41  \",\"  \\u0c2c\\u0c46  \",\"\\u0c15\\u0c4d\\u0c15\",\"  \\u0c21\\u0c4c  \",\"  \\u0c37\\u0c42  \",\"  \\u0c30\\u0c4d\\u0c31  \",\"  \\u0c36\\u0c46  \",\"\\u0c2a\\u0c3f\",\"  \\u0c2e\\u0c4d\\u0c27  \"],[\"  \\u0c21\\u0c41  \",\"  \\u0c2e\\u0c4a  \",\"  \\u0c25\\u0c48  \",\"\\u0c28\",\"  \\u0c35\\u0c4d\\u0c25  \",\"  \\u0c18\\u0c02  \",\"  \\u0c21\\u0c3e  \",\"  \\u0c2f\\u0c4d\\u0c16  \",\"  \\u0c23\\u0c41  \",\"  \\u0c24\\u0c4d\\u0c31  \"],[\"  \\u0c2e\\u0c4b  \",\"  \\u0c24\\u0c4d\\u0c2d  \",\"  \\u0c1a\\u0c40  \",\"  \\u0c24\\u0c4d\\u0c1b  \",\"  \\u0c15\\u0c4d\\u0c16  \",\"  \\u0c24\\u0c4d\\u0c1c  \",\"  \\u0c24\\u0c4d\\u0c37  \",\"  \\u0c26\\u0c40  \",\"  \\u0c21  \",\"  \\u0c21\\u0c4b  \"]]', '[\"N\",\"N\",\"N\",\"S\"]', '[[[3,5],[2,5]],[[7,8],[6,8]],[[8,3],[7,3]],[[4,1],[5,1]]]'),
(212, '35', 'Diagonal', 'Testing diagonal lines', 1, '2020-11-13', 'Telugu', 'diagonal', 10, 10, 0, 'Any', '[\"\\u0c15\\u0c41\\u0c15\\u0c4d\\u0c15\",\"\\u0c2a\\u0c3f\\u0c32\\u0c4d\\u0c32\\u0c3f\",\"\\u0c28\\u0c15\\u0c4d\\u0c15\",\"\\u0c1c\\u0c3f\\u0c02\\u0c15\"]', '[[\"  \\u0c35\\u0c4d\\u0c26  \",\"  \\u0c35\\u0c4d\\u0c17  \",\"  \\u0c30\\u0c02  \",\"  \\u0c23\\u0c47  \",\"  \\u0c2f\\u0c4d\\u0c2e  \",\"  \\u0c32\\u0c4d\\u0c38  \",\"  \\u0c1d\\u0c4c  \",\"  \\u0c15\\u0c4d\\u0c37\\u0c4d\\u0c2e\\u0c40  \",\"  \\u0c35\\u0c4d\\u0c36  \",\"  \\u0c1a\\u0c3f  \"],[\"  \\u0c15\\u0c4d\\u0c38  \",\"  \\u0c28\\u0c4d\\u0c2c  \",\"  \\u0c32\\u0c4d\\u0c31  \",\"  \\u0c2b\\u0c3e  \",\"\\u0c15\\u0c41\",\"  \\u0c1d\\u0c47  \",\"  \\u0c15\\u0c4d\\u0c17  \",\"  \\u0c30\\u0c4d\\u0c27  \",\"  \\u0c2f\\u0c4d\\u0c32  \",\"  \\u0c21\\u0c3e  \"],[\"  \\u0c24\\u0c4d\\u0c26  \",\"  \\u0c15\\u0c4d\\u0c2a  \",\"  \\u0c30\\u0c4d\\u0c21  \",\"\\u0c15\\u0c4d\\u0c15\",\"  \\u0c15\\u0c4d\\u0c2f  \",\"  \\u0c15\\u0c4d\\u0c30  \",\"  \\u0c22\\u0c46  \",\"  \\u0c20  \",\"  \\u0c26\\u0c4c  \",\"  \\u0c2c\\u0c4d\\u0c2c  \"],[\"  \\u0c16\\u0c47  \",\"  \\u0c18\\u0c48  \",\"  \\u0c2d  \",\"  \\u0c1b\\u0c3e  \",\"  \\u0c32\\u0c4d\\u0c1f  \",\"\\u0c1c\\u0c3f\\u0c02\",\"  \\u0c28\\u0c4d\\u0c22  \",\"  \\u0c2b\\u0c3f  \",\"  \\u0c16  \",\"  \\u0c1d\\u0c4c  \"],[\"  \\u0c27\\u0c3f  \",\"  \\u0c35\\u0c4d\\u0c1e  \",\"  \\u0c2b  \",\"  \\u0c2e\\u0c4d\\u0c1a  \",\"  \\u0c24\\u0c4d\\u0c24  \",\"\\u0c2a\\u0c3f\",\"\\u0c15\",\"  \\u0c2b\\u0c3e  \",\"\\u0c15\\u0c4d\\u0c15\",\"  \\u0c32\\u0c4d\\u0c2c  \"],[\"  \\u0c20\\u0c48  \",\"  \\u0c27\\u0c42  \",\"  \\u0c24\\u0c4d\\u0c30\\u0c4d\\u0c2f  \",\"  \\u0c2c\\u0c46  \",\"\\u0c32\\u0c4d\\u0c32\\u0c3f\",\"  \\u0c32\\u0c4d\\u0c1c  \",\"  \\u0c36\\u0c48  \",\"  \\u0c15\\u0c4d\\u0c33  \",\"  \\u0c16\\u0c42  \",\"\\u0c28\"],[\"  \\u0c30  \",\"  \\u0c26\\u0c02  \",\"  \\u0c2e\\u0c4d\\u0c2c  \",\"  \\u0c24\\u0c4d\\u0c22  \",\"  \\u0c2f\\u0c4d\\u0c39  \",\"  \\u0c25\\u0c42  \",\"  \\u0c2e\\u0c4d\\u0c1e  \",\"  \\u0c30\\u0c3f  \",\"  \\u0c28\\u0c4d\\u0c2b  \",\"  \\u0c24\\u0c3e  \"],[\"  \\u0c30\\u0c4d\\u0c24  \",\"  \\u0c27\\u0c48  \",\"  \\u0c2d\\u0c40  \",\"  \\u0c26\\u0c47  \",\"  \\u0c28\\u0c4d\\u0c1c  \",\"  \\u0c35\\u0c4d\\u0c1c  \",\"  \\u0c2f\\u0c41  \",\"  \\u0c22\\u0c47  \",\"  \\u0c15\\u0c4d\\u0c15  \",\"  \\u0c38\\u0c40  \"],[\"  \\u0c1b\\u0c02  \",\"  \\u0c35\\u0c4d\\u0c1b  \",\"  \\u0c2b\\u0c48  \",\"  \\u0c15\\u0c4d\\u0c31  \",\"  \\u0c2c  \",\"  \\u0c30\\u0c4d\\u0c15  \",\"  \\u0c2b\\u0c48  \",\"  \\u0c23\\u0c46  \",\"  \\u0c2e\\u0c3f  \",\"  \\u0c36\\u0c4b  \"],[\"  \\u0c24\\u0c4c  \",\"  \\u0c25\\u0c46  \",\"  \\u0c39\\u0c4b  \",\"  \\u0c30\\u0c4d\\u0c15  \",\"  \\u0c2e\\u0c4d\\u0c2e  \",\"  \\u0c2f\\u0c3f  \",\"  \\u0c20\\u0c48  \",\"  \\u0c15\\u0c4d\\u0c1b  \",\"  \\u0c30\\u0c4d\\u0c2a  \",\"  \\u0c30\\u0c4d\\u0c30  \"]]', '[\"SW\",\"SW\",\"NW\",\"SE\"]', '[[[1,4],[2,3]],[[4,5],[5,4]],[[5,9],[4,8]],[[3,5],[4,6]]]'),
(269, '4', 'User ID', 'Description', 80, '2020-11-15', 'English', 'all', 12, 12, 0, 'Any', '[\"TESTING\",\"USER\",\"ID\",\"ON\",\"PUZZLE\",\"CREATION\"]', '[[\"Z\",\"Z\",\"T\",\"E\",\"S\",\"W\",\"M\",\"D\",\"R\",\"F\",\"B\",\"J\"],[\"J\",\"I\",\"B\",\"P\",\"C\",\"K\",\"D\",\"K\",\"G\",\"N\",\"O\",\"P\"],[\"X\",\"C\",\"B\",\"F\",\"R\",\"D\",\"W\",\"W\",\"N\",\"W\",\"O\",\"G\"],[\"H\",\"M\",\"E\",\"G\",\"E\",\"H\",\"Y\",\"S\",\"Z\",\"N\",\"W\",\"Y\"],[\"R\",\"M\",\"H\",\"U\",\"A\",\"B\",\"E\",\"J\",\"F\",\"L\",\"V\",\"R\"],[\"X\",\"K\",\"A\",\"R\",\"T\",\"R\",\"Q\",\"L\",\"G\",\"L\",\"O\",\"Y\"],[\"V\",\"Y\",\"Y\",\"R\",\"I\",\"E\",\"A\",\"N\",\"Z\",\"D\",\"K\",\"V\"],[\"T\",\"Q\",\"E\",\"Z\",\"O\",\"H\",\"I\",\"Y\",\"I\",\"Z\",\"K\",\"K\"],[\"E\",\"S\",\"G\",\"K\",\"N\",\"T\",\"A\",\"A\",\"T\",\"N\",\"U\",\"C\"],[\"U\",\"N\",\"O\",\"Z\",\"S\",\"V\",\"A\",\"R\",\"U\",\"D\",\"Q\",\"P\"],[\"W\",\"M\",\"K\",\"E\",\"G\",\"X\",\"G\",\"Y\",\"J\",\"H\",\"Q\",\"E\"],[\"Z\",\"R\",\"T\",\"T\",\"M\",\"Y\",\"N\",\"K\",\"X\",\"X\",\"Q\",\"Y\"]]', '[\"NE\",\"NE\",\"NE\",\"NW\",\"NW\",\"S\"]', '[[[11,2],[10,3],[9,4],[8,5],[7,6],[6,7],[5,8]],[[9,0],[8,1],[7,2],[6,3]],[[7,8],[6,9]],[[2,10],[1,9]],[[9,11],[8,10],[7,9],[6,8],[5,7],[4,6]],[[1,4],[2,4],[3,4],[4,4],[5,4],[6,4],[7,4],[8,4]]]');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `email` varchar(75) NOT NULL,
  `password` varchar(200) NOT NULL,
  `active` varchar(10) NOT NULL DEFAULT 'yes',
  `role` varchar(20) NOT NULL DEFAULT 'admin',
  `modified_time` date NOT NULL DEFAULT current_timestamp(),
  `created_time` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `first_name`, `last_name`, `email`, `password`, `active`, `role`, `modified_time`, `created_time`) VALUES
(1, 'Brandon', 'Hempel', 'brandonhempel@gmail.com', '$2y$10$Nt682vGqcaszQQTKiN7PjuvuUfcuOf6/UvnSnF7YBdHgw/l.Dv3Ny', 'yes', 'admin', '2020-11-14', '2020-11-14'),
(2, 'John', 'Calvin', 'john@gmail.com', '$2y$10$ojig5xeXvCi8qcQ9f8ygEehDdd8GrMplfympvBSfsm8J3BOwaydSe', 'yes', 'admin', '2020-11-14', '2020-11-14'),
(81, 'Admin', 'User', 'admin', '$2y$10$V3lGmQO8vBpUJadk/r3CbumwsUQDETE/QB/aXSQJry4HOo3Vz/bkm', 'yes', 'admin', '2020-11-15', '2020-11-15');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`cat_id`);

--
-- Indexes for table `puzzles`
--
ALTER TABLE `puzzles`
  ADD PRIMARY KEY (`puzzle_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD UNIQUE KEY `id` (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `cat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `puzzles`
--
ALTER TABLE `puzzles`
  MODIFY `puzzle_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=273;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=82;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
