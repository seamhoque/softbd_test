-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 17, 2020 at 11:19 AM
-- Server version: 10.4.13-MariaDB
-- PHP Version: 7.3.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `test_1`
--

-- --------------------------------------------------------

--
-- Table structure for table `designations`
--

CREATE TABLE `designations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `designations`
--

INSERT INTO `designations` (`id`, `title`, `created_at`, `updated_at`) VALUES
(1, 'Founder.', '2020-09-17 00:13:24', '2020-09-17 00:13:24'),
(2, 'CEO', '2020-09-17 00:13:24', '2020-09-17 00:13:24'),
(3, 'CTO', '2020-09-17 00:13:24', '2020-09-17 00:13:24'),
(4, 'Manager', '2020-09-17 00:13:24', '2020-09-17 00:13:24'),
(5, 'Staff', '2020-09-17 00:13:24', '2020-09-17 00:13:24');

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `employee_no` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `designation_id` bigint(20) UNSIGNED NOT NULL,
  `department` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `company` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `salary` decimal(8,2) NOT NULL,
  `joining_date` datetime NOT NULL,
  `termination_date` datetime NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`id`, `employee_no`, `name`, `designation_id`, `department`, `company`, `salary`, `joining_date`, `termination_date`, `created_at`, `updated_at`) VALUES
(1, '786', 'seam hoque', 3, 'Animi saepe.', 'Kunde Group', '33721.00', '2001-10-03 10:40:10', '1987-06-16 19:08:17', '2020-09-17 00:13:31', '2020-09-17 00:13:31'),
(2, '911', 'julias ceaser', 1, 'Velit voluptatem perspiciatis.', 'Hodkiewicz PLC', '94998.00', '2012-10-18 13:18:25', '1994-06-07 11:59:18', '2020-09-17 00:13:31', '2020-09-17 00:13:31'),
(3, '5576', 'Alivia Roob', 1, 'Sint debitis aut.', 'Leffler, Kovacek and Rohan', '98715.00', '2009-08-16 14:56:48', '1979-12-26 12:00:59', '2020-09-17 00:13:31', '2020-09-17 00:13:31'),
(4, '8150', 'Ms. Rae Abshire', 4, 'Dolorem incidunt commodi.', 'Gleichner-Rolfson', '69257.00', '1998-03-13 00:11:18', '2013-08-03 09:34:29', '2020-09-17 00:13:31', '2020-09-17 00:13:31'),
(5, '6308', 'Miss Ruth Grady', 3, 'Omnis quas.', 'Labadie Ltd', '92990.00', '1983-10-08 01:42:51', '1980-08-13 14:14:28', '2020-09-17 00:13:31', '2020-09-17 00:13:31'),
(6, '3369', 'Mrs. Idell Cummings', 1, 'Nihil placeat qui.', 'Crooks-Glover', '12384.00', '1985-07-11 12:15:55', '1987-03-26 14:50:34', '2020-09-17 00:13:31', '2020-09-17 00:13:31'),
(7, '3979', 'asd', 1, 'Qui qui.', 'Macejkovic and Sons', '1800.00', '1988-10-09 00:01:34', '1998-09-30 04:55:00', '2020-09-17 00:13:31', '2020-09-17 00:13:31'),
(8, '1689', 'Mr. Ceasar Dibbert II', 2, 'Esse recusandae rerum.', 'Grady Ltd', '83320.00', '2013-05-08 08:23:58', '2000-09-14 05:34:15', '2020-09-17 00:13:31', '2020-09-17 00:13:31'),
(9, '5208', 'Hilda Russel', 2, 'Sunt modi ad.', 'Wuckert Ltd', '6899.00', '1983-10-25 15:45:05', '1973-06-19 21:31:40', '2020-09-17 00:13:31', '2020-09-17 00:13:31'),
(10, '1805', 'Dr. Aron Kunde II', 1, 'Ipsam ab.', 'Reynolds PLC', '58464.00', '1997-10-14 22:23:52', '1994-01-26 04:07:11', '2020-09-17 00:13:31', '2020-09-17 00:13:31'),
(11, '3012', 'Miss Opal Breitenberg PhD', 2, 'Quisquam atque.', 'Morar, Ryan and Heaney', '87619.00', '2011-12-23 14:40:34', '1982-03-23 10:10:04', '2020-09-17 00:13:31', '2020-09-17 00:13:31'),
(12, '771', 'Myrtice Moen', 4, 'Officiis fugit.', 'Hane, O\'Reilly and Beahan', '70906.00', '2013-03-16 18:33:11', '2019-10-05 02:50:16', '2020-09-17 00:13:31', '2020-09-17 00:13:31'),
(13, '9115', 'Mafalda O\'Conner', 4, 'Perspiciatis eveniet.', 'Hudson-Gorczany', '19141.00', '2017-08-20 01:17:30', '1973-04-11 04:47:25', '2020-09-17 00:13:31', '2020-09-17 00:13:31'),
(14, '3349', 'Zelma Corwin', 1, 'Voluptas dolor.', 'Keebler-Mitchell', '15003.00', '2006-01-10 01:49:27', '2014-12-26 19:34:11', '2020-09-17 00:13:31', '2020-09-17 00:13:31'),
(15, '926', 'Coleman Ondricka', 3, 'Eum et.', 'Anderson, King and Collier', '13275.00', '1994-03-09 23:40:40', '1974-09-01 00:39:02', '2020-09-17 00:13:31', '2020-09-17 00:13:31'),
(16, '9246', 'Prof. Van Mueller', 4, 'Quas rem.', 'Cruickshank-Grant', '27616.00', '2002-06-28 14:05:45', '1996-01-13 14:38:15', '2020-09-17 00:13:31', '2020-09-17 00:13:31'),
(17, '7708', 'Mr. Cleve Rohan DVM', 2, 'Voluptatem a voluptatum.', 'Krajcik Group', '1705.00', '1981-11-04 03:45:02', '1983-04-26 14:35:19', '2020-09-17 00:13:31', '2020-09-17 00:13:31'),
(18, '4967', 'Dr. Nico Streich DDS', 5, 'Adipisci soluta.', 'Goodwin Inc', '44195.00', '2009-05-31 19:17:52', '2007-01-08 08:20:23', '2020-09-17 00:13:31', '2020-09-17 00:13:31'),
(19, '33', 'Keanu Cronin', 4, 'Amet aut.', 'Frami, Beatty and Kihn', '34342.00', '1981-03-11 18:05:28', '2008-01-16 00:58:26', '2020-09-17 00:13:31', '2020-09-17 00:13:31'),
(20, '967', 'Kaden Bauch', 1, 'Et aut.', 'Baumbach-Mertz', '36387.00', '2018-05-06 10:59:47', '1992-09-30 14:14:26', '2020-09-17 00:13:31', '2020-09-17 00:13:31'),
(21, '1800', 'Prof. Linda Deckow', 3, 'Totam voluptatem.', 'Kautzer Inc', '65019.00', '1981-07-02 18:10:41', '1994-09-24 04:12:32', '2020-09-17 00:13:31', '2020-09-17 00:13:31'),
(22, '3755', 'Bartholome Gaylord', 3, 'Illo est.', 'Hudson and Sons', '18343.00', '2007-08-25 12:17:17', '1971-06-23 23:18:29', '2020-09-17 00:13:31', '2020-09-17 00:13:31'),
(23, '8108', 'Prof. Aliyah Stroman V', 3, 'Dolorum ut.', 'Collins-Jaskolski', '12883.00', '1999-10-20 21:15:39', '2016-07-10 16:25:40', '2020-09-17 00:13:31', '2020-09-17 00:13:31'),
(24, '6190', 'Willie Bosco PhD', 4, 'Accusamus tempore.', 'Brakus Ltd', '58968.00', '2004-12-12 21:17:27', '2019-03-09 11:47:03', '2020-09-17 00:13:31', '2020-09-17 00:13:31'),
(25, '2542', 'Robb Kemmer', 3, 'Nemo quis.', 'Gislason-Kutch', '96342.00', '2009-12-17 02:47:26', '2007-03-24 13:47:08', '2020-09-17 00:13:31', '2020-09-17 00:13:31'),
(26, '5713', 'Vicente Reichel', 2, 'Debitis est.', 'Stehr-Kilback', '75545.00', '1972-01-11 04:44:51', '1988-04-18 19:38:06', '2020-09-17 00:13:31', '2020-09-17 00:13:31'),
(27, '2046', 'Deshaun Graham', 4, 'Nostrum asperiores.', 'Cruickshank, Yundt and Sanford', '97087.00', '1973-11-01 01:35:09', '2015-01-04 14:43:42', '2020-09-17 00:13:31', '2020-09-17 00:13:31'),
(28, '1230', 'Prof. Pete Crist', 3, 'Blanditiis modi natus.', 'Effertz Ltd', '69043.00', '2007-10-17 05:56:20', '2008-12-10 15:53:57', '2020-09-17 00:13:31', '2020-09-17 00:13:31'),
(29, '6614', 'Madaline Kemmer', 4, 'Sed fugit eaque.', 'Hudson-Lang', '65812.00', '2016-06-20 05:23:56', '1980-11-20 11:11:26', '2020-09-17 00:13:31', '2020-09-17 00:13:31'),
(30, '9331', 'Mrs. Rubie Becker DDS', 3, 'Magnam voluptas veniam.', 'Romaguera and Sons', '58709.00', '1986-09-11 21:46:24', '2018-12-01 21:04:00', '2020-09-17 00:13:31', '2020-09-17 00:13:31'),
(31, '3346', 'Dr. Braeden Koepp II', 1, 'Accusantium explicabo.', 'Robel-Roob', '73464.00', '2012-02-24 08:11:35', '1991-11-25 00:54:35', '2020-09-17 00:13:31', '2020-09-17 00:13:31'),
(32, '3331', 'Ms. Christiana Wiza', 5, 'Doloribus voluptatem.', 'Toy Group', '20398.00', '2007-08-03 08:00:20', '1975-06-07 19:16:23', '2020-09-17 00:13:31', '2020-09-17 00:13:31'),
(33, '9336', 'Myrl Crist V', 4, 'Maiores rem.', 'Herzog Ltd', '27595.00', '1994-05-03 23:51:36', '2012-01-10 08:58:01', '2020-09-17 00:13:31', '2020-09-17 00:13:31'),
(34, '5704', 'Earline Kreiger', 1, 'Porro ullam.', 'Harvey, Hettinger and Macejkovic', '12633.00', '2011-02-14 14:53:40', '1985-09-19 01:24:39', '2020-09-17 00:13:31', '2020-09-17 00:13:31'),
(35, '5644', 'Alaina Anderson', 2, 'Illum eaque blanditiis.', 'Ferry Group', '98894.00', '2019-09-23 02:45:09', '1987-02-26 01:23:23', '2020-09-17 00:13:31', '2020-09-17 00:13:31'),
(36, '5395', 'Loren Bartell', 2, 'Fugiat et.', 'Kling, Yost and Doyle', '74312.00', '1983-08-12 16:23:09', '1995-08-11 00:13:43', '2020-09-17 00:13:31', '2020-09-17 00:13:31'),
(37, '3098', 'Julianne Wintheiser', 3, 'Qui adipisci.', 'Dach-Beer', '20504.00', '2016-06-12 11:01:29', '2019-08-18 19:20:53', '2020-09-17 00:13:31', '2020-09-17 00:13:31'),
(38, '3901', 'Mr. Geo Weber MD', 4, 'Quia sint.', 'Mohr, Halvorson and Kihn', '80026.00', '1994-08-03 17:44:00', '1995-07-29 10:00:46', '2020-09-17 00:13:31', '2020-09-17 00:13:31'),
(39, '1498', 'Jarod Franecki MD', 3, 'Quae voluptatem.', 'Schulist-O\'Reilly', '81591.00', '2008-09-23 13:06:09', '2001-09-26 05:08:41', '2020-09-17 00:13:31', '2020-09-17 00:13:31'),
(40, '2109', 'Pearl Rice DDS', 2, 'Dignissimos ut.', 'Ondricka-Towne', '66052.00', '1981-05-11 01:55:37', '2006-11-15 18:50:49', '2020-09-17 00:13:31', '2020-09-17 00:13:31'),
(41, '5416', 'Claire Lowe', 4, 'Dolorum dignissimos error.', 'Cruickshank-Considine', '14953.00', '1984-07-11 00:43:10', '2016-01-17 17:57:00', '2020-09-17 00:13:31', '2020-09-17 00:13:31'),
(42, '6836', 'Prof. Ashley Weimann', 4, 'Eos optio.', 'Bartoletti LLC', '80884.00', '1999-07-25 03:25:26', '2000-01-15 17:47:29', '2020-09-17 00:13:31', '2020-09-17 00:13:31'),
(43, '8976', 'Lelia Schaden', 4, 'Modi esse numquam.', 'Barrows-Olson', '76263.00', '1988-04-19 01:37:46', '1994-05-17 05:26:02', '2020-09-17 00:13:31', '2020-09-17 00:13:31'),
(44, '5701', 'Sydnee Thiel', 5, 'Nihil corrupti.', 'Haley, Goodwin and Feest', '24305.00', '1973-12-28 05:12:38', '1973-09-17 23:32:38', '2020-09-17 00:13:31', '2020-09-17 00:13:31'),
(45, '5462', 'Marlon Sporer', 4, 'Sed et rerum.', 'Russel-Dooley', '33512.00', '2007-03-14 18:17:54', '1971-02-16 17:47:00', '2020-09-17 00:13:31', '2020-09-17 00:13:31'),
(46, '3537', 'Ms. Nayeli Wuckert V', 1, 'Est doloribus sit.', 'Raynor-Farrell', '39898.00', '1979-03-16 12:28:41', '2020-01-07 11:41:15', '2020-09-17 00:13:31', '2020-09-17 00:13:31'),
(47, '9266', 'Mrs. Ruth Wiza', 1, 'Nulla ab at.', 'Effertz Ltd', '67298.00', '1971-03-01 13:31:08', '2014-06-05 10:24:56', '2020-09-17 00:13:31', '2020-09-17 00:13:31'),
(48, '7088', 'Tevin Greenfelder DDS', 3, 'Natus ea.', 'Kuhlman-Swaniawski', '2960.00', '1975-09-08 14:43:54', '1998-04-15 15:36:20', '2020-09-17 00:13:31', '2020-09-17 00:13:31'),
(49, '5019', 'Celia Labadie', 5, 'Voluptatem blanditiis doloribus.', 'Waelchi Group', '993.00', '1983-10-25 23:54:42', '1973-07-21 06:57:46', '2020-09-17 00:13:31', '2020-09-17 00:13:31'),
(50, '7853', 'Mrs. Demetris Spencer', 5, 'Iure id distinctio.', 'Auer, Effertz and Greenholt', '61480.00', '1972-10-09 15:26:39', '2017-05-11 21:50:51', '2020-09-17 00:13:31', '2020-09-17 00:13:31');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
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
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2020_09_15_174155_create_employees_table', 1),
(5, '2020_09_15_174224_create_designations_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `designations`
--
ALTER TABLE `designations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
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
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

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
-- AUTO_INCREMENT for table `designations`
--
ALTER TABLE `designations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `employees`
--
ALTER TABLE `employees`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
