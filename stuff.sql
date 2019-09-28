-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 01 Sie 2019, 21:01
-- Wersja serwera: 10.1.38-MariaDB
-- Wersja PHP: 7.3.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `stuff`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Zrzut danych tabeli `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2016_06_01_000001_create_oauth_auth_codes_table', 1),
(4, '2016_06_01_000002_create_oauth_access_tokens_table', 1),
(5, '2016_06_01_000003_create_oauth_refresh_tokens_table', 1),
(6, '2016_06_01_000004_create_oauth_clients_table', 1),
(7, '2016_06_01_000005_create_oauth_personal_access_clients_table', 1),
(8, '2019_07_27_141346_create_sites_table', 1);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `client_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Zrzut danych tabeli `oauth_access_tokens`
--

INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('0db59899fe22a0fe7875fc544c8aea042c61524b420fe00571754df3fcd24aeb15e8fd2ada54c8f4', 22, 2, NULL, '[]', 0, '2019-08-01 16:34:02', '2019-08-01 16:34:02', '2020-08-01 18:34:02'),
('0ec6649fa835bf17168af40939935f2a0215f46a8f122e9531eb085e49a738b1dadada017f2583fb', 1, 2, NULL, '[]', 0, '2019-07-30 16:31:25', '2019-07-30 16:31:25', '2020-07-30 18:31:25'),
('17d985178d3ffb391fadbd11a77527b4abbdc0aaed2bfb324cbeca1557f685765319841609f33e1a', 1, 2, NULL, '[]', 0, '2019-07-30 16:31:02', '2019-07-30 16:31:02', '2020-07-30 18:31:02'),
('1f4b2a47f480b4e9d6a8faea61395c6448be6d5e23a5cc01c101b65fbcfa1d630b788093b178ab45', 1, 2, NULL, '[]', 0, '2019-07-30 17:46:34', '2019-07-30 17:46:34', '2020-07-30 19:46:34'),
('3aa0c3550570c89bd9eef9a1b181c8ffa16f3e9fe5cfc5fa862bf95790b247b319c4ab106b649393', 1, 2, NULL, '[]', 0, '2019-07-31 18:03:38', '2019-07-31 18:03:38', '2020-07-31 20:03:38'),
('452b4ca31d79a61ce1f621703b295fa403dc36a82b9a2655f6c57a5a518743f10972c4b21d978a61', 1, 2, NULL, '[]', 0, '2019-07-31 17:59:29', '2019-07-31 17:59:29', '2020-07-31 19:59:29'),
('45677432cd15a83873d93615ee0614ce31b85c10330eede9534c1375097b359785ae0425e82c6ec9', 1, 2, NULL, '[]', 0, '2019-08-01 15:28:00', '2019-08-01 15:28:00', '2020-08-01 17:28:00'),
('500d4d4d23a860ec379fdf4f26435d09d311b58f78d0dbce60509616a27c1072f6898c0eb0f6c51b', 1, 2, NULL, '[]', 0, '2019-07-30 16:31:05', '2019-07-30 16:31:05', '2020-07-30 18:31:05'),
('62dd54348a29510435f7fdfec9d0fe5f73015cf4b435e79521770f3f94156107af2db579fff992a3', 1, 2, NULL, '[]', 0, '2019-07-31 17:27:38', '2019-07-31 17:27:38', '2020-07-31 19:27:38'),
('656a73b92ef0710110ab03fb34544dd2fce2887712e3814a9418adfb24223dce8af8fa5b4db50fd6', 1, 2, NULL, '[]', 0, '2019-07-31 17:35:37', '2019-07-31 17:35:37', '2020-07-31 19:35:37'),
('6c2fca14cf5de57ec1ac96ea5129aaba81252f28731f8d4447f5518a2e7b1c606da9e205858b99b9', 1, 2, NULL, '[]', 0, '2019-07-31 17:38:56', '2019-07-31 17:38:56', '2020-07-31 19:38:56'),
('6f6d02c7ff987e98f1765415b178258d2e241f2f6d4e43443cd019a335ea745729ac7a277349ca38', 1, 2, NULL, '[]', 0, '2019-07-30 15:49:39', '2019-07-30 15:49:39', '2020-07-30 17:49:39'),
('72463b707ceb8570e421db582d7ef548464042e07aa597abc38b964f07a652eee069c737cda3acd8', 1, 2, NULL, '[]', 0, '2019-07-30 16:31:32', '2019-07-30 16:31:32', '2020-07-30 18:31:32'),
('733e37ad47d132d18c8dc4a9e5bab7f4e58c811f48c62562429bada4f359c2a6daa813cdbf60c924', 1, 2, NULL, '[]', 0, '2019-07-30 16:30:55', '2019-07-30 16:30:55', '2020-07-30 18:30:55'),
('74d8fa7986ed331535d52a7f0036593f481f96fed98c5a16b0c4e393d48bfc027c938332a8241b9f', 1, 2, NULL, '[]', 0, '2019-08-01 15:21:52', '2019-08-01 15:21:52', '2020-08-01 17:21:52'),
('79c019da8d1664b7fb6b098762764c49844fde18254abf6f14b8fbc2e8df76882ea89aba94092d4b', 1, 2, NULL, '[]', 0, '2019-07-31 17:29:21', '2019-07-31 17:29:21', '2020-07-31 19:29:21'),
('7be892b4705a0465a5a1651c8d3243ebb9f404ff86f7d70616a225b6b7c6547d800ddf150f61278d', 1, 2, NULL, '[]', 0, '2019-07-31 18:00:49', '2019-07-31 18:00:49', '2020-07-31 20:00:49'),
('84bf47353a7060eb29a138322f5900031b01b41f584d05e8a8a8807b02f45c347d72fc1fa14e2530', 1, 2, NULL, '[]', 0, '2019-07-30 16:32:51', '2019-07-30 16:32:51', '2020-07-30 18:32:51'),
('967cf197367563459074c24f621a15e811aa2705c8662bdd3fc6aa923340d369293b0cba4112cc96', 1, 2, NULL, '[]', 0, '2019-07-31 17:11:01', '2019-07-31 17:11:01', '2020-07-31 19:11:01'),
('a78007fee7cb50be26b60b8f4795306d2d08c895b8736536230913a19da28a2cd94992757d03c3df', 1, 2, NULL, '[]', 0, '2019-07-31 17:21:15', '2019-07-31 17:21:15', '2020-07-31 19:21:15'),
('a9b998c57d79585749003d1634e653d7db80398ac463cd330cfa67174a15068f07e2baa2eac087a1', 1, 2, NULL, '[]', 0, '2019-07-31 17:45:22', '2019-07-31 17:45:22', '2020-07-31 19:45:22'),
('aa04a185cfa0241218bffdafd48826d271b41b21ff22273d0e899944e95094ec2ff82e32ad47eef7', 1, 2, NULL, '[]', 0, '2019-07-31 17:21:53', '2019-07-31 17:21:53', '2020-07-31 19:21:53'),
('b29aaaf6796e94f1fcebe3ca216a5530e578673aa4b945ebaf8be7fd30d9b4b6b6f21004452f8c4d', 1, 2, NULL, '[]', 0, '2019-07-30 16:31:09', '2019-07-30 16:31:09', '2020-07-30 18:31:09'),
('baf7addf062058eceacaeeec048bf0952d7c68a42f5d271f6727898004bb3f61429f36fe40b2de5b', 1, 2, NULL, '[]', 0, '2019-07-30 16:30:27', '2019-07-30 16:30:27', '2020-07-30 18:30:27'),
('c1b430b2966a44ce5e15f386687780a0d98e9d39a93b8a836c4097b1daf919c55916e0d22c95d8ae', 1, 2, NULL, '[]', 0, '2019-08-01 16:19:40', '2019-08-01 16:19:40', '2020-08-01 18:19:40'),
('c24129954525e6b4c0b68d212747afec846a1991e6c87d7c58adbc98765c3582386e9047c6f6fc9a', 1, 2, NULL, '[]', 0, '2019-07-31 17:09:51', '2019-07-31 17:09:51', '2020-07-31 19:09:51'),
('c78a3908907949b4477d529f79746bb3ae52af5cb858e771b9e4ce1dc54559b88d2359f2e460c0c5', 1, 2, NULL, '[]', 0, '2019-07-30 16:33:07', '2019-07-30 16:33:07', '2020-07-30 18:33:07'),
('ddd55bc0c2dde50d5d37680c02fef73e7772aefe6b785a69c12f8b7fb3540b8bbb3124c696e36cbe', 1, 2, NULL, '[]', 0, '2019-07-30 16:31:01', '2019-07-30 16:31:01', '2020-07-30 18:31:01'),
('e27a59874042809696c37dbdc5c966c3930fbffd286b50b0dd8ec20455927987521a88f3cda40ccf', 1, 2, NULL, '[]', 0, '2019-07-31 18:15:05', '2019-07-31 18:15:05', '2020-07-31 20:15:05'),
('f376d0dc12be2629017d24c0aea4228bfaeafb49ec4130fd66129d7dc9af78c3aa6796643c41fa3a', 1, 2, NULL, '[]', 0, '2019-07-31 17:09:47', '2019-07-31 17:09:47', '2020-07-31 19:09:47'),
('f5b9fa19090ae2a2cea816dd62853a12dd0921b8e788fe83d6ee97272fe56a689ed1b0fb41bfe936', 1, 2, NULL, '[]', 0, '2019-07-31 17:39:10', '2019-07-31 17:39:10', '2020-07-31 19:39:10'),
('ff44b4128d00682464452bfa54674792a15cfe086a42c962812d75eea750c2dcf756cd518b047306', 1, 2, NULL, '[]', 0, '2019-07-30 15:49:58', '2019-07-30 15:49:58', '2020-07-30 17:49:58');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `client_id` int(10) UNSIGNED NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Zrzut danych tabeli `oauth_clients`
--

INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Laravel Personal Access Client', 'vl95AIygZjqbVZUXuIIoZm7p6QrGk9mVroTRmctX', 'http://localhost', 1, 0, 0, '2019-07-30 15:48:24', '2019-07-30 15:48:24'),
(2, NULL, 'Laravel Password Grant Client', 'TWdw3SW2uBAzx1Q3P3WkPKIXlzDRegbjE3Js2xYZ', 'http://localhost', 0, 1, 0, '2019-07-30 15:48:24', '2019-07-30 15:48:24');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` int(10) UNSIGNED NOT NULL,
  `client_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Zrzut danych tabeli `oauth_personal_access_clients`
--

INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2019-07-30 15:48:24', '2019-07-30 15:48:24');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Zrzut danych tabeli `oauth_refresh_tokens`
--

INSERT INTO `oauth_refresh_tokens` (`id`, `access_token_id`, `revoked`, `expires_at`) VALUES
('04d581a0b9edcd7e3c0ffad6d435fcd7e7a57cad3a9948e23b00041a3baa77861d6818e663cc0443', '74d8fa7986ed331535d52a7f0036593f481f96fed98c5a16b0c4e393d48bfc027c938332a8241b9f', 0, '2020-08-01 17:21:52'),
('0cd1381f00dc4770ed43baa7dc8e40bbbee3dc58443eeae1e98d105ae0f7a3fb2f830d6db3825012', '6c2fca14cf5de57ec1ac96ea5129aaba81252f28731f8d4447f5518a2e7b1c606da9e205858b99b9', 0, '2020-07-31 19:38:56'),
('13516a6cc6786d4f7eacbef6a19964e3d6745545b468dc062360a567a8e15263b6136718eda7611a', '17d985178d3ffb391fadbd11a77527b4abbdc0aaed2bfb324cbeca1557f685765319841609f33e1a', 0, '2020-07-30 18:31:02'),
('1672547a37c909bfaa3a3b8bbd80c02fc85f9453426a0b779a5b60d70a05bc62b19be2c65378f2b5', 'aa04a185cfa0241218bffdafd48826d271b41b21ff22273d0e899944e95094ec2ff82e32ad47eef7', 0, '2020-07-31 19:21:53'),
('177a4fdd5bcca93d8fb5a0b4826f9771bb4820250c6250552c495789e4255751e0995a9bb9b6aa84', 'ff44b4128d00682464452bfa54674792a15cfe086a42c962812d75eea750c2dcf756cd518b047306', 0, '2020-07-30 17:49:58'),
('19f59aeb5d773884560d35c8912b3599bf2880393d8f1b45a38997e7601b5e6d29abe5486a247dcb', '733e37ad47d132d18c8dc4a9e5bab7f4e58c811f48c62562429bada4f359c2a6daa813cdbf60c924', 0, '2020-07-30 18:30:55'),
('1ea2086fb0b89a75745e3c94937041cf8b6cf7ee76ebda9a4df0ec38727161c462a0865d6f4f43db', '79c019da8d1664b7fb6b098762764c49844fde18254abf6f14b8fbc2e8df76882ea89aba94092d4b', 0, '2020-07-31 19:29:21'),
('30f329d654d90ccf7c3123ea80b415b37e0556330b862ead118dbc1afc3a4ecc775b78d7b11206a4', '656a73b92ef0710110ab03fb34544dd2fce2887712e3814a9418adfb24223dce8af8fa5b4db50fd6', 0, '2020-07-31 19:35:37'),
('3136ccc42c74c7c680c1c89ac2219c780d9235fd992cbdc408f036aeefe44359ae74bfd75d266e2f', 'e27a59874042809696c37dbdc5c966c3930fbffd286b50b0dd8ec20455927987521a88f3cda40ccf', 0, '2020-07-31 20:15:05'),
('334b3639bf5bfe3a0209d88c25435d05b430de33dae0b7ad7d2d5d1c52e286aabd8558ecbee9fd17', '0db59899fe22a0fe7875fc544c8aea042c61524b420fe00571754df3fcd24aeb15e8fd2ada54c8f4', 0, '2020-08-01 18:34:02'),
('45e2ec12b75b937cd36b3054807b32fb6b2d990b5bd0f0c84b0746b1f11c1ef1f40f349a45d10e7a', 'f376d0dc12be2629017d24c0aea4228bfaeafb49ec4130fd66129d7dc9af78c3aa6796643c41fa3a', 0, '2020-07-31 19:09:47'),
('4c6c1536c313b32a4a356eb071ccccd8e9e1d497120368acc8bb467ddd29dcdaa68fb3bea8897682', 'a78007fee7cb50be26b60b8f4795306d2d08c895b8736536230913a19da28a2cd94992757d03c3df', 0, '2020-07-31 19:21:15'),
('54de40cd5ec8c00c6dcc2d94c5e85a18bef92959b85fcea189e79b38f7d201896854afc7cf2f9931', 'c24129954525e6b4c0b68d212747afec846a1991e6c87d7c58adbc98765c3582386e9047c6f6fc9a', 0, '2020-07-31 19:09:51'),
('7601894c7b8c06ad6ae66f7498611f04f1b0e858b21747cddcb7cad7d7268606e7d5dac8d89bda3c', '6f6d02c7ff987e98f1765415b178258d2e241f2f6d4e43443cd019a335ea745729ac7a277349ca38', 0, '2020-07-30 17:49:39'),
('7ae26b054806afb72722273e0f7f3952b4a977c23be8d5dd603d24fbaffdbc74f39a6004b39be1bc', '1f4b2a47f480b4e9d6a8faea61395c6448be6d5e23a5cc01c101b65fbcfa1d630b788093b178ab45', 0, '2020-07-30 19:46:34'),
('8cde9bc6fb6059a2992056d06c9ef9991ae2b837fb2d5ba1c54ebeae8057e04c3ee7f3cce3a519f8', '967cf197367563459074c24f621a15e811aa2705c8662bdd3fc6aa923340d369293b0cba4112cc96', 0, '2020-07-31 19:11:01'),
('907cd4270fc016a25d1c225d27dc0aa0a8b371233cc6247ef20c79515ac47737461b8a33c9da6d29', '7be892b4705a0465a5a1651c8d3243ebb9f404ff86f7d70616a225b6b7c6547d800ddf150f61278d', 0, '2020-07-31 20:00:49'),
('927e4ba9bf05febd00757237c627bfd0fcd8d2282357f0ef81ce07cb3700c5102d33c2c88236ea78', '84bf47353a7060eb29a138322f5900031b01b41f584d05e8a8a8807b02f45c347d72fc1fa14e2530', 0, '2020-07-30 18:32:51'),
('9c9024ddec9adc90b34cee5f28d5015200bd4ff7ab6b808e0139ac24806caccc548cd2fc91b36c82', '45677432cd15a83873d93615ee0614ce31b85c10330eede9534c1375097b359785ae0425e82c6ec9', 0, '2020-08-01 17:28:00'),
('a156b3fc6df326d3869a2ff153742efe1540f87aa2cfa65fcb516549d4587113c5f27370ead179f9', 'baf7addf062058eceacaeeec048bf0952d7c68a42f5d271f6727898004bb3f61429f36fe40b2de5b', 0, '2020-07-30 18:30:27'),
('aafb65535772cccc16cefbaba104ccbb66f6a690a0e9f5aac0fde79105ad492344824e9c16e6eb78', '500d4d4d23a860ec379fdf4f26435d09d311b58f78d0dbce60509616a27c1072f6898c0eb0f6c51b', 0, '2020-07-30 18:31:05'),
('b14890174870ed1e2f9e95e12d2b4cb9e8172837e5422df8b219176435abc4a3549873f4aea16396', 'c1b430b2966a44ce5e15f386687780a0d98e9d39a93b8a836c4097b1daf919c55916e0d22c95d8ae', 0, '2020-08-01 18:19:40'),
('c1c9886adeca60956e51b0580731cabd8d50aaf4c6357791b97086d39a42661f7aa2520e9fa9f8fe', 'a9b998c57d79585749003d1634e653d7db80398ac463cd330cfa67174a15068f07e2baa2eac087a1', 0, '2020-07-31 19:45:22'),
('c4094837c923ff105f6e81b712eb01ddcc24c56e1de4b2ce2125fd7eb26ca803ec4b037e2d012f44', '0ec6649fa835bf17168af40939935f2a0215f46a8f122e9531eb085e49a738b1dadada017f2583fb', 0, '2020-07-30 18:31:25'),
('c69e37ce0862959aaf475f0428d791405b289da63b8767bfb60f6e9c218764d900daecb8b3b1bcc8', '3aa0c3550570c89bd9eef9a1b181c8ffa16f3e9fe5cfc5fa862bf95790b247b319c4ab106b649393', 0, '2020-07-31 20:03:38'),
('c92be290d0a472b48829b4cb73aaedd06af9d7c40cc26338e86e24bdf8d6f77dc85dff798704d408', 'b29aaaf6796e94f1fcebe3ca216a5530e578673aa4b945ebaf8be7fd30d9b4b6b6f21004452f8c4d', 0, '2020-07-30 18:31:09'),
('da01284c1f3eb55af97006aec0c8611c5c60e53b752817dd149191dd9734849bfcf321a5bc694480', '72463b707ceb8570e421db582d7ef548464042e07aa597abc38b964f07a652eee069c737cda3acd8', 0, '2020-07-30 18:31:32'),
('e484e04adf80a8042b7016c1dcba4a204d7ca1e8173a5eec58d0cb97bd5c9ad36f79b15f4b95f308', '62dd54348a29510435f7fdfec9d0fe5f73015cf4b435e79521770f3f94156107af2db579fff992a3', 0, '2020-07-31 19:27:38'),
('e72f0ccad67773be8a95c9d6f6c332bc7b769a831a9a2e11c36fbdc8beb5c348514ae69f2b3d1b94', 'f5b9fa19090ae2a2cea816dd62853a12dd0921b8e788fe83d6ee97272fe56a689ed1b0fb41bfe936', 0, '2020-07-31 19:39:10'),
('ef225adabdb82dc77dfcc1edfe65c3b1588f0cc2e7ce577c63463b4f55d889abc2e1c56a9b8bb662', 'c78a3908907949b4477d529f79746bb3ae52af5cb858e771b9e4ce1dc54559b88d2359f2e460c0c5', 0, '2020-07-30 18:33:07'),
('f7d486eaba640ece2e2333872c88bfa2386b6afb7101d8d80d7fbaece9ba14c26937c8e9099aabc3', 'ddd55bc0c2dde50d5d37680c02fef73e7772aefe6b785a69c12f8b7fb3540b8bbb3124c696e36cbe', 0, '2020-07-30 18:31:01'),
('fd08df608b2ea6d42b3b5e52c20cbbd55ea6ca77a4f6c5adc32f6af5c015eab9e7a3c120555efc37', '452b4ca31d79a61ce1f621703b295fa403dc36a82b9a2655f6c57a5a518743f10972c4b21d978a61', 0, '2020-07-31 19:59:29');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `sites`
--

