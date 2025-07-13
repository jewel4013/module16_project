-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 13, 2025 at 03:28 PM
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
-- Database: `module16`
--

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `catagories`
--

CREATE TABLE `catagories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `mobile` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `invoices`
--

CREATE TABLE `invoices` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `total` varchar(255) NOT NULL,
  `discount` varchar(255) NOT NULL,
  `vat` varchar(255) NOT NULL,
  `payable` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `customer_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `invoice_products`
--

CREATE TABLE `invoice_products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `invoice_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `qty` varchar(255) NOT NULL,
  `sale_price` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000001_create_cache_table', 1),
(2, '0001_01_01_000002_create_jobs_table', 1),
(3, '2025_07_13_190637_create_sessions_table', 1),
(4, '2025_07_13_190806_create_users_table', 1),
(5, '2025_07_13_191013_create_customers_table', 1),
(6, '2025_07_13_191415_create_catagories_table', 2),
(7, '2025_07_13_191516_create_products_table', 3),
(8, '2025_07_13_191619_create_invoices_table', 4),
(9, '2025_07_13_191704_create_invoice_products__table', 5);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `catagory_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `price` varchar(255) NOT NULL,
  `unit` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('p2vEoAEVCGsLnImSjEV6FUDwufhOx1TjqImPxowf', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/138.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiWjdRRjZ5dkpjWXpBVnE1eXYzWTVCck1lTHVwdkpxTXBtc0xXbFNGYSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzQ6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC91c2Vycz9wYWdlPTgiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1752412776);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `mobile` varchar(255) NOT NULL,
  `otp` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NOT NULL DEFAULT '2025-07-13 13:12:07',
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `mobile`, `otp`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Jewel', '01959837583', '45454545', 'jewel@gmail.com', '2025-07-13 13:12:07', '4013', NULL, '2025-07-13 13:18:36', '2025-07-13 13:18:36'),
(2, 'Dr. Blanche Herman', '01466926368', '15663757', 'larue55@yahoo.com', '1982-06-26 04:30:55', '$2y$12$DUm9CY1ZdU/wexfbku0Bwevrq6nkDzevyglUOHyB6j7S0P8IVBfFy', 'VTA1dnn6pf', '2025-07-13 13:19:30', '2025-07-13 13:19:30'),
(3, 'Devan Mertz', '01507683473', '12080595', 'hkassulke@gmail.com', '2002-08-21 19:11:02', '$2y$12$DUm9CY1ZdU/wexfbku0Bwevrq6nkDzevyglUOHyB6j7S0P8IVBfFy', 'WI9drEyrM2', '2025-07-13 13:19:30', '2025-07-13 13:19:30'),
(4, 'Halle Leuschke', '01756198959', '16834873', 'casimir.schowalter@yahoo.com', '2016-01-09 09:23:46', '$2y$12$DUm9CY1ZdU/wexfbku0Bwevrq6nkDzevyglUOHyB6j7S0P8IVBfFy', 'N110PKJdpi', '2025-07-13 13:19:30', '2025-07-13 13:19:30'),
(5, 'Bradford Wiza PhD', '01796041833', '74633746', 'schinner.robyn@hotmail.com', '2001-01-29 12:14:37', '$2y$12$DUm9CY1ZdU/wexfbku0Bwevrq6nkDzevyglUOHyB6j7S0P8IVBfFy', 'yNPbwbmUYe', '2025-07-13 13:19:30', '2025-07-13 13:19:30'),
(6, 'Elena Hansen', '01853865809', '15574657', 'vdenesik@yahoo.com', '2023-02-27 08:41:47', '$2y$12$DUm9CY1ZdU/wexfbku0Bwevrq6nkDzevyglUOHyB6j7S0P8IVBfFy', 'q4HJhGBdqT', '2025-07-13 13:19:30', '2025-07-13 13:19:30'),
(7, 'Davin Walker', '01447646001', '67554072', 'presley.walker@gmail.com', '1983-07-07 21:05:51', '$2y$12$DUm9CY1ZdU/wexfbku0Bwevrq6nkDzevyglUOHyB6j7S0P8IVBfFy', 'LeEnSXieFY', '2025-07-13 13:19:30', '2025-07-13 13:19:30'),
(8, 'Russel Wehner Sr.', '01925660685', '65974438', 'tcruickshank@hotmail.com', '2019-03-31 19:12:48', '$2y$12$DUm9CY1ZdU/wexfbku0Bwevrq6nkDzevyglUOHyB6j7S0P8IVBfFy', 'LSc2PYCmzj', '2025-07-13 13:19:30', '2025-07-13 13:19:30'),
(9, 'Mr. Llewellyn Hill', '01376156038', '86172608', 'forrest.klocko@yahoo.com', '1988-08-13 06:04:23', '$2y$12$DUm9CY1ZdU/wexfbku0Bwevrq6nkDzevyglUOHyB6j7S0P8IVBfFy', 'NvrxbHSu5S', '2025-07-13 13:19:30', '2025-07-13 13:19:30'),
(10, 'Amaya Ritchie', '01341803134', '55825542', 'horacio76@hotmail.com', '2009-01-22 03:55:16', '$2y$12$DUm9CY1ZdU/wexfbku0Bwevrq6nkDzevyglUOHyB6j7S0P8IVBfFy', '3klfdCrWAj', '2025-07-13 13:19:30', '2025-07-13 13:19:30'),
(11, 'Dr. Peyton Daugherty', '01658957875', '63466553', 'pokon@hotmail.com', '2023-04-21 06:04:07', '$2y$12$DUm9CY1ZdU/wexfbku0Bwevrq6nkDzevyglUOHyB6j7S0P8IVBfFy', 'DdZOCyk3Gf', '2025-07-13 13:19:30', '2025-07-13 13:19:30'),
(12, 'Lilyan Brown', '01784558787', '33105482', 'elroy.feil@yahoo.com', '1999-06-23 16:16:00', '$2y$12$DUm9CY1ZdU/wexfbku0Bwevrq6nkDzevyglUOHyB6j7S0P8IVBfFy', 'bXs2TSydu2', '2025-07-13 13:19:30', '2025-07-13 13:19:30'),
(13, 'Sean Kuvalis', '01687510225', '14544910', 'hhegmann@hotmail.com', '1983-09-26 19:59:41', '$2y$12$DUm9CY1ZdU/wexfbku0Bwevrq6nkDzevyglUOHyB6j7S0P8IVBfFy', 'ImG8V3zPTS', '2025-07-13 13:19:30', '2025-07-13 13:19:30'),
(14, 'Elza Bergstrom II', '01783494192', '04257042', 'hellen17@yahoo.com', '1998-08-12 14:33:18', '$2y$12$DUm9CY1ZdU/wexfbku0Bwevrq6nkDzevyglUOHyB6j7S0P8IVBfFy', 'iQXdZv6f6S', '2025-07-13 13:19:30', '2025-07-13 13:19:30'),
(15, 'Ella Doyle', '01828802440', '49491449', 'elise.oreilly@gmail.com', '1980-02-09 15:23:15', '$2y$12$DUm9CY1ZdU/wexfbku0Bwevrq6nkDzevyglUOHyB6j7S0P8IVBfFy', 'cafbDkQux7', '2025-07-13 13:19:30', '2025-07-13 13:19:30'),
(16, 'Trisha Haley', '01848688215', '78118751', 'streich.sandy@gmail.com', '1981-12-21 11:06:55', '$2y$12$DUm9CY1ZdU/wexfbku0Bwevrq6nkDzevyglUOHyB6j7S0P8IVBfFy', 'MiniJMnrgA', '2025-07-13 13:19:30', '2025-07-13 13:19:30'),
(17, 'Kelvin Wilkinson', '01780334279', '48411868', 'loraine.keeling@gmail.com', '2004-05-02 15:35:54', '$2y$12$DUm9CY1ZdU/wexfbku0Bwevrq6nkDzevyglUOHyB6j7S0P8IVBfFy', 'bkMB3LYQG2', '2025-07-13 13:19:30', '2025-07-13 13:19:30'),
(18, 'Prof. Kieran McDermott', '01936035601', '04160793', 'jadon39@gmail.com', '2011-03-13 13:44:38', '$2y$12$DUm9CY1ZdU/wexfbku0Bwevrq6nkDzevyglUOHyB6j7S0P8IVBfFy', 'nxceMNhnJ6', '2025-07-13 13:19:30', '2025-07-13 13:19:30'),
(19, 'Ross Yundt', '01345984068', '64575292', 'josiah.ledner@gmail.com', '2011-01-26 17:35:18', '$2y$12$DUm9CY1ZdU/wexfbku0Bwevrq6nkDzevyglUOHyB6j7S0P8IVBfFy', 'DZo8W5GiVZ', '2025-07-13 13:19:30', '2025-07-13 13:19:30'),
(20, 'Mrs. Sharon Cronin Sr.', '01588638805', '13413811', 'mozell85@yahoo.com', '2018-06-30 02:23:47', '$2y$12$DUm9CY1ZdU/wexfbku0Bwevrq6nkDzevyglUOHyB6j7S0P8IVBfFy', 'WOb8zpjkQ7', '2025-07-13 13:19:30', '2025-07-13 13:19:30'),
(21, 'Johnnie Bosco II', '01511287575', '42833536', 'hayes.chester@hotmail.com', '1996-01-20 11:53:19', '$2y$12$DUm9CY1ZdU/wexfbku0Bwevrq6nkDzevyglUOHyB6j7S0P8IVBfFy', 'GgMqhpU86v', '2025-07-13 13:19:30', '2025-07-13 13:19:30'),
(22, 'Sarah Johnson', '01693875103', '77472250', 'aric.rolfson@yahoo.com', '1975-05-30 12:22:12', '$2y$12$DUm9CY1ZdU/wexfbku0Bwevrq6nkDzevyglUOHyB6j7S0P8IVBfFy', 'hVSXcNk9DF', '2025-07-13 13:19:30', '2025-07-13 13:19:30'),
(23, 'Leta Heller Sr.', '01916605251', '07758867', 'awill@hotmail.com', '1982-07-30 06:58:30', '$2y$12$DUm9CY1ZdU/wexfbku0Bwevrq6nkDzevyglUOHyB6j7S0P8IVBfFy', 'S8l5XT8aO9', '2025-07-13 13:19:30', '2025-07-13 13:19:30'),
(24, 'Devon Batz I', '01610169858', '75811877', 'qkassulke@yahoo.com', '1983-03-28 22:20:03', '$2y$12$DUm9CY1ZdU/wexfbku0Bwevrq6nkDzevyglUOHyB6j7S0P8IVBfFy', 'dOkwisUb2k', '2025-07-13 13:19:30', '2025-07-13 13:19:30'),
(25, 'Priscilla Bergnaum', '01947852402', '56850406', 'glenda.klocko@yahoo.com', '2018-12-09 15:07:45', '$2y$12$DUm9CY1ZdU/wexfbku0Bwevrq6nkDzevyglUOHyB6j7S0P8IVBfFy', '72OPzhvfXd', '2025-07-13 13:19:30', '2025-07-13 13:19:30'),
(26, 'Toy Steuber', '01982313067', '31767071', 'freddie.crist@gmail.com', '2017-05-05 05:34:40', '$2y$12$DUm9CY1ZdU/wexfbku0Bwevrq6nkDzevyglUOHyB6j7S0P8IVBfFy', 'gU0PIaGcJq', '2025-07-13 13:19:30', '2025-07-13 13:19:30'),
(27, 'Ms. Maybelle Williamson', '01414138683', '75459628', 'mohr.naomie@gmail.com', '1973-04-19 22:39:07', '$2y$12$DUm9CY1ZdU/wexfbku0Bwevrq6nkDzevyglUOHyB6j7S0P8IVBfFy', 'vJxTS4FdX0', '2025-07-13 13:19:30', '2025-07-13 13:19:30'),
(28, 'Dr. Kristina Weissnat', '01421921124', '20517182', 'effie14@yahoo.com', '1974-09-21 09:45:45', '$2y$12$DUm9CY1ZdU/wexfbku0Bwevrq6nkDzevyglUOHyB6j7S0P8IVBfFy', '0crwmRl1GI', '2025-07-13 13:19:30', '2025-07-13 13:19:30'),
(29, 'Eulalia Eichmann', '01535525325', '40885674', 'soreilly@gmail.com', '1985-03-14 10:58:56', '$2y$12$DUm9CY1ZdU/wexfbku0Bwevrq6nkDzevyglUOHyB6j7S0P8IVBfFy', 'dxhXKMZ1ZI', '2025-07-13 13:19:30', '2025-07-13 13:19:30'),
(30, 'Ike Baumbach', '01931360098', '71970950', 'fschaefer@yahoo.com', '1982-10-05 06:45:29', '$2y$12$DUm9CY1ZdU/wexfbku0Bwevrq6nkDzevyglUOHyB6j7S0P8IVBfFy', 'YOFvSzeDzP', '2025-07-13 13:19:30', '2025-07-13 13:19:30'),
(31, 'Ms. Lorna Gottlieb DDS', '01923678613', '20959586', 'awuckert@gmail.com', '1998-04-04 23:47:04', '$2y$12$DUm9CY1ZdU/wexfbku0Bwevrq6nkDzevyglUOHyB6j7S0P8IVBfFy', 'EpxWSGI1ON', '2025-07-13 13:19:30', '2025-07-13 13:19:30'),
(32, 'Dr. Jorge Gulgowski', '01648451246', '99295325', 'marilie.rempel@yahoo.com', '2021-03-16 17:42:53', '$2y$12$DUm9CY1ZdU/wexfbku0Bwevrq6nkDzevyglUOHyB6j7S0P8IVBfFy', 'QcQ62e82ZB', '2025-07-13 13:19:30', '2025-07-13 13:19:30'),
(33, 'Mr. Eladio Harvey', '01422383327', '37833619', 'kwolf@hotmail.com', '1979-07-07 12:19:51', '$2y$12$DUm9CY1ZdU/wexfbku0Bwevrq6nkDzevyglUOHyB6j7S0P8IVBfFy', 'DGCBIWStSl', '2025-07-13 13:19:30', '2025-07-13 13:19:30'),
(34, 'Easton Effertz III', '01648051293', '98881086', 'ansel.hauck@hotmail.com', '1979-04-15 01:21:36', '$2y$12$DUm9CY1ZdU/wexfbku0Bwevrq6nkDzevyglUOHyB6j7S0P8IVBfFy', 'WrPhJDs3Et', '2025-07-13 13:19:30', '2025-07-13 13:19:30'),
(35, 'Mason Legros', '01768840501', '04109204', 'botsford.stephan@yahoo.com', '1995-08-07 21:46:04', '$2y$12$DUm9CY1ZdU/wexfbku0Bwevrq6nkDzevyglUOHyB6j7S0P8IVBfFy', '0aBBX4PgDA', '2025-07-13 13:19:30', '2025-07-13 13:19:30'),
(36, 'Kevon Hermiston', '01525191943', '55940603', 'breitenberg.norene@yahoo.com', '1995-02-21 07:35:02', '$2y$12$DUm9CY1ZdU/wexfbku0Bwevrq6nkDzevyglUOHyB6j7S0P8IVBfFy', 'hKaZu5OErd', '2025-07-13 13:19:30', '2025-07-13 13:19:30'),
(37, 'Mr. Justice Mraz PhD', '01763473155', '89428535', 'trantow.winston@hotmail.com', '2016-05-17 20:10:35', '$2y$12$DUm9CY1ZdU/wexfbku0Bwevrq6nkDzevyglUOHyB6j7S0P8IVBfFy', 'cfbwfwotVo', '2025-07-13 13:19:30', '2025-07-13 13:19:30'),
(38, 'Celestine Moore', '01912054688', '21116599', 'kyle25@hotmail.com', '2013-07-29 04:35:58', '$2y$12$DUm9CY1ZdU/wexfbku0Bwevrq6nkDzevyglUOHyB6j7S0P8IVBfFy', 'SDHtezt1Bj', '2025-07-13 13:19:30', '2025-07-13 13:19:30'),
(39, 'Prof. Evans Rodriguez', '01445165375', '77343703', 'dortha.hermiston@yahoo.com', '1974-10-13 02:10:33', '$2y$12$DUm9CY1ZdU/wexfbku0Bwevrq6nkDzevyglUOHyB6j7S0P8IVBfFy', 'byWz3zAuYK', '2025-07-13 13:19:30', '2025-07-13 13:19:30'),
(40, 'Prof. Scottie Kihn', '01539036438', '76672781', 'brandon.hackett@hotmail.com', '2022-05-04 14:27:02', '$2y$12$DUm9CY1ZdU/wexfbku0Bwevrq6nkDzevyglUOHyB6j7S0P8IVBfFy', 'x4LqO3k6J6', '2025-07-13 13:19:30', '2025-07-13 13:19:30'),
(41, 'Mona Altenwerth', '01867302369', '04413363', 'shany.cremin@gmail.com', '2022-05-16 22:43:24', '$2y$12$DUm9CY1ZdU/wexfbku0Bwevrq6nkDzevyglUOHyB6j7S0P8IVBfFy', 'G7DR2NL9bB', '2025-07-13 13:19:30', '2025-07-13 13:19:30'),
(42, 'Ryleigh Nikolaus', '01972247396', '99455118', 'wisoky.ed@hotmail.com', '1982-11-07 22:45:08', '$2y$12$DUm9CY1ZdU/wexfbku0Bwevrq6nkDzevyglUOHyB6j7S0P8IVBfFy', 'sTPT3vMhW0', '2025-07-13 13:19:30', '2025-07-13 13:19:30'),
(43, 'Thomas Von Jr.', '01300063838', '04232445', 'oswaldo.nitzsche@yahoo.com', '1991-10-17 18:03:30', '$2y$12$DUm9CY1ZdU/wexfbku0Bwevrq6nkDzevyglUOHyB6j7S0P8IVBfFy', 'xSQmuLyfF8', '2025-07-13 13:19:30', '2025-07-13 13:19:30'),
(44, 'Maria Gorczany', '01930541504', '66065876', 'dkulas@gmail.com', '2022-03-21 09:32:38', '$2y$12$DUm9CY1ZdU/wexfbku0Bwevrq6nkDzevyglUOHyB6j7S0P8IVBfFy', 'IA7DrvCzIh', '2025-07-13 13:19:30', '2025-07-13 13:19:30'),
(45, 'Mr. Dangelo Emard', '01593966658', '14568916', 'alisa.beatty@gmail.com', '1979-04-01 00:48:00', '$2y$12$DUm9CY1ZdU/wexfbku0Bwevrq6nkDzevyglUOHyB6j7S0P8IVBfFy', 'MUdi4wZdTa', '2025-07-13 13:19:30', '2025-07-13 13:19:30'),
(46, 'Sincere Rath', '01906433543', '68038823', 'walker70@hotmail.com', '1988-09-20 23:09:28', '$2y$12$DUm9CY1ZdU/wexfbku0Bwevrq6nkDzevyglUOHyB6j7S0P8IVBfFy', 'g3cjyqmKAq', '2025-07-13 13:19:30', '2025-07-13 13:19:30'),
(47, 'Mrs. Jenifer Bergnaum MD', '01674570140', '91657251', 'alexandra68@gmail.com', '1981-04-05 16:55:20', '$2y$12$DUm9CY1ZdU/wexfbku0Bwevrq6nkDzevyglUOHyB6j7S0P8IVBfFy', 'pMb4McJARL', '2025-07-13 13:19:30', '2025-07-13 13:19:30'),
(48, 'Prof. Steve Hessel III', '01852309533', '74409136', 'zechariah.farrell@yahoo.com', '1993-06-12 05:08:31', '$2y$12$DUm9CY1ZdU/wexfbku0Bwevrq6nkDzevyglUOHyB6j7S0P8IVBfFy', 'A31KZm493x', '2025-07-13 13:19:30', '2025-07-13 13:19:30'),
(49, 'Arlene Hilpert', '01877188212', '97674306', 'travon.kassulke@gmail.com', '1980-05-16 01:06:18', '$2y$12$DUm9CY1ZdU/wexfbku0Bwevrq6nkDzevyglUOHyB6j7S0P8IVBfFy', 'gKgSfgHt56', '2025-07-13 13:19:30', '2025-07-13 13:19:30'),
(50, 'Mrs. Zoe Feeney Jr.', '01718682731', '43157273', 'bill48@yahoo.com', '1983-07-27 02:30:16', '$2y$12$DUm9CY1ZdU/wexfbku0Bwevrq6nkDzevyglUOHyB6j7S0P8IVBfFy', 'KuetdTbmDJ', '2025-07-13 13:19:30', '2025-07-13 13:19:30'),
(51, 'Georgette Kuphal', '01479489737', '41835616', 'hoppe.zula@yahoo.com', '1984-04-25 23:39:44', '$2y$12$DUm9CY1ZdU/wexfbku0Bwevrq6nkDzevyglUOHyB6j7S0P8IVBfFy', '8CSbkkRlbp', '2025-07-13 13:19:30', '2025-07-13 13:19:30'),
(52, 'Clarissa Rosenbaum', '01635570431', '19400655', 'laron18@gmail.com', '1992-08-15 08:33:06', '$2y$12$DUm9CY1ZdU/wexfbku0Bwevrq6nkDzevyglUOHyB6j7S0P8IVBfFy', 'vVcQJd6nqf', '2025-07-13 13:19:30', '2025-07-13 13:19:30'),
(53, 'Orrin Collins', '01789238943', '14682148', 'rgottlieb@hotmail.com', '1970-09-19 09:26:40', '$2y$12$DUm9CY1ZdU/wexfbku0Bwevrq6nkDzevyglUOHyB6j7S0P8IVBfFy', 'Vw6pyPha7a', '2025-07-13 13:19:30', '2025-07-13 13:19:30'),
(54, 'Verlie Blanda', '01477179937', '21484834', 'lakin.natalie@yahoo.com', '1995-12-08 18:29:19', '$2y$12$DUm9CY1ZdU/wexfbku0Bwevrq6nkDzevyglUOHyB6j7S0P8IVBfFy', 'UOS4aKcjJa', '2025-07-13 13:19:30', '2025-07-13 13:19:30'),
(55, 'Edward Powlowski', '01561378773', '33381183', 'carleton23@hotmail.com', '1971-01-13 23:28:48', '$2y$12$DUm9CY1ZdU/wexfbku0Bwevrq6nkDzevyglUOHyB6j7S0P8IVBfFy', '0K8zEoeNcC', '2025-07-13 13:19:30', '2025-07-13 13:19:30'),
(56, 'Prof. Maryjane Lindgren II', '01714866814', '13337636', 'william.durgan@gmail.com', '1979-10-25 02:51:16', '$2y$12$DUm9CY1ZdU/wexfbku0Bwevrq6nkDzevyglUOHyB6j7S0P8IVBfFy', 'dGwdqzpla3', '2025-07-13 13:19:30', '2025-07-13 13:19:30'),
(57, 'Prof. Frank Runolfsson V', '01664531106', '06045562', 'alex01@yahoo.com', '2008-09-06 17:03:11', '$2y$12$DUm9CY1ZdU/wexfbku0Bwevrq6nkDzevyglUOHyB6j7S0P8IVBfFy', 'KV9uabCbXk', '2025-07-13 13:19:30', '2025-07-13 13:19:30'),
(58, 'Dr. Brenden Bahringer', '01946052124', '95069630', 'jacobi.mercedes@gmail.com', '1975-02-11 01:29:31', '$2y$12$DUm9CY1ZdU/wexfbku0Bwevrq6nkDzevyglUOHyB6j7S0P8IVBfFy', '0cPjcMekub', '2025-07-13 13:19:30', '2025-07-13 13:19:30'),
(59, 'Christopher Cummings', '01520101299', '82658540', 'murazik.rylee@gmail.com', '2020-07-21 08:30:27', '$2y$12$DUm9CY1ZdU/wexfbku0Bwevrq6nkDzevyglUOHyB6j7S0P8IVBfFy', 'WkmNsNVu9Y', '2025-07-13 13:19:30', '2025-07-13 13:19:30'),
(60, 'Arch Thompson Jr.', '01772369821', '79771672', 'rozella89@yahoo.com', '1976-08-16 15:49:31', '$2y$12$DUm9CY1ZdU/wexfbku0Bwevrq6nkDzevyglUOHyB6j7S0P8IVBfFy', 'CHZyO8dOS7', '2025-07-13 13:19:30', '2025-07-13 13:19:30'),
(61, 'Prof. Brant Mann Sr.', '01335576273', '34150221', 'spencer.fritsch@gmail.com', '2018-04-02 13:11:22', '$2y$12$DUm9CY1ZdU/wexfbku0Bwevrq6nkDzevyglUOHyB6j7S0P8IVBfFy', 'FAcbgcXo9X', '2025-07-13 13:19:30', '2025-07-13 13:19:30'),
(62, 'Dr. Jaqueline Schowalter MD', '01547647718', '24374002', 'osenger@yahoo.com', '1983-10-22 05:28:06', '$2y$12$DUm9CY1ZdU/wexfbku0Bwevrq6nkDzevyglUOHyB6j7S0P8IVBfFy', 'lNpUQylMlN', '2025-07-13 13:19:30', '2025-07-13 13:19:30'),
(63, 'Burley Watsica', '01508007377', '65643112', 'patricia56@hotmail.com', '2019-03-16 22:36:10', '$2y$12$DUm9CY1ZdU/wexfbku0Bwevrq6nkDzevyglUOHyB6j7S0P8IVBfFy', 'QgkWuqgffn', '2025-07-13 13:19:30', '2025-07-13 13:19:30'),
(64, 'Dr. Maiya Hermiston II', '01449082647', '18770377', 'bhettinger@hotmail.com', '1982-11-17 22:03:19', '$2y$12$DUm9CY1ZdU/wexfbku0Bwevrq6nkDzevyglUOHyB6j7S0P8IVBfFy', 'QbyLNXDHPy', '2025-07-13 13:19:30', '2025-07-13 13:19:30'),
(65, 'Angie Bernhard', '01571792729', '06069681', 'gdubuque@gmail.com', '1971-02-27 04:29:44', '$2y$12$DUm9CY1ZdU/wexfbku0Bwevrq6nkDzevyglUOHyB6j7S0P8IVBfFy', 'XN2fik16HX', '2025-07-13 13:19:30', '2025-07-13 13:19:30'),
(66, 'Paige Corwin', '01321275746', '79032858', 'elva05@hotmail.com', '1982-02-18 10:14:52', '$2y$12$DUm9CY1ZdU/wexfbku0Bwevrq6nkDzevyglUOHyB6j7S0P8IVBfFy', 'k844Ax8HUw', '2025-07-13 13:19:30', '2025-07-13 13:19:30'),
(67, 'Dr. Antonetta Feeney', '01931631228', '20835651', 'qdurgan@yahoo.com', '2015-10-22 02:05:11', '$2y$12$DUm9CY1ZdU/wexfbku0Bwevrq6nkDzevyglUOHyB6j7S0P8IVBfFy', 'lKy9F5dUUG', '2025-07-13 13:19:30', '2025-07-13 13:19:30'),
(68, 'Mr. Reid Jakubowski V', '01732159363', '78704572', 'fstokes@gmail.com', '1993-09-08 02:51:03', '$2y$12$DUm9CY1ZdU/wexfbku0Bwevrq6nkDzevyglUOHyB6j7S0P8IVBfFy', 'QN0ThS6YQ3', '2025-07-13 13:19:30', '2025-07-13 13:19:30'),
(69, 'Prof. Angus Eichmann', '01735971672', '34596197', 'ariane88@hotmail.com', '2003-05-18 08:33:44', '$2y$12$DUm9CY1ZdU/wexfbku0Bwevrq6nkDzevyglUOHyB6j7S0P8IVBfFy', 'Lpb24FK5x0', '2025-07-13 13:19:30', '2025-07-13 13:19:30'),
(70, 'Maynard Jenkins', '01832136616', '03855294', 'torp.theresia@hotmail.com', '1978-07-02 18:19:59', '$2y$12$DUm9CY1ZdU/wexfbku0Bwevrq6nkDzevyglUOHyB6j7S0P8IVBfFy', 'wtimfjpd9P', '2025-07-13 13:19:30', '2025-07-13 13:19:30'),
(71, 'Prof. Cletus Hoeger Jr.', '01749186338', '11375296', 'larkin.linda@hotmail.com', '1985-12-18 13:57:23', '$2y$12$DUm9CY1ZdU/wexfbku0Bwevrq6nkDzevyglUOHyB6j7S0P8IVBfFy', 'ENIS0oGAlt', '2025-07-13 13:19:30', '2025-07-13 13:19:30'),
(72, 'Dr. Sophia Boehm Sr.', '01899938161', '58139134', 'dmraz@hotmail.com', '2010-03-10 14:36:58', '$2y$12$DUm9CY1ZdU/wexfbku0Bwevrq6nkDzevyglUOHyB6j7S0P8IVBfFy', 'v63VFZnkzc', '2025-07-13 13:19:30', '2025-07-13 13:19:30'),
(73, 'Reece Reichert Jr.', '01386584524', '95934860', 'albina65@yahoo.com', '2002-09-11 18:31:16', '$2y$12$DUm9CY1ZdU/wexfbku0Bwevrq6nkDzevyglUOHyB6j7S0P8IVBfFy', 'xo35HnXiWG', '2025-07-13 13:19:30', '2025-07-13 13:19:30'),
(74, 'Madelynn Osinski', '01375181338', '36459919', 'schuster.timmy@hotmail.com', '2008-07-20 23:08:29', '$2y$12$DUm9CY1ZdU/wexfbku0Bwevrq6nkDzevyglUOHyB6j7S0P8IVBfFy', 'Lc8y70ehc2', '2025-07-13 13:19:30', '2025-07-13 13:19:30'),
(75, 'Clovis Mante', '01691579270', '38271953', 'ydare@gmail.com', '2007-09-29 13:41:36', '$2y$12$DUm9CY1ZdU/wexfbku0Bwevrq6nkDzevyglUOHyB6j7S0P8IVBfFy', 'FMHRicimzQ', '2025-07-13 13:19:30', '2025-07-13 13:19:30'),
(76, 'Lyda Pollich', '01884324405', '70593068', 'omer77@gmail.com', '2017-03-14 10:41:56', '$2y$12$DUm9CY1ZdU/wexfbku0Bwevrq6nkDzevyglUOHyB6j7S0P8IVBfFy', 'MoybsmLyp5', '2025-07-13 13:19:30', '2025-07-13 13:19:30'),
(77, 'Mr. Moses Mraz', '01554501911', '56535181', 'wbrakus@yahoo.com', '1981-07-08 21:41:35', '$2y$12$DUm9CY1ZdU/wexfbku0Bwevrq6nkDzevyglUOHyB6j7S0P8IVBfFy', 'sdJdhK0eX4', '2025-07-13 13:19:30', '2025-07-13 13:19:30'),
(78, 'Prof. Ruben Dickens DVM', '01961567313', '34891445', 'albert.medhurst@yahoo.com', '2024-05-11 14:21:11', '$2y$12$DUm9CY1ZdU/wexfbku0Bwevrq6nkDzevyglUOHyB6j7S0P8IVBfFy', 'TpUqXxF8J2', '2025-07-13 13:19:30', '2025-07-13 13:19:30'),
(79, 'Mr. Emile Schamberger', '01825913705', '93014328', 'abelardo.oberbrunner@gmail.com', '2022-01-20 14:07:45', '$2y$12$DUm9CY1ZdU/wexfbku0Bwevrq6nkDzevyglUOHyB6j7S0P8IVBfFy', 'CRn7UzlG6Z', '2025-07-13 13:19:30', '2025-07-13 13:19:30'),
(80, 'Aurelio Stehr', '01536196630', '23293816', 'bgaylord@gmail.com', '1975-04-10 18:16:28', '$2y$12$DUm9CY1ZdU/wexfbku0Bwevrq6nkDzevyglUOHyB6j7S0P8IVBfFy', '2R05uj82Js', '2025-07-13 13:19:30', '2025-07-13 13:19:30'),
(81, 'Zella Stroman', '01711135548', '83057687', 'mhuels@yahoo.com', '1991-10-20 22:47:01', '$2y$12$DUm9CY1ZdU/wexfbku0Bwevrq6nkDzevyglUOHyB6j7S0P8IVBfFy', 'sri2xbXT5q', '2025-07-13 13:19:30', '2025-07-13 13:19:30'),
(82, 'Westley Schultz', '01580480938', '23916739', 'leanna.ankunding@yahoo.com', '1985-09-20 08:49:12', '$2y$12$DUm9CY1ZdU/wexfbku0Bwevrq6nkDzevyglUOHyB6j7S0P8IVBfFy', 'vkkhagHDLV', '2025-07-13 13:19:30', '2025-07-13 13:19:30'),
(83, 'Eleanore Herzog MD', '01896526057', '35685258', 'lonny.weber@yahoo.com', '1979-03-10 07:51:57', '$2y$12$DUm9CY1ZdU/wexfbku0Bwevrq6nkDzevyglUOHyB6j7S0P8IVBfFy', 'VjuFuzS6aK', '2025-07-13 13:19:30', '2025-07-13 13:19:30'),
(84, 'Miss Maryam Fay DVM', '01838158759', '98737819', 'cbreitenberg@hotmail.com', '1993-05-31 07:07:08', '$2y$12$DUm9CY1ZdU/wexfbku0Bwevrq6nkDzevyglUOHyB6j7S0P8IVBfFy', '4XJR9eHlyS', '2025-07-13 13:19:30', '2025-07-13 13:19:30'),
(85, 'Selmer Upton', '01579728621', '36040759', 'aurelia57@hotmail.com', '2019-05-10 17:53:12', '$2y$12$DUm9CY1ZdU/wexfbku0Bwevrq6nkDzevyglUOHyB6j7S0P8IVBfFy', 'jjQ4grGl8a', '2025-07-13 13:19:30', '2025-07-13 13:19:30'),
(86, 'Aniyah Weimann', '01729879144', '45637605', 'destiney62@gmail.com', '1970-08-06 13:33:40', '$2y$12$DUm9CY1ZdU/wexfbku0Bwevrq6nkDzevyglUOHyB6j7S0P8IVBfFy', 'kxNA5EErV3', '2025-07-13 13:19:30', '2025-07-13 13:19:30'),
(87, 'Dr. Teresa DuBuque III', '01405203505', '55001557', 'domenico82@yahoo.com', '1998-07-10 13:04:55', '$2y$12$DUm9CY1ZdU/wexfbku0Bwevrq6nkDzevyglUOHyB6j7S0P8IVBfFy', 'z1LN1mkP33', '2025-07-13 13:19:30', '2025-07-13 13:19:30'),
(88, 'Marcelina Considine', '01624068710', '38970108', 'tdavis@gmail.com', '1991-08-28 01:19:25', '$2y$12$DUm9CY1ZdU/wexfbku0Bwevrq6nkDzevyglUOHyB6j7S0P8IVBfFy', 'yNte1qt2f7', '2025-07-13 13:19:30', '2025-07-13 13:19:30'),
(89, 'Berry Boyer', '01710479896', '97598022', 'bethany17@yahoo.com', '2005-06-19 16:47:24', '$2y$12$DUm9CY1ZdU/wexfbku0Bwevrq6nkDzevyglUOHyB6j7S0P8IVBfFy', '8kfwoJ48wm', '2025-07-13 13:19:30', '2025-07-13 13:19:30'),
(90, 'Shania Batz', '01446900340', '17220194', 'dbahringer@hotmail.com', '2003-01-10 18:41:12', '$2y$12$DUm9CY1ZdU/wexfbku0Bwevrq6nkDzevyglUOHyB6j7S0P8IVBfFy', '3eod4PYFH8', '2025-07-13 13:19:30', '2025-07-13 13:19:30'),
(91, 'Prof. Jamie Prosacco IV', '01551916527', '11095712', 'istokes@gmail.com', '2009-08-11 09:31:40', '$2y$12$DUm9CY1ZdU/wexfbku0Bwevrq6nkDzevyglUOHyB6j7S0P8IVBfFy', 'yGlswGURDf', '2025-07-13 13:19:30', '2025-07-13 13:19:30'),
(92, 'Americo Bayer', '01784748645', '43895113', 'juston.connelly@hotmail.com', '1993-05-28 16:23:11', '$2y$12$DUm9CY1ZdU/wexfbku0Bwevrq6nkDzevyglUOHyB6j7S0P8IVBfFy', 'R7T5IHnINo', '2025-07-13 13:19:30', '2025-07-13 13:19:30'),
(93, 'Anissa Macejkovic', '01462562799', '74903061', 'gbuckridge@yahoo.com', '2010-02-17 02:08:23', '$2y$12$DUm9CY1ZdU/wexfbku0Bwevrq6nkDzevyglUOHyB6j7S0P8IVBfFy', '7of0HRx8yu', '2025-07-13 13:19:30', '2025-07-13 13:19:30'),
(94, 'Antone Jacobson', '01632126211', '42197348', 'obie78@yahoo.com', '2017-11-07 16:16:58', '$2y$12$DUm9CY1ZdU/wexfbku0Bwevrq6nkDzevyglUOHyB6j7S0P8IVBfFy', 'SDZAk8kEF0', '2025-07-13 13:19:30', '2025-07-13 13:19:30'),
(95, 'Lamont Streich Sr.', '01762105217', '78881778', 'schroeder.ryan@gmail.com', '1978-11-21 19:50:04', '$2y$12$DUm9CY1ZdU/wexfbku0Bwevrq6nkDzevyglUOHyB6j7S0P8IVBfFy', 'lyri4i0anc', '2025-07-13 13:19:30', '2025-07-13 13:19:30'),
(96, 'Troy Monahan', '01709826953', '99553623', 'fhettinger@yahoo.com', '1994-05-16 22:17:15', '$2y$12$DUm9CY1ZdU/wexfbku0Bwevrq6nkDzevyglUOHyB6j7S0P8IVBfFy', 'lt64xThhdr', '2025-07-13 13:19:30', '2025-07-13 13:19:30'),
(97, 'Maymie Purdy', '01421606700', '86655347', 'jamie.nitzsche@hotmail.com', '2022-12-27 01:55:18', '$2y$12$DUm9CY1ZdU/wexfbku0Bwevrq6nkDzevyglUOHyB6j7S0P8IVBfFy', 'qQfxb8EoZF', '2025-07-13 13:19:30', '2025-07-13 13:19:30'),
(98, 'Dr. Stephanie Hodkiewicz', '01332051445', '44719784', 'else.hodkiewicz@hotmail.com', '1989-06-06 16:08:02', '$2y$12$DUm9CY1ZdU/wexfbku0Bwevrq6nkDzevyglUOHyB6j7S0P8IVBfFy', 'Jr360OLtXr', '2025-07-13 13:19:30', '2025-07-13 13:19:30'),
(99, 'Adeline Treutel', '01379583121', '93836524', 'borer.dawn@yahoo.com', '1980-11-25 00:43:05', '$2y$12$DUm9CY1ZdU/wexfbku0Bwevrq6nkDzevyglUOHyB6j7S0P8IVBfFy', 'tNmtm0Wkh2', '2025-07-13 13:19:30', '2025-07-13 13:19:30'),
(100, 'Mark Emard III', '01783384073', '92519497', 'berenice23@hotmail.com', '1989-09-03 06:57:23', '$2y$12$DUm9CY1ZdU/wexfbku0Bwevrq6nkDzevyglUOHyB6j7S0P8IVBfFy', 'N2G4WSohak', '2025-07-13 13:19:30', '2025-07-13 13:19:30'),
(101, 'Loren Wyman', '01998013432', '46086419', 'casper.hegmann@gmail.com', '2011-02-19 19:52:30', '$2y$12$DUm9CY1ZdU/wexfbku0Bwevrq6nkDzevyglUOHyB6j7S0P8IVBfFy', '602vo3Y62E', '2025-07-13 13:19:30', '2025-07-13 13:19:30'),
(102, 'Test User', '01592084261', '15501769', 'test@example.com', '2004-09-13 15:58:29', '$2y$12$DUm9CY1ZdU/wexfbku0Bwevrq6nkDzevyglUOHyB6j7S0P8IVBfFy', 'hkLSomsRpu', '2025-07-13 13:19:30', '2025-07-13 13:19:30');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `catagories`
--
ALTER TABLE `catagories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `catagories_user_id_foreign` (`user_id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `customers_user_id_foreign` (`user_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `invoices`
--
ALTER TABLE `invoices`
  ADD PRIMARY KEY (`id`),
  ADD KEY `invoices_user_id_foreign` (`user_id`),
  ADD KEY `invoices_customer_id_foreign` (`customer_id`);

--
-- Indexes for table `invoice_products`
--
ALTER TABLE `invoice_products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `invoice_products_invoice_id_foreign` (`invoice_id`),
  ADD KEY `invoice_products_product_id_foreign` (`product_id`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_user_id_foreign` (`user_id`),
  ADD KEY `products_catagory_id_foreign` (`catagory_id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `catagories`
--
ALTER TABLE `catagories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `invoices`
--
ALTER TABLE `invoices`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `invoice_products`
--
ALTER TABLE `invoice_products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=103;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `catagories`
--
ALTER TABLE `catagories`
  ADD CONSTRAINT `catagories_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `customers`
--
ALTER TABLE `customers`
  ADD CONSTRAINT `customers_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `invoices`
--
ALTER TABLE `invoices`
  ADD CONSTRAINT `invoices_customer_id_foreign` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `invoices_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `invoice_products`
--
ALTER TABLE `invoice_products`
  ADD CONSTRAINT `invoice_products_invoice_id_foreign` FOREIGN KEY (`invoice_id`) REFERENCES `invoices` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `invoice_products_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_catagory_id_foreign` FOREIGN KEY (`catagory_id`) REFERENCES `catagories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `products_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
