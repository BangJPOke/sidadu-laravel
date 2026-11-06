-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 03 Nov 2026 pada 04.52
-- Versi server: 10.4.32-MariaDB
-- Versi PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_dana_masjid`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `desa`
--

CREATE TABLE `desa` (
  `id` int(11) NOT NULL,
  `nama_desa` varchar(100) NOT NULL,
  `kecamatan_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `desa`
--

INSERT INTO `desa` (`id`, `nama_desa`, `kecamatan_id`) VALUES
(1, 'Bangodua', 7),
(2, 'Beduyut', 7),
(3, 'Karanggetas', 7),
(4, 'Malangsari', 7),
(5, 'Mulyasari', 7),
(6, 'Rancasari', 7),
(7, 'Tegalirang', 7),
(8, 'Wanasari', 7),
(9, 'Haurkolot', 9),
(10, 'Haurgeulis', 9),
(11, 'Sukajati', 9),
(12, 'Wanakaya', 9),
(13, 'Karangtumaritis', 9),
(14, 'Kertanegara', 9),
(15, 'Cipancuh', 9),
(16, 'Mekarjati', 9),
(17, 'Sidadadi', 9),
(18, 'Sumbermulya', 9),
(19, 'Bantarwaru', 10),
(20, 'Sanca', 10),
(21, 'Mekarjaya', 10),
(22, 'Gantar', 10),
(23, 'Situraja', 10),
(24, 'Baleraja', 10),
(25, 'Mekarwaru', 10),
(26, 'Sukaslamet', 11),
(27, 'Tanjungkerta', 11),
(28, 'Kroya', 11),
(29, 'Sumbon', 11),
(30, 'Sukamelang', 11),
(31, 'Temiyang', 11),
(32, 'Temiyangsari', 11),
(33, 'Jayamulya', 11),
(34, 'Sumberjaya', 11),
(35, 'Kedungdawa', 12),
(36, 'Babakanjaya', 12),
(37, 'Gabuskulon', 12),
(38, 'Sekarmulya', 12),
(39, 'Kedokangabus', 12),
(40, 'Rancamulya', 12),
(41, 'Rancahan', 12),
(42, 'Gabuswetan', 12),
(43, 'Drunten Wetan', 12),
(44, 'Drunten Kulon', 12),
(45, 'Loyang', 13),
(46, 'Amis', 13),
(47, 'Jatisura', 13),
(48, 'Jambak', 13),
(49, 'Cikedung', 13),
(50, 'Cikedung Lor', 13),
(51, 'Mundakjaya', 13),
(52, 'Cikawung', 14),
(53, 'Jatimunggul', 14),
(54, 'Jatimulya', 14),
(55, 'Plosokerep', 14),
(56, 'Rajasinga', 14),
(57, 'Karangasem', 14),
(58, 'Manggungan', 14),
(59, 'Cibereng', 14),
(60, 'Kendayakan', 14),
(61, 'Tempel Kulon', 15),
(62, 'Tunggul Payung', 15),
(63, 'Tugu', 15),
(64, 'Nunuk', 15),
(65, 'Tempel', 15),
(66, 'Pangauban', 15),
(67, 'Telagasari', 15),
(68, 'Langgengsari', 15),
(69, 'Tamansari', 15),
(70, 'Lelea', 15),
(71, 'Cempeh', 15),
(72, 'Mekarsari', 16),
(73, 'Bodas', 16),
(74, 'Gadel', 16),
(75, 'Rancajawat', 16),
(76, 'Kerticala', 16),
(77, 'Sukamulya', 16),
(78, 'Karangkerta', 16),
(79, 'Cangko', 16),
(80, 'Pagedangan', 16),
(81, 'Sukaperna', 16),
(82, 'Sukadana', 16),
(83, 'Tukdana', 16),
(84, 'Lajer', 16),
(85, 'Bangkaloa Ilir', 8),
(86, 'Widasari', 8),
(87, 'Kalensari', 8),
(88, 'Bunder', 8),
(89, 'Ujungaris', 8),
(90, 'Kongsijaya', 8),
(91, 'Ujungjaya', 8),
(92, 'Ujungpendok Jaya', 8),
(93, 'Leuwigede', 8),
(94, 'Kasmaran', 8),
(95, 'Sukawera', 17),
(96, 'Tulungagung', 17),
(97, 'Jengkok', 17),
(98, 'Tegalwirangrong', 17),
(99, 'Manguntara', 17),
(100, 'Jambe', 17),
(101, 'Lemahayu', 17),
(102, 'Tenajar Kidul', 17),
(103, 'Kertasemaya', 17),
(104, 'Kliwed', 17),
(105, 'Tenajar', 17),
(106, 'Larangan Jambe', 17),
(107, 'Tenajar Lor', 17),
(108, 'Gedangan', 18),
(109, 'Cibeber', 18),
(110, 'Bondan', 18),
(111, 'Gunungsari', 18),
(112, 'Sukagumiwang', 18),
(113, 'Tersana', 18),
(114, 'Cadangpinggan', 18),
(115, 'Tanjakan', 19),
(116, 'Purwajaya', 19),
(117, 'Kapringan', 19),
(118, 'Singakerta', 19),
(119, 'Dukuhjati', 19),
(120, 'Tegalmulya', 19),
(121, 'Kedungwungu', 19),
(122, 'Srengseng', 19),
(123, 'Luwunggesik', 19),
(124, 'Kalianyar', 19),
(125, 'Krangkeng', 19),
(126, 'Mundu', 6),
(127, 'Kaplongan Lor', 6),
(128, 'Tanjungpura', 6),
(129, 'Tanjungsari', 6),
(130, 'Pringgacala', 6),
(131, 'Benda', 6),
(132, 'Sendang', 6),
(133, 'Karangampel Kidul', 6),
(134, 'Karangampel', 6),
(135, 'Dukuh Jeruk', 6),
(136, 'Dukuh Tengah', 6),
(137, 'Jayalaksana', 20),
(138, 'Kedokanbunder Wetan', 20),
(139, 'Kaplongan', 20),
(140, 'Kedokan Agung', 20),
(141, 'Kedokanbunder', 20),
(142, 'Jayawinangun', 20),
(143, 'Cangkingan', 20),
(144, 'Limbangan', 21),
(145, 'Segeran Kidul', 21),
(146, 'Segeran', 21),
(147, 'Juntiweden', 21),
(148, 'Juntikebon', 21),
(149, 'Dadap', 21),
(150, 'Juntinyuat', 21),
(151, 'Juntikedokan', 21),
(152, 'Pondoh', 21),
(153, 'Sambimaya', 21),
(154, 'Tinumpuk', 21),
(155, 'Lombang', 21),
(156, 'Longok', 22),
(157, 'Sleman', 22),
(158, 'Tambi', 22),
(159, 'Sudikampiran', 22),
(160, 'Tambi Lor', 22),
(161, 'Sleman Lor', 22),
(162, 'Majasari', 22),
(163, 'Majasih', 22),
(164, 'Sliyeg', 22),
(165, 'Gadingan', 22),
(166, 'Mekargading', 22),
(167, 'Sliyeg Lor', 22),
(168, 'Tugu Kidul', 22),
(169, 'Tugu', 22),
(170, 'Lobener Lor', 2),
(171, 'Sukalila', 2),
(172, 'Pilangsari', 2),
(173, 'Jatibarang Baru', 2),
(174, 'Bulak', 2),
(175, 'Bulak Lor', 2),
(176, 'Jatibarang', 2),
(177, 'Kebulen', 2),
(178, 'Pawidean', 2),
(179, 'Jatisawit', 2),
(180, 'Jatisawit Lor', 2),
(181, 'Krasak', 2),
(182, 'Kalimati', 2),
(183, 'Malangsemirang', 2),
(184, 'Lobener', 2),
(185, 'Majakerta', 5),
(186, 'Tegalsembadra', 5),
(187, 'Sukareja', 5),
(188, 'Sukaurip', 5),
(189, 'Rawadalem', 5),
(190, 'Gelarmendala', 5),
(191, 'Tegalurung', 5),
(192, 'Balongan', 5),
(193, 'Sudimampir', 5),
(194, 'Sudimampir Lor', 5),
(195, 'Tambak', 1),
(196, 'Telukagung', 1),
(197, 'Plumbon', 1),
(198, 'Dukuh', 1),
(199, 'Pekandangan Jaya', 1),
(200, 'Singaraja', 1),
(201, 'Singajaya', 1),
(202, 'Pekandangan', 1),
(203, 'Karangsong', 1),
(204, 'Pabean Udik', 1),
(205, 'Wanantara', 3),
(206, 'Panyindangan Kulon', 3),
(207, 'Rambatan Wetan', 3),
(208, 'Panyindangan Wetan', 3),
(209, 'Kenanga', 3),
(210, 'Terusan', 3),
(211, 'Dermayu', 3),
(212, 'Sindang', 3),
(213, 'Penganjang', 3),
(214, 'Babadan', 3),
(215, 'Cemara', 23),
(216, 'Cangkring', 23),
(217, 'Cantigi Kulon', 23),
(218, 'Cantigi Wetan', 23),
(219, 'Panyingkiran Lor', 23),
(220, 'Panyingkiran Kidul', 23),
(221, 'Lamarantarung', 23),
(222, 'Karanganyar', 24),
(223, 'Pagirikan', 24),
(224, 'Pasekan', 24),
(225, 'Brondong', 24),
(226, 'Pabeanilir', 24),
(227, 'Totoran', 24),
(228, 'Rambatan Kulon', 4),
(229, 'Kiajaran Kulon', 4),
(230, 'Kiajaran Wetan', 4),
(231, 'Lanjan', 4),
(232, 'Langut', 4),
(233, 'Larangan', 4),
(234, 'Waru', 4),
(235, 'Legok', 4),
(236, 'Bojongslawi', 4),
(237, 'Lohbener', 4),
(238, 'Pamayahan', 4),
(239, 'Sindangkerta', 4),
(240, 'Cidempet', 25),
(241, 'Sukasari', 25),
(242, 'Arahan Kidul', 25),
(243, 'Arahan Lor', 25),
(244, 'Linggajati', 25),
(245, 'Tawangsari', 25),
(246, 'Sukadadi', 25),
(247, 'Pranggong', 25),
(248, 'Ranjeng', 26),
(249, 'Cemara Kulon', 26),
(250, 'Krimun', 26),
(251, 'Puntang', 26),
(252, 'Pegagan', 26),
(253, 'Rajaiyang', 26),
(254, 'Jangga', 26),
(255, 'Jumbleng', 26),
(256, 'Pangkalan', 26),
(257, 'Losarang', 26),
(258, 'Muntur', 26),
(259, 'Santing', 26),
(260, 'Soge', 27),
(261, 'Curug', 27),
(262, 'Pranti', 27),
(263, 'Wirakanan', 27),
(264, 'Karangmulya', 27),
(265, 'Karanganyar', 27),
(266, 'Wirapanjunan', 27),
(267, 'Parean Girang', 27),
(268, 'Bulak', 27),
(269, 'Ilir', 27),
(270, 'Eretan Wetan', 27),
(271, 'Eretan Kulon', 27),
(272, 'Kertawinangun', 27),
(273, 'Plawangan', 28),
(274, 'Cipedang', 28),
(275, 'Sidamulya', 28),
(276, 'Margamulya', 28),
(277, 'Kertajaya', 28),
(278, 'Bongas', 28),
(279, 'Cipaat', 28),
(280, 'Kertamulya', 28),
(281, 'Anjatan Utara', 29),
(282, 'Mangunjaya', 29),
(283, 'Bugistua', 29),
(284, 'Bugis', 29),
(285, 'Salamdarma', 29),
(286, 'Kedungwungu', 29),
(287, 'Wanguk', 29),
(288, 'Lempuyang', 29),
(289, 'Kopyah', 29),
(290, 'Anjatan Baru', 29),
(291, 'Anjatan', 29),
(292, 'Cilandak', 29),
(293, 'Cilandak Lor', 29),
(294, 'Karanglayung', 30),
(295, 'Bogor', 30),
(296, 'Sukra', 30),
(297, 'Ujunggebang', 30),
(298, 'Tegaltaman', 30),
(299, 'Sukrawetan', 30),
(300, 'Sumuradem', 30),
(301, 'Sumuradem Timur', 30),
(302, 'Limpas', 31),
(303, 'Patrol', 31),
(304, 'Arjasari', 31),
(305, 'Sukahaji', 31),
(306, 'Bugel', 31),
(307, 'Patrollor', 31),
(308, 'Patrol Baru', 31),
(309, 'Mekarsari', 31);

