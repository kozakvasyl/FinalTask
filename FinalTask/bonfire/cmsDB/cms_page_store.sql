-- phpMyAdmin SQL Dump
-- version 4.6.6deb5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Feb 03, 2020 at 09:37 AM
-- Server version: 5.7.29-0ubuntu0.18.04.1
-- PHP Version: 7.1.33-4+ubuntu18.04.1+deb.sury.org+1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `magento2`
--

-- --------------------------------------------------------

--
-- Table structure for table `cms_page_store`
--

CREATE TABLE `cms_page_store` (
  `page_id` smallint(6) NOT NULL COMMENT 'Entity ID',
  `store_id` smallint(5) UNSIGNED NOT NULL COMMENT 'Store ID'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='CMS Page To Store Linkage Table';

--
-- Dumping data for table `cms_page_store`
--

INSERT INTO `cms_page_store` (`page_id`, `store_id`) VALUES
(1, 0),
(2, 0),
(3, 0),
(4, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cms_page_store`
--
ALTER TABLE `cms_page_store`
  ADD PRIMARY KEY (`page_id`,`store_id`),
  ADD KEY `CMS_PAGE_STORE_STORE_ID` (`store_id`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `cms_page_store`
--
ALTER TABLE `cms_page_store`
  ADD CONSTRAINT `CMS_PAGE_STORE_PAGE_ID_CMS_PAGE_PAGE_ID` FOREIGN KEY (`page_id`) REFERENCES `cms_page` (`page_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `CMS_PAGE_STORE_STORE_ID_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
