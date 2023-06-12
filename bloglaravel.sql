-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 12 Sep 2022 pada 10.18
-- Versi server: 10.4.16-MariaDB
-- Versi PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bloglaravel`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Web Programming', 'web-programming', '2022-07-16 20:56:22', '2022-07-16 20:56:22'),
(2, 'Web Design', 'web-design', '2022-07-16 20:56:22', '2022-07-16 20:56:22'),
(3, 'Personal', 'personal', '2022-07-16 20:56:22', '2022-07-16 20:56:22');

-- --------------------------------------------------------

--
-- Struktur dari tabel `failed_jobs`
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
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_06_15_043329_create_posts_table', 1),
(6, '2022_06_25_113322_create_categories_table', 1),
(7, '2022_07_18_054155_add_is_admin_to_users_table', 2);

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
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
-- Dumping data untuk tabel `posts`
--

INSERT INTO `posts` (`id`, `category_id`, `user_id`, `title`, `slug`, `image`, `excerpt`, `body`, `published_at`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 'Quo minus.', 'accusamus-in-pariatur-et-est-hic-et', NULL, 'Et atque eos eum cum error voluptatem voluptatem velit. Sit sequi quia quis mollitia. Rem qui dolorem dignissimos tempore ea illo. Accusantium maxime molestias dolores.', '<p>Eveniet dolor odio ut ex. Sapiente nulla praesentium soluta quod earum voluptatum earum eligendi. Earum numquam et impedit est et consequatur est.</p><p>Et perferendis ut sed quo qui voluptatem nulla maxime. Molestias eaque non ducimus quod. Quasi maxime sit dolores qui laborum. Ea nulla voluptatem ea modi et. Illo architecto sit distinctio quasi nulla necessitatibus consequatur.</p><p>Autem corrupti numquam sit esse debitis rem. Est molestiae voluptas dolor blanditiis ipsa. Voluptas est consequatur nihil repellendus est autem. Fugiat corrupti aut blanditiis est labore ut fugit omnis. Dolorum hic mollitia aut quae sequi iusto.</p><p>Quisquam voluptatibus explicabo est sit molestiae iure minus. Dolore maxime et iste dolore. Libero qui non tempore excepturi est qui voluptatibus. Aut architecto velit officiis minus voluptatem assumenda non fuga.</p><p>Aspernatur expedita aperiam sunt dolores. Quibusdam magni nisi delectus repellendus doloremque adipisci enim atque. Numquam temporibus ut voluptatem recusandae.</p><p>Tempore tenetur sed repellendus omnis enim voluptatem. Ullam ratione odio possimus facilis provident. Quam aut corrupti ad rem. Voluptate incidunt ullam blanditiis maxime illo rerum.</p>', NULL, '2022-07-16 20:56:22', '2022-07-16 20:56:22'),
(2, 2, 3, 'Delectus qui sequi possimus pariatur ullam quia atque.', 'qui-iusto-quia-dolorem-fuga', NULL, 'Quibusdam autem optio rerum aut aut magni. Modi quam ea tempore et saepe laboriosam. Voluptatum pariatur in repudiandae culpa officia alias quisquam.', '<p>Quam voluptatem sint quia aut non occaecati. Deleniti sed voluptatem quasi saepe unde doloremque quaerat. Neque voluptatem tenetur sit maiores.</p><p>Non quia doloribus aut autem quasi libero dicta. Ut enim facere saepe nostrum qui. Aut maiores omnis ipsam necessitatibus.</p><p>Mollitia sequi dicta praesentium hic sed. Rerum minus cupiditate corrupti placeat harum porro voluptatem. Repellendus cumque omnis nihil ducimus.</p><p>Aspernatur quia officiis voluptas harum velit voluptatem. Odio quo sed blanditiis quae est. Aperiam quis ullam ea tempore ut.</p><p>Fugit aut distinctio qui. A vero rerum ducimus aut.</p><p>Autem nobis molestias et velit enim deleniti sed deleniti. Qui ut ipsam non adipisci ipsum voluptatem.</p><p>Et voluptatem esse placeat iste est. Tempore veniam non libero.</p>', NULL, '2022-07-16 20:56:23', '2022-07-16 20:56:23'),
(3, 2, 1, 'Assumenda delectus doloremque quisquam nobis eum.', 'sequi-cum-quos-porro', NULL, 'Ex omnis cupiditate est laudantium itaque impedit aut architecto. Quidem facere aperiam incidunt reprehenderit.', '<p>Officiis in sapiente eum est. Tempore eligendi quia incidunt sunt quo. Magnam totam fugiat quis repudiandae. Minima molestias ut commodi officiis.</p><p>Debitis maiores expedita nesciunt voluptates modi voluptatum natus. Sequi repellat odio aperiam dolores optio voluptatum ut. Ipsam sed rerum quisquam sit autem excepturi.</p><p>Hic odio impedit cumque magni. Cum sed vel recusandae qui quis consequatur explicabo. Est velit quam dolores quam et placeat.</p><p>Rerum enim rerum mollitia amet sed odio. Voluptatibus aliquid ipsum expedita consequuntur quia.</p><p>Ipsa eius quod corrupti consequatur est sapiente et. Fugit ea est est et deleniti dolore rem dolorem. Et voluptate ut architecto tenetur. Cumque explicabo et laudantium quos deserunt.</p><p>Laudantium eius quidem eligendi itaque deserunt alias. Eligendi ipsum nihil odit itaque culpa amet et molestiae. Impedit iste consequatur dicta unde. Ipsa porro voluptatem aut qui officiis sint soluta.</p>', NULL, '2022-07-16 20:56:23', '2022-07-16 20:56:23'),
(4, 1, 2, 'Quia qui iusto veritatis perspiciatis saepe quia omnis.', 'ut-vero-quibusdam-voluptatem', NULL, 'Nesciunt totam vero est praesentium et expedita. Enim eveniet expedita libero maxime ut. Repellat est doloribus autem ipsam.', '<p>Porro numquam vero tempore non consequuntur odio eum. Non nihil labore illo ut saepe cum mollitia. Ea et voluptatum et omnis consequatur et est.</p><p>Ut fugiat est officiis odit. Quod delectus natus nisi. Totam dolores nihil asperiores quos dolorum nam adipisci recusandae.</p><p>Vel sed voluptate blanditiis qui enim et. Sit modi et aspernatur culpa eos ab optio.</p><p>Libero maxime est error est. Dolorum aut dicta non ea placeat. Velit vel qui ipsa optio aut. Quia tempore id atque omnis.</p><p>Accusantium quia in voluptatum dolores adipisci velit soluta. Omnis et at et non. Placeat ipsa dignissimos eum maxime. Qui voluptates sunt officia occaecati nostrum.</p>', NULL, '2022-07-16 20:56:23', '2022-07-16 20:56:23'),
(5, 2, 1, 'Maiores totam reprehenderit magni rerum.', 'rerum-laborum-modi-est-natus', NULL, 'Nihil cupiditate qui sed et eum. Qui ea assumenda maiores veniam quis. Et debitis non et delectus illum.', '<p>Eligendi numquam doloremque velit veniam sit voluptate. Earum pariatur eos ex et ut. Est qui voluptas optio tenetur veniam quis.</p><p>Porro accusantium hic qui quam. Eum qui error quo sit. Quam ducimus nesciunt aperiam ex a aliquam et incidunt.</p><p>Autem et neque laboriosam optio quidem. Veniam ut velit harum dolor rem. Eius quibusdam nisi enim aut culpa.</p><p>Dolores dolorem culpa aliquid nesciunt. Quibusdam doloremque mollitia rerum dolorum ducimus sapiente. Rerum sit et provident temporibus. Et quam id cumque illum blanditiis.</p><p>Consequatur aut a qui neque in molestiae. Excepturi laudantium veritatis at sunt dolores aliquid. Sequi reprehenderit iste et.</p><p>Distinctio ut sed exercitationem nihil consectetur atque voluptates veniam. Est aliquid qui corporis.</p><p>Quas asperiores delectus deserunt rerum. Est aut ipsam enim ea ut vero nihil perferendis.</p><p>Facilis quia velit dolores id dolores inventore. Modi autem sit quibusdam voluptas laudantium esse aut. Totam voluptas expedita commodi natus. Voluptatibus eos expedita delectus consequatur est laborum. Eos aliquid autem enim eaque qui optio.</p>', NULL, '2022-07-16 20:56:23', '2022-07-16 20:56:23'),
(6, 1, 3, 'Vero quisquam consequatur dolore.', 'aliquid-et-et-unde-modi-eum', NULL, 'Ut minus voluptas hic a aut exercitationem vero suscipit. Impedit cupiditate quo vel ea nesciunt. Qui excepturi aspernatur in ab. Ea rerum praesentium modi quod nihil illo eos omnis. Maxime perferendis ut iure quas natus iure sed.', '<p>Voluptate dolores sit unde quaerat voluptatem dolorum vel aut. Nihil neque rerum atque quos fugiat esse quia. Est omnis alias optio accusantium quia consequatur magnam quo.</p><p>Minima nulla id voluptas. Enim harum enim eos officiis. Facilis rerum non quas magnam repellendus iusto. Vel animi fuga adipisci odit architecto mollitia.</p><p>Perspiciatis iure cumque rerum omnis rerum tempora molestiae. Totam non eos adipisci sint sunt. Voluptate dolores quia enim reprehenderit totam distinctio rerum quia.</p><p>Quidem reiciendis sunt sunt reprehenderit corporis. Placeat nisi totam eos blanditiis. In itaque quia illum aliquam totam laudantium qui. Consequatur quia aut quisquam eius consequatur natus iste fugiat.</p><p>Nobis dignissimos et aut eos atque. Quisquam iure quis qui ullam quo. Nihil odit voluptatem modi dignissimos.</p><p>Voluptatem odit maxime cum nisi repellendus accusamus. Deserunt placeat molestiae dolor quidem dolore. Quis vel illum numquam vitae aperiam perferendis quae. Occaecati consequuntur et aliquam recusandae.</p><p>Quae eveniet quia sequi magnam molestias quam vitae. Aut corporis alias ut rerum. Sit molestiae ad occaecati qui quia id voluptas eos. Iste distinctio aliquid ut quo est aspernatur.</p><p>Cum natus maxime autem debitis repellendus necessitatibus nam. Praesentium nisi qui qui dolore. Placeat perspiciatis itaque quidem ab accusamus. Qui vitae et provident quo non.</p><p>In quam et in voluptas incidunt dignissimos. Itaque qui nihil quibusdam iure est est architecto. Consequatur maiores deleniti velit deleniti debitis. Esse cupiditate hic illo rem.</p>', NULL, '2022-07-16 20:56:23', '2022-07-16 20:56:23'),
(7, 1, 3, 'Eligendi alias.', 'molestiae-saepe-est-eos-rem-quisquam-aperiam-earum', NULL, 'Sunt fugit sequi labore illo rerum corrupti. In placeat nostrum ut. Quia ut aut iusto amet qui ex molestias. Nam culpa doloribus maiores veritatis voluptatem consequatur.', '<p>Ducimus a perspiciatis consequuntur et. Explicabo consequatur aut magnam laudantium et temporibus. Laborum qui sunt sunt id neque.</p><p>Suscipit at qui cumque suscipit beatae natus numquam. Consectetur at impedit non ex quas quo. Error quae officiis quod ipsa maiores.</p><p>Neque consectetur enim magnam in sit sed. Odit aut necessitatibus tenetur et. Assumenda natus quas veritatis. Ea quia sit recusandae illo.</p><p>Maiores ipsa maiores qui sit vel dolores. Totam provident et nam.</p><p>Fugiat facilis voluptatem eos libero autem. Consequatur debitis excepturi impedit laudantium. Magni sit repellendus ipsam laborum amet. Aliquid velit repellat similique iusto et reprehenderit.</p><p>Ut totam exercitationem reprehenderit quis vero reprehenderit hic. Voluptatibus dolorum voluptatem dolorum. Non aliquam inventore voluptatem nostrum at enim natus.</p><p>Rem est sed blanditiis sunt explicabo. Culpa vitae molestias tenetur quibusdam tenetur. Unde est placeat atque in neque autem quisquam. Error magni tenetur placeat excepturi aut voluptas.</p><p>Porro quas reprehenderit optio quod ratione. Voluptatem nemo pariatur vitae voluptates. Magnam quia atque et esse. Sed fuga velit dolores est a mollitia.</p><p>Pariatur sed consequatur nam aperiam quae. Rerum nobis et minus optio aut consequatur. Eos sunt vero aut et.</p>', NULL, '2022-07-16 20:56:23', '2022-07-16 20:56:23'),
(8, 2, 1, 'Ab laudantium dolorem ut vero.', 'sed-qui-ipsa-nemo', NULL, 'Accusamus corrupti voluptatem sit placeat omnis excepturi voluptatem. Cumque recusandae maiores quos ab iure cumque. Quidem incidunt necessitatibus dicta omnis qui alias vel.', '<p>Velit vel sint nobis doloremque voluptas adipisci error. Non et officiis eius distinctio perspiciatis nihil ipsum. Officiis impedit est nesciunt qui ut numquam velit aperiam. Voluptatem neque error dolorem quas id quia est.</p><p>Alias dolorem fugit quidem nemo. Perspiciatis et totam quam voluptas velit laudantium sit.</p><p>Sint architecto voluptatem ea ratione velit omnis. Temporibus quae labore sequi vitae. Eos ea et laudantium nobis. Deleniti tempora ut quibusdam est recusandae ea ut.</p><p>Quaerat explicabo et id autem dolor aut. Praesentium omnis porro animi quia cum. Ut reiciendis voluptas voluptas assumenda.</p><p>Neque sint aut unde non. Omnis ullam enim iure error. Voluptatem voluptatem et est rem debitis consectetur.</p><p>In et est veritatis eius. Velit laudantium repudiandae perspiciatis laudantium voluptatem officiis aperiam adipisci. Minus voluptatum est est est quo. Quia recusandae mollitia sunt aut impedit laboriosam sunt.</p><p>Accusamus nihil vel quo itaque recusandae dolores. Qui recusandae laudantium vel et ipsa quis voluptatibus. Et nobis eos dolores ducimus odit nostrum illum.</p>', NULL, '2022-07-16 20:56:23', '2022-07-16 20:56:23'),
(9, 1, 1, 'Omnis ipsum officiis.', 'et-sunt-blanditiis-quisquam-amet-totam-adipisci-distinctio', NULL, 'Dolorum animi nostrum qui nesciunt illum vero. Dolores dolor rerum cumque. Est impedit nulla totam laudantium et non laudantium fugit. Reiciendis officiis perferendis dignissimos quia animi eum sit ex.', '<p>Perferendis dignissimos consequatur consequuntur ad ad error. Alias sit possimus ut commodi omnis sed. Explicabo commodi sit sit at ut perferendis porro.</p><p>Laborum adipisci optio voluptatem voluptatem. Quas quisquam asperiores in minima illo repellat atque. Explicabo mollitia non nam officia.</p><p>Rem vitae fugiat minima error architecto quod. Facilis consequatur nihil sit saepe omnis deleniti dolores. Doloremque quam sed et ex voluptates. Reiciendis quia itaque porro deserunt.</p><p>Aliquam earum nisi et distinctio sed laborum libero. Magnam et sed qui eligendi. Quia distinctio et veniam ullam minima voluptatem ea velit. Velit corporis iste qui consequatur.</p><p>Quae sed vitae sit deserunt nisi. Dolorum iste in eveniet vel hic.</p>', NULL, '2022-07-16 20:56:23', '2022-07-16 20:56:23'),
(10, 1, 1, 'Delectus nostrum voluptas est.', 'odit-dolores-officia-tenetur', NULL, 'Dolores sint quidem explicabo sit ea asperiores perspiciatis. Culpa sit sed ut doloribus sunt. Animi dolor cupiditate impedit ut inventore. Corporis cum quia eius sapiente maiores aut est. Deleniti perspiciatis deleniti optio dolorem aliquam.', '<p>Excepturi a ut eum tempora dolores. Non illo voluptatem et.</p><p>Est qui illo ea quos voluptas laboriosam. Doloribus est odit tempore a. Quia corrupti id voluptates quia ratione.</p><p>Voluptatibus eum voluptatem autem dicta ut necessitatibus fugiat. Perferendis in et enim dicta sunt blanditiis. Reiciendis architecto in sunt culpa quasi dolores velit labore. Et suscipit qui molestias et ut.</p><p>Atque vel voluptates modi aut. Possimus corrupti reprehenderit consectetur. Odit quis voluptatem repudiandae hic quod.</p><p>Ut possimus doloribus ducimus repudiandae quas odio quisquam. Dolor exercitationem quaerat ut earum dolores eveniet minima. Alias natus dolorem illo ad. Aut odio corrupti vero.</p><p>Vitae rerum et libero nihil. Perferendis maxime quaerat sit et expedita doloremque totam. Ipsa est at fugiat commodi beatae.</p><p>Incidunt enim inventore voluptas fuga excepturi et. Officia enim a quo ex. Sunt dolores doloremque perspiciatis laborum consequuntur et.</p>', NULL, '2022-07-16 20:56:23', '2022-07-16 20:56:23'),
(11, 2, 3, 'Consectetur ut in.', 'porro-deleniti-quod-ipsa-at', NULL, 'Cumque veniam fugit maxime asperiores fuga. Distinctio quia porro praesentium eos qui. Ut neque perspiciatis quas. Ut numquam aliquid in.', '<p>Sapiente consequatur quod quos excepturi soluta unde. Rem consequatur et corporis sit qui. Ea qui ullam fugit adipisci.</p><p>Iure ratione eligendi voluptatem. Fuga quas veniam atque nihil est molestias. Reiciendis culpa quis et sit velit et voluptatem.</p><p>Alias eos animi incidunt. Qui aut rem aut dicta debitis alias laudantium ipsa. Animi modi error vero dignissimos voluptatem veritatis. Ut est quibusdam qui aut.</p><p>Voluptatem minima non sint eveniet quo facere. Molestiae tempore illo enim officiis.</p><p>Ullam libero nihil aspernatur aperiam incidunt. Vero facilis et ut libero minima laboriosam. Molestias saepe ipsam blanditiis repudiandae quae aut. Voluptates sed accusantium debitis facere quo reiciendis quasi.</p><p>Fuga qui nam non amet est nesciunt perspiciatis. Laborum et voluptatem magnam dignissimos vel laboriosam at qui. Consequatur quod iure corrupti quam inventore quia.</p><p>Et consectetur molestias quibusdam quo deleniti fugiat deserunt. Corrupti sed rerum optio id. Dolorem quia libero adipisci error distinctio totam consequuntur alias.</p><p>Sint ut aliquid similique voluptas consequatur nihil est. Nemo perferendis accusantium consequatur impedit sunt. Aut vero facilis ea repudiandae. Eius et voluptatem est molestiae sed occaecati accusantium.</p>', NULL, '2022-07-16 20:56:23', '2022-07-16 20:56:23'),
(12, 2, 3, 'Nihil sed aspernatur fugiat pariatur officiis qui esse quo accusantium.', 'ab-aut-rerum-voluptates-incidunt-rerum-voluptatem', NULL, 'Magni molestiae consequatur ut est suscipit. Minima inventore accusantium aut unde tempora id aut. Neque minus saepe quia minima. Voluptas ipsum deserunt pariatur quia velit illum voluptatem.', '<p>Asperiores saepe voluptate accusantium rem aspernatur amet. Non nihil reprehenderit doloremque vel et. Sed similique et rem vel non. Molestiae vero eum neque illum alias at consequuntur.</p><p>Iure facere ut cumque omnis et. Magnam quos aut tempora et beatae autem. Ab tempora harum sint officiis. Nemo nulla sunt quasi provident quo pariatur qui sunt.</p><p>Vel voluptatibus non autem dolorem ut hic accusantium. Aut doloribus vero ut laboriosam inventore animi. Cupiditate ut consectetur voluptate porro. Consequatur non ducimus est nobis aperiam corrupti. Consectetur et consectetur aut dolor sit quo.</p><p>Aut eos amet voluptas fugit ipsa aut. Et in natus voluptate architecto eos. Atque dolorum dignissimos totam. Qui explicabo eligendi deleniti.</p><p>Corrupti nihil et vel. Ipsam quas omnis qui nesciunt. Quas quaerat omnis voluptatem incidunt et nulla voluptates. Non adipisci modi nulla unde est.</p><p>Ab beatae dicta animi quia doloremque deserunt quo totam. Quibusdam consequatur quis consequatur non. Saepe doloremque inventore quis molestias quod provident consectetur.</p><p>Aspernatur provident quaerat harum. Est et fugit officiis impedit. Sunt molestiae dolores qui culpa deleniti in. Fuga rerum aperiam repellendus.</p>', NULL, '2022-07-16 20:56:23', '2022-07-16 20:56:23'),
(13, 1, 3, 'Nisi et illum aperiam totam maiores consequatur.', 'provident-quidem-debitis-amet-sit-non-dolorum', NULL, 'Doloribus fugiat harum sunt dolores nulla optio nulla. Consequatur nostrum est corrupti est earum tempore nisi. Ut corporis consectetur aliquid ipsum. Consequuntur eum sit id nulla qui recusandae.', '<p>Corrupti qui earum dolor illo inventore sint. Consequatur facere iure laborum architecto. Modi illo occaecati nemo.</p><p>Molestiae doloremque nihil voluptas occaecati quia earum repellat. Alias provident tempora odio amet. Perspiciatis dolor labore labore itaque sed sit nostrum.</p><p>Animi voluptas veniam dolorem quas. Possimus mollitia sapiente itaque tempore. Adipisci excepturi deleniti similique quidem eligendi.</p><p>Pariatur ut voluptatibus repellendus impedit atque tempore. Itaque est ut et ab. Consequatur est magnam ut eos vero voluptatem voluptas.</p><p>Sit sit quibusdam dolorem neque labore amet minima. Aut incidunt et et delectus qui qui. Est dolores architecto qui.</p><p>Et enim quam molestias esse adipisci. Et reiciendis tempore et. Sequi laborum aut perspiciatis dolorum est a sapiente temporibus. Animi provident enim aut aspernatur totam reprehenderit.</p><p>Dolore sed sed ad ut explicabo voluptatem sunt. Nemo dolore eius nihil eos est et. Sequi velit quis qui culpa nesciunt. Nobis neque ut sit qui debitis non dignissimos.</p>', NULL, '2022-07-16 20:56:23', '2022-07-16 20:56:23'),
(14, 1, 3, 'Ea omnis eius laudantium ut.', 'nam-ratione-dignissimos-aut-nostrum', NULL, 'Ullam animi aut repudiandae eaque. Ea iure consequatur quia ipsa repellat dolor velit. Consequatur ad debitis temporibus non dicta dolores.', '<p>Quos est eligendi laudantium ut qui eaque. Eos sint doloremque odit qui velit adipisci asperiores voluptatem.</p><p>Vitae laboriosam quia animi beatae minus sed. Architecto accusantium rerum sit. Possimus dolorem maiores reprehenderit velit laborum. Sapiente eum quis dolor quod laborum dolorum ipsam sed.</p><p>Aliquam et dolor consectetur. Aspernatur voluptatum amet consequuntur qui. Voluptate aliquam qui aut velit sint. Aut atque consequuntur eum officia. Quasi facilis hic quis soluta nihil laborum.</p><p>Molestiae aspernatur hic ut consequatur aut. Laborum quia veniam ullam est. Ipsum sequi et alias atque placeat optio id accusamus. Eaque repudiandae quae eum quis voluptatem exercitationem.</p><p>Qui nesciunt quaerat qui odit illum quae. Quaerat odit odio consequuntur labore tempora natus quidem. Ut quam sit ut nulla velit voluptatem id vitae. Ut enim praesentium expedita nemo minima.</p><p>Et consectetur unde similique rerum suscipit aut. Earum officia quaerat quia aut ea. Voluptate unde est hic labore.</p><p>Velit id consequuntur blanditiis eligendi dolore alias omnis asperiores. Tempore labore sed qui ea. Eum ducimus eum iure ut eaque.</p><p>Optio laudantium et in vero dolores. Repellendus ducimus harum dolores. Pariatur laudantium est tenetur facere non et. Natus maiores officiis similique adipisci officia.</p>', NULL, '2022-07-16 20:56:23', '2022-07-16 20:56:23'),
(15, 2, 2, 'Dolor beatae.', 'nesciunt-saepe-et-aut-non', NULL, 'Ut magnam illum voluptatem excepturi omnis ullam. Culpa id illum repellat eum eveniet temporibus. Odit ratione distinctio quis soluta ipsum doloribus.', '<p>Et est reprehenderit mollitia numquam exercitationem et. Sed vel ipsa qui ullam ullam nobis error atque. Expedita fugit aut aut et et quibusdam. In sequi vero consequuntur deserunt odio qui corporis.</p><p>Quia cum neque qui repudiandae. Tempore voluptas perspiciatis officiis sed est doloribus aliquam. Eum eum magnam aut eum.</p><p>Error harum nobis esse molestiae quae accusamus. Nisi vel aut sed et ex voluptas atque voluptatem. Cumque repellat recusandae excepturi saepe modi iusto occaecati nemo. Harum omnis facere voluptas nesciunt in. Omnis omnis quo facilis est illum veritatis vel.</p><p>Eos delectus iure eaque alias fuga dignissimos autem sunt. Explicabo hic voluptatem ut et rerum voluptatum repellat.</p><p>In inventore ipsam aperiam occaecati. Architecto rerum natus dolorem sit. Quo nam qui neque et.</p><p>Alias doloremque deserunt ipsa et quod delectus. Nemo consequatur asperiores doloribus quae est cumque voluptatum ut. Accusamus qui aspernatur sunt magnam ipsa culpa.</p>', NULL, '2022-07-16 20:56:23', '2022-07-16 20:56:23'),
(16, 1, 2, 'At perspiciatis occaecati.', 'unde-cumque-similique-ab-rerum', NULL, 'Nobis aliquid ut sit commodi est ad. Harum enim ut quaerat eos. Est tempora assumenda nihil deserunt consequatur. Voluptates alias temporibus autem vero perferendis minima.', '<p>Sunt necessitatibus magnam et mollitia aut neque cumque enim. Beatae sit rem quos dolorem. Quasi non fugiat mollitia et id quia. Doloribus corrupti officia rerum ea enim aliquam rem.</p><p>Dolorem ducimus eligendi tempore veritatis aliquid consequatur illo. Nesciunt eum aut eum. Sapiente dolor quam rerum et recusandae aliquid aut aut. Fugiat rerum qui omnis harum.</p><p>Qui ducimus neque possimus quos eos sint culpa nihil. Consequatur natus ut expedita dolores.</p><p>Nobis necessitatibus est nisi modi a amet optio. Deserunt dolorem cum expedita nam. Possimus optio excepturi deserunt. In possimus vero quia illo at magnam molestias.</p><p>Molestiae blanditiis eius et nisi sunt est. Ducimus dolor ex quo. Adipisci eos nam amet qui odit voluptatibus labore. Molestias aut rerum aliquid dignissimos error. Aut quia voluptatem blanditiis inventore.</p><p>Iste blanditiis quia tempora sequi sunt fugiat voluptas. Sit autem dolorum molestias eos eaque. Ipsa distinctio a delectus nulla quis perferendis ab. Sed minus reiciendis est ipsa vel minus rerum.</p>', NULL, '2022-07-16 20:56:23', '2022-07-16 20:56:23'),
(17, 1, 1, 'Quia veritatis adipisci corporis hic officiis.', 'in-est-vero-molestiae-error-ducimus-quia-provident', NULL, 'At iusto provident et aut deleniti commodi quia. Quisquam dolores quasi voluptates reiciendis eligendi. Velit sit numquam quis at est iusto modi inventore.', '<p>Et rerum sit ex animi odit. Debitis et ratione quis velit. Esse non temporibus provident quo quisquam repellat. Similique temporibus ratione nihil sit asperiores et qui.</p><p>Et ut quia atque amet porro incidunt vitae. Omnis voluptatibus beatae beatae autem. Qui accusamus reiciendis praesentium inventore. Non error est est aut consequatur consequuntur consectetur.</p><p>Alias dolores vitae rerum sit maiores qui. Rem earum ea ut eos nulla consequatur nihil. Consequatur labore deleniti rerum dolor repellat maiores pariatur.</p><p>Minus non et maxime sequi aliquam qui. Temporibus consectetur maiores et iste sint. Commodi eum accusantium quo est rerum ratione.</p><p>Tenetur voluptatem aperiam pariatur necessitatibus. Cumque et autem debitis. Illum est iste et qui.</p><p>Velit blanditiis similique dolorem cumque modi alias eum. Voluptas necessitatibus nemo ullam molestiae dolorem et. Iste temporibus sint est in. Voluptates et aut vitae quam odio. Aliquid non sint possimus fugiat est.</p><p>Similique atque nulla laboriosam quia autem non illum. Eligendi et voluptas dolores qui hic culpa ea aliquam. Sapiente nulla doloremque non. Facere quaerat qui voluptas ipsa.</p>', NULL, '2022-07-16 20:56:23', '2022-07-16 20:56:23'),
(18, 2, 3, 'Provident neque id aspernatur.', 'ipsa-amet-non-est', NULL, 'Doloremque eum cumque aperiam unde officiis. Quae voluptas culpa unde non aut. Vitae dolor et ipsum sit pariatur cumque provident nam. Ipsum officiis similique explicabo quidem beatae.', '<p>Magni atque nisi nobis enim non. Non voluptate error soluta ut quae.</p><p>Aut reprehenderit cum excepturi illum iure enim. Labore necessitatibus est quis qui recusandae eum. Error quaerat dolorem laudantium et quam. Quia accusantium rem numquam fugiat rerum repudiandae sed.</p><p>Eveniet et sit ut corporis dolorem ea. Incidunt voluptas sit dicta iste dolores hic. Recusandae numquam voluptatem nihil excepturi porro in ratione corrupti.</p><p>Rem totam dignissimos libero vitae molestiae sunt est. Iure tempora repellendus expedita aspernatur. Cum officia dolores doloremque voluptate.</p><p>Fugiat ea hic beatae velit. Qui perspiciatis quam velit eveniet impedit doloremque. Qui est voluptatem velit culpa qui ipsa voluptatem molestiae.</p>', NULL, '2022-07-16 20:56:23', '2022-07-16 20:56:23'),
(19, 1, 3, 'Dolore magnam reprehenderit at laborum sint suscipit.', 'dolorum-modi-ratione-quas-in-sequi-explicabo-officiis', NULL, 'Voluptatum architecto tempora odit qui. Distinctio est est vitae aut commodi hic. Dolores non explicabo et est. Fugit id tempora qui eaque possimus aspernatur.', '<p>Asperiores reprehenderit laudantium doloribus voluptas dolores qui vero. Sed assumenda culpa sint quia. Et harum nesciunt dolor rem eos quia.</p><p>Mollitia aliquid commodi fuga voluptatibus. Sunt sit odio occaecati. Molestiae cumque at autem minus. Inventore odit distinctio dolorem nemo ea est ut.</p><p>Assumenda quas reprehenderit aperiam. Et et dolore ut suscipit. Minima quod cum voluptate quia dolor rerum ipsam.</p><p>Et sit corrupti sunt perspiciatis reiciendis. Beatae velit non voluptatem nihil. Veritatis ipsum nesciunt alias quisquam mollitia cumque.</p><p>Mollitia explicabo animi quia autem distinctio possimus pariatur. Qui est perferendis facere magni qui. Voluptates eaque eaque quisquam voluptate.</p><p>Animi corrupti quibusdam minima omnis deleniti eum at. Aut error ea impedit sed et. Distinctio nam dignissimos et rerum.</p><p>Mollitia rerum eius delectus dolorum. Odit ut nisi blanditiis veniam. Ut possimus sit rerum quia ea natus quis. In magnam voluptatum et deleniti.</p><p>Aut voluptatem soluta voluptatem quia ut soluta magnam. Est ex natus modi inventore sunt architecto enim. Enim alias aut quo blanditiis quae est ut.</p>', NULL, '2022-07-16 20:56:23', '2022-07-16 20:56:23'),
(20, 1, 3, 'Dolores sit autem doloribus occaecati quisquam ut.', 'quia-vero-sunt-quia-quos', NULL, 'Omnis sunt porro eius non. Esse voluptas sed delectus et deleniti adipisci consequatur. Et et molestias ea harum aspernatur.', '<p>Minima velit aspernatur cupiditate impedit dolores quaerat voluptatem. Reiciendis voluptates ut sint nihil. Itaque est laudantium tenetur et dicta quisquam sint. Mollitia accusamus distinctio qui voluptatem tempore quia.</p><p>Nihil veritatis magni provident cum ut. Voluptate voluptatum deleniti voluptatibus ut. Minima nesciunt et facere eum eaque.</p><p>Dolores laborum iste quasi explicabo assumenda. Qui sapiente nemo delectus voluptas doloribus molestiae veritatis. Beatae veniam alias dolores voluptatum ea autem.</p><p>Libero ipsa saepe dolorem ipsam. Adipisci consequatur beatae ipsam. Fugiat optio nam ducimus qui et sed eius explicabo.</p><p>Fugit necessitatibus facere dolores ut ut deleniti enim. Explicabo eos et ducimus molestias. Molestias doloribus sed non voluptatum omnis rerum quia. Ipsa cumque est alias omnis est.</p><p>Id mollitia exercitationem voluptatem vel aut rem id. Inventore omnis velit dolorem facere temporibus. Aperiam molestiae neque accusamus aspernatur aut in. Facere optio velit tenetur et alias. Aut vitae et molestiae rerum architecto.</p><p>Iure iusto modi est et eaque et. Enim officiis deleniti fuga quis. Provident est dolor et accusamus officiis quis qui. Laborum sed neque in modi a libero nihil fugit.</p>', NULL, '2022-07-16 20:56:23', '2022-07-16 20:56:23'),
(21, 2, 2, 'Judul Post Baru', 'judul-post-baru', 'post-images/98XrbOnC3bdrY2Z5IPo3u00sE2p3sGWb6ZZJuNfn.jpg', 'Post PertamaLorem ipsum dolor sit amet consectetur adipisicing elit. Voluptatibus, quaerat? Quos odio molestias cum deleniti maiores corrupti accusamus officiis repudiandae? Odio, mollitia assumenda p...', '<div><strong>Post Pertama<br></strong><br>Lorem ipsum dolor sit amet consectetur adipisicing elit. Voluptatibus, quaerat? Quos odio molestias cum deleniti maiores corrupti accusamus officiis repudiandae? Odio, mollitia assumenda praesentium illo repellendus veniam earum cumque aliquid facere incidunt ipsa fugiat non voluptate sed omnis at inventore.&nbsp;<br>Quod illum quos aliquid doloribus laboriosam, molestias ut! Sapiente atque blanditiis id aspernatur a quaerat veritatis doloribus quas, suscipit sed neque, illo animi nostrum eaque laboriosam quasi sunt autem adipisci beatae omnis odio! Nobis officiis neque eveniet expedita sed deleniti mollitia exercitationem quaerat quis qui laudantium, quod quos molestias libero ea consequatur.&nbsp;<br>Fugiat unde laborum dignissimos repellat amet rerum quasi quam inventore, ea possimus maiores beatae officia, itaque fuga ratione a quod vero dolor! Placeat similique vero ullam eum quam magni. Id natus maiores, deleniti facilis culpa temporibus pariatur dicta quam cum ducimus eius possimus necessitatibus, odit numquam architecto expedita suscipit tempore, dolores dolorum quibusdam laudantium fuga illum officia? Atque quidem quae error! Neque, dicta! Dolore voluptatibus, consectetur impedit sit dolorem incidunt soluta eius laudantium facere maxime quibusdam molestias velit labore blanditiis et adipisci pariatur aliquam aliquid tempore quia error, distinctio dolores ipsum.&nbsp;<br>Eligendi, quas molestias accusamus quidem assumenda consequuntur ea veniam asperiores quae, ipsum a ad, dolor beatae. Rerum!</div>', NULL, '2022-07-16 21:23:23', '2022-07-16 21:23:23'),
(22, 3, 4, 'My Post', 'my-post', 'post-images/rScvgyr7do1LgkJH8yjlzxCHQWnnXyh5Q1STAxR9.jpg', 'My PostLorem ipsum dolor sit, amet consectetur adipisicing elit. Nobis ipsa sit laudantium, suscipit neque maiores nesciunt atque quae quod tempore distinctio omnis itaque dolor ipsum, doloribus quis...', '<div><strong>My Post</strong><br><br>Lorem ipsum dolor sit, amet consectetur adipisicing elit. Nobis ipsa sit laudantium, suscipit neque maiores nesciunt atque quae quod tempore distinctio omnis itaque dolor ipsum, doloribus quis alias.&nbsp;<br>Adipisci, aliquam eligendi aperiam, dolores enim dolor accusamus blanditiis tenetur aut in ex iusto accusantium, explicabo sint modi sapiente quia! Sunt dolor porro dicta dolorum totam? Corporis et incidunt excepturi, enim doloremque expedita dolores? Esse accusantium voluptas error eius quia explicabo ad minima? Voluptate ipsa perferendis libero quas voluptatibus harum eos aspernatur, dolor commodi omnis saepe debitis adipisci, ipsum temporibus eligendi. Sequi harum, consectetur assumenda est alias sit velit, ab debitis, quis rem repudiandae accusamus autem ut magni eius aspernatur placeat iure blanditiis ex vel non adipisci consequatur.&nbsp;<br>Deserunt explicabo magnam mollitia voluptate hic neque iure saepe molestiae, vitae consequatur rem fugit dolore illum! Numquam ipsam nemo magnam, provident nostrum veniam laboriosam in officia molestiae obcaecati mollitia illo natus temporibus recusandae? Rerum iure repellendus enim ad veritatis cumque quaerat obcaecati numquam repellat voluptatem natus quod, dolorem iusto eum laboriosam deserunt aperiam eaque impedit officia nostrum rem totam nesciunt harum quam. Cumque totam ad quidem eaque expedita deleniti fugiat blanditiis, voluptas nemo. Illum quidem similique, at ea quam doloribus consequuntur inventore minima totam.</div>', NULL, '2022-07-16 21:40:31', '2022-07-16 21:40:31');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_admin` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `is_admin`) VALUES
(1, 'Farhunnisa Anggraini', 'wrajata', 'wijayanti.cahyo@example.org', '2022-07-16 20:56:22', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'M7GP4VRSj8', '2022-07-16 20:56:22', '2022-07-16 20:56:22', 0),
(2, 'Naradi Wacana', 'kemal72', 'vero25@example.org', '2022-07-16 20:56:22', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Oou8Izw07taEvKAnYIpnbjftfHkKRti24nnxn3S03D9wKBfdTvp7FV9dIgjp', '2022-07-16 20:56:22', '2022-07-16 20:56:22', 0),
(3, 'Chelsea Ayu Yulianti', 'lestari.aris', 'nasyiah.citra@example.net', '2022-07-16 20:56:22', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '6oZgAvOVko', '2022-07-16 20:56:22', '2022-07-16 20:56:22', 0),
(4, 'Yandi Yandhi', 'Yandi Yandhi', 'yandiyandhi@gmail.com', NULL, '$2y$10$jy4Hn5oWRQfL6eo019k4P.dCRGxkyeBZY2ws6a/PFoW.25Btzxq9C', NULL, '2022-07-16 20:56:22', '2022-07-16 20:56:22', 1);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_name_unique` (`name`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`);

--
-- Indeks untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indeks untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indeks untuk tabel `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `posts_slug_unique` (`slug`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_username_unique` (`username`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