-- --------------------------------------------------------

--
-- Struktur dari tabel `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `kecamatan`
--

CREATE TABLE `kecamatan` (
  `id` int(11) NOT NULL,
  `nama_kecamatan` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `kecamatan`
--

INSERT INTO `kecamatan` (`id`, `nama_kecamatan`) VALUES
(1, 'Indramayu'),
(2, 'Jatibarang'),
(3, 'Sindang'),
(4, 'Lohbener'),
(5, 'Balongan'),
(6, 'Karangampel'),
(7, 'Bangodua'),
(8, 'Widasari'),
(9, 'Haurgeulis'),
(10, 'Gantar'),
(11, 'Kroya'),
(12, 'Gabuswetan'),
(13, 'Cikedung'),
(14, 'Terisi'),
(15, 'Lelea'),
(16, 'Tukdana'),
(17, 'Kertasemaya'),
(18, 'Sukagumiwang'),
(19, 'Krangkeng'),
(20, 'Kedokan Bunder'),
(21, 'Juntinyuat'),
(22, 'Sliyeg'),
(23, 'Cantigi'),
(24, 'Pasekan'),
(25, 'Arahan'),
(26, 'Losarang'),
(27, 'Kandanghaur'),
(28, 'Bongas'),
(29, 'Anjatan'),
(30, 'Sukra'),
(31, 'Patrol');

-- --------------------------------------------------------

--
-- Struktur dari tabel `masjid`
--

CREATE TABLE `masjid` (
  `id` int(11) NOT NULL,
  `nama_masjid` varchar(150) NOT NULL,
  `alamat` text NOT NULL,
  `desa_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `masjid`
