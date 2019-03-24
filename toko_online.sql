-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Mar 24, 2019 at 07:51 PM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.3.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `toko_online`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `user_id` int(11) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL,
  `fullname` varchar(30) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`user_id`, `username`, `password`, `fullname`) VALUES
(3, 'admin', 'admin', 'hakko bio richard');

-- --------------------------------------------------------

--
-- Table structure for table `barang`
--

CREATE TABLE `barang` (
  `br_id` int(6) NOT NULL,
  `br_nm` varchar(50) NOT NULL,
  `br_item` int(4) NOT NULL,
  `br_hrg` int(10) NOT NULL,
  `br_stok` int(9) NOT NULL,
  `br_satuan` varchar(20) NOT NULL,
  `br_gbr` varchar(100) NOT NULL,
  `ket` varchar(250) NOT NULL,
  `br_sts` varchar(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `barang`
--

INSERT INTO `barang` (`br_id`, `br_nm`, `br_item`, `br_hrg`, `br_stok`, `br_satuan`, `br_gbr`, `ket`, `br_sts`) VALUES
(1, 'Kaos Sudirman', 1, 60000, 12, 'Pcs', 'gambar/8.jpg', 'Bahan cvc bandung build up tanpa jahitan samping', 'Y'),
(2, 'Kaos Skaters', 1, 65000, 24, 'Pcs', 'gambar/9.jpg', 'Bahan Cotton Combed 24s built up', 'Y'),
(3, 'Kaos Emwe', 1, 80000, 30, 'Pcs', 'gambar/6.jpg', 'Bahan cvc bandung build up tanpa jahitan samping', 'Y'),
(4, 'Kaos Begin', 1, 80000, 20, 'Pcs', 'gambar/7.jpg', 'Bahan cvc bandung build up tanpa jahitan samping', 'Y'),
(5, 'Kaos Man City', 1, 60000, 30, 'Pcs', 'gambar/2.jpg', 'Bahan Cotton Combed 20s Jahitan samping', 'Y'),
(6, 'Kaos H & L', 1, 75000, 20, 'Pcs', 'gambar/5.jpg', 'Bahan Cotton Combed 24s built up', 'Y'),
(7, 'Kaos Cool Blue', 1, 70000, 20, 'Pcs', 'gambar/4.jpg', 'Bahan kardet jakarta', 'Y'),
(8, 'Kaos Feed Me', 1, 65000, 12, 'Pcs', 'gambar/3.jpg', 'Bahan Cotton Combed 24s built up', 'Y'),
(9, 'Kaos Art Hitam', 1, 55000, 20, 'Pcs', 'gambar/1.jpg', 'Bahan cvc bandung build up tanpa jahitan samping', 'Y');

-- --------------------------------------------------------

--
-- Table structure for table `no_pem`
--

CREATE TABLE `no_pem` (
  `nopem` varchar(4) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `no_pem`
--

INSERT INTO `no_pem` (`nopem`) VALUES
('79');

-- --------------------------------------------------------

--
-- Table structure for table `pembelian`
--

CREATE TABLE `pembelian` (
  `no_hdpem` varchar(10) NOT NULL,
  `tgl_hdpem` date NOT NULL,
  `usr_hdpem` int(11) NOT NULL,
  `crkir_hdpem` tinyint(4) NOT NULL,
  `crpem_hdpem` tinyint(4) NOT NULL,
  `penerima_hdpem` varchar(50) NOT NULL,
  `almt_pem` text NOT NULL,
  `kp_pem` varchar(6) NOT NULL,
  `kota_pem` varchar(30) NOT NULL,
  `tlp` varchar(16) NOT NULL,
  `rek_pem` varchar(50) NOT NULL,
  `nmrek_pem` varchar(20) NOT NULL,
  `bank_pem` varchar(25) NOT NULL,
  `ct_pem` text NOT NULL,
  `tot_hdpem` int(11) NOT NULL,
  `sts_pem` varchar(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `transaksi`
--

CREATE TABLE `transaksi` (
  `hd_trpem` varchar(10) NOT NULL,
  `br_trpem` varchar(6) NOT NULL,
  `qty_trpem` int(11) NOT NULL,
  `hrg_trpem` int(11) NOT NULL,
  `sts_trpem` varchar(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id_usr` int(11) NOT NULL,
  `nm_usr` varchar(50) NOT NULL,
  `log_usr` varchar(20) NOT NULL,
  `pas_usr` varchar(100) NOT NULL,
  `email_usr` varchar(50) NOT NULL,
  `almt_usr` text NOT NULL,
  `kp_usr` varchar(6) NOT NULL,
  `kota_usr` varchar(25) NOT NULL,
  `tlp` varchar(20) NOT NULL,
  `rek` varchar(30) NOT NULL,
  `nmrek` varchar(30) NOT NULL,
  `bank` varchar(30) NOT NULL,
  `sts_usr` varchar(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id_usr`, `nm_usr`, `log_usr`, `pas_usr`, `email_usr`, `almt_usr`, `kp_usr`, `kota_usr`, `tlp`, `rek`, `nmrek`, `bank`, `sts_usr`) VALUES
(28, 'Hakko Bio Richard', 'acchoblues', 'hakko270990', 'accho_blues@yahoo.co.id', 'Kp. Wangkal Rt.03 Rw.07 Desa kalijaya Kec. Cikarang barat', '17520', 'Kab. Bekasi', '085694984803', '121212121212', 'Hakko Bio Richard', 'BCA', ''),
(27, 'Hakko Bio Richard', 'acchoblues', 'hakko270990', 'accho_blues@yahoo.co.id', 'Kp. Wangkal Rt.03 Rw.07 Desa kalijaya Kec. Cikarang barat', '17520', 'Kab. Bekasi', '085694984803', '121212121212', 'Hakko Bio Richard', 'Mandiri', ''),
(29, 'Hakko Bio Richard', 'hakko bio richard', 'romance18', 'accho_blues@yahoo.co.id', 'Kp. Wangkal Rt.03 Rw.07 Desa kalijaya Kec. Cikarang barat', '17520', 'Kab. Bekasi', '085694984803', '121212121212', 'Hakko Bio Richard', 'Bank Jabar', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `barang`
--
ALTER TABLE `barang`
  ADD PRIMARY KEY (`br_id`);

--
-- Indexes for table `pembelian`
--
ALTER TABLE `pembelian`
  ADD PRIMARY KEY (`no_hdpem`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_usr`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `barang`
--
ALTER TABLE `barang`
  MODIFY `br_id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id_usr` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
