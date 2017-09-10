-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 10, 2017 at 07:10 PM
-- Server version: 10.1.25-MariaDB
-- PHP Version: 5.6.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `databaseku`
--

-- --------------------------------------------------------

--
-- Table structure for table `barang`
--

CREATE TABLE `barang` (
  `ID` int(11) NOT NULL,
  `Nama` text,
  `Kategori` enum('Storage','RAM','VGA') NOT NULL DEFAULT 'Storage',
  `Deskripsi` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `barang`
--

INSERT INTO `barang` (`ID`, `Nama`, `Kategori`, `Deskripsi`) VALUES
(1, 'SSD WESTERN DIGITAL GREEN-120G', 'Storage', 'SSD Western Digital yang berkapasitas 120GB. Memiliki kecepatan sampai dengan 540MB/s'),
(2, 'HDD INT 3.5 SATA TOSHIBA 500G', 'Storage', 'HDD Internal Toshina yang memiliki ukuran 3.5\" dan berkapasitas 500GB'),
(3, 'RAM V-GEN DDR2 1 GB PC-5300', 'RAM', 'RAM V-GEN DDR2 PC-5300 yang berkapasitas 1GB'),
(4, 'RAM TRANSCEND DDR2 PC5300/6400 - 2GB ', 'RAM', 'RAM TRANSCEND DDR2 PC5300/6400 dengan kapasitas 2GB');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `barang`
--
ALTER TABLE `barang`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `barang`
--
ALTER TABLE `barang`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
