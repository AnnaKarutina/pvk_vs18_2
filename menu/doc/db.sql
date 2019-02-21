-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Feb 21, 2019 at 11:03 AM
-- Server version: 5.6.41
-- PHP Version: 7.2.7

SET FOREIGN_KEY_CHECKS=0;
SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";

--
-- Database: `anna_oop`
--
CREATE DATABASE IF NOT EXISTS `anna_oop` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `anna_oop`;

-- --------------------------------------------------------

--
-- Table structure for table `content`
--

DROP TABLE IF EXISTS `content`;
CREATE TABLE IF NOT EXISTS `content` (
  `content_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `content` text CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `clean_content` text CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `title` varchar(255) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `parent_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `is_hidden` tinyint(1) NOT NULL DEFAULT '0',
  `show_in_menu` tinyint(1) NOT NULL DEFAULT '0',
  `sort` int(10) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created` datetime NOT NULL,
  `is_first_page` tinyint(1) NOT NULL DEFAULT '0',
  `lang_id` varchar(2) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  PRIMARY KEY (`content_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `dishes`
--

DROP TABLE IF EXISTS `dishes`;
CREATE TABLE IF NOT EXISTS `dishes` (
  `dish_id` int(100) UNSIGNED NOT NULL AUTO_INCREMENT,
  `dish_name` varchar(255) COLLATE latin7_estonian_cs NOT NULL,
  `dish_description` varchar(255) COLLATE latin7_estonian_cs NOT NULL,
  `dish_price` float(4,2) NOT NULL,
  `type_id` int(100) UNSIGNED NOT NULL,
  PRIMARY KEY (`dish_id`),
  KEY `type_id` (`type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin7 COLLATE=latin7_estonian_cs;

--
-- Dumping data for table `dishes`
--

INSERT INTO `dishes` (`dish_id`, `dish_name`, `dish_description`, `dish_price`, `type_id`) VALUES
(2, 'Sealihapada ploomide ja aprikoosiga', 'sealihapada, lisand, salat, leib', 2.65, 1),
(3, 'Praetud kanakints', 'praetud kana, lisand, salat, leib', 2.50, 1),
(4, 'Hakklihakaste', 'hakklihakaste, lisand, salat, leib', 2.45, 1),
(5, 'Kartul, kaste, salat, leib', '', 1.38, 1),
(6, 'Hakklihakaste 1/2', 'hakklihakaste, lisand, salat, leib', 1.30, 1),
(7, 'Rassolnik', 'supp, hapukoor, leib', 1.10, 2),
(8, 'Rosinakisell vahukoorega', '', 1.05, 3),
(9, 'Mahl', '', 0.60, 4),
(12, 'Morss', '', 0.25, 4),
(13, 'Piim', '', 0.30, 4),
(14, 'Keefir', '', 0.39, 4);

-- --------------------------------------------------------

--
-- Table structure for table `dish_availability`
--

DROP TABLE IF EXISTS `dish_availability`;
CREATE TABLE IF NOT EXISTS `dish_availability` (
  `dish_id` int(100) UNSIGNED NOT NULL,
  `dish_date` date NOT NULL,
  KEY `dish_id` (`dish_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dish_availability`
--

INSERT INTO `dish_availability` (`dish_id`, `dish_date`) VALUES
(2, '2019-02-19'),
(3, '2019-02-20');

-- --------------------------------------------------------

--
-- Table structure for table `dish_types`
--

DROP TABLE IF EXISTS `dish_types`;
CREATE TABLE IF NOT EXISTS `dish_types` (
  `type_id` int(100) UNSIGNED NOT NULL AUTO_INCREMENT,
  `type_name` varchar(255) NOT NULL,
  `type_icon` varchar(255) NOT NULL,
  PRIMARY KEY (`type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dish_types`
--

INSERT INTO `dish_types` (`type_id`, `type_name`, `type_icon`) VALUES
(1, 'praed', 'fa-utensils'),
(2, 'supid', 'fa-utensil-spoon'),
(3, 'magustoidud', 'fa-cookie-bite'),
(4, 'joogid', 'fa-glass-whiskey');

-- --------------------------------------------------------

--
-- Table structure for table `session`
--

DROP TABLE IF EXISTS `session`;
CREATE TABLE IF NOT EXISTS `session` (
  `sid` varchar(32) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `user_data` text CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `svars` text CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `created` datetime NOT NULL,
  `changed` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `login_ip` varchar(255) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  UNIQUE KEY `sid` (`sid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `session`
--

INSERT INTO `session` (`sid`, `user_id`, `user_data`, `svars`, `created`, `changed`, `login_ip`) VALUES
('ecd6384e34b9767b31ae126a08dfb86c', 0, 'a:3:{s:7:\"user_id\";i:0;s:7:\"role_id\";i:0;s:8:\"username\";s:9:\"Anonymous\";}', '', '2019-02-21 10:59:45', '2019-02-21 08:59:45', '193.40.62.14'),
('c940dff403ff999f8e355c22ff32fc58', 0, 'a:3:{s:7:\"user_id\";i:0;s:7:\"role_id\";i:0;s:8:\"username\";s:9:\"Anonymous\";}', 'a:0:{}', '2019-02-21 10:59:44', '2019-02-21 08:59:44', '193.40.62.14'),
('ab0044aed29a4e3ab48c647e96df5f7e', 0, 'a:3:{s:7:\"user_id\";i:0;s:7:\"role_id\";i:0;s:8:\"username\";s:9:\"Anonymous\";}', '', '2019-02-21 10:59:13', '2019-02-21 08:59:13', '193.40.62.14'),
('3bf213da9e180e6af18a3ad4ccfd829c', 0, 'a:3:{s:7:\"user_id\";i:0;s:7:\"role_id\";i:0;s:8:\"username\";s:9:\"Anonymous\";}', '', '2019-02-21 10:59:03', '2019-02-21 08:59:03', '193.40.62.14'),
('91d9c9cf894f29529c131279a1ed1ac0', 0, 'a:3:{s:7:\"user_id\";i:0;s:7:\"role_id\";i:0;s:8:\"username\";s:9:\"Anonymous\";}', '', '2019-02-21 10:59:00', '2019-02-21 08:59:00', '193.40.62.14'),
('dc70ff4da6001cd16da78d660cf06767', 0, 'a:3:{s:7:\"user_id\";i:0;s:7:\"role_id\";i:0;s:8:\"username\";s:9:\"Anonymous\";}', '', '2019-02-21 10:55:53', '2019-02-21 08:55:53', '193.40.62.14'),
('07ee8b31ce5e2764b3b8864231b69139', 0, 'a:3:{s:7:\"user_id\";i:0;s:7:\"role_id\";i:0;s:8:\"username\";s:9:\"Anonymous\";}', 'a:0:{}', '2019-02-21 10:55:53', '2019-02-21 08:55:53', '193.40.62.14'),
('0597c8c9cf44c1cac95638a47d46ec82', 0, 'a:3:{s:7:\"user_id\";i:0;s:7:\"role_id\";i:0;s:8:\"username\";s:9:\"Anonymous\";}', '', '2019-02-21 10:53:32', '2019-02-21 08:53:32', '193.40.62.14'),
('df847c744defb2e446495e2dee219ffe', 0, 'a:3:{s:7:\"user_id\";i:0;s:7:\"role_id\";i:0;s:8:\"username\";s:9:\"Anonymous\";}', 'a:0:{}', '2019-02-21 10:53:32', '2019-02-21 08:53:32', '193.40.62.14'),
('e8fd0c8180cae4524e3361d6211aa25c', 0, 'a:3:{s:7:\"user_id\";i:0;s:7:\"role_id\";i:0;s:8:\"username\";s:9:\"Anonymous\";}', '', '2019-02-21 10:53:23', '2019-02-21 08:53:23', '193.40.62.14'),
('d29c6e92f0138fe0422eebf6ee987017', 0, 'a:3:{s:7:\"user_id\";i:0;s:7:\"role_id\";i:0;s:8:\"username\";s:9:\"Anonymous\";}', 'a:0:{}', '2019-02-21 10:53:23', '2019-02-21 08:53:23', '193.40.62.14'),
('8fb67ebbe15866bf76365b9551eec089', 0, 'a:3:{s:7:\"user_id\";i:0;s:7:\"role_id\";i:0;s:8:\"username\";s:9:\"Anonymous\";}', 'a:0:{}', '2019-02-21 10:52:57', '2019-02-21 08:52:57', '193.40.62.14'),
('4fd4819b4c543ada98880f01faabda97', 0, 'a:3:{s:7:\"user_id\";i:0;s:7:\"role_id\";i:0;s:8:\"username\";s:9:\"Anonymous\";}', 'a:0:{}', '2019-02-21 10:52:55', '2019-02-21 08:52:55', '193.40.62.14'),
('7fd205265e7ae0024d4cf3e8cd443375', 0, 'a:3:{s:7:\"user_id\";i:0;s:7:\"role_id\";i:0;s:8:\"username\";s:9:\"Anonymous\";}', 'a:0:{}', '2019-02-21 10:52:28', '2019-02-21 08:52:28', '193.40.62.14'),
('c12328af4a3f522157382c28f23bf5f7', 0, 'a:3:{s:7:\"user_id\";i:0;s:7:\"role_id\";i:0;s:8:\"username\";s:9:\"Anonymous\";}', 'a:0:{}', '2019-02-21 10:51:32', '2019-02-21 08:51:32', '193.40.62.14'),
('24098f87c13a9a178efdae9b0518334d', 0, 'a:3:{s:7:\"user_id\";i:0;s:7:\"role_id\";i:0;s:8:\"username\";s:9:\"Anonymous\";}', 'a:0:{}', '2019-02-21 10:51:29', '2019-02-21 08:51:29', '193.40.62.14'),
('a980ea46b1158e74a367e82eea2396bd', 0, 'a:3:{s:7:\"user_id\";i:0;s:7:\"role_id\";i:0;s:8:\"username\";s:9:\"Anonymous\";}', '', '2019-02-21 10:51:06', '2019-02-21 08:51:06', '193.40.62.14'),
('01a1f8fc44ca8de9ecbac77c4390a1c5', 0, 'a:3:{s:7:\"user_id\";i:0;s:7:\"role_id\";i:0;s:8:\"username\";s:9:\"Anonymous\";}', '', '2019-02-21 10:51:03', '2019-02-21 08:51:03', '193.40.62.14'),
('320bdaebd3686d0488084c22a869be10', 0, 'a:3:{s:7:\"user_id\";i:0;s:7:\"role_id\";i:0;s:8:\"username\";s:9:\"Anonymous\";}', '', '2019-02-21 10:50:34', '2019-02-21 08:50:34', '193.40.62.14'),
('5b031c5dbcdd7cea5da59c07f82f834c', 0, 'a:3:{s:7:\"user_id\";i:0;s:7:\"role_id\";i:0;s:8:\"username\";s:9:\"Anonymous\";}', 'a:0:{}', '2019-02-21 10:49:01', '2019-02-21 08:49:01', '193.40.62.14'),
('89ee890613204af60b2be9230a2412b4', 0, 'a:3:{s:7:\"user_id\";i:0;s:7:\"role_id\";i:0;s:8:\"username\";s:9:\"Anonymous\";}', 'a:0:{}', '2019-02-21 10:48:59', '2019-02-21 08:48:59', '193.40.62.14'),
('0293721ff4eeaae3b7052eff7328614d', 0, 'a:3:{s:7:\"user_id\";i:0;s:7:\"role_id\";i:0;s:8:\"username\";s:9:\"Anonymous\";}', 'a:0:{}', '2019-02-21 10:48:50', '2019-02-21 08:48:50', '193.40.62.14'),
('bbe093b8b20940e0e793166b48e6e1cc', 0, 'a:3:{s:7:\"user_id\";i:0;s:7:\"role_id\";i:0;s:8:\"username\";s:9:\"Anonymous\";}', '', '2019-02-21 10:45:49', '2019-02-21 08:45:49', '193.40.62.14'),
('26db1c85c15dfe0c9aa868ac7b04b36d', 0, 'a:3:{s:7:\"user_id\";i:0;s:7:\"role_id\";i:0;s:8:\"username\";s:9:\"Anonymous\";}', '', '2019-02-21 10:46:25', '2019-02-21 08:46:25', '193.40.62.14'),
('263600a28959a39c3d71015f47007acb', 0, 'a:3:{s:7:\"user_id\";i:0;s:7:\"role_id\";i:0;s:8:\"username\";s:9:\"Anonymous\";}', '', '2019-02-21 10:46:56', '2019-02-21 08:46:56', '193.40.62.14'),
('e210631e6979ef2971c9023c93342de4', 0, 'a:3:{s:7:\"user_id\";i:0;s:7:\"role_id\";i:0;s:8:\"username\";s:9:\"Anonymous\";}', 'a:0:{}', '2019-02-21 10:48:41', '2019-02-21 08:48:41', '193.40.62.14'),
('ba602deb3531d7f3297264b53b4b873b', 0, 'a:3:{s:7:\"user_id\";i:0;s:7:\"role_id\";i:0;s:8:\"username\";s:9:\"Anonymous\";}', '', '2019-02-21 10:36:47', '2019-02-21 08:36:47', '193.40.62.14'),
('27b003353cb2b9796bbc95135cd17089', 0, 'a:3:{s:7:\"user_id\";i:0;s:7:\"role_id\";i:0;s:8:\"username\";s:9:\"Anonymous\";}', '', '2019-02-21 10:37:10', '2019-02-21 08:37:10', '193.40.62.14'),
('f63c0ab571116c355710ef982bfcc85e', 0, 'a:3:{s:7:\"user_id\";i:0;s:7:\"role_id\";i:0;s:8:\"username\";s:9:\"Anonymous\";}', '', '2019-02-21 10:43:35', '2019-02-21 08:43:35', '193.40.62.14'),
('519ad55928cf97ab79b24cc99a41561e', 0, 'a:3:{s:7:\"user_id\";i:0;s:7:\"role_id\";i:0;s:8:\"username\";s:9:\"Anonymous\";}', '', '2019-02-21 10:44:12', '2019-02-21 08:44:12', '193.40.62.14'),
('de524c8dd9aa1f06f2b727aa57cae271', 0, 'a:3:{s:7:\"user_id\";i:0;s:7:\"role_id\";i:0;s:8:\"username\";s:9:\"Anonymous\";}', '', '2019-02-21 10:50:31', '2019-02-21 08:50:31', '193.40.62.14'),
('843f8f094b864da1f7fa0574b74ce9b5', 0, 'a:3:{s:7:\"user_id\";i:0;s:7:\"role_id\";i:0;s:8:\"username\";s:9:\"Anonymous\";}', 'a:0:{}', '2019-02-21 10:45:49', '2019-02-21 08:45:49', '193.40.62.14'),
('e8cfd383af397109fc9c3ea08aff8004', 0, 'a:3:{s:7:\"user_id\";i:0;s:7:\"role_id\";i:0;s:8:\"username\";s:9:\"Anonymous\";}', 'a:0:{}', '2019-02-21 10:52:27', '2019-02-21 08:52:27', '193.40.62.14');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `user_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `username` varchar(255) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `password` varchar(255) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `first_name` varchar(255) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `last_name` varchar(255) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `email` varchar(255) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '0',
  `role_id` tinyint(1) NOT NULL DEFAULT '0',
  `created` datetime NOT NULL,
  `changed` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `dishes`
--
ALTER TABLE `dishes`
  ADD CONSTRAINT `dishes_ibfk_1` FOREIGN KEY (`type_id`) REFERENCES `dish_types` (`type_id`);

--
-- Constraints for table `dish_availability`
--
ALTER TABLE `dish_availability`
  ADD CONSTRAINT `dish_availability_ibfk_1` FOREIGN KEY (`dish_id`) REFERENCES `dishes` (`dish_id`);
SET FOREIGN_KEY_CHECKS=1;
COMMIT;
