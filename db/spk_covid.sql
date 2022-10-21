-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 28 Nov 2021 pada 18.39
-- Versi server: 10.1.37-MariaDB
-- Versi PHP: 5.6.40

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `spk_covid`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `admin`
--

CREATE TABLE `admin` (
  `username` varchar(20) NOT NULL,
  `password` varchar(32) NOT NULL,
  `nama_lengkap` varchar(30) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `admin`
--

INSERT INTO `admin` (`username`, `password`, `nama_lengkap`) VALUES
('admin', '21232f297a57a5a743894a0e4a801fc3', 'Administrator');

-- --------------------------------------------------------

--
-- Struktur dari tabel `basis_pengetahuan`
--

CREATE TABLE `basis_pengetahuan` (
  `kode_pengetahuan` int(11) NOT NULL,
  `kode_penyakit` int(11) NOT NULL,
  `kode_gejala` int(11) NOT NULL,
  `mb` double(11,1) NOT NULL,
  `md` double(11,1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `basis_pengetahuan`
--

INSERT INTO `basis_pengetahuan` (`kode_pengetahuan`, `kode_penyakit`, `kode_gejala`, `mb`, `md`) VALUES
(2, 1, 61, 0.8, 0.2),
(3, 1, 70, 0.6, 0.2),
(4, 1, 65, 1.0, 0.0),
(5, 2, 62, 0.4, 0.2),
(6, 2, 61, 0.6, 0.2),
(7, 2, 72, 0.4, 0.2),
(8, 2, 68, 0.8, 0.2),
(9, 3, 62, 0.6, 0.2),
(10, 3, 67, 1.0, 0.0),
(11, 3, 72, 0.6, 0.2),
(12, 3, 60, 1.0, 0.0),
(106, 2, 69, 0.6, 0.2),
(103, 3, 64, 0.6, 0.4),
(104, 3, 71, 0.8, 0.2),
(105, 1, 64, 0.6, 0.2),
(107, 2, 64, 0.4, 0.2);

-- --------------------------------------------------------

--
-- Struktur dari tabel `gejala`
--

CREATE TABLE `gejala` (
  `kode_gejala` int(11) NOT NULL,
  `nama_gejala` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `gejala`
--

INSERT INTO `gejala` (`kode_gejala`, `nama_gejala`) VALUES
(72, 'Sesak Napas'),
(71, 'Sakit Tenggorokan'),
(70, 'Sakit Kepala'),
(69, 'Muntah'),
(68, 'Mual'),
(67, 'Hidung Tersumbat'),
(66, 'Menggigil'),
(65, 'Pegal-pegal'),
(64, 'Diare'),
(62, 'Batuk'),
(63, 'Pilek'),
(61, 'Demam'),
(60, 'Kehilangan perasa atau penciuman (anosmia).');

-- --------------------------------------------------------

--
-- Struktur dari tabel `hasil`
--

CREATE TABLE `hasil` (
  `id_hasil` int(11) NOT NULL,
  `tanggal` varchar(50) NOT NULL DEFAULT '0',
  `penyakit` text NOT NULL,
  `gejala` text NOT NULL,
  `hasil_id` int(11) NOT NULL,
  `hasil_nilai` varchar(16) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `hasil`
--

INSERT INTO `hasil` (`id_hasil`, `tanggal`, `penyakit`, `gejala`, `hasil_id`, `hasil_nilai`) VALUES
(290, '2021-11-28 21:09:31', 'a:3:{i:1;s:6:\"0.7453\";i:3;s:6:\"0.7200\";i:2;s:6:\"0.5007\";}', 'a:13:{i:60;s:1:\"1\";i:61;s:1:\"2\";i:62;s:1:\"4\";i:63;s:1:\"1\";i:64;s:1:\"5\";i:65;s:1:\"3\";i:66;s:1:\"5\";i:67;s:1:\"4\";i:68;s:1:\"2\";i:69;s:1:\"6\";i:70;s:1:\"4\";i:71;s:1:\"6\";i:72;s:1:\"4\";}', 1, '0.7453'),
(285, '2021-11-12 07:05:39', 'a:2:{i:3;s:6:\"1.0000\";i:1;s:6:\"0.6000\";}', 'a:4:{i:60;s:1:\"1\";i:61;s:1:\"1\";i:62;s:1:\"1\";i:71;s:1:\"1\";}', 3, '1.0000'),
(286, '2021-11-12 07:07:39', 'a:2:{i:3;s:6:\"0.9140\";i:1;s:6:\"0.4800\";}', 'a:5:{i:60;s:1:\"3\";i:61;s:1:\"2\";i:62;s:1:\"4\";i:67;s:1:\"3\";i:71;s:1:\"3\";}', 3, '0.9140'),
(287, '2021-11-12 07:08:35', 'a:2:{i:1;s:6:\"1.0000\";i:3;s:6:\"0.1200\";}', 'a:4:{i:61;s:1:\"1\";i:64;s:1:\"3\";i:65;s:1:\"1\";i:70;s:1:\"4\";}', 1, '1.0000'),
(288, '2021-11-12 07:22:16', 'a:3:{i:3;s:6:\"0.7280\";i:1;s:6:\"0.4800\";i:2;s:6:\"0.4288\";}', 'a:4:{i:60;s:1:\"3\";i:61;s:1:\"2\";i:62;s:1:\"2\";i:63;s:1:\"4\";}', 3, '0.7280'),
(289, '2021-11-12 10:15:49', 'a:3:{i:3;s:6:\"0.9600\";i:1;s:6:\"0.7680\";i:2;s:6:\"0.2544\";}', 'a:7:{i:60;s:1:\"1\";i:61;s:1:\"4\";i:62;s:1:\"2\";i:63;s:1:\"1\";i:64;s:1:\"5\";i:65;s:1:\"2\";i:66;s:1:\"2\";}', 3, '0.9600');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kondisi`
--

CREATE TABLE `kondisi` (
  `id` int(11) NOT NULL,
  `kondisi` varchar(64) NOT NULL,
  `ket` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `kondisi`
--

INSERT INTO `kondisi` (`id`, `kondisi`, `ket`) VALUES
(1, 'Pasti ya', ''),
(2, 'Hampir pasti ya', ''),
(3, 'Kemungkinan besar ya', ''),
(4, 'Mungkin ya', ''),
(5, 'Tidak tahu', ''),
(6, 'Mungkin tidak', ''),
(7, 'Kemungkinan besar tidak', ''),
(8, 'Hampir pasti tidak', ''),
(9, 'Pasti tidak', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `penyakit`
--

CREATE TABLE `penyakit` (
  `kode_penyakit` int(11) NOT NULL,
  `nama_penyakit` varchar(50) NOT NULL,
  `det_penyakit` varchar(500) NOT NULL,
  `srn_penyakit` varchar(500) NOT NULL,
  `gambar` varchar(500) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `penyakit`
--

INSERT INTO `penyakit` (`kode_penyakit`, `nama_penyakit`, `det_penyakit`, `srn_penyakit`, `gambar`) VALUES
(1, 'SARS', 'SARS disebabkan oleh salah satu jenis coronavirus yang dikenal dengan SARS-associated coronavirus (SARS-CoV). Coronavirus merupakan kelompok virus yang bisa menginfeksi saluran pernapasan. Saat terinfeksi virus ini, biasanya akan terjadi gangguan pernapasan mulai dari ringan sampai berat.', 'Obat untuk meredakan gejala, seperti obat analgetik-antipiretik, obat batuk, dan obat untuk meredakan sesak napas\r\nObat antivirus untuk menghambat perkembangan virus, seperti lopinavir, ritonavir, atau remdesivir\r\nObat antibiotik untuk mengatasi infeksi bakteri yang terjadi saat penderita SARS mengalami pneumonia\r\nObat kortikosteroid dosis tinggi untuk mengurangi pembengkakan di paru-paru', 'noimage.png'),
(2, 'MERS', 'Middle East Respiratory Syndrome (MERS) adalah suatu subtipe baru dari virus corona yang belum pernah ditemukan menginfeksi manusia sebelumnya. Virus corona merupakan keluarga besar dari virus yang dapat menimbulkan kesakitan maupun kematian pada manusia dan hewan. Virus corona dapat menimbulkan kesakitan pada manusia dengan gejala ringan sampai berat seperti selesma (common cold), Sindroma Saluran Pernapasan Akut yang berat (SARS/ Severe Acute Respiratory Syndrome).', 'Pemberian aliran oksigen dengan konsentrasi tinggi\r\nPemberian ventilasi mekanik\r\nTindakan intubasi endotrakeal\r\nUntuk pasien ARDS, menggunakan strategi Lung Protective Strategy Ventilation (LPV)', 'noimage.png'),
(3, 'Covid-19', 'COVID-19 (coronavirus disease 2019) adalah penyakit baru yang disebabkan oleh virus dari golongan Coronavirus, yaitu SARS-CoV-2 yang juga sering disebut virus Corona.', 'Lakukan isolasi mandiri selama 2 minggu dengan tidak keluar rumah dan menjaga jarak dengan orang dalam satu rumah.\r\nSelalu gunakan masker jika keluar rumah atau saat akan berinteraksi dengan anggota keluarga.\r\nTerapkan etika batuk.\r\nUkur suhu tubuh 2 kali sehari, pagi dan malam hari.\r\nCuci tangan dengan sabun, air mengalir, atau hand sanitizer.\r\nBanyak minum air putih untuk menjaga kadar cairan tubuh.\r\nIstirahat yang cukup untuk mempercepat proses penyembuhan.\r\nKonsumsi obat pereda batuk, demam,', 'noimage.png');

-- --------------------------------------------------------

--
-- Struktur dari tabel `post`
--

CREATE TABLE `post` (
  `kode_post` int(11) NOT NULL,
  `nama_post` varchar(50) NOT NULL,
  `det_post` varchar(15000) NOT NULL,
  `srn_post` varchar(15000) NOT NULL,
  `gambar` varchar(500) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `post`
--

INSERT INTO `post` (`kode_post`, `nama_post`, `det_post`, `srn_post`, `gambar`) VALUES
(27, 'SARS', '<p>Severe&nbsp;acute&nbsp;respiratory&nbsp;syndrome atau SARS adalah infeksi saluran pernapasan yang disebabkan oleh&nbsp;<em>SARS-associated coronavirus</em>&nbsp;(SARS-CoV). Gejala awalnya mirip dengan influenza, namun dapat memburuk dengan cepat.</p>\r\n', '<p><strong>Pencegahan SARS</strong></p>\r\n\r\n<p>Vaksin untuk penyakit SARS belum ditemukan, oleh karena itu hindari berkunjung ke negara yang sedang terjangkit SARS, gunakan masker saat bepergian atau menjenguk pasien di RS, hal ini dapat membantu mengurangi penyebaran melalui udara, melalui percikan dan kontak langsung.</p>\r\n', 'noimage.png'),
(28, 'MERS', '<p><em>Middle East Respiratory Syndrome</em>&nbsp;<em>Coronavirus</em>&nbsp;(MERS CoV)&nbsp;adalah penyakit saluran pernapasan yang disebabkan oleh coronavirus. Penyakit ini menular dari unta ke manusia, serta dari manusia ke manusia.</p>\r\n', '<p>Sampai saat ini, belum ada metode maupun vaksin untuk mengobati dan mencegah MERS CoV. Bagi pasien dengan gejala ringan, dokter akan meresepkan obat untuk meredakan demam dan nyeri. Dokter juga akan menyarankan pasien beristirahat di rumah dan sebisa mungkin menghindari kontak dengan orang lain untuk mencegah penyebaran virus.</p>\r\n\r\n<p>Bagi pasien yang mengalami gejala berat, diperlukan penanganan intensif di rumah sakit. Pasien akan diberikan oksigen, antibiotik, dan infus. Bila perlu, dokter akan memonitor fungsi organ tubuh secara intensif dan memasangkan&nbsp;alat bantu napas.</p>\r\n\r\n<p>Meski belum ada vaksin untuk mencegah MERS CoV, risiko tertular virus ini dapat dikurangi dengan melakukan beberapa langkah berikut:</p>\r\n\r\n<ul>\r\n	<li>Rutin mencuci tangan&nbsp;dengan air dan sabun, terutama sebelum makan atau sebelum menyentuh wajah. Bila tidak ada sabun, gunakan&nbsp;<em>hand sanitizer</em></li>\r\n	<li>Menutup hidung dan mulut dengan tisu ketika bersin atau batuk, lalu buang tisu tadi ke tempat sampah</li>\r\n	<li>Membersihkan dan mensterilkan benda yang sering disentuh banyak orang, seperti pegangan pintu</li>\r\n	<li>Menghindari kontak dengan seseorang yang sedang sakit, termasuk berbagi pakai alat makan</li>\r\n	<li>Menghindari kontak dengan unta yang sedang sakit, dan jangan pula memakan daging serta meminum susunya</li>\r\n</ul>\r\n', 'noimage.png'),
(29, 'COVID-19', '<p>COVID-19 adalah penyakit&nbsp;akibat infeksi&nbsp;virus&nbsp;<em>s</em><em>evere&nbsp;</em><em>a</em><em>cute&nbsp;</em><em>r</em><em>espiratory&nbsp;</em><em>s</em><em>yndrome&nbsp;</em><em>c</em><em>oronavirus 2</em>&nbsp;(SARS-CoV-2).&nbsp;COVID-19&nbsp;dapat menyebabkan gangguan sistem pernapasan,&nbsp;mulai dari gejala yang ringan seperti flu, hingga infeksi paru-paru, seperti&nbsp;pneumonia.</p>\r\n', '<p>Sampai saat ini, belum ada obat yang secara pasti dapat mengatasi penyakit COVID-19. Jika Anda didiagnosis COVID-19 tetapi tidak mengalami gejala atau hanya mengalami gejala ringan, Anda cukup melakukan perawatan atau isolasi mandiri di rumah.</p>\r\n\r\n<p>Ruangan isolasi harus memiliki ventilasi dan cahaya yang baik serta pertukaran udara yang cukup. Selain itu, ruangan isolasi juga wajib dibersihkan setiap hari dengan air sabun atau desinfektan. Selama isolasi mandiri, perhatikan beberapa hal berikut:</p>\r\n\r\n<ul>\r\n	<li>Lakukan isolasi mandiri selama 2 minggu dengan tidak keluar rumah dan menjaga jarak dengan orang dalam satu rumah.</li>\r\n	<li>Selalu gunakan masker jika keluar rumah atau saat akan berinteraksi dengan anggota keluarga.</li>\r\n	<li>Terapkan etika batuk.</li>\r\n	<li>Ukur suhu tubuh 2 kali sehari, pagi dan malam hari.</li>\r\n	<li>Cuci tangan dengan sabun, air mengalir, atau&nbsp;<em>hand sanitizer</em>.</li>\r\n	<li>Banyak minum air putih untuk menjaga kadar cairan tubuh.</li>\r\n	<li><a href=\"https://www.alodokter.com/memenuhi-waktu-tidur-yang-ideal-demi-kesehatan\" target=\"_blank\">Istirahat yang cukup</a>&nbsp;untuk mempercepat proses penyembuhan.</li>\r\n	<li>Konsumsi obat pereda batuk, demam, dan nyeri, setelah berkonsultasi dengan dokter.</li>\r\n	<li>Perhatikan gejala yang Anda alami dan segera hubungi dokter jika gejala memburuk.</li>\r\n</ul>\r\n\r\n<p>Penelitian menunjukkan bahwa pasien COVID-19 dengan gejala ringan dapat sembuh dalam 2 minggu. Namun, sebelum Anda mengakhiri isolasi mandiri dan kembali beraktivitas, tetap lakukan konsultasi dengan dokter&nbsp;untuk mengetahui apakah Anda sudah memenuhi&nbsp;<a href=\"https://www.alodokter.com/mengetahui-kriteria-sembuh-dari-corona-dan-hal-yang-perlu-dilakukan-setelahnya\" target=\"_blank\">kriteria sembuh</a>&nbsp;dari COVID-19.</p>\r\n\r\n<p>Jika Anda didiagnosis COVID-19 dan mengalami gejala berat, dokter akan merujuk Anda untuk menjalani perawatan dan karantina di rumah sakit&nbsp;rujukan. Metode yang dapat dilakukan dokter antara lain:</p>\r\n\r\n<ul>\r\n	<li>Memberikan obat untuk mengurangi keluhan dan gejala</li>\r\n	<li>Memasang&nbsp;ventilator&nbsp;atau alat bantu napas&nbsp;guna mencukupi kebutuhan&nbsp;oksigen</li>\r\n	<li>Memberikan&nbsp;infus cairan&nbsp;agar tetap terhidrasi</li>\r\n	<li>Memberikan obat pengencer darah dan pencegah penggumpalan darah</li>\r\n	<li>Memberikan obat antivirus, seperti&nbsp;remdesivir&nbsp;dan&nbsp;favipiravir</li>\r\n	<li>Memberikan obat antiperadangan atau antiinterleukin-6 (IL-6)</li>\r\n	<li>Memberikan obat-obatan imunosupresif, misalnya tocilizumab (Actemra)</li>\r\n	<li>Memberikan&nbsp;terapi plasma konvalesen</li>\r\n</ul>\r\n', 'noimage.png');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`username`);

--
-- Indeks untuk tabel `basis_pengetahuan`
--
ALTER TABLE `basis_pengetahuan`
  ADD PRIMARY KEY (`kode_pengetahuan`);

--
-- Indeks untuk tabel `gejala`
--
ALTER TABLE `gejala`
  ADD PRIMARY KEY (`kode_gejala`);

--
-- Indeks untuk tabel `hasil`
--
ALTER TABLE `hasil`
  ADD PRIMARY KEY (`id_hasil`);

--
-- Indeks untuk tabel `kondisi`
--
ALTER TABLE `kondisi`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `penyakit`
--
ALTER TABLE `penyakit`
  ADD PRIMARY KEY (`kode_penyakit`);

--
-- Indeks untuk tabel `post`
--
ALTER TABLE `post`
  ADD PRIMARY KEY (`kode_post`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `basis_pengetahuan`
--
ALTER TABLE `basis_pengetahuan`
  MODIFY `kode_pengetahuan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=108;

--
-- AUTO_INCREMENT untuk tabel `gejala`
--
ALTER TABLE `gejala`
  MODIFY `kode_gejala` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;

--
-- AUTO_INCREMENT untuk tabel `hasil`
--
ALTER TABLE `hasil`
  MODIFY `id_hasil` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=291;

--
-- AUTO_INCREMENT untuk tabel `kondisi`
--
ALTER TABLE `kondisi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `penyakit`
--
ALTER TABLE `penyakit`
  MODIFY `kode_penyakit` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT untuk tabel `post`
--
ALTER TABLE `post`
  MODIFY `kode_post` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
