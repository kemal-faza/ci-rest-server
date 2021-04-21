-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 18 Apr 2021 pada 05.38
-- Versi server: 10.4.17-MariaDB
-- Versi PHP: 8.0.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tugas`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `kelas9`
--

CREATE TABLE `kelas9` (
  `id` int(11) NOT NULL,
  `tugas` varchar(100) DEFAULT NULL,
  `mataPelajaran` varchar(100) DEFAULT NULL,
  `namaGuru` varchar(100) DEFAULT NULL,
  `pengumpulanVia` varchar(100) DEFAULT NULL,
  `selesai` varchar(10) DEFAULT NULL,
  `semester` int(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `kelas9`
--

INSERT INTO `kelas9` (`id`, `tugas`, `mataPelajaran`, `namaGuru`, `pengumpulanVia`, `selesai`, `semester`) VALUES
(1, 'Menghapal An-Nazi\'at Ayat 1-10', 'Prakarya', 'Ramnah, S.Pd.I', 'Chat WhatsApp', 'Ya', 2),
(2, 'Membuat Teks Narasi', 'Bahasa Indonesia', 'Siti Muslimah, S.Pd', 'Google Classroom', 'Ya', 2),
(3, 'Menghapal An-Nazi\'at Ayat 11-20', 'Prakarya', 'Ramnah, S.Pd.I', 'Chat WhatsApp', 'Ya', 2),
(4, 'Menyusun Gambar Berdasarkan Narrative Text &amp; Menjawab Pertanyaan', 'Bahasa Inggris', 'Kiswariah, M.Pd', 'Google Classroom', 'Ya', 2),
(5, 'Menjawab Pertanyaan', 'Fikih', 'Hj. Siti Khalimah, S.Pd.I, MA', 'Chat WhatsApp', 'Ya', 2),
(6, 'Merangkum Materi Bab 4', 'PKN', 'Refelia, S.Pd', 'Chat WhatsApp', 'Ya', 2),
(7, 'Menjawab Pertanyaan', 'Bahasa Indonesia', 'Siti Muslimah, S.Pd', 'Google Form', 'Ya', 2),
(8, 'Latihan Soal', 'Matematika', 'Awan Winanto, S.Pd', 'Google Classroom', 'Ya', 2),
(9, 'Memberi Kesimpulan Dari Materi yang Diberikan', 'Seni Budaya', 'Annisa Rusida Fitriani, S.Pd', 'Google Form', 'Ya', 2),
(10, 'Menerjemahkan Bacaan Bab 3', 'Bahasa Arab', 'Nurhasanah, S.Pd.I', 'Google Classroom', 'Ya', 2),
(11, 'Menjawab Soal Halaman 113 No. 1-10', 'Akidah Akhlak', 'Dra. Norhasanah', 'Chat WhatsApp', 'Ya', 2),
(12, 'Menjawab Pertanyaan', 'IPS', 'Dewi Yana, S.Pd', 'Google Classroom', 'Ya', 2),
(13, 'Menjawab Pertanyaan Dari Google Meet', 'Fikih', 'Hj. Siti Khalimah, S.Pd.I, MA', 'Google Form', 'Ya', 2),
(14, 'Menghapal An-Nazi\'at Ayat 21-30', 'Prakarya', 'Ramnah, S.Pd.I', 'Chat WhatsApp', 'Ya', 2),
(15, 'Menjawab Pertanyaan Dari Teks Narasi', 'Bahasa Inggris', 'Kiswariah, M.Pd', 'Google Classroom', 'Ya', 2),
(16, 'Menjawab Pertanyaan Tentang K.H. Hasyim Asy\'ari', 'SKI', 'Dra. Hj. Ulpah Hudaya', 'Google Classroom', 'Ya', 2),
(17, 'Menjawab Kuis Seni Grafis', 'Seni Budaya', 'Annisa Rusida Fitriani, S.Pd', 'Google Form', 'Ya', 2),
(18, 'Soal Segitiga Yang Sebangun', 'Matematika', 'Awan Winanto, S.Pd', 'Google Classroom', 'Ya', 2),
(19, 'Menejermahkan Soal Latihan Bab 3', 'Bahasa Arab', 'Nurhasanah, S.Pd.I', 'Google Classroom', 'Ya', 2),
(20, 'Menjawab Soal', 'IPS', 'Dewi Yana, S.Pd', 'Google Classroom', 'Ya', 2),
(21, 'Mencari Contoh Report Text', 'Bahasa Inggris', 'Kiswariah, M.Pd', 'Google Classroom', 'Ya', 2),
(22, 'Penilaian Harian', 'Bahasa Indonesia', 'Siti Muslimah, S.Pd', 'Google Form', 'Ya', 2),
(23, 'Menjawab Pertanyaan', 'Quran Hadits', 'Hj. Mursidah, S.Pd.I', 'Google Classroom', 'Ya', 2),
(24, 'Soal Kekongruenan Pada Segitiga', 'Matematika', 'Awan Winanto, S.Pd', 'Google Classroom', 'Ya', 2),
(25, 'Menjawab Soal Bab 3', 'Bahasa Arab', 'Nurhasanah, S.Pd.I', 'Google Classroom', 'Ya', 2),
(26, 'Ulangan Harian Bab 5', 'Akidah Akhlak', 'Dra. Norhasanah', 'Google Classroom', 'Ya', 2),
(27, 'Menjawab Pertanyaan Tentang Kemagnetan Dan Bioteknologi', 'IPA', 'Isnawati, S.Pd', 'Google Classroom', 'Ya', 2),
(28, 'Menghapal An-Nazi\'at Ayat 31-46', 'Prakarya', 'Ramnah, S.Pd.I', 'Chat WhatsApp', 'Ya', 2),
(29, 'Menjawab Pertanyaan Dari Report Text', 'Bahasa Inggris', 'Kiswariah, M.Pd', 'Google Classroom', 'Ya', 2),
(30, 'Ulangan Harian 1', 'Fikih', 'Hj. Siti Khalimah, S.Pd.I, MA', 'Google Form', 'Ya', 2),
(31, 'Menjawab Pertanyaan Tentang K.H.Ahmad Dahlan', 'SKI', 'Dra. Hj. Ulpah Hudaya', 'Google Classroom', 'Ya', 2),
(32, 'Penilaian Harian Matematika Bab Kesebangunan Dan Kekongruenan', 'Matematika', 'Awan Winanto, S.Pd', 'Google Form', 'Ya', 2),
(33, 'Menyimpulkan Dan Memberi Komentar Terkait Materi Lagu Modern', 'Seni Budaya', 'Annisa Rusida Fitriani, S.Pd', 'Google Form', 'Ya', 2),
(34, 'Merangkum Materi Bab 6 Tentang Remaja', 'Akidah Akhlak', 'Dra. Norhasanah', 'Google Classroom', 'Ya', 2),
(35, 'Merangkum Materi Bab 3', 'Bahasa Arab', 'Nurhasanah, S.Pd.I', 'Google Classroom', 'Ya', 2),
(36, 'Menjawab Soal Tentang Pengurusan Jenazah', 'Fikih', 'Hj. Siti Khalimah, S.Pd.I, MA', 'Google Form', 'Ya', 2),
(37, 'Menjawab Soal Materi Teks Inspirasi', 'Bahasa Indonesia', 'Siti Muslimah, S.Pd', 'Google Form', 'Ya', 2),
(38, 'Mencari Inti Dari Kandungan Surah \'Abasa', 'Quran Hadits', 'Hj. Mursidah, S.Pd.I', 'Google Classroom', 'Ya', 2),
(39, 'Mengerjakan Latihan Materi Bangun Sisi Ruang Lengkung (Tabung)', 'Matematika', 'Awan Winanto, S.Pd', 'Google Form', 'Ya', 2),
(40, 'Menjawab Soal Tentang Seni Musik Modern', 'Seni Budaya', 'Annisa Rusida Fitriani, S.Pd', 'Google Form', 'Ya', 2),
(41, 'Mengerjakan Soal Pilihan Ganda Tentang Perdagangan Bebas', 'IPS', 'Dewi Yana, S.Pd', 'Google Classroom', 'Ya', 2),
(42, 'Mencari Lirik-lirik Lagu Yang Hilang', 'Bahasa Inggris', 'Kiswariah, M.Pd', 'Google Classroom', 'Ya', 2),
(43, 'Menjawab Soal Tentang Perawatan Jenazah', 'Fikih', 'Hj. Siti Khalimah, S.Pd.I, MA', 'Google Form', 'Ya', 2),
(44, 'Ulangan Harian Tentang Surah An-Nazi\'at', 'Prakarya', 'Ramnah, S.Pd.I', 'Chat WhatsApp', 'Ya', 2),
(45, 'Membaca Materi &amp; Menjawab Soal Tentang Permasalahan Keberagaman Masyarakat Indonesia', 'PKN', 'Refelia, S.Pd', 'Google Form', 'Ya', 2),
(46, 'Menulis Teks Inspirasi', 'Bahasa Indonesia', 'Siti Muslimah, S.Pd', 'Google Classroom', 'Ya', 2),
(47, 'Mengerjakan Latihan Materi Bangun Sisi Ruang Lengkung (Kerucut)', 'Matematika', 'Awan Winanto, S.Pd', 'Google Form', 'Ya', 2),
(48, 'Menerjemahkan Percakapan Bab 3', 'Bahasa Arab', 'Nurhasanah, S.Pd.I', 'Google Classroom', 'Ya', 2),
(49, 'Menjawab Piihan Ganda Materi Masa Awal Kemerdekaan Indonesia', 'IPS', 'Dewi Yana, S.Pd', 'Google Classroom', 'Ya', 2),
(50, 'Menjawab Soal Tentang Magnet dan Bioteknologi', 'IPA', 'Isnawati, S.Pd', 'Google Form', 'Ya', 2),
(51, 'Melengkapi Kalimat Tentang Penggunaan Like dan To Be Like', 'Bahasa Inggris', 'Kiswariah, M.Pd', 'Google Classroom', 'Ya', 2),
(52, 'Menghapal Surah An-Naba Ayat 1-10', 'Prakarya', 'Ramnah, S.Pd.I', 'Chat WhatsApp', 'Ya', 2),
(53, 'Menjawab Pertanyaan Tentang Seni Budaya Lokal Nusantara', 'SKI', 'Dra. Hj. Ulpah Hudaya', 'Google Classroom', 'Ya', 2),
(54, 'Latihan Soal Bab 2', 'PKN', 'Refelia, S.Pd', 'Google Form', 'Ya', 2),
(55, 'Penilaian Harian Materi Teks Inspirasi', 'Bahasa Indonesia', 'Siti Muslimah, S.Pd', 'Google Form', 'Ya', 2),
(56, 'Menghapal Surah Abasa 1-10 Beserta Artinya', 'Quran Hadits', 'Hj. Mursidah, S.Pd.I', 'Google Classroom', 'Ya', 2),
(57, 'Menghapal Surah Al-Mujadalah Ayat 1-22 Beserta Artinya', 'Quran Hadits', 'Hj. Mursidah, S.Pd.I', 'Google Classroom', 'Ya', 2),
(58, 'Menulis Hasil Analisis Pagelaran Tari', 'Seni Budaya', 'Annisa Rusida Fitriani, S.Pd', 'Google Form', 'Ya', 2),
(59, 'Membuat Video Hasil Tugas Praktik', 'Seni Budaya', 'Annisa Rusida Fitriani, S.Pd', 'Google Classroom', 'Ya', 2),
(60, 'Menulis Fi\'il Mudhari Yang Dalam Tabel', 'Bahasa Arab', 'Nurhasanah, S.Pd.I', 'Google Classroom', 'Ya', 2),
(61, 'Ulangan Harian Bab 6', 'Akidah Akhlak', 'Dra. Norhasanah', 'Google Form', 'Ya', 2),
(63, 'Membaca Terjemahan Surah An-Nazi\'at', 'Prakarya', 'Ramnah, S.Pd.I', 'Chat WhatsApp', 'Ya', 2),
(64, 'Penilaian Tengah Semester 2', 'Bahasa Inggris', 'Kiswariah, M.Pd', 'Google Classroom', 'Ya', 2),
(65, 'Penilaian Tengah Semester Genap', 'PKN', 'Refelia, S.Pd', 'Google Form', 'Ya', 2),
(66, 'Penilaian Tengah Semester Genap', 'Bahasa Indonesia', 'Siti Muslimah, S.Pd', 'Google Form', 'Ya', 2),
(67, 'Penilaian Tengah Semester Genap', 'Quran Hadits', 'Hj. Mursidah, S.Pd.I', 'Google Form', 'Ya', 2),
(68, 'Penilaian Tengah Semester Genap', 'Matematika', 'Awan Winanto, S.Pd', 'Google Form', 'Ya', 2),
(69, 'Penilaian Tengah Semester Genap', 'Seni Budaya', 'Annisa Rusida Fitriani, S.Pd', 'Google Form', 'Ya', 2),
(70, 'Penilaian Tengah Semester Genap', 'Bahasa Arab', 'Nurhasanah, S.Pd.I', 'Google Form', 'Ya', 2),
(71, 'Penilaian Tengah Semester Genap', 'Akidah Akhlak', 'Dra. Norhasanah', 'Google Form', 'Ya', 2),
(72, 'Penilaian Tengah Semester Genap', 'IPA', 'Isnawati, S.Pd', 'Google Form', 'Ya', 2),
(73, 'Penilaian Tengah Semester Genap', 'IPS', 'Dewi Yana, S.Pd', 'Google Form', 'Ya', 2),
(74, 'Penialaian Tengah Semester Genap', 'Prakarya', 'Ramnah, S.Pd.I', 'Google Form', 'Ya', 2),
(75, 'Penilaian Tengah Semester Genap', 'Fikih', 'Hj. Siti Khalimah, S.Pd.I, MA', 'Google Form', 'Ya', 2),
(76, 'Mengidentifikasi Pesan Dari Lirik Lagu', 'Bahasa Inggris', 'Kiswariah, M.Pd', 'Google Classroom', 'Ya', 2),
(77, 'Penilaian Tengah Semester Genap', 'SKI', 'Dra. Hj. Ulpah Hudaya', 'Google Form', 'Ya', 2),
(78, 'Menghapal Hadits Beserta Terjemahannya Bab 6', 'Akidah Akhlak', 'Hj. Mursidah, S.Pd.I', 'Google Classroom', 'Ya', 2),
(79, 'Menerjemahkan Qiraah Bab 4', 'Bahasa Arab', 'Nurhasanah, S.Pd.I', 'Google Classroom', 'Ya', 2),
(80, 'Menjawab Pertanyaan Tentang Bela Negara', 'PKN', 'Refelia, S.Pd', 'Chat WhatsApp', 'Ya', 2),
(81, 'Membuat Rangkuman Buku Fiksi dan Non Fiksi', 'Bahasa Indonesia', 'Siti Muslimah, S.Pd', 'Google Classroom', 'Ya', 2),
(82, 'Menulis Hadits Beserta Terjemahnya dan Menjelaskan Isi Kandungannya Bab 6', 'Akidah Akhlak', 'Hj. Mursidah, S.Pd.I', 'Google Classroom', 'Ya', 2),
(83, 'Tugas Pendalaman Materi Bangun Ruang Sisi Lengkung', 'Matematika', 'Awan Winanto, S.Pd', 'Google Form', 'Ya', 2),
(85, 'Penilaian Harian 3', 'Seni Budaya', 'Annisa Rusida Fitriani, S.Pd', 'Google Form', 'Ya', 2),
(86, 'Menjawab Soal Bab 4', 'Bahasa Arab', 'Nurhasanah, S.Pd.I', 'Google Classroom', 'Ya', 2),
(87, 'Menjawab Pertanyaan Tentang Khalifah Utsman bin Affan dan Ali bin Abi Thalib', 'Akidah Akhlak', 'Dra. Norhasanah', 'Google Classroom', 'Ya', 2),
(88, 'Menghapal Surah An-Naba\' Ayat 11-20', 'Prakarya', 'Ramnah, S.Pd.I', 'Chat WhatsApp', 'Ya', 2),
(89, 'Menghapal Surah An-Naba\' Ayat 21-30', 'Prakarya', 'Ramnah, S.Pd.I', 'Chat WhatsApp', 'Ya', 2),
(90, 'Penilaian Harian 4', 'Seni Budaya', 'Annisa Rusida Fitriani, S.Pd', 'Google Form', 'Ya', 2);

-- --------------------------------------------------------

--
-- Struktur dari tabel `keys`
--

CREATE TABLE `keys` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `key` varchar(40) NOT NULL,
  `level` int(2) NOT NULL,
  `ignore_limits` tinyint(1) NOT NULL DEFAULT 0,
  `is_private_key` tinyint(1) NOT NULL DEFAULT 0,
  `ip_addresses` text DEFAULT NULL,
  `date_created` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `kelas9`
--
ALTER TABLE `kelas9`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `keys`
--
ALTER TABLE `keys`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `kelas9`
--
ALTER TABLE `kelas9`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=91;

--
-- AUTO_INCREMENT untuk tabel `keys`
--
ALTER TABLE `keys`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
