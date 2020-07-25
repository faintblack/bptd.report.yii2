-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 25 Jul 2020 pada 10.34
-- Versi server: 10.4.11-MariaDB
-- Versi PHP: 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bptd4v2`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `data_daerah`
--

CREATE TABLE `data_daerah` (
  `id_daerah` int(8) NOT NULL,
  `kode_daerah` varchar(4) NOT NULL,
  `nama_daerah` varchar(80) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `data_daerah`
--

INSERT INTO `data_daerah` (`id_daerah`, `kode_daerah`, `nama_daerah`) VALUES
(1, '1472', 'Bengkalis'),
(2, '1408', 'Pekanbaru'),
(4, '1275', 'Bangkinang'),
(21, '1204', 'Siak'),
(25, '1975', 'Pasir Pengaraian'),
(26, '1245', 'Kampar'),
(27, '1476', 'Pelalawan'),
(30, '1231', 'Mantap'),
(31, '5166', 'tess'),
(32, '3343', 'sdfdsf'),
(33, '3377', 'dfggfd'),
(34, '1477', 'Batam'),
(35, '1452', 'Meranti');

-- --------------------------------------------------------

--
-- Struktur dari tabel `data_gol_kendaraan`
--

CREATE TABLE `data_gol_kendaraan` (
  `id_gol_kendaraan` int(3) NOT NULL,
  `kode_golongan` varchar(4) NOT NULL,
  `nama_golongan` varchar(80) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `data_gol_kendaraan`
--

INSERT INTO `data_gol_kendaraan` (`id_gol_kendaraan`, `kode_golongan`, `nama_golongan`) VALUES
(2, 'I', 'Sepeda Motorxx'),
(3, 'II', 'Motor Roda Tiga'),
(4, 'III', 'Minibus'),
(5, 'IV', 'Truk Roda Empat'),
(6, 'V', 'Truk Roda Enam'),
(7, 'VI', 'Trun gandeng roda 20'),
(8, 'VII', 'Motor mas'),
(20, 'VIII', 'Asdf'),
(21, 'IX', 'Motor mainan'),
(22, 'XI', 'Mobil invisible'),
(23, 'X', 'Mobil panjang kali'),
(25, 'L', 'Tes'),
(31, 'XII', 'Jjjjjj'),
(32, 'XIII', 'Kkkkk'),
(33, 'XIV', 'Lllll'),
(34, 'XV', 'Mmmmmm');

-- --------------------------------------------------------

--
-- Struktur dari tabel `data_jenis_muatan`
--

CREATE TABLE `data_jenis_muatan` (
  `id_jenis_muatan` int(8) NOT NULL,
  `kode_jenis_muatan` varchar(4) NOT NULL,
  `nama_jenis_muatan` varchar(80) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `data_jenis_muatan`
--

INSERT INTO `data_jenis_muatan` (`id_jenis_muatan`, `kode_jenis_muatan`, `nama_jenis_muatan`) VALUES
(1, 'BU17', 'Pasir.'),
(4, 'CF07', 'Tanah'),
(5, 'BM02', 'Batu Mulia'),
(6, 'BG08', 'Emas'),
(7, 'BN67', 'Tembaga'),
(8, 'BU18', 'Kerikil'),
(9, 'BP12', 'Besi'),
(10, 'BK02', 'Kayu'),
(11, 'BL16', 'Kendaraan Bermotor'),
(12, 'BU27', 'Tanah Liat');

-- --------------------------------------------------------

--
-- Struktur dari tabel `data_kmp`
--

CREATE TABLE `data_kmp` (
  `id_kmp` int(11) NOT NULL,
  `id_unit` int(11) NOT NULL,
  `id_trayek` int(11) NOT NULL,
  `nama_kmp` varchar(80) NOT NULL,
  `GRT` int(8) NOT NULL,
  `kapasitas_penumpang` int(8) NOT NULL,
  `kapasitas_kendaraan` int(8) NOT NULL,
  `keterangan` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `data_kmp`
--

INSERT INTO `data_kmp` (`id_kmp`, `id_unit`, `id_trayek`, `nama_kmp`, `GRT`, `kapasitas_penumpang`, `kapasitas_kendaraan`, `keterangan`) VALUES
(3, 32, 8, 'Barau', 542, 300, 25, 'Lintas Komersil Dalam Provinsi'),
(5, 34, 9, 'Mutiara Pertiwi II', 537, 205, 18, 'Lintas Komersil Dalam Provinsi'),
(7, 32, 4, 'Merry', 534, 520, 40, 'Lintas Komersil Dalam Provinsi'),
(10, 32, 9, 'Lome', 534, 250, 20, 'Lintas Komersil Antar Provinsi\r\n'),
(11, 32, 4, 'Muria', 534, 80, 40, 'Lintas Komersil'),
(12, 32, 12, 'Senangin', 560, 250, 19, 'Lintas Perintis Antar Provinsi');

-- --------------------------------------------------------

--
-- Struktur dari tabel `data_trayek`
--

CREATE TABLE `data_trayek` (
  `id_trayek` int(11) NOT NULL,
  `nama_trayek` varchar(180) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `data_trayek`
--

INSERT INTO `data_trayek` (`id_trayek`, `nama_trayek`) VALUES
(1, 'Dabo - Dompak (Tanjung Pinang)'),
(4, 'Dabo - Penarik (Kab. Linggar)'),
(5, 'Dumai - Tanjung Kapal (Kab. Bengkalis)'),
(8, 'Telaga Punggur - Tanjung Uban'),
(9, 'Air Putih - Sungai Selari'),
(10, 'Telaga Punggur - Dabo Singkep'),
(11, 'Air Putih - Tanjung Uban '),
(12, 'Mengkapan - Tanjung Balai Karimun');

-- --------------------------------------------------------

--
-- Struktur dari tabel `log`
--

CREATE TABLE `log` (
  `id_log` int(11) NOT NULL,
  `waktu` datetime NOT NULL,
  `username` varchar(16) NOT NULL,
  `proses` varchar(12) NOT NULL,
  `objek` varchar(30) NOT NULL,
  `keterangan` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `log`
--

INSERT INTO `log` (`id_log`, `waktu`, `username`, `proses`, `objek`, `keterangan`) VALUES
(1, '2018-07-01 10:29:20', 'superuser', 'tambah', 'data daerah', 'Admin  menambahkan Ddd ke dalam data daerah'),
(2, '2018-07-01 10:48:05', 'superuser', 'tambah', 'data daerah', 'Admin  menambahkan Panam ke dalam data daerah'),
(3, '2018-07-01 10:57:08', 'superuser', 'tambah', 'jenis muatan', 'Admin  menambahkan Papan ke dalam data jenismuatan'),
(4, '2018-07-01 10:59:15', 'superuser', 'tambah', 'jenis muatan', 'Admin  menambahkan Bura ke dalam data jenis muatan'),
(5, '2018-07-01 11:00:11', 'superuser', 'tambah', 'jenis muatan', 'Admin  menambahkan Paku ke dalam data jenis muatan'),
(6, '2018-07-01 11:32:42', 'superuser', 'tambah', 'trayek sdp', 'Admin  menambahkan Pekanbaru - siak ke dalam data trayek SDP'),
(7, '2018-07-01 11:51:15', 'superuser', 'tambah', 'golongan kendaraan', 'Admin  menambahkan Motor mainan ke dalam data golongan kendaraan'),
(8, '2018-07-01 11:56:14', 'rizki', 'tambah', 'pengguna', 'Staff  menambahkan  ke dalam data pengguna'),
(9, '2018-07-01 11:57:35', 'rizki', 'tambah', 'pengguna', 'Admin  menambahkan  ke dalam data pengguna'),
(10, '2018-07-01 11:59:09', 'rizki', 'tambah', 'pengguna', 'Admin  menambahkan  ke dalam data pengguna'),
(11, '2018-07-01 12:00:15', 'superuser', 'tambah', 'pengguna', 'Admin  menambahkan  ke dalam data pengguna'),
(12, '2018-07-01 13:53:18', 'superuser', 'tambah', 'pengguna', 'Admin  menambahkan Rizki Trybudiman ke dalam data pengguna'),
(13, '2018-07-01 13:54:15', 'superuser', 'tambah', 'pengguna', 'Admin  menambahkan userRizki ke dalam data pengguna'),
(14, '2018-07-01 13:55:19', 'superuser', 'tambah', 'pengguna', 'Admin  menambahkan user rizki ke dalam data pengguna'),
(15, '2018-07-01 13:59:36', 'superuser', 'tambah', 'pengguna', 'Admin  menambahkan user rizki ke dalam data pengguna'),
(16, '2018-07-01 14:01:06', 'superuser', 'tambah', 'pengguna', 'Admin  menambahkan user mahardika ke dalam data pengguna'),
(17, '2018-07-01 14:56:39', 'superuser', 'tambah', 'unit', 'Admin  menambahkan PT. ASDP Indonesia Ferry (Persero) Cab. Batam ke dalam data unit satuan pelayanan'),
(18, '2018-07-01 15:05:36', 'superuser', 'tambah', 'unit', 'Admin  menambahkan PT. ASDP Indonesia Ferry (Persero) Cab. Batam ke dalam data unit satuan pelayanan'),
(19, '2018-07-01 15:06:58', 'superuser', 'tambah', 'pengguna', 'Admin  menambahkan user zul ke dalam data pengguna'),
(20, '2018-07-01 15:10:59', 'superuser', 'tambah', 'unit', 'Admin  menambahkan Balai Raja ke dalam data unit satuan pelayanan'),
(21, '2018-07-01 15:12:09', 'superuser', 'tambah', 'daerah', 'Admin  menambahkan Palembang ke dalam data daerah'),
(22, '2018-07-01 15:12:23', 'superuser', 'tambah', 'daerah', 'Admin  menambahkan Asdaks ke dalam data daerah'),
(23, '2018-07-01 15:21:24', 'superuser', 'tambah', 'daerah', 'Admin  menambahkan Asdasda ke dalam data daerah'),
(24, '2018-07-01 15:21:48', 'superuser', 'tambah', 'daerah', 'Admin  menambahkan Asd ke dalam data daerah'),
(25, '2018-07-01 15:23:08', 'superuser', 'tambah', 'daerah', 'Admin  menambahkan Sd ke dalam data daerah'),
(26, '2018-07-01 15:23:54', 'superuser', 'tambah', 'daerah', 'Admin  menambahkan Sdsd ke dalam data daerah'),
(27, '2018-07-01 15:28:56', 'superuser', 'tambah', 'jenis muatan', 'Admin  menambahkan Kerikil ke dalam data jenis muatan'),
(28, '2018-07-01 15:29:34', 'superuser', 'tambah', 'daerah', 'Admin  menambahkan Jakarta ke dalam data daerah'),
(29, '2018-07-01 15:31:46', 'superuser', 'tambah', 'trayek sdp', 'Admin  menambahkan Pekanbaru - medan ke dalam data trayek SDP'),
(30, '2018-07-01 15:32:24', 'superuser', 'tambah', 'golongan kendaraan', 'Admin  menambahkan Mobil invisible ke dalam data golongan kendaraan'),
(31, '2018-07-01 15:32:46', 'superuser', 'tambah', 'golongan kendaraan', 'Admin  menambahkan Mobil panjang kali ke dalam data golongan kendaraan'),
(32, '2018-07-01 15:33:25', 'superuser', 'tambah', 'pengguna', 'Admin  menambahkan user bayu ke dalam data pengguna'),
(33, '2018-07-01 15:36:17', 'superuser', 'tambah', 'unit', 'Admin  menambahkan PT. Mampus ke dalam data unit satuan pelayanan'),
(34, '2018-07-01 15:37:15', 'superuser', 'tambah', 'unit', 'Admin  menambahkan Balai baja ke dalam data unit satuan pelayanan'),
(35, '2018-07-01 17:03:33', 'superuser', 'tambah', 'daerah', 'Admin  menambahkan Tes aja ke dalam data daerah'),
(36, '2018-07-01 17:35:58', 'superuser', 'edit', 'daerah', 'admin  mengedit data daerah Bangkinang berubah'),
(37, '2018-07-01 17:54:10', 'superuser', 'edit', 'jenis muatan', 'admin  mengedit data jenis muatan Papan'),
(38, '2018-07-01 17:55:20', 'superuser', 'edit', 'jenis muatan', 'admin  mengedit data jenis muatan Papan'),
(39, '2018-07-01 17:55:28', 'superuser', 'edit', 'jenis muatan', 'admin  mengedit data jenis muatan Papanx'),
(40, '2018-07-01 17:55:36', 'superuser', 'edit', 'jenis muatan', 'admin  mengedit data jenis muatan Paku'),
(41, '2018-07-01 17:56:00', 'superuser', 'edit', 'jenis muatan', 'admin  mengedit data jenis muatan Batu'),
(42, '2018-07-01 19:18:04', 'superuser', 'edit', 'trayek SDP', 'admin  mengedit data trayek '),
(43, '2018-07-01 19:19:09', 'superuser', 'edit', 'trayek SDP', 'admin  mengedit data trayek Air Putih (Bengkalis) - Tanjung Balai Karimung'),
(44, '2018-07-01 19:23:23', 'superuser', 'edit', 'trayek SDP', 'admin  mengedit data trayek Air Putih (Bengkalis) - Tanjung Balai Karimun'),
(45, '2018-07-01 19:23:28', 'superuser', 'edit', 'trayek SDP', 'admin  mengedit data trayek Air Putih (Bengkalis) - Tanjung Balai Karimunsds'),
(46, '2018-07-01 20:51:03', 'superuser', 'edit', 'golongan kendaraan', 'admin  mengedit data golongan kendaraan Sepeda unt'),
(47, '2018-07-01 21:04:44', 'superuser', 'edit', 'golongan kendaraan', 'admin  mengedit data golongan kendaraan Sepeda unto'),
(48, '2018-07-01 21:05:13', 'superuser', 'tambah', 'golongan kendaraan', 'Admin  menambahkan Makan mas ke dalam data golongan kendaraan'),
(49, '2018-07-01 21:06:06', 'superuser', 'edit', 'golongan kendaraan', 'admin  mengedit data golongan kendaraan Makan mas'),
(50, '2018-07-01 21:31:24', 'superuser', 'edit', 'golongan kendaraan', 'admin  mengedit data golongan kendaraan Sepeda Motor'),
(51, '2018-07-01 21:31:28', 'superuser', 'edit', 'golongan kendaraan', 'admin  mengedit data golongan kendaraan Sepeda Motord'),
(52, '2018-07-01 21:31:37', 'superuser', 'edit', 'golongan kendaraan', 'admin  mengedit data golongan kendaraan Sepeda Motor'),
(53, '2018-07-01 21:31:44', 'superuser', 'edit', 'golongan kendaraan', 'admin  mengedit data golongan kendaraan Sepeda Motors'),
(54, '2018-07-01 21:31:58', 'superuser', 'edit', 'golongan kendaraan', 'admin  mengedit data golongan kendaraan Sepeda Motors'),
(55, '2018-07-01 21:33:47', 'superuser', 'edit', 'golongan kendaraan', 'admin  mengedit data golongan kendaraan Sepeda Motor'),
(56, '2018-07-01 21:34:13', 'superuser', 'edit', 'golongan kendaraan', 'admin  mengedit data golongan kendaraan Sepeda Motor'),
(57, '2018-07-01 21:34:18', 'superuser', 'edit', 'golongan kendaraan', 'admin  mengedit data golongan kendaraan Sepeda Motorx'),
(58, '2018-07-01 21:39:26', 'superuser', 'edit', 'golongan kendaraan', 'admin  mengedit data golongan kendaraan Sepeda Motor'),
(59, '2018-07-01 21:39:31', 'superuser', 'edit', 'golongan kendaraan', 'admin  mengedit data golongan kendaraan Sepeda MotorS'),
(60, '2018-07-01 21:53:44', 'superuser', 'edit', 'golongan kendaraan', 'admin  mengedit data golongan kendaraan Sepeda Motor'),
(61, '2018-07-01 21:54:42', 'superuser', 'edit', 'golongan kendaraan', 'admin  mengedit data golongan kendaraan Sepeda Motor'),
(62, '2018-07-01 21:55:59', 'superuser', 'edit', 'golongan kendaraan', 'admin  mengedit data golongan kendaraan Sepeda Motorx'),
(63, '2018-07-01 21:56:08', 'superuser', 'tambah', 'golongan kendaraan', 'Admin  menambahkan Tes ke dalam data golongan kendaraan'),
(64, '2018-07-01 22:21:25', 'superuser', 'edit', 'golongan kendaraan', 'admin  mengedit data golongan kendaraan I'),
(65, '2018-07-02 00:45:31', 'superuser', 'tambah', 'pengguna', 'Admin  menambahkan user kungkung ke dalam data pengguna'),
(66, '2018-07-02 01:34:00', 'superuser', 'edit', 'data pengguna', 'admin  mengedit data pengguna KUNGKUNG'),
(67, '2018-07-02 01:35:29', 'superuser', 'edit', 'data pengguna', 'admin  mengedit data pengguna kungkung'),
(68, '2018-07-02 01:51:43', 'superuser', 'edit', 'data pengguna', 'admin  mengedit data pengguna kungkung'),
(69, '2018-07-02 02:53:53', 'superuser', 'edit', 'data unit', 'admin  mengedit data unit Underground'),
(70, '2018-07-01 23:36:08', 'beno', 'edit', 'data unit terminal', 'Staff terminal Bangkinang kuok mengedit profil terminal'),
(71, '2018-07-01 23:36:12', 'beno', 'edit', 'data unit terminal', 'Staff terminal Bangkinang kuo mengedit profil terminal'),
(72, '2018-07-02 04:04:45', 'beno', 'edit', 'data unit terminal', 'Staff terminal Bangkinang aja mengedit profil terminal'),
(73, '2018-07-02 11:14:21', 'beno', 'tambah', 'laporan terminal', 'Staff Terminal Bangkinang aja deh menambahkan laporan tanggal 02 Juli 2018'),
(74, '2018-07-02 14:24:58', 'beno', 'tambah', 'laporan terminal', 'Staff Terminal Bangkinang aja deh menambahkan laporan tanggal 02 Juli 2018'),
(75, '2018-07-02 15:06:42', 'bayu', 'tambah', 'daerah', 'Staff  menambahkan Bangka ke dalam data daerah'),
(76, '2018-07-02 15:06:53', 'bayu', 'edit', 'daerah', 'admin  mengedit data daerah Bangka'),
(77, '2018-07-02 15:07:48', 'bayu', 'tambah', 'jenis muatan', 'Staff  menambahkan Kulit ke dalam data jenis muatan'),
(78, '2018-07-02 15:08:13', 'bayu', 'edit', 'jenis muatan', 'admin  mengedit data jenis muatan Kulit'),
(79, '2018-07-02 15:12:57', 'bayu', 'tambah', 'daerah', 'Staff Balai Riung menambahkan Padang ke dalam data daerah'),
(80, '2018-07-02 15:13:11', 'bayu', 'edit', 'daerah', 'admin  mengedit data daerah Padang'),
(89, '2018-07-02 15:37:46', 'bayu', 'edit', 'daerah', 'Staff Balai Riung mengedit data daerah Bangkinang berubah kali'),
(90, '2018-07-02 11:29:25', 'bayu', 'edit', 'data unit UPPKB', 'Staff UPPKB Balai Riung mengedit profil UPPKB'),
(91, '2018-07-02 11:29:30', 'bayu', 'edit', 'data unit UPPKB', 'Staff UPPKB Balai Riung mengedit profil UPPKB'),
(92, '2018-07-04 15:47:29', 'bayu', 'edit', 'data unit UPPKB', 'Staff UPPKB Balai Riung mengedit profil UPPKB'),
(93, '2018-07-04 16:49:35', 'bayu', 'edit', 'data pengemudi UPPKB', 'Staff UPPKB Balai Riungs mengedit data pengemudi dengan nomor KTP 1471031608970021'),
(94, '2018-07-04 16:50:59', 'bayu', 'edit', 'data pengemudi UPPKB', 'Staff UPPKB Balai Riungs mengedit data pengemudi dengan nomor KTP 1471031608970021'),
(95, '2018-07-07 23:13:05', 'bayu', 'tambah', 'laporan UPPKB', 'Staff UPPKB Balai Riungs menambahkan laporan tanggal 07 Juli 2018'),
(96, '2018-07-07 23:15:17', 'bayu', 'tambah', 'laporan UPPKB', 'Staff UPPKB Balai Riungs menambahkan laporan tanggal 07 Juli 2018'),
(97, '2018-07-07 18:27:02', 'bayu', 'edit', 'data unit UPPKB', 'Staff UPPKB Balai Riungs mengedit profil UPPKB'),
(98, '2018-07-07 23:29:09', 'bayu', 'tambah', 'laporan UPPKB', 'Staff UPPKB Balai Riung menambahkan laporan tanggal 07 Juli 2018'),
(99, '2018-07-08 04:48:26', 'rizki', 'tambah', 'laporan UPPKB', 'Staff UPPKB Balai Raja menambahkan laporan tanggal 08 Juli 2018'),
(100, '2018-07-08 07:50:45', 'mahardika', 'tambah', 'KMP', 'Staff PT. ASDP Indonesia Ferry (Persero) Cab. Batam menambahkan Merry ke dalam data KMP'),
(101, '2018-07-08 07:51:44', 'mahardika', 'tambah', 'KMP', 'Staff PT. ASDP Indonesia Ferry (Persero) Cab. Batam menambahkan Sunny go ke dalam data KMP'),
(102, '2018-07-08 08:18:32', 'mahardika', 'edit', 'data KMP', 'Staff PT. ASDP Indonesia Ferry (Persero) Cab. Batam mengedit data KMP Merryx'),
(103, '2018-07-08 08:19:50', 'mahardika', 'edit', 'data KMP', 'Staff PT. ASDP Indonesia Ferry (Persero) Cab. Batam mengedit data KMP Merry'),
(104, '2018-07-08 08:26:11', 'mahardika', 'tambah', 'golongan kendaraan', 'Staff  menambahkan Sepeda ccd ke dalam data golongan kendaraan'),
(105, '2018-07-08 08:32:37', 'mahardika', 'tambah', 'golongan kendaraan', 'Staff PT. ASDP Indonesia Ferry (Persero) Cab. Batam menambahkan Makanan brew ke dalam data golongan kendaraan'),
(106, '2018-07-08 08:38:54', 'superuser', 'tambah', 'golongan kendaraan', 'Admin  menambahkan Jjjjjj ke dalam data golongan kendaraan'),
(107, '2018-07-08 08:39:25', 'mahardika', 'tambah', 'golongan kendaraan', 'Staff PT. ASDP Indonesia Ferry (Persero) Cab. Batam menambahkan Kkkkk ke dalam data golongan kendaraan'),
(108, '2018-07-08 08:39:52', 'mahardika', 'edit', 'golongan kendaraan', 'admin  mengedit data golongan kendaraan I'),
(109, '2018-07-08 08:40:58', 'superuser', 'edit', 'golongan kendaraan', 'admin  mengedit data golongan kendaraan I'),
(110, '2018-07-08 08:47:25', 'mahardika', 'edit', 'golongan kendaraan', 'Staff PT. ASDP Indonesia Ferry (Persero) Cab. Batam mengedit data golongan kendaraan I'),
(111, '2018-07-08 08:47:50', 'superuser', 'edit', 'golongan kendaraan', 'admin  mengedit data golongan kendaraan I'),
(112, '2018-07-08 08:48:13', 'superuser', 'tambah', 'golongan kendaraan', 'Admin  menambahkan Lllll ke dalam data golongan kendaraan'),
(113, '2018-07-08 08:48:35', 'mahardika', 'tambah', 'golongan kendaraan', 'Staff PT. ASDP Indonesia Ferry (Persero) Cab. Batam menambahkan Mmmmmm ke dalam data golongan kendaraan'),
(114, '2018-07-08 08:51:09', 'mahardika', 'tambah', 'trayek sdp', 'Staff  menambahkan Padang - pekanbaru ke dalam data trayek SDP'),
(115, '2018-07-08 09:01:27', 'mahardika', 'tambah', 'trayek SDP', 'Staff PT. ASDP Indonesia Ferry (Persero) Cab. Batam menambahkan Sdsd ke dalam data trayek SDP'),
(116, '2018-07-08 09:01:46', 'superuser', 'tambah', 'trayek SDP', 'Admin  menambahkan Sssss ke dalam data trayek SDP'),
(117, '2018-07-08 09:03:34', 'mahardika', 'edit', 'trayek SDP', 'admin  mengedit data trayek Sdsd'),
(118, '2018-07-08 09:07:13', 'mahardika', 'edit', 'trayek SDP', 'Staff PT. ASDP Indonesia Ferry (Persero) Cab. Batam mengedit data trayek BBBBBB'),
(119, '2018-07-08 09:07:30', 'superuser', 'edit', 'trayek SDP', 'Admin  mengedit data trayek BBBBBBs'),
(120, '2018-07-08 09:07:54', 'superuser', 'tambah', 'trayek SDP', 'Admin  menambahkan CCC ke dalam data trayek SDP'),
(121, '2018-07-08 09:08:26', 'superuser', 'edit', 'trayek SDP', 'Admin  mengedit data trayek CCC'),
(122, '2018-07-08 09:08:38', 'mahardika', 'tambah', 'trayek SDP', 'Staff PT. ASDP Indonesia Ferry (Persero) Cab. Batam menambahkan DDD ke dalam data trayek SDP'),
(123, '2018-07-08 09:08:42', 'mahardika', 'edit', 'trayek SDP', 'Staff PT. ASDP Indonesia Ferry (Persero) Cab. Batam mengedit data trayek DDD'),
(124, '2018-07-08 04:23:12', 'beno', 'edit', 'data unit terminal', 'Staff Terminal Bangkinang aja deh mengedit profil terminal'),
(125, '2018-07-08 04:23:15', 'beno', 'edit', 'data unit terminal', 'Staff Terminal Bangkinang aja dehd mengedit profil terminal'),
(126, '2018-07-08 04:32:05', 'mahardika', 'edit', 'data unit SDP', 'Staff SDP PT. ASDP Indonesia Ferry (Persero) Cab. Batam mengedit profil SDP'),
(127, '2018-07-08 04:32:41', 'mahardika', 'edit', 'data unit SDP', 'Staff SDP PT. ASDP Indonesia Ferry (Persero) Cab. Batam mengedit profil SDP'),
(128, '2018-07-08 04:35:18', 'mahardika', 'edit', 'data unit SDP', 'Staff SDP PT. ASDP Indonesia Ferry (Persero) Cab. Batam mengedit profil SDP'),
(129, '2018-07-08 04:37:55', 'mahardika', 'edit', 'data unit SDP', 'Staff SDP PT. ASDP Indonesia Ferry (Persero) Cab. Batam mengedit profil SDP'),
(130, '2018-07-08 04:39:05', 'mahardika', 'edit', 'data unit SDP', 'Staff SDP PT. ASDP Indonesia Ferry (Persero) Cab. Batam mengedit profil SDP'),
(131, '2018-07-08 09:41:47', 'mahardika', 'edit', 'data unit SDP', 'Staff SDP PT. ASDP Indonesia Ferry (Persero) Cab. Batam mengedit profil SDP'),
(132, '2018-07-08 04:42:20', 'bayu', 'edit', 'data unit UPPKB', 'Staff UPPKB Balai Riung mengedit profil UPPKB'),
(133, '2018-07-08 09:42:52', 'bayu', 'edit', 'data unit UPPKB', 'Staff UPPKB Balai Riung mengedit profil UPPKB'),
(134, '2018-07-08 04:43:19', 'beno', 'edit', 'data unit terminal', 'Staff Terminal Bangkinang aja dehds mengedit profil terminal'),
(135, '2018-07-08 09:43:38', 'beno', 'edit', 'data unit terminal', 'Staff Terminal Bangkinang aja dehds mengedit profil terminal'),
(136, '2018-07-08 10:39:20', 'mahardika', 'edit', 'data unit SDP', 'Staff SDP PT. ASDP Indonesia Ferry (Persero) Cab. Batam mengedit profil SDP'),
(137, '2018-07-08 11:57:52', 'beno', 'tambah', 'laporan terminal', 'Staff Terminal Bangkinang aja dehds menambahkan laporan tanggal 08 Juli 2018'),
(138, '2018-07-08 15:15:08', 'mahardika', 'tambah', 'laporan SDP', 'Staff PT. ASDP Indsia Ferry (Persero) Cab. Batam menambahkan laporan tanggal 08 Juli 2018'),
(139, '2018-07-08 16:28:18', 'mahardika', 'tambah', 'laporan SDP', 'Staff PT. ASDP Indsia Ferry (Persero) Cab. Batam menambahkan laporan tanggal 08 Juli 2018'),
(140, '2018-07-08 16:29:18', 'mahardika', 'tambah', 'laporan SDP', 'Staff PT. ASDP Indsia Ferry (Persero) Cab. Batam menambahkan laporan tanggal 08 Juli 2018'),
(141, '2018-07-08 16:30:12', 'mahardika', 'tambah', 'laporan SDP', 'Staff PT. ASDP Indsia Ferry (Persero) Cab. Batam menambahkan laporan tanggal 08 Juli 2018'),
(142, '2018-07-08 16:47:14', 'mahardika', 'tambah', 'laporan SDP', 'Staff PT. ASDP Indsia Ferry (Persero) Cab. Batam menambahkan laporan tanggal 08 Juli 2018'),
(143, '2018-07-08 17:04:16', 'superuser', 'tambah', 'trayek SDP', 'Admin  menambahkan Dabo - Dompak (Tanjung Pinang) ke dalam data trayek SDP'),
(144, '2018-07-08 17:04:36', 'superuser', 'tambah', 'trayek SDP', 'Admin  menambahkan Dompak (Tanjung Pinang) - Tanjung Balai Karimun ke dalam data trayek SDP'),
(145, '2018-07-08 17:05:01', 'superuser', 'tambah', 'trayek SDP', 'Admin  menambahkan Mengkapan - Tanjung Balai Karimun ke dalam data trayek SDP'),
(146, '2018-07-08 17:05:21', 'superuser', 'tambah', 'trayek SDP', 'Admin  menambahkan Dabo - Penarik (Kab. Lingga) ke dalam data trayek SDP'),
(147, '2018-07-08 17:05:40', 'superuser', 'tambah', 'trayek SDP', 'Admin  menambahkan Dumai - Tanjung Kapal (Kab. Bengkalis) ke dalam data trayek SDP'),
(148, '2018-07-08 17:06:01', 'superuser', 'tambah', 'trayek SDP', 'Admin  menambahkan Dabo - Kuala Tungkal ke dalam data trayek SDP'),
(149, '2018-07-08 17:08:21', 'mahardika', 'tambah', 'KMP', 'Staff PT. ASDP Indsia Ferry (Persero) Cab. Batam menambahkan Muria ke dalam data KMP'),
(150, '2018-07-08 17:08:12', 'superuser', 'tambah', 'trayek SDP', 'Admin  menambahkan Telaga Punggur - Tanjung Balai Karimun ke dalam data trayek SDP'),
(151, '2018-07-08 17:10:42', 'mahardika', 'tambah', 'KMP', 'Staff PT. ASDP Indsia Ferry (Persero) Cab. Batam menambahkan Lome ke dalam data KMP'),
(152, '2018-07-08 17:10:39', 'superuser', 'tambah', 'trayek SDP', 'Admin  menambahkan Telaga Punggur - Tanjung Uban ke dalam data trayek SDP'),
(153, '2018-07-08 17:12:05', 'mahardika', 'tambah', 'KMP', 'Staff PT. ASDP Indsia Ferry (Persero) Cab. Batam menambahkan Barau ke dalam data KMP'),
(154, '2018-07-08 17:12:56', 'mahardika', 'tambah', 'KMP', 'Staff PT. ASDP Indsia Ferry (Persero) Cab. Batam menambahkan Senangin ke dalam data KMP'),
(155, '2018-07-08 17:16:12', 'mahardika', 'edit', 'data unit SDP', 'Staff SDP PT. ASDP Indsia Ferry (Persero) Cab. Batam mengedit profil SDP'),
(156, '2018-07-08 17:17:20', 'zul', 'edit', 'data unit SDP', 'Staff SDP PT. Mampus mengedit profil SDP'),
(157, '2018-07-08 17:18:58', 'zul', 'edit', 'data unit SDP', 'Staff SDP PT. Jembatan Nusantara mengedit profil SDP'),
(158, '2018-07-08 17:19:44', 'superuser', 'tambah', 'trayek SDP', 'Admin  menambahkan Air Putih - Sungai Selari ke dalam data trayek SDP'),
(159, '2018-07-08 17:20:54', 'zul', 'tambah', 'KMP', 'Staff PT. Atosim Lampung Pelayaran Cab. Bengkalis menambahkan Mutiara Pertiwi II ke dalam data KMP'),
(160, '2018-07-08 17:22:39', 'mahardika', 'tambah', 'laporan SDP', 'Staff PT. ASDP Indonesia Ferry (Persero) Cab. Batam menambahkan laporan tanggal 08 Juli 2018'),
(161, '2018-07-08 17:25:19', 'mahardika', 'tambah', 'laporan SDP', 'Staff PT. ASDP Indonesia Ferry (Persero) Cab. Batam menambahkan laporan tanggal 08 Juli 2018'),
(162, '2018-07-08 17:31:08', 'mahardika', 'tambah', 'laporan SDP', 'Staff PT. ASDP Indonesia Ferry (Persero) Cab. Batam menambahkan laporan KMPSenangin tanggal 08 Juli 2018'),
(163, '2018-07-08 17:32:51', 'mahardika', 'tambah', 'laporan SDP', 'Staff PT. ASDP Indonesia Ferry (Persero) Cab. Batam menambahkan laporan KMP Lome tanggal 08 Juli 2018'),
(164, '2018-07-08 17:38:56', 'zul', 'tambah', 'laporan SDP', 'Staff PT. Atosim Lampung Pelayaran Cab. Bengkalis menambahkan laporan KMP Mutiara Pertiwi II tanggal 08 Juli 2018'),
(165, '2018-07-08 17:41:03', 'zul', 'tambah', 'laporan SDP', 'Staff PT. Atosim Lampung Pelayaran Cab. Bengkalis menambahkan laporan KMP Mutiara Pertiwi II tanggal 08 Juli 2018'),
(166, '2018-07-08 17:41:03', 'zul', 'tambah', 'laporan SDP', 'Staff PT. Atosim Lampung Pelayaran Cab. Bengkalis menambahkan laporan KMP Mutiara Pertiwi II tanggal 08 Juli 2018'),
(167, '2018-07-08 17:41:52', 'zul', 'tambah', 'laporan SDP', 'Staff PT. Atosim Lampung Pelayaran Cab. Bengkalis menambahkan laporan KMP Mutiara Pertiwi II tanggal 08 Juli 2018'),
(168, '2018-07-08 17:45:29', 'mahardika', 'edit', 'data KMP', 'Staff PT. ASDP Indonesia Ferry (Persero) Cab. Batam mengedit data KMP Barau'),
(169, '2018-07-08 17:45:37', 'mahardika', 'edit', 'data KMP', 'Staff PT. ASDP Indonesia Ferry (Persero) Cab. Batam mengedit data KMP Baraux'),
(170, '2018-07-08 17:51:53', 'zul', 'tambah', 'laporan SDP', 'Staff PT. Atosim Lampung Pelayaran Cab. Bengkalis menambahkan laporan KMP Mutiara Pertiwi II tanggal 10 Juli 2018'),
(171, '2018-07-08 17:55:00', 'zul', 'edit', 'data unit SDP', 'Staff SDP PT. Atosim Lampung Pelayaran Cab. Bengkalis mengedit profil SDP'),
(172, '2018-07-08 17:55:02', 'zul', 'edit', 'data unit SDP', 'Staff SDP PT. Atosim Lampung Pelayaran Cab. Bengkalis mengedit profil SDP'),
(173, '2018-07-08 17:55:22', 'zul', 'edit', 'data KMP', 'Staff PT. Atosim Lampung Pelayaran Cab. Bengkalis mengedit data KMP Mutiara Pertiwi II'),
(174, '2018-07-08 17:55:49', 'zul', 'edit', 'data KMP', 'Staff PT. Atosim Lampung Pelayaran Cab. Bengkalis mengedit data KMP Mutiara Pertiwi III'),
(175, '2018-07-08 17:56:31', 'mahardika', 'tambah', 'trayek SDP', 'Staff PT. ASDP Indonesia Ferry (Persero) Cab. Batam menambahkan Telaga Punggur - Dabo ke dalam data trayek SDP'),
(176, '2018-07-08 17:57:53', 'mahardika', 'edit', 'trayek SDP', 'Staff PT. ASDP Indonesia Ferry (Persero) Cab. Batam mengedit data trayek Telaga Punggur - Dabo'),
(177, '2018-07-08 17:58:10', 'mahardika', 'edit', 'trayek SDP', 'Staff PT. ASDP Indonesia Ferry (Persero) Cab. Batam mengedit data trayek Telaga Punggur - Dabox'),
(178, '2018-07-08 17:58:30', 'mahardika', 'edit', 'data unit SDP', 'Staff SDP PT. ASDP Indonesia Ferry (Persero) Cab. Batam mengedit profil SDP'),
(179, '2018-07-08 17:58:36', 'mahardika', 'edit', 'data unit SDP', 'Staff SDP PT. ASDP Indonesia Ferry (Persero) Cab. Batam mengedit profil SDP'),
(180, '2018-07-08 17:59:19', 'beno', 'edit', 'data unit terminal', 'Staff Terminal Bangkinang aja dehds mengedit profil terminal'),
(181, '2018-07-08 18:00:00', 'beno', 'edit', 'data unit terminal', 'Staff Terminal Bangkinang mengedit profil terminal'),
(182, '2018-07-08 20:26:34', 'brps', 'tambah', 'laporan terminal', 'Staff Terminal Bandar Raya Payung Sekaki menambahkan laporan tanggal 08 Juli 2018'),
(183, '2018-07-08 20:38:11', 'bayu', 'tambah', 'daerah', 'Staff Balai Riungsd menambahkan Meranti ke dalam data daerah'),
(184, '2018-07-08 20:39:54', 'bayu', 'edit', 'data unit UPPKB', 'Staff UPPKB Balai Riungsd mengedit profil UPPKB'),
(185, '2018-07-08 20:42:01', 'bayu', 'edit', 'data unit UPPKB', 'Staff UPPKB Yonta Maria mengedit profil UPPKB'),
(186, '2018-07-08 20:42:46', 'bayu', 'edit', 'daerah', 'Staff Yonta Maria mengedit data daerah Kuantan Singingi'),
(187, '2018-07-08 20:43:42', 'bayu', 'edit', 'jenis muatan', 'Staff Yonta Maria mengedit data jenis muatan Batu loncat'),
(188, '2018-07-08 20:44:04', 'bayu', 'edit', 'jenis muatan', 'Staff Yonta Maria mengedit data jenis muatan Kayux'),
(189, '2018-07-08 20:44:40', 'bayu', 'edit', 'jenis muatan', 'Staff Yonta Maria mengedit data jenis muatan Kulitx'),
(190, '2018-07-08 20:44:51', 'bayu', 'edit', 'jenis muatan', 'Staff Yonta Maria mengedit data jenis muatan Bura'),
(191, '2018-07-08 20:45:44', 'bayu', 'edit', 'jenis muatan', 'Staff Yonta Maria mengedit data jenis muatan Kulit'),
(192, '2018-07-08 20:46:11', 'bayu', 'edit', 'jenis muatan', 'Staff Yonta Maria mengedit data jenis muatan Paku payung'),
(193, '2018-07-08 20:46:28', 'bayu', 'edit', 'jenis muatan', 'Staff Yonta Maria mengedit data jenis muatan Papan'),
(194, '2018-07-08 20:47:04', 'bayu', 'edit', 'jenis muatan', 'Staff Yonta Maria mengedit data jenis muatan Batu mulia'),
(195, '2018-07-08 20:47:47', 'bayu', 'tambah', 'jenis muatan', 'Staff Yonta Maria menambahkan Kendaraan Bermotor ke dalam data jenis muatan'),
(196, '2018-07-08 15:49:53', 'bayu', 'edit', 'data pengemudi UPPKB', 'Staff UPPKB Yonta Maria mengedit data pengemudi dengan nomor KTP 99711077662'),
(197, '2018-07-08 20:56:29', 'bayu', 'edit', 'data pengemudi UPPKB', 'Staff UPPKB Yonta Maria mengedit data pengemudi dengan nomor KTP 99711077662'),
(198, '2018-07-08 21:05:12', 'bayu', 'tambah', 'laporan UPPKB', 'Staff UPPKB Yonta Maria menambahkan laporan tanggal 08 Juli 2018'),
(199, '2018-07-08 21:11:21', 'bayu', 'tambah', 'laporan UPPKB', 'Staff UPPKB Yonta Maria menambahkan laporan tanggal 08 Juli 2018'),
(200, '2018-07-08 21:36:36', 'bayu', 'tambah', 'laporan UPPKB', 'Staff UPPKB Yonta Maria menambahkan laporan tanggal 08 Juli 2018'),
(201, '2018-07-08 21:46:32', 'bayu', 'tambah', 'laporan UPPKB', 'Staff UPPKB Yonta Maria menambahkan laporan tanggal 11 Juli 2018'),
(202, '2018-07-08 22:30:20', 'rizki', 'edit', 'data pengemudi UPPKB', 'Staff UPPKB Balai Raja mengedit data pengemudi dengan nomor KTP 1471031608970022'),
(203, '2018-07-08 22:32:40', 'zul', 'edit', 'data KMP', 'Staff PT. Atosim Lampung Pelayaran Cab. Bengkalis mengedit data KMP Mutiara Pertiwi II'),
(204, '2018-07-08 22:32:50', 'zul', 'edit', 'data KMP', 'Staff PT. Atosim Lampung Pelayaran Cab. Bengkalis mengedit data KMP Mutiara Pertiwi III'),
(205, '2018-07-08 22:33:23', 'zul', 'edit', 'data unit SDP', 'Staff SDP PT. Atosim Lampung Pelayaran Cab. Bengkalis mengedit profil SDP'),
(206, '2018-07-08 22:36:46', 'superuser', 'tambah', 'daerah', 'Admin  menambahkan Bagan siapi-api ke dalam data daerah'),
(207, '2018-07-08 22:38:21', 'superuser', 'edit', 'daerah', 'Admin  mengedit data daerah Bagan siapi api'),
(208, '2018-07-08 22:39:37', 'bayu', 'tambah', 'daerah', 'Staff Balai Raja menambahkan Tes ke dalam data daerah'),
(209, '2018-07-08 22:39:44', 'bayu', 'edit', 'daerah', 'Staff Balai Raja mengedit data daerah Tes'),
(210, '2018-07-08 22:41:04', 'superuser', 'tambah', 'jenis muatan', 'Admin  menambahkan Dd ke dalam data jenis muatan'),
(211, '2018-07-08 22:41:35', 'superuser', 'tambah', 'jenis muatan', 'Admin  menambahkan Fff ke dalam data jenis muatan'),
(212, '2018-07-08 22:42:42', 'superuser', 'tambah', 'jenis muatan', 'Admin  menambahkan Asd ke dalam data jenis muatan'),
(213, '2018-07-08 22:43:58', 'superuser', 'edit', 'jenis muatan', 'Admin  mengedit data jenis muatan Bb'),
(214, '2018-07-08 22:44:31', 'superuser', 'tambah', 'jenis muatan', 'Admin  menambahkan Tambah ke dalam data jenis muatan'),
(215, '2018-07-08 22:44:40', 'superuser', 'edit', 'jenis muatan', 'Admin  mengedit data jenis muatan Tambah'),
(216, '2018-07-08 22:47:01', 'bayu', 'tambah', 'jenis muatan', 'Staff Balai Raja menambahkan Kkk ke dalam data jenis muatan'),
(217, '2018-07-08 22:47:09', 'bayu', 'edit', 'jenis muatan', 'Staff Balai Raja mengedit data jenis muatan Kkk'),
(218, '2018-07-08 22:47:35', 'superuser', 'tambah', 'trayek SDP', 'Admin  menambahkan Tes11 ke dalam data trayek SDP'),
(219, '2018-07-08 22:48:33', 'superuser', 'edit', 'trayek SDP', 'Admin  mengedit data trayek Tes11'),
(220, '2018-07-08 22:47:58', 'zul', 'tambah', 'trayek SDP', 'Staff PT. Atosim Lampung Pelayaran Cab. Bengkalis menambahkan Tes12 ke dalam data trayek SDP'),
(221, '2018-07-08 22:49:03', 'zul', 'edit', 'trayek SDP', 'Staff PT. Atosim Lampung Pelayaran Cab. Bengkalis mengedit data trayek Tes12'),
(222, '2018-07-08 22:49:49', 'superuser', 'edit', 'trayek SDP', 'Admin  mengedit data trayek Tes12as'),
(223, '2018-07-08 22:49:35', 'zul', 'tambah', 'trayek SDP', 'Staff PT. Atosim Lampung Pelayaran Cab. Bengkalis menambahkan Tes13 ke dalam data trayek SDP'),
(224, '2018-07-08 22:51:04', 'superuser', 'tambah', 'trayek SDP', 'Admin  menambahkan A1 ke dalam data trayek SDP'),
(225, '2018-07-08 22:51:16', 'zul', 'tambah', 'trayek SDP', 'Staff PT. Atosim Lampung Pelayaran Cab. Bengkalis menambahkan A2 ke dalam data trayek SDP'),
(226, '2018-07-08 22:51:39', 'superuser', 'edit', 'trayek SDP', 'Admin  mengedit data trayek A1'),
(227, '2018-07-08 22:51:42', 'zul', 'edit', 'trayek SDP', 'Staff PT. Atosim Lampung Pelayaran Cab. Bengkalis mengedit data trayek A2'),
(228, '2018-07-08 22:52:05', 'superuser', 'edit', 'trayek SDP', 'Admin  mengedit data trayek A12'),
(229, '2018-07-08 22:52:14', 'zul', 'tambah', 'trayek SDP', 'Staff PT. Atosim Lampung Pelayaran Cab. Bengkalis menambahkan A3 ke dalam data trayek SDP'),
(230, '2018-07-08 22:52:44', 'superuser', 'tambah', 'pengguna', 'Admin  menambahkan user fela ke dalam data pengguna'),
(231, '2018-07-08 22:55:45', 'superuser', 'edit', 'data pengguna', 'admin  mengedit data pengguna fela'),
(232, '2018-07-08 22:58:30', 'superuser', 'tambah', 'pengguna', 'Admin  menambahkan user fela ke dalam data pengguna'),
(233, '2018-07-08 22:58:51', 'superuser', 'edit', 'data pengguna', 'admin  mengedit data user fela'),
(234, '2018-07-08 23:01:38', 'superuser', 'tambah', 'unit', 'Admin  menambahkan Bandar Syah Alam ke dalam data unit satuan pelayanan'),
(235, '2018-07-08 23:01:38', 'superuser', 'tambah', 'unit', 'Admin  menambahkan Bandar Syah Alam ke dalam data unit satuan pelayanan'),
(236, '2018-07-08 23:04:25', 'superuser', 'tambah', 'unit', 'Admin  menambahkan Bandar Syah Alam ke dalam data unit satuan pelayanan'),
(237, '2018-07-08 23:04:47', 'superuser', 'edit', 'data unit', 'admin  mengedit data unit Bandar Syah Alam'),
(238, '2018-07-08 23:05:40', 'superuser', 'edit', 'data unit', 'Admin  mengedit data unit Bandar Syah Alam'),
(239, '2018-07-09 00:36:54', 'beno', 'tambah', 'laporan terminal', 'Staff Terminal Bangkinang menambahkan laporan tanggal 09 Juli 2018'),
(240, '2018-07-09 09:42:55', 'rizki', 'tambah', 'laporan UPPKB', 'Staff UPPKB Balai Raja menambahkan laporan tanggal 09 Juli 2018'),
(241, '2018-07-09 09:48:12', 'rizki', 'tambah', 'laporan UPPKB', 'Staff UPPKB Balai Raja menambahkan laporan tanggal 09 Juli 2018'),
(242, '2018-07-09 14:07:21', 'superuser', 'edit', 'data pengguna', 'Admin  mengedit data user kungkung'),
(243, '2018-07-09 15:46:21', 'superuser', 'tambah', 'trayek SDP', 'Admin  menambahkan A ke dalam data trayek SDP'),
(244, '2018-07-09 16:28:43', 'superuser', 'edit', 'data pengguna', 'Admin  mengedit data user bayu'),
(245, '2018-07-09 16:28:54', 'superuser', 'edit', 'trayek SDP', 'Admin  mengedit data trayek A'),
(246, '2018-07-09 16:29:00', 'superuser', 'edit', 'data pengguna', 'Admin  mengedit data user bayu'),
(247, '2018-07-09 16:29:19', 'superuser', 'edit', 'data pengguna', 'Admin  mengedit data user bayu'),
(248, '2018-07-09 16:29:32', 'superuser', 'edit', 'data pengguna', 'Admin  mengedit data user bayu'),
(249, '2018-07-09 16:29:42', 'superuser', 'tambah', 'pengguna', 'Admin  menambahkan user a ke dalam data pengguna'),
(250, '2018-07-09 16:30:51', 'superuser', 'tambah', 'trayek SDP', 'Admin  menambahkan Z ke dalam data trayek SDP'),
(251, '2018-07-09 16:30:57', 'superuser', 'edit', 'trayek SDP', 'Admin  mengedit data trayek Z'),
(252, '2018-07-09 16:34:47', 'superuser', 'tambah', 'pengguna', 'Admin  menambahkan user b ke dalam data pengguna'),
(253, '2018-07-09 16:35:08', 'superuser', 'edit', 'data pengguna', 'Admin  mengedit data user b'),
(254, '2018-07-09 16:36:40', 'superuser', 'edit', 'data pengguna', 'Admin  mengedit data user b'),
(255, '2018-07-09 16:36:48', 'superuser', 'edit', 'data pengguna', 'Admin  mengedit data user b'),
(256, '2018-07-09 16:37:15', 'superuser', 'tambah', 'pengguna', 'Admin  menambahkan user c ke dalam data pengguna'),
(257, '2018-07-09 16:37:30', 'superuser', 'edit', 'data pengguna', 'Admin  mengedit data user c'),
(258, '2018-07-09 16:37:37', 'superuser', 'edit', 'data pengguna', 'Admin  mengedit data user c'),
(259, '2018-07-09 17:05:41', 'superuser', 'tambah', 'unit', 'Admin  menambahkan A ke dalam data unit satuan pelayanan'),
(260, '2018-07-12 22:02:06', 'superuser', 'tambah', 'pengguna', 'Admin  menambahkan user mawar ke dalam data pengguna'),
(261, '2018-07-12 22:02:50', 'superuser', 'tambah', 'unit', 'Admin  menambahkan Muara Lembu ke dalam data unit satuan pelayanan'),
(262, '2018-07-14 21:03:58', 'superuser', 'tambah', 'daerah', 'Admin  menambahkan S ke dalam data daerah'),
(263, '2018-07-14 21:15:56', 'superuser', 'tambah', 'daerah', 'Admin  menambahkan Ddd ke dalam data daerah'),
(264, '2018-07-14 21:16:08', 'superuser', 'tambah', 'daerah', 'Admin  menambahkan Ss ke dalam data daerah'),
(265, '2018-07-14 21:18:07', 'superuser', 'tambah', 'daerah', 'Admin  menambahkan Sdsd ke dalam data daerah'),
(266, '2018-07-14 21:18:25', 'superuser', 'tambah', 'daerah', 'Admin  menambahkan Sd ke dalam data daerah'),
(267, '2018-07-14 21:19:13', 'superuser', 'tambah', 'daerah', 'Admin  menambahkan Dsds ke dalam data daerah'),
(268, '2018-07-14 22:07:07', 'superuser', 'hapus', 'daerah', 'Admin  menghapus Dsds dari database '),
(269, '2018-07-14 21:36:35', 'superuser', 'tambah', 'daerah', 'Admin  menambahkan Dfd ke dalam data daerah'),
(270, '2018-07-14 16:36:53', 'superuser', 'hapus', 'daerah', 'Admin  menghapus Dfd dari database '),
(271, '2018-07-14 21:37:50', 'superuser', 'tambah', 'daerah', 'Admin  menambahkan Sds ke dalam data daerah'),
(272, '2018-07-14 21:38:04', 'superuser', 'hapus', 'daerah', 'Admin  menghapus Sds dari database '),
(273, '2018-07-14 21:38:41', 'superuser', 'tambah', 'daerah', 'Admin  menambahkan D  ke dalam data daerah'),
(274, '2018-07-14 21:38:47', 'superuser', 'hapus', 'daerah', 'Admin  menghapus D  dari data daerah '),
(275, '2018-07-14 21:40:16', 'bayu', 'tambah', 'daerah', 'Staff A menambahkan D  ke dalam data daerah'),
(276, '2018-07-14 21:40:20', 'bayu', 'tambah', 'daerah', 'Staff A menambahkan Ddasda ke dalam data daerah'),
(277, '2018-07-14 21:44:32', 'bayu', 'hapus', 'daerah', 'Staff A menghapus D  dari data daerah '),
(278, '2018-07-14 22:12:37', 'bayu', 'hapus', 'daerah', 'Staff A menghapus Ddasda dari data daerah '),
(279, '2018-07-14 22:12:38', 'bayu', 'tambah', 'daerah', 'Staff A menambahkan Dds ke dalam data daerah'),
(280, '2018-07-14 22:14:49', 'bayu', 'hapus', 'daerah', 'Staff Yonta Maria menghapus Dds dari data daerah '),
(281, '2018-07-14 22:15:50', 'bayu', 'tambah', 'daerah', 'Staff Yonta Maria menambahkan  d ke dalam data daerah'),
(282, '2018-07-14 22:17:03', 'bayu', 'tambah', 'daerah', 'Staff Yonta Maria menambahkan Dd  ke dalam data daerah'),
(283, '2018-07-14 22:18:58', 'bayu', 'hapus', 'daerah', 'Staff Yonta Maria menghapus D dari data daerah '),
(284, '2018-07-14 22:19:01', 'bayu', 'hapus', 'daerah', 'Staff Yonta Maria menghapus Dd  dari data daerah '),
(285, '2018-07-14 22:19:03', 'bayu', 'hapus', 'daerah', 'Staff Yonta Maria menghapus F dari data daerah '),
(286, '2018-07-14 22:20:36', 'bayu', 'hapus', 'daerah', 'Staff Yonta Maria menghapus Dd dari data daerah '),
(287, '2018-07-14 22:20:48', 'bayu', 'hapus', 'daerah', 'Staff Yonta Maria menghapus Sdsd dari data daerah '),
(288, '2018-07-14 22:21:13', 'bayu', 'hapus', 'daerah', 'Staff Yonta Maria menghapus Vcv dari data daerah '),
(289, '2018-07-14 22:21:13', 'bayu', 'tambah', 'daerah', 'Staff Yonta Maria menambahkan Ddd ke dalam data daerah'),
(290, '2018-07-14 22:30:03', 'bayu', 'hapus', 'daerah', 'Staff Yonta Maria menghapus Ddd dari data daerah '),
(291, '2018-07-14 22:30:06', 'bayu', 'hapus', 'daerah', 'Staff Yonta Maria menghapus Dsd dari data daerah '),
(292, '2018-07-14 22:30:16', 'superuser', 'tambah', 'daerah', 'Admin  menambahkan Dsdsds ke dalam data daerah'),
(293, '2018-07-14 22:30:06', 'bayu', 'tambah', 'daerah', 'Staff Yonta Maria menambahkan Ds ke dalam data daerah'),
(294, '2018-07-14 22:31:31', 'bayu', 'hapus', 'daerah', 'Staff Yonta Maria menghapus Ds dari data daerah '),
(295, '2018-07-14 22:31:31', 'bayu', 'tambah', 'daerah', 'Staff Yonta Maria menambahkan Dsd ke dalam data daerah'),
(296, '2018-07-14 22:31:51', 'bayu', 'hapus', 'daerah', 'Staff Yonta Maria menghapus Dsd dari data daerah '),
(297, '2018-07-14 22:31:57', 'superuser', 'tambah', 'daerah', 'Admin  menambahkan Asdasda ke dalam data daerah'),
(298, '2018-07-14 22:33:09', 'superuser', 'tambah', 'daerah', 'Admin  menambahkan D  ke dalam data daerah'),
(299, '2018-07-14 22:42:30', 'superuser', 'tambah', 'daerah', 'Admin  menambahkan Ddd  ke dalam data daerah'),
(300, '2018-07-14 22:42:44', 'superuser', 'hapus', 'daerah', 'Admin  menghapus Ddd  dari data daerah '),
(301, '2018-07-14 22:42:33', 'bayu', 'tambah', 'daerah', 'Staff Yonta Maria menambahkan Dd  ke dalam data daerah'),
(302, '2018-07-14 22:43:01', 'bayu', 'hapus', 'daerah', 'Staff Yonta Maria menghapus Dd  dari data daerah '),
(303, '2018-07-14 22:44:48', 'bayu', 'tambah', 'jenis muatan', 'Staff A menambahkan Ds ke dalam data jenis muatan'),
(304, '2018-07-14 22:47:24', 'bayu', 'tambah', 'daerah', 'Staff Yonta Maria menambahkan  ke dalam data jenismuatan'),
(305, '2018-07-14 22:48:37', 'bayu', 'tambah', 'daerah', 'Staff Yonta Maria menambahkan Tes ke dalam data daerah'),
(306, '2018-07-14 22:48:56', 'bayu', 'hapus', 'daerah', 'Staff Yonta Maria menghapus Tes dari data daerah '),
(307, '2018-07-14 22:51:54', 'bayu', 'tambah', 'jenis muatan', 'Staff Yonta Maria menambahkan  ke dalam data jenis muatan'),
(308, '2018-07-14 22:52:58', 'bayu', 'tambah', 'jenis muatan', 'Staff Yonta Maria menambahkan Dd ke dalam data jenis muatan'),
(309, '2018-07-14 22:53:50', 'superuser', 'tambah', 'daerah', 'Admin  menambahkan Asdasd ke dalam data jenis muatan'),
(310, '2018-07-14 22:55:27', 'superuser', 'tambah', 'jenis muatan', 'Admin  menambahkan Sddsd ke dalam data jenis muatan'),
(311, '2018-07-14 23:01:41', 'bayu', 'tambah', 'jenis muatan', 'Staff Yonta Maria menambahkan Sda ke dalam data jenis muatan'),
(312, '2018-07-14 23:02:00', 'superuser', 'tambah', 'jenis muatan', 'Admin  menambahkan Dsadsda ke dalam data jenis muatan'),
(313, '2018-07-14 23:05:25', 'bayu', 'hapus', 'jenis muatan', 'Staff Yonta Maria menghapus Dsadsda dari data jenis muatan '),
(314, '2018-07-14 23:05:41', 'superuser', 'tambah', 'jenis muatan', 'Admin  menambahkan Sds ke dalam data jenis muatan'),
(315, '2018-07-14 23:05:59', 'superuser', 'hapus', 'jenis muatan', 'Admin  menghapus  dari data jenis muatan '),
(316, '2018-07-14 23:06:34', 'superuser', 'tambah', 'jenis muatan', 'Admin  menambahkan Sdsd ke dalam data jenis muatan'),
(317, '2018-07-14 23:06:47', 'superuser', 'hapus', 'jenis muatan', 'Admin  menghapus Sdsd dari data jenis muatan '),
(318, '2018-07-14 23:15:43', 'mahardika', 'tambah', 'trayek', 'Staff PT. ASDP Indonesia Ferry (Persero) Cab. Batam menambahkan C ke dalam data trayek'),
(319, '2018-07-14 23:16:06', 'superuser', 'tambah', 'trayek', 'Admin  menambahkan D ke dalam data trayek'),
(320, '2018-07-14 23:35:07', 'mahardika', 'hapus', 'trayek SDP', 'Staff PT. ASDP Indonesia Ferry (Persero) Cab. Batam menghapus A dari data trayek '),
(321, '2018-07-14 23:35:19', 'mahardika', 'hapus', 'trayek SDP', 'Staff PT. ASDP Indonesia Ferry (Persero) Cab. Batam menghapus A1 dari data trayek '),
(322, '2018-07-14 23:35:31', 'superuser', 'hapus', 'trayek SDP', 'Admin  menghapus Ab dari data trayek '),
(323, '2018-07-14 23:35:37', 'superuser', 'hapus', 'trayek SDP', 'Admin  menghapus B dari data trayek '),
(324, '2018-07-14 23:35:41', 'superuser', 'hapus', 'trayek SDP', 'Admin  menghapus C dari data trayek '),
(325, '2018-07-14 23:35:45', 'mahardika', 'hapus', 'trayek SDP', 'Staff PT. ASDP Indonesia Ferry (Persero) Cab. Batam menghapus D dari data trayek '),
(326, '2018-07-14 23:37:11', 'mahardika', 'tambah', 'trayek', 'Staff PT. ASDP Indonesia Ferry (Persero) Cab. Batam menambahkan Asd ke dalam data trayek'),
(327, '2018-07-14 23:37:18', 'mahardika', 'hapus', 'trayek SDP', 'Staff PT. ASDP Indonesia Ferry (Persero) Cab. Batam menghapus Asd dari data trayek '),
(328, '2018-07-14 23:38:03', 'mahardika', 'tambah', 'trayek', 'Staff PT. ASDP Indonesia Ferry (Persero) Cab. Batam menambahkan S ke dalam data trayek'),
(329, '2018-07-14 23:38:20', 'mahardika', 'hapus', 'trayek SDP', 'Staff PT. ASDP Indonesia Ferry (Persero) Cab. Batam menghapus S dari data trayek '),
(330, '2018-07-14 23:38:44', 'superuser', 'tambah', 'trayek', 'Admin  menambahkan S ke dalam data trayek'),
(331, '2018-07-14 23:38:51', 'superuser', 'hapus', 'trayek SDP', 'Admin  menghapus S dari data trayek '),
(332, '2018-07-14 23:46:29', 'mahardika', 'tambah', 'KMP', 'Staff PT. ASDP Indonesia Ferry (Persero) Cab. Batam menambahkan A ke dalam data KMP'),
(333, '2018-07-15 01:08:03', 'mahardika', 'hapus', 'trayek SDP', 'Staff PT. ASDP Indonesia Ferry (Persero) Cab. Batam menghapus  dari data trayek '),
(334, '2018-07-15 01:13:11', 'mahardika', 'hapus', 'trayek SDP', 'Staff PT. ASDP Indonesia Ferry (Persero) Cab. Batam menghapus Telaga Punggur - Tanjung Balai Karimun dari data trayek '),
(335, '2018-07-15 01:18:24', 'mahardika', 'hapus', 'trayek SDP', 'Staff PT. ASDP Indonesia Ferry (Persero) Cab. Batam menghapus  dari data trayek '),
(336, '2018-07-15 01:53:35', 'mahardika', 'tambah', 'laporan SDP', 'Staff PT. ASDP Indonesia Ferry (Persero) Cab. Batam menambahkan laporan KMP Barau tanggal 15 Juli 2018'),
(337, '2018-07-15 01:56:22', 'mahardika', 'tambah', 'laporan SDP', 'Staff PT. ASDP Indonesia Ferry (Persero) Cab. Batam menambahkan laporan KMP A tanggal 15 Juli 2018'),
(338, '2018-07-15 01:56:42', 'mahardika', 'tambah', 'laporan SDP', 'Staff PT. ASDP Indonesia Ferry (Persero) Cab. Batam menambahkan laporan KMP A tanggal 08 Juli 2018'),
(339, '2018-07-15 01:57:19', 'mahardika', 'hapus', 'trayek SDP', 'Staff PT. ASDP Indonesia Ferry (Persero) Cab. Batam menghapus Dabo - Kuala Tungkal dari data trayek '),
(340, '2018-07-15 01:58:35', 'mahardika', 'tambah', 'KMP', 'Staff PT. ASDP Indonesia Ferry (Persero) Cab. Batam menambahkan Merry ke dalam data KMP'),
(341, '2018-07-15 01:59:10', 'mahardika', 'edit', 'data KMP', 'Staff PT. ASDP Indonesia Ferry (Persero) Cab. Batam mengedit data KMP Merry'),
(342, '2018-07-15 02:00:18', 'mahardika', 'edit', 'data KMP', 'Staff PT. ASDP Indonesia Ferry (Persero) Cab. Batam mengedit data KMP Merryx'),
(343, '2018-07-15 02:07:36', 'mahardika', 'tambah', 'KMP', 'Staff PT. ASDP Indonesia Ferry (Persero) Cab. Batam menambahkan A ke dalam data KMP'),
(344, '2018-07-15 02:08:06', 'mahardika', 'edit', 'data KMP', 'Staff PT. ASDP Indonesia Ferry (Persero) Cab. Batam mengedit data KMP A'),
(345, '2018-07-15 02:08:09', 'mahardika', 'edit', 'data KMP', 'Staff PT. ASDP Indonesia Ferry (Persero) Cab. Batam mengedit data KMP As'),
(346, '2018-07-15 02:08:27', 'mahardika', 'edit', 'data unit SDP', 'Staff SDP PT. ASDP Indonesia Ferry (Persero) Cab. Batam mengedit profil SDP'),
(347, '2018-07-15 02:10:17', 'mahardika', 'edit', 'data unit SDP', 'Staff SDP PT. ASDP Indonesia Ferry (Persero) Cab. Batam mengedit profil SDP'),
(348, '2018-07-15 02:10:46', 'mahardika', 'edit', 'data KMP', 'Staff PT. ASDP Indonesia Ferry (Persero) Cab. Batam mengedit data KMP Asb'),
(349, '2018-07-15 02:14:12', 'beno', 'edit', 'data unit terminal', 'Staff Terminal Bangkinang mengedit profil terminal'),
(350, '2018-07-15 02:14:46', 'beno', 'tambah', 'laporan terminal', 'Staff Terminal Bangkinang menambahkan laporan tanggal 15 Juli 2018'),
(351, '2018-07-15 02:18:17', 'bayu', 'edit', 'data unit UPPKB', 'Staff UPPKB Yonta Maria mengedit profil UPPKB'),
(352, '2018-07-15 02:18:30', 'bayu', 'edit', 'data unit UPPKB', 'Staff UPPKB Yonta Maria mengedit profil UPPKB'),
(353, '2018-07-15 05:25:10', 'bayu', 'edit', 'data pengemudi UPPKB', 'Staff UPPKB Yonta Maria mengedit data pengemudi dengan nomor KTP 1471031608970021'),
(354, '2018-07-15 05:26:05', 'bayu', 'edit', 'data pengemudi UPPKB', 'Staff UPPKB Yonta Maria mengedit data pengemudi dengan nomor KTP 1471031608970021'),
(355, '2018-07-15 05:26:37', 'bayu', 'edit', 'data unit UPPKB', 'Staff UPPKB Yonta Maria mengedit profil UPPKB'),
(356, '2018-07-15 05:28:33', 'bayu', 'tambah', 'laporan UPPKB', 'Staff UPPKB Yonta Maria menambahkan laporan tanggal 15 Juli 2018'),
(357, '2018-07-15 05:34:22', 'bayu', 'tambah', 'daerah', 'Staff Yonta Maria menambahkan Dfd ke dalam data daerah'),
(358, '2018-07-15 05:34:40', 'bayu', 'hapus', 'daerah', 'Staff Yonta Maria menghapus Dfd dari data daerah '),
(359, '2018-07-15 05:34:44', 'bayu', 'tambah', 'jenis muatan', 'Staff Yonta Maria menambahkan D ke dalam data jenis muatan'),
(360, '2018-07-15 05:34:56', 'bayu', 'hapus', 'jenis muatan', 'Staff Yonta Maria menghapus D dari data jenis muatan '),
(361, '2018-07-15 05:37:43', 'bayu', 'tambah', 'jenis muatan', 'Staff Yonta Maria menambahkan Mdkdn ke dalam data jenis muatan'),
(362, '2018-07-15 05:38:08', 'bayu', 'tambah', 'laporan UPPKB', 'Staff UPPKB Yonta Maria menambahkan laporan tanggal 17 Juli 2018'),
(363, '2018-07-15 05:39:58', 'bayu', 'hapus', 'jenis muatan', 'Staff Yonta Maria menghapus  dari data jenis muatan '),
(364, '2018-07-15 05:39:58', 'bayu', 'tambah', 'jenis muatan', 'Staff Yonta Maria menambahkan Ff ke dalam data jenis muatan'),
(365, '2018-07-15 05:42:37', 'bayu', 'tambah', 'laporan UPPKB', 'Staff UPPKB Yonta Maria menambahkan laporan tanggal 15 Juli 2018'),
(366, '2018-07-15 05:44:06', 'bayu', 'hapus', 'jenis muatan', 'Staff Yonta Maria menghapus Ff dari data jenis muatan '),
(367, '2018-07-15 05:45:06', 'mahardika', 'tambah', 'trayek', 'Staff PT. ASDP Indonesia Ferry (Persero) Cab. Batam menambahkan A - b ke dalam data trayek'),
(368, '2018-07-15 05:45:15', 'mahardika', 'edit', 'data unit SDP', 'Staff SDP PT. ASDP Indonesia Ferry (Persero) Cab. Batam mengedit profil SDP'),
(369, '2018-07-15 05:45:18', 'mahardika', 'edit', 'data unit SDP', 'Staff SDP PT. ASDP Indonesia Ferry (Persero) Cab. Batam mengedit profil SDP'),
(370, '2018-07-15 05:47:32', 'mahardika', 'tambah', 'laporan SDP', 'Staff PT. ASDP Indonesia Ferry (Persero) Cab. Batam menambahkan laporan KMP AA tanggal 15 Juli 2018'),
(371, '2018-07-15 05:48:34', 'mahardika', 'tambah', 'KMP', 'Staff PT. ASDP Indonesia Ferry (Persero) Cab. Batam menambahkan Tes ke dalam data KMP'),
(372, '2018-07-15 05:49:16', 'mahardika', 'tambah', 'laporan SDP', 'Staff PT. ASDP Indonesia Ferry (Persero) Cab. Batam menambahkan laporan KMP Tes tanggal 15 Juli 2018'),
(373, '2018-07-15 05:50:08', 'mahardika', 'hapus', 'trayek SDP', 'Staff PT. ASDP Indonesia Ferry (Persero) Cab. Batam menghapus A - b dari data trayek '),
(374, '2018-07-15 05:58:44', 'mahardika', 'tambah', 'trayek', 'Staff PT. ASDP Indonesia Ferry (Persero) Cab. Batam menambahkan Coba trayek ke dalam data trayek'),
(375, '2018-07-15 05:58:56', 'mahardika', 'tambah', 'KMP', 'Staff PT. ASDP Indonesia Ferry (Persero) Cab. Batam menambahkan Coba kmp trayek ke dalam data KMP'),
(376, '2018-07-15 05:59:37', 'mahardika', 'tambah', 'laporan SDP', 'Staff PT. ASDP Indonesia Ferry (Persero) Cab. Batam menambahkan laporan KMP Coba kmp trayek tanggal 15 Juli 2018'),
(377, '2018-07-15 06:01:45', 'mahardika', 'edit', 'trayek SDP', 'Staff PT. ASDP Indonesia Ferry (Persero) Cab. Batam mengedit data trayek Coba trayek deh'),
(378, '2018-07-15 06:02:10', 'superuser', 'hapus', 'trayek SDP', 'Admin  menghapus Coba trayek aja dari data trayek '),
(379, '2018-07-15 06:04:48', 'bayu', 'tambah', 'daerah', 'Staff Yonta Maria menambahkan Sungai Guntung ke dalam data daerah'),
(380, '2018-07-15 06:04:59', 'bayu', 'edit', 'daerah', 'Staff A mengedit data daerah Sungai Guntung'),
(381, '2018-07-15 06:08:50', 'bayu', 'edit', 'daerah', 'Staff Yonta Maria mengedit data daerah Sungai Guntung'),
(382, '2018-07-15 06:10:25', 'bayu', 'tambah', 'jenis muatan', 'Staff Yonta Maria menambahkan Vf ke dalam data jenis muatan'),
(383, '2018-07-15 06:10:35', 'bayu', 'edit', 'jenis muatan', 'Staff A mengedit data jenis muatan Vf'),
(384, '2018-07-15 06:10:52', 'bayu', 'edit', 'jenis muatan', 'Staff A mengedit data jenis muatan Mantap'),
(385, '2018-07-15 06:14:29', 'bayu', 'edit', 'jenis muatan', 'Staff Yonta Maria mengedit data jenis muatan Mantap jiwa'),
(386, '2018-07-15 06:17:36', 'bayu', 'tambah', 'laporan UPPKB', 'Staff UPPKB Yonta Maria menambahkan laporan tanggal 15 Juli 2018'),
(387, '2018-07-15 06:20:54', 'bayu', 'tambah', 'laporan UPPKB', 'Staff UPPKB Yonta Maria menambahkan laporan dengan nomor kendaraanBM 9090 NJ tanggal 16 Juli 2018'),
(388, '2018-07-15 06:24:42', 'bayu', 'tambah', 'daerah', 'Staff Yonta Maria menambahkan Sungai ke dalam data daerah'),
(389, '2018-07-15 06:25:01', 'bayu', 'tambah', 'laporan UPPKB', 'Staff UPPKB Yonta Maria menambahkan laporan dengan nomor kendaraan BM 7865 FG tanggal 15 Juli 2018'),
(390, '2018-07-15 06:26:32', 'superuser', 'hapus', 'jenis muatan', 'Admin  menghapus Mantap aja dari data jenis muatan '),
(391, '2018-07-15 06:26:57', 'bayu', 'edit', 'data pengemudi UPPKB', 'Staff UPPKB Yonta Maria mengedit data pengemudi dengan nomor KTP 1471031608970021'),
(392, '2018-07-15 06:27:04', 'bayu', 'edit', 'data pengemudi UPPKB', 'Staff UPPKB Yonta Maria mengedit data pengemudi dengan nomor KTP 1471031608970021'),
(393, '2018-07-15 06:28:35', 'beno', 'edit', 'data unit terminal', 'Staff Terminal Bangkinang mengedit profil terminal'),
(394, '2018-07-15 06:30:29', 'beno', 'tambah', 'laporan terminal', 'Staff Terminal Bangkinang menambahkan laporan tanggal 15 Juli 2018'),
(395, '2018-07-15 06:33:45', 'mahardika', 'edit', 'data KMP', 'Staff PT. ASDP Indonesia Ferry (Persero) Cab. Batam mengedit data KMP AA'),
(396, '2018-07-15 06:55:48', 'mahardika', 'edit', 'data KMP', 'Staff PT. ASDP Indonesia Ferry (Persero) Cab. Batam mengedit data KMP Tes 1'),
(397, '2018-07-15 06:56:16', 'mahardika', 'tambah', 'trayek', 'Staff PT. ASDP Indonesia Ferry (Persero) Cab. Batam menambahkan Tes trayek ke dalam data trayek'),
(398, '2018-07-15 06:56:25', 'mahardika', 'edit', 'data KMP', 'Staff PT. ASDP Indonesia Ferry (Persero) Cab. Batam mengedit data KMP Tes 12'),
(399, '2018-07-15 07:05:36', 'mahardika', 'tambah', 'KMP', 'Staff PT. ASDP Indonesia Ferry (Persero) Cab. Batam menambahkan S ke dalam data KMP');
INSERT INTO `log` (`id_log`, `waktu`, `username`, `proses`, `objek`, `keterangan`) VALUES
(400, '2018-07-15 02:21:16', 'mahardika', 'hapus', 'KMP', 'Staff PT. ASDP Indonesia Ferry (Persero) Cab. Batam menghapus S dari data KMP '),
(401, '2018-07-15 07:21:38', 'mahardika', 'tambah', 'KMP', 'Staff PT. ASDP Indonesia Ferry (Persero) Cab. Batam menambahkan Sd ke dalam data KMP'),
(402, '2018-07-15 07:25:14', 'mahardika', 'tambah', 'KMP', 'Staff PT. ASDP Indonesia Ferry (Persero) Cab. Batam menambahkan Sddd ke dalam data KMP'),
(403, '2018-07-15 07:25:39', 'mahardika', 'hapus', 'KMP', 'Staff PT. ASDP Indonesia Ferry (Persero) Cab. Batam menghapus Sddd dari data KMP '),
(404, '2018-07-15 07:25:39', 'mahardika', 'edit', 'data KMP', 'Staff PT. ASDP Indonesia Ferry (Persero) Cab. Batam mengedit data KMP Tes 12'),
(405, '2018-07-15 07:38:00', 'mahardika', 'tambah', 'laporan SDP', 'Staff PT. ASDP Indonesia Ferry (Persero) Cab. Batam menambahkan laporan KMP KAPAL PERCOBAAN tanggal 14 Juli 2018'),
(406, '2018-07-15 08:09:15', 'mahardika', 'hapus', 'KMP', 'Staff PT. ASDP Indonesia Ferry (Persero) Cab. Batam menghapus KMP KAPAL PERCOBAAN dari data KMP '),
(407, '2018-07-15 08:09:16', 'mahardika', 'tambah', 'KMP', 'Staff PT. ASDP Indonesia Ferry (Persero) Cab. Batam menambahkan Yrd ke dalam data KMP'),
(408, '2018-07-15 08:11:32', 'mahardika', 'tambah', 'laporan SDP', 'Staff PT. ASDP Indonesia Ferry (Persero) Cab. Batam menambahkan laporan KMP Yrd tanggal 15 Juli 2018'),
(409, '2018-07-15 08:11:57', 'mahardika', 'tambah', 'laporan SDP', 'Staff PT. ASDP Indonesia Ferry (Persero) Cab. Batam menambahkan laporan KMP Yrd tanggal 14 Juli 2018'),
(410, '2018-07-15 08:12:39', 'mahardika', 'hapus', 'KMP', 'Staff PT. ASDP Indonesia Ferry (Persero) Cab. Batam menghapus KMP Yrd dari data KMP '),
(411, '2018-07-15 09:04:08', 'superuser', 'edit', 'data unit', 'Admin  mengedit data unit A'),
(412, '2018-07-15 04:51:53', 'superuser', 'hapus', 'unit satuan pelayana', 'Admin menghapus unit Bandar Syah Alam dari data satuan pelayanan '),
(413, '2018-07-15 09:52:50', 'superuser', 'tambah', 'unit satuan pelayana', 'Admin  menambahkan Fela punya ke dalam data unit satuan pelayanan'),
(414, '2018-07-15 09:55:03', 'superuser', 'hapus', 'unit satuan pelayanan', 'Admin menghapus unit Fela punya dari data satuan pelayanan '),
(415, '2018-07-15 09:55:16', 'superuser', 'tambah', 'unit satuan pelayanan', 'Admin  menambahkan Tes ke dalam data unit satuan pelayanan'),
(416, '2018-07-15 09:56:14', 'superuser', 'hapus', 'unit satuan pelayanan', 'Admin menghapus unit Tes dari data satuan pelayanan '),
(417, '2018-07-15 10:08:33', 'superuser', 'tambah', 'unit satuan pelayanan', 'Admin  menambahkan Tes terminal ke dalam data unit satuan pelayanan'),
(418, '2018-07-15 10:23:23', 'fela', 'tambah', 'laporan terminal', 'Staff Terminal Tes terminal menambahkan laporan tanggal 15 Juli 2018'),
(419, '2018-07-15 10:23:34', 'fela', 'tambah', 'laporan terminal', 'Staff Terminal Tes terminal menambahkan laporan tanggal 15 Juli 2018'),
(420, '2018-07-15 10:32:05', 'superuser', 'hapus', 'unit satuan pelayanan', 'Admin menghapus unit Tes terminal dari data satuan pelayanan '),
(421, '2018-07-15 10:32:13', 'superuser', 'tambah', 'unit satuan pelayanan', 'Admin  menambahkan Tes s ke dalam data unit satuan pelayanan'),
(422, '2018-07-15 10:32:37', 'fela', 'tambah', 'laporan terminal', 'Staff Terminal Tes s menambahkan laporan tanggal 15 Juli 2018'),
(423, '2018-07-15 10:32:48', 'fela', 'tambah', 'laporan terminal', 'Staff Terminal Tes s menambahkan laporan tanggal 15 Juli 2018'),
(424, '2018-07-15 10:34:00', 'fela', 'tambah', 'laporan terminal', 'Staff Terminal Tes s menambahkan laporan tanggal 15 Juli 2018'),
(425, '2018-07-15 05:36:22', 'fela', 'tambah', 'laporan terminal', 'Staff Terminal Tes s menambahkan laporan tanggal 15 Juli 2018'),
(426, '2018-07-15 10:37:06', 'fela', 'tambah', 'laporan terminal', 'Staff Terminal Tes s menambahkan laporan tanggal 15 Juli 2018'),
(427, '2018-07-15 10:39:34', 'fela', 'tambah', 'laporan terminal', 'Staff Terminal Tes s menambahkan laporan tanggal 15 Juli 2018'),
(428, '2018-07-15 10:39:57', 'fela', 'tambah', 'laporan terminal', 'Staff Terminal Tes s menambahkan laporan tanggal 20 Juli 2018'),
(429, '2018-07-15 10:45:21', 'superuser', 'hapus', 'unit satuan pelayanan', 'Admin menghapus unit Tes s dari data satuan pelayanan '),
(430, '2018-07-15 10:45:28', 'superuser', 'tambah', 'unit satuan pelayanan', 'Admin  menambahkan Tes sdfs ke dalam data unit satuan pelayanan'),
(431, '2018-07-15 10:45:59', 'fela', 'tambah', 'laporan terminal', 'Staff Terminal Tes sdfs menambahkan laporan tanggal 10 Juli 2018'),
(432, '2018-07-15 10:46:12', 'fela', 'tambah', 'laporan terminal', 'Staff Terminal Tes sdfs menambahkan laporan tanggal 20 Juli 2018'),
(433, '2018-07-15 10:50:24', 'superuser', 'tambah', 'unit satuan pelayanan', 'Admin  menambahkan Asdas ke dalam data unit satuan pelayanan'),
(434, '2018-07-15 10:50:59', 'fela', 'tambah', 'laporan terminal', 'Staff Terminal Asdas menambahkan laporan tanggal 10 Juli 2018'),
(435, '2018-07-15 10:51:38', 'superuser', 'tambah', 'unit satuan pelayanan', 'Admin  menambahkan Sds ke dalam data unit satuan pelayanan'),
(436, '2018-07-15 10:52:13', 'fela', 'tambah', 'laporan terminal', 'Staff Terminal Sds menambahkan laporan tanggal 09 Juli 2018'),
(437, '2018-07-15 10:52:25', 'fela', 'tambah', 'laporan terminal', 'Staff Terminal Sds menambahkan laporan tanggal 21 Juli 2018'),
(438, '2018-07-15 10:53:12', 'superuser', 'tambah', 'unit satuan pelayanan', 'Admin  menambahkan Kungkung ke dalam data unit satuan pelayanan'),
(439, '2018-07-15 10:53:46', 'superuser', 'hapus', 'unit satuan pelayanan', 'Admin menghapus unit Kungkung dari data satuan pelayanan '),
(440, '2018-07-15 10:54:14', 'superuser', 'hapus', 'unit satuan pelayanan', 'Admin menghapus unit Sds dari data satuan pelayanan '),
(441, '2018-07-15 12:25:46', 'superuser', 'hapus', 'unit satuan pelayanan', 'Admin menghapus unit AS dari data satuan pelayanan '),
(442, '2018-07-15 14:11:33', 'rizki', 'tambah', 'laporan UPPKB', 'Staff UPPKB Balai Raja menambahkan laporan dengan nomor kendaraan BM 8989 KJ tanggal 14 Juli 2018'),
(443, '2018-07-15 14:12:39', 'rizki', 'tambah', 'laporan UPPKB', 'Staff UPPKB Balai Raja menambahkan laporan dengan nomor kendaraan BM 8746 HG tanggal 11 Juli 2018'),
(444, '2018-07-15 14:34:58', 'superuser', 'hapus', 'unit satuan pelayanan', 'Admin menghapus unit Balai Raja dari data satuan pelayanan '),
(445, '2018-07-15 14:42:48', 'superuser', 'edit', 'data pengguna', 'Admin  mengedit data user kungkung'),
(446, '2018-07-15 14:43:28', 'superuser', 'edit', 'data pengguna', 'Admin  mengedit data user a'),
(447, '2018-07-15 14:45:25', 'superuser', 'edit', 'data pengguna', 'Admin  mengedit data user a'),
(448, '2018-07-15 14:45:46', 'superuser', 'edit', 'data pengguna', 'Admin  mengedit data user a'),
(449, '2018-07-15 14:46:35', 'superuser', 'edit', 'data pengguna', 'Admin  mengedit data user rizki'),
(450, '2018-07-15 14:48:03', 'superuser', 'edit', 'data pengguna', 'Admin  mengedit data user rizki'),
(451, '2018-07-15 14:48:28', 'superuser', 'tambah', 'unit satuan pelayanan', 'Admin  menambahkan Sd ke dalam data unit satuan pelayanan'),
(452, '2018-07-15 14:49:26', 'b', 'tambah', 'laporan UPPKB', 'Staff UPPKB Sd menambahkan laporan dengan nomor kendaraan BM 87 HG tanggal 13 Juli 2018'),
(453, '2018-07-15 14:50:30', 'b', 'tambah', 'laporan UPPKB', 'Staff UPPKB Sd menambahkan laporan dengan nomor kendaraan BM 8787 DF tanggal 14 Juli 2018'),
(454, '2018-07-15 14:52:14', 'superuser', 'hapus', 'unit satuan pelayanan', 'Admin menghapus unit Sd dari data satuan pelayanan '),
(455, '2018-07-15 15:18:38', 'superuser', 'edit', 'data pengguna', 'Admin  mengedit data user c'),
(456, '2018-07-15 15:19:03', 'superuser', 'edit', 'data pengguna', 'Admin  mengedit data user b'),
(457, '2018-07-15 15:19:12', 'superuser', 'tambah', 'unit satuan pelayanan', 'Admin  menambahkan B ke dalam data unit satuan pelayanan'),
(458, '2018-07-15 15:19:31', 'superuser', 'tambah', 'unit satuan pelayanan', 'Admin  menambahkan C ke dalam data unit satuan pelayanan'),
(459, '2018-07-15 15:23:25', 'superuser', 'hapus', 'unit satuan pelayanan', 'Admin menghapus unit B dari data satuan pelayanan '),
(460, '2018-07-15 16:31:15', 'mahardika', 'tambah', 'KMP', 'Staff PT. ASDP Indonesia Ferry (Persero) Cab. Batam menambahkan Tes 1 ke dalam data KMP'),
(461, '2018-07-15 16:31:37', 'mahardika', 'hapus', 'KMP', 'Staff PT. ASDP Indonesia Ferry (Persero) Cab. Batam menghapus KMP Tes 1 dari data KMP '),
(462, '2018-07-15 16:31:37', 'mahardika', 'tambah', 'KMP', 'Staff PT. ASDP Indonesia Ferry (Persero) Cab. Batam menambahkan Tes1 ke dalam data KMP'),
(463, '2018-07-15 16:32:04', 'mahardika', 'tambah', 'laporan SDP', 'Staff PT. ASDP Indonesia Ferry (Persero) Cab. Batam menambahkan laporan KMP Tes1 tanggal 12 Juli 2018'),
(464, '2018-07-15 16:32:16', 'mahardika', 'tambah', 'laporan SDP', 'Staff PT. ASDP Indonesia Ferry (Persero) Cab. Batam menambahkan laporan KMP Tes1 tanggal 13 Juli 2018'),
(465, '2018-07-15 16:32:44', 'mahardika', 'hapus', 'KMP', 'Staff PT. ASDP Indonesia Ferry (Persero) Cab. Batam menghapus KMP Tes1 dari data KMP '),
(466, '2018-07-15 16:36:28', 'c', 'tambah', 'KMP', 'Staff C menambahkan Lko ke dalam data KMP'),
(467, '2018-07-15 16:36:40', 'c', 'tambah', 'KMP', 'Staff C menambahkan Kasd ke dalam data KMP'),
(468, '2018-07-15 16:36:58', 'c', 'tambah', 'laporan SDP', 'Staff C menambahkan laporan KMP Kasd tanggal 16 Juli 2018'),
(469, '2018-07-15 16:37:12', 'c', 'tambah', 'laporan SDP', 'Staff C menambahkan laporan KMP Lko tanggal 15 Juli 2018'),
(470, '2018-07-15 16:37:34', 'c', 'tambah', 'laporan SDP', 'Staff C menambahkan laporan KMP Kasd tanggal 24 Juli 2018'),
(471, '2018-07-15 16:38:08', 'superuser', 'hapus', 'unit satuan pelayanan', 'Admin menghapus unit C dari data satuan pelayanan '),
(472, '2018-07-15 20:11:52', 'superuser', 'tambah', 'unit satuan pelayanan', 'Admin  menambahkan Bandar raya ke dalam data unit satuan pelayanan'),
(473, '2018-07-16 05:22:24', 'superuser', 'hapus', 'data pengguna', 'Admin menghapus fela dari data satuan pelayanan '),
(474, '2018-07-16 05:29:25', 'superuser', 'hapus', 'unit satuan pelayanan', 'Admin menghapus unit  dari data satuan pelayanan '),
(475, '2018-07-16 05:30:07', 'superuser', 'hapus', 'data pengguna', 'Admin menghapus a dari data satuan pelayanan '),
(476, '2018-07-16 05:30:07', 'superuser', 'edit', 'data pengguna', 'Admin  mengedit data user b'),
(477, '2018-07-16 05:30:28', 'superuser', 'tambah', 'unit satuan pelayanan', 'Admin  menambahkan Terminal BBBB ke dalam data unit satuan pelayanan'),
(478, '2018-07-16 05:31:12', 'b', 'tambah', 'laporan terminal', 'Staff Terminal Terminal BBBB menambahkan laporan tanggal 08 Juli 2018'),
(479, '2018-07-16 05:36:23', 'superuser', 'hapus', 'data pengguna', 'Admin menghapus b dari data pengguna '),
(480, '2018-07-16 05:36:23', 'superuser', 'tambah', 'pengguna', 'Admin  menambahkan user kosong ke dalam data pengguna'),
(481, '2018-07-16 05:37:01', 'superuser', 'tambah', 'pengguna', 'Admin  menambahkan user adalaporan ke dalam data pengguna'),
(482, '2018-07-16 05:37:19', 'superuser', 'tambah', 'unit satuan pelayanan', 'Admin  menambahkan Sdf ke dalam data unit satuan pelayanan'),
(483, '2018-07-16 05:37:49', 'adalaporan', 'tambah', 'laporan terminal', 'Staff Terminal Sdf menambahkan laporan tanggal 09 Juli 2018'),
(484, '2018-07-16 05:38:09', 'superuser', 'hapus', 'data pengguna', 'Admin menghapus kosong dari data satuan pelayanan '),
(485, '2018-07-16 05:39:51', 'superuser', 'hapus', 'data pengguna', 'Admin menghapus adalaporan dari data pengguna '),
(486, '2018-07-16 05:39:51', 'superuser', 'tambah', 'pengguna', 'Admin  menambahkan user b ke dalam data pengguna'),
(487, '2018-07-16 05:40:05', 'superuser', 'tambah', 'unit satuan pelayanan', 'Admin  menambahkan B ke dalam data unit satuan pelayanan'),
(488, '2018-07-16 05:40:22', 'superuser', 'hapus', 'data pengguna', 'Admin menghapus b dari data pengguna '),
(489, '2018-07-16 05:40:40', 'superuser', 'tambah', 'pengguna', 'Admin  menambahkan user b ke dalam data pengguna'),
(490, '2018-07-16 05:40:47', 'superuser', 'tambah', 'unit satuan pelayanan', 'Admin  menambahkan Asdas ke dalam data unit satuan pelayanan'),
(491, '2018-07-16 05:41:15', 'b', 'tambah', 'laporan terminal', 'Staff Terminal Asdas menambahkan laporan tanggal 12 Juli 2018'),
(492, '2018-07-16 05:41:22', 'superuser', 'hapus', 'unit satuan pelayanan', 'Admin menghapus unit Asdas dari data satuan pelayanan '),
(493, '2018-07-16 05:41:22', 'superuser', 'tambah', 'unit satuan pelayanan', 'Admin  menambahkan Sd ke dalam data unit satuan pelayanan'),
(494, '2018-07-16 05:41:45', 'b', 'tambah', 'laporan terminal', 'Staff Terminal Sd menambahkan laporan tanggal 12 Juli 2018'),
(495, '2018-07-16 05:42:38', 'superuser', 'hapus', 'data pengguna', 'Admin menghapus b dari data pengguna '),
(496, '2018-07-16 05:42:38', 'superuser', 'tambah', 'pengguna', 'Admin  menambahkan user b ke dalam data pengguna'),
(497, '2018-07-16 05:42:51', 'superuser', 'tambah', 'unit satuan pelayanan', 'Admin  menambahkan Sdf ke dalam data unit satuan pelayanan'),
(498, '2018-07-16 05:43:10', 'b', 'tambah', 'laporan terminal', 'Staff Terminal Sdf menambahkan laporan tanggal 25 Juli 2018'),
(499, '2018-07-16 05:43:18', 'superuser', 'hapus', 'data pengguna', 'Admin menghapus b dari data pengguna '),
(500, '2018-07-16 05:46:50', 'superuser', 'hapus', 'data pengguna', 'Admin menghapus rizki dari data pengguna '),
(501, '2018-07-16 05:47:13', 'mawar', 'tambah', 'laporan UPPKB', 'Staff UPPKB Muara Lembu menambahkan laporan dengan nomor kendaraan S tanggal 25 Juli 2018'),
(502, '2018-07-16 05:48:00', 'superuser', 'hapus', 'data pengguna', 'Admin menghapus mawar dari data pengguna '),
(503, '2018-07-16 05:48:09', 'superuser', 'tambah', 'unit satuan pelayanan', 'Admin  menambahkan Ss ke dalam data unit satuan pelayanan'),
(504, '2018-07-16 05:48:25', 'superuser', 'hapus', 'data pengguna', 'Admin menghapus kungkung dari data pengguna '),
(505, '2018-07-16 05:50:29', 'superuser', 'tambah', 'pengguna', 'Admin  menambahkan user sd ke dalam data pengguna'),
(506, '2018-07-16 05:50:49', 'superuser', 'tambah', 'unit satuan pelayanan', 'Admin  menambahkan Sd ke dalam data unit satuan pelayanan'),
(507, '2018-07-16 05:51:28', 'superuser', 'hapus', 'data pengguna', 'Admin menghapus c dari data pengguna '),
(508, '2018-07-16 05:51:41', 'superuser', 'hapus', 'data pengguna', 'Admin menghapus sd dari data pengguna '),
(509, '2018-07-16 05:51:41', 'superuser', 'tambah', 'pengguna', 'Admin  menambahkan user sd ke dalam data pengguna'),
(510, '2018-07-16 05:51:53', 'superuser', 'tambah', 'unit satuan pelayanan', 'Admin  menambahkan Sds ke dalam data unit satuan pelayanan'),
(511, '2018-07-16 05:52:14', 'sd', 'tambah', 'KMP', 'Staff Sds menambahkan Sd ke dalam data KMP'),
(512, '2018-07-16 05:52:28', 'sd', 'tambah', 'laporan SDP', 'Staff Sds menambahkan laporan KMP Sd tanggal 12 Juli 2018'),
(513, '2018-07-16 05:54:33', 'superuser', 'hapus', 'data pengguna', 'Admin menghapus sd dari data pengguna '),
(514, '2018-07-16 05:54:33', 'superuser', 'tambah', 'pengguna', 'Admin  menambahkan user b ke dalam data pengguna'),
(515, '2018-07-16 05:54:51', 'superuser', 'tambah', 'unit satuan pelayanan', 'Admin  menambahkan Sd ke dalam data unit satuan pelayanan'),
(516, '2018-07-16 05:55:22', 'b', 'tambah', 'KMP', 'Staff Sd menambahkan Sd ke dalam data KMP'),
(517, '2018-07-16 05:55:35', 'b', 'tambah', 'laporan SDP', 'Staff Sd menambahkan laporan KMP Sd tanggal 25 Juli 2018'),
(518, '2018-07-16 05:56:59', 'superuser', 'hapus', 'data pengguna', 'Admin menghapus b dari data pengguna '),
(519, '2018-07-16 06:49:58', 'superuser', 'hapus', 'daerah', 'Admin  menghapus Sungai dari data daerah '),
(520, '2018-07-16 06:50:08', 'superuser', 'hapus', 'trayek SDP', 'Admin  menghapus Tes trayek dari data trayek '),
(521, '2018-07-16 06:50:10', 'superuser', 'tambah', 'pengguna', 'Admin  menambahkan user rizki ke dalam data pengguna'),
(522, '2018-07-16 06:50:39', 'superuser', 'tambah', 'pengguna', 'Admin  menambahkan user mawar ke dalam data pengguna'),
(523, '2018-07-16 06:51:10', 'superuser', 'tambah', 'unit satuan pelayanan', 'Admin  menambahkan Sungai Guntung ke dalam data unit satuan pelayanan'),
(524, '2018-07-16 06:52:21', 'superuser', 'tambah', 'unit satuan pelayanan', 'Admin  menambahkan Balai Raya ke dalam data unit satuan pelayanan'),
(525, '2018-07-16 06:55:07', 'mahardika', 'tambah', 'KMP', 'Staff PT. ASDP Indonesia Ferry (Persero) Cab. Batam menambahkan Lome ke dalam data KMP'),
(526, '2018-07-16 06:55:52', 'mahardika', 'edit', 'data KMP', 'Staff PT. ASDP Indonesia Ferry (Persero) Cab. Batam mengedit data KMP Merry'),
(527, '2018-07-16 06:56:13', 'mahardika', 'tambah', 'laporan SDP', 'Staff PT. ASDP Indonesia Ferry (Persero) Cab. Batam menambahkan laporan KMP Lome tanggal 12 Juli 2018'),
(528, '2018-07-16 06:59:22', 'mawar', 'tambah', 'laporan terminal', 'Staff Terminal Sungai Guntung menambahkan laporan tanggal 16 Juli 2018'),
(529, '2018-07-16 14:34:00', 'superuser', 'tambah', 'daerah', 'Admin  menambahkan Kampar ke dalam data daerah'),
(530, '2018-07-16 14:34:27', 'superuser', 'tambah', 'jenis muatan', 'Admin  menambahkan Tanah Liat ke dalam data jenis muatan'),
(531, '2018-07-16 14:34:56', 'superuser', 'tambah', 'trayek', 'Admin  menambahkan Air Putih- Tanjung Uban ke dalam data trayek'),
(532, '2018-07-16 14:35:36', 'superuser', 'tambah', 'pengguna', 'Admin  menambahkan user dika ke dalam data pengguna'),
(533, '2018-07-16 14:36:00', 'superuser', 'tambah', 'unit satuan pelayanan', 'Admin  menambahkan BUMD Kab. Bengkalis ke dalam data unit satuan pelayanan'),
(534, '2018-07-16 14:39:35', 'mahardika', 'tambah', 'KMP', 'Staff PT. ASDP Indonesia Ferry (Persero) Cab. Batam menambahkan Muria ke dalam data KMP'),
(535, '2018-07-16 14:41:31', 'mahardika', 'tambah', 'laporan SDP', 'Staff PT. ASDP Indonesia Ferry (Persero) Cab. Batam menambahkan laporan KMP Merry tanggal 16 Juli 2018'),
(536, '2018-09-09 15:56:10', 'beno', 'tambah', 'laporan terminal', 'Staff Terminal Bangkinang menambahkan laporan tanggal 09 September 2018'),
(537, '2018-09-09 16:27:10', 'bayu', 'tambah', 'laporan UPPKB', 'Staff UPPKB Yonta Maria menambahkan laporan dengan nomor kendaraan BM 8797 TY tanggal 09 September 2018'),
(538, '2018-09-09 16:34:02', 'bayu', 'tambah', 'laporan UPPKB', 'Staff UPPKB Yonta Maria menambahkan laporan dengan nomor kendaraan BA 9987 TG tanggal 09 September 2018'),
(539, '2018-09-12 13:22:41', 'beno', 'tambah', 'laporan terminal', 'Staff Terminal Bangkinang menambahkan laporan tanggal 12 September 2018'),
(540, '2018-09-12 13:23:29', 'beno', 'tambah', 'laporan terminal', 'Staff Terminal Bangkinang menambahkan laporan tanggal 12 September 2018'),
(541, '2018-09-12 13:28:51', 'bayu', 'edit', 'data pengemudi UPPKB', 'Staff UPPKB Yonta Maria mengedit data pengemudi dengan nomor KTP 1471031608970021'),
(542, '2018-09-12 13:46:29', 'mahardika', 'tambah', 'laporan SDP', 'Staff PT. ASDP Indonesia Ferry (Persero) Cab. Batam menambahkan laporan KMP Muria tanggal 12 September 2018'),
(543, '2018-09-16 22:23:49', 'beno', 'tambah', 'laporan terminal', 'Staff Terminal Bangkinang menambahkan laporan tanggal 16 September 2018'),
(544, '2018-09-16 22:24:32', 'beno', 'tambah', 'laporan terminal', 'Staff Terminal Bangkinang menambahkan laporan tanggal 16 September 2018'),
(545, '2018-09-16 22:24:57', 'beno', 'tambah', 'laporan terminal', 'Staff Terminal Bangkinang menambahkan laporan tanggal 16 September 2018'),
(546, '2018-09-17 00:00:50', 'rizki', 'tambah', 'laporan UPPKB', 'Staff UPPKB Balai Raya menambahkan laporan dengan nomor kendaraan BM 8796 BN tanggal 17 September 2018'),
(547, '2018-09-17 00:29:11', 'rizki', 'tambah', 'laporan UPPKB', 'Staff UPPKB Balai Raya menambahkan laporan dengan nomor kendaraan BA 8643 BN tanggal 17 September 2018'),
(548, '2018-09-17 00:32:25', 'superuser', 'edit', 'data pengguna', 'Admin  mengedit data user mahardika'),
(549, '2018-09-22 22:10:24', 'bayu', 'tambah', 'laporan UPPKB', 'Staff UPPKB Yonta Maria menambahkan laporan dengan nomor kendaraan BM 6043 QF tanggal 22 September 2018'),
(550, '2018-09-22 22:16:46', 'bayu', 'tambah', 'daerah', 'Staff Yonta Maria menambahkan Pelalawan ke dalam data daerah'),
(551, '2018-09-22 22:21:18', 'bayu', 'edit', 'daerah', 'Staff Yonta Maria mengedit data daerah Bengkalis'),
(552, '2018-09-22 22:23:29', 'bayu', 'edit', 'daerah', 'Staff Yonta Maria mengedit data daerah Bengkalisx'),
(553, '2018-09-22 22:24:55', 'bayu', 'tambah', 'jenis muatan', 'Staff Yonta Maria menambahkan Batu Bara ke dalam data jenis muatan'),
(554, '2018-09-22 22:25:07', 'bayu', 'edit', 'jenis muatan', 'Staff Yonta Maria mengedit data jenis muatan Batu Bara'),
(555, '2018-09-22 22:25:29', 'bayu', 'edit', 'jenis muatan', 'Staff Yonta Maria mengedit data jenis muatan Batu Bara'),
(556, '2018-09-22 22:34:15', 'superuser', 'hapus', 'jenis muatan', 'Admin  menghapus Batu Bara dari data jenis muatan '),
(557, '2018-09-22 22:34:49', 'bayu', 'edit', 'data pengemudi UPPKB', 'Staff UPPKB Yonta Maria mengedit data pengemudi dengan nomor KTP 1471031608970021'),
(558, '2018-09-22 22:34:58', 'bayu', 'edit', 'data pengemudi UPPKB', 'Staff UPPKB Yonta Maria mengedit data pengemudi dengan nomor KTP 1471031608970021'),
(559, '2018-09-22 22:56:46', 'superuser', 'edit', 'daerah', 'Admin  mengedit data daerah Bangkinang'),
(560, '2018-09-22 22:56:52', 'superuser', 'edit', 'daerah', 'Admin  mengedit data daerah Bangkinang'),
(561, '2018-09-22 23:19:15', 'bayu', 'tambah', 'laporan UPPKB', 'Staff UPPKB Yonta Maria menambahkan laporan dengan nomor kendaraan BM 7644 HJ tanggal 22 September 2018'),
(562, '2018-09-22 23:27:45', 'rizki', 'tambah', 'laporan UPPKB', 'Staff UPPKB Balai Raya menambahkan laporan dengan nomor kendaraan BH 7875 FF tanggal 21 September 2018'),
(563, '2018-09-22 23:59:44', 'bayu', 'edit', 'data pengemudi UPPKB', 'Staff UPPKB Yonta Maria mengedit data pengemudi dengan nomor KTP 99711077662'),
(564, '2018-09-23 00:00:54', 'rizki', 'edit', 'data pengemudi UPPKB', 'Staff UPPKB Balai Raya mengedit data pengemudi dengan nomor KTP 99711077662'),
(565, '2018-09-23 00:13:55', 'mahardika', 'tambah', 'trayek', 'Staff PT. ASDP Indonesia Ferry (Persero) Cab. Batam menambahkan Mengkapan - Tanjung Balai Karimun ke dalam data trayek'),
(566, '2018-09-23 00:14:52', 'mahardika', 'tambah', 'KMP', 'Staff PT. ASDP Indonesia Ferry (Persero) Cab. Batam menambahkan Senangin ke dalam data KMP'),
(567, '2018-09-23 00:21:14', 'mahardika', 'tambah', 'KMP', 'Staff PT. ASDP Indonesia Ferry (Persero) Cab. Batam menambahkan Dsds ke dalam data KMP'),
(568, '2018-09-23 00:21:38', 'mahardika', 'hapus', 'KMP', 'Staff PT. ASDP Indonesia Ferry (Persero) Cab. Batam menghapus KMP Dsds dari data KMP '),
(569, '2018-09-23 00:22:03', 'mahardika', 'edit', 'trayek SDP', 'Staff PT. ASDP Indonesia Ferry (Persero) Cab. Batam mengedit data trayek Air Putih- Tanjung Uban'),
(570, '2018-09-23 00:30:08', 'mahardika', 'tambah', 'laporan SDP', 'Staff PT. ASDP Indonesia Ferry (Persero) Cab. Batam menambahkan laporan KMP Senangin tanggal 23 September 2018'),
(571, '2018-09-23 00:34:03', 'superuser', 'tambah', 'daerah', 'Admin  menambahkan Kuansing ke dalam data daerah'),
(572, '2018-09-23 00:34:36', 'superuser', 'hapus', 'daerah', 'Admin  menghapus Kuansing dari data daerah '),
(573, '2018-09-23 00:35:26', 'superuser', 'tambah', 'jenis muatan', 'Admin  menambahkan Semen ke dalam data jenis muatan'),
(574, '2018-09-23 00:36:07', 'superuser', 'tambah', 'jenis muatan', 'Admin  menambahkan D ke dalam data jenis muatan'),
(575, '2018-09-23 00:36:21', 'superuser', 'hapus', 'jenis muatan', 'Admin  menghapus D dari data jenis muatan '),
(576, '2018-09-23 00:36:26', 'superuser', 'hapus', 'jenis muatan', 'Admin  menghapus Semen dari data jenis muatan '),
(577, '2018-09-23 00:36:26', 'superuser', 'tambah', 'jenis muatan', 'Admin  menambahkan Semen ke dalam data jenis muatan'),
(578, '2018-09-23 00:36:55', 'superuser', 'hapus', 'jenis muatan', 'Admin  menghapus Semen dari data jenis muatan '),
(579, '2018-09-23 00:37:04', 'superuser', 'tambah', 'trayek', 'Admin  menambahkan Sdf - df ke dalam data trayek'),
(580, '2018-09-23 00:37:31', 'superuser', 'hapus', 'trayek SDP', 'Admin  menghapus Sdf - df dari data trayek '),
(581, '2018-09-23 00:38:16', 'superuser', 'hapus', 'data pengguna', 'Admin menghapus dika dari data pengguna '),
(582, '2018-09-23 00:38:16', 'superuser', 'edit', 'data pengguna', 'Admin  mengedit data user zul'),
(583, '2018-09-23 00:39:24', 'superuser', 'edit', 'data pengguna', 'Admin  mengedit data user zul'),
(584, '2018-09-23 00:39:39', 'superuser', 'tambah', 'pengguna', 'Admin  menambahkan user tes ke dalam data pengguna'),
(585, '2018-09-23 00:40:22', 'superuser', 'tambah', 'unit satuan pelayanan', 'Admin  menambahkan Bandar Raya Oayung Sekki ke dalam data unit satuan pelayanan'),
(586, '2018-09-23 00:44:28', 'superuser', 'edit', 'unit satuan pelayanan', 'Admin  mengedit data unit Bandar Raya Oayung Sekki'),
(587, '2018-09-23 00:45:25', 'superuser', 'hapus', 'unit satuan pelayanan', 'Admin menghapus unit Bandar Raya Oayung Sekki dari data satuan pelayanan '),
(588, '2018-09-23 00:45:37', 'superuser', 'tambah', 'unit satuan pelayanan', 'Admin  menambahkan Sd ke dalam data unit satuan pelayanan'),
(589, '2018-09-23 00:46:02', 'superuser', 'hapus', 'data pengguna', 'Admin menghapus tes dari data pengguna ');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pengguna`
--

