-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 21, 2024 at 04:50 PM
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
-- Database: `laravel`
--

-- --------------------------------------------------------

--
-- Table structure for table `airlines`
--

CREATE TABLE `airlines` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(125) NOT NULL,
  `code` varchar(125) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `airlines`
--

INSERT INTO `airlines` (`id`, `name`, `code`, `created_at`, `updated_at`) VALUES
(1, 'Malaysia Airlines', 'MH', '2024-07-13 03:50:45', '2024-07-13 05:45:04');

-- --------------------------------------------------------

--
-- Table structure for table `airports`
--

CREATE TABLE `airports` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `city_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(125) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `airports`
--

INSERT INTO `airports` (`id`, `city_id`, `name`, `created_at`, `updated_at`) VALUES
(1, 1, 'Kuala Lumpur International Airport', '2024-07-13 03:50:46', '2024-07-16 23:44:27'),
(2, 2, 'Penang International Airport', '2024-07-13 03:50:46', '2024-07-16 23:40:42'),
(3, 3, 'Langkawi International Airport', '2024-07-13 03:50:46', '2024-07-16 23:41:51'),
(4, 4, 'Kuching International Airport', '2024-07-13 03:50:46', '2024-07-16 23:58:52'),
(5, 5, 'Johor Bahru Senai International Airport', '2024-07-13 03:50:46', '2024-07-16 23:48:26'),
(6, 6, 'Sandakan Airport', '2024-07-13 03:50:46', '2024-07-16 23:43:27'),
(7, 7, 'Kota Kinabalu International Airport', '2024-07-13 03:50:46', '2024-07-16 23:49:22'),
(9, 9, 'Sibu Airport', '2024-07-13 03:50:46', '2024-07-16 23:50:53'),
(10, 10, 'Labuan Airport', '2024-07-13 03:50:46', '2024-07-16 23:51:11'),
(11, 11, 'Sultan Ismail Petra Airport', '2024-07-13 03:50:46', '2024-07-16 23:47:37'),
(12, 12, 'Bintulu Airport', '2024-07-13 03:50:46', '2024-07-16 23:51:35'),
(13, 13, 'Miri Airport', '2024-07-13 03:50:46', '2024-07-16 23:51:57'),
(14, 14, 'Tawau Airport', '2024-07-13 03:50:46', '2024-07-16 23:52:14'),
(15, 15, 'Mulu Airport', '2024-07-13 03:50:46', '2024-07-16 23:52:54'),
(16, 16, 'Sultan Abdul Halim Airport', '2024-07-13 03:50:46', '2024-07-16 23:53:23'),
(17, 17, 'Babekalan Airport', '2024-07-13 03:50:46', '2024-07-16 23:54:35'),
(18, 18, 'Sultan Mahmud Airport', '2024-07-13 03:50:46', '2024-07-16 23:55:22');

-- --------------------------------------------------------

--
-- Table structure for table `cities`
--

CREATE TABLE `cities` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `country_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(125) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `cities`
--

