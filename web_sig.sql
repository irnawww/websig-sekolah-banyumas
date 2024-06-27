-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 14, 2024 at 09:15 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `web_sig`
--

-- --------------------------------------------------------

--
-- Table structure for table `kabupaten`
--

CREATE TABLE `kabupaten` (
  `id_kabupaten` int(11) NOT NULL,
  `kode_kabupaten` varchar(100) NOT NULL,
  `nama_kabupaten` varchar(100) NOT NULL,
  `koordinat` varchar(100) NOT NULL,
  `jumlah_penduduk` int(11) NOT NULL,
  `luas_wilayah` float(15,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `kabupaten`
--

INSERT INTO `kabupaten` (`id_kabupaten`, `kode_kabupaten`, `nama_kabupaten`, `koordinat`, `jumlah_penduduk`, `luas_wilayah`) VALUES
(1, '3302', 'BANYUMAS', '-7.438539024654408, 109.14650920752024', 1806013, 132760.00);

-- --------------------------------------------------------

--
-- Table structure for table `kecamatan`
--

CREATE TABLE `kecamatan` (
  `kode_kecamatan` varchar(100) NOT NULL,
  `id_kabupaten` int(11) NOT NULL,
  `nama_kecamatan` varchar(100) NOT NULL,
  `jumlah_penduduk` int(11) NOT NULL,
  `luas_wilayah` float(15,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `kecamatan`
--

INSERT INTO `kecamatan` (`kode_kecamatan`, `id_kabupaten`, `nama_kecamatan`, `jumlah_penduduk`, `luas_wilayah`) VALUES
('3302020\r\n', 1, 'Wangon', 84755, 60.78),
('3302030\r\n', 1, 'Jatilawang', 67483, 48.16),
('3302040\r\n', 1, 'Rawalo', 53711, 49.64),
('3302050\r\n', 1, 'Kebasen', 68650, 54.00),
('3302060\r\n', 1, 'Kemranjen', 73478, 60.71),
('3302070\r\n', 1, 'Sumpiuh', 58580, 60.01),
('3302080', 1, 'Tambak', 51223, 52.03),
('3302090', 1, 'Somagede', 38230, 40.11),
('3302100\r\n', 1, 'Kalibagor', 58369, 35.73),
('3302110\r\n', 1, 'Banyumas', 53668, 38.09),
('3302120\r\n', 1, 'Patikraja', 61998, 43.23),
('3302130\r\n', 1, 'Purwojati', 37789, 37.86),
('3302140\r\n', 1, 'Ajibarang', 103490, 66.50),
('3302150\r\n', 1, 'Gumelar\r\n', 54347, 93.95),
('3302160\r\n', 1, 'Pekuncen\r\n', 76883, 93.95),
('3302170\r\n', 1, 'Cilongok\r\n', 126255, 105.34),
('3302180\r\n', 1, 'Karanglewas\r\n', 68467, 32.50),
('3302190\r\n', 1, 'Kedungbanteng\r\n', 63201, 60.22),
('3302200\r\n', 1, 'Baturraden\r\n', 54092, 45.53),
('3302210\r\n', 1, 'Sumbang\r\n', 95916, 53.42),
('3302220\r\n', 1, 'Kembaran\r\n', 82592, 25.92),
('3302230\r\n', 1, 'Sokaraja\r\n', 90525, 29.92),
('3302710\r\n', 1, 'Purwokerto Selatan', 73053, 13.75),
('3302720\r\n', 1, 'Purwokerto Barat\r\n', 53349, 7.40),
('3302730\r\n', 1, 'Purwokerto Timur\r\n', 55270, 8.42),
('3302740\r\n', 1, 'Purwokerto Utara\r\n', 50093, 9.01);

-- --------------------------------------------------------

--
-- Table structure for table `sekolah`
--

CREATE TABLE `sekolah` (
  `npsn` int(11) NOT NULL,
  `kode_kecamatan` varchar(100) NOT NULL,
  `nama_sekolah` varchar(100) NOT NULL,
  `alamat_sekolah` varchar(100) NOT NULL,
  `status` varchar(100) NOT NULL,
  `jenjang_pendidikan` varchar(100) NOT NULL,
  `koordinat` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sekolah`
--

INSERT INTO `sekolah` (`npsn`, `kode_kecamatan`, `nama_sekolah`, `alamat_sekolah`, `status`, `jenjang_pendidikan`, `koordinat`) VALUES
(20301690, '3302070\r\n', 'SD NEGERI 2 SUMPIUH', 'Jalan Nusawungu No.64', 'NEGERI', 'SD', '-7.6153800,109.3645500'),
(20301735, '3302170\r\n', 'SD NEGERI 2 PEJOGOL', 'Desa Pejogol Rt 05/03', 'NEGERI', 'SD', '-7.4319000,109.1719000'),
(20301818, '3302740\r\n', 'SD NEGERI 3 BANCARKEMBAR', 'Jl. Ringin Tirto No.742', 'NEGERI', 'SD', '-7.4098767,109.2412067'),
(20302314, '3302230\r\n', 'SDN 1 KARANGKEDAWUNG', 'Jl. Pramuka No.2 ', 'NEGERI', 'SD', '-7.4564000,109.2881000'),
(20302546, '3302170\r\n', 'SD NEGERI 2 GUNUNGLURAH', 'Utara Lapangan Mataram Rt 04 Rw 01 Gununglurah', 'NEGERI', 'SD', '-7.4283000,109.1292000'),
(20302606, '3302140\r\n', 'SDN 2 DARMAKRADENAN', 'Jl. Raya Ajibarang Gumelar', 'NEGERI', 'SD', '-7.4205000,109.0384000'),
(20302770, '3302140\r\n', 'SDN 1 KRACAK', 'Kracak , RT. 03 / RW. 01', 'NEGERI', 'SD', '-7.4050000,109.0644000');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `kabupaten`
--
ALTER TABLE `kabupaten`
  ADD PRIMARY KEY (`id_kabupaten`);

--
-- Indexes for table `kecamatan`
--
ALTER TABLE `kecamatan`
  ADD PRIMARY KEY (`kode_kecamatan`),
  ADD KEY `id_kabupaten` (`id_kabupaten`);

--
-- Indexes for table `sekolah`
--
ALTER TABLE `sekolah`
  ADD PRIMARY KEY (`npsn`),
  ADD KEY `kode_kecamatan` (`kode_kecamatan`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `kecamatan`
--
ALTER TABLE `kecamatan`
  ADD CONSTRAINT `kecamatan_ibfk_1` FOREIGN KEY (`id_kabupaten`) REFERENCES `kabupaten` (`id_kabupaten`);

--
-- Constraints for table `sekolah`
--
ALTER TABLE `sekolah`
  ADD CONSTRAINT `sekolah_ibfk_1` FOREIGN KEY (`kode_kecamatan`) REFERENCES `kecamatan` (`kode_kecamatan`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
