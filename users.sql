-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 27, 2024 at 08:00 AM
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
-- Database: `students_info`
--

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(3, 'Anasha', '$2y$12$hBLlPuj1onQGldjJee7hme3uCspxTNxNnOWD3HNzuAnO4eWrIWH4K', NULL, '2024-02-23 02:11:47', '2024-02-23 02:11:47'),
(4, 'rohit', '$2y$12$LvfnJ95Gr3P7lh2GAJMYRerkP2AgJhXnbRmntieM.d.JmLOmue7aW', NULL, '2024-02-26 00:07:39', '2024-02-26 00:07:39'),
(5, 'Rahul', '$2y$12$8.EZ39E/gUSw0OTYbkYDPuHpjB3u6KjP3vT..kAOyHZGxgQGzuOSe', NULL, '2024-02-26 00:08:18', '2024-02-26 00:08:18'),
(6, 'Anuj', '$2y$12$8EYp7gzkMkmYGAPIetYUhOPmCmjDAIMLyRJvsB9WoTdzGuKowiIrG', NULL, '2024-02-26 00:15:46', '2024-02-26 00:15:46'),
(7, 'arpit', '$2y$12$Jkf0BAm27i9IpyMFVIqYfujGR.HQ6v4bqPKWIO3vDkgUp6zBSmgjC', NULL, '2024-02-26 00:17:21', '2024-02-26 00:17:21'),
(8, 'akshat', '$2y$12$Uk740CR1kZGAhdAggvZaaO/01j5xy1i3VapKoRNZzOjRrVDAljmLG', NULL, '2024-02-26 00:28:04', '2024-02-26 00:28:04'),
(9, 'mohan', '$2y$12$lFSzrx..s3ZV2jGBrB2X0u6mlpQEm7qJbiXQNdOU0uDbq.uiKuPSG', NULL, '2024-02-26 00:28:53', '2024-02-26 00:28:53'),
(10, 'goldi', '$2y$12$BWrXRpnvCjfvSK4sU0beHeLCtrXAvQP5GKs7hHFVIt8Sij4.PNrnq', NULL, '2024-02-26 00:30:07', '2024-02-26 00:30:07'),
(11, 'goldi', '$2y$12$EgCWAX/Bq3C1Ev.YdJUBKuo6kuqO76gFlynP7uO5n0L0YiNE3IsIa', NULL, '2024-02-26 00:30:18', '2024-02-26 00:30:18'),
(12, 'tanuj', '$2y$12$ikidJe7X/RvD9rGPwJD87elarGSQNAURPB3HLn/RvAS3/IdfCsPpu', NULL, '2024-02-26 00:35:31', '2024-02-26 00:35:31');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
