-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 31, 2022 at 06:44 PM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 7.4.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tp1dpbo`
--

-- --------------------------------------------------------

--
-- Table structure for table `autor`
--

CREATE TABLE `autor` (
  `id` int(11) NOT NULL,
  `img` varchar(1000) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `jumlah_buku` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `autor`
--

INSERT INTO `autor` (`id`, `img`, `nama`, `jumlah_buku`) VALUES
(1, 'https://www.google.com/url?sa=i&url=https%3A%2F%2Fid.wikipedia.org%2Fwiki%2FRick_Riordan&psig=AOvVaw3AFKqYJ6vREGjgKVRezFaA&ust=1648819319562000&source=images&cd=vfe&ved=0CAsQjRxqFwoTCNiQ7-C48PYCFQAAAAAdAAAAABAD', 'Rick Riordan', 35),
(2, 'https://www.google.com/url?sa=i&url=https%3A%2F%2Fid.wikipedia.org%2Fwiki%2FGeorge_R._R._Martin&psig=AOvVaw0kgkbtU0Is_Tz7sGlrK7rq&ust=1648819999535000&source=images&cd=vfe&ved=0CAsQjRxqFwoTCLDa26S78PYCFQAAAAAdAAAAABAD', 'George R. R. Martin', 15),
(4, 'Cek', 'Bambang', 5);

-- --------------------------------------------------------

--
-- Table structure for table `buku`
--

CREATE TABLE `buku` (
  `id` int(11) NOT NULL,
  `img` varchar(1000) NOT NULL,
  `penerbit` varchar(50) NOT NULL,
  `autor` varchar(50) NOT NULL,
  `deskripsi` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `buku`
--

INSERT INTO `buku` (`id`, `img`, `penerbit`, `autor`, `deskripsi`) VALUES
(1, 'https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.tokopedia.com%2Fbriansnbooks%2Fpercy-jackson-the-olympians-01-the-lightning-thief-pb&psig=AOvVaw3qGq4wGCHRYqHlPn3jD3SJ&ust=1648819755313000&source=images&cd=vfe&ved=0CAsQjRxqFwoTCNDNpbC68PYCFQAAAAAdAAAAABAD', 'Miramax Books', 'Rick Riordan', 'The Lightning Thief is a 2005 American-fantasy-adventure novel based on Greek mythology, the first young adult novel written by Rick Riordan in the Percy Jackson & the Olympians series.'),
(2, 'https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.amazon.com%2FMonsters-Percy-Jackson-Olympians-Book%2Fdp%2F1423103343&psig=AOvVaw1cKErwLOFhIcPtwnWX1atI&ust=1648819872614000&source=images&cd=vfe&ved=0CAsQjRxqFwoTCODrh-m68PYCFQAAAAAdAAAAABAD', 'Miramax Books', 'Rick Riordan', 'The Sea of Monsters is an American fantasy-adventure novel based on Greek mythology written by Rick Riordan and published in 2006. It is the second novel in the Percy Jackson & the Olympians series and the sequel to The Lightning Thief.'),
(3, 'https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.audible.co.uk%2Fpd%2FA-Game-of-Thrones-Audiobook%2FB005C52W9A&psig=AOvVaw29C7FV90-f4BnsSjMV8u-a&ust=1648820226365000&source=images&cd=vfe&ved=0CAsQjRxqFwoTCMC8r5K88PYCFQAAAAAdAAAAABAD', 'Bantam Spectra', 'George R. R. Martin', 'A Game of Thrones is the first novel in A Song of Ice and Fire, a series of fantasy novels by the American author George R. R. Martin.'),
(4, 'cek', 'mijan fantasi', 'bambang', 'rumah sang penggabut');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `autor`
--
ALTER TABLE `autor`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `buku`
--
ALTER TABLE `buku`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `autor`
--
ALTER TABLE `autor`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `buku`
--
ALTER TABLE `buku`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
