-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 27, 2021 at 08:40 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `readersden`
--

-- --------------------------------------------------------

--
-- Table structure for table `book`
--

CREATE TABLE `book` (
  `ISBN` int(30) NOT NULL,
  `title` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `author_name` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `publication_id` int(10) DEFAULT NULL,
  `price` int(10) DEFAULT NULL,
  `genre` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pdf` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rating` decimal(3,1) DEFAULT NULL,
  `used` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `offer` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `year` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `book`
--

INSERT INTO `book` (`ISBN`, `title`, `author_name`, `publication_id`, `price`, `genre`, `pdf`, `rating`, `used`, `offer`, `year`) VALUES
(101, 'Devi', 'Humayun Ahmed', 1, 375, 'Psychological thriller', 'no', '4.1', 'no', 'no', '1995-06-22'),
(102, 'Mohapurush', 'Humayun Ahmed', 2, 200, 'Romantic', 'no', '3.2', 'yes', 'no', '1990-11-10'),
(103, 'Ball point', 'Humayun Ahmed', 2, 150, 'Biography', 'no', '2.6', 'no', 'no', '2014-11-10'),
(104, 'Aguner Poroshmoni', 'Humayun Ahmed', 3, 170, 'War', 'yes', '4.0', 'no', 'no', '1990-08-11'),
(105, 'Nondito Noroke', 'Humayun Ahmed', 1, 100, 'Thriller', 'no', '3.5', 'yes', 'no', '1982-02-04'),
(106, 'Deyal', 'Humayun Ahmed', 3, 200, 'Thriller', 'no', '2.5', 'no', 'no', '2017-05-30'),
(107, 'Noboni', 'Humayun Ahmed', 2, 170, 'Drama', 'yes', '4.0', 'no', 'no', '1993-08-11'),
(108, 'Ei-sob Dinratri', 'Humayun Ahmed', 1, 160, 'Drama', 'no', '4.0', 'yes', 'yes', '1992-02-04'),
(109, 'Opekkha', 'Humayun Ahmed', 3, 290, 'Drama', 'no', '2.5', 'no', 'no', '2015-07-29'),
(110, 'Chaitrer Dinratri', 'Humayun Ahmed', 2, 50, 'Drama', 'no', '2.1', 'no', 'no', '2010-11-10'),
(111, 'Anonto Ambore', 'Humayun Ahmed', 3, 90, 'Drama', 'yes', '4.1', 'no', 'yes', '1999-08-11'),
(112, 'Jochona o Jononir golpo', 'Humayun Ahmed', 1, 110, 'Drama', 'no', '3.5', 'yes', 'no', '1988-02-04'),
(113, 'Pencil aka pori', 'Humayun Ahmed', 3, 120, 'Drama', 'no', '2.5', 'no', 'no', '2010-09-23'),
(114, 'Eka Eka', 'Humayun Ahmed', 2, 100, 'Biography', 'no', '2.0', 'no', 'no', '2012-09-11'),
(115, 'Ei bosonto', 'Humayun Ahmed', 2, 60, 'Drama', 'yes', '4.0', 'no', 'no', '1998-04-10'),
(116, 'Shobjatra', 'Humayun Ahmed', 1, 80, 'Drama', 'no', '3.0', 'yes', 'no', '1984-02-04'),
(117, 'Mirar gramer bari', 'Humayun Ahmed', 2, 340, 'Drama', 'yes', '3.4', 'no', 'no', '0000-00-00'),
(118, 'Nobojhi', 'Humayun Ahmed', 2, 140, 'Biography', 'no', '4.7', 'no', 'no', '2014-11-13'),
(119, 'Krishnopokko', 'Humayun Ahmed', 3, 190, 'Drama', 'yes', '4.0', 'no', 'yes', '1991-05-10'),
(120, 'Uralponkhi', 'Humayun Ahmed', 2, 160, 'Thriller', 'no', '3.5', 'yes', 'no', '1998-01-05'),
(121, 'Jol Jochna', 'Humayun Ahmed', 3, 230, 'Drama', 'no', '1.5', 'no', 'no', '1999-03-13'),
(122, 'Priyotomeshu', 'Humayun Ahmed', 3, 300, 'Drama', 'no', '2.3', 'no', 'no', '1992-04-12'),
(123, 'Rumali', 'Humayun Ahmed', 2, 200, 'Drama', 'yes', '2.2', 'no', 'yes', '1990-05-11'),
(124, 'Botol Bhut', 'Humayun Ahmed', 3, 280, 'Thriller', 'no', '3.4', 'yes', 'yes', '1993-06-30'),
(125, 'Ke kotha Koy', 'Humayun Ahmed', 2, 270, 'Thriller', 'yes', '4.8', 'no', 'no', '0000-00-00'),
(126, 'Kutu Mia', 'Humayun Ahmed', 2, 220, 'Comedy', 'yes', '3.2', 'no', 'no', '1981-08-25'),
(127, 'Paap', 'Humayun Ahmed', 1, 100, 'Thriller', 'no', '4.3', 'no', 'yes', '2014-11-24'),
(128, 'Diner Seshe', 'Humayun Ahmed', 3, 390, 'Drama', 'no', '3.5', 'no', 'no', '2013-10-23'),
(129, 'Doiroth', 'Humayun Ahmed', 3, 70, 'Drama', 'yes', '2.2', 'no', 'no', '2012-09-22'),
(130, 'Surjer Din', 'Humayun Ahmed', 1, 100, 'Drama', 'no', '4.6', 'no', 'no', '2011-03-21'),
(131, 'Badshah Namdar', 'Humayun Ahmed', 2, 300, 'Biography', 'no', '2.6', 'no', 'no', '2001-11-10'),
(132, '1971', 'Humayun Ahmed', 3, 170, 'War', 'no', '4.0', 'no', 'no', '2002-08-11'),
(133, 'Himu Remand e', 'Humayun Ahmed', 1, 130, 'Psychological Thriller', 'no', '3.5', 'yes', 'no', '2003-02-04'),
(134, 'kath pencil', 'Humayun Ahmed', 3, 190, 'Comedy', 'no', '2.5', 'no', 'no', '2004-05-30'),
(135, 'Omega Point', 'Humayun Ahmed', 2, 150, 'Biography', 'no', '2.6', 'no', 'no', '2005-11-10'),
(136, 'Ebong Himu', 'Humayun Ahmed', 4, 120, 'Psychological Thriller', 'yes', '4.0', 'no', 'no', '2006-08-11'),
(137, 'She ashe dhire', 'Humayun Ahmed', 1, 150, 'psychological Thriller', 'no', '3.5', 'yes', 'no', '2005-02-04'),
(138, 'Leelaboti', 'Humayun Ahmed', 3, 300, 'Drama', 'no', '2.5', 'no', 'no', '2003-05-30'),
(139, 'Eishob Dinratri', 'Humayun Ahmed', 4, 400, 'psychological Thriller', 'no', '2.6', 'no', 'no', '2002-11-10'),
(140, 'Aaj Chitrar Biye', 'Humayun Ahmed', 4, 120, 'Drama', 'yes', '4.0', 'no', 'no', '2001-08-11'),
(141, 'Shuvro gese bone', 'Humayun Ahmed', 1, 100, 'psychological Thriller', 'no', '3.5', 'yes', 'no', '2003-02-04'),
(142, 'Himur Ache jol', 'Humayun Ahmed', 3, 240, 'Romantic', 'no', '2.5', 'no', 'no', '2006-05-30'),
(143, 'Himur bosonto', 'Humayun Ahmed', 2, 150, 'Psychological Thriller', 'no', '2.6', 'no', 'no', '2008-11-10'),
(144, 'Misir Alir choshma', 'Humayun Ahmed', 3, 170, 'psychological Thriller', 'yes', '4.0', 'no', 'no', '2008-08-11'),
(145, 'Himur rupali ratri', 'Humayun Ahmed', 5, 100, 'Drama', 'no', '3.5', 'yes', 'no', '2009-02-04'),
(146, 'Moyurakkhi', 'Humayun Ahmed', 3, 200, 'Thriller', 'no', '2.5', 'no', 'no', '2000-05-30'),
(147, 'Himu mama', 'Humayun Ahmed', 2, 150, 'Thriller', 'no', '2.6', 'no', 'no', '2009-11-10'),
(148, 'Se ashe dhire', 'Humayun Ahmed', 5, 170, 'Romantic', 'no', '4.0', 'no', 'no', '2000-08-11'),
(149, 'Himur Moddhodupur', 'Humayun Ahmed', 1, 100, 'Thriller', 'no', '3.5', 'yes', 'no', '2000-02-04'),
(150, 'Himur neel josna', 'Humayun Ahmed', 5, 200, 'Drama', 'no', '2.5', 'no', 'no', '2001-05-30'),
(151, 'Himu ebong ekta russian pori', 'Humayun Ahmed', 2, 150, 'Drama', 'no', '2.6', 'no', 'no', '2016-11-10'),
(152, 'Himur kothamala', 'Humayun Ahmed', 3, 170, 'Drama', 'yes', '4.0', 'no', 'no', '2009-08-11'),
(153, 'Cheleta', 'Humayun Ahmed', 4, 100, 'Romantic', 'no', '3.5', 'yes', 'no', '1994-02-04'),
(154, 'Aaj Himur biye', 'Humayun Ahmed', 3, 200, 'Romantic', 'no', '2.5', 'no', 'no', '1997-05-30'),
(155, 'Meyetar naam narina', 'Dr. Zafor Iqbal', 5, 220, 'Science-fiction', 'no', '3.3', 'no', 'no', '2011-02-21'),
(156, 'Naat Boltu', 'Dr. Zafor Iqbal', 7, 170, 'Comedy', 'yes', '4.5', 'no', 'no', '1999-08-11'),
(157, 'Keplar Tutubi', 'Dr. Zafor Iqbal', 1, 100, 'Science-fiction', 'no', '3.5', 'yes', 'no', '1992-02-04'),
(158, 'Tuntuni o chotacchu', 'Dr. Zafor Iqbal', 7, 200, 'Comedy', 'no', '2.5', 'no', 'no', '2017-05-30'),
(159, 'Serina', 'Dr. Zafor Iqbal', 6, 230, 'Science-fiction', 'yes', '4.2', 'no', 'yes', '2009-02-12'),
(160, 'Ratuler raat Ratuler din', 'Dr. Zafor Iqbal', 3, 170, 'Drama', 'yes', '4.0', 'no', 'no', '1998-08-11'),
(161, 'Iron', 'Dr. Zafor Iqbal', 6, 100, 'Science-fiction', 'no', '3.5', 'yes', 'no', '1989-02-04'),
(162, 'Ondhokarer Pret', 'Dr. Zafor Iqbal', 5, 200, 'Science-fiction', 'no', '2.5', 'no', 'no', '2010-05-30'),
(163, 'Ondhokarer Groho', 'Dr. Zafor Iqbal', 7, 150, 'Science-fiction', 'no', '2.6', 'no', 'no', '2012-11-10'),
(164, 'Robonishi', 'Dr. Zafor Iqbal', 3, 170, 'Science-fiction', 'yes', '4.0', 'no', 'no', '1996-08-11'),
(165, 'Blackholer Baccha', 'Dr. Zafor Iqbal', 6, 100, 'Science-fiction', 'no', '3.5', 'yes', 'no', '2012-02-04'),
(166, 'Dhusto cheler dol', 'Dr. Zafor Iqbal', 7, 200, 'Drama', 'no', '2.5', 'no', 'no', '2008-05-30'),
(167, 'Gramer naam kakondubi', 'Dr. Zafor Iqbal', 6, 150, 'War', 'no', '2.6', 'no', 'no', '2006-11-10'),
(168, 'Meku Khahini', 'Dr. Zafor Iqbal', 3, 170, 'Science-fiction', 'yes', '4.0', 'no', 'no', '1994-08-11'),
(169, 'Joloj', 'Dr. Zafor Iqbal', 1, 100, 'Science-fiction', 'no', '3.5', 'yes', 'no', '2000-02-04'),
(170, 'Nayira', 'Dr. Zafor Iqbal', 3, 200, 'Science-fiction', 'no', '2.5', 'no', 'no', '2007-05-30'),
(171, 'Jara Biobot', 'Dr. Zafor Iqbal', 2, 150, 'Science-fiction', 'no', '2.6', 'no', 'no', '2004-11-10'),
(172, 'Rasha', 'Dr. Zafor Iqbal', 3, 170, 'Science-fiction', 'yes', '4.3', 'no', 'no', '2004-08-11'),
(173, 'Aro tuntuni aro chotacchu', 'Dr. Zafor Iqbal', 6, 320, 'Comedy', 'no', '3.5', 'yes', 'no', '2019-02-04'),
(174, 'Litu Brittanto', 'Dr. Zafor Iqbal', 3, 200, 'Drama', 'no', '2.5', 'no', 'no', '2019-05-30'),
(175, 'Bristhet thikana', 'Dr. Zafor Iqbal', 2, 150, 'Drama', 'no', '2.6', 'no', 'no', '2001-11-10'),
(176, 'School er naam pothochari', 'Dr. Zafor Iqbal', 5, 170, 'Drama', 'yes', '4.6', 'no', 'no', '2008-08-11'),
(177, 'Sobuj velvet', 'Dr. Zafor Iqbal', 1, 200, 'Science-fiction', 'no', '3.5', 'yes', 'no', '2008-02-04'),
(178, 'Tukunjil', 'Dr. Zafor Iqbal', 7, 200, 'Drama', 'no', '2.5', 'no', 'no', '2000-05-30'),
(179, 'Labu elo shohore', 'Dr. Zafor Iqbal', 7, 450, 'Drama', 'no', '2.6', 'no', 'no', '2006-11-10'),
(180, 'Krugo', 'Dr. Zafor Iqbal', 3, 170, 'Science-fiction', 'yes', '4.0', 'no', 'no', '2000-08-11'),
(181, 'Pri', 'Dr. Zafor Iqbal', 1, 100, 'Science-fiction', 'no', '3.5', 'yes', 'no', '2002-02-04'),
(182, 'Dekha Alor Na Dekha Rup ', 'Dr. Zafor Iqbal', 3, 200, 'Education', 'no', '2.5', 'no', 'no', '2005-05-30'),
(183, 'Neurone Onuronon', 'Dr. Zafor Iqbal', 2, 450, 'Education', 'no', '2.6', 'no', 'no', '2005-11-10'),
(184, 'Neurone Abaro Onuronon ', 'Dr. Zafor Iqbal', 6, 170, 'Education', 'yes', '4.0', 'no', 'no', '2006-08-11'),
(185, 'Bigyaner Eksho Mojar Khela', 'Dr. Zafor Iqbal', 1, 100, 'Education', 'no', '3.5', 'yes', 'no', '1998-02-04'),
(186, 'Goniter Moja Mojar Gonit', 'Dr. Zafor Iqbal', 7, 200, 'Education', 'no', '2.5', 'no', 'no', '2007-05-30'),
(189, 'Ektukhani Bigyan ', 'Dr. Zafor Iqbal', 1, 150, 'Education', 'no', '2.6', 'no', 'no', '2011-11-10'),
(190, 'Theory Of Relativity ', 'Dr. Zafor Iqbal', 5, 170, 'Education', 'yes', '4.7', 'no', 'no', '1997-08-11'),
(191, 'Aro Ektukhani Bigyan', 'Dr. Zafor Iqbal', 6, 300, 'Education', 'no', '3.5', 'yes', 'no', '1992-02-04'),
(192, 'Rongin Choshma', 'Dr. Zafor Iqbal', 4, 200, 'Biography', 'no', '2.5', 'no', 'no', '2009-05-30'),
(193, 'Danob', 'Dr. Zafor Iqbal', 2, 300, 'Science-fiction', 'no', '4.1', 'no', 'yes', '2020-04-12'),
(194, 'Pishachini', 'Dr. Zafor Iqbal', 5, 350, 'Science-fiction', 'no', '4.4', 'no', 'yes', '2019-04-07'),
(195, 'Adhunik Ishoper Golpo', 'Dr. Zafor Iqbal', 4, 100, 'Drama', 'no', '3.5', 'yes', 'no', '2020-02-04'),
(196, 'America', 'Dr. Zafor Iqbal', 5, 300, 'Biography', 'no', '4.5', 'no', 'yes', '2020-05-30'),
(197, 'Desher Baire Desh', 'Dr. Zafor Iqbal', 3, 400, 'Biography', 'no', '3.5', 'no', 'no', '2008-05-30'),
(198, 'Six interesting thing', 'Dr. Zafor Iqbal', 6, 200, 'Science-fiction', 'yes', '3.9', 'yes', 'yes', '2012-02-03'),
(199, 'Amar Boro Bhai Humayun Ahmed', 'Dr. Zafor Iqbal', 5, 220, 'Biography', 'no', '3.4', 'no', 'yes', '2015-05-30'),
(200, 'Haatkata Robin', 'Dr. Zafor Iqbal', 5, 200, 'Thriller', 'no', '2.7', 'no', 'no', '2011-05-30'),
(201, 'Project Akashin', 'Dr. Zafor Iqbal', 6, 300, 'Science-fiction', 'no', '4.1', 'no', 'yes', '2020-04-12'),
(202, 'Krenial', 'Dr. Zafor Iqbal', 4, 300, 'Science-fiction', 'no', '4.1', 'no', 'yes', '2021-06-12'),
(203, 'Icaras', 'Dr. Zafor Iqbal', 4, 320, 'Science-fiction', 'no', '4.3', 'no', 'no', '2010-02-12'),
(204, 'Animan', 'Dr. Zafor Iqbal', 4, 350, 'Science-fiction', 'no', '4.5', 'yes', 'yes', '2013-02-11'),
(205, 'Kajoler dinratri', 'Dr. Zafor Iqbal', 5, 340, 'Science-fiction', 'no', '4.7', 'no', 'no', '2013-02-02'),
(206, 'Nitu o taar bhondura', 'Dr. Zafor Iqbal', 3, 320, 'Science-fiction', 'no', '2.3', 'no', 'no', '2014-02-06'),
(207, 'Abrity', 'Anisul Haque', 1, 100, 'Poetry', 'no', '3.5', 'yes', 'no', '2021-02-04'),
(208, 'Sobuj Mather Gashe', 'Anisul Haque', 3, 200, 'Poetry', 'no', '4.5', 'no', 'no', '2019-05-30'),
(209, 'Oporapor', 'Anisul Haque', 4, 150, 'Poetry', 'no', '3.6', 'no', 'no', '2016-11-10'),
(210, 'Kheya', 'Anisul Haque', 6, 200, 'Poetry', 'no', '4.0', 'no', 'no', '2008-02-12'),
(211, 'Fand', 'Anisul Haque', 8, 100, 'Poetry', 'no', '3.5', 'yes', 'no', '2005-02-04'),
(212, 'Se ', 'Anisul Haque', 8, 200, 'Poetry', 'no', '2.5', 'no', 'no', '2017-05-30'),
(213, 'Maa', 'Anisul Haque', 8, 150, 'War', 'no', '2.6', 'no', 'no', '2015-11-10'),
(214, 'Abar Tora Kipte Ho', 'Anisul Haque', 7, 170, 'Drama', 'yes', '4.0', 'no', 'no', '1999-08-11'),
(215, 'Alo Andhokare Jai ', 'Anisul Haque', 8, 100, 'Drama', 'no', '3.5', 'yes', 'no', '1999-02-04'),
(216, 'Khuda o Bhalobashar Galpo', 'Anisul Haque', 5, 200, 'Poetry', 'no', '2.5', 'no', 'no', '2017-05-30'),
(217, 'Nandini', 'Anisul Haque', 1, 150, 'Poetry', 'no', '2.6', 'no', 'no', '2019-11-10'),
(218, 'Dushwapner Jatri', 'Anisul Haque', 7, 170, 'Drama', 'yes', '4.0', 'no', 'no', '1996-08-11'),
(219, 'Rammya Katha', 'Anisul Haque', 4, 500, 'Drama', 'no', '3.5', 'yes', 'no', '2010-02-04'),
(220, 'Kobi O Camera', 'Anisul Haque', 3, 200, 'Drama', 'no', '2.5', 'no', 'no', '2017-05-30'),
(221, 'Jalrang Padya', 'Anisul Haque', 2, 150, 'Poetry', 'no', '2.6', 'no', 'no', '2021-11-10'),
(222, 'Tomake Bhabna Kori', 'Anisul Haque', 1, 170, 'Poetry', 'yes', '4.0', 'no', 'no', '2021-08-11'),
(223, 'Hridita', 'Anisul Haque', 1, 100, 'Poetry', 'no', '3.5', 'yes', 'no', '1982-02-04'),
(224, 'Onader Niye Koutuk  ', 'Anisul Haque', 3, 500, 'Drama', 'no', '3.5', 'no', 'no', '2017-05-30'),
(225, 'Fazil', 'Anisul Haque', 7, 150, 'Drama', 'no', '2.6', 'no', 'no', '2014-11-10'),
(226, 'Amar Ekta Dukkho Ache', 'Anisul Haque', 8, 170, 'Poetry', 'yes', '4.0', 'no', 'no', '1990-08-11'),
(227, 'Fire Eso Sundoritoma', 'Anisul Haque', 8, 100, 'Poetry', 'no', '3.5', 'yes', 'no', '1982-02-04'),
(228, 'Swapno', 'Anisul Haque', 1, 200, 'Drama', 'no', '2.5', 'no', 'no', '2017-05-30'),
(229, 'Nondini', 'Anisul Haque', 2, 150, 'Poetry', 'no', '2.6', 'no', 'no', '2014-11-10'),
(230, 'Swopner Bazar', 'Samaresh Mazumder', 2, 170, 'Romantic', 'yes', '4.0', 'no', 'no', '1990-08-11'),
(231, 'Rong Mahal', 'Samaresh Mazumder', 8, 100, 'Romantic', 'no', '3.5', 'yes', 'no', '1988-02-04'),
(232, 'Garvadharini', 'Samaresh Mazumder', 6, 200, 'Romantic', 'no', '4.5', 'no', 'no', '2007-05-30'),
(233, 'Chayar Shareer', 'Samaresh Mazumder', 6, 150, 'Romantic', 'no', '2.6', 'no', 'no', '2003-11-10'),
(234, 'Bunu Hanser Palok ', 'Samaresh Mazumder', 7, 170, 'Romantic', 'yes', '4.0', 'no', 'no', '1986-08-11'),
(235, 'Arjun Beriye Elo', 'Samaresh Mazumder', 8, 100, 'Romantic', 'no', '3.5', 'yes', 'no', '1983-02-04'),
(236, 'Agnirath', 'Samaresh Mazumder', 6, 200, 'Romantic', 'no', '2.5', 'no', 'no', '2011-05-30'),
(237, 'Aay Sukh Jay Sukh', 'Samaresh Mazumder', 7, 150, 'Romantic', 'no', '2.6', 'no', 'no', '2020-11-10'),
(238, 'Hridoybati', 'Samaresh Mazumder', 8, 170, 'Romantic', 'yes', '4.0', 'no', 'no', '1992-08-11'),
(239, 'Bhalobasa Theke Jai ', 'Samaresh Mazumder', 1, 100, 'Romantic', 'no', '3.5', 'yes', 'no', '1989-02-04'),
(240, 'Shopno Shondhani', 'Samaresh Mazumder', 1, 200, 'Romantic', 'no', '2.5', 'no', 'no', '2011-05-30'),
(241, 'Moddhorater Rakhal', 'Samaresh Mazumder', 4, 110, 'Romantic', 'no', '4.6', 'no', 'no', '2016-11-10'),
(242, 'Shobder Aral ', 'Samaresh Mazumder', 4, 470, 'Romantic', 'yes', '4.0', 'no', 'no', '1999-08-11'),
(243, 'Taray Grohon Hoyna  ', 'Samaresh Mazumder', 2, 100, 'Romantic', 'no', '3.5', 'yes', 'no', '2002-02-04'),
(244, 'Oishorjo', 'Samaresh Mazumder', 4, 200, 'Romantic', 'no', '2.5', 'no', 'no', '2018-05-30'),
(245, 'Kalapahar', 'Samaresh Mazumder', 5, 150, 'Romantic', 'no', '2.6', 'no', 'no', '2018-11-10'),
(246, 'Meghe Matite Makhamakhi', 'Samaresh Mazumder', 7, 170, 'Romantic', 'yes', '4.0', 'no', 'no', '1990-08-11'),
(247, 'Leela Khela  ', 'Samaresh Mazumder', 8, 100, 'Thriller', 'no', '3.5', 'yes', 'no', '2010-02-04'),
(248, 'Kanthe Pariparshwiker Mala', 'Samaresh Mazumder', 3, 200, 'Thriller', 'no', '2.5', 'no', 'no', '2020-05-30'),
(249, 'Jibanjapan', 'Samaresh Mazumder', 2, 150, 'Romantic', 'no', '2.6', 'no', 'no', '2000-11-10'),
(250, 'Eto Rakta Keno ', 'Samaresh Mazumder', 3, 170, 'Romantic', 'yes', '4.0', 'no', 'no', '2000-08-11'),
(251, 'Andarmahaler Galpo', 'Samaresh Mazumder', 2, 100, 'Romantic', 'no', '3.5', 'yes', 'no', '2010-02-04'),
(252, 'Janani Debi', 'Samaresh Mazumder', 6, 200, 'Romantic', 'no', '2.5', 'no', 'no', '2017-05-30'),
(253, 'Saoyar ', 'Samaresh Mazumder', 8, 150, 'Romantic', 'no', '2.6', 'no', 'no', '2012-11-10'),
(254, 'Ujan Ganga ', 'Samaresh Mazumder', 5, 170, 'Romantic', 'yes', '4.0', 'no', 'no', '1990-08-11'),
(255, 'Curvalor Bakso ', 'Samaresh Mazumder', 5, 100, 'Romantic', 'no', '3.5', 'yes', 'no', '2002-02-04'),
(256, 'Moner Moto Mon ', 'Samaresh Mazumder', 5, 200, 'Romantic', 'no', '2.5', 'no', 'no', '2017-05-30'),
(257, 'Golpo Gacha', 'Samaresh Mazumder', 8, 150, 'Romantic', 'no', '2.6', 'no', 'no', '2014-11-10'),
(258, 'Nillohit Samagra Vol-1', 'Sunil Gnagopadhya', 9, 170, 'Thriller', 'yes', '4.0', 'no', 'no', '2001-08-11'),
(259, 'Kakababu Bonam Chora Shikari', 'Sunil Gnagopadhya', 9, 100, 'Thriller', 'no', '3.5', 'yes', 'no', '2000-02-04'),
(260, 'Sontu Kothay, Kakababu Kothay', 'Sunil Gnagopadhya', 9, 200, 'Thriller', 'no', '2.5', 'no', 'no', '2021-05-30'),
(261, 'Kakababu O Shishu Chorer Dol', 'Sunil Gnagopadhya', 9, 150, 'Thriller', 'no', '2.6', 'no', 'no', '2019-11-10'),
(262, 'Prothom-alo-02', 'Sunil Gnagopadhya', 9, 170, 'Drama', 'yes', '4.0', 'no', 'no', '1990-08-11'),
(263, 'Nillohit Samagra Vol-2', 'Sunil Gnagopadhya', 9, 100, 'Thriller', 'no', '3.5', 'yes', 'no', '1992-02-04'),
(264, 'Kakababu O Ek Chhadmabeshi', 'Sunil Gnagopadhya', 9, 200, 'Thriller', 'no', '2.5', 'no', 'no', '2017-05-30'),
(265, 'Batashe Kisher Dak Sono', 'Sunil Gnagopadhya', 9, 150, 'Romantic', 'no', '2.6', 'no', 'no', '2010-11-10'),
(266, 'Valobasha Nao, Hariye Jeo Na', 'Sunil Gnagopadhya', 8, 170, 'Romantic', 'yes', '4.0', 'no', 'no', '1990-08-11'),
(267, 'Shorgo Nagorir Chabi', 'Sunil Gnagopadhya', 1, 120, 'Romantic', 'no', '3.5', 'yes', 'no', '1982-02-04'),
(268, 'Sunil Er Shrestha Kobita', 'Sunil Gnagopadhya', 9, 250, 'Poetry', 'no', '2.5', 'no', 'no', '2017-05-30'),
(269, 'Shikhor Theke Shikhore', 'Sunil Gnagopadhya', 9, 100, 'Drama', 'no', '2.6', 'no', 'no', '2014-11-10'),
(270, 'Agun Pakhir Rahasya', 'Sunil Gnagopadhya', 8, 170, 'Thriller', 'yes', '4.0', 'no', 'no', '1997-08-11'),
(271, 'Hotat Nirar Jonyo', 'Sunil Gnagopadhya', 7, 400, 'Drama', 'no', '3.5', 'yes', 'no', '1975-02-04'),
(272, 'Sei Somoy', 'Sunil Gnagopadhya', 9, 200, 'Drama', 'no', '2.5', 'no', 'no', '2020-05-30');

-- --------------------------------------------------------

--
-- Table structure for table `publication`
--

CREATE TABLE `publication` (
  `publication_id` int(10) NOT NULL,
  `publication_name` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `publication_place` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `publication`
--

INSERT INTO `publication` (`publication_id`, `publication_name`, `publication_place`) VALUES
(1, 'Annanya Prokashoni', 'Bangla motor, Dhaka'),
(2, 'Kakoli Prokashoni', 'Bangla motor, Dhaka'),
(3, 'Prothoma Prokashoni', 'Mohakhali, Dhaka'),
(4, 'Subin Prokashoni', 'Segun baghicha, Dhaka'),
(5, 'Gyan Prokashoni', 'Dhanmondi, Dhaka'),
(6, 'Kotha mala', 'Nilkhet, Dhaka'),
(7, 'Onnokosh', 'Oxford road, Dhaka'),
(8, 'Prithibi Prokashoni', 'Green road, Dhaka'),
(9, 'Somabesh', 'West Purbapur, Dhaka');

-- --------------------------------------------------------

--
-- Table structure for table `sign_up`
--

CREATE TABLE `sign_up` (
  `first_name` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone_no` int(11) DEFAULT NULL,
  `address` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sign_up`
--

INSERT INTO `sign_up` (`first_name`, `last_name`, `email`, `phone_no`, `address`, `password`) VALUES
('tanjila', 'ahmed', 'myname@gmail.com', 123456, 'cumilla', 'mymymy'),
('Nazmus ', 'samin', 'sadatnazmus567@gmail.com', 123456, 'cumilla', '12345'),
('Nazmus Sadat', 'ahmed', 'sadatsamin52@yahoo.com', 2147483647, 'Dhanmondi, Dhaka', '123456'),
('Nazmus Sadat', 'bhuiyan', 'saminmymy@gmail.com', 2147483647, 'dhaka', 'saminnsucse'),
('Nazmus Sadat', 'Medha', 'saminnsucse@gmail.com', 1955755125, '39-40 Mitali Road, Rayer Bazar, Zigatola.', 'saminnsucse'),
('Nazmus Sadat', 'ahmed', 'tamedhaisgood@gmail.com', 2147483647, 'dhaka', 'ttrrreweq');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `book`
--
ALTER TABLE `book`
  ADD PRIMARY KEY (`ISBN`);

--
-- Indexes for table `publication`
--
ALTER TABLE `publication`
  ADD PRIMARY KEY (`publication_id`);

--
-- Indexes for table `sign_up`
--
ALTER TABLE `sign_up`
  ADD PRIMARY KEY (`email`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