--

INSERT INTO `masjid` (`id`, `nama_masjid`, `alamat`, `desa_id`, `created_at`) VALUES
(3, 'barokah', 'bangodua', 1, '2026-10-31 17:10:48'),
(4, 'karanggetas masjid', 'dikaranggetas', 3, '2026-11-01 08:44:19'),
(5, 'jatibarang indah', 'blok rengas', 173, '2026-11-01 10:58:34'),
(6, 'anjatan', 'dRI ANJATAN', 291, '2026-11-01 15:51:35'),
(7, 'al istiqomah', 'dijalan sepi', 2, '2026-11-02 08:10:11'),
(8, 'urwatul wutsqo', 'by pass malangsari', 4, '2026-11-02 12:01:48'),
(9, 'masjid an nur', 'bangodua raya', 1, '2026-11-02 14:11:02'),
(10, 'masjide mas dadi', 'ning sekolahan', 1, '2026-11-03 03:18:20');

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '2026_10_31_204056_create_tarif_insentif_table', 2),
(3, '0001_01_01_000001_create_cache_table', 3),
(4, '0001_01_01_000002_create_jobs_table', 3),
(5, '2026_11_01_020311_add_tanggal_pencairan_to_pengurus_table', 3),
(6, '2026_11_01_022530_add_jam_pencairan_to_pengurus_table', 4);

