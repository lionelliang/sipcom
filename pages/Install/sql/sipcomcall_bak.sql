-- phpMyAdmin SQL Dump
-- version 3.3.7deb7
-- http://www.phpmyadmin.net
--
-- Serveur: localhost
-- Généré le : Jeu 03 Avril 2014 à 16:18
-- Version du serveur: 5.1.73
-- Version de PHP: 5.3.3-7+squeeze19

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données: `sipcomcall`
--
CREATE DATABASE `sipcomcall` DEFAULT CHARACTER SET latin1 COLLATE utf8_unicode_ci;
USE `sipcomcall`;

-- --------------------------------------------------------

--
-- Structure de la table `bills`
--

CREATE TABLE IF NOT EXISTS `bills` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `amount` float(10,0) NOT NULL,
  `paydate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  `ispaid` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Contenu de la table `bills`
--

INSERT INTO `bills` (`id`, `username`, `amount`, `paydate`, `ispaid`) VALUES
(1, '0123456781', 50, '2014-03-27 09:52:08', 0),
(2, '0123456780', 86, '2014-03-27 09:52:08', 1),
(5, '0123456789', 35, '0000-00-00 00:00:00', 0);

-- --------------------------------------------------------

--
-- Structure de la table `cdr`
--

CREATE TABLE IF NOT EXISTS `cdr` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `agi_callerid` int(11) NOT NULL,
  `agi_calleridname` varchar(80) NOT NULL,
  `agi_request` varchar(100) NOT NULL,
  `agi_channel` varchar(80) NOT NULL,
  `agi_language` varchar(50) NOT NULL,
  `agi_type` varchar(50) NOT NULL,
  `agi_context` varchar(50) NOT NULL,
  `agi_extension` varchar(50) NOT NULL,
  `agi_priority` varchar(50) NOT NULL,
  `calldate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `dst` varchar(80) NOT NULL DEFAULT '',
  `starttime` datetime NOT NULL,
  `endtime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `duration` int(11) NOT NULL DEFAULT '0',
  `disposition` varchar(45) NOT NULL DEFAULT '',
  `agi_accountcode` varchar(80) NOT NULL DEFAULT '',
  `agi_uniqueid` varchar(80) NOT NULL DEFAULT '',
  `bridgestart` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `bridgeend` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `uniqueid` varchar(80) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `calldate` (`calldate`),
  KEY `dst` (`dst`),
  KEY `accountcode` (`agi_accountcode`),
  KEY `calldate_2` (`calldate`),
  KEY `dst_2` (`dst`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=172 ;

--
-- Contenu de la table `cdr`
--

INSERT INTO `cdr` (`id`, `agi_callerid`, `agi_calleridname`, `agi_request`, `agi_channel`, `agi_language`, `agi_type`, `agi_context`, `agi_extension`, `agi_priority`, `calldate`, `dst`, `starttime`, `endtime`, `duration`, `disposition`, `agi_accountcode`, `agi_uniqueid`, `bridgestart`, `bridgeend`, `uniqueid`) VALUES
(74, 123456780, '0123456780', 'Sipmobile/MobileCall.php', 'SIP/0123456780-00000003', 'fr', 'SIP', 'sipint', '3339', '3', '2014-03-25 15:55:31', '', '2014-03-25 15:55:31', '2014-03-25 15:55:34', 3, '', '', 'agi_uniqueid', '0000-00-00 00:00:00', '0000-00-00 00:00:00', ''),
(73, 123456780, '0123456780', 'Sipmobile/MobileCall.php', 'SIP/0123456780-00000000', 'fr', 'SIP', 'sipint', '3339', '3', '2014-03-25 15:50:09', '', '2014-03-25 15:50:09', '2014-03-25 15:50:11', 2, '', '', 'agi_uniqueid', '0000-00-00 00:00:00', '0000-00-00 00:00:00', ''),
(72, 123456780, '0123456780', 'Sipmobile/MobileCall.php', 'SIP/0123456780-00000002', 'fr', 'SIP', 'sipint', '3339', '3', '2014-03-25 15:39:40', '', '2014-03-25 15:39:40', '2014-03-25 15:39:43', 3, '', '', 'agi_uniqueid', '0000-00-00 00:00:00', '0000-00-00 00:00:00', ''),
(71, 123456781, '0123456781', 'Sipmobile/MobileCall.php', 'SIP/0123456781-00000000', 'fr', 'SIP', 'sipint', '3339', '3', '2014-03-25 15:28:45', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', 'agi_uniqueid', '0000-00-00 00:00:00', '0000-00-00 00:00:00', ''),
(70, 123456781, '0123456781', 'Sipmobile/MobileCall.php', 'SIP/0123456781-00000003', 'fr', 'SIP', 'sipint', '3339', '3', '2014-03-25 15:23:26', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', 'agi_uniqueid', '0000-00-00 00:00:00', '0000-00-00 00:00:00', ''),
(69, 123456780, '0123456780', 'Sipmobile/MobileCall.php', 'SIP/0123456780-00000002', 'fr', 'SIP', 'sipint', '3339', '3', '2014-03-25 15:02:29', '', '2014-03-25 15:02:29', '2014-03-25 15:02:32', 3, '', '', 'agi_uniqueid', '0000-00-00 00:00:00', '0000-00-00 00:00:00', ''),
(68, 123456781, '0123456781', 'Sipmobile/MobileCall.php', 'SIP/0123456781-00000000', 'fr', 'SIP', 'sipint', '3339', '3', '2014-03-25 15:02:01', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', 'agi_uniqueid', '0000-00-00 00:00:00', '0000-00-00 00:00:00', ''),
(67, 123456780, '0123456780', 'Sipmobile/MobileCall.php', 'SIP/0123456780-00000010', 'fr', 'SIP', 'sipint', '3339', '3', '2014-03-25 14:32:14', '', '2014-03-25 14:32:14', '2014-03-25 14:32:17', 3, '', '', 'agi_uniqueid', '0000-00-00 00:00:00', '0000-00-00 00:00:00', ''),
(66, 123456780, '0123456780', 'Sipmobile/MobileCall.php', 'SIP/0123456780-0000000d', 'fr', 'SIP', 'sipint', '3339', '3', '2014-03-25 14:30:53', '', '2014-03-25 14:30:53', '2014-03-25 14:30:56', 3, '', '', 'agi_uniqueid', '0000-00-00 00:00:00', '0000-00-00 00:00:00', ''),
(65, 123456780, '0123456780', 'Sipmobile/MobileCall.php', 'SIP/0123456780-0000000a', 'fr', 'SIP', 'sipint', '3339', '3', '2014-03-25 14:30:30', '', '2014-03-25 14:30:30', '2014-03-25 14:30:33', 3, '', '', 'agi_uniqueid', '0000-00-00 00:00:00', '0000-00-00 00:00:00', ''),
(64, 123456780, '0123456780', 'Sipmobile/MobileCall.php', 'SIP/0123456780-00000007', 'fr', 'SIP', 'sipint', '3339', '3', '2014-03-25 14:29:27', '', '2014-03-25 14:29:27', '2014-03-25 14:29:30', 3, '', '', 'agi_uniqueid', '0000-00-00 00:00:00', '0000-00-00 00:00:00', ''),
(63, 123456780, '0123456780', 'Sipmobile/MobileCall.php', 'SIP/0123456780-00000004', 'fr', 'SIP', 'sipint', '3339', '3', '2014-03-25 14:28:11', '', '2014-03-25 14:28:11', '2014-03-25 14:28:14', 3, '', '', 'agi_uniqueid', '0000-00-00 00:00:00', '0000-00-00 00:00:00', ''),
(62, 123456781, '0123456781', 'Sipmobile/MobileCall.php', 'SIP/0123456781-00000002', 'fr', 'SIP', 'sipint', '3339', '3', '2014-03-25 12:36:35', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', 'agi_uniqueid', '0000-00-00 00:00:00', '0000-00-00 00:00:00', ''),
(56, 123456781, '0123456781', 'Sipmobile/MobileCall.php', 'SIP/0123456781-00000007', 'fr', 'SIP', 'sipint', '3339', '3', '2014-03-25 10:33:11', '', '2014-03-25 10:33:11', '2014-03-25 10:34:14', 63, '', '', 'agi_uniqueid', '0000-00-00 00:00:00', '0000-00-00 00:00:00', ''),
(57, 123456781, '0123456781', 'Sipmobile/MobileCall.php', 'SIP/0123456781-00000009', 'fr', 'SIP', 'sipint', '3339', '3', '2014-03-25 10:35:25', '', '2014-03-25 10:35:25', '2014-03-25 10:35:43', 18, '', '', 'agi_uniqueid', '0000-00-00 00:00:00', '0000-00-00 00:00:00', ''),
(58, 123456781, '0123456781', 'Sipmobile/MobileCall.php', 'SIP/0123456781-0000000b', 'fr', 'SIP', 'sipint', '3339', '3', '2014-03-25 10:36:12', '', '2014-03-25 10:36:12', '2014-03-25 10:36:30', 18, '', '', 'agi_uniqueid', '0000-00-00 00:00:00', '0000-00-00 00:00:00', ''),
(59, 123456781, '0123456781', 'Sipmobile/MobileCall.php', 'SIP/0123456781-0000000d', 'fr', 'SIP', 'sipint', '3339', '3', '2014-03-25 10:38:04', '', '2014-03-25 10:38:04', '2014-03-25 10:38:25', 21, '', '', 'agi_uniqueid', '0000-00-00 00:00:00', '0000-00-00 00:00:00', ''),
(60, 123456781, '0123456781', 'Sipmobile/MobileCall.php', 'SIP/0123456781-0000000f', 'fr', 'SIP', 'sipint', '3339', '3', '2014-03-25 10:38:43', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', 'agi_uniqueid', '0000-00-00 00:00:00', '0000-00-00 00:00:00', ''),
(61, 123456781, '0123456781', 'Sipmobile/MobileCall.php', 'SIP/0123456781-00000000', 'fr', 'SIP', 'sipint', '3339', '3', '2014-03-25 10:41:01', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', 'agi_uniqueid', '0000-00-00 00:00:00', '0000-00-00 00:00:00', ''),
(75, 123456780, '0123456780', 'Sipmobile/MobileCall.php', 'SIP/0123456780-00000006', 'fr', 'SIP', 'sipint', '3339', '3', '2014-03-25 16:18:02', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', 'agi_uniqueid', '2014-03-25 16:18:02', '0000-00-00 00:00:00', ''),
(76, 123456781, '0123456781', 'Sipmobile/MobileCall.php', 'SIP/0123456781-00000008', 'fr', 'SIP', 'sipint', '3339', '3', '2014-03-25 16:20:51', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', 'agi_uniqueid', '2014-03-25 16:20:51', '0000-00-00 00:00:00', ''),
(77, 123456781, '0123456781', 'Sipmobile/MobileCall.php', 'SIP/0123456781-00000009', 'fr', 'SIP', 'sipint', '3339', '3', '2014-03-25 16:21:05', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', 'agi_uniqueid', '2014-03-25 16:21:05', '0000-00-00 00:00:00', ''),
(78, 123456781, '0123456781', 'Sipmobile/MobileCall.php', 'SIP/0123456781-0000000b', 'fr', 'SIP', 'sipint', '3339', '3', '2014-03-25 16:24:25', '', '2014-03-25 16:24:25', '2014-03-25 16:24:53', 28, '', '', 'agi_uniqueid', '2014-03-25 16:24:53', '0000-00-00 00:00:00', ''),
(79, 123456781, '0123456781', 'Sipmobile/MobileCall.php', 'SIP/0123456781-0000000d', 'fr', 'SIP', 'sipint', '3339', '3', '2014-03-25 16:25:05', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', 'agi_uniqueid', '2014-03-25 16:25:05', '0000-00-00 00:00:00', ''),
(80, 123456781, '0123456781', 'Sipmobile/MobileCall.php', 'SIP/0123456781-0000000f', 'fr', 'SIP', 'sipint', '3339', '3', '2014-03-25 16:49:52', '', '2014-03-25 16:49:52', '2014-03-25 16:50:34', 42, '', '', '1395762591.15', '0000-00-00 00:00:00', '0000-00-00 00:00:00', ''),
(81, 123456781, '0123456781', 'Sipmobile/MobileCall.php', 'SIP/0123456781-00000011', 'fr', 'SIP', 'sipint', '3339', '3', '2014-03-25 17:13:08', '', '2014-03-25 17:13:08', '2014-03-25 17:14:36', 88, '', '', '1395763987.17', '2014-03-25 17:13:58', '2014-03-25 17:14:35', ''),
(82, 123456781, '0123456781', 'Sipmobile/MobileCall.php', 'SIP/0123456781-00000013', 'fr', 'SIP', 'sipint', '3339', '3', '2014-03-25 17:18:24', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '1395764303.19', '2014-03-25 17:18:24', '0000-00-00 00:00:00', ''),
(83, 123456781, '0123456781', 'Sipmobile/MobileCall.php', 'SIP/0123456781-00000014', 'fr', 'SIP', 'sipint', '3339', '3', '2014-03-25 17:18:55', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '1395764334.20', '2014-03-25 17:18:55', '0000-00-00 00:00:00', ''),
(84, 123456781, '0123456781', 'Sipmobile/MobileCall.php', 'SIP/0123456781-00000016', 'fr', 'SIP', 'sipint', '3339', '3', '2014-03-25 17:21:46', '', '2014-03-25 17:21:46', '2014-03-25 17:22:08', 22, '', '', '1395764505.22', '2014-03-25 17:22:03', '2014-03-25 17:22:07', ''),
(85, 123456781, '0123456781', 'Sipmobile/MobileCall.php', 'SIP/0123456781-00000018', 'fr', 'SIP', 'sipint', '3339', '3', '2014-03-25 17:26:29', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '1395764788.24', '2014-03-25 17:26:29', '0000-00-00 00:00:00', ''),
(86, 123456781, '0123456781', 'Sipmobile/MobileCall.php', 'SIP/0123456781-0000001d', 'fr', 'SIP', 'sipint', '3339', '3', '2014-03-25 17:51:35', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '1395766294.29', '2014-03-25 17:51:35', '0000-00-00 00:00:00', ''),
(87, 123456781, '0123456781', 'Sipmobile/MobileCall.php', 'SIP/0123456781-0000001e', 'fr', 'SIP', 'sipint', '3339', '3', '2014-03-25 17:51:45', '', '2014-03-25 17:51:45', '2014-03-25 17:52:23', 38, '', '', '1395766304.30', '2014-03-25 17:52:11', '2014-03-25 17:52:22', ''),
(88, 123456781, '0123456781', 'Sipmobile/MobileCall.php', 'SIP/0123456781-00000000', 'fr', 'SIP', 'sipint', '3339', '3', '2014-03-26 09:34:39', '', '2014-03-26 09:34:39', '2014-03-26 10:51:19', 4600, '', '', '1395822878.0', '2014-03-26 09:34:57', '2014-03-26 10:51:17', ''),
(89, 123456781, '0123456781', 'Sipmobile/DynamicMenu.php', 'SIP/0123456781-00000004', 'fr', 'SIP', 'sipint', '3338', '3', '2014-03-26 11:25:21', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '1395829520.4', '2014-03-26 11:25:21', '0000-00-00 00:00:00', ''),
(90, 123456781, '0123456781', 'Sipmobile/DynamicMenu.php', 'SIP/0123456781-00000005', 'fr', 'SIP', 'sipint', '3338', '3', '2014-03-26 11:25:42', '', '2014-03-26 11:25:42', '2014-03-26 11:25:56', 14, '', '', '1395829541.5', '0000-00-00 00:00:00', '0000-00-00 00:00:00', ''),
(91, 123456781, '0123456781', 'Sipmobile/DynamicMenu.php', 'SIP/0123456781-00000006', 'fr', 'SIP', 'sipint', '3338', '3', '2014-03-26 11:26:05', '', '2014-03-26 11:26:05', '2014-03-26 11:26:20', 15, '', '', '1395829564.6', '0000-00-00 00:00:00', '0000-00-00 00:00:00', ''),
(92, 123456781, '0123456781', 'Sipmobile/MobileCall.php', 'SIP/0123456781-00000007', 'fr', 'SIP', 'sipint', '3339', '3', '2014-03-26 11:26:57', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '1395829616.7', '2014-03-26 11:26:57', '0000-00-00 00:00:00', ''),
(93, 0, 'unknown', 'Sipmobile/DynamicMenu.php', 'Console/dsp', 'en', 'Console', 'sipint', '3338', '3', '2014-03-26 15:05:18', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '1395842716.15', '2014-03-26 15:05:18', '0000-00-00 00:00:00', ''),
(94, 0, 'unknown', 'Sipmobile/DynamicMenu.php', 'Console/dsp', 'en', 'Console', 'sipint', '3338', '3', '2014-03-26 15:10:24', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '1395843022.16', '2014-03-26 15:10:24', '0000-00-00 00:00:00', ''),
(95, 123456780, 'unknown', 'Sipmobile/DynamicMenu.php', 'SIP/0123456780-00000003', 'fr', 'SIP', 'sipint', '3338', '3', '2014-03-26 16:03:56', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '1395846232.3', '2014-03-26 16:03:56', '0000-00-00 00:00:00', ''),
(96, 123456781, 'unknown', 'Sipmobile/DynamicMenu.php', 'SIP/0123456781-00000004', 'fr', 'SIP', 'sipint', '3338', '3', '2014-03-26 16:04:46', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '1395846270.4', '2014-03-26 16:04:46', '0000-00-00 00:00:00', ''),
(97, 123456781, 'unknown', 'Sipmobile/DynamicMenu.php', 'SIP/0123456781-00000005', 'fr', 'SIP', 'sipint', '3344', '3', '2014-03-26 17:46:32', '', '2014-03-26 17:46:32', '2014-03-26 17:47:07', 35, '', '', '1395852378.5', '0000-00-00 00:00:00', '0000-00-00 00:00:00', ''),
(98, 123456781, 'unknown', 'Sipmobile/DynamicMenu.php', 'SIP/0123456781-00000006', 'fr', 'SIP', 'sipint', '3344', '3', '2014-03-26 17:53:27', '', '2014-03-26 17:53:27', '2014-03-26 17:53:43', 16, '', '', '1395852800.6', '0000-00-00 00:00:00', '0000-00-00 00:00:00', ''),
(99, 123456781, 'unknown', 'Sipmobile/DynamicMenu.php', 'SIP/0123456781-00000007', 'fr', 'SIP', 'sipint', '3344', '3', '2014-03-26 17:55:15', '', '2014-03-26 17:55:15', '2014-03-26 17:55:34', 19, '', '', '1395852909.7', '0000-00-00 00:00:00', '0000-00-00 00:00:00', ''),
(100, 123456781, 'unknown', 'Sipmobile/DynamicMenu.php', 'SIP/0123456781-00000000', 'fr', 'SIP', 'sipint', '3344', '3', '2014-03-27 09:13:49', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '1395908021.0', '2014-03-27 09:13:49', '0000-00-00 00:00:00', ''),
(101, 123456781, 'unknown', 'Sipmobile/DynamicMenu.php', 'SIP/0123456781-00000008', 'fr', 'SIP', 'sipint', '3344', '3', '2014-03-27 10:23:23', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '1395912193.8', '2014-03-27 10:23:23', '0000-00-00 00:00:00', ''),
(102, 123456781, 'unknown', 'Sipmobile/DynamicMenu.php', 'SIP/0123456781-0000000e', 'fr', 'SIP', 'sipint', '3344', '3', '2014-03-27 12:01:45', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '1395918091.14', '2014-03-27 12:01:45', '0000-00-00 00:00:00', ''),
(103, 123456781, 'unknown', 'Sipmobile/DynamicMenu.php', 'SIP/0123456781-0000003c', 'fr', 'SIP', 'sipint', '3344', '3', '2014-03-27 13:46:41', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '1395924396.60', '2014-03-27 13:46:41', '0000-00-00 00:00:00', ''),
(104, 123456780, 'unknown', 'Sipmobile/DynamicMenu.php', 'SIP/0123456780-00000046', 'fr', 'SIP', 'sipint', '3344', '3', '2014-03-27 14:03:02', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '1395925379.70', '2014-03-27 14:03:02', '0000-00-00 00:00:00', ''),
(105, 0, 'unknown', 'Sipmobile/PayBill.php', 'SIP/sipcomdevtrunk-00000051', 'fr', 'SIP', 'sipint', '3344', '3', '2014-03-27 15:42:07', '', '2014-03-27 15:42:07', '2014-03-27 15:42:41', 34, '', '', '1395931311.81', '0000-00-00 00:00:00', '0000-00-00 00:00:00', ''),
(106, 0, 'unknown', 'Sipmobile/PayBill.php', 'SIP/sipcomdevtrunk-00000052', 'fr', 'SIP', 'sipint', '3344', '3', '2014-03-27 15:46:48', '', '2014-03-27 15:46:48', '2014-03-27 15:47:36', 48, '', '', '1395931594.82', '0000-00-00 00:00:00', '0000-00-00 00:00:00', ''),
(107, 0, 'unknown', 'Sipmobile/PayBill.php', 'SIP/sipcomdevtrunk-00000053', 'fr', 'SIP', 'sipint', '3344', '3', '2014-03-27 15:48:01', '', '2014-03-27 15:48:01', '2014-03-27 15:48:30', 29, '', '', '1395931664.83', '0000-00-00 00:00:00', '0000-00-00 00:00:00', ''),
(108, 0, 'unknown', 'Sipmobile/PayBill.php', 'SIP/sipcomdevtrunk-00000054', 'fr', 'SIP', 'sipint', '3344', '3', '2014-03-27 15:49:30', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '1395931752.84', '2014-03-27 15:49:30', '0000-00-00 00:00:00', ''),
(109, 0, 'unknown', 'Sipmobile/PayBill.php', 'SIP/sipcomdevtrunk-00000055', 'fr', 'SIP', 'sipint', '3344', '3', '2014-03-27 15:50:23', '', '2014-03-27 15:50:23', '2014-03-27 15:50:54', 31, '', '', '1395931810.85', '0000-00-00 00:00:00', '0000-00-00 00:00:00', ''),
(110, 0, 'unknown', 'Sipmobile/PayBill.php', 'SIP/sipcomdevtrunk-00000056', 'fr', 'SIP', 'sipint', '3344', '3', '2014-03-27 15:53:47', '', '2014-03-27 15:53:47', '2014-03-27 15:54:31', 44, '', '', '1395932015.86', '0000-00-00 00:00:00', '0000-00-00 00:00:00', ''),
(111, 0, 'unknown', 'Sipmobile/PayBill.php', 'SIP/sipcomdevtrunk-00000057', 'fr', 'SIP', 'sipint', '3344', '3', '2014-03-27 15:56:01', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '1395932152.87', '2014-03-27 15:56:01', '0000-00-00 00:00:00', ''),
(112, 0, 'unknown', 'Sipmobile/PayBill.php', 'SIP/sipcomdevtrunk-00000058', 'fr', 'SIP', 'sipint', '3344', '3', '2014-03-27 15:56:50', '', '2014-03-27 15:56:50', '2014-03-27 15:57:32', 42, '', '', '1395932201.88', '0000-00-00 00:00:00', '0000-00-00 00:00:00', ''),
(113, 0, 'unknown', 'Sipmobile/PayBill.php', 'SIP/sipcomdevtrunk-00000059', 'fr', 'SIP', 'sipint', '3344', '3', '2014-03-27 17:59:21', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '1395939543.89', '2014-03-27 17:59:21', '0000-00-00 00:00:00', ''),
(114, 2147483647, '+33659051524', 'Sipmobile/DynamicMenu.php', 'SIP/sipcomdevtrunk-00000001', 'fr', 'SIP', 'incoming', '+33143112246', '3', '2014-03-28 09:27:39', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '1395995257.1', '2014-03-28 09:27:39', '0000-00-00 00:00:00', ''),
(115, 0, 'unknown', 'Sipmobile/DynamicMenu.php', 'Console/dsp', 'en', 'Console', 'sipint', '3338', '3', '2014-03-28 10:02:44', '', '2014-03-28 10:02:44', '2014-03-28 10:03:34', 50, '', '', '1395997363.8', '0000-00-00 00:00:00', '0000-00-00 00:00:00', ''),
(116, 123456781, '0123456781', 'Sipmobile/MobileCall.php', 'SIP/0123456781-00000008', 'fr', 'SIP', 'sipint', '3339', '3', '2014-03-28 10:22:43', '', '2014-03-28 10:22:43', '2014-03-28 10:22:46', 3, '', '', '1395998562.14', '0000-00-00 00:00:00', '0000-00-00 00:00:00', ''),
(117, 123456781, '0123456781', 'Sipmobile/PayBill.php', 'SIP/0123456781-0000000b', 'fr', 'SIP', 'sipint', '3344', '3', '2014-03-28 11:08:33', '', '2014-03-28 11:08:33', '2014-03-28 11:09:19', 46, '', '', '1396001312.18', '0000-00-00 00:00:00', '0000-00-00 00:00:00', ''),
(118, 123456781, '0123456781', 'Sipmobile/PayBill.php', 'SIP/0123456781-0000000c', 'fr', 'SIP', 'sipint', '3344', '3', '2014-03-28 11:10:39', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '1396001438.19', '2014-03-28 11:10:39', '0000-00-00 00:00:00', ''),
(119, 123456781, '0123456781', 'Sipmobile/DynamicMenu.php', 'SIP/0123456781-0000000d', 'fr', 'SIP', 'sipint', '3338', '3', '2014-03-28 11:11:29', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '1396001488.20', '2014-03-28 11:11:29', '0000-00-00 00:00:00', ''),
(120, 123456781, '0123456781', 'Sipmobile/PayBill.php', 'SIP/0123456781-0000000e', 'fr', 'SIP', 'sipint', '3344', '3', '2014-03-28 11:12:17', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '1396001536.21', '2014-03-28 11:12:17', '0000-00-00 00:00:00', ''),
(121, 123456781, '0123456781', 'Sipmobile/PayBill.php', 'SIP/0123456781-0000000f', 'fr', 'SIP', 'sipint', '3344', '3', '2014-03-28 11:13:13', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '1396001591.22', '2014-03-28 11:13:13', '0000-00-00 00:00:00', ''),
(122, 123456781, '0123456781', 'Sipmobile/PayBill.php', 'SIP/0123456781-00000010', 'fr', 'SIP', 'sipint', '3344', '3', '2014-03-28 11:19:58', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '1396001997.23', '2014-03-28 11:19:58', '0000-00-00 00:00:00', ''),
(123, 123456781, '0123456781', 'Sipmobile/PayBill.php', 'SIP/0123456781-00000011', 'fr', 'SIP', 'sipint', '3344', '3', '2014-03-28 11:20:22', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '1396002021.24', '2014-03-28 11:20:22', '0000-00-00 00:00:00', ''),
(124, 123456781, '0123456781', 'Sipmobile/PayBill.php', 'SIP/0123456781-00000012', 'fr', 'SIP', 'sipint', '3344', '3', '2014-03-28 11:20:33', '', '2014-03-28 11:20:33', '2014-03-28 11:20:37', 4, '', '', '1396002032.25', '0000-00-00 00:00:00', '0000-00-00 00:00:00', ''),
(125, 123456781, '0123456781', 'Sipmobile/PayBill.php', 'SIP/0123456781-00000013', 'fr', 'SIP', 'sipint', '3344', '3', '2014-03-28 11:20:48', '', '2014-03-28 11:20:48', '2014-03-28 11:20:53', 5, '', '', '1396002047.26', '0000-00-00 00:00:00', '0000-00-00 00:00:00', ''),
(126, 123456781, '0123456781', 'Sipmobile/PayBill.php', 'SIP/0123456781-00000014', 'fr', 'SIP', 'sipint', '3344', '3', '2014-03-28 11:21:07', '', '2014-03-28 11:21:07', '2014-03-28 11:21:13', 6, '', '', '1396002066.27', '0000-00-00 00:00:00', '0000-00-00 00:00:00', ''),
(127, 123456781, '0123456781', 'Sipmobile/PayBill.php', 'SIP/0123456781-00000015', 'fr', 'SIP', 'sipint', '3344', '3', '2014-03-28 11:21:17', '', '2014-03-28 11:21:17', '2014-03-28 11:21:25', 8, '', '', '1396002076.28', '0000-00-00 00:00:00', '0000-00-00 00:00:00', ''),
(128, 123456781, '0123456781', 'Sipmobile/PayBill.php', 'SIP/0123456781-00000016', 'fr', 'SIP', 'sipint', '3344', '3', '2014-03-28 11:21:32', '', '2014-03-28 11:21:32', '2014-03-28 11:21:37', 5, '', '', '1396002091.29', '0000-00-00 00:00:00', '0000-00-00 00:00:00', ''),
(129, 123456781, '0123456781', 'Sipmobile/PayBill.php', 'SIP/0123456781-00000017', 'fr', 'SIP', 'sipint', '3344', '3', '2014-03-28 11:23:20', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '1396002199.30', '2014-03-28 11:23:20', '0000-00-00 00:00:00', ''),
(130, 123456781, '0123456781', 'Sipmobile/PayBill.php', 'SIP/0123456781-00000018', 'fr', 'SIP', 'sipint', '3344', '3', '2014-03-28 11:24:14', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '1396002253.31', '2014-03-28 11:24:14', '0000-00-00 00:00:00', ''),
(131, 123456781, '0123456781', 'Sipmobile/PayBill.php', 'SIP/0123456781-00000019', 'fr', 'SIP', 'sipint', '3344', '3', '2014-03-28 11:25:23', '', '2014-03-28 11:25:23', '2014-03-28 11:25:34', 11, '', '', '1396002322.32', '0000-00-00 00:00:00', '0000-00-00 00:00:00', ''),
(132, 123456781, '0123456781', 'Sipmobile/PayBill.php', 'SIP/0123456781-0000001a', 'fr', 'SIP', 'sipint', '3344', '3', '2014-03-28 11:26:52', '', '2014-03-28 11:26:52', '2014-03-28 11:27:08', 16, '', '', '1396002411.33', '0000-00-00 00:00:00', '0000-00-00 00:00:00', ''),
(133, 123456781, '0123456781', 'Sipmobile/PayBill.php', 'SIP/0123456781-0000001b', 'fr', 'SIP', 'sipint', '3344', '3', '2014-03-28 11:31:19', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '1396002678.34', '2014-03-28 11:31:19', '0000-00-00 00:00:00', ''),
(134, 123456781, '0123456781', 'Sipmobile/PayBill.php', 'SIP/0123456781-0000001c', 'fr', 'SIP', 'sipint', '3344', '3', '2014-03-28 11:31:55', '', '2014-03-28 11:31:55', '2014-03-28 11:32:03', 8, '', '', '1396002714.35', '0000-00-00 00:00:00', '0000-00-00 00:00:00', ''),
(135, 123456781, '0123456781', 'Sipmobile/DynamicMenu.php', 'SIP/0123456781-0000001d', 'fr', 'SIP', 'sipint', '3338', '3', '2014-03-28 11:33:49', '', '2014-03-28 11:33:49', '2014-03-28 11:34:19', 30, '', '', '1396002828.36', '0000-00-00 00:00:00', '0000-00-00 00:00:00', ''),
(136, 123456781, '0123456781', 'Sipmobile/DynamicMenu.php', 'SIP/0123456781-0000001e', 'fr', 'SIP', 'sipint', '3338', '3', '2014-03-28 11:36:33', '', '2014-03-28 11:36:33', '2014-03-28 11:36:51', 18, '', '', '1396002992.37', '0000-00-00 00:00:00', '0000-00-00 00:00:00', ''),
(137, 123456781, '0123456781', 'Sipmobile/DynamicMenu.php', 'SIP/0123456781-0000001f', 'fr', 'SIP', 'sipint', '3338', '3', '2014-03-28 11:37:28', '', '2014-03-28 11:37:28', '2014-03-28 11:38:01', 33, '', '', '1396003047.38', '0000-00-00 00:00:00', '0000-00-00 00:00:00', ''),
(138, 123456781, '0123456781', 'Sipmobile/PayBill.php', 'SIP/0123456781-00000020', 'fr', 'SIP', 'sipint', '3344', '3', '2014-03-28 11:49:08', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '1396003747.39', '2014-03-28 11:49:08', '0000-00-00 00:00:00', ''),
(139, 123456781, '0123456781', 'Sipmobile/PayBill.php', 'SIP/0123456781-00000021', 'fr', 'SIP', 'sipint', '3344', '3', '2014-03-28 11:49:25', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '1396003763.40', '2014-03-28 11:49:25', '0000-00-00 00:00:00', ''),
(140, 123456781, '0123456781', 'Sipmobile/PayBill.php', 'SIP/0123456781-00000022', 'fr', 'SIP', 'sipint', '3344', '3', '2014-03-28 11:49:50', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '1396003789.41', '2014-03-28 11:49:50', '0000-00-00 00:00:00', ''),
(141, 123456781, '0123456781', 'Sipmobile/PayBill.php', 'SIP/0123456781-00000023', 'fr', 'SIP', 'sipint', '3344', '3', '2014-03-28 11:50:05', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '1396003804.42', '2014-03-28 11:50:05', '0000-00-00 00:00:00', ''),
(142, 123456781, '0123456781', 'Sipmobile/PayBill.php', 'SIP/0123456781-00000024', 'fr', 'SIP', 'sipint', '3344', '3', '2014-03-28 11:50:13', '', '2014-03-28 11:50:13', '2014-03-28 11:50:44', 31, '', '', '1396003811.43', '0000-00-00 00:00:00', '0000-00-00 00:00:00', ''),
(143, 123456781, '0123456781', 'Sipmobile/PayBill.php', 'SIP/0123456781-00000025', 'fr', 'SIP', 'sipint', '3344', '3', '2014-03-28 11:51:22', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '1396003881.44', '2014-03-28 11:51:22', '0000-00-00 00:00:00', ''),
(144, 123456781, '0123456781', 'Sipmobile/PayBill.php', 'SIP/0123456781-00000026', 'fr', 'SIP', 'sipint', '3344', '3', '2014-03-28 11:52:56', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '1396003975.45', '2014-03-28 11:52:56', '0000-00-00 00:00:00', ''),
(145, 123456781, '0123456781', 'Sipmobile/PayBill.php', 'SIP/0123456781-00000027', 'fr', 'SIP', 'sipint', '3344', '3', '2014-03-28 11:53:39', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '1396004018.46', '2014-03-28 11:53:39', '0000-00-00 00:00:00', ''),
(146, 123456781, '0123456781', 'Sipmobile/PayBill.php', 'SIP/0123456781-00000028', 'fr', 'SIP', 'sipint', '3344', '3', '2014-03-28 11:53:57', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '1396004036.47', '2014-03-28 11:53:57', '0000-00-00 00:00:00', ''),
(147, 123456781, '0123456781', 'Sipmobile/PayBill.php', 'SIP/0123456781-00000029', 'fr', 'SIP', 'sipint', '3344', '3', '2014-03-28 11:54:05', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '1396004044.48', '2014-03-28 11:54:05', '0000-00-00 00:00:00', ''),
(148, 123456781, '0123456781', 'Sipmobile/PayBill.php', 'SIP/0123456781-0000002a', 'fr', 'SIP', 'sipint', '3344', '3', '2014-03-28 11:54:15', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '1396004054.49', '2014-03-28 11:54:15', '0000-00-00 00:00:00', ''),
(149, 123456781, '0123456781', 'Sipmobile/PayBill.php', 'SIP/0123456781-0000002b', 'fr', 'SIP', 'sipint', '3344', '3', '2014-03-28 11:55:14', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '1396004113.50', '2014-03-28 11:55:14', '0000-00-00 00:00:00', ''),
(150, 123456781, '0123456781', 'Sipmobile/PayBill.php', 'SIP/0123456781-0000002c', 'fr', 'SIP', 'sipint', '3344', '3', '2014-03-28 11:58:19', '', '2014-03-28 11:58:19', '2014-03-28 11:58:41', 22, '', '', '1396004298.51', '0000-00-00 00:00:00', '0000-00-00 00:00:00', ''),
(151, 123456781, '0123456781', 'Sipmobile/DynamicMenu.php', 'SIP/0123456781-0000002d', 'fr', 'SIP', 'sipint', '3338', '3', '2014-03-28 11:58:51', '', '2014-03-28 11:58:51', '2014-03-28 11:59:06', 15, '', '', '1396004330.52', '0000-00-00 00:00:00', '0000-00-00 00:00:00', ''),
(152, 123456781, '0123456781', 'Sipmobile/DynamicMenu.php', 'SIP/0123456781-0000002e', 'fr', 'SIP', 'sipint', '3338', '3', '2014-03-28 11:59:32', '', '2014-03-28 11:59:32', '2014-03-28 11:59:58', 26, '', '', '1396004371.53', '0000-00-00 00:00:00', '0000-00-00 00:00:00', ''),
(153, 123456781, '0123456781', 'Sipmobile/DynamicMenu.php', 'SIP/0123456781-0000002f', 'fr', 'SIP', 'sipint', '3338', '3', '2014-03-28 12:00:20', '', '2014-03-28 12:00:20', '2014-03-28 12:00:40', 20, '', '', '1396004419.54', '0000-00-00 00:00:00', '0000-00-00 00:00:00', ''),
(154, 123456781, '0123456781', 'Sipmobile/DynamicMenu.php', 'SIP/0123456781-00000030', 'fr', 'SIP', 'sipint', '3338', '3', '2014-03-28 12:00:57', '', '2014-03-28 12:00:57', '2014-03-28 12:01:38', 41, '', '', '1396004456.55', '0000-00-00 00:00:00', '0000-00-00 00:00:00', ''),
(155, 123456781, '0123456781', 'Sipmobile/DynamicMenu.php', 'SIP/0123456781-00000031', 'fr', 'SIP', 'sipint', '3338', '3', '2014-03-28 12:01:44', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '1396004503.56', '2014-03-28 12:01:44', '0000-00-00 00:00:00', ''),
(156, 123456781, '0123456781', 'Sipmobile/DynamicMenu.php', 'SIP/0123456781-00000032', 'fr', 'SIP', 'sipint', '3338', '3', '2014-03-28 12:05:16', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '1396004715.57', '2014-03-28 12:05:16', '0000-00-00 00:00:00', ''),
(157, 123456781, '0123456781', 'Sipmobile/DynamicMenu.php', 'SIP/0123456781-00000033', 'fr', 'SIP', 'sipint', '3338', '3', '2014-03-28 12:06:26', '', '2014-03-28 12:06:26', '2014-03-28 12:06:41', 15, '', '', '1396004785.58', '0000-00-00 00:00:00', '0000-00-00 00:00:00', ''),
(158, 123456781, '0123456781', 'Sipmobile/DynamicMenu.php', 'SIP/0123456781-00000034', 'fr', 'SIP', 'sipint', '3338', '3', '2014-03-28 12:06:43', '', '2014-03-28 12:06:43', '2014-03-28 12:06:48', 5, '', '', '1396004802.59', '0000-00-00 00:00:00', '0000-00-00 00:00:00', ''),
(159, 123456781, '0123456781', 'Sipmobile/DynamicMenu.php', 'SIP/0123456781-00000035', 'fr', 'SIP', 'sipint', '3338', '3', '2014-03-28 12:07:53', '', '2014-03-28 12:07:53', '2014-03-28 12:08:00', 7, '', '', '1396004872.60', '0000-00-00 00:00:00', '0000-00-00 00:00:00', ''),
(160, 2147483647, '+3333143112246', 'Sipmobile/DynamicMenu.php', 'SIP/sipcomdevtrunk-0000003b', 'fr', 'SIP', 'incoming', '+33143112246', '3', '2014-03-28 15:34:18', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '1396017257.66', '2014-03-28 15:34:18', '0000-00-00 00:00:00', ''),
(161, 2147483647, '+3333143112246', 'Sipmobile/DynamicMenu.php', 'SIP/sipcomdevtrunk-0000003d', 'fr', 'SIP', 'incoming', '+33143112246', '3', '2014-03-28 15:37:21', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '1396017440.68', '2014-03-28 15:37:21', '0000-00-00 00:00:00', ''),
(162, 2147483647, '+3333143112246', 'Sipmobile/DynamicMenu.php', 'SIP/sipcomdevtrunk-0000003f', 'fr', 'SIP', 'incoming', '+33143112246', '3', '2014-03-28 15:38:16', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '1396017494.70', '2014-03-28 15:38:16', '0000-00-00 00:00:00', ''),
(163, 123456781, '00123456781', 'Sipmobile/PayBill.php', 'SIP/0123456781-00000017', 'fr', 'SIP', 'sipint', '3344', '3', '2014-03-28 17:51:49', '', '2014-03-28 17:51:49', '2014-03-28 17:52:04', 15, '', '', '1396025507.24', '0000-00-00 00:00:00', '0000-00-00 00:00:00', ''),
(164, 123456781, '00123456781', 'Sipmobile/PayBill.php', 'SIP/0123456781-00000018', 'fr', 'SIP', 'sipint', '3344', '3', '2014-03-28 17:52:12', '', '2014-03-28 17:52:12', '2014-03-28 17:52:23', 11, '', '', '1396025530.25', '0000-00-00 00:00:00', '0000-00-00 00:00:00', ''),
(165, 123456780, 'unknown', 'Sipmobile/PayBill.php', 'SIP/0123456780-00000018', 'fr', 'SIP', 'sipint', '3344', '3', '2014-03-31 11:41:14', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '1396258869.25', '2014-03-31 11:41:14', '0000-00-00 00:00:00', ''),
(166, 123456780, 'unknown', 'Sipmobile/PayBill.php', 'SIP/0123456780-0000001a', 'fr', 'SIP', 'sipint', '3344', '3', '2014-03-31 11:44:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '1396259037.27', '2014-03-31 11:44:00', '0000-00-00 00:00:00', ''),
(167, 123456781, 'unknown', 'Sipmobile/PayBill.php', 'SIP/0123456781-00000021', 'fr', 'SIP', 'sipint', '3344', '3', '2014-03-31 11:45:07', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '1396259088.34', '2014-03-31 11:45:07', '0000-00-00 00:00:00', ''),
(168, 123456780, 'unknown', 'Sipmobile/PayBill.php', 'SIP/0123456780-00000022', 'fr', 'SIP', 'sipint', '3344', '3', '2014-03-31 11:46:08', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '1396259165.35', '2014-03-31 11:46:08', '0000-00-00 00:00:00', ''),
(169, 123456781, 'unknown', 'Sipmobile/PayBill.php', 'SIP/0123456781-00000027', 'fr', 'SIP', 'sipint', '3344', '3', '2014-03-31 11:47:42', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '1396259247.40', '2014-03-31 11:47:43', '0000-00-00 00:00:00', ''),
(170, 123456781, 'unknown', 'Sipmobile/PayBill.php', 'SIP/0123456781-00000029', 'fr', 'SIP', 'sipint', '3344', '3', '2014-03-31 11:54:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '1396259631.42', '2014-03-31 11:54:00', '0000-00-00 00:00:00', ''),
(171, 123456781, 'unknown', 'Sipmobile/PayBill.php', 'SIP/0123456781-00000014', 'fr', 'SIP', 'sipint', '3344', '3', '2014-04-02 15:47:39', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '1396446441.20', '2014-04-02 15:47:39', '0000-00-00 00:00:00', '');

-- --------------------------------------------------------

--
-- Structure de la table `faxcdr`
--

CREATE TABLE IF NOT EXISTS `faxcdr` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `agi_callerid` varchar(30) NOT NULL,
  `agi_calleridname` varchar(80) NOT NULL,
  `ecm` varchar(30) NOT NULL,
  `filename` varchar(125) NOT NULL,
  `headerinfo` varchar(30) NOT NULL,
  `localstationid` varchar(30) NOT NULL,
  `maxrate` varchar(10) NOT NULL,
  `minrate` varchar(10) NOT NULL,
  `pages` varchar(11) NOT NULL,
  `rate` varchar(10) NOT NULL,
  `remotestationid` varchar(30) NOT NULL,
  `resolution` varchar(6) NOT NULL,
  `status` varchar(10) NOT NULL,
  `statusstr` varchar(10) NOT NULL,
  `error` varchar(10) NOT NULL,
  `agi_request` varchar(100) NOT NULL,
  `agi_channel` varchar(80) NOT NULL,
  `agi_language` varchar(50) NOT NULL,
  `agi_callingpres` varchar(10) DEFAULT NULL,
  `agi_callingani2` varchar(10) DEFAULT NULL,
  `agi_callington` varchar(10) DEFAULT NULL,
  `agi_callingtns` varchar(10) DEFAULT NULL,
  `agi_rdnis` varchar(10) DEFAULT NULL,
  `agi_type` varchar(50) NOT NULL,
  `agi_dnid` varchar(30) DEFAULT NULL,
  `agi_context` varchar(50) NOT NULL,
  `agi_extension` varchar(50) NOT NULL,
  `agi_priority` varchar(50) NOT NULL,
  `agi_enhanced` varchar(10) DEFAULT NULL,
  `agi_accountcode` varchar(80) NOT NULL DEFAULT '',
  `agi_threadid` varchar(10) DEFAULT NULL,
  `agi_uniqueid` varchar(80) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `accountcode` (`agi_accountcode`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=178 ;

--
-- Contenu de la table `faxcdr`
--

INSERT INTO `faxcdr` (`id`, `agi_callerid`, `agi_calleridname`, `ecm`, `filename`, `headerinfo`, `localstationid`, `maxrate`, `minrate`, `pages`, `rate`, `remotestationid`, `resolution`, `status`, `statusstr`, `error`, `agi_request`, `agi_channel`, `agi_language`, `agi_callingpres`, `agi_callingani2`, `agi_callington`, `agi_callingtns`, `agi_rdnis`, `agi_type`, `agi_dnid`, `agi_context`, `agi_extension`, `agi_priority`, `agi_enhanced`, `agi_accountcode`, `agi_threadid`, `agi_uniqueid`) VALUES
(177, '2147483647', '+33141840369', '0', '0', '0', '0', '0', '14400', '2400', '1', '14400', '0', '204', '0', '0', 'Sipmobile/LogReceiveFax.php', 'SIP/sipcomdevtrunk-00000001', 'fr', '0', '0', '0', '0', 'unknown', 'SIP', '+33143112245', 'fax-rx', 'h', '3', '0.0', '', '-126686120', '1396533439.1'),
(176, '2147483647', '+33141840369', '0', '0', '0', '0', '0', '14400', '2400', '1', '14400', '0', '204', '0', '0', 'Sipmobile/LogReceiveFax.php', 'SIP/sipcomdevtrunk-00000000', 'fr', '0', '0', '0', '0', 'unknown', 'SIP', '+33143112246', 'fax-rx', 'h', '3', '0.0', '', '-126686120', '1396532472.0');

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `balance` float DEFAULT NULL,
  `online` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `calltimes` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=3 ;

--
-- Contenu de la table `user`
--

INSERT INTO `user` (`id`, `username`, `balance`, `online`, `calltimes`) VALUES
(1, '0123456780', 10, NULL, NULL),
(2, '0123456781', 10, NULL, NULL);
