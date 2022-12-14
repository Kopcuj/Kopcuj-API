-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 19, 2022 at 05:14 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kopcuj`
--

-- --------------------------------------------------------

--
-- Table structure for table `discussions`
--

CREATE TABLE `discussions` (
  `id` int(11) NOT NULL,
  `user` int(11) NOT NULL,
  `subject` varchar(50) NOT NULL,
  `text` text NOT NULL,
  `created` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `discussions_replies`
--

CREATE TABLE `discussions_replies` (
  `id` int(11) NOT NULL,
  `discussion` int(11) NOT NULL,
  `user` int(11) NOT NULL,
  `created` timestamp NOT NULL DEFAULT current_timestamp(),
  `text` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `discussions_replies_downvotes`
--

CREATE TABLE `discussions_replies_downvotes` (
  `reply` int(11) NOT NULL,
  `user` int(11) NOT NULL,
  `random` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `discussions_replies_upvotes`
--

CREATE TABLE `discussions_replies_upvotes` (
  `reply` int(11) NOT NULL,
  `user` int(11) NOT NULL,
  `random` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `faults`
--

CREATE TABLE `faults` (
  `id` int(11) NOT NULL,
  `user` int(11) NOT NULL,
  `hill` int(11) NOT NULL,
  `text` text NOT NULL,
  `created` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `faults_likes`
--

CREATE TABLE `faults_likes` (
  `id` int(11) NOT NULL,
  `user` int(11) NOT NULL,
  `fault` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `hills`
--

CREATE TABLE `hills` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `elevation` int(5) NOT NULL,
  `lat` float NOT NULL,
  `lng` float NOT NULL,
  `prominence` int(5) NOT NULL,
  `isolation` varchar(255) NOT NULL,
  `material` varchar(255) NOT NULL,
  `basin` varchar(255) NOT NULL,
  `district` varchar(255) NOT NULL,
  `location` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `hills`
--

INSERT INTO `hills` (`id`, `name`, `elevation`, `lat`, `lng`, `prominence`, `isolation`, `material`, `basin`, `district`, `location`) VALUES
(1, 'Mile??ovka', 837, 50.555, 13.9317, 620, '20km ??? Stropn??k, Kru??n?? hory', 'zn??lec', '', 'Litom????ice', 'Velem??n, Mile??ov'),
(2, 'Hradi????any', 752, 50.5075, 13.87, 235, '6.7km ??? Mile??ovka', 'nefelinit, trachyt', 'Labe', 'Teplice', 'Mukov'),
(3, 'Pa??ez', 736, 50.5464, 13.8783, 219, '3.7 km ??? Mile??ovka', 'trachyt', 'Labe', 'Teplice', 'Kostomlaty pod Mile??ovkou'),
(4, 'Sedlo', 726, 50.5931, 14.2639, 416, '23.6km ??? Mile??ovka', '??edi??, zn??lec', 'Labe', 'Litom????ice', 'Lib????ice'),
(5, 'Kle??', 721, 50.5478, 13.8861, 45, '0.5km ??? Pa??ez', 'nefelinit', 'Labe', 'Teplice', 'Kostomlaty pod Mile??ovkou'),
(6, 'Ostr??', 719, 50.4972, 13.86, 65, '1.1km ??? Hradi????any', '??edi??', 'B??lina, Oh??e', 'Teplice', '??erven?? ??jezd'),
(7, 'Klete??n??', 706, 50.5672, 13.9728, 234, '3km ??? Mile??ovka', 'trachyt', 'Labe', 'Litom????ice', 'Velem??n'),
(8, 'Lipsk?? hora', 689, 50.5128, 13.9131, 151, '2.8km ??? Hradi????any', 'trachyt', 'Labe', 'Litom????ice', 'Mrsklesy'),
(9, 'Bukov?? hora', 683, 50.6717, 14.2278, 238, '8.5km ??? Sedlo', 'tefrit', 'Labe', '??st?? nad Labem', 'Zubrnice'),
(10, 'Ko??i???? vrch', 679, 50.6831, 14.2517, 51, '2.1km ??? Bukov?? hora', '', '', 'D??????n', 'Verne??ice'),
(11, 'Hlav????', 679, 50.5364, 13.8997, 26, '0.5km ??? Kle??', '', '', 'Litom????ice', 'Velem??n'),
(12, 'Vrchovina', 677, 50.5939, 14.1403, 219, '8.6km ??? Sedlo', '', 'Labe', 'Litom????ice', 'Litom????ice'),
(13, 'Kukla', 674, 50.6222, 14.1275, 107, '3.2km ??? Vrchovina', '', '', '??st?? nad Labem', 'Male??ov'),
(14, 'Mile??ovsk?? Kloc', 674, 50.5394, 13.9153, 80, '1.1km ??? Kle??', 'trachyt', 'Labe', 'Litom????ice', 'Mile??ov'),
(15, 'Trpasli???? kameny', 671, 50.6228, 14.1131, 23, '0.9km ??? Kukla', '', '', '??st?? nad Labem', 'Male??ov'),
(16, 'T??hlina', 670, 50.5231, 13.9017, 106, '1.4km ??? Lipsk?? hora', '', '', 'Litom????ice', 'Velem??n'),
(17, 'Matrel??k', 668, 50.6625, 14.2494, 25, '1.7km ??? Bukov?? hora', '', '', 'D??????n', 'Verne??ice'),
(18, 'Zp??vn?? vrch', 660, 50.6794, 14.2386, 23, '0.8km ??? Ko??i???? vrch', '', '', 'D??????n', 'Verne??ice'),
(19, 'Mraven???? vrch', 660, 50.5356, 13.8914, 22, '0.4km ??? Kle??', '', '', 'Teplice', 'Lukov'),
(20, '??irok?? vrch', 659, 50.6275, 14.1058, 36, '0.6km ??? Trpasli???? kameny', '', '', '??st?? nad Labem', 'Male??ov'),
(21, 'Kamenn?? vrch', 656, 50.6136, 14.1169, 28, '0.9km ??? Trpasli???? kameny', '', '', '??st?? nad Labem', 'Male??ov'),
(22, 'Dlouh?? vrch', 655, 50.5814, 14.1492, 25, '0.8km ??? Vrchovina', 'augitit, tufy', 'Labe', 'Litom????ice', 'Lb??n'),
(23, 'Zvon', 653, 50.5594, 13.9036, 95, '1.0km ??? Kle??', 'trachyt', 'Labe', 'Teplice', '??ern??ice u ??alan'),
(24, 'Medv??d?? h??rka', 645, 50.7969, 14.5344, 67, '1.3km ??? Mal?? Buk', 'zn??lec', 'Plou??nice, Kamenice', '??esk?? L??pa', 'Polevsko'),
(25, 'Klu??ky', 642, 50.7806, 14.5089, 50, '2.5km ??? Medv??d?? h??rka', '??edi??', 'Plou??nice', '??esk?? L??pa', 'Pr??che??, Polevsko'),
(26, 'Vl???? hora', 641, 50.7567, 14.4806, 73, '3.3km ??? Klu??ky', '??edi??', 'Plou??nice, Kamenice ??? Labe', '??esk?? L??pa', 'Kamenick?? ??enov'),
(27, 'Varho????', 639, 50.5903, 14.1006, 93, '2.4km ??? Vrchovina', 'nefelinit', 'Labe', '??st?? nad Labem', 'Sebuz??n, Hlinn??, ??e??eni??t??'),
(28, 'Solansk?? hora', 638, 50.4931, 13.9033, 125, '2.2km ??? Lipsk?? hora', 'nefelinit, limburgit, brekcie', 'Oh??e', 'Litom????ice', 'Skalice'),
(29, 'Kupa', 635, 50.5958, 14.115, 27, '1.0km ??? Vrchovina', '', '', '??st?? nad Labem', '??e??eni??t??'),
(30, '??enovsk?? vrch', 632, 50.7828, 14.4814, 110, '1.9km ??? Klu??ky', '??edi??', '', '??esk?? L??pa', 'Kamenick?? ??enov'),
(31, 'Babinsk?? vrch', 630, 50.6039, 14.135, 62, '0.8km ??? Vrchovina', '', '', '??st?? nad Labem', '??e??eni??t??'),
(32, '??esk?? sk??la', 629, 50.76, 14.4967, 20, '0.9km ??? Vl???? hora', 'bazanit', 'Plou??nice', '??esk?? L??pa', 'Pr??che?? u Kamenick??ho ??enova'),
(33, 'Na Korun??', 627, 50.7017, 14.2822, 19, '2.3km ??? Ko??i???? vrch', '', '', 'D??????n', 'He??manov'),
(34, 'Mod????n', 626, 50.6153, 14.1003, 59, '1.0km ??? Kamenn?? vrch', '', '', '??st?? nad Labem', 'N??m????'),
(35, 'Polevsk?? vrch', 626, 50.7917, 14.5253, 19, '0.4km ??? Medv??d?? h??rka', 'zn??lec', 'Plou??nice, Kamenice', '??esk?? L??pa', 'Polevsko'),
(36, 'Str????', 625, 50.6817, 14.2636, 17, '0.6m ??? Ko??i???? vrch', '', '', 'D??????n', 'Verne??ice'),
(37, 'Dlouh?? vrch', 618, 50.4936, 13.9106, 30, '0.4km ??? Solansk?? hora', '', '', 'Litom????ice', 'Podsedice'),
(38, 'Javorsk?? vrch', 617, 50.7317, 14.1144, 219, '5.9km ??? D??????nsk?? Sn????n??k', '', 'Ra???? potok, J??lovsk?? potok', 'D??????n', 'Javory'),
(39, 'P??kova hora', 617, 50.5103, 13.8956, 54, '1.1km ??? Lipsk?? hora', '', '', 'Litom????ice', 'Velem??n'),
(40, 'Setenka', 612, 50.5122, 13.9025, 34, '0.5km ??? Lipsk?? hora', '', '', 'Litom????ice', 'Velem??n'),
(41, '??pi????k', 608, 50.5997, 14.145, 30, '0.2km ??? Vrchovina', '', '', 'Litom????ice', '??itenice'),
(42, 'Lou??n??', 606, 50.6733, 14.3364, 68, '4.5km ??? Str????', '', '', 'D??????n ', 'Verne??ice'),
(43, '??achnov', 605, 50.7556, 14.4711, 22, '0.4km ??? Vl???? hora', '', '', '??esk?? L??pa', 'Slune??n??'),
(44, 'Kamenn?? hora', 601, 50.6475, 14.1783, 143, '4.2km ??? Bukov?? hora', '', '', '??st?? nad Labem', 'Homole u Panny'),
(45, 'Str????n?? vrch', 601, 50.6872, 14.3556, 77, '2.0km ??? Lou??n??', '??edi??', 'Labe', 'D??????n', 'Merboltice'),
(46, 'Pohorsk?? vrch', 601, 50.6456, 14.3275, 47, '3.0km ??? Lou??n??', '', '', 'Litom????ice', '????t??k'),
(47, 'Lovo??', 570, 50.5275, 14.0181, 258, '5.1km ??? Klete??n??', 'olivinick?? nefelinit, trachyt', 'Labe', 'Litom????ice', 'Lovosice'),
(48, 'Va??ovsk?? vrch', 561, 50.6144, 14.0594, 273, '2.5km ??? Mod????n', '', 'Labe', '??st?? nad Labem', 'Va??ov'),
(49, 'Bo??e??', 539, 50.5278, 13.7639, 216, '5.9km ??? Hradi????any', 'zn??lec', '', 'Teplice', 'B??lina'),
(50, 'Obl??k', 509, 50.4114, 13.8086, 216, '4.4km ??? Mil??', 'bazanit', 'Oh??e', 'Louny', 'Ran??, Chraberce, Mnichov'),
(51, 'Zlatn??k', 521, 50.5161, 13.7147, 208, '3.7km ??? Bo??e??', 'zn??lec', 'B??lina', 'Most', '??esk?? Zlatn??ky'),
(52, 'Dobrn??', 534, 50.7694, 14.3083, 206, '6.5km ??? Kohout', '', 'Plou??nice', 'D??????n', 'Dobrn??'),
(53, 'Mil??', 510, 50.4347, 13.7575, 200, '7.2km ??? Hradi????ko', 'sodalit', 'Labe', 'Most', 'Be??ov'),
(54, 'Ran??', 457, 50.4069, 13.7711, 195, '2.5km ??? Obl??k', '??edi??', 'Oh??e', 'Louny', 'Ran??'),
(55, 'Kozel', 598, 50.6639, 14.4561, 190, '7.5km ??? Str????n?? vrch', 'bazanit', 'Plou??nice', '??esk?? L??pa', 'Kozly'),
(56, 'Dvorsk?? kopec', 527, 50.7214, 14.4208, 174, '4.4km ??? Vl???? hora', '', '', '??esk?? L??pa', '??andov'),
(57, 'Ka??kov', 436, 50.5375, 13.7258, 173, '2.0km ??? ??elenick?? vrch', 'zn??lec', 'Labe', 'Most', '??elenice'),
(58, 'Debl??k', 459, 50.5847, 14.0536, 170, '2.3km ??? Varho????', 'limburgit, bazanit', 'Labe', 'Litom????ice', 'Libochovany'),
(59, 'Ressl', 413, 50.5067, 13.6169, 169, '6.8km ??? Zlatn??k', 'zn??lec', 'B??lina', 'Most', 'Most'),
(60, 'Doubravsk?? hora', 393, 50.6383, 13.8611, 155, '5.1km ??? Kom?????? h??rka', 'trachyt', 'B??lina', 'Teplice', 'Teplice'),
(61, 'Z??meck?? vrch', 541, 50.7917, 14.4333, 153, '1.5km ??? Smr??n??k', '??edi??', '', 'D??????n', '??esk?? Kamenice'),
(62, 'Sutomsk?? vrch', 505, 50.5072, 13.9775, 150, '3.6km ??? Lovo??', '??edi??', 'Labe', 'Litom????ice', 'Sutom'),
(63, 'Rade??sk?? kopec', 504, 50.7161, 14.4475, 136, '1.8km ??? Dvorsk?? kopec', '', '', '??esk?? L??pa', 'Volfartice'),
(64, 'Ve Chvojk??ch', 382, 50.6211, 13.8208, 133, '3.3km ??? Doubravsk?? hora', '', '', 'Teplice', 'Teplice'),
(65, 'Vysok?? k??men', 494, 50.6897, 14.1356, 131, '2.5km ??? Blansko', '', '', '??st?? nad Labem', 'Povrly'),
(66, 'Panna', 593, 50.6117, 14.1847, 130, '3.1km ??? Vrchovina ??? Sedlo', 'augitit', 'Labe', 'Litom????ice', '??ep??ice'),
(67, 'Chmeln??k', 508, 50.7547, 14.1583, 130, '1.5km ??? Lotar??v vrch', 'olivinick?? nefelinit', 'Labe', 'D??????n', 'Chmelnice'),
(68, '??pi????k', 399, 50.5197, 13.6678, 128, '3.1km ??? Zlatn??k', 'zn??lec', 'B??lina', 'Most', 'Most'),
(69, 'Lotar??v vrch', 510, 50.7594, 14.1392, 127, '2.5km ??? Javorsk?? vrch', '??edi??', 'J??lovsk?? potok, Chrochvick?? potok, Ra???? potok', 'D??????n', 'Kr??sn?? Studenec'),
(70, 'Ostr??', 553, 50.5317, 13.9514, 120, '1.1km ??? Lhota ??? Kloc', '??edi??', 'Labe', 'Litom????ice', 'Mile??ov, Velem??n, Kocourov'),
(71, 'Vysok?? Ostr??', 587, 50.6364, 14.0803, 114, '1.7km ??? ??irok?? vrch', 'bazanit', 'Labe', '??st?? nad Labem', 'St??ekov, Brn?? nad Labem'),
(72, '??elenick?? vrch', 456, 50.5194, 13.7317, 113, '1.0km ??? Zlatn??k', 'zn??lec', 'Labe', 'Most', '??elenice nad B??linou'),
(73, 'Ple??ivec', 509, 50.5653, 14.0894, 112, '1.8km ??? Hradi??t??', 'olivnick?? ??edi??', 'Labe', 'Litom????ice', 'Kam??k'),
(74, 'St??????ovick?? vrch', 348, 50.6756, 14.0033, 112, '2.5km ??? ??epec', '', '', '??st?? nad Labem', '??st?? nad Labem'),
(75, 'Kohout', 589, 50.71, 14.3119, 111, '1.8km ??? Na Korun??', '??edi??', 'Labe', 'D??????n', 'Valke??ice'),
(76, '??enovsk?? vrch', 632, 50.7828, 14.4814, 110, '1.9km ??? Klu??ky', '??edi??', '', '??esk?? L??pa', 'Kamenick?? ??enov'),
(77, 'Hn??v??n', 407, 50.5203, 13.6331, 110, '1.8km ??? Ressl', 'zn??lec', 'B??lina', 'Most', 'Most'),
(78, 'Srdov', 482, 50.4172, 13.8206, 109, '1km ??? Obl??k', 'nefelinit', 'Oh??e', 'Louny', 'Charvatce u Loun'),
(79, 'Trojhora', 456, 50.5919, 14.1908, 108, '1.6km ??? Kalich', 'limburgit, trachyt', 'Labe', 'Litom????ice', 'T??ebu????n'),
(80, 'Str????i??t??', 362, 50.5528, 14.0628, 108, '1.7km ??? Ple??ivec', '', '', 'Litom????ice', 'Velk?? ??ernoseky'),
(81, 'Rade????n', 550, 50.6972, 14.0594, 105, '4.5km ??? Javorsk?? vrch', '', '', '??st?? nad Labem', 'Chuderov'),
(82, 'Dlouh??', 483, 50.4528, 13.7958, 105, '3.3km ??? Mil??', '', '', 'Louny', 'Lib??eves'),
(83, 'K??????ov?? vrch', 450, 50.4536, 13.8558, 104, '1.7km ??? L??ska', '', '', 'Louny', 'Lib??eves'),
(84, 'Lhota', 571, 50.5269, 13.9347, 103, '1.0km ??? T??hlina', '', '', 'Litom????ice', 'T??ebenice'),
(85, 'Kuba??ka', 543, 50.5711, 14.0089, 103, '2.1km ??? Klete??n??', 'bazanit', 'Labe', 'Litom????ice', 'Prackovice nad Labem'),
(86, 'Rovn??', 377, 50.6297, 13.9775, 103, '8.1km ??? Doubravsk?? hora', '', '', '??st?? nad Labem', '??ehlovice'),
(87, 'Popovi??sk?? vrch', 530, 50.7939, 14.2844, 101, '3km ??? Dobrn??', 'pyroklastika, olivinick?? nefelinit', 'Labe', 'D??????n', 'Ludv??kovice, Hunt????ov'),
(88, 'Olta????k', 566, 50.4901, 13.9233, 74, '0,7 km ??? Solansk?? hora', 'tefrit', '', 'Litom????ice', 'D??kovka'),
(89, 'Ov????n', 431, 50.505, 14.0048, 0, '', '??edi??', 'Labe', 'Litom????ice', 'Vchynice'),
(90, 'Ko??????l', 481, 50.4902, 13.9847, 64, '1 km ??? Jezerka', 'trachybazalt, bazanit', '', 'Litom????ice', 'T??ebenice'),
(91, 'Radob??l', 399, 50.5304, 14.0933, 85, '3,3 km ??? Ple??ivec', '??edi??', 'Labe', 'Litom????ice', 'Litom????ice'),
(92, 'Ple??ivec', 477, 50.4912, 13.9388, 0, '', '', '', 'Litom????ice', 'D??kovka'),
(93, 'Kalich', 535, 50.605, 14.2067, 99, '1,6 km ??? Panna', 'trachyt', 'Labe', 'Litom????ice', 'T??ebu????n'),
(94, 'D??????nsk?? Sn????n??k', 723, 50.7916, 14.1039, 151, '12,0 km ??? Jelen?? vrch', 'p??skovec', 'Labe', 'D??????n', 'D??????n');

-- --------------------------------------------------------

--
-- Table structure for table `hills_attributes`
--

CREATE TABLE `hills_attributes` (
  `hill` int(11) NOT NULL,
  `difficulty` int(11) DEFAULT 0,
  `path` int(11) DEFAULT 0,
  `stroller` int(11) NOT NULL DEFAULT 0,
  `parking` int(11) NOT NULL DEFAULT 0,
  `food` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `hills_attributes`
--

INSERT INTO `hills_attributes` (`hill`, `difficulty`, `path`, `stroller`, `parking`, `food`) VALUES
(1, 0, 0, 0, 0, 0),
(2, 0, 0, 0, 0, 0),
(3, 0, 0, 0, 0, 0),
(4, 0, 0, 0, 0, 0),
(5, 0, 0, 0, 0, 0),
(6, 0, 0, 0, 0, 0),
(7, 0, 0, 0, 0, 0),
(8, 0, 0, 0, 0, 0),
(9, 0, 0, 0, 0, 0),
(10, 0, 0, 0, 0, 0),
(11, 0, 0, 0, 0, 0),
(12, 0, 0, 0, 0, 0),
(13, 0, 0, 0, 0, 0),
(14, 0, 0, 0, 0, 0),
(15, 0, 0, 0, 0, 0),
(16, 0, 0, 0, 0, 0),
(17, 0, 0, 0, 0, 0),
(18, 0, 0, 0, 0, 0),
(19, 0, 0, 0, 0, 0),
(20, 0, 0, 0, 0, 0),
(21, 0, 0, 0, 0, 0),
(22, 0, 0, 0, 0, 0),
(23, 0, 0, 0, 0, 0),
(24, 0, 0, 0, 0, 0),
(25, 0, 0, 0, 0, 0),
(26, 0, 0, 0, 0, 0),
(27, 0, 0, 0, 0, 0),
(28, 0, 0, 0, 0, 0),
(29, 0, 0, 0, 0, 0),
(30, 0, 0, 0, 0, 0),
(31, 0, 0, 0, 0, 0),
(32, 0, 0, 0, 0, 0),
(33, 0, 0, 0, 0, 0),
(34, 0, 0, 0, 0, 0),
(35, 0, 0, 0, 0, 0),
(36, 0, 0, 0, 0, 0),
(37, 0, 0, 0, 0, 0),
(38, 0, 0, 0, 0, 0),
(39, 0, 0, 0, 0, 0),
(40, 0, 0, 0, 0, 0),
(41, 0, 0, 0, 0, 0),
(42, 0, 0, 0, 0, 0),
(43, 0, 0, 0, 0, 0),
(44, 0, 0, 0, 0, 0),
(45, 0, 0, 0, 0, 0),
(46, 0, 0, 0, 0, 0),
(47, 0, 0, 0, 0, 0),
(48, 0, 0, 0, 0, 0),
(49, 0, 0, 0, 0, 0),
(50, 0, 0, 0, 0, 0),
(51, 0, 0, 0, 0, 0),
(52, 0, 0, 0, 0, 0),
(53, 0, 0, 0, 0, 0),
(54, 0, 0, 0, 0, 0),
(55, 0, 0, 0, 0, 0),
(56, 0, 0, 0, 0, 0),
(57, 0, 0, 0, 0, 0),
(58, 0, 0, 0, 0, 0),
(59, 0, 0, 0, 0, 0),
(60, 0, 0, 0, 0, 0),
(61, 0, 0, 0, 0, 0),
(62, 0, 0, 0, 0, 0),
(63, 0, 0, 0, 0, 0),
(64, 0, 0, 0, 0, 0),
(65, 0, 0, 0, 0, 0),
(66, 0, 0, 0, 0, 0),
(67, 0, 0, 0, 0, 0),
(68, 0, 0, 0, 0, 0),
(69, 0, 0, 0, 0, 0),
(70, 0, 0, 0, 0, 0),
(71, 0, 0, 0, 0, 0),
(72, 0, 0, 0, 0, 0),
(73, 0, 0, 0, 0, 0),
(74, 0, 0, 0, 0, 0),
(75, 0, 0, 0, 0, 0),
(76, 0, 0, 0, 0, 0),
(77, 0, 0, 0, 0, 0),
(78, 0, 0, 0, 0, 0),
(79, 0, 0, 0, 0, 0),
(80, 0, 0, 0, 0, 0),
(81, 0, 0, 0, 0, 0),
(82, 0, 0, 0, 0, 0),
(83, 0, 0, 0, 0, 0),
(84, 0, 0, 0, 0, 0),
(85, 0, 0, 0, 0, 0),
(86, 0, 0, 0, 0, 0),
(87, 0, 0, 0, 0, 0),
(88, 0, 0, 0, 0, 0),
(89, 0, 0, 0, 0, 0),
(90, 0, 0, 0, 0, 0),
(91, 0, 0, 0, 0, 0),
(92, 0, 0, 0, 0, 0),
(93, 0, 0, 0, 0, 0),
(94, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `hills_climbed`
--

CREATE TABLE `hills_climbed` (
  `id` int(11) NOT NULL,
  `hill` int(11) NOT NULL,
  `user` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `id` int(11) NOT NULL,
  `hill` int(11) NOT NULL,
  `user` int(11) NOT NULL,
  `added` timestamp NOT NULL DEFAULT current_timestamp(),
  `stars` int(11) NOT NULL,
  `text` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `reviews_likes`
--

CREATE TABLE `reviews_likes` (
  `id` int(11) NOT NULL,
  `review` int(11) NOT NULL,
  `user` int(11) NOT NULL,
  `random` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `login` varchar(50) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `pass` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `authToken` varchar(255) DEFAULT NULL,
  `pfp` varchar(255) DEFAULT NULL,
  `theme` int(11) DEFAULT NULL,
  `registered` timestamp NOT NULL DEFAULT current_timestamp(),
  `lastLogin` timestamp NULL DEFAULT NULL,
  `forgotPassToken` varchar(255) DEFAULT NULL,
  `verifyToken` varchar(255) DEFAULT NULL,
  `isVerified` tinyint(1) NOT NULL DEFAULT 0,
  `isAdmin` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `login`, `name`, `pass`, `email`, `description`, `authToken`, `pfp`, `theme`, `registered`, `lastLogin`, `forgotPassToken`, `verifyToken`, `isVerified`, `isAdmin`) VALUES
(0, 'admin', 'admin', '$2b$10$dLQFjRtTg67lDaP5JEcLou2EDbU9aDbcexdXY71sqUh0tGBUt9BlW', 'admin@admin', NULL, 'c0a47213-9221-415c-ad40-df3c1bc29b72', NULL, NULL, '2022-12-19 16:11:46', '2022-12-19 15:11:51', NULL, '325bd900-154d-4d69-b9e5-c3878eafded7', 1, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `discussions`
--
ALTER TABLE `discussions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `discussions_user_fk` (`user`);

