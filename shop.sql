-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 25, 2023 at 05:02 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shop`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `slug` varchar(191) NOT NULL,
  `description` text NOT NULL,
  `image` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `description`, `image`, `created_at`, `updated_at`) VALUES
(1, 'Electricals', 'Electricals', 'Electricals category', 'files/photo1.jpeg', '2020-02-29 23:11:37', '2020-02-29 23:11:37'),
(2, 'Plumbing', 'Plumbing', 'Plumbing category', 'public/files/oAZt13oHOTKq8P9zjEfpfpdk4Vf5RW1LI6hRV5ZR.jpeg', '2020-02-29 23:11:37', '2020-04-14 19:29:13'),
(3, 'Outdoor', 'Outdoor', 'Outdoor category', 'public/files/eacyM4enlKvmILnONuHCuoDdnaoougmIV6EbJuwx.jpeg', '2020-02-29 23:11:37', '2020-04-14 19:29:53'),
(5, 'fsfdsffds', 'fsfdsffds', 'ewrewrewew', 'public/files/yuuleSZ9nbozMPVFodovAePpU3EtKJsD89vD2kpZ.jpeg', '2023-08-25 09:15:43', '2023-08-25 09:15:43');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2020_01_24_094458_create_categories_table', 1),
(5, '2020_01_25_092002_create_subcategories_table', 1),
(6, '2020_01_30_115511_create_products_table', 1),
(7, '2020_03_11_102436_create_orders_table', 2),
(8, '2020_03_14_044807_create_sliders_table', 3),
(9, '2020_03_29_104736_create_sliders_table', 4),
(10, '2020_04_13_231824_add_status_to_orders_table', 5);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `cart` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `cart`, `created_at`, `updated_at`) VALUES
(14, 6, 'O:8:\"App\\Cart\":3:{s:5:\"items\";a:3:{i:4;a:5:{s:2:\"id\";i:4;s:4:\"name\";s:12:\"mobile phone\";s:5:\"price\";s:3:\"700\";s:3:\"qty\";i:1;s:5:\"image\";s:60:\"public/product/BCalVvWpyRtsE5qo6AYoGYaxEFFSi4PstWJL9bn1.jpeg\";}i:6;a:5:{s:2:\"id\";i:6;s:4:\"name\";s:15:\"Lenovo ThinkPad\";s:5:\"price\";s:3:\"777\";s:3:\"qty\";i:1;s:5:\"image\";s:60:\"public/product/xa6HX9dvWxo1ZT0lGebO8PtWmg8NKEauvJHC4PjX.jpeg\";}i:7;a:5:{s:2:\"id\";i:7;s:4:\"name\";s:20:\"HP Pavilion x360 14m\";s:5:\"price\";s:3:\"988\";s:3:\"qty\";i:1;s:5:\"image\";s:60:\"public/product/vJPNnJohM5f1OSzghA6O7qtZLBEi8QmHkgroxkZh.jpeg\";}}s:8:\"totalQty\";i:3;s:10:\"totalPrice\";i:2465;}', '2020-03-28 17:12:21', '2020-03-28 17:12:21'),
(15, 5, 'O:8:\"App\\Cart\":3:{s:5:\"items\";a:1:{i:6;a:5:{s:2:\"id\";i:6;s:4:\"name\";s:15:\"Lenovo ThinkPad\";s:5:\"price\";s:3:\"777\";s:3:\"qty\";i:1;s:5:\"image\";s:60:\"public/product/xa6HX9dvWxo1ZT0lGebO8PtWmg8NKEauvJHC4PjX.jpeg\";}}s:8:\"totalQty\";i:1;s:10:\"totalPrice\";i:777;}', '2020-04-13 12:24:57', '2020-04-13 12:24:57'),
(16, 1, 'O:8:\"App\\Cart\":3:{s:5:\"items\";a:1:{i:6;a:5:{s:2:\"id\";i:6;s:4:\"name\";s:15:\"Lenovo ThinkPad\";s:5:\"price\";s:3:\"777\";s:3:\"qty\";i:1;s:5:\"image\";s:60:\"public/product/xa6HX9dvWxo1ZT0lGebO8PtWmg8NKEauvJHC4PjX.jpeg\";}}s:8:\"totalQty\";i:1;s:10:\"totalPrice\";i:777;}', '2020-04-13 13:22:25', '2020-04-13 13:22:25'),
(17, 1, 'O:8:\"App\\Cart\":3:{s:5:\"items\";a:2:{i:1;a:5:{s:2:\"id\";i:1;s:4:\"name\";s:11:\"HP LAPTOPS \";s:5:\"price\";s:3:\"877\";s:3:\"qty\";i:1;s:5:\"image\";s:53:\"product/yyO8bETsNup8nECU8sF0d7VBeRVbkEiQWthswpHP.jpeg\";}i:7;a:5:{s:2:\"id\";i:7;s:4:\"name\";s:20:\"HP Pavilion x360 14m\";s:5:\"price\";s:3:\"988\";s:3:\"qty\";i:1;s:5:\"image\";s:60:\"public/product/vJPNnJohM5f1OSzghA6O7qtZLBEi8QmHkgroxkZh.jpeg\";}}s:8:\"totalQty\";i:2;s:10:\"totalPrice\";i:1865;}', '2020-04-13 13:36:04', '2020-04-13 13:36:04'),
(18, 1, 'O:8:\"App\\Cart\":3:{s:5:\"items\";a:2:{i:4;a:5:{s:2:\"id\";i:4;s:4:\"name\";s:12:\"mobile phone\";s:5:\"price\";s:3:\"700\";s:3:\"qty\";i:1;s:5:\"image\";s:60:\"public/product/BCalVvWpyRtsE5qo6AYoGYaxEFFSi4PstWJL9bn1.jpeg\";}i:7;a:5:{s:2:\"id\";i:7;s:4:\"name\";s:20:\"HP Pavilion x360 14m\";s:5:\"price\";s:3:\"988\";s:3:\"qty\";i:1;s:5:\"image\";s:60:\"public/product/vJPNnJohM5f1OSzghA6O7qtZLBEi8QmHkgroxkZh.jpeg\";}}s:8:\"totalQty\";i:2;s:10:\"totalPrice\";i:1688;}', '2020-04-13 13:44:03', '2020-04-13 13:44:03'),
(19, 1, 'O:8:\"App\\Cart\":3:{s:5:\"items\";a:1:{i:3;a:5:{s:2:\"id\";i:3;s:4:\"name\";s:14:\"LENOVO LAPTOPS\";s:5:\"price\";s:3:\"827\";s:3:\"qty\";i:1;s:5:\"image\";s:60:\"public/product/tLV4CHocTJmpnKMGxwSquuHn2gCGu4K1FV2yTwM0.jpeg\";}}s:8:\"totalQty\";i:1;s:10:\"totalPrice\";i:827;}', '2020-04-14 19:44:45', '2020-04-14 19:44:45'),
(20, 1, 'O:8:\"App\\Cart\":3:{s:5:\"items\";a:2:{i:10;a:5:{s:2:\"id\";i:10;s:4:\"name\";s:38:\"Samsung 32\" N5300 FULL HD Smart LED TV\";s:5:\"price\";s:3:\"800\";s:3:\"qty\";s:1:\"2\";s:5:\"image\";s:60:\"public/product/AphmHvZqptXcWInis3rVlulI8F9koIDsgTXLv8lC.jpeg\";}i:8;a:5:{s:2:\"id\";i:8;s:4:\"name\";s:38:\"LG screen 55″ ULTRA HD Commercial TV\";s:5:\"price\";s:4:\"1400\";s:3:\"qty\";i:1;s:5:\"image\";s:60:\"public/product/3EoIljUSDxgWzfZz32C8RElXwJusHu6X8JONmjlZ.jpeg\";}}s:8:\"totalQty\";i:3;s:10:\"totalPrice\";i:3000;}', '2020-04-14 19:54:31', '2020-04-14 19:54:31'),
(21, 6, 'O:8:\"App\\Cart\":3:{s:5:\"items\";a:1:{i:8;a:5:{s:2:\"id\";i:8;s:4:\"name\";s:38:\"LG screen 55″ ULTRA HD Commercial TV\";s:5:\"price\";s:4:\"1400\";s:3:\"qty\";i:2;s:5:\"image\";s:60:\"public/product/3EoIljUSDxgWzfZz32C8RElXwJusHu6X8JONmjlZ.jpeg\";}}s:8:\"totalQty\";i:2;s:10:\"totalPrice\";i:2800;}', '2020-04-15 03:02:04', '2020-04-15 03:02:04'),
(22, 6, 'O:8:\"App\\Cart\":3:{s:5:\"items\";a:3:{i:8;a:5:{s:2:\"id\";i:8;s:4:\"name\";s:38:\"LG screen 55″ ULTRA HD Commercial TV\";s:5:\"price\";s:4:\"1400\";s:3:\"qty\";s:1:\"1\";s:5:\"image\";s:60:\"public/product/3EoIljUSDxgWzfZz32C8RElXwJusHu6X8JONmjlZ.jpeg\";}i:1;a:5:{s:2:\"id\";i:1;s:4:\"name\";s:11:\"HP LAPTOPS \";s:5:\"price\";s:3:\"877\";s:3:\"qty\";i:1;s:5:\"image\";s:53:\"product/yyO8bETsNup8nECU8sF0d7VBeRVbkEiQWthswpHP.jpeg\";}i:7;a:5:{s:2:\"id\";i:7;s:4:\"name\";s:20:\"HP Pavilion x360 14m\";s:5:\"price\";s:3:\"988\";s:3:\"qty\";i:1;s:5:\"image\";s:60:\"public/product/vJPNnJohM5f1OSzghA6O7qtZLBEi8QmHkgroxkZh.jpeg\";}}s:8:\"totalQty\";i:3;s:10:\"totalPrice\";i:3265;}', '2020-04-15 03:08:18', '2020-04-15 03:08:18');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) NOT NULL,
  `token` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `image` varchar(191) NOT NULL,
  `price` varchar(191) NOT NULL,
  `description` text NOT NULL,
  `additional_info` text NOT NULL,
  `category_id` int(11) NOT NULL,
  `subcategory_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `image`, `price`, `description`, `additional_info`, `category_id`, `subcategory_id`, `created_at`, `updated_at`) VALUES