INSERT INTO `cities` (`id`, `country_id`, `name`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, NULL, 'Kuala Lumpur', '2024-07-13 03:50:45', '2024-07-13 03:50:45', NULL),
(2, NULL, 'Penang\r\n', '2024-07-13 03:50:45', '2024-07-13 03:50:45', NULL),
(3, NULL, 'Langkawi', '2024-07-13 03:50:45', '2024-07-13 03:50:45', NULL),
(4, NULL, 'Kuching', '2024-07-13 03:50:45', '2024-07-13 03:50:45', NULL),
(5, NULL, 'Johor Bahru', '2024-07-13 03:50:45', '2024-07-13 03:50:45', NULL),
(6, NULL, 'Sandakan', '2024-07-13 03:50:46', '2024-07-13 03:50:46', NULL),
(7, NULL, 'Kota Kinabalu', '2024-07-13 03:50:46', '2024-07-13 03:50:46', NULL),
(8, NULL, 'Subang', '2024-07-13 03:50:46', '2024-07-13 03:50:46', NULL),
(9, NULL, 'Sibu', '2024-07-13 03:50:46', '2024-07-13 03:50:46', NULL),
(10, NULL, 'Labuan\r\n', '2024-07-13 03:50:46', '2024-07-13 03:50:46', NULL),
(11, NULL, 'Kota Bharu\r\n', '2024-07-13 03:50:46', '2024-07-13 03:50:46', NULL),
(12, NULL, 'Bintulu', '2024-07-13 03:50:46', '2024-07-13 03:50:46', NULL),
(13, NULL, 'Miri', '2024-07-13 03:50:46', '2024-07-13 03:50:46', NULL),
(14, NULL, 'Tawau', '2024-07-13 03:50:46', '2024-07-13 03:50:46', NULL),
(15, NULL, 'Mulu', '2024-07-13 03:50:46', '2024-07-13 03:50:46', NULL),
(16, NULL, 'Kedah', '2024-07-13 03:50:46', '2024-07-13 03:50:46', NULL),
(17, NULL, 'Bakekalan', '2024-07-13 03:50:46', '2024-07-13 03:50:46', NULL),
(18, NULL, 'Terengganu', '2024-07-13 03:50:46', '2024-07-13 03:50:46', NULL),
(19, NULL, 'Lawas', '2024-07-13 03:50:46', '2024-07-13 03:50:46', NULL),
(20, NULL, 'Lahad Datu', '2024-07-13 03:50:46', '2024-07-13 03:50:46', NULL),
(21, NULL, 'Kuantan', '2024-07-13 03:50:46', '2024-07-13 03:50:46', NULL),
(22, NULL, 'Mukah', '2024-07-13 03:50:46', '2024-07-13 03:50:46', NULL),
(23, NULL, 'Tanjung Manis', '2024-07-13 03:50:46', '2024-07-13 03:50:46', NULL),
(24, NULL, 'Keningau', '2024-07-13 03:50:46', '2024-07-13 03:50:46', NULL),
(29, NULL, 'Copenhagen', '2024-07-13 03:50:46', '2024-07-13 03:50:46', NULL),
(30, NULL, 'Sulaimany', '2024-07-13 03:50:46', '2024-07-13 03:50:46', NULL),
(31, NULL, 'Madina', '2024-07-13 03:50:46', '2024-07-13 03:50:46', NULL),
(32, NULL, 'Larnaca', '2024-07-13 03:50:46', '2024-07-13 03:50:46', NULL),
(33, NULL, 'Cairo', '2024-07-13 03:50:46', '2024-07-13 03:50:46', NULL),
(34, NULL, 'Ankara', '2024-07-13 03:50:46', '2024-07-13 03:50:46', NULL),
(35, NULL, 'Antalya', '2024-07-13 03:50:46', '2024-07-13 03:50:46', NULL),
(36, NULL, 'Doha', '2024-07-13 03:50:46', '2024-07-13 03:50:46', NULL),
(37, NULL, 'sharjah', '2024-07-13 03:50:46', '2024-07-13 03:50:46', NULL),
(38, NULL, 'Tbilisi', '2024-07-13 03:50:46', '2024-07-13 03:50:46', NULL),
(39, NULL, 'Batumi', '2024-07-13 03:50:46', '2024-07-13 03:50:46', NULL),
(40, NULL, 'Adana', '2024-07-13 03:50:46', '2024-07-13 03:50:46', NULL),
(41, NULL, 'Tunis', '2024-07-13 03:50:46', '2024-07-13 03:50:46', NULL),
(42, NULL, 'Berlin', '2024-07-13 03:50:46', '2024-07-13 03:50:46', NULL),
(43, NULL, 'Yerevan', '2024-07-13 03:50:46', '2024-07-13 03:50:46', NULL),
(44, NULL, 'Adana', '2024-07-13 03:50:46', '2024-07-13 03:50:46', NULL),
(45, NULL, 'Stuttgart', '2024-07-13 03:50:46', '2024-07-13 03:50:46', NULL),
(46, NULL, 'Baku', '2024-07-13 03:50:46', '2024-07-13 03:50:46', NULL),
(47, NULL, 'Diyarbakir', '2024-07-13 03:50:46', '2024-07-13 03:50:46', NULL),
(48, NULL, 'Gaziantep', '2024-07-13 03:50:46', '2024-07-13 03:50:46', NULL),
(49, NULL, 'Minsk', '2024-07-13 03:50:46', '2024-07-13 03:50:46', NULL),
(50, NULL, 'Nasiriyah', '2024-07-13 03:50:46', '2024-07-13 03:50:46', NULL),
(51, NULL, 'Istanbul', '2024-07-13 03:50:46', '2024-07-13 03:50:46', NULL),
(52, NULL, 'Kiev', '2024-07-13 03:50:46', '2024-07-13 03:50:46', NULL),
(53, NULL, 'Nuremberg', '2024-07-13 03:50:46', '2024-07-13 03:50:46', NULL),
(54, NULL, 'Odessa', '2024-07-13 03:50:46', '2024-07-13 03:50:46', NULL),
(55, NULL, 'Birmingham', '2024-07-13 03:50:46', '2024-07-13 03:50:46', NULL),
(56, NULL, 'Amsterdam', '2024-07-13 03:50:46', '2024-07-13 03:50:46', NULL),
(57, NULL, 'Rotterdam', '2024-07-13 03:50:46', '2024-07-13 03:50:46', NULL),
(58, NULL, 'Cologne', '2024-07-13 03:50:46', '2024-07-13 03:50:46', NULL),
(59, NULL, 'Trabzon', '2024-07-13 03:50:46', '2024-07-13 03:50:46', NULL),
(60, NULL, 'Mugla', '2024-07-13 03:50:46', '2024-07-13 03:50:46', NULL),
(61, NULL, 'Madrid', '2024-07-13 03:50:46', '2024-07-13 03:50:46', NULL),
(62, NULL, 'Bucharest', '2024-07-13 03:50:46', '2024-07-13 03:50:46', NULL),
(63, NULL, 'Prague', '2024-07-13 03:50:46', '2024-07-13 03:50:46', NULL),
(64, NULL, 'Hanover', '2024-07-13 03:50:46', '2024-07-13 03:50:46', NULL),
(65, NULL, 'Aleppo', '2024-07-13 03:50:46', '2024-07-13 03:50:46', NULL),
(66, NULL, 'Urmia', '2024-07-13 03:50:46', '2024-07-13 03:50:46', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(125) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(125) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `flights`
--

CREATE TABLE `flights` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `flight_number` varchar(125) NOT NULL,
  `airline_id` bigint(20) UNSIGNED NOT NULL,
  `plane_id` bigint(20) UNSIGNED NOT NULL,
  `origin_id` bigint(20) UNSIGNED NOT NULL,
  `destination_id` bigint(20) UNSIGNED NOT NULL,
  `departure` datetime NOT NULL,
  `arrival` datetime NOT NULL,
  `seats` int(11) NOT NULL,
  `remain_seats` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `price` double(4,2) NOT NULL COMMENT 'in USD\r\n',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `flights`
--

INSERT INTO `flights` (`id`, `flight_number`, `airline_id`, `plane_id`, `origin_id`, `destination_id`, `departure`, `arrival`, `seats`, `remain_seats`, `status`, `price`, `created_at`, `updated_at`) VALUES
(1, '1', 1, 1, 1, 3, '2024-07-18 13:30:00', '2024-07-18 14:30:00', 108, 10, 1, 99.99, NULL, NULL),
(2, '2', 1, 1, 1, 3, '2024-07-19 12:00:00', '2024-07-19 14:00:00', 108, 2, 1, 99.99, NULL, NULL),
(3, '3', 1, 2, 5, 1, '2024-07-19 09:00:50', '2024-07-19 09:50:50', 128, 59, 1, 99.99, NULL, '2024-07-17 18:17:23'),
(4, '4', 1, 2, 1, 5, '2024-07-19 09:50:50', '2024-07-17 18:35:12', 128, 29, 1, 99.99, NULL, '2024-07-17 18:00:31'),
(5, '3201', 1, 1, 6, 2, '2024-07-22 15:00:00', '2024-07-22 16:00:00', 108, 108, 1, 99.99, NULL, '2024-07-21 00:41:42');

-- --------------------------------------------------------

--
-- Table structure for table `media`
--

CREATE TABLE `media` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(125) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL,
  `uuid` char(36) DEFAULT NULL,
  `collection_name` varchar(125) NOT NULL,
  `name` varchar(125) NOT NULL,
  `file_name` varchar(125) NOT NULL,
  `mime_type` varchar(125) DEFAULT NULL,
  `disk` varchar(125) NOT NULL,
  `conversions_disk` varchar(125) DEFAULT NULL,
  `size` bigint(20) UNSIGNED NOT NULL,
  `manipulations` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`manipulations`)),
  `custom_properties` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`custom_properties`)),
  `generated_conversions` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`generated_conversions`)),
  `responsive_images` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`responsive_images`)),
  `order_column` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `media`
