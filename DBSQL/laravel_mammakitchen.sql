-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1
-- Время создания: Авг 20 2019 г., 15:38
-- Версия сервера: 10.1.37-MariaDB
-- Версия PHP: 7.3.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `laravel_mammakitchen`
--

-- --------------------------------------------------------

--
-- Структура таблицы `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(3, 'Pizza', 'pizza', '2019-08-16 04:53:52', '2019-08-16 05:01:43'),
(6, 'Dessert', 'dessert', '2019-08-16 04:55:37', '2019-08-16 04:55:37'),
(7, 'The first course', 'the-first-course', '2019-08-16 04:56:07', '2019-08-16 04:56:07'),
(8, 'The main course', 'the-main-course', '2019-08-16 04:56:28', '2019-08-16 04:56:28'),
(9, 'Cold platter', 'cold-platter', '2019-08-16 04:56:57', '2019-08-16 04:56:57'),
(10, 'Salads', 'salads', '2019-08-16 04:57:44', '2019-08-16 04:57:44'),
(11, 'Sauches', 'sauches', '2019-08-16 04:58:00', '2019-08-16 04:58:00'),
(12, 'Drinks', 'drinks', '2019-08-16 04:58:08', '2019-08-16 04:58:08'),
(13, 'Soft Drinks', 'soft-drinks', '2019-08-16 04:58:50', '2019-08-16 04:58:50'),
(14, 'Wine List', 'wine-list', '2019-08-16 04:59:04', '2019-08-16 04:59:04'),
(15, 'Chinise kitchen', 'chinise-kitchen', '2019-08-16 05:02:13', '2019-08-16 05:02:13'),
(16, 'France kicthen', 'france-kicthen', '2019-08-16 05:02:27', '2019-08-16 05:02:27'),
(17, 'Italian kitchen', 'italian-kitchen', '2019-08-16 05:02:39', '2019-08-16 05:02:39'),
(18, 'Russian kitchen', 'russian-kitchen', '2019-08-16 05:02:51', '2019-08-16 05:02:51'),
(19, 'kazakh kitchen', 'kazakh-kitchen', '2019-08-16 05:03:02', '2019-08-16 05:03:02');

-- --------------------------------------------------------

--
-- Структура таблицы `contacts`
--

CREATE TABLE `contacts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `contacts`
--

INSERT INTO `contacts` (`id`, `name`, `email`, `subject`, `message`, `created_at`, `updated_at`) VALUES
(3, 'Sanzhar Anarbay', 'anarbay.sanzhar1999@gmail.com', 'Message One', 'Message One', '2019-08-19 06:43:37', '2019-08-19 06:43:37'),
(4, 'Sanzhar Anarbay', 'anarbay.sanzhar1999@gmail.com', 'dsadasdsa', 'dsadsadsa', '2019-08-20 04:20:37', '2019-08-20 04:20:37');

-- --------------------------------------------------------

--
-- Структура таблицы `items`
--

CREATE TABLE `items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` int(11) NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `items`
--

INSERT INTO `items` (`id`, `category_id`, `name`, `description`, `price`, `image`, `created_at`, `updated_at`) VALUES
(2, 7, 'Chicken', 'Chicken\'s meat', 500, 'chicken-2019-08-16-5d56a69096977.jpg', '2019-08-16 06:50:24', '2019-08-16 06:50:24'),
(3, 8, 'Spagetti', 'Spagetti', 200, 'spagetti-2019-08-16-5d56b2c6b36f5.png', '2019-08-16 07:42:30', '2019-08-16 07:42:30'),
(4, 9, 'Doner', 'Doner', 150, 'doner-2019-08-16-5d56b2e50517e.jpg', '2019-08-16 07:43:01', '2019-08-16 07:43:01'),
(5, 8, 'Stake', 'Stake', 300, 'stake-2019-08-16-5d56b306ac953.png', '2019-08-16 07:43:34', '2019-08-16 07:43:34'),
(6, 10, 'Salad', 'Salad of the Kazakhs', 80, 'salad-2019-08-16-5d56b3284035b.jpg', '2019-08-16 07:44:08', '2019-08-16 07:44:08');

