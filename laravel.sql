-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 26, 2025 at 03:30 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravel`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `title` varchar(100) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `title`, `slug`, `description`, `status`) VALUES
(1, 'Phim lẻ', 'phim-le', 'Phim le', 1),
(2, 'Phim bộ', 'phim-bo', 'Phim bo', 1);

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `id` int(11) NOT NULL,
  `title` varchar(100) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`id`, `title`, `description`, `status`, `slug`) VALUES
(1, 'Âu mỹ', 'am', 1, 'au-my'),
(2, 'Anh', 'a', 1, 'anh'),
(3, 'Việt Nam', 'Phim VN', 1, 'viet-nam'),
(4, 'Hàn Quốc', 'hq', 1, 'han-quoc'),
(5, 'Trung Quốc', 'TQ', 1, 'trung-quoc'),
(6, 'Indonesia', 'indo', 1, 'indonesia'),
(7, 'Nhật Bản', 'Nb', 1, 'nhat-ban'),
(8, 'Hồng Kong', 'HK', 1, 'hong-kong'),
(9, 'Thái Lan', 'TL', 1, 'thai-lan');

-- --------------------------------------------------------

--
-- Table structure for table `episodes`
--

CREATE TABLE `episodes` (
  `id` int(11) NOT NULL,
  `movie_id` int(11) DEFAULT NULL,
  `linkfilm` longtext DEFAULT NULL,
  `episode` int(11) DEFAULT NULL,
  `created_at` varchar(50) DEFAULT NULL,
  `updated_at` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `episodes`
--

INSERT INTO `episodes` (`id`, `movie_id`, `linkfilm`, `episode`, `created_at`, `updated_at`) VALUES
(1, 1, 'https://embed11.streamc.xyz/embed.php?hash=2d3d3e87830f884771c5e38b9ed63a64', 1, '2025-05-26 16:48:10', '2025-05-26 16:48:10'),
(2, 1, 'https://embed11.streamc.xyz/embed.php?hash=2d3d3e87830f884771c5e38b9ed63a64', 2, '2025-05-12 14:47:10', '2025-05-12 14:47:10'),
(3, 5, 'https://embed18.streamc.xyz/embed.php?hash=fb0c7a44960ee098204db210562c82f2', 1, '2025-05-26 17:47:17', '2025-05-26 17:47:17'),
(4, 2, 'https://embed10.streamc.xyz/embed.php?hash=efe9359b08f0e505edc303be1345cf4f', 1, '2025-05-26 17:48:56', '2025-05-26 17:48:56'),
(5, 3, 'https://embed11.streamc.xyz/embed.php?hash=f9afb10e075536df73c3c809f0e38107', 1, '2025-05-26 17:49:26', '2025-05-26 17:49:26'),
(6, 4, 'https://embed13.streamc.xyz/embed.php?hash=02374fa896f3c7e67a137367e5a57c9d', 1, '2025-05-26 17:49:53', '2025-05-26 17:49:53'),
(7, 5, 'https://embed14.streamc.xyz/embed.php?hash=f86011ea49881791085e8314b4ea41ff', 2, '2025-05-26 17:51:49', '2025-05-26 17:51:49'),
(8, 5, 'https://embed15.streamc.xyz/embed.php?hash=8327b7d62df19faa1e5322f991c6e5d4', 3, '2025-05-26 17:51:55', '2025-05-26 17:51:55'),
(9, 5, 'https://embed11.streamc.xyz/embed.php?hash=d9fd6b8823ad7cd00c93e080d4885981', 4, '2025-05-26 17:52:02', '2025-05-26 17:52:02'),
(10, 5, 'https://embed12.streamc.xyz/embed.php?hash=f33304dfbf1fe11986524228960b4c58', 5, '2025-05-26 17:52:08', '2025-05-26 17:52:08'),
(11, 5, 'https://embed13.streamc.xyz/embed.php?hash=8136f382fe66bb9f0f06785c75b5b3ba', 6, '2025-05-26 17:52:14', '2025-05-26 17:52:14'),
(12, 5, 'https://embed11.streamc.xyz/embed.php?hash=087e02cda9ca761e8f821ba90c07d44c', 7, '2025-05-26 17:52:20', '2025-05-26 17:52:20'),
(13, 5, 'https://embed12.streamc.xyz/embed.php?hash=24e7d66190d57332919ba407aca5e709', 8, '2025-05-26 17:52:26', '2025-05-26 17:52:26'),
(14, 5, 'https://embed18.streamc.xyz/embed.php?hash=04667c0a22cfc7994754bf73fe606d52', 9, '2025-05-26 17:52:31', '2025-05-26 17:52:31'),
(15, 5, 'https://embed14.streamc.xyz/embed.php?hash=5919414477e513657d51064875947106', 10, '2025-05-26 17:52:38', '2025-05-26 17:52:38'),
(16, 6, 'https://embed10.streamc.xyz/embed.php?hash=72ff27e6c5d6350a0f146fdc50533630', 1, '2025-05-26 17:58:35', '2025-05-26 17:58:35'),
(17, 6, 'https://embed13.streamc.xyz/embed.php?hash=7be7547f4d0b752b3b1afc8ed9be9f6e', 2, '2025-05-26 17:58:44', '2025-05-26 17:58:44'),
(18, 6, 'https://embed10.streamc.xyz/embed.php?hash=1101695a7eecc40593ee32338d2afe55', 3, '2025-05-26 17:58:50', '2025-05-26 17:58:50'),
(19, 6, 'https://embed12.streamc.xyz/embed.php?hash=91ec4eb8575a0d099063334c14d5ac94', 4, '2025-05-26 17:58:55', '2025-05-26 17:58:55'),
(20, 6, 'https://embed10.streamc.xyz/embed.php?hash=de7023be18bcf5f9d28f71c7ccd1b5d4', 5, '2025-05-26 17:59:00', '2025-05-26 17:59:00'),
(21, 6, 'https://embed10.streamc.xyz/embed.php?hash=de5d3417de0ce658923f7a282dd7e71c', 6, '2025-05-26 17:59:05', '2025-05-26 17:59:05'),
(22, 6, 'https://embed11.streamc.xyz/embed.php?hash=95c6c4bddea0c7b30b317a169f244ee7', 7, '2025-05-26 17:59:16', '2025-05-26 17:59:16'),
(23, 6, 'https://embed14.streamc.xyz/embed.php?hash=4084617b3ea4c72668ba2fcca5b048df', 8, '2025-05-26 17:59:25', '2025-05-26 17:59:25'),
(24, 6, 'https://embed11.streamc.xyz/embed.php?hash=6a5752c46d63acb0f6e545469fb638b5', 9, '2025-05-26 17:59:31', '2025-05-26 17:59:31'),
(25, 6, 'https://embed12.streamc.xyz/embed.php?hash=1acd27d40a2cc05400ae6b8995487e93', 10, '2025-05-26 17:59:38', '2025-05-26 17:59:38'),
(26, 6, 'https://embed12.streamc.xyz/embed.php?hash=72567fa2136fa39abe2e0153ea066725', 11, '2025-05-26 17:59:43', '2025-05-26 17:59:43'),
(27, 6, 'https://embed14.streamc.xyz/embed.php?hash=41f18675e2332263e2f4d7458d16bca1', 12, '2025-05-26 17:59:50', '2025-05-26 17:59:50');

-- --------------------------------------------------------

--
-- Table structure for table `favorites`
--

CREATE TABLE `favorites` (
  `id` int(11) NOT NULL,
  `movie_id` int(11) DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `favorites`
--

INSERT INTO `favorites` (`id`, `movie_id`, `user_id`) VALUES
(1, 1, 1),
(2, 3, 2),
(3, 6, 2);

-- --------------------------------------------------------

--
-- Table structure for table `genres`
--

CREATE TABLE `genres` (
  `id` int(11) NOT NULL,
  `title` varchar(100) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `genres`
--

INSERT INTO `genres` (`id`, `title`, `slug`, `description`, `status`) VALUES
(1, 'Hành động', 'hanh-dong', 'Phim hành động', 1),
(2, 'Hoạt hình', 'hoat-hinh', 'Phim hoạt hình', 1),
(3, 'Phiêu lưu', 'phieu-luu', 'pl', 1),
(4, 'Hài', 'hai', 'hai', 1),
(5, 'Chính kịch', 'chinh-kich', 'chinh kich', 1),
(6, 'Gia đình', 'gia-dinh', 'gd', 1),
(7, 'Giả tưởng', 'gia-tuong', 'GT', 1),
(8, 'Lịch sử', 'lich-su', 'ls', 1),
(9, 'Kinh dị', 'kinh-di', 'Kd', 1),
(10, 'Khoa học viễn tưởng', 'khoa-hoc-vien-tuong', 'khvt', 1),
(11, 'Lãng mạn', 'lang-man', 'LM', 1),
(12, 'Bí ẩn', 'bi-an', NULL, 1),
(13, 'Tình cảm', 'tinh-cam', 'tc', 1),
(14, 'Cổ trang', 'co-trang', NULL, 1),
(15, 'Tâm lý', 'tam-ly', 'tl', 1);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `movies`
--

CREATE TABLE `movies` (
  `id` int(11) NOT NULL,
  `title` varchar(100) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `resolution` int(11) DEFAULT NULL,
  `subtitles` int(11) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `sotap` int(12) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `genre_id` int(11) DEFAULT NULL,
  `country_id` int(11) DEFAULT NULL,
  `favorite_id` int(11) DEFAULT NULL,
  `filmhot` int(11) DEFAULT NULL,
  `create_day` varchar(50) DEFAULT NULL,
  `update_day` varchar(50) DEFAULT NULL,
  `year` varchar(20) DEFAULT NULL,
  `runtime` varchar(50) DEFAULT NULL,
  `thuocphim` varchar(20) DEFAULT NULL,
  `caster` varchar(500) DEFAULT NULL,
  `director` varchar(225) DEFAULT NULL,
  `image_banner` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `movies`
--

INSERT INTO `movies` (`id`, `title`, `slug`, `description`, `status`, `resolution`, `subtitles`, `image`, `sotap`, `category_id`, `genre_id`, `country_id`, `favorite_id`, `filmhot`, `create_day`, `update_day`, `year`, `runtime`, `thuocphim`, `caster`, `director`, `image_banner`) VALUES
(1, 'Chuyện Đời Bác Sĩ Nội Trú', 'chuyen-doi-bac-si-noi-tru', 'Các bác sĩ nội trú sản phụ khoa năm nhất tại Bệnh viện Yulje phải vượt qua vô số hỗn loạn trong công việc và đời tư để trở thành những bác sĩ xuất sắc.', 1, 0, 0, 'chuyen-doi-bac-si-noi-tru2630.jpg', 12, 2, 1, 4, 1, 1, '2025-05-12 14:19:03', '2025-05-26 17:26:43', '2025', '75 phút/tập', 'phimbo', 'Go Youn Jung, Shin Si A, Kang You Seok', 'Shin Won-ho, Lee Woo-jung', 'resident-playbook-k-drama-netflix-preview-943x5301466.jpg'),
(2, 'Linh Miêu: Quỷ Nhập Tràng', 'linh-mieu-quy-nhap-trang', 'Nửa đêm, đoàn kiệu rước thây xuất hiện trong không khí ma mị, u ám, kèm tiếng múa chén kinh dị khiến ai nghe qua cũng lạnh người. Có ai chứng kiến cảnh tượng này bao giờ chưa?', 1, 0, 0, '8mHa9nFxQptXqIHcHucSybI8KHL2954.jpg', 1, 1, 1, 3, NULL, 1, '2025-05-26 17:32:56', '2025-05-26 17:32:56', '2024', '109 phút', 'phimle', 'Hồng Đào, Samuel An, Nguyễn Thúc Thùy Tiên', 'Lưu Thành Luân', 'edit-teaser-ruoc-kieu-1725370554270622023685-390-492-1114-1874-crop-17253757834466647863018915.jpeg'),
(3, 'Địa Đạo: Mặt Trời Trong Bóng Tối', 'dia-dao-mat-troi-trong-bong-toi', 'Năm 1967, giữa lúc Chiến tranh Việt Nam đang ở đỉnh điểm, đội du kích cách mạng 21 người trở thành mục tiêu “tìm và diệt” số 1 của quân đội Mỹ khi nhận nhiệm vụ bằng mọi giá phải bảo vệ một nhóm thông tin tình báo chiến lược mới đến ẩn náu tại căn cứ.', 1, 0, 0, '8rZ74dcigPg8XOm8lGx6qXQkzSY3008.jpg', 1, 1, 1, 3, 2, 1, '2025-05-26 17:42:11', '2025-05-26 17:42:11', '2025', '128 phút', 'phimle', 'Thái Hòa, Ngô Quang Tuấn, Hồ Thu Anh', 'Bùi Thạc Chuyên', 'OIP379.jpg'),
(4, 'Làm Giàu Với Ma', 'lam-giau-voi-ma', 'Trong Làm Giàu Với Ma, Tuấn Trần vào vai Lanh - một thanh niên lêu lổng, ngỗ ngược, dính vào cờ bạc nợ nần. Trên quãng đường chạy trốn khỏi đám giang hồ chủ nợ hung hăng, anh vô tình \"đụng\" phải ma nữ Na (Diệp Bảo Ngọc) và bị cô nàng nhờ vả giúp mình tìm gặp đứa con mà cô đã phải lìa xa từ lúc chào đời. Đổi lại, cô sẽ dùng quyền năng tâm linh để giúp anh \"làm giàu\".', 1, 0, 0, 'lam-giau-voi-ma361.jpg', 1, 1, 9, 3, NULL, 1, '2025-05-26 17:44:04', '2025-05-26 17:44:04', '2024', '113 phút', 'phimle', 'Tuấn Trần, Diệp Bảo Ngọc, Hoài Linh', 'Nhật Trung', '66274211221446539547434203.png'),
(5, 'Tàng Hải Truyện', 'tang-hai-truyen', 'Trong một đêm, cả nhà quan Khâm thiên giám bị xử tử, chỉ có một người con trai may mắn thoát chết. 10 năm sau, người sống sót duy nhất ấy trở lại kinh thành dưới tên Uông Tàng Hải và trở thành cố vấn dưới trướng kẻ thù diệt môn. Tàng Hải Truyện chính là hành trình từng bước vươn lên nấc thang quyền lực của Tàng Hải nhằm trả lại sự trong sạch cho cha. Giữa cơn bão quyền lực đầy sóng gió ấy, Tàng Hải luôn giữ vững sơ tâm trước mọi trở ngại để từng bước vạch trần sự thật, bảo vệ đất nước và người thân', 1, 0, 0, 'tang-hai-truyen5065.jpg', 40, 2, 1, 5, NULL, 1, '2025-05-26 17:45:43', '2025-05-26 17:45:43', '2025', '45 Phút/Tập', 'phimbo', 'Tiêu Chiến, Trương Tịnh Nghi, Châu Kỳ', 'Trịnh Hiểu Long', 'Tang-Hai-Truyen-Tieu4500.jpg'),
(6, 'Cung Điện Ma Ám', 'cung-dien-ma-am', 'Cung Điện Ma Ám (The Haunted Palace) xoay quanh chuyện tình nhuốm màu thần bí giữa một thư sinh bị ma ám và một nữ pháp sư. Vốn là một thư sinh thông minh được vua xem trọng, cuộc đời Yun Gap bỗng đảo lộn khi cơ thể bị ác thần xâm chiếm. Người duy nhất thấy được ác thần này là Yeo Ri, cháu gái của một pháp sư nổi tiếng. Dù sở hữu sức mạnh tâm linh lớn từ khi mới sinh, cô luôn chối bỏ tài năng của mình và chỉ muốn làm người thường. Nhưng khi biết tin Yun Gap gặp nạn, Yeo Ri quyết định kế nghiệp ông và trở thành pháp sư trừ yêu diệt ma.', 1, 0, 0, 'cung-dien-ma-am3670.jpg', 16, 2, 1, 4, 3, 1, '2025-05-26 17:58:17', '2025-05-26 17:58:17', NULL, '65 phút/tập', 'phimbo', 'Yook Sung Jae, Bona, Kim Ji Hoon', 'Yoon Sung Shik', 'harper-bazaar-review-phim-cung-dien-ma-am-2-e17451166004925168.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `movie_genre`
--

CREATE TABLE `movie_genre` (
  `id` int(11) NOT NULL,
  `movie_id` int(11) DEFAULT NULL,
  `genre_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `movie_genre`
