-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 10 Jan 2025 pada 08.01
-- Versi server: 10.4.32-MariaDB
-- Versi PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tiket_bioskop`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `film`
--

CREATE TABLE `film` (
  `id_film` char(10) NOT NULL,
  `id_user` char(10) DEFAULT NULL,
  `id_jns` char(10) DEFAULT NULL,
  `judul_film` varchar(50) DEFAULT NULL,
  `durasi` time DEFAULT NULL,
  `deskripsi` mediumtext DEFAULT NULL,
  `gambar` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `film`
--

INSERT INTO `film` (`id_film`, `id_user`, `id_jns`, `judul_film`, `durasi`, `deskripsi`, `gambar`) VALUES
('FLM001', 'USR001', 'GEN009', 'Avengers: Endgame', '02:29:00', 'Avengers: Endgame adalah film superhero Amerika 2019 yang didasarkan pada Marvel Comics tim superhero the Avengers, diproduksi oleh Marvel Studios dan didistribusikan oleh Walt Disney Studios Motion Pictures. Ini adalah sekuel The Avengers 2012, film 2015 Avengers: Age of Ultron dan film 2018 Avengers: Infinity War, dan film kedua puluh dua di Marvel Cinematic Universe (MCU). Film ini disutradarai oleh Anthony dan Joe Russo, yang ditulis oleh Christopher Markus dan Stephen McFeely, dan menampilkan pemeran ansambel termasuk Robert Downey Jr, Chris Evans, Mark Ruffalo, Chris Hemsworth, Scarlett Johansson, Jeremy Renner, Don Cheadle, Don Cheadle, Paul Rudd, Brie Larson, Karen Gillan, Danai Gurira, Benedict Wong, Jon Favreau, Bradley Cooper, Gwyneth Paltrow, dan Josh Brolin. Dalam film itu, anggota Avengers yang masih hidup dan sekutu mereka berusaha untuk membalikkan kerusakan yang disebabkan oleh Thanos dalam Infinity War.', 'avengers.jpg'),
('FLM002', 'USR001', 'GEN021', 'Spider-Man: Far From Home', '02:08:00', 'Spider-Man: Far From Home adalah sebuah film pahlawan super Amerika Serikat yang berdasarkan pada karakter Marvel Comics Spider-Man, hasil kerjasama produksi dari Columbia Pictures dan Marvel Studios, dan didistribusikan oleh Sony Pictures Releasing. Film tersebut ditujukan untuk dijadikan sekuel dari Spider-Man: Homecoming (2017) dan film kedua puluh tiga dalam Marvel Cinematic Universe. Film ini disutradarai oleh Jon Watts, ditulis oleh Chris McKenna dan Erik Sommers, dan dibintangi Tom Holland sebagai Peter Parker / Spider-Man, bersama Samuel L. Jackson, Zendaya, Cobie Smulders, Jon Favreau, Smoove JB, Smoove, Jacob Batalon, Martin Starr, Marisa Tomei, dan Jake Gyllenhaal. Dalam Spider-Man: Far From Home, Parker direkrut oleh Nick Fury dan Mysterio untuk menghadapi ancaman dari dimensi lain saat ia sedang dalam perjalanan sekolah ke Eropa.', 'spiderman.jpg'),
('FLM003', 'USR001', 'GEN012', 'Warkop DKI Reborn: Jangkrik Boss! Part 2', '01:17:00', 'Warkop DKI Reborn: Jangkrik Boss! Part 2 adalah sebuah film komedi Indonesia 2017 yang disutradarai oleh Anggy Umbara.[1] Film tersebut merupakan adaptasi dari film-film Warkop DKI dan sequel dari film Warkop DKI Reborn: Jangkrik Boss! Part 1 yang dirilis tahun 2016.', 'warkop_dki.jpg'),
('FLM004', 'USR001', 'GEN017', 'Agak Laen', '01:25:00', 'Film Agak Laen yg bergenre komedi yg diproduksi oleh imajinasi siap mengocok perut pencinta film komedi. Film yg dibintangi oleh para komika kenamaan seperti  Boris Bokir, Indra Jegel, Oki Rengga, Bene Dion, Arie Kriting dan sejumlah artis lainnya.\r\n\r\nFilm agak laen ini bercerita tentang empat orng sahabat yang mengelola rumah hantu di pasar malam,sayangnya wahana tersebut sepi pengunjung. Empat sekawan mencari cara baru menakuti para pengunjung agar selamat dari kebangkrutan.Sial mereka berempat malah memakan korban jiwa salah satu pengunjungnya karena panik korban tersebut mereka kubur dalam  rumah hantu.', 'agak_laen.jpg'),
('FLM005', 'USR001', 'GEN011', 'Moana 2', '01:40:00', 'Dalam Moana 2, kita kembali bertemu dengan Moana dan Maui, kali ini ditemani kru pelaut yang unik. Moana menerima panggilan dari leluhurnya untuk menjelajahi lautan luas di Oceania hingga ke perairan misterius yang telah lama hilang.\r\n\r\nPerjalanan ini penuh tantangan dan pelajaran baru yang menegangkan karena kita akan berpetualang ke tempat yang tidak pernah terpikirkan sebelumnya. Keindahan visual khas Disney adalah kunci yang menjanjikan pengalaman berlayar bersama kru Moana, diantara pulau-pulau tak berpenghuni serta makhluk-makhluk fantasi pada laut lepas yang pastinya sangat memukau bagi anak-anak dan keluarga.', 'moana2.jpg'),
('FLM006', 'USR001', 'GEN017', 'KKN di Desa Penari', '02:10:00', 'Film KKN di Desa Penari: Luwih Dowo Luwih Medeni diawali dengan adegan baru, ketika ibu Widya (diperankan Lidya Kandou) berpesan kepada putrinya itu sebuah pepatah jawa.\r\n\r\n\"Air selalu mengalir ke Timur, di Timur semua hal berkumpul, dari yang baik sampai yang buruk hingga yang paling buruk.\" Demikian katanya.\r\n\r\nMeski berat, Widya (Adinda Thomas) pun berusaha meminta izin kepada ibunya untuk berangkat menuju tempat KKNnya tersebut.\r\n\r\nSelanjutnya Widya, Nur, Ayu, Bima, Anton dan Wahyu pun berangkat ke lokasi KKN yang disebut dengan desa Penari tersebut. Lokasi yang tidak pernah mereka sangka akan berujung malapetaka.\r\n\r\nSesampainya di sana berbagai kejadian aneh dan mistis pun kerap terjadi. Mengikuti perjalanan KKN mereka, penampakan sosok penari dan suara gamelan pun kerap muncul.\r\n\r\nHal buruk pun terus terjadi ketika salah satu diantara mereka terlibat perjanjian dengan jin. Hingga akhirnya mereka terjebak di dalam desa angker tersebut dan tak bisa kembali.\r\n\r\nPerseteruan pun terjadi di antara mereka.\r\n', 'kkndesapenari.jpg');

--
-- Trigger `film`
--
DELIMITER $$
CREATE TRIGGER `hapus_pada_jadwal` BEFORE DELETE ON `film` FOR EACH ROW DELETE FROM jadwal WHERE id_film=OLD.id_film
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Struktur dari tabel `finish`
--

CREATE TABLE `finish` (
  `id_success` char(20) NOT NULL,
  `id_user` char(20) NOT NULL,
  `id_pesan` char(20) NOT NULL,
  `id_jadwal` char(20) NOT NULL,
  `id_kursi` char(20) NOT NULL,
  `tanggal` date NOT NULL,
  `total_harga` int(11) NOT NULL,
  `qrcode_text` varchar(40) NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `finish`
--

INSERT INTO `finish` (`id_success`, `id_user`, `id_pesan`, `id_jadwal`, `id_kursi`, `tanggal`, `total_harga`, `qrcode_text`, `status`) VALUES
('SCC001', 'USR015', '519803174', 'JDW001', 'KRS001', '2019-12-08', 35000, '519803174581', '1');

-- --------------------------------------------------------

--
-- Struktur dari tabel `jadwal`
--

CREATE TABLE `jadwal` (
  `id_jadwal` char(10) NOT NULL,
  `id_studio` char(10) DEFAULT NULL,
  `id_film` char(10) DEFAULT NULL,
  `tanggal` date DEFAULT NULL,
  `jam_mulai` time DEFAULT NULL,
  `jam_selesai` time DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `jadwal`
--

INSERT INTO `jadwal` (`id_jadwal`, `id_studio`, `id_film`, `tanggal`, `jam_mulai`, `jam_selesai`) VALUES
('JDW001', 'STD001', 'FLM001', '2025-01-14', '23:00:00', '00:22:00'),
('JDW002', 'STD002', 'FLM001', '2025-01-13', '07:30:00', '09:22:00'),
('JDW003', 'STD001', 'FLM002', '2025-01-16', '09:20:00', '12:38:00'),
('JDW004', 'STD003', 'FLM006', '2025-01-13', '12:00:00', '14:15:00'),
('JDW005', 'STD003', 'FLM005', '2025-01-13', '15:00:00', '16:45:00'),
('JDW006', 'STD004', 'FLM004', '2025-01-13', '13:00:00', '14:30:00'),
('JDW007', 'STD001', 'FLM004', '2025-01-14', '11:00:00', '12:25:00'),
('JDW008', 'STD002', 'FLM005', '2019-12-09', '12:00:00', '13:45:00'),
('JDW009', 'STD003', 'FLM002', '2025-01-17', '23:05:00', '00:30:00'),
('JDW010', 'STD001', 'FLM002', '2025-01-20', '07:08:00', '08:09:00');

--
-- Trigger `jadwal`
--
DELIMITER $$
CREATE TRIGGER `hapus_pada_finish` BEFORE DELETE ON `jadwal` FOR EACH ROW DELETE FROM finish WHERE id_jadwal=OLD.id_jadwal
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `hapus_tiket` BEFORE DELETE ON `jadwal` FOR EACH ROW DELETE FROM tiket WHERE id_jadwal=OLD.id_jadwal
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Struktur dari tabel `jenis_film`
--

CREATE TABLE `jenis_film` (
  `id_jns` char(10) NOT NULL,
  `jns_film` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `jenis_film`
--

INSERT INTO `jenis_film` (`id_jns`, `jns_film`) VALUES
('GEN009', 'Action'),
('GEN010', 'Adventure'),
('GEN011', 'Animation'),
('GEN012', 'Comedy'),
('GEN013', 'Crime'),
('GEN014', 'Drama'),
('GEN015', 'Fantasy'),
('GEN016', 'Family'),
('GEN017', 'Horror'),
('GEN018', 'Mystery'),
('GEN019', 'Romance'),
('GEN020', 'Thriller'),
('GEN021', 'Sci-Fi');

--
-- Trigger `jenis_film`
--
DELIMITER $$
CREATE TRIGGER `hapus_pada_film` BEFORE DELETE ON `jenis_film` FOR EACH ROW DELETE FROM film WHERE id_jns=OLD.id_jns
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Struktur dari tabel `kursi`
--

CREATE TABLE `kursi` (
  `id_kursi` char(10) NOT NULL,
  `id_studio` char(10) DEFAULT NULL,
  `nama_kursi` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `kursi`
--

INSERT INTO `kursi` (`id_kursi`, `id_studio`, `nama_kursi`) VALUES
('KRS001', 'STD001', 'A1'),
('KRS002', 'STD001', 'A2'),
('KRS003', 'STD001', 'A3'),
('KRS004', 'STD001', 'A4'),
('KRS005', 'STD001', 'A5'),
('KRS006', 'STD001', 'A6'),
('KRS007', 'STD001', 'A7'),
('KRS008', 'STD001', 'A8'),
('KRS009', 'STD001', 'A9'),
('KRS010', 'STD001', 'A10'),
('KRS011', 'STD001', 'A11'),
('KRS012', 'STD001', 'A12'),
('KRS013', 'STD001', 'B1'),
('KRS014', 'STD001', 'B2'),
('KRS015', 'STD001', 'B3'),
('KRS016', 'STD001', 'B4'),
('KRS017', 'STD001', 'B5'),
('KRS018', 'STD001', 'B6'),
('KRS019', 'STD001', 'B7'),
('KRS020', 'STD001', 'B8'),
('KRS021', 'STD001', 'B9'),
('KRS022', 'STD001', 'B10'),
('KRS023', 'STD002', 'A1'),
('KRS024', 'STD002', 'A2'),
('KRS025', 'STD002', 'A3'),
('KRS026', 'STD002', 'A4'),
('KRS027', 'STD002', 'A5'),
('KRS028', 'STD002', 'A6'),
('KRS029', 'STD002', 'A7'),
('KRS030', 'STD002', 'A8'),
('KRS031', 'STD002', 'B1'),
('KRS032', 'STD002', 'B2'),
('KRS033', 'STD002', 'B3'),
('KRS034', 'STD002', 'B4'),
('KRS035', 'STD003', 'A1'),
('KRS036', 'STD003', 'A2'),
('KRS037', 'STD003', 'A3'),
('KRS038', 'STD003', 'A4'),
('KRS039', 'STD003', 'A5'),
('KRS040', 'STD003', 'A6'),
('KRS041', 'STD003', 'A7'),
('KRS042', 'STD003', 'A8'),
('KRS043', 'STD003', 'A9'),
('KRS044', 'STD003', 'A10'),
('KRS045', 'STD003', 'B1'),
('KRS046', 'STD003', 'B2'),
('KRS047', 'STD003', 'B3'),
('KRS048', 'STD003', 'B4'),
('KRS049', 'STD003', 'B5'),
('KRS050', 'STD003', 'B6'),
('KRS051', 'STD004', 'A1'),
('KRS052', 'STD004', 'A2'),
('KRS053', 'STD004', 'A3'),
('KRS054', 'STD004', 'A4'),
('KRS055', 'STD004', 'B1'),
('KRS056', 'STD004', 'B2'),
('KRS057', 'STD004', 'B3'),
('KRS058', 'STD004', 'B4');

--
-- Trigger `kursi`
--
DELIMITER $$
CREATE TRIGGER `hapus_kursi_pada_finish` BEFORE DELETE ON `kursi` FOR EACH ROW DELETE FROM finish WHERE id_kursi=OLD.id_kursi
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `hapus_kursi_pada_kursi_order` BEFORE DELETE ON `kursi` FOR EACH ROW DELETE FROM kursi_order WHERE id_kursi=OLD.id_kursi
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `hapus_pada_temp_kursi` BEFORE DELETE ON `kursi` FOR EACH ROW DELETE FROM temp_kursi WHERE id_kursi=OLD.id_kursi
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Struktur dari tabel `kursi_order`
--

CREATE TABLE `kursi_order` (
  `id_pesan` char(20) NOT NULL,
  `id_tiket` char(20) NOT NULL,
  `id_kursi` char(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `kursi_order`
--

INSERT INTO `kursi_order` (`id_pesan`, `id_tiket`, `id_kursi`) VALUES
('519803174', 'TKT001', 'KRS001');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pesan`
--

