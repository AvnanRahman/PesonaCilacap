-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 20 Jun 2021 pada 13.46
-- Versi server: 10.4.18-MariaDB
-- Versi PHP: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pesonaclp_db`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `auth_activation_attempts`
--

CREATE TABLE `auth_activation_attempts` (
  `id` int(11) UNSIGNED NOT NULL,
  `ip_address` varchar(255) NOT NULL,
  `user_agent` varchar(255) NOT NULL,
  `token` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `auth_activation_attempts`
--

INSERT INTO `auth_activation_attempts` (`id`, `ip_address`, `user_agent`, `token`, `created_at`) VALUES
(1, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.106 Safari/537.36', 'b518c9e1b3a7d3c021a98f5da78e74e0', '2021-06-17 23:02:08'),
(2, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.106 Safari/537.36', 'b518c9e1b3a7d3c021a98f5da78e74e0', '2021-06-17 23:02:31'),
(3, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.106 Safari/537.36', 'b518c9e1b3a7d3c021a98f5da78e74e0', '2021-06-17 23:10:53'),
(4, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.106 Safari/537.36', 'b518c9e1b3a7d3c021a98f5da78e74e0', '2021-06-17 23:13:40'),
(5, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.106 Safari/537.36', 'b518c9e1b3a7d3c021a98f5da78e74e0', '2021-06-17 23:15:33'),
(6, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.106 Safari/537.36', 'b518c9e1b3a7d3c021a98f5da78e74e0', '2021-06-17 23:17:40'),
(7, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.106 Safari/537.36', '80640e1db32ed19ffb01d5c26e9011bc', '2021-06-18 10:57:07'),
(8, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.106 Safari/537.36', '512a26f3a07b3cdbd27574918b6e00be', '2021-06-19 08:45:01');

-- --------------------------------------------------------

--
-- Struktur dari tabel `auth_groups`
--

CREATE TABLE `auth_groups` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `auth_groups`
--

INSERT INTO `auth_groups` (`id`, `name`, `description`) VALUES
(3, 'admin', 'Manage user guide'),
(4, 'guide', 'Menghapus dan merubah tempat wisata'),
(5, 'user', 'User biasa hanya bisa menambahkan');

-- --------------------------------------------------------

--
-- Struktur dari tabel `auth_groups_permissions`
--

CREATE TABLE `auth_groups_permissions` (
  `group_id` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `permission_id` int(11) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `auth_groups_users`
--

CREATE TABLE `auth_groups_users` (
  `group_id` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `user_id` int(11) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `auth_groups_users`
--

INSERT INTO `auth_groups_users` (`group_id`, `user_id`) VALUES
(3, 8),
(4, 11),
(5, 10);

-- --------------------------------------------------------

--
-- Struktur dari tabel `auth_logins`
--

CREATE TABLE `auth_logins` (
  `id` int(11) UNSIGNED NOT NULL,
  `ip_address` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `user_id` int(11) UNSIGNED DEFAULT NULL,
  `date` datetime NOT NULL,
  `success` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `auth_logins`
--

INSERT INTO `auth_logins` (`id`, `ip_address`, `email`, `user_id`, `date`, `success`) VALUES
(4, '::1', 'afnancuk', 3, '2021-06-17 22:26:02', 1),
(5, '::1', 'afnancuk', 3, '2021-06-17 22:29:28', 0),
(6, '::1', 'afnancuk', 3, '2021-06-17 22:29:40', 0),
(7, '::1', 'afnanrahman', NULL, '2021-06-17 22:30:42', 0),
(8, '::1', 'afnanrahman', NULL, '2021-06-17 22:30:49', 0),
(9, '::1', 'avnanrahman@gmail.com', 1, '2021-06-17 22:30:57', 1),
(10, '::1', 'linamamung', NULL, '2021-06-17 22:39:56', 0),
(11, '::1', 'linamamung@gmail.com', 4, '2021-06-17 22:40:38', 0),
(12, '::1', 'avnanrahman@gmail.com', 1, '2021-06-17 22:47:30', 1),
(13, '::1', 'avnanrahman@gmail.com', 8, '2021-06-17 23:17:49', 1),
(14, '::1', 'avnanrahman@gmail.com', 8, '2021-06-18 07:32:35', 1),
(15, '::1', 'avnanrahman@gmail.com', 8, '2021-06-18 08:11:53', 1),
(16, '::1', 'avnanrahman@gmail.com', 8, '2021-06-18 08:12:00', 1),
(17, '::1', 'avnanrahman@gmail.com', 8, '2021-06-18 08:23:49', 1),
(18, '::1', 'tonisuwen@gmail.com', 10, '2021-06-18 10:57:16', 1),
(19, '::1', 'avnanrahman@gmail.com', 8, '2021-06-18 11:02:08', 1),
(20, '::1', 'avnanrahman@gmail.com', 8, '2021-06-18 12:39:35', 1),
(21, '::1', 'avnanrahman@gmail.com', 8, '2021-06-19 03:55:19', 1),
(22, '::1', 'afnancoy@gmail.com', 11, '2021-06-19 08:45:03', 1),
(23, '::1', 'avnanrahman@gmail.com', 8, '2021-06-19 09:07:39', 1),
(24, '::1', 'avnanrahman@gmail.com', 8, '2021-06-19 10:33:24', 1),
(25, '::1', 'avnanrahman@gmail.com', 8, '2021-06-19 10:34:38', 1),
(26, '::1', 'avnanrahman@gmail.com', 8, '2021-06-19 10:43:09', 1),
(27, '::1', 'afnancoy@gmail.com', 11, '2021-06-19 10:54:28', 1),
(28, '::1', 'avnanrahman@gmail.com', 8, '2021-06-19 11:03:09', 1),
(29, '::1', 'afnancoy@gmail.com', 11, '2021-06-19 11:06:20', 1),
(30, '::1', 'avnanrahman@gmail.com', 8, '2021-06-19 11:14:01', 1),
(31, '::1', 'afnancoy@gmail.com', 11, '2021-06-19 12:22:07', 1),
(32, '::1', 'tonisuwen@gmail.com', 10, '2021-06-19 12:22:39', 1),
(33, '::1', 'avnanrahman@gmail.com', 8, '2021-06-19 12:26:42', 1),
(34, '::1', 'tonisuwen@gmail.com', 10, '2021-06-19 13:13:18', 1),
(35, '::1', 'afnancoy@gmail.com', 11, '2021-06-19 13:15:26', 1),
(36, '::1', 'tonisuwen@gmail.com', 10, '2021-06-19 13:16:51', 1),
(37, '::1', 'avnanrahman@gmail.com', 8, '2021-06-19 20:49:22', 1),
(38, '::1', 'avnanrahman@gmail.com', 8, '2021-06-19 21:33:59', 1),
(39, '::1', 'afnancoy@gmail.com', 11, '2021-06-19 22:05:44', 1),
(40, '::1', 'afnancoy@gmail.com', 11, '2021-06-19 22:19:44', 1),
(41, '::1', 'avnanrahman@gmail.com', 8, '2021-06-19 22:30:52', 1),
(42, '::1', 'avnanrahman@gmail.com', 8, '2021-06-20 03:43:53', 1),
(43, '::1', 'avnanrahman@gmail.com', 8, '2021-06-20 06:11:24', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `auth_permissions`
--

CREATE TABLE `auth_permissions` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `auth_permissions`
--

INSERT INTO `auth_permissions` (`id`, `name`, `description`) VALUES
(1, 'delete_field', 'Menghapus daftar tempat'),
(2, 'edit_field', 'Mengubah daftar tempat');

-- --------------------------------------------------------

--
-- Struktur dari tabel `auth_reset_attempts`
--

CREATE TABLE `auth_reset_attempts` (
  `id` int(11) UNSIGNED NOT NULL,
  `email` varchar(255) NOT NULL,
  `ip_address` varchar(255) NOT NULL,
  `user_agent` varchar(255) NOT NULL,
  `token` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `auth_reset_attempts`
--

INSERT INTO `auth_reset_attempts` (`id`, `email`, `ip_address`, `user_agent`, `token`, `created_at`) VALUES
(1, 'avnanrahman@gmail.com', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.106 Safari/537.36', '0beeab3382ad3622ad5841a9d41e5de1', '2021-06-18 11:02:00');

-- --------------------------------------------------------

--
-- Struktur dari tabel `auth_tokens`
--

CREATE TABLE `auth_tokens` (
  `id` int(11) UNSIGNED NOT NULL,
  `selector` varchar(255) NOT NULL,
  `hashedValidator` varchar(255) NOT NULL,
  `user_id` int(11) UNSIGNED NOT NULL,
  `expires` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `auth_users_permissions`
--

CREATE TABLE `auth_users_permissions` (
  `user_id` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `permission_id` int(11) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `gallery`
--

CREATE TABLE `gallery` (
  `id` int(11) NOT NULL,
  `nama_tempat` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `deskripsi` varchar(1000) NOT NULL,
  `sampul` varchar(255) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `gallery`
--

INSERT INTO `gallery` (`id`, `nama_tempat`, `slug`, `deskripsi`, `sampul`, `created_at`, `updated_at`) VALUES
(1, 'Pantai Sidong', 'pantai-sidong', 'Pantai Sodong atau masyarakat setempat mengenalnya sebagai pantai selok. Sebuah pantai yang berbatasan langsung dengan Samudra Hindia. Wisatawan akan disambut keindahan dari Gunung Selok yang sangat mempesona. Meski awalnya tempat ini hanya dijadikan tempat mencuci oleh warga sekitar, airnya yang dingin menyegarkan dengan dasar bebatuan berlumut dan warna air kebiruan menjadi daya tarik tersendiri bagi wisatawan yang penasaran dengan lokasi ini.  \"Kebanyakan keluarga, pada mainnya ke sini. Dulunya mah buat warga nyuci baju sama buat irigasi, tapi lama-lama banyak yang datang buat mandi sama berenang,\" kata salah satu warga sekitar, Bocih (40), kepada Suara.com di lokasi, Minggu (6/5/2018).', 'pantai-sodong.jpg', '2021-06-12 18:35:46', '2021-06-19 13:16:14'),
(2, 'Pantai Nusakambangan', 'pantai-nusakambangan', 'Walaupun memang terkenal dengan bangunan penjaranya, namun pantai di Nusakambangan ini tidak kalah menarik. Nusakambangan memiliki pantai yang sangat indah dengan hamparan pasir putihnya yang luas.', 'pantai-nusakambangan.jpg', '2021-06-12 18:35:46', '2021-06-12 18:35:46'),
(10, 'Afnan Ngathour', 'afnan-ngathour', 'Love lina', 'afnan-bali.png', '2021-06-16 11:55:03', '2021-06-16 11:55:03'),
(14, 'Pantai Sodong20', 'pantai-sodong20', 'Pantai Sodong atau masyarakat setempat mengenalnya sebagai pantai selok. Sebuah pantai yang berbatasan langsung dengan Samudra Hindia. Wisatawan akan disambut keindahan dari Gunung Selok yang sangat mempesona.', '1623941558_1f6a28296ba671be5673.jpg', '2021-06-17 09:33:44', '2021-06-17 09:52:38'),
(18, 'Club Malam', 'club-malam', 'Cocok buat kamu yang suka dengan dunia gemerlap malam', '1624111983_b68d84373ac0eb9d4692.jpg', '2021-06-19 09:13:03', '2021-06-19 09:13:03'),
(19, 'Gunung kidul', 'gunung-kidul', 'Gunungkidul Regency is a regency in the southeast part of the province of Yogyakarta Special Region, Indonesia. It is located on the island of Java. The regency (the name of which means South Mountains in Javanese) is bordered by the Sleman Regency to the north west, Bantul Regency to the west, the Indian Ocean to the south, Wonogiri Regency to the east and Klaten Regency to the north. It covers an area of 1,485.36 km2 and had a population of 675,382 at the 2010 Census[3] and 747,161 at the 2020 Census.[4]\r\n\r\nThe southern coast of Gunungkidul is rough and wild but exotic with several beautiful beaches: Baron, Kukup, Krakal, Drini, Sepanjang, Sundak, Siung Beach, Wediombo and Sadeng. Some of these beaches provide fresh fish and other sea product supplied by local fisherman. The most notable is Baron beach. There is a park next to the beach surrounded by seafood restaurants and hostels. There is a fresh fish market on the east side of the beach. On the west side, a river flows out from a', '1624158322_ad948e87a0a648d56b01.png', '2021-06-19 22:05:22', '2021-06-19 22:05:22'),
(20, 'Ngemplak', 'ngemplak', 'Akldalkndlkasdnlkasndlkas dl kasn d', '1624159204_7212a1c9173edb2225e1.jpg', '2021-06-19 22:20:04', '2021-06-19 22:20:04');

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `version` varchar(255) NOT NULL,
  `class` varchar(255) NOT NULL,
  `group` varchar(255) NOT NULL,
  `namespace` varchar(255) NOT NULL,
  `time` int(11) NOT NULL,
  `batch` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `version`, `class`, `group`, `namespace`, `time`, `batch`) VALUES
(1, '2017-11-20-223112', 'Myth\\Auth\\Database\\Migrations\\CreateAuthTables', 'default', 'Myth\\Auth', 1623943488, 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` int(11) UNSIGNED NOT NULL,
  `email` varchar(255) NOT NULL,
  `username` varchar(30) DEFAULT NULL,
  `password_hash` varchar(255) NOT NULL,
  `reset_hash` varchar(255) DEFAULT NULL,
  `reset_at` datetime DEFAULT NULL,
  `reset_expires` datetime DEFAULT NULL,
  `activate_hash` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `status_message` varchar(255) DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT 0,
  `force_pass_reset` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `email`, `username`, `password_hash`, `reset_hash`, `reset_at`, `reset_expires`, `activate_hash`, `status`, `status_message`, `active`, `force_pass_reset`, `created_at`, `updated_at`, `deleted_at`) VALUES
