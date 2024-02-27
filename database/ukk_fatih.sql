-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 27 Feb 2024 pada 05.58
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
-- Database: `ukk_fatih`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `buku`
--

CREATE TABLE `buku` (
  `cover` varchar(255) NOT NULL,
  `id_buku` varchar(25) NOT NULL,
  `kategori` varchar(255) NOT NULL,
  `judul` varchar(255) NOT NULL,
  `pengarang` varchar(255) NOT NULL,
  `penerbit` varchar(255) NOT NULL,
  `thn_terbit` date NOT NULL,
  `jml_halaman` int(11) NOT NULL,
  `deskripsi` text NOT NULL,
  `isi_buku` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `buku`
--

INSERT INTO `buku` (`cover`, `id_buku`, `kategori`, `judul`, `pengarang`, `penerbit`, `thn_terbit`, `jml_halaman`, `deskripsi`, `isi_buku`) VALUES
('65d741ce4fcc1.jpg', 'KB0001', 'Novel', 'Sejarah Dunia Yang di Sembunyikan', 'Jonathan Black', 'Gramedia Pustaka Utama', '2015-05-14', 636, 'Buku Sejarah Dunia Yang Disembunyikan yang ditulis oleh Jonathan Black merupakan buku yang mengungkapkan tentang keraguan dan kepercayaan kita akan sejarah mitologi Yunani dan Mesir Kuno serta cerita rakyat Yahudi yang tidak dapat kita lihat langsung kebenarannya. Buku ini ditulis dengan tujuan memberitahu pembaca tentang fakta dasar sejarah yang berbeda dari yang kita tahu. Pembaca akan mendapatkan pengetahuan baru dan lebih tercerahkan akan wawasan sejarah dunia.', 'Sejarah Dunia yang Disembunyikan (Jonathan Black).pdf'),
('65da1aaa92d34.jpg', 'KB0003', 'Komik', 'si Juki : Strip', 'Faza Meonk', 'Gramedia', '2014-10-12', 164, 'Si Juki adalah komik Webtoon Indonesia pertama yang diterbitkan dalam format cetak karya anak bangsa Faza Ibnu Ubaidillah atau yang akrab disapa Faza Meonk.\r\n\r\nBuku ini merupakan komik yang mengisahkan perjalanan berkarya komikus dan Juki sebagai tokoh utama komiknya dari tahun 2012 hingga 2014. Dalam membuat komik, Faza Meonk sebagai komikus mengambil ide cerita dari isu-isu yang hangat dibicarakan atau bahasa gaulnya ngetrend. Ia tak hanya ingin membuat komik untuk tujuan lucu-lucuan, tapi juga ingin menyampaikan pesan untuk anak muda mengenai isu-isu sosial dengan gaya sarkasme yang ringan tak seberat isu politik.\r\n\r\nJuki, karakter komik yang mengaku anti mainstream dan merasa ngetop, memulai karirnya dari ‘bawah’. Awalnya, dia sekadar tampil sebagai cameo di komik-komik online karya Faza Meonk. Namun, karakternya yang lucu, ngeselin, cuek, dan banyak hoki itu membuat Juki semakin dikenal dan disukai pembacanya.\r\n\r\nDalam komik ini terangkum perjalanan si juki sang aktor komik. Mulai dari digambar asal-asalan dan tidak bernama, kritik kocak dan kritisnya pada sekitar, memenangi penghargaan, sampai nekat mencalonkan diri menjadi presiden.\r\n\r\nYuk, ikuti dan tertawa bersama rekaman perjalanan Juki. Huwala!', 'Si Juki Komik Strip (Faza Meonk) .pdf'),
('65da1b610a98e.jpg', 'KB0004', 'Dongeng', 'Timun Emas', 'Dede Firmansyah', 'Happy Holy Kidsa', '2014-05-30', 30, 'CERITA TIMUN MAS INI MENGAJARKAN KEPADA ANAK-ANAK TENTANG DUA HAL: PERTAMA, SEKALIPUN TANTANGAN YANG BESAR MENGHADANG, JANGAN PUTUS ASA DAN MENYERAH. KEDUA, KALAU PUNYA KUASA DAN KEKUATAN JANGAN BERLAKU SOMBONG DAN BERTINDAK SEWENANG-WENANG KEPADA MEREKA YANG LEMAH.', 'Timun emas.pdf'),
('65dd6bbd318b1.jpg', 'KB0005', 'Dongeng', 'Kalah oleh si cerdik', 'Atisah', 'Gramedia', '2012-05-06', 136, 'Kamu pernah mendapatkan keberuntungan yang tidak pernah kamu duga? Misalnya, tiba-tiba kamu mendapat hadiah uang yang sangat banyak. Jika pernah, pasti kamu bingung dan terkejut karena tidak siap menerimanya. Si Cerdik Labedu juga mengalami hal yang serupa. Berkat kecerdikannya, dia mendapatkan hadiah yang benar-benar mengejutkan. Memangnya Labedu itu secerdik apa, sih? Terus, hadiah apa yang didapat Labedu? Kamu pasti tidak akan pernah menyangka, sama seperti Labedu\r\n', 'Kalah oleh Si Cerdik.pdf');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kategori_buku`
--

CREATE TABLE `kategori_buku` (
  `kategori` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `kategori_buku`
--

INSERT INTO `kategori_buku` (`kategori`) VALUES
('Dongeng'),
('Filsafat'),
('Kamus'),
('Komik'),
('Light Novel (Novel Ringan)'),
('Majalah'),
('Manga'),
('Novel');

-- --------------------------------------------------------

--
-- Struktur dari tabel `member`
--

CREATE TABLE `member` (
  `nisn` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `kelas` varchar(50) NOT NULL,
  `jurusan` varchar(50) NOT NULL,
  `alamat` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `member`
--

INSERT INTO `member` (`nisn`, `nama`, `password`, `kelas`, `jurusan`, `alamat`) VALUES
(123, 'fatih', '123', '12', 'Rekayasa Perangkat Lunak', 'Depok');

-- --------------------------------------------------------

--
-- Struktur dari tabel `peminjaman`
--

CREATE TABLE `peminjaman` (
  `id` int(11) NOT NULL,
  `id_buku` varchar(20) NOT NULL,
  `nisn` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `tgl_pinjam` date NOT NULL,
  `tgl_kembali` date NOT NULL,
  `harga` varchar(255) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `no_telp` varchar(50) NOT NULL,
  `sebagai` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id`, `username`, `password`, `nama`, `no_telp`, `sebagai`) VALUES
