-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 08, 2020 at 01:23 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `rentfilm`
--

-- --------------------------------------------------------

--
-- Table structure for table `datafilm`
--

CREATE TABLE `datafilm` (
  `id` int(11) NOT NULL,
  `judul` varchar(100) NOT NULL,
  `genre` varchar(3) DEFAULT NULL,
  `rating` int(2) NOT NULL,
  `harga` varchar(50) NOT NULL,
  `sinopsis` text NOT NULL,
  `gambar` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `datafilm`
--

INSERT INTO `datafilm` (`id`, `judul`, `genre`, `rating`, `harga`, `sinopsis`, `gambar`) VALUES
(7, 'Harry Potter and the Prisoner of Azkaban', '008', 8, '200000', 'Harry kembali ke Hogwarts di tahun ketiganya, dan bukan saja memiliki guru baru pertahanan terhadap ilmu sihir hitam, ia juga berhadapan langsung dengan Sirius Black, yang berhasil kabur dari Azkaban.', 'Harry Potter and the Prisoner of Azkaban.jpg'),
(8, 'Transformer Revenge of The Fallen', '013', 7, '120000', 'Sam meninggalkan Autobots untuk hidup secara normal. Tapi, ketika pikirannya dipenuhi dengan simbol-simbol samar, Decepticons mengincarnya dan ia pun terseret kembali ke dalam peperangan antar robot.', 'Transformers.jpg'),
(9, 'Interstellar', '013', 8, '200000', 'Sebuah tim penjelajah antar galaksi harus melewati lubang cacing dan terjebak di dimensi waktu ruang angkasa dalam upaya untuk menjamin kelangsungan hidup umat manusia di planet bumi.', 'interstellar.jpg'),
(10, 'Joker', '006', 9, '150000', 'Arthur Fleck, seorang badut pesta, hidup dalam keadaan sulit bersama ibunya yang sakit-sakitan. Karena orang-orang menganggapnya aneh, ia memutuskan untuk berubah menjadi jahat dan membuat kekacauan.', 'joker.jpg'),
(12, 'Despicable Me', '003', 9, '100000', 'Gru, dalang kejahatan, mengadopsi tiga anak yatim sebagai tameng untuk melakukan pencurian terbesar dalam sejarah. Hidupnya berubah ketika gadis-gadis kecil ini melihat dirinya sebagai ayah mereka.', 'despicable.jpg'),
(14, 'Toy Story 2', '003', 9, '80000', 'Ketika Woody diculik oleh kolektor mainan yang serakah, Buzz dan teman-teman pergi menyelamatkan. Namun Woody terlalu tertarik dengan ide menjadi abadi di museum.', 'Toy-Story-2-.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `genrefilm`
--

CREATE TABLE `genrefilm` (
  `id_genre` varchar(3) NOT NULL,
  `genre` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `genrefilm`
--

INSERT INTO `genrefilm` (`id_genre`, `genre`) VALUES
('001', 'Action'),
('002', 'Adventure'),
('003', 'Animation'),
('004', 'Comedy'),
('005', 'Documentary'),
('006', 'Drama'),
('007', 'Education'),
('008', 'Fantasy'),
('009', 'History'),
('010', 'Horror'),
('011', 'Kids & Family'),
('012', 'Romance'),
('013', 'Sci-fi');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(16) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `role` varchar(6) NOT NULL,
  `saldo` int(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `password`, `role`, `saldo`) VALUES
(1, 'gerryyf', 'coba123211@gmail.com', '$2y$10$6sqJr8MUJwl9iZqYI1nZ7Op0wjmUMaAoFi6lsKOSfFE7dqi4It/BW', '', 0),
(5, 'coba', 'coba@gmail.com', '$2y$10$.g.vmxJ8lZi/WH.NyOgV4.BTRFLsjVnx1zC4.tW1wdlpAVkzKEi5m', '', 0),
(7, 'admin', 'admin', '$2y$10$Dncfzoub4grfgHA/u3qw8eTb/HZ7UDTqHADfiA3OtaEGKMXd1TBom', 'admin', 350000);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `datafilm`
--
ALTER TABLE `datafilm`
  ADD PRIMARY KEY (`id`),
  ADD KEY `keyidgenre` (`genre`);

--
-- Indexes for table `genrefilm`
--
ALTER TABLE `genrefilm`
  ADD PRIMARY KEY (`id_genre`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `datafilm`
--
ALTER TABLE `datafilm`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `datafilm`
--
ALTER TABLE `datafilm`
  ADD CONSTRAINT `datafilm_ibfk_1` FOREIGN KEY (`genre`) REFERENCES `genrefilm` (`id_genre`) ON DELETE SET NULL ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
