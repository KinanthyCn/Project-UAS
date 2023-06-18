-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 12, 2023 at 07:50 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.0.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `skincare`
--

-- --------------------------------------------------------

--
-- Stand-in structure for view `kategori`
-- (See below for the actual view)
--
CREATE TABLE `kategori` (
`kategori` text
);

-- --------------------------------------------------------

--
-- Table structure for table `konsumen`
--

CREATE TABLE `konsumen` (
  `id` int(11) NOT NULL,
  `telp` text NOT NULL,
  `name` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `konsumen`
--

INSERT INTO `konsumen` (`id`, `telp`, `name`) VALUES
(16, '081221723861', 'AGUSTINUS PARDAMEAN LUMBAN TOBING'),
(18, '0812332181230', 'AGUSTINUS PARDAMEAN LUMBAN TOBING'),
(19, '1012', 'ALEX ARDIAN'),
(20, '081221723861', 'Parkapi');

-- --------------------------------------------------------

--
-- Table structure for table `produk`
--

CREATE TABLE `produk` (
  `id` int(11) NOT NULL,
  `Nama` text NOT NULL,
  `MEREK` text NOT NULL,
  `beli` int(11) NOT NULL,
  `jual` int(11) NOT NULL,
  `stok` int(11) NOT NULL,
  `kategori` text NOT NULL,
  `img` longtext NOT NULL,
  `desksing` longtext NOT NULL,
  `deslong` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `produk`
--

INSERT INTO `produk` (`id`, `Nama`, `MEREK`, `beli`, `jual`, `stok`, `kategori`, `img`, `desksing`, `deslong`) VALUES
(1, 'Wisma3', 'WUKA', 10000, 12000, -301, 'Senka', 'https://assets-a1.kompasiana.com/items/album/2021/12/27/images-7-61c9087406310e1c6a613655.jpeg', 'llll', '00k0o0'),
(2, 'Ponds White Beauty Perfect ', 'PONDS', 100000, 200000, -53, 'Toner', 'https://s1.bukalapak.com/img/17915452972/large/data.jpeg', 'Ponds White Beauty Perfect adalah produk perawatan k...', 'Ponds White Beauty Perfect adalah produk perawatan kulit yang dirancang untuk memberikan kecerahan dan kehalusan pada kulit wajah. Produk ini mengandung formula khusus yang membantu mengurangi noda hitam, meratakan warna kulit, dan memberikan efek pencerahan yang tampak alami.  Dengan kandungan krim siang dan krim malam, Ponds White Beauty Perfect memberikan perawatan yang komprehensif untuk kulit Anda. Krim siangnya dilengkapi dengan SPF 18 PA++ yang melindungi kulit dari sinar matahari dan membantu mencegah timbulnya noda hitam baru akibat paparan sinar UV. Sementara itu, krim malamnya membantu menghidrasi kulit dan mengurangi produksi melanin yang berlebihan, sehingga kulit terasa lebih lembut dan tampak lebih cerah.  Selain itu, produk ini juga mengandung Vitamin B3 dan Vitamin E yang berfungsi sebagai antioksidan, membantu menyamarkan tanda-tanda penuaan, dan memberikan perlindungan dari radikal bebas yang dapat merusak kulit. Dengan penggunaan secara teratur, Ponds White Beauty Perfect membantu mengembalikan kecerahan alami kulit dan meningkatkan tekstur kulit agar terlihat lebih halus dan bercahaya.  Ponds White Beauty Perfect cocok digunakan untuk semua jenis kulit dan tidak menyebabkan efek samping yang merugikan. Gunakan produk ini sebagai bagian dari rutinitas perawatan kulit Anda untuk mendapatkan kulit yang lebih cerah, lembut, dan tampak bercahaya.'),
(3, 'Azarine SPF 50++', 'Azarine Cosmetics', 50000, 70000, 99, 'Toner', 'https://images.soco.id/308-324551565_469423632065234_8157528526685456615_n.jpg.jpeg', 'Azarine SPF 50++ adalah tabir surya dengan perlindungan tinggi... ', 'Azarine SPF 50++ adalah tabir surya dengan perlindungan tinggi yang dirancang untuk melindungi kulit dari bahaya sinar matahari dan sinar UVA/UVB. Dengan kandungan SPF 50++, produk ini memberikan perlindungan maksimal terhadap sinar matahari yang dapat menyebabkan kerusakan pada kulit, termasuk sunburn, penuaan dini, dan risiko kanker kulit.  Azarine SPF 50++ mengandung bahan aktif seperti zinc oxide dan titanium dioxide yang bekerja sebagai filter fisik untuk memantulkan dan menyerap sinar UV, sehingga mencegah penetrasi sinar tersebut ke dalam kulit. Dengan demikian, produk ini membantu mencegah terjadinya pigmentasi, flek hitam, dan kerusakan kulit akibat paparan sinar matahari.  Selain perlindungan tinggi, Azarine SPF 50++ juga memiliki tekstur ringan dan mudah meresap pada kulit, tanpa meninggalkan rasa lengket atau berminyak. Formulanya yang non-comedogenic juga cocok untuk semua jenis kulit, termasuk kulit sensitif. Produk ini juga tahan air, sehingga tetap memberikan perlindungan meski Anda berkeringat atau terkena air.  Penggunaan Azarine SPF 50++ sebaiknya menjadi langkah penting dalam rutinitas perawatan kulit Anda sehari-hari. Gunakan produk ini secara merata pada kulit yang terpapar sinar matahari sebelum melakukan aktivitas di luar ruangan. Dengan Azarine SPF 50++, Anda dapat menikmati kegiatan di bawah sinar matahari tanpa khawatir tentang perlindungan kulit yang optimal.');

-- --------------------------------------------------------

--
-- Table structure for table `transaksi`
--

CREATE TABLE `transaksi` (
  `name` text NOT NULL,
  `telp` text NOT NULL,
  `stok` int(11) NOT NULL,
  `id` int(11) NOT NULL,
  `id_transaksi` int(11) NOT NULL,
  `harga` int(11) NOT NULL,
  `pname` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `transaksi`
--

INSERT INTO `transaksi` (`name`, `telp`, `stok`, `id`, `id_transaksi`, `harga`, `pname`) VALUES
('AGUSTINUS PARDAMEAN LUMBAN TOBING', '081221723861', 21, 1, 35, 4200000, 'Senka Perfect Whip 100g'),
('AGUSTINUS PARDAMEAN LUMBAN TOBING', '081221723861', 21, 1, 36, 4200000, 'Senka Perfect Whip 100g'),
('AGUSTINUS PARDAMEAN LUMBAN TOBING', '081221723861', 2, 1, 37, 400000, 'ASenka Perfect Whip 100g'),
('AGUSTINUS PARDAMEAN LUMBAN TOBING', '081221723861', 1, 2, 38, 200000, 'Ponds White Beauty Perfect '),
('AGUSTINUS PARDAMEAN LUMBAN TOBING', '081221723861', 1, 3, 39, 70000, 'Azarine SPF 50++'),
('AGUSTINUS PARDAMEAN LUMBAN TOBING', '081221723861', 1, 1, 40, 200000, 'ASenka Perfect Whip 100g'),
('AGUSTINUS PARDAMEAN LUMBAN TOBING', '081221723861', 1, 4, 41, 25000, 'SKIN 1'),
('AGUSTINUS PARDAMEAN LUMBAN TOBING', '081221723861', 2, 1, 42, 24000, 'Wisma3'),
('AGUSTINUS PARDAMEAN LUMBAN TOBING', '081221723861', 2, 1, 43, 24000, 'Wisma3'),
('AGUSTINUS PARDAMEAN LUMBAN TOBING', '081221723861', 2, 1, 44, 24000, 'Wisma3'),
('AGUSTINUS PARDAMEAN LUMBAN TOBING', '081221723861', 2, 1, 45, 24000, 'Wisma3'),
('AGUSTINUS PARDAMEAN LUMBAN TOBING', '081221723861', 1, 1, 46, 12000, 'Wisma3'),
('AGUSTINUS PARDAMEAN LUMBAN TOBING', '081221723861', 2, 1, 47, 24000, 'Wisma3'),
('AGUSTINUS PARDAMEAN LUMBAN TOBING', '081221723861', 2, 1, 48, 24000, 'Wisma3'),
('AGUSTINUS PARDAMEAN LUMBAN TOBING', '081221723861', 10, 2, 49, 2000000, 'Ponds White Beauty Perfect '),
('AGUSTINUS PARDAMEAN LUMBAN TOBING', '081221723861', 10, 2, 50, 2000000, 'Ponds White Beauty Perfect '),
('ALEX ARDIAN', '1012', 12, 2, 51, 2400000, 'Ponds White Beauty Perfect '),
('AGUSTINUS PARDAMEAN LUMBAN TOBING', '081221723861', 21, 1, 52, 252000, 'Wisma3'),
('AGUSTINUS PARDAMEAN LUMBAN TOBING', '081221723861', 21, 1, 53, 252000, 'Wisma3'),
('AGUSTINUS PARDAMEAN LUMBAN TOBING', '081221723861', 21, 1, 54, 252000, 'Wisma3'),
('AGUSTINUS PARDAMEAN LUMBAN TOBING', '081221723861', 21, 2, 55, 4200000, 'Ponds White Beauty Perfect '),
('Parkapi', '081221723861', 21, 1, 56, 252000, 'Wisma3'),
('AGUSTINUS PARDAMEAN LUMBAN TOBING', '081221723861', 2, 1, 57, 24000, 'Wisma3'),
('AGUSTINUS PARDAMEAN LUMBAN TOBING', '081221723861', 2, 1, 58, 24000, 'Wisma3'),
('AGUSTINUS PARDAMEAN LUMBAN TOBING', '081221723861', 2, 1, 59, 24000, 'Wisma3'),
('AGUSTINUS PARDAMEAN LUMBAN TOBING', '081221723861', 2, 1, 60, 24000, 'Wisma3'),
('AGUSTINUS PARDAMEAN LUMBAN TOBING', '081221723861', 2, 1, 61, 24000, 'Wisma3'),
('AGUSTINUS PARDAMEAN LUMBAN TOBING', '081221723861', 2, 1, 62, 24000, 'Wisma3'),
('AGUSTINUS PARDAMEAN LUMBAN TOBING', '081221723861', 2, 1, 63, 24000, 'Wisma3'),
('AGUSTINUS PARDAMEAN LUMBAN TOBING', '081221723861', 2, 1, 64, 24000, 'Wisma3'),
('AGUSTINUS PARDAMEAN LUMBAN TOBING', '081221723861', 2, 1, 65, 24000, 'Wisma3'),
('AGUSTINUS PARDAMEAN LUMBAN TOBING', '081221723861', 2, 1, 66, 24000, 'Wisma3'),
('AGUSTINUS PARDAMEAN LUMBAN TOBING', '081221723861', 2, 1, 67, 24000, 'Wisma3'),
('AGUSTINUS PARDAMEAN LUMBAN TOBING', '081221723861', 2, 1, 68, 24000, 'Wisma3'),
('AGUSTINUS PARDAMEAN LUMBAN TOBING', '081221723861', 2, 1, 69, 24000, 'Wisma3'),
('AGUSTINUS PARDAMEAN LUMBAN TOBING', '081221723861', 2, 1, 70, 24000, 'Wisma3'),
('AGUSTINUS PARDAMEAN LUMBAN TOBING', '081221723861', 2, 1, 71, 24000, 'Wisma3'),
('AGUSTINUS PARDAMEAN LUMBAN TOBING', '081221723861', 2, 1, 72, 24000, 'Wisma3'),
('AGUSTINUS PARDAMEAN LUMBAN TOBING', '081221723861', 2, 1, 73, 24000, 'Wisma3'),
('AGUSTINUS PARDAMEAN LUMBAN TOBING', '081221723861', 12, 1, 74, 144000, 'Wisma3'),
('AGUSTINUS PARDAMEAN LUMBAN TOBING', '081221723861', 12, 1, 75, 144000, 'Wisma3'),
('AGUSTINUS PARDAMEAN LUMBAN TOBING', '081221723861', 12, 1, 76, 144000, 'Wisma3'),
('AGUSTINUS PARDAMEAN LUMBAN TOBING', '081221723861', 12, 1, 77, 144000, 'Wisma3'),
('AGUSTINUS PARDAMEAN LUMBAN TOBING', '081221723861', 12, 1, 78, 144000, 'Wisma3'),
('AGUSTINUS PARDAMEAN LUMBAN TOBING', '081221723861', 12, 1, 79, 144000, 'Wisma3'),
('AGUSTINUS PARDAMEAN LUMBAN TOBING', '081221723861', 12, 1, 80, 144000, 'Wisma3'),
('AGUSTINUS PARDAMEAN LUMBAN TOBING', '081221723861', 12, 1, 81, 144000, 'Wisma3'),
('AGUSTINUS PARDAMEAN LUMBAN TOBING', '081221723861', 12, 1, 82, 144000, 'Wisma3'),
('AGUSTINUS PARDAMEAN LUMBAN TOBING', '081221723861', 12, 1, 83, 144000, 'Wisma3'),
('AGUSTINUS PARDAMEAN LUMBAN TOBING', '081221723861', 12, 1, 84, 144000, 'Wisma3'),
('AGUSTINUS PARDAMEAN LUMBAN TOBING', '081221723861', 12, 1, 85, 144000, 'Wisma3'),
('AGUSTINUS PARDAMEAN LUMBAN TOBING', '081221723861', 12, 1, 86, 144000, 'Wisma3'),
('AGUSTINUS PARDAMEAN LUMBAN TOBING', '081221723861', 12, 1, 87, 144000, 'Wisma3'),
('AGUSTINUS PARDAMEAN LUMBAN TOBING', '081221723861', 12, 1, 88, 144000, 'Wisma3');

--
-- Triggers `transaksi`
--
DELIMITER $$
CREATE TRIGGER `reduce_stock` BEFORE INSERT ON `transaksi` FOR EACH ROW BEGIN
    UPDATE produk
    SET stok = stok - NEW.stok WHERE id = NEW.id;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Stand-in structure for view `view_merek`
-- (See below for the actual view)
--
CREATE TABLE `view_merek` (
`MEREK` text
);

-- --------------------------------------------------------

--
-- Structure for view `kategori`
--
DROP TABLE IF EXISTS `kategori`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `kategori`  AS SELECT DISTINCT `produk`.`kategori` AS `kategori` FROM `produk``produk`  ;

-- --------------------------------------------------------

--
-- Structure for view `view_merek`
--
DROP TABLE IF EXISTS `view_merek`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_merek`  AS SELECT DISTINCT `produk`.`MEREK` AS `MEREK` FROM `produk``produk`  ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `konsumen`
--
ALTER TABLE `konsumen`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `produk`
--
ALTER TABLE `produk`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`id_transaksi`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `konsumen`
--
ALTER TABLE `konsumen`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `produk`
--
ALTER TABLE `produk`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `transaksi`
--
ALTER TABLE `transaksi`
  MODIFY `id_transaksi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=89;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
