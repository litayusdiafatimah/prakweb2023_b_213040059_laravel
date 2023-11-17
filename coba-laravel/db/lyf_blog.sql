-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Nov 17, 2023 at 06:56 AM
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
(1, 'Web Programming', 'web-programming', '2023-11-08 02:53:42', '2023-11-08 02:53:42'),
(2, 'Web Design', 'web-design', '2023-11-08 02:53:42', '2023-11-08 02:53:42'),
(3, 'Personal', 'personal', '2023-11-08 02:53:42', '2023-11-08 02:53:42');

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
(1, 2, 2, 'Quisquam vero at sit quam ullam accusantium vel ipsa non atque.', 'in-aspernatur-quae-sequi', 'Quisquam culpa ipsam fugiat et nisi id. Voluptatem quia minus ipsam voluptatem temporibus animi quia. Esse sit earum est sint qui qui.', '<p>Dolorem debitis et possimus ab voluptatem. Illo fuga pariatur aut veritatis. Aperiam occaecati alias exercitationem nulla. Odit enim velit laborum atque ut.</p><p>Eum quia optio ipsum aut voluptatem aut. Quisquam atque sint et a dolorum iusto consectetur. Incidunt eos quo nihil et et et. Incidunt aperiam velit voluptate aut consequuntur a et. Velit fuga quibusdam aut aperiam nisi.</p><p>Voluptate quia quo nulla earum recusandae praesentium aut. Vero esse voluptatem quasi enim sint quia perferendis. Et eius sint quo et.</p><p>Consequatur voluptates possimus vitae aut enim voluptates ea. Repudiandae sunt eligendi laborum optio voluptas. Repudiandae beatae et aspernatur.</p><p>Dolor delectus ea ut minus molestiae qui aliquid. Qui libero aliquam sint officiis.</p><p>Atque perspiciatis laudantium rem. Molestiae laudantium quo ea eveniet ut. Culpa et facilis adipisci maxime. Vitae quam eos non nulla ullam id hic.</p><p>Et sed est voluptatem aut saepe voluptatem tempore autem. Expedita enim possimus nam alias laborum sed. Est amet et et voluptatem magnam eos cupiditate.</p>', NULL, '2023-11-08 02:53:43', '2023-11-08 02:53:43'),
(2, 1, 2, 'Nesciunt asperiores rerum sed placeat.', 'rerum-non-similique-et-quae-aliquam', 'Quibusdam consectetur modi corrupti sit quas. Ea ratione quis consectetur optio excepturi. Velit aut voluptates exercitationem magni culpa repellendus. Nihil doloribus quidem minus ipsum officiis et animi veritatis.', '<p>Vel accusamus dolor itaque consequatur. Est quasi maiores quasi at. Modi libero doloremque est similique et quos sapiente nisi. Dicta autem voluptate aliquam dolores. Eum minus quo dolor earum iusto adipisci.</p><p>Occaecati sint soluta qui id sit dolorem id. Nam praesentium sint autem reprehenderit ratione ea. Soluta cupiditate ut qui asperiores.</p><p>At occaecati autem consequatur assumenda molestiae omnis consequatur sit. Accusantium repellat id dignissimos sit rem nam id dolorum. Sequi tenetur quas eum maiores.</p><p>Velit et et libero quam. Voluptatem debitis totam nemo facilis. Vel dolores optio quae nihil beatae molestiae aut. Officiis voluptatibus cumque sunt quia ut.</p><p>Quo culpa veniam ipsam ipsum nihil voluptatem. Odio repellat accusamus non nostrum maxime sequi unde. Molestias blanditiis ratione voluptate debitis dolor voluptatibus. Nam fugit harum hic.</p><p>Blanditiis ullam qui sed deserunt. Est ut odit quos cumque hic perferendis fuga. Cupiditate totam modi excepturi culpa dignissimos error in. Deserunt debitis ratione odio consequatur ea.</p>', NULL, '2023-11-08 02:53:43', '2023-11-08 02:53:43'),
(3, 1, 3, 'Omnis at consequatur suscipit et quos velit.', 'recusandae-inventore-voluptas-qui-eum', 'Adipisci maiores doloribus est doloribus aspernatur. Quo aut consequatur fugit a exercitationem magnam. Consequatur id sint ut aut ut rem.', '<p>Corrupti et placeat sit accusamus autem hic. Consequatur rerum ut ea quae. Accusantium explicabo officiis voluptates sit.</p><p>Mollitia dolor quia maxime. Quidem qui et esse velit et voluptas sequi. Id voluptatem veniam et a. Est blanditiis laboriosam error saepe delectus eveniet laudantium minima.</p><p>Sed non aut nulla ullam sunt aut nobis. Voluptatem perferendis velit esse sit optio. Ut quasi et et sapiente velit. Explicabo quam expedita in accusamus facilis dolores quam repellendus.</p><p>Odit debitis et distinctio aut qui similique. Nisi amet doloribus atque distinctio qui. Omnis natus temporibus ea. Ea ex culpa molestiae reiciendis molestiae architecto.</p><p>Aspernatur quaerat veritatis et laudantium optio animi qui. Laboriosam et qui ipsam sint nihil. Deleniti impedit dolorem ea. Eum optio voluptas assumenda nemo totam molestiae et repudiandae.</p><p>Nemo distinctio ut in dolores. Similique enim dolorem labore qui. Occaecati perferendis omnis maiores eos. Et dolorem omnis illo.</p><p>Placeat voluptas eligendi et earum perferendis provident debitis error. Quia dolorum hic unde nam minima quo. Sed suscipit odit sit qui et iusto. Assumenda quae autem laborum perferendis voluptatem.</p>', NULL, '2023-11-08 02:53:43', '2023-11-08 02:53:43'),
(4, 2, 3, 'Et ducimus ut in ab.', 'exercitationem-debitis-magnam-commodi-debitis-ab-dolor', 'Expedita ducimus asperiores suscipit ducimus autem amet. Debitis tempora repellendus asperiores perferendis et qui similique. Et fugit nam ad cupiditate nostrum occaecati. Minima corrupti omnis voluptatem omnis. Repellendus et qui quia cumque ut et.', '<p>Qui impedit quo quo nostrum ea. Non soluta voluptate voluptas eius vitae. Id minus suscipit assumenda enim.</p><p>Quia ratione a rerum perferendis. Pariatur sed molestiae nisi unde dicta. Nobis voluptatem vel repellat eum.</p><p>Incidunt commodi sunt et odio. Voluptatem quia minus est et deserunt sed pariatur. Neque quidem inventore alias rerum optio doloremque quidem. Sit beatae ea quis ut numquam.</p><p>Ullam et ea doloremque minus quis ipsum qui quia. In eum doloribus qui est. Minus doloribus dolorum ut quos nesciunt. Nostrum illo expedita voluptatem et quis repudiandae.</p><p>Architecto velit ut voluptas velit aut et. Omnis enim accusamus adipisci itaque vero neque. Libero quibusdam provident aut dolor facere molestiae eos.</p><p>Sed voluptatem necessitatibus est et est rerum. Esse aut ut sint consequatur ut numquam. Accusamus voluptatem et qui autem necessitatibus dolorem quas.</p><p>Adipisci fuga distinctio eos. Eum ipsa tempore odit sint. Optio est necessitatibus iure recusandae mollitia eaque.</p><p>Officia repellat illo magnam velit dolorem aspernatur. Rerum eaque aut sint incidunt dolor culpa. Unde perspiciatis aut suscipit harum laborum iusto autem.</p><p>Odit accusantium corporis aut qui expedita. Nihil ut ullam explicabo. Voluptatem reiciendis occaecati nostrum corporis perspiciatis.</p><p>Voluptas quia repudiandae qui dolor impedit corporis dolorem. Harum eveniet incidunt voluptas dolores in illum. Libero numquam sunt cupiditate quo.</p>', NULL, '2023-11-08 02:53:43', '2023-11-08 02:53:43'),
(5, 2, 1, 'Quia dolor sed temporibus.', 'distinctio-qui-inventore-asperiores', 'Ea error repellat ab laboriosam consequatur ea rerum rerum. Veritatis sunt delectus temporibus dolorum consequatur ipsum. Velit est necessitatibus repellendus quos minus modi accusamus.', '<p>Et pariatur sint ipsam velit perspiciatis ipsam. Laudantium labore doloribus repellat laboriosam debitis ut consectetur. Adipisci aut voluptatibus nesciunt ut. Facilis animi libero natus sint. Labore id omnis quam beatae assumenda amet id.</p><p>Aut autem est cum aperiam minima et cupiditate aspernatur. At animi error quod delectus. Reiciendis est necessitatibus rerum cupiditate eius. Amet maiores unde laudantium commodi reprehenderit ex quae. Tenetur voluptatem nemo odit ipsa iusto.</p><p>Provident incidunt consequatur labore hic. Laboriosam consequatur ab necessitatibus sunt modi commodi minus nihil. Tempore a fuga id provident. Quidem facere ipsa est aut a et ipsam.</p><p>Ullam aut ea consectetur eius nihil sed. Provident dolor inventore recusandae facere nihil. Et asperiores inventore et quia.</p><p>Ipsam quia enim voluptate. Fugit quia voluptas modi in ut omnis. Id dignissimos eum et repellendus vel quia ab illum.</p><p>Et qui aliquid excepturi aspernatur rerum. Dicta quia ut ullam voluptatem est. Omnis atque illum voluptas et. Accusamus beatae placeat qui et quod alias.</p><p>At sit repellendus perspiciatis recusandae voluptatibus dolore et. Dignissimos provident quidem neque voluptatem repellendus hic accusamus. Omnis voluptatum quo in ratione repellat. Maiores est omnis occaecati perferendis.</p><p>Possimus in voluptatem rerum quaerat dicta eveniet velit. Debitis et enim fuga voluptatibus molestiae quos autem. Tempora atque repellendus cumque perferendis atque et sit necessitatibus. Labore sunt libero similique sed. Animi fugiat et beatae eos adipisci vitae velit.</p><p>Dolorem est modi adipisci nihil cupiditate perspiciatis. Inventore velit omnis placeat aliquid. Commodi voluptatum suscipit non excepturi odio. Expedita vitae sed ut est omnis doloremque et.</p>', NULL, '2023-11-08 02:53:43', '2023-11-08 02:53:43'),
(6, 1, 3, 'Ratione amet dicta.', 'explicabo-consequatur-explicabo-aspernatur-iusto-est', 'Non eaque impedit similique animi soluta dolores ipsam tempora. Quia id nisi quod consequuntur molestiae. Nihil beatae quia molestiae impedit expedita repellat.', '<p>Atque nihil quod est nemo veniam blanditiis. Repudiandae harum corrupti possimus dolorum. Quasi accusantium enim placeat quae.</p><p>Dolore totam ipsam ducimus dignissimos accusantium. Error consequatur dolorem quisquam atque temporibus. Quis voluptatum rerum consequatur laudantium ut quia officiis. Alias et sit saepe eligendi.</p><p>Adipisci ipsam atque consectetur non optio. Dolores voluptas unde sint nesciunt. Corporis exercitationem molestiae doloremque reprehenderit excepturi eum quis. Nam architecto mollitia earum dolores.</p><p>Et perferendis et odio saepe. Qui aspernatur delectus consectetur consequuntur provident. Eligendi quo ab qui et nam enim molestias. Natus ut optio rerum labore quam qui. Quae et aliquam eveniet.</p><p>Harum nostrum earum laudantium facilis. Quis ut rerum cumque reiciendis qui quos aperiam voluptatem. Sint est quo est quod. Tempora et consequatur saepe occaecati dicta tenetur.</p>', NULL, '2023-11-08 02:53:43', '2023-11-08 02:53:43'),
(7, 1, 1, 'Recusandae sunt et sit cumque iure nobis voluptate quae.', 'perferendis-ipsum-est-voluptatum-qui', 'Deserunt voluptatem voluptas et. Ab enim repellendus porro voluptatem unde qui facere. Quibusdam reprehenderit quia dolorem consequatur sunt velit quis.', '<p>Praesentium ut et velit odit aut sit provident. Ab hic voluptatibus est eveniet aut. Voluptatem quod mollitia deserunt neque. Veniam dolores blanditiis dolor voluptates repellendus non. Eum consequatur dicta ipsum consequatur doloremque voluptatem.</p><p>Dicta architecto fuga voluptas aut voluptates ut. Accusantium quia commodi unde eos facilis. Dolor sit et rem sint. Quidem suscipit maxime sint et.</p><p>Accusamus quia quo recusandae quia aspernatur aspernatur voluptatem. Commodi id architecto tempore quasi. Aperiam ut a nihil ducimus maiores excepturi.</p><p>Voluptas iure quis vel qui culpa unde minima. Perspiciatis qui aspernatur sit quisquam omnis. Ea expedita cum nihil rem similique nam.</p><p>Incidunt maiores iure aut optio voluptatem deleniti ratione. Saepe dolor adipisci libero ut ut. Vel expedita labore et rerum atque.</p><p>Fugit qui illo voluptatum natus dolores. Explicabo vero molestiae libero voluptas cum ipsam. Neque omnis qui facilis eum eius. Aut harum dolor minima commodi.</p>', NULL, '2023-11-08 02:53:43', '2023-11-08 02:53:43'),
(8, 2, 2, 'Repellendus consequuntur sed qui pariatur eius qui.', 'neque-ex-quibusdam-eos-maiores-repudiandae-est', 'Neque nihil omnis ea rerum et omnis debitis. Explicabo provident ut sit dolores voluptatum error rerum. Reiciendis sunt sed non velit incidunt laborum. Sint non dolor et et hic quo.', '<p>Totam et voluptas natus et. Illo fugit optio sint molestias alias. Et quis explicabo sequi libero.</p><p>Ex sed esse ducimus sed ex est vero quam. Voluptas veritatis ut ea repellendus quia eos inventore tenetur. Natus quia eum porro perferendis fugiat. Sit ut molestiae quia repellendus.</p><p>Ducimus expedita minima unde vero excepturi. Aut optio doloribus et odit ullam unde corporis. Non enim impedit nobis quia.</p><p>Sit commodi est voluptatem est enim totam. Adipisci labore porro consectetur fugiat quia occaecati. Neque sed labore tempore nulla. Labore ut quia in velit tempore ut perferendis nihil.</p><p>Quasi voluptatibus quia sit itaque veritatis similique dolorum. Et amet ipsam sed libero earum. Veritatis et et quisquam repellendus.</p>', NULL, '2023-11-08 02:53:43', '2023-11-08 02:53:43'),
(9, 2, 1, 'Nihil blanditiis debitis eos est nihil aut aliquam.', 'aliquid-numquam-delectus-earum-et-officia', 'Laborum error dolorum nihil veniam suscipit id est. Quia dolorem tenetur maxime necessitatibus. Sit tempora aut voluptatem enim quia fugiat laudantium aut. Sunt quis amet et harum suscipit.', '<p>Inventore ex mollitia voluptas voluptatem alias sunt veritatis. Culpa maiores iure sint ea. Omnis possimus ipsum animi similique sapiente dolorum est. Et voluptas non dolor fuga.</p><p>Sunt adipisci doloremque et ipsa qui. Aut voluptatum neque nemo aut quam distinctio. Asperiores est delectus illo voluptas aspernatur ut. Nesciunt fuga qui delectus id quia et nemo.</p><p>At recusandae vel et voluptatem ipsam porro. Quos qui in veritatis recusandae.</p><p>Illum maiores amet nisi molestias. Quaerat dolorum ab voluptatibus nulla aperiam. Nam quos dolores et.</p><p>Consectetur ut voluptas voluptatem aut quia odio molestiae nihil. Perspiciatis et inventore quo voluptatem assumenda. Aut necessitatibus id praesentium enim. At possimus possimus et nihil. Optio commodi quibusdam aperiam quo veritatis molestias.</p><p>Autem laudantium dolor numquam est. Minus veritatis veniam autem et. Omnis eum et est ducimus occaecati et.</p><p>Molestiae voluptatem architecto deserunt. Earum natus quibusdam incidunt explicabo. Nihil praesentium nulla ut et omnis nesciunt alias repellendus.</p>', NULL, '2023-11-08 02:53:43', '2023-11-08 02:53:43'),
(10, 2, 1, 'Sint architecto reiciendis esse accusamus et.', 'laborum-ad-in-nulla-autem', 'Quos aliquid et nulla et nesciunt. Quia neque veniam nam et id sapiente aspernatur. A dolores dolores reiciendis doloribus dicta. Fuga reiciendis dolore iure quidem similique.', '<p>Deserunt excepturi vitae quae sint. Ut adipisci laboriosam voluptatibus rerum totam eos reprehenderit. Ut et consequatur adipisci occaecati numquam ea maxime. Sunt nobis totam odit necessitatibus rerum magni et minima.</p><p>Similique earum amet omnis ut. Sit excepturi eos occaecati nostrum atque quis ut. Ut possimus quam perferendis.</p><p>Aut perspiciatis accusantium ab. Fugit alias sunt corrupti beatae accusamus voluptas molestiae et. Totam sit fuga minima optio eaque. Consequatur occaecati voluptate qui assumenda ipsam.</p><p>Optio mollitia in ea error. Perferendis omnis odit dolor ut aperiam doloremque eligendi. Asperiores hic error ipsum iusto consequatur. Rem qui omnis aperiam ipsam quasi quibusdam dolor.</p><p>Tempora occaecati ex numquam est debitis fuga sit. Esse amet quia unde ut. Quis officia nostrum adipisci eaque dolorum consectetur eum qui. Accusantium sed reiciendis dolorem eos et.</p>', NULL, '2023-11-08 02:53:43', '2023-11-08 02:53:43'),
(11, 1, 1, 'Iusto nisi autem et.', 'adipisci-reiciendis-reprehenderit-accusantium-porro-voluptatem-ea', 'Soluta ratione ipsam vel. Est et quod iusto cum consectetur est dolores magnam. Enim aliquam perferendis vel non vero voluptatem dolor est. Perspiciatis et hic placeat vero aut.', '<p>Molestiae pariatur voluptate voluptate et distinctio. Illo vel vel at voluptatum. Maxime doloribus in architecto dolor. Dolorem voluptatem iste aliquid et aut.</p><p>Rem blanditiis facilis eum quia quo natus. Ea sit qui quam provident quasi. Ut quis incidunt eum tenetur. Veritatis voluptatem tenetur et.</p><p>Et aliquam sed voluptas voluptates voluptatem earum. Minus fugit voluptas ratione. Occaecati recusandae voluptatem ab necessitatibus. Beatae tempore numquam non repellendus corporis aut soluta quas.</p><p>Quaerat voluptates ut quia sequi quidem pariatur laudantium. Sapiente est non aliquid sed dolor. Dolor voluptas quod minima esse praesentium.</p><p>Omnis eveniet alias autem. Recusandae repudiandae laudantium veritatis quaerat et et sapiente quisquam.</p>', NULL, '2023-11-08 02:53:43', '2023-11-08 02:53:43'),
(12, 2, 3, 'Facere sit praesentium.', 'nisi-consequatur-illum-maxime', 'Et assumenda soluta aut quos ut fuga. Voluptate aut ea facilis et saepe. Sit deserunt iste voluptates iste rerum illo. Sunt ad possimus in fuga. Maxime illo quis distinctio modi.', '<p>Id velit cupiditate quo quo et et. Praesentium illo et ab tenetur. Nam sequi eum eos voluptatem officiis. Et sunt corporis dolore fugiat nobis rerum perferendis illum.</p><p>Sed natus adipisci harum eius molestias incidunt ut. Assumenda nihil tempore et inventore dolorem aut. Ducimus officia quo et provident eum voluptatibus.</p><p>Quia provident corporis ad quibusdam iusto repudiandae laudantium omnis. Quisquam ad nobis minima voluptatem optio aliquam amet. Et temporibus voluptatibus quidem in ex occaecati deserunt.</p><p>Asperiores repudiandae cupiditate illo omnis quos iste. Quae repellendus non animi aut aut reiciendis et. Illo commodi occaecati reiciendis.</p><p>Dolorem quae et voluptatem eos. Aut nihil vel aut reiciendis aperiam. Error ab sequi aliquam laboriosam qui quia non est.</p><p>Voluptatem quam iure fugit et doloribus dolores. Soluta quae quo facilis atque. Est molestias eos molestias voluptate. Quis quia consequuntur rem voluptatem. Dolorem quibusdam ipsum autem.</p><p>Velit tenetur et quibusdam cum. Similique ad eveniet dolores vero officia.</p><p>Est molestias quos soluta adipisci. Ut voluptas alias exercitationem praesentium est. Quis molestias id velit autem nobis ut reprehenderit. Reprehenderit in dicta eos sit autem ducimus.</p><p>Mollitia inventore magnam omnis officiis et aperiam accusantium. Quis officia totam doloribus aut est. Vel laborum nostrum provident ipsam.</p>', NULL, '2023-11-08 02:53:43', '2023-11-08 02:53:43'),
(13, 1, 1, 'Fugit porro nihil aspernatur quaerat similique.', 'voluptas-autem-id-non-quas-impedit-nulla-delectus', 'Dolorum voluptatem modi non molestiae recusandae. Aliquid perferendis consequuntur porro quod asperiores placeat dolor. Ullam libero rerum suscipit delectus.', '<p>Facilis dolores voluptas porro dolores sequi. Hic velit earum qui quibusdam. Omnis corporis blanditiis ipsum aut sit. Omnis et quasi odio nihil dolor sunt adipisci.</p><p>Nostrum in et qui et temporibus ullam. Et dolorum temporibus repudiandae qui minima. Molestiae libero id et itaque temporibus.</p><p>Et sequi consequuntur sapiente rerum qui necessitatibus ut illo. Corrupti in velit vel id reprehenderit consequatur fugiat placeat. Nostrum perspiciatis quibusdam rerum delectus repudiandae.</p><p>Animi unde sapiente nulla sapiente eum. Nobis error rerum porro aperiam error molestiae ducimus. Assumenda laborum est dolore officia quo temporibus deleniti non.</p><p>Consequatur non enim expedita in quos. Illo quidem nihil iusto eius. Nobis possimus est voluptatem reprehenderit alias.</p><p>Ut eum quasi voluptatem. Blanditiis distinctio aspernatur aut et voluptas rerum. Alias nihil eaque porro excepturi rerum ea culpa. Qui consequuntur consequatur quidem dicta doloremque et omnis. Ipsum nihil illum deserunt repellendus autem atque.</p>', NULL, '2023-11-08 02:53:44', '2023-11-08 02:53:44'),
(14, 1, 2, 'Et officia et ipsam.', 'asperiores-voluptatem-neque-ipsum-ut-repellendus-cupiditate-qui', 'Eos voluptas autem qui labore. Est odit sint reprehenderit quae aliquid quos officiis aperiam. Praesentium itaque est ducimus iure officiis neque impedit molestiae. Voluptas sed sint minima.', '<p>Qui odio qui sint molestias commodi voluptatem aut. Optio ut enim qui laudantium omnis illum. Dignissimos rem eveniet totam inventore qui.</p><p>Quis iusto dolorem iure officia et fugiat. Provident velit nihil sint repudiandae quidem eum non. Consectetur nihil adipisci ut reprehenderit id aut eum.</p><p>Ipsam facilis adipisci ut corporis quia pariatur. Voluptas nulla molestiae qui ab voluptas. Dolorem omnis ipsa molestiae.</p><p>Et consequuntur voluptas veniam et delectus consectetur in. Tenetur esse aliquid incidunt.</p><p>Commodi veniam temporibus facere neque aspernatur non. Nostrum expedita repudiandae qui dolor quibusdam sed illo. Quasi omnis et quis placeat. Sed quis maxime dolor accusamus.</p><p>Ut totam rerum optio architecto sit. Recusandae aut consectetur veritatis cupiditate autem omnis. Eius blanditiis voluptatem et aut doloribus ex. Odit asperiores aliquid minus nesciunt debitis.</p><p>Nesciunt qui sit ipsam architecto corporis ea. Non maiores beatae tempora error. Reiciendis mollitia ratione a voluptas blanditiis quia.</p>', NULL, '2023-11-08 02:53:44', '2023-11-08 02:53:44'),
(15, 2, 1, 'Eveniet cumque est consequatur corrupti quisquam.', 'inventore-et-corrupti-voluptate-ut', 'Eos nulla deserunt ut. Ducimus tempora quis vero necessitatibus et. Vel est aut quod veritatis sed et ut.', '<p>Aut numquam dolores itaque cupiditate itaque in aut. Repellat est quas consequatur molestiae aliquid. Dicta dolores odio et molestias aut. Nobis nam nihil earum.</p><p>Saepe molestias et magnam praesentium provident eius quidem provident. Ipsa beatae inventore porro eum. Itaque aut facilis et. Repellendus dolorem aut molestiae animi aut totam. Corporis voluptas facere consequatur ipsam omnis numquam magni.</p><p>Officia dolorem voluptas distinctio earum eum non. Quia omnis ea nam eaque. Accusantium consequatur ex aut velit consequatur molestiae et.</p><p>Eveniet dolorem aliquid aut placeat nulla ipsum fugit. Eum reiciendis provident quis voluptatem nam aut. Occaecati et omnis explicabo rem tempora ad iusto.</p><p>Consequatur recusandae voluptas mollitia qui incidunt. Quia rerum tenetur ad libero harum minus vitae. Corrupti quia quia velit cum consequuntur et. Ad ut repellendus architecto excepturi est cumque deserunt quos.</p><p>Rerum incidunt neque aut consequatur ipsam. Minima quia id sit modi. Eum aut aliquid ut porro aliquid quis.</p><p>Quis commodi pariatur eum et dolorem numquam qui. Eos at quos repellat atque. Hic consequatur officia optio beatae quisquam ipsam. Deleniti facere possimus autem qui ut quia.</p><p>In commodi aut nihil facere. Voluptate omnis eos quod. Aut possimus aut similique corrupti enim et.</p>', NULL, '2023-11-08 02:53:44', '2023-11-08 02:53:44'),
(16, 2, 1, 'Consequuntur asperiores deserunt dolor ratione.', 'recusandae-excepturi-quidem-quis-nisi-voluptatem-sunt-asperiores', 'At ut similique eius ipsa. Voluptatum magnam nesciunt aut. Earum autem quos nihil sunt. Et dolor error qui sed.', '<p>Totam porro debitis fugit assumenda. Nisi harum magni ut dicta. Ipsa aperiam necessitatibus quo voluptatem.</p><p>Cumque pariatur id ullam enim. Alias magni ipsam voluptatibus in. Delectus dolor dolores accusantium quo deleniti. Ab soluta dolorem officia velit nobis et laboriosam.</p><p>Et aperiam sequi aliquam asperiores impedit esse ut quam. Est perferendis vero aliquid tempora omnis asperiores. Dignissimos velit dolores fuga temporibus.</p><p>Eos alias iste veniam aspernatur. Dolorum excepturi ut ipsa voluptas. Voluptatem et et facilis et accusantium non debitis. Fugit est et in ab.</p><p>Et odit facere velit et. Voluptatibus ea et eligendi deleniti doloribus voluptatem minus. Sunt voluptatem perferendis labore earum quibusdam ea. Dicta eveniet voluptatibus voluptatem.</p><p>Culpa nihil sunt impedit vel. Culpa nihil qui molestiae. Aliquid odio enim vel recusandae magnam. Recusandae laborum et voluptas quaerat possimus quae. Quis laboriosam eius cumque ea tempore.</p><p>Id quis facilis veritatis ea qui. Reprehenderit et delectus est eos natus. Eaque voluptatem ut recusandae sint porro aspernatur. Voluptate tenetur in quis accusantium sunt animi explicabo. Quod voluptatem ut ullam ut consequatur.</p><p>Culpa ut voluptatibus voluptas in. Quae consequatur laborum eveniet et esse atque iusto. Quo ipsum vel deserunt ut et quam. Nisi laborum impedit quod consectetur omnis ea sed. Minima laudantium assumenda impedit nisi sint aut sit.</p><p>Cumque veritatis quis laboriosam doloremque rerum sequi recusandae. Nostrum impedit excepturi aspernatur. Sed rerum deserunt sit eius dolor. Ut molestiae nostrum dolor nisi voluptatum quia.</p>', NULL, '2023-11-08 02:53:44', '2023-11-08 02:53:44'),
(17, 2, 2, 'Similique animi veritatis et unde voluptates.', 'sint-dolor-ducimus-molestias-eius', 'Error vero provident saepe atque consequatur rerum veritatis. Debitis temporibus tempore facere id magni molestiae.', '<p>Id impedit et perferendis ipsum. Recusandae natus necessitatibus ad autem ea illo odit. Natus et veritatis officiis commodi atque at.</p><p>Et consequatur excepturi dignissimos at temporibus laudantium. Dolor maxime accusantium atque autem voluptas recusandae repudiandae.</p><p>Quis ut placeat hic ducimus quia atque enim. Consequuntur voluptatibus soluta et aut. Id ab sit est veniam velit qui et.</p><p>Nesciunt commodi impedit rerum recusandae quia magni quibusdam. Eum voluptates et debitis ut blanditiis veniam iste.</p><p>Consectetur sapiente et qui ut labore et. Qui est reiciendis est est. Sapiente ipsum molestiae non voluptatem. Pariatur veniam velit blanditiis officia perspiciatis.</p><p>Ea asperiores tenetur quos distinctio impedit veritatis. Asperiores quo consequatur eum. Minima et est qui quo mollitia laborum deserunt. Asperiores iure eum assumenda qui vero id quaerat. Ut nemo unde molestiae.</p><p>Ab sit minima voluptate doloremque ipsum hic voluptate est. Eum labore iure consequatur repellendus esse officia laboriosam. Reiciendis et non vel error occaecati.</p><p>Fugiat delectus asperiores voluptate optio ratione eaque. Eum voluptates alias quia qui odit eveniet molestiae. Perferendis quisquam nihil assumenda ipsam architecto incidunt unde. Beatae cupiditate in ducimus nemo.</p><p>Quis repellendus cumque doloremque quis consequatur sint est. Dolorem et sunt occaecati alias cum. Eaque maiores modi ea dolores non aliquam. Soluta soluta aperiam dolorum delectus qui.</p><p>Aperiam rerum accusantium dolor ea. Atque autem voluptates corrupti qui nam dolorum consequuntur. Ab sed omnis numquam non ut. Mollitia autem sed iste fugit unde dolor.</p>', NULL, '2023-11-08 02:53:44', '2023-11-08 02:53:44'),
(18, 1, 3, 'Est ducimus impedit.', 'ratione-doloribus-sint-quisquam-vel-quo-culpa', 'Cupiditate praesentium ratione reiciendis nihil impedit. Aliquam sunt suscipit et quos voluptas et. Molestias quia nulla qui ullam nostrum.', '<p>Fuga qui consequatur veritatis suscipit quisquam perferendis asperiores. Facilis ipsam omnis ab est. Qui voluptatum mollitia aut odit.</p><p>Commodi nobis ut dolorem qui rem dolorum veritatis. Adipisci alias quis qui officia dolorem. Est nostrum consequatur dignissimos molestiae.</p><p>Fugiat nobis voluptas ea molestias. Consectetur doloribus consectetur distinctio id. Vitae nemo dignissimos commodi autem enim corporis esse.</p><p>Id corporis est sed consequuntur. Sunt magni aspernatur placeat odio ipsam.</p><p>Ab autem est a aut. Explicabo perspiciatis in nulla dolorem quas illo deserunt et.</p>', NULL, '2023-11-08 02:53:44', '2023-11-08 02:53:44'),
(19, 1, 3, 'Odio corporis amet sit sit voluptas fuga voluptatem qui aspernatur id.', 'molestiae-labore-placeat-earum-soluta', 'Adipisci quo eum dolorum veniam voluptas esse. Est est culpa maiores vel aliquam.', '<p>Et aut aut sed fugiat. Aspernatur dolore ipsum quia sit voluptate cum in. Illum delectus officia accusamus repellat. Quisquam est rerum soluta molestiae. Tempore odio tempore adipisci temporibus quae ad.</p><p>Quia voluptas aut quia ut et. Possimus officia vel in laborum maiores. Cum enim fuga beatae qui officiis.</p><p>Facilis sequi autem rerum cumque sit doloremque. Voluptatibus architecto provident minus quasi quia asperiores. Corporis est ea quis est.</p><p>Aliquid ea et architecto id corporis quidem. Suscipit ducimus repellendus laudantium harum. Quia cumque ut et sint hic quia. Ut voluptatem consectetur delectus sunt.</p><p>Repudiandae animi sint eius voluptatem itaque quasi repudiandae. Ipsam facilis quae eos eaque temporibus. Recusandae repellendus tenetur iure expedita rem perspiciatis est.</p><p>Ullam et voluptatibus voluptatem. Sunt repudiandae officiis deserunt dignissimos reiciendis sunt voluptatibus.</p>', NULL, '2023-11-08 02:53:44', '2023-11-08 02:53:44'),
(20, 2, 1, 'Id corrupti eveniet placeat ducimus asperiores harum inventore.', 'similique-doloremque-suscipit-sed-cum-voluptas-adipisci', 'Earum voluptas nam nihil autem. Natus quia facere cumque dolores. Illo repellendus ut alias rem dolorum. Molestiae ut excepturi possimus earum.', '<p>Rerum vel totam soluta accusantium. Culpa odit optio porro eos sunt nihil minima. Voluptates accusantium magni porro maxime est. Asperiores et ut officia corrupti.</p><p>Nesciunt consequatur et eos quos. Quis veniam sed ea. Sit vel pariatur sequi reiciendis aut sit. Cumque corporis officia qui in qui.</p><p>Illo eius cumque distinctio aperiam eligendi. Id necessitatibus est ipsa temporibus. Voluptatem mollitia distinctio ipsa molestias. Dicta laborum ipsa et laudantium.</p><p>Nam omnis hic consectetur aut saepe dolorem omnis eveniet. Ratione sed aut unde et beatae. Laboriosam qui ea eos sunt ipsa fuga. Minima quas omnis impedit deleniti sit.</p><p>Accusamus voluptas tempora pariatur est id a culpa. Et cum ab deserunt veritatis odit exercitationem reiciendis. Asperiores sunt placeat voluptas velit alias error quis. Corporis porro reprehenderit nobis dolorem rem repellat ut.</p><p>Incidunt quis omnis rerum est. Et atque error ab eaque et ipsam ducimus. Et assumenda necessitatibus delectus et nisi ipsam. Minima tempore est recusandae facere accusantium et voluptatibus possimus.</p><p>Dolorem culpa iure ut aspernatur qui sequi. Omnis omnis tenetur est. Veniam ea et sed mollitia similique.</p>', NULL, '2023-11-08 02:53:44', '2023-11-08 02:53:44');

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
(1, 'Cindy Maria Haryanti', 'budiman.endra', 'michelle15@example.net', '2023-11-08 02:53:42', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'W3iupt61fq', '2023-11-08 02:53:42', '2023-11-08 02:53:42'),
(2, 'Prima Sabri Hardiansyah', 'gilda.sudiati', 'usamah.rahmi@example.net', '2023-11-08 02:53:42', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '43wzfL4efi', '2023-11-08 02:53:42', '2023-11-08 02:53:42'),
(3, 'Pangestu Hutasoit', 'tantri.mangunsong', 'anggraini.zelaya@example.net', '2023-11-08 02:53:42', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'WUDe9Qa8g3', '2023-11-08 02:53:42', '2023-11-08 02:53:42'),
(7, 'Lita Yusdia Fatimah', 'litaysdf', 'litayusdia@gmail.com', NULL, '$2y$10$zx8DO9FFX05kwaLnI9urLehagHgSrIeFt/vud7/3bDDgdJwmpYGOC', NULL, '2023-11-16 23:54:46', '2023-11-16 23:54:46');

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
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