(44, 'fatih', '123', 'fatih', '085692569477', 'admin'),
(45, 'MFH', '123', 'Fatih', '081519561600', 'petugas');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `buku`
--
ALTER TABLE `buku`
  ADD PRIMARY KEY (`id_buku`),
  ADD KEY `kategori` (`kategori`);

--
-- Indeks untuk tabel `kategori_buku`
--
ALTER TABLE `kategori_buku`
  ADD PRIMARY KEY (`kategori`);

--
-- Indeks untuk tabel `member`
--
ALTER TABLE `member`
  ADD PRIMARY KEY (`nisn`);

--
-- Indeks untuk tabel `peminjaman`
--
ALTER TABLE `peminjaman`
  ADD PRIMARY KEY (`id`),
  ADD KEY `nis` (`nisn`),
  ADD KEY `id_buku` (`id_buku`),
  ADD KEY `id_user` (`id_user`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `member`
--
ALTER TABLE `member`
  MODIFY `nisn` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12346;

--
-- AUTO_INCREMENT untuk tabel `peminjaman`
--
ALTER TABLE `peminjaman`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `buku`
--
ALTER TABLE `buku`
  ADD CONSTRAINT `buku_ibfk_1` FOREIGN KEY (`kategori`) REFERENCES `kategori_buku` (`kategori`);

--
-- Ketidakleluasaan untuk tabel `peminjaman`
--
ALTER TABLE `peminjaman`
  ADD CONSTRAINT `peminjaman_ibfk_1` FOREIGN KEY (`nisn`) REFERENCES `member` (`nisn`),
  ADD CONSTRAINT `peminjaman_ibfk_3` FOREIGN KEY (`id_user`) REFERENCES `user` (`id`),
  ADD CONSTRAINT `peminjaman_ibfk_4` FOREIGN KEY (`id_buku`) REFERENCES `buku` (`id_buku`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