(8, 'avnanrahman@gmail.com', 'afnanrahman', '$2y$10$e7cIZk8PZ2SU9bdGLlJXeOnDJjuYHW4fcdf4uOTv4Cj33TSjkOzNm', NULL, '2021-06-18 11:02:00', NULL, NULL, NULL, NULL, 1, 0, '2021-06-17 23:01:15', '2021-06-18 11:02:00', NULL),
(10, 'tonisuwen@gmail.com', 'toni', '$2y$10$J3Jl9YFxUHIVdk1LpPLhbe5FuHCfZ4XPmZ9amAPZATswcmBOv3ppm', NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, '2021-06-18 10:55:56', '2021-06-18 10:57:07', NULL),
(11, 'afnancoy@gmail.com', 'afnancoy', '$2y$10$5S9PwM.mo9T5lJxMsal6we3V3SlQWPGUshuB6dycsG4XV6bhQqqu6', NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, '2021-06-19 08:44:26', '2021-06-19 08:45:01', NULL);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `auth_activation_attempts`
--
ALTER TABLE `auth_activation_attempts`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `auth_groups`
--
ALTER TABLE `auth_groups`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `auth_groups_permissions`
--
ALTER TABLE `auth_groups_permissions`
  ADD KEY `auth_groups_permissions_permission_id_foreign` (`permission_id`),
  ADD KEY `group_id_permission_id` (`group_id`,`permission_id`);

