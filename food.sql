-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th7 01, 2022 lúc 06:40 AM
-- Phiên bản máy phục vụ: 10.4.24-MariaDB
-- Phiên bản PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `food`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `failed_jobs`
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
-- Cấu trúc bảng cho bảng `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_07_01_013437_create_t_food_table', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `personal_access_tokens`
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
-- Cấu trúc bảng cho bảng `t_food`
--

CREATE TABLE `t_food` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` double NOT NULL,
  `old_price` double NOT NULL,
  `detail` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `t_food`
--

INSERT INTO `t_food` (`id`, `name`, `image`, `price`, `old_price`, `detail`, `type`, `created_at`, `updated_at`) VALUES
(1, 'Nho xanh', 'https://at10.mediawz.com/wp-content/uploads/2019/06/17_f6c9824688c548a0a2a1c953912bb97a_large.jpg', 18993, 38009, 'Rau cải bắp hữu cơ (Brassica oleracea nhóm Capitata) là loại rau chủ lực trong họ Cải (còn gọi là họ Thập tự – Brassicaceae/Cruciferae),có xuất xứ từ vùng Địa Trung Hải. Nó là cây thân thảo, sống hai năm, và là một thực vật có hoa thuộc nhóm hai lá mầm với các lá tạo thành một cụm đặc hình gần như hình cầu.Là một loại rau hữu cơ rất dễ nhận biết,khó có thể nhầm lẫn', 'Gerson Hickle', NULL, NULL),
(2, 'Mùng tơi', 'https://at10.mediawz.com/wp-content/uploads/2019/06/mungtoi_large.jpg', 16613, 39150, 'Rau cải bắp hữu cơ (Brassica oleracea nhóm Capitata) là loại rau chủ lực trong họ Cải (còn gọi là họ Thập tự – Brassicaceae/Cruciferae),có xuất xứ từ vùng Địa Trung Hải. Nó là cây thân thảo, sống hai năm, và là một thực vật có hoa thuộc nhóm hai lá mầm với các lá tạo thành một cụm đặc hình gần như hình cầu.Là một loại rau hữu cơ rất dễ nhận biết,khó có thể nhầm lẫn', 'Noemie Howe', NULL, NULL),
(3, 'Hành lá', 'https://at10.mediawz.com/wp-content/uploads/2019/06/pineapple-fruit-image_large.jpg', 12678, 35025, 'Rau cải bắp hữu cơ (Brassica oleracea nhóm Capitata) là loại rau chủ lực trong họ Cải (còn gọi là họ Thập tự – Brassicaceae/Cruciferae),có xuất xứ từ vùng Địa Trung Hải. Nó là cây thân thảo, sống hai năm, và là một thực vật có hoa thuộc nhóm hai lá mầm với các lá tạo thành một cụm đặc hình gần như hình cầu.Là một loại rau hữu cơ rất dễ nhận biết,khó có thể nhầm lẫn', 'Athena Bradtke', NULL, NULL),
(4, 'Quả bơ', 'https://at10.mediawz.com/wp-content/uploads/2019/06/hat_giong_cu_den_large.jpg', 10494, 37438, 'Rau cải bắp hữu cơ (Brassica oleracea nhóm Capitata) là loại rau chủ lực trong họ Cải (còn gọi là họ Thập tự – Brassicaceae/Cruciferae),có xuất xứ từ vùng Địa Trung Hải. Nó là cây thân thảo, sống hai năm, và là một thực vật có hoa thuộc nhóm hai lá mầm với các lá tạo thành một cụm đặc hình gần như hình cầu.Là một loại rau hữu cơ rất dễ nhận biết,khó có thể nhầm lẫn', 'Saige Crona', NULL, NULL),
(5, 'Trái ớt', 'https://at10.mediawz.com/wp-content/uploads/2019/06/10_large.jpg', 15183, 36448, 'Rau cải bắp hữu cơ (Brassica oleracea nhóm Capitata) là loại rau chủ lực trong họ Cải (còn gọi là họ Thập tự – Brassicaceae/Cruciferae),có xuất xứ từ vùng Địa Trung Hải. Nó là cây thân thảo, sống hai năm, và là một thực vật có hoa thuộc nhóm hai lá mầm với các lá tạo thành một cụm đặc hình gần như hình cầu.Là một loại rau hữu cơ rất dễ nhận biết,khó có thể nhầm lẫn', 'Mrs. Lisa Stark', NULL, NULL),
(6, 'Quả dứa', 'https://at10.mediawz.com/wp-content/uploads/2019/06/cachua_large.jpg', 12122, 32381, 'Rau cải bắp hữu cơ (Brassica oleracea nhóm Capitata) là loại rau chủ lực trong họ Cải (còn gọi là họ Thập tự – Brassicaceae/Cruciferae),có xuất xứ từ vùng Địa Trung Hải. Nó là cây thân thảo, sống hai năm, và là một thực vật có hoa thuộc nhóm hai lá mầm với các lá tạo thành một cụm đặc hình gần như hình cầu.Là một loại rau hữu cơ rất dễ nhận biết,khó có thể nhầm lẫn', 'Sheridan Lemke', NULL, NULL),
(7, 'Quả xoài', 'https://at10.mediawz.com/wp-content/uploads/2019/06/13_large.jpg', 11377, 37952, 'Rau cải bắp hữu cơ (Brassica oleracea nhóm Capitata) là loại rau chủ lực trong họ Cải (còn gọi là họ Thập tự – Brassicaceae/Cruciferae),có xuất xứ từ vùng Địa Trung Hải. Nó là cây thân thảo, sống hai năm, và là một thực vật có hoa thuộc nhóm hai lá mầm với các lá tạo thành một cụm đặc hình gần như hình cầu.Là một loại rau hữu cơ rất dễ nhận biết,khó có thể nhầm lẫn', 'Elena Witting', NULL, NULL),
(8, 'Quả táo', 'https://at10.mediawz.com/wp-content/uploads/2019/06/bidodai_large.jpg', 11473, 38677, 'Rau cải bắp hữu cơ (Brassica oleracea nhóm Capitata) là loại rau chủ lực trong họ Cải (còn gọi là họ Thập tự – Brassicaceae/Cruciferae),có xuất xứ từ vùng Địa Trung Hải. Nó là cây thân thảo, sống hai năm, và là một thực vật có hoa thuộc nhóm hai lá mầm với các lá tạo thành một cụm đặc hình gần như hình cầu.Là một loại rau hữu cơ rất dễ nhận biết,khó có thể nhầm lẫn', 'Elfrieda Pacocha Sr.', NULL, NULL),
(9, 'Quả cà', 'https://at10.mediawz.com/wp-content/uploads/2019/06/13_large.jpg', 18920, 37982, 'Rau cải bắp hữu cơ (Brassica oleracea nhóm Capitata) là loại rau chủ lực trong họ Cải (còn gọi là họ Thập tự – Brassicaceae/Cruciferae),có xuất xứ từ vùng Địa Trung Hải. Nó là cây thân thảo, sống hai năm, và là một thực vật có hoa thuộc nhóm hai lá mầm với các lá tạo thành một cụm đặc hình gần như hình cầu.Là một loại rau hữu cơ rất dễ nhận biết,khó có thể nhầm lẫn', 'Russell Stroman', NULL, NULL),
(10, 'Cà chua', 'https://at10.mediawz.com/wp-content/uploads/2019/06/13_large.jpg', 18033, 37970, 'Rau cải bắp hữu cơ (Brassica oleracea nhóm Capitata) là loại rau chủ lực trong họ Cải (còn gọi là họ Thập tự – Brassicaceae/Cruciferae),có xuất xứ từ vùng Địa Trung Hải. Nó là cây thân thảo, sống hai năm, và là một thực vật có hoa thuộc nhóm hai lá mầm với các lá tạo thành một cụm đặc hình gần như hình cầu.Là một loại rau hữu cơ rất dễ nhận biết,khó có thể nhầm lẫn', 'Dana Gleason', NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Chỉ mục cho bảng `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Chỉ mục cho bảng `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Chỉ mục cho bảng `t_food`
--
ALTER TABLE `t_food`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `t_food`
--
ALTER TABLE `t_food`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;