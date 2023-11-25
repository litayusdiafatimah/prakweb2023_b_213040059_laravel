-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Nov 25, 2023 at 12:44 PM
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
(1, 'Web Programming', 'web-programming', '2023-11-24 23:53:05', '2023-11-24 23:53:05'),
(2, 'Web Design', 'web-design', '2023-11-24 23:53:05', '2023-11-24 23:53:05'),
(3, 'Personal', 'personal', '2023-11-24 23:53:05', '2023-11-24 23:53:05');

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
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `published_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `category_id`, `user_id`, `title`, `slug`, `image`, `excerpt`, `body`, `published_at`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 'Facilis libero porro qui dolorum omnis.', 'itaque-dignissimos-sequi-cumque', NULL, 'Minus et tempore et voluptas libero. Blanditiis libero aut eligendi dolorem. Optio consequatur dignissimos temporibus cupiditate corporis odit. Perspiciatis reprehenderit unde quia omnis fugiat minima dignissimos.', '<p>Quia nihil aspernatur vel illum est. Molestiae eaque qui vero magnam voluptas doloribus quia cumque. Laboriosam odio non quia optio. Natus hic numquam et est molestiae nisi itaque.</p><p>Omnis rerum eum et odit quisquam. Quae reiciendis cumque ad doloribus. Omnis ut et repellendus ut nemo. Est qui autem dolore necessitatibus hic eligendi deserunt.</p><p>Unde quas est aliquid quaerat et et. Sint ratione consequatur dolores nemo nisi repellat. Ipsam iusto eum voluptates perspiciatis et.</p><p>Iure nam ducimus eos rem asperiores laudantium similique. Quia explicabo rerum ut ut quia voluptatibus veniam provident. Officiis delectus ut nemo pariatur voluptas quasi odit. Consequuntur magni nulla exercitationem odio quia.</p><p>Quo est eveniet aut aperiam. Itaque voluptatem voluptas architecto voluptates qui sed illum. Alias nemo voluptas ut fugiat in aliquid. Minus vitae suscipit et dicta.</p><p>Enim accusamus quae iure fuga assumenda debitis et aut. Distinctio voluptatem enim ratione eos aut ut quia. Sed velit ea excepturi temporibus eaque fuga. Asperiores repellat accusantium voluptatum ex perspiciatis.</p><p>Iusto enim qui molestiae. Accusamus aperiam non quod et vitae. Occaecati doloremque ab possimus animi pariatur excepturi sit. Delectus id fuga atque voluptates.</p><p>Quisquam unde vel aliquid distinctio. Excepturi ad aperiam voluptatem sit. Ipsa quo exercitationem nihil quos maiores.</p>', NULL, '2023-11-24 23:53:05', '2023-11-24 23:53:05'),
(2, 2, 2, 'Consequatur sit.', 'eos-iusto-qui-atque-assumenda-quam-earum-tenetur', NULL, 'Autem magnam dolor soluta autem ipsa itaque. Corporis consequatur qui architecto cumque. Quos asperiores laboriosam vel corporis pariatur sed.', '<p>Ex debitis quas maiores. Et natus et dignissimos tempore est neque voluptatem distinctio. Ut deserunt deserunt facilis earum sunt ea placeat. Expedita eos quis et aut.</p><p>Sunt vel modi possimus harum. Non cum architecto explicabo sint deleniti quis. Vel ut et numquam fugiat. Velit est possimus voluptatem inventore a dolor dolor. Nihil repellat quod distinctio sit voluptas accusamus.</p><p>Accusamus velit incidunt expedita omnis. Laudantium accusamus similique illo expedita reprehenderit et dolorem beatae. Provident excepturi alias illo quaerat earum eum qui nihil. Dolores est voluptates est ut ut nulla.</p><p>Deserunt odio beatae doloribus omnis quia qui. Cumque nemo in quia maiores ullam occaecati. Impedit aut velit repudiandae ducimus.</p><p>Sapiente quaerat veniam sit perspiciatis velit dolore doloribus. Nesciunt odio amet placeat atque illum nesciunt velit. Quos est velit et quis.</p><p>Recusandae nulla omnis nemo qui dignissimos. Omnis harum vero perferendis eos est aliquam. Neque et ut similique soluta iste vel rerum sint.</p><p>Nihil cupiditate dicta asperiores id architecto. Quos velit est impedit animi. Reiciendis et eum commodi impedit. Qui est ipsum dolor ut cupiditate asperiores ex.</p><p>Enim nesciunt tempore rerum. Aut deleniti sapiente laudantium officiis nisi. Molestias maxime eum numquam. Beatae qui magnam magnam tempora animi iste et.</p><p>Est est eum sit voluptatem. Similique debitis voluptatem error autem laboriosam voluptates. Velit dolor at et facilis. Facere at atque nam natus.</p>', NULL, '2023-11-24 23:53:05', '2023-11-24 23:53:05'),
(3, 2, 2, 'Voluptas suscipit dolores.', 'inventore-sunt-voluptate-recusandae-facilis-corporis-consequatur', NULL, 'Nihil quas illum laboriosam adipisci consequatur. Est officiis quia qui quia. Officia sunt corrupti animi illum.', '<p>Occaecati dolorum quia amet similique. Excepturi eveniet ut modi eum officiis soluta ut aut. Praesentium quia veritatis eum et natus consequatur.</p><p>Quis qui explicabo repudiandae aperiam consequatur velit dolor. Quia illo non vero aut voluptatem nisi velit. Labore optio libero et voluptas natus. Eveniet dolorem quisquam et dolores. Qui necessitatibus ratione illum esse aut neque.</p><p>Dicta velit qui eaque voluptatibus aliquam soluta est consectetur. Adipisci deleniti minus cum unde dolorem ipsam debitis. Voluptas qui nulla animi placeat sapiente. Id rerum recusandae dignissimos ut praesentium. Rerum harum aspernatur et qui non eos assumenda est.</p><p>Perferendis ullam amet est voluptas porro optio. Totam animi inventore velit tenetur. Vero quisquam nobis tenetur et laborum corrupti.</p><p>Quas repellat ut ut ratione aut hic. Harum ut commodi blanditiis in autem recusandae cumque. Quia in perferendis et ut. Dolorum consequuntur aut tenetur assumenda et voluptas tenetur nobis.</p><p>Veritatis cum hic natus fugiat. Dignissimos iusto vel eos omnis est reiciendis neque. Praesentium nihil adipisci dolores molestiae ut quod. Dolor est qui cum. Et voluptates quisquam pariatur et.</p><p>Ipsa est temporibus repellat odit illo dolor laboriosam. Unde quod est quasi provident totam adipisci rerum. Reiciendis quae fugit provident aperiam numquam ad inventore.</p><p>Commodi debitis vel nisi repellendus nisi ut. Labore quidem veritatis eum omnis et repellendus ut occaecati. Nesciunt quisquam possimus dolor provident perferendis. Voluptates perferendis odit voluptatem nulla voluptas dolore.</p><p>Et fugiat cum accusantium distinctio quibusdam beatae. Illo consequuntur distinctio atque non beatae est. At maxime quia sint ab quod. Commodi unde officiis quas consequatur dolore.</p>', NULL, '2023-11-24 23:53:05', '2023-11-24 23:53:05'),
(4, 1, 1, 'Architecto recusandae voluptas id culpa sint ratione ad.', 'repellendus-iusto-ut-est-sint-labore-blanditiis', NULL, 'Eos cum ipsam sequi quia non laborum qui quasi. Dolores velit fuga dolorem veritatis rem reprehenderit. Hic eaque numquam iure quo in qui.', '<p>A non et et doloribus quo. Facilis sed accusantium dolore atque illum numquam.</p><p>Dolorem velit perferendis eaque dolor. Sed sint enim voluptates officiis eum ut. Reprehenderit nobis vel suscipit et. Ea doloremque delectus alias enim harum culpa nobis quasi.</p><p>Incidunt sint necessitatibus illum sit ut repellendus nemo. Vel tempore nesciunt voluptatibus vitae provident. Voluptas fugit odit excepturi eos.</p><p>Aut provident ex non. Doloribus qui voluptatem eveniet dolorem magnam qui. Eum quo occaecati in suscipit sed porro dolore.</p><p>Tempora illo similique cumque nemo molestiae. Ut et non quia quae ratione laboriosam vel ducimus. Sed iusto voluptatem cupiditate reprehenderit tempore aut.</p><p>Sit iusto debitis ex vitae praesentium libero. Provident consequuntur non unde quis enim rem. Magni at expedita aut suscipit suscipit soluta soluta. Minus consequatur quasi fugit quia. Nulla quisquam in dignissimos officiis aliquid voluptatibus odit unde.</p>', NULL, '2023-11-24 23:53:06', '2023-11-24 23:53:06'),
(5, 2, 1, 'Officia delectus magni consequatur voluptas cupiditate praesentium.', 'nisi-provident-enim-ipsa-quia', NULL, 'Et ea sit velit possimus eos deleniti et. Maiores sed quia sed maxime. Consequuntur exercitationem quibusdam reiciendis debitis ratione aut.', '<p>Error est provident reiciendis fuga. Qui quia exercitationem nisi autem fugit et molestiae. Qui voluptas modi amet animi voluptatum quibusdam.</p><p>Ab provident repudiandae natus consequatur voluptatem. Sed impedit sint enim. Quisquam in consequatur impedit voluptas sequi ab. Et nesciunt beatae itaque nihil.</p><p>Voluptatem qui sunt quos omnis exercitationem fugiat cupiditate. Distinctio velit cumque enim quas architecto aut magnam reprehenderit. Fuga corporis aliquid tempora doloribus dolorem autem dolorum.</p><p>Molestias eum tempora assumenda qui tenetur ea ut accusamus. Cupiditate fuga aut non consequatur corrupti qui. Aperiam dolorum architecto reiciendis aperiam odio. Sunt beatae voluptas cupiditate ab necessitatibus.</p><p>Et iusto corrupti suscipit aut harum. Aut et enim at. Molestiae earum aut hic architecto similique quia ut et. Voluptas error est minus eos ut.</p>', NULL, '2023-11-24 23:53:06', '2023-11-24 23:53:06'),
(6, 1, 2, 'Quis enim quis culpa voluptatum quibusdam incidunt.', 'dolore-doloribus-fugit-ut-provident-odio-aut', NULL, 'Expedita velit impedit consequuntur maiores illo. Provident delectus cupiditate unde qui.', '<p>Ipsum corrupti et et tempore qui voluptatibus. Perspiciatis nobis aut nam est qui. Consequatur eos voluptas tenetur ut est omnis.</p><p>Et sint molestiae sunt aut quis veniam. Sint quo atque aspernatur consequatur excepturi incidunt. Earum officiis et id est dolorum iusto atque et.</p><p>Aut vitae consequatur tempora laudantium. Laboriosam dolorum facere aut molestiae odio aspernatur aut. Facilis vel sint aspernatur aliquam in voluptates rerum. Maxime et quis soluta iusto commodi veritatis aspernatur. Est in vel ut eos tempore magni nemo.</p><p>Enim a quis facilis sint. Ducimus sunt consequatur ut. Accusamus necessitatibus ipsam earum.</p><p>Corporis qui ab iusto et. Pariatur nemo et consequatur id et. Dolorem aut qui quo repudiandae. Laborum ea sit enim ipsa possimus.</p>', NULL, '2023-11-24 23:53:06', '2023-11-24 23:53:06'),
(7, 1, 2, 'A voluptate reiciendis.', 'sequi-quo-dolore-voluptas-iste-est-nihil', NULL, 'Ullam nam eos voluptatem ad eaque consequatur provident. Vel totam sed quod tenetur quos ipsam velit ab. Quasi necessitatibus a repellendus non eius facilis.', '<p>Molestiae tempore dolorum assumenda minima officiis quia. Sed harum voluptatem corrupti iure pariatur nostrum aut voluptatem. Accusantium voluptatem porro laudantium ut explicabo qui. Non quod quisquam et. Ea qui ipsa non dolor iure temporibus possimus.</p><p>Laboriosam corporis optio distinctio odit exercitationem voluptas eos id. Dolor repellendus est consequatur voluptas modi vero esse. A ipsam a vel quis temporibus ut quas. Autem vitae deleniti dolorem sint esse vero aspernatur.</p><p>Rem dicta aut architecto aliquam odio voluptatum doloribus dolorum. Quas incidunt mollitia et et. Et ipsam magni doloremque voluptas dolorem.</p><p>Maxime qui praesentium aliquam quaerat. Aliquam minima dicta consectetur aspernatur.</p><p>Soluta dolorem error nesciunt aut non quia. Accusamus dolores dolor minus ea impedit corrupti aut. Qui voluptatem rerum consequatur neque. Minima quia qui harum quisquam necessitatibus id.</p><p>Aut voluptatem amet reiciendis et. Aperiam reprehenderit enim in.</p><p>Molestias quibusdam non vitae est. Dicta veritatis esse ab animi veniam et perferendis. Cum officia est itaque sint. Illo non veritatis laboriosam natus.</p><p>Sint recusandae veniam et magnam. Eos aut necessitatibus et nam et harum. Repudiandae in omnis voluptatem architecto quia. Ab non tempora eveniet hic dolores dicta dicta.</p><p>Ducimus maxime rerum mollitia est distinctio. Sit officia voluptas libero perspiciatis aut. Inventore officia ut nihil perspiciatis consequuntur dicta.</p><p>Et et ut similique animi aut sint molestiae. Aliquam explicabo voluptas hic. Est quia et voluptate sit suscipit repellendus eum qui.</p>', NULL, '2023-11-24 23:53:06', '2023-11-24 23:53:06'),
(8, 2, 1, 'Tempora qui tempora eligendi.', 'cum-illo-quos-libero-quidem', NULL, 'Doloremque dolorem omnis voluptas voluptatem perferendis voluptatem sit. Et placeat nihil et aliquam magni. Nemo corrupti dolor dignissimos minus. Est doloremque voluptatem minima non.', '<p>Ut dolore asperiores aut et modi deserunt. Suscipit non animi autem nihil temporibus. Consequuntur sit maxime assumenda ipsum est voluptas. Magni qui aut quis sapiente enim. Quia rerum veritatis officiis tempore.</p><p>Corporis eum exercitationem eos minus possimus vel. Ut est sed pariatur quis suscipit sit fugit. Eos nihil possimus eligendi odit autem incidunt.</p><p>Laboriosam iste voluptatem ducimus modi dicta. Voluptatem qui tempora quia. Aut quis sit et et.</p><p>Magni omnis illum veritatis consequatur quia reiciendis. Et qui rerum doloremque explicabo ea. Consequuntur qui est deleniti possimus eaque. Sint earum voluptatibus qui autem doloremque ratione incidunt. Qui numquam repellat culpa consequatur.</p><p>Deserunt vitae commodi harum excepturi. Repellendus qui commodi vitae fugiat velit. Eos qui sed aliquid eos.</p><p>Ut vero quisquam iste deleniti blanditiis quam. Eaque ut odio aspernatur ducimus labore error sunt. Quidem eveniet ut similique.</p><p>Nam voluptatem rerum accusamus eligendi dolorem nihil. Aut cumque minima quidem quis dolor quis.</p><p>Est nostrum expedita id. Fugit sit voluptatem iure quia tenetur rem. Dolores quod ea velit necessitatibus omnis praesentium.</p>', NULL, '2023-11-24 23:53:06', '2023-11-24 23:53:06'),
(9, 2, 3, 'Id expedita reiciendis.', 'inventore-corrupti-expedita-ipsum-amet', NULL, 'Aut asperiores eos iste ut quod voluptatem accusamus. Voluptatem alias expedita molestias aut. Error reiciendis temporibus modi ut qui. Non odit dolorum aut aspernatur modi iure.', '<p>Ipsum rerum ut ipsa quia. Saepe quidem minima omnis itaque. Repellendus eum ut sint ut. Et voluptas molestiae ea ut provident.</p><p>Illum explicabo dolores unde consequatur. Molestiae natus ut voluptatum vel aperiam veritatis numquam. Sapiente aliquid exercitationem at non ratione est.</p><p>Libero voluptas vel id. Et nobis eveniet soluta explicabo quae aut dolore. Unde cum deserunt placeat nostrum reprehenderit repudiandae error dolorem. Ipsa vel vel qui nobis eaque doloremque omnis.</p><p>Eligendi in iste rerum adipisci aut ea dignissimos. Hic voluptas impedit aperiam. Non qui ut deserunt ut vitae.</p><p>Laborum quaerat nobis iure necessitatibus et qui. Minus deserunt aut voluptatibus odit. Consequatur nihil sint corporis aliquid dolores libero laudantium. Modi magni placeat sunt possimus nostrum repudiandae ut.</p>', NULL, '2023-11-24 23:53:06', '2023-11-24 23:53:06'),
(10, 2, 1, 'Dolor quo et et.', 'saepe-ducimus-nemo-aut-ut-saepe-est', NULL, 'Voluptatum neque hic in excepturi aliquid. Dicta quod modi est laboriosam reiciendis. Explicabo beatae aut ut.', '<p>Nihil eaque voluptatibus aliquam aliquam non velit tempora ad. Temporibus adipisci quasi dignissimos doloremque. Et aut consequuntur eveniet perspiciatis dolor cupiditate. Mollitia minus quasi reprehenderit consequatur non illo.</p><p>Pariatur consequatur omnis sapiente expedita odio. Beatae ipsum rerum aut aliquam sit. Dolores ducimus odit beatae quaerat eos. Nihil delectus voluptates consequuntur dolor est rem porro. Asperiores optio natus dolores sed excepturi molestiae maxime.</p><p>Neque sit ut architecto earum ipsam pariatur qui. Assumenda aut exercitationem sed ipsum autem. Soluta cupiditate sapiente similique. Repudiandae ut omnis quidem dignissimos non quia dicta.</p><p>Ipsa sunt et repellat pariatur voluptas quo. Enim ad vitae praesentium at rerum ea. Earum voluptatem aut corrupti ut. Unde aliquam sapiente est aut autem.</p><p>Explicabo fuga voluptatem officiis corrupti. At iure incidunt rerum. Saepe debitis eos pariatur sit velit ut.</p><p>Dolorem mollitia quaerat odit. Quos explicabo sapiente est architecto asperiores.</p><p>Itaque magni nisi qui. Et labore magni provident repellendus. In inventore autem laborum fugit.</p><p>Qui et dolorum veritatis vel et similique. Quo doloribus aliquam harum vitae. Modi et facere vitae voluptas omnis voluptatibus quisquam. Aliquid odio et architecto aut labore. Aut similique dolorum quidem debitis illum.</p><p>Eveniet fuga eos repudiandae consequatur ipsam nihil. Itaque dignissimos omnis soluta nesciunt expedita itaque enim. Accusantium velit esse nostrum odit est et.</p><p>Velit culpa ut id aspernatur laborum fuga sit. Architecto repellat vero laborum et sit facere possimus. Consequatur quas tenetur repellendus facilis ratione.</p>', NULL, '2023-11-24 23:53:06', '2023-11-24 23:53:06'),
(11, 2, 3, 'Optio dolorum dolorum vel.', 'incidunt-deserunt-nesciunt-necessitatibus-occaecati', NULL, 'Ut non molestias labore vero dolorem eum. Doloribus pariatur ut eligendi rem fugit.', '<p>Aperiam nobis repellat est quaerat ex hic ipsa et. Aliquam eum recusandae quo optio harum in non enim. Voluptatum qui asperiores praesentium modi provident tenetur.</p><p>Nihil et voluptas iure porro officiis. Aspernatur reprehenderit atque amet quia. Esse sint dignissimos rem nemo incidunt qui. Deleniti ut est est fugiat sit architecto.</p><p>Qui saepe ipsum cupiditate consectetur. Maiores sunt odit qui. Harum quae in accusantium fugiat excepturi. Sed sint consequatur voluptas facilis magnam.</p><p>Rerum quos voluptatum non nostrum. Modi quis asperiores vero et quia dolores praesentium accusamus. Accusamus eos magnam itaque voluptas. Amet perspiciatis qui vero sed aut.</p><p>Impedit molestiae placeat sed consequatur. Et et voluptatem alias soluta voluptas. Neque itaque eaque qui quam neque qui hic.</p><p>Modi facere consequatur veritatis reiciendis ut. Et repudiandae eligendi aut earum quod.</p>', NULL, '2023-11-24 23:53:06', '2023-11-24 23:53:06'),
(12, 1, 3, 'Rerum assumenda quis doloribus corrupti.', 'officia-eum-odit-vero-et-et-eum', NULL, 'Qui veritatis quo modi doloribus. Qui voluptatem qui quisquam sint est libero blanditiis.', '<p>Vel consequatur nihil laboriosam cum necessitatibus reprehenderit eveniet. Rerum occaecati harum non et nulla autem. Omnis consequuntur deserunt velit cumque. Et excepturi sapiente enim.</p><p>Ad expedita distinctio facere expedita rerum repellat enim cumque. Illo ut velit cupiditate ad blanditiis. Et et aliquid qui eum qui. Unde vitae quia labore ut.</p><p>Sit atque mollitia cupiditate. Iusto earum illo consequatur cupiditate perferendis voluptate laboriosam. Eum quisquam eum rem expedita vero laboriosam optio. Similique non distinctio officia delectus qui animi in.</p><p>Et quaerat vel quia quaerat eius expedita nemo. Eum quam odit sit ut ut quibusdam dolor. Ex eius recusandae nam ut sapiente qui. Neque et ut similique perferendis exercitationem.</p><p>Magni exercitationem velit similique. Eligendi nihil id tenetur laudantium qui exercitationem dolor sit.</p><p>Autem sapiente minus quo temporibus. Nostrum consectetur et error. Voluptates repudiandae quasi nostrum dolor. Et sed ut possimus beatae minus rem et.</p><p>In dolorem qui quo ex voluptates sunt. Rerum consectetur ut porro quam qui tempore consequatur.</p><p>Harum quas quis omnis dolorum non adipisci temporibus. Voluptatem velit consectetur eaque. Dolore beatae molestiae nesciunt corporis beatae eum adipisci. Aut dolore dicta est.</p>', NULL, '2023-11-24 23:53:06', '2023-11-24 23:53:06'),
(13, 2, 1, 'Laborum et nihil iste reiciendis illum eveniet.', 'expedita-qui-unde-possimus-nihil-nisi-molestias-natus', NULL, 'Quo repellat veritatis officiis enim tempore hic. Consequuntur aliquam eligendi accusantium a non. Optio inventore molestiae sit ipsum a suscipit laboriosam.', '<p>Nulla quis id fuga odit et et. Atque eos officia aut saepe in iste nihil. Facilis nemo at ducimus.</p><p>Totam eum aperiam ea ipsa rerum quia omnis aut. Quia soluta maxime et quibusdam quibusdam magnam. Ut ut iure reiciendis qui facere minus. Explicabo quas id nisi nulla ea provident.</p><p>Rerum molestiae voluptates ut sint. Numquam aut voluptatibus quas impedit repudiandae sequi. Ad quaerat eveniet officia magnam totam tempore.</p><p>Minima inventore est dolorum quo ipsa id voluptatibus. Error repudiandae aut ea ut quo quasi. Suscipit voluptate vel modi magni nisi.</p><p>Eius perspiciatis eos molestiae fugiat sit. Corporis animi incidunt illo temporibus fugit architecto. Facere ex eius occaecati veritatis voluptas est. Unde sunt et omnis est qui.</p><p>Et deserunt voluptatem officiis sed quia. Est qui esse consequatur cumque rem. Architecto alias qui earum ullam.</p><p>Rerum recusandae reiciendis praesentium. Asperiores minima sit quae ipsa aut.</p><p>Dolores eius rerum quia unde ipsa. Corrupti iusto aut repudiandae molestiae aut sit. Eius accusantium cupiditate quia vel. Et repudiandae dolor non quos.</p><p>Laborum labore repellat dolorem odit aut. Minima adipisci mollitia voluptas ut ex. Eius quisquam aspernatur occaecati eius asperiores sunt enim vel.</p>', NULL, '2023-11-24 23:53:06', '2023-11-24 23:53:06'),
(14, 2, 1, 'Sint aliquam nobis ipsam autem ipsum enim.', 'suscipit-dolor-amet-deleniti-tempore-et-perspiciatis', NULL, 'Ut facere eveniet adipisci sit dolor voluptas beatae ut. Dolorem qui doloribus reiciendis. Maiores mollitia eligendi aspernatur aut illum dolorum aut. In voluptates voluptatibus quis rem molestiae quae voluptate ut.', '<p>Illo pariatur hic non error cumque occaecati explicabo. Velit non voluptate quia tempore cupiditate reiciendis consequatur laudantium. Dolorum consequatur voluptas ut consequatur mollitia magnam iure.</p><p>Minima aut voluptatum recusandae molestias dolorem. Ea qui consequatur magnam voluptas ratione nam expedita. Non reprehenderit dolores et excepturi et reiciendis. Sed repudiandae quia qui qui omnis illum debitis voluptates.</p><p>Quae sed veritatis dolorum et fuga. Nam nostrum expedita sed non eos deserunt. Repudiandae laborum voluptas neque vel. Aut eos illum esse est ullam aut.</p><p>Atque velit cumque blanditiis. Dolores maxime ea quam mollitia. Voluptate voluptas fugiat quibusdam temporibus qui ad. Incidunt consectetur architecto accusantium minus ut veniam illo cupiditate.</p><p>Accusamus nihil deleniti aliquam vero voluptatem quis eum. Natus molestias a dolor beatae non cumque tempora. Ut cumque ut necessitatibus alias nesciunt ex. Cumque et inventore fuga quo eum magni autem.</p><p>Velit laudantium pariatur ratione molestiae hic quia. Consequatur eius architecto dicta. Quidem a voluptas voluptatem dolor non. Earum magnam hic sapiente inventore.</p><p>Ipsa nobis quis officia inventore. Asperiores voluptatem tempora autem rerum tempore. Aliquid suscipit odit quis excepturi quia est et in.</p><p>Repudiandae voluptate perferendis provident beatae. Enim delectus eaque accusantium sit ipsam fuga. Adipisci quidem qui est recusandae illo veniam omnis. Molestiae deserunt quia molestiae quia delectus.</p><p>Adipisci doloribus maiores facilis quisquam voluptatum beatae dolores. Dolorem illo amet doloremque nobis nihil doloremque aliquam. Libero nulla neque provident ullam beatae.</p><p>Odit est ut dignissimos animi fugit enim. Voluptatem omnis modi accusamus consequatur. Qui maxime quo aut esse. Facilis optio cupiditate praesentium laborum ea iusto animi.</p>', NULL, '2023-11-24 23:53:06', '2023-11-24 23:53:06'),
(15, 2, 2, 'Ducimus repudiandae voluptatibus illum eum nisi ullam.', 'rem-ab-quam-voluptatem', NULL, 'Assumenda consequatur iusto minima quia odit et velit. Maiores nesciunt harum sequi deserunt inventore quae minima. Inventore nihil sint reiciendis nulla iure itaque aut. Iure id ullam vel exercitationem.', '<p>Quia in debitis et est. Quia enim quod qui nisi ullam. Aut id ut et. Aspernatur illo nihil non rerum atque explicabo. Aut non sint quas.</p><p>Iste quae quia sed maxime natus omnis sunt. Non omnis est unde eos accusamus et earum. Velit quasi similique ab asperiores velit molestias.</p><p>Dolor sunt harum perspiciatis voluptatum et omnis incidunt. Enim nihil molestiae inventore cum dolores. Unde et similique sapiente nemo et. Amet numquam nisi illum et quo.</p><p>Officia harum dicta rerum et explicabo harum eveniet. Porro est repellat illum quo. Occaecati itaque quam officiis eum harum eius harum neque.</p><p>Labore incidunt est facilis est tempore ut consequuntur ut. Alias numquam vitae consequuntur nihil sit ipsum esse.</p>', NULL, '2023-11-24 23:53:07', '2023-11-24 23:53:07'),
(16, 2, 3, 'Ab architecto.', 'quae-commodi-ut-qui-et', NULL, 'Perspiciatis reprehenderit nesciunt reiciendis ipsam nesciunt tempore quae. Dignissimos voluptas excepturi dolore id vel optio temporibus. Non sunt officiis molestiae est. Officia consequatur itaque ut rerum explicabo.', '<p>Voluptate est et et earum quas repellat rerum. Quas nulla voluptas omnis beatae dolorem. Tempore id totam ea corporis expedita. Porro et sit voluptatem qui in aut eum accusamus. Autem iure qui ipsam dolor.</p><p>Ratione iure harum itaque repudiandae fugiat laboriosam et. Consequatur veniam est sed quis architecto reprehenderit eligendi est. Et quam et eius veniam harum dolores consequatur. Iste nihil aperiam similique facilis.</p><p>Aliquam iste sapiente occaecati et qui. Dolores eveniet tempora quia recusandae et aut quos. Natus et nemo alias sapiente rerum enim labore.</p><p>Sit est cupiditate sed et aut. Tenetur hic quia qui. Libero consequuntur et cupiditate.</p><p>Recusandae voluptatum quidem consequuntur sint velit et ea. In consequatur velit iusto in vel ipsam. Perspiciatis laborum accusantium rem eligendi. Ut corporis at ut doloremque numquam omnis optio est.</p><p>Distinctio nemo corporis deserunt accusamus illo vel. Consectetur sit repellendus error. Cum vitae dolor repudiandae omnis hic.</p><p>Veniam a et et vitae voluptatum qui enim. Fuga quo temporibus accusamus rerum. Omnis quo eveniet enim ut officiis aut. Ad possimus quisquam ipsam dolor.</p><p>Rem magnam amet et quis sapiente quas et fugit. Quia consequuntur asperiores sed vel. Perferendis adipisci id esse nam nisi. Enim tempora laborum aspernatur nihil quas.</p>', NULL, '2023-11-24 23:53:07', '2023-11-24 23:53:07'),
(17, 2, 2, 'Voluptatum similique corrupti commodi aspernatur voluptas.', 'fugit-distinctio-accusantium-neque-quod-nobis', NULL, 'Laudantium qui rerum fuga praesentium suscipit eum. Ipsa ut suscipit accusamus omnis voluptatem et. Quibusdam iusto ut esse molestias nihil. Corporis in commodi autem accusantium nihil.', '<p>Non quaerat et est mollitia et asperiores illo. Fugit odit ullam dolor eius. Et voluptatum temporibus et quod. Nesciunt recusandae nulla dolores.</p><p>Reprehenderit ducimus eius voluptate nostrum. Ea sit ipsam qui id sapiente dignissimos. Ducimus aut rerum quia rerum asperiores dolor et.</p><p>Deserunt animi exercitationem omnis. Tempore odio doloremque inventore aut quia nulla fugit. Error et mollitia eius laboriosam esse est. Sit commodi corporis aut corrupti.</p><p>Est reiciendis perspiciatis cum ullam voluptate voluptatem corporis. Eum sunt fugit quo voluptatem provident repellendus odit. Corrupti eum et omnis et dolorum doloremque minima. Fuga perspiciatis officiis ipsum rem eos vel harum minus.</p><p>Error nulla laborum quis dolores. Ut voluptatem in odio odit. Laudantium odit ipsum veniam voluptas aspernatur nostrum autem.</p>', NULL, '2023-11-24 23:53:07', '2023-11-24 23:53:07'),
(18, 1, 2, 'Sed dolore blanditiis fugit voluptates quo.', 'est-voluptate-qui-odit-molestiae-et', NULL, 'Rerum quia minus odit eaque. Mollitia qui cumque recusandae nemo non voluptatem sit. Dolorum alias ut aliquam ratione. Ad sapiente quibusdam qui reiciendis sit facilis et.', '<p>Aut voluptas omnis explicabo aut ut enim sint nemo. Rem molestiae dolor ullam modi quisquam suscipit. Quisquam illum libero rerum expedita mollitia atque quos dolorum.</p><p>Ut eos et est excepturi voluptatibus reiciendis. Placeat asperiores qui explicabo aut sunt voluptatum accusantium. Et in dolor a repellat. Sed aspernatur iure cupiditate et ad.</p><p>Architecto fuga velit quasi voluptate aut modi iste. Beatae esse aut et quos voluptatem quia non.</p><p>Et eius qui atque sequi et atque. Vero dolor iure ut deleniti est numquam occaecati. Totam enim tempore doloremque rerum minima blanditiis exercitationem ab. Quo sit culpa rerum rerum repellat. Voluptatum amet accusamus minus sed culpa nostrum.</p><p>Necessitatibus totam id dignissimos sed quia. Voluptates illo et dignissimos tempora facere. Beatae ut velit laudantium maiores eum eum. Temporibus ipsum quis autem nam reiciendis sit iure.</p><p>Quas omnis voluptas deleniti commodi voluptatibus voluptatem qui. Molestias et nobis quo voluptatem fugiat id praesentium. Placeat deleniti illo velit alias.</p><p>Ducimus saepe ducimus unde ex rerum et. Animi incidunt deleniti error quia esse at.</p>', NULL, '2023-11-24 23:53:07', '2023-11-24 23:53:07'),
(19, 1, 3, 'Tempora consequatur ea sed qui saepe fuga eum ut quisquam.', 'iure-nobis-sed-omnis', NULL, 'Quo maxime eaque hic odit. Sed voluptas numquam et possimus voluptatem. Consectetur unde et vel soluta aspernatur sed quisquam.', '<p>Dolores cum praesentium nesciunt dolorum dolore eaque. Nesciunt dolorem molestiae placeat rerum magnam molestiae. Sint labore aut sint sit aut sunt.</p><p>Harum esse est excepturi sit ipsa. Voluptatem aperiam quis velit sint vero enim atque. Fugit nemo quidem minus rerum corrupti iure veniam. Iure dicta et aperiam numquam qui aut fugiat.</p><p>Consequuntur illum perferendis et est excepturi non id. Voluptatibus tenetur autem consequatur saepe voluptate. Pariatur id iusto perferendis suscipit.</p><p>Quia ipsum odit sunt eos nobis ipsum. Quos repellendus rem laudantium nihil totam repudiandae. Aut cumque est facilis est nemo sit.</p><p>Natus commodi aut saepe aliquid repellendus. Molestiae cumque et cum consequuntur vero suscipit nihil. Nulla dolor voluptatum adipisci accusantium laborum ad. Neque ipsam beatae eius eius quae. Eum eius tempora dolorem fuga in.</p>', NULL, '2023-11-24 23:53:07', '2023-11-24 23:53:07'),
(20, 2, 3, 'Non nesciunt odio fugit ad est neque harum impedit.', 'minus-nemo-qui-vel-voluptatum-magnam', NULL, 'Asperiores id impedit sunt et qui officia est. Minus itaque quisquam et quo. Repellendus repudiandae reiciendis molestias provident qui excepturi consequuntur.', '<p>Qui reiciendis quisquam atque enim est molestiae enim. Enim est dolor quisquam perferendis repudiandae. Qui animi non consequatur vel neque. Ducimus iste et ad.</p><p>Dolores nesciunt saepe aperiam error. Non molestias aut ullam totam placeat possimus vitae ut. Mollitia amet eligendi saepe aut officia esse voluptatem. Repudiandae nobis non consectetur quia accusantium. Quis nisi aliquam veritatis quo aliquid.</p><p>Qui officia natus eum. Hic eaque neque excepturi tempora. Natus sed impedit veniam sed aliquam odit magnam. Aut enim quisquam et modi.</p><p>Hic consequuntur corporis commodi saepe incidunt alias. Dolore dolor voluptatem odio sint quia velit. Dolorum blanditiis est reprehenderit cumque ad quas. Vel quia consequuntur inventore. Dolores sit nihil modi ut praesentium adipisci odit.</p><p>Fuga ea excepturi et assumenda omnis. Incidunt repellendus commodi qui eum fuga. Consequatur tempora sequi rem aspernatur rerum consequuntur.</p>', NULL, '2023-11-24 23:53:07', '2023-11-24 23:53:07'),
(21, 2, 1, 'Post Baru', 'post-baru', 'post-images/wikvSkRPdJVKerViaws1p6AwtD36NsvLX8L4sZ1s.jpg', 'Post Baru', '<div>Post Baru</div>', NULL, '2023-11-25 00:12:30', '2023-11-25 05:26:34');

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
(1, 'Lita Yusdia Fatimah', 'litayusdia', 'litayusdiaf@gmail.com', NULL, '$2y$10$69A7NWmfXkbjiFVlENxekuFCnNjQQo6K24nLFoOZ0Nb063bE.0kUW', NULL, '2023-11-24 23:52:59', '2023-11-24 23:52:59'),
(2, 'Ghaliyati Puspa Mulyani S.Gz', 'gmegantara', 'caket31@example.com', '2023-11-24 23:53:05', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'M3Sei5lrbq', '2023-11-24 23:53:05', '2023-11-24 23:53:05'),
(3, 'Bakiman Ardianto S.E.I', 'hasim93', 'clara.anggriawan@example.net', '2023-11-24 23:53:05', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'yCSe8TY4UH', '2023-11-24 23:53:05', '2023-11-24 23:53:05'),
(4, 'Kasiyah Yuliarti', 'anastasia56', 'dimas50@example.net', '2023-11-24 23:53:05', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'G7Jt9h0VPx', '2023-11-24 23:53:05', '2023-11-24 23:53:05');

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
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

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
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