CREATE TABLE `pengguna` (
  `username` varchar(12) NOT NULL,
  `password` varchar(50) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `level_akses` enum('admin','unit') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `pengguna`
--

INSERT INTO `pengguna` (`username`, `password`, `nama`, `level_akses`) VALUES
('admin', 'admin', 'Administrator', 'admin'),
('bayu', 'bayu', 'Bayu Sugara', 'unit'),
('brps', 'brps', 'Frans Simanjuntak', 'unit'),
('kungkung', 'kungkung', 'M. Aidil Fitrah', 'unit'),
('mahardika', 'mahardika', 'Mahardika Kharisma Ajie', 'unit'),
('zul', 'zul', 'Zulkarnain', 'unit');

-- --------------------------------------------------------

--
-- Struktur dari tabel `sdp_detail_report`
--

CREATE TABLE `sdp_detail_report` (
  `id_detail_report` int(20) NOT NULL,
  `id_kmp` int(11) NOT NULL,
  `id_muatan_penumpang` int(18) NOT NULL,
  `id_muatan_kendaraan` int(18) NOT NULL,
  `frekuensi_trip` int(2) NOT NULL,
  `tanggal` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `sdp_muatan_kendaraan`
--

CREATE TABLE `sdp_muatan_kendaraan` (
  `id_muatan_kendaraan` int(18) NOT NULL,
  `golongan_kendaraan` int(2) NOT NULL,
  `jumlah_penumpang` int(8) NOT NULL,
  `jumlah_kendaraan` int(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `sdp_muatan_penumpang`
--

CREATE TABLE `sdp_muatan_penumpang` (
  `id_muatan_penumpang` int(18) NOT NULL,
  `jumlah_pnp_ekonomi_dewasa` int(4) NOT NULL,
  `jumlah_pnp_ekonomi_anak` int(4) NOT NULL,
  `jumlah_pnp_bisnis_dewasa` int(4) NOT NULL,
  `jumlah_pnp_bisnis_anak` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `sdp_muatan_penumpang`
--

INSERT INTO `sdp_muatan_penumpang` (`id_muatan_penumpang`, `jumlah_pnp_ekonomi_dewasa`, `jumlah_pnp_ekonomi_anak`, `jumlah_pnp_bisnis_dewasa`, `jumlah_pnp_bisnis_anak`) VALUES
(5, 625, 0, 0, 0),
(6, 641, 0, 0, 0),
(8, 834, 0, 0, 0),
(9, 512, 0, 0, 0),
(10, 1, 2, 3, 4),
(13, 45, 15, 1, 0),
(14, 45, 18, 2, 0),
(15, 20, 12, -1, 2),
(16, 45, 5, 0, 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `term_detail_report`
--

CREATE TABLE `term_detail_report` (
  `id_detail_report` int(20) NOT NULL,
  `id_unit` int(11) NOT NULL,
  `id_kendaraan` int(20) NOT NULL,
  `id_penumpang` int(20) NOT NULL,
  `jenis_tujuan` varchar(4) NOT NULL,
  `tipe_perjalanan` varchar(10) NOT NULL,
  `tanggal` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `term_kendaraan`
--

CREATE TABLE `term_kendaraan` (
  `id_kendaraan` int(20) NOT NULL,
  `kendaraan_masuk` int(11) NOT NULL,
  `kendaraan_keluar` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `term_kendaraan`
--

INSERT INTO `term_kendaraan` (`id_kendaraan`, `kendaraan_masuk`, `kendaraan_keluar`) VALUES
(8, 1, 2),
(9, 10, 20),
(10, 1, 2),
(11, 1, 2),
(12, 11, 11),
(13, 1, 2),
(14, 1, 1),
(20, 19, 7),
(21, 1, 2),
(22, 1, 2),
(23, 1, 2),
(24, 1, 2),
(25, 1, 2),
(26, 1, 2);

-- --------------------------------------------------------

--
-- Struktur dari tabel `term_penumpang`
--

CREATE TABLE `term_penumpang` (
  `id_penumpang` int(20) NOT NULL,
  `penumpang_datang` int(11) NOT NULL,
  `penumpang_turun` int(11) NOT NULL,
  `penumpang_naik` int(11) NOT NULL,
  `penumpang_berangkat` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `term_penumpang`
--

INSERT INTO `term_penumpang` (`id_penumpang`, `penumpang_datang`, `penumpang_turun`, `penumpang_naik`, `penumpang_berangkat`) VALUES
(8, 3, 4, 5, 6),
(9, 30, 40, 50, 60),
(10, 3, 4, 5, 6),
(11, 3, 4, 5, 6),
(12, 22, 33, 11, 55),
(13, 3, 4, 5, 6),
(14, 2, 3, 4, 5),
(20, 70, 0, 0, 150),
(21, 3, 0, 0, 4),
(22, 3, 4, 5, 6),
(23, 3, 0, 0, 6),
(24, 3, 0, 0, 1),
(25, 3, 4, 5, 6),
(26, 3, 4, 5, 6);

-- --------------------------------------------------------

--
-- Struktur dari tabel `unit`
--

CREATE TABLE `unit` (
  `id_unit` int(11) NOT NULL,
  `username` varchar(12) NOT NULL,
  `nama_unit` varchar(180) NOT NULL,
  `unit` enum('Terminal','SDP','UPPKB') NOT NULL,
  `kabupaten` varchar(50) NOT NULL,
  `email` varchar(80) NOT NULL,
  `alamat` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `unit`
--

INSERT INTO `unit` (`id_unit`, `username`, `nama_unit`, `unit`, `kabupaten`, `email`, `alamat`) VALUES
(1, 'brps', 'Bandar Raya Payung Sekaki', 'Terminal', 'Pekanbaru', 'terminal.brps@gmail.com', 'Jalan Air Hitam KM. 7'),
(32, 'mahardika', 'PT. ASDP Indonesia Ferry (Persero) Cab. Batam', 'SDP', 'Batam', 'asdp.sdp@gmail.com', 'Jalan Asia Afrika No. 17\r\n'),
(34, 'zul', 'PT. Atosim Lampung Pelayaran Cab. Bengkalis', 'SDP', 'Bengkalis', 'atosim.sdp@gmail.com', 'Jalan Sudirman No. 27'),
(35, 'bayu', 'Yonta Maria', 'UPPKB', 'Meranti', 'yontamaria.uppkb@gmail.com', 'Jalan Sumatera KM. 16');

-- --------------------------------------------------------

--
-- Struktur dari tabel `uppkb_detail_report`
--

CREATE TABLE `uppkb_detail_report` (
  `id_detail_report` int(18) NOT NULL,
  `id_unit` int(11) NOT NULL,
  `no_ktp_supir` varchar(16) NOT NULL,
  `id_jenis_muatan` int(8) NOT NULL,
  `nomor_kendaraan` varchar(10) NOT NULL,
  `jenis_kendaraan` varchar(4) NOT NULL,
  `berat_kendaraan` int(11) NOT NULL,
  `jbi` int(11) NOT NULL,
  `hasil_penimbangan` int(11) NOT NULL,
  `berat_muatan` int(11) NOT NULL,
  `kelebihan_muatan` int(11) NOT NULL,
  `asal` int(8) NOT NULL,
  `tujuan` int(8) NOT NULL,
  `tanggal` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `uppkb_pengemudi`
--

CREATE TABLE `uppkb_pengemudi` (
  `no_ktp` varchar(16) NOT NULL,
  `nama_pengemudi` varchar(80) NOT NULL,
  `nama_perusahaan` varchar(250) NOT NULL,
  `no_hp` varchar(13) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `uppkb_pengemudi`
--

INSERT INTO `uppkb_pengemudi` (`no_ktp`, `nama_pengemudi`, `nama_perusahaan`, `no_hp`) VALUES
('1471031608970021', 'Mahardika Kharisma Adjie', 'PT. Pekan Perkasa Berlian Motor', '081314721632'),
('1471041608900035', 'Fela peryandja', 'PT. RAPP', '085276625494'),
('1472652559872351', 'Beno Saputra', 'PT. Makmur Jaya Abadi', '085271906764'),
('1971031608980017', 'Andri P.', 'PT. Nirwana Tembakau', '085271934622'),
('1971031608980021', 'Diki', 'PT. Tirta Jaya Tbk.', '081314721632'),
('1971031708980021', 'Apriadi', 'PT. Suka Makmur', '085216448795'),
('1971033160898062', 'Doni', 'PT. Sumbar Makmur', '08527105365'),
('1971061905850024', 'Agus', 'PT. Bukit Asam', '089575662597'),
('99711077662', 'Azhari Aziz', 'PT. Gudang Garam Tbk.', '081314721621');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `data_daerah`
--
ALTER TABLE `data_daerah`
  ADD PRIMARY KEY (`id_daerah`),
  ADD UNIQUE KEY `kode_daerah` (`kode_daerah`);

--
-- Indeks untuk tabel `data_gol_kendaraan`
--
ALTER TABLE `data_gol_kendaraan`
  ADD PRIMARY KEY (`id_gol_kendaraan`);

--
-- Indeks untuk tabel `data_jenis_muatan`
--
ALTER TABLE `data_jenis_muatan`
  ADD PRIMARY KEY (`id_jenis_muatan`);

--
-- Indeks untuk tabel `data_kmp`
--
ALTER TABLE `data_kmp`
  ADD PRIMARY KEY (`id_kmp`),
  ADD KEY `fk_sdp8` (`id_trayek`),
  ADD KEY `fk_sdp9` (`id_unit`);

--
-- Indeks untuk tabel `data_trayek`
--
ALTER TABLE `data_trayek`
  ADD PRIMARY KEY (`id_trayek`);

--
-- Indeks untuk tabel `log`
--
ALTER TABLE `log`
  ADD PRIMARY KEY (`id_log`);

--
-- Indeks untuk tabel `pengguna`
--
ALTER TABLE `pengguna`
  ADD PRIMARY KEY (`username`);

--
-- Indeks untuk tabel `sdp_detail_report`
--
ALTER TABLE `sdp_detail_report`
  ADD PRIMARY KEY (`id_detail_report`),
  ADD KEY `fk_sdp3` (`id_kmp`),
  ADD KEY `fk_sdp4` (`id_muatan_penumpang`),
  ADD KEY `id_muatan_kendaraan` (`id_muatan_kendaraan`);

--
-- Indeks untuk tabel `sdp_muatan_kendaraan`
--
ALTER TABLE `sdp_muatan_kendaraan`
  ADD PRIMARY KEY (`id_muatan_kendaraan`);

--
-- Indeks untuk tabel `sdp_muatan_penumpang`
--
ALTER TABLE `sdp_muatan_penumpang`
  ADD PRIMARY KEY (`id_muatan_penumpang`);

--
-- Indeks untuk tabel `term_detail_report`
--
ALTER TABLE `term_detail_report`
  ADD PRIMARY KEY (`id_detail_report`),
  ADD KEY `fk_term2` (`id_unit`),
  ADD KEY `fk_term3` (`id_kendaraan`),
  ADD KEY `fk_term4` (`id_penumpang`);

--
-- Indeks untuk tabel `term_kendaraan`
--
ALTER TABLE `term_kendaraan`
  ADD PRIMARY KEY (`id_kendaraan`);

--
-- Indeks untuk tabel `term_penumpang`
--
ALTER TABLE `term_penumpang`
  ADD PRIMARY KEY (`id_penumpang`);

--
-- Indeks untuk tabel `unit`
--
ALTER TABLE `unit`
  ADD PRIMARY KEY (`id_unit`),
  ADD KEY `fk_user1` (`username`);

--
-- Indeks untuk tabel `uppkb_detail_report`
--
ALTER TABLE `uppkb_detail_report`
  ADD PRIMARY KEY (`id_detail_report`),
  ADD KEY `fk_uppkb3` (`id_unit`),
  ADD KEY `fk_uppkb5` (`id_jenis_muatan`),
  ADD KEY `fk_uppkb6` (`asal`),
  ADD KEY `fk_uppkb7` (`tujuan`),
  ADD KEY `no_ktp_supir` (`no_ktp_supir`);

--
-- Indeks untuk tabel `uppkb_pengemudi`
--
ALTER TABLE `uppkb_pengemudi`
  ADD PRIMARY KEY (`no_ktp`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `data_daerah`
--
ALTER TABLE `data_daerah`
  MODIFY `id_daerah` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT untuk tabel `data_gol_kendaraan`
--
ALTER TABLE `data_gol_kendaraan`
  MODIFY `id_gol_kendaraan` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT untuk tabel `data_jenis_muatan`
--
ALTER TABLE `data_jenis_muatan`
  MODIFY `id_jenis_muatan` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT untuk tabel `data_kmp`
--
ALTER TABLE `data_kmp`
  MODIFY `id_kmp` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT untuk tabel `data_trayek`
--
ALTER TABLE `data_trayek`
  MODIFY `id_trayek` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT untuk tabel `log`
--
ALTER TABLE `log`
  MODIFY `id_log` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=590;

--
-- AUTO_INCREMENT untuk tabel `sdp_detail_report`
--
ALTER TABLE `sdp_detail_report`
  MODIFY `id_detail_report` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT untuk tabel `sdp_muatan_kendaraan`
--
ALTER TABLE `sdp_muatan_kendaraan`
  MODIFY `id_muatan_kendaraan` int(18) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=145;

--
-- AUTO_INCREMENT untuk tabel `sdp_muatan_penumpang`
--
ALTER TABLE `sdp_muatan_penumpang`
  MODIFY `id_muatan_penumpang` int(18) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT untuk tabel `term_detail_report`
--
ALTER TABLE `term_detail_report`
  MODIFY `id_detail_report` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT untuk tabel `term_kendaraan`
--
ALTER TABLE `term_kendaraan`
  MODIFY `id_kendaraan` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT untuk tabel `term_penumpang`
--
ALTER TABLE `term_penumpang`
  MODIFY `id_penumpang` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT untuk tabel `unit`
--
ALTER TABLE `unit`
  MODIFY `id_unit` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT untuk tabel `uppkb_detail_report`
--
ALTER TABLE `uppkb_detail_report`
  MODIFY `id_detail_report` int(18) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `data_kmp`
--
ALTER TABLE `data_kmp`
  ADD CONSTRAINT `fk_sdp8` FOREIGN KEY (`id_trayek`) REFERENCES `data_trayek` (`id_trayek`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_sdp9` FOREIGN KEY (`id_unit`) REFERENCES `unit` (`id_unit`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `sdp_detail_report`
--
ALTER TABLE `sdp_detail_report`
  ADD CONSTRAINT `fk_sdp3` FOREIGN KEY (`id_kmp`) REFERENCES `data_kmp` (`id_kmp`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_sdp4` FOREIGN KEY (`id_muatan_penumpang`) REFERENCES `sdp_muatan_penumpang` (`id_muatan_penumpang`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `sdp_detail_report_ibfk_1` FOREIGN KEY (`id_muatan_kendaraan`) REFERENCES `sdp_muatan_kendaraan` (`id_muatan_kendaraan`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `term_detail_report`
--
ALTER TABLE `term_detail_report`
  ADD CONSTRAINT `fk_term3` FOREIGN KEY (`id_kendaraan`) REFERENCES `term_kendaraan` (`id_kendaraan`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_term4` FOREIGN KEY (`id_penumpang`) REFERENCES `term_penumpang` (`id_penumpang`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `term_detail_report_ibfk_1` FOREIGN KEY (`id_unit`) REFERENCES `unit` (`id_unit`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `unit`
--
ALTER TABLE `unit`
  ADD CONSTRAINT `fk_user1` FOREIGN KEY (`username`) REFERENCES `pengguna` (`username`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `uppkb_detail_report`
--
ALTER TABLE `uppkb_detail_report`
  ADD CONSTRAINT `fk_uppkb5` FOREIGN KEY (`id_jenis_muatan`) REFERENCES `data_jenis_muatan` (`id_jenis_muatan`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_uppkb6` FOREIGN KEY (`asal`) REFERENCES `data_daerah` (`id_daerah`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_uppkb7` FOREIGN KEY (`tujuan`) REFERENCES `data_daerah` (`id_daerah`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `uppkb_detail_report_ibfk_1` FOREIGN KEY (`no_ktp_supir`) REFERENCES `uppkb_pengemudi` (`no_ktp`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `uppkb_detail_report_ibfk_2` FOREIGN KEY (`id_unit`) REFERENCES `unit` (`id_unit`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
