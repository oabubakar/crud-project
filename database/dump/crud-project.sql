-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 27, 2022 at 02:24 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `crud-project`
--

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`id`, `name`, `created_at`, `updated_at`) VALUES
(2, 'Kenya', '2022-08-26 09:01:48', '2022-08-26 09:01:48'),
(3, 'Uganda', '2022-08-26 16:29:15', '2022-08-26 16:29:15'),
(5, 'Albania', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(6, 'Romania', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(7, 'Brazil', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(8, 'Panama', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(9, 'Comoros', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(10, 'Costa Rica', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(11, 'Dominican Republic', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(12, 'Egypt', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(13, 'Morocco', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(14, 'Ghana', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(15, 'Sudan', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(16, 'Honduras', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(17, 'Jordan', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(18, 'Madagascar', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(19, 'Malaysia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(20, 'Mauritania', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(21, 'Maldives', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(22, 'Mauritius', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(23, 'Mongolia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(24, 'Montenegro', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(25, 'Myanmar', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(26, 'Nepal', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(27, 'Niger', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(28, 'Pakistan', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(29, 'Palestine', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(30, 'Serbia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(31, 'Southern Sudan', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(32, 'Swaziland', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(33, 'Tonga', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(34, 'Tanzania', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(35, 'Zimbabwe', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_100000_create_password_resets_table', 1),
(2, '2019_08_19_000000_create_failed_jobs_table', 1),
(3, '2020_10_10_131014_create_games_table', 1),
(4, '2022_08_26_105313_create_statuses_table', 1),
(5, '2022_08_26_105335_create_countries_table', 1),
(6, '2022_08_26_105357_create_offices_table', 1),
(7, '2022_08_26_105441_create_readiness_types_table', 1),
(8, '2022_08_26_108902_create_projects_table', 1),
(9, '2022_08_30_000000_create_users_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `offices`
--

CREATE TABLE `offices` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `offices`
--

INSERT INTO `offices` (`id`, `name`, `created_at`, `updated_at`) VALUES
(2, 'Europe Office', '2022-08-26 11:26:18', '2022-08-26 11:26:18'),
(3, 'Economy Division', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(23, 'Ecosystems', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(24, 'Latin America Office', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(25, 'CTCN', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(26, 'West Asia Office', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(27, 'Asia Pacific Office', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(28, 'Africa Office', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(29, 'Policy & Programme Division', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `projects`
--

CREATE TABLE `projects` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `project_ref` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `grant_amount` int(11) NOT NULL,
  `date_from_gcf` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `start_date` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `duration` int(11) NOT NULL,
  `end_date` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `readiness_or_nap` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `first_disbursement_amount` int(11) NOT NULL,
  `country_id` bigint(20) UNSIGNED NOT NULL,
  `status_id` bigint(20) UNSIGNED NOT NULL,
  `office_id` bigint(20) UNSIGNED NOT NULL,
  `readiness_type_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `projects`
--

INSERT INTO `projects` (`id`, `project_ref`, `title`, `grant_amount`, `date_from_gcf`, `start_date`, `duration`, `end_date`, `readiness_or_nap`, `first_disbursement_amount`, `country_id`, `status_id`, `office_id`, `readiness_type_id`, `created_at`, `updated_at`) VALUES
(1, 'ALB-RS-001', 'Readiness support to Albania', 300000, '15/11/2016', '30/08/2016', 12, '30/08/2017', '12', 147500, 5, 2, 2, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(7, 'BRA-RS-001', 'Technology Needs Assessment for the Implementation of Climate Action Plans', 700000, '20/06/2018', '20/06/2018', 18, '19/12/2019', '18', 197450, 7, 4, 3, 4, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(8, 'COM-RS-001', '1. Establishing and strengthening National Designated Authorities or Focal Points;\n2. Developing strategic frameworks for engagement with the GCF, including the preparation of country program', 426080, '01/11/2018', '01/11/2018', 24, '21/10/2020', '24', 115117, 9, 4, 23, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(9, 'CRI-RS-002', 'Building sub-national capacities for the implementation of the National Adaptation Plan in Costa Rica', 2861917, '23/10/2018', '23/10/2018', 36, '23/10/2021', '36', 350575, 10, 4, 24, 5, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(10, 'DOM-RS-002', 'Building capacity to advance National Adaptation Plan Process in the Dominican Republic', 2998325, '11/07/2018', '11/07/2018', 36, '10/06/2021', '36', 1161912, 11, 4, 24, 5, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(11, 'EGY-RS-001', 'Supporting Egypt?s engagement with the Green Climate Fund: Logical framework support', 300000, '02/05/2017', '24/04/2017', 18, '23/10/2018', '18', 122456, 12, 4, 23, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(12, 'GHA-RS-001', 'Drought Early Warning and Forecasting System: Improving resiliency of crops to drought through strengthened early warning within Ghana, Uganda and Sudan', 300150, '15/05/2017', '15/05/2017', 24, '10/05/2019', '24', 300150, 14, 5, 25, 4, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(13, 'HND-RS-002', 'Supporting strategic planning to engage with the GCF and comply with the national commitments under the Paris Agreement regarding the LULUCF sector', 764960, '18/01/2018', '18/01/2018', 18, '19/07/2019', '18', 243515, 16, 4, 24, 6, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(14, 'JOR-RS-001', 'Strengthening NDA of Jordan to deliver on GCF Investment Framework', 300000, '15/06/2017', '15/06/2017', 18, '14/12/2018', '18', 150000, 17, 4, 26, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(15, 'MDG-RS-001', 'Building Capacity in Madagascar to engage with the GCF', 300000, '20/07/2018', '20/07/2018', 12, '19/07/2019', '12', 177588, 18, 4, 23, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(16, 'MLY-RS-002', 'Accessing REDD+ result-based payments in Malaysia', 819230, '12/11/2018', '12/11/2018', 24, '13/11/2020', '24', 465695, 19, 4, 27, 6, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(17, 'MDV-RS-001', 'Establishing and strengthening National Designated Authority (NDA), and developing strategic framework for engagement with the GCF in Maldives', 300000, '16/06/2017', '16/06/2017', 12, '13/06/2018', '12', 198545, 21, 4, 27, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(18, 'MRT-RS-002', 'Building capacity to advance National Adaptation Plan Process in Mauritania', 2670374, '17/07/2018', '17/07/2018', 36, '08/07/2021', '36', 742163, 20, 4, 28, 5, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(19, 'MUS-RS-002', 'Climate Change Vulnerability and Adaptation Study for Port of Port Louis', 324764, '22/01/2018', '22/01/2018', 15, '19/04/2019', '15', 324764, 22, 4, 25, 4, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(20, 'MNG-RS-003', 'Scaling-up of Implementation of Low-Carbon District Heating Systems in Mongolia', 368000, '01/02/2018', '01/02/2018', 12, '01/02/2019', '12', 250000, 23, 4, 27, 4, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(21, 'MNG-RS-004', 'Building capacity to advance National Adaptation Plan Process in Mongolia', 2895461, '20/06/2018', '20/06/2018', 36, '19/06/2021', '36', 406123, 23, 4, 27, 5, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(22, 'MNE-RS-001', '1. Establishing and strengthening National Designated Authorities or Focal Points;\n2. Developing strategic frameworks for engagement with the GCF, including the preparation of country program', 300000, '15/11/2016', '30/08/2016', 12, '30/08/2017', '12', 145300, 24, 4, 2, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(23, 'MMR-RS-002', 'Establishing and Strengthening National Designated Authority (NDA), and Developing Strategic Framework for Engagement with the GCF in Myanmar', 300000, '10/11/2017', '10/11/2017', 18, '11/05/2019', '18', 115840, 25, 4, 27, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(24, 'MMR-RS-001', 'Strengthened drought and flood management through improved science?based information availability and management in Myanmar', 336520, '26/07/2017', '26/07/2017', 12, '26/07/2018', '12', 336520, 25, 4, 25, 4, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(25, 'NPL-RS-001', 'Building Capacity to Advance National Adaptation Plan Process in Nepal', 2935350, '15/05/2017', '15/05/2017', 36, '14/05/2020', '36', 465410, 26, 4, 27, 5, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(26, 'NER-RS-002', 'Building Niger?s engagement with the GCF: Establishment and strengthening of the NDA, and elaboration of a country programme identifying strategic priorities', 300000, '20/06/2018', '20/06/2018', 18, '19/12/2019', '18', 138100, 27, 6, 23, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(27, 'PAK-RS-003', 'Building capacity to advance National Adaptation Plan Process in Pakistan', 2969674, '02/03/2018', '03/03/2018', 36, '04/03/2021', '36', 675420, 28, 4, 27, 5, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(28, 'PSE-RS-002', 'Technology Road Map for the Implementation of Climate Action Plans in Palestine.', 254100, '18/10/2017', '18/10/2017', 12, '18/10/2018', '12', 254100, 29, 4, 25, 4, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(29, 'SRB-RS-001', 'Developing the capacities of the Republic of Serbia for an effective engagement with the Green Climate Fund', 300000, '12/01/2018', '12/01/2018', 12, '12/01/2019', '12', 130000, 30, 4, 2, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(30, 'SSD-RS-001', 'Republic of South Sudan Green Climate Fund?s Readiness and Preparatory Support Project ', 300000, '20/06/2018', '20/06/2018', 18, '19/12/2019', '18', 153178, 31, 4, 29, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(31, 'SWZ-RS-002', 'Green Climate Fund Readiness Support for Swaziland', 299032, '12/03/2018', '12/03/2018', 24, '13/03/2020', '24', 83046, 32, 4, 23, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(32, 'SWZ-RS-003', 'Building capacity to advance National Adaptation Plan process in Swaziland ', 2796359, '28/06/2018', '28/06/2018', 36, '27/06/2021', '36', 744662, 32, 4, 28, 5, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(33, 'TON-RS-002', 'To develop an energy efficiency master plan for the Kingdom of Tonga and East Africa', 200000, '20/04/2017', '20/04/2017', 6, '09/10/2017', '6', 200000, 33, 4, 25, 4, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(34, 'ZWE-RS-001', '1. Establishing and strengthening National Designated Authorities or Focal Points;\n2. Developing strategic frameworks for engagement with the GCF, including the preparation of country program', 300000, '05/03/2018', '05/03/2018', 24, '04/03/2020', '24', 121354, 35, 4, 23, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(35, 'ZWE-RS-002', 'Building capacity to advance National Adaptation Plan Process in Zimbabwe', 2993349, '11/05/2018', '11/05/2018', 36, '13/05/2021', '36', 877525, 35, 4, 28, 5, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(36, 'S1-32GCL-000023', 'Jordan Integrated Landscape Management Initiative (JILMI)', 2886275, '05/03/2018', '28/08/2018', 12, '28/12/2019', '12', 278946, 3, 4, 23, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `readiness_types`
--

CREATE TABLE `readiness_types` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `readiness_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `readiness_types`
--

INSERT INTO `readiness_types` (`id`, `readiness_type`, `created_at`, `updated_at`) VALUES
(2, 'Capacity Building', '2022-08-26 09:41:05', '2022-08-26 09:41:05'),
(4, 'FI/TNA/other', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(5, 'NAP', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(6, 'REDD+', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `statuses`
--

CREATE TABLE `statuses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `statuses`
--

INSERT INTO `statuses` (`id`, `status`, `created_at`, `updated_at`) VALUES
(2, 'Completed', '2022-08-26 11:25:12', '2022-08-26 11:25:12'),
(4, 'under implementation', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(5, 'completion report submitted', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(6, 'requesting funds', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

--
-- Indexes for dumped tables
--

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
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `offices`
--
ALTER TABLE `offices`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `projects`
--
ALTER TABLE `projects`
  ADD PRIMARY KEY (`id`),
  ADD KEY `projects_country_id_foreign` (`country_id`),
  ADD KEY `projects_status_id_foreign` (`status_id`),
  ADD KEY `projects_office_id_foreign` (`office_id`),
  ADD KEY `projects_readiness_type_id_foreign` (`readiness_type_id`);

--
-- Indexes for table `readiness_types`
--
ALTER TABLE `readiness_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `statuses`
--
ALTER TABLE `statuses`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `offices`
--
ALTER TABLE `offices`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `projects`
--
ALTER TABLE `projects`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `readiness_types`
--
ALTER TABLE `readiness_types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `statuses`
--
ALTER TABLE `statuses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `projects`
--
ALTER TABLE `projects`
  ADD CONSTRAINT `projects_country_id_foreign` FOREIGN KEY (`country_id`) REFERENCES `countries` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `projects_office_id_foreign` FOREIGN KEY (`office_id`) REFERENCES `offices` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `projects_readiness_type_id_foreign` FOREIGN KEY (`readiness_type_id`) REFERENCES `readiness_types` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `projects_status_id_foreign` FOREIGN KEY (`status_id`) REFERENCES `statuses` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
