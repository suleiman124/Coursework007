-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Mar 21, 2021 at 02:49 PM
-- Server version: 5.7.21
-- PHP Version: 7.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `projects`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
CREATE TABLE IF NOT EXISTS `admin` (
  `id` int(3) NOT NULL AUTO_INCREMENT,
  `email` varchar(50) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` text NOT NULL,
  `coursework` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `email`, `username`, `password`, `coursework`) VALUES
(5, 'sakinbarnessamuel@gmail.com', 'Samuel', '$2y$10$qFsTIgwnWv2laGtK9QBo/.rUMZvjAdghAxGJGpkW0Jc06pKVOSyq.', 'Database'),
(6, 'suleman@gmail.com', 'Suleman', '$2y$10$jaWSUTgfkMfZ3QACJKqkMe9sQZznk6Ll6TGwWemZv4zE158OHnZuK', 'Progamming');

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

DROP TABLE IF EXISTS `feedback`;
CREATE TABLE IF NOT EXISTS `feedback` (
  `id` int(3) NOT NULL AUTO_INCREMENT,
  `title` varchar(20) NOT NULL,
  `content` text NOT NULL,
  `matricnumber` int(10) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`id`, `title`, `content`, `matricnumber`, `created_at`) VALUES
(11, 'Yello', 'sjd', 4, '2021-03-19 15:22:01'),
(12, 'Hello Lanre', 'hudf', 4, '2021-03-19 15:25:48');

-- --------------------------------------------------------

--
-- Table structure for table `file_tblfile`
--

DROP TABLE IF EXISTS `file_tblfile`;
CREATE TABLE IF NOT EXISTS `file_tblfile` (
  `id` int(3) NOT NULL AUTO_INCREMENT,
  `filelocation` text NOT NULL,
  `feedback_id` int(3) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `file_tblfile`
--

INSERT INTO `file_tblfile` (`id`, `filelocation`, `feedback_id`) VALUES
(12, 'uploads/21284-01-Everyday-ft.-Sound-Sultan-Bez.mp3', 11),
(13, 'uploads/91841-index.html', 12);

-- --------------------------------------------------------

--
-- Table structure for table `groups`
--

DROP TABLE IF EXISTS `groups`;
CREATE TABLE IF NOT EXISTS `groups` (
  `id` int(3) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `admin_id` int(3) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `groups`
--

INSERT INTO `groups` (`id`, `name`, `admin_id`) VALUES
(1, 'Destiny', 5),
(2, 'Dynamite', 5),
(5, 'Dansa', 5);

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

DROP TABLE IF EXISTS `students`;
CREATE TABLE IF NOT EXISTS `students` (
  `matricnumber` int(10) NOT NULL AUTO_INCREMENT,
  `firstname` varchar(20) NOT NULL,
  `lastname` varchar(20) NOT NULL,
  `email` varchar(40) NOT NULL,
  `group_id` int(3) NOT NULL DEFAULT '0',
  `admin_id` int(3) NOT NULL,
  PRIMARY KEY (`matricnumber`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`matricnumber`, `firstname`, `lastname`, `email`, `group_id`, `admin_id`) VALUES
(1, 'Samson', 'Alade', 'danileitoto@gmail.com', 1, 5),
(3, 'Skala', 'Henry', 'Skalahenryeal@yahoo.com', 2, 5),
(4, 'Darious', 'Various', 'davarious@garious.com', 2, 5),
(9, 'Daniel', 'Lito', 'danileitoto@gmail.com', 1, 5),
(11, 'Cindy', 'Rella', 'cinderealla@hotmail.com', 2, 5);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
