-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 13, 2023 at 02:38 AM
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
-- Database: `laragigster`
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
-- Table structure for table `listings`
--

CREATE TABLE `listings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `logo` varchar(255) DEFAULT NULL,
  `tags` varchar(255) NOT NULL,
  `company` varchar(255) NOT NULL,
  `location` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `website` varchar(255) NOT NULL,
  `description` longtext NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `listings`
--

INSERT INTO `listings` (`id`, `title`, `logo`, `tags`, `company`, `location`, `email`, `website`, `description`, `created_at`, `updated_at`, `user_id`) VALUES
(1, 'Tempora eaque ad dolores debitis exercitationem.', NULL, 'laravel,api,backend', 'Padberg Group', 'Stellafort', 'vance.schroeder@bruen.com', 'http://berge.com/at-ab-praesentium-cum-libero-labore-animi-assumenda', 'Fugit totam voluptas velit provident non et dolor nostrum. Dolor sunt iste fuga impedit. Possimus nihil voluptates minus doloremque sint quisquam et. Voluptas velit perferendis ad culpa aut.', '2023-01-19 02:58:02', '2023-01-19 02:58:02', 1),
(2, 'Earum voluptatem non commodi dignissimos repudiandae aut.', NULL, 'laravel,api,backend', 'Grimes-Ortiz', 'Devantemouth', 'jamar89@mckenzie.biz', 'http://robel.com/', 'Autem et ad praesentium tenetur commodi. Sit corrupti ut magnam a. Quas hic veniam quos libero voluptas. Delectus nihil sit est illum accusamus.', '2023-01-19 02:58:02', '2023-01-19 02:58:02', 1),
(3, 'Vel minus rem magni iusto totam.', NULL, 'laravel,api,backend', 'Dach, Funk and Kassulke', 'North Aylafurt', 'paige15@corwin.biz', 'http://www.legros.net/voluptatem-quod-quae-molestias-aut-provident-illum-cumque', 'Et nostrum et iure autem enim. Maxime fugit ea dolor. Dicta qui omnis voluptatem veritatis id nesciunt. Maxime explicabo sint odio eos. Ut ipsa perferendis veritatis ducimus illo molestiae nesciunt. Vitae numquam qui sint fuga aut nihil. Ipsa iure consequatur quos deleniti.', '2023-01-19 02:58:02', '2023-01-19 02:58:02', 1),
(4, 'Architecto error est omnis consequatur molestias impedit perferendis in.', NULL, 'laravel,api,backend', 'Block-Quitzon', 'Ullrichport', 'arlo84@beer.com', 'http://morissette.com/laboriosam-omnis-sequi-impedit-sed-et', 'Consequuntur omnis omnis ex necessitatibus. Tenetur eaque ducimus accusamus quae eius iure. Maiores aliquid et dolorem suscipit nihil necessitatibus optio quos. Fugit nobis debitis amet sed occaecati nulla. Dolor quas cupiditate ab dolorem laboriosam est.', '2023-01-19 02:58:02', '2023-01-19 02:58:02', 1),
(5, 'In magnam ipsum porro quasi.', NULL, 'laravel,api,backend', 'Roberts Ltd', 'Jesusside', 'carmel16@kshlerin.com', 'http://reichel.com/repellendus-dolorem-molestiae-sed.html', 'Quas repudiandae distinctio enim omnis enim aut ipsum. Illum sint inventore aut placeat repellendus. Vitae ut corporis qui laborum. Nihil consectetur enim laudantium et eum similique. Provident laboriosam et ipsum in. Perferendis qui natus facilis.', '2023-01-19 02:58:02', '2023-01-19 02:58:02', 1),
(6, 'Et dolorem ipsum dolor asperiores vitae ut doloremque.', NULL, 'laravel,api,backend', 'Conn-Nienow', 'Zboncakberg', 'velda.powlowski@ondricka.com', 'http://schmidt.com/veritatis-occaecati-deserunt-harum-cum-consequuntur-deleniti.html', 'Placeat temporibus animi porro asperiores sed sint quidem consequatur. Dolorem voluptatem tempore voluptatem omnis. Assumenda est velit a impedit. Et optio alias et id. Commodi rerum non aut et nesciunt placeat. Sed qui qui voluptatem aut aut aperiam numquam. Excepturi hic dolorum voluptatum ratione eos iusto aspernatur.', '2023-01-19 02:58:02', '2023-01-19 02:58:02', 1),
(7, 'Quia rerum et autem sed.', NULL, 'laravel,api,backend', 'Hagenes, McKenzie and Howell', 'Lake Jaquanville', 'flo08@swift.com', 'http://www.schiller.com/ut-qui-assumenda-recusandae-aut', 'Dicta voluptates officiis excepturi error quidem cupiditate. Sunt eaque unde adipisci eius deserunt est sunt. Nihil aut vero sed et voluptatem consequatur quo. Eveniet saepe quisquam molestias consequatur exercitationem voluptas animi. Rem unde quisquam tempore consequatur atque doloremque sit. Vel sit rerum repellendus aspernatur quo. Incidunt ab cupiditate magni suscipit.', '2023-01-19 02:58:02', '2023-01-19 02:58:02', 1),
(8, 'Accusantium iste atque omnis voluptates est.', NULL, 'laravel,api,backend', 'Franecki Group', 'North Cesarton', 'stanton.sigrid@mosciski.com', 'http://www.watsica.com/nemo-cumque-dolorum-perferendis-possimus-qui-esse-qui.html', 'Ut et vitae in illum. Porro ut dolore dolore est distinctio. Libero et perspiciatis qui laudantium a debitis. Quas voluptas omnis dicta nam a quaerat sunt excepturi. Perferendis et et commodi. Sunt dolor repellendus provident dolorum sit ut. Consequatur consequatur provident a.', '2023-01-19 02:58:02', '2023-01-19 02:58:02', 1),
(9, 'Fugiat placeat corrupti excepturi velit placeat repudiandae ipsum.', NULL, 'laravel,api,backend', 'Thompson Group', 'Altastad', 'homenick.nolan@lesch.org', 'http://www.schowalter.info/ipsa-quia-error-reiciendis.html', 'Aut a doloribus nesciunt tenetur quis. Quo ab vero neque voluptates omnis omnis sunt aliquam. Voluptatem molestiae et officia voluptatem. Facere officia ab necessitatibus ut doloribus.', '2023-01-19 02:58:02', '2023-01-19 02:58:02', 1),
(10, 'Doloremque ratione dolorem non sed.', NULL, 'laravel,api,backend', 'Kreiger LLC', 'North Myrtice', 'lwest@price.com', 'http://pfeffer.com/dicta-soluta-quas-vitae-ea-aut-doloremque.html', 'Animi porro dolores ipsa ex distinctio impedit eius. Rerum laborum sed quaerat veniam suscipit. Dolores voluptatum ab dolorem animi. Eveniet non repudiandae inventore et et quis consequatur. In rerum autem laboriosam.', '2023-01-19 02:58:02', '2023-01-19 02:58:02', 1);

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
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_01_16_061600_create_listings_table', 1);

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
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'John Doe', 'john@gmail.com', '2023-01-19 02:58:02', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'MhdOSvdJGU', '2023-01-19 02:58:02', '2023-01-19 02:58:02');

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
-- Indexes for table `listings`
--
ALTER TABLE `listings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `listings_user_id_foreign` (`user_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

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
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `listings`
--
ALTER TABLE `listings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `listings`
--
ALTER TABLE `listings`
  ADD CONSTRAINT `listings_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