--
-- Indeks untuk tabel `auth_groups_users`
--
ALTER TABLE `auth_groups_users`
  ADD KEY `auth_groups_users_user_id_foreign` (`user_id`),
  ADD KEY `group_id_user_id` (`group_id`,`user_id`);

--
-- Indeks untuk tabel `auth_logins`
--
ALTER TABLE `auth_logins`
  ADD PRIMARY KEY (`id`),
  ADD KEY `email` (`email`),
  ADD KEY `user_id` (`user_id`);

--
-- Indeks untuk tabel `auth_permissions`
--
ALTER TABLE `auth_permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `auth_reset_attempts`
--
ALTER TABLE `auth_reset_attempts`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `auth_tokens`
--
ALTER TABLE `auth_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `auth_tokens_user_id_foreign` (`user_id`),
  ADD KEY `selector` (`selector`);

--
-- Indeks untuk tabel `auth_users_permissions`
--
ALTER TABLE `auth_users_permissions`
  ADD KEY `auth_users_permissions_permission_id_foreign` (`permission_id`),
  ADD KEY `user_id_permission_id` (`user_id`,`permission_id`);

--
-- Indeks untuk tabel `gallery`
--
ALTER TABLE `gallery`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `auth_activation_attempts`
--
ALTER TABLE `auth_activation_attempts`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `auth_groups`
--
ALTER TABLE `auth_groups`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `auth_logins`
--
ALTER TABLE `auth_logins`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT untuk tabel `auth_permissions`
--
ALTER TABLE `auth_permissions`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `auth_reset_attempts`
--
ALTER TABLE `auth_reset_attempts`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `auth_tokens`
--
ALTER TABLE `auth_tokens`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `gallery`
--
ALTER TABLE `gallery`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `auth_groups_permissions`
--
ALTER TABLE `auth_groups_permissions`
  ADD CONSTRAINT `auth_groups_permissions_group_id_foreign` FOREIGN KEY (`group_id`) REFERENCES `auth_groups` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `auth_groups_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `auth_permissions` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `auth_groups_users`
--
ALTER TABLE `auth_groups_users`
  ADD CONSTRAINT `auth_groups_users_group_id_foreign` FOREIGN KEY (`group_id`) REFERENCES `auth_groups` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `auth_groups_users_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `auth_tokens`
--
ALTER TABLE `auth_tokens`
  ADD CONSTRAINT `auth_tokens_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `auth_users_permissions`
--
ALTER TABLE `auth_users_permissions`
  ADD CONSTRAINT `auth_users_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `auth_permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `auth_users_permissions_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
