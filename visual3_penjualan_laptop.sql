-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 01, 2023 at 06:00 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `visual3_penjualan_laptop`
--

-- --------------------------------------------------------

--
-- Table structure for table `karyawan`
--

CREATE TABLE `karyawan` (
  `id_karyawan` int(8) NOT NULL,
  `id_user` int(8) DEFAULT NULL,
  `nik` int(8) DEFAULT NULL,
  `nama` varchar(50) DEFAULT NULL,
  `jk` varchar(10) DEFAULT NULL,
  `tgl_lahir` date DEFAULT NULL,
  `tmpt_lahir` varchar(20) DEFAULT NULL,
  `alamat` varchar(100) DEFAULT NULL,
  `telp` varchar(20) DEFAULT NULL,
  `status` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `karyawan`
--

INSERT INTO `karyawan` (`id_karyawan`, `id_user`, `nik`, `nama`, `jk`, `tgl_lahir`, `tmpt_lahir`, `alamat`, `telp`, `status`) VALUES
(1, 1, 123456, 'novriyan', 'L', '2002-11-09', 'Banjarmasin', 'Jln. Kail', '0895375435635', 'Aktif'),
(2, 2, 111111, 'amin', 'L', '2002-10-10', 'Banjarmasin', 'Jln. Nasi Goreng\r\n', '0895696969696', 'Aktif'),
(3, 3, 222222, 'rozan', 'L', '2001-09-07', 'Banjarmasin', 'Jln. Puncak Ma\'rifat\r\n', '0895089684862', 'Aktif'),
(4, 4, 333333, 'annisa', 'P', '2003-08-10', 'Banjarmasin', 'Jln. Sumedang', '0895738867406', 'Aktif'),
(5, 5, 444444, 'robi', 'L', '2000-06-27', 'Banjarmasin', 'Jln. Firdaus', '0895768395834', 'Inaktif'),
(6, 6, 6, 'bawss', 'L', '2023-11-28', '6', '6', '6', 'Aktif');

-- --------------------------------------------------------

--
-- Table structure for table `laptop`
--

CREATE TABLE `laptop` (
  `id_laptop` int(8) NOT NULL,
  `id_supplier` int(8) DEFAULT NULL,
  `nm_laptop` varchar(50) DEFAULT NULL,
  `hrg_laptop` int(20) DEFAULT NULL,
  `stok` int(8) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `laptop`
--

INSERT INTO `laptop` (`id_laptop`, `id_supplier`, `nm_laptop`, `hrg_laptop`, `stok`) VALUES
(1, 1, 'Lenovo Legion 5 Pro', 7000000, 10),
(2, 2, 'ASUS Zenbook S 13', 20000000, 2),
(3, 3, 'Acer Predator Helios 16', 23000000, 3),
(4, 4, 'Dell Vostro V3401', 7000000, 5),
(5, 5, 'Infinix Inbook X2', 5000000, 12);

-- --------------------------------------------------------

--
-- Table structure for table `pelanggan`
--

CREATE TABLE `pelanggan` (
  `id_pelanggan` int(8) NOT NULL,
  `nm_pelanggan` varchar(100) DEFAULT NULL,
  `jk` varchar(10) DEFAULT NULL,
  `no_telp` varchar(20) DEFAULT NULL,
  `alamat` varchar(150) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pelanggan`
--

INSERT INTO `pelanggan` (`id_pelanggan`, `nm_pelanggan`, `jk`, `no_telp`, `alamat`) VALUES
(1, 'Arif\r\n', 'L', '089587959496', 'Jln. Ridho'),
(2, 'Rahman\r\n', 'L', '089586738563', 'Jln. Bumbu\r\n'),
(3, 'Udin', 'L', '089596878687', 'Jln. Buntu\r\n'),
(4, 'Nina\r\n', 'P', '089512312312', 'Jln. Lurus\r\n'),
(5, 'Edo\r\n', 'L', '089584942390', 'Jln. Berliku\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `supplier`
--

CREATE TABLE `supplier` (
  `id_supplier` int(8) NOT NULL,
  `nm_supplier` varchar(50) DEFAULT NULL,
  `alamat` varchar(100) DEFAULT NULL,
  `telp` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `supplier`
--

INSERT INTO `supplier` (`id_supplier`, `nm_supplier`, `alamat`, `telp`) VALUES
(1, 'PT. Laptop Bercahaya', 'Jln. Bunga bangkai', '0895375435634'),
(2, 'PT. Acon Financindo', 'Jln. Melati', '0895375435633'),
(3, 'PT. Stephen Cahyono ', 'Jln. Jambi\r\n', '0895375435632'),
(4, 'PT. Baletify', 'Jln. Sulawesi\r\n', '0895375435631'),
(5, 'PT. Aulia ', 'Jln. Samarinda\r\n', '0895375435630');

-- --------------------------------------------------------

--
-- Table structure for table `transaksi`
--

CREATE TABLE `transaksi` (
  `id_transaksi` int(8) NOT NULL,
  `id_laptop` int(8) DEFAULT NULL,
  `id_pelanggan` int(8) DEFAULT NULL,
  `id_karyawan` int(8) DEFAULT NULL,
  `tanggal` date DEFAULT NULL,
  `keterangan` varchar(150) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `transaksi`
--

INSERT INTO `transaksi` (`id_transaksi`, `id_laptop`, `id_pelanggan`, `id_karyawan`, `tanggal`, `keterangan`) VALUES
(1, 1, 1, 1, '2022-09-20', 'Transaksi berjalan lancar		\r\n'),
(2, 2, 2, 2, '2021-10-10', 'Transaksi berjalan lancar		\r\n'),
(3, 3, 3, 3, '2022-06-21', 'Transaksi berjalan lancar		\r\n'),
(4, 4, 4, 4, '2023-03-13', 'Transaksi berjalan lancar		\r\n'),
(5, 5, 5, 5, '2020-10-13', 'Transaksi berjalan lancar		\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id_user` int(8) NOT NULL,
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id_user`, `username`, `password`) VALUES
(1, 'novriyan', 'admin'),
(2, 'amin', '123'),
(3, 'rozan', 'akbar'),
(4, 'annisa', 'abcde'),
(5, 'robi', 'robin'),
(6, 'Enam', '6');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `karyawan`
--
ALTER TABLE `karyawan`
  ADD PRIMARY KEY (`id_karyawan`),
  ADD KEY `id_user` (`id_user`);

--
-- Indexes for table `laptop`
--
ALTER TABLE `laptop`
  ADD PRIMARY KEY (`id_laptop`),
  ADD KEY `id_supplier` (`id_supplier`);

--
-- Indexes for table `pelanggan`
--
ALTER TABLE `pelanggan`
  ADD PRIMARY KEY (`id_pelanggan`);

--
-- Indexes for table `supplier`
--
ALTER TABLE `supplier`
  ADD PRIMARY KEY (`id_supplier`);

--
-- Indexes for table `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`id_transaksi`),
  ADD KEY `id_pelanggan` (`id_pelanggan`),
  ADD KEY `id_karyawan` (`id_karyawan`),
  ADD KEY `id_laptop` (`id_laptop`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `karyawan`
--
ALTER TABLE `karyawan`
  ADD CONSTRAINT `karyawan_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `user` (`id_user`);

--
-- Constraints for table `laptop`
--
ALTER TABLE `laptop`
  ADD CONSTRAINT `laptop_ibfk_1` FOREIGN KEY (`id_supplier`) REFERENCES `supplier` (`id_supplier`);

--
-- Constraints for table `transaksi`
--
ALTER TABLE `transaksi`
  ADD CONSTRAINT `transaksi_ibfk_1` FOREIGN KEY (`id_pelanggan`) REFERENCES `pelanggan` (`id_pelanggan`),
  ADD CONSTRAINT `transaksi_ibfk_2` FOREIGN KEY (`id_karyawan`) REFERENCES `karyawan` (`id_karyawan`),
  ADD CONSTRAINT `transaksi_ibfk_3` FOREIGN KEY (`id_laptop`) REFERENCES `laptop` (`id_laptop`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
