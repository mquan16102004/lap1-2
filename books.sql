-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Sep 18, 2024 at 09:18 AM
-- Server version: 8.0.30
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `lap1_laravel`
--

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `thumbnail` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `author` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `publisher` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `publication` datetime NOT NULL,
  `price` double NOT NULL,
  `quantity` int NOT NULL,
  `category_id` int UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`id`, `title`, `thumbnail`, `author`, `publisher`, `publication`, `price`, `quantity`, `category_id`, `created_at`, `updated_at`) VALUES
(1, 'Qui placeat totam.', 'https://via.placeholder.com/640x480.png/006677?text=quasi', 'Quia.', 'Quaerat.', '2005-03-06 20:54:33', 45428, 3, 3, NULL, NULL),
(2, 'Autem error nemo.', 'https://via.placeholder.com/640x480.png/0011dd?text=officia', 'Quas.', 'Quas.', '2023-03-18 14:09:03', 14133, 4, 5, NULL, NULL),
(3, 'Voluptatem sint sit.', 'https://via.placeholder.com/640x480.png/005500?text=iure', 'Expedita.', 'Numquam.', '2017-06-20 02:19:34', 79583, 10, 3, NULL, NULL),
(4, 'Non eos molestiae.', 'https://via.placeholder.com/640x480.png/006699?text=nam', 'Cum eum.', 'Sint.', '2006-03-31 18:18:43', 99329, 3, 4, NULL, NULL),
(5, 'Commodi fuga nulla.', 'https://via.placeholder.com/640x480.png/00aa99?text=aut', 'Rerum.', 'Et harum.', '1998-02-17 14:25:10', 89928, 1, 4, NULL, NULL),
(6, 'Dignissimos odit.', 'https://via.placeholder.com/640x480.png/00cc22?text=sequi', 'Et nam.', 'Assumenda.', '1993-01-30 16:58:14', 67629, 1, 4, NULL, NULL),
(7, 'Consectetur omnis.', 'https://via.placeholder.com/640x480.png/00eebb?text=commodi', 'Vitae.', 'Error.', '2012-07-19 20:47:26', 15210, 3, 3, NULL, NULL),
(8, 'Dolor.', 'https://via.placeholder.com/640x480.png/00ff33?text=animi', 'Aut vel.', 'Sequi.', '1998-01-04 08:20:52', 67585, 1, 4, NULL, NULL),
(9, 'Autem nihil sint.', 'https://via.placeholder.com/640x480.png/00bb22?text=vitae', 'Beatae.', 'At porro.', '1983-02-09 07:52:27', 45690, 5, 3, NULL, NULL),
(10, 'Recusandae.', 'https://via.placeholder.com/640x480.png/007788?text=perferendis', 'Natus.', 'Sapiente.', '2005-12-28 04:41:35', 62548, 8, 3, NULL, NULL),
(11, 'Magni consequatur.', 'https://via.placeholder.com/640x480.png/0099dd?text=asperiores', 'Quasi.', 'Sed vel.', '2016-10-06 05:35:03', 97412, 3, 5, NULL, NULL),
(12, 'Eum maxime sint.', 'https://via.placeholder.com/640x480.png/001199?text=quia', 'Quas.', 'Qui ut et.', '2002-07-31 19:29:14', 81490, 7, 3, NULL, NULL),
(13, 'Perspiciatis.', 'https://via.placeholder.com/640x480.png/00bb00?text=hic', 'Dolorum.', 'Rem aut.', '1991-05-08 11:24:22', 55936, 6, 3, NULL, NULL),
(14, 'Quia saepe neque.', 'https://via.placeholder.com/640x480.png/0077dd?text=voluptates', 'Eaque.', 'Esse enim.', '1973-11-10 23:56:58', 48859, 8, 5, NULL, NULL),
(15, 'Est veritatis.', 'https://via.placeholder.com/640x480.png/0099ff?text=soluta', 'Officiis.', 'Beatae.', '1993-06-08 04:42:42', 99046, 10, 3, NULL, NULL),
(16, 'Repudiandae.', 'https://via.placeholder.com/640x480.png/005544?text=alias', 'Et a a.', 'Dolor.', '1991-07-30 00:55:09', 70609, 4, 2, NULL, NULL),
(17, 'Deleniti ut labore.', 'https://via.placeholder.com/640x480.png/008811?text=expedita', 'Amet quas.', 'Explicabo.', '1979-03-15 02:28:59', 30070, 5, 3, NULL, NULL),
(18, 'Debitis non est.', 'https://via.placeholder.com/640x480.png/00ddee?text=nisi', 'Qui atque.', 'Hic.', '2014-02-16 16:00:14', 41879, 3, 3, NULL, NULL),
(19, 'Expedita rerum.', 'https://via.placeholder.com/640x480.png/005522?text=et', 'Eveniet.', 'Quia.', '1996-08-25 20:03:52', 60764, 1, 3, NULL, NULL),
(20, 'Quae sequi sapiente.', 'https://via.placeholder.com/640x480.png/00cc99?text=quas', 'Corporis.', 'Rerum non.', '1985-04-11 01:53:34', 16625, 10, 2, NULL, NULL),
(21, 'Aut ea placeat.', 'https://via.placeholder.com/640x480.png/00ff55?text=voluptas', 'Sit saepe.', 'Suscipit.', '1998-05-14 20:18:05', 66813, 6, 1, NULL, NULL),
(22, 'Aut commodi et.', 'https://via.placeholder.com/640x480.png/000077?text=qui', 'Natus non.', 'Porro.', '1977-01-11 13:11:22', 31804, 10, 3, NULL, NULL),
(23, 'Non dicta in veniam.', 'https://via.placeholder.com/640x480.png/00dd22?text=libero', 'Et minima.', 'Qui velit.', '2008-05-19 13:52:42', 41600, 6, 1, NULL, NULL),
(24, 'Libero nihil est.', 'https://via.placeholder.com/640x480.png/009911?text=autem', 'Totam et.', 'Dolor et.', '1976-06-19 04:46:11', 56218, 2, 5, NULL, NULL),
(25, 'Cupiditate quia.', 'https://via.placeholder.com/640x480.png/00dd22?text=fuga', 'Cumque.', 'Et.', '2006-09-13 18:04:24', 64646, 3, 5, NULL, NULL),
(26, 'Explicabo eaque.', 'https://via.placeholder.com/640x480.png/0099aa?text=sit', 'Quas.', 'Nihil.', '1992-04-07 16:05:12', 51310, 4, 5, NULL, NULL),
(27, 'Inventore veniam.', 'https://via.placeholder.com/640x480.png/00dd22?text=impedit', 'Nihil.', 'Non et.', '1985-12-22 05:16:40', 67806, 4, 2, NULL, NULL),
(28, 'Qui esse odio.', 'https://via.placeholder.com/640x480.png/0000aa?text=laborum', 'Atque.', 'Dolore.', '1989-05-10 02:10:47', 61402, 9, 2, NULL, NULL),
(29, 'Animi aut dolores.', 'https://via.placeholder.com/640x480.png/007700?text=enim', 'Quidem.', 'Ut omnis.', '1995-01-10 15:16:19', 12060, 5, 2, NULL, NULL),
(30, 'Voluptatibus.', 'https://via.placeholder.com/640x480.png/0000ff?text=iusto', 'Voluptas.', 'Voluptas.', '1984-01-27 21:06:24', 80578, 4, 2, NULL, NULL),
(31, 'Natus qui dolores.', 'https://via.placeholder.com/640x480.png/006666?text=nostrum', 'Enim quae.', 'Eligendi.', '2003-03-02 00:09:16', 64585, 5, 3, NULL, NULL),
(32, 'Voluptatem.', 'https://via.placeholder.com/640x480.png/0088aa?text=aut', 'Quis.', 'Quae.', '1996-05-14 20:19:48', 16321, 8, 4, NULL, NULL),
(33, 'Neque nobis quia.', 'https://via.placeholder.com/640x480.png/00ee00?text=ea', 'Ducimus.', 'Iure.', '1998-09-04 15:25:00', 24803, 7, 2, NULL, NULL),
(34, 'Tenetur cumque et.', 'https://via.placeholder.com/640x480.png/008833?text=quibusdam', 'Sit totam.', 'Aut quia.', '1991-12-14 18:43:12', 41691, 4, 4, NULL, NULL),
(35, 'Quam maiores.', 'https://via.placeholder.com/640x480.png/0033aa?text=aut', 'Tempora.', 'Ullam.', '1976-09-30 21:53:58', 29224, 5, 5, NULL, NULL),
(36, 'Iure voluptatibus.', 'https://via.placeholder.com/640x480.png/00aa22?text=sed', 'Voluptas.', 'Quas aut.', '2021-02-21 07:09:24', 29458, 5, 4, NULL, NULL),
(37, 'Deserunt enim.', 'https://via.placeholder.com/640x480.png/00ff44?text=sit', 'Cum illo.', 'Neque et.', '1979-07-14 11:29:16', 46820, 9, 5, NULL, NULL),
(38, 'Consequatur quas.', 'https://via.placeholder.com/640x480.png/00cccc?text=in', 'Tenetur.', 'Illum.', '1971-03-26 06:25:29', 32453, 7, 4, NULL, NULL),
(39, 'Qui molestias odit.', 'https://via.placeholder.com/640x480.png/003333?text=voluptatem', 'Sit.', 'Iure.', '2009-08-26 07:52:55', 16375, 2, 3, NULL, NULL),
(40, 'Perspiciatis.', 'https://via.placeholder.com/640x480.png/00cc33?text=quasi', 'Beatae.', 'Et.', '2022-08-06 11:00:40', 59004, 1, 4, NULL, NULL),
(41, 'Voluptates ut nam.', 'https://via.placeholder.com/640x480.png/0088aa?text=ut', 'Eaque.', 'Dolores.', '2016-04-21 03:22:43', 9099, 4, 2, NULL, NULL),
(42, 'Animi odit dolorum.', 'https://via.placeholder.com/640x480.png/0044dd?text=qui', 'Tempora.', 'Ut quis.', '1992-03-25 23:49:57', 8275, 6, 4, NULL, NULL),
(43, 'Qui sed.', 'https://via.placeholder.com/640x480.png/0044ee?text=aut', 'Et nulla.', 'Eum.', '2018-10-26 00:09:05', 61609, 9, 2, NULL, NULL),
(44, 'Non ut magni.', 'https://via.placeholder.com/640x480.png/00ee33?text=omnis', 'Eum atque.', 'Et fugiat.', '1978-08-31 06:45:19', 12427, 6, 5, NULL, NULL),
(45, 'Laudantium.', 'https://via.placeholder.com/640x480.png/0055aa?text=cupiditate', 'Molestiae.', 'Fugiat.', '1990-10-13 02:35:38', 58654, 1, 3, NULL, NULL),
(46, 'Fuga tempore.', 'https://via.placeholder.com/640x480.png/00eeff?text=velit', 'Facere.', 'Ut.', '2019-11-16 10:47:35', 65680, 3, 4, NULL, NULL),
(47, 'Voluptas natus.', 'https://via.placeholder.com/640x480.png/0088dd?text=esse', 'Sequi est.', 'Culpa ad.', '1972-04-21 21:04:07', 55930, 9, 5, NULL, NULL),
(48, 'Iure exercitationem.', 'https://via.placeholder.com/640x480.png/00aadd?text=est', 'Placeat.', 'Non.', '1985-09-03 03:14:48', 65579, 10, 2, NULL, NULL),
(49, 'Sit est error sint.', 'https://via.placeholder.com/640x480.png/00ff88?text=numquam', 'Et dicta.', 'Aperiam.', '2022-02-21 17:17:07', 1306, 1, 4, NULL, NULL),
(50, 'Praesentium.', 'https://via.placeholder.com/640x480.png/002299?text=aperiam', 'Enim.', 'Quia.', '1974-03-11 20:23:22', 86798, 8, 4, NULL, NULL),
(51, 'Voluptatem et.', 'https://via.placeholder.com/640x480.png/0000cc?text=sit', 'Quasi.', 'Et a.', '1970-02-21 23:41:44', 79487, 9, 3, NULL, NULL),
(52, 'Voluptas fugit.', 'https://via.placeholder.com/640x480.png/00aa77?text=velit', 'Quia sed.', 'Quae in.', '1985-09-04 16:03:51', 75400, 5, 1, NULL, NULL),
(53, 'Dignissimos ea.', 'https://via.placeholder.com/640x480.png/00ee33?text=ducimus', 'Placeat.', 'Harum.', '1975-01-17 19:56:22', 10142, 6, 4, NULL, NULL),
(54, 'Ea unde.', 'https://via.placeholder.com/640x480.png/0066dd?text=doloremque', 'Provident.', 'Omnis et.', '2000-10-04 13:55:13', 40921, 5, 4, NULL, NULL),
(55, 'Qui consequuntur.', 'https://via.placeholder.com/640x480.png/00ddaa?text=ex', 'Eaque.', 'Nemo.', '1988-11-15 04:56:32', 36637, 8, 4, NULL, NULL),
(56, 'A saepe vel sit qui.', 'https://via.placeholder.com/640x480.png/0011ff?text=sed', 'Hic.', 'Quae.', '1995-04-24 17:29:49', 48214, 3, 3, NULL, NULL),
(57, 'Dolore harum.', 'https://via.placeholder.com/640x480.png/009944?text=neque', 'Odio.', 'Libero.', '1997-03-11 19:54:08', 64046, 10, 4, NULL, NULL),
(58, 'Aut nobis illum.', 'https://via.placeholder.com/640x480.png/00ccaa?text=facere', 'Aperiam.', 'Optio sit.', '2004-06-03 20:01:51', 51108, 5, 2, NULL, NULL),
(59, 'Vitae similique.', 'https://via.placeholder.com/640x480.png/00ee66?text=voluptatum', 'Et ea.', 'Modi nam.', '1998-05-23 23:22:25', 91103, 1, 5, NULL, NULL),
(60, 'In consequatur quis.', 'https://via.placeholder.com/640x480.png/00bbee?text=eum', 'Aperiam a.', 'Veniam.', '2020-05-01 03:10:09', 99689, 3, 2, NULL, NULL),
(61, 'Cupiditate.', 'https://via.placeholder.com/640x480.png/00dd88?text=delectus', 'Quam ut.', 'Voluptate.', '1977-03-28 04:41:38', 72512, 9, 2, NULL, NULL),
(62, 'Expedita sed aut.', 'https://via.placeholder.com/640x480.png/00bbee?text=animi', 'Assumenda.', 'Autem ea.', '1982-01-03 04:43:57', 57185, 5, 3, NULL, NULL),
(63, 'Vitae et esse nobis.', 'https://via.placeholder.com/640x480.png/00aaaa?text=sit', 'Sunt.', 'Similique.', '2011-07-29 20:38:34', 66209, 1, 5, NULL, NULL),
(64, 'Molestias ducimus.', 'https://via.placeholder.com/640x480.png/0099ff?text=aliquam', 'Debitis.', 'Dolorum.', '1984-10-20 02:03:34', 79419, 1, 3, NULL, NULL),
(65, 'Expedita ab quos.', 'https://via.placeholder.com/640x480.png/004455?text=sapiente', 'Et.', 'Quia qui.', '1981-03-21 05:10:59', 34526, 9, 5, NULL, NULL),
(66, 'Qui dolorem.', 'https://via.placeholder.com/640x480.png/0088bb?text=sed', 'Quia cum.', 'Dolor.', '2012-12-15 20:20:48', 9100, 3, 2, NULL, NULL),
(67, 'Aut mollitia ipsa.', 'https://via.placeholder.com/640x480.png/000077?text=expedita', 'Beatae.', 'Eos rem.', '1982-07-01 00:21:03', 61798, 1, 4, NULL, NULL),
(68, 'Quaerat voluptatem.', 'https://via.placeholder.com/640x480.png/000044?text=mollitia', 'Facere.', 'Qui.', '1972-10-18 02:29:05', 37251, 1, 3, NULL, NULL),
(69, 'Nemo adipisci aut.', 'https://via.placeholder.com/640x480.png/004455?text=eius', 'Explicabo.', 'Minima.', '1993-02-25 21:49:01', 41931, 4, 1, NULL, NULL),
(70, 'Ipsum odio soluta.', 'https://via.placeholder.com/640x480.png/009988?text=error', 'Et dolore.', 'Dicta.', '2019-02-15 19:01:39', 14112, 2, 2, NULL, NULL),
(71, 'Hic delectus.', 'https://via.placeholder.com/640x480.png/005544?text=aut', 'Dolorum.', 'Aut rerum.', '1992-12-13 01:11:25', 64780, 4, 5, NULL, NULL),
(72, 'Assumenda.', 'https://via.placeholder.com/640x480.png/0055bb?text=inventore', 'Et neque.', 'Odio.', '1998-09-19 18:32:49', 30397, 5, 1, NULL, NULL),
(73, 'Nostrum minima et.', 'https://via.placeholder.com/640x480.png/0088cc?text=deserunt', 'Impedit.', 'Quis.', '2024-09-07 02:05:35', 45690, 8, 4, NULL, NULL),
(74, 'Sequi eaque non.', 'https://via.placeholder.com/640x480.png/00ccff?text=ut', 'Adipisci.', 'Est vero.', '2018-05-17 01:05:55', 26394, 2, 5, NULL, NULL),
(75, 'Sequi ad dolorem et.', 'https://via.placeholder.com/640x480.png/00aa77?text=optio', 'Libero.', 'Esse nisi.', '1975-12-13 22:15:25', 72741, 2, 4, NULL, NULL),
(76, 'Libero labore.', 'https://via.placeholder.com/640x480.png/004400?text=dolore', 'Nam est.', 'Non et.', '1975-03-26 09:43:29', 53222, 8, 3, NULL, NULL),
(77, 'Earum iusto enim.', 'https://via.placeholder.com/640x480.png/0044ff?text=itaque', 'Aut.', 'Quia cum.', '2005-03-09 19:53:53', 67111, 5, 4, NULL, NULL),
(78, 'Praesentium.', 'https://via.placeholder.com/640x480.png/0011cc?text=doloremque', 'Dolore.', 'Illo.', '1972-02-11 23:00:33', 73620, 3, 4, NULL, NULL),
(79, 'Expedita ea labore.', 'https://via.placeholder.com/640x480.png/007733?text=et', 'Non.', 'Est aut.', '1971-05-18 18:02:25', 75726, 9, 2, NULL, NULL),
(80, 'Repellat corrupti.', 'https://via.placeholder.com/640x480.png/0099ee?text=consequatur', 'Aut.', 'Quam.', '1994-09-24 11:37:04', 3770, 9, 2, NULL, NULL),
(81, 'Reprehenderit optio.', 'https://via.placeholder.com/640x480.png/006677?text=doloremque', 'Aut.', 'Earum.', '1993-12-14 13:02:38', 11288, 8, 1, NULL, NULL),
(82, 'Corrupti ipsum eum.', 'https://via.placeholder.com/640x480.png/00aa33?text=corporis', 'Vero ab.', 'Nihil qui.', '2008-10-21 22:00:31', 90617, 5, 5, NULL, NULL),
(83, 'Molestias.', 'https://via.placeholder.com/640x480.png/00bbff?text=nostrum', 'Laborum.', 'Vel.', '1989-05-29 19:04:58', 58159, 7, 2, NULL, NULL),
(84, 'Quidem quibusdam.', 'https://via.placeholder.com/640x480.png/007711?text=aut', 'Dolores.', 'Et.', '1974-03-24 22:13:47', 77898, 3, 5, NULL, NULL),
(85, 'Ratione eum eaque.', 'https://via.placeholder.com/640x480.png/0099aa?text=et', 'Eligendi.', 'Unde at.', '1985-06-04 03:07:07', 94762, 4, 3, NULL, NULL),
(86, 'Aut et tempora cum.', 'https://via.placeholder.com/640x480.png/007766?text=at', 'Error.', 'Voluptate.', '2004-04-23 11:13:45', 55634, 1, 5, NULL, NULL),
(87, 'Velit voluptatum.', 'https://via.placeholder.com/640x480.png/0011ee?text=aliquid', 'Eligendi.', 'Dolores.', '2005-04-28 22:00:32', 61822, 4, 1, NULL, NULL),
(88, 'Rerum accusantium.', 'https://via.placeholder.com/640x480.png/00ee77?text=praesentium', 'Et ea et.', 'Eos.', '2020-11-03 04:27:57', 58316, 2, 1, NULL, NULL),
(89, 'Expedita rerum.', 'https://via.placeholder.com/640x480.png/00dd66?text=ut', 'Ipsum.', 'Et.', '2021-01-14 11:32:41', 86799, 10, 1, NULL, NULL),
(90, 'Quibusdam qui quod.', 'https://via.placeholder.com/640x480.png/00cc44?text=qui', 'Quis id.', 'In iste.', '1978-04-15 09:14:43', 70608, 4, 5, NULL, NULL),
(91, 'Sequi libero ut.', 'https://via.placeholder.com/640x480.png/00aa55?text=harum', 'Velit.', 'Sunt et.', '2014-01-02 00:49:05', 57687, 4, 4, NULL, NULL),
(92, 'Aut sapiente rerum.', 'https://via.placeholder.com/640x480.png/00dd55?text=unde', 'Quo animi.', 'Rerum.', '2006-01-12 11:09:42', 96567, 3, 5, NULL, NULL),
(93, 'Ad voluptatem est.', 'https://via.placeholder.com/640x480.png/008888?text=perferendis', 'Sunt.', 'Cum.', '1989-03-14 09:29:11', 72127, 10, 2, NULL, NULL),
(94, 'At odio minima aut.', 'https://via.placeholder.com/640x480.png/004422?text=rerum', 'Et in.', 'Et vero.', '2009-10-27 02:15:30', 79345, 4, 4, NULL, NULL),
(95, 'Optio in vitae.', 'https://via.placeholder.com/640x480.png/00ddaa?text=ipsa', 'Ab.', 'Non.', '2005-04-18 17:01:08', 99589, 10, 4, NULL, NULL),
(96, 'Et dolorem.', 'https://via.placeholder.com/640x480.png/002255?text=reiciendis', 'Nostrum.', 'Unde odit.', '2002-02-26 10:09:58', 2597, 5, 3, NULL, NULL),
(97, 'Alias ut enim eius.', 'https://via.placeholder.com/640x480.png/003344?text=sit', 'Inventore.', 'Officiis.', '1997-11-12 05:54:54', 16852, 6, 3, NULL, NULL),
(98, 'Nobis ipsam.', 'https://via.placeholder.com/640x480.png/009977?text=numquam', 'Dolores.', 'Id odio.', '2008-06-13 20:48:57', 28070, 1, 5, NULL, NULL),
(99, 'Hic eius in ut eius.', 'https://via.placeholder.com/640x480.png/000000?text=doloremque', 'Placeat.', 'Impedit.', '1981-05-18 09:01:21', 71548, 8, 4, NULL, NULL),
(100, 'Magni error et ut.', 'https://via.placeholder.com/640x480.png/002255?text=eius', 'Ex.', 'Maxime et.', '2006-02-20 08:06:10', 85660, 5, 3, NULL, NULL),
(101, 'At praesentium.', 'https://via.placeholder.com/640x480.png/00aa44?text=culpa', 'Molestiae.', 'Nesciunt.', '2002-05-06 17:36:30', 8436, 5, 5, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `books`
--
ALTER TABLE `books`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=102;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