--
-- Indexes for table `discussions_replies`
--
ALTER TABLE `discussions_replies`
  ADD PRIMARY KEY (`id`),
  ADD KEY `replies_discussion_fk` (`discussion`),
  ADD KEY `replies_user_fk` (`user`);

--
-- Indexes for table `discussions_replies_downvotes`
--
ALTER TABLE `discussions_replies_downvotes`
  ADD KEY `discussions_replies_downVotes_reply` (`reply`),
  ADD KEY `discussions_replies_downVotes_user` (`user`);

--
-- Indexes for table `discussions_replies_upvotes`
--
ALTER TABLE `discussions_replies_upvotes`
  ADD KEY `discussions_replies_upVotes_user` (`user`),
  ADD KEY `discussions_replies_upVotes_reply` (`reply`);

--
-- Indexes for table `faults`
--
ALTER TABLE `faults`
  ADD PRIMARY KEY (`id`),
  ADD KEY `faults_user_fk` (`user`),
  ADD KEY `faults_hill_fk` (`hill`);

--
-- Indexes for table `faults_likes`
--
ALTER TABLE `faults_likes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `faults_likes_fault_fk` (`fault`),
  ADD KEY `faults_likes_user_fk` (`user`);

--
-- Indexes for table `hills`
--
ALTER TABLE `hills`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hills_attributes`
--
ALTER TABLE `hills_attributes`
  ADD KEY `hills_attributes_hill_fk` (`hill`);

