-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jun 06, 2022 at 03:38 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `nilaraya`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `username` varchar(100) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`username`, `nama`, `password`) VALUES
('gAAAAABic_B276scQfOhDY6Gg1qZ1DB-ooDa9830RWuRlaFbC0NkY6JillQvGp5ZfV42p5QbPKjluhKUvUnHDoTE_IpmGBO-ZQ==', 'Admin', 'gAAAAABic_B2CpcJ0SZacZNd0idA8sXMRP51u6caBtdWfk5yw0gKDKr3bDQTKKv3VmSiBsyo3ye2ShI8ckKJuFK-vE_bVyRz9Q==');

-- --------------------------------------------------------

--
-- Table structure for table `dokter`
--

CREATE TABLE `dokter` (
  `username` varchar(100) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `password` varchar(100) NOT NULL,
  `jenis_dokter` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `dokter`
--

INSERT INTO `dokter` (`username`, `nama`, `password`, `jenis_dokter`) VALUES
('gAAAAABidyQZxvRxe9jBmB4aCL7Fdrae4v2IzTF-MPAqoQD6FyWhEoB-fUYyuS8CxD06NntmG_SlEGT-ypfwf3WbBtyUPy9c_Q==', 'Test', 'gAAAAABidyQa0enHxuB84v4BHVJ5SXXzNcJshAacuzcwHQ4XE3ZAgBSxt6YvskRSGAvE6Bri01-7BfeGVxkfG-QJOiG-Mo17cQ==', 'Dokter Umum'),
('gAAAAABieqiyhUEPogcX-SNxqcABjtGIY6rF6kadyh6S3vDUPm9Qj0RaEt2tM9Hc_ubMD_KxR8t6KnELI1WMhAg0GXO01ap_qQ==', 'Nila Dewi Andayani', 'gAAAAABieqiywhPilfABaQ0AL9Om20DgiZIqsVeDnw3NlICj2gFadGxIIEj3nltL3CurKQXwUMY10mIzTHE25Dnbl3WT8Kme5g==', 'Dokter Gigi'),
('gAAAAABieqjM-edIGLQduLyq3U0sBi-NbdyV5KY6rhUfy-J4ML5gRbovQPGdxS9b4HVPOM0EkYG_oAkFKAwdoPIxRoE9Xbc7iw==', 'Dokter Gigi', 'gAAAAABieqjMGF_WXx0bw7IEE3LXSZMaw4t4_RUC2HprRgXncx8Wa43-qv6QIthgtLiSnb9C_MwPRR_Ume0fFbitI3Ka3Bk6rQ==', 'Dokter Gigi');

-- --------------------------------------------------------

--
-- Table structure for table `kasir`
--

CREATE TABLE `kasir` (
  `username` varchar(100) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `kasir`
--

INSERT INTO `kasir` (`username`, `nama`, `password`) VALUES
('gAAAAABic-KZreEVQ7Xo60yiTPsKDfjSbQ_bK9cDqnP4-P11GEfR9RAJj5GdDW2ldFmmHEcUn-uyz9OrGWmXIQ7Ah-gEGzMqeA==', 'Mita', 'gAAAAABic9j27Wun3I-uKIlrTo6HKIQqhLNfige6sZvR33kNZRWriZhVBsFiaod7na0hMoW_u6immJLzUh8SNFCQOFmJ2v48MA==');

-- --------------------------------------------------------

--
-- Table structure for table `obat`
--

CREATE TABLE `obat` (
  `id_obat` varchar(10) NOT NULL,
  `nama_obat` varchar(50) NOT NULL,
  `kuantitas` int(4) NOT NULL,
  `exp_date` date NOT NULL,
  `jenis_obat` varchar(10) NOT NULL,
  `harga_satuan` int(9) NOT NULL,
  `harga_strip` int(9) DEFAULT NULL,
  `harga_beli` int(9) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `obat`
--

INSERT INTO `obat` (`id_obat`, `nama_obat`, `kuantitas`, `exp_date`, `jenis_obat`, `harga_satuan`, `harga_strip`, `harga_beli`) VALUES
('ID21', 'Panadol', 9, '2022-11-16', 'Tablet', 12000, 2000, 10000),
('ID22', 'Antimo', 5, '2023-06-06', 'Kapsul', 7000, 1000, 5000),
('ID23', 'Antangin', 12, '2022-06-01', 'Sirup', 9000, 11000, 3000);

-- --------------------------------------------------------

--
-- Table structure for table `pasien`
--

CREATE TABLE `pasien` (
  `no_rekam_medik` varchar(10) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `ttl` date DEFAULT NULL,
  `jenis_kelamin` varchar(10) NOT NULL,
  `riwayat_penyakit` text DEFAULT NULL,
  `no_bpjs` varchar(20) DEFAULT NULL,
  `no_hp` varchar(15) DEFAULT NULL,
  `alamat` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pasien`
--

INSERT INTO `pasien` (`no_rekam_medik`, `nama`, `ttl`, `jenis_kelamin`, `riwayat_penyakit`, `no_bpjs`, `no_hp`, `alamat`) VALUES
('10', 'An. Abdul Hakim', '2015-03-07', 'Laki-laki', NULL, NULL, '0895330590059', 'PAK I Blok J No.15'),
('100', 'Ny. Ani Fitriani', '1985-09-30', 'Perempuan', NULL, NULL, '089685746641', 'Komplek poncol,Nanggewer mekar 02/05. no 115'),
('101', 'An. Abimanyu', '2012-09-04', 'Laki-laki', NULL, NULL, '08159990748', 'Metro Residence Cluster Greenwood i-1,no.10'),
('102', 'Ny. Reny R', '1977-04-10', 'Perempuan', NULL, NULL, '08159990748', 'Metro Residence Cluster Greenwood i-1,no.10'),
('103', 'Ny. Hidayat', '1976-08-03', 'Laki-laki', NULL, NULL, '087873748436', 'PAK II Blok N. no,12'),
('104', 'Tn. Wahyu Ardianto', '1972-06-20', 'Laki-laki', NULL, NULL, '081318478134', 'Perum.Cijujung permai,blok D16'),
('105', 'Fandy Ahmad', '2007-05-02', 'Laki-laki', 'None', 'None', '087870352096', 'Bumi Sentosa blok B6/8'),
('106', 'An. M. Sultan alrafil', '2009-03-08', 'Laki-laki', NULL, NULL, '081391839189', 'ppmp'),
('107', 'Ny. Nurindah Sari', '1990-11-13', 'Perempuan', NULL, NULL, '08558516459', 'Bintang  mas,Blok Masjid'),
('108', 'An. Muhammad Raffa Ramadhan', '2012-08-07', 'Laki-laki', NULL, NULL, '085697565696', 'Nanggewer mekar rt01/05'),
('109', 'An. Aisyah Shabira', '2015-06-27', 'Perempuan', NULL, NULL, '081519997799', 'Jln.H.Jairan Pakansari'),
('11', 'Nn. Renata', '2002-03-31', 'Perempuan', NULL, NULL, '088296617986', 'Wisma Harapan II'),
('110', 'Ny. Meri Dian', '1969-09-21', 'Perempuan', NULL, NULL, '0895321540453', 'Kp. Padurenan rt 1/7 Pabuaran Mekar'),
('111', 'Tn.  Ahyad', '1947-05-07', 'Laki-laki', NULL, NULL, '0895321540453', 'Kp. Padurenan rt 1/7 Pabuaran Mekar'),
('112', 'Ny. Erni Kusnidar', '1978-09-25', 'Laki-laki', NULL, NULL, '081316497070', 'Puri Alam Kencana II'),
('113', 'Ny. Mutiatus', '1992-04-12', 'Perempuan', NULL, NULL, '081958879057', 'Nanggewer'),
('114', 'Tn. Nopy Suwarto', '1987-11-28', 'Laki-laki', NULL, NULL, '081211649593', 'Rumdis PMPP TNI'),
('115', 'An. Kayla Anindita', '2014-05-05', 'Perempuan', NULL, NULL, NULL, 'Mutiara Sentul'),
('116', 'An. Attha Malik Rinjani', '2014-10-19', 'Laki-laki', NULL, NULL, '081289811262', 'Sentul City,Taman Victoria'),
('117', 'Tn. Mathadi', '1972-06-01', 'Laki-laki', NULL, NULL, '081386151972', 'Puri Alam Kencana 2,blok N3. No,18'),
('118', 'Tn. Juji Permana', '1987-05-02', 'Laki-laki', NULL, NULL, '0895349094096', 'Nanggewer rt 01/05,No 50'),
('119', 'Nn. Rosiyana Dwi Anggraeni', '1977-03-31', 'Perempuan', NULL, NULL, '081216075672', 'Puri Citayam Permai 1,rt 09/10. No,B11'),
('12', 'Tn. Wien Kusharyoto', '1967-01-07', 'Laki-laki', NULL, NULL, '081282819544', 'EKR F1 77'),
('120', 'An. Arsy Azzura Fakhry', '2010-01-30', 'Perempuan', NULL, NULL, '081213120014', 'Perum.Puspa Raya,blok PQ,no 7'),
('121', 'Tn. Sahid', '1961-05-10', 'Laki-laki', NULL, NULL, NULL, 'Erfina Kencana Regency,Cluster Gymanstik,No11'),
('122', 'An. Dika Wintato', '2003-10-22', 'Laki-laki', NULL, NULL, '087873182462', 'Darul Jannah'),
('123', 'An. Nadia Mikayla Hafizah', '2015-04-29', 'Perempuan', NULL, NULL, '081222685133', 'Cilangkap rt03/09 No. 20'),
('124', 'Tn. Feri Pria Panca', '1986-08-08', 'Laki-laki', NULL, NULL, '08389858798', 'Bedahan rt 03/01 Pabuaran Mekar'),
('125', 'Ny. Meiriska', '1984-04-12', 'Perempuan', NULL, NULL, '087823328300', 'Perum Alam Asri Blok B3 No 1'),
('126', 'Tn. Brian Abdilah', '1999-04-26', 'Laki-laki', NULL, NULL, '081285525550', 'Tatya Asri Blok OB No. 3'),
('127', 'Tn. Irsyad Maulana H', '2007-02-08', 'Laki-laki', NULL, NULL, '08567074220', 'Stadion Pakansari No. 43'),
('128', 'An. Zahwa A Rahman', '2010-08-04', 'Perempuan', NULL, NULL, '087073748456', 'Puri Alam Kencana 2 Blok N 12'),
('129', 'Nn. Jesi Nurulnatasa', '1999-12-24', 'Perempuan', NULL, NULL, '085814596563', 'Perum. Tatya Asri Blok OA 10'),
('13', 'Ny. Heny Krisnawati', '1974-07-17', 'Perempuan', NULL, NULL, '08131512345', 'GTP Blok F4/10'),
('130', 'An. Almahira S', '2019-07-17', 'Perempuan', NULL, NULL, '081284947492', 'Erfina Kencana Regency Cluster Gymnastic No. 11'),
('131', 'Ny. Rusmini', '1965-04-22', 'Perempuan', NULL, NULL, '081284947492', 'Erfina Kencana Regency Cluster Gymnastic No. 11'),
('132', 'Ny. Nurhikmah', '1992-04-11', 'Perempuan', NULL, NULL, '081284947492', 'Erfina Kencana Regency Cluster Gymnastic No. 11'),
('133', 'Tn. Haris Iskandar', '1982-04-20', 'Laki-laki', NULL, NULL, '081218617447', 'Mutiara  Sentul Blok O / 12'),
('134', 'Fandy Ahmad', '2004-06-09', 'Laki-laki', NULL, NULL, '081310709753', 'Perum.Griya Estetika,blok A2,No.16 Gunung Putri Bogor'),
('135', 'An. Alya Mariam', '2016-01-16', 'Perempuan', NULL, NULL, '081311371009', 'Komplek,Bps Blok 2D,No.1 rt 4/13,Cilangkap Tapos Depok'),
('136', 'Tn. Hapi Zajuli', '1980-10-23', 'Laki-laki', NULL, NULL, '081293822558', 'Komplek,Bps Blok 2D,No.1 rt 4/13,Cilangkap Tapos Depok'),
('137', 'An. M. Arif Sarwono', '2011-05-20', 'Laki-laki', NULL, NULL, '       ', 'Taman Kenari 7A,22. Citereup'),
('138', 'Ny. Riselligia C', '1982-11-04', 'Perempuan', NULL, NULL, NULL, 'Mutiara Sentul Blok O No. 12'),
('139', 'An. Aldebaran', '2014-10-15', 'Laki-laki', NULL, NULL, '081283335333', 'Mutiara Sentul,Blok Z,No.26'),
('14', 'An. Omar Al Rasyid', '2013-09-03', 'Laki-laki', NULL, NULL, '08131512345', 'GTP Blok F4/10'),
('140', 'Ny. Julaeha', '1967-12-21', 'Perempuan', NULL, NULL, '085773033405', 'Kebon Pedes rt4/9 Bogor '),
('141', 'Ny. Mita Rosmita', '1979-08-07', 'Perempuan', NULL, NULL, '085777417796', 'Jl. Sentul Gor Pakansari No. 43 rt 02/03 nanggewer Mekar '),
('142', 'Ny. Diah Permatasari', '1977-02-28', 'Perempuan', NULL, NULL, '081282819544', 'Perumahan Erfina Kencana Regency,Blok F1 cluster No.77'),
('143', 'Ny. Kartika Orbangingrum', '1967-09-29', 'Perempuan', NULL, NULL, '0811136969', 'Bumi sentosa,Blok B 11.NO 12'),
('144', 'Ny. Yani Yayan', '1978-01-10', 'Perempuan', NULL, NULL, '081386334242', 'Perum.Vip Jln.Mawar 11 Blok VB2'),
('145', 'Ny. Irma Ahyani', '1986-03-20', 'Perempuan', NULL, NULL, '089605177713', 'Gramayuda Blok Z2,no.8'),
('146', 'An. Naira Hikmatul Aulia', '2015-03-19', 'Perempuan', NULL, NULL, '089605177713', 'Gramayuda Blok Z2,no.8'),
('147', 'Nn. Ajeng Dwi Nestecya', '2004-06-27', 'Perempuan', NULL, NULL, '085156415786', 'Tatya asri'),
('148', 'Ny. Vera rina dewi', '1969-06-15', 'Perempuan', NULL, NULL, '085711510864', 'Jl. Sentul Gor Pakansari No. 43 rt 02/03 nanggewer Mekar '),
('149', 'Tn. Nurkholis Dawam', '1974-09-13', 'Laki-laki', NULL, NULL, '08128877217', 'Jl. Sentul Gor Pakansari No. 43 rt 02/03 nanggewer Mekar '),
('15', 'An. M Raihan', '2009-09-18', 'Laki-laki', NULL, NULL, '087775840792', 'Kp Curug 06/12 No. 11'),
('150', 'Rifqi Razzaqy Rohmana', '2006-03-07', 'Laki-laki', NULL, NULL, '0895706520090', 'Jl. Sentul Gor Pakansari No. 43 rt 02/03 nanggewer Mekar '),
('151', 'Nn. Nur Immar', '1996-06-30', 'Perempuan', NULL, NULL, '08559180145', 'Cluster The awa Blok.A3 no.2'),
('152', 'Tn. Anam Suhana ', '1972-04-10', 'Laki-laki', NULL, NULL, '087873132266', 'Erfina Kencana Regency,Blok.Badminton'),
('153', 'Sulis April Liani', '2000-04-07', 'Perempuan', NULL, NULL, '085890342201', 'Kp.Cikempong rt 03/05 Kel.Pakansari'),
('154', 'An. Muadz Syahani Ahnaf', '2007-05-21', 'Laki-laki', NULL, NULL, '085892767280', 'Puri Alam Jencana 2,Blok R'),
('155', 'Tn. Fathy A.Ibrahim', '1993-06-23', 'Laki-laki', NULL, NULL, '08111160993', 'Nanggewer,No.43'),
('156', 'An. Barra Malik C', '2016-10-09', 'Laki-laki', NULL, NULL, '081289811262', 'Cluster Taman Victoria,Sentul City'),
('157', 'Tn. Elba Gloriano P', '1988-03-26', 'Laki-laki', NULL, NULL, '085214980550', 'Asrama Yonkaf Cijantung'),
('158', 'Tn. Rio Deswandi', '1978-12-13', 'Laki-laki', NULL, NULL, '08897788811', 'Erfina Kencana Regency'),
('159', 'Ny. Hj. Rudias Tuti SY', '1955-06-27', 'Perempuan', NULL, NULL, '082311434919', 'Jln.Kingki Laban No.7,Villa Duta Bogor'),
('16', 'Tn. Habi Romadhan Sofyan', '1999-12-23', 'Laki-laki', NULL, NULL, '081919231299', 'Kp Curug 06/12 No. 41'),
('160', 'Tn. Yusuf', '1971-08-14', 'Laki-laki', NULL, NULL, '081218840067', 'Mutiara Sentul Blok AB 21'),
('161', 'Nn. Dian Putri Amelia', '1998-07-17', 'Perempuan', NULL, NULL, '081224925115', 'Kaum Pandak,Jln.Kaum II no.3,Rt 05/04-Karadenan'),
('162', 'Ny. Hikmah Purnamasari', '1988-09-10', 'Perempuan', NULL, NULL, '081283302340', 'Permata Bintang,B3 no.3'),
('163', 'Nn. Nisrina S', '2003-12-05', 'Perempuan', NULL, NULL, '087877672841', 'Komplek,Dit.Bekang'),
('164', 'An. Alfatah A.W', '2018-10-09', 'Laki-laki', NULL, NULL, '089646803291', 'Cikempong,Rt 02/04'),
('165', 'An. I dewa Gede Krisna', '2015-10-22', 'Laki-laki', NULL, NULL, '087885813948', 'Erfina Kencana Regency,Blok f1. No,38'),
('166', 'Ny. Rita Rosita N', '1956-08-02', 'Perempuan ', NULL, NULL, '08128212140049', 'Perum Az Zikra Jl. Tawadlu 2 No. 38'),
('167', 'Ny. Anita Widiani', '1990-05-31', 'Perempuan', NULL, NULL, '081280664937', 'Perum Metro Resident Cluster Pinewood'),
('168', 'Ny. Wiwik Ismawati', '1974-03-01', 'Perempuan', NULL, NULL, '081213548074', 'Kampung Bendungan Cilodong'),
('169', 'Tn. Hermawan M', '2004-01-04', 'Laki-laki', NULL, NULL, '082213388825', 'Puri Alam Kencana Blok O No. 29'),
('17', 'An. Nurul Istinafiah', '2007-08-17', 'Perempuan', NULL, NULL, '087770684230', 'Kp Curug 06/12 No.41'),
('170', 'Ny. Martis', '1977-03-28', 'Perempuan', NULL, NULL, '082114044628', 'Puri Alam Kencana 2'),
('171', 'An. Rizwan Kautsar H', '2011-03-02', 'Laki-laki', NULL, NULL, '082245924939', 'GCI II Blok D1-11'),
('172', 'Ny. Arie Kurniah', '1976-07-30', 'Perempuan', NULL, NULL, '081318054976', 'Kp. Cikempong 02/05 Kelurahan Pakansari'),
('173', 'An. Abhipraya', '2014-07-03', 'Laki-laki', NULL, NULL, '081387689888', 'Erfina Kencana Regency Jl. Badminton No. 36'),
('174', 'An. Baskata Omar', '2019-04-14', 'Laki-laki', NULL, NULL, '085869171857', 'Bumi Cibinong Endah'),
('175', 'Tn. Rifki Alfian', '2000-01-09', 'Laki-laki', NULL, NULL, '082110882440', 'Kp.Cikempong Rt 02 Rw 05'),
('176', 'An. M Phijar', '2014-12-15', 'Laki-laki', NULL, NULL, '081213735610', 'Erfina Kencana Regency Jl. Badminton No. 20'),
('177', 'Ny. Nurhayati', '1972-10-29', 'Perempuan', NULL, NULL, '083877737000', 'Kp. Curug rt 6/12 Pakansari'),
('178', 'An. Nabila Ratna Ayu', '2013-09-05', 'Perempuan', NULL, NULL, '083877737000', 'Kp. Curug rt 6/12 Pakansari'),
('179', 'Ny. Agustina', '1964-08-06', 'Perempuan', NULL, NULL, '081325707689', 'Puri Alam Kencana,Blok A1 no.20'),
('18', 'Nn. Nazmi Fatharani', '2004-10-07', 'Perempuan', NULL, NULL, '085780102321', 'CGA A3/13'),
('180', 'M Gilang', '1997-05-19', 'Laki-laki', NULL, NULL, '08118451707', 'Kebun Raya Resident Q/23'),
('181', 'Ny. Erry Dwi P', '1991-02-14', 'Perempuan', NULL, NULL, '085715610251', 'Komp.Dit Bekang 05/05. No.9'),
('182', 'An. Fathir Zafrran B', '2014-05-10', 'Laki-laki', NULL, NULL, '085715610151', 'Komplek Dit Bek\'ang,rt 03/05 No,9.'),
('183', 'Ny. Nuraini', '1970-11-15', 'Perempuan', NULL, NULL, '0895614014111', 'Pakansari Rt 02/11'),
('184', 'An. Danish Haidar H', '2009-07-16', 'Laki-laki', NULL, NULL, '081310283789', 'Tatya Asri Lc-22'),
('185', 'An. Fathiya Rahmani', '2012-12-24', 'Perempuan', NULL, NULL, '081310283789', 'Tatya Asri Lc-22'),
('186', 'An. M . Yusuf Abdillah R', '2012-12-08', 'Laki-laki', NULL, NULL, '085777417796', 'Darul Jannah'),
('187', 'Nn. Risma Ayu Rahma', '2001-01-30', 'Perempuan', NULL, NULL, '082110787607', 'kmp'),
('188', 'Ny. Rusmiatin', '1974-05-12', 'Perempuan', NULL, NULL, '081387689888', 'Erfina Kencana Regency Jl. Badminton No.36'),
('189', 'Nn.  Ahyaita Silmi F', '2000-07-22', 'Perempuan', NULL, NULL, '085780955475', 'CGA A3/13'),
('19', 'Tn. M Dwiki Putra Wahyudi', '2004-03-31', 'Laki-laki', NULL, NULL, '082122746695', 'Rumdis PMPP TNI'),
('190', 'Nn. Sara Faradilla', '2001-11-07', 'Perempuan', NULL, NULL, '089530372486', 'Jln.Kranji No.63,Sukahati'),
('191', 'Nn. Alima Indriati', '1993-04-30', 'Perempuan', NULL, NULL, '08119767474', 'Perum Visar Indah Jl. Kenanga 4 no 15'),
('192', 'Nn. Asy Syafa Yumna', '1997-08-05', 'Perempuan', NULL, NULL, '081384139153', 'Perum DBD II Blok Hk 12'),
('193', 'An. Azraq Aldwyn', '2014-11-12', 'Laki-laki', NULL, NULL, '08119767474', 'Perum Visar Indah Jl. Kenanga 4 no 15'),
('194', 'Ny. Sri Ety', '1975-06-16', 'Perempuan', NULL, NULL, '08117176740', 'Perum Visar Indah Jl. Kenanga 4 no 15'),
('195', 'Ny. Suparmi', '1967-03-01', 'Perempuan', NULL, NULL, '083891908799', 'Kp.Cikempong,rt 01/11. Pakansari'),
('196', 'An. Achazia Darren F.R', '2012-07-26', 'Laki-laki', NULL, NULL, '08523232591387', 'Erfina Kencana Regency,Blok.Football,No.36'),
('197', 'An. Arrayan Dashiel Faiz Ar-Rasyid', '2014-12-12', 'Laki-laki', NULL, NULL, '08523232591387', 'Erfina Kencana Regency,Blok.Football,No.36'),
('198', 'An. Fazilla Alani Akbar', '2015-05-15', 'Perempuan', NULL, NULL, '082297269043', 'Nanggewer Mekar,Rt 9/12'),
('199', 'Ny. Riantina', '1986-10-06', 'Perempuan', NULL, NULL, '083876887670', 'Pakansari Rt 02/11'),
('2', 'Tn. Erlansyah', '1977-06-23', 'Laki-laki', NULL, NULL, '082110849091', 'Cikempong RT 06/07'),
('20', 'An. Arya Orla Rangga', '2014-12-14', 'Perempuan', NULL, NULL, '085782251189', 'GCI  II Blok A2 No.4'),
('200', 'Ny. Rinawati', '1969-11-02', 'Perempuan', NULL, NULL, '08127634075', 'Erfina Kencana Regency,Football No.9'),
('201', 'Nn. Ratu Ananda', '2005-08-12', 'Perempuan', NULL, NULL, '082114563613', 'Puri Alam Kencana II,Blok.R,No.20'),
('202', 'Tn. Mupid', '1987-07-02', 'Laki-laki', NULL, NULL, '08211151936', 'Kp. Babakan Tarik Kolot'),
('203', 'Ny. Fatma Alaydrus', '1989-04-11', 'Perempuan', NULL, NULL, '085893777341', 'Jl. Gang Rodan no. 4'),
('204', 'Tn. M.Nabil Sabana ', '1995-01-07', 'Laki-laki', NULL, NULL, '081384422227', 'Blok Rawa RT 04/06'),
('205', 'Tn. Amaludin', '1964-05-02', 'Laki-laki', NULL, NULL, '08176670145', 'Nanggewer Rt 04/06 No.9'),
('206', 'Ny. Ismawati', '1968-07-01', 'Perempuan', NULL, NULL, '08176670145', 'Nanggewer Rt 04/06 No.9'),
('207', 'An. Feninda Alexa', '2014-06-14', 'Perempuan', NULL, NULL, '08563456356', 'Puri Alam Kencana Blok O3 No. 9'),
('208', 'Tn. Darmawan Sepriyossa', '1970-04-15', 'Laki-laki', NULL, NULL, '0817800850', 'Jl. Sentul Gor Pakansari No. 43 rt 02/03 nanggewer Mekar '),
('209', 'Ny. Gandari Harahap', '1970-08-03', 'Perempuan', NULL, NULL, '081286299689', 'Erfina Kencana Regency,Blok Softball No.17'),
('21', 'Ny. Lasirah', '1959-12-31', 'Perempuan', NULL, NULL, '085885442228', 'EKR Football'),
('210', 'An. Hafiz Imranufatin Rahman', '2012-02-04', 'Laki-laki', NULL, NULL, '082114400889', 'Tatya Asri Mahaloka,Blok Fs No.21'),
('211', 'Nn. Deyana Cindy', '1996-05-20', 'Perempuan', NULL, NULL, '082112814315', 'Puri Alam Kencana I Blok K1 No. 14'),
('212', 'Tn. Ben Kuswanto', '1974-12-09', 'Laki-laki', NULL, NULL, '081375561392', 'Erfina Kencana Regency Blok Softball 17'),
('213', 'Ny. Meity', '1972-03-24', 'Perempuan', NULL, NULL, '0895801216151', 'Wisma Harapan II No. 17'),
('214', 'Tn. Subhan Zaini', '1992-03-07', 'Laki-laki', NULL, NULL, '081299764469', 'Kp.Cikempong rt 03/05 Kel.Pakansari'),
('215', 'An. Aisyah ', '2019-10-31', 'Perempuan', NULL, NULL, '081372557788', 'Erfina Kencana Regency Blik Downhill No. 9'),
('216', 'Nn. Cindy Tjio', '1995-05-08', 'Perempuan', NULL, NULL, '081380578021', 'Central Ruko Cibinong C5'),
('217', 'Ny. Intan Yulia', '1985-07-20', 'Perempuan', NULL, NULL, '081230009653', 'Green Cibinong Housing F6'),
('218', 'An. Abhi Arya', '2010-11-07', 'Perempuan', NULL, NULL, '081230009653', 'Green Cibinong Housing F6'),
('219', 'An. Galang Ahsan', '2013-03-21', 'Laki-laki', NULL, NULL, '081230009653', 'Green Cibinong Housing F6'),
('22', 'An. Andika Dava', '2009-02-08', 'Laki-laki', NULL, NULL, '082138349968', 'Puri Alam Kencana II Blok N3 No.2'),
('220', 'Fathurrahman M Dzaki', '2009-05-08', 'Laki-laki', NULL, NULL, '081321850231', 'Rumdis PMPP TNI'),
('221', 'Nn. Thalita Zoda', '1997-08-09', 'Perempuan', NULL, NULL, '087714494920', 'Perumahan Acropolis Karadenan'),
('222', 'Ny. Kartini Ismayanti', '1994-04-21', 'Perempuan', NULL, NULL, '081280581327', 'Kp.Sindangkarsa Rt 03/10 Depok'),
('223', 'Anang Marjono', '1997-03-04', 'Laki-laki', NULL, NULL, '085159226525', 'Nanggela Anugrah Pratama,Blok C11. No 9'),
('224', 'Nn. Nur Rohmah', '1997-11-26', 'Perempuan', NULL, NULL, '081283371059', 'Puri Alam Kencana II Blok,R14'),
('225', 'Ny. Elda Susanna', '1978-10-11', 'Perempuan', NULL, NULL, '081384099222', 'Puri Alam Kencana II'),
('226', 'Ny. Mutia', '1980-03-04', 'Perempuan', NULL, NULL, '08119346111', 'Perum Tatya Asri Cluster Mahaloka F7 No. 2'),
('227', 'An. Alzena Belva Shakira', '2015-03-25', 'Perempuan', NULL, NULL, '081282358651', 'Griya Cibinong Indah Blok K No.10'),
('228', 'Ny. Sri Astiti', '1970-07-22', 'Perempuan', NULL, NULL, '081510184205', 'Nanggewer mekar rt01/05'),
('229', 'Ny. Wati', '2022-02-10', 'Perempuan', NULL, NULL, '082112721700', 'Cjujung Kostrad Blok B No. 10'),
('23', 'An. Nurannisa', '2005-12-30', 'Perempuan', NULL, NULL, '085882735196', 'Jl Pahlawan No.16'),
('230', 'Ny. Starly Putri', '1992-08-13', 'Perempuan', NULL, NULL, '081381865726', 'Jl Raya Centex Gg Gatur No 116 Ciracas'),
('231', 'An. Alkis', '2008-12-28', 'Perempuan', NULL, NULL, '081218115577', 'Villa Bogor Indah III No. 10'),
('232', 'An. Attahira', '2010-01-11', 'Perempuan', NULL, NULL, '081218115577', 'Villa Bogor Indah III No. 10'),
('233', 'Nn. Rafeyfa', '2007-10-27', 'Perempuan', NULL, NULL, '081510255716', 'Mahkota Cibinong Blok D No. 70'),
('234', 'Tn. Rizky Septiawan', '1988-09-28', 'Laki-laki', NULL, NULL, '081281804957', 'Cikempong 02/11 Pakansari'),
('235', 'Tn. Faisal Nazar', '1976-06-26', 'Laki-laki', NULL, NULL, '081210499196', 'Perumahan Permata cimanggis Cl.Mutiara Blok C1 No.6'),
('236', 'Ny. Euis Gimastri', '1981-05-19', 'Perempuan', NULL, NULL, '081219661981', 'Perumahan Permata cimanggis Cl.Mutiara Blok C1 No.6'),
('237', 'An. Fachri Zafran', '2012-09-11', 'Laki-laki', NULL, NULL, '081219661981', 'Perumahan Permata cimanggis Cl.Mutiara Blok C1 No.6'),
('238', 'Ny. Sulastri', '1992-11-04', 'Perempuan', NULL, NULL, '085697399792', 'Kp. Kebon Kelapa rt 3 rw 4 Cimandala'),
('239', 'Nn. Siti Fana', '2002-11-29', 'Perempuan', NULL, NULL, '08561803735', 'Tatya Asri,Blok KB 09,Rt 02/12 Cijujung Sukaraja'),
('24', 'Ny. Eka Marita Sari', '1986-03-10', 'Perempuan', NULL, NULL, '087780074616', 'Perum Greenery Permai Blok A No.6'),
('240', 'Nn. Ayra Orla Rangga', '2014-12-14', 'Laki-laki', NULL, NULL, '085782251184', 'Griya Cibinong Indah 2 Blok A2 No. 4'),
('241', 'Tn. Muchdul Qowi', '1980-01-26', 'Laki-laki', NULL, NULL, '0817534510', 'Kali Baru,Cilodong,Depok'),
('242', 'Ny. Nami', '1950-02-02', 'Perempuan', NULL, NULL, '08567237772', 'Kp.Cikempong rt 03/05 Kel.Pakansari'),
('243', 'Tn. Rangga Juliat', '1979-08-01', 'Laki-laki', NULL, NULL, '089667546549', 'Kp.Cikempong Rt 03/09'),
('244', 'An. Aisyah Zalfa Hamdani', '2021-06-10', 'Perempuan', NULL, NULL, '08562100057', 'Jln.Sirojul Munir,Musholah Albariyah'),
('245', 'Ny. Marlina Sitorus', '1900-01-10', 'Perempuan', NULL, NULL, '081219471091', 'Puri Alam Kencana 2'),
('246', 'An. Mahira Aqila', '2009-08-07', 'Perempuan', NULL, NULL, '08119346111', 'Perumahan Tatya Asri Cluster Mahaloka Blok F7 No.2'),
('247', 'Muhammad Rayhan', '2001-08-26', 'Laki-laki', NULL, NULL, '081382005229', 'Perum. Buana Asri'),
('248', 'M  Agiza Ibrahim Amir', '2002-10-15', 'Laki-laki', NULL, NULL, '085899230820', 'Jl. Cipinang Muara II 44 Rt 13/15'),
('249', 'M. Ghazi Rizqraya Ramadhan', '2006-09-23', 'Laki-laki', NULL, NULL, '081248244825', 'Jl. Cipinang Muara II 44 Rt 13/15'),
('25', 'Tn. Dedi s putra', '1981-07-20', 'Laki-laki', NULL, NULL, '08976786600', 'jln.Bintang Mas rt 04/06 (blok masjid)'),
('250', 'Tn. Rudi Aprianto', '1977-04-21', 'Laki-laki', NULL, NULL, '082111478887', 'Kp. Padurenan rt 004/007 Pabuaran Mekar Cibinong'),
('251', 'Nn. Assyifa Riskia ', '2003-11-03', 'Perempuan', NULL, NULL, '081226860434', 'Jl. Kerja Bakti 01/02 Makasar Jakarta Timur'),
('252', 'Nn. Nuraisyah A', '2006-08-05', 'Perempuan', NULL, NULL, '089637717537', 'Erfina Kencana Regency'),
('253', 'An. Anjani Prameswari', '2016-09-14', 'Perempuan', NULL, NULL, '08111173307', 'Erfina Kencana Regency Cluster Basket Ball No. 45'),
('254', 'Ny. Vini Ramadayanti', '1984-06-19', 'Perempuan', NULL, NULL, '081510255716', 'Mahkota Cibinong Blok D No. 70'),
('255', 'Ny. Sri Karsini', '1977-11-22', 'Perempuan', NULL, NULL, '081317515769', 'Jln.Soka No,53. Nanggewer'),
('256', 'An. Ariqoh Shaumallayah', '2014-07-16', 'Perempuan', NULL, NULL, '08128709566', 'Tatya Asri Blok KD,No.3'),
('257', 'Ny. Ai Rostianah', '1978-02-25', 'Perempuan', NULL, NULL, '08128709566', 'Tatya Asri Blok KD,No.3'),
('258', 'Ny. Febrianti', '1982-02-09', 'Perempuan', NULL, NULL, '08116622665', 'Acropolis MI 12 A'),
('259', 'Ny. Juniwati', '1961-10-28', 'Perempuan', NULL, NULL, '08116622665', 'Acropolis MI 12 A'),
('26', 'Nn. Cikal Fajriani', '2002-06-09', 'Perempuan', NULL, NULL, '089601845646', 'Puri Alam Kencana II Blok O2 No. 6'),
('260', 'Tn. Wahyu Saiful', '1987-08-11', 'Laki-laki', NULL, NULL, '085782992132', 'Jln.Roda Pembangunan,Rt 01/05'),
('261', 'Ny. Martini ', '1958-05-08', 'Perempuan', NULL, NULL, NULL, 'Puri Alam Kencana Blok I No. 4'),
('262', 'Ny. Herlina Sari ', '1973-07-17', 'Perempuan', NULL, NULL, '08111173307', 'Erfina Kencana Regency Cluster Basketball 45'),
('263', 'Nn. Alya Sekarningrum', '2000-11-03', 'Perempuan', NULL, NULL, '08111173307', 'Erfina Kencana Regency Cluster Basketball 45'),
('264', 'Nn. Aura Cahyaningtyas', '2008-12-03', 'Perempuan', NULL, NULL, '08111173307', 'Erfina Kencana Regency Cluster Basketball 45'),
('265', 'Tn. Triana', '1971-11-23', 'Perempuan', NULL, NULL, '081288088863', 'Puri Alam Kencana Blok L 22'),
('266', 'An. Jasir Mahmud', '2011-12-12', 'Laki-laki', NULL, NULL, '081389523788', 'Nirwana Estate Blok J No. 33'),
('267', 'Ny. Iin Zuliyatin', '1993-07-20', 'Perempuan', NULL, NULL, '085843808368', 'Puri Alam Kencana 2 Blok O No. 4'),
('268', 'Tn. Robi Marwanaya', '1993-10-14', 'Laki-laki', NULL, NULL, '0895640340600', 'Nanggewer Mekar 02/05'),
('269', 'Ny. Anisa Hardinia', '1989-12-28', 'Perempuan', NULL, NULL, '082225542913', 'Permata Bintang,Blok B2. No,11'),
('27', 'Ny. Rosmawati', '1976-08-15', 'Perempuan', NULL, NULL, '089605375949', 'Puri Alam Kencana II Blok O2 No. 6'),
('270', 'Tn. Rudi', '1982-05-20', 'Laki-laki', NULL, NULL, '081271516851', 'Kp.Cikempong Rt 04/07'),
('271', 'Nn. Riski Ayu', '1994-02-08', 'Perempuan', NULL, NULL, '081211297898', 'Erfina Kencana Regency,Blok Football No.7'),
('272', 'Ny. Anik Riwayati', '1978-10-21', 'Perempuan', NULL, NULL, '085740655108', 'Puri Nirwana,Blok an no.14'),
('273', 'Tn. Zanvar', '1994-01-01', 'Laki-laki', NULL, NULL, '085157204339', 'Asri,Gegana KelapaDua rt 3/6 Cimanggis'),
('274', 'Ny. Purnama Dewi', '1985-03-06', 'Perempuan', NULL, NULL, '085697344028', 'Metro Residence,Blok B3. No.03'),
('275', 'Nn. Najla Thifa Ajeng S', '2004-09-26', 'Perempuan', NULL, NULL, '0895363178749', 'Puri Alam Kencana 2 Blok 01 No. 1'),
('276', 'Tn. Dedi tri nugroho', '1991-12-06', 'Laki-laki', NULL, NULL, '085718587187', 'Komplek Saba Utama rt 003/005 Ciparigi Bogor '),
('277', 'Nn. Nanda Oktaviana', '2003-03-27', 'Perempuan', NULL, NULL, '081356562200', 'Kaum Pandak Rt 02/09 No. 120 Karadenan Bogor'),
('278', 'Ny. Widya Rosita', '1973-10-30', 'Perempuan', NULL, NULL, '082142001108', 'Jati Asih'),
('279', 'Ny. Evi', '1987-01-31', 'Perempuan', NULL, NULL, '085715251819', 'Jl. Irian jaya II No. 331 Perum 3 Bekasi Timur'),
('28', 'Ny. Asti Firanika ', '1990-06-14', 'Perempuan', NULL, NULL, '082221156534', 'Griya Cibinong Indah Blok A2 No.3'),
('280', 'An. Almeera Septa', '2017-09-01', 'Perempuan', NULL, NULL, '082111787721', 'Erfina Kencana Regency,Cluster Football No.10'),
('281', 'Ny. Teny Novianti', '1990-11-10', 'Perempuan', NULL, NULL, '082213176864', 'Bedahan rt 03/01 Pabuaran Mekar'),
('282', 'Tn. Sarianto ', '1983-02-02', 'Laki-laki', NULL, NULL, '081315388370', 'Pondok Pesona Regency Blok B8'),
('283', 'Tn. Rajiman', NULL, 'Laki-laki', NULL, NULL, NULL, 'Metro Residence'),
('284', 'An. Aliya Fatihah Ferianti', '2015-06-16', 'Perempuan', NULL, NULL, '082213176864', 'Bedahan rt 03/01 Pabuaran Mekar'),
('285', 'Nn. Stevia Grahawita Putri', '1990-03-17', 'Perempuan', NULL, NULL, '082115940055', 'Bumi Cibinong Endah Blok A7 No. 10'),
('286', 'An. Tzefany Astagh', '2015-01-09', 'Laki-laki', NULL, NULL, '085882269169', 'Puri Alam Kencana 1,Blok K,No.II'),
('287', 'Tn. Wiwiet Heriyanto', '1979-01-30', 'Laki-laki', NULL, NULL, '081807162010', 'Erfina Kencana Regency Cluster Football 67'),
('288', 'Ny. Hj.Setiawaty', '1944-08-16', 'Perempuan', NULL, NULL, NULL, 'Budi Mulia Ancol'),
('289', 'Ny.Widiawati', '1984-03-10', 'Perempuan', NULL, NULL, '0811101670', 'Metro Residence,Blok F2,No.20'),
('29', 'Ny. Asih Misniati', '1991-11-29', 'Perempuan', NULL, NULL, '081310436364', 'Pondok Pesona Regency Blok B8'),
('290', 'An. Hafisa Marwah', '2013-05-06', 'Perempuan', NULL, NULL, '08989475343', 'Blok Mesjid rt 02/05'),
('291', 'Tn. Widodo', '1973-05-05', 'Laki-laki', NULL, NULL, '087882251750', 'Puri Alam Kencana Blok A1 No. 20'),
('292', 'Ny. Rini Marbun', '1989-06-10', 'Perempuan', NULL, NULL, '085267102770', 'Jl Raya Sukahati Blok BA No. 46 Cibinong'),
('293', 'An. Mariam Gaudi', '2012-02-22', 'Perempuan', NULL, NULL, '081317510769', 'Perum Nanggewer'),
('294', 'Nn. Nadya Aulia Putri', '1998-10-30', 'Perempuan', NULL, NULL, '081289609236', 'Nirwana Golden Park C5 No. 2'),
('295', 'Nn. Mira Asih M', '1992-03-31', 'Perempuan', NULL, NULL, '087770795699', 'Jl. Raya Cikaret 02/03 No. 21'),
('296', 'Nn. Putri Amalia Widiowati', '1997-03-14', 'Perempuan', NULL, NULL, '087882251750', 'Puri Alam Kencana I Blok K1 No. 20'),
('297', 'Ny. Jahro', '1943-12-12', 'Perempuan', NULL, NULL, '08561127373', 'Ds. Sudagaran 04/02 Siderja'),
('298', 'Nn. Sarah Faradila', '2001-11-07', 'Perempuan', NULL, NULL, '089530372486', 'Jl. Kranji no. 63, muara beres'),
('299', 'Ny. Delita Herarijan', '1988-06-23', 'Perempuan', NULL, NULL, '08561981128', 'Alam Kencana Regency Blok A4/17'),
('3', 'Ny. Windy Astuti', '1998-10-06', 'Perempuan', NULL, NULL, '087887036681', 'Kp.Curug'),
('30', 'An. Aznii Aurelia', '2015-04-19', 'Perempuan', NULL, NULL, '081310436364', 'Pondok Pesona Regency Blok B8'),
('300', 'Tn. Hiswanto Anggit', '1989-08-12', 'Laki-laki', NULL, NULL, '081297414545', 'Erfina Kencana R. Cluster Football No. 7'),
('301', 'An. Multazam Al Aisaar', '2014-11-16', 'Laki-laki', NULL, NULL, '081387207207', 'Perum. Cibinong City, Sukahati'),
('302', 'Tn. Suradi  ', '1984-10-28', 'Laki-laki', NULL, NULL, '085710776268', 'jl. Gor Pakansari'),
('303', 'Ny. Linda Nurhayati', '1973-11-30', 'Perempuan', NULL, NULL, '087870598318', 'Tatya Asri Blok MA 07'),
('304', 'Nn. Mariam Jashika', '2008-01-29', 'Perempuan', NULL, NULL, '085732178134', 'Tatya Asri Blok MA 07'),
('305', 'An. Zakwan Reza Saputra', '2012-03-25', 'Laki-laki', NULL, NULL, '087870287314', 'Bogor Asri,Rt 4/11'),
('306', 'Ny. Nurjanah', '1988-10-28', 'Perempuan', NULL, NULL, '089638443109', 'Kp.Muara Beres,Rt 02/06'),
('307', 'Nn. Nafidah Khansa. A', '2006-06-02', 'Perempuan', NULL, NULL, '082123924942', 'Tatya Asri Blok,MA 07'),
('308', 'Tn. Deddi Agus Susanto', '1979-12-30', 'Laki-laki', NULL, NULL, '0818301009', 'Perum Erfina R. Blok Badminton no. 53'),
('309', 'Tn. Rino Yulianto', '1983-07-17', 'Laki-laki', NULL, NULL, '0813844525774', 'PMPP TNI'),
('31', 'An. Rhea Aulia Rizqika F', '2004-11-15', 'Perempuan', NULL, NULL, '081398331638', 'Tatya Asri Blok KD,No 09 (RT 02 RW 12)'),
('310', 'Tn. Darlinson Purba', '1974-05-15', 'Laki-laki', NULL, NULL, '081385937797', 'PMPP TNI'),
('311', 'Tn. Agung Wiranda', '1988-07-25', 'Laki-laki', NULL, NULL, '081246011000', 'PMPP TNI'),
('312', 'Tn. Tri Indra', '1973-04-25', 'Laki-laki', NULL, NULL, '081383305544', 'PMPP TNI'),
('313', 'Tn. Burhan Zein Khalilullah', '1994-05-22', 'Laki-laki', NULL, NULL, '081280638017', 'Jl. Kateria I/43 Taman Yasmin'),
('314', 'Ny. Trisnani Susilo', '1993-02-22', 'Perempuan', NULL, NULL, '087721883020', 'Komplek Saba Utama rt 003/005 B2 No. 11 Ciparigi Bogor '),
('315', 'An. Adhyasta Abya Dharmassena', '2012-10-15', 'Laki-laki', NULL, NULL, '081282358651', 'Griya Cibinong Indah Blok K No.10'),
('316', 'Tn. Slamet Riyanto', '1979-02-27', 'Laki-laki', NULL, NULL, '081330550082', 'Cijujung Permai Blok V 30'),
('317', 'Tn. Jayadi', '1959-04-24', 'Laki-laki', NULL, NULL, '081386064934', 'Pakansari Rt 02/11'),
('318', 'An. Alya Budi A', '2009-10-31', 'Perempuan', NULL, NULL, '085342806215', 'Perumahan Visar 1,Rt 2 Rw 12'),
('319', 'Ny. Ani Yusnita', '1971-10-09', 'Perempuan', NULL, NULL, '08118451707', 'Kebun Raya Regency Blok Q,No.23'),
('32', 'Tn. Wahyu Prinadang', '1972-11-24', 'Laki-laki', NULL, NULL, '081908068296', 'Atmosfer 8/10'),
('320', 'An. Qaula Azka', '2015-01-06', 'Laki-laki', NULL, NULL, '081283302340', 'Permata Bintang B3 No. 3'),
('321', 'Ny. Rizki Trisnawati', '1987-11-21', 'Perempuan', NULL, NULL, '081291309044', 'Erfina Regency Jl. Volleyball No. 39'),
('322', 'Tn. Ridoi', '1994-12-20', 'Laki-laki', NULL, NULL, '081222061012', 'Jl. Kalibaru raya No. 55 Cilodong'),
('323', 'Ny. Hadiah Sari', '1962-12-31', 'Perempuan', NULL, NULL, '081291476961', 'Jl. Letda Sujono Gg. Seri No. 14 Bandar Selamat Medan'),
('324', 'M. Miraj Al-Ghifari', '1995-12-20', 'Laki-laki', NULL, NULL, '087879214579', 'Jln.Masjid AlMubarok,U/21'),
('325', 'Nn. Nahla Raisya H', '2005-08-13', 'Perempuan', NULL, NULL, '081310283789', 'Tatya Asri Lc-22'),
('326', 'Nn. Nazwa Safinatiz Zingga', '2004-06-14', 'Perempuan', NULL, NULL, '082312343636', 'Perum. Bambu Kuning,Blok G4,No.35'),
('327', 'Tn. Suseno', '1965-12-19', 'Laki-laki', NULL, NULL, '08117117476', 'Visar Indah Pratama Jln.Kenanga 4/15'),
('328', 'Nn. Amilia Agatha', '2003-06-23', 'Perempuan', NULL, NULL, '087770495927', 'Visar Blok VB3,No.15 rt 4/12'),
('329', 'Nn. Elfa Rana Najla', '2009-05-16', 'Perempuan', NULL, NULL, '085603364297', 'Nanggela Anugrah Pratama,C5/16'),
('33', 'An. Farzan Attari', '2015-03-03', 'Laki-laki', NULL, NULL, '087888586260', 'Atmosfer 8/10'),
('330', 'Tn.Meri Haryanto ', '1990-05-29', 'Laki-laki', NULL, NULL, '081210914854', 'Klapanunggal'),
('331', 'M. Farel Fadillah', '2006-10-08', 'Laki-laki', NULL, NULL, '0821126221883', 'Kp. Sampora Cibinong'),
('332', 'Ny. Jumeria', NULL, 'Perempuan', NULL, NULL, '081280664937', 'Metro Residence Cluster Pinewood Blok A3 19'),
('333', 'Tn. H. Asrani Satar', '1945-07-28', 'Laki-laki', NULL, NULL, '08122720959', 'Perum. Grande Village I blok H-9'),
('334', 'An. Shanum Kanyazoya', '2014-11-10', 'Perempuan', NULL, NULL, '0818426343', 'Sirojul Munir Rt 01/02'),
('335', 'Brillian Budi Nugroho', '2004-06-29', 'Laki-laki', NULL, NULL, '085342806215', 'Visar 1 Rt 02/012'),
('336', 'Nn. Santi', '1996-08-25', 'Perempuan', NULL, NULL, '089667266799', 'Blok Masjid 04/06'),
('337', 'An. Ghaisan Ahmad Altamis F', '2013-09-15', 'Laki-laki', NULL, NULL, '085881407035', 'Puri Alam Kencana,Blok J1 No.1'),
('338', 'Ny. Aruk Masruroh', '1973-10-06', 'Perempuan', NULL, NULL, '081389523788', 'Nirwana Estate Blok J No. 33'),
('339', 'Tn. Theo Kurnia Putra', '1995-07-22', 'Laki-laki', NULL, NULL, '082181185194', 'Asrama Yonif Mekanis 201/jy'),
('34', 'An. Fary Fauzan', '2008-01-23', 'Laki-laki', NULL, NULL, '087888586260', 'Atmosfer 8/10'),
('340', 'An. Sophie Mikaila S', '2013-09-02', 'Perempuan', NULL, NULL, '08121083262', 'Erfina Kencana Regency, Downhill No.81'),
('341', 'An. Rameyza My princes ananda A', '2012-02-15', 'Perempuan', NULL, NULL, '08111104317', 'Citra Graha Permai,Blok N1 No.5'),
('342', 'Tn. Ahmad Syaifudin', '1979-09-25', 'Laki-laki', NULL, NULL, '081381192389', 'Nanggewer'),
('343', 'Ny. Wina Tiara P', '1984-12-21', 'Perempuan', NULL, NULL, '081381192389', 'Nanggewer'),
('344', 'An. Anasera', '2014-08-25', 'Perempuan', NULL, NULL, '081381192389', 'Nanggewer'),
('345', 'Azizil Akbar', '2002-06-13', 'Laki-laki', NULL, NULL, '087742608162', 'Perumahan Nirwana Estate,Blok J No.33'),
('346', 'Afrizal Candra', '2003-09-07', 'Laki-laki', NULL, NULL, '087770337298', 'Kp.Curug rt 04/04 Pakansari'),
('347', 'Ny. Imelda Mulyati S', '1973-05-14', 'Perempuan', NULL, NULL, '08121083262', 'Erfina Kencana Regency,Blok Downhill No.81'),
('348', 'An. Almeir Ibrahim', '2014-11-10', 'Laki-laki', NULL, NULL, '085740848093', 'Griya Selaras Cikaret'),
('349', 'Ny. Maisaroh', '1979-05-10', 'Perempuan', NULL, NULL, '087800136300', 'Puri Nirwana 1,Blok JJ No.1'),
('35', 'Ny. Radita Novalia ', '1979-11-27', 'Perempuan', NULL, NULL, '087888586260', 'Atmosfer 8/10'),
('350', 'Nn. Zaha Hadid', '2004-08-05', 'Perempuan', NULL, NULL, '089655821909', 'Perumahan Nanggewer Indah, Jln.Soka'),
('351', 'Ny. Warsih', '1964-02-07', 'Perempuan', NULL, NULL, '087874741858', 'Kp.Cikempong rt 03/11 No.14 Pakansari'),
('352', 'Tn. Dul Hopi', '1948-07-01', 'Laki-laki', NULL, NULL, '081295283346', 'Jl. Mawar No. 14 Rt 03/04'),
('353', 'Tn. Lukman Hakim', '1965-06-23', 'Laki-laki', NULL, NULL, '08179119165', 'Lubang Buaya, Jakarta Timur'),
('354', 'Tn. Mumtaz', '1998-06-04', 'Laki-laki', NULL, NULL, '082123535259', 'Lubang Buaya, Jakarta Timur'),
('355', 'Tn. M. Syukron', '1994-08-19', 'Laki-laki', NULL, NULL, '08993665482', 'Kp. Banjarsari, rt 03/03 Cikande, Serang'),
('356', 'Tn. M.Salman Alfarisi', '1987-06-10', 'Laki-laki', NULL, NULL, '081282260948', 'Bumi Cibinong Endah,Blok A6 No.15 Sukahati Cibinong'),
('357', 'Ny. Meylina Kurniawati', '1987-05-07', 'Perempuan', NULL, NULL, '082164266866', 'Bumi Cibinong Endah,Blok A6 No.15 Sukahati Cibinong'),
('358', 'Ny. Raysa Lestianti', '1995-09-08', 'Perempuan', NULL, NULL, '081291274381', 'Bumi Sentosa 2,Blok F2/11 Nanggewer'),
('359', 'Tn. Rudi Nirwanto', '1992-06-10', 'Laki-laki', NULL, NULL, '081291274381', 'Bumi Sentosa 2,Blok F2/11 Nanggewer'),
('36', 'Tn. Faiz Aiman Gifari', '1999-08-03', 'Laki-laki', NULL, NULL, '087888586260', 'Atmosfer 8/10'),
('360', 'An. Muhammad Fayyad Atahillah', '2012-07-10', 'Laki-laki', NULL, NULL, '082167167309', 'Puri Nirwana 3,Blok Bb No.18 Karadenan'),
('361', 'Nn. Velixza Nintia', '2007-05-04', 'Perempuan', NULL, NULL, '083879358625', 'Rumdis PMPP TNI'),
('362', 'Tn. Yuda Purnama', '1984-04-01', 'Laki-laki', NULL, NULL, '081380820170', 'Pakansari Rt 3/7'),
('363', 'Tn. Andynata Tamtama Suseno', '1997-10-31', 'Laki-laki', NULL, NULL, '085156312813', 'Visar Indah Pratama Jln.Kenanga 4/15 . Rt 4/12'),
('364', 'Ny. Titin S', '1973-01-15', 'Perempuan', NULL, NULL, '081311596905', 'Nanggewer Mekar'),
('365', 'Nn. Nada Izzati', '2009-03-02', 'Perempuan', NULL, NULL, '08127634075', 'Erfina Kencana Regency Cluster Footbal No. 9'),
('366', 'Tn. Sam ', NULL, 'Laki-laki', NULL, NULL, '081514686446', 'Bambu Apus'),
('367', 'Ny. Amelia Saleha', '1994-07-01', 'Perempuan', NULL, NULL, '081223475889', 'Kampung Cimpaeun Rt 02/02'),
('368', 'An. Mahda Abdillah', '2014-09-24', 'Laki-laki', NULL, NULL, '082219744922', 'Kp.Cikempong rt 10/9'),
('369', 'Nn. Amelia', '1999-03-05', 'Perempuan', NULL, NULL, '08979619523', 'Kp.Parakan Jati Rt 01/04 , Bojong  Gede'),
('37', 'An. Salwa Alifah', '2005-02-08', 'Perempuan', NULL, NULL, '081316503380', 'Puri Nirwana 3,Blok CL No.04'),
('370', 'Ny. Devi', '1994-10-10', 'Perempuan', NULL, NULL, '089623846411', 'Kp.Parakan Jati Rt 01/04 , Bojong  Gede'),
('371', 'Nn. Riska', '2001-04-15', 'Perempuan', NULL, NULL, '08998502150', 'Kp.Cipayung Rt 4/3'),
('372', 'Tn. Auvy Ahmad Haidar', '1994-12-03', 'Laki-laki', NULL, NULL, '087770052287', 'Jln. Stadion Pakansari No.43'),
('373', 'Ny. Mimi', '1968-07-23', 'Perempuan', NULL, NULL, '081519552638', 'Kristal Garden,Ciriung'),
('374', 'Ny. Nansi', '1984-10-11', 'Perempuan', NULL, NULL, '082167167309', 'Puri Nirwana 3, Blok Bb No.18 Karadenan'),
('375', 'Tn. Budiono', '1956-08-08', 'Laki-laki', NULL, NULL, '082257024411', 'Jln. Gor Pakansari'),
('376', 'An. Yafi Unfawan', '2010-12-25', 'Laki-laki', NULL, NULL, '08127634075', 'Erfina Kencana Regency Football Cluster No. 9'),
('377', 'Tn. Ferry Utama', '1958-12-21', 'Laki-laki', NULL, NULL, '081387689888', 'Erfina Kencana Jl. Badminton No. 36'),
('378', 'An. Fatima Adilla', '2011-07-24', 'Perempuan', NULL, NULL, '087877672841', 'Komp. DitBekang Jl. Ananta 3 No. 18'),
('379', 'Ny. Suezi Riani', '1976-11-14', 'Perempuan', NULL, NULL, '087877672841', 'Komp. DitBekang Jl. Ananta 3 No. 18'),
('38', 'An. Marco Silaen', '2006-03-07', 'Laki-laki', NULL, NULL, NULL, 'Nirwana Estate Blok Ee no.26'),
('380', 'Tn. Vembri Hantoro', '1980-11-16', 'Laki-laki', NULL, NULL, '082112695282', 'Metro Residen Cluster Pinewood C3 No. 30'),
('381', 'Tn. Subuh', '1979-12-31', 'Laki-laki', NULL, NULL, '081315034456', 'Griya Cibinong Indah D2A No. 5 rt 7/12'),
('382', 'Nn. Lesi Awanti', '1993-02-11', 'Perempuan', NULL, NULL, '089516410711', 'Puri Alam Kencana 1 Blok J1 No. 9'),
('383', 'Ny. Wiwin Widyaningsih', '1987-08-15', 'Perempuan', NULL, NULL, '089516410711', 'Kampung Poncol Rt 02/05'),
('384', 'Ny. Miftahul Janah', '1976-02-02', 'Perempuan ', NULL, NULL, '081315476066', 'Erfina Kencana Regency Cluster F1 17'),
('385', 'Ny. Nurhaya', '1978-06-26', 'Perempuan', NULL, NULL, '081399679909', 'Pondok Rajeg Rt 01/04 '),
('386', 'Tn. Anan Saif', '1981-01-26', 'Laki-laki', NULL, NULL, '081386324933', 'Bojong Gede'),
('387', 'An. Assyifa Nurjannah', '2015-08-09', 'Perempuan', NULL, NULL, '081287056552', 'Cilebut Timur'),
('388', 'Ny. Suwarti ', '1983-01-01', 'Perempuan', NULL, NULL, '081284947492', 'Erfina Kencana Regency Cluster Gymnastic No. 11'),
('389', 'An. Khaira my princess', '2016-07-03', 'Perempuan', NULL, NULL, '08111104317', 'Cipta Graha Permai N1 No. 11'),
('39', 'Ny. Aisiyah', '1960-04-27', 'Perempuan', NULL, NULL, NULL, 'Jl Sentul GOR Pakansari No. 43'),
('390', 'Tn. Zainal Anbiya', '1965-08-17', 'Laki-laki', NULL, NULL, '08111104317', 'Cipta Graha Permai N1 No. 11'),
('391', 'An. Aira', '2015-10-17', 'Perempuan', NULL, NULL, '082111519136', 'Kp. Babakan Tarik Kolot rt 04/05'),
('392', 'Nn. Faradiva', '2002-10-17', 'Perempuan', NULL, NULL, '082155000108', 'Kp.Cipayung Rt 6/6 Kel.Tengah'),
('393', 'Ny. Ifah Kholifah', '1981-01-04', 'Perempuan', NULL, NULL, '082123733381', 'Kp.Cipayung Rt 6/6 Kel.Tengah'),
('394', 'An. Asyifa Maulana', '2008-07-02', 'Perempuan', NULL, NULL, '082111521859', 'Kp.Cipayung Rt 6/6 Kel.Tengah'),
('395', 'An. Hudaifi Maulana', '2015-03-09', 'Laki-laki', NULL, NULL, '082155000108', 'Kp.Cipayung Rt 6/6 Kel.Tengah'),
('396', 'Ny. Eni Minarni', '1971-01-31', 'Perempuan', NULL, NULL, '081318825876', 'Pakansai Rt 06/07'),
('397', 'An. Muhammad Tio', '2010-02-13', 'Laki-laki', NULL, NULL, '08996867608', 'Kp. Tarikolot Rt 01/06'),
('398', 'An. Khansa H', '2012-07-02', 'Perempuan', NULL, NULL, '081264445555', 'Puri Alam Kencana 2 P3 No 9'),
('399', 'Nn. Cindy Rana K', '2000-11-21', 'Perempuan', NULL, NULL, '089638247263', 'BTN Pos Giro Rt 03/10'),
('4', 'Tn. Muhammad Z.A', '1992-09-07', 'Laki-laki', NULL, NULL, '089638382113', 'Cikaret'),
('40', 'Ny. Karyati', '1974-10-10', 'Perempuan', NULL, NULL, NULL, 'Jl Sentul GOR Pakansari No. 43'),
('400', 'An. Jibril Zahwa', '2012-01-08', 'Laki-laki', NULL, NULL, '08121083262', 'Erfina Kencana Regency Downhill'),
('401', 'Ny. Siti Nurhayati', '1973-09-22', 'Perempuan', NULL, NULL, '081519651111', 'Perumahan Bumi Sentosa Blok C1 No. 21'),
('402', 'Ny. Ika Agustiana', '1976-08-15', 'Perempuan', NULL, NULL, '082260606012', 'Metro Residence N1 No.17'),
('403', 'An. Syakirah Cahaya', '2014-07-16', 'Laki-laki', NULL, NULL, '0816994353', 'KRR Bogor'),
('404', 'Ny. Amelia Rahmi', '1986-03-13', 'Perempuan', NULL, NULL, '085264861012', 'Perumahan Nanggewer Indah Jln.Seruni No.155'),
('405', 'Tn. Fauzi Ghazali', '1995-05-16', 'Laki-laki', NULL, NULL, '08979320972', 'Pabuaran Cibinong'),
('406', 'Tn. Suhendar', '1990-09-20', 'Laki-laki', NULL, NULL, '089540350302', 'Kp. Tarikolot Rt 01/06'),
('407', 'Nn. Maulida A', '2003-05-06', 'Perempuan', NULL, NULL, '089621025442', 'Kp. Tarikolot Rt 01/06'),
('408', 'Bintang Rizki Pratama', '2004-05-09', 'Laki-laki', NULL, NULL, '081243251827', 'Perumahan Cimandala Permai Blok R10 Sukaraja'),
('409', 'Ny. Umi Sriwahyuni', '1971-06-27', 'Perempuan', NULL, NULL, '081585692623', 'Perumahan Cimandala Permai Blok R10 Sukaraja'),
('41', 'Nn. Annisa Fitriani', '2006-10-26', 'Perempuan', NULL, NULL, '081398049871', 'Jl Sentul GOR Pakansari No. 43'),
('410', 'Tn. Irfan Junianto', '1981-05-15', 'Laki-laki', NULL, NULL, '08156665380', 'Villa Mahkota, Pakansari, Cibinong'),
('411', 'Nn. Aldis Khaliza', '2006-12-07', 'Perempuan', NULL, NULL, '082123123482', 'Pondok Widyatama Indah Blok S No. 11'),
('412', 'Ny. Nita Rahmaniah', '1966-10-31', 'Perempuan', NULL, NULL, '087770070031', 'tatya Asri OB No.3 Rt 04/012'),
('413', 'Ny. Anis Seriwati', '1995-03-18', 'Perempuan', NULL, NULL, '085881861962', 'Cijujung Rt 04/01'),
('414', 'Tn. Widodo', '1978-02-19', 'Laki-laki', NULL, NULL, '087881691548', 'Perum. Jatijajar Asri Blok B3 No. 1'),
('415', 'Tn.H Mpi', '1971-02-01', 'Laki-laki', NULL, NULL, '081219715671', 'Pamulang'),
('416', 'Ny. Inggit irmatiana', '1990-09-09', 'Perempuan', NULL, NULL, '081219766090', 'Pamulang'),
('417', 'Aprilia Fortuna L', '2008-04-26', 'Perempuan', NULL, NULL, '81287726201', 'PAK Blok N No.2'),
('418', 'Unggul Wahyudi', '1974-05-15', 'Laki-laki', NULL, NULL, '081224439826', 'Asrama PMPP TNI'),
('419', 'Tn. Mujib Hulyufi', '1905-06-21', 'Laki-laki', NULL, NULL, '085707781974', 'Kediri'),
('42', 'Ny. Dian Rivia', '1973-08-17', 'Perempuan', NULL, NULL, '082112621883', 'Sampora,Cibinong'),
('420', 'Ny. Rini Kartikasari', '1981-01-15', 'Laki-laki', NULL, NULL, '0816994353', 'KRR CPI No. 30 Bogor'),
('421', 'Tn. Yoshua Pantou', '1969-09-29', 'Laki-laki', NULL, NULL, '082112814778', 'Puri Alam Kencana I Blok J1 No. 5'),
('422', 'An. Laura Rizka Ramadhani', '2009-09-18', 'Perempuan', NULL, NULL, '08571160660776', 'Perumahan Wartawangsa Blok A No.8'),
('423', 'Ny. Novika Nia Sari', '1991-11-11', 'Perempuan', NULL, NULL, '087708978795', 'Perumahan Permata Bintang Blok I No.8'),
('424', 'Ny. Eselin Agista M', '1994-08-16', 'Perempuan', NULL, NULL, '085716677345', 'Tatya Asri Blok OB No. 3'),
('425', 'An. Abrisam Ahmad Faiza Firdaus', '2017-04-17', 'Laki-laki', NULL, NULL, '085881407035', 'Puri Alam Kencana Blok J1 No. 2'),
('426', 'An. Jennifer Wanasida', '2012-09-17', 'Perempuan', NULL, NULL, '087887158511', 'Permata Cibinong Blok A1 No.16'),
('427', 'Qori Aina A', NULL, 'Perempuan', NULL, NULL, '085811881546', 'Perumahan Bambu Kuning Blok A4 No.20 Bojong Gede'),
('428', 'An. Aiyra Zahra', '2012-05-03', 'Perempuan', NULL, NULL, '087870133000', 'Erfina Kencana Regency No.16'),
('429', 'Ny. Nurmala Oktaviani', '1989-10-19', 'Perempuan', NULL, NULL, '08111919823', 'Kranggan Permai Blok BS3 No.20'),
('43', 'Nn. Rubby Lidya R', '2002-09-27', 'Perempuan', NULL, NULL, '0845374664426', 'Rumdis PMPP TNI'),
('430', 'Tn. Siswanto', '1980-08-05', 'Laki-laki', NULL, NULL, '088237158491', 'Dusun Nuso Rt 04/03 Ploso Rejo'),
('431', 'Ny. Siti Hadijah', '1972-07-06', 'Perempuan', NULL, NULL, '081212527481', 'Erfina Kencana Regency Football No. 29'),
('432', 'An. Friska Angelin Aurelia', '2012-01-05', 'Perempuan', NULL, NULL, '089631880327', 'Puri Alam Kencana Blok C No. 8'),
('433', 'Ny. Dewi Ratnaningsih', '1972-01-10', 'Perempuan', NULL, NULL, '081219474588', 'Perum Kenari Jagorawi Blok 7A No. 22'),
('434', 'Tn. Yono', '1970-12-31', 'Laki-laki', NULL, NULL, '081232520938', 'Sebelah Anggana'),
('435', 'Tn. Dimas Krishna Atmadjaya', '1988-02-09', 'Laki-laki', NULL, NULL, '081386735088', 'Lemper Mijen Raya 5/6 Lemper Tengah, Semarang Selatan'),
('436', 'Muh. Ksatria Al-Farisi', '2008-04-05', 'Laki-laki', NULL, NULL, '085860179083', 'Graha Pratama Cibinong'),
('437', 'Ny. Juniartini', '1971-06-16', 'Perempuan', NULL, NULL, '085860179083', 'Graha Pratama Cibinong'),
('438', 'Ny. Yuniar', '1965-12-10', 'Perempuan', NULL, NULL, '0816978666', 'Erfina Kencana Regency Cluster Rugby'),
('439', 'Tn. Heri Sutanto', '1986-01-31', 'Laki-laki', NULL, NULL, '0816750003', 'Erfina Kencana Regency Blok Volleyball No. 8'),
('44', 'Tn.  Dana ', NULL, 'Laki-laki', NULL, NULL, NULL, 'Bandung'),
('440', 'Ny. Dewi Rahmawati', '1968-07-12', 'Perempuan', NULL, NULL, '08151845440', 'Perum. Tatya Asri Mahaloka F5/23A Rt. 007/012 Cijujung '),
('441', 'Ny. Ida Handayani Ritonga', '1996-08-03', 'Perempuan', NULL, NULL, '085960176675', 'Jl. GOR Pakansari, cibinong'),
('442', 'Tn. Ravi Bastari', '1996-01-24', 'Laki-laki', NULL, NULL, '087738966542', 'Jl. GOR Pakansari, cibinong'),
('443', 'Tn. Slamet Pribadi', '1962-08-03', 'Laki-laki', NULL, NULL, '085697656956', 'Bumi Cibinong endah Blok E2 no. 39'),
('444', 'Ny. Vini Noviani', '1982-11-02', 'Perempuan', NULL, NULL, '085320505807', 'Erfina Kencana Regency Blok F1 No. 20'),
('445', 'Ny. Rismiati', '1970-07-06', 'Perempuan', NULL, NULL, '085925080635', 'Puri Alam Kencana 1 rt 03/07'),
('446', 'Ny. Purnama Dewi', '1985-03-06', 'Perempuan', NULL, NULL, '085697344028', 'Metro Residence,Blok B3. No.03'),
('447', 'Ny. Sri Rahayu', '1974-07-22', 'Perempuan', NULL, NULL, '087895387199', 'Perum Bumi Mekar Pratama Blok C No. 3 Nanggewer'),
('448', 'Nn. Nadia Safa Azlika', '2002-01-30', 'Perempuan', NULL, NULL, '081314399292', 'Puri Nirwana Estate Blok Jj No.33'),
('449', 'An. Mahadika Bundayana', '2012-11-14', 'Laki-laki', NULL, NULL, '089699079003', 'Pabrik Kulit Rt 03 Rw 07'),
('45', 'Ny.  Ayu Nur Puspa Ningrum', '1995-01-01', 'Perempuan', NULL, NULL, '089626316343', 'Tatya Asri Blok JD no. 9'),
('450', 'An. Imam Leksananda Faturrohim', '2015-10-10', 'Laki-laki', NULL, NULL, '085219774579', 'Erfina Kencana Regency Cluster Downhill 59'),
('451', 'Ny. Ida Riwanti', '1982-12-08', 'Perempuan', NULL, NULL, '08153551076', 'Erfina Kencana Regency'),
('452', 'Tn. Budi Irawan', '1973-10-14', 'Laki-laki', NULL, NULL, '081365057038', 'Darmo Indah Selatan'),
('453', 'Tn. Irwan Kusuma', '1986-12-18', 'Laki-laki', NULL, NULL, '081284370118', 'Nanggewer Mekar Rt 02/05'),
('454', 'An. Rania Zehra C', '2015-05-19', 'Perempuan', NULL, NULL, '081212964411', 'Metro Residence Blok K3 No.15'),
('455', 'An. Mika Firdaus A', '2017-09-19', 'Perempuan', NULL, NULL, '081212964411', 'Metro Residence Blok K3 No.15'),
('456', 'An. Muh Arza Ahza', '2018-01-12', 'Laki-laki', NULL, NULL, '08984369924', 'Puri Alam Kencana 2'),
('457', 'Tn. Moh Barokna Haula', '1969-11-11', 'Laki-laki', NULL, NULL, '082110284198', 'Acropolis Karadenan'),
('458', 'An. Almahira Saquena', '2019-07-15', 'Perempuan', NULL, NULL, '081284947492', 'Erfina Kencana Regency '),
('459', 'An. Arsila Roemesa', '2017-03-22', 'Perempuan', NULL, NULL, '085313108789', 'Rumdis PMPP TNI'),
('46', 'Tn.  Andi Susilo', '1985-08-02', 'Laki-laki', NULL, NULL, '081385899265', 'Desa Nagrak, Sukaraja, Bogor'),
('460', 'Tn. Eko Yanuar', '1983-01-04', 'Laki-laki', NULL, NULL, '085745992473', 'pmpp TNI'),
('461', 'Pascal', '2000-04-22', 'Laki-laki', NULL, NULL, '082298399836', 'Puri Nirwana 1B No.22'),
('462', 'Ny.Darini', '1969-02-13', 'Perempuan', NULL, NULL, '081227600252', 'Kp.Cikempong rt 04/07'),
('463', 'Ny. Sani', '1979-02-24', 'Perempuan', NULL, NULL, '081219533501', 'Kp. Poncol rt 02/05'),
('464', 'An. Afrilia Haura Nadzhifa', '2015-04-29', 'Perempuan', NULL, NULL, '081219533501', 'Kp. Poncol rt 02/05'),
('465', 'Fasha Aliefta A.s', '2004-03-27', 'Perempuan', NULL, NULL, '081299004658', 'Bumi Sentosa blok B3 no.1'),
('466', 'An. Falisha Ayudia Putri', '2020-04-21', 'Perempuan', NULL, NULL, '082213176864', 'Bedahan rt 03/01 Pabuaran Mekar'),
('467', 'Ny. Okeu Nurlaelasari', '1982-10-03', 'Perempuan', NULL, NULL, '081322229441', 'Perum BMP D1 No. 13 Nanggewer'),
('468', 'Tn. Ardi Sukmono', '1974-04-14', 'Laki-laki', NULL, NULL, '082113508869', 'Perum BMP D1 No. 13 Nanggewer'),
('469', 'Ny. Karamitha Anindyajati', '1990-04-29', 'Perempuan', NULL, NULL, '085729894885', 'Erfina Kencana Regency Downhill No. 38'),
('47', 'An. Giana Maulidya H', '2003-05-14', 'Perempuan', NULL, NULL, '089507790012', 'Ciluar Permai,Blok C3 . RT 005/008'),
('470', 'An. Fahima yusra Kalare', '2021-02-25', 'Perempuan', NULL, NULL, '085729894885', 'Erfina Kencana Regency Downhill No. 38'),
('471', 'An. Pradnya Almahyra Kalare', '2019-08-17', 'Perempuan', NULL, NULL, '085729894885', 'Erfina Kencana Regency Downhill No. 38'),
('472', 'Nn. Salsabila Nurcahyani', '2003-07-03', 'Perempuan', NULL, NULL, '085695985482', 'Puspa raya blok DE 24'),
('473', 'Tn. Rusli', '1974-09-04', 'Laki-laki', NULL, NULL, '087878855919', 'Kp. Poncol rt 02/05'),
('474', 'Nn. Davina vanesa', '2001-10-23', 'Perempuan', NULL, NULL, '085778924907', 'Acropolis Cibinong'),
('475', 'Tn. Dwi Agus', '1998-08-07', 'Laki-laki', NULL, NULL, '085779682104', 'Jl. Sirojul Munir No. 89 Nanggewer Mekar'),
('476', 'Ny. Kartika Sari', '1995-08-16', 'Perempuan', NULL, NULL, '081398056288', 'Sentul,Babakan Madang'),
('477', 'An. Alkhalifi Zikri', '2013-02-13', 'Laki-laki', NULL, NULL, '085264861012', 'Nanggewer Indah Jl. Seruni No. 155'),
('478', 'An. Arkan Arif Prasetya', '2011-10-10', 'Laki-laki', NULL, NULL, '085264861012', 'Nanggewer Indah Jl. Seruni No. 155'),
('479', 'An. Miqdad Jalim Hanif', '2017-12-22', 'Laki-laki', NULL, NULL, '089647776565', 'Puri Alam Kencana Blok R No. 14'),
('48', 'Nn. Annisa Sekar', '2005-09-26', 'Perempuan', NULL, NULL, '085236270021', 'KODAMER Kelapa Gading'),
('480', 'An. M Rizal Abdul Rahim', '2020-02-13', 'Laki-laki', NULL, NULL, '0895364421828', 'Kp. Nanggewer Bintang Mas rt 04/05'),
('49', 'Tn. Hafizh Kapten Adi', '2001-03-07', 'Laki-laki', NULL, NULL, '081233300091', 'KODAMER Kelapa Gading'),
('5', 'Tn. Dwi Cahyo', '1975-10-10', 'Laki-laki', NULL, NULL, '081383394465', 'Puri Alam Kencana G/14'),
('50', 'Ny. Hoany Darazatin', '1973-05-10', 'Perempuan', NULL, NULL, NULL, 'Puri Nirwana Estate,No 26'),
('51', 'Tn. Saiful Anwar', '1966-10-12', 'Laki-laki', NULL, NULL, '081382146220', 'Puri Nirwana Estate,Blok CJ . No 33'),
('52', 'Ny. Larasati', '1994-08-10', 'Perempuan', NULL, NULL, '087781713077', 'Nanggela Anugrah Pratama,Blok C12. No8'),
('53', 'Ny. Nila Dewi Andayani', '1974-10-27', 'Perempuan', NULL, NULL, '08567074220', 'Jln.Gor Pakansari,No 43'),
('54', 'Ny. Tia Mutamimah', '1987-05-03', 'Perempuan', NULL, NULL, '0895394506699', 'Jln.Pamhil Golf'),
('55', 'Tn. Wilson', '2004-11-11', 'Laki-laki', NULL, NULL, '087782034759', 'Puri Alam Kencana 2,Blok N3/15. Rt 03 Rw 05,Nanggewer'),
('56', 'Tn. Tristan Azrilio', '2005-06-03', 'Laki-laki', NULL, NULL, '087781461650', 'Wartawangsa Residence Blok A1'),
('57', 'Nn. Karina Khairunnisa', '2006-11-19', 'Perempuan', NULL, NULL, '081184517017', 'Kebun Raya Residence Q/23'),
('58', 'Tn.  Ardi Septianto', '1991-09-28', 'Laki-laki', NULL, NULL, '089626316343', 'Tatya Asri Blok JD No.9');
INSERT INTO `pasien` (`no_rekam_medik`, `nama`, `ttl`, `jenis_kelamin`, `riwayat_penyakit`, `no_bpjs`, `no_hp`, `alamat`) VALUES
('59', 'Nn. Umi Zaniza', '2021-02-17', 'Perempuan', NULL, NULL, '083838263754', 'Perum Gratindo Pondok Rajeg B2 No. 4'),
('6', 'Tn. Udin Syamsudin', '1972-03-04', 'Laki-laki', NULL, NULL, '085218292322', ' '),
('60', 'An. Mahira Ayuka S', '2012-11-05', 'Perempuan', NULL, NULL, '081319828688', 'Permata Cimanggis Cluster Kumala Jalan Raya Tapos'),
('61', 'Nn. Ratifa', '2002-04-10', 'Perempuan', NULL, NULL, '082122746695', 'PMPP'),
('62', 'Ny. Kulsum', '1961-12-04', 'Perempuan', NULL, NULL, NULL, 'Karadenan rt 05/04 No. 15'),
('63', 'Nn. Aurell Hasya Akbar', '2002-10-21', 'Perempuan', NULL, NULL, '08561444735', 'Jatijajar'),
('64', 'Nn. Ghaitsa Zahira S', '2005-06-09', 'Perempuan', NULL, NULL, '085691219609', 'Jatijajar'),
('65', 'Nn. Fatimah Azzahra', '2006-10-07', 'Perempuan', NULL, NULL, '081283170937', 'Pabuaran,Rt 03 rw 05'),
('66', 'Tn. Hedwin Cipta', '1982-12-12', 'Laki-laki', NULL, NULL, '081283170937', 'Pabuaran Cibinong'),
('67', 'Ny. Laraswati', '1995-05-08', 'Perempuan', NULL, NULL, '087770305641', 'Pasir Muncang,Gadog'),
('68', 'Nn. Alifia Nadira', '2001-03-03', 'Perempuan', NULL, NULL, '087870491041', 'Puri Alam Kencana 1,Blok A'),
('69', 'Tn. Dodi Setiawan', '1983-08-27', 'Laki-laki', NULL, NULL, '085790315050', 'Jatiuwung,Magetan'),
('7', 'Ny. Dewi Triana', '1970-12-19', 'Perempuan', NULL, NULL, '0817620074', 'Nirwana Golden Park Blok A5 No. 3'),
('70', 'Tn. Warbani', '1970-10-09', 'Laki-laki', NULL, NULL, '081282197573', 'Kp. Curug rt 06/12 Pakansari,Cibinong'),
('71', 'Ny. Hana', '1957-11-11', 'Perempuan', NULL, NULL, '087870352096', 'Cikijang 4,No 6,Tj.Priok Jakarta Utara'),
('72', 'Tn. Soleman', '1984-04-04', 'Laki-laki', NULL, NULL, '08567074405', 'Nanggela Anugrah Pratama,Blok C7-10A'),
('73', 'Tn. Agung Rudiyanto', '1973-12-29', 'Laki-laki', NULL, NULL, '082298403799', 'Jl. Dempo 6, Pegangsaan, Menteng'),
('74', 'Nn. Siti Durrotun N', '2000-05-06', 'Perempuan', NULL, NULL, '0895394752938', 'Pabuaran Mekar,Rt 07/04.Cibinong'),
('75', 'Nn. Tabiinah', '2004-09-29', 'Laki-laki', NULL, NULL, '085780022073', 'Villa Bogor Indah 6'),
('76', 'An. Fatir Jafron', '2014-05-10', 'Laki-laki', NULL, NULL, '085715610251', 'Komplek Dit Bek\'ang,rt 03/05 No,9.'),
('77', 'Nn. Wiwin R', '1977-12-09', 'Perempuan', NULL, NULL, '081218902877', 'Erfina Kencana Regency,Blok Badminton No.44'),
('78', 'M. Andika Purnama ', '2000-06-23', 'Laki-laki', NULL, NULL, '085158358395', 'Taman Kenari 7A,22. Citereup'),
('79', 'Mila Alawiyah ', '1997-08-17', 'Perempuan', NULL, NULL, '081514151715', 'Nanggewer,Perum ACR'),
('8', 'An. Kirana Langit Gemintang', '2013-07-26', 'Perempuan', NULL, NULL, '085220732285', 'Bumi Sentosa 2 Blok D6 No.7'),
('80', 'Ny. Yetty N', '1955-09-05', 'Perempuan', NULL, NULL, '081317519779', 'Roda Pembangunan,Gg.Citra'),
('81', 'Tn. Sumarji SE', '1962-03-03', '`', NULL, NULL, '081296823321', 'Roda Pembangunan,Gg.Citra'),
('82', 'An. Suraya I', '2015-04-09', 'Perempuan', NULL, NULL, '08897788811', ' L'),
('83', 'Nn. Anisa Rahma Ridha', '2000-10-05', 'Perempuan', NULL, NULL, '085776625455', 'Jln,H.Arisan,Gg,H.Sain amin,Bedahan Pabuaran Mekar'),
('84', 'An. M S Dzarinal Ghiffar', '2014-09-06', 'Laki-laki', NULL, NULL, '08567074220', 'Jln.Sentul Gor Pakansari 43'),
('85', 'Tn. Sulthon Aulia A', '2007-10-08', 'Laki-laki', NULL, NULL, '087888811856', 'Tatya Asri Jc 30'),
('86', 'An. Malika Aqeela', '2015-04-15', 'Perempuan', NULL, NULL, '08116622665', 'Acropolis Karadenan'),
('87', 'Tn. Gito', '1974-05-11', 'Laki-laki', NULL, NULL, '081319153873', 'Puri Alam Kencana 2'),
('88', 'Ny. Yasnimar', '1981-04-09', 'Perempuan', NULL, NULL, '085693870446', 'Puri Alam Kencana 2'),
('89', 'Nn. Marsha A.R', '2008-03-12', 'Perempuan', NULL, NULL, NULL, 'Puri Alam Kencana 2'),
('9', 'Ny. Nur Wijayanti', '1970-01-02', 'Perempuan', NULL, NULL, '081807965399', 'Kp Cikempong 02/11 '),
('90', 'An. Dzikry Firdaus R', '2016-08-20', 'Laki-laki', NULL, NULL, NULL, 'Puri Alam Kencana 2'),
('91', 'An. Farzin Hilmy', '2010-08-27', 'Laki-laki', NULL, NULL, '08159091864', 'Nirwana Golden Park Blok E7 No. 6'),
('92', 'dr. Wara Wulanjar P', '1979-09-02', 'Perempuan', NULL, NULL, '081310283789', 'Tatya Asri Lc-22'),
('93', 'An. Sabrina HarumDzika', '2006-07-07', 'Perempuan', NULL, NULL, '089674704813', 'Jln,H.Arisan,Gg,H.Sain amin,Bedahan Pabuaran Mekar'),
('94', 'Tn. Wing', '1977-12-24', 'Laki-laki', NULL, NULL, '08119107632', 'Tatya Asri Lc-22'),
('95', 'Tn.  Adi saputra Roni A', '1983-04-16', 'Laki-laki', NULL, NULL, '081380463318', 'PMPP TNI,Jln.Garuda 10,no 16 . Citereup'),
('96', 'An. Akmal asyami', '2013-01-16', 'Laki-laki', NULL, NULL, '085885442228', 'Erfina Kencana Regency,Fotball cluster'),
('97', 'Tn. Muhtadi', '1976-04-24', 'Laki-laki', NULL, NULL, '081398619336', 'Nanggewer Mekar'),
('98', 'Ny. Siti Rochamah', NULL, 'Perempuan', NULL, NULL, NULL, 'Rumdis PMPP TNI'),
('99', 'Tn.  Ali Hadi', '1974-03-05', 'Laki-laki', NULL, NULL, '081932856389', 'komp.Puslitbang intel blok E NO,4');

-- --------------------------------------------------------

--
-- Table structure for table `rekam_medik`
--

CREATE TABLE `rekam_medik` (
  `no_rm_pasien` varchar(10) NOT NULL,
  `kode_tindakan` varchar(3) DEFAULT NULL,
  `nama_tindakan` varchar(50) NOT NULL,
  `diagnosis` text NOT NULL,
  `keterangan` text NOT NULL,
  `tanggal` date NOT NULL,
  `tipe` varchar(10) NOT NULL,
  `username_dokter` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tagihan`
--

CREATE TABLE `tagihan` (
  `id_tagihan` int(11) NOT NULL,
  `no_rm_pasien` varchar(10) NOT NULL,
  `tanggal` date NOT NULL,
  `biaya_admin` int(6) DEFAULT NULL,
  `kode_tindakan` varchar(3) NOT NULL,
  `biaya_tindakan` int(9) DEFAULT NULL,
  `nama_dokter` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tindakan`
--

CREATE TABLE `tindakan` (
  `kode_tindakan` varchar(3) NOT NULL,
  `nama_tindakan` varchar(50) NOT NULL,
  `klasifikasi_umur` varchar(10) NOT NULL,
  `jenis_tindakan` varchar(10) NOT NULL,
  `tarif` int(9) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tindakan`
--

INSERT INTO `tindakan` (`kode_tindakan`, `nama_tindakan`, `klasifikasi_umur`, `jenis_tindakan`, `tarif`) VALUES
('001', 'Cabut Gigi Susu', 'Anak-anak', 'Gigi', 80000),
('002', 'Periksa Gula Darah', 'Dewasa', 'Umum', 10000),
('119', 'Pemutih gigi', 'Anak-anak', 'Gigi', 1000000),
('555', 'Periksa tensi', 'Dewasa', 'Umum', 10000);

-- --------------------------------------------------------

--
-- Table structure for table `waiting_list_gigi`
--

CREATE TABLE `waiting_list_gigi` (
  `no_urut` int(5) NOT NULL,
  `no_rekam_medis` varchar(10) NOT NULL,
  `nama_pasien` varchar(50) NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `waiting_list_umum`
--

CREATE TABLE `waiting_list_umum` (
  `no_urut` int(5) NOT NULL,
  `no_rekam_medis` varchar(10) NOT NULL,
  `nama_pasien` varchar(50) NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `dokter`
--
ALTER TABLE `dokter`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `kasir`
--
ALTER TABLE `kasir`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `obat`
--
ALTER TABLE `obat`
  ADD PRIMARY KEY (`id_obat`);

--
-- Indexes for table `pasien`
--
ALTER TABLE `pasien`
  ADD PRIMARY KEY (`no_rekam_medik`);

--
-- Indexes for table `rekam_medik`
--
ALTER TABLE `rekam_medik`
  ADD KEY `no_rm_pasien` (`no_rm_pasien`),
  ADD KEY `kode_tindakan` (`kode_tindakan`),
  ADD KEY `username_dokter` (`username_dokter`);

--
-- Indexes for table `tagihan`
--
ALTER TABLE `tagihan`
  ADD PRIMARY KEY (`id_tagihan`),
  ADD KEY `no_rm_pasien` (`no_rm_pasien`),
  ADD KEY `username_kasir` (`nama_dokter`),
  ADD KEY `tagihan_ibfk_2` (`kode_tindakan`);

--
-- Indexes for table `tindakan`
--
ALTER TABLE `tindakan`
  ADD PRIMARY KEY (`kode_tindakan`);

--
-- Indexes for table `waiting_list_gigi`
--
ALTER TABLE `waiting_list_gigi`
  ADD PRIMARY KEY (`no_urut`),
  ADD KEY `waitListGigi` (`no_rekam_medis`);

--
-- Indexes for table `waiting_list_umum`
--
ALTER TABLE `waiting_list_umum`
  ADD PRIMARY KEY (`no_urut`),
  ADD KEY `waitListUmum` (`no_rekam_medis`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tagihan`
--
ALTER TABLE `tagihan`
  MODIFY `id_tagihan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `rekam_medik`
--
ALTER TABLE `rekam_medik`
  ADD CONSTRAINT `rekam_medik_ibfk_1` FOREIGN KEY (`no_rm_pasien`) REFERENCES `pasien` (`no_rekam_medik`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `rekam_medik_ibfk_2` FOREIGN KEY (`kode_tindakan`) REFERENCES `tindakan` (`kode_tindakan`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tagihan`
--
ALTER TABLE `tagihan`
  ADD CONSTRAINT `tagihan_ibfk_1` FOREIGN KEY (`no_rm_pasien`) REFERENCES `pasien` (`no_rekam_medik`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tagihan_ibfk_2` FOREIGN KEY (`kode_tindakan`) REFERENCES `tindakan` (`kode_tindakan`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `waiting_list_gigi`
--
ALTER TABLE `waiting_list_gigi`
  ADD CONSTRAINT `waitListGigi` FOREIGN KEY (`no_rekam_medis`) REFERENCES `pasien` (`no_rekam_medik`) ON UPDATE CASCADE;

--
-- Constraints for table `waiting_list_umum`
--
ALTER TABLE `waiting_list_umum`
  ADD CONSTRAINT `waitListUmum` FOREIGN KEY (`no_rekam_medis`) REFERENCES `pasien` (`no_rekam_medik`) ON DELETE NO ACTION ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
