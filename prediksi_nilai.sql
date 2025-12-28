-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 28, 2025 at 12:48 PM
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
-- Database: `prediksi_nilai`
--

-- --------------------------------------------------------

--
-- Table structure for table `data_input`
--

CREATE TABLE `data_input` (
  `id_input` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `presensi` float DEFAULT NULL,
  `nilai_uts` float DEFAULT NULL,
  `nilai_uas` float DEFAULT NULL,
  `nilai_tugas` float DEFAULT NULL,
  `jam_belajar` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `data_input`
--

INSERT INTO `data_input` (`id_input`, `user_id`, `presensi`, `nilai_uts`, `nilai_uas`, `nilai_tugas`, `jam_belajar`) VALUES
(1, 1, 100, 35, 40, 6, 2),
(2, 3, 100, 30, 35, 9, 24),
(3, 3, 100, 30, 35, 9, 3),
(4, 3, 100, 30, 35, 9, 1),
(5, 3, 100, 30, 35, 9, 4),
(6, 3, 100, 30, 35, 9, 5),
(7, 3, 100, 30, 35, 9, 10),
(8, 3, 100, 30, 35, 9, 12),
(9, 3, 100, 30, 35, 9, 9),
(10, 3, 100, 30, 35, 10, 9),
(11, 3, 92, 30, 35, 9, 9),
(12, 3, 100, 33, 35, 9, 0),
(13, 3, 100, 33, 35, 9, 5),
(14, 1, 89, 30, 38, 5, 5),
(15, 1, 89, 30, 38, 10, 5),
(16, 1, 89, 30, 38, 10, 1),
(17, 1, 89, 30, 38, 8, 1);

-- --------------------------------------------------------

--
-- Table structure for table `hasil_prediksi`
--

CREATE TABLE `hasil_prediksi` (
  `id_prediksi` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `id_input` int(11) DEFAULT NULL,
  `nilai_prediksi` float DEFAULT NULL,
  `grade` varchar(2) DEFAULT NULL,
  `tanggal_prediksi` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `hasil_prediksi`
--

INSERT INTO `hasil_prediksi` (`id_prediksi`, `user_id`, `id_input`, `nilai_prediksi`, `grade`, `tanggal_prediksi`) VALUES
(1, 1, 1, 76.5834, 'C', '2025-12-21 23:11:09'),
(2, 3, 2, 26.0592, 'E', '2025-12-22 11:21:30'),
(3, 3, 3, 83.0572, 'B', '2025-12-22 11:22:00'),
(4, 3, 4, 77.2791, 'C', '2025-12-22 11:22:24'),
(5, 3, 5, 85.2154, 'B', '2025-12-22 11:22:38'),
(6, 3, 6, 86.8864, 'B', '2025-12-22 11:22:47'),
(7, 3, 7, 87.9326, 'B', '2025-12-22 11:22:54'),
(8, 3, 8, 84.9404, 'B', '2025-12-22 11:23:01'),
(9, 3, 9, 88.6978, 'B', '2025-12-22 11:23:10'),
(10, 3, 10, 91.7196, 'A', '2025-12-22 11:23:20'),
(11, 3, 11, 87.7167, 'B', '2025-12-22 11:23:32'),
(12, 3, 12, 75.1388, 'C', '2025-12-22 11:24:32'),
(13, 3, 13, 89.6178, 'B', '2025-12-22 11:24:45'),
(14, 1, 14, 72.0282, 'C', '2025-12-25 12:19:55'),
(15, 1, 15, 92.0798, 'A', '2025-12-25 12:20:06'),
(16, 1, 16, 80.1628, 'B', '2025-12-25 12:20:14'),
(17, 1, 17, 70.9825, 'C', '2025-12-25 12:20:21');

-- --------------------------------------------------------

--
-- Table structure for table `login_users`
--

CREATE TABLE `login_users` (
  `id_user` int(11) NOT NULL,
  `nama_lengkap` varchar(100) DEFAULT NULL,
  `nis` varchar(20) DEFAULT NULL,
  `kelas` varchar(10) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `login_users`
--

INSERT INTO `login_users` (`id_user`, `nama_lengkap`, `nis`, `kelas`, `email`, `password`) VALUES
(1, 'khaira', '24523125', 'E', '24523125@uii.ac.id', 'inipwskrg'),
(3, 'zarra', '24523191', 'IPA 2', 'fiziasjaeminwife24@gmail.com', '02092006');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `data_input`
--
ALTER TABLE `data_input`
  ADD PRIMARY KEY (`id_input`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `hasil_prediksi`
--
ALTER TABLE `hasil_prediksi`
  ADD PRIMARY KEY (`id_prediksi`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `id_input` (`id_input`);

--
-- Indexes for table `login_users`
--
ALTER TABLE `login_users`
  ADD PRIMARY KEY (`id_user`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `data_input`
--
ALTER TABLE `data_input`
  MODIFY `id_input` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `hasil_prediksi`
--
ALTER TABLE `hasil_prediksi`
  MODIFY `id_prediksi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `login_users`
--
ALTER TABLE `login_users`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `data_input`
--
ALTER TABLE `data_input`
  ADD CONSTRAINT `data_input_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `login_users` (`id_user`) ON DELETE CASCADE;

--
-- Constraints for table `hasil_prediksi`
--
ALTER TABLE `hasil_prediksi`
  ADD CONSTRAINT `hasil_prediksi_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `login_users` (`id_user`) ON DELETE CASCADE,
  ADD CONSTRAINT `hasil_prediksi_ibfk_2` FOREIGN KEY (`id_input`) REFERENCES `data_input` (`id_input`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
