-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 07, 2024 at 12:44 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `aplikasi_kepegawaian`
--

-- --------------------------------------------------------

--
-- Table structure for table `data_karyawan`
--

CREATE TABLE `data_karyawan` (
  `Nama` varchar(30) NOT NULL,
  `NIP` varchar(30) NOT NULL,
  `Jabatan` varchar(30) NOT NULL,
  `Jenis_kelamin` varchar(30) NOT NULL,
  `Agama` varchar(30) NOT NULL,
  `Alamat` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `data_karyawan`
--

INSERT INTO `data_karyawan` (`Nama`, `NIP`, `Jabatan`, `Jenis_kelamin`, `Agama`, `Alamat`) VALUES
('Revan Azriel Savana', '28587667', 'Admin', 'Laki-Laki', 'Islam', 'Kandangan'),
('Nabila Ayudya Lestari', '2334674857', 'Operator Komputer', 'Perempuan', 'Islam', 'Mungkur Uyam No 42'),
('YunindaNadya Lestari', '3322555', 'Sekretaris', 'Perempuan', 'Islam', 'Paringin');

-- --------------------------------------------------------

--
-- Table structure for table `tb_login`
--

CREATE TABLE `tb_login` (
  `USERNAME` text NOT NULL,
  `PASSWORD` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tb_login`
--

INSERT INTO `tb_login` (`USERNAME`, `PASSWORD`) VALUES
('', 'Nabila13'),
('', '12345'),
('nabila1', '12345'),
('bila', '12345'),
('nabilaa', '12345'),
('Nabilaayu', '12345'),
('Nabilaalstr', '12345');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
