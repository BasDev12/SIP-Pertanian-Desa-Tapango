-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Waktu pembuatan: 09 Agu 2025 pada 13.13
-- Versi server: 8.0.31
-- Versi PHP: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kakao_db`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `data_lahan`
--

DROP TABLE IF EXISTS `data_lahan`;
CREATE TABLE IF NOT EXISTS `data_lahan` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nama_petani` varchar(100) NOT NULL,
  `lokasi_lahan` varchar(150) NOT NULL,
  `luas_lahan` decimal(5,2) NOT NULL,
  `status_kepemilikan` enum('Milik Sendiri','Sewa','Bagi Hasil') NOT NULL,
  `jenis_tanah` varchar(50) DEFAULT NULL,
  `sistem_irigasi` enum('Manual','Tadah Hujan','Irigasi Teknis') NOT NULL,
  `tahun_tanam` year NOT NULL,
  `jumlah_pohon` int NOT NULL,
  `produktivitas` decimal(7,2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data untuk tabel `data_lahan`
--

INSERT INTO `data_lahan` (`id`, `nama_petani`, `lokasi_lahan`, `luas_lahan`, `status_kepemilikan`, `jenis_tanah`, `sistem_irigasi`, `tahun_tanam`, `jumlah_pohon`, `produktivitas`) VALUES
(1, 'Andi Baso', 'Tapango Barat', '1.50', 'Milik Sendiri', 'Latosol', 'Tadah Hujan', 2016, 750, '500.00'),
(2, 'Sitti Rahma', 'Tapango Timur', '1.00', '', 'Lempung', 'Manual', 2018, 500, '480.00'),
(3, 'Jusman', 'Tapango Selatan', '2.00', 'Milik Sendiri', 'Podsolik Merah', 'Tadah Hujan', 2015, 1000, '450.00'),
(4, 'Nurhayati', 'Tapango Utara', '0.80', 'Sewa', 'Lempung Berpasir', 'Manual', 2019, 400, '500.00'),
(5, 'La Ode Idris', 'Tapango Tengah', '3.00', 'Milik Sendiri', 'Latosol', 'Tadah Hujan', 2014, 1500, '500.00'),
(6, 'Hasanuddin', 'Kampung Baru', '1.20', '', 'Lempung', 'Manual', 2017, 600, '500.00'),
(7, 'Mariati', 'Salu Tapango', '0.90', 'Milik Sendiri', 'Lempung', 'Manual', 2020, 450, '490.00'),
(8, 'Saharuddin', 'Dusun Lemo', '2.50', 'Milik Sendiri', 'Latosol', 'Tadah Hujan', 2013, 1200, '480.00'),
(9, 'Rosmawati', 'Mambu Tapango', '1.10', 'Sewa', 'Lempung', 'Manual', 2021, 550, '510.00'),
(10, 'Abdillah', 'Tapango Barat', '1.70', 'Milik Sendiri', 'Latosol', 'Tadah Hujan', 2015, 850, '470.00');

-- --------------------------------------------------------

--
-- Struktur dari tabel `petani`
--

DROP TABLE IF EXISTS `petani`;
CREATE TABLE IF NOT EXISTS `petani` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nama` varchar(100) DEFAULT NULL,
  `umur` int DEFAULT NULL,
  `jenis_kelamin` enum('Laki-laki','Perempuan') DEFAULT NULL,
  `alamat` varchar(255) DEFAULT NULL,
  `no_hp` varchar(15) DEFAULT NULL,
  `status` enum('Aktif','Tidak Aktif') DEFAULT NULL,
  `luas_lahan` decimal(10,2) DEFAULT NULL,
  `produksi_per_musim` int DEFAULT NULL,
  `komoditas` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data untuk tabel `petani`
--

INSERT INTO `petani` (`id`, `nama`, `umur`, `jenis_kelamin`, `alamat`, `no_hp`, `status`, `luas_lahan`, `produksi_per_musim`, `komoditas`) VALUES
(17, 'Mariati', 38, 'Perempuan', 'Dusun Salu Tapango', '0815-7777-8888', 'Aktif', '0.90', 450, NULL),
(16, 'Hasanuddin', 41, 'Laki-laki', 'Dusun Kampung Baru', '0823-4444-3333', 'Aktif', '1.20', 600, NULL),
(11, 'Andi Baso', 45, 'Laki-laki', 'Tapango Barat', '0853-1234-5678', 'Aktif', '1.50', 750, NULL),
(12, 'Sitti Rahma', 39, 'Perempuan', 'Tapango Timur', '0812-3456-7890', 'Aktif', '1.00', 500, NULL),
(15, 'La Ode Idris', 60, 'Laki-laki', 'Tapango Tengah', '0813-9999-0000', 'Aktif', '3.00', 1500, NULL),
(14, 'Nurhayati', 33, 'Perempuan', 'Tapango Utara', '0852-1111-2222', 'Aktif', '0.80', 400, NULL),
(13, 'Jusman', 50, 'Laki-laki', 'Tapango Selatan', '0821-9876-5432', 'Tidak Aktif', '2.00', 900, NULL),
(18, 'Saharuddin', 52, 'Laki-laki', 'Dusun Lemo', '0851-6666-5555', 'Aktif', '2.50', 1200, NULL),
(19, 'Rosmawati', 29, 'Perempuan', 'Dusun Mambu Tapango', '0822-5555-4444', 'Aktif', '1.10', 550, NULL),
(20, 'Abdillah', 47, 'Laki-laki', 'Tapango Barat', '0831-1212-3434', 'Tidak Aktif', '1.70', 800, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `rdkk_pupuk`
--

DROP TABLE IF EXISTS `rdkk_pupuk`;
CREATE TABLE IF NOT EXISTS `rdkk_pupuk` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nik` varchar(20) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `rencana_tanam_ha` decimal(5,3) DEFAULT '0.000',
  `urea_mt1` int DEFAULT '0',
  `urea_mt2` int DEFAULT '0',
  `urea_mt3` int DEFAULT '0',
  `urea_jml` int GENERATED ALWAYS AS (((`urea_mt1` + `urea_mt2`) + `urea_mt3`)) STORED,
  `npk_mt1` int DEFAULT '0',
  `npk_mt2` int DEFAULT '0',
  `npk_mt3` int DEFAULT '0',
  `npk_jml` int GENERATED ALWAYS AS (((`npk_mt1` + `npk_mt2`) + `npk_mt3`)) STORED,
  `npk_formula_mt1` int DEFAULT '0',
  `npk_formula_mt2` int DEFAULT '0',
  `npk_formula_mt3` int DEFAULT '0',
  `npk_formula_jml` int GENERATED ALWAYS AS (((`npk_formula_mt1` + `npk_formula_mt2`) + `npk_formula_mt3`)) STORED,
  `organik_mt1` int DEFAULT '0',
  `organik_mt2` int DEFAULT '0',
  `organik_mt3` int DEFAULT '0',
  `organik_jml` int GENERATED ALWAYS AS (((`organik_mt1` + `organik_mt2`) + `organik_mt3`)) STORED,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `foto` varchar(100) DEFAULT 'default.jpg',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `foto`) VALUES
(1, 'admin', '0192023a7bbd73250516f069df18b500', 'images.jpg');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