--

INSERT INTO `media` (`id`, `model_type`, `model_id`, `uuid`, `collection_name`, `name`, `file_name`, `mime_type`, `disk`, `conversions_disk`, `size`, `manipulations`, `custom_properties`, `generated_conversions`, `responsive_images`, `order_column`, `created_at`, `updated_at`) VALUES
(20, 'App\\Models\\Airline', 1, '36f62bfc-f29a-423b-8def-44819e91914e', 'default', 'Malaysia Airlines', '6692855b62ffc_Malaysia-Airlines-logo.png', 'image/png', 'public', 'public', 4528, '[]', '[]', '[]', '[]', 1, '2024-07-13 05:47:11', '2024-07-13 05:47:11');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(125) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_06_22_065659_create_media_table', 1),
(6, '2022_09_20_123245_create_countries_table', 1),
(7, '2022_09_20_123321_create_cities_table', 1),
(8, '2022_09_20_123623_create_airports_table', 1),
(9, '2022_09_20_123739_create_airlines_table', 1),
(10, '2022_09_20_123751_create_planes_table', 1),
(11, '2022_09_20_123810_create_flights_table', 1),
(12, '2022_09_27_145710_create_tickets_table', 1),
(13, '2022_11_13_123535_create_notifications_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` char(36) NOT NULL,
  `type` varchar(125) NOT NULL,
  `notifiable_type` varchar(125) NOT NULL,
  `notifiable_id` bigint(20) UNSIGNED NOT NULL,
  `data` text NOT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(125) NOT NULL,
  `token` varchar(125) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('admin@airline.com', '$2y$10$J7RG7BRVEqcMXTmwpG6b6u8Y4uwU41LPs14Z2OOgHNwIezVQPMeSG', '2024-07-13 03:52:44');

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(125) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(125) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `planes`
--

CREATE TABLE `planes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `airline_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(125) NOT NULL,
  `code` varchar(125) NOT NULL,
  `capacity` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `planes`
--

INSERT INTO `planes` (`id`, `airline_id`, `name`, `code`, `capacity`, `created_at`, `updated_at`) VALUES
(1, 1, 'Boeing 737-200', 'B732', 108, '2024-07-13 03:50:45', '2024-07-13 05:52:40'),
(2, 1, 'Boeing 737-300', 'B733', 128, '2024-07-13 03:50:45', '2024-07-13 05:53:11'),
(3, 1, 'Boeing 737-400', 'B734', 168, '2024-07-13 05:53:45', '2024-07-13 05:53:45'),
(4, 1, 'Boeing 737-500', 'B735', 122, '2024-07-13 05:59:37', '2024-07-13 05:59:37'),
(5, 1, 'Boeing 737-800', 'B738', 160, '2024-07-17 00:14:16', '2024-07-17 00:14:16');

-- --------------------------------------------------------

--
-- Table structure for table `tickets`
--

CREATE TABLE `tickets` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `flight_id` bigint(20) UNSIGNED NOT NULL,
  `seat_number` varchar(125) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0: pendding, 1: accepted, 2: canceled',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tickets`
--

INSERT INTO `tickets` (`id`, `user_id`, `flight_id`, `seat_number`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(4, 12, 4, '56', 1, '2024-07-17 18:00:31', '2024-07-17 18:00:55', NULL),
(5, 17, 3, '46', 1, '2024-07-17 18:17:23', '2024-07-17 18:18:04', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `is_admin` tinyint(1) NOT NULL DEFAULT 0,
  `name` varchar(125) NOT NULL,
  `email` varchar(125) NOT NULL,
  `phone` varchar(125) NOT NULL,
  `address` varchar(125) DEFAULT NULL,
  `is_accepted` tinyint(1) NOT NULL DEFAULT 0,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `fcm_token` text DEFAULT NULL,
  `password` varchar(125) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `is_admin`, `name`, `email`, `phone`, `address`, `is_accepted`, `email_verified_at`, `fcm_token`, `password`, `remember_token`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 'admin', 'admin@airline.com', '0123456789', NULL, 0, NULL, NULL, '$2y$10$a7dAZUiVVcUIbx6mWsuk6uYDh3q7yMWrEH0oiqhHImLB74Tf/SjYa', NULL, '2024-07-13 03:50:44', '2024-07-13 03:50:44', NULL),
(2, 0, 'Zoie Johns', 'kyra79@ledner.net', '1-680-791-3484', '20269 Rocky Plaza\nBillieport, NJ 18967-9740', 0, NULL, NULL, '$2y$10$zlaY/ksPDDQjk4tlFP0Xyu9iCLOqftVIVhX9zSoXo0uBwZp0QiPxC', NULL, '2024-07-13 03:50:44', '2024-07-13 03:50:44', NULL),
(3, 0, 'Charlene Kreiger', 'cecil17@hotmail.com', '+1-615-398-6695', '545 Aletha Springs\nSatterfieldberg, NM 74196', 0, NULL, NULL, '$2y$10$NfqnfKC6ECllcJkRp5Kz4.ZbWhFxvCBeiHHHfp69McTVrZgIue5D6', NULL, '2024-07-13 03:50:44', '2024-07-13 03:50:44', NULL),
(4, 0, 'Mrs. Ivory Bins Sr.', 'akutch@gmail.com', '+1 (220) 786-4462', '68928 Sandy Divide\nFeltonborough, ID 35936', 0, NULL, NULL, '$2y$10$0VgH1arFLhlJfuvF2h4rT.VxcZ39cK.Bl..nySfCQ.Iicer3HTzYK', NULL, '2024-07-13 03:50:44', '2024-07-13 03:50:44', NULL),
(5, 0, 'Toni Ondricka', 'dana01@oreilly.com', '1-917-415-9025', '819 Cleveland Pike Apt. 576\nNorth Dante, NM 28508', 0, NULL, NULL, '$2y$10$L.YF9gzCiq6sRlUCkbhwHeJ14X.cAEzoSh.o3fmuKCa3TvfNeP3Dy', NULL, '2024-07-13 03:50:45', '2024-07-13 03:50:45', NULL),
(6, 0, 'Dr. Malika Nienow Sr.', 'amanda.paucek@schultz.com', '+1-774-748-0346', '478 Kozey Lake\nWest Davin, OH 37507-4040', 0, NULL, NULL, '$2y$10$Ku4wPUQB.cZPMvbqvTLC3OqLmzB4cvmF6RXEP7DEI/U639uwtR5C.', NULL, '2024-07-13 03:50:45', '2024-07-13 03:50:45', NULL),
(7, 0, 'Waylon Spencer', 'flavie97@gmail.com', '+1.712.541.8643', '6784 Seth Skyway Apt. 528\nSchmelerton, DE 60967', 0, NULL, NULL, '$2y$10$0l8L9pcOi9r4m.rMRvk06uWdVnUYuqhiHaeYk/Q29x5UXDBSsjZ8a', NULL, '2024-07-13 03:50:45', '2024-07-13 03:50:45', NULL),
(8, 0, 'Marquis Sawayn', 'lrice@hotmail.com', '(770) 398-1288', '95984 Alysson Isle\nNew Kaelynberg, GA 98834-4204', 0, NULL, NULL, '$2y$10$X4h5NEXgnY/3elBIqj5Rz.Tj357EyXlq9UjRtegHWzqGgvqG5xwPi', NULL, '2024-07-13 03:50:45', '2024-07-13 03:50:45', NULL),
(9, 0, 'Lawrence Schumm', 'fmante@yahoo.com', '(913) 252-2757', '5037 Schulist Meadows\nSouth Roselyn, TX 01260-8647', 0, NULL, NULL, '$2y$10$.RgyXvnkDch5zyNO8R7uMeJv0bGUhF/TDpAmK7GlVBup8PdjF9ZCu', NULL, '2024-07-13 03:50:45', '2024-07-13 03:50:45', NULL),
(10, 0, 'Destini Turner', 'anderson24@gmail.com', '+16304318096', '402 Laurianne Prairie\nPort Horacio, AZ 65149', 0, NULL, NULL, '$2y$10$ADUIB/9srkYXoEq4mkePJ.G7XyZa9Wq1peTkERPM/2OZD.QgKJLTq', NULL, '2024-07-13 03:50:45', '2024-07-13 03:50:45', NULL),
(11, 0, 'Benedict Hoeger', 'pmoore@hotmail.com', '(270) 895-2510', '320 Celine Springs Apt. 603\nTavaresmouth, IN 54051-9181', 0, NULL, NULL, '$2y$10$bOa5miy.FP6BkBKoYL6Jxuc6zw2Mo94mNpO/XhIZq77Y.7Ovkz6LG', NULL, '2024-07-13 03:50:45', '2024-07-13 03:50:45', NULL),
(12, 0, 'fara', 'fara@gmail.com', '60199851942', 'Negeri Sembilan', 0, NULL, NULL, '$2y$10$TVWFmqOWDGA.29Lnoge8V.4iWAvBKht1Z8hlBGjgfmTeD91q2v92C', NULL, '2024-07-13 06:04:11', '2024-07-13 06:04:11', NULL),
(13, 0, 'maisarah', 'maisarah@gmail.com', '60127425781', 'KLUANG, JOHOR', 0, NULL, NULL, '$2y$10$3.m7w1MFgDmtuZdjy7QxBeEEK8pdVA.rwJLuyghaGR7JhZsl/6a9C', NULL, '2024-07-16 04:36:06', '2024-07-16 04:36:06', NULL),
(14, 0, 'mashie', 'kemashieanjane@gmail.com', '601161121055', 'johor, malaysia', 0, NULL, NULL, '$2y$10$KB5qveheBzX0OpDHbXX8dOUg1iz6dU.dnSfw4RL7nTSdohSExeU0O', NULL, '2024-07-16 08:23:34', '2024-07-16 08:23:34', NULL),
(15, 0, 'Shamimmatul Hanisah', 'shamimmatulshz12@gmail.com', '601124756389', 'Gombak, Selangor', 0, NULL, NULL, '$2y$10$5wUvweNyVaRDG3SZfvjOceAFtbLOTDGwOtiUCNpEWqGkSdVU3Cn1G', NULL, '2024-07-16 08:32:57', '2024-07-16 08:32:57', NULL),
(16, 0, 'acapxx', 'acap@gmail.com', '601234567', 'pulau indah, klanng', 0, NULL, NULL, '$2y$10$Yo2ucHHyug5dc4GoBMPVt.YivdSdqTU55BPyc4rt1romhmMhloymu', NULL, '2024-07-17 18:08:53', '2024-07-17 18:08:53', NULL),
(17, 0, 'alya', 'alya@gmail.com', '601234562', 'seremban, negeri sembiln', 0, NULL, NULL, '$2y$10$MyMkayB9nYE9rfumW.8stOsqMlcrvvXFBfaSx5t3O5QBsfsfwzK3q', NULL, '2024-07-17 18:17:04', '2024-07-17 18:17:04', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `airlines`
--
ALTER TABLE `airlines`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `airports`
--
ALTER TABLE `airports`
  ADD PRIMARY KEY (`id`),
  ADD KEY `airports_city_id_foreign` (`city_id`);

--
-- Indexes for table `cities`
--
ALTER TABLE `cities`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cities_country_id_foreign` (`country_id`);

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `flights`
--
ALTER TABLE `flights`
  ADD PRIMARY KEY (`id`),
  ADD KEY `flights_airline_id_foreign` (`airline_id`),
  ADD KEY `flights_plane_id_foreign` (`plane_id`),
  ADD KEY `flights_origin_id_foreign` (`origin_id`),
  ADD KEY `flights_destination_id_foreign` (`destination_id`);

--
-- Indexes for table `media`
--
ALTER TABLE `media`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `media_uuid_unique` (`uuid`),
  ADD KEY `media_model_type_model_id_index` (`model_type`,`model_id`),
  ADD KEY `media_order_column_index` (`order_column`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notifications_notifiable_type_notifiable_id_index` (`notifiable_type`,`notifiable_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `planes`
--
ALTER TABLE `planes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `planes_airline_id_foreign` (`airline_id`);

--
-- Indexes for table `tickets`
--
ALTER TABLE `tickets`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tickets_user_id_foreign` (`user_id`),
  ADD KEY `tickets_flight_id_foreign` (`flight_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `users_phone_unique` (`phone`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `airlines`
--
ALTER TABLE `airlines`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `airports`
--
ALTER TABLE `airports`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;

--
-- AUTO_INCREMENT for table `cities`
--
ALTER TABLE `cities`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `flights`
--
ALTER TABLE `flights`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `media`
--
ALTER TABLE `media`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `planes`
--
ALTER TABLE `planes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `tickets`
--
ALTER TABLE `tickets`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `airports`
--
ALTER TABLE `airports`
  ADD CONSTRAINT `airports_city_id_foreign` FOREIGN KEY (`city_id`) REFERENCES `cities` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `cities`
--
ALTER TABLE `cities`
  ADD CONSTRAINT `cities_country_id_foreign` FOREIGN KEY (`country_id`) REFERENCES `countries` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `flights`
--
ALTER TABLE `flights`
  ADD CONSTRAINT `flights_airline_id_foreign` FOREIGN KEY (`airline_id`) REFERENCES `airlines` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `flights_destination_id_foreign` FOREIGN KEY (`destination_id`) REFERENCES `airports` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `flights_origin_id_foreign` FOREIGN KEY (`origin_id`) REFERENCES `airports` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `flights_plane_id_foreign` FOREIGN KEY (`plane_id`) REFERENCES `planes` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `planes`
--
ALTER TABLE `planes`
  ADD CONSTRAINT `planes_airline_id_foreign` FOREIGN KEY (`airline_id`) REFERENCES `airlines` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tickets`
--
ALTER TABLE `tickets`
  ADD CONSTRAINT `tickets_flight_id_foreign` FOREIGN KEY (`flight_id`) REFERENCES `flights` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `tickets_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
