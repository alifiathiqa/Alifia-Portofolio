SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";



CREATE TABLE IF NOT EXISTS `tbl_blog` (
`kode` int(11) NOT NULL,
  `kategori` varchar(50) DEFAULT NULL,
  `judul` varchar(100) DEFAULT NULL,
  `konten` text,
  `tgl_posting` date DEFAULT NULL,
  `user` varchar(50) DEFAULT NULL,
  `status` varchar(10) NOT NULL,
  `gambar` varchar(100) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=58 ;



CREATE TABLE IF NOT EXISTS `tbl_bulan` (
`kode` int(11) NOT NULL,
  `uraian` varchar(100) DEFAULT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=39 ;



INSERT INTO `tbl_bulan` (`kode`, `uraian`) VALUES
(34, 'https://www.youtube.com/watch?v=e-ZTUfWcw_g'),
(35, 'https://www.youtube.com/watch?v=TNh4NCJQjGY'),
(36, 'https://www.youtube.com/watch?v=e-ZTUfWcw_g'),
(37, 'https://www.youtube.com/watch?v=e-ZTUfWcw_g'),
(38, 'https://www.youtube.com/watch?v=e-ZTUfWcw_g');



CREATE TABLE IF NOT EXISTS `tbl_file` (
`kode` int(11) NOT NULL,
  `kategori` varchar(50) DEFAULT NULL,
  `judul` varchar(100) DEFAULT NULL,
  `konten` text,
  `tgl_posting` date DEFAULT NULL,
  `user` varchar(50) DEFAULT NULL,
  `status` varchar(10) NOT NULL,
  `data_file` text NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=65 ;



CREATE TABLE IF NOT EXISTS `tbl_folio` (
`kode` int(11) NOT NULL,
  `nama` varchar(100) DEFAULT NULL,
  `alamat` varchar(100) DEFAULT NULL,
  `gambar` text
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=13 ;



INSERT INTO `tbl_folio` (`kode`, `nama`, `alamat`, `gambar`) VALUES
(12, 'Foto Pribadi', 'Pribadi', 'slider.jpg');


CREATE TABLE IF NOT EXISTS `tbl_jabatan` (
`kode` int(11) NOT NULL,
  `uraian` varchar(100) DEFAULT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;


INSERT INTO `tbl_jabatan` (`kode`, `uraian`) VALUES
(4, 'Web Programming'),
(5, 'Dekstop'),
(6, 'Database Administrator');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_jadwal_solat`
--

CREATE TABLE IF NOT EXISTS `tbl_jadwal_solat` (
`kode` int(11) NOT NULL,
  `uraian` varchar(30) DEFAULT NULL,
  `jadwal` varchar(30) DEFAULT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=21 ;

--
-- Dumping data untuk tabel `tbl_jadwal_solat`
--

INSERT INTO `tbl_jadwal_solat` (`kode`, `uraian`, `jadwal`) VALUES
(20, 'OFFICE WORD 2009', '90');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_profil`
--

CREATE TABLE IF NOT EXISTS `tbl_profil` (
  `kode` int(11) NOT NULL DEFAULT '1',
  `sejarah` text,
  `jadwal` text,
  `visi_misi` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_profil`
--

INSERT INTO `tbl_profil` (`kode`, `sejarah`, `jadwal`, `visi_misi`) VALUES
(1, '<p>Update on Admin page;</p>\r\n\r\n<p>by : alifia.com</p>\r\n', '<p style="text-align:justify"><strong>Saya Mahasiswa</strong></p>\r\n\r\n<p style="text-align:justify"><strong></strong></p>\r\n', '<p>Update on Admin Page;</p>\r\n\r\n<p>by : Alifia.com</p>\r\n');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_user`
--

CREATE TABLE IF NOT EXISTS `tbl_user` (
`kode` int(11) NOT NULL,
  `user_name` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `nama` varchar(50) DEFAULT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;



INSERT INTO `tbl_user` (`kode`, `user_name`, `password`, `nama`) VALUES
(4, 'admin', '21232f297a57a5a743894a0e4a801fc3', 'Alifia Athiqa Erlin');

ALTER TABLE `tbl_blog`
 ADD PRIMARY KEY (`kode`);


ALTER TABLE `tbl_bulan`
 ADD PRIMARY KEY (`kode`);


ALTER TABLE `tbl_file`
 ADD PRIMARY KEY (`kode`);


ALTER TABLE `tbl_folio`
 ADD PRIMARY KEY (`kode`);


ALTER TABLE `tbl_jabatan`
 ADD PRIMARY KEY (`kode`);


ALTER TABLE `tbl_jadwal_solat`
 ADD PRIMARY KEY (`kode`);


ALTER TABLE `tbl_profil`
 ADD PRIMARY KEY (`kode`);


ALTER TABLE `tbl_user`
 ADD PRIMARY KEY (`kode`);




ALTER TABLE `tbl_blog`
MODIFY `kode` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=58;

ALTER TABLE `tbl_bulan`
MODIFY `kode` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=39;

ALTER TABLE `tbl_file`
MODIFY `kode` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=65;

ALTER TABLE `tbl_folio`
MODIFY `kode` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=13;

ALTER TABLE `tbl_jabatan`
MODIFY `kode` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;

ALTER TABLE `tbl_jadwal_solat`
MODIFY `kode` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=21;

ALTER TABLE `tbl_user`
MODIFY `kode` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;

