-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 26, 2023 at 08:04 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `masjid`
--

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
-- Table structure for table `kategori`
--

CREATE TABLE `kategori` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama_kategori` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `kategori`
--

INSERT INTO `kategori` (`id`, `nama_kategori`, `created_at`, `updated_at`) VALUES
(1, 'buka bersama', '2023-02-25 01:49:36', '2023-02-25 01:53:51'),
(2, 'pendidikan', '2023-02-25 01:49:49', '2023-02-25 01:49:49'),
(3, 'sedekah subuh', '2023-02-25 01:49:57', '2023-02-25 01:49:57');

-- --------------------------------------------------------

--
-- Table structure for table `laporan`
--

CREATE TABLE `laporan` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama_laporan` varchar(255) NOT NULL,
  `alamat_laporan` varchar(255) NOT NULL,
  `deskripsi` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `laporan`
--

INSERT INTO `laporan` (`id`, `nama_laporan`, `alamat_laporan`, `deskripsi`, `created_at`, `updated_at`) VALUES
(1, 'Laporan bukber', 'pdf/230225101552.pdf', 'siueoiawuewaheajkduiosa', '2023-02-25 02:15:52', '2023-02-25 10:21:57'),
(2, 'laporan sedekah februari', 'pdf/230225111659.pdf', 'adjwaioeueuaiehai', '2023-02-25 03:17:00', '2023-02-25 03:17:00'),
(3, 'laporan sedekah februari', 'pdf/230225111819.pdf', 'adjwaioeueuaiehai', '2023-02-25 03:18:19', '2023-02-25 03:18:19'),
(4, 'laporan sedekah februari', 'pdf/230225061902.pdf', 'adjwaioeueuaiehai', '2023-02-25 10:19:02', '2023-02-25 10:19:02');

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
(11, '2014_10_12_000000_create_users_table', 1),
(12, '2014_10_12_100000_create_password_resets_table', 1),
(13, '2019_08_19_000000_create_failed_jobs_table', 1),
(14, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(15, '2023_02_24_081043_create_program_amal_table', 1),
(16, '2023_02_25_094247_create_kategoris_table', 2),
(19, '2023_02_25_100420_create_laporan_table', 3);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `created_at`, `updated_at`) VALUES
(4, 'App\\Models\\User', 2, 'admin login token', '280ca70021876a30b5ccc0499f92db60d0cd0d3c19d50e7fc371001caf30b6d0', '[\"*\"]', '2023-02-26 06:59:09', '2023-02-26 06:58:53', '2023-02-26 06:59:09');

-- --------------------------------------------------------

--
-- Table structure for table `program_amal`
--

CREATE TABLE `program_amal` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama_program` varchar(255) NOT NULL,
  `deskripsi` text NOT NULL,
  `tag` varchar(255) NOT NULL,
  `tanggal_berakhir` varchar(255) NOT NULL,
  `jumlah_donasi_dibutuhkan` varchar(255) NOT NULL,
  `gambar` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `program_amal`
--

INSERT INTO `program_amal` (`id`, `nama_program`, `deskripsi`, `tag`, `tanggal_berakhir`, `jumlah_donasi_dibutuhkan`, `gambar`, `created_at`, `updated_at`) VALUES
(3, 'wakaf sumur', 'asdaowuehawkbeawbejkwahehjk', 'wakaf', '1 januari', '10000000', 'C:\\Users\\ASUS\\AppData\\Local\\Temp\\php2FBA.tmp', '2023-02-24 01:24:33', '2023-02-25 01:18:34'),
(6, 'Sedekah subuh', 'doadjsaidadiowsudowueioj', 'sedekah', '10 agustus', '1000000', 'images/230224103026.jpg', '2023-02-24 02:30:26', '2023-02-24 02:30:26'),
(7, 'Sedekah subuh', 'doadjsaidadiowsudowueioj', 'sedekah', '10 agustus', '1000000', 'images/230224103057.jpg', '2023-02-24 02:30:57', '2023-02-24 02:30:57'),
(8, 'Sedekah subuh 2', 'doadjsaidadiowsudowueioj', 'sedekah', '10 agustus', '1000000', 'images/230224103116.jpg', '2023-02-24 02:31:16', '2023-02-24 02:31:16'),
(9, 'wakaf sumur', 'doadjsaidadiowsudowueioj', 'wakaf', '10 agustus', '1000000', 'images/230225090513.jpg', '2023-02-25 01:05:13', '2023-02-25 01:05:13');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(255) NOT NULL,
  `role` varchar(255) NOT NULL DEFAULT '2',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `role`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(2, 'admin', '1', NULL, '$2y$10$354/Q7GAJzZJTnMiTs09W.yPh68Jrs.nU63IZ2unsF1U.Wmc.mIsa', NULL, '2023-02-26 06:21:08', '2023-02-26 06:21:08'),
(3, 'angling', '2', NULL, '$2y$10$kKJBWiVoidpyVO/COyEEveFTOWPjM4uKXZfxel.V2WkNv4ZGbz0uG', NULL, '2023-02-26 06:44:20', '2023-02-26 06:44:20'),
(5, 'adit', '2', NULL, '$2y$10$ISrJ9epsO.nW75ywbCyEzOiap9KJSyHNcZP6.E2h4HeSO2BPrHrxe', NULL, '2023-02-26 06:59:09', '2023-02-26 06:59:09');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `laporan`
--
ALTER TABLE `laporan`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `program_amal`
--
ALTER TABLE `program_amal`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `kategori`
--
ALTER TABLE `kategori`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `laporan`
--
ALTER TABLE `laporan`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `program_amal`
--
ALTER TABLE `program_amal`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