--

INSERT INTO `movie_genre` (`id`, `movie_id`, `genre_id`) VALUES
(1, 1, 4),
(2, 1, 5),
(3, 1, 11),
(4, 1, 13),
(5, 2, 9),
(6, 2, 12),
(7, 3, 8),
(8, 3, 15),
(9, 4, 4),
(10, 4, 6),
(11, 4, 9),
(12, 5, 5),
(13, 5, 13),
(14, 5, 14),
(15, 5, 15),
(16, 6, 7),
(17, 6, 13),
(18, 6, 14);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `gender` int(11) DEFAULT NULL,
  `born` date DEFAULT NULL,
  `number_phone` int(12) DEFAULT NULL,
  `is_admin` tinyint(1) DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `gender`, `born`, `number_phone`, `is_admin`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Khải', 'khai@gmail.com', '2025-04-23 12:32:32', '$2y$12$qh05GWIwzXaq1DexKIxNMewiqxwWoSistiA1MLVtC96mKy4CBNAYe', 1, '2000-01-01', 123456789, 1, NULL, '2025-04-23 12:32:32', '2025-04-23 12:32:32'),
(2, 'khai102', 'khai2@gmail.com', NULL, '$2y$10$fR6qiJmbO8z9PXzhQlhURe5x39SscKdsDRUjk9PxYXyobRPon8Q76', 1, '2002-04-09', 375412608, NULL, NULL, '2025-05-26 03:54:11', '2025-05-26 03:54:33');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `episodes`
--
ALTER TABLE `episodes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `movie_id` (`movie_id`);

--
-- Indexes for table `favorites`
--
ALTER TABLE `favorites`
  ADD PRIMARY KEY (`id`),
  ADD KEY `movie_id` (`movie_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `genres`
