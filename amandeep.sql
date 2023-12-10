-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306:3306
-- Generation Time: Dec 10, 2023 at 09:57 AM
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
-- Database: `amandeep`
--

-- --------------------------------------------------------

--
-- Table structure for table `ticker_data`
--

CREATE TABLE `ticker_data` (
  `id` int(8) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `last` varchar(255) DEFAULT NULL,
  `buy` varchar(255) DEFAULT NULL,
  `sell` varchar(255) DEFAULT NULL,
  `volume` varchar(255) DEFAULT NULL,
  `base_unit` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ticker_data`
--

INSERT INTO `ticker_data` (`id`, `name`, `last`, `buy`, `sell`, `volume`, `base_unit`) VALUES
(1, 'BTC/INR', '3805000.0', '3805000.0', '3818600.0', '2.82397', 'btc'),
(2, 'XRP/INR', '57.992', '57.276', '57.9926', '120992.0', 'xrp'),
(3, 'ETH/INR', '202050.0', '202050.1', '204000.0', '35.922', 'eth'),
(4, 'TRX/INR', '9.2697', '9.2697', '9.3895', '518786.0', 'trx'),
(5, 'EOS/INR', '89.39', '89.01', '95.0', '8186.87', 'eos'),
(6, 'ZIL/INR', '2.37', '2.38', '2.41', '326789.0', 'zil'),
(7, 'BAT/INR', '22.85', '21.921', '22.791', '27227.49', 'bat'),
(8, 'ZRX/INR', '37.8', '37.0', '37.76', '5750.73', 'zrx'),
(9, 'REQ/INR', '7.9013', '7.9021', '8.1798', '10712.0', 'req'),
(10, 'NULS/INR', '108.0', '0.0', '0.0', '0.0', 'nuls');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ticker_data`
--
ALTER TABLE `ticker_data`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `ticker_data`
--
ALTER TABLE `ticker_data`
  MODIFY `id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
