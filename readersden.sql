-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 26, 2021 at 05:54 PM
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
(154, 'Aaj Himur biye', 'Humayun Ahmed', 3, 200, 'Romantic', 'no', '2.5', 'no', 'no', '1997-05-30');

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
-- Indexes for table `sign_up`
--
ALTER TABLE `sign_up`
  ADD PRIMARY KEY (`email`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