--
ALTER TABLE `genres`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `movies`
--
ALTER TABLE `movies`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_id` (`category_id`),
  ADD KEY `genre_id` (`genre_id`),
  ADD KEY `country_id` (`country_id`);

--
-- Indexes for table `movie_genre`
--
ALTER TABLE `movie_genre`
  ADD PRIMARY KEY (`id`),
  ADD KEY `movie_id` (`movie_id`),
  ADD KEY `genre_id` (`genre_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `episodes`
--
ALTER TABLE `episodes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `favorites`
--
ALTER TABLE `favorites`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `genres`
--
ALTER TABLE `genres`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `movies`
--
ALTER TABLE `movies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `movie_genre`
--
ALTER TABLE `movie_genre`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `episodes`
--
ALTER TABLE `episodes`
  ADD CONSTRAINT `episodes_ibfk_1` FOREIGN KEY (`movie_id`) REFERENCES `movies` (`id`);

--
-- Constraints for table `favorites`
--
ALTER TABLE `favorites`
  ADD CONSTRAINT `favorites_ibfk_1` FOREIGN KEY (`movie_id`) REFERENCES `movies` (`id`),
  ADD CONSTRAINT `favorites_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `movies`
--
ALTER TABLE `movies`
  ADD CONSTRAINT `movies_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`),
  ADD CONSTRAINT `movies_ibfk_2` FOREIGN KEY (`genre_id`) REFERENCES `genres` (`id`),
  ADD CONSTRAINT `movies_ibfk_3` FOREIGN KEY (`country_id`) REFERENCES `countries` (`id`);

--
-- Constraints for table `movie_genre`
--
ALTER TABLE `movie_genre`
  ADD CONSTRAINT `movie_genre_ibfk_1` FOREIGN KEY (`movie_id`) REFERENCES `movies` (`id`),
  ADD CONSTRAINT `movie_genre_ibfk_2` FOREIGN KEY (`genre_id`) REFERENCES `genres` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
