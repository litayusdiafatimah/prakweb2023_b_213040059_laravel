-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Nov 04, 2023 at 08:15 AM
-- Server version: 8.0.30
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `lyf_blog`
--

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
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

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_11_04_041928_create_posts_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `published_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `title`, `slug`, `excerpt`, `body`, `published_at`, `created_at`, `updated_at`) VALUES
(1, 'Judul Pertama', 'judul-pertama', 'Lorem ipsum ke satu', '<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Illo aspernatur similique, aliquam iusto debitis fuga dolorem eos, unde vero rem, dolores eveniet exercitationem suscipit velit quidem voluptate tenetur voluptas? Adipisci vero temporibus odio voluptatum! Totam aperiam facere repellat dolorem eligendi tenetur nam nisi est ipsam labore!</p><p>Molestias eos saepe quod tenetur placeat molestiae, nostrum odio nam veniam doloribus nisi ex adipisci repellat a aspernatur error! Officiis sunt autem atque maxime qui. Commodi adipisci recusandae, ad, ab molestias quasi non eos autem voluptatum deleniti laudantium ullam reprehenderit culpa aperiam. Provident quia neque, repellendus praesentium placeat assumenda asperiores maxime vero quae,</p><p>sit ut accusamus ducimus quaerat voluptatum beatae animi aliquid cum quibusdam laborum. Optio quo quae aut perferendis et voluptatum sequi qui facere? Alias corporis sed ipsa natus at blanditiis nihil dignissimos officiis nemo nostrum impedit voluptas doloremque fuga repellendus tempora perferendis, non eum, unde vel. Accusantium tenetur totam temporibus at alias.</p>', NULL, '2023-11-04 00:52:00', '2023-11-04 00:52:00'),
(2, 'Judul Ke Dua', 'judul-ke-dua', 'Lorem ipsum ke dua', '<p>Lorem, ipsum dolor sit amet consectetur adipisicing elit. Voluptatem nemo numquam, quaerat sint facere voluptatum? Deserunt unde in accusantium laborum obcaecati. Et quam similique, maiores repellat molestiae reiciendis tenetur cumque officiis.</p> <p>Facere similique, repellendus perferendis explicabo eaque sit necessitatibus, eum in vero voluptas quas voluptatem quasi dolor sint voluptates, tempore suscipit. Necessitatibus, deleniti, voluptates qui animi sapiente dignissimos aliquam ipsa fugiat error vitae consectetur quibusdam suscipit. Ducimus necessitatibus incidunt veniam est explicabo similique quo iusto sequi, voluptatem praesentium dignissimos odio debitis ut quia iure reprehenderit adipisci voluptatibus.</p> <p>Repellendus quidem facilis dolorum nemo dolore praesentium natus doloremque animi perferendis. Esse voluptatem iusto, optio obcaecati fugiat cum, sequi vel, magni quod neque labore deleniti minima id possimus illum placeat doloremque quis nesciunt eum odio fuga error soluta! Doloremque, harum odio! Sint quidem vitae voluptas eveniet tenetur officiis, ipsam aliquid dignissimos vel ullam magni accusamus eius nihil, quaerat, sapiente ducimus. Voluptates, numquam hic?</p>', NULL, '2023-11-04 01:03:01', '2023-11-04 01:03:01'),
(3, 'Judul Ke Tiga', 'judul-ke-tiga', 'Lorem ipsum ke tiga', '<p>Lorem, ipsum dolor sit amet consectetur adipisicing elit. Voluptatem nemo numquam, quaerat sint facere voluptatum? Deserunt unde in accusantium laborum obcaecati. Et quam similique, maiores repellat molestiae reiciendis tenetur cumque officiis.</p> <p>Facere similique, repellendus perferendis explicabo eaque sit necessitatibus, eum in vero voluptas quas voluptatem quasi dolor sint voluptates, tempore suscipit. Necessitatibus, deleniti, voluptates qui animi sapiente dignissimos aliquam ipsa fugiat error vitae consectetur quibusdam suscipit. Ducimus necessitatibus incidunt veniam est explicabo similique quo iusto sequi, voluptatem praesentium dignissimos odio debitis ut quia iure reprehenderit adipisci voluptatibus.</p> <p>Repellendus quidem facilis dolorum nemo dolore praesentium natus doloremque animi perferendis. Esse voluptatem iusto, optio obcaecati fugiat cum, sequi vel, magni quod neque labore deleniti minima id possimus illum placeat doloremque quis nesciunt eum odio fuga error soluta! Doloremque, harum odio! Sint quidem vitae voluptas eveniet tenetur officiis, ipsam aliquid dignissimos vel ullam magni accusamus eius nihil, quaerat, sapiente ducimus. Voluptates, numquam hic?</p>', NULL, '2023-11-04 01:07:13', '2023-11-04 01:07:13');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
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
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `posts_slug_unique` (`slug`);

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
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
