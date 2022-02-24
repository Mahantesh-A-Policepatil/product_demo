-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Apr 17, 2020 at 05:32 PM
-- Server version: 5.7.24
-- PHP Version: 7.2.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `product_demo`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `selected_date` datetime NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `selected_by` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `selected_date`, `category_id`, `product_id`, `selected_by`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, '2020-04-16 15:00:44', 4, 2, 2, '2020-04-16 03:07:40', '2020-04-16 09:30:44', NULL),
(2, '2020-04-16 10:02:51', 4, 1, 1, '2020-04-16 03:39:45', '2020-04-16 04:32:51', NULL),
(3, '2020-04-16 09:58:47', 4, 1, 1, '2020-04-16 04:28:47', '2020-04-16 04:28:47', NULL),
(4, '2020-04-17 05:08:12', 3, 6, 1, '2020-04-16 23:38:12', '2020-04-16 23:38:12', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `descryption` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `descryption`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Games', 'Games', '2020-04-15 09:28:13', '2020-04-15 09:28:13', NULL),
(2, 'Movies', 'Movies', '2020-04-15 09:28:21', '2020-04-15 09:28:21', NULL),
(3, 'Electronics', 'Electronics', '2020-04-15 09:28:31', '2020-04-15 09:28:31', NULL),
(4, 'Furnitures', 'Furnitures', '2020-04-15 09:30:46', '2020-04-16 23:36:05', '2020-04-16 23:36:05');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--


-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_date` datetime NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `ordered_by` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `order_date`, `category_id`, `product_id`, `ordered_by`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, '2020-04-16 10:00:31', 4, 2, 1, '2020-04-16 04:30:31', '2020-04-16 04:34:51', '2020-04-16 04:34:51'),
(2, '2020-04-16 15:00:59', 4, 2, 2, '2020-04-16 04:32:44', '2020-04-16 09:30:59', NULL),
(3, '2020-04-16 10:04:48', 4, 2, 1, '2020-04-16 04:34:48', '2020-04-16 04:35:23', '2020-04-16 04:35:23'),
(4, '2020-04-16 15:01:13', 4, 1, 2, '2020-04-16 09:31:13', '2020-04-16 09:31:17', '2020-04-16 09:31:17'),
(5, '2020-04-17 05:10:34', 3, 6, 1, '2020-04-16 23:40:34', '2020-04-16 23:40:34', NULL),
(6, '2020-04-17 12:04:17', 4, 2, 1, '2020-04-17 06:34:17', '2020-04-17 06:34:17', NULL),
(7, '2020-04-17 12:04:17', 4, 2, 1, '2020-04-17 06:34:17', '2020-04-17 06:34:17', NULL),
(8, '2020-04-17 12:04:17', 4, 2, 1, '2020-04-17 06:34:17', '2020-04-17 06:34:17', NULL),
(9, '2020-04-17 12:04:17', 4, 2, 1, '2020-04-17 06:34:17', '2020-04-17 06:34:17', NULL),
(10, '2020-04-17 12:04:17', 4, 2, 1, '2020-04-17 06:34:17', '2020-04-17 06:34:17', NULL),
(11, '2020-04-17 12:04:17', 4, 2, 1, '2020-04-17 06:34:17', '2020-04-17 06:34:17', NULL),
(12, '2020-04-17 12:04:17', 4, 2, 1, '2020-04-17 06:34:17', '2020-04-17 06:34:17', NULL),
(13, '2020-04-17 12:04:17', 4, 2, 1, '2020-04-17 06:34:17', '2020-04-17 06:34:17', NULL),
(14, '2020-04-17 12:04:17', 4, 2, 1, '2020-04-17 06:34:17', '2020-04-17 06:34:17', NULL),
(15, '2020-04-17 12:04:17', 4, 2, 1, '2020-04-17 06:34:17', '2020-04-17 06:34:17', NULL),
(16, '2020-04-17 12:04:17', 4, 2, 1, '2020-04-17 06:34:17', '2020-04-17 06:34:17', NULL),
(17, '2020-04-17 12:04:17', 4, 2, 1, '2020-04-17 06:34:17', '2020-04-17 06:34:17', NULL),
(18, '2020-04-17 12:04:17', 4, 2, 1, '2020-04-17 06:34:17', '2020-04-17 06:34:17', NULL),
(19, '2020-04-17 12:04:17', 4, 2, 1, '2020-04-17 06:34:17', '2020-04-17 06:34:17', NULL),
(20, '2020-04-17 12:04:17', 4, 2, 1, '2020-04-17 06:34:17', '2020-04-17 06:34:17', NULL),
(21, '2020-04-17 12:04:17', 4, 2, 1, '2020-04-17 06:34:17', '2020-04-17 06:34:18', NULL),
(22, '2020-04-17 12:04:17', 4, 2, 1, '2020-04-17 06:34:17', '2020-04-17 06:34:18', NULL),
(23, '2020-04-17 12:04:17', 4, 2, 1, '2020-04-17 06:34:17', '2020-04-17 06:34:18', NULL),
(24, '2020-04-17 12:04:17', 4, 2, 1, '2020-04-17 06:34:17', '2020-04-17 06:34:18', NULL),
(25, '2020-04-17 12:04:17', 4, 2, 1, '2020-04-17 06:34:17', '2020-04-17 06:34:18', NULL),
(26, '2020-04-17 12:04:17', 4, 2, 1, '2020-04-17 06:34:17', '2020-04-17 06:34:18', NULL),
(27, '2020-04-17 12:04:17', 4, 2, 1, '2020-04-17 06:34:17', '2020-04-17 06:34:18', NULL),
(28, '2020-04-17 12:04:17', 4, 2, 1, '2020-04-17 06:34:17', '2020-04-17 06:34:18', NULL),
(29, '2020-04-17 12:04:17', 4, 2, 1, '2020-04-17 06:34:17', '2020-04-17 06:34:18', NULL),
(30, '2020-04-17 12:04:17', 4, 2, 1, '2020-04-17 06:34:17', '2020-04-17 06:34:18', NULL),
(31, '2020-04-17 12:04:17', 4, 2, 1, '2020-04-17 06:34:17', '2020-04-17 06:34:18', NULL),
(32, '2020-04-17 12:04:17', 4, 2, 1, '2020-04-17 06:34:17', '2020-04-17 06:34:18', NULL),
(33, '2020-04-17 12:04:17', 4, 2, 1, '2020-04-17 06:34:17', '2020-04-17 06:34:18', NULL),
(34, '2020-04-17 12:04:17', 4, 2, 1, '2020-04-17 06:34:17', '2020-04-17 06:34:18', NULL),
(35, '2020-04-17 12:04:17', 4, 2, 1, '2020-04-17 06:34:17', '2020-04-17 06:34:18', NULL),
(36, '2020-04-17 12:04:17', 4, 2, 1, '2020-04-17 06:34:17', '2020-04-17 06:34:18', NULL),
(37, '2020-04-17 12:04:17', 4, 2, 1, '2020-04-17 06:34:17', '2020-04-17 06:34:18', NULL),
(38, '2020-04-17 12:04:17', 4, 2, 1, '2020-04-17 06:34:17', '2020-04-17 06:34:18', NULL),
(39, '2020-04-17 12:04:17', 4, 2, 1, '2020-04-17 06:34:17', '2020-04-17 06:34:18', NULL),
(40, '2020-04-17 12:04:17', 4, 2, 1, '2020-04-17 06:34:17', '2020-04-17 06:34:18', NULL),
(41, '2020-04-17 12:04:17', 4, 2, 1, '2020-04-17 06:34:17', '2020-04-17 06:34:18', NULL),
(42, '2020-04-17 12:04:17', 4, 2, 1, '2020-04-17 06:34:17', '2020-04-17 06:34:18', NULL),
(43, '2020-04-17 12:04:17', 4, 2, 1, '2020-04-17 06:34:17', '2020-04-17 06:34:18', NULL),
(44, '2020-04-17 12:04:17', 4, 2, 1, '2020-04-17 06:34:17', '2020-04-17 06:34:18', NULL),
(45, '2020-04-17 12:04:17', 4, 2, 1, '2020-04-17 06:34:17', '2020-04-17 06:34:18', NULL),
(46, '2020-04-17 12:04:17', 4, 2, 1, '2020-04-17 06:34:17', '2020-04-17 06:34:18', NULL),
(47, '2020-04-17 12:04:17', 4, 2, 1, '2020-04-17 06:34:17', '2020-04-17 06:34:18', NULL),
(48, '2020-04-17 12:04:17', 4, 2, 1, '2020-04-17 06:34:17', '2020-04-17 06:34:18', NULL),
(49, '2020-04-17 12:04:17', 4, 2, 1, '2020-04-17 06:34:17', '2020-04-17 06:34:18', NULL),
(50, '2020-04-17 12:04:17', 4, 2, 1, '2020-04-17 06:34:17', '2020-04-17 06:34:18', NULL),
(51, '2020-04-17 12:04:17', 4, 2, 1, '2020-04-17 06:34:17', '2020-04-17 06:34:18', NULL),
(52, '2020-04-17 12:04:17', 4, 2, 1, '2020-04-17 06:34:17', '2020-04-17 06:34:18', NULL),
(53, '2020-04-17 12:04:17', 4, 2, 1, '2020-04-17 06:34:17', '2020-04-17 06:34:18', NULL),
(54, '2020-04-17 12:04:17', 4, 2, 1, '2020-04-17 06:34:17', '2020-04-17 06:34:18', NULL),
(55, '2020-04-17 12:04:17', 4, 2, 1, '2020-04-17 06:34:17', '2020-04-17 06:34:18', NULL),
(56, '2020-04-17 12:04:17', 4, 2, 1, '2020-04-17 06:34:17', '2020-04-17 06:34:19', NULL),
(57, '2020-04-17 12:04:17', 4, 2, 1, '2020-04-17 06:34:17', '2020-04-17 06:34:19', NULL),
(58, '2020-04-17 12:04:17', 4, 2, 1, '2020-04-17 06:34:17', '2020-04-17 06:34:19', NULL),
(59, '2020-04-17 12:04:17', 4, 2, 1, '2020-04-17 06:34:17', '2020-04-17 06:34:19', NULL),
(60, '2020-04-17 12:04:17', 4, 2, 1, '2020-04-17 06:34:17', '2020-04-17 06:34:19', NULL),
(61, '2020-04-17 12:04:17', 4, 2, 1, '2020-04-17 06:34:17', '2020-04-17 06:34:19', NULL),
(62, '2020-04-17 12:04:17', 4, 2, 1, '2020-04-17 06:34:17', '2020-04-17 06:34:19', NULL),
(63, '2020-04-17 12:04:17', 4, 2, 1, '2020-04-17 06:34:17', '2020-04-17 06:34:19', NULL),
(64, '2020-04-17 12:04:17', 4, 2, 1, '2020-04-17 06:34:17', '2020-04-17 06:34:19', NULL),
(65, '2020-04-17 12:04:17', 4, 2, 1, '2020-04-17 06:34:17', '2020-04-17 06:34:19', NULL),
(66, '2020-04-17 12:04:17', 4, 2, 1, '2020-04-17 06:34:17', '2020-04-17 06:34:19', NULL),
(67, '2020-04-17 12:04:17', 4, 2, 1, '2020-04-17 06:34:17', '2020-04-17 06:34:19', NULL),
(68, '2020-04-17 12:04:17', 4, 2, 1, '2020-04-17 06:34:17', '2020-04-17 06:34:19', NULL),
(69, '2020-04-17 12:04:17', 4, 2, 1, '2020-04-17 06:34:17', '2020-04-17 06:34:19', NULL),
(70, '2020-04-17 12:04:17', 4, 2, 1, '2020-04-17 06:34:17', '2020-04-17 06:34:19', NULL),
(71, '2020-04-17 12:04:17', 4, 2, 1, '2020-04-17 06:34:17', '2020-04-17 06:34:19', NULL),
(72, '2020-04-17 12:04:17', 4, 2, 1, '2020-04-17 06:34:17', '2020-04-17 06:34:19', NULL),
(73, '2020-04-17 12:04:17', 4, 2, 1, '2020-04-17 06:34:17', '2020-04-17 06:34:19', NULL),
(74, '2020-04-17 12:04:17', 4, 2, 1, '2020-04-17 06:34:17', '2020-04-17 06:34:19', NULL),
(75, '2020-04-17 12:04:17', 4, 2, 1, '2020-04-17 06:34:17', '2020-04-17 06:34:19', NULL),
(76, '2020-04-17 12:04:17', 4, 2, 1, '2020-04-17 06:34:17', '2020-04-17 06:34:19', NULL),
(77, '2020-04-17 12:04:17', 4, 2, 1, '2020-04-17 06:34:17', '2020-04-17 06:34:19', NULL),
(78, '2020-04-17 12:04:17', 4, 2, 1, '2020-04-17 06:34:17', '2020-04-17 06:34:19', NULL),
(79, '2020-04-17 12:04:17', 4, 2, 1, '2020-04-17 06:34:17', '2020-04-17 06:34:19', NULL),
(80, '2020-04-17 12:04:17', 4, 2, 1, '2020-04-17 06:34:17', '2020-04-17 06:34:19', NULL),
(81, '2020-04-17 12:04:17', 4, 3, 1, '2020-04-17 06:34:17', '2020-04-17 06:34:19', NULL),
(82, '2020-04-17 12:04:17', 4, 3, 1, '2020-04-17 06:34:17', '2020-04-17 06:34:19', NULL),
(83, '2020-04-17 12:04:17', 4, 3, 1, '2020-04-17 06:34:17', '2020-04-17 06:34:19', NULL),
(84, '2020-04-17 12:04:17', 4, 3, 1, '2020-04-17 06:34:17', '2020-04-17 06:34:19', NULL),
(85, '2020-04-17 12:04:17', 4, 3, 1, '2020-04-17 06:34:17', '2020-04-17 06:34:19', NULL),
(86, '2020-04-17 12:04:17', 4, 3, 1, '2020-04-17 06:34:17', '2020-04-17 06:34:19', NULL),
(87, '2020-04-17 12:04:17', 4, 3, 1, '2020-04-17 06:34:17', '2020-04-17 06:34:19', NULL),
(88, '2020-04-17 12:04:17', 4, 3, 1, '2020-04-17 06:34:17', '2020-04-17 06:34:19', NULL),
(89, '2020-04-17 12:04:17', 4, 3, 1, '2020-04-17 06:34:17', '2020-04-17 06:34:20', NULL),
(90, '2020-04-17 12:04:17', 4, 3, 1, '2020-04-17 06:34:17', '2020-04-17 06:34:20', NULL),
(91, '2020-04-17 12:04:17', 4, 3, 1, '2020-04-17 06:34:17', '2020-04-17 06:34:20', NULL),
(92, '2020-04-17 12:04:17', 4, 3, 1, '2020-04-17 06:34:17', '2020-04-17 06:34:20', NULL),
(93, '2020-04-17 12:04:17', 4, 3, 1, '2020-04-17 06:34:17', '2020-04-17 06:34:20', NULL),
(94, '2020-04-17 12:04:17', 4, 3, 1, '2020-04-17 06:34:17', '2020-04-17 06:34:20', NULL),
(95, '2020-04-17 12:04:17', 4, 3, 1, '2020-04-17 06:34:17', '2020-04-17 06:34:20', NULL),
(96, '2020-04-17 12:04:17', 4, 3, 1, '2020-04-17 06:34:17', '2020-04-17 06:34:20', NULL),
(97, '2020-04-17 12:04:17', 4, 3, 1, '2020-04-17 06:34:17', '2020-04-17 06:34:20', NULL),
(98, '2020-04-17 12:04:17', 4, 3, 1, '2020-04-17 06:34:17', '2020-04-17 06:34:20', NULL),
(99, '2020-04-17 12:04:17', 4, 3, 1, '2020-04-17 06:34:17', '2020-04-17 06:34:20', NULL),
(100, '2020-04-17 12:04:17', 4, 3, 1, '2020-04-17 06:34:17', '2020-04-17 06:34:20', NULL),
(101, '2020-04-17 12:04:17', 4, 3, 2, '2020-04-17 06:34:17', '2020-04-17 06:34:20', NULL),
(102, '2020-04-17 12:04:17', 4, 3, 2, '2020-04-17 06:34:17', '2020-04-17 06:34:20', NULL),
(103, '2020-04-17 12:04:17', 4, 3, 2, '2020-04-17 06:34:17', '2020-04-17 06:34:20', NULL),
(104, '2020-04-17 12:04:17', 4, 3, 2, '2020-04-17 06:34:17', '2020-04-17 06:34:20', NULL),
(105, '2020-04-17 12:04:17', 4, 3, 2, '2020-04-17 06:34:17', '2020-04-17 06:34:20', NULL),
(106, '2020-04-17 12:04:17', 4, 3, 2, '2020-04-17 06:34:17', '2020-04-17 06:34:21', NULL),
(107, '2020-04-17 12:04:17', 4, 3, 2, '2020-04-17 06:34:17', '2020-04-17 06:34:21', NULL),
(108, '2020-04-17 12:04:17', 4, 3, 2, '2020-04-17 06:34:17', '2020-04-17 06:34:21', NULL),
(109, '2020-04-17 12:04:17', 4, 3, 2, '2020-04-17 06:34:17', '2020-04-17 06:34:21', NULL),
(110, '2020-04-17 12:04:17', 4, 3, 2, '2020-04-17 06:34:17', '2020-04-17 06:34:21', NULL),
(111, '2020-04-17 12:04:17', 4, 3, 2, '2020-04-17 06:34:17', '2020-04-17 06:34:21', NULL),
(112, '2020-04-17 12:04:17', 4, 3, 2, '2020-04-17 06:34:17', '2020-04-17 06:34:21', NULL),
(113, '2020-04-17 12:04:17', 4, 3, 2, '2020-04-17 06:34:17', '2020-04-17 06:34:21', NULL),
(114, '2020-04-17 12:04:17', 4, 3, 2, '2020-04-17 06:34:17', '2020-04-17 06:34:21', NULL),
(115, '2020-04-17 12:04:17', 4, 3, 2, '2020-04-17 06:34:17', '2020-04-17 06:34:21', NULL),
(116, '2020-04-17 12:04:17', 4, 3, 2, '2020-04-17 06:34:17', '2020-04-17 06:34:21', NULL),
(117, '2020-04-17 12:04:17', 4, 3, 2, '2020-04-17 06:34:17', '2020-04-17 06:34:21', NULL),
(118, '2020-04-17 12:04:17', 4, 3, 2, '2020-04-17 06:34:17', '2020-04-17 06:34:21', NULL),
(119, '2020-04-17 12:04:17', 4, 3, 2, '2020-04-17 06:34:17', '2020-04-17 06:34:21', NULL),
(120, '2020-04-17 12:04:17', 4, 3, 2, '2020-04-17 06:34:17', '2020-04-17 06:34:21', NULL),
(121, '2020-04-17 12:04:17', 4, 3, 2, '2020-04-17 06:34:17', '2020-04-17 06:34:22', NULL),
(122, '2020-04-17 12:04:17', 4, 3, 2, '2020-04-17 06:34:17', '2020-04-17 06:34:22', NULL),
(123, '2020-04-17 12:04:17', 4, 3, 2, '2020-04-17 06:34:17', '2020-04-17 06:34:22', NULL),
(124, '2020-04-17 12:04:17', 4, 3, 2, '2020-04-17 06:34:17', '2020-04-17 06:34:22', NULL),
(125, '2020-04-17 12:04:17', 4, 3, 2, '2020-04-17 06:34:17', '2020-04-17 06:34:22', NULL),
(126, '2020-04-17 12:04:17', 4, 3, 2, '2020-04-17 06:34:17', '2020-04-17 06:34:22', NULL),
(127, '2020-04-17 12:04:17', 4, 3, 2, '2020-04-17 06:34:17', '2020-04-17 06:34:22', NULL),
(128, '2020-04-17 12:04:17', 4, 3, 2, '2020-04-17 06:34:17', '2020-04-17 06:34:22', NULL),
(129, '2020-04-17 12:04:17', 4, 3, 2, '2020-04-17 06:34:17', '2020-04-17 06:34:22', NULL),
(130, '2020-04-17 12:04:17', 4, 3, 2, '2020-04-17 06:34:17', '2020-04-17 06:34:22', NULL),
(131, '2020-04-17 12:04:17', 4, 3, 2, '2020-04-17 06:34:17', '2020-04-17 06:34:22', NULL),
(132, '2020-04-17 12:04:17', 4, 3, 2, '2020-04-17 06:34:17', '2020-04-17 06:34:22', NULL),
(133, '2020-04-17 12:04:17', 4, 3, 2, '2020-04-17 06:34:17', '2020-04-17 06:34:22', NULL),
(134, '2020-04-17 12:04:17', 4, 3, 2, '2020-04-17 06:34:17', '2020-04-17 06:34:22', NULL),
(135, '2020-04-17 12:04:17', 4, 3, 2, '2020-04-17 06:34:17', '2020-04-17 06:34:22', NULL),
(136, '2020-04-17 12:04:17', 4, 3, 2, '2020-04-17 06:34:17', '2020-04-17 06:34:22', NULL),
(137, '2020-04-17 12:04:17', 4, 3, 2, '2020-04-17 06:34:17', '2020-04-17 06:34:22', NULL),
(138, '2020-04-17 12:04:17', 4, 3, 2, '2020-04-17 06:34:17', '2020-04-17 06:34:22', NULL),
(139, '2020-04-17 12:04:17', 4, 3, 2, '2020-04-17 06:34:17', '2020-04-17 06:34:22', NULL),
(140, '2020-04-17 12:04:17', 4, 3, 2, '2020-04-17 06:34:17', '2020-04-17 06:34:22', NULL),
(141, '2020-04-17 12:04:17', 4, 3, 2, '2020-04-17 06:34:17', '2020-04-17 06:34:22', NULL),
(142, '2020-04-17 12:04:17', 4, 3, 2, '2020-04-17 06:34:17', '2020-04-17 06:34:22', NULL),
(143, '2020-04-17 12:04:17', 4, 3, 2, '2020-04-17 06:34:17', '2020-04-17 06:34:22', NULL),
(144, '2020-04-17 12:04:17', 4, 3, 2, '2020-04-17 06:34:17', '2020-04-17 06:34:22', NULL),
(145, '2020-04-17 12:04:17', 4, 3, 2, '2020-04-17 06:34:17', '2020-04-17 06:34:22', NULL),
(146, '2020-04-17 12:04:17', 4, 3, 2, '2020-04-17 06:34:17', '2020-04-17 06:34:22', NULL),
(147, '2020-04-17 12:04:17', 4, 3, 2, '2020-04-17 06:34:17', '2020-04-17 06:34:22', NULL),
(148, '2020-04-17 12:04:17', 4, 3, 2, '2020-04-17 06:34:17', '2020-04-17 06:34:22', NULL),
(149, '2020-04-17 12:04:17', 4, 3, 2, '2020-04-17 06:34:17', '2020-04-17 06:34:22', NULL),
(150, '2020-04-17 12:04:17', 4, 3, 2, '2020-04-17 06:34:17', '2020-04-17 06:34:22', NULL),
(151, '2020-04-17 12:04:17', 4, 3, 2, '2020-04-17 06:34:17', '2020-04-17 06:34:23', NULL),
(152, '2020-04-17 12:04:17', 4, 3, 2, '2020-04-17 06:34:17', '2020-04-17 06:34:23', NULL),
(153, '2020-04-17 12:04:17', 4, 3, 2, '2020-04-17 06:34:17', '2020-04-17 06:34:23', NULL),
(154, '2020-04-17 12:04:17', 4, 3, 2, '2020-04-17 06:34:17', '2020-04-17 06:34:23', NULL),
(155, '2020-04-17 12:04:17', 4, 3, 2, '2020-04-17 06:34:17', '2020-04-17 07:31:47', '2020-04-17 07:31:47');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('mahantesh_policepatil@yahoo.in', '$2y$10$rHDeKMj5UeFqTOkruHQlbeIYjcJuqnhwi3lACayUxJFlNHeQOYHHm', '2020-04-16 10:08:40');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `descryption` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `image_path` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `descryption`, `category_id`, `price`, `image_path`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'MI Note 5 Pro', 'MI Note 5 Pro', 4, '10000.00', 'mi-phone.jpg', '2020-04-15 09:29:17', '2020-04-15 09:29:17', NULL),
(2, 'Samsung Galaxy', 'Samsung Galaxy', 4, '15000.00', 'samsung.jpg', '2020-04-15 09:29:57', '2020-04-16 04:04:15', NULL),
(3, 'HTC', 'HTC', 4, '11000.00', 'htc.jpg', '2020-04-16 05:36:15', '2020-04-17 01:46:54', NULL),
(4, 'Counter Strike', 'Counter Strike', 2, '2000.00', 'counter-strike.jpg', '2020-04-16 23:35:11', '2020-04-16 23:35:11', NULL),
(5, 'James Bond', 'James Bond', 2, '5000.00', 'james-bond.jpg', '2020-04-16 23:35:44', '2020-04-16 23:35:44', NULL),
(6, 'Zameen', 'Zameen', 3, '5000.00', 'zameen.jpg', '2020-04-16 23:36:38', '2020-04-16 23:36:38', NULL),
(7, 'Border', 'Border', 3, '6000.00', 'border.jpg', '2020-04-16 23:37:00', '2020-04-16 23:37:00', NULL),
(8, 'Tanhaji', 'Tanhaji - The Unsung Warrior', 3, '7000.00', 'tanhaji.jpg', '2020-04-17 00:21:23', '2020-04-17 00:21:23', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_permission` tinyint(4) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `is_permission`, `created_at`, `updated_at`) VALUES
(1, 'mahantesh', 'mahantesh_policepatil@yahoo.in', NULL, '$2y$10$Atx3eBTWGnnWCDqWYbaKPe/efOqG./ebyaKb/eQta0lI1GJ7e6FeO', NULL, 1, '2020-04-15 09:07:11', '2020-04-15 09:07:11'),
(2, 'Rohit', 'rohit@gmail.com', NULL, '$2y$10$IHzJ1VeG6lxgee3Ke3q4ue8bPmMpOktzWLw37wHq3AJzJOeVxWUHS', NULL, 0, '2020-04-15 09:08:43', '2020-04-15 09:08:43');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cart_category_id_foreign` (`category_id`),
  ADD KEY `cart_product_id_foreign` (`product_id`),
  ADD KEY `cart_selected_by_foreign` (`selected_by`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `orders_category_id_foreign` (`category_id`),
  ADD KEY `orders_product_id_foreign` (`product_id`),
  ADD KEY `orders_ordered_by_foreign` (`ordered_by`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_category_id_foreign` (`category_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=156;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `cart`
--
ALTER TABLE `cart`
  ADD CONSTRAINT `cart_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`),
  ADD CONSTRAINT `cart_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`),
  ADD CONSTRAINT `cart_selected_by_foreign` FOREIGN KEY (`selected_by`) REFERENCES `users` (`id`);

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`),
  ADD CONSTRAINT `orders_ordered_by_foreign` FOREIGN KEY (`ordered_by`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `orders_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`);

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
