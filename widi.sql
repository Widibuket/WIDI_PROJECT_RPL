-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 06 Des 2021 pada 04.45
-- Versi server: 10.4.14-MariaDB
-- Versi PHP: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `widi`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `admin`
--

CREATE TABLE `admin` (
  `id` int(10) UNSIGNED NOT NULL,
  `full_name` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `admin`
--

INSERT INTO `admin` (`id`, `full_name`, `username`, `password`) VALUES
(1, 'Administrator', 'admin', '21232f297a57a5a743894a0e4a801fc3'),
(3, 'Nurul izzah', 'Nurul', 'c99b5720821a2dccf5ffeb97d903e082'),
(5, 'ogiana', 'ogiana', 'ad442fd2981baceaf904ee09c86c1bbe'),
(6, 'Ira Riyana', 'Ira Riyana', '3c67080a1a09b022fb9d94e57a75ddad');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_bucket`
--

CREATE TABLE `tbl_bucket` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(150) NOT NULL,
  `description` varchar(255) NOT NULL,
  `price` decimal(10,3) NOT NULL,
  `image_name` varchar(255) NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL,
  `featured` varchar(10) NOT NULL,
  `active` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tbl_bucket`
--

INSERT INTO `tbl_bucket` (`id`, `title`, `description`, `price`, `image_name`, `category_id`, `featured`, `active`) VALUES
(1, 'Bucket Bunga', 'Bucket ini bisa anda jadikankan Gift untuk teman anda', '25.000', 'bunga.png', 1, 'Yes', 'Yes'),
(2, 'Bucket uang', 'Bucket Uang Bisa anda gunakan sebgai Gift untuk  teman anda', '35.000', 'uang.png', 2, 'Yes', 'Yes'),
(4, 'Bucket Boneka', 'Anda dapat memberikan Bucket ini sebagai Gift wisuda', '25.000', 'Food-Name-4430.png', 1, 'Yes', 'Yes'),
(5, 'Bucket Snack', 'Bucket ini bisa anda jadikan Gift', '24.000', 'Food-Name-1675.png', 1, 'Yes', 'Yes');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_category`
--

CREATE TABLE `tbl_category` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(100) NOT NULL,
  `image_name` varchar(255) NOT NULL,
  `featured` varchar(10) NOT NULL,
  `active` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tbl_category`
--

INSERT INTO `tbl_category` (`id`, `title`, `image_name`, `featured`, `active`) VALUES
(1, 'Bucket Bunga', 'bunga.png', 'Yes', 'Yes'),
(2, 'Bucket Uang', 'uang.png', 'Yes', 'Yes'),
(3, 'Bucket Bunga', 'disc.png', 'Yes', 'Yes'),
(5, 'Bucket Boneka', 'Food_Category_552.png', 'Yes', 'Yes'),
(6, 'Bucket Snack', 'Food_Category_422.png', 'Yes', 'Yes');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_order`
--

CREATE TABLE `tbl_order` (
  `id` int(10) UNSIGNED NOT NULL,
  `bucket` varchar(150) NOT NULL,
  `price` varchar(100) NOT NULL,
  `qty` decimal(10,0) NOT NULL,
  `total` decimal(10,3) NOT NULL,
  `order_date` datetime NOT NULL,
  `status` varchar(50) NOT NULL,
  `customer_name` varchar(150) NOT NULL,
  `customer_contact` varchar(20) NOT NULL,
  `customer_email` varchar(150) NOT NULL,
  `customer_address` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tbl_order`
--

INSERT INTO `tbl_order` (`id`, `bucket`, `price`, `qty`, `total`, `order_date`, `status`, `customer_name`, `customer_contact`, `customer_email`, `customer_address`) VALUES
(7, 'Bucket uang', '35.000', '1', '35.000', '2021-12-06 04:29:02', 'Delivered', 'nurul', '08234567893', 'nur@gmail.com', 'jln tikungan'),
(10, 'Bucket Snack', '24.000', '1', '24.000', '2021-12-06 04:42:31', 'Delivered', 'jeni', '08218977665', 'jeni@gmail.com', 'jln krikkkkk');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `nama` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `Password` varchar(255) NOT NULL,
  `alamat` varchar(100) NOT NULL,
  `nomorhp` varchar(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`nama`, `username`, `email`, `Password`, `alamat`, `nomorhp`) VALUES
('user', 'user', ' user@gmail.com', 'ee11cbb19052e40b07aac0ca060c23ee', '', ' ');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tbl_bucket`
--
ALTER TABLE `tbl_bucket`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tbl_category`
--
ALTER TABLE `tbl_category`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tbl_order`
--
ALTER TABLE `tbl_order`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `tbl_bucket`
--
ALTER TABLE `tbl_bucket`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `tbl_category`
--
ALTER TABLE `tbl_category`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `tbl_order`
--
ALTER TABLE `tbl_order`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
