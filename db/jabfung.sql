-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               5.6.21 - MySQL Community Server (GPL)
-- Server OS:                    Win32
-- HeidiSQL Version:             9.1.0.4867
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- Dumping database structure for jabfung
DROP DATABASE IF EXISTS `jabfung`;
CREATE DATABASE IF NOT EXISTS `jabfung` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `jabfung`;


-- Dumping structure for table jabfung.tbl_berita
DROP TABLE IF EXISTS `tbl_berita`;
CREATE TABLE IF NOT EXISTS `tbl_berita` (
  `id_berita` int(11) NOT NULL AUTO_INCREMENT,
  `tanggal_berita` date NOT NULL DEFAULT '0000-00-00',
  `judul` varchar(200) NOT NULL,
  `berita_penuh` text NOT NULL,
  `gambar` text NOT NULL,
  `change_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `change_by` int(10) DEFAULT NULL,
  PRIMARY KEY (`id_berita`),
  KEY `FK_tbl_berita_tbl_user` (`change_by`),
  CONSTRAINT `FK_tbl_berita_tbl_user` FOREIGN KEY (`change_by`) REFERENCES `tbl_user` (`id_user`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;

-- Dumping data for table jabfung.tbl_berita: ~4 rows (approximately)
/*!40000 ALTER TABLE `tbl_berita` DISABLE KEYS */;
INSERT INTO `tbl_berita` (`id_berita`, `tanggal_berita`, `judul`, `berita_penuh`, `gambar`, `change_date`, `change_by`) VALUES
	(8, '2015-04-03', 'Rapat Petinggi KMP di Bakrie Tower Bahas Pertemuan DPR-Presiden Pekan Depan', '<p>\r\n	<strong style="color: rgb(0, 0, 0); font-family: Arial, Helvetica, sans-serif; font-size: 13px; line-height: 17.5499992370605px;">Jakarta</strong><span style="color: rgb(0, 0, 0); font-family: Arial, Helvetica, sans-serif; font-size: 13px; line-height: 17.5499992370605px;">&nbsp;- Sejumlah petinggi Koalisi Merah Putih (KMP) menggelar pertemuan di Bakrie Tower, malam ini. Pertemuan tersebut membahas rencana pertemuan DPR dengan presiden Senin (6/4) mendatang.</span><br style="color: rgb(0, 0, 0); font-family: Arial, Helvetica, sans-serif; font-size: 13px; line-height: 17.5499992370605px;" />\r\n	<br style="color: rgb(0, 0, 0); font-family: Arial, Helvetica, sans-serif; font-size: 13px; line-height: 17.5499992370605px;" />\r\n	<span style="color: rgb(0, 0, 0); font-family: Arial, Helvetica, sans-serif; font-size: 13px; line-height: 17.5499992370605px;">&quot;KMP bicarakan rencana pertemuan Presiden dengan DPR hari Senin (6/4),&quot; kata Ketua Harian Golkar MS Hidayat sesaat sebelum meninggalkan Bakrie Tower, di lobi Gedung Bakrie Tower, Jl HR Rasuna Said, Jakarta Selatan, Jumat (3/4/2015) malam sekitar pukul 22.05 WIB.</span><br style="color: rgb(0, 0, 0); font-family: Arial, Helvetica, sans-serif; font-size: 13px; line-height: 17.5499992370605px;" />\r\n	<br style="color: rgb(0, 0, 0); font-family: Arial, Helvetica, sans-serif; font-size: 13px; line-height: 17.5499992370605px;" />\r\n	<span style="color: rgb(0, 0, 0); font-family: Arial, Helvetica, sans-serif; font-size: 13px; line-height: 17.5499992370605px;">&quot;Bagaimana materi dan sikapnya. Mendengarkan penjelasan presiden. presiden minta pertemuan santai,&quot; lanjutnya.</span><br style="color: rgb(0, 0, 0); font-family: Arial, Helvetica, sans-serif; font-size: 13px; line-height: 17.5499992370605px;" />\r\n	<br style="color: rgb(0, 0, 0); font-family: Arial, Helvetica, sans-serif; font-size: 13px; line-height: 17.5499992370605px;" />\r\n	<span style="color: rgb(0, 0, 0); font-family: Arial, Helvetica, sans-serif; font-size: 13px; line-height: 17.5499992370605px;">KMP di DPR juga akan meminta pandangan presiden terkait pembatalan pelantikan Komjen BG. &quot;Pandangan presiden soal tidak jd lantik BG. Badrodin pada prinsipnya tidak ditolak,&quot; jelas Hidayat.</span><br style="color: rgb(0, 0, 0); font-family: Arial, Helvetica, sans-serif; font-size: 13px; line-height: 17.5499992370605px;" />\r\n	<br style="color: rgb(0, 0, 0); font-family: Arial, Helvetica, sans-serif; font-size: 13px; line-height: 17.5499992370605px;" />\r\n	<span style="color: rgb(0, 0, 0); font-family: Arial, Helvetica, sans-serif; font-size: 13px; line-height: 17.5499992370605px;">Pukul 22.15 WIB Amien Rais nampak meninggalkan gedung Bakrie Tower. Namun Amien enggan berkomentar apapun.</span><br style="color: rgb(0, 0, 0); font-family: Arial, Helvetica, sans-serif; font-size: 13px; line-height: 17.5499992370605px;" />\r\n	<br style="color: rgb(0, 0, 0); font-family: Arial, Helvetica, sans-serif; font-size: 13px; line-height: 17.5499992370605px;" />\r\n	<span style="color: rgb(0, 0, 0); font-family: Arial, Helvetica, sans-serif; font-size: 13px; line-height: 17.5499992370605px;">&quot;Nanti Pak Idrus (Sekjen Golkar) ya,&quot; jawabnya sambil berjalan cepat menuju mobil.</span><br style="color: rgb(0, 0, 0); font-family: Arial, Helvetica, sans-serif; font-size: 13px; line-height: 17.5499992370605px;" />\r\n	&nbsp;</p>\r\n<div class="clearfix" style="clear: both; color: rgb(0, 0, 0); font-family: Arial, Helvetica, sans-serif; font-size: 13px; line-height: 17.5499992370605px;">\r\n	&nbsp;</div>\r\n<p>\r\n	<br style="color: rgb(0, 0, 0); font-family: Arial, Helvetica, sans-serif; font-size: 13px; line-height: 17.5499992370605px;" />\r\n	<i style="color: rgb(0, 0, 0); font-family: Arial, Helvetica, sans-serif; font-size: 13px; line-height: 17.5499992370605px;"><b>Akhiri hari anda dengan menyimak beragam informasi penting dan menarik sepanjang hari ini, di &quot;Reportase Malam&quot; pukul 01.30 WIB, hanya di Trans TV</b></i><br style="color: rgb(0, 0, 0); font-family: Arial, Helvetica, sans-serif; font-size: 13px; line-height: 17.5499992370605px;" />\r\n	<br style="color: rgb(0, 0, 0); font-family: Arial, Helvetica, sans-serif; font-size: 13px; line-height: 17.5499992370605px;" />\r\n	<b style="color: rgb(0, 0, 0); font-family: Arial, Helvetica, sans-serif; font-size: 13px; line-height: 17.5499992370605px;">(rna/fjp)</b></p>\r\n', '85b81-222136_msdashidayat.jpg', '2015-04-03 22:57:17', 1),
	(11, '2015-04-13', 'LKPP Menggelar Lokakarya', '<p style="margin: 0px; padding: 0px 0px 14px; border: 0px; outline: 0px; vertical-align: baseline; letter-spacing: 0.015em; box-sizing: border-box; font-family: \'Gotham A\', \'Gotham B\', Arial; font-size: 14px; line-height: 24px; color: rgb(88, 88, 88); text-align: justify; background-image: initial; background-attachment: initial; background-size: initial; background-origin: initial; background-clip: initial; background-position: initial; background-repeat: initial;">\r\n	Lembaga Kebijakan Pengadaan Barang/Jasa Pemerintah (LKPP) menggelar perhelatan bagi Unit Layanan Pengadaan (ULP) yang ikut serta sebagai percontohan Proyek Modernisasi Pengadaan. Bertajuk Lokakarya Nasional Rencana Aksi Pembentukan Organisasi Permanen dan Peta Jalan Pengembangan Organisasi ULP di Wilayah Percontohan, acara yang didukung MCA-Indonesia tersebut diadakan pada 3-5 Maret 2015 di Jakarta. Lokakarya Nasional bertujuan mendorong ULP Percontohan untuk menjadi permanen dan mandiri, sehingga dapat melaksanakan pengadaan yang lebih independen, bebas intervensi, profesional dan berintegritas.</p>\r\n<p style="margin: 0px; padding: 0px 0px 14px; border: 0px; outline: 0px; vertical-align: baseline; letter-spacing: 0.015em; box-sizing: border-box; font-family: \'Gotham A\', \'Gotham B\', Arial; font-size: 14px; line-height: 24px; color: rgb(88, 88, 88); text-align: justify; background-image: initial; background-attachment: initial; background-size: initial; background-origin: initial; background-clip: initial; background-position: initial; background-repeat: initial;">\r\n	Deputi Pengembangan dan Pembinaan Sumber Daya Manusia LKPP Agus Prabowo mengatakan, acara tersebut adalah tindak lanjut dari lokakarya tentang tingkat kematangan dan peta jalan pengembangan ULP Percontohan pada Januari 2014. &ldquo;Sekarang saatnya mempertanggungjawabkan, sudah sematang apa ULP Percontohan, dan sejauh mana peta jalan dilaksanakan. Kemudian, ke mana selanjutnya ULP Percontohan akan diarahkan,&rdquo; ujarnya saat membuka Lokakarya Nasional, 3 Maret 2015.</p>\r\n<p style="margin: 0px; padding: 0px 0px 14px; border: 0px; outline: 0px; vertical-align: baseline; letter-spacing: 0.015em; box-sizing: border-box; font-family: \'Gotham A\', \'Gotham B\', Arial; font-size: 14px; line-height: 24px; color: rgb(88, 88, 88); text-align: justify; background-image: initial; background-attachment: initial; background-size: initial; background-origin: initial; background-clip: initial; background-position: initial; background-repeat: initial;">\r\n	Ia memaparkan, ada empat area di mana reformasi dan modernisasi pengadaan dilaksanakan. Pertama, regulasi, yang harus selalu diperbaharui, direvisi, dilengkapi, dan disampaikan ke publik. Kedua, kelembagaan dan sumber daya manusia, artinya pengadaan harus dilaksanakan lembaga yang dirancang khusus untuk itu, sedangkan personilnya harus penuh-waktu, terlatih, paham peraturan, dan profesional. Ketiga, mekanisme pasar yang bekerja dengan baik perlu diadopsi sebagai praktik pengadaan. Keempat, integritas dalam proses pengadaan harus terus dibangun dan dibina.</p>\r\n<p style="margin: 0px; padding: 0px 0px 14px; border: 0px; outline: 0px; vertical-align: baseline; letter-spacing: 0.015em; box-sizing: border-box; font-family: \'Gotham A\', \'Gotham B\', Arial; font-size: 14px; line-height: 24px; color: rgb(88, 88, 88); text-align: justify; background-image: initial; background-attachment: initial; background-size: initial; background-origin: initial; background-clip: initial; background-position: initial; background-repeat: initial;">\r\n	Proyek Modernisasi Pengadaan dimulai tahun 2013 dan bertujuan untuk mempercepat profesionalisasi pengadaan dan mendukung agenda pembaharuan LKPP. Tujuan proyek ini adalah mencapai penghematan biaya dan efesiensi dalam pengadaan barang dan jasa dengan menjamin kualitas, dan melaksanakan layanan publik sesuai perencanaan. Penghematan ini dimaksudkan untuk menuju penyediaan barang dan jasa yang lebih baik yang akan berdampak positif pada pertumbuhan ekonomi.</p>\r\n', '37b2c-13-04-2015-17-46-25.png', '2015-04-13 17:46:38', 1),
	(12, '2015-04-15', 'Test Buat Newsticker', '<p>\r\n	Test Buat Newsticker</p>\r\n', '', '2015-04-15 11:10:10', 1),
	(13, '2015-04-15', 'Komisi III DPR Kunjungi Rumah Calon Kapolri Komjen Badrodin Haiti', '<p>\r\n	<strong style="color: rgb(0, 0, 0); font-family: Arial, Helvetica, sans-serif; font-size: 13px; line-height: 17.5499992370605px;">Jakarta</strong><span style="color: rgb(0, 0, 0); font-family: Arial, Helvetica, sans-serif; font-size: 13px; line-height: 17.5499992370605px;">&nbsp;- Komisi III DPR menunda pleno untuk menentukan agenda fit and proper test calon Kapolri Komjen Badrodin Haiti siang ini.&lrm; Meski demikian, komisi III tetap akan mengunjungi kediaman Badrodin sesuai agenda yang sudah disepakati sebelumnya.</span><br style="color: rgb(0, 0, 0); font-family: Arial, Helvetica, sans-serif; font-size: 13px; line-height: 17.5499992370605px;" />\r\n	<br style="color: rgb(0, 0, 0); font-family: Arial, Helvetica, sans-serif; font-size: 13px; line-height: 17.5499992370605px;" />\r\n	<span style="color: rgb(0, 0, 0); font-family: Arial, Helvetica, sans-serif; font-size: 13px; line-height: 17.5499992370605px;">&quot;Rapat pleno komisi III yang tadinya pukul 12.00 WIB, berdasarkan masukan maka diundur nanti sore setelah kunjungan ke kediaman Badrodin Haiti. Nanti akan jalan pukul 13.30 WIB,&quot; kata ketua komisi III Aziz Syamsuddin di gedung DPR, Jakarta, Rabu (15/4/2015).</span><br style="color: rgb(0, 0, 0); font-family: Arial, Helvetica, sans-serif; font-size: 13px; line-height: 17.5499992370605px;" />\r\n	<br style="color: rgb(0, 0, 0); font-family: Arial, Helvetica, sans-serif; font-size: 13px; line-height: 17.5499992370605px;" />\r\n	<span style="color: rgb(0, 0, 0); font-family: Arial, Helvetica, sans-serif; font-size: 13px; line-height: 17.5499992370605px;">&lrm;Aziz mengatakan, pengunduran jadwal pleno itu karena ada beberapa fraksi yang perlu mengkonsolidasikan lagi sikapnya soal fit and propert test untuk Badrodin Haiti. Sikap masing-masing fraksi itu akan dibahas dalam pleno internal sore ini.</span><br style="color: rgb(0, 0, 0); font-family: Arial, Helvetica, sans-serif; font-size: 13px; line-height: 17.5499992370605px;" />\r\n	<br style="color: rgb(0, 0, 0); font-family: Arial, Helvetica, sans-serif; font-size: 13px; line-height: 17.5499992370605px;" />\r\n	<span style="color: rgb(0, 0, 0); font-family: Arial, Helvetica, sans-serif; font-size: 13px; line-height: 17.5499992370605px;">&lrm;&quot;Menurut asas hukum harus dicabut atau dibatalkan dulu (persetujuan DPR atas Budi Gunawan) di paripurna. Maka apakah diteruskan atau kita agenda pencabutan dulu di paripurna,&quot; ujarnya soal salah satu isu yang akan dibahas di pleno.</span><br style="color: rgb(0, 0, 0); font-family: Arial, Helvetica, sans-serif; font-size: 13px; line-height: 17.5499992370605px;" />\r\n	<br style="color: rgb(0, 0, 0); font-family: Arial, Helvetica, sans-serif; font-size: 13px; line-height: 17.5499992370605px;" />\r\n	<span style="color: rgb(0, 0, 0); font-family: Arial, Helvetica, sans-serif; font-size: 13px; line-height: 17.5499992370605px;">&lrm;Hal lainnya yang akan diplenokan adalah apakah komisi III tetap melanjutkan fit and proper test untuk Komjen Badrodin, atau tidak perlu sehingga Presiden bisa langsung melantik sesuai UU Polri pasal 11 ayat 4.</span><br style="color: rgb(0, 0, 0); font-family: Arial, Helvetica, sans-serif; font-size: 13px; line-height: 17.5499992370605px;" />\r\n	<br style="color: rgb(0, 0, 0); font-family: Arial, Helvetica, sans-serif; font-size: 13px; line-height: 17.5499992370605px;" />\r\n	<span style="color: rgb(0, 0, 0); font-family: Arial, Helvetica, sans-serif; font-size: 13px; line-height: 17.5499992370605px;">&quot;Masukan yang kami terima sepakat dan setuju agar Badrodin sebagai kapolri. Golkar setuju tinggal mekanisme dalam UU,&quot; ucap politisi Golkar itu.</span><br style="color: rgb(0, 0, 0); font-family: Arial, Helvetica, sans-serif; font-size: 13px; line-height: 17.5499992370605px;" />\r\n	<br style="color: rgb(0, 0, 0); font-family: Arial, Helvetica, sans-serif; font-size: 13px; line-height: 17.5499992370605px;" />\r\n	<span style="color: rgb(0, 0, 0); font-family: Arial, Helvetica, sans-serif; font-size: 13px; line-height: 17.5499992370605px;">Sementara itu, rombongan komisi III dan wartawan DPR yang akan mengunjungi rumah Badrodin Haiti di Jagakarsa, Jaksel&lrm; sudah bersiap untuk berangkat. Mereka diberangkatkan dengan dua bus DPR dikawal oleh patwal polisi.</span></p>\r\n', '61b70-140649_badrodinhaiti.jpg', '2015-04-15 16:12:13', 1);
/*!40000 ALTER TABLE `tbl_berita` ENABLE KEYS */;


-- Dumping structure for table jabfung.tbl_biodata
DROP TABLE IF EXISTS `tbl_biodata`;
CREATE TABLE IF NOT EXISTS `tbl_biodata` (
  `id_biodata` int(10) NOT NULL AUTO_INCREMENT,
  `id_user` int(10) DEFAULT NULL,
  `nip` varchar(255) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `jenis_kelamin` enum('Laki-laki','Perempuan') NOT NULL,
  `karpeg` varchar(255) DEFAULT NULL,
  `unit_kerja` varchar(255) DEFAULT NULL,
  `unit_kerja_telp` varchar(255) DEFAULT NULL,
  `pendidikan_gelar` int(10) DEFAULT NULL,
  `tempat_lahir` varchar(255) DEFAULT NULL,
  `tanggal_lahir` date DEFAULT NULL,
  `ruang_golongan` varchar(255) DEFAULT NULL,
  `jenjang_jabfung` varchar(255) DEFAULT NULL,
  `no_hp` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `sk_jabfung` varchar(255) DEFAULT NULL,
  `change_by` int(10) DEFAULT NULL,
  `change_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_biodata`),
  KEY `FK_tbl_biodata_tbl_user` (`id_user`),
  KEY `FK_tbl_biodata_tbl_user_2` (`change_by`),
  CONSTRAINT `FK_tbl_biodata_tbl_user` FOREIGN KEY (`id_user`) REFERENCES `tbl_user` (`id_user`) ON DELETE SET NULL ON UPDATE SET NULL,
  CONSTRAINT `FK_tbl_biodata_tbl_user_2` FOREIGN KEY (`change_by`) REFERENCES `tbl_user` (`id_user`) ON DELETE SET NULL ON UPDATE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table jabfung.tbl_biodata: ~0 rows (approximately)
/*!40000 ALTER TABLE `tbl_biodata` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_biodata` ENABLE KEYS */;


-- Dumping structure for table jabfung.tbl_download
DROP TABLE IF EXISTS `tbl_download`;
CREATE TABLE IF NOT EXISTS `tbl_download` (
  `id_download` int(11) NOT NULL AUTO_INCREMENT,
  `id_download_kategori` int(11) NOT NULL DEFAULT '0',
  `judul` varchar(200) NOT NULL,
  `deskripsi` text,
  `berkas` varchar(255) NOT NULL,
  `change_by` int(10) DEFAULT NULL,
  `change_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_download`),
  KEY `FK_tbl_download_tbl_user` (`change_by`),
  KEY `FK_tbl_download_tbl_download_kategori` (`id_download_kategori`),
  CONSTRAINT `FK_tbl_download_tbl_download_kategori` FOREIGN KEY (`id_download_kategori`) REFERENCES `tbl_download_kategori` (`id_download_kategori`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_tbl_download_tbl_user` FOREIGN KEY (`change_by`) REFERENCES `tbl_user` (`id_user`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- Dumping data for table jabfung.tbl_download: ~0 rows (approximately)
/*!40000 ALTER TABLE `tbl_download` DISABLE KEYS */;
INSERT INTO `tbl_download` (`id_download`, `id_download_kategori`, `judul`, `deskripsi`, `berkas`, `change_by`, `change_date`) VALUES
	(1, 1, 'Berkas Pendaftaran CPNS', '<p>\r\n	Berikut terlampir berkas pendaftaran CPNS tahun 2015</p>\r\n', '3b7c5-export-2015-04-01_15-36-53.xls', 1, '2015-04-16 16:45:41');
/*!40000 ALTER TABLE `tbl_download` ENABLE KEYS */;


-- Dumping structure for table jabfung.tbl_download_kategori
DROP TABLE IF EXISTS `tbl_download_kategori`;
CREATE TABLE IF NOT EXISTS `tbl_download_kategori` (
  `id_download_kategori` int(11) NOT NULL AUTO_INCREMENT,
  `download_kategori` varchar(255) NOT NULL DEFAULT '0',
  `change_by` int(11) NOT NULL DEFAULT '0',
  `change_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_download_kategori`),
  KEY `FK_tbl_download_kategori_tbl_user` (`change_by`),
  CONSTRAINT `FK_tbl_download_kategori_tbl_user` FOREIGN KEY (`change_by`) REFERENCES `tbl_user` (`id_user`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- Dumping data for table jabfung.tbl_download_kategori: ~0 rows (approximately)
/*!40000 ALTER TABLE `tbl_download_kategori` DISABLE KEYS */;
INSERT INTO `tbl_download_kategori` (`id_download_kategori`, `download_kategori`, `change_by`, `change_date`) VALUES
	(1, 'Kategori', 1, '2015-04-08 17:49:04'),
	(2, 'Peraturan BPKP', 1, '2015-04-25 22:40:11');
/*!40000 ALTER TABLE `tbl_download_kategori` ENABLE KEYS */;


-- Dumping structure for table jabfung.tbl_faq
DROP TABLE IF EXISTS `tbl_faq`;
CREATE TABLE IF NOT EXISTS `tbl_faq` (
  `id_faq` int(11) NOT NULL AUTO_INCREMENT,
  `id_faq_kategori` int(11) DEFAULT NULL,
  `pertanyaan` varchar(255) NOT NULL,
  `jawaban` text NOT NULL,
  `tampilkan` enum('Ya','Tidak') NOT NULL,
  `change_by` int(10) DEFAULT NULL,
  `change_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_faq`),
  KEY `FK_tbl_faq_tbl_faq_kategori` (`id_faq_kategori`),
  KEY `FK_tbl_faq_tbl_user` (`change_by`),
  CONSTRAINT `FK_tbl_faq_tbl_faq_kategori` FOREIGN KEY (`id_faq_kategori`) REFERENCES `tbl_faq_kategori` (`id_faq_kategori`) ON DELETE SET NULL ON UPDATE SET NULL,
  CONSTRAINT `FK_tbl_faq_tbl_user` FOREIGN KEY (`change_by`) REFERENCES `tbl_user` (`id_user`) ON DELETE SET NULL ON UPDATE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

-- Dumping data for table jabfung.tbl_faq: ~4 rows (approximately)
/*!40000 ALTER TABLE `tbl_faq` DISABLE KEYS */;
INSERT INTO `tbl_faq` (`id_faq`, `id_faq_kategori`, `pertanyaan`, `jawaban`, `tampilkan`, `change_by`, `change_date`) VALUES
	(7, 6, 'Bagaimana cara mendaftar pada e-jabfung ?', '<p>\r\n	Silahkan menghubungi Administrator anda</p>\r\n', 'Ya', 1, '2015-04-18 11:28:34'),
	(8, 6, 'Bagaimana cara melakukan registrasi ?', '<p>\r\n	Silahkan masuk ke menu Registrasi, kemudian isi Form yang ada.&nbsp;</p>\r\n<p>\r\n	Setelah Proses berhasil buka email anda. Kami akan mengirim link untuk mengaktifkan Akun anda.</p>\r\n<p>\r\n	Kemidian silahkan melakukan login.</p>\r\n', 'Ya', 1, '2015-04-18 11:30:59'),
	(9, 7, 'Bagaimana jika saya lupa Password ?', '<p>\r\n	Pilih menu Lupa Password lalu masukkan alamat email anda.&nbsp;</p>\r\n<p>\r\n	Email Baru anda akan di kirimkan ke email anda.</p>\r\n<p>\r\n	Login dengan menggunakan passwod baru anda, lalu segera ganti password baru anda dengan password yang anda inginkan.</p>\r\n', 'Ya', 1, '2015-04-18 11:51:26'),
	(10, 7, 'Bagaimana cara mengganti Password ?', '<p>\r\n	Login ke sistem e-jabfung lalu klik icon berbentuk <strong>Orang</strong> yang ada di pojok kanan lalu pilih menu <strong>Ubah Password</strong>.</p>\r\n<p>\r\n	Masukkan password lama anda lalu buat password yang baru.<strong>&nbsp;</strong></p>\r\n', 'Ya', 1, '2015-04-18 11:53:27');
/*!40000 ALTER TABLE `tbl_faq` ENABLE KEYS */;


-- Dumping structure for table jabfung.tbl_faq_kategori
DROP TABLE IF EXISTS `tbl_faq_kategori`;
CREATE TABLE IF NOT EXISTS `tbl_faq_kategori` (
  `id_faq_kategori` int(11) NOT NULL AUTO_INCREMENT,
  `kategori` varchar(200) DEFAULT NULL,
  `change_by` varchar(200) DEFAULT NULL,
  `change_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_faq_kategori`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

-- Dumping data for table jabfung.tbl_faq_kategori: ~2 rows (approximately)
/*!40000 ALTER TABLE `tbl_faq_kategori` DISABLE KEYS */;
INSERT INTO `tbl_faq_kategori` (`id_faq_kategori`, `kategori`, `change_by`, `change_date`) VALUES
	(6, 'Registrasi', '1', '2015-04-18 11:49:12'),
	(7, 'Akun', '1', '2015-04-18 11:50:06');
/*!40000 ALTER TABLE `tbl_faq_kategori` ENABLE KEYS */;


-- Dumping structure for table jabfung.tbl_gallery
DROP TABLE IF EXISTS `tbl_gallery`;
CREATE TABLE IF NOT EXISTS `tbl_gallery` (
  `id_gallery` int(11) NOT NULL AUTO_INCREMENT,
  `id_gallery_kategori` int(11) DEFAULT '0',
  `judul` varchar(200) DEFAULT NULL,
  `deskripsi` text,
  `gambar` varchar(200) DEFAULT NULL,
  `change_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `change_by` int(10) DEFAULT NULL,
  PRIMARY KEY (`id_gallery`),
  KEY `FK_tbl_gallery_tbl_gallery_kategori` (`id_gallery_kategori`),
  KEY `FK_tbl_gallery_tbl_user` (`change_by`),
  CONSTRAINT `FK_tbl_gallery_tbl_gallery_kategori` FOREIGN KEY (`id_gallery_kategori`) REFERENCES `tbl_gallery_kategori` (`id_gallery_kategori`) ON DELETE SET NULL ON UPDATE SET NULL,
  CONSTRAINT `FK_tbl_gallery_tbl_user` FOREIGN KEY (`change_by`) REFERENCES `tbl_user` (`id_user`) ON DELETE SET NULL ON UPDATE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

-- Dumping data for table jabfung.tbl_gallery: ~0 rows (approximately)
/*!40000 ALTER TABLE `tbl_gallery` DISABLE KEYS */;
INSERT INTO `tbl_gallery` (`id_gallery`, `id_gallery_kategori`, `judul`, `deskripsi`, `gambar`, `change_date`, `change_by`) VALUES
	(10, 6, 'Pantai', '<p>\r\n	Pantai</p>\r\n', '118c7-beach-palms-sandbank-2880x1800.jpg', '2015-04-15 16:38:00', NULL);
/*!40000 ALTER TABLE `tbl_gallery` ENABLE KEYS */;


-- Dumping structure for table jabfung.tbl_gallery_kategori
DROP TABLE IF EXISTS `tbl_gallery_kategori`;
CREATE TABLE IF NOT EXISTS `tbl_gallery_kategori` (
  `id_gallery_kategori` int(11) NOT NULL AUTO_INCREMENT,
  `gallery_kategori` varchar(255) NOT NULL,
  `change_by` int(10) NOT NULL,
  `change_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_gallery_kategori`),
  KEY `FK_tbl_gallery_kategori_tbl_user` (`change_by`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

-- Dumping data for table jabfung.tbl_gallery_kategori: ~1 rows (approximately)
/*!40000 ALTER TABLE `tbl_gallery_kategori` DISABLE KEYS */;
INSERT INTO `tbl_gallery_kategori` (`id_gallery_kategori`, `gallery_kategori`, `change_by`, `change_date`) VALUES
	(6, 'Photo Pemandangan', 1, '2015-04-15 16:37:33');
/*!40000 ALTER TABLE `tbl_gallery_kategori` ENABLE KEYS */;


-- Dumping structure for table jabfung.tbl_global
DROP TABLE IF EXISTS `tbl_global`;
CREATE TABLE IF NOT EXISTS `tbl_global` (
  `id_global` int(10) NOT NULL AUTO_INCREMENT,
  `konstanta` varchar(255) NOT NULL DEFAULT '0',
  `value` text NOT NULL,
  `change_by` int(10) NOT NULL,
  `change_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_global`),
  KEY `FK_tbl_global_tbl_user` (`change_by`),
  CONSTRAINT `FK_tbl_global_tbl_user` FOREIGN KEY (`change_by`) REFERENCES `tbl_user` (`id_user`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table jabfung.tbl_global: ~0 rows (approximately)
/*!40000 ALTER TABLE `tbl_global` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_global` ENABLE KEYS */;


-- Dumping structure for table jabfung.tbl_jabatan
DROP TABLE IF EXISTS `tbl_jabatan`;
CREATE TABLE IF NOT EXISTS `tbl_jabatan` (
  `id_jabatan` int(10) NOT NULL AUTO_INCREMENT,
  `jabatan` varchar(255) NOT NULL,
  `keterangan` text,
  PRIMARY KEY (`id_jabatan`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- Dumping data for table jabfung.tbl_jabatan: ~0 rows (approximately)
/*!40000 ALTER TABLE `tbl_jabatan` DISABLE KEYS */;
INSERT INTO `tbl_jabatan` (`id_jabatan`, `jabatan`, `keterangan`) VALUES
	(1, 'Penata Muda, III/a', NULL);
/*!40000 ALTER TABLE `tbl_jabatan` ENABLE KEYS */;


-- Dumping structure for table jabfung.tbl_kegiatan
DROP TABLE IF EXISTS `tbl_kegiatan`;
CREATE TABLE IF NOT EXISTS `tbl_kegiatan` (
  `id_kegiatan` int(11) NOT NULL AUTO_INCREMENT,
  `unsur` varchar(255) NOT NULL,
  `sub_unsur` varchar(255) NOT NULL,
  `butir_kegiatan` varchar(255) NOT NULL,
  `angka_kredit` double NOT NULL,
  `pelaksana` varchar(50) NOT NULL,
  `change_by` int(10) DEFAULT NULL,
  `change_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_kegiatan`),
  KEY `FK_tbl_kegiatan_tbl_user` (`change_by`),
  CONSTRAINT `FK_tbl_kegiatan_tbl_user` FOREIGN KEY (`change_by`) REFERENCES `tbl_user` (`id_user`) ON DELETE SET NULL ON UPDATE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table jabfung.tbl_kegiatan: ~0 rows (approximately)
/*!40000 ALTER TABLE `tbl_kegiatan` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_kegiatan` ENABLE KEYS */;


-- Dumping structure for table jabfung.tbl_konten_statis
DROP TABLE IF EXISTS `tbl_konten_statis`;
CREATE TABLE IF NOT EXISTS `tbl_konten_statis` (
  `id_konten_statis` int(11) NOT NULL AUTO_INCREMENT,
  `nama` varchar(255) NOT NULL,
  `judul` varchar(200) NOT NULL,
  `deskripsi` text NOT NULL,
  `gambar` varchar(200) DEFAULT NULL,
  `change_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `change_by` int(10) DEFAULT NULL,
  PRIMARY KEY (`id_konten_statis`),
  KEY `FK_tbl_konten_statis_tbl_user` (`change_by`),
  CONSTRAINT `FK_tbl_konten_statis_tbl_user` FOREIGN KEY (`change_by`) REFERENCES `tbl_user` (`id_user`) ON DELETE SET NULL ON UPDATE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

-- Dumping data for table jabfung.tbl_konten_statis: ~6 rows (approximately)
/*!40000 ALTER TABLE `tbl_konten_statis` DISABLE KEYS */;
INSERT INTO `tbl_konten_statis` (`id_konten_statis`, `nama`, `judul`, `deskripsi`, `gambar`, `change_date`, `change_by`) VALUES
	(1, 'tentang_kami', 'Tentang Kami', '<p></p><div align="center"><a href="http://dahatriswanto.files.wordpress.com/2013/09/ilistrator-jabfung2.jpg"><img class="aligncenter size-medium wp-image-1697" alt="ilistrator-jabfung" src="http://dahatriswanto.files.wordpress.com/2013/09/ilistrator-jabfung2.jpg?w=300" height="208" width="478"></a><br><div align="justify">&nbsp;&nbsp;&nbsp; Jabatan fungsional Pengelola Pengadaan Barang/Jasa Pemerintah adalah jabatan yang mempunyai ruang lingkup tugas, tanggung jawab dan wewenang untuk melakukan kegiatan pengadaan barang/jasa Pemerintah sesuai dengan peraturan perundang-undangan.<br><br>&nbsp; Jabatan Fungsional Pengelola Pengadaan Barang/Jasa ditetapkan berdasarkan&nbsp; Peraturan Menteri PAN-RB Tentang Jabatan Fungsional Pengelola Pengadaan Barang/Jasa Dan Angka Kreditnya Nomor 77 Tahun 2012, 20 Desember 2012<br><br>Tujuan Pembentukan Jabatan Fungsional Pengelola PBJ<br>&nbsp;&nbsp;&nbsp; Membina tenaga pengelola&nbsp; pengadaan barang/jasa pemerintah agar menjadi tenaga profesional sehingga pelaksanaan pengadaan dapat berjalan sesuai dengan prinsip pengadaan (efektif, efisien, terbuka, bersaing, transparan, tidak diskriminatif, dan akuntabel).<br>&nbsp; <br>&nbsp;&nbsp;&nbsp; Tugas pokok Pengelola Pengadaan Barang/Jasa yaitu melaksanakan kegiatan :<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; -&nbsp;&nbsp;&nbsp; Perencanaan Pengadaan<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; -&nbsp;&nbsp;&nbsp; Pemilihan Penyedia<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; -&nbsp;&nbsp;&nbsp; Manajeman Kontrak<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; -&nbsp;&nbsp;&nbsp; Manajemen Informasi Aset<br><br><br><br></div></div><p></p>', NULL, '2015-04-23 11:39:06', 1),
	(2, 'struktur_organisasi', 'Struktur Organisasi', '<p style="text-align: center;"><a href="http://dahatriswanto.files.wordpress.com/2013/08/struktur-organisasi-lkpp.png"><img class=" wp-image-1682 aligncenter" alt="struktur organisasi LKPP" src="http://dahatriswanto.files.wordpress.com/2013/08/struktur-organisasi-lkpp.png?w=300" width="600" height="412" /></a></p>\r\n<p style="text-align: center;"></p>', NULL, '2015-04-23 11:39:08', 1),
	(3, 'jabfung_pengadaan', 'Jabatan Fungsional Pengadaan', '<p align="center">&nbsp;<a href="http://dahatriswanto.files.wordpress.com/2013/09/valueformoneyok.jpg"><img class="aligncenter size-medium wp-image-1707" alt="valueformoneyok" src="http://dahatriswanto.files.wordpress.com/2013/09/valueformoneyok.jpg?w=300" height="155" width="300"></a></p><p><b>Jabatan fungsional Pengelola Pengadaan Barang/Jasa Pemerintah</b> adalah jabatan yang mempunyai ruang lingkup tugas, tanggung jawab dan wewenang untuk melakukan kegiatan pengadaan barang/jasa Pemerintah sesuai dengan peraturan perundang-undangan.<br><br><br><br></p>', NULL, '2015-04-23 11:39:09', 1),
	(4, 'peraturan_peruu', 'Peraturan dan Perundang-undangan', '<p>Jabatan Fungsional Pengelola Pengadaan Barang/Jasa ditetapkan berdasarkan Peraturan Menteri PAN-RB Tentang Jabatan Fungsional Pengelola Pengadaan Barang/Jasa Dan Angka Kreditnya Nomor 77 Tahun 2012, 20 Desember 2012<br><br>Pengelola Pengadaan Barang/Jasa berkedudukan sebagai pelaksana teknis fungsional di bidang pengadaan barang/jasa pada instansi pemerintah&nbsp; dan merupakan jabatan karier</p><p><br><b><a href="http://dahatriswanto.files.wordpress.com/2013/09/karier-jabfung.jpg"><img src="http://dahatriswanto.files.wordpress.com/2013/09/karier-jabfung.jpg?w=300" alt="karier-jabfung" class="aligncenter size-medium wp-image-1698" height="292" width="465"></a></b></p><p><br>Tugas pokok Pengelola Pengadaan Barang/Jasa yaitu melaksanakan kegiatan :<br>- Perencanaan Pengadaan<br>- Pemilihan Penyedia<br>- Manajeman Kontrak<br>- Manajemen Informasi Aset<br><br>Unsur Kegiatan Jabatan Fungsional Pengelola Pengadaan Barang/Jasa Yang Dinilai Angka Kreditnya, Terdiri Dari :<br>A. Pendidikan;<br>&nbsp;&nbsp;&nbsp;&nbsp; - Pendidikan Sekolah<br>&nbsp;&nbsp;&nbsp;&nbsp; - Diklat<br>B. Pengelolaan Pengadaan Barang/Jasa<br>&nbsp;&nbsp;&nbsp; - Perencanaan Pengadaan;<br>&nbsp;&nbsp;&nbsp; - Pemilihan Penyedia;<br>&nbsp;&nbsp;&nbsp; - Manajeman Kontrak;<br>&nbsp;&nbsp;&nbsp; - Manajemen Informasi Aset;<br>C. Pengembangan Profesi Pengelola Pengadaan&nbsp; Barang/Jasa Pemerintah;<br>D. Penunjang Tugas.<br><br></p>', NULL, '2015-04-23 11:39:10', 1),
	(5, 'footer', 'Footer', '<p>Apikasi SIM Jabfung Pengelola PBJ ini dikhususkan untuk para pejabat \r\nfungsional pengelola Barang/Jasa pemerintah, BKD dan Tim Penilai Angka \r\nKredit. Untuk dapat memasukkan butir kegiatan, User Jabfung Pengelola \r\nPBJ terlebih dahulu harus <b>login </b>ke sistem. Sebelum login, user Pengelola PBJ harus <b>registrasi/daftar</b>\r\n dengan memasukkan: NIP, Nomor Sertifikat, SK Jabfung, password dan \r\nemail. Setelah mendaftar, maka user jabfung akan mendapatkan email untuk\r\n aktivasi.&nbsp; Setelah aktivasi, user jabfung dapat login dengan mengisi \r\nNIP dan password.<br><br>Setelah login, user jabfung dapat:<br><br>-&nbsp;&nbsp;&nbsp;&nbsp; Menghitung Angka Kredit pada menu PAK disebelah kiri<br><br>-&nbsp;&nbsp;&nbsp;&nbsp; Mencetak bukti SPMK= Surat Pernyataan Melakukan Kegiatan<br><br>-&nbsp;&nbsp;&nbsp;&nbsp; Mengedit Biodata user jabfung pada menu Data di sebelah kiri.<br><br>-&nbsp;&nbsp;&nbsp;&nbsp;\r\n Memasukkan butir kegiatan pada menu Data di sebelah kiri, mulai dari \r\ndata kegiatan perencanaan pengadaan, data kegiatan pendidikan, dan data \r\nkegiatan pemilihan penyedia.</p>', NULL, '2015-04-23 11:39:11', 1),
	(6, 'kontak_kami', 'Kontak Kami', '<p>\r\n	<b>LKPP Instansi Pembina Jabatan Fungsional Pengelola Pengadaan Barang/Jasa</b></p>\r\n<h6 style="box-sizing: border-box; font-family: Copse-Regular, Monaco, Arial, sans-serif; font-weight: 500; line-height: 20px; margin: 0px; font-size: 12px; color: rgb(255, 255, 255); background-color: rgb(84, 8, 0);">\r\n	Jl. RS Fatmawati No. 33A, Cipete, Jakarta Selatan</h6>\r\n<h6 style="box-sizing: border-box; font-family: Copse-Regular, Monaco, Arial, sans-serif; font-weight: 500; line-height: 20px; margin: 0px; font-size: 12px; color: rgb(255, 255, 255); background-color: rgb(84, 8, 0);">\r\n	Telp 021.75916038, 7691849, Fax. 021.7692112</h6>\r\n<p>\r\n	<br />\r\n	<br />\r\n	<iframe frameborder="0" height="350" marginheight="0" marginwidth="0" scrolling="no" src="https://maps.google.com/maps?source=s_q&amp;f=q&amp;hl=en&amp;geocode=&amp;q=smesco+pancoran&amp;aq=&amp;sll=-2.44565,117.8888&amp;sspn=23.67085,43.286133&amp;ie=UTF8&amp;hq=smesco+pancoran&amp;hnear=&amp;cid=7818986157959770553&amp;t=m&amp;iwloc=A&amp;ll=-6.24005,106.833372&amp;spn=0.017064,0.032616&amp;output=embed" width="425"></iframe><br />\r\n	<small><a href="https://maps.google.com/maps?source=embed&amp;f=q&amp;hl=en&amp;geocode=&amp;q=smesco+pancoran&amp;aq=&amp;sll=-2.44565,117.8888&amp;sspn=23.67085,43.286133&amp;ie=UTF8&amp;hq=smesco+pancoran&amp;hnear=&amp;cid=7818986157959770553&amp;t=m&amp;iwloc=A&amp;ll=-6.24005,106.833372&amp;spn=0.017064,0.032616" style="color:#0000FF;text-align:left">View Larger Map</a></small></p>\r\n<style type="text/css">\r\nv\\:* {behavior:url(#default#VML);}\r\no\\:* {behavior:url(#default#VML);}\r\nb\\:* {behavior:url(#default#VML);}\r\n.shape {behavior:url(#default#VML);}</style>\r\n', NULL, '2015-04-26 07:04:17', 1);
/*!40000 ALTER TABLE `tbl_konten_statis` ENABLE KEYS */;


-- Dumping structure for table jabfung.tbl_link
DROP TABLE IF EXISTS `tbl_link`;
CREATE TABLE IF NOT EXISTS `tbl_link` (
  `id_link` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(200) NOT NULL,
  `url` varchar(200) NOT NULL,
  `change_by` int(10) DEFAULT NULL,
  `change_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_link`),
  KEY `FK_tbl_link_tbl_user` (`change_by`),
  CONSTRAINT `FK_tbl_link_tbl_user` FOREIGN KEY (`change_by`) REFERENCES `tbl_user` (`id_user`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

-- Dumping data for table jabfung.tbl_link: ~10 rows (approximately)
/*!40000 ALTER TABLE `tbl_link` DISABLE KEYS */;
INSERT INTO `tbl_link` (`id_link`, `title`, `url`, `change_by`, `change_date`) VALUES
	(1, 'Kementerian Agama', 'www.kemenag.go.id', 1, '2015-04-01 22:04:38'),
	(2, 'BPKP', 'www.bpkp.go.id', 1, '2015-04-01 22:04:38'),
	(3, 'E-katalog', 'http://inaproc.lkpp.go.id/v3/public/ekatalog/ekatalog.htm', 1, '2015-04-01 22:04:38'),
	(4, 'Simpel', 'http://simpel.lkpp.go.id/', 1, '2015-04-01 22:04:38'),
	(5, 'LPSE LKPP', 'http://lpse.lkpp.go.id/', 1, '2015-04-01 22:04:38'),
	(8, 'Inspektorat Jenderal ', 'http://itjen.kemenag.go.id/web/', 1, '2015-04-01 22:04:38'),
	(9, 'Monev', 'http://monev.lkpp.go.id/', 1, '2015-04-01 22:04:38');
/*!40000 ALTER TABLE `tbl_link` ENABLE KEYS */;


-- Dumping structure for table jabfung.tbl_modul
DROP TABLE IF EXISTS `tbl_modul`;
CREATE TABLE IF NOT EXISTS `tbl_modul` (
  `id_modul` int(11) NOT NULL AUTO_INCREMENT,
  `id_modul_kategori` int(11) NOT NULL DEFAULT '0',
  `modul` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL,
  `icon` varchar(255) NOT NULL,
  `no_urut` int(2) NOT NULL DEFAULT '0',
  `change_by` varchar(255) DEFAULT '',
  `change_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_modul`),
  KEY `FK_tbl_modul_tbl_modul_kategori` (`id_modul_kategori`),
  CONSTRAINT `FK_tbl_modul_tbl_modul_kategori` FOREIGN KEY (`id_modul_kategori`) REFERENCES `tbl_modul_kategori` (`id_modul_kategori`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=107 DEFAULT CHARSET=latin1;

-- Dumping data for table jabfung.tbl_modul: ~10 rows (approximately)
/*!40000 ALTER TABLE `tbl_modul` DISABLE KEYS */;
INSERT INTO `tbl_modul` (`id_modul`, `id_modul_kategori`, `modul`, `url`, `icon`, `no_urut`, `change_by`, `change_date`) VALUES
	(97, 21, 'Berita', 'admin/berita', '<i class="fa fa-newspaper-o"></i>', 1, '', '2015-04-02 22:44:20'),
	(98, 21, 'Pengumuman', 'admin/pengumuman', '<i class="fa fa-bullhorn"></i>', 2, '', '2015-04-02 22:45:36'),
	(99, 21, 'Download', 'admin/donwload', '<i class="fa fa-download"></i>', 3, '', '2015-04-02 22:46:29'),
	(100, 21, 'FAQ Kategori', 'admin/faq_kategori', '<i class="fa fa-question"></i>', 4, '', '2015-04-02 22:47:50'),
	(101, 21, 'FAQ', 'admin/daftar_faq', '<i class="fa fa-list-ol"></i>', 5, '', '2015-04-02 22:48:57'),
	(102, 21, 'Konten Statis', 'admin/konten_statis', '<i class="fa fa-sitemap"></i>', 6, '', '2015-04-02 22:51:20'),
	(103, 21, 'Gallery', 'admin/gallery', '<i class="fa fa-picture-o"></i>', 7, '', '2015-04-02 22:52:54'),
	(104, 21, 'Link', 'admin/link', '<i class="fa fa-link"></i>', 4, '', '2015-04-02 23:12:20'),
	(105, 22, 'Kategori Modul', 'admin/kategori_modul', '<i class="fa fa-indent"></i>', 1, '', '2015-04-02 23:14:38'),
	(106, 22, 'Modul', 'admin/daftar_modul', '<i class="fa fa-outdent"></i>', 2, '', '2015-04-02 23:15:05');
/*!40000 ALTER TABLE `tbl_modul` ENABLE KEYS */;


-- Dumping structure for table jabfung.tbl_modul_kategori
DROP TABLE IF EXISTS `tbl_modul_kategori`;
CREATE TABLE IF NOT EXISTS `tbl_modul_kategori` (
  `id_modul_kategori` int(10) NOT NULL AUTO_INCREMENT,
  `kategori_modul` varchar(255) DEFAULT NULL,
  `icon` varchar(255) DEFAULT NULL,
  `no_urut` int(2) NOT NULL DEFAULT '0',
  `is_admin` enum('Ya','Tidak') NOT NULL DEFAULT 'Ya',
  `is_active` enum('Ya','Tidak') NOT NULL DEFAULT 'Ya',
  `change_by` varchar(255) DEFAULT NULL,
  `change_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_modul_kategori`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=latin1;

-- Dumping data for table jabfung.tbl_modul_kategori: ~4 rows (approximately)
/*!40000 ALTER TABLE `tbl_modul_kategori` DISABLE KEYS */;
INSERT INTO `tbl_modul_kategori` (`id_modul_kategori`, `kategori_modul`, `icon`, `no_urut`, `is_admin`, `is_active`, `change_by`, `change_date`) VALUES
	(20, 'Master', '<i class="fa fa-bars"></i>', 2, 'Ya', 'Ya', NULL, '2015-04-02 22:36:48'),
	(21, 'Halaman Depan', '<i class="fa fa-cube"></i>', 1, 'Ya', 'Ya', NULL, '2015-04-02 22:40:12'),
	(22, 'Pengaturan', '<i class="fa fa-cog"></i>', 3, 'Ya', 'Ya', NULL, '2015-04-02 23:10:54'),
	(23, 'Master', '<i class="fa fa-list"></i>', 4, 'Ya', 'Ya', NULL, '2015-04-02 23:17:27');
/*!40000 ALTER TABLE `tbl_modul_kategori` ENABLE KEYS */;


-- Dumping structure for table jabfung.tbl_modul_user
DROP TABLE IF EXISTS `tbl_modul_user`;
CREATE TABLE IF NOT EXISTS `tbl_modul_user` (
  `id_modul_user` int(10) NOT NULL AUTO_INCREMENT,
  `id_modul_kategori` int(10) NOT NULL DEFAULT '0',
  `id_user_kategori` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_modul_user`),
  KEY `FK_tbl_modul_user_tbl_modul_kategori` (`id_modul_kategori`),
  KEY `FK_tbl_modul_user_tbl_user_kategori` (`id_user_kategori`),
  CONSTRAINT `FK_tbl_modul_user_tbl_modul_kategori` FOREIGN KEY (`id_modul_kategori`) REFERENCES `tbl_modul_kategori` (`id_modul_kategori`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_tbl_modul_user_tbl_user_kategori` FOREIGN KEY (`id_user_kategori`) REFERENCES `tbl_user_kategori` (`id_user_kategori`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

-- Dumping data for table jabfung.tbl_modul_user: ~4 rows (approximately)
/*!40000 ALTER TABLE `tbl_modul_user` DISABLE KEYS */;
INSERT INTO `tbl_modul_user` (`id_modul_user`, `id_modul_kategori`, `id_user_kategori`) VALUES
	(1, 23, 1),
	(2, 22, 1),
	(3, 21, 1),
	(4, 20, 1);
/*!40000 ALTER TABLE `tbl_modul_user` ENABLE KEYS */;


-- Dumping structure for table jabfung.tbl_pangkat_gol
DROP TABLE IF EXISTS `tbl_pangkat_gol`;
CREATE TABLE IF NOT EXISTS `tbl_pangkat_gol` (
  `id_pangkat` int(11) NOT NULL AUTO_INCREMENT,
  `pangkat_golongan` varchar(40) NOT NULL,
  PRIMARY KEY (`id_pangkat`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

-- Dumping data for table jabfung.tbl_pangkat_gol: ~7 rows (approximately)
/*!40000 ALTER TABLE `tbl_pangkat_gol` DISABLE KEYS */;
INSERT INTO `tbl_pangkat_gol` (`id_pangkat`, `pangkat_golongan`) VALUES
	(1, 'Penata Muda (III/a)'),
	(2, 'Penata Muda Tingkat 1 (III/b)'),
	(3, 'Penata (III/c)'),
	(4, 'Penata Tingkat 1 (III/d)'),
	(5, 'Pembina (IV/a)'),
	(6, 'Pembina Tingkat 1 (IV/b)'),
	(7, 'Pembina Utama Muda (IV/c)');
/*!40000 ALTER TABLE `tbl_pangkat_gol` ENABLE KEYS */;


-- Dumping structure for table jabfung.tbl_pengumuman
DROP TABLE IF EXISTS `tbl_pengumuman`;
CREATE TABLE IF NOT EXISTS `tbl_pengumuman` (
  `id_pengumuman` int(11) NOT NULL AUTO_INCREMENT,
  `judul` varchar(255) NOT NULL,
  `tanggal_pengumuman` date NOT NULL,
  `isi_pengumuman` text NOT NULL,
  `berkas` varchar(255) DEFAULT NULL,
  `change_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `change_by` int(10) DEFAULT NULL,
  PRIMARY KEY (`id_pengumuman`),
  KEY `FK_tbl_pengumuman_tbl_user` (`change_by`),
  CONSTRAINT `FK_tbl_pengumuman_tbl_user` FOREIGN KEY (`change_by`) REFERENCES `tbl_user` (`id_user`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

-- Dumping data for table jabfung.tbl_pengumuman: ~0 rows (approximately)
/*!40000 ALTER TABLE `tbl_pengumuman` DISABLE KEYS */;
INSERT INTO `tbl_pengumuman` (`id_pengumuman`, `judul`, `tanggal_pengumuman`, `isi_pengumuman`, `berkas`, `change_date`, `change_by`) VALUES
	(11, 'Sistem Aplikasi Jabfung Sudah dapat digunakan', '2015-04-13', '<p align="justify" style="margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: top; letter-spacing: 0.194999992847443px; color: rgb(94, 94, 94); font-family: \'Open Sans\', sans-serif; font-size: 13px; line-height: 19.5px; background-image: initial; background-attachment: initial; background-size: initial; background-origin: initial; background-clip: initial; background-position: initial; background-repeat: initial;">\r\n	Silahkan untuk para PNS yang sudah melakukan Inpassing untuk menginputkan butir-butir kegiatan kedalam SIJABFUNG, dan kami menghimbau kepada seluruh unit kerja di bidang kepegawaian masing-masing instansi untuk menetapkan Operator SIJABFUNG.</p>\r\n<p align="justify" style="margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: top; letter-spacing: 0.194999992847443px; color: rgb(94, 94, 94); font-family: \'Open Sans\', sans-serif; font-size: 13px; line-height: 19.5px; background-image: initial; background-attachment: initial; background-size: initial; background-origin: initial; background-clip: initial; background-position: initial; background-repeat: initial;">\r\n	Untuk memudahkan masyarakat dalam menggunakan SIJABFUNG maka kami selalu melakukan pengembangan2 dalam penyempurnaan sistem.</p>\r\n', '3bd6c-export-2015-04-01_15-36-53.xls', '2015-04-13 17:42:51', 1),
	(12, 'Perhatian untuk Administrator Instansi', '2015-04-21', '<p>\r\n	<span style="color: rgb(94, 94, 94); font-family: \'Open Sans\', sans-serif; font-size: 13px; letter-spacing: 0.194999992847443px; line-height: 19.5px;">dalam menginput data pegawai, jangan menggunakan spasi dan tanda baca karena dapat mempengaruhi type data di field yang diinput</span><br style="color: rgb(94, 94, 94); font-family: \'Open Sans\', sans-serif; font-size: 13px; letter-spacing: 0.194999992847443px; line-height: 19.5px;" />\r\n	<br style="color: rgb(94, 94, 94); font-family: \'Open Sans\', sans-serif; font-size: 13px; letter-spacing: 0.194999992847443px; line-height: 19.5px;" />\r\n	<span style="color: rgb(94, 94, 94); font-family: \'Open Sans\', sans-serif; font-size: 13px; letter-spacing: 0.194999992847443px; line-height: 19.5px;">terimakasih</span></p>\r\n', NULL, '2015-04-21 22:33:36', 1);
/*!40000 ALTER TABLE `tbl_pengumuman` ENABLE KEYS */;


-- Dumping structure for table jabfung.tbl_sitemap
DROP TABLE IF EXISTS `tbl_sitemap`;
CREATE TABLE IF NOT EXISTS `tbl_sitemap` (
  `id_sitemap` int(11) NOT NULL AUTO_INCREMENT,
  `id_parent` int(11) NOT NULL,
  `no_sitemap` varchar(50) NOT NULL,
  `sitemap` varchar(255) NOT NULL,
  `judul` varchar(255) NOT NULL,
  `deskripsi` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL,
  `icon` varchar(255) NOT NULL,
  `no_urut` varchar(255) DEFAULT NULL,
  `change_by` int(11) DEFAULT NULL,
  `change_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_sitemap`),
  UNIQUE KEY `no_sitemap` (`no_sitemap`),
  KEY `FK_tbl_sitemap_tbl_user` (`change_by`),
  CONSTRAINT `FK_tbl_sitemap_tbl_user` FOREIGN KEY (`change_by`) REFERENCES `tbl_user` (`id_user`) ON DELETE SET NULL ON UPDATE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=latin1;

-- Dumping data for table jabfung.tbl_sitemap: ~19 rows (approximately)
/*!40000 ALTER TABLE `tbl_sitemap` DISABLE KEYS */;
INSERT INTO `tbl_sitemap` (`id_sitemap`, `id_parent`, `no_sitemap`, `sitemap`, `judul`, `deskripsi`, `url`, `icon`, `no_urut`, `change_by`, `change_date`) VALUES
	(1, 0, '01', 'frontend', 'Frontend', 'Frontend', 'frontend', '', '0', 1, '2015-04-21 11:17:31'),
	(2, 1, '01.01', 'home', '<big><big><i class="fa fa-home"></i></big></big>', 'Frontend - Home', 'home', '', '1', 1, '2015-04-23 12:44:50'),
	(3, 1, '01.02', 'berita', 'Berita', 'Frontend - Berita', 'berita', '<i class="fa fa-newspaper-o"></i>', '2', 1, '2015-04-21 11:16:50'),
	(4, 1, '01.03', 'referensi', 'Referensi', 'Frontend - Referensi', 'referensi', '<i class="fa fa-cloud-download"></i>', '4', 1, '2015-04-22 17:41:49'),
	(5, 1, '01.04', 'registrasi', 'Registrasi', 'Frontend - Registrasi', 'registrasi', '<i class="fa fa-sign-in"></i>', '5', 1, '2015-04-22 17:41:56'),
	(6, 1, '01.05', 'kontak_kami', 'Kontak Kami', 'Frontend - Kontak Kami', 'konten_statis/kontak_kami', '<i class="fa fa-paper-plane-o"></i>', '6', 1, '2015-04-22 17:42:02'),
	(7, 1, '01.07', 'faq', 'FAQ', 'Frontend - FAQ', 'faq', '<i class="fa fa-comments"></i>', '7', 1, '2015-04-22 17:42:08'),
	(8, 0, '02', 'admin', 'Admin', 'Admin', 'admin', '', '0', 1, '2015-04-21 11:17:33'),
	(9, 8, '02.01', 'berita', 'Berita', 'Admin - Berita', 'berita', '<i class="fa fa-newspaper-o"></i>', '1', 1, '2015-04-21 11:17:38'),
	(10, 8, '02.02', 'pengumuman', 'Pengumuman', 'Admin - Pengumuman', 'pengumuman', '<i class="fa fa-comments"></i>', '2', 1, '2015-04-21 11:17:42'),
	(11, 8, '02.03', 'referensi', 'Referensi', 'Admin - Referensi', '#', '<i class="fa fa-cloud-download"></i>', '3', 1, '2015-04-21 11:17:49'),
	(12, 11, '02.03.01', 'referensi_kategori', 'Referensi Kategori', 'Admin - Referensi Kategori', 'referensi_kategori', '', '4', 1, '2015-04-21 11:18:00'),
	(13, 11, '02.03.02', 'referensi', 'Referensi', 'Admin - Referensi List', 'referensi', '', '5', 1, '2015-04-21 11:18:10'),
	(14, 8, '02.04', 'link', 'Link', '', 'link', '<i class="fa fa-external-link"></i>', '6', 1, '2015-04-21 18:35:03'),
	(17, 8, '02.05', 'sitemap', 'Sitemap', '', 'sitemap', '<i class="fa fa-sitemap"></i>', '6', 1, '2015-04-21 18:35:08'),
	(18, 8, '02.06', 'konten_statis', 'Konten Statis', '', 'konten_statis', '<i class="fa fa-bars"></i>', '7', 1, '2015-04-21 18:35:06'),
	(19, 9, '01.08', 'pengumuman', 'Pengumuman', '', 'pengumuman', '', '3', NULL, '2015-04-26 06:58:50'),
	(20, 8, '02.07', 'faq', 'FAQ', 'Admin - FAQ', '#', '<i class="fa fa-question"></i>', '8', 1, '2015-04-23 10:25:59'),
	(21, 20, '02.07.01', 'faq_kategori', 'Kategori', 'Admin - FAQ Kategori', 'faq_kategori', '', '10', NULL, '2015-04-23 10:27:37'),
	(22, 20, '02.07.02', 'daftar_faq', 'Daftar FAQ', 'Admin - Daftar FAQ', 'daftar_faq', '', '11', NULL, '2015-04-23 10:27:22');
/*!40000 ALTER TABLE `tbl_sitemap` ENABLE KEYS */;


-- Dumping structure for table jabfung.tbl_sitemap_user
DROP TABLE IF EXISTS `tbl_sitemap_user`;
CREATE TABLE IF NOT EXISTS `tbl_sitemap_user` (
  `id_sitemap_user` int(10) NOT NULL AUTO_INCREMENT,
  `id_user_kategori` int(10) NOT NULL,
  `id_sitemap` int(10) NOT NULL,
  PRIMARY KEY (`id_sitemap_user`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

-- Dumping data for table jabfung.tbl_sitemap_user: ~5 rows (approximately)
/*!40000 ALTER TABLE `tbl_sitemap_user` DISABLE KEYS */;
INSERT INTO `tbl_sitemap_user` (`id_sitemap_user`, `id_user_kategori`, `id_sitemap`) VALUES
	(1, 2, 14),
	(2, 2, 17),
	(3, 2, 18),
	(4, 2, 20),
	(5, 2, 21),
	(6, 2, 22);
/*!40000 ALTER TABLE `tbl_sitemap_user` ENABLE KEYS */;


-- Dumping structure for table jabfung.tbl_slider
DROP TABLE IF EXISTS `tbl_slider`;
CREATE TABLE IF NOT EXISTS `tbl_slider` (
  `id_slider` int(11) NOT NULL AUTO_INCREMENT,
  `gambar` varchar(255) NOT NULL,
  `change_by` int(11) NOT NULL,
  `change_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_slider`),
  KEY `FK_tbl_slider_tbl_user` (`change_by`),
  CONSTRAINT `FK_tbl_slider_tbl_user` FOREIGN KEY (`change_by`) REFERENCES `tbl_user` (`id_user`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table jabfung.tbl_slider: ~0 rows (approximately)
/*!40000 ALTER TABLE `tbl_slider` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_slider` ENABLE KEYS */;


-- Dumping structure for table jabfung.tbl_ulp
DROP TABLE IF EXISTS `tbl_ulp`;
CREATE TABLE IF NOT EXISTS `tbl_ulp` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nama_ulp` varchar(200) NOT NULL,
  `id_unit_kerja` int(11) NOT NULL,
  `kepala_nip` varchar(200) DEFAULT NULL,
  `kepala_pangkat` varchar(200) DEFAULT NULL,
  `kepala_jabatan` varchar(200) DEFAULT NULL,
  `kepala_nama` varchar(200) DEFAULT NULL,
  `change_by` varchar(200) DEFAULT NULL,
  `change_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `FK_tbl_ulp_tbl_unitkerja` (`id_unit_kerja`),
  CONSTRAINT `FK_tbl_ulp_tbl_unitkerja` FOREIGN KEY (`id_unit_kerja`) REFERENCES `tbl_unitkerja` (`id_unit_kerja`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table jabfung.tbl_ulp: ~0 rows (approximately)
/*!40000 ALTER TABLE `tbl_ulp` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_ulp` ENABLE KEYS */;


-- Dumping structure for table jabfung.tbl_unitkerja
DROP TABLE IF EXISTS `tbl_unitkerja`;
CREATE TABLE IF NOT EXISTS `tbl_unitkerja` (
  `id_unit_kerja` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `regional` int(11) DEFAULT '0',
  `status` char(1) DEFAULT 'A',
  `id_master_unitkerja` smallint(6) DEFAULT '0',
  `kd_propinsi` varchar(10) DEFAULT '0',
  `kd_kabupaten` varchar(10) DEFAULT '0',
  `id_department_up` int(11) DEFAULT '0',
  `coord_lang` varchar(255) DEFAULT NULL,
  `coord_long` varchar(255) DEFAULT NULL,
  `kode_institusi` varchar(200) DEFAULT NULL,
  `kepala_nip` varchar(200) DEFAULT NULL,
  `kepala_pangkat` varchar(200) DEFAULT NULL,
  `kepala_jabatan` varchar(200) DEFAULT NULL,
  `id_jabatan` int(10) DEFAULT NULL,
  `kepala_nama` varchar(200) DEFAULT NULL,
  `change_by` varchar(10) DEFAULT NULL,
  `change_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_unit_kerja`),
  KEY `FK_tbl_unitkerja_tbl_jabatan` (`id_jabatan`),
  CONSTRAINT `FK_tbl_unitkerja_tbl_jabatan` FOREIGN KEY (`id_jabatan`) REFERENCES `tbl_jabatan` (`id_jabatan`) ON DELETE SET NULL ON UPDATE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=629 DEFAULT CHARSET=latin1;

-- Dumping data for table jabfung.tbl_unitkerja: ~622 rows (approximately)
/*!40000 ALTER TABLE `tbl_unitkerja` DISABLE KEYS */;
INSERT INTO `tbl_unitkerja` (`id_unit_kerja`, `name`, `regional`, `status`, `id_master_unitkerja`, `kd_propinsi`, `kd_kabupaten`, `id_department_up`, `coord_lang`, `coord_long`, `kode_institusi`, `kepala_nip`, `kepala_pangkat`, `kepala_jabatan`, `id_jabatan`, `kepala_nama`, `change_by`, `change_date`) VALUES
	(1, 'LKPP', 0, 'A', 1, '0', '0', 0, NULL, NULL, 'LKPP', '19500101123123123', 'III/d', 'Kepala ULP', NULL, 'Dr. Ahli Pengadaan Simbolon', 'admin', '2013-06-18 03:35:25'),
	(8, 'Mahkamah Agung', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(9, 'Majelis Permusyawaratan Rakyat', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(10, 'Dewan Perwakilan Rakyat', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(11, 'Dewan Perwakilan Daerah', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(12, 'Badan Pemeriksa Keuangan', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(13, 'Mahkamah Konstitusi', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(14, 'Komisi Yudisial', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(15, 'Kementerian Agama', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(16, 'Kementerian Badan Usaha Milik Negara', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(17, 'Kementerian Dalam Negeri', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(18, 'Kementerian Energi dan Sumber Daya Mineral', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(19, 'Kementerian Hukum dan Hak Asasi Manusia', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(20, 'Kementerian Kebudayaan dan Pariwisata', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(21, 'Kementerian Kehutanan', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(22, 'Kementerian Kelautan dan Perikanan', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(23, 'Kementerian Kesehatan', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(24, 'Kementerian Keuangan', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(25, 'Kementerian Komunikasi dan Informatika', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(26, 'Kementerian Koordinator Bidang Kesejahteraan Rakyat', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(27, 'Kementerian Koordinator Bidang Perekonomian', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(28, 'Kementerian Koordinator Bidang Politik, Hukum, dan Keamanan', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(29, 'Kementerian Koperasi dan Usaha Kecil dan Menengah', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(30, 'Kementerian Lingkungan Hidup', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(31, 'Kementerian Luar Negeri', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(32, 'Kementerian Pekerjaan Umum', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(33, 'Kementerian Pembangunan Daerah Tertinggal', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(34, 'Kementerian Pemberdayaan Perempuan dan Perlindungan Anak', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(35, 'Kementerian Pemuda dan Olah Raga', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(36, 'Kementerian Pendayagunaan Aparatur Negara dan Reformasi Birokrasi', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(37, 'Kementerian Pendidikan Nasional', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(38, 'Kementerian Perdagangan', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(39, 'Kementerian Perencanaan Pembangunan Nasional', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(40, 'Kementerian Perhubungan', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(41, 'Kementerian Perindustrian', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(42, 'Kementerian Pertahanan', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(43, 'Kementerian Pertanian', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(44, 'Kementerian Perumahan Rakyat', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(45, 'Kementerian Riset dan Teknologi', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(46, 'Kementerian Sekretariat Negara', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(47, 'Kementerian Sosial', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(48, 'Kementerian Tenaga Kerja dan Transmigrasi', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(49, 'Kejaksaan Agung Republik Indonesia', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(50, 'Kepolisian Negara Republik Indonesia', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(51, 'Tentara Nasional Republik Indonesia', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(52, 'Sekretariat Kabinet', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(53, 'Lembaga Penyiaran Publik Radio Republik Indonesia', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(54, 'Lembaga Penyiaran Publik Televisi Republik Indonesia', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(55, 'Arsip Nasional Republik Indonesia', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(56, 'Badan Intelijen Negara', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(57, 'Badan Kepagawaian Negara', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(58, 'Badan Kependudukan dan Keluarga Berencana Nasional', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(59, 'Badan Koordinasi Pananaman Modal', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(60, 'Badan Koordinasi Survey dan Pemetaan Nasional', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(61, 'Badan Meteorologi, Klimatologi, dan Geofisika', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(62, 'Badan Narkotika Nasional', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(63, 'Badan Nasional Penanggulangan Bencana', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(64, 'Badan Nasional Penanggulangan Terorisme', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(65, 'Badan Nasional Penempatan dan Perlindungan Tenaga Kerja Indonesia', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(66, 'Badan Pengawas Keuangan dan Pembangunan', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(67, 'Badan Pengawas Tenaga Nuklir', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(68, 'Badan Pengawasan Obat dan Makanan', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(69, 'Badan Pengkajian dan Penerapan Teknologi', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(70, 'Badan Perencanaan Pembangunan Nasional', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(71, 'Badan Pertanahan Nasional', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(72, 'Badan Pusat Statistik', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(73, 'Badan SAR Nasional', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(74, 'Badan Standardisasi Nasional', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(75, 'Badan Tenaga Nuklir Nasional', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(76, 'Lembaga Administrasi Negara', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(77, 'Lembaga Ilmu Pengetahuan Indonesia', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(78, 'Lembaga Kebijakan Pengadaan Barang/Jasa Pemerintah', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(79, 'Lembaga Ketahanan Nasional', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(80, 'Lembaga Penerbangan dan Antariksa Nasional', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(81, 'Lembaga Sandi Negara', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(82, 'Perpustakaan Nasional Republik Indonesia', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(83, 'Komisi Pemberantasan Tindak Pidana Korupsi', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(84, 'Komisi Pemilihan Umum', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(85, 'Komisi Pengawas Persaingan Usaha', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(86, 'PEMERINTAH KABUPATEN ACEH BARAT', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(87, 'PEMERINTAH KABUPATEN ACEH BARAT DAYA', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(88, 'PEMERINTAH KABUPATEN ACEH BESAR', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(89, 'PEMERINTAH KABUPATEN ACEH JAYA', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(90, 'PEMERINTAH KABUPATEN ACEH SELATAN', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(91, 'PEMERINTAH KABUPATEN ACEH SINGKIL', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(92, 'PEMERINTAH KABUPATEN ACEH TAMIANG', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(93, 'PEMERINTAH KABUPATEN ACEH TENGAH', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(94, 'PEMERINTAH KABUPATEN ACEH TENGGARA', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(95, 'PEMERINTAH KABUPATEN ACEH TIMUR', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(96, 'PEMERINTAH KABUPATEN ACEH UTARA', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(97, 'PEMERINTAH KABUPATEN BENER MERIAH', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(98, 'PEMERINTAH KABUPATEN BIREUEN', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(99, 'PEMERINTAH KABUPATEN GAYO LUES', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(100, 'PEMERINTAH KABUPATEN NAGAN RAYA', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(101, 'PEMERINTAH KABUPATEN PIDIE', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(102, 'PEMERINTAH KABUPATEN PIDIE JAYA', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(103, 'PEMERINTAH KABUPATEN SIMEULUE', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(104, 'PEMERINTAH KOTA BANDA ACEH', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(105, 'PEMERINTAH KOTA LANGSA', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(106, 'PEMERINTAH KOTA LHOKSEUMAWE', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(107, 'PEMERINTAH KOTA SABANG', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(108, 'PEMERINTAH KOTA SUBULUSSALAM', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(109, 'PEMERINTAH KABUPATEN ASAHAN', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(110, 'PEMERINTAH KABUPATEN BATUBARA', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(111, 'PEMERINTAH KABUPATEN DAIRI', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(112, 'PEMERINTAH KABUPATEN DELI SERDANG', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(113, 'PEMERINTAH KABUPATEN HUMBANG HASUNDUTAN', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(114, 'PEMERINTAH KABUPATEN KARO', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(115, 'PEMERINTAH KABUPATEN LABUHANBATU', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(116, 'PEMERINTAH KABUPATEN LABUHANBATU SELATAN', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(117, 'PEMERINTAH KABUPATEN LABUHANBATU UTARA', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(118, 'PEMERINTAH KABUPATEN LANGKAT', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(119, 'PEMERINTAH KABUPATEN MANDAILING NATAL', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(120, 'PEMERINTAH KABUPATEN NIAS', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(121, 'PEMERINTAH KABUPATEN NIAS BARAT', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(122, 'PEMERINTAH KABUPATEN NIAS SELATAN', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(123, 'PEMERINTAH KABUPATEN NIAS UTARA', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(124, 'PEMERINTAH KABUPATEN PADANG LAWAS', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(125, 'PEMERINTAH KABUPATEN PADANG LAWAS UTARA', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(126, 'PEMERINTAH KABUPATEN PAKPAK BHARAT', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(127, 'PEMERINTAH KABUPATEN SAMOSIR', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(128, 'PEMERINTAH KABUPATEN SERDANG BEDAGAI', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(129, 'PEMERINTAH KABUPATEN SIMALUNGUN', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(130, 'PEMERINTAH KABUPATEN TAPANULI SELATAN', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(131, 'PEMERINTAH KABUPATEN TAPANULI TENGAH', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(132, 'PEMERINTAH KABUPATEN TAPANULI UTARA', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(133, 'PEMERINTAH KABUPATEN TOBA SAMOSIR', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(134, 'PEMERINTAH KOTA BINJAI', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(135, 'PEMERINTAH KOTA GUNUNGSITOLI', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(136, 'PEMERINTAH KOTA MEDAN', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(137, 'PEMERINTAH KOTA PADANGSIDEMPUAN', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(138, 'PEMERINTAH KOTA PEMATANGSIANTAR', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(139, 'PEMERINTAH KOTA SIBOLGA', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(140, 'PEMERINTAH KOTA TANJUNGBALAI', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(141, 'PEMERINTAH KOTA TEBING TINGGI', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(142, 'PEMERINTAH KABUPATEN AGAM', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(143, 'PEMERINTAH KABUPATEN DHARMASRAYA', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(144, 'PEMERINTAH KABUPATEN KEPULAUAN MENTAWAI', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(145, 'PEMERINTAH KABUPATEN LIMA PULUH KOTA', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(146, 'PEMERINTAH KABUPATEN PADANG PARIAMAN', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(147, 'PEMERINTAH KABUPATEN PASAMAN', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(148, 'PEMERINTAH KABUPATEN PASAMAN BARAT', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(149, 'PEMERINTAH KABUPATEN PESISIR SELATAN', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(150, 'PEMERINTAH KABUPATEN SIJUNJUNG', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(151, 'PEMERINTAH KABUPATEN SOLOK', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(152, 'PEMERINTAH KABUPATEN SOLOK SELATAN', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(153, 'PEMERINTAH KABUPATEN TANAH DATAR', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(154, 'PEMERINTAH KOTA BUKITTINGGI', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(155, 'PEMERINTAH KOTA PADANG', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(156, 'PEMERINTAH KOTA PADANGPANJANG', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(157, 'PEMERINTAH KOTA PARIAMAN', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(158, 'PEMERINTAH KOTA PAYAKUMBUH', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(159, 'PEMERINTAH KOTA SAWAHLUNTO', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(160, 'PEMERINTAH KOTA SOLOK', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(161, 'PEMERINTAH KABUPATEN BENGKALIS', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(162, 'PEMERINTAH KABUPATEN INDRAGIRI HILIR', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(163, 'PEMERINTAH KABUPATEN INDRAGIRI HULU', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(164, 'PEMERINTAH KABUPATEN KAMPAR', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(165, 'PEMERINTAH KABUPATEN KUANTAN SINGINGI', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(166, 'PEMERINTAH KABUPATEN PELALAWAN', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(167, 'PEMERINTAH KABUPATEN ROKAN HILIR', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(168, 'PEMERINTAH KABUPATEN ROKAN HULU', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(169, 'PEMERINTAH KABUPATEN SIAK', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(170, 'PEMERINTAH KABUPATEN KEPULAUAN MERANTI', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(171, 'PEMERINTAH KOTA DUMAI', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(172, 'PEMERINTAH KOTA PEKANBARU', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(173, 'PEMERINTAH KABUPATEN BINTAN', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(174, 'PEMERINTAH KABUPATEN KARIMUN', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(175, 'PEMERINTAH KABUPATEN KEPULAUAN ANAMBAS', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(176, 'PEMERINTAH KABUPATEN LINGGA', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(177, 'PEMERINTAH KABUPATEN NATUNA', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(178, 'PEMERINTAH KOTA BATAM', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(179, 'PEMERINTAH KOTA TANJUNG PINANG', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(180, 'PEMERINTAH KABUPATEN BATANGHARI', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(181, 'PEMERINTAH KABUPATEN BUNGO', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(182, 'PEMERINTAH KABUPATEN KERINCI', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(183, 'PEMERINTAH KABUPATEN MERANGIN', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(184, 'PEMERINTAH KABUPATEN MUARO JAMBI', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(185, 'PEMERINTAH KABUPATEN SAROLANGUN', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(186, 'PEMERINTAH KABUPATEN TANJUNG JABUNG BARAT', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(187, 'PEMERINTAH KABUPATEN TANJUNG JABUNG TIMUR', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(188, 'PEMERINTAH KABUPATEN TEBO', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(189, 'PEMERINTAH KOTA JAMBI', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(190, 'PEMERINTAH KOTA SUNGAI PENUH', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(191, 'PEMERINTAH KABUPATEN BENGKULU SELATAN', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(192, 'PEMERINTAH KABUPATEN BENGKULU TENGAH', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(193, 'PEMERINTAH KABUPATEN BENGKULU UTARA', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(194, 'PEMERINTAH KABUPATEN KAUR', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(195, 'PEMERINTAH KABUPATEN KEPAHIANG', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(196, 'PEMERINTAH KABUPATEN LEBONG', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(197, 'PEMERINTAH KABUPATEN MUKOMUKO', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(198, 'PEMERINTAH KABUPATEN REJANG LEBONG', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(199, 'PEMERINTAH KABUPATEN SELUMA', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(200, 'PEMERINTAH KOTA BENGKULU', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(201, 'PEMERINTAH KABUPATEN BANYUASIN', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(202, 'PEMERINTAH KABUPATEN EMPAT LAWANG', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(203, 'PEMERINTAH KABUPATEN LAHAT', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(204, 'PEMERINTAH KABUPATEN MUARA ENIM', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(205, 'PEMERINTAH KABUPATEN MUSI BANYUASIN', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(206, 'PEMERINTAH KABUPATEN MUSI RAWAS', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(207, 'PEMERINTAH KABUPATEN OGAN ILIR', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(208, 'PEMERINTAH KABUPATEN OGAN KOMERING ILIR', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(209, 'PEMERINTAH KABUPATEN OGAN KOMERING ULU', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(210, 'PEMERINTAH KABUPATEN OGAN KOMERING ULU SELATAN', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(211, 'PEMERINTAH KABUPATEN OGAN KOMERING ULU TIMUR', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(212, 'PEMERINTAH KOTA LUBUKLINGGAU|LUBUKLINGGAU|-', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(213, 'PEMERINTAH KOTA PAGAR ALAM', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(214, 'PEMERINTAH KOTA PALEMBANG', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(215, 'PEMERINTAH KOTA PRABUMULIH', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(216, 'PEMERINTAH KABUPATEN PENUKAL ABAB LEMATANG ILIR', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(217, 'PEMERINTAH KABUPATEN BANGKA', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(218, 'PEMERINTAH KABUPATEN BANGKA BARAT', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(219, 'PEMERINTAH KABUPATEN BANGKA SELATAN', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(220, 'PEMERINTAH KABUPATEN BANGKA TENGAH', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(221, 'PEMERINTAH KABUPATEN BELITUNG', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(222, 'PEMERINTAH KABUPATEN BELITUNG TIMUR', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(223, 'PEMERINTAH KOTA PANGKAL PINANG', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(224, 'PEMERINTAH KABUPATEN LAMPUNG TENGAH', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(225, 'PEMERINTAH KABUPATEN LAMPUNG UTARA', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(226, 'PEMERINTAH KABUPATEN LAMPUNG SELATAN', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(227, 'PEMERINTAH KABUPATEN LAMPUNG BARAT', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(228, 'PEMERINTAH KABUPATEN TULANG BAWANG', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(229, 'PEMERINTAH KABUPATEN TANGGAMUS', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(230, 'PEMERINTAH KABUPATEN WAY KANAN', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(231, 'PEMERINTAH KABUPATEN LAMPUNG TIMUR', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(232, 'PEMERINTAH KABUPATEN PESAWARAN', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(233, 'PEMERINTAH KABUPATEN PRINGSEWU', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(234, 'PEMERINTAH KABUPATEN MESUJI', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(235, 'PEMERINTAH KABUPATEN TULANG BAWANG BARAT', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(236, 'PEMERINTAH KABUPATEN PESISIR BARAT', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(237, 'PEMERINTAH KOTA BANDAR LAMPUNG', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(238, 'PEMERINTAH KOTA METRO', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(239, 'PEMERINTAH KABUPATEN TANGERANG', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(240, 'PEMERINTAH KABUPATEN SERANG', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(241, 'PEMERINTAH KABUPATEN LEBAK', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(242, 'PEMERINTAH KABUPATEN PANDEGLANG', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(243, 'PEMERINTAH KOTA TANGERANG', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(244, 'PEMERINTAH KOTA SERANG', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(245, 'PEMERINTAH KOTA CILEGON', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(246, 'PEMERINTAH KOTA TANGERANG SELATAN', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(247, 'PEMERINTAH KABUPATEN BANDUNG', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(248, 'PEMERINTAH KABUPATEN BANDUNG BARAT', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(249, 'PEMERINTAH KABUPATEN BEKASI', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(250, 'PEMERINTAH KABUPATEN BOGOR', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(251, 'PEMERINTAH KABUPATEN CIAMIS', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(252, 'PEMERINTAH KABUPATEN CIANJUR', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(253, 'PEMERINTAH KABUPATEN CIREBON', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(254, 'PEMERINTAH KABUPATEN GARUT', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(255, 'PEMERINTAH KABUPATEN INDRAMAYU', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(256, 'PEMERINTAH KABUPATEN KARAWANG', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(257, 'PEMERINTAH KABUPATEN KUNINGAN', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(258, 'PEMERINTAH KABUPATEN MAJALENGKA', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(259, 'PEMERINTAH KABUPATEN PANGANDARAN', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(260, 'PEMERINTAH KABUPATEN PURWAKARTA', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(261, 'PEMERINTAH KABUPATEN SUBANG', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(262, 'PEMERINTAH KABUPATEN SUKABUMI', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(263, 'PEMERINTAH KABUPATEN SUMEDANG', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(264, 'PEMERINTAH KABUPATEN TASIKMALAYA', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(265, 'PEMERINTAH KOTA BANDUNG', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(266, 'PEMERINTAH KOTA BANJAR', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(267, 'PEMERINTAH KOTA BEKASI', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(268, 'PEMERINTAH KOTA BOGOR', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(269, 'PEMERINTAH KOTA CIMAHI', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(270, 'PEMERINTAH KOTA CIREBON', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(271, 'PEMERINTAH KOTA DEPOK', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(272, 'PEMERINTAH KOTA SUKABUMI', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(273, 'PEMERINTAH KOTA TASIKMALAYA', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(274, 'PEMERINTAH KABUPATEN ADMINISTRASI KEPULAUAN SERIBU', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(275, 'PEMERINTAH KOTA ADMINISTRASI JAKARTA BARAT', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(276, 'PEMERINTAH KOTA ADMINISTRASI JAKARTA PUSAT', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(277, 'PEMERINTAH KOTA ADMINISTRASI JAKARTA SELATAN', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(278, 'PEMERINTAH KOTA ADMINISTRASI JAKARTA TIMUR', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(279, 'PEMERINTAH KOTA ADMINISTRASI JAKARTA UTARA', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(280, 'PEMERINTAH KABUPATEN BANJARNEGARA', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(281, 'PEMERINTAH KABUPATEN BANYUMAS', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(282, 'PEMERINTAH KABUPATEN BATANG', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(283, 'PEMERINTAH KABUPATEN BLORA', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(284, 'PEMERINTAH KABUPATEN BOYOLALI', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(285, 'PEMERINTAH KABUPATEN BREBES', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(286, 'PEMERINTAH KABUPATEN CILACAP', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(287, 'PEMERINTAH KABUPATEN DEMAK', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(288, 'PEMERINTAH KABUPATEN GROBOGAN', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(289, 'PEMERINTAH KOTA JEPARA', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(290, 'PEMERINTAH KABUPATEN KARANGANYAR', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(291, 'PEMERINTAH KABUPATEN KEBUMEN', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(292, 'PEMERINTAH KABUPATEN KENDAL', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(293, 'PEMERINTAH KABUPATEN KLATEN', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(294, 'PEMERINTAH KABUPATEN KUDUS', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(295, 'PEMERINTAH KABUPATEN MAGELANG', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(296, 'PEMERINTAH KABUPATEN PATI', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(297, 'PEMERINTAH KABUPATEN PEKALONGAN', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(298, 'PEMERINTAH KABUPATEN PEMALANG', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(299, 'PEMERINTAH KABUPATEN PURBALINGGA', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(300, 'PEMERINTAH KABUPATEN PURWOREJO', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(301, 'PEMERINTAH KABUPATEN REMBANG', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(302, 'PEMERINTAH KABUPATEN SEMARANG', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(303, 'PEMERINTAH KABUPATEN SRAGEN', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(304, 'PEMERINTAH KABUPATEN SUKOHARJO', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(305, 'PEMERINTAH KABUPATEN TEGAL', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(306, 'PEMERINTAH KABUPATEN TEMANGGUNG', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(307, 'PEMERINTAH KABUPATEN WONOGIRI', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(308, 'PEMERINTAH KABUPATEN WONOSOBO', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(309, 'PEMERINTAH KOTA MAGELANG', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(310, 'PEMERINTAH KOTA PEKALONGAN', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(311, 'PEMERINTAH KOTA SALATIGA', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(312, 'PEMERINTAH KOTA SEMARANG', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(313, 'PEMERINTAH KOTA SURAKARTA', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(314, 'PEMERINTAH KOTA TEGAL', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(315, 'PEMERINTAH KABUPATEN BANGKALAN', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(316, 'PEMERINTAH KABUPATEN BANYUWANGI', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(317, 'PEMERINTAH KABUPATEN BLITAR', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(318, 'PEMERINTAH KABUPATEN BOJONEGORO', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(319, 'PEMERINTAH KABUPATEN BONDOWOSO', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(320, 'PEMERINTAH KABUPATEN GRESIK', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(321, 'PEMERINTAH KABUPATEN JEMBER', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(322, 'PEMERINTAH KABUPATEN JOMBANG', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(323, 'PEMERINTAH KABUPATEN KEDIRI', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(324, 'PEMERINTAH KABUPATEN LAMONGAN', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(325, 'PEMERINTAH KABUPATEN LUMAJANG', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(326, 'PEMERINTAH KABUPATEN MADIUN', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(327, 'PEMERINTAH KABUPATEN MAGETAN', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(328, 'PEMERINTAH KABUPATEN MALANG', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(329, 'PEMERINTAH KABUPATEN MOJOKERTO', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(330, 'PEMERINTAH KABUPATEN NGANJUK', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(331, 'PEMERINTAH KABUPATEN NGAWI', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(332, 'PEMERINTAH KABUPATEN PACITAN', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(333, 'PEMERINTAH KABUPATEN PAMEKASAN', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(334, 'PEMERINTAH KABUPATEN PASURUAN', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(335, 'PEMERINTAH KABUPATEN PONOROGO', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(336, 'PEMERINTAH KABUPATEN PROBOLINGGO', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(337, 'PEMERINTAH KABUPATEN SAMPANG', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(338, 'PEMERINTAH KABUPATEN SIDOARJO', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(339, 'PEMERINTAH KABUPATEN SITUBONDO', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(340, 'PEMERINTAH KABUPATEN SUMENEP', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(341, 'PEMERINTAH KABUPATEN TRENGGALEK', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(342, 'PEMERINTAH KABUPATEN TUBAN', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(343, 'PEMERINTAH KABUPATEN TULUNGAGUNG', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(344, 'PEMERINTAH KOTA BATU[8]', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(345, 'PEMERINTAH KOTA BLITAR', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(346, 'PEMERINTAH KOTA KEDIRI', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(347, 'PEMERINTAH KOTA MADIUN', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(348, 'PEMERINTAH KOTA MALANG', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(349, 'PEMERINTAH KOTA MOJOKERTO', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(350, 'PEMERINTAH KOTA PASURUAN', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(351, 'PEMERINTAH KOTA PROBOLINGGO', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(352, 'PEMERINTAH KOTA SURABAYA', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(353, 'PEMERINTAH KABUPATEN BANTUL', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(354, 'PEMERINTAH KABUPATEN GUNUNG KIDUL', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(355, 'PEMERINTAH KABUPATEN KULON PROGO', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(356, 'PEMERINTAH KABUPATEN SLEMAN', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(357, 'PEMERINTAH KOTA YOGYAKARTA', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(358, 'PEMERINTAH KABUPATEN BADUNG', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(359, 'PEMERINTAH KABUPATEN BANGLI', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(360, 'PEMERINTAH KABUPATEN BULELENG', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(361, 'PEMERINTAH KABUPATEN GIANYAR', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(362, 'PEMERINTAH KABUPATEN JEMBRANA', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(363, 'PEMERINTAH KABUPATEN KARANGASEM', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(364, 'PEMERINTAH KABUPATEN KLUNGKUNG', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(365, 'PEMERINTAH KABUPATEN TABANAN', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(366, 'PEMERINTAH KOTA DENPASAR', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(367, 'PEMERINTAH KABUPATEN BIMA', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(368, 'PEMERINTAH KABUPATEN DOMPU', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(369, 'PEMERINTAH KABUPATEN LOMBOK BARAT', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(370, 'PEMERINTAH KABUPATEN LOMBOK TENGAH', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(371, 'PEMERINTAH KABUPATEN LOMBOK TIMUR', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(372, 'PEMERINTAH KABUPATEN LOMBOK UTARA', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(373, 'PEMERINTAH KABUPATEN SUMBAWA', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(374, 'PEMERINTAH KABUPATEN SUMBAWA BARAT', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(375, 'PEMERINTAH KOTA BIMA', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(376, 'PEMERINTAH KOTA MATARAM', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(377, 'PEMERINTAH KABUPATEN ALOR', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(378, 'PEMERINTAH KABUPATEN BELU', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(379, 'PEMERINTAH KABUPATEN ENDE', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(380, 'PEMERINTAH KABUPATEN FLORES TIMUR', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(381, 'PEMERINTAH KABUPATEN KUPANG', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(382, 'PEMERINTAH KABUPATEN LEMBATA', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(383, 'PEMERINTAH KABUPATEN MANGGARAI', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(384, 'PEMERINTAH KABUPATEN MANGGARAI BARAT', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(385, 'PEMERINTAH KABUPATEN MANGGARAI TIMUR', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(386, 'PEMERINTAH KABUPATEN NGADA', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(387, 'PEMERINTAH KABUPATEN NAGEKEO', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(388, 'PEMERINTAH KABUPATEN ROTE NDAO', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(389, 'PEMERINTAH KABUPATEN SABU RAIJUA', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(390, 'PEMERINTAH KABUPATEN SIKKA', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(391, 'PEMERINTAH KABUPATEN SUMBA BARAT', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(392, 'PEMERINTAH KABUPATEN SUMBA BARAT DAYA', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(393, 'PEMERINTAH KABUPATEN SUMBA TENGAH', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(394, 'PEMERINTAH KABUPATEN SUMBA TIMUR', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(395, 'PEMERINTAH KABUPATEN TIMOR TENGAH SELATAN', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(396, 'PEMERINTAH KABUPATEN TIMOR TENGAH UTARA', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(397, 'PEMERINTAH KOTA KUPANG', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(398, 'PEMERINTAH KABUPATEN MALAKA', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(399, 'PEMERINTAH KABUPATEN BENGKAYANG', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(400, 'PEMERINTAH KABUPATEN KAPUAS HULU', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(401, 'PEMERINTAH KABUPATEN KAYONG UTARA', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(402, 'PEMERINTAH KABUPATEN KETAPANG', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(403, 'PEMERINTAH KABUPATEN KUBU RAYA', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(404, 'PEMERINTAH KABUPATEN LANDAK', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(405, 'PEMERINTAH KABUPATEN MELAWI', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(406, 'PEMERINTAH KABUPATEN PONTIANAK', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(407, 'PEMERINTAH KABUPATEN SAMBAS', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(408, 'PEMERINTAH KABUPATEN SANGGAU', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(409, 'PEMERINTAH KABUPATEN SEKADAU', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(410, 'PEMERINTAH KABUPATEN SINTANG', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(411, 'PEMERINTAH KOTA PONTIANAK', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(412, 'PEMERINTAH KOTA SINGKAWANG', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(413, 'PEMERINTAH KABUPATEN BALANGAN', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(414, 'PEMERINTAH KABUPATEN BANJAR', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(415, 'PEMERINTAH KABUPATEN BARITO KUALA', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(416, 'PEMERINTAH KABUPATEN HULU SUNGAI SELATAN', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(417, 'PEMERINTAH KABUPATEN HULU SUNGAI TENGAH', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(418, 'PEMERINTAH KABUPATEN HULU SUNGAI UTARA', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(419, 'PEMERINTAH KABUPATEN KOTABARU', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(420, 'PEMERINTAH KABUPATEN TABALONG', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(421, 'PEMERINTAH KABUPATEN TANAH BUMBU', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(422, 'PEMERINTAH KABUPATEN TANAH LAUT', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(423, 'PEMERINTAH KABUPATEN TAPIN', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(424, 'PEMERINTAH KOTA BANJARBARU', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(425, 'PEMERINTAH KOTA BANJARMASIN', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(426, 'PEMERINTAH KABUPATEN BARITO SELATAN', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(427, 'PEMERINTAH KABUPATEN BARITO TIMUR', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(428, 'PEMERINTAH KABUPATEN BARITO UTARA', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(429, 'PEMERINTAH KABUPATEN GUNUNG MAS', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(430, 'PEMERINTAH KABUPATEN KAPUAS', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(431, 'PEMERINTAH KABUPATEN KATINGAN', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(432, 'PEMERINTAH KABUPATEN KOTAWARINGIN BARAT', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(433, 'PEMERINTAH KABUPATEN KOTAWARINGIN TIMUR', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(434, 'PEMERINTAH KABUPATEN LAMANDAU', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(435, 'PEMERINTAH KABUPATEN MURUNG RAYA', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(436, 'PEMERINTAH KABUPATEN PULANG PISAU', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(437, 'PEMERINTAH KABUPATEN SUKAMARA', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(438, 'PEMERINTAH KABUPATEN SERUYAN', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(439, 'PEMERINTAH KOTA PALANGKA RAYA', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(440, 'PEMERINTAH KABUPATEN BERAU', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(441, 'PEMERINTAH KABUPATEN KUTAI BARAT', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(442, 'PEMERINTAH KABUPATEN KUTAI KARTANEGARA', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(443, 'PEMERINTAH KABUPATEN KUTAI TIMUR', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(444, 'PEMERINTAH KABUPATEN PASER', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(445, 'PEMERINTAH KABUPATEN PENAJAM PASER UTARA', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(446, 'PEMERINTAH BALIKPAPAN', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(447, 'PEMERINTAH KOTA BONTANG', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(448, 'PEMERINTAH KOTA SAMARINDA', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(449, 'PEMERINTAH KABUPATEN MAHAKAM ULU', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(450, 'PEMERINTAH KABUPATEN BULUNGAN', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(451, 'PEMERINTAH KABUPATEN MALINAU', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(452, 'PEMERINTAH KABUPATEN NUNUKAN', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(453, 'PEMERINTAH KABUPATEN TANA TIDUNG', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(454, 'PEMERINTAH KOTA TARAKAN', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(455, 'PEMERINTAH KABUPATEN BOALEMO', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(456, 'PEMERINTAH KABUPATEN BONE BOLANGO', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(457, 'PEMERINTAH KABUPATEN GORONTALO', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(458, 'PEMERINTAH KABUPATEN GORONTALO UTARA', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(459, 'PEMERINTAH KABUPATEN POHUWATO', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(460, 'PEMERINTAH KOTA GORONTALO', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(461, 'PEMERINTAH KABUPATEN BANTAENG', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(462, 'PEMERINTAH KABUPATEN BARRU', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(463, 'PEMERINTAH KABUPATEN BONE', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(464, 'PEMERINTAH KABUPATEN BULUKUMBA', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(465, 'PEMERINTAH KABUPATEN ENREKANG', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(466, 'PEMERINTAH KABUPATEN GOWA', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(467, 'PEMERINTAH KABUPATEN JENEPONTO', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(468, 'PEMERINTAH KABUPATEN KEPULAUAN SELAYAR', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(469, 'PEMERINTAH KABUPATEN LUWU', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(470, 'PEMERINTAH KABUPATEN LUWU TIMUR', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(471, 'PEMERINTAH KABUPATEN LUWU UTARA', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(472, 'PEMERINTAH KABUPATEN MAROS', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(473, 'PEMERINTAH KABUPATEN PANGKAJENE DAN KEPULAUAN', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(474, 'PEMERINTAH KABUPATEN PINRANG', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(475, 'PEMERINTAH KABUPATEN SIDENRENG RAPPANG', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(476, 'PEMERINTAH KABUPATEN SINJAI', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(477, 'PEMERINTAH KABUPATEN SOPPENG', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(478, 'PEMERINTAH KABUPATEN TAKALAR', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(479, 'PEMERINTAH KABUPATEN TANA TORAJA', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(480, 'PEMERINTAH KABUPATEN TORAJA UTARA', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(481, 'PEMERINTAH KABUPATEN WAJO', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(482, 'PEMERINTAH KOTA MAKASSAR', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(483, 'PEMERINTAH KOTA PALOPO', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(484, 'PEMERINTAH KOTA PAREPARE', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(485, 'PEMERINTAH KABUPATEN BOMBANA', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(486, 'PEMERINTAH KABUPATEN BUTON', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(487, 'PEMERINTAH KABUPATEN BUTON UTARA', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(488, 'PEMERINTAH KABUPATEN KOLAKA', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(489, 'PEMERINTAH KABUPATEN KOLAKA UTARA', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(490, 'PEMERINTAH KABUPATEN KONAWE', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(491, 'PEMERINTAH KABUPATEN KONAWE SELATAN', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(492, 'PEMERINTAH KABUPATEN KONAWE UTARA', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(493, 'PEMERINTAH KABUPATEN MUNA', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(494, 'PEMERINTAH KABUPATEN WAKATOBI', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(495, 'PEMERINTAH KOTA BAU-BAU', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(496, 'PEMERINTAH KOTA KENDARI', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(497, 'PEMERINTAH KABUPATEN KOLAKA TIMUR', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(498, 'PEMERINTAH KABUPATEN BANGGAI', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(499, 'PEMERINTAH KABUPATEN BANGGAI KEPULAUAN', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(500, 'PEMERINTAH KABUPATEN BUOL', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(501, 'PEMERINTAH KABUPATEN DONGGALA', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(502, 'PEMERINTAH KABUPATEN MOROWALI', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(503, 'PEMERINTAH KABUPATEN PARIGI MOUTONG', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(504, 'PEMERINTAH KABUPATEN POSO', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(505, 'PEMERINTAH KABUPATEN TOJO UNA-UNA', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(506, 'PEMERINTAH KABUPATEN TOLI-TOLI', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(507, 'PEMERINTAH KABUPATEN SIGI', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(508, 'PEMERINTAH KOTA PALU', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(509, 'PEMERINTAH KABUPATEN BANGGAI LAUT', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(510, 'PEMERINTAH KABUPATEN MOROWALI UTARA', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(511, 'PEMERINTAH KABUPATEN BOLAANG MONGONDOW', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(512, 'PEMERINTAH KABUPATEN BOLAANG MONGONDOW SELATAN', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(513, 'PEMERINTAH KABUPATEN BOLAANG MONGONDOW TIMUR', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(514, 'PEMERINTAH KABUPATEN BOLAANG MONGONDOW UTARA', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(515, 'PEMERINTAH KABUPATEN KEPULAUAN SANGIHE', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(516, 'PEMERINTAH KABUPATEN KEPULAUAN SIAU TAGULANDANG BIARO', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(517, 'PEMERINTAH KABUPATEN KEPULAUAN TALAUD', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(518, 'PEMERINTAH KABUPATEN MINAHASA', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(519, 'PEMERINTAH KABUPATEN MINAHASA SELATAN', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(520, 'PEMERINTAH KABUPATEN MINAHASA TENGGARA', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(521, 'PEMERINTAH KABUPATEN MINAHASA UTARA', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(522, 'PEMERINTAH KOTA BITUNG', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(523, 'PEMERINTAH KOTA KOTAMOBAGU', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(524, 'PEMERINTAH KOTA MANADO', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(525, 'PEMERINTAH KOTA TOMOHON', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(526, 'PEMERINTAH KABUPATEN MAJENE', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(527, 'PEMERINTAH KABUPATEN MAMASA', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(528, 'PEMERINTAH KABUPATEN MAMUJU', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(529, 'PEMERINTAH KABUPATEN MAMUJU UTARA', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(530, 'PEMERINTAH KABUPATEN POLEWALI MANDAR', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(531, 'PEMERINTAH KABUPATEN MAMUJU TENGAH', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(532, 'PEMERINTAH KABUPATEN BURU', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(533, 'PEMERINTAH KABUPATEN BURU SELATAN', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(534, 'PEMERINTAH KABUPATEN KEPULAUAN ARU', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(535, 'PEMERINTAH KABUPATEN MALUKU BARAT DAYA', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(536, 'PEMERINTAH KABUPATEN MALUKU TENGAH', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(537, 'PEMERINTAH KABUPATEN MALUKU TENGGARA', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(538, 'PEMERINTAH KABUPATEN MALUKU TENGGARA BARAT', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(539, 'PEMERINTAH KABUPATEN SERAM BAGIAN BARAT', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(540, 'PEMERINTAH KABUPATEN SERAM BAGIAN TIMUR', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(541, 'PEMERINTAH KOTA AMBON', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(542, 'PEMERINTAH KOTA TUAL', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(543, 'PEMERINTAH KABUPATEN HALMAHERA BARAT', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(544, 'PEMERINTAH KABUPATEN HALMAHERA TENGAH', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(545, 'PEMERINTAH KABUPATEN HALMAHERA UTARA', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(546, 'PEMERINTAH KABUPATEN HALMAHERA SELATAN', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(547, 'PEMERINTAH KABUPATEN KEPULAUAN SULA', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(548, 'PEMERINTAH KABUPATEN HALMAHERA TIMUR', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(549, 'PEMERINTAH KABUPATEN PULAU MOROTAI', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(550, 'PEMERINTAH KOTA TERNATE', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(551, 'PEMERINTAH KOTA TIDORE KEPULAUAN', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(552, 'PEMERINTAH KABUPATEN PULAU TALIABU', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(553, 'PEMERINTAH KABUPATEN ASMAT', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(554, 'PEMERINTAH KABUPATEN BIAK NUMFOR', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(555, 'PEMERINTAH KABUPATEN BOVEN DIGOEL', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(556, 'PEMERINTAH KABUPATEN DEIYAI', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(557, 'PEMERINTAH KABUPATEN DOGIYAI', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(558, 'PEMERINTAH KABUPATEN INTAN JAYA', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(559, 'PEMERINTAH KABUPATEN JAYAPURA', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(560, 'PEMERINTAH KABUPATEN JAYAWIJAYA', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(561, 'PEMERINTAH KABUPATEN KEEROM', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(562, 'PEMERINTAH KABUPATEN KEPULAUAN YAPEN', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(563, 'PEMERINTAH KABUPATEN LANNY JAYA', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(564, 'PEMERINTAH KABUPATEN MAMBERAMO RAYA', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(565, 'PEMERINTAH KABUPATEN MAMBERAMO TENGAH', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(566, 'PEMERINTAH KABUPATEN MAPPI', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(567, 'PEMERINTAH KABUPATEN MERAUKE', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(568, 'PEMERINTAH KABUPATEN MIMIKA', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(569, 'PEMERINTAH KABUPATEN NABIRE', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(570, 'PEMERINTAH KABUPATEN NDUGA', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(571, 'PEMERINTAH KABUPATEN PANIAI', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(572, 'PEMERINTAH KABUPATEN PEGUNUNGAN BINTANG', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(573, 'PEMERINTAH KABUPATEN PUNCAK', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(574, 'PEMERINTAH KABUPATEN PUNCAK JAYA', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(575, 'PEMERINTAH KABUPATEN SARMI', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(576, 'PEMERINTAH KABUPATEN SUPIORI', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(577, 'PEMERINTAH KABUPATEN TOLIKARA', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(578, 'PEMERINTAH KABUPATEN WAROPEN', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(579, 'PEMERINTAH KABUPATEN YAHUKIMO', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(580, 'PEMERINTAH KABUPATEN YALIMO', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(581, 'PEMERINTAH KOTA JAYAPURA', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(582, 'PEMERINTAH KABUPATEN FAKFAK', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(583, 'PEMERINTAH KABUPATEN KAIMANA', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(584, 'PEMERINTAH KABUPATEN MANOKWARI', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(585, 'PEMERINTAH KABUPATEN MANOKWARI SELATAN', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(586, 'PEMERINTAH KABUPATEN MAYBRAT', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(587, 'PEMERINTAH KABUPATEN PEGUNUNGAN ARFAK', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(588, 'PEMERINTAH KABUPATEN RAJA AMPAT', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(589, 'PEMERINTAH KABUPATEN SORONG', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(590, 'PEMERINTAH KABUPATEN SORONG SELATAN', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(591, 'PEMERINTAH KABUPATEN TAMBRAUW', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(592, 'PEMERINTAH KABUPATEN TELUK BINTUNI', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(593, 'PEMERINTAH KABUPATEN TELUK WONDAMA', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(594, 'PEMERINTAH KOTA SORONG', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(595, 'PEMERINTAH PROVINSI ACEH', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(596, 'PEMERINTAH PROVINSI BALI', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(597, 'PEMERINTAH PROVINSI BANTEN', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(598, 'PEMERINTAH PROVINSI BENGKULU', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(599, 'PEMERINTAH PROVINSI GORONTALO', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(600, 'PEMERINTAH PROVINSI DKI JAKARTA', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(601, 'PEMERINTAH PROVINSI JAMBI', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(602, 'PEMERINTAH PROVINSI JAWA BARAT', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(603, 'PEMERINTAH PROVINSI JAWA TENGAH', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(604, 'PEMERINTAH PROVINSI JAWA TIMUR', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(605, 'PEMERINTAH PROVINSI KALIMANTAN BARAT', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(606, 'PEMERINTAH PROVINSI KALIMANTAN SELATAN', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(607, 'PEMERINTAH PROVINSI KALIMANTAN TENGAH', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(608, 'PEMERINTAH PROVINSI KALIMANTAN TIMUR', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(609, 'PEMERINTAH PROVINSI KALIMANTAN UTARA', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(610, 'PEMERINTAH PROVINSI KEPULAUAN BANGKA BELITUNG', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(611, 'PEMERINTAH PROVINSI KEPULAUAN RIAU', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(612, 'PEMERINTAH PROVINSI LAMPUNG', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(613, 'PEMERINTAH PROVINSI MALUKU', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(614, 'PEMERINTAH PROVINSI MALUKU UTARA', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(615, 'PEMERINTAH PROVINSI NUSA TENGGARA BARAT', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(616, 'PEMERINTAH PROVINSI NUSA TENGGARA TIMUR', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(617, 'PEMERINTAH PROVINSI PAPUA', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(618, 'PEMERINTAH PROVINSI PAPUA BARAT', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(619, 'PEMERINTAH PROVINSI RIAU', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(620, 'PEMERINTAH PROVINSI SULAWESI BARAT', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(621, 'PEMERINTAH PROVINSI SULAWESI SELATAN', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(622, 'PEMERINTAH PROVINSI SULAWESI TENGAH', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(623, 'PEMERINTAH PROVINSI SULAWESI TENGGARA', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(624, 'PEMERINTAH PROVINSI SULAWESI UTARA', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(625, 'PEMERINTAH PROVINSI SUMATERA BARAT', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(626, 'PEMERINTAH PROVINSI SUMATERA SELATAN', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(627, 'PEMERINTAH PROVINSI SUMATERA UTARA', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50'),
	(628, 'PEMERINTAH PROVINSI DI YOGYAKARTA', 0, 'A', 0, '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-02-12 09:52:50');
/*!40000 ALTER TABLE `tbl_unitkerja` ENABLE KEYS */;


-- Dumping structure for table jabfung.tbl_user
DROP TABLE IF EXISTS `tbl_user`;
CREATE TABLE IF NOT EXISTS `tbl_user` (
  `id_user` int(10) NOT NULL AUTO_INCREMENT,
  `id_kategori_user` int(10) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `no_sk_jabfung` varchar(255) NOT NULL,
  `no_sertifikat` varchar(255) NOT NULL,
  `status` enum('aktif','non-aktif') NOT NULL,
  PRIMARY KEY (`id_user`),
  UNIQUE KEY `email` (`email`),
  KEY `FK_tbl_user_tbl_user_kategori` (`id_kategori_user`),
  CONSTRAINT `FK_tbl_user_tbl_user_kategori` FOREIGN KEY (`id_kategori_user`) REFERENCES `tbl_user_kategori` (`id_user_kategori`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- Dumping data for table jabfung.tbl_user: ~0 rows (approximately)
/*!40000 ALTER TABLE `tbl_user` DISABLE KEYS */;
INSERT INTO `tbl_user` (`id_user`, `id_kategori_user`, `email`, `password`, `no_sk_jabfung`, `no_sertifikat`, `status`) VALUES
	(1, 1, 'admin@email.com', '8c6976e5b5410415bde908bd4dee15dfb167a9c873fc4bb8a81f6f2ab448a918', '', '', 'aktif');
/*!40000 ALTER TABLE `tbl_user` ENABLE KEYS */;


-- Dumping structure for table jabfung.tbl_user_kategori
DROP TABLE IF EXISTS `tbl_user_kategori`;
CREATE TABLE IF NOT EXISTS `tbl_user_kategori` (
  `id_user_kategori` int(10) NOT NULL AUTO_INCREMENT,
  `user_kategori` varchar(255) NOT NULL,
  `user_description` varchar(255) NOT NULL,
  `change_by` int(10) DEFAULT NULL,
  `change_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_user_kategori`),
  KEY `FK_tbl_user_kategori_tbl_user` (`change_by`),
  CONSTRAINT `FK_tbl_user_kategori_tbl_user` FOREIGN KEY (`change_by`) REFERENCES `tbl_user` (`id_user`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

-- Dumping data for table jabfung.tbl_user_kategori: ~5 rows (approximately)
/*!40000 ALTER TABLE `tbl_user_kategori` DISABLE KEYS */;
INSERT INTO `tbl_user_kategori` (`id_user_kategori`, `user_kategori`, `user_description`, `change_by`, `change_date`) VALUES
	(1, 'sadmin', 'Super Admin', 1, '2015-04-02 22:07:12'),
	(2, 'admin', 'Admin Wilayah', 1, '2015-04-02 23:36:49'),
	(3, 'pegawai', 'Pegawai', 1, '2015-04-08 17:12:27'),
	(4, 'penilai', 'Tim Penilai', 1, '2015-04-08 17:13:31'),
	(5, 'penguji', 'Tim Penguji Karya Ilmiah', 1, '2015-04-08 17:13:48');
/*!40000 ALTER TABLE `tbl_user_kategori` ENABLE KEYS */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