-- --------------------------------------------------------

--
-- Struktur dari tabel `pengurus`
--

CREATE TABLE `pengurus` (
  `id` int(11) NOT NULL,
  `masjid_id` int(11) NOT NULL,
  `nama_lengkap` varchar(150) NOT NULL,
  `nik` varchar(16) NOT NULL,
  `tgl_lahir` date NOT NULL,
  `alamat` text NOT NULL,
  `pendidikan` varchar(50) NOT NULL,
  `norek_bjb` varchar(50) NOT NULL,
  `peran` varchar(100) NOT NULL,
  `file_ktp` varchar(255) DEFAULT NULL,
  `file_kk` varchar(255) DEFAULT NULL,
  `file_sk` varchar(255) DEFAULT NULL,
  `file_bank` varchar(255) DEFAULT NULL,
  `status` enum('Menunggu','Disetujui','Ditolak','Dicairkan') DEFAULT 'Menunggu',
  `tanggal_pencairan` date DEFAULT NULL,
  `jam_pencairan` time DEFAULT NULL,
  `nominal_insentif` varchar(100) DEFAULT NULL,
  `catatan_penolakan` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tarif_insentif`
--

CREATE TABLE `tarif_insentif` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `jabatan` varchar(255) NOT NULL,
  `nominal` decimal(15,2) NOT NULL DEFAULT 0.00,
  `aktif` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `tarif_insentif`
--

INSERT INTO `tarif_insentif` (`id`, `jabatan`, `nominal`, `aktif`, `created_at`, `updated_at`) VALUES
(1, 'Ketua DKM', 80000.00, 1, '2026-10-31 14:21:10', '2026-11-02 08:03:30'),
(2, 'Sekretaris', 780000.00, 1, '2026-10-31 14:21:10', '2026-11-02 08:03:30'),
(3, 'Bendahara', 600000.00, 1, '2026-10-31 14:21:10', '2026-11-02 08:03:30'),
(4, 'Imam', 300000.00, 1, '2026-10-31 14:21:10', '2026-11-02 08:03:30'),
(5, 'Guru Ngaji', 30000000.00, 1, '2026-10-31 14:21:10', '2026-11-02 08:03:30'),
(6, 'Marbot', 500000.00, 1, '2026-10-31 14:21:10', '2026-11-02 08:03:30');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `nama_lengkap` varchar(100) NOT NULL,
  `role` enum('operator_desa','admin_Kecamatan','bagian_kesra') NOT NULL,
  `desa_id` int(11) DEFAULT NULL,
  `kecamatan_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `nama_lengkap`, `role`, `desa_id`, `kecamatan_id`) VALUES