--
-- Indexes for table `hills_climbed`
--
ALTER TABLE `hills_climbed`
  ADD PRIMARY KEY (`id`),
  ADD KEY `hills_climbed_user_fk` (`user`),
  ADD KEY `hills_climbed_hill_fk` (`hill`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`),
  ADD KEY `reviews_user_fk` (`user`),
  ADD KEY `reviews_hill_fk` (`hill`);

--
-- Indexes for table `reviews_likes`
--
ALTER TABLE `reviews_likes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `review_likes_user_fk` (`user`),
  ADD KEY `review_likes_review_fk` (`review`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `discussions`
--
ALTER TABLE `discussions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `discussions_replies`
--
ALTER TABLE `discussions_replies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `faults`
--
ALTER TABLE `faults`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `faults_likes`
--
ALTER TABLE `faults_likes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `hills`
--
ALTER TABLE `hills`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=95;

--
-- AUTO_INCREMENT for table `hills_climbed`
--
ALTER TABLE `hills_climbed`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `reviews_likes`
--
ALTER TABLE `reviews_likes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `discussions`
--
ALTER TABLE `discussions`
  ADD CONSTRAINT `discussions_user_fk` FOREIGN KEY (`user`) REFERENCES `users` (`id`);

--
-- Constraints for table `discussions_replies`
--
ALTER TABLE `discussions_replies`
  ADD CONSTRAINT `replies_discussion_fk` FOREIGN KEY (`discussion`) REFERENCES `discussions` (`id`),
  ADD CONSTRAINT `replies_user_fk` FOREIGN KEY (`user`) REFERENCES `users` (`id`);

--
-- Constraints for table `discussions_replies_downvotes`
--
ALTER TABLE `discussions_replies_downvotes`
  ADD CONSTRAINT `discussions_replies_downVotes_reply` FOREIGN KEY (`reply`) REFERENCES `discussions_replies` (`id`),
  ADD CONSTRAINT `discussions_replies_downVotes_user` FOREIGN KEY (`user`) REFERENCES `users` (`id`);

--
-- Constraints for table `discussions_replies_upvotes`
--
ALTER TABLE `discussions_replies_upvotes`
  ADD CONSTRAINT `discussions_replies_upVotes_reply` FOREIGN KEY (`reply`) REFERENCES `discussions_replies` (`id`),
  ADD CONSTRAINT `discussions_replies_upVotes_user` FOREIGN KEY (`user`) REFERENCES `users` (`id`);

--
-- Constraints for table `faults`
--
ALTER TABLE `faults`
  ADD CONSTRAINT `faults_hill_fk` FOREIGN KEY (`hill`) REFERENCES `hills` (`id`),
  ADD CONSTRAINT `faults_user_fk` FOREIGN KEY (`user`) REFERENCES `users` (`id`);

--
-- Constraints for table `faults_likes`
--
ALTER TABLE `faults_likes`
  ADD CONSTRAINT `faults_likes_fault_fk` FOREIGN KEY (`fault`) REFERENCES `faults` (`id`),
  ADD CONSTRAINT `faults_likes_user_fk` FOREIGN KEY (`user`) REFERENCES `users` (`id`);

--
-- Constraints for table `hills_attributes`
--
ALTER TABLE `hills_attributes`
  ADD CONSTRAINT `hills_attributes_hill_fk` FOREIGN KEY (`hill`) REFERENCES `hills` (`id`);

--
-- Constraints for table `hills_climbed`
--
ALTER TABLE `hills_climbed`
  ADD CONSTRAINT `hills_climbed_hill_fk` FOREIGN KEY (`hill`) REFERENCES `hills` (`id`),
  ADD CONSTRAINT `hills_climbed_user_fk` FOREIGN KEY (`user`) REFERENCES `users` (`id`);

--
-- Constraints for table `reviews`
--
ALTER TABLE `reviews`
  ADD CONSTRAINT `reviews_hill_fk` FOREIGN KEY (`hill`) REFERENCES `hills` (`id`),
  ADD CONSTRAINT `reviews_user_fk` FOREIGN KEY (`user`) REFERENCES `users` (`id`);

--
-- Constraints for table `reviews_likes`
--
ALTER TABLE `reviews_likes`
  ADD CONSTRAINT `review_likes_review_fk` FOREIGN KEY (`review`) REFERENCES `reviews` (`id`),
  ADD CONSTRAINT `review_likes_user_fk` FOREIGN KEY (`user`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
