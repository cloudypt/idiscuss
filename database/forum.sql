-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 27, 2022 at 07:30 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 7.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `forum`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `category_id` int(8) NOT NULL,
  `category_name` varchar(255) NOT NULL,
  `category_description` varchar(255) NOT NULL,
  `created` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`category_id`, `category_name`, `category_description`, `created`) VALUES
(1, 'Python', 'Python is a high-level, interpreted, general-purpose programming language. Its design philosophy emphasizes code readability with the use of significant indentation. Python is dynamically-typed and garbage-collected.', '2022-05-25 08:52:14'),
(2, 'JavaScript', 'JavaScript, often abbreviated JS, is a programming language that is one of the core technologies of the World Wide Web, alongside HTML and CSS. Over 97% of websites use JavaScript on the client side for web page behavior, often incorporating third-party l', '2022-05-25 08:54:22'),
(3, 'C++', 'C++ is a general-purpose programming language created by Danish computer scientist Bjarne Stroustrup as an extension of the C programming language, or \"C with Classes.', '2022-05-27 07:18:17');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `comment_id` int(8) NOT NULL,
  `comment_content` text NOT NULL,
  `thread_id` int(8) NOT NULL,
  `comment_time` datetime NOT NULL,
  `comment_by` int(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`comment_id`, `comment_content`, `thread_id`, `comment_time`, `comment_by`) VALUES
(1, 'Hello\r\nThis is Comment', 1, '2022-05-30 07:37:43', 28),
(22, 'jQuery is a library', 104, '2022-06-19 15:11:34', 44),
(23, 'jQuery is a library not a framework', 104, '2022-06-19 15:12:37', 44),
(24, 'answer bta to bs\r\n', 106, '2022-06-20 10:22:23', 44),
(25, 'answer bta to bs\r\n', 106, '2022-06-20 10:33:34', 44),
(26, '&lt;alert&gt;Hello&lt;/alert&gt;', 106, '2022-06-20 11:18:54', 47);

-- --------------------------------------------------------

--
-- Table structure for table `threads`
--

CREATE TABLE `threads` (
  `thread_id` int(7) NOT NULL,
  `thread_title` varchar(255) NOT NULL,
  `thread_desc` text NOT NULL,
  `thread_cat_id` int(7) NOT NULL,
  `thread_user_id` int(7) NOT NULL,
  `timestamp` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `threads`
--

INSERT INTO `threads` (`thread_id`, `thread_title`, `thread_desc`, `thread_cat_id`, `thread_user_id`, `timestamp`) VALUES
(1, 'Unable to use Python in MAC OS', 'Hello\r\nI have MAC Book and want to learn Python but the problem is, My laptop shows an error when I tried to execute the programs.', 1, 28, '2022-05-27 08:57:41'),
(10, 'demo for javascript', 'description', 2, 38, '2022-05-29 22:42:37'),
(94, 'this is question', 'description', 3, 45, '2022-06-19 10:17:35'),
(103, 'What is jQuery?', 'is jQuery a library or a framework', 0, 44, '2022-06-19 15:07:09'),
(104, 'What is jQuery?', 'is jQuery a library or a framework', 2, 44, '2022-06-19 15:09:49'),
(105, 'testing', 'description', 2, 44, '2022-06-19 17:35:01'),
(106, 'javascript vs typescript ???', 'bs itna h bta do jitna puchha', 2, 44, '2022-06-20 10:21:42'),
(107, 'this is testing &lt;script&gt;', '&lt;script&gt; alert(Hello); &lt;/script&gt;', 1, 47, '2022-06-20 11:25:34');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `srn` int(8) NOT NULL,
  `user_email` varchar(20) NOT NULL,
  `user_password` varchar(20) NOT NULL,
  `timestamp` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`srn`, `user_email`, `user_password`, `timestamp`) VALUES
(28, 'nbarshan2000@gmail.c', '$2y$10$aC95z1qOZ65re', '2022-06-03 07:50:05'),
(29, 'abc@aa.in', '$2y$10$I6nAR8AdCWb.H', '2022-06-03 08:01:41'),
(30, 'rohan@asl.ljk', '$2y$10$cx0HDJPh.0ma3', '2022-06-03 08:07:22'),
(31, 'exp@api.in', '$2y$10$Xp90Fndnxg2k8', '2022-06-03 11:23:10'),
(32, 'abc@gmail.com', '$2y$10$DRi0UCFQdnsyl', '2022-06-03 12:04:55'),
(33, 'am@gmail.com', '$2y$10$Zj6Sliz359/Ub', '2022-06-03 12:32:20'),
(34, 'hello@world.in', '123', '2022-06-03 12:41:36'),
(35, 'good@morning.in', 'jj', '2022-06-04 07:49:09'),
(38, 'neeraj@mail.in', '111', '2022-06-06 12:25:38'),
(40, 'good@night.in', '111', '2022-06-06 22:58:37'),
(41, 'rahul@com.com', '1234', '2022-06-06 23:18:49'),
(42, 'hello@mail.in', '111', '2022-06-11 22:57:18'),
(43, 'demo@abc.in', '111', '2022-06-12 15:16:48'),
(44, 'abc1234@gmail.com', '1234', '2022-06-18 10:53:01'),
(45, 'neeraj@abc.in', '111', '2022-06-19 10:16:28'),
(46, 'JAIRAMCM@GMAIL.COM', 'JAIRAM123', '2022-06-20 10:17:32'),
(47, 'neeraj', '111', '2022-06-20 10:34:11');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`comment_id`);

--
-- Indexes for table `threads`
--
ALTER TABLE `threads`
  ADD PRIMARY KEY (`thread_id`);
ALTER TABLE `threads` ADD FULLTEXT KEY `thread_title` (`thread_title`,`thread_desc`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`srn`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `category_id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `comment_id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `threads`
--
ALTER TABLE `threads`
  MODIFY `thread_id` int(7) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=108;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `srn` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
