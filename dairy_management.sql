-- phpMyAdmin SQL Dump
-- version 4.1.12
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Nov 05, 2017 at 10:20 AM
-- Server version: 5.6.16
-- PHP Version: 5.5.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `dairy_management`
--

-- --------------------------------------------------------

--
-- Table structure for table `addmilkwithsupplier`
--

CREATE TABLE IF NOT EXISTS `addmilkwithsupplier` (
  `supplier_rec_id` int(11) NOT NULL AUTO_INCREMENT,
  `pd_name` varchar(30) NOT NULL,
  `pd_impdate` varchar(30) NOT NULL,
  `pd_quantity` varchar(30) NOT NULL,
  `pd_rate` double NOT NULL,
  `pd_fat_qu` varchar(30) NOT NULL,
  `pd_fat_lit` double NOT NULL,
  `pd_lacto_qu` varchar(30) NOT NULL,
  `pd_lacto_lit` double NOT NULL,
  `total_amount` double NOT NULL,
  `spl_id` int(11) NOT NULL,
  PRIMARY KEY (`supplier_rec_id`),
  KEY `spl_id` (`spl_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=34 ;

--
-- Dumping data for table `addmilkwithsupplier`
--

INSERT INTO `addmilkwithsupplier` (`supplier_rec_id`, `pd_name`, `pd_impdate`, `pd_quantity`, `pd_rate`, `pd_fat_qu`, `pd_fat_lit`, `pd_lacto_qu`, `pd_lacto_lit`, `total_amount`, `spl_id`) VALUES
(1, 'milk', '2010/2/3', '20', 20.98, '2', 5.6, '2', 10.4, 2000, 14),
(2, 'milk', '2010/2/3', '20', 20, '2', 5.6, '2', 10, 2000, 14),
(3, 'Cow milk', '2017-09-14', '20', 50, '2', 10, '2', 15, 4000, 14),
(4, 'Cow milk', '2017-09-22', '50', 50, '5', 15, '4', 20, 2500, 5),
(5, 'Cow milk', '2017-09-15', '30', 50, '20', 15, '45.6', 30, 1500, 13),
(6, 'Cow milk', '2017-09-30', '20', 50, '3', 15, '4', 12, 40000, 5),
(7, 'Buffalow milk', '2017-09-20', '30', 55, '2', 10, '3', 15, 500, 2),
(8, 'Cow milk', '2017-10-13', '100', 60, '5', 15, '5', 25, 6000, 28),
(9, 'Buffalow milk', '2017-10-28', '200', 60, '4', 15, '20', 7, 8000, 8),
(10, 'Buffalow milk', '2017-10-20', '23', 45, '3', 18, '2', 25, 800, 7),
(11, 'Cow milk', '2017-10-19', '300', 50, '5', 18, '4', 20, 3000, 27),
(12, 'Cow milk', '2017-10-13', '300', 55, '5', 20, '6', 25, 2000, 5),
(13, 'Cow milk', '2017-10-21', '56', 67, '4', 35, '67', 45, 90000, 29),
(14, 'Cow milk', '2017-10-21', '56', 67, '4', 35, '67', 45, 90000, 29),
(15, 'Buffalow milk', '2017-10-01', '2', 50, '0.4', 30, '0.5', 45, 90, 30),
(16, 'Buffalow milk', '2017-10-01', '30', 55, '2', 20, '4', 20, 1500, 32),
(17, 'Cow milk', '2017-10-02', '4', 60, '3', 20, '2', 12, 200, 32),
(18, 'Cow milk', '2017-10-03', '30', 50, '2', 34, '5', 45, 1500, 33),
(19, 'Buffalow milk', '2017-10-04', '30', 55, '3', 23, '2', 46, 300, 34),
(20, 'Cow milk', '2017-10-05', '34', 60, '4', 34, '4', 45, 500, 34),
(21, 'Cow milk', '2017-10-04', '20', 55, '4', 34, '6', 10, 500, 35),
(22, 'Buffalow milk', '2017-10-05', '50', 60, '7', 35, '6', 23, 5000, 35),
(23, 'Buffalow milk', '2017-10-08', '30', 55, '5', 45, '5', 55, 400, 38),
(24, 'Cow milk', '2017-10-09', '80', 60, '4', 23, '3', 25, 1000, 38),
(25, 'Cow milk', '2017-10-08', '34', 55, '4', 45, '44', 45, 5677, 39),
(26, 'Buffalow milk', '2017-10-08', '30', 55, '3', 25, '2', 20, 400, 40),
(27, 'Cow milk', '2017-10-09', '45', 55, '5', 34, '4', 34, 700, 40),
(28, 'Buffalow milk', '2017-10-13', '55', 60, '5', 26, '45', 12, 6000, 42),
(29, 'Buffalow milk', '2017-10-14', '34', 60, '4', 30, '5', 34, 300, 42),
(30, 'Cow milk', '2017-10-20', '30', 55, '12', 11, '11', 11, 400, 5),
(31, 'Buffalow milk', '2017-10-21', '45', 44, '5', 10, '5', 12, 600, 5),
(32, 'Cow milk', '2017-11-05', '20', 55, '2', 45, '34', 23, 4500, 44),
(33, 'Buffalow milk', '2017-11-17', '36', 56, '12', 3, '34', 45, 568, 44);

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE IF NOT EXISTS `customer` (
  `cus_id` int(11) NOT NULL AUTO_INCREMENT,
  `cus_fname` varchar(30) NOT NULL,
  `cus_lname` varchar(30) NOT NULL,
  `cus_email` varchar(30) NOT NULL,
  `cus_gender` varchar(10) NOT NULL,
  `cus_contact` mediumtext NOT NULL,
  `cus_location` varchar(30) NOT NULL,
  `cus_orgname` varchar(30) NOT NULL,
  `cus_orgtype` varchar(30) NOT NULL,
  PRIMARY KEY (`cus_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`cus_id`, `cus_fname`, `cus_lname`, `cus_email`, `cus_gender`, `cus_contact`, `cus_location`, `cus_orgname`, `cus_orgtype`) VALUES
(2, 'Mukesh', 'Yadav', 'mk@gmail.com', 'M', '9818319614', 'Dewapur', 'Mentor', 'Oragnization'),
(3, '', '', '', 'null', '', '', '', 'Personal');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE IF NOT EXISTS `product` (
  `prd_id` int(11) NOT NULL AUTO_INCREMENT,
  `pd_code` varchar(30) NOT NULL,
  `pd_name` varchar(30) NOT NULL,
  `pd_rate` varchar(30) NOT NULL,
  `pd_date` varchar(30) NOT NULL,
  `pd_quantity` varchar(30) NOT NULL,
  PRIMARY KEY (`prd_id`),
  UNIQUE KEY `pd_code` (`pd_code`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`prd_id`, `pd_code`, `pd_name`, `pd_rate`, `pd_date`, `pd_quantity`) VALUES
(4, '#c102', 'Patnjali', '45', '2017-09-15', '67 packet'),
(5, '#mky101', 'Britania', '1200', '2017-09-22', '450'),
(6, 'Rajesh', 'Yadav', 'rj@gmail.com', '2017-09-19', '45 packets');

-- --------------------------------------------------------

--
-- Table structure for table `supplier`
--

CREATE TABLE IF NOT EXISTS `supplier` (
  `spl_id` int(11) NOT NULL AUTO_INCREMENT,
  `spl_fname` varchar(30) NOT NULL,
  `spl_lname` varchar(30) NOT NULL,
  `spl_email` varchar(30) NOT NULL,
  `spl_gender` varchar(10) NOT NULL,
  `spl_contact` varchar(20) NOT NULL,
  `spl_location` varchar(10) NOT NULL,
  PRIMARY KEY (`spl_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=45 ;

--
-- Dumping data for table `supplier`
--

INSERT INTO `supplier` (`spl_id`, `spl_fname`, `spl_lname`, `spl_email`, `spl_gender`, `spl_contact`, `spl_location`) VALUES
(1, 'RajNarayan', 'Yadav', 'rj@gmail.com', 'M', '9818319614', 'Kathmnadu'),
(2, 'Sushma', 'Yadav', 'sus123@gmail.com', 'F', '9818319615', 'Beldari'),
(5, 'Mukund', 'Yadav', 'muku@gmail.com', 'M', '6899007', 'Kritipur'),
(7, 'Sikila ', 'Devi', 'siki@gmail.com', 'F', '985667885', 'Dewapur'),
(8, 'Sikindra', 'Prajapati', 'siki@gmail.com', 'M', '976886457', 'Siraha'),
(13, 'Raja', 'Yadav', 'rj@gmail.com', 'M', '7996546777', 'Kathmandu'),
(14, 'Rahul', 'Yadav', 'rahul@gmail.com', 'M', '856884588', 'Pokhara'),
(24, 'Sikila ', 'Devi', 'sikila@gmail.com', 'F', '934783456', 'Kathmandu'),
(27, 'Puja', 'Yadav', 'puj@gmail.com', 'M', '46789984', 'Hetauda'),
(28, 'Sohan', 'Gupta', 'soh123@gmail.com', 'M', '9818319620', 'Kotwali'),
(29, 'Rajesh', 'Yadav', 'rajesh@gmail.com', 'M', '9818319614', 'Kathmandu'),
(30, 'Badri', 'Yadav', 'badri@gmail.com', 'M', '9818319620', 'Bara'),
(32, 'Aarti', 'Yadav', 'arti@gmail.com', 'F', '98183196125', 'Kalaiya'),
(33, 'Renu', 'basnet', 'renu@gmail.com', 'F', '9818319630', 'Lalitpur'),
(34, 'Pradip', 'Maharjan', 'p@gmail.com', 'M', '9818319635', 'Ktm'),
(35, 'Rajkumar', 'Shah', 'raj@gmail.com', 'M', '9817757282', 'Morang'),
(38, 'Sivaxya', 'Rai', 'sivaxya@gmail.com', 'M', '9861100162', 'kathmandu'),
(39, 'Raju', 'K.c', 'raju@gmail.com', 'M', '9818319645', 'Ktm'),
(40, 'Chaturanand', 'Yadav', 'chauture@gmail.com', 'M', '9805934133', 'Lahan'),
(42, 'Sundar', 'Shrestha', 'sundar@gmail.com', 'M', '9818732138', 'Dewapur'),
(43, 'err', 'fgfggf', 'dfdf@gmail.com', 'M', '3445', 'fdfd'),
(44, 'Nirajan', 'TImilsina', 'niraz@gmail.com', 'M', '9841670242', 'Banepa');

-- --------------------------------------------------------

--
-- Stand-in structure for view `supplierwithmilk`
--
CREATE TABLE IF NOT EXISTS `supplierwithmilk` (
`spl_id` int(11)
,`spl_fname` varchar(30)
,`spl_lname` varchar(30)
,`spl_gender` varchar(10)
,`spl_contact` varchar(20)
,`spl_location` varchar(10)
,`pd_name` varchar(30)
,`pd_impdate` varchar(30)
,`pd_quantity` varchar(30)
,`total_amount` double
);
-- --------------------------------------------------------

--
-- Structure for view `supplierwithmilk`
--
DROP TABLE IF EXISTS `supplierwithmilk`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `supplierwithmilk` AS select `supplier`.`spl_id` AS `spl_id`,`supplier`.`spl_fname` AS `spl_fname`,`supplier`.`spl_lname` AS `spl_lname`,`supplier`.`spl_gender` AS `spl_gender`,`supplier`.`spl_contact` AS `spl_contact`,`supplier`.`spl_location` AS `spl_location`,`addmilkwithsupplier`.`pd_name` AS `pd_name`,`addmilkwithsupplier`.`pd_impdate` AS `pd_impdate`,`addmilkwithsupplier`.`pd_quantity` AS `pd_quantity`,`addmilkwithsupplier`.`total_amount` AS `total_amount` from (`supplier` join `addmilkwithsupplier` on((`supplier`.`spl_id` = `addmilkwithsupplier`.`spl_id`)));

--
-- Constraints for dumped tables
--

--
-- Constraints for table `addmilkwithsupplier`
--
ALTER TABLE `addmilkwithsupplier`
  ADD CONSTRAINT `addmilkwithsupplier_ibfk_1` FOREIGN KEY (`spl_id`) REFERENCES `supplier` (`spl_id`) ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