(1, 'Kitchen Sink Combos', 'product/yyO8bETsNup8nECU8sF0d7VBeRVbkEiQWthswpHP.jpeg', '877', 'This is the description of a product', 'This is additional info', 1, 1, '2020-02-29 23:11:37', '2020-02-29 23:11:37'),
(3, 'Food Service faucets', 'public/product/tLV4CHocTJmpnKMGxwSquuHn2gCGu4K1FV2yTwM0.jpeg', '827', 'This is the description of a product', 'This is additional info', 1, 3, '2020-02-29 23:11:37', '2020-03-02 22:28:51'),
(4, 'Shower Doors', 'public/product/BCalVvWpyRtsE5qo6AYoGYaxEFFSi4PstWJL9bn1.jpeg', '700', 'This is a mobile phone', '<p>This is a mobile phone<br></p>', 2, 4, '2020-02-29 23:32:36', '2020-02-29 23:32:36'),
(5, 'Commercial Toilets', 'public/product/iPhZNz1Fy9dYxAawNtVOspXvpTWvc28nFMwDTG7a.jpeg', '799', 'this is laptop', '<p>This is a mobile phone<br></p>', 1, 2, '2020-02-29 23:33:16', '2020-02-29 23:33:16'),
(11, 'Abubakar', 'public/product/bsnMC8H7J3WWJIXHpcMXia3PyGsPViLwnQUcYwRB.png', '32432', 'dsadsad', '<p>eweqwewqe</p>', 2, 5, '2023-08-25 09:12:56', '2023-08-25 09:12:56');