(1, 'bangodua_siap', '$2y$12$/PODvWfgo01NblwGsA552.XUlQyNg/yhdQF4/ekgrLBfB2BuQRka2', 'dadi', 'operator_desa', 1, NULL),
(2, 'operator_beduyut', '$2y$12$qTIn3hkw8/S41uwyOYVUX.btbHMeZ1EI./5KQ7Ul/S1OC3xPVkcTy', 'Operator Desa Beduyut', 'operator_desa', 2, NULL),
(3, 'operator_karanggetas', '$2y$12$2UZ3paxlEOEAdeZK/RHCFOHSn823hZ.Rc0S1vvyvuawC4NyujCBiO', 'Operator Desa Karanggetas', 'operator_desa', 3, NULL),
(4, 'operator_malangsari', '$2y$12$SEwfO5l2PvWmJzukyBsTjO/8IjhMxPW9DnwgprxTcjzsY9noDykf.', 'Operator Desa Malangsari', 'operator_desa', 4, NULL),
(5, 'operator_mulyasari', '0192023a7bbd73250516f069df18b500', 'Operator Desa Mulyasari', 'operator_desa', 5, NULL),
(6, 'operator_rancasari', '0192023a7bbd73250516f069df18b500', 'Operator Desa Rancasari', 'operator_desa', 6, NULL),
(7, 'operator_tegalirang', '0192023a7bbd73250516f069df18b500', 'Operator Desa Tegalirang', 'operator_desa', 7, NULL),
(8, 'operator_wanasari', '0192023a7bbd73250516f069df18b500', 'Operator Desa Wanasari', 'operator_desa', 8, NULL),
(9, 'admin_bangodua', '$2y$12$zOo.hfBg0.hF9KDwP4z/IerFOCyRu4CgsLE5XX0cHAdrlfMeljLbG', 'Admin Kecamatan Bangodua', 'admin_Kecamatan', NULL, 7),
(10, 'bagian_kesra', '$2y$12$L82zobaO1Pnj/UbemMWZB.OjG..3tqBHsHXhRoEZCRPj0IMMPSRUC', 'Bagian Kesra Kecamatan', 'bagian_kesra', NULL, NULL),
(12, 'admin_indramayu', '$2y$12$zOo.hfBg0.hF9KDwP4z/IerFOCyRu4CgsLE5XX0cHAdrlfMeljLbG', 'Admin Kecamatan Indramayu', 'admin_Kecamatan', NULL, 1),
(13, 'admin_jatibarang', '$2y$12$zOo.hfBg0.hF9KDwP4z/IerFOCyRu4CgsLE5XX0cHAdrlfMeljLbG', 'Admin Kecamatan Jatibarang', 'admin_Kecamatan', NULL, 2),
(14, 'admin_sindang', '$2y$12$zOo.hfBg0.hF9KDwP4z/IerFOCyRu4CgsLE5XX0cHAdrlfMeljLbG', 'Admin Kecamatan Sindang', 'admin_Kecamatan', NULL, 3),
(15, 'admin_lohbener', '$2y$12$zOo.hfBg0.hF9KDwP4z/IerFOCyRu4CgsLE5XX0cHAdrlfMeljLbG', 'Admin Kecamatan Lohbener', 'admin_Kecamatan', NULL, 4),
(16, 'admin_balongan', '$2y$12$zOo.hfBg0.hF9KDwP4z/IerFOCyRu4CgsLE5XX0cHAdrlfMeljLbG', 'Admin Kecamatan Balongan', 'admin_Kecamatan', NULL, 5),
(17, 'admin_karangampel', '$2y$12$zOo.hfBg0.hF9KDwP4z/IerFOCyRu4CgsLE5XX0cHAdrlfMeljLbG', 'Admin Kecamatan Karangampel', 'admin_Kecamatan', NULL, 6),
(18, 'admin_widasari', '$2y$12$zOo.hfBg0.hF9KDwP4z/IerFOCyRu4CgsLE5XX0cHAdrlfMeljLbG', 'Admin Kecamatan Widasari', 'admin_Kecamatan', NULL, 8),
(19, 'admin_haurgeulis', '$2y$12$zOo.hfBg0.hF9KDwP4z/IerFOCyRu4CgsLE5XX0cHAdrlfMeljLbG', 'Admin Kecamatan Haurgeulis', 'admin_Kecamatan', NULL, 9),
(20, 'admin_gantar', '$2y$12$zOo.hfBg0.hF9KDwP4z/IerFOCyRu4CgsLE5XX0cHAdrlfMeljLbG', 'Admin Kecamatan Gantar', 'admin_Kecamatan', NULL, 10),
(21, 'admin_kroya', '$2y$12$zOo.hfBg0.hF9KDwP4z/IerFOCyRu4CgsLE5XX0cHAdrlfMeljLbG', 'Admin Kecamatan Kroya', 'admin_Kecamatan', NULL, 11),
(22, 'admin_gabuswetan', '$2y$12$zOo.hfBg0.hF9KDwP4z/IerFOCyRu4CgsLE5XX0cHAdrlfMeljLbG', 'Admin Kecamatan Gabuswetan', 'admin_Kecamatan', NULL, 12),
(23, 'admin_cikedung', '$2y$12$zOo.hfBg0.hF9KDwP4z/IerFOCyRu4CgsLE5XX0cHAdrlfMeljLbG', 'Admin Kecamatan Cikedung', 'admin_Kecamatan', NULL, 13),
(24, 'admin_terisi', '$2y$12$zOo.hfBg0.hF9KDwP4z/IerFOCyRu4CgsLE5XX0cHAdrlfMeljLbG', 'Admin Kecamatan Terisi', 'admin_Kecamatan', NULL, 14),
(25, 'admin_lelea', '$2y$12$zOo.hfBg0.hF9KDwP4z/IerFOCyRu4CgsLE5XX0cHAdrlfMeljLbG', 'Admin Kecamatan Lelea', 'admin_Kecamatan', NULL, 15),
(26, 'admin_tukdana', '$2y$12$zOo.hfBg0.hF9KDwP4z/IerFOCyRu4CgsLE5XX0cHAdrlfMeljLbG', 'Admin Kecamatan Tukdana', 'admin_Kecamatan', NULL, 16),
(27, 'admin_kertasemaya', '$2y$12$zOo.hfBg0.hF9KDwP4z/IerFOCyRu4CgsLE5XX0cHAdrlfMeljLbG', 'Admin Kecamatan Kertasemaya', 'admin_Kecamatan', NULL, 17),
(28, 'admin_sukagumiwang', '$2y$12$zOo.hfBg0.hF9KDwP4z/IerFOCyRu4CgsLE5XX0cHAdrlfMeljLbG', 'Admin Kecamatan Sukagumiwang', 'admin_Kecamatan', NULL, 18),
(29, 'admin_krangkeng', '$2y$12$zOo.hfBg0.hF9KDwP4z/IerFOCyRu4CgsLE5XX0cHAdrlfMeljLbG', 'Admin Kecamatan Krangkeng', 'admin_Kecamatan', NULL, 19),
(30, 'admin_kedokan_bunder', '$2y$12$zOo.hfBg0.hF9KDwP4z/IerFOCyRu4CgsLE5XX0cHAdrlfMeljLbG', 'Admin Kecamatan Kedokan Bunder', 'admin_Kecamatan', NULL, 20),
(31, 'admin_juntinyuat', '$2y$12$zOo.hfBg0.hF9KDwP4z/IerFOCyRu4CgsLE5XX0cHAdrlfMeljLbG', 'Admin Kecamatan Juntinyuat', 'admin_Kecamatan', NULL, 21),
(32, 'admin_sliyeg', '$2y$12$zOo.hfBg0.hF9KDwP4z/IerFOCyRu4CgsLE5XX0cHAdrlfMeljLbG', 'Admin Kecamatan Sliyeg', 'admin_Kecamatan', NULL, 22),
(33, 'admin_cantigi', '$2y$12$zOo.hfBg0.hF9KDwP4z/IerFOCyRu4CgsLE5XX0cHAdrlfMeljLbG', 'Admin Kecamatan Cantigi', 'admin_Kecamatan', NULL, 23),
(34, 'admin_pasekan', '$2y$12$zOo.hfBg0.hF9KDwP4z/IerFOCyRu4CgsLE5XX0cHAdrlfMeljLbG', 'Admin Kecamatan Pasekan', 'admin_Kecamatan', NULL, 24),
(35, 'admin_arahan', '$2y$12$zOo.hfBg0.hF9KDwP4z/IerFOCyRu4CgsLE5XX0cHAdrlfMeljLbG', 'Admin Kecamatan Arahan', 'admin_Kecamatan', NULL, 25),
(36, 'admin_losarang', '$2y$12$zOo.hfBg0.hF9KDwP4z/IerFOCyRu4CgsLE5XX0cHAdrlfMeljLbG', 'Admin Kecamatan Losarang', 'admin_Kecamatan', NULL, 26),
(37, 'admin_kandanghaur', '$2y$12$zOo.hfBg0.hF9KDwP4z/IerFOCyRu4CgsLE5XX0cHAdrlfMeljLbG', 'Admin Kecamatan Kandanghaur', 'admin_Kecamatan', NULL, 27),
(38, 'admin_bongas', '$2y$12$zOo.hfBg0.hF9KDwP4z/IerFOCyRu4CgsLE5XX0cHAdrlfMeljLbG', 'Admin Kecamatan Bongas', 'admin_Kecamatan', NULL, 28),
(39, 'admin_anjatan', '$2y$12$zOo.hfBg0.hF9KDwP4z/IerFOCyRu4CgsLE5XX0cHAdrlfMeljLbG', 'Admin Kecamatan Anjatan', 'admin_Kecamatan', NULL, 29),
(40, 'admin_sukra', '$2y$12$zOo.hfBg0.hF9KDwP4z/IerFOCyRu4CgsLE5XX0cHAdrlfMeljLbG', 'Admin Kecamatan Sukra', 'admin_Kecamatan', NULL, 30),
(41, 'admin_patrol', '$2y$12$zOo.hfBg0.hF9KDwP4z/IerFOCyRu4CgsLE5XX0cHAdrlfMeljLbG', 'Admin Kecamatan Patrol', 'admin_Kecamatan', NULL, 31),
(42, 'desa_jatibarangbaru', '$2y$12$jIvR4nTHWMbRuYgTFFfg4eCm02MSWXz8Smgd81xJEJu.1D2bZyHdm', 'sandi', 'operator_desa', 173, NULL),
(43, 'Jajal', '$2y$12$xvqDswCjcKq.n8ksgVyr5e91IPwmlMpZy.85XouKWr43/793D.4SO', 'Jaya jaya', 'operator_desa', 291, NULL);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`),
  ADD KEY `cache_expiration_index` (`expiration`);

--
-- Indeks untuk tabel `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`),
  ADD KEY `cache_locks_expiration_index` (`expiration`);

--
-- Indeks untuk tabel `desa`
--
ALTER TABLE `desa`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_desa_kecamatan` (`kecamatan_id`);

