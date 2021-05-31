-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 31-05-2021 a las 13:56:37
-- Versión del servidor: 8.0.23-0ubuntu0.20.04.1
-- Versión de PHP: 8.0.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `pfc_daw`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `failed_jobs`
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
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(6, '2021_05_26_013210_crear_tabla_webs', 2),
(8, '2021_05_27_192243_create_sessions_table', 4);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('manu@mail.com', '$2y$10$mWDGs2BvwovFXt3ZdbcKGuuiIJ5owAkncxpOVh1giaZUmjsYwuJV2', '2021-05-27 22:43:49'),
('pio@pio', '$2y$10$6cqPd2k5THOPDXsfVzOwV.t7dekn.QV5Z8ARu7gs8TrqAs9osBfnS', '2021-05-30 17:04:03');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `payload` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(0, 'admin', 'admin@admin', NULL, '$2y$10$Fs9JWapmC84y8NnWgSsGDua8K3QUNT0bNRnKrsGEc5wOvlLKXh0CS', NULL, '2021-05-29 19:41:09', '2021-05-29 19:41:09'),
(4, 'Piolín', 'pio@pio', NULL, '$2y$10$rFcAVUVIOrO6WgDP4/6LXevqa.ldaNt3b8xvMdG/rd7N7p7goA5pS', '7Ut8YQrPS6mEXrELIqHp9FbQnOqjZHw4AkBMia33BGKP1qHcc1NW5zQ9vnpV', '2021-05-29 19:40:28', '2021-05-29 19:40:28'),
(10, 'Manuel', 'manu@manu', NULL, '$2y$10$u0WnsPpXeiEHIOfKwfrDx.2gPZ5lJwqzknaD23uXYnlmXyCBkEj82', NULL, '2021-05-29 21:27:24', '2021-05-29 21:27:24'),
(11, 'Darío', 'dari@dari', NULL, '$2y$10$MAPUXQRNQqkUQmg5FQBaDeA.KKoScC67azQ.Pn39H.H8MeQLQ/VnS', NULL, '2021-05-30 03:10:25', '2021-05-30 03:10:25'),
(12, 'Leticia', 'leti@leti', NULL, '$2y$10$6.uGxTtNDopzVEg6P8nL4.AL6QBZjl2ic6TUL2pp9kuC1Nhyyqtge', NULL, '2021-05-30 15:49:39', '2021-05-30 15:49:39'),
(13, 'asd', 'asd@asd', NULL, '$2y$10$WMk7uNoz089yvG7mZsDEoOHMtN8g1hxAakijZf/KYn/EWU8JBTOx6', NULL, '2021-05-30 16:42:18', '2021-05-30 16:42:18'),
(14, 'Anacleto', 'ana@ana', NULL, '$2y$10$b0dgLr6mEpIlXBc3.n1w4eSIPwyvivsghZXVu3sFCSD3MCXVS2bgy', NULL, '2021-05-30 17:43:56', '2021-05-30 17:43:56'),
(999, 'admin2', 'admin2@admin2', NULL, '$2y$10$CTBWgfBzifXkzFXXq81ZCOJltSBeCbRY1/y85/CCJmYVnIuiRZJRC', NULL, '2021-05-31 00:34:46', '2021-05-31 00:34:46'),
(1000, 'Oliver', 'oli@oli', NULL, '$2y$10$10RjziZOwtPKOzPApbl9WufdofeFJswyZXaUs8jVUcKc0Mf9aDk8.', NULL, '2021-05-31 11:29:11', '2021-05-31 11:29:11');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `webs`
--

