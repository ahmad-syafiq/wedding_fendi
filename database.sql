SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;


DROP TABLE IF EXISTS `congrats`;
CREATE TABLE `congrats` (
  `id` int(11) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `publish` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `congrats` (`id`, `title`, `publish`) VALUES
(1, 'Happy Wedding', 1),
(2, 'Maaf saya datang telat', 1),
(3, 'Maaf saya tidak bisa datang', 1),
(4, 'Saya datang tapi tidak ketemu kalian', 1),
(5, 'Selamat ya berawal dari teman biasa menjadi teman hidup', 1),
(6, 'Selamat Menempuh hidup baru', 1),
(7, 'Selamat menikah', 1),
(8, 'Selamat menjadi pengantin baru', 1),
(9, 'Selamat ya...', 1),
(10, 'Semoga acaranya lancar', 1),
(11, 'Semoga akur dalam segala hal', 1),
(12, 'Semoga Allah menyempurnakan kebahagiaan kalian', 1),
(13, 'Semoga Allah mempersatukan kalian berdua dalam suatu kebaikan', 1),
(14, 'Semoga bahagia', 1),
(15, 'Semoga berkah', 1),
(16, 'Semoga bisa saling menyempurnakan didalam ibadah', 1),
(17, 'Semoga cepet diberi momongan', 1),
(18, 'Semoga cepet hamil', 1),
(19, 'Semoga cepet nyusul kalian', 1),
(20, 'Semoga diberikan limpahan rizqi yang berkah dan melimpah', 1),
(21, 'Semoga dikaruniai keturunan yang sholeh sholihah', 1),
(22, 'Semoga langgeng', 1),
(23, 'Semoga menjadi keluarga yang harmonis', 1),
(24, 'Semoga menjadi keluarga yang sakinah mawaddah warohmah', 1),
(25, 'Semoga Menjadi pasangan Sejati sampai maut memisahkan', 1),
(26, 'Semoga menjadikan pernikahan kalian sebagai ibadah kepada-Nya', 1),
(27, 'Semoga Pernikahan kalian membawa berkah', 1),
(28, 'Semoga Pernikahan Kalian mendapat Rahmat-Nya', 1),
(29, 'Semoga Pernikahan kalian Kekal sampai anak cucu', 1),
(30, 'Semoga samawa', 1),
(31, 'Semoga selalu rukun', 1),
(32, 'Aamiin...', 1);

DROP TABLE IF EXISTS `congrats_data`;
CREATE TABLE `congrats_data` (
  `id` int(11) UNSIGNED NOT NULL,
  `list_id` int(11) UNSIGNED NOT NULL,
  `congrats_id` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `congrats_data` (`id`, `list_id`, `congrats_id`) VALUES
(1, 1, 1),
(2, 1, 7),
(3, 1, 32),
(4, 2, 1),
(5, 3, 1),
(6, 4, 1),
(7, 5, 2),
(8, 6, 1),
(9, 6, 3),
(10, 6, 5),
(11, 6, 7),
(12, 6, 6);

DROP TABLE IF EXISTS `congrats_list`;
CREATE TABLE `congrats_list` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(150) NOT NULL,
  `created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `publish` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `congrats_list` (`id`, `name`, `email`, `created`, `publish`) VALUES
(1, 'ahmad syafiq`', 'syafiq@fisip.net', '2017-12-20 13:35:51', 1),
(2, 'ssssssssss', 'syafiq@fisip.nets', '2017-12-21 22:57:58', 1),
(3, 'ssssssssss', 'syafiq@fisip.netss', '2017-12-21 22:59:37', 1),
(4, 'aaaaa', 'syafiq@fisip.netaa', '2017-12-21 23:02:38', 1),
(5, 'aaaaaa', 'syafiq@fisip.neta', '2017-12-21 23:02:56', 1),
(6, 'jhbjhbjhjhb', 'hbjhjbjb@hvhjbjh.gg', '2017-12-21 23:13:55', 1);


ALTER TABLE `congrats`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `congrats_data`
  ADD PRIMARY KEY (`id`),
  ADD KEY `list_id` (`list_id`),
  ADD KEY `congrats_id` (`congrats_id`);

ALTER TABLE `congrats_list`
  ADD PRIMARY KEY (`id`);


ALTER TABLE `congrats`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;
ALTER TABLE `congrats_data`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
ALTER TABLE `congrats_list`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

ALTER TABLE `congrats_data`
  ADD CONSTRAINT `congrats_data_ibfk_1` FOREIGN KEY (`list_id`) REFERENCES `congrats_list` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `congrats_data_ibfk_2` FOREIGN KEY (`congrats_id`) REFERENCES `congrats` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