CREATE TABLE `pesan` (
  `id_pesan` char(10) NOT NULL,
  `id_user` char(10) DEFAULT NULL,
  `tgl_pesan` datetime DEFAULT NULL,
  `total` int(11) DEFAULT NULL,
  `payment_type` varchar(30) NOT NULL,
  `pdf_url` varchar(100) NOT NULL,
  `status` enum('success','failure','cencel','pending') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `pesan`
--

INSERT INTO `pesan` (`id_pesan`, `id_user`, `tgl_pesan`, `total`, `payment_type`, `pdf_url`, `status`) VALUES
('519803174', 'USR015', '2025-01-14 22:41:49', 35000, 'bank_transfer', 'https://app.sandbox.midtrans.com/snap/v1/transactions/a1d59aa6-9fbb-45c9-b147-8f0d5806b80d/pdf', 'success');

--
-- Trigger `pesan`
--
DELIMITER $$
CREATE TRIGGER `hapus_di_finisih` BEFORE DELETE ON `pesan` FOR EACH ROW DELETE FROM finish WHERE id_pesan=OLD.id_pesan
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `hapus_di_kursi_order` BEFORE DELETE ON `pesan` FOR EACH ROW DELETE FROM kursi_order WHERE id_pesan=OLD.id_pesan
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `hapus_di_tiket_order` BEFORE DELETE ON `pesan` FOR EACH ROW DELETE FROM tiket_order WHERE id_pesan=OLD.id_pesan
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Struktur dari tabel `studio`
--

CREATE TABLE `studio` (
  `id_studio` char(10) NOT NULL,
  `nama_studio` varchar(20) DEFAULT NULL,
  `jenis` enum('vip','premium') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `studio`
--

INSERT INTO `studio` (`id_studio`, `nama_studio`, `jenis`) VALUES
('STD001', 'studio 01', 'premium'),
('STD002', 'studio 02', 'vip'),
('STD003', 'studio 03', 'premium'),
('STD004', 'studio 04', 'vip');

--
-- Trigger `studio`
--
DELIMITER $$
CREATE TRIGGER `hapus_jadwal` BEFORE DELETE ON `studio` FOR EACH ROW DELETE FROM jadwal WHERE id_studio=OLD.id_studio
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `hapus_kursi` BEFORE DELETE ON `studio` FOR EACH ROW DELETE FROM kursi WHERE id_studio=OLD.id_studio
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Struktur dari tabel `temp_kursi`
--

CREATE TABLE `temp_kursi` (
  `id_pemesanan` char(20) NOT NULL,
  `id_kursi` char(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `temp_kursi`
--

INSERT INTO `temp_kursi` (`id_pemesanan`, `id_kursi`) VALUES
('TMP002', 'KRS002'),
('TMP002', 'KRS003'),
('TMP002', 'KRS004');

-- --------------------------------------------------------

--
-- Struktur dari tabel `temp_pesan`
--

CREATE TABLE `temp_pesan` (
  `id_pemesanan` char(15) NOT NULL,
  `id_user` char(10) DEFAULT NULL,
  `id_tiket` char(10) DEFAULT NULL,
  `tgl_pesan` date DEFAULT NULL,
  `banyak` int(11) DEFAULT NULL,
  `total` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `temp_pesan`
--

INSERT INTO `temp_pesan` (`id_pemesanan`, `id_user`, `id_tiket`, `tgl_pesan`, `banyak`, `total`) VALUES
('TMP002', 'USR014', 'TKT001', '2025-01-13', 3, 105000);

--
-- Trigger `temp_pesan`
--
DELIMITER $$
CREATE TRIGGER `hapus_temp_kursi` BEFORE DELETE ON `temp_pesan` FOR EACH ROW DELETE FROM temp_kursi WHERE id_pemesanan=OLD.id_pemesanan
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tiket`
--

CREATE TABLE `tiket` (
  `id_tiket` char(10) NOT NULL,
  `id_jadwal` char(10) DEFAULT NULL,
  `harga` int(11) DEFAULT NULL,
  `stock` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `tiket`
--

INSERT INTO `tiket` (`id_tiket`, `id_jadwal`, `harga`, `stock`) VALUES
('TKT001', 'JDW001', 35000, 21),
('TKT002', 'JDW002', 40000, 12),
('TKT003', 'JDW003', 35000, 22),
('TKT004', 'JDW004', 35000, 16),
('TKT005', 'JDW005', 35000, 16),
('TKT006', 'JDW006', 40000, 8),
('TKT007', 'JDW007', 35000, 22),
('TKT008', 'JDW010', 20000, 22);

--
-- Trigger `tiket`
--
DELIMITER $$
CREATE TRIGGER `hapus_kursi_order` BEFORE DELETE ON `tiket` FOR EACH ROW DELETE FROM kursi_order WHERE id_tiket=OLD.id_tiket
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `hapus_temp_pemesanan` BEFORE DELETE ON `tiket` FOR EACH ROW DELETE FROM temp_pesan WHERE id_tiket=OLD.id_tiket
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `hapus_tiket_order` BEFORE DELETE ON `tiket` FOR EACH ROW DELETE FROM tiket_order WHERE id_tiket=OLD.id_tiket
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tiket_order`
--

CREATE TABLE `tiket_order` (
  `id_pesan` char(10) DEFAULT NULL,
  `id_tiket` char(10) DEFAULT NULL,
  `banyak` int(11) DEFAULT NULL,
  `total` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `tiket_order`
--

INSERT INTO `tiket_order` (`id_pesan`, `id_tiket`, `banyak`, `total`) VALUES
('519803174', 'TKT001', 1, 35000);

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `id_user` char(10) NOT NULL,
  `nama` varchar(40) DEFAULT NULL,
  `email` varchar(40) DEFAULT NULL,
  `jenis_kelamin` enum('L','P') DEFAULT NULL,
  `password` varchar(30) DEFAULT NULL,
  `hak_akses` enum('admin','penjualan','petugas','customer') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id_user`, `nama`, `email`, `jenis_kelamin`, `password`, `hak_akses`) VALUES
('USR001', 'ZEND', 'zend@gmail.com', 'L', 'admin123', 'admin'),
('USR002', 'Lunar', 'admin2@gmail.com', 'L', 'tiketbioskop', 'petugas'),
('USR003', 'Markus', 'mark@gmail.com', 'L', 'markus123', 'admin'),
('USR005', 'Sarah', 'sarah@gmail.com', 'P', 'jualan123', 'penjualan'),
('USR014', 'Resti', 'resti@gmail.com', 'P', 'resti123', 'customer'),
('USR015', 'Susan', 'susan123gmail.com', 'P', 'customer', 'customer');

--
-- Trigger `user`
--
DELIMITER $$
CREATE TRIGGER `hapus_di_film` BEFORE DELETE ON `user` FOR EACH ROW DELETE FROM film WHERE id_user=OLD.id_user
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `hapus_di_pesan` BEFORE DELETE ON `user` FOR EACH ROW DELETE FROM pesan WHERE id_user=OLD.id_user
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `hapus_id_finish` BEFORE DELETE ON `user` FOR EACH ROW DELETE FROM finish WHERE id_user=OLD.id_user
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `hapus_pada_temp_pemesanan` BEFORE DELETE ON `user` FOR EACH ROW DELETE FROM temp_pesan WHERE id_user=OLD.id_user
$$
DELIMITER ;

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `film`
--
ALTER TABLE `film`
  ADD PRIMARY KEY (`id_film`),
  ADD KEY `mengentry_fk` (`id_user`),
  ADD KEY `bergenre_fk` (`id_jns`);

--
-- Indeks untuk tabel `finish`
--
ALTER TABLE `finish`
  ADD PRIMARY KEY (`id_success`),
  ADD KEY `id_user` (`id_user`),
  ADD KEY `id_pesan` (`id_pesan`),
  ADD KEY `id_jadwal` (`id_jadwal`),
  ADD KEY `id_kursi` (`id_kursi`);

--
-- Indeks untuk tabel `jadwal`
--
ALTER TABLE `jadwal`
  ADD PRIMARY KEY (`id_jadwal`),
  ADD KEY `dijadwalkan_fk` (`id_film`),
  ADD KEY `mempunyai_fk` (`id_studio`);

--
-- Indeks untuk tabel `jenis_film`
--
ALTER TABLE `jenis_film`
  ADD PRIMARY KEY (`id_jns`);

--
-- Indeks untuk tabel `kursi`
--
ALTER TABLE `kursi`
  ADD PRIMARY KEY (`id_kursi`),
  ADD KEY `memiliki_fk` (`id_studio`);

--
-- Indeks untuk tabel `kursi_order`
--
ALTER TABLE `kursi_order`
  ADD KEY `id_pesan` (`id_pesan`),
  ADD KEY `id_tiket` (`id_tiket`),
  ADD KEY `id_kursi` (`id_kursi`);

--
-- Indeks untuk tabel `pesan`
--
ALTER TABLE `pesan`
  ADD PRIMARY KEY (`id_pesan`),
  ADD KEY `membooking_fk` (`id_user`);

--
-- Indeks untuk tabel `studio`
--
ALTER TABLE `studio`
  ADD PRIMARY KEY (`id_studio`);

--
-- Indeks untuk tabel `temp_kursi`
--
ALTER TABLE `temp_kursi`
  ADD KEY `id_pemesanan` (`id_pemesanan`),
  ADD KEY `id_kursi` (`id_kursi`);

--
-- Indeks untuk tabel `temp_pesan`
--
ALTER TABLE `temp_pesan`
  ADD PRIMARY KEY (`id_pemesanan`),
  ADD KEY `memesan_fk` (`id_user`),
  ADD KEY `dibooking_fk` (`id_tiket`);

--
-- Indeks untuk tabel `tiket`
--
ALTER TABLE `tiket`
  ADD PRIMARY KEY (`id_tiket`),
  ADD KEY `menyediakan_fk` (`id_jadwal`);

--
-- Indeks untuk tabel `tiket_order`
--
ALTER TABLE `tiket_order`
  ADD KEY `fix_booking_fk` (`id_tiket`),
  ADD KEY `pesanan_fk` (`id_pesan`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`);

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `film`
--
ALTER TABLE `film`
  ADD CONSTRAINT `film_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `user` (`id_user`),
  ADD CONSTRAINT `film_ibfk_2` FOREIGN KEY (`id_jns`) REFERENCES `jenis_film` (`id_jns`);

--
-- Ketidakleluasaan untuk tabel `finish`
--
ALTER TABLE `finish`
  ADD CONSTRAINT `finish_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `user` (`id_user`),
  ADD CONSTRAINT `finish_ibfk_2` FOREIGN KEY (`id_pesan`) REFERENCES `pesan` (`id_pesan`),
  ADD CONSTRAINT `finish_ibfk_3` FOREIGN KEY (`id_jadwal`) REFERENCES `jadwal` (`id_jadwal`),
  ADD CONSTRAINT `finish_ibfk_4` FOREIGN KEY (`id_kursi`) REFERENCES `kursi` (`id_kursi`);

--
-- Ketidakleluasaan untuk tabel `jadwal`
--
ALTER TABLE `jadwal`
  ADD CONSTRAINT `jadwal_ibfk_1` FOREIGN KEY (`id_studio`) REFERENCES `studio` (`id_studio`),
  ADD CONSTRAINT `jadwal_ibfk_2` FOREIGN KEY (`id_film`) REFERENCES `film` (`id_film`);

--
-- Ketidakleluasaan untuk tabel `kursi`
--
ALTER TABLE `kursi`
  ADD CONSTRAINT `kursi_ibfk_1` FOREIGN KEY (`id_studio`) REFERENCES `studio` (`id_studio`);

--
-- Ketidakleluasaan untuk tabel `kursi_order`
--
ALTER TABLE `kursi_order`
  ADD CONSTRAINT `kursi_order_ibfk_1` FOREIGN KEY (`id_kursi`) REFERENCES `kursi` (`id_kursi`),
  ADD CONSTRAINT `kursi_order_ibfk_2` FOREIGN KEY (`id_pesan`) REFERENCES `pesan` (`id_pesan`),
  ADD CONSTRAINT `kursi_order_ibfk_3` FOREIGN KEY (`id_tiket`) REFERENCES `tiket` (`id_tiket`);

--
-- Ketidakleluasaan untuk tabel `pesan`
--
ALTER TABLE `pesan`
  ADD CONSTRAINT `pesan_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `user` (`id_user`);

--
-- Ketidakleluasaan untuk tabel `temp_kursi`
--
ALTER TABLE `temp_kursi`
  ADD CONSTRAINT `temp_kursi_ibfk_1` FOREIGN KEY (`id_kursi`) REFERENCES `kursi` (`id_kursi`),
  ADD CONSTRAINT `temp_kursi_ibfk_2` FOREIGN KEY (`id_pemesanan`) REFERENCES `temp_pesan` (`id_pemesanan`);

--
-- Ketidakleluasaan untuk tabel `temp_pesan`
--
ALTER TABLE `temp_pesan`
  ADD CONSTRAINT `temp_pesan_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `user` (`id_user`),
  ADD CONSTRAINT `temp_pesan_ibfk_2` FOREIGN KEY (`id_tiket`) REFERENCES `tiket` (`id_tiket`);

--
-- Ketidakleluasaan untuk tabel `tiket`
--
ALTER TABLE `tiket`
  ADD CONSTRAINT `tiket_ibfk_1` FOREIGN KEY (`id_jadwal`) REFERENCES `jadwal` (`id_jadwal`);

--
-- Ketidakleluasaan untuk tabel `tiket_order`
--
ALTER TABLE `tiket_order`
  ADD CONSTRAINT `tiket_order_ibfk_1` FOREIGN KEY (`id_pesan`) REFERENCES `pesan` (`id_pesan`),
  ADD CONSTRAINT `tiket_order_ibfk_2` FOREIGN KEY (`id_tiket`) REFERENCES `tiket` (`id_tiket`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