CREATE TABLE `webs` (
  `id` bigint UNSIGNED NOT NULL,
  `nombre` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `categoria` enum('buscadores','bancos','prensa','tv','rrss','tiendas','supers','googlehub','otros','de_usuario') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'otros',
  `user_id` int UNSIGNED NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `webs`
--

INSERT INTO `webs` (`id`, `nombre`, `url`, `categoria`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'Google', 'www.google.es', 'buscadores', 0, NULL, NULL),
(2, 'Bing', 'www.bing.com', 'buscadores', 0, NULL, NULL),
(3, 'Marca', 'www.marca.es', 'prensa', 0, NULL, NULL),
(4, 'As', 'www.as.com', 'prensa', 0, NULL, NULL),
(5, 'El País', 'www.elpais.es', 'prensa', 0, NULL, NULL),
(6, 'ABC', 'www.abc.es', 'prensa', 0, NULL, NULL),
(7, 'El Mundo', 'www.elmundo.es', 'prensa', 0, NULL, NULL),
(8, 'Facebook', 'www.facebook.es', 'rrss', 0, NULL, NULL),
(9, 'Instagram', 'www.instagram.com', 'rrss', 0, NULL, NULL),
(10, 'DuckDuckGo', 'www.DuckDuckGo.com', 'buscadores', 0, NULL, NULL),
(11, 'Strava', 'www.strava.com', 'rrss', 0, NULL, NULL),
(14, 'yahoo', 'es.search.yahoo.com', 'buscadores', 0, NULL, NULL),
(15, 'La voz de Galicia', 'www.lavozdegalicia.es', 'prensa', 0, NULL, NULL),
(16, 'Twitter', 'twitter.com', 'rrss', 0, NULL, NULL),
(17, 'ING', 'www.ing.es', 'bancos', 0, NULL, NULL),
(18, 'N26', 'n26.com', 'bancos', 0, NULL, NULL),
(19, 'BBVA', 'www.bbva.es', 'bancos', 0, NULL, NULL),
(20, 'Banco Santander', 'www.bancosantander.es/particulares', 'bancos', 0, NULL, NULL),
(21, 'La Caixa', 'lacaixa.es', 'bancos', 0, NULL, NULL),
(22, 'Abanca', 'abanca.com', 'bancos', 0, NULL, NULL),
(23, 'Tik tok', 'www.tiktok.com', 'rrss', 0, NULL, NULL),
(24, 'Twitch', 'www.twitch.com', 'tv', 0, NULL, NULL),
(25, 'Netflix', 'www.netflix.com', 'tv', 0, NULL, NULL),
(26, 'YouTube', 'www.youtube.com', 'tv', 0, NULL, NULL),
(27, 'OrangeTV', 'orangetv.orange.es', 'tv', 0, NULL, NULL),
(28, 'RTVE', 'www.rtve.es', 'tv', 0, NULL, NULL),
(29, 'TVG', 'www.crtvg.es', 'tv', 0, NULL, NULL),
(30, 'Amazon', 'www.amazon.es', 'tiendas', 0, NULL, NULL),
(32, 'Aliexpress', 'es.aliexpress.com', 'tiendas', 0, NULL, NULL),
(33, 'ebay', 'www.ebay.es', 'tiendas', 0, NULL, NULL),
(35, 'El tiempo', 'www.eltiempo.es', 'otros', 0, NULL, NULL),
(36, 'RAE', 'www.rae.es', 'otros', 0, NULL, NULL),
(37, 'Wikipedia', 'es.wikipedia.org', 'otros', 0, NULL, NULL),
(38, 'Maps', 'www.google.es/maps', 'googlehub', 0, NULL, NULL),
(39, 'Drive', 'drive.google.com', 'googlehub', 0, NULL, NULL),
(40, 'Calendar', 'calendar.google.com', 'googlehub', 0, NULL, NULL),
(41, 'Gmail', 'mail.google.com', 'googlehub', 0, NULL, NULL),
(42, 'Fotos', 'photos.google.com', 'googlehub', 0, NULL, NULL),
(43, 'Traductor', 'translate.google.es', 'googlehub', 0, NULL, NULL),
(44, 'Gadis', 'www.gadisline.com', 'supers', 0, NULL, NULL),
(45, 'Supercor', 'www.supercor.es', 'supers', 0, NULL, NULL),
(46, 'Mercadona', 'www.mercadona.es', 'supers', 0, NULL, NULL),
(47, 'Eroski', 'www.eroski.es', 'supers', 0, NULL, NULL),
(48, 'Carrefour', 'www.carrefour.es', 'supers', 0, NULL, NULL),
(49, 'yahoo mail', 'mail.yahoo.com', 'otros', 0, NULL, NULL),
(50, 'outlook', 'outlook.live.com/owa', 'otros', 0, NULL, NULL),
(51, 'Linkedin', 'www.linkedin.com', 'rrss', 0, NULL, NULL),
(53, 'Pinterest', 'www.pinterest.es', 'rrss', 0, NULL, NULL),
(54, 'Whatsapp', 'web.whatsapp.com', 'rrss', 0, NULL, NULL),
(55, 'La Nueva España', 'www.lne.es', 'prensa', 0, NULL, NULL),
(56, 'La Vanguardia', 'www.lavanguardia.com', 'prensa', 0, NULL, NULL),
(57, 'a3  media', 'www.atresplayer.com', 'tv', 0, NULL, NULL),
(58, 'Mediaset', 'www.mediaset.es', 'tv', 0, NULL, NULL),
(59, 'El corte inglés', 'www.elcorteingles.es', 'tiendas', 0, NULL, NULL),
(60, 'Bankinter', 'www.bankinter.com', 'bancos', 0, NULL, NULL),
(61, 'Bankia', 'www.bankia.es', 'bancos', 0, NULL, NULL),
(62, 'blackle', 'www.blackle.com', 'de_usuario', 4, NULL, NULL),
(63, 'web de Pio', 'www.pio.com', 'de_usuario', 4, NULL, NULL),
(66, 'Prueba 01', 'www.example.com', 'de_usuario', 10, NULL, NULL),
(76, 'Edu Xunta', 'www.edu.xunta.gal', 'de_usuario', 4, '2021-05-31 01:44:44', '2021-05-31 03:02:22'),
(77, 'Mopli', 'pfc_daw.test', 'de_usuario', 10, '2021-05-31 01:58:38', '2021-05-31 01:58:38'),
(82, 'Ejemplo', 'www.example.com', 'de_usuario', 4, '2021-05-31 03:37:54', '2021-05-31 03:37:54'),
(84, 'Juegos', 'www.juegos.com', 'de_usuario', 999, '2021-05-31 03:49:45', '2021-05-31 03:49:45'),
(86, 'Wirtz', 'www.fernandowirtz.com', 'de_usuario', 10, '2021-05-31 11:25:20', '2021-05-31 11:25:20'),
(87, 'Edu Xunta', 'edu.xunta.gal', 'de_usuario', 1000, '2021-05-31 11:29:45', '2021-05-31 11:29:45'),
(88, 'Wirtz', 'www.fernandowirtz.com', 'de_usuario', 1000, '2021-05-31 11:30:08', '2021-05-31 11:30:08');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `webs_seg_copy`
--

CREATE TABLE `webs_seg_copy` (
  `id` bigint UNSIGNED NOT NULL,
  `nombre` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `categoria` enum('buscadores','bancos','prensa','tv','rrss','tiendas','supers','googlehub','otros','hubs') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'otros',
  `user_id` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `webs_seg_copy`
--

INSERT INTO `webs_seg_copy` (`id`, `nombre`, `url`, `categoria`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'Google', 'www.google.es', 'buscadores', NULL, NULL, NULL),
(2, 'Bing', 'www.bing.com', 'buscadores', NULL, NULL, NULL),
(3, 'Marca', 'www.marca.es', 'prensa', NULL, NULL, NULL),
(4, 'As', 'www.as.com', 'prensa', NULL, NULL, NULL),
(5, 'El País', 'www.elpais.es', 'prensa', NULL, NULL, NULL),
(6, 'ABC', 'www.abc.es', 'prensa', NULL, NULL, NULL),
(7, 'El Mundo', 'www.elmundo.es', 'prensa', NULL, NULL, NULL),
(8, 'Facebook', 'www.facebook.es', 'rrss', NULL, NULL, NULL),
(9, 'Instagram', 'www.instagram.com', 'rrss', NULL, NULL, NULL),
(10, 'DuckDuckGo', 'www.DuckDuckGo.com', 'buscadores', NULL, '2021-05-27 10:51:51', '2021-05-27 10:51:51'),
(11, 'Strava', 'www.strava.com', 'rrss', NULL, NULL, NULL),
(14, 'yahoo', 'es.search.yahoo.com', 'buscadores', NULL, NULL, NULL),
(15, 'La voz de Galicia', 'www.lavozdegalicia.es', 'prensa', NULL, NULL, NULL),
(16, 'Twitter', 'twitter.com', 'rrss', NULL, NULL, NULL),
(17, 'ING', 'www.ing.es', 'bancos', NULL, NULL, NULL),
(18, 'N26', 'n26.com', 'bancos', NULL, NULL, NULL),
(19, 'BBVA', 'www.bbva.es', 'bancos', NULL, NULL, NULL),
(20, 'Banco Santander', 'www.bancosantander.es/particulares', 'bancos', NULL, NULL, NULL),
(21, 'La Caixa', 'lacaixa.es', 'bancos', NULL, NULL, NULL),
(22, 'Abanca', 'abanca.com', 'bancos', NULL, NULL, NULL),
(23, 'Tik tok', 'www.tiktok.com', 'rrss', NULL, NULL, NULL),
(24, 'Twitch', 'www.twitch.com', 'tv', NULL, NULL, NULL),
(25, 'Netflix', 'www.netflix.com', 'tv', NULL, NULL, NULL),
(26, 'YouTube', 'www.youtube.com', 'tv', NULL, NULL, NULL),
(27, 'OrangeTV', 'orangetv.orange.es', 'tv', NULL, NULL, NULL),
(28, 'RTVE', 'www.rtve.es', 'tv', NULL, NULL, NULL),
(29, 'TVG', 'www.crtvg.es', 'tv', NULL, NULL, NULL),
(30, 'Amazon', 'www.amazon.es', 'tiendas', NULL, NULL, NULL),
(32, 'Aliexpress', 'es.aliexpress.com', 'tiendas', NULL, NULL, NULL),
(33, 'ebay', 'www.ebay.es', 'tiendas', NULL, NULL, NULL),
(35, 'El tiempo', 'www.eltiempo.es', 'otros', NULL, NULL, NULL),
(36, 'RAE', 'www.rae.es', 'otros', NULL, NULL, NULL),
(37, 'Wikipedia', 'es.wikipedia.org', 'otros', NULL, NULL, NULL),
(38, 'Maps', 'www.google.es/maps', 'googlehub', NULL, NULL, NULL),
(39, 'Drive', 'drive.google.com', 'googlehub', NULL, NULL, NULL),
(40, 'Calendar', 'calendar.google.com', 'googlehub', NULL, NULL, NULL),
(41, 'Gmail', 'mail.google.com', 'googlehub', NULL, NULL, NULL),
(42, 'Fotos', 'photos.google.com', 'googlehub', NULL, NULL, NULL),
(43, 'Traductor', 'translate.google.es', 'googlehub', NULL, NULL, NULL),
(44, 'Gadis', 'www.gadisline.com', 'supers', NULL, NULL, NULL),
(45, 'Supercor', 'www.supercor.es', 'supers', NULL, NULL, NULL),
(46, 'Mercadona', 'www.mercadona.es', 'supers', NULL, NULL, NULL),
(47, 'Eroski', 'www.eroski.es', 'supers', NULL, NULL, NULL),
(48, 'Carrefour', 'www.carrefour.es', 'supers', NULL, NULL, NULL),
(49, 'yahoo mail', 'mail.yahoo.com', 'otros', NULL, NULL, NULL),
(50, 'outlook', 'outlook.live.com/owa', 'otros', NULL, NULL, NULL),
(51, 'Linkedin', 'www.linkedin.com', 'rrss', NULL, NULL, NULL),
(53, 'Pinterest', 'www.pinterest.es', 'rrss', NULL, NULL, NULL),
(54, 'Whatsapp', 'web.whatsapp.com', 'rrss', NULL, NULL, NULL),
(55, 'La Nueva España', 'www.lne.es', 'prensa', NULL, NULL, NULL),
(56, 'La Vanguardia', 'www.lavanguardia.com', 'prensa', NULL, NULL, NULL),
(57, 'a3  media', 'www.atresplayer.com', 'tv', NULL, NULL, NULL),
(58, 'Mediaset', 'www.mediaset.es', 'tv', NULL, NULL, NULL),
(59, 'El corte inglés', 'www.elcorteingles.es', 'tiendas', NULL, NULL, NULL),
(60, 'Bankinter', 'www.bankinter.com', 'bancos', NULL, NULL, NULL),
(61, 'Bankia', 'www.bankia.es', 'bancos', NULL, NULL, NULL);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indices de la tabla `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `webs`
--
ALTER TABLE `webs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indices de la tabla `webs_seg_copy`
--
ALTER TABLE `webs_seg_copy`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1001;

--
-- AUTO_INCREMENT de la tabla `webs`
--
ALTER TABLE `webs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=89;

--
-- AUTO_INCREMENT de la tabla `webs_seg_copy`
--
ALTER TABLE `webs_seg_copy`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `webs`
--
ALTER TABLE `webs`
  ADD CONSTRAINT `webs_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