CREATE TABLE `sites` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Zrzut danych tabeli `sites`
--

INSERT INTO `sites` (`id`, `user_id`, `name`, `url`, `created_at`, `updated_at`) VALUES
(1, 10, 'Shaina', 'http://green.org/omnis-et-dolor-dolores-error-aspernatur-iste-ut', '2019-07-30 15:01:54', '2019-07-30 15:01:54'),
(2, 9, 'Alena', 'http://reichel.com/ut-laborum-optio-quaerat-ducimus-recusandae-aliquid-dolor-numquam', '2019-07-30 15:01:54', '2019-07-30 15:01:54'),
(3, 10, 'Vernie', 'http://www.schuppe.com/accusamus-laudantium-possimus-quia-maxime-qui.html', '2019-07-30 15:01:54', '2019-07-30 15:01:54'),
(4, 20, 'Violette', 'http://halvorson.net/delectus-qui-dicta-aliquid-provident-aut-veritatis-unde', '2019-07-30 15:01:54', '2019-07-30 15:01:54'),
(5, 7, 'Henriette', 'http://stanton.com/minus-aut-eveniet-temporibus-natus-nulla', '2019-07-30 15:01:54', '2019-07-30 15:01:54'),
(6, 9, 'Hanna', 'http://www.hamill.net/est-rem-voluptas-explicabo-reiciendis-omnis', '2019-07-30 15:01:54', '2019-07-30 15:01:54'),
(7, 14, 'Betty', 'http://bogisich.com/eligendi-reprehenderit-quis-corporis-aut-distinctio.html', '2019-07-30 15:01:54', '2019-07-30 15:01:54'),
(8, 17, 'Angelica', 'http://www.keeling.net/porro-et-nesciunt-iure-dolore-et-nihil-quae.html', '2019-07-30 15:01:54', '2019-07-30 15:01:54'),
(9, 12, 'Helga', 'https://www.grimes.com/commodi-totam-culpa-libero-cumque-labore', '2019-07-30 15:01:54', '2019-07-30 15:01:54'),
(10, 6, 'Shanelle', 'https://www.steuber.net/reprehenderit-occaecati-itaque-ea-omnis-maiores-quo', '2019-07-30 15:01:54', '2019-07-30 15:01:54'),
(11, 19, 'Ana', 'http://www.schmidt.com/quaerat-excepturi-aut-a-cum-architecto-minima', '2019-07-30 15:01:54', '2019-07-30 15:01:54'),
(12, 20, 'Destiny', 'http://okon.com/recusandae-aliquid-veritatis-architecto-error-non-tenetur', '2019-07-30 15:01:54', '2019-07-30 15:01:54'),
(13, 2, 'Celestine', 'http://paucek.org/exercitationem-sunt-dolor-ea-voluptatem-nihil-vitae.html', '2019-07-30 15:01:54', '2019-07-30 15:01:54'),
(14, 4, 'Yvette', 'https://www.satterfield.biz/architecto-est-eveniet-vero', '2019-07-30 15:01:54', '2019-07-30 15:01:54'),
(15, 11, 'Adaline', 'https://cummings.net/magnam-et-aut-consectetur-rerum.html', '2019-07-30 15:01:54', '2019-07-30 15:01:54'),
(16, 4, 'Dorothy', 'https://www.kuvalis.com/illo-fugit-aut-et-tempore-fugit-ipsum-aperiam-vitae', '2019-07-30 15:01:54', '2019-07-30 15:01:54'),
(17, 8, 'Zola', 'http://predovic.com/', '2019-07-30 15:01:54', '2019-07-30 15:01:54'),
(18, 11, 'Madisyn', 'http://www.swift.com/', '2019-07-30 15:01:54', '2019-07-30 15:01:54'),
(19, 3, 'Emmanuelle', 'http://www.breitenberg.com/', '2019-07-30 15:01:54', '2019-07-30 15:01:54'),
(20, 1, 'Alvina', 'http://tillman.com/', '2019-07-30 15:01:54', '2019-07-30 15:01:54'),
(21, 19, 'Lelia', 'http://www.hackett.info/tenetur-atque-tempore-sint-nesciunt-voluptatem-qui-illum-iure', '2019-07-30 15:01:54', '2019-07-30 15:01:54'),
(22, 1, 'Marcia', 'http://www.dubuque.com/', '2019-07-30 15:01:54', '2019-07-30 15:01:54'),
(23, 4, 'Krystel', 'https://www.gerlach.com/autem-explicabo-facere-in-rerum', '2019-07-30 15:01:54', '2019-07-30 15:01:54'),
(24, 18, 'Paula', 'http://jast.com/', '2019-07-30 15:01:54', '2019-07-30 15:01:54'),
(25, 19, 'Tia', 'http://spencer.com/minima-voluptas-beatae-ut-asperiores-dolor-molestiae', '2019-07-30 15:01:54', '2019-07-30 15:01:54'),
(26, 16, 'Meta', 'https://www.schroeder.com/ipsum-nihil-distinctio-et-voluptas-aut-incidunt', '2019-07-30 15:01:54', '2019-07-30 15:01:54'),
(27, 20, 'Minerva', 'http://www.towne.com/', '2019-07-30 15:01:54', '2019-07-30 15:01:54'),
(28, 3, 'Citlalli', 'http://www.ruecker.org/excepturi-quae-blanditiis-minima-excepturi-vitae-quia', '2019-07-30 15:01:54', '2019-07-30 15:01:54'),
(29, 9, 'Bettie', 'http://www.fahey.com/voluptatem-repellendus-illo-ipsa-quia', '2019-07-30 15:01:54', '2019-07-30 15:01:54'),
(30, 17, 'Alanis', 'http://www.hoppe.com/ipsam-doloremque-consequatur-in', '2019-07-30 15:01:54', '2019-07-30 15:01:54'),
(31, 11, 'Caleigh', 'https://russel.net/voluptas-necessitatibus-dolore-quas-cum-perferendis-ea-atque-qui.html', '2019-07-30 15:09:09', '2019-07-30 15:09:09'),
(32, 2, 'Tiara', 'https://botsford.org/ducimus-consectetur-a-corrupti-corrupti-eligendi-labore.html', '2019-07-30 15:09:09', '2019-07-30 15:09:09'),
(33, 8, 'Jammie', 'http://www.bayer.org/', '2019-07-30 15:09:09', '2019-07-30 15:09:09'),
(34, 6, 'Cassandra', 'http://gutkowski.net/esse-tenetur-distinctio-et-dolor-voluptatem.html', '2019-07-30 15:09:09', '2019-07-30 15:09:09'),
(35, 8, 'Myrtice', 'http://hettinger.com/ut-itaque-non-at-est', '2019-07-30 15:09:09', '2019-07-30 15:09:09'),
(36, 13, 'Janelle', 'http://www.pollich.com/', '2019-07-30 15:09:09', '2019-07-30 15:09:09'),
(37, 5, 'Donna', 'http://hudson.org/magnam-ad-id-rerum-dolore-quod', '2019-07-30 15:09:09', '2019-07-30 15:09:09'),
(38, 9, 'Emilie', 'http://brakus.com/ea-quo-temporibus-quaerat-officiis-qui-dolore', '2019-07-30 15:09:09', '2019-07-30 15:09:09'),
(39, 4, 'Fae', 'http://mclaughlin.org/rerum-ut-eveniet-consequatur.html', '2019-07-30 15:09:09', '2019-07-30 15:09:09'),
(40, 16, 'Constance', 'http://www.kulas.com/saepe-at-laudantium-sint-beatae-libero.html', '2019-07-30 15:09:09', '2019-07-30 15:09:09'),
(41, 11, 'Lila', 'http://ebert.com/aut-beatae-earum-veritatis-dolorem-incidunt-illo-enim', '2019-07-30 15:09:09', '2019-07-30 15:09:09'),
(42, 6, 'Blanche', 'http://metz.biz/voluptatem-autem-rerum-iusto-id', '2019-07-30 15:09:09', '2019-07-30 15:09:09'),
(43, 9, 'Kaylie', 'http://www.oreilly.com/', '2019-07-30 15:09:09', '2019-07-30 15:09:09'),
(44, 11, 'Althea', 'http://www.hudson.com/', '2019-07-30 15:09:09', '2019-07-30 15:09:09'),
(45, 20, 'Pearline', 'http://www.goyette.com/itaque-rerum-perspiciatis-qui-molestiae-nulla-est-id-ab.html', '2019-07-30 15:09:09', '2019-07-30 15:09:09'),
(46, 16, 'Asia', 'http://www.beier.net/et-voluptas-eligendi-natus-nesciunt.html', '2019-07-30 15:09:09', '2019-07-30 15:09:09'),
(47, 9, 'Rosemary', 'http://gibson.biz/et-sit-id-iure.html', '2019-07-30 15:09:09', '2019-07-30 15:09:09'),
(48, 15, 'Makenzie', 'https://www.pfannerstill.biz/qui-aut-incidunt-saepe-et-ea-reiciendis', '2019-07-30 15:09:09', '2019-07-30 15:09:09'),
(49, 9, 'Shaina', 'http://www.upton.net/eum-accusantium-tempora-deserunt-qui-enim.html', '2019-07-30 15:09:09', '2019-07-30 15:09:09'),
(50, 3, 'Gia', 'http://luettgen.biz/', '2019-07-30 15:09:09', '2019-07-30 15:09:09'),
(51, 15, 'Autumn', 'https://yundt.com/dolores-et-aut-deserunt-culpa-impedit-sint-et-nisi.html', '2019-07-30 15:09:09', '2019-07-30 15:09:09'),
(52, 5, 'Daija', 'http://windler.net/magni-aut-ut-et-eius-explicabo-et.html', '2019-07-30 15:09:09', '2019-07-30 15:09:09'),
(53, 2, 'Ena', 'http://www.barrows.com/est-corrupti-non-a-aut-autem-dolor', '2019-07-30 15:09:09', '2019-07-30 15:09:09'),
(54, 11, 'Hermina', 'http://www.gleason.com/', '2019-07-30 15:09:09', '2019-07-30 15:09:09'),
(55, 16, 'Nelda', 'https://altenwerth.com/doloremque-omnis-voluptatem-molestiae-est-hic-similique-dolore.html', '2019-07-30 15:09:09', '2019-07-30 15:09:09'),
(56, 19, 'Lurline', 'http://www.daniel.info/voluptas-quos-et-est-sed', '2019-07-30 15:09:09', '2019-07-30 15:09:09'),
(57, 1, 'Elouise', 'http://www.marks.org/ut-id-autem-perspiciatis-placeat', '2019-07-30 15:09:09', '2019-07-30 15:09:09'),
(58, 1, 'Dianna', 'http://balistreri.com/', '2019-07-30 15:09:09', '2019-07-30 15:09:09'),
(59, 15, 'Palma', 'http://mclaughlin.com/autem-labore-molestiae-odio-qui', '2019-07-30 15:09:09', '2019-07-30 15:09:09'),
(60, 3, 'Name', 'http://www.lowe.com/', '2019-07-30 15:09:09', '2019-07-30 15:09:09'),
(61, 1, 'Kasandra', 'http://www.schmitt.info/possimus-fugit-sunt-quaerat-quia-facere', '2019-07-30 15:09:21', '2019-07-30 15:09:21'),
(62, 4, 'Loren', 'http://www.eichmann.com/', '2019-07-30 15:09:21', '2019-07-30 15:09:21'),
(63, 10, 'Glenda', 'http://www.boyle.com/qui-molestiae-dolores-sed-est-ipsam-non', '2019-07-30 15:09:21', '2019-07-30 15:09:21'),
(64, 14, 'Eleonore', 'http://kertzmann.com/quae-suscipit-qui-ullam-cumque-deserunt-iure', '2019-07-30 15:09:21', '2019-07-30 15:09:21'),
(65, 16, 'Daniela', 'http://www.okuneva.com/nesciunt-recusandae-qui-culpa-ut-aut-qui', '2019-07-30 15:09:21', '2019-07-30 15:09:21'),
(66, 9, 'Macy', 'http://www.schroeder.org/ut-ea-debitis-repudiandae-sunt-delectus', '2019-07-30 15:09:21', '2019-07-30 15:09:21'),
(67, 12, 'Maureen', 'http://www.wisoky.info/', '2019-07-30 15:09:21', '2019-07-30 15:09:21'),
(68, 14, 'Lilian', 'http://www.buckridge.com/', '2019-07-30 15:09:21', '2019-07-30 15:09:21'),
(69, 18, 'Molly', 'https://lakin.com/fuga-sunt-fugit-ipsa-autem-voluptas-provident-rem.html', '2019-07-30 15:09:21', '2019-07-30 15:09:21'),
(70, 3, 'Tamia', 'http://schuster.net/', '2019-07-30 15:09:21', '2019-07-30 15:09:21'),
(71, 18, 'Birdie', 'http://www.leannon.com/', '2019-07-30 15:09:21', '2019-07-30 15:09:21'),
(72, 15, 'Shannon', 'http://www.schmitt.com/delectus-ut-voluptatibus-sapiente-similique-qui-illum-at', '2019-07-30 15:09:21', '2019-07-30 15:09:21'),
(73, 12, 'Selina', 'http://www.kuvalis.com/cum-quia-delectus-eaque-dolor', '2019-07-30 15:09:21', '2019-07-30 15:09:21'),
(74, 1, 'Jaunita', 'http://quitzon.com/magni-officia-nemo-nihil-delectus-magni-qui', '2019-07-30 15:09:21', '2019-07-30 15:09:21'),
(75, 18, 'Avis', 'http://halvorson.com/officiis-beatae-eius-quae-itaque.html', '2019-07-30 15:09:21', '2019-07-30 15:09:21'),
(76, 2, 'Vada', 'https://www.kris.biz/et-repellat-doloribus-pariatur-aut-aliquam-dolorem-necessitatibus-iste', '2019-07-30 15:09:21', '2019-07-30 15:09:21'),
(77, 10, 'Loren', 'http://crooks.com/', '2019-07-30 15:09:21', '2019-07-30 15:09:21'),
(78, 8, 'Christelle', 'https://www.russel.info/consequatur-voluptatem-voluptas-rerum-sed-iste-quisquam-omnis-officiis', '2019-07-30 15:09:21', '2019-07-30 15:09:21'),
(79, 18, 'Marlen', 'http://hermann.com/nihil-rerum-sed-quo-ratione', '2019-07-30 15:09:21', '2019-07-30 15:09:21'),
(80, 2, 'Jacinthe', 'https://www.wisoky.com/earum-quidem-dolor-rerum-natus', '2019-07-30 15:09:21', '2019-07-30 15:09:21'),
(81, 10, 'Reina', 'http://www.stroman.com/assumenda-ducimus-illo-soluta-ut-in', '2019-07-30 15:09:21', '2019-07-30 15:09:21'),
(82, 9, 'Hannah', 'https://renner.biz/occaecati-nisi-molestiae-recusandae-aut-aut-quod-deserunt.html', '2019-07-30 15:09:21', '2019-07-30 15:09:21'),
(83, 3, 'Alessia', 'http://www.simonis.net/perspiciatis-a-quia-aut-perspiciatis-eius-eius-minima-corrupti', '2019-07-30 15:09:21', '2019-07-30 15:09:21'),
(84, 15, 'Carlee', 'http://www.roob.org/quia-ad-illum-officia-beatae-laudantium-sint.html', '2019-07-30 15:09:21', '2019-07-30 15:09:21'),
(85, 10, 'Carmen', 'https://www.powlowski.biz/voluptas-est-illo-reprehenderit-architecto-est-ipsa-eius', '2019-07-30 15:09:21', '2019-07-30 15:09:21'),
(86, 14, 'Reta', 'http://www.osinski.info/culpa-quaerat-tempora-libero-autem-minima.html', '2019-07-30 15:09:21', '2019-07-30 15:09:21'),
(87, 4, 'Colleen', 'http://www.herman.com/itaque-voluptatibus-molestiae-natus-odit-distinctio-voluptatum-explicabo-cum', '2019-07-30 15:09:21', '2019-07-30 15:09:21'),
(88, 3, 'Jaida', 'https://www.lynch.com/sit-sit-quasi-enim-minima', '2019-07-30 15:09:21', '2019-07-30 15:09:21'),
(89, 17, 'Sadye', 'http://www.ward.com/id-in-totam-et-sit-magnam-enim', '2019-07-30 15:09:21', '2019-07-30 15:09:21'),
(90, 9, 'Alaina', 'http://www.langosh.info/enim-cupiditate-quo-consequuntur-maxime', '2019-07-30 15:09:21', '2019-07-30 15:09:21');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Zrzut danych tabeli `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Ryder Reilly', 'ctillman@example.org', '2019-07-30 15:09:21', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'l2gxfQAGJw', '2019-07-30 15:09:21', '2019-07-30 15:09:21'),
(2, 'Randall Sauer', 'hackett.reuben@example.com', '2019-07-30 15:09:21', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'C4bfcrzi1t', '2019-07-30 15:09:21', '2019-07-30 15:09:21'),
(3, 'Brady Johnston', 'jane41@example.net', '2019-07-30 15:09:21', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'LgknAOT9Nl', '2019-07-30 15:09:21', '2019-07-30 15:09:21'),
(4, 'Prof. Shanelle Erdman', 'vinnie91@example.com', '2019-07-30 15:09:21', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'PHySdA6ym0', '2019-07-30 15:09:21', '2019-07-30 15:09:21'),
(5, 'Felicia Gibson', 'vince.stamm@example.net', '2019-07-30 15:09:21', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'badt2IFAH0', '2019-07-30 15:09:21', '2019-07-30 15:09:21'),
(6, 'Mr. Alec Hodkiewicz I', 'ashly.bergstrom@example.net', '2019-07-30 15:09:21', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'EviG1odhIH', '2019-07-30 15:09:21', '2019-07-30 15:09:21'),
(7, 'Prof. Jessie Veum', 'yhammes@example.org', '2019-07-30 15:09:21', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'PJPjKh5voX', '2019-07-30 15:09:21', '2019-07-30 15:09:21'),
(8, 'Randi Kulas', 'evangeline.crooks@example.com', '2019-07-30 15:09:21', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'tL3x63H3NV', '2019-07-30 15:09:21', '2019-07-30 15:09:21'),
(9, 'Wava Abshire', 'adolph16@example.org', '2019-07-30 15:09:21', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'HW3ygbfHMl', '2019-07-30 15:09:21', '2019-07-30 15:09:21'),
(10, 'Hailee Jast', 'homenick.leann@example.net', '2019-07-30 15:09:21', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'XmtFgvnfIj', '2019-07-30 15:09:21', '2019-07-30 15:09:21'),
(11, 'Madelynn Mertz', 'koss.athena@example.com', '2019-07-30 15:09:21', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '6oa28EShON', '2019-07-30 15:09:21', '2019-07-30 15:09:21'),
(12, 'Sonya Zemlak', 'xgulgowski@example.net', '2019-07-30 15:09:21', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'MH2roBHMpU', '2019-07-30 15:09:21', '2019-07-30 15:09:21'),
(13, 'Miss Gretchen Nader DDS', 'elva06@example.org', '2019-07-30 15:09:21', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'JCuKgVY2NP', '2019-07-30 15:09:21', '2019-07-30 15:09:21'),
(14, 'Mr. Johathan Ondricka', 'hboyer@example.net', '2019-07-30 15:09:21', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'wwrclPMXNQ', '2019-07-30 15:09:21', '2019-07-30 15:09:21'),
(15, 'Mr. Wilfred Howell', 'padberg.sydnie@example.net', '2019-07-30 15:09:21', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '6GWDHMVGVm', '2019-07-30 15:09:21', '2019-07-30 15:09:21'),
(16, 'Elmore Hackett', 'torp.federico@example.org', '2019-07-30 15:09:21', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'urSDtUIf1f', '2019-07-30 15:09:21', '2019-07-30 15:09:21'),
(17, 'Salvador Walter', 'jakubowski.jenifer@example.net', '2019-07-30 15:09:21', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'vbUoQGTh1D', '2019-07-30 15:09:21', '2019-07-30 15:09:21'),
(18, 'Darrin Rath', 'patricia72@example.net', '2019-07-30 15:09:21', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'ovTAveuCIp', '2019-07-30 15:09:21', '2019-07-30 15:09:21'),
(19, 'Gwendolyn Wisozk', 'yost.glenda@example.net', '2019-07-30 15:09:21', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'tqa8fWJDPr', '2019-07-30 15:09:21', '2019-07-30 15:09:21'),
(20, 'Dudley Walsh', 'walker.rebeka@example.com', '2019-07-30 15:09:21', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'eO3CdWcA9i', '2019-07-30 15:09:21', '2019-07-30 15:09:21'),
(21, 'john', 'john@test.com', NULL, '$2y$10$sGqmhOd5ed.ngl4CvUMjdeBkaItMUW6dZ3ngtyAUicTDMIb8ZWH3e', NULL, '2019-08-01 16:28:33', '2019-08-01 16:28:33'),
(22, 'Jimmy', 'jimmy@test.com', NULL, '$2y$10$hRbNHGlr0Uu8498PxRqQNOu4Btd2q9c3sKLdiVz81vOnrwRTEHILW', NULL, '2019-08-01 16:33:37', '2019-08-01 16:33:37');

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `oauth_access_tokens`
--
ALTER TABLE `oauth_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_access_tokens_user_id_index` (`user_id`);

--
-- Indeksy dla tabeli `oauth_auth_codes`
--
ALTER TABLE `oauth_auth_codes`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `oauth_clients`
--
ALTER TABLE `oauth_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_clients_user_id_index` (`user_id`);

--
-- Indeksy dla tabeli `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_personal_access_clients_client_id_index` (`client_id`);

--
-- Indeksy dla tabeli `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`);

--
-- Indeksy dla tabeli `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indeksy dla tabeli `sites`
--
ALTER TABLE `sites`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT dla tabeli `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT dla tabeli `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT dla tabeli `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT dla tabeli `sites`
--
ALTER TABLE `sites`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=91;

--
-- AUTO_INCREMENT dla tabeli `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