-- --------------------------------------------------------

--
-- Структура таблицы `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_14_082715_create_sliders_table', 2),
(4, '2019_08_16_091930_create_categories_table', 3),
(5, '2019_08_16_101049_create_items_table', 4),
(6, '2019_08_19_071813_create_reservations_table', 5),
(7, '2019_08_19_112751_create_contacts_table', 6);

-- --------------------------------------------------------

--
-- Структура таблицы `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `reservations`
--

CREATE TABLE `reservations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_and_time` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `reservations`
--

INSERT INTO `reservations` (`id`, `name`, `phone`, `email`, `date_and_time`, `message`, `status`, `created_at`, `updated_at`) VALUES
(9, 'Yernur Aidaraly', '87021890875', 'anarbay.sanzhar1999@gmail.com', '29 August 2019 - 04:11 PM', 'fdsfdsfds', 1, '2019-08-20 04:15:07', '2019-08-20 04:15:53'),
(11, 'Adilet Perdesh', '87021564895', 'admin@gmail.com', '24 August 2019 - 10:11 PM', 'Hello! Can I make reservation for four people?', 0, '2019-08-20 04:22:15', '2019-08-20 04:22:15'),
(12, 'John', '123456789', 'jogn@mail.ru', '20 August 2019 - 04:11 PM', 'Thank you!', 0, '2019-08-20 04:23:09', '2019-08-20 04:23:09'),
(13, 'Nuray', '87077849642', 'nuray@yandex.com', '31 August 2019 - 02:11 PM', 'Thanks', 1, '2019-08-20 04:25:56', '2019-08-20 04:26:45');

-- --------------------------------------------------------

--
-- Структура таблицы `sliders`
--

CREATE TABLE `sliders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sub_title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'default.png',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `sliders`
--

INSERT INTO `sliders` (`id`, `title`, `sub_title`, `image`, `created_at`, `updated_at`) VALUES
(5, 'BEST DRINKS', 'BEST DRINKS', 'best-drinks-2019-08-16-5d567347c91fe.jpg', '2019-08-16 03:11:35', '2019-08-16 03:11:35'),
(6, 'BEST FOODS', 'BEST FOODS', 'best-foods-2019-08-16-5d5673654f4b2.jpg', '2019-08-16 03:12:05', '2019-08-16 03:12:05'),
(7, 'BEST SNACKS', 'BEST SNACKS', 'best-snacks-2019-08-16-5d56738609bf8.jpg', '2019-08-16 03:12:38', '2019-08-16 03:12:38'),
(8, 'BEST CONDITIONS', 'Best conditions for family', 'best-conditions-2019-08-16-5d5674015d03a.jpg', '2019-08-16 03:14:41', '2019-08-16 03:14:41');

-- --------------------------------------------------------

--
-- Структура таблицы `users`
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
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Sanzhar Anarbay', 'anarbay.sanzhar1999@gmail.com', NULL, '$2y$10$dkOcssuxJtTELNrFVYjwBu55KL.1M3XWelG8u45iY85XR7a2IuXqi', NULL, '2019-08-07 09:36:10', '2019-08-07 09:36:10');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `items_category_id_foreign` (`category_id`);

--
-- Индексы таблицы `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Индексы таблицы `reservations`
--
ALTER TABLE `reservations`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `sliders`
--
ALTER TABLE `sliders`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT для таблицы `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `items`
--
ALTER TABLE `items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT для таблицы `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT для таблицы `reservations`
--
ALTER TABLE `reservations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT для таблицы `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `items`
--
ALTER TABLE `items`
  ADD CONSTRAINT `items_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
