-- phpMyAdmin SQL Dump
-- version 2.11.8.1deb5+lenny8
-- http://www.phpmyadmin.net
--
-- Host: 10.10.11.5
-- Generation Time: Jan 12, 2012 at 07:07 AM
-- Server version: 5.5.16
-- PHP Version: 5.2.6-1+lenny10

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `mtzionextra`
--

-- --------------------------------------------------------

--
-- Table structure for table `neighborcontacts`
--

CREATE TABLE IF NOT EXISTS `neighborcontacts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(5000) COLLATE utf8_bin NOT NULL,
  `email` varchar(5000) COLLATE utf8_bin DEFAULT NULL,
  `phone` varchar(15) COLLATE utf8_bin DEFAULT NULL,
  `hometown` varchar(5000) COLLATE utf8_bin DEFAULT NULL,
  `updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=18 ;

--
-- Dumping data for table `neighborcontacts`
--

INSERT INTO `neighborcontacts` (`id`, `name`, `email`, `phone`, `hometown`, `updated`) VALUES
(1, 'Matt D.', 'matthew.darby@gmail.com', '9194131882', 'Cary, NC', '2011-09-11 07:09:58'),
(2, 'Willie & Anita Harris', 'harrisfamily@harriswebsite.net', '', 'Cary, NC', '2011-09-11 14:09:39'),
(3, 'Sandra Broadwater', '', '', 'Apex', '2011-09-11 21:09:58'),
(4, 'Jason Smith and Kelly Womble', 'jandk.b.smith@gmail.com', '919-608-7753', 'Morrisville, NC and Holly Springs, NC', '2011-09-11 22:09:14'),
(5, 'Ray and Staci Isaac', 'stacirn1971@yahoo.com', '919-371-8509', 'Cary, NC', '2011-09-12 14:09:01'),
(6, 'Theresa Liverman-Banks', '', '(919) 599-5919', 'Durham, NC', '2011-09-13 13:09:48'),
(7, 'Angela Boles Perry', 'Angela37644@aol.com', '(919) 362-0358', 'Cary, NC', '2011-09-14 09:09:40'),
(8, 'James Fountain', '', '(919) 462-3004', 'Morrisville, NC', '2011-09-14 09:09:54'),
(9, 'Antonio & LaDonna Bethea', 'ladonna.bethea@gmail.com', '919-387-6979', 'Holly Springs, NC', '2011-09-15 13:09:06'),
(10, 'Daryl and Angela Cody', 'Dcody1@nc.rr.com', '919-567-2376', 'Holly Springs, NC 27540', '2011-09-18 09:09:48'),
(11, 'Barbara Smith', 'bsmith6109@nc.rr.com', '(919) 851-3599', 'Raleigh, NC', '2011-09-20 05:09:47'),
(12, 'Sam Hanebeck', '', '', 'Cary', '2011-09-26 06:09:05'),
(13, 'David and Ina Bowser', 'bowser2bx01@earthlink.net', '919-244-9316', 'Fuquay-Varina, NC', '2011-09-30 12:09:17'),
(14, 'Carolyn Locklear', '', '(919) 836-8769', 'Garner, NC', '2011-10-27 10:10:08'),
(15, 'Sean & Angelique Cherry', 'jcsu1981@nc.rr.com', '', '', '2011-11-19 14:11:35'),
(16, 'Jerome & Antoinette Norton', 'norton1231@hotmail.com', '919-809-8176', 'Raleigh, NC', '2011-12-07 07:12:32'),
(17, 'Wayne and Marcia Bullock', 'wayneabe@gmail.com', '919-434-7061', 'Cary', '2011-12-07 14:12:43');
