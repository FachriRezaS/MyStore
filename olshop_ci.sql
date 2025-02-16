-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Oct 19, 2019 at 05:04 AM
-- Server version: 10.1.19-MariaDB
-- PHP Version: 7.0.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `olshop_ci`
--

-- --------------------------------------------------------

--
-- Table structure for table `category_product`
--

CREATE TABLE `category_product` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `order` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category_product`
--

INSERT INTO `category_product` (`id`, `title`, `slug`, `order`) VALUES
(8, 'Jacket', 'Jacket', 1),
(9, 'Jas', 'Jas', 2);

-- --------------------------------------------------------

--
-- Table structure for table `konfirmasi`
--

CREATE TABLE `konfirmasi` (
  `id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `rekening_tujuan` varchar(100) NOT NULL,
  `rekening_member` varchar(100) NOT NULL,
  `nama_pemegang` varchar(100) NOT NULL,
  `nominal` int(11) NOT NULL,
  `tanggal` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `kota`
--

CREATE TABLE `kota` (
  `id` int(4) NOT NULL,
  `nama_kota` varchar(100) DEFAULT NULL,
  `provinsi_id` int(4) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kota`
--

INSERT INTO `kota` (`id`, `nama_kota`, `provinsi_id`) VALUES
(1, 'Kabupaten Aceh Barat', 1),
(2, 'Kabupaten Aceh Barat Daya', 1),
(3, 'Kabupaten Aceh Besar', 1),
(4, 'Kabupaten Aceh Jaya', 1),
(5, 'Kabupaten Aceh Selatan', 1),
(6, 'Kabupaten Aceh Singkil', 1),
(7, 'Kabupaten Aceh Tamiang', 1),
(8, 'Kabupaten Aceh Tengah', 1),
(9, 'Kabupaten Aceh Tenggara', 1),
(10, 'Kabupaten Aceh Timur', 1),
(11, 'Kabupaten Aceh Utara', 1),
(12, 'Kabupaten Bener Meriah', 1),
(13, 'Kabupaten Bireuen', 1),
(14, 'Kabupaten Gayo Luwes', 1),
(15, 'Kabupaten Nagan Raya', 1),
(16, 'Kabupaten Pidie', 1),
(17, 'Kabupaten Pidie Jaya', 1),
(18, 'Kabupaten Simeulue', 1),
(19, 'Kota Banda Aceh', 1),
(20, 'Kota Langsa', 1),
(21, 'Kota Lhokseumawe', 1),
(22, 'Kota Sabang', 1),
(23, 'Kota Subulussalam', 1),
(24, 'Kabupaten Asahan', 2),
(25, 'Kabupaten Batubara', 2),
(26, 'Kabupaten Dairi', 2),
(27, 'Kabupaten Deli Serdang', 2),
(28, 'Kabupaten Humbang Hasundutan', 2),
(29, 'Kabupaten Karo', 2),
(30, 'Kabupaten Labuhan Batu', 2),
(31, 'Kabupaten Labuhanbatu Selatan', 2),
(32, 'Kabupaten Labuhanbatu Utara', 2),
(33, 'Kabupaten Langkat', 2),
(34, 'Kabupaten Mandailing Natal', 2),
(35, 'Kabupaten Nias', 2),
(36, 'Kabupaten Nias Barat', 2),
(37, 'Kabupaten Nias Selatan', 2),
(38, 'Kabupaten Nias Utara', 2),
(39, 'Kabupaten Padang Lawas', 2),
(40, 'Kabupaten Padang Lawas Utara', 2),
(41, 'Kabupaten Pakpak Barat', 2),
(42, 'Kabupaten Samosir', 2),
(43, 'Kabupaten Serdang Bedagai', 2),
(44, 'Kabupaten Simalungun', 2),
(45, 'Kabupaten Tapanuli Selatan', 2),
(46, 'Kabupaten Tapanuli Tengah', 2),
(47, 'Kabupaten Tapanuli Utara', 2),
(48, 'Kabupaten Toba Samosir', 2),
(49, 'Kota Binjai', 2),
(50, 'Kota Gunung Sitoli', 2),
(51, 'Kota Medan', 2),
(52, 'Kota Padangsidempuan', 2),
(53, 'Kota Pematang Siantar', 2),
(54, 'Kota Sibolga', 2),
(55, 'Kota Tanjung Balai', 2),
(56, 'Kota Tebing Tinggi', 2),
(57, 'Kabupaten Agam', 3),
(58, 'Kabupaten Dharmas Raya', 3),
(59, 'Kabupaten Kepulauan Mentawai', 3),
(60, 'Kabupaten Lima Puluh Kota', 3),
(61, 'Kabupaten Padang Pariaman', 3),
(62, 'Kabupaten Pasaman', 3),
(63, 'Kabupaten Pasaman Barat', 3),
(64, 'Kabupaten Pesisir Selatan', 3),
(65, 'Kabupaten Sijunjung', 3),
(66, 'Kabupaten Solok', 3),
(67, 'Kabupaten Solok Selatan', 3),
(68, 'Kabupaten Tanah Datar', 3),
(69, 'Kota Bukittinggi', 3),
(70, 'Kota Padang', 3),
(71, 'Kota Padang Panjang', 3),
(72, 'Kota Pariaman', 3),
(73, 'Kota Payakumbuh', 3),
(74, 'Kota Sawah Lunto', 3),
(75, 'Kota Solok', 3),
(76, 'Kabupaten Bengkalis', 4),
(77, 'Kabupaten Indragiri Hilir', 4),
(78, 'Kabupaten Indragiri Hulu', 4),
(79, 'Kabupaten Kampar', 4),
(80, 'Kabupaten Kuantan Singingi', 4),
(81, 'Kabupaten Meranti', 4),
(82, 'Kabupaten Pelalawan', 4),
(83, 'Kabupaten Rokan Hilir', 4),
(84, 'Kabupaten Rokan Hulu', 4),
(85, 'Kabupaten Siak', 4),
(86, 'Kota Dumai', 4),
(87, 'Kota Pekanbaru', 4),
(88, 'Kabupaten Bintan', 5),
(89, 'Kabupaten Karimun', 5),
(90, 'Kabupaten Kepulauan Anambas', 5),
(91, 'Kabupaten Lingga', 5),
(92, 'Kabupaten Natuna', 5),
(93, 'Kota Batam', 5),
(94, 'Kota Tanjung Pinang', 5),
(95, 'Kabupaten Bangka', 6),
(96, 'Kabupaten Bangka Barat', 6),
(97, 'Kabupaten Bangka Selatan', 6),
(98, 'Kabupaten Bangka Tengah', 6),
(99, 'Kabupaten Belitung', 6),
(100, 'Kabupaten Belitung Timur', 6),
(101, 'Kota Pangkal Pinang', 6),
(102, 'Kabupaten Kerinci', 7),
(103, 'Kabupaten Merangin', 7),
(104, 'Kabupaten Sarolangun', 7),
(105, 'Kabupaten Batang Hari', 7),
(106, 'Kabupaten Muaro Jambi', 7),
(107, 'Kabupaten Tanjung Jabung Timur', 7),
(108, 'Kabupaten Tanjung Jabung Barat', 7),
(109, 'Kabupaten Tebo', 7),
(110, 'Kabupaten Bungo', 7),
(111, 'Kota Jambi', 7),
(112, 'Kota Sungai Penuh', 7),
(113, 'Kabupaten Bengkulu Selatan', 8),
(114, 'Kabupaten Bengkulu Tengah', 8),
(115, 'Kabupaten Bengkulu Utara', 8),
(116, 'Kabupaten Kaur', 8),
(117, 'Kabupaten Kepahiang', 8),
(118, 'Kabupaten Lebong', 8),
(119, 'Kabupaten Mukomuko', 8),
(120, 'Kabupaten Rejang Lebong', 8),
(121, 'Kabupaten Seluma', 8),
(122, 'Kota Bengkulu', 8),
(123, 'Kabupaten Banyuasin', 9),
(124, 'Kabupaten Empat Lawang', 9),
(125, 'Kabupaten Lahat', 9),
(126, 'Kabupaten Muara Enim', 9),
(127, 'Kabupaten Musi Banyu Asin', 9),
(128, 'Kabupaten Musi Rawas', 9),
(129, 'Kabupaten Ogan Ilir', 9),
(130, 'Kabupaten Ogan Komering Ilir', 9),
(131, 'Kabupaten Ogan Komering Ulu', 9),
(132, 'Kabupaten Ogan Komering Ulu Selatan', 9),
(133, 'Kabupaten Ogan Komering Ulu Timur', 9),
(134, 'Kota Lubuklinggau', 9),
(135, 'Kota Pagar Alam', 9),
(136, 'Kota Palembang', 9),
(137, 'Kota Prabumulih', 9),
(138, 'Kabupaten Lampung Barat', 10),
(139, 'Kabupaten Lampung Selatan', 10),
(140, 'Kabupaten Lampung Tengah', 10),
(141, 'Kabupaten Lampung Timur', 10),
(142, 'Kabupaten Lampung Utara', 10),
(143, 'Kabupaten Mesuji', 10),
(144, 'Kabupaten Pesawaran', 10),
(145, 'Kabupaten Pringsewu', 10),
(146, 'Kabupaten Tanggamus', 10),
(147, 'Kabupaten Tulang Bawang', 10),
(148, 'Kabupaten Tulang Bawang Barat', 10),
(149, 'Kabupaten Way Kanan', 10),
(150, 'Kota Bandar Lampung', 10),
(151, 'Kota Metro', 10),
(152, 'Kabupaten Lebak', 11),
(153, 'Kabupaten Pandeglang', 11),
(154, 'Kabupaten Serang', 11),
(155, 'Kabupaten Tangerang', 11),
(156, 'Kota Cilegon', 11),
(157, 'Kota Serang', 11),
(158, 'Kota Tangerang', 11),
(159, 'Kota Tangerang Selatan', 11),
(160, 'Kabupaten Adm. Kepulauan Seribu', 12),
(161, 'Kota Jakarta Barat', 12),
(162, 'Kota Jakarta Pusat', 12),
(163, 'Kota Jakarta Selatan', 12),
(164, 'Kota Jakarta Timur', 12),
(165, 'Kota Jakarta Utara', 12),
(166, 'Kabupaten Bandung', 13),
(167, 'Kabupaten Bandung Barat', 13),
(168, 'Kabupaten Bekasi', 13),
(169, 'Kabupaten Bogor', 13),
(170, 'Kabupaten Ciamis', 13),
(171, 'Kabupaten Cianjur', 13),
(172, 'Kabupaten Cirebon', 13),
(173, 'Kabupaten Garut', 13),
(174, 'Kabupaten Indramayu', 13),
(175, 'Kabupaten Karawang', 13),
(176, 'Kabupaten Kuningan', 13),
(177, 'Kabupaten Majalengka', 13),
(178, 'Kabupaten Purwakarta', 13),
(179, 'Kabupaten Subang', 13),
(180, 'Kabupaten Sukabumi', 13),
(181, 'Kabupaten Sumedang', 13),
(182, 'Kabupaten Tasikmalaya', 13),
(183, 'Kota Bandung', 13),
(184, 'Kota Banjar', 13),
(185, 'Kota Bekasi', 13),
(186, 'Kota Bogor', 13),
(187, 'Kota Cimahi', 13),
(188, 'Kota Cirebon', 13),
(189, 'Kota Depok', 13),
(190, 'Kota Sukabumi', 13),
(191, 'Kota Tasikmalaya', 13),
(192, 'Kabupaten Banjarnegara', 14),
(193, 'Kabupaten Banyumas', 14),
(194, 'Kabupaten Batang', 14),
(195, 'Kabupaten Blora', 14),
(196, 'Kabupaten Boyolali', 14),
(197, 'Kabupaten Brebes', 14),
(198, 'Kabupaten Cilacap', 14),
(199, 'Kabupaten Demak', 14),
(200, 'Kabupaten Grobogan', 14),
(201, 'Kabupaten Jepara', 14),
(202, 'Kabupaten Karanganyar', 14),
(203, 'Kabupaten Kebumen', 14),
(204, 'Kabupaten Kendal', 14),
(205, 'Kabupaten Klaten', 14),
(206, 'Kabupaten Kota Tegal', 14),
(207, 'Kabupaten Kudus', 14),
(208, 'Kabupaten Magelang', 14),
(209, 'Kabupaten Pati', 14),
(210, 'Kabupaten Pekalongan', 14),
(211, 'Kabupaten Pemalang', 14),
(212, 'Kabupaten Purbalingga', 14),
(213, 'Kabupaten Purworejo', 14),
(214, 'Kabupaten Rembang', 14),
(215, 'Kabupaten Semarang', 14),
(216, 'Kabupaten Sragen', 14),
(217, 'Kabupaten Sukoharjo', 14),
(218, 'Kabupaten Temanggung', 14),
(219, 'Kabupaten Wonogiri', 14),
(220, 'Kabupaten Wonosobo', 14),
(221, 'Kota Magelang', 14),
(222, 'Kota Pekalongan', 14),
(223, 'Kota Salatiga', 14),
(224, 'Kota Semarang', 14),
(225, 'Kota Surakarta', 14),
(226, 'Kota Tegal', 14),
(227, 'Kabupaten Bantul', 15),
(228, 'Kabupaten Gunung Kidul', 15),
(229, 'Kabupaten Kulon Progo', 15),
(230, 'Kabupaten Sleman', 15),
(231, 'Kota Yogyakarta', 15),
(232, 'Kabupaten Bangkalan', 16),
(233, 'Kabupaten Banyuwangi', 16),
(234, 'Kabupaten Blitar', 16),
(235, 'Kabupaten Bojonegoro', 16),
(236, 'Kabupaten Bondowoso', 16),
(237, 'Kabupaten Gresik', 16),
(238, 'Kabupaten Jember', 16),
(239, 'Kabupaten Jombang', 16),
(240, 'Kabupaten Kediri', 16),
(241, 'Kabupaten Lamongan', 16),
(242, 'Kabupaten Lumajang', 16),
(243, 'Kabupaten Madiun', 16),
(244, 'Kabupaten Magetan', 16),
(245, 'Kabupaten Malang', 16),
(246, 'Kabupaten Mojokerto', 16),
(247, 'Kabupaten Nganjuk', 16),
(248, 'Kabupaten Ngawi', 16),
(249, 'Kabupaten Pacitan', 16),
(250, 'Kabupaten Pamekasan', 16),
(251, 'Kabupaten Pasuruan', 16),
(252, 'Kabupaten Ponorogo', 16),
(253, 'Kabupaten Probolinggo', 16),
(254, 'Kabupaten Sampang', 16),
(255, 'Kabupaten Sidoarjo', 16),
(256, 'Kabupaten Situbondo', 16),
(257, 'Kabupaten Sumenep', 16),
(258, 'Kabupaten Trenggalek', 16),
(259, 'Kabupaten Tuban', 16),
(260, 'Kabupaten Tulungagung', 16),
(261, 'Kota Batu', 16),
(262, 'Kota Blitar', 16),
(263, 'Kota Kediri', 16),
(264, 'Kota Madiun', 16),
(265, 'Kota Malang', 16),
(266, 'Kota Mojokerto', 16),
(267, 'Kota Pasuruan', 16),
(268, 'Kota Probolinggo', 16),
(269, 'Kota Surabaya', 16),
(270, 'Kabupaten Badung', 17),
(271, 'Kabupaten Bangli', 17),
(272, 'Kabupaten Buleleng', 17),
(273, 'Kabupaten Gianyar', 17),
(274, 'Kabupaten Jembrana', 17),
(275, 'Kabupaten Karang Asem', 17),
(276, 'Kabupaten Klungkung', 17),
(277, 'Kabupaten Tabanan', 17),
(278, 'Kota Denpasar', 17),
(279, 'Kabupaten Bima', 18),
(280, 'Kabupaten Dompu', 18),
(281, 'Kabupaten Lombok Barat', 18),
(282, 'Kabupaten Lombok Tengah', 18),
(283, 'Kabupaten Lombok Timur', 18),
(284, 'Kabupaten Lombok Utara', 18),
(285, 'Kabupaten Sumbawa', 18),
(286, 'Kabupaten Sumbawa Barat', 18),
(287, 'Kota Bima', 18),
(288, 'Kota Mataram', 18),
(289, 'Kabupaten Alor', 19),
(290, 'Kabupaten Belu', 19),
(291, 'Kabupaten Ende', 19),
(292, 'Kabupaten Flores Timur', 19),
(293, 'Kabupaten Kupang', 19),
(294, 'Kabupaten Lembata', 19),
(295, 'Kabupaten Manggarai', 19),
(296, 'Kabupaten Manggarai Barat', 19),
(297, 'Kabupaten Manggarai Timur', 19),
(298, 'Kabupaten Nagekeo', 19),
(299, 'Kabupaten Ngada', 19),
(300, 'Kabupaten Rote Ndao', 19),
(301, 'Kabupaten Sabu Raijua', 19),
(302, 'Kabupaten Sikka', 19),
(303, 'Kabupaten Sumba Barat', 19),
(304, 'Kabupaten Sumba Barat Daya', 19),
(305, 'Kabupaten Sumba Tengah', 19),
(306, 'Kabupaten Sumba Timur', 19),
(307, 'Kabupaten Timor Tengah Selatan', 19),
(308, 'Kabupaten Timor Tengah Utara', 19),
(309, 'Kota Kupang', 19),
(310, 'Kabupaten Bengkayang', 20),
(311, 'Kabupaten Kapuas Hulu', 20),
(312, 'Kabupaten Kayong Utara', 20),
(313, 'Kabupaten Ketapang', 20),
(314, 'Kabupaten Kubu Raya', 20),
(315, 'Kabupaten Landak', 20),
(316, 'Kabupaten Melawi', 20),
(317, 'Kabupaten Pontianak', 20),
(318, 'Kabupaten Sambas', 20),
(319, 'Kabupaten Sanggau', 20),
(320, 'Kabupaten Sekadau', 20),
(321, 'Kabupaten Sintang', 20),
(322, 'Kota Pontianak', 20),
(323, 'Kota Singkawang', 20),
(324, 'Kabupaten Barito Selatan', 21),
(325, 'Kabupaten Barito Timur', 21),
(326, 'Kabupaten Barito Utara', 21),
(327, 'Kabupaten Gunung Mas', 21),
(328, 'Kabupaten Kapuas', 21),
(329, 'Kabupaten Katingan', 21),
(330, 'Kabupaten Kotawaringin Barat', 21),
(331, 'Kabupaten Kotawaringin Timur', 21),
(332, 'Kabupaten Lamandau', 21),
(333, 'Kabupaten Murung Raya', 21),
(334, 'Kabupaten Pulang Pisau', 21),
(335, 'Kabupaten Seruyan', 21),
(336, 'Kabupaten Sukamara', 21),
(337, 'Kota Palangkaraya', 21),
(338, 'Kabupaten Balangan', 22),
(339, 'Kabupaten Banjar', 22),
(340, 'Kabupaten Barito Kuala', 22),
(341, 'Kabupaten Hulu Sungai Selatan', 22),
(342, 'Kabupaten Hulu Sungai Tengah', 22),
(343, 'Kabupaten Hulu Sungai Utara', 22),
(344, 'Kabupaten Kota Baru', 22),
(345, 'Kabupaten Tabalong', 22),
(346, 'Kabupaten Tanah Bumbu', 22),
(347, 'Kabupaten Tanah Laut', 22),
(348, 'Kabupaten Tapin', 22),
(349, 'Kota Banjar Baru', 22),
(350, 'Kota Banjarmasin', 22),
(351, 'Kabupaten Berau', 23),
(352, 'Kabupaten Bulongan', 23),
(353, 'Kabupaten Kutai Barat', 23),
(354, 'Kabupaten Kutai Kartanegara', 23),
(355, 'Kabupaten Kutai Timur', 23),
(356, 'Kabupaten Malinau', 23),
(357, 'Kabupaten Nunukan', 23),
(358, 'Kabupaten Paser', 23),
(359, 'Kabupaten Penajam Paser Utara', 23),
(360, 'Kabupaten Tana Tidung', 23),
(361, 'Kota Balikpapan', 23),
(362, 'Kota Bontang', 23),
(363, 'Kota Samarinda', 23),
(364, 'Kota Tarakan', 23),
(365, 'Kabupaten Boalemo', 24),
(366, 'Kabupaten Bone Bolango', 24),
(367, 'Kabupaten Gorontalo', 24),
(368, 'Kabupaten Gorontalo Utara', 24),
(369, 'Kabupaten Pohuwato', 24),
(370, 'Kota Gorontalo', 24),
(371, 'Kabupaten Bantaeng', 25),
(372, 'Kabupaten Barru', 25),
(373, 'Kabupaten Bone', 25),
(374, 'Kabupaten Bulukumba', 25),
(375, 'Kabupaten Enrekang', 25),
(376, 'Kabupaten Gowa', 25),
(377, 'Kabupaten Jeneponto', 25),
(378, 'Kabupaten Luwu', 25),
(379, 'Kabupaten Luwu Timur', 25),
(380, 'Kabupaten Luwu Utara', 25),
(381, 'Kabupaten Maros', 25),
(382, 'Kabupaten Pangkajene Kepulauan', 25),
(383, 'Kabupaten Pinrang', 25),
(384, 'Kabupaten Selayar', 25),
(385, 'Kabupaten Sidenreng Rappang', 25),
(386, 'Kabupaten Sinjai', 25),
(387, 'Kabupaten Soppeng', 25),
(388, 'Kabupaten Takalar', 25),
(389, 'Kabupaten Tana Toraja', 25),
(390, 'Kabupaten Toraja Utara', 25),
(391, 'Kabupaten Wajo', 25),
(392, 'Kota Makassar', 25),
(393, 'Kota Palopo', 25),
(394, 'Kota Pare-pare', 25),
(395, 'Kabupaten Bombana', 26),
(396, 'Kabupaten Buton', 26),
(397, 'Kabupaten Buton Utara', 26),
(398, 'Kabupaten Kolaka', 26),
(399, 'Kabupaten Kolaka Utara', 26),
(400, 'Kabupaten Konawe', 26),
(401, 'Kabupaten Konawe Selatan', 26),
(402, 'Kabupaten Konawe Utara', 26),
(403, 'Kabupaten Muna', 26),
(404, 'Kabupaten Wakatobi', 26),
(405, 'Kota Bau-bau', 26),
(406, 'Kota Kendari', 26),
(407, 'Kabupaten Banggai', 27),
(408, 'Kabupaten Banggai Kepulauan', 27),
(409, 'Kabupaten Buol', 27),
(410, 'Kabupaten Donggala', 27),
(411, 'Kabupaten Morowali', 27),
(412, 'Kabupaten Parigi Moutong', 27),
(413, 'Kabupaten Poso', 27),
(414, 'Kabupaten Sigi', 27),
(415, 'Kabupaten Tojo Una-Una', 27),
(416, 'Kabupaten Toli Toli', 27),
(417, 'Kota Palu', 27),
(418, 'Kabupaten Bolaang Mangondow', 28),
(419, 'Kabupaten Bolaang Mangondow Selatan', 28),
(420, 'Kabupaten Bolaang Mangondow Timur', 28),
(421, 'Kabupaten Bolaang Mangondow Utara', 28),
(422, 'Kabupaten Kepulauan Sangihe', 28),
(423, 'Kabupaten Kepulauan Siau Tagulandang Bia', 28),
(424, 'Kabupaten Kepulauan Talaud', 28),
(425, 'Kabupaten Minahasa', 28),
(426, 'Kabupaten Minahasa Selatan', 28),
(427, 'Kabupaten Minahasa Tenggara', 28),
(428, 'Kabupaten Minahasa Utara', 28),
(429, 'Kota Bitung', 28),
(430, 'Kota Kotamobagu', 28),
(431, 'Kota Manado', 28),
(432, 'Kota Tomohon', 28),
(433, 'Kabupaten Majene', 29),
(434, 'Kabupaten Mamasa', 29),
(435, 'Kabupaten Mamuju', 29),
(436, 'Kabupaten Mamuju Utara', 29),
(437, 'Kabupaten Polewali Mandar', 29),
(438, 'Kabupaten Buru', 30),
(439, 'Kabupaten Buru Selatan', 30),
(440, 'Kabupaten Kepulauan Aru', 30),
(441, 'Kabupaten Maluku Barat Daya', 30),
(442, 'Kabupaten Maluku Tengah', 30),
(443, 'Kabupaten Maluku Tenggara', 30),
(444, 'Kabupaten Maluku Tenggara Barat', 30),
(445, 'Kabupaten Seram Bagian Barat', 30),
(446, 'Kabupaten Seram Bagian Timur', 30),
(447, 'Kota Ambon', 30),
(448, 'Kota Tual', 30),
(449, 'Kabupaten Halmahera Barat', 31),
(450, 'Kabupaten Halmahera Selatan', 31),
(451, 'Kabupaten Halmahera Tengah', 31),
(452, 'Kabupaten Halmahera Timur', 31),
(453, 'Kabupaten Halmahera Utara', 31),
(454, 'Kabupaten Kepulauan Sula', 31),
(455, 'Kabupaten Pulau Morotai', 31),
(456, 'Kota Ternate', 31),
(457, 'Kota Tidore Kepulauan', 31),
(458, 'Kabupaten Fakfak', 32),
(459, 'Kabupaten Kaimana', 32),
(460, 'Kabupaten Manokwari', 32),
(461, 'Kabupaten Maybrat', 32),
(462, 'Kabupaten Raja Ampat', 32),
(463, 'Kabupaten Sorong', 32),
(464, 'Kabupaten Sorong Selatan', 32),
(465, 'Kabupaten Tambrauw', 32),
(466, 'Kabupaten Teluk Bintuni', 32),
(467, 'Kabupaten Teluk Wondama', 32),
(468, 'Kota Sorong', 32),
(469, 'Kabupaten Merauke', 33),
(470, 'Kabupaten Jayawijaya', 33),
(471, 'Kabupaten Nabire', 33),
(472, 'Kabupaten Kepulauan Yapen', 33),
(473, 'Kabupaten Biak Numfor', 33),
(474, 'Kabupaten Paniai', 33),
(475, 'Kabupaten Puncak Jaya', 33),
(476, 'Kabupaten Mimika', 33),
(477, 'Kabupaten Boven Digoel', 33),
(478, 'Kabupaten Mappi', 33),
(479, 'Kabupaten Asmat', 33),
(480, 'Kabupaten Yahukimo', 33),
(481, 'Kabupaten Pegunungan Bintang', 33),
(482, 'Kabupaten Tolikara', 33),
(483, 'Kabupaten Sarmi', 33),
(484, 'Kabupaten Keerom', 33),
(485, 'Kabupaten Waropen', 33),
(486, 'Kabupaten Jayapura', 33),
(487, 'Kabupaten Deiyai', 33),
(488, 'Kabupaten Dogiyai', 33),
(489, 'Kabupaten Intan Jaya', 33),
(490, 'Kabupaten Lanny Jaya', 33),
(491, 'Kabupaten Mamberamo Raya', 33),
(492, 'Kabupaten Mamberamo Tengah', 33),
(493, 'Kabupaten Nduga', 33),
(494, 'Kabupaten Puncak', 33),
(495, 'Kabupaten Supiori', 33),
(496, 'Kabupaten Yalimo', 33),
(497, 'Kota Jayapura', 33);

-- --------------------------------------------------------

--
-- Table structure for table `log_pengiriman`
--

CREATE TABLE `log_pengiriman` (
  `id` int(11) NOT NULL,
  `member_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `tarif_id` int(11) DEFAULT NULL,
  `berat` int(11) NOT NULL,
  `layanan_yang_dipilih` varchar(50) NOT NULL,
  `tarif_akhir` decimal(10,0) NOT NULL,
  `tanggal` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `member`
--

CREATE TABLE `member` (
  `id` int(11) NOT NULL,
  `nama_depan` varchar(50) NOT NULL,
  `nama_belakang` varchar(50) NOT NULL,
  `jenis_kelamin` tinyint(4) NOT NULL,
  `email` varchar(200) NOT NULL,
  `alamat` text NOT NULL,
  `provinsi` varchar(50) NOT NULL,
  `kota` varchar(50) NOT NULL,
  `kode_pos` varchar(10) NOT NULL,
  `telepon` varchar(50) NOT NULL,
  `tanggal_lahir` varchar(10) NOT NULL DEFAULT '0000-00-00',
  `password` varchar(300) NOT NULL,
  `tanggal` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `member`
--

INSERT INTO `member` (`id`, `nama_depan`, `nama_belakang`, `jenis_kelamin`, `email`, `alamat`, `provinsi`, `kota`, `kode_pos`, `telepon`, `tanggal_lahir`, `password`, `tanggal`) VALUES
(1, 'Fachri Store', '', 1, 'freza1296@gmail.com', 'Jln.H.Yahya Nuih no 23A, Margonda, Depok,', 'Jawa Barat', 'Depok', '16245', '081511366601', '1996-22-12', 'b8c88ce4cfe2269ab72cbad9ea75b4da76df30f2e7c831f8ef7397a2a16eac26391a1140619ea6ecdeb2bbe02ec7192108018f2e7d748d4d343701c5ae691b48', '2019-03-28 22:14:19'),
(4, 'John', 'Wick', 1, 'Johnwick@gmail.com', 'Depok', '1', '1', '15822', '0815104366602', '1990-6-10', '4f632b4690c44cef65e108e577f123f86fb508d58f99ab632158982294b816aff6e6e8952535da65636f50da28a1514a2c6718ce95e269a7d11c7e11aabb025b', '2019-04-25 08:17:55'),
(5, 'Reza', 'Fachri', 1, 'rezafachri22@gmail.com', 'dasana indah, tangerang, banten', '11', '155', '15820', '08151138320', '1995-12-22', 'cab231e41f11d101b7345da3717b2c7e10969f68ab5b91539333dddf87f095117e20633e9ae69c2e8f4ec2e45da8024a0bae432afa0fe079e19faca9d2cd0ba1', '2019-05-09 05:13:20');

-- --------------------------------------------------------

--
-- Table structure for table `nomor_rekening`
--

CREATE TABLE `nomor_rekening` (
  `id` int(11) NOT NULL,
  `nomor_rekening` varchar(100) NOT NULL,
  `nama_pemegang` varchar(100) NOT NULL,
  `bank` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `nomor_rekening`
--

INSERT INTO `nomor_rekening` (`id`, `nomor_rekening`, `nama_pemegang`, `bank`) VALUES
(1, '080989999', 'Fachri R', 'mandiri'),
(2, '14045123', 'pembeli kedua', 'dki');

-- --------------------------------------------------------

--
-- Table structure for table `order`
--

CREATE TABLE `order` (
  `id` int(11) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `kode` varchar(50) NOT NULL,
  `member_id` int(11) NOT NULL,
  `total_product` int(11) NOT NULL,
  `total_qty` int(11) NOT NULL,
  `total_harga` decimal(10,0) NOT NULL,
  `tarif_pengiriman_id` int(11) NOT NULL DEFAULT '0',
  `tanggal` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `order`
--

INSERT INTO `order` (`id`, `status`, `kode`, `member_id`, `total_product`, `total_qty`, `total_harga`, `tarif_pengiriman_id`, `tanggal`) VALUES
(23, 0, '239Mlj0DS', 1, 3, 3, '2400000', 6284, '2019-08-20 07:29:47'),
(24, 0, '24BohrJ3p', 1, 1, 1, '550000', 6335, '2019-08-20 07:33:32'),
(25, 0, '252kUMY1Z', 1, 3, 3, '2370000', 6361, '2019-08-20 08:18:58'),
(26, 0, '26ayxKsYb', 1, 2, 3, '2440000', 6264, '2019-08-20 09:50:15');

-- --------------------------------------------------------

--
-- Table structure for table `order_detail`
--

CREATE TABLE `order_detail` (
  `id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `options` varchar(50) NOT NULL,
  `qty` int(11) NOT NULL,
  `sub_total` decimal(10,0) NOT NULL,
  `tanggal` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `order_detail`
--

INSERT INTO `order_detail` (`id`, `order_id`, `product_id`, `options`, `qty`, `sub_total`, `tanggal`) VALUES
(1, 6, 1, 'Silver', 1, '120000', '0000-00-00 00:00:00'),
(2, 6, 2, 'Black', 1, '2200000', '0000-00-00 00:00:00'),
(3, 7, 1, 'Silver', 1, '120000', '0000-00-00 00:00:00'),
(4, 7, 2, 'Black', 1, '2200000', '0000-00-00 00:00:00'),
(5, 8, 1, 'Silver', 1, '120000', '0000-00-00 00:00:00'),
(6, 8, 2, 'Black', 1, '2200000', '0000-00-00 00:00:00'),
(7, 9, 1, 'B', 1, '120000', '0000-00-00 00:00:00'),
(8, 9, 2, 'l', 1, '2200000', '0000-00-00 00:00:00'),
(9, 9, 3, 'Grey', 1, '150000', '0000-00-00 00:00:00'),
(10, 10, 1, 'Silver', 1, '120000', '0000-00-00 00:00:00'),
(11, 10, 3, 'Grey', 1, '150000', '0000-00-00 00:00:00'),
(12, 10, 2, 'Black', 1, '2200000', '0000-00-00 00:00:00'),
(13, 11, 5, 'Black', 1, '50000', '0000-00-00 00:00:00'),
(14, 11, 4, 'White', 1, '550000', '0000-00-00 00:00:00'),
(15, 12, 5, 'Black', 1, '50000', '0000-00-00 00:00:00'),
(16, 12, 4, 'White', 1, '550000', '0000-00-00 00:00:00'),
(17, 13, 5, 'Black', 1, '50000', '0000-00-00 00:00:00'),
(18, 13, 4, 'White', 1, '550000', '0000-00-00 00:00:00'),
(19, 14, 3, 'Grey', 1, '150000', '0000-00-00 00:00:00'),
(20, 15, 1, 'Silver', 1, '120000', '0000-00-00 00:00:00'),
(21, 16, 2, 'Black', 1, '2200000', '0000-00-00 00:00:00'),
(22, 17, 1, 'Silver', 1, '120000', '0000-00-00 00:00:00'),
(23, 18, 2, 'Black', 1, '2200000', '0000-00-00 00:00:00'),
(24, 19, 6, 'Pink', 1, '150000', '0000-00-00 00:00:00'),
(25, 20, 5, 'Black', 1, '50000', '0000-00-00 00:00:00'),
(26, 22, 1, 'Silver', 1, '120000', '0000-00-00 00:00:00'),
(27, 23, 3, 'Grey', 1, '150000', '0000-00-00 00:00:00'),
(28, 23, 2, 'Black', 1, '2200000', '0000-00-00 00:00:00'),
(29, 23, 5, 'Black', 1, '50000', '0000-00-00 00:00:00'),
(30, 24, 4, 'White', 1, '550000', '0000-00-00 00:00:00'),
(31, 25, 1, 'Silver', 1, '120000', '2019-08-20 08:18:58'),
(32, 25, 2, 'Black', 1, '2200000', '2019-08-20 08:18:58'),
(33, 25, 5, 'Black', 1, '50000', '2019-08-20 08:18:58'),
(34, 26, 1, 'Silver', 2, '240000', '2019-08-20 09:50:15'),
(35, 26, 2, 'Black', 1, '2200000', '2019-08-20 09:50:16');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `image1` varchar(255) NOT NULL,
  `image2` varchar(255) NOT NULL,
  `price` decimal(10,0) NOT NULL,
  `color` varchar(255) NOT NULL,
  `category_id` int(11) NOT NULL,
  `published_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `slug`, `description`, `image1`, `image2`, `price`, `color`, `category_id`, `published_date`) VALUES
(1, 'Optical Zoom', 'Optical-Zoom', 'orem ipsum dolor sit amet, consectetur adipiscing elit. Duis in ornare leo. Cras enim massa, ultrices ac dolor vitae, posuere lacinia nisi. Sed nulla nisi, bibendum ut cursus id, mattis quis lectus. Ut dolor magna, iaculis non eros non, ultrices rhoncus dui. Aliquam erat volutpat. Quisque consequat tempus tortor sed consequat', 'item1-small.jpg', 'item1-big.jpg', '120000', 'Silver, Gold, Black', 1, '2019-01-18 00:00:00'),
(2, 'New Apple Watch', 'New-Apple-Watch', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis in ornare leo. Cras enim massa, ultrices ac dolor vitae, posuere lacinia nisi. Sed nulla nisi, bibendum ut cursus id, mattis quis lectus. Ut dolor magna, iaculis non eros non, ultrices rhoncus dui. Aliquam erat volutpat. Quisque consequat tempus tortor sed consequat. Donec finibus enim vel enim tempor luctus.', 'item2-small.jpg', 'item2-big.jpg', '2200000', 'Black, White', 2, '2019-01-19 00:00:00'),
(3, 'Simple Earphone', 'Simple-Earphone', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis in ornare leo. Cras enim massa, ultrices ac dolor vitae, posuere lacinia nisi. Sed nulla nisi, bibendum ut cursus id, mattis quis lectus. Ut dolor magna, iaculis non eros non, ultrices rhoncus dui. Aliquam erat volutpat. Quisque consequat tempus tortor sed consequat. Donec finibus enim vel enim tempor luctus.', 'item3-small.jpg', 'item3-big.jpg', '150000', 'Grey, Black, Gold', 3, '2019-01-20 00:00:00'),
(4, 'Stereo Headset', 'Stereo-Headset', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis in ornare leo. Cras enim massa, ultrices ac dolor vitae, posuere lacinia nisi. Sed nulla nisi, bibendum ut cursus id, mattis quis lectus. Ut dolor magna, iaculis non eros non, ultrices rhoncus dui. Aliquam erat volutpat. Quisque consequat tempus tortor sed consequat. Donec finibus enim vel enim tempor luctus.', 'item4-small.jpg', 'item4-big.jpg', '550000', 'White, Black', 4, '2019-01-21 00:00:00'),
(5, 'Belkin Armband', 'Belkin-Armband', '', 'item5-small.jpg', 'item5-big.jpg', '50000', 'Black, Grey, Blue', 5, '2019-01-22 00:00:00'),
(6, 'Lencca Minky White', 'Lencca-Minky-White', '', 'item6-small.jpg', 'item6-big.jpg', '150000', 'Pink, Red, Black', 6, '2019-01-23 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `provinsi`
--

CREATE TABLE `provinsi` (
  `id` int(3) NOT NULL,
  `nama_provinsi` varchar(30) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `provinsi`
--

INSERT INTO `provinsi` (`id`, `nama_provinsi`) VALUES
(1, 'Nanggroe Aceh Darussalam'),
(2, 'Sumatera Utara'),
(3, 'Sumatera Barat'),
(4, 'Riau'),
(5, 'Kepulauan Riau'),
(6, 'Kepulauan Bangka-Belitung'),
(7, 'Jambi'),
(8, 'Bengkulu'),
(9, 'Sumatera Selatan'),
(10, 'Lampung'),
(11, 'Banten'),
(12, 'DKI Jakarta'),
(13, 'Jawa Barat'),
(14, 'Jawa Tengah'),
(15, 'Daerah Istimewa Yogyakarta  '),
(16, 'Jawa Timur'),
(17, 'Bali'),
(18, 'Nusa Tenggara Barat'),
(19, 'Nusa Tenggara Timur'),
(20, 'Kalimantan Barat'),
(21, 'Kalimantan Tengah'),
(22, 'Kalimantan Selatan'),
(23, 'Kalimantan Timur'),
(24, 'Gorontalo'),
(25, 'Sulawesi Selatan'),
(26, 'Sulawesi Tenggara'),
(27, 'Sulawesi Tengah'),
(28, 'Sulawesi Utara'),
(29, 'Sulawesi Barat'),
(30, 'Maluku'),
(31, 'Maluku Utara'),
(32, 'Papua Barat'),
(33, 'Papua');

-- --------------------------------------------------------

--
-- Table structure for table `ship_kota`
--

CREATE TABLE `ship_kota` (
  `kota_id` int(11) NOT NULL,
  `kota_nama` varchar(50) DEFAULT NULL,
  `kota_prov_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ship_kota`
--

INSERT INTO `ship_kota` (`kota_id`, `kota_nama`, `kota_prov_id`) VALUES
(1, 'Mataram', 22),
(2, 'Bima', 22),
(3, 'Dompu', 22),
(4, 'Lombok Tengah', 22),
(5, 'Lombok Timur', 22),
(6, 'Sumbawa', 22),
(7, 'Lombok Barat', 22),
(8, 'Sumbawa Barat', 22),
(9, 'Ambon', 20),
(10, 'Maluku Tengah', 20),
(11, 'Maluku Tenggara', 20),
(12, 'Buru', 20),
(13, 'Kepulauan Aru', 20),
(14, 'Seram Bagian Barat', 20),
(15, 'Seram Bagian Timur', 20),
(16, 'Maluku Tenggara Barat', 20),
(17, 'Banjarmasin', 13),
(18, 'Hulu Sungai Tengah', 13),
(19, 'Hulu Sungai Selatan', 13),
(20, 'Baru', 13),
(21, 'Tabalong', 13),
(22, 'Banjarbaru', 13),
(23, 'Hulu Sungai Utara', 13),
(24, 'Barito Kuala', 13),
(26, 'Tanah Laut', 13),
(27, 'Tampin', 13),
(28, 'Barito Utara', 13),
(29, 'Barito Timur', 13),
(30, 'Murung Raya', 13),
(31, 'Barito Selatan', 13),
(32, 'Balangan', 13),
(33, 'Tanah Bambu', 13),
(34, 'Bandung', 9),
(35, 'Cimahi', 9),
(36, 'Sumedang', 9),
(37, 'Tasikmalaya', 9),
(38, 'Banjar', 9),
(39, 'Ciamis', 9),
(40, 'Garut', 9),
(41, 'Purwakarta', 9),
(42, 'Bandung Barat', 9),
(43, 'Subang', 9),
(44, 'Bekasi', 9),
(45, 'Bengkulu', 4),
(46, 'Bengkulu Utara', 4),
(47, 'Rejang Lebong', 4),
(48, 'Bengkulu Selatan', 4),
(49, 'Kaur', 4),
(50, 'Kepahiang', 4),
(51, 'Lebong', 4),
(53, 'Seluma', 4),
(54, 'Bogor', 9),
(55, 'Balikpapan', 15),
(56, 'Kutai Kartanegara', 15),
(57, 'Paser', 15),
(58, 'Berau', 15),
(59, 'Panajam Paser Utara', 15),
(60, 'Bontang', 15),
(61, 'Kutai Timur', 15),
(62, 'Batam', 18),
(63, 'Lingga', 18),
(64, 'Natuna', 18),
(65, 'Karimun', 18),
(66, 'Banda Aceh', 1),
(67, 'Langsa', 1),
(68, 'Lhokseumawe', 1),
(69, 'Aceh Besar', 1),
(70, 'Bireuen', 1),
(71, 'Aceh Tenggara', 1),
(72, 'Aceh Barat', 1),
(73, 'Pidie', 1),
(74, 'Aceh Tengah', 1),
(75, 'Aceh Selatan', 1),
(76, 'Sabang', 1),
(77, 'Aceh Barat Daya', 1),
(78, 'Aceh Jaya', 1),
(79, 'Aceh Singkil', 1),
(80, 'Aceh Tamiang', 1),
(81, 'Aceh Timur', 1),
(82, 'Aceh Utara', 1),
(83, 'Bener Meriah', 1),
(84, 'Gayo Lues', 1),
(85, 'Nagan Raya', 1),
(86, 'Pidie Jaya', 1),
(87, 'Simeuleu', 1),
(88, 'Subulussalam', 1),
(89, 'Cirebon', 9),
(90, 'Indramayu', 9),
(91, 'Kuningan', 9),
(92, 'Majalengka', 9),
(93, 'Jakarta', 6),
(94, 'Jakarta Barat', 6),
(95, 'Jakarta Selatan', 6),
(96, 'Jakarta Pusat', 6),
(97, 'Jakarta Utara', 6),
(98, 'Jakarta Timur', 6),
(100, 'Cilegon', 3),
(101, 'Pandeglang', 3),
(102, 'Lebak', 3),
(103, 'Serang', 3),
(104, 'Cilacap', 10),
(105, 'Jambi', 8),
(106, 'Tanjung Jabung Barat', 8),
(107, 'Merangin', 8),
(108, 'Batang Hari', 8),
(109, 'Bungo', 8),
(110, 'Kerinci', 8),
(111, 'Muaro Jambi', 8),
(112, 'Sarolangun', 8),
(113, 'Tanjung Jabung Timur', 8),
(114, 'Tebo', 8),
(115, 'Jayapura', 24),
(116, 'Biak Numfor', 24),
(117, 'Merauke', 24),
(118, 'Yapen Waropen', 24),
(119, 'Jayawijaya', 24),
(120, 'Asmat', 24),
(121, 'Boven Digoel', 24),
(122, 'Keerom', 24),
(123, 'Pegunungan Bintang', 24),
(124, 'Sarmi', 24),
(125, 'Supiori', 24),
(126, 'Talikora', 24),
(127, 'Waropen', 24),
(128, 'Yahukimo', 24),
(129, 'Mamberamo Raya', 24),
(130, 'Depok', 9),
(131, 'Denpasar', 2),
(132, 'Karangasem', 2),
(133, 'Bangli', 2),
(134, 'Gianyar', 2),
(135, 'Jembrana', 2),
(136, 'Klungkung', 2),
(137, 'Buleleng', 2),
(138, 'Tabanan', 2),
(139, 'Badung', 2),
(140, 'Gorontalo', 7),
(141, 'Boalemo', 7),
(142, 'Bone Bolango', 7),
(143, 'Gorontalo Utara', 7),
(144, 'Pahuwalo', 7),
(145, 'Jember', 11),
(146, 'Banyuwangi', 11),
(147, 'Bondowoso', 11),
(148, 'Yogyakarta', 5),
(149, 'Bantul', 5),
(150, 'Sleman', 5),
(151, 'Kulon Progo', 5),
(152, 'Gunung Kidul', 5),
(153, 'Kendari', 30),
(155, 'Kolaka', 30),
(156, 'Muna', 30),
(157, 'Konawe', 30),
(158, 'Bombana', 30),
(160, 'Kolaka Utara', 30),
(162, 'Wakatobi', 30),
(163, 'Kediri', 11),
(164, 'Kupang', 23),
(165, 'Sumba Tengah', 23),
(166, 'Belu', 23),
(167, 'Alor', 23),
(168, 'Timor Tengah Utara', 23),
(169, 'Flores Timur', 23),
(170, 'Sikka', 23),
(171, 'Manggarai', 23),
(172, 'Timor Tengah Selatan', 23),
(173, 'Ende', 23),
(174, 'Ngada', 23),
(175, 'Sumba Timur', 23),
(176, 'Sumba Barat', 23),
(177, 'Manggarai Barat', 23),
(178, 'Manggarai Timur', 23),
(179, 'Nagekeo', 23),
(180, 'Rote Ndao', 23),
(181, 'Sumba Barat Daya', 23),
(182, 'Lembata', 23),
(183, 'Karawang', 9),
(184, 'Manado', 31),
(185, 'Bolaang Mongondow', 31),
(186, 'Kepulauan Sangihe', 31),
(187, 'Minahasa', 31),
(188, 'Bitung', 31),
(189, 'Bolaang Mongondow Utara', 31),
(190, 'Kepulauan Talaud', 31),
(191, 'Minahasa Utara', 31),
(192, 'Minahasa Selatan', 31),
(193, 'Minahasa Tenggara', 31),
(194, 'Tomohon', 31),
(195, 'Madiun', 11),
(196, 'Magetan', 11),
(197, 'Ngawi', 11),
(198, 'Pacitan', 11),
(199, 'Ponorogo', 11),
(200, 'Medan', 34),
(201, 'Asahan', 34),
(202, 'Tapanuli Tengah', 34),
(203, 'Sibolga', 34),
(204, 'Dairi', 34),
(205, 'Deli Serdang', 34),
(206, 'Toba Samosir', 34),
(207, 'Binjai', 34),
(208, 'Nias', 34),
(209, 'Padang Sidempuan', 34),
(210, 'Simalungun', 34),
(211, 'Labuhan Batu', 34),
(212, 'Karo', 34),
(213, 'Langkat', 34),
(214, 'Tapanuli Utara', 34),
(215, 'Tebing Tinggi', 34),
(216, 'Padang Lawas Utara', 34),
(217, 'Batubara', 34),
(218, 'Humbang Hasudutan', 34),
(219, 'Mandailing Natal', 34),
(220, 'Nias Selatan', 34),
(221, 'Padang Lawas', 34),
(222, 'Pakpak Barat', 34),
(223, 'Samosir', 34),
(224, 'Serdang Bedagai', 34),
(225, 'Tapanuli Selatan', 34),
(226, 'Tanjung Balai', 34),
(227, 'Pematangsiantar', 34),
(228, 'Magelang', 10),
(229, 'Kebumen', 10),
(230, 'Wonosobo', 10),
(231, 'Purworejo', 10),
(232, 'Temanggung', 10),
(233, 'Mojokerto', 11),
(234, 'Sidoarjo', 11),
(235, 'Malang', 11),
(236, 'Blitar', 11),
(237, 'Batu', 11),
(238, 'Nabire', 24),
(239, 'Dogiyai', 24),
(240, 'Paniai', 24),
(241, 'Puncak Jaya', 24),
(242, 'Mappi', 24),
(243, 'Intan Jaya', 24),
(244, 'Deiyai', 24),
(245, 'Probolinggo', 11),
(246, 'Lumajang', 11),
(248, 'Padang', 32),
(249, 'Tanah Datar', 32),
(250, 'Bukit Tinggi', 32),
(251, 'Pasaman', 32),
(252, 'Pesisir Selatan', 32),
(253, 'Padang Pariaman', 32),
(254, 'Pariaman', 32),
(255, 'Payakumbuh', 32),
(256, 'Sawahlunto', 32),
(257, 'Solok', 32),
(258, 'Padang Panjang', 32),
(259, 'Dharmasraya', 32),
(260, 'Lima Puluh Kota', 32),
(261, 'Kepulauan Mentawai', 32),
(262, 'Pasaman Barat', 32),
(263, 'Solok Selatan', 32),
(264, 'Sijunjung', 32),
(265, 'Agam', 32),
(266, 'Pasuruan', 11),
(267, 'Pangkal Pinang', 17),
(268, 'Bangka', 17),
(269, 'Bangka Barat', 17),
(270, 'Bangka Tengah', 17),
(271, 'Bangka Selatan', 17),
(272, 'Pekanbaru', 26),
(273, 'Dumai', 26),
(274, 'Kampar', 26),
(275, 'Bengkalis', 26),
(276, 'Indragiri Hulu', 26),
(277, 'Indragiri Hilir', 26),
(278, 'Rokan Hilir', 26),
(279, 'Kuantan Sengingi', 26),
(280, 'Palalawan', 26),
(281, 'Rokan Hulu', 26),
(282, 'Siak', 26),
(283, 'Meranti', 26),
(284, 'Palangkaraya', 14),
(285, 'Katingan', 14),
(286, 'Kapuas', 14),
(287, 'Gunung Mas', 14),
(288, 'Seruyan', 14),
(289, 'Kotawaringin Barat', 14),
(290, 'Kotawaringin Timur', 14),
(291, 'Lamandau', 14),
(292, 'Pulang Pisau', 14),
(293, 'Sukamara', 14),
(294, 'Palembang', 33),
(295, 'Musi Rawas', 33),
(296, 'Ogan Komering Ulu', 33),
(297, 'Ogan Komering Ilir', 33),
(298, 'Lahat', 33),
(299, 'Muara Enim', 33),
(300, 'Pagar Alam', 33),
(301, 'Prabumulih', 33),
(302, 'Musi Banyuasin', 33),
(303, 'Banyuasin', 33),
(304, 'Empat Lawang', 33),
(305, 'Ogan Ilir', 33),
(306, 'Ogan Komering Ulu Timur', 33),
(307, 'Ogan Komering Ulu Selatan', 33),
(308, 'Lubuk Linggau', 33),
(309, 'Palu', 29),
(310, 'Banggai', 29),
(311, 'Poso', 29),
(313, 'Banggai Kepulauan', 29),
(314, 'Buol', 29),
(315, 'Donggala', 29),
(316, 'Morowali', 29),
(317, 'Parigi Moutong', 29),
(319, 'Pontianak', 12),
(320, 'Ketapang', 12),
(321, 'Sanggau', 12),
(322, 'Singkawang', 12),
(323, 'Sintang', 12),
(324, 'Kapuas Hulu', 12),
(325, 'Bengkayang', 12),
(326, 'Landak', 12),
(327, 'Melawi', 12),
(328, 'Sambas', 12),
(329, 'Sekadau', 12),
(330, 'Kubu Raya', 12),
(331, 'Kayong Utara', 12),
(332, 'Samarinda', 15),
(333, 'Kutai Kartanegara', 15),
(334, 'Kutai Barat', 15),
(335, 'Sukabumi', 9),
(336, 'Cianjur', 9),
(337, 'Surakarta', 10),
(338, 'Boyolali', 10),
(339, 'Karang Anyar', 10),
(340, 'Klaten', 10),
(341, 'Sragen', 10),
(342, 'Sukoharjo', 10),
(343, 'Wonogiri', 10),
(344, 'Manokwari', 25),
(345, 'Sorong', 25),
(347, 'Kaimana', 25),
(348, 'Raja Ampat', 25),
(349, 'Sorong Selatan', 25),
(350, 'Teluk Bintuni', 25),
(351, 'Teluk Wondama', 25),
(352, 'Semarang', 10),
(353, 'Jepara', 10),
(354, 'Kudus', 10),
(355, 'Pekalongan', 10),
(356, 'Banyumas', 10),
(357, 'Batang', 10),
(358, 'Blora', 10),
(359, 'Bojonegoro', 10),
(360, 'Brebes', 10),
(361, 'Demak', 10),
(362, 'Kendal', 10),
(363, 'Pati', 10),
(364, 'Pemalang', 10),
(365, 'Grobogan', 10),
(366, 'Rembang', 10),
(367, 'Salatiga', 10),
(368, 'Tegal', 10),
(369, 'Purbalingga', 10),
(370, 'Banjarnegara', 10),
(371, 'Surabaya', 11),
(372, 'Gresik', 11),
(373, 'Lamongan', 11),
(374, 'Bangkalan', 11),
(375, 'Jombang', 11),
(376, 'Nganjuk', 11),
(377, 'Pamekasan', 11),
(378, 'Sampang', 11),
(379, 'Sidoarjo', 11),
(380, 'Sumenep', 11),
(381, 'Tuban', 11),
(382, 'Tulungagung', 11),
(383, 'Trenggalek', 11),
(384, 'Tangerang', 3),
(385, 'Mimika', 24),
(386, 'Belitung', 17),
(387, 'Belitung Timur', 17),
(388, 'Bandar Lampung', 19),
(389, 'Lampung Selatan', 19),
(390, 'Lampung Utara', 19),
(391, 'Metro', 19),
(392, 'Lampung Barat', 19),
(393, 'Lampung Tengah', 19),
(394, 'Lampung Timur', 19),
(395, 'Way Kanan', 19),
(396, 'Tulang Bawang', 19),
(397, 'Tanggamus', 19),
(398, 'Pesawaran', 19),
(399, 'Tanjung Pinang', 18),
(400, 'Bintan', 18),
(401, 'Tarakan', 15),
(402, 'Bulungan', 15),
(403, 'Malinau', 15),
(404, 'Nunukan', 15),
(405, 'Tana Tidung', 15),
(406, 'Ternate', 21),
(407, 'Halmahera Barat', 21),
(408, 'Halmahera Selatan', 21),
(409, 'Halmahera Tengah', 21),
(410, 'Halmahera Timur', 21),
(411, 'Halmahera Utara', 21),
(412, 'Kepulauan Sula', 21),
(413, 'Tidore', 21),
(414, 'Makassar', 28),
(415, 'Bantaeng', 28),
(416, 'Barru', 28),
(417, 'Bulukumba', 28),
(418, 'Enrekang', 28),
(419, 'Jeneponto', 28),
(420, 'Tana Toraja', 28),
(421, 'Tana Toraja Utara', 28),
(422, 'Mamuju', 28),
(423, 'Maros', 28),
(424, 'Majene', 28),
(425, 'Palopo', 28),
(426, 'Pinrang', 28),
(427, 'Polewali Mandar', 28),
(428, 'Sindenreng Rappang', 28),
(429, 'Wajo', 28),
(430, 'Sinjai', 28),
(431, 'Goa', 28),
(432, 'Takalar', 28),
(433, 'Bone', 28),
(434, 'Soppeng', 28),
(435, 'Selayar', 28),
(436, 'Pangkajene Kepulauan', 28),
(438, 'Luwu Utara', 28),
(439, 'Luwu Timur', 28),
(440, 'Mamasa', 28),
(441, 'Mamuju Utara', 28);

-- --------------------------------------------------------

--
-- Table structure for table `ship_provinsi`
--

CREATE TABLE `ship_provinsi` (
  `provinsi_id` int(11) NOT NULL,
  `provinsi_nama` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ship_provinsi`
--

INSERT INTO `ship_provinsi` (`provinsi_id`, `provinsi_nama`) VALUES
(1, 'Aceh'),
(2, 'Bali'),
(3, 'Banten'),
(4, 'Bengkulu'),
(5, 'Daerah Istimewa Yogyakarta'),
(6, 'DKI Jakarta'),
(7, 'Gorontalo'),
(8, 'Jambi'),
(9, 'Jawa Barat'),
(10, 'Jawa Tengah'),
(11, 'Jawa Timur'),
(12, 'Kalimantan Barat'),
(13, 'Kalimantan Selatan'),
(14, 'Kalimantan Tengah'),
(15, 'Kalimantan Timur'),
(16, 'Kalimantan Utara'),
(17, 'Kepulauan Bangka Belitung'),
(18, 'Kepulauan Riau'),
(19, 'Lampung'),
(20, 'Maluku'),
(21, 'Maluku Utara'),
(22, 'Nusa Tenggara Barat'),
(23, 'Nusa Tenggara Timur'),
(24, 'Papua'),
(25, 'Papua Barat'),
(26, 'Riau'),
(27, 'Sulawesi Barat'),
(28, 'Sulawesi Selatan'),
(29, 'Sulawesi Tengah'),
(30, 'Sulawesi Tenggara'),
(31, 'Sulawesi Utara'),
(32, 'Sumatera Barat'),
(33, 'Sumatera Selatan'),
(34, 'Sumatera Utara');

-- --------------------------------------------------------

--
-- Table structure for table `ship_tarif`
--

CREATE TABLE `ship_tarif` (
  `tarif_id` int(11) NOT NULL,
  `prov_asal_id` int(11) DEFAULT '0',
  `kota_asal_id` int(11) DEFAULT '0',
  `prov_tuju_id` int(11) DEFAULT '0',
  `kota_tuju_id` int(11) DEFAULT '0',
  `ss` decimal(10,0) DEFAULT '0',
  `ss_next` decimal(10,0) DEFAULT '0',
  `yes` decimal(10,0) DEFAULT '0',
  `reg` decimal(10,0) DEFAULT '0',
  `oke` decimal(10,0) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ship_tarif`
--

INSERT INTO `ship_tarif` (`tarif_id`, `prov_asal_id`, `kota_asal_id`, `prov_tuju_id`, `kota_tuju_id`, `ss`, `ss_next`, `yes`, `reg`, `oke`) VALUES
(6231, 6, 93, 22, 1, '0', '0', '32000', '25000', '22000'),
(6232, 6, 93, 22, 2, '0', '0', '0', '35000', '30000'),
(6233, 6, 93, 22, 3, '0', '0', '0', '35000', '30000'),
(6234, 6, 93, 22, 4, '0', '0', '0', '35000', '30000'),
(6235, 6, 93, 22, 5, '0', '0', '0', '35000', '30000'),
(6236, 6, 93, 22, 6, '0', '0', '0', '35000', '30000'),
(6237, 6, 93, 22, 7, '0', '0', '0', '35000', '30000'),
(6238, 6, 93, 22, 8, '0', '0', '0', '35000', '30000'),
(6239, 6, 93, 20, 9, '0', '0', '0', '52000', '45000'),
(6240, 6, 93, 20, 10, '0', '0', '0', '85000', '73000'),
(6241, 6, 93, 20, 11, '0', '0', '0', '85000', '73000'),
(6242, 6, 93, 20, 12, '0', '0', '0', '85000', '73000'),
(6243, 6, 93, 20, 13, '0', '0', '0', '161000', '0'),
(6244, 6, 93, 20, 14, '0', '0', '0', '161000', '0'),
(6245, 6, 93, 20, 15, '0', '0', '0', '161000', '0'),
(6246, 6, 93, 20, 16, '0', '0', '0', '85000', '73000'),
(6247, 6, 93, 13, 17, '0', '0', '38000', '30000', '26000'),
(6248, 6, 93, 13, 18, '0', '0', '0', '42000', '36000'),
(6249, 6, 93, 13, 19, '0', '0', '0', '42000', '36000'),
(6250, 6, 93, 13, 20, '0', '0', '0', '42000', '36000'),
(6251, 6, 93, 13, 21, '0', '0', '0', '42000', '36000'),
(6252, 6, 93, 13, 22, '0', '0', '0', '30000', '26000'),
(6253, 6, 93, 13, 23, '0', '0', '0', '42000', '36000'),
(6254, 6, 93, 13, 24, '0', '0', '0', '42000', '36000'),
(6256, 6, 93, 13, 26, '0', '0', '0', '42000', '36000'),
(6257, 6, 93, 13, 27, '0', '0', '0', '42000', '36000'),
(6258, 6, 93, 13, 28, '0', '0', '0', '42000', '36000'),
(6259, 6, 93, 13, 29, '0', '0', '0', '42000', '36000'),
(6260, 6, 93, 13, 30, '0', '0', '0', '42000', '36000'),
(6261, 6, 93, 13, 31, '0', '0', '0', '42000', '36000'),
(6262, 6, 93, 13, 32, '0', '0', '0', '42000', '36000'),
(6263, 6, 93, 13, 33, '0', '0', '0', '42000', '36000'),
(6264, 6, 93, 9, 34, '0', '0', '19000', '10000', '9000'),
(6265, 6, 93, 9, 35, '0', '0', '19000', '10000', '9000'),
(6266, 6, 93, 9, 36, '0', '0', '19000', '13000', '12000'),
(6267, 6, 93, 9, 37, '0', '0', '19000', '13000', '12000'),
(6268, 6, 93, 9, 38, '0', '0', '0', '42000', '36000'),
(6269, 6, 93, 9, 39, '0', '0', '19000', '13000', '12000'),
(6270, 6, 93, 9, 40, '0', '0', '19000', '13000', '12000'),
(6271, 6, 93, 9, 41, '0', '0', '19000', '13000', '12000'),
(6272, 6, 93, 9, 42, '0', '0', '0', '10000', '9000'),
(6273, 6, 93, 9, 43, '0', '0', '19000', '13000', '12000'),
(6274, 6, 93, 9, 44, '0', '0', '15000', '8000', '7000'),
(6275, 6, 93, 4, 45, '0', '0', '29000', '22000', '19000'),
(6276, 6, 93, 4, 46, '0', '0', '0', '35000', '30000'),
(6277, 6, 93, 4, 47, '0', '0', '0', '35000', '30000'),
(6278, 6, 93, 4, 48, '0', '0', '0', '35000', '30000'),
(6279, 6, 93, 4, 49, '0', '0', '0', '35000', '30000'),
(6280, 6, 93, 4, 50, '0', '0', '0', '35000', '30000'),
(6281, 6, 93, 4, 51, '0', '0', '0', '35000', '30000'),
(6283, 6, 93, 4, 53, '0', '0', '0', '35000', '30000'),
(6284, 6, 93, 9, 54, '0', '0', '15000', '8000', '7000'),
(6285, 6, 93, 15, 55, '0', '0', '45000', '36000', '31000'),
(6286, 6, 93, 15, 56, '0', '0', '0', '77000', '65000'),
(6287, 6, 93, 15, 57, '0', '0', '0', '61000', '52000'),
(6288, 6, 93, 15, 58, '0', '0', '0', '61000', '52000'),
(6289, 6, 93, 15, 59, '0', '0', '0', '61000', '52000'),
(6290, 6, 93, 15, 60, '0', '0', '0', '49000', '42000'),
(6291, 6, 93, 15, 61, '0', '0', '0', '52000', '45000'),
(6292, 6, 93, 18, 62, '0', '0', '32000', '25000', '22000'),
(6293, 6, 93, 18, 63, '0', '0', '0', '50000', '43000'),
(6294, 6, 93, 18, 64, '0', '0', '0', '50000', '43000'),
(6295, 6, 93, 18, 65, '0', '0', '0', '50000', '43000'),
(6296, 6, 93, 1, 66, '0', '0', '0', '33000', '29000'),
(6297, 6, 93, 1, 67, '0', '0', '0', '48000', '41000'),
(6298, 6, 93, 1, 68, '0', '0', '0', '48000', '41000'),
(6299, 6, 93, 1, 69, '0', '0', '0', '48000', '41000'),
(6300, 6, 93, 1, 70, '0', '0', '0', '48000', '41000'),
(6301, 6, 93, 1, 71, '0', '0', '0', '48000', '41000'),
(6302, 6, 93, 1, 72, '0', '0', '0', '48000', '41000'),
(6303, 6, 93, 1, 73, '0', '0', '0', '48000', '41000'),
(6304, 6, 93, 1, 74, '0', '0', '0', '48000', '41000'),
(6305, 6, 93, 1, 75, '0', '0', '0', '48000', '41000'),
(6306, 6, 93, 1, 76, '0', '0', '0', '48000', '41000'),
(6307, 6, 93, 1, 77, '0', '0', '0', '48000', '41000'),
(6308, 6, 93, 1, 78, '0', '0', '0', '48000', '41000'),
(6309, 6, 93, 1, 79, '0', '0', '0', '48000', '41000'),
(6310, 6, 93, 1, 80, '0', '0', '0', '48000', '41000'),
(6311, 6, 93, 1, 81, '0', '0', '0', '48000', '41000'),
(6312, 6, 93, 1, 82, '0', '0', '0', '48000', '41000'),
(6313, 6, 93, 1, 83, '0', '0', '0', '48000', '41000'),
(6314, 6, 93, 1, 84, '0', '0', '0', '48000', '41000'),
(6315, 6, 93, 1, 85, '0', '0', '0', '48000', '41000'),
(6316, 6, 93, 1, 86, '0', '0', '0', '48000', '41000'),
(6317, 6, 93, 1, 87, '0', '0', '0', '90000', '0'),
(6318, 6, 93, 1, 88, '0', '0', '0', '48000', '41000'),
(6319, 6, 93, 9, 89, '0', '0', '19000', '10000', '9000'),
(6320, 6, 93, 9, 90, '0', '0', '19000', '13000', '12000'),
(6321, 6, 93, 9, 91, '0', '0', '19000', '13000', '12000'),
(6322, 6, 93, 9, 92, '0', '0', '19000', '13000', '12000'),
(6323, 6, 93, 6, 93, '0', '0', '15000', '8000', '7000'),
(6324, 6, 93, 6, 94, '0', '0', '15000', '8000', '7000'),
(6325, 6, 93, 6, 95, '0', '0', '15000', '8000', '7000'),
(6326, 6, 93, 6, 96, '0', '0', '15000', '8000', '7000'),
(6327, 6, 93, 6, 97, '0', '0', '15000', '8000', '7000'),
(6328, 6, 93, 6, 98, '0', '0', '15000', '8000', '7000'),
(6330, 6, 93, 3, 100, '0', '0', '19000', '9000', '8000'),
(6331, 6, 93, 3, 101, '0', '0', '19000', '10000', '9000'),
(6332, 6, 93, 3, 102, '0', '0', '19000', '10000', '9000'),
(6333, 6, 93, 3, 103, '0', '0', '19000', '9000', '8000'),
(6334, 6, 93, 10, 104, '0', '0', '0', '15000', '13000'),
(6335, 6, 93, 8, 105, '0', '0', '29000', '20000', '17000'),
(6336, 6, 93, 8, 106, '0', '0', '0', '31000', '27000'),
(6337, 6, 93, 8, 107, '0', '0', '0', '31000', '27000'),
(6338, 6, 93, 8, 108, '0', '0', '0', '31000', '27000'),
(6339, 6, 93, 8, 109, '0', '0', '0', '31000', '27000'),
(6340, 6, 93, 8, 110, '0', '0', '0', '31000', '27000'),
(6341, 6, 93, 8, 111, '0', '0', '0', '31000', '27000'),
(6342, 6, 93, 8, 112, '0', '0', '0', '31000', '27000'),
(6343, 6, 93, 8, 113, '0', '0', '0', '31000', '27000'),
(6344, 6, 93, 8, 114, '0', '0', '0', '31000', '27000'),
(6345, 6, 93, 24, 115, '0', '0', '0', '80000', '68000'),
(6346, 6, 93, 24, 116, '0', '0', '0', '108000', '92000'),
(6347, 6, 93, 24, 117, '0', '0', '0', '108000', '92000'),
(6348, 6, 93, 24, 118, '0', '0', '0', '108000', '92000'),
(6349, 6, 93, 24, 119, '0', '0', '0', '108000', '92000'),
(6350, 6, 93, 24, 120, '0', '0', '0', '108000', '92000'),
(6351, 6, 93, 24, 121, '0', '0', '0', '108000', '92000'),
(6352, 6, 93, 24, 122, '0', '0', '0', '108000', '92000'),
(6353, 6, 93, 24, 123, '0', '0', '0', '108000', '92000'),
(6354, 6, 93, 24, 124, '0', '0', '0', '108000', '92000'),
(6355, 6, 93, 24, 125, '0', '0', '0', '108000', '92000'),
(6356, 6, 93, 24, 126, '0', '0', '0', '108000', '92000'),
(6357, 6, 93, 24, 127, '0', '0', '0', '203000', '0'),
(6358, 6, 93, 24, 128, '0', '0', '0', '203000', '0'),
(6359, 6, 93, 24, 129, '0', '0', '0', '203000', '0'),
(6360, 6, 93, 9, 130, '0', '0', '15000', '8000', '7000'),
(6361, 6, 93, 2, 131, '0', '0', '26000', '20000', '17000'),
(6362, 6, 93, 2, 132, '0', '0', '0', '26000', '23000'),
(6363, 6, 93, 2, 133, '0', '0', '0', '26000', '23000'),
(6364, 6, 93, 2, 134, '0', '0', '0', '26000', '23000'),
(6365, 6, 93, 2, 135, '0', '0', '0', '26000', '23000'),
(6366, 6, 93, 2, 136, '0', '0', '0', '26000', '23000'),
(6367, 6, 93, 2, 137, '0', '0', '0', '26000', '23000'),
(6368, 6, 93, 2, 138, '0', '0', '0', '26000', '23000'),
(6369, 6, 93, 2, 139, '0', '0', '0', '26000', '23000'),
(6370, 6, 93, 7, 140, '0', '0', '0', '45000', '39000'),
(6371, 6, 93, 7, 141, '0', '0', '0', '53000', '46000'),
(6372, 6, 93, 7, 142, '0', '0', '0', '53000', '46000'),
(6373, 6, 93, 7, 143, '0', '0', '0', '53000', '46000'),
(6374, 6, 93, 7, 144, '0', '0', '0', '53000', '46000'),
(6375, 6, 93, 11, 145, '0', '0', '0', '20000', '17000'),
(6376, 6, 93, 11, 146, '0', '0', '0', '24000', '21000'),
(6377, 6, 93, 11, 147, '0', '0', '0', '24000', '21000'),
(6378, 6, 93, 5, 148, '0', '0', '24000', '16000', '14000'),
(6379, 6, 93, 5, 149, '0', '0', '24000', '16000', '14000'),
(6380, 6, 93, 5, 150, '0', '0', '24000', '16000', '14000'),
(6381, 6, 93, 5, 151, '0', '0', '24000', '20000', '17000'),
(6382, 6, 93, 5, 152, '0', '0', '24000', '20000', '17000'),
(6383, 6, 93, 30, 153, '0', '0', '0', '45000', '39000'),
(6385, 6, 93, 30, 155, '0', '0', '0', '62000', '53000'),
(6386, 6, 93, 30, 156, '0', '0', '0', '62000', '53000'),
(6387, 6, 93, 30, 157, '0', '0', '0', '62000', '53000'),
(6388, 6, 93, 30, 158, '0', '0', '0', '62000', '53000'),
(6390, 6, 93, 30, 160, '0', '0', '0', '62000', '53000'),
(6392, 6, 93, 30, 162, '0', '0', '0', '62000', '53000'),
(6393, 6, 93, 11, 163, '0', '0', '27000', '20000', '17000'),
(6394, 6, 93, 23, 164, '0', '0', '0', '50000', '43000'),
(6395, 6, 93, 23, 165, '0', '0', '0', '123000', '0'),
(6396, 6, 93, 23, 166, '0', '0', '0', '65000', '56000'),
(6397, 6, 93, 23, 167, '0', '0', '0', '65000', '56000'),
(6398, 6, 93, 23, 168, '0', '0', '0', '65000', '56000'),
(6399, 6, 93, 23, 169, '0', '0', '0', '65000', '56000'),
(6400, 6, 93, 23, 170, '0', '0', '0', '65000', '56000'),
(6401, 6, 93, 23, 171, '0', '0', '0', '65000', '56000'),
(6402, 6, 93, 23, 172, '0', '0', '0', '65000', '56000'),
(6403, 6, 93, 23, 173, '0', '0', '0', '65000', '56000'),
(6404, 6, 93, 23, 174, '0', '0', '0', '123000', '0'),
(6405, 6, 93, 23, 175, '0', '0', '0', '65000', '56000'),
(6406, 6, 93, 23, 176, '0', '0', '0', '65000', '56000'),
(6407, 6, 93, 23, 177, '0', '0', '0', '65000', '56000'),
(6408, 6, 93, 23, 178, '0', '0', '0', '123000', '0'),
(6409, 6, 93, 23, 179, '0', '0', '0', '123000', '0'),
(6410, 6, 93, 23, 180, '0', '0', '0', '65000', '56000'),
(6411, 6, 93, 23, 181, '0', '0', '0', '65000', '56000'),
(6412, 6, 93, 23, 182, '0', '0', '0', '65000', '56000'),
(6413, 6, 93, 9, 183, '0', '0', '19000', '9000', '8000'),
(6414, 6, 93, 31, 184, '0', '0', '0', '42000', '36000'),
(6415, 6, 93, 31, 185, '0', '0', '0', '58000', '50000'),
(6416, 6, 93, 31, 186, '0', '0', '0', '58000', '50000'),
(6417, 6, 93, 31, 187, '0', '0', '0', '58000', '50000'),
(6418, 6, 93, 31, 188, '0', '0', '0', '58000', '50000'),
(6419, 6, 93, 31, 189, '0', '0', '0', '73000', '63000'),
(6420, 6, 93, 31, 190, '0', '0', '0', '73000', '63000'),
(6421, 6, 93, 31, 191, '0', '0', '0', '73000', '63000'),
(6422, 6, 93, 31, 192, '0', '0', '0', '73000', '63000'),
(6423, 6, 93, 31, 193, '0', '0', '0', '58000', '50000'),
(6424, 6, 93, 31, 194, '0', '0', '0', '58000', '50000'),
(6425, 6, 93, 11, 195, '0', '0', '0', '20000', '17000'),
(6426, 6, 93, 11, 196, '0', '0', '0', '24000', '21000'),
(6427, 6, 93, 11, 197, '0', '0', '0', '24000', '21000'),
(6428, 6, 93, 11, 198, '0', '0', '0', '24000', '21000'),
(6429, 6, 93, 11, 199, '0', '0', '0', '24000', '21000'),
(6430, 6, 93, 34, 200, '0', '0', '34000', '27000', '23000'),
(6431, 6, 93, 34, 201, '0', '0', '0', '38000', '33000'),
(6432, 6, 93, 34, 202, '0', '0', '0', '38000', '33000'),
(6433, 6, 93, 34, 203, '0', '0', '0', '38000', '33000'),
(6434, 6, 93, 34, 204, '0', '0', '0', '38000', '33000'),
(6435, 6, 93, 34, 205, '0', '0', '0', '38000', '33000'),
(6436, 6, 93, 34, 206, '0', '0', '0', '38000', '33000'),
(6437, 6, 93, 34, 207, '0', '0', '0', '38000', '33000'),
(6438, 6, 93, 34, 208, '0', '0', '0', '38000', '33000'),
(6439, 6, 93, 34, 209, '0', '0', '0', '38000', '33000'),
(6440, 6, 93, 34, 210, '0', '0', '0', '38000', '33000'),
(6441, 6, 93, 34, 211, '0', '0', '0', '38000', '33000'),
(6442, 6, 93, 34, 212, '0', '0', '0', '38000', '33000'),
(6443, 6, 93, 34, 213, '0', '0', '0', '38000', '33000'),
(6444, 6, 93, 34, 214, '0', '0', '0', '38000', '33000'),
(6445, 6, 93, 34, 215, '0', '0', '0', '38000', '33000'),
(6446, 6, 93, 34, 216, '0', '0', '0', '38000', '33000'),
(6447, 6, 93, 34, 217, '0', '0', '0', '38000', '33000'),
(6448, 6, 93, 34, 218, '0', '0', '0', '38000', '33000'),
(6449, 6, 93, 34, 219, '0', '0', '0', '38000', '33000'),
(6450, 6, 93, 34, 220, '0', '0', '0', '38000', '33000'),
(6451, 6, 93, 34, 221, '0', '0', '0', '38000', '33000'),
(6452, 6, 93, 34, 222, '0', '0', '0', '38000', '33000'),
(6453, 6, 93, 34, 223, '0', '0', '0', '38000', '33000'),
(6454, 6, 93, 34, 224, '0', '0', '0', '38000', '33000'),
(6455, 6, 93, 34, 225, '0', '0', '0', '38000', '33000'),
(6456, 6, 93, 34, 226, '0', '0', '0', '38000', '33000'),
(6457, 6, 93, 34, 227, '0', '0', '0', '38000', '33000'),
(6458, 6, 93, 10, 228, '0', '0', '25000', '18000', '16000'),
(6459, 6, 93, 10, 229, '0', '0', '0', '22000', '19000'),
(6460, 6, 93, 10, 230, '0', '0', '0', '22000', '19000'),
(6461, 6, 93, 10, 231, '0', '0', '0', '22000', '19000'),
(6462, 6, 93, 10, 232, '0', '0', '0', '22000', '19000'),
(6463, 6, 93, 11, 233, '0', '0', '27000', '20000', '17000'),
(6464, 6, 93, 11, 234, '0', '0', '0', '20000', '17000'),
(6465, 6, 93, 11, 235, '0', '0', '27000', '20000', '17000'),
(6466, 6, 93, 11, 236, '0', '0', '0', '24000', '21000'),
(6467, 6, 93, 11, 237, '0', '0', '0', '24000', '21000'),
(6468, 6, 93, 24, 238, '0', '0', '0', '98000', '84000'),
(6469, 6, 93, 24, 239, '0', '0', '0', '125000', '107000'),
(6470, 6, 93, 24, 240, '0', '0', '0', '125000', '107000'),
(6471, 6, 93, 24, 241, '0', '0', '0', '125000', '107000'),
(6472, 6, 93, 24, 242, '0', '0', '0', '125000', '107000'),
(6473, 6, 93, 24, 243, '0', '0', '0', '125000', '107000'),
(6474, 6, 93, 24, 244, '0', '0', '0', '125000', '107000'),
(6475, 6, 93, 11, 245, '0', '0', '27000', '20000', '17000'),
(6476, 6, 93, 11, 246, '0', '0', '0', '24000', '21000'),
(6478, 6, 93, 32, 248, '0', '0', '30000', '25000', '22000'),
(6479, 6, 93, 32, 249, '0', '0', '0', '34000', '29000'),
(6480, 6, 93, 32, 250, '0', '0', '0', '34000', '29000'),
(6481, 6, 93, 32, 251, '0', '0', '0', '34000', '29000'),
(6482, 6, 93, 32, 252, '0', '0', '0', '34000', '29000'),
(6483, 6, 93, 32, 253, '0', '0', '0', '34000', '29000'),
(6484, 6, 93, 32, 254, '0', '0', '0', '34000', '29000'),
(6485, 6, 93, 32, 255, '0', '0', '0', '34000', '29000'),
(6486, 6, 93, 32, 256, '0', '0', '0', '34000', '29000'),
(6487, 6, 93, 32, 257, '0', '0', '0', '34000', '29000'),
(6488, 6, 93, 32, 258, '0', '0', '0', '34000', '29000'),
(6489, 6, 93, 32, 259, '0', '0', '0', '34000', '29000'),
(6490, 6, 93, 32, 260, '0', '0', '0', '34000', '29000'),
(6491, 6, 93, 32, 261, '0', '0', '0', '34000', '29000'),
(6492, 6, 93, 32, 262, '0', '0', '0', '34000', '29000'),
(6493, 6, 93, 32, 263, '0', '0', '0', '34000', '29000'),
(6494, 6, 93, 32, 264, '0', '0', '0', '34000', '29000'),
(6495, 6, 93, 32, 265, '0', '0', '0', '34000', '29000'),
(6496, 6, 93, 11, 266, '0', '0', '0', '20000', '17000'),
(6497, 6, 93, 17, 267, '0', '0', '29000', '20000', '17000'),
(6498, 6, 93, 17, 268, '0', '0', '29000', '32000', '28000'),
(6499, 6, 93, 17, 269, '0', '0', '0', '32000', '28000'),
(6500, 6, 93, 17, 270, '0', '0', '0', '32000', '28000'),
(6501, 6, 93, 17, 271, '0', '0', '0', '32000', '28000'),
(6502, 6, 93, 26, 272, '0', '0', '30000', '25000', '22000'),
(6503, 6, 93, 26, 273, '0', '0', '0', '37000', '32000'),
(6504, 6, 93, 26, 274, '0', '0', '0', '37000', '32000'),
(6505, 6, 93, 26, 275, '0', '0', '0', '37000', '32000'),
(6506, 6, 93, 26, 276, '0', '0', '0', '37000', '32000'),
(6507, 6, 93, 26, 277, '0', '0', '0', '37000', '32000'),
(6508, 6, 93, 26, 278, '0', '0', '0', '37000', '32000'),
(6509, 6, 93, 26, 279, '0', '0', '0', '37000', '32000'),
(6510, 6, 93, 26, 280, '0', '0', '0', '37000', '32000'),
(6511, 6, 93, 26, 281, '0', '0', '0', '37000', '32000'),
(6512, 6, 93, 26, 282, '0', '0', '0', '37000', '32000'),
(6513, 6, 93, 26, 283, '0', '0', '0', '37000', '32000'),
(6514, 6, 93, 14, 284, '0', '0', '35000', '30000', '26000'),
(6515, 6, 93, 14, 285, '0', '0', '0', '49000', '42000'),
(6516, 6, 93, 14, 286, '0', '0', '0', '49000', '42000'),
(6517, 6, 93, 14, 287, '0', '0', '0', '49000', '42000'),
(6518, 6, 93, 14, 288, '0', '0', '0', '49000', '42000'),
(6519, 6, 93, 14, 289, '0', '0', '0', '49000', '42000'),
(6520, 6, 93, 14, 290, '0', '0', '0', '49000', '42000'),
(6521, 6, 93, 14, 291, '0', '0', '0', '49000', '42000'),
(6522, 6, 93, 14, 292, '0', '0', '0', '49000', '42000'),
(6523, 6, 93, 14, 293, '0', '0', '0', '49000', '42000'),
(6524, 6, 93, 33, 294, '0', '0', '29000', '20000', '17000'),
(6525, 6, 93, 33, 295, '0', '0', '0', '31000', '27000'),
(6526, 6, 93, 33, 296, '0', '0', '0', '31000', '27000'),
(6527, 6, 93, 33, 297, '0', '0', '0', '31000', '27000'),
(6528, 6, 93, 33, 298, '0', '0', '0', '31000', '27000'),
(6529, 6, 93, 33, 299, '0', '0', '0', '31000', '27000'),
(6530, 6, 93, 33, 300, '0', '0', '0', '31000', '27000'),
(6531, 6, 93, 33, 301, '0', '0', '0', '31000', '27000'),
(6532, 6, 93, 33, 302, '0', '0', '0', '31000', '27000'),
(6533, 6, 93, 33, 303, '0', '0', '0', '31000', '27000'),
(6534, 6, 93, 33, 304, '0', '0', '0', '31000', '27000'),
(6535, 6, 93, 33, 305, '0', '0', '0', '31000', '27000'),
(6536, 6, 93, 33, 306, '0', '0', '0', '31000', '27000'),
(6537, 6, 93, 33, 307, '0', '0', '0', '31000', '27000'),
(6538, 6, 93, 33, 308, '0', '0', '0', '31000', '27000'),
(6539, 6, 93, 29, 309, '0', '0', '0', '40000', '34000'),
(6540, 6, 93, 29, 310, '0', '0', '0', '58000', '50000'),
(6541, 6, 93, 29, 311, '0', '0', '0', '58000', '50000'),
(6543, 6, 93, 29, 313, '0', '0', '0', '58000', '50000'),
(6544, 6, 93, 29, 314, '0', '0', '0', '58000', '50000'),
(6545, 6, 93, 29, 315, '0', '0', '0', '40000', '34000'),
(6546, 6, 93, 29, 316, '0', '0', '0', '58000', '50000'),
(6547, 6, 93, 29, 317, '0', '0', '0', '58000', '50000'),
(6549, 6, 93, 12, 319, '0', '0', '30000', '27000', '23000'),
(6550, 6, 93, 12, 320, '0', '0', '0', '42000', '36000'),
(6551, 6, 93, 12, 321, '0', '0', '0', '42000', '36000'),
(6552, 6, 93, 12, 322, '0', '0', '0', '42000', '36000'),
(6553, 6, 93, 12, 323, '0', '0', '0', '42000', '36000'),
(6554, 6, 93, 12, 324, '0', '0', '0', '42000', '36000'),
(6555, 6, 93, 12, 325, '0', '0', '0', '42000', '36000'),
(6556, 6, 93, 12, 326, '0', '0', '0', '42000', '36000'),
(6557, 6, 93, 12, 327, '0', '0', '0', '42000', '36000'),
(6558, 6, 93, 12, 328, '0', '0', '0', '42000', '36000'),
(6559, 6, 93, 12, 329, '0', '0', '0', '42000', '36000'),
(6560, 6, 93, 12, 330, '0', '0', '0', '42000', '36000'),
(6561, 6, 93, 12, 331, '0', '0', '0', '42000', '36000'),
(6562, 6, 93, 15, 332, '0', '0', '0', '41000', '35000'),
(6563, 6, 93, 15, 333, '0', '0', '0', '77000', '65000'),
(6564, 6, 93, 15, 334, '0', '0', '0', '55000', '47000'),
(6565, 6, 93, 9, 335, '0', '0', '19000', '9000', '8000'),
(6566, 6, 93, 9, 336, '0', '0', '19000', '12000', '11000'),
(6567, 6, 93, 10, 337, '0', '0', '24000', '16000', '14000'),
(6568, 6, 93, 10, 338, '0', '0', '24000', '20000', '17000'),
(6569, 6, 93, 10, 339, '0', '0', '24000', '20000', '17000'),
(6570, 6, 93, 10, 340, '0', '0', '24000', '20000', '17000'),
(6571, 6, 93, 10, 341, '0', '0', '24000', '20000', '17000'),
(6572, 6, 93, 10, 342, '0', '0', '24000', '20000', '17000'),
(6573, 6, 93, 10, 343, '0', '0', '24000', '20000', '17000'),
(6574, 6, 93, 25, 344, '0', '0', '0', '115000', '98000'),
(6575, 6, 93, 25, 345, '0', '0', '0', '80000', '68000'),
(6577, 6, 93, 25, 347, '0', '0', '0', '115000', '98000'),
(6578, 6, 93, 25, 348, '0', '0', '0', '115000', '98000'),
(6579, 6, 93, 25, 349, '0', '0', '0', '115000', '98000'),
(6580, 6, 93, 25, 350, '0', '0', '0', '115000', '98000'),
(6581, 6, 93, 25, 351, '0', '0', '0', '115000', '98000'),
(6582, 6, 93, 10, 352, '0', '0', '24000', '16000', '14000'),
(6583, 6, 93, 10, 353, '0', '0', '0', '20000', '17000'),
(6584, 6, 93, 10, 354, '0', '0', '24000', '20000', '17000'),
(6585, 6, 93, 10, 355, '0', '0', '0', '20000', '17000'),
(6586, 6, 93, 10, 356, '0', '0', '0', '20000', '17000'),
(6587, 6, 93, 10, 357, '0', '0', '0', '20000', '17000'),
(6588, 6, 93, 10, 358, '0', '0', '0', '20000', '17000'),
(6589, 6, 93, 10, 359, '0', '0', '0', '20000', '17000'),
(6590, 6, 93, 10, 360, '0', '0', '0', '20000', '17000'),
(6591, 6, 93, 10, 361, '0', '0', '0', '20000', '17000'),
(6592, 6, 93, 10, 362, '0', '0', '24000', '20000', '17000'),
(6593, 6, 93, 10, 363, '0', '0', '0', '20000', '17000'),
(6594, 6, 93, 10, 364, '0', '0', '0', '20000', '17000'),
(6595, 6, 93, 10, 365, '0', '0', '0', '20000', '17000'),
(6596, 6, 93, 10, 366, '0', '0', '0', '20000', '17000'),
(6597, 6, 93, 10, 367, '0', '0', '24000', '20000', '17000'),
(6598, 6, 93, 10, 368, '0', '0', '0', '20000', '17000'),
(6599, 6, 93, 10, 369, '0', '0', '0', '20000', '17000'),
(6600, 6, 93, 10, 370, '0', '0', '0', '20000', '17000'),
(6601, 6, 93, 11, 371, '0', '0', '25000', '17000', '15000'),
(6602, 6, 93, 11, 372, '0', '0', '25000', '17000', '15000'),
(6603, 6, 93, 11, 373, '0', '0', '25000', '22000', '19000'),
(6604, 6, 93, 11, 374, '0', '0', '0', '22000', '19000'),
(6605, 6, 93, 11, 375, '0', '0', '25000', '22000', '19000'),
(6606, 6, 93, 11, 376, '0', '0', '0', '22000', '19000'),
(6607, 6, 93, 11, 377, '0', '0', '0', '22000', '19000'),
(6608, 6, 93, 11, 378, '0', '0', '0', '22000', '19000'),
(6609, 6, 93, 11, 379, '0', '0', '0', '20000', '17000'),
(6610, 6, 93, 11, 380, '0', '0', '0', '22000', '19000'),
(6611, 6, 93, 11, 381, '0', '0', '25000', '22000', '19000'),
(6612, 6, 93, 11, 382, '0', '0', '0', '22000', '19000'),
(6613, 6, 93, 11, 383, '0', '0', '0', '22000', '19000'),
(6614, 6, 93, 3, 384, '0', '0', '15000', '8000', '7000'),
(6615, 6, 93, 24, 385, '0', '0', '0', '85000', '73000'),
(6616, 6, 93, 17, 386, '0', '0', '0', '23000', '20000'),
(6617, 6, 93, 17, 387, '0', '0', '0', '26000', '23000'),
(6618, 6, 93, 19, 388, '0', '0', '26000', '17000', '15000'),
(6619, 6, 93, 19, 389, '0', '0', '0', '35000', '30000'),
(6620, 6, 93, 19, 390, '0', '0', '0', '35000', '30000'),
(6621, 6, 93, 19, 391, '0', '0', '0', '35000', '30000'),
(6622, 6, 93, 19, 392, '0', '0', '0', '35000', '30000'),
(6623, 6, 93, 19, 393, '0', '0', '0', '35000', '30000'),
(6624, 6, 93, 19, 394, '0', '0', '0', '35000', '30000'),
(6625, 6, 93, 19, 395, '0', '0', '0', '35000', '30000'),
(6626, 6, 93, 19, 396, '0', '0', '0', '35000', '30000'),
(6627, 6, 93, 19, 397, '0', '0', '0', '35000', '30000'),
(6628, 6, 93, 19, 398, '0', '0', '0', '35000', '30000'),
(6629, 6, 93, 18, 399, '0', '0', '0', '32000', '28000'),
(6630, 6, 93, 18, 400, '0', '0', '0', '63000', '54000'),
(6631, 6, 93, 15, 401, '0', '0', '0', '49000', '42000'),
(6632, 6, 93, 15, 402, '0', '0', '0', '55000', '47000'),
(6633, 6, 93, 15, 403, '0', '0', '0', '55000', '47000'),
(6634, 6, 93, 15, 404, '0', '0', '0', '55000', '47000'),
(6635, 6, 93, 15, 405, '0', '0', '0', '55000', '47000'),
(6636, 6, 93, 21, 406, '0', '0', '0', '55000', '47000'),
(6637, 6, 93, 21, 407, '0', '0', '0', '62000', '53000'),
(6638, 6, 93, 21, 408, '0', '0', '0', '62000', '53000'),
(6639, 6, 93, 21, 409, '0', '0', '0', '62000', '53000'),
(6640, 6, 93, 21, 410, '0', '0', '0', '62000', '53000'),
(6641, 6, 93, 21, 411, '0', '0', '0', '62000', '53000'),
(6642, 6, 93, 21, 412, '0', '0', '0', '62000', '53000'),
(6643, 6, 93, 21, 413, '0', '0', '0', '62000', '53000'),
(6644, 6, 93, 28, 414, '0', '0', '41000', '32000', '28000'),
(6645, 6, 93, 28, 415, '0', '0', '0', '49000', '42000'),
(6646, 6, 93, 28, 416, '0', '0', '0', '49000', '42000'),
(6647, 6, 93, 28, 417, '0', '0', '0', '49000', '42000'),
(6648, 6, 93, 28, 418, '0', '0', '0', '49000', '42000'),
(6649, 6, 93, 28, 419, '0', '0', '0', '49000', '42000'),
(6650, 6, 93, 28, 420, '0', '0', '0', '49000', '42000'),
(6651, 6, 93, 28, 421, '0', '0', '0', '49000', '42000'),
(6652, 6, 93, 28, 422, '0', '0', '0', '49000', '42000'),
(6653, 6, 93, 28, 423, '0', '0', '0', '32000', '28000'),
(6654, 6, 93, 28, 424, '0', '0', '0', '49000', '42000'),
(6655, 6, 93, 28, 425, '0', '0', '0', '49000', '42000'),
(6656, 6, 93, 28, 426, '0', '0', '0', '49000', '42000'),
(6657, 6, 93, 28, 427, '0', '0', '0', '49000', '42000'),
(6658, 6, 93, 28, 428, '0', '0', '0', '49000', '42000'),
(6659, 6, 93, 28, 429, '0', '0', '0', '49000', '42000'),
(6660, 6, 93, 28, 430, '0', '0', '0', '49000', '42000'),
(6661, 6, 93, 28, 431, '0', '0', '0', '32000', '28000'),
(6662, 6, 93, 28, 432, '0', '0', '0', '49000', '42000'),
(6663, 6, 93, 28, 433, '0', '0', '0', '49000', '42000'),
(6664, 6, 93, 28, 434, '0', '0', '0', '49000', '42000'),
(6665, 6, 93, 28, 435, '0', '0', '0', '49000', '42000'),
(6666, 6, 93, 28, 436, '0', '0', '0', '49000', '42000'),
(6668, 6, 93, 28, 438, '0', '0', '0', '49000', '42000'),
(6669, 6, 93, 28, 439, '0', '0', '0', '49000', '42000'),
(6670, 6, 93, 28, 440, '0', '0', '0', '49000', '42000'),
(6671, 6, 93, 28, 441, '0', '0', '0', '49000', '42000');

-- --------------------------------------------------------

--
-- Table structure for table `wishlist`
--

CREATE TABLE `wishlist` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `member_id` int(11) NOT NULL,
  `tanggal` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category_product`
--
ALTER TABLE `category_product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `konfirmasi`
--
ALTER TABLE `konfirmasi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kota`
--
ALTER TABLE `kota`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `log_pengiriman`
--
ALTER TABLE `log_pengiriman`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `member`
--
ALTER TABLE `member`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `nomor_rekening`
--
ALTER TABLE `nomor_rekening`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order`
--
ALTER TABLE `order`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_detail`
--
ALTER TABLE `order_detail`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `provinsi`
--
ALTER TABLE `provinsi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ship_kota`
--
ALTER TABLE `ship_kota`
  ADD PRIMARY KEY (`kota_id`);

--
-- Indexes for table `ship_provinsi`
--
ALTER TABLE `ship_provinsi`
  ADD PRIMARY KEY (`provinsi_id`);

--
-- Indexes for table `ship_tarif`
--
ALTER TABLE `ship_tarif`
  ADD PRIMARY KEY (`tarif_id`);

--
-- Indexes for table `wishlist`
--
ALTER TABLE `wishlist`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `category_product`
--
ALTER TABLE `category_product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `konfirmasi`
--
ALTER TABLE `konfirmasi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `kota`
--
ALTER TABLE `kota`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=498;
--
-- AUTO_INCREMENT for table `log_pengiriman`
--
ALTER TABLE `log_pengiriman`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `member`
--
ALTER TABLE `member`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `nomor_rekening`
--
ALTER TABLE `nomor_rekening`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `order`
--
ALTER TABLE `order`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
--
-- AUTO_INCREMENT for table `order_detail`
--
ALTER TABLE `order_detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;
--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `provinsi`
--
ALTER TABLE `provinsi`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;
--
-- AUTO_INCREMENT for table `wishlist`
--
ALTER TABLE `wishlist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
