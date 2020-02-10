-- phpMyAdmin SQL Dump
-- version 4.6.6deb5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Feb 03, 2020 at 09:34 AM
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
-- Table structure for table `cms_block`
--

CREATE TABLE `cms_block` (
  `block_id` smallint(6) NOT NULL COMMENT 'Entity ID',
  `title` varchar(255) NOT NULL COMMENT 'Block Title',
  `identifier` varchar(255) NOT NULL COMMENT 'Block String Identifier',
  `content` mediumtext COMMENT 'Block Content',
  `creation_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Block Creation Time',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Block Modification Time',
  `is_active` smallint(6) NOT NULL DEFAULT '1' COMMENT 'Is Block Active'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='CMS Block Table';

--
-- Dumping data for table `cms_block`
--

INSERT INTO `cms_block` (`block_id`, `title`, `identifier`, `content`, `creation_time`, `update_time`, `is_active`) VALUES
(4, 'Resently viewed products', 'resently-viewed-products', '<p>{{widget type=\"Magento\\Catalog\\Block\\Widget\\RecentlyViewed\" uiComponent=\"widget_recently_viewed\" page_size=\"10\" show_attributes=\"name,image,price,learn_more\" show_buttons=\"add_to_cart,add_to_compare\" template=\"product/widget/viewed/grid.phtml\"}}</p>', '2019-12-16 23:49:22', '2019-12-27 08:21:04', 1),
(7, 'Header Links Container', 'header-links-container', '<div class=\"header-links-container\">\n<ul>\n<li class=\"header-contacts\"><a href=\"contact\">{{trans \"Contacts\"}}</a></li>\n<li class=\"shops-link\"><a href=\"#\">{{trans \"Shops\"}}</a></li>\n<li class=\"about-link\"><a href=\"#\">{{trans \"About Us\"}}</a></li>\n<li class=\"delivery-link\"><a href=\"#\">{{trans \"Delivery\"}}</a></li>\n<li class=\"paymant-link\"><a href=\"#\">{{trans \"Payment\"}}</a></li>\n<li class=\"bonus-program-link\"><a href=\"#\">{{trans \"Bonus program\"}}</a></li>\n</ul>\n</div>', '2019-12-21 17:04:18', '2020-01-14 20:55:30', 1),
(8, 'Header City', 'header-city', '<div class=\"header-city\"><label for=\"select\">{{trans \"Your city:\"}}</label><select id=\"select\" class=\"select-city\" name=\"select\">\n<option value=\"kyiv\">{{trans \"Kyiv\"}}</option>\n<option value=\"lviv\">{{trans \"Lviv\"}}</option>\n<option value=\"lutsk\">{{trans \"Lutsk\"}}</option>\n<option value=\"liubeshiv\">{{trans \"Liubeshiv\"}}</option>\n<option value=\"svalovychi\">{{trans \"Svalovychi\"}}</option>\n</select></div>', '2019-12-21 18:01:07', '2020-01-14 20:55:41', 1),
(9, 'Call Us', 'call-us', '<form action=\"\" class=\"call-us\">\n    <select name=\"select-phone\" id=\"select-phone\" class=\"select-phone\" >\n        <option value=\"0-800-15-30-85\">0-800-15-30-85</option>\n        <option value=\"0-800-14-30-85\">0-800-14-30-85</option>\n        <option value=\"0-800-13-30-85\">0-800-13-30-85</option>\n    </select>\n    <button class=\"select-phone-button\" type=\"submit\">{{trans \"Call Us\"}}</button>\n</form>', '2019-12-23 01:35:03', '2020-01-14 20:55:50', 1),
(10, 'footer content custome', 'footer-content-custome', '<div class=\"footer-links-content\">\n<div class=\"links-wrapper\">\n<div class=\"catalog\">\n<h3>{{trans \"Catalog\"}}</h3>\n<ul>\n<li><a href=\"#\">{{trans \"Electronic\"}}</a></li>\n<li><a href=\"#\">{{trans \"Sound and video\"}}</a></li>\n<li><a href=\"#\">{{trans \"Spare parts and consumables\"}}</a></li>\n<li><a href=\"#\">{{trans \"Light\"}}</a></li>\n<li><a href=\"#\">{{trans \"Interior\"}}</a></li>\n<li><a href=\"#\">{{trans \"Exterior\"}}</a></li>\n<li><a href=\"#\">{{trans \"Wheels\"}}</a></li>\n</ul>\n<ul>\n<li><a href=\"#\">{{trans \"Luggage and mounts\"}}</a></li>\n<li><a href=\"#\">{{trans \"Auto-chemistry\"}}</a></li>\n<li><a href=\"#\">{{trans \"Technical assistance\"}}</a></li>\n<li><a href=\"#\">{{trans \"Tool\"}}</a></li>\n<li><a href=\"#\">{{trans \"Tourism\"}}</a></li>\n<li><a href=\"#\">{{trans \"4 * 4 jeep\"}}</a></li>\n<li><a href=\"#\">{{trans \"Moto\"}}</a></li>\n</ul>\n</div>\n<div class=\"company\">\n<h3>{{trans \"Company\"}}</h3>\n<ul>\n<li><a href=\"#\">{{trans \"About us\"}}</a></li>\n<li><a href=\"#\">{{trans \"Contacts\"}}</a></li>\n<li><a href=\"#\">{{trans \"Shops\"}}</a></li>\n<li><a href=\"#\">{{trans \"Partners\"}}</a></li>\n<li><a href=\"#\">{{trans \"Wholesale buyers\"}}</a></li>\n</ul>\n</div>\n<div class=\"for_buyers\">\n<h3>{{trans \"For buyers\"}}</h3>\n<ul>\n<li><a href=\"#\">{{trans \"Delivery\"}}</a></li>\n<li><a href=\"#\">{{trans \"Payment\"}}</a></li>\n<li><a href=\"#\">{{trans \"Guarantee\"}}</a></li>\n<li><a href=\"#\">{{trans \"Credit\"}}</a></li>\n<li><a href=\"#\">{{trans \"Bonus program\"}}</a></li>\n<li><a href=\"#\">{{trans \"Actions\"}}</a></li>\n<li><a href=\"#\">{{trans \"Site map\"}}</a></li>\n</ul>\n</div>\n<div class=\"info\">\n<h3>{{trans \"Information\"}}</h3>\n<ul>\n<li><a href=\"#\">{{trans \"How to choise\"}}</a></li>\n<li><a href=\"compare-tests\">{{trans \"Сompare tests\"}}</a></li>\n<li><a href=\"#\">{{trans \"News\"}}</a></li>\n<li><a href=\"#\">{{trans \"Frequently asked questions\"}}</a></li>\n</ul>\n</div>\n</div>\n<div class=\"copyright-wrapper\">{{block class=\"Magento\\Theme\\Block\\Html\\Footer\" block_id=\"footer-content-custome\" template=\"Magento_Theme::html/copyright.phtml\"}} <span class=\"created_in\">{{trans \"Created by\"}} <a href=\"#\">Турум-бурум</a> </span></div>\n</div>\n<div class=\"footer-contacts\">\n<div class=\"phone\"><a href=\"tel:+0800301585\">0 800 30-15-85</a>\n<p>{{trans \"Free of home phones and mobile phones of Ukraine\"}}</p>\n</div>\n<div class=\"social-links\">\n<p>{{trans \"Folow us in social\"}}</p>\n<ul>\n                <li><a href=\"#\" class=\"facebook\"></a></li>\n                <li><a href=\"#\" class=\"google\"></a></li>\n                <li><a href=\"#\" class=\"twitter\"></a></li>\n                <li><a href=\"#\" class=\"youtube\"></a></li>\n                <li><a href=\"#\" class=\"vk\"></a></li>\n                <li><a href=\"#\" class=\"instagram\"></a></li>\n</ul>\n</div>\n</div>', '2019-12-25 11:48:39', '2020-01-14 20:56:01', 1),
(11, 'Share this', 'share-this', '<span>{{trans \"Share this\"}}</span>\r\n    <div class=\"social_wrapper\">\r\n        <div class=\"facebook\">\r\n            <a class= \"facebook-likes\" href=\"\">Like</a>\r\n            <a class= \"facebook-shares\" href=\"\">{{trans \"Share\"}}</a>\r\n            <span class= \"facebook-shares-qty\"><span>231k</span></span>\r\n        </div>\r\n        <div class=\"twitter\">\r\n            <a class= \"twitter-likes\" href=\"\">Tweet</a>\r\n            <span class= \"twitter-qty\"><span>93</span></span>\r\n        </div>\r\n        <div class=\"pinterrest\">\r\n            <a class= \"pinterrest-likes\" href=\"\">Pin it</a>\r\n            <span class= \"pinterrest-qty\"><span>65k+</span></span>\r\n        </div>\r\n    </div>', '2020-01-27 21:02:41', '2020-02-03 06:59:08', 1),
(12, 'Lookbook', 'lookbook', '<h1>Lookbook page</h1>', '2020-01-28 13:02:43', '2020-01-28 13:02:43', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cms_block`
--
ALTER TABLE `cms_block`
  ADD PRIMARY KEY (`block_id`);
ALTER TABLE `cms_block` ADD FULLTEXT KEY `CMS_BLOCK_TITLE_IDENTIFIER_CONTENT` (`title`,`identifier`,`content`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cms_block`
--
ALTER TABLE `cms_block`
  MODIFY `block_id` smallint(6) NOT NULL AUTO_INCREMENT COMMENT 'Entity ID', AUTO_INCREMENT=13;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
