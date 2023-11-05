-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Nov 05, 2023 at 06:19 AM
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
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Web Programming', 'web-programming', '2023-11-04 23:04:41', '2023-11-04 23:04:41'),
(2, 'Personal', 'personal', '2023-11-04 23:04:41', '2023-11-04 23:04:41');

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
(5, '2023_11_04_041928_create_posts_table', 1),
(6, '2023_11_04_082338_create_categories_table', 1);

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
  `category_id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
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

INSERT INTO `posts` (`id`, `category_id`, `user_id`, `title`, `slug`, `excerpt`, `body`, `published_at`, `created_at`, `updated_at`) VALUES
(1, 2, 3, 'Enim sunt nobis aliquam unde culpa.', 'harum-quia-eos-fugit-excepturi-est', 'Quam voluptatum illo voluptatum. Et numquam praesentium corrupti labore exercitationem voluptatum nihil. Quia rem voluptates harum et.', 'Enim dolor quis minima harum temporibus aut et. Voluptatem repudiandae culpa quia deleniti voluptates sed voluptas cupiditate. Consequuntur nisi fugit porro vel est. Harum architecto ducimus fuga sequi culpa fugit. Laborum illo enim totam labore. Maxime labore quis ullam pariatur dolore beatae. In aut occaecati alias suscipit voluptatem.', NULL, '2023-11-04 23:04:41', '2023-11-04 23:04:41'),
(2, 1, 2, 'Ullam autem illum sint est quae.', 'sunt-natus-similique-voluptatem-quo-est-aliquid', 'Voluptatibus laborum est accusantium culpa non. Pariatur culpa est vitae velit aut nisi.', 'Blanditiis consectetur nemo necessitatibus ut reiciendis laudantium ea. Placeat voluptatem qui eum explicabo et enim vitae. Ad quas officiis dolores quis ducimus omnis sunt. Deleniti ut recusandae reprehenderit quas. Doloribus dolor voluptatem placeat modi sint quia dignissimos. Voluptate ea eligendi ullam non doloribus. Soluta repudiandae ducimus officiis deleniti et sit. Voluptates odio et et explicabo autem. Culpa quidem amet dolorum cupiditate tempore voluptate suscipit. Deserunt voluptatem et omnis aut et. Dolores autem eveniet quaerat cupiditate qui quos. Velit cumque mollitia veniam beatae.', NULL, '2023-11-04 23:04:41', '2023-11-04 23:04:41'),
(3, 1, 1, 'Aut eos aspernatur.', 'accusamus-dolorem-rerum-aut-quis', 'Officiis distinctio eaque aut dolorum. Velit aut odio unde sunt omnis. Ullam sapiente culpa autem veniam. Asperiores quo provident et voluptatem et. Et ad voluptatibus cumque in ipsa repellendus.', 'Architecto aut perspiciatis velit labore dolorem. Sed possimus perferendis quisquam numquam. Mollitia tempore id dolorem quod sit sunt. Quasi quae veniam id minus ea aut similique. Sit minima enim architecto eum. Voluptate dolorem iste tempore atque. Dolorum at qui reiciendis sunt non eos consequatur. Quo sequi error sunt rerum nihil. Modi qui dolores inventore iure magnam iste.', NULL, '2023-11-04 23:04:41', '2023-11-04 23:04:41'),
(4, 2, 2, 'Aut et voluptatem dicta.', 'cumque-voluptatibus-expedita-molestiae-omnis-architecto-et', 'Est dolores eum nemo perferendis. Quaerat possimus voluptatibus soluta. Et dolorem explicabo ea enim. Error veritatis eveniet velit temporibus eum incidunt a.', 'Quod enim non error ut aut ipsum. Provident odio temporibus fuga libero explicabo. Aut quam quo consequatur fugit. Omnis culpa voluptates sunt quia occaecati velit. Deserunt animi quidem voluptate et. Est aperiam voluptates tenetur beatae voluptatem ea tenetur. Provident sit voluptas iste aut.', NULL, '2023-11-04 23:04:41', '2023-11-04 23:04:41'),
(5, 2, 1, 'Quia distinctio laboriosam non itaque minus.', 'dolores-alias-aut-et-commodi-sequi-ut', 'Quis temporibus et eum minus cumque illum molestias. Sit magni sequi recusandae voluptatem sapiente maiores. Nisi amet suscipit nostrum sed. Magnam enim est ut provident animi est nihil nesciunt. Temporibus vel quidem et accusamus rerum perspiciatis dolore.', 'Laudantium et suscipit laudantium. Recusandae dolores saepe deserunt aut maiores est. Quis labore autem et molestiae consequatur autem. Earum hic molestiae maxime et. Est odit rerum sint magni qui maxime eum. Maxime iste animi harum expedita. Voluptatum nam occaecati et sunt.', NULL, '2023-11-04 23:04:41', '2023-11-04 23:04:41'),
(6, 1, 3, 'Laboriosam iste assumenda maxime.', 'ut-similique-aut-architecto-explicabo-dolorum-veniam-omnis', 'Fugit non accusamus unde nulla deserunt sint eveniet. Qui quis tenetur repudiandae veritatis quaerat. Sint dolor officia quis natus adipisci. Deleniti nisi officiis sed rerum tempore velit tenetur nisi.', 'Sunt ut eaque nemo et sit. At pariatur aut excepturi ut qui velit distinctio sunt. Quo id pariatur iste doloribus omnis repudiandae. Aliquam ea necessitatibus odit dolorum est ut ut. Aperiam sequi laboriosam ea voluptatibus. In officia et quam ea nihil quia dolor sed. Aut repellendus eius consectetur autem. Quaerat aut perspiciatis reiciendis. Voluptatem et autem beatae perspiciatis enim necessitatibus omnis eveniet. Veniam pariatur provident necessitatibus ratione.', NULL, '2023-11-04 23:04:41', '2023-11-04 23:04:41'),
(7, 2, 3, 'Cupiditate et impedit sunt quia non voluptatem quod.', 'aperiam-in-asperiores-numquam-enim-iure-accusantium-ad', 'Deserunt maxime quis aliquam voluptas ut voluptas quia sed. Sunt odio perferendis nihil in qui dolores odit. Ratione et est minima similique ea nisi. Amet quia molestiae et atque.', 'Quas ut non facere non impedit accusamus. Autem est id quia quibusdam enim eligendi ut. Quo corporis excepturi in laborum. Voluptatem molestiae consequuntur mollitia suscipit deleniti sed.', NULL, '2023-11-04 23:04:41', '2023-11-04 23:04:41'),
(8, 1, 2, 'Id itaque aperiam officia doloremque.', 'laboriosam-inventore-eos-voluptas-reiciendis-aliquam-molestiae', 'Neque cupiditate aliquid debitis laborum. Dolorem tenetur corrupti voluptatem. Itaque aut vero est labore. Eaque odit commodi quidem. Possimus nisi ipsum earum omnis.', 'Dolorem earum ut voluptatibus. Aliquam quae qui sunt minus quia. Inventore perferendis repellat aliquid nesciunt. Ea aut voluptas voluptatem et sunt. Omnis sint perferendis non atque officia sequi odio. Quia eligendi et est sapiente optio qui sequi. Laborum ea quam eum. Et qui quibusdam odit et in omnis. Quis sunt autem aspernatur. Itaque rerum molestiae tempora temporibus. Error deserunt rem nesciunt expedita dolorum placeat. Accusantium facilis provident saepe id aut quae totam. Officia recusandae provident nesciunt architecto aut et dolor.', NULL, '2023-11-04 23:04:41', '2023-11-04 23:04:41'),
(9, 2, 3, 'Consequuntur ut quam et soluta.', 'non-ut-architecto-repudiandae-dolores-animi', 'Nostrum ut ratione autem ipsum qui quod hic. Quibusdam impedit voluptatum perspiciatis maxime ut debitis facere.', 'Iste enim ducimus quas corporis reprehenderit ipsa necessitatibus. Nihil quia expedita vel sint. Sit enim et unde non labore veniam laborum illum. Ab vitae unde quisquam a. Recusandae possimus ullam dolore perferendis. Occaecati hic in itaque adipisci et. Occaecati tempore fugiat sunt aut culpa libero.', NULL, '2023-11-04 23:04:41', '2023-11-04 23:04:41'),
(10, 1, 3, 'Fuga architecto et provident rerum reiciendis dolores.', 'qui-mollitia-sapiente-numquam-id-optio-necessitatibus-eaque-non', 'Saepe et sit soluta placeat. Qui unde est repellat recusandae.', 'Rem fugit qui qui cum et libero omnis. Dolores animi modi ipsam eveniet et omnis ullam. Illum dolores rem voluptatem sed molestiae quisquam. Voluptas doloremque sit nesciunt distinctio sit. Non est veniam alias enim. Id omnis exercitationem consequatur unde dolorem. Ratione assumenda sit dolorum quidem id impedit laudantium. In iusto adipisci modi nam in voluptas.', NULL, '2023-11-04 23:04:41', '2023-11-04 23:04:41'),
(11, 2, 2, 'Veritatis eius repellendus ipsum temporibus est autem cupiditate ut.', 'facere-officiis-voluptate-alias-eaque-suscipit-reprehenderit-ipsam', 'Magni esse sunt minus voluptas. Et omnis aut consequatur ut. Alias velit voluptatem velit nihil. Animi voluptatibus repudiandae quaerat autem repellendus autem.', 'Aut ab nostrum doloremque quae beatae. Neque vitae ipsum voluptas quis ratione in earum. Eum labore animi officiis. Animi et rerum at. Est maiores illum inventore molestias quis.', NULL, '2023-11-04 23:04:41', '2023-11-04 23:04:41'),
(12, 1, 2, 'Beatae officia totam quia suscipit eos aliquid unde velit eligendi.', 'totam-distinctio-vitae-consectetur-excepturi-sit-in-voluptatum', 'Itaque itaque quidem soluta esse quidem impedit laborum. Aut sapiente quo qui. Velit est et iusto. Voluptas optio nihil et reiciendis vitae et ut.', 'Occaecati voluptas esse ea et odit. Molestiae fugit voluptatem atque. Voluptatem sunt ex cupiditate commodi omnis voluptatem pariatur. Voluptatibus eligendi qui est qui possimus. Ratione quisquam ratione eaque odio.', NULL, '2023-11-04 23:04:41', '2023-11-04 23:04:41'),
(13, 1, 1, 'Odio repellat fugit quis consequuntur.', 'officiis-sint-numquam-ad-quis-inventore-suscipit-et', 'Consectetur error inventore ratione mollitia et. Quo sunt quo voluptate quis sed. Facere incidunt beatae vero. Eligendi sit voluptatem aut quod maiores vel.', 'Voluptatem recusandae ea officiis reprehenderit. Architecto distinctio quo nihil. Excepturi deleniti error magni nam. Reiciendis quisquam suscipit perspiciatis voluptatem. Quae sint quia officia ut voluptatem rerum. Non optio aliquam reprehenderit est quo earum consectetur. Magni magni repudiandae voluptatum unde officiis. Et nesciunt facilis quas deserunt. Porro est voluptas eos sunt. Blanditiis fugit dicta vitae ipsa. Voluptatem sapiente minus non aut nobis quasi et. Voluptatem illum impedit quas sint amet et pariatur. Fugiat ab fugiat est animi aspernatur.', NULL, '2023-11-04 23:04:41', '2023-11-04 23:04:41'),
(14, 2, 2, 'Pariatur est est.', 'omnis-consectetur-et-ut', 'Illum dolor nostrum qui ipsa sit quo maxime. Molestiae beatae est praesentium ratione. Quisquam ipsam ab hic hic perferendis aliquid autem. Error ut at velit excepturi quo recusandae.', 'Non qui eos vel. Aut quod et cum dignissimos non eum id. Ad exercitationem deleniti omnis consequatur. Eos ipsa incidunt voluptates voluptas.', NULL, '2023-11-04 23:04:41', '2023-11-04 23:04:41'),
(15, 1, 2, 'Suscipit non et et eum eligendi voluptas porro.', 'atque-et-doloremque-vitae-exercitationem-cum', 'Ipsa eum quia doloribus commodi aut laborum molestias. Quod dicta soluta placeat cupiditate rerum vel. Ab vel dolores quasi repellendus nostrum. Minus sequi ea adipisci sit est enim nihil.', 'Officia odio voluptate ducimus qui minima ducimus praesentium. Sint est tempore et ut impedit. Inventore esse quia laudantium commodi. Voluptate qui quis mollitia consequatur. Vel recusandae reprehenderit omnis modi. Autem rem id repudiandae eum. Quia sequi cupiditate delectus consequatur. Inventore natus similique atque consequuntur necessitatibus in. Quisquam cumque nisi amet mollitia labore rem. Libero molestiae ut fuga doloremque rerum libero. Nemo laudantium ad eveniet et molestiae consectetur reprehenderit.', NULL, '2023-11-04 23:04:41', '2023-11-04 23:04:41'),
(16, 2, 1, 'Veniam tenetur.', 'impedit-quibusdam-totam-asperiores-veniam', 'Iusto totam est omnis dolorum iusto sit ratione. Perspiciatis repudiandae occaecati alias qui. Distinctio aut culpa aspernatur rerum qui voluptate. Impedit qui blanditiis nobis nam sed ut. Ex doloremque ea amet cumque neque blanditiis.', 'Dicta laborum ea sequi voluptatibus. Impedit eaque est earum voluptatem et nihil. Voluptas voluptates explicabo nesciunt quia quia deleniti. Nesciunt repellendus consequuntur recusandae libero et est. Et perspiciatis et omnis fugiat adipisci unde nobis rerum. Nemo eaque quod aut voluptate porro. Ipsum est natus veniam velit deserunt nostrum.', NULL, '2023-11-04 23:04:41', '2023-11-04 23:04:41'),
(17, 2, 1, 'Natus velit voluptatem odio voluptatum.', 'delectus-dolores-beatae-et-nihil-velit', 'Nulla eos id harum molestiae. Commodi molestiae vel perspiciatis nesciunt porro explicabo. Maxime nisi enim consequatur officiis suscipit commodi sit. Aut consequuntur sunt deserunt rerum neque doloremque.', 'Cupiditate magnam repudiandae fugiat aliquid a qui placeat. Voluptatem atque cumque est aut eveniet. Natus veniam est blanditiis quo non. Eius similique et animi dolor sit molestias. Aut libero consequatur impedit veritatis in earum. Excepturi atque harum asperiores architecto aspernatur inventore. Voluptate quas provident sed modi aperiam animi est quaerat. Eum consectetur et ullam eos suscipit sed et adipisci. Est non architecto laboriosam id repellat ea. Dolorem quos blanditiis atque voluptatum. Odio vitae vero distinctio et ipsam a. Maiores possimus molestiae quae illo. Modi ipsa aperiam voluptates sint nesciunt molestiae eos suscipit.', NULL, '2023-11-04 23:04:41', '2023-11-04 23:04:41'),
(18, 1, 3, 'Unde nisi tenetur.', 'enim-ad-assumenda-cumque-dignissimos-tempora-enim', 'Reiciendis ea blanditiis sunt fugiat illum labore accusantium. Asperiores et architecto quisquam repellat corporis.', 'Et explicabo repudiandae sequi dicta nulla. Commodi voluptatem molestias harum minus. Qui quasi ipsa deserunt et aliquid et. Suscipit omnis repudiandae perspiciatis. Sequi dolorum alias modi corporis et asperiores. Aut placeat odit tempora eum. Non dolores nemo et et perspiciatis accusantium blanditiis. Hic dicta velit iure voluptatem ea laborum. Optio nesciunt rerum sequi quis quidem natus.', NULL, '2023-11-04 23:04:41', '2023-11-04 23:04:41'),
(19, 2, 3, 'Dicta sunt qui ut fugit harum rerum.', 'ipsa-sunt-minima-mollitia-soluta-autem-sint-nisi-omnis', 'Dolorem accusamus vel adipisci quasi unde. Omnis minus quam nihil sunt eos enim quis. Magni vero est voluptas sunt doloremque.', 'Expedita consequuntur neque cumque. Voluptatem soluta et ratione fuga dolores similique voluptatem. Iusto repudiandae enim architecto sit laborum omnis quis. Autem omnis incidunt eos. Vel illo eos ducimus et distinctio necessitatibus explicabo. Enim veniam amet qui et blanditiis dolore quia. Nihil accusamus illo ut enim. Pariatur asperiores quaerat sit fugit. Repellat et et qui et voluptates consequatur esse. Mollitia odit consequatur et consequatur ea. Magnam iste consequuntur quo soluta temporibus omnis ut.', NULL, '2023-11-04 23:04:41', '2023-11-04 23:04:41'),
(20, 2, 2, 'Quae neque at numquam sit pariatur.', 'distinctio-et-dolores-nostrum-tempore-laborum', 'Sint animi eos sunt qui eligendi ut praesentium. Occaecati adipisci sit atque doloribus fugit maiores. Ut rerum iusto recusandae blanditiis et. Tempore voluptas et qui et.', 'Aliquid voluptas pariatur minima praesentium temporibus eos. Similique eveniet eum et quas et voluptate consequatur. Eum doloribus quia nihil qui. Rerum itaque quam ut laboriosam vero voluptas voluptas. Est minima sint magnam itaque voluptatem. Recusandae quia odit accusantium dicta sunt corporis. Fuga dolores autem placeat amet voluptate. Quasi dicta enim ducimus quia ab autem. Et numquam totam voluptates et ipsum mollitia.', NULL, '2023-11-04 23:04:41', '2023-11-04 23:04:41');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Febi Utami S.Sos', 'hutasoit.argono', 'spudjiastuti@example.net', '2023-11-04 23:04:40', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'EkHkLCTeQk', '2023-11-04 23:04:40', '2023-11-04 23:04:40'),
(2, 'Ina Malika Zulaika M.Farm', 'aditya.latupono', 'gandi68@example.net', '2023-11-04 23:04:40', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'w5nvrWLKQy', '2023-11-04 23:04:40', '2023-11-04 23:04:40'),
(3, 'Prayogo Kurniawan', 'uli36', 'qmulyani@example.org', '2023-11-04 23:04:40', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'JzolhAnEqd', '2023-11-04 23:04:40', '2023-11-04 23:04:40');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_name_unique` (`name`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`);

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
  ADD UNIQUE KEY `users_username_unique` (`username`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
