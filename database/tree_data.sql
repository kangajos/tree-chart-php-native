-- phpMyAdmin SQL Dump
-- version 4.6.6deb5ubuntu0.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jan 14, 2021 at 07:44 AM
-- Server version: 5.7.32-0ubuntu0.18.04.1
-- PHP Version: 7.2.24-0ubuntu0.18.04.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tree_data`
--

-- --------------------------------------------------------

--
-- Table structure for table `tabletransactall`
--

CREATE TABLE `tabletransactall` (
  `id` int(4) NOT NULL,
  `nobatch` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `noreg` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `idorder` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `iddeliveryorder` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dateofreceipt` date NOT NULL,
  `qty` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `froms` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tos` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `level` int(1) NOT NULL,
  `parent_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tabletransactall`
--

INSERT INTO `tabletransactall` (`id`, `nobatch`, `noreg`, `idorder`, `iddeliveryorder`, `dateofreceipt`, `qty`, `froms`, `tos`, `level`, `parent_id`) VALUES
(1, 'A00001', 'DKL9521618017B1', 'PO001', 'DO004', '2020-11-22', '25000', 'Pabrik1', 'PBF1', 1, 10),
(2, 'C00001', 'DKL1321643082A1', 'PO002', 'DO003', '2020-11-22', '20000', 'Pabrik1', 'PBF1', 1, 12),
(3, 'B00001', 'DKL1021638529A1', 'PO003', 'DO002', '2020-11-22', '15000', 'Pabrik1', 'PBF1', 1, 11),
(4, 'D00001', 'DBL7821628101A1', 'PO004', 'DO001', '2020-11-22', '15000', 'Pabrik1', 'PBF1', 1, 9),
(5, 'A00001', 'DKL9521618017B1', 'PO001', 'DO004', '2020-11-22', '10', 'PBF1', 'APOTIK1', 2, 1),
(6, 'C00001', 'DKL1321643082A1', 'PO002', 'DO003', '2020-11-22', '20', 'PBF1', 'APOTIK1', 2, 2),
(7, 'B00001', 'DKL1021638529A1', 'PO003', 'DO002', '2020-11-22', '20', 'PBF1', 'APOTIK1', 2, 3),
(8, 'D00001', 'DBL7821628101A1', 'PO004', 'DO001', '2020-11-22', '25', 'PBF1', 'APOTIK1', 2, 4),
(9, 'D00001', 'DBL7821628101A1', '', '', '0000-00-00', '250000', 'Pabrik1', '', 0, NULL),
(10, 'A00001', 'DBL7821628101A1', '', '', '0000-00-00', '250000', 'Pabrik1', '', 0, NULL),
(11, 'B00001', 'DBL7821628101A1', '', '', '0000-00-00', '250000', 'Pabrik1', '', 0, NULL),
(12, 'C00001', 'DBL7821628101A1', '', '', '0000-00-00', '250000', 'Pabrik1', '', 0, NULL),
(13, 'A00001', 'DKL9521618017B1', 'PO001', 'DO001', '2020-11-22', '10', 'APOTIK1', 'KONSUMEN1', 3, 5),
(14, 'A00001', 'DKL9521618017B1', 'PO002', 'DO002', '2020-11-22', '20', 'APOTIK1', 'KONSUMEN2', 0, 5),
(15, 'A00001', 'DKL9521618017B1', 'PO001', 'DO001', '2020-11-22', '10', 'APOTIK1', 'KONSUMEN1', 3, 5),
(16, 'A00001', 'DKL9521618017B1', 'PO002', 'DO002', '2020-11-22', '20', 'APOTIK1', 'KONSUMEN2', 3, 5),
(17, 'A00001', 'DKL9521618017B1', 'PO003', 'DO003', '2020-11-22', '200', 'PBF1', 'APOTIK1', 2, 1),
(18, 'A00001', 'DKL1021638529A1', 'PO004', 'DO003', '2020-11-22', '200', 'PBF1', 'APOTIK2', 2, 1),
(19, 'B00001', 'DKL9521618017B1', 'PO003', 'DO003', '2020-11-22', '200', 'Pabrik1', 'PBF1', 1, 11),
(20, 'B00001', 'DKL9521618017B1', 'PO004', 'DO003', '2020-11-22', '200', 'Pabrik1', 'PBF2', 1, 11),
(21, 'B00001', 'DKL1021638529A1', 'PO001', 'DO004', '2020-11-22', '200', 'PBF1', 'APOTIK1', 2, 3),
(22, 'B00001', 'DKL1021638529A1', 'PO002', 'DO005', '2020-11-22', '200', 'PBF1', 'APOTIK2', 2, 3),
(23, 'B00001', 'DKL1021638529A1', 'PO001', 'DO003', '2020-11-22', '10', 'APOTIK1', 'KONSUMEN1', 3, 7),
(24, 'B00001', 'DKL1021638529A1', 'PO002', 'DO003', '2020-11-22', '20', 'APOTIK1', 'KONSUMEN2', 3, 7);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tabletransactall`
--
ALTER TABLE `tabletransactall`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tabletransactall`
--
ALTER TABLE `tabletransactall`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
