-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Sep 13, 2020 at 03:08 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.2.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_gis_sederhana`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_galeri`
--

CREATE TABLE `tb_galeri` (
  `id_galeri` int(11) NOT NULL,
  `id_tempat` int(11) NOT NULL,
  `nama_galeri` varchar(255) NOT NULL,
  `gambar` varchar(255) NOT NULL,
  `ket_galeri` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_galeri`
--

INSERT INTO `tb_galeri` (`id_galeri`, `id_tempat`, `nama_galeri`, `gambar`, `ket_galeri`) VALUES
(37, 16, 'good looking', '10041077922_15101609040036891713.jpg', '<p>sakldklsajfklsajfklsajflksajklf</p>'),
(38, 18, 'hotel', '2288y939392003.jpg', '<p><span class=\"CFH2De\">Jl. Sriwijaya No.132, Cilinaya, Kec. Cakranegara, Kota Mataram, Nusa Tenggara Bar. 83232</span><span class=\"AQSwS CFH2De\">&bull;</span><span class=\"CFH2De\" dir=\"ltr\">(0370) 7501616</span></p>'),
(39, 18, 'hotel', '4534images.jpeg', '<div class=\"D35lie\">\r\n<p class=\"GtAk2e\">This modern hotel is 4 km from West Nusa Tenggara State Museum featuring traditional Indonesian arts and crafts, and 31 km from Lombok International Airport.</p>\r\n<p class=\"e54XAe GtAk2e\">Relaxed rooms with simple decor offer Wi-Fi access and flat-screen TVs, plus safes and en suite bathrooms. All have air-conditioning. Room service is available.</p>\r\n<p class=\"e54XAe GtAk2e\">Breakfast is included. Other amenities include a restaurant and a lounge area, plus an outdoor pool. Event space is available.</p>\r\n</div>\r\n<div class=\"D35lie\">\r\n<div class=\"Py1Pk\">Check-in time:&nbsp;<span class=\"rJ3U9c\">2:00 PM</span></div>\r\n<div class=\"Py1Pk\">Check-out time:&nbsp;<span class=\"rJ3U9c\">12:00 PM</span></div>\r\n</div>');

-- --------------------------------------------------------

--
-- Table structure for table `tb_options`
--

CREATE TABLE `tb_options` (
  `option_name` varchar(16) NOT NULL,
  `option_value` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_options`
--

INSERT INTO `tb_options` (`option_name`, `option_value`) VALUES
('default_lat', '-8.4888377'),
('default_lng', '117.419278'),
('default_zoom', '10');

-- --------------------------------------------------------

--
-- Table structure for table `tb_tempat`
--

CREATE TABLE `tb_tempat` (
  `id_tempat` int(11) NOT NULL,
  `nama_tempat` varchar(255) DEFAULT NULL,
  `gambar` varchar(255) DEFAULT NULL,
  `lat` double DEFAULT NULL,
  `lng` double DEFAULT NULL,
  `lokasi` varchar(255) DEFAULT NULL,
  `keterangan` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_tempat`
--

INSERT INTO `tb_tempat` (`id_tempat`, `nama_tempat`, `gambar`, `lat`, `lng`, `lokasi`, `keterangan`) VALUES
(16, 'Hotel Samawa Rea', '65781077922_15101609040036891714.jpg', -8.488800560455864, 117.41993782341765, 'Jl. Kebayan No.4, Uma Sima, Kec. Sumbawa, Kabupaten Sumbawa, Nusa Tenggara Bar. 84313', ''),
(17, 'Hotel Samawa ', '4656whatsapp-image-2020-07-14-at-21.59.57.jpeg', -10.1721882537908, 123.59172680752647, 'Jl. Kebayan No.4, Uma Sima, Kec. Sumbawa, Kabupaten Sumbawa, Nusa Tenggara Bar. 84313', ''),
(18, 'asraf hotel', '45743002583.jpg', -8.540447576006509, 117.48244938671874, 'konoha jl hokage', '');

-- --------------------------------------------------------

--
-- Table structure for table `tb_user`
--

CREATE TABLE `tb_user` (
  `id_user` int(11) NOT NULL,
  `user` varchar(255) NOT NULL,
  `pass` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_user`
--

INSERT INTO `tb_user` (`id_user`, `user`, `pass`) VALUES
(1, 'admin', 'admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_galeri`
--
ALTER TABLE `tb_galeri`
  ADD PRIMARY KEY (`id_galeri`);

--
-- Indexes for table `tb_options`
--
ALTER TABLE `tb_options`
  ADD PRIMARY KEY (`option_name`);

--
-- Indexes for table `tb_tempat`
--
ALTER TABLE `tb_tempat`
  ADD PRIMARY KEY (`id_tempat`);

--
-- Indexes for table `tb_user`
--
ALTER TABLE `tb_user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_galeri`
--
ALTER TABLE `tb_galeri`
  MODIFY `id_galeri` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `tb_tempat`
--
ALTER TABLE `tb_tempat`
  MODIFY `id_tempat` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `tb_user`
--
ALTER TABLE `tb_user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