--
-- Indeks untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indeks untuk tabel `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indeks untuk tabel `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `kecamatan`
--
ALTER TABLE `kecamatan`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `masjid`
--
ALTER TABLE `masjid`
  ADD PRIMARY KEY (`id`),
  ADD KEY `desa_id` (`desa_id`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `pengurus`
--
ALTER TABLE `pengurus`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `nik` (`nik`),
  ADD KEY `masjid_id` (`masjid_id`);

--
-- Indeks untuk tabel `tarif_insentif`
--
ALTER TABLE `tarif_insentif`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `tarif_insentif_jabatan_unique` (`jabatan`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD KEY `desa_id` (`desa_id`),
  ADD KEY `fk_users_kecamatan` (`kecamatan_id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `desa`
--
ALTER TABLE `desa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=310;

--
-- AUTO_INCREMENT untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `kecamatan`
--
ALTER TABLE `kecamatan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT untuk tabel `masjid`
--
ALTER TABLE `masjid`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `pengurus`
--
ALTER TABLE `pengurus`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT untuk tabel `tarif_insentif`
--
ALTER TABLE `tarif_insentif`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `desa`
--
ALTER TABLE `desa`
  ADD CONSTRAINT `fk_desa_kecamatan` FOREIGN KEY (`kecamatan_id`) REFERENCES `kecamatan` (`id`) ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `masjid`
--
ALTER TABLE `masjid`
  ADD CONSTRAINT `masjid_ibfk_1` FOREIGN KEY (`desa_id`) REFERENCES `desa` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `pengurus`
--
ALTER TABLE `pengurus`
  ADD CONSTRAINT `pengurus_ibfk_1` FOREIGN KEY (`masjid_id`) REFERENCES `masjid` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `fk_users_kecamatan` FOREIGN KEY (`kecamatan_id`) REFERENCES `kecamatan` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `users_ibfk_1` FOREIGN KEY (`desa_id`) REFERENCES `desa` (`id`) ON DELETE SET NULL;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