-- --------------------------------------------------------

--
-- Table structure for table `product_user`
--

CREATE TABLE `product_user` (
  `id` int(1) NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `created_at` date NOT NULL,
  `updated_at` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sliders`
--

CREATE TABLE `sliders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sliders`
--

INSERT INTO `sliders` (`id`, `image`, `created_at`, `updated_at`) VALUES
(6, 'public/product/pUlNex2z4GVVhAdvrZI5hkMqiCoPONvp79z7Jdg1.jpeg', '2020-03-29 00:31:26', '2020-03-29 00:31:26'),
(7, 'public/product/lBqWKAU1xAnp3h7PRefiCY5uhoz7L4r2rOz4xjre.jpeg', '2020-03-29 00:31:33', '2020-03-29 00:31:33'),
(8, 'public/product/d2R4ATrRRPzEzUYLPECmVxBfXdML972jCbMSnTDN.jpeg', '2020-03-29 00:31:39', '2020-03-29 00:31:39');

-- --------------------------------------------------------

--
-- Table structure for table `subcategories`
--

CREATE TABLE `subcategories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` int(11) NOT NULL,
  `name` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `subcategories`
--

INSERT INTO `subcategories` (`id`, `category_id`, `name`, `created_at`, `updated_at`) VALUES
(1, 1, 'dell', '2020-02-29 23:11:37', '2020-02-29 23:11:37'),
(2, 1, 'hp', '2020-02-29 23:11:37', '2020-02-29 23:11:37'),
(3, 1, 'lenovo', '2020-02-29 23:11:37', '2020-02-29 23:11:37'),
(4, 2, 'samsungs10', NULL, NULL),
(5, 2, 'iphone8', NULL, NULL),
(6, 4, 'lgs', '2020-04-14 19:41:28', '2020-04-14 19:41:28'),
(7, 4, 'sony', '2020-04-14 19:41:34', '2020-04-14 19:41:34'),
(8, 2, 'XZsads', '2023-08-25 09:43:25', '2023-08-25 09:43:25');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `email` varchar(191) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) NOT NULL,
  `is_admin` int(11) NOT NULL DEFAULT 0,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `is_admin`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'LaraAdmin', 'admin@gmail.com', '2020-02-29 23:11:37', '$2y$10$3t/OvPGC.7DPezsOn7Y1Fug3VELpjgQ1YyVy7AgBcR29beZAvD8FS', 1, NULL, '2020-02-29 23:11:37', '2020-02-29 23:11:37'),
(2, 'apple', 'apple@gmail.com', NULL, '$2y$10$4fKTWcco9vLB53KpX.BAcOqyVPEJ9r6DTHQiirZI1T0IooxxdRwKq', 0, NULL, '2020-03-09 21:53:06', '2020-03-09 21:53:06'),
(4, 'rank', 'ranj@gmail.com', NULL, '$2y$10$NRPD3LKo0ox0.cp61neilubauigXjMi.qXSfpT/JEMiR17NUoNOH2', 0, NULL, '2020-03-10 23:24:06', '2020-03-10 23:24:06'),
(5, 'ranj', 'ranjit@gmail.com', NULL, '$2y$10$4ctqos5t9UIgfqCzAlGsmeC1KnHgJsyojC0G0l4M.YRtzPFnce7cm', 0, NULL, '2020-03-28 13:16:38', '2020-03-28 13:16:38'),
(6, 'RANJIT', 'ranjitkarki2@gmail.com', NULL, '$2y$10$zStsC3mGw487pGA9I2Bck.T6C.REAgdaL6dXbRwenn7Ii8hXI7rFi', 0, NULL, '2020-03-28 14:43:56', '2020-03-28 14:43:56'),
(7, 'Abubakar', 'ab@un.org', NULL, '$2y$10$54.k8a9J7Yzsb2L13e6nIuspCs6OzDdt2oSU0viDEFd.GjjVmL.r6', 1, NULL, '2023-08-24 20:31:38', '2023-08-24 20:31:38'),
(8, 'Omar', 'ao@un.org', NULL, '$2y$10$VdQcnFyJ08mmlWn3vSN6Zem1M/ItBAkndH239gpBHD2E7z7d7icBK', 0, NULL, '2023-08-24 22:10:50', '2023-08-24 22:10:50');

--
-- Indexes for dumped tables
--

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
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_user`
--
ALTER TABLE `product_user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sliders`
--
ALTER TABLE `sliders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subcategories`
--
ALTER TABLE `subcategories`
  ADD PRIMARY KEY (`id`);

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `product_user`
--
ALTER TABLE `product_user`
  MODIFY `id` int(1) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `subcategories`
--
ALTER TABLE `subcategories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
