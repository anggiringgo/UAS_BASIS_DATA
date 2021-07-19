-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 19, 2021 at 09:12 AM
-- Server version: 10.4.16-MariaDB
-- PHP Version: 7.4.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `anggiringgouas_311910743`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`) VALUES
(4, 'anggiringgo', '123'),
(5, 'anggiringgo', '202cb962ac59075b964b07152d234b70');

-- --------------------------------------------------------

--
-- Table structure for table `data_bulan`
--

CREATE TABLE `data_bulan` (
  `id` int(35) NOT NULL,
  `nama` varchar(150) NOT NULL,
  `alamat` varchar(100) NOT NULL,
  `nomor` varchar(80) NOT NULL,
  `berat` varchar(68) NOT NULL,
  `jenis` varchar(75) NOT NULL,
  `tanggal` varchar(85) NOT NULL,
  `jumlah` varchar(90) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `data_bulan`
--

INSERT INTO `data_bulan` (`id`, `nama`, `alamat`, `nomor`, `berat`, `jenis`, `tanggal`, `jumlah`) VALUES
(10, 'Anggi Ringgo', 'karawang', '082225550101', '3', 'pakaian', '2021-07-18', '30000'),
(11, 'Zihan', 'Cikarang', '082223331234', '5', 'pakaian', '2021-07-20', '50000'),
(12, 'Fajar', 'Cikarang', '082221234566', '3', 'pakaian', '2021-07-20', '30000');

-- --------------------------------------------------------

--
-- Table structure for table `data_minggu`
--

CREATE TABLE `data_minggu` (
  `id` int(35) NOT NULL,
  `nama` varchar(150) NOT NULL,
  `alamat` varchar(100) NOT NULL,
  `nomor` varchar(80) NOT NULL,
  `berat` varchar(68) NOT NULL,
  `jenis` varchar(75) NOT NULL,
  `tanggal` varchar(85) NOT NULL,
  `jumlah` varchar(90) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `data_minggu`
--

INSERT INTO `data_minggu` (`id`, `nama`, `alamat`, `nomor`, `berat`, `jenis`, `tanggal`, `jumlah`) VALUES
(4, 'Zihan', 'Cikarang', '082223331234', '5', 'pakaian', '2021-07-20', '50000'),
(6, 'Fajar', 'Cikarang', '082221234566', '3', 'pakaian', '2021-07-20', '30000'),
(10, 'ringgo', 'karawang', '082225550101', '3', 'pakaian', '2021-07-19', '30000');

-- --------------------------------------------------------

--
-- Table structure for table `data_tahun`
--

CREATE TABLE `data_tahun` (
  `id` int(35) NOT NULL,
  `nama` varchar(150) NOT NULL,
  `alamat` varchar(100) NOT NULL,
  `nomor` varchar(80) NOT NULL,
  `berat` varchar(68) NOT NULL,
  `jenis` varchar(75) NOT NULL,
  `tanggal` varchar(85) NOT NULL,
  `jumlah` varchar(90) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `data_tahun`
--

INSERT INTO `data_tahun` (`id`, `nama`, `alamat`, `nomor`, `berat`, `jenis`, `tanggal`, `jumlah`) VALUES
(1, 'Anggi Ringgo', 'karawang', '082225550101', '3', 'pakaian', '2021-07-18', '30000'),
(2, 'Zihan', 'Cikarang', '082223331234', '5', 'pakaian', '2021-07-20', '50000'),
(3, 'Fajar', 'Cikarang', '082221234566', '3', 'pakaian', '2021-07-20', '30000');

-- --------------------------------------------------------

--
-- Table structure for table `harga`
--

CREATE TABLE `harga` (
  `id` int(40) NOT NULL,
  `harga` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `harga`
--

INSERT INTO `harga` (`id`, `harga`) VALUES
(1, '10000');

--
-- Triggers `harga`
--
DELIMITER $$
CREATE TRIGGER `update_harga` BEFORE UPDATE ON `harga` FOR EACH ROW insert into log_harga values('update data',now())
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `update_quantity` BEFORE UPDATE ON `harga` FOR EACH ROW insert into log_harga values('sebelum update harga',now());
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `log_harga`
--

CREATE TABLE `log_harga` (
  `id_log` int(11) NOT NULL,
  `id_harga` int(11) DEFAULT NULL,
  `quantity_lama` varchar(100) DEFAULT NULL,
  `quantity_baru` varchar(100) DEFAULT NULL,
  `waktu` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `log_harga`
--

INSERT INTO `log_harga` (`id_log`, `id_harga`, `quantity_lama`, `quantity_baru`, `waktu`) VALUES
(1, NULL, '5000', '7000', NULL),
(2, NULL, '5000', '7000', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `data_bulan`
--
ALTER TABLE `data_bulan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `data_minggu`
--
ALTER TABLE `data_minggu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `data_tahun`
--
ALTER TABLE `data_tahun`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `harga`
--
ALTER TABLE `harga`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `log_harga`
--
ALTER TABLE `log_harga`
  ADD PRIMARY KEY (`id_log`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `data_bulan`
--
ALTER TABLE `data_bulan`
  MODIFY `id` int(35) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `data_minggu`
--
ALTER TABLE `data_minggu`
  MODIFY `id` int(35) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `data_tahun`
--
ALTER TABLE `data_tahun`
  MODIFY `id` int(35) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `harga`
--
ALTER TABLE `harga`
  MODIFY `id` int(40) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `log_harga`
--
ALTER TABLE `log_harga`
  MODIFY `id_log` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
