-- phpMyAdmin SQL Dump
-- version 4.0.10deb1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jan 18, 2017 at 05:31 PM
-- Server version: 5.5.53-0ubuntu0.14.04.1
-- PHP Version: 5.5.9-1ubuntu4.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `ExploringIceAxe`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE IF NOT EXISTS `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE IF NOT EXISTS `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissi_permission_id_84c5c92e_fk_auth_permission_id` (`permission_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE IF NOT EXISTS `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_01ab375a_uniq` (`content_type_id`,`codename`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=43 ;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add participant', 1, 'add_participant'),
(2, 'Can change participant', 1, 'change_participant'),
(3, 'Can delete participant', 1, 'delete_participant'),
(4, 'Can add comment', 2, 'add_comment'),
(5, 'Can change comment', 2, 'change_comment'),
(6, 'Can delete comment', 2, 'delete_comment'),
(7, 'Can add report', 3, 'add_report'),
(8, 'Can change report', 3, 'change_report'),
(9, 'Can delete report', 3, 'delete_report'),
(10, 'Can add comment', 4, 'add_comment'),
(11, 'Can change comment', 4, 'change_comment'),
(12, 'Can delete comment', 4, 'delete_comment'),
(13, 'Can add trail', 5, 'add_trail'),
(14, 'Can change trail', 5, 'change_trail'),
(15, 'Can delete trail', 5, 'delete_trail'),
(16, 'Can add comment', 6, 'add_comment'),
(17, 'Can change comment', 6, 'change_comment'),
(18, 'Can delete comment', 6, 'delete_comment'),
(19, 'Can add imageotd', 7, 'add_imageotd'),
(20, 'Can change imageotd', 7, 'change_imageotd'),
(21, 'Can delete imageotd', 7, 'delete_imageotd'),
(22, 'Can add log entry', 8, 'add_logentry'),
(23, 'Can change log entry', 8, 'change_logentry'),
(24, 'Can delete log entry', 8, 'delete_logentry'),
(25, 'Can add permission', 9, 'add_permission'),
(26, 'Can change permission', 9, 'change_permission'),
(27, 'Can delete permission', 9, 'delete_permission'),
(28, 'Can add user', 10, 'add_user'),
(29, 'Can change user', 10, 'change_user'),
(30, 'Can delete user', 10, 'delete_user'),
(31, 'Can add group', 11, 'add_group'),
(32, 'Can change group', 11, 'change_group'),
(33, 'Can delete group', 11, 'delete_group'),
(34, 'Can add content type', 12, 'add_contenttype'),
(35, 'Can change content type', 12, 'change_contenttype'),
(36, 'Can delete content type', 12, 'delete_contenttype'),
(37, 'Can add session', 13, 'add_session'),
(38, 'Can change session', 13, 'change_session'),
(39, 'Can delete session', 13, 'delete_session'),
(40, 'Can add user profile', 14, 'add_userprofile'),
(41, 'Can change user profile', 14, 'change_userprofile'),
(42, 'Can delete user profile', 14, 'delete_userprofile');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE IF NOT EXISTS `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$30000$tZwSp7B2IgUz$vWcv5cXuc1USxFzbWuWlzZIBmRrRGr/eQTSgd6IhLKI=', '2017-01-17 03:21:56', 1, 'admin', '', '', 'b_heaps@hotmail.com', 1, 1, '2016-12-01 21:30:34'),
(2, 'pbkdf2_sha256$30000$53UI3AXmZAif$K2mKwG4nkFjxOP3yFjXDUTXQSepIG9e14BKLbXRarCg=', '2016-12-08 18:52:34', 0, 'test1', 'test', '1', 'b_heaps@hotmail.com', 0, 1, '2016-12-08 18:52:17'),
(3, 'pbkdf2_sha256$30000$A3gLdtBqnDYY$suvJWI0VAKRbrWTlCACXiCBfikOIPRJY5ft4sKrcP28=', NULL, 0, 'test6', 'a', 'b', 'a@b.com', 0, 1, '2016-12-21 19:42:27'),
(4, 'pbkdf2_sha256$30000$OvaorGLkDclY$g5xa7gimo5VMnOFgJ+knAaIhlJBLorTYWT+tM6Uxxlg=', '2017-01-17 03:16:18', 0, 'Ben', 'asdfasd', 'sadgd', 'a@b.com', 0, 1, '2017-01-15 20:08:08');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE IF NOT EXISTS `auth_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE IF NOT EXISTS `auth_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_perm_permission_id_1fbb5f2c_fk_auth_permission_id` (`permission_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE IF NOT EXISTS `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin__content_type_id_c4bce8eb_fk_django_content_type_id` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=139 ;

--
-- Dumping data for table `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2016-12-01 21:32:51', '1', 'Alcoholic Traverse', 1, '[{"added": {}}]', 7, 1),
(2, '2016-12-05 20:18:38', '3', 'Sumas Mountain Hike', 1, '[{"added": {}}]', 3, 1),
(3, '2016-12-05 20:20:45', '4', 'Alouette Snowshoe', 1, '[{"added": {}}]', 3, 1),
(4, '2016-12-05 20:23:24', '5', 'Golden Ears Park', 1, '[{"added": {}}]', 3, 1),
(5, '2016-12-05 20:25:05', '6', 'Brandywine', 1, '[{"added": {}}]', 3, 1),
(6, '2016-12-05 20:27:16', '7', 'Brew Hut', 1, '[{"added": {}}]', 3, 1),
(7, '2016-12-10 19:22:51', '3', 'Alcoholic Traverse', 3, '', 7, 1),
(8, '2016-12-10 19:23:14', '4', 'Alcoholic Traverse', 3, '', 7, 1),
(9, '2016-12-13 20:24:42', '8', 'Elfin Lakes - Round Mountain', 1, '[{"added": {}}]', 3, 1),
(10, '2016-12-13 20:30:35', '9', 'Sunshine Mountain', 1, '[{"added": {}}]', 3, 1),
(11, '2016-12-13 20:32:01', '10', 'Icecap Peak', 1, '[{"added": {}}]', 3, 1),
(12, '2016-12-13 20:34:05', '11', 'Les Gendarmes', 1, '[{"added": {}}]', 3, 1),
(13, '2016-12-13 20:36:53', '12', 'Rainbow', 1, '[{"added": {}}]', 3, 1),
(14, '2016-12-13 20:38:11', '1', 'test', 3, '', 5, 1),
(15, '2016-12-13 20:38:48', '2', 'Ben Lomond', 1, '[{"added": {}}]', 5, 1),
(16, '2016-12-13 20:39:39', '3', 'Black Tusk', 1, '[{"added": {}}]', 5, 1),
(17, '2016-12-13 20:40:33', '4', 'Blowdown Pass', 1, '[{"added": {}}]', 5, 1),
(18, '2016-12-13 20:41:36', '5', 'Brandywine Meadows', 1, '[{"added": {}}]', 5, 1),
(19, '2016-12-13 20:42:17', '6', 'Brew Hut', 1, '[{"added": {}}]', 5, 1),
(20, '2016-12-13 20:43:17', '7', 'Deeks Peak', 1, '[{"added": {}}]', 5, 1),
(21, '2016-12-13 20:44:17', '8', 'Empetrum', 1, '[{"added": {}}]', 5, 1),
(22, '2016-12-13 20:47:15', '9', 'Metal Dome', 1, '[{"added": {}}]', 5, 1),
(23, '2016-12-13 20:48:04', '10', 'Musical Bumps', 1, '[{"added": {}}]', 5, 1),
(24, '2016-12-13 20:48:43', '11', 'Phelix Creek', 1, '[{"added": {}}]', 5, 1),
(25, '2016-12-13 20:49:44', '12', 'Solitude Glacier', 1, '[{"added": {}}]', 5, 1),
(26, '2016-12-19 21:16:14', '13', 'a', 3, '', 5, 1),
(27, '2016-12-19 21:24:00', '14', 'Alouette Mountains', 1, '[{"added": {}}]', 5, 1),
(28, '2016-12-19 21:25:20', '15', 'BCMC Trail (Grouse Mountain)', 1, '[{"added": {}}]', 5, 1),
(29, '2016-12-19 21:26:23', '16', 'Coliseum Mountain', 1, '[{"added": {}}]', 5, 1),
(30, '2016-12-19 21:27:05', '17', 'Dam Mountain', 1, '[{"added": {}}]', 5, 1),
(31, '2016-12-19 21:29:16', '18', 'Mount Frome', 1, '[{"added": {}}]', 5, 1),
(32, '2016-12-19 21:30:02', '19', 'Mount Seymour', 1, '[{"added": {}}]', 5, 1),
(33, '2016-12-19 21:30:59', '20', 'Norvan Falls', 1, '[{"added": {}}]', 5, 1),
(34, '2016-12-19 21:58:00', '20', 'Norvan Falls', 2, '[{"changed": {"fields": ["time", "elevation_gain", "distance_coverred"]}}]', 5, 1),
(35, '2016-12-19 21:58:36', '19', 'Mount Seymour', 2, '[{"changed": {"fields": ["time", "elevation_gain", "distance_coverred"]}}]', 5, 1),
(36, '2016-12-19 21:59:27', '18', 'Mount Frome', 2, '[{"changed": {"fields": ["time", "elevation_gain", "distance_coverred"]}}]', 5, 1),
(37, '2016-12-19 22:00:05', '17', 'Dam Mountain', 2, '[{"changed": {"fields": ["time", "elevation_gain", "distance_coverred"]}}]', 5, 1),
(38, '2016-12-19 22:01:11', '16', 'Coliseum Mountain', 2, '[{"changed": {"fields": ["time", "elevation_gain", "distance_coverred"]}}]', 5, 1),
(39, '2016-12-19 22:01:54', '15', 'BCMC Trail (Grouse Mountain)', 2, '[{"changed": {"fields": ["time", "elevation_gain", "distance_coverred"]}}]', 5, 1),
(40, '2016-12-19 22:02:32', '14', 'Alouette Mountain', 2, '[{"changed": {"fields": ["title", "time", "elevation_gain", "distance_coverred"]}}]', 5, 1),
(41, '2016-12-19 22:03:53', '12', 'Solitude Glacier', 2, '[{"changed": {"fields": ["time", "elevation_gain", "distance_coverred"]}}]', 5, 1),
(42, '2016-12-19 22:04:29', '11', 'Phelix Creek', 2, '[{"changed": {"fields": ["time", "elevation_gain", "distance_coverred"]}}]', 5, 1),
(43, '2016-12-19 22:05:35', '10', 'Musical Bumps', 2, '[{"changed": {"fields": ["time", "elevation_gain", "distance_coverred"]}}]', 5, 1),
(44, '2016-12-19 22:06:17', '9', 'Metal Dome', 2, '[{"changed": {"fields": ["time", "elevation_gain", "distance_coverred"]}}]', 5, 1),
(45, '2016-12-19 22:07:23', '8', 'Empetrum', 2, '[{"changed": {"fields": ["time", "elevation_gain", "distance_coverred"]}}]', 5, 1),
(46, '2016-12-19 22:08:09', '7', 'Deeks Peak', 2, '[{"changed": {"fields": ["time", "elevation_gain", "distance_coverred"]}}]', 5, 1),
(47, '2016-12-19 22:08:56', '6', 'Brew Hut', 2, '[{"changed": {"fields": ["time", "elevation_gain", "distance_coverred"]}}]', 5, 1),
(48, '2016-12-19 22:09:39', '5', 'Brandywine Meadows', 2, '[{"changed": {"fields": ["time", "elevation_gain", "distance_coverred"]}}]', 5, 1),
(49, '2016-12-19 22:10:20', '4', 'Blowdown Pass', 2, '[{"changed": {"fields": ["time", "elevation_gain", "distance_coverred"]}}]', 5, 1),
(50, '2016-12-19 22:11:04', '3', 'Black Tusk', 2, '[{"changed": {"fields": ["time", "elevation_gain", "distance_coverred"]}}]', 5, 1),
(51, '2016-12-19 22:11:05', '3', 'Black Tusk', 2, '[]', 5, 1),
(52, '2016-12-19 22:11:53', '2', 'Ben Lomond', 2, '[{"changed": {"fields": ["time", "elevation_gain", "distance_coverred"]}}]', 5, 1),
(53, '2016-12-31 21:18:42', '13', 'a', 3, '', 3, 1),
(54, '2017-01-13 03:02:40', '17', 'zdfgsdf', 3, '', 3, 1),
(55, '2017-01-13 03:02:40', '16', 'a', 3, '', 3, 1),
(56, '2017-01-13 03:02:40', '15', 'sadasdfda', 3, '', 3, 1),
(57, '2017-01-13 03:02:40', '14', 'test', 3, '', 3, 1),
(58, '2017-01-13 03:02:40', '13', 'test', 3, '', 3, 1),
(59, '2017-01-14 22:02:39', '30', 'dsgasdf', 3, '', 5, 1),
(60, '2017-01-14 22:02:39', '29', 'dasfasg', 3, '', 5, 1),
(61, '2017-01-14 22:02:39', '28', 'dsagas', 3, '', 5, 1),
(62, '2017-01-14 22:02:39', '27', 'dsfas', 3, '', 5, 1),
(63, '2017-01-14 22:02:39', '26', 'fegfds', 3, '', 5, 1),
(64, '2017-01-14 22:02:39', '25', 'sadgfsa', 3, '', 5, 1),
(65, '2017-01-14 22:02:39', '24', 'sdfgs', 3, '', 5, 1),
(66, '2017-01-14 22:02:39', '23', 'asfdsafadsg', 3, '', 5, 1),
(67, '2017-01-14 22:02:40', '22', 'asfd', 3, '', 5, 1),
(68, '2017-01-14 22:02:40', '21', 'a', 3, '', 5, 1),
(69, '2017-01-14 22:04:38', '32', 'sdgdf', 3, '', 5, 1),
(70, '2017-01-14 22:08:31', '13', 'dsgasg', 3, '', 3, 1),
(71, '2017-01-15 00:39:40', '15', 'Ben', 3, '', 3, 1),
(72, '2017-01-15 00:39:41', '14', 'asdfgf', 3, '', 3, 1),
(73, '2017-01-15 00:39:53', '31', 'afdgds', 3, '', 5, 1),
(74, '2017-01-17 03:29:31', '17', 'asdgsfd', 3, '', 3, 1),
(75, '2017-01-17 03:29:31', '16', 'sadgaddsa', 3, '', 3, 1),
(76, '2017-01-17 03:29:31', '15', 'sadgasg', 3, '', 3, 1),
(77, '2017-01-17 03:29:31', '14', 'gdfagass', 3, '', 3, 1),
(78, '2017-01-17 03:29:31', '13', 'afdgds', 3, '', 3, 1),
(79, '2017-01-17 03:29:46', '22', 'asdgda', 3, '', 5, 1),
(80, '2017-01-17 03:29:46', '21', 's', 3, '', 5, 1),
(81, '2017-01-17 03:35:10', '12', 'Rainbow', 2, '[{"changed": {"fields": ["text"]}}]', 3, 1),
(82, '2017-01-17 03:36:57', '11', 'Les Gendarmes', 2, '[{"changed": {"fields": ["text"]}}]', 3, 1),
(83, '2017-01-17 03:39:02', '9', 'Sunshine Mountain', 2, '[{"changed": {"fields": ["text"]}}]', 3, 1),
(84, '2017-01-17 03:39:26', '8', 'Elfin Lakes - Round Mountain', 2, '[{"changed": {"fields": ["text"]}}]', 3, 1),
(85, '2017-01-17 03:39:40', '7', 'Brew Hut', 2, '[]', 3, 1),
(86, '2017-01-17 03:39:58', '6', 'Brandywine', 2, '[{"changed": {"fields": ["text"]}}]', 3, 1),
(87, '2017-01-17 03:40:24', '5', 'Golden Ears Park', 2, '[{"changed": {"fields": ["text"]}}]', 3, 1),
(88, '2017-01-17 03:40:41', '4', 'Alouette Snowshoe', 2, '[{"changed": {"fields": ["text"]}}]', 3, 1),
(89, '2017-01-17 03:41:01', '3', 'Sumas Mountain Hike', 2, '[{"changed": {"fields": ["text"]}}]', 3, 1),
(90, '2017-01-17 03:43:00', '6', 'Brandywine', 2, '[{"changed": {"fields": ["desc", "likes"]}}]', 7, 1),
(91, '2017-01-17 03:43:44', '5', 'Black Tusk', 2, '[{"changed": {"fields": ["title", "desc", "likes"]}}]', 7, 1),
(92, '2017-01-17 03:44:35', '2', 'Mount Fee', 2, '[{"changed": {"fields": ["title", "desc", "likes"]}}]', 7, 1),
(93, '2017-01-17 03:45:09', '1', 'Alcoholic Traverse', 2, '[{"changed": {"fields": ["desc", "likes"]}}]', 7, 1),
(94, '2017-01-17 03:46:56', '7', 'Alcoholic Traverse', 1, '[{"added": {}}]', 7, 1),
(95, '2017-01-17 03:47:37', '8', 'Mt. Fee', 1, '[{"added": {}}]', 7, 1),
(96, '2017-01-17 03:48:23', '9', 'mountain cloud shot', 1, '[{"added": {}}]', 7, 1),
(97, '2017-01-17 03:49:04', '10', 'Ridge Walk', 1, '[{"added": {}}]', 7, 1),
(98, '2017-01-17 03:51:24', '11', 'Creek Crossing', 1, '[{"added": {}}]', 7, 1),
(99, '2017-01-17 04:16:10', '11', 'Creek Crossing', 2, '[{"changed": {"fields": ["likes", "likdisdif"]}}]', 7, 1),
(100, '2017-01-17 04:16:19', '10', 'Ridge Walk', 2, '[{"changed": {"fields": ["likdisdif"]}}]', 7, 1),
(101, '2017-01-17 04:16:25', '9', 'mountain cloud shot', 2, '[{"changed": {"fields": ["likdisdif"]}}]', 7, 1),
(102, '2017-01-17 04:16:33', '8', 'Mt. Fee', 2, '[{"changed": {"fields": ["likdisdif"]}}]', 7, 1),
(103, '2017-01-17 04:16:52', '7', 'Alcoholic Traverse', 2, '[{"changed": {"fields": ["likdisdif"]}}]', 7, 1),
(104, '2017-01-17 04:17:00', '6', 'Brandywine', 2, '[{"changed": {"fields": ["likdisdif"]}}]', 7, 1),
(105, '2017-01-17 04:17:08', '5', 'Black Tusk', 2, '[{"changed": {"fields": ["likdisdif"]}}]', 7, 1),
(106, '2017-01-17 04:17:16', '2', 'Mount Fee', 2, '[{"changed": {"fields": ["likdisdif"]}}]', 7, 1),
(107, '2017-01-17 04:17:22', '1', 'Alcoholic Traverse', 2, '[{"changed": {"fields": ["likdisdif"]}}]', 7, 1),
(108, '2017-01-19 01:21:23', '11', 'Les Gendarmes', 2, '[{"changed": {"fields": ["text", "writer"]}}]', 3, 1),
(109, '2017-01-19 01:21:38', '10', 'Icecap Peak', 2, '[{"changed": {"fields": ["text", "writer"]}}]', 3, 1),
(110, '2017-01-19 01:21:50', '9', 'Sunshine Mountain', 2, '[{"changed": {"fields": ["text", "writer"]}}]', 3, 1),
(111, '2017-01-19 01:22:03', '8', 'Elfin Lakes - Round Mountain', 2, '[{"changed": {"fields": ["text"]}}]', 3, 1),
(112, '2017-01-19 01:22:16', '7', 'Brew Hut', 2, '[{"changed": {"fields": ["text"]}}]', 3, 1),
(113, '2017-01-19 01:22:28', '6', 'Brandywine', 2, '[{"changed": {"fields": ["text", "writer"]}}]', 3, 1),
(114, '2017-01-19 01:22:41', '5', 'Golden Ears Park', 2, '[{"changed": {"fields": ["text", "writer"]}}]', 3, 1),
(115, '2017-01-19 01:22:55', '4', 'Alouette Snowshoe', 2, '[{"changed": {"fields": ["text", "writer"]}}]', 3, 1),
(116, '2017-01-19 01:23:08', '3', 'Sumas Mountain Hike', 2, '[{"changed": {"fields": ["text", "writer"]}}]', 3, 1),
(117, '2017-01-19 01:23:18', '2', 'Dam Mountain Snowshoe', 2, '[{"changed": {"fields": ["text"]}}]', 3, 1),
(118, '2017-01-19 01:24:30', '20', 'Norvan Falls', 2, '[{"changed": {"fields": ["directions", "details"]}}]', 5, 1),
(119, '2017-01-19 01:24:40', '19', 'Mount Seymour', 2, '[{"changed": {"fields": ["directions", "details"]}}]', 5, 1),
(120, '2017-01-19 01:24:49', '18', 'Mount Frome', 2, '[{"changed": {"fields": ["directions", "details"]}}]', 5, 1),
(121, '2017-01-19 01:24:56', '18', 'Mount Frome', 2, '[]', 5, 1),
(122, '2017-01-19 01:25:04', '17', 'Dam Mountain', 2, '[{"changed": {"fields": ["directions", "details"]}}]', 5, 1),
(123, '2017-01-19 01:25:13', '16', 'Coliseum Mountain', 2, '[{"changed": {"fields": ["directions", "details"]}}]', 5, 1),
(124, '2017-01-19 01:25:19', '16', 'Coliseum Mountain', 2, '[]', 5, 1),
(125, '2017-01-19 01:25:27', '15', 'BCMC Trail (Grouse Mountain)', 2, '[{"changed": {"fields": ["directions", "details"]}}]', 5, 1),
(126, '2017-01-19 01:25:36', '14', 'Alouette Mountain', 2, '[{"changed": {"fields": ["directions", "details"]}}]', 5, 1),
(127, '2017-01-19 01:25:45', '12', 'Solitude Glacier', 2, '[{"changed": {"fields": ["directions", "details"]}}]', 5, 1),
(128, '2017-01-19 01:25:56', '11', 'Phelix Creek', 2, '[{"changed": {"fields": ["directions", "details"]}}]', 5, 1),
(129, '2017-01-19 01:26:06', '10', 'Musical Bumps', 2, '[{"changed": {"fields": ["directions", "details"]}}]', 5, 1),
(130, '2017-01-19 01:26:21', '8', 'Empetrum', 2, '[{"changed": {"fields": ["directions", "details"]}}]', 5, 1),
(131, '2017-01-19 01:26:33', '7', 'Deeks Peak', 2, '[{"changed": {"fields": ["directions", "details"]}}]', 5, 1),
(132, '2017-01-19 01:26:46', '6', 'Brew Hut', 2, '[{"changed": {"fields": ["directions", "details"]}}]', 5, 1),
(133, '2017-01-19 01:27:00', '5', 'Brandywine Meadows', 2, '[{"changed": {"fields": ["directions", "details"]}}]', 5, 1),
(134, '2017-01-19 01:27:08', '4', 'Blowdown Pass', 2, '[{"changed": {"fields": ["directions", "details"]}}]', 5, 1),
(135, '2017-01-19 01:27:23', '3', 'Black Tusk', 2, '[{"changed": {"fields": ["directions", "details"]}}]', 5, 1),
(136, '2017-01-19 01:27:33', '2', 'Ben Lomond', 2, '[{"changed": {"fields": ["directions", "details"]}}]', 5, 1),
(137, '2017-01-19 01:28:42', '9', 'Metal Dome', 2, '[{"changed": {"fields": ["directions", "details"]}}]', 5, 1),
(138, '2017-01-19 01:29:44', '12', 'Rainbow', 2, '[{"changed": {"fields": ["text"]}}]', 3, 1);

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE IF NOT EXISTS `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=15 ;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(8, 'admin', 'logentry'),
(11, 'auth', 'group'),
(9, 'auth', 'permission'),
(10, 'auth', 'user'),
(12, 'contenttypes', 'contenttype'),
(6, 'imageotd', 'comment'),
(7, 'imageotd', 'imageotd'),
(2, 'reports', 'comment'),
(1, 'reports', 'participant'),
(3, 'reports', 'report'),
(13, 'sessions', 'session'),
(4, 'trails', 'comment'),
(5, 'trails', 'trail'),
(14, 'userprofile', 'userprofile');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE IF NOT EXISTS `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=46 ;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2016-12-01 21:20:51'),
(2, 'auth', '0001_initial', '2016-12-01 21:20:55'),
(3, 'admin', '0001_initial', '2016-12-01 21:20:56'),
(4, 'admin', '0002_logentry_remove_auto_add', '2016-12-01 21:20:56'),
(5, 'contenttypes', '0002_remove_content_type_name', '2016-12-01 21:20:57'),
(6, 'auth', '0002_alter_permission_name_max_length', '2016-12-01 21:20:57'),
(7, 'auth', '0003_alter_user_email_max_length', '2016-12-01 21:20:57'),
(8, 'auth', '0004_alter_user_username_opts', '2016-12-01 21:20:58'),
(9, 'auth', '0005_alter_user_last_login_null', '2016-12-01 21:20:58'),
(10, 'auth', '0006_require_contenttypes_0002', '2016-12-01 21:20:58'),
(11, 'auth', '0007_alter_validators_add_error_messages', '2016-12-01 21:20:58'),
(12, 'auth', '0008_alter_user_username_max_length', '2016-12-01 21:20:58'),
(13, 'imageotd', '0001_initial', '2016-12-01 21:20:59'),
(14, 'imageotd', '0002_auto_20161029_2253', '2016-12-01 21:21:00'),
(15, 'imageotd', '0003_auto_20161029_2254', '2016-12-01 21:21:01'),
(16, 'imageotd', '0004_auto_20161029_2342', '2016-12-01 21:21:02'),
(17, 'imageotd', '0005_auto_20161030_1659', '2016-12-01 21:21:02'),
(18, 'imageotd', '0006_imageotd_likdisdif', '2016-12-01 21:21:03'),
(19, 'imageotd', '0007_auto_20161102_0210', '2016-12-01 21:21:03'),
(20, 'reports', '0001_initial', '2016-12-01 21:21:03'),
(21, 'reports', '0002_auto_20160920_1845', '2016-12-01 21:21:04'),
(22, 'reports', '0003_auto_20160920_1909', '2016-12-01 21:21:06'),
(23, 'reports', '0004_auto_20160921_1925', '2016-12-01 21:21:07'),
(24, 'reports', '0005_auto_20160922_1846', '2016-12-01 21:21:08'),
(25, 'reports', '0006_auto_20160923_2048', '2016-12-01 21:21:09'),
(26, 'reports', '0007_auto_20160925_0015', '2016-12-01 21:21:10'),
(27, 'reports', '0008_auto_20160925_0043', '2016-12-01 21:21:11'),
(28, 'reports', '0009_reports_uname', '2016-12-01 21:21:12'),
(29, 'reports', '0010_reports_image', '2016-12-01 21:21:12'),
(30, 'reports', '0011_auto_20161023_2040', '2016-12-01 21:21:12'),
(31, 'reports', '0012_auto_20161024_0242', '2016-12-01 21:21:13'),
(32, 'reports', '0013_auto_20161113_1813', '2016-12-01 21:21:13'),
(33, 'reports', '0014_auto_20161115_1902', '2016-12-01 21:21:14'),
(34, 'reports', '0015_remove_report_image', '2016-12-01 21:21:14'),
(35, 'sessions', '0001_initial', '2016-12-01 21:21:15'),
(36, 'trails', '0001_initial', '2016-12-01 21:21:15'),
(37, 'trails', '0002_auto_20160920_1955', '2016-12-01 21:21:16'),
(38, 'trails', '0003_trail_time', '2016-12-01 21:21:16'),
(39, 'trails', '0004_auto_20160925_0149', '2016-12-01 21:21:18'),
(40, 'trails', '0005_auto_20160925_0200', '2016-12-01 21:21:19'),
(41, 'trails', '0006_trail_uname', '2016-12-01 21:21:19'),
(42, 'trails', '0007_trail_image', '2016-12-01 21:21:19'),
(43, 'userprofile', '0001_initial', '2016-12-01 21:21:20'),
(44, 'userprofile', '0002_auto_20161003_0001', '2016-12-01 21:21:20'),
(45, 'trails', '0008_auto_20161219_2218', '2016-12-19 22:19:28');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE IF NOT EXISTS `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_de54fa62` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('52i0oz2jbiocjf8sbr1o8almtbxmru1c', 'MWZlZDc1ZGQ1ZjhiYTkxMTNlOWVhYTZkYmY1ZTBkZDMxY2Y2NDkwMDp7InVsaSI6ImFkbWluIiwiX2F1dGhfdXNlcl9oYXNoIjoiZTA2YWFkNGViZjIxMWM0NTBkMWE5N2VhYjhlOThlZjhhOTU2YmQ1OCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6IjEifQ==', '2016-12-24 19:05:55'),
('hnfncnzheusha3a1xy0k2tfi2im6zn7m', 'Y2I3MzlmYjdkMTA5MDc0YzBlOTExMjQ0ZGQyY2Q0NTM2NTczYjg4Zjp7Il9hdXRoX3VzZXJfaGFzaCI6ImUwNmFhZDRlYmYyMTFjNDUwZDFhOTdlYWI4ZTk4ZWY4YTk1NmJkNTgiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=', '2017-01-02 21:16:00'),
('ivvxujuvffhhs2mnjaag31glgux9ylxg', 'MWZlZDc1ZGQ1ZjhiYTkxMTNlOWVhYTZkYmY1ZTBkZDMxY2Y2NDkwMDp7InVsaSI6ImFkbWluIiwiX2F1dGhfdXNlcl9oYXNoIjoiZTA2YWFkNGViZjIxMWM0NTBkMWE5N2VhYjhlOThlZjhhOTU2YmQ1OCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6IjEifQ==', '2016-12-30 19:15:26'),
('kw11bc5ogkjv75j7rnntnw4i33bdjpvb', 'Mzg0NjI1YzI1YzVmYmZhZjhjNzk1MTI4ZjllNzE3ZWE0OTg5NmU0NDp7InVsaSI6InRlc3QxIiwiX2F1dGhfdXNlcl9oYXNoIjoiOTk5N2E5NzIzMTdiMDBhODkzNTI5OGViN2IxZDk0ZWQ2N2NiZWEyMiIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6IjIifQ==', '2016-12-22 18:52:34'),
('lg5olmnb1nhzv9rgpp9empqnpufmxo1a', 'Y2I3MzlmYjdkMTA5MDc0YzBlOTExMjQ0ZGQyY2Q0NTM2NTczYjg4Zjp7Il9hdXRoX3VzZXJfaGFzaCI6ImUwNmFhZDRlYmYyMTFjNDUwZDFhOTdlYWI4ZTk4ZWY4YTk1NmJkNTgiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=', '2016-12-15 21:31:50'),
('oocg4v9hb76yrjlfej0z1h4jc0s27jdr', 'MWZlZDc1ZGQ1ZjhiYTkxMTNlOWVhYTZkYmY1ZTBkZDMxY2Y2NDkwMDp7InVsaSI6ImFkbWluIiwiX2F1dGhfdXNlcl9oYXNoIjoiZTA2YWFkNGViZjIxMWM0NTBkMWE5N2VhYjhlOThlZjhhOTU2YmQ1OCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6IjEifQ==', '2016-12-29 19:58:51'),
('qxksmrgt4fda54px0935hhsfjzr51q8s', 'MWZlZDc1ZGQ1ZjhiYTkxMTNlOWVhYTZkYmY1ZTBkZDMxY2Y2NDkwMDp7InVsaSI6ImFkbWluIiwiX2F1dGhfdXNlcl9oYXNoIjoiZTA2YWFkNGViZjIxMWM0NTBkMWE5N2VhYjhlOThlZjhhOTU2YmQ1OCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6IjEifQ==', '2016-12-19 20:13:17'),
('ytrahspswbm1axxbvmqzlfj3qdp4iug2', 'Y2I3MzlmYjdkMTA5MDc0YzBlOTExMjQ0ZGQyY2Q0NTM2NTczYjg4Zjp7Il9hdXRoX3VzZXJfaGFzaCI6ImUwNmFhZDRlYmYyMTFjNDUwZDFhOTdlYWI4ZTk4ZWY4YTk1NmJkNTgiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=', '2016-12-27 20:22:02'),
('z567pe334vssd9dpa7tnno7x2t2c2p6o', 'MWZlZDc1ZGQ1ZjhiYTkxMTNlOWVhYTZkYmY1ZTBkZDMxY2Y2NDkwMDp7InVsaSI6ImFkbWluIiwiX2F1dGhfdXNlcl9oYXNoIjoiZTA2YWFkNGViZjIxMWM0NTBkMWE5N2VhYjhlOThlZjhhOTU2YmQ1OCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6IjEifQ==', '2017-01-31 03:21:56');

-- --------------------------------------------------------

--
-- Table structure for table `imageotd_comment`
--

CREATE TABLE IF NOT EXISTS `imageotd_comment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content` longtext NOT NULL,
  `imageotd_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `imageotd_comment_6f78b20c` (`imageotd_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `imageotd_imageotd`
--

CREATE TABLE IF NOT EXISTS `imageotd_imageotd` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(70) NOT NULL,
  `image` varchar(100) NOT NULL,
  `date` date NOT NULL,
  `uname` varchar(30) NOT NULL,
  `desc` longtext NOT NULL,
  `dislikes` int(11) NOT NULL,
  `likes` int(11) NOT NULL,
  `likdisdif` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=13 ;

--
-- Dumping data for table `imageotd_imageotd`
--

INSERT INTO `imageotd_imageotd` (`id`, `title`, `image`, `date`, `uname`, `desc`, `dislikes`, `likes`, `likdisdif`) VALUES
(1, 'Alcoholic Traverse', 'imageotd/2016/12/01/DSCN8297.jpg', '2016-12-01', 'admin', 'start of the alcoholic traverse / trail to Brandywine Meadows', 0, 2, 2),
(2, 'Mount Fee', 'imageotd/2016/12/10/DSCN8284.jpg', '2016-12-10', 'admin', 'Mount Fee from the parking lot for the Alcoholic Traverse', 0, 1, 1),
(5, 'Black Tusk', 'imageotd/2016/12/10/DSCN8269.jpg', '2016-12-10', 'admin', 'Black Tusk from the parking lot for the Alcoholic Traverse', 0, 2, 2),
(6, 'Brandywine', 'imageotd/2017/01/15/DSCN8376.jpg', '2017-01-15', 'admin', 'The route to the summit of Brandywine from Brandywine Meadows', 0, 5, 5),
(7, 'Alcoholic Traverse', 'imageotd/2017/01/17/DSCN8463.jpg', '2017-01-17', 'admin', 'Boot skiing between Brandywine and Mt. Fee', 0, 8, 8),
(8, 'Mt. Fee', 'imageotd/2017/01/17/DSCN8482.jpg', '2017-01-17', 'admin', 'resting beyond Mount Fee', 0, 4, 4),
(9, 'mountain cloud shot', 'imageotd/2017/01/17/DSCN8534.jpg', '2017-01-17', 'admin', 'title says it all', 0, 1, 1),
(10, 'Ridge Walk', 'imageotd/2017/01/17/DSCN8613.jpg', '2017-01-17', 'admin', 'Alcoholic Traverse ridge walk', 0, 8, 8),
(11, 'Creek Crossing', 'imageotd/2017/01/17/DSCN8345_fjbn2Fi.jpg', '2017-01-17', 'admin', 'Alpine creek crossing in Brandywine Meadows', 0, 2, 2),
(12, 'Mountain Parking', 'imageotd/2017/01/17/DSCN8253.jpg', '2016-01-01', 'admin', 'Parking for the Alcoholic Traverse', 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `reports_comment`
--

CREATE TABLE IF NOT EXISTS `reports_comment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content` longtext NOT NULL,
  `report_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `reports_comment_6f78b20c` (`report_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `reports_comment`
--

INSERT INTO `reports_comment` (`id`, `content`, `report_id`) VALUES
(1, 'bjkbvuyvyuvuyygvbv', 1);

-- --------------------------------------------------------

--
-- Table structure for table `reports_participant`
--

CREATE TABLE IF NOT EXISTS `reports_participant` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `report_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `reports_participant_report_id_e6243534_uniq` (`report_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `reports_participant`
--

INSERT INTO `reports_participant` (`id`, `name`, `report_id`) VALUES
(1, 'Ben Heaps', 1),
(2, 'Roland Burton', 1),
(3, 'Carla Burton', 1);

-- --------------------------------------------------------

--
-- Table structure for table `reports_report`
--

CREATE TABLE IF NOT EXISTS `reports_report` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(70) NOT NULL,
  `writer` varchar(70) NOT NULL,
  `text` longtext NOT NULL,
  `date` date NOT NULL,
  `distance_coverred` varchar(70) NOT NULL,
  `elevation_gain` varchar(70) NOT NULL,
  `trip_area` varchar(70) NOT NULL,
  `dislikes` int(11) NOT NULL,
  `likes` int(11) NOT NULL,
  `uname` varchar(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=13 ;

--
-- Dumping data for table `reports_report`
--

INSERT INTO `reports_report` (`id`, `title`, `writer`, `text`, `date`, `distance_coverred`, `elevation_gain`, `trip_area`, `dislikes`, `likes`, `uname`) VALUES
(1, 'Alcoholic Traverse', 'Ben Heaps', '<p>This epic began with a bad mountain weather forecast, involving thunderstorms. Accepting the risks, the trip was planned; as the Alcoholic traverse is epic. The forecast called for storms but for only Saturday and Sunday in the afternoon, to be specific.</p>\r\n\r\n<p>Some alcoholics with obligations to be in Vancouver Sunday night, and/or working Friday made car shuttling interesting. After the Traverse, four alcoholics walked all the way to highway 99 from the Brew trailhead and two alcoholic drivers had to walk up the logging road to the brandywine 4wd parking area as the only car left at the brew side was a 2wd vehicle. For those that don&#39;t know, the Alcoholic Traverse starts at Brandywine and finishes at the Brew trailhead.</p>\r\n\r\n<p><img alt="" src="/media/uploads/2016/11/14/dscn8254.jpg" style="height:480px; width:640px" /></p>\r\n\r\n<p><img alt="" src="/media/uploads/2016/11/14/dscn8343.jpg" style="height:480px; width:640px" /></p>\r\n\r\n<p>Group one left camp around 6:30AM from Brandywine meadows Saturday morning, the fog followed us to the ridge where the panaroma included a few peaks above a cloud layer. We continued along the ridge to brandywine and two alcoholics summited Brandywine proper. Lots of up and down followed as we continued along the route.</p>\r\n\r\n<p><img alt="" src="/media/uploads/2016/11/14/dscn8415.jpg" style="height:480px; width:640px" /></p>\r\n\r\n<p>Group two began at 9 AM from the Brandywine parking, fast footed they caught up to group one around 2pm. Nearly camping at Brandywine-Fee col, Ben recalled a camping area further along the traverse. We sidehilled around the west side of Mt. Fee and found the campsite around 4pm. Around 6pm it rained for about 20 minutes but that was it for the night.</p>\r\n\r\n<p><img alt="" src="/media/uploads/2016/11/14/dscn8495.jpg" style="height:480px; width:640px" /></p>\r\n\r\n<p>Everyone began Sunday around 7:15AM. We proceeded around the west -&gt; southwest side of Fee to a ridge and we continued south along another ridge. There were two exposed cracks that needed to be conquerred. The conditions were clear with some clouds in the sky - but clear enough to get scorched.</p>\r\n\r\n<p><img alt="" src="/media/uploads/2016/11/14/dscn8613.jpg" style="height:480px; width:640px" /></p>\r\n\r\n<p>The next part of the alcoholic traverse took us east towards Brew hut through a series of ups and downs including Keg Mountain and Hopps Mountain - hence the name Alcoholic traverse; don&#39;t forget we started at Brandywine. Some alcoholics made it to brew hut around 3pm (estimated).</p>\r\n\r\n<p><img alt="" src="/media/uploads/2016/11/14/dscn8649.jpg" style="height:480px; width:640px" /></p>\r\n\r\n<p>Staying on the ridge was key, three years ago when I did the Alcoholic traverse we proceeded off the ridge into the valley after coming around Fee, staying on the ridge this time saved approximately 3 hours</p>\r\n\r\n<p>An excellent trip! Highly recommended in my opinion.</p>\r\n', '2016-12-01', '20km', '2500m', 'Brandywine - Squamish', 0, 3, 'admin'),
(2, 'Dam Mountain Snowshoe', 'ejain', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec egestas viverra tincidunt. Proin porttitor finibus facilisis. Donec at ultricies dolor. Maecenas sed magna magna. Morbi iaculis sed risus ut interdum. Donec at lectus ante. Aliquam consequat lorem vitae urna pellentesque, eget vestibulum velit vestibulum. Fusce id dui eu orci placerat sodales. Proin nec auctor orci. Sed ultricies neque erat, id auctor massa commodo eu. Quisque et justo odio. Nulla quis convallis sapien. Etiam maximus mauris et ante consequat, sit amet vestibulum nisi molestie. Fusce varius risus enim. In vel magna ac leo dignissim venenatis sit amet nec tortor. Suspendisse enim risus, pulvinar eu porta vitae, dictum et lectus.</p>\r\n\r\n<p>Integer turpis est, fringilla sed eros nec, commodo blandit nibh. Interdum et malesuada fames ac ante ipsum primis in faucibus. Quisque mollis eros eu ipsum semper pulvinar. Morbi erat magna, commodo sed velit nec, pharetra posuere magna. Vestibulum mi orci, tempor vitae congue eu, suscipit quis magna. Ut faucibus molestie augue ut porta. Vestibulum at consequat est. Suspendisse potenti. Vivamus vitae elit a erat commodo sagittis. Aliquam elementum luctus mi sed venenatis. Cras faucibus tellus arcu, eget laoreet nisi laoreet ut. Etiam lobortis ac ex vel semper. Morbi ac lacinia orci. Pellentesque eget tellus finibus, rutrum elit id, placerat odio. Sed in lacus odio. Curabitur sodales rhoncus efficitur.</p>\r\n\r\n<p>Integer vulputate euismod magna, ut suscipit mauris dictum ut. Pellentesque maximus elementum massa, sed vehicula neque volutpat eu. Nam quis arcu in velit molestie fermentum. Morbi ultrices ante ligula, vel mollis augue aliquet in. Nullam mattis urna et leo consequat, a vehicula ligula gravida. Suspendisse non lacus dapibus, mattis eros sit amet, commodo sem. Duis sit amet velit in augue condimentum scelerisque. Duis sodales sapien nibh.</p>', '2016-01-01', '', '', '', 0, 1, 'admin'),
(3, 'Sumas Mountain Hike', 'KARV', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec egestas viverra tincidunt. Proin porttitor finibus facilisis. Donec at ultricies dolor. Maecenas sed magna magna. Morbi iaculis sed risus ut interdum. Donec at lectus ante. Aliquam consequat lorem vitae urna pellentesque, eget vestibulum velit vestibulum. Fusce id dui eu orci placerat sodales. Proin nec auctor orci. Sed ultricies neque erat, id auctor massa commodo eu. Quisque et justo odio. Nulla quis convallis sapien. Etiam maximus mauris et ante consequat, sit amet vestibulum nisi molestie. Fusce varius risus enim. In vel magna ac leo dignissim venenatis sit amet nec tortor. Suspendisse enim risus, pulvinar eu porta vitae, dictum et lectus.</p>\r\n\r\n<p>Integer turpis est, fringilla sed eros nec, commodo blandit nibh. Interdum et malesuada fames ac ante ipsum primis in faucibus. Quisque mollis eros eu ipsum semper pulvinar. Morbi erat magna, commodo sed velit nec, pharetra posuere magna. Vestibulum mi orci, tempor vitae congue eu, suscipit quis magna. Ut faucibus molestie augue ut porta. Vestibulum at consequat est. Suspendisse potenti. Vivamus vitae elit a erat commodo sagittis. Aliquam elementum luctus mi sed venenatis. Cras faucibus tellus arcu, eget laoreet nisi laoreet ut. Etiam lobortis ac ex vel semper. Morbi ac lacinia orci. Pellentesque eget tellus finibus, rutrum elit id, placerat odio. Sed in lacus odio. Curabitur sodales rhoncus efficitur.</p>\r\n\r\n<p>Integer vulputate euismod magna, ut suscipit mauris dictum ut. Pellentesque maximus elementum massa, sed vehicula neque volutpat eu. Nam quis arcu in velit molestie fermentum. Morbi ultrices ante ligula, vel mollis augue aliquet in. Nullam mattis urna et leo consequat, a vehicula ligula gravida. Suspendisse non lacus dapibus, mattis eros sit amet, commodo sem. Duis sit amet velit in augue condimentum scelerisque. Duis sodales sapien nibh.</p>', '2016-01-01', '', '', '', 0, 0, ''),
(4, 'Alouette Snowshoe', 'active', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec egestas viverra tincidunt. Proin porttitor finibus facilisis. Donec at ultricies dolor. Maecenas sed magna magna. Morbi iaculis sed risus ut interdum. Donec at lectus ante. Aliquam consequat lorem vitae urna pellentesque, eget vestibulum velit vestibulum. Fusce id dui eu orci placerat sodales. Proin nec auctor orci. Sed ultricies neque erat, id auctor massa commodo eu. Quisque et justo odio. Nulla quis convallis sapien. Etiam maximus mauris et ante consequat, sit amet vestibulum nisi molestie. Fusce varius risus enim. In vel magna ac leo dignissim venenatis sit amet nec tortor. Suspendisse enim risus, pulvinar eu porta vitae, dictum et lectus.</p>\r\n\r\n<p>Integer turpis est, fringilla sed eros nec, commodo blandit nibh. Interdum et malesuada fames ac ante ipsum primis in faucibus. Quisque mollis eros eu ipsum semper pulvinar. Morbi erat magna, commodo sed velit nec, pharetra posuere magna. Vestibulum mi orci, tempor vitae congue eu, suscipit quis magna. Ut faucibus molestie augue ut porta. Vestibulum at consequat est. Suspendisse potenti. Vivamus vitae elit a erat commodo sagittis. Aliquam elementum luctus mi sed venenatis. Cras faucibus tellus arcu, eget laoreet nisi laoreet ut. Etiam lobortis ac ex vel semper. Morbi ac lacinia orci. Pellentesque eget tellus finibus, rutrum elit id, placerat odio. Sed in lacus odio. Curabitur sodales rhoncus efficitur.</p>\r\n\r\n<p>Integer vulputate euismod magna, ut suscipit mauris dictum ut. Pellentesque maximus elementum massa, sed vehicula neque volutpat eu. Nam quis arcu in velit molestie fermentum. Morbi ultrices ante ligula, vel mollis augue aliquet in. Nullam mattis urna et leo consequat, a vehicula ligula gravida. Suspendisse non lacus dapibus, mattis eros sit amet, commodo sem. Duis sit amet velit in augue condimentum scelerisque. Duis sodales sapien nibh.</p>', '2016-01-01', '', '', '', 0, 0, ''),
(5, 'Golden Ears Park', 'Wanderring', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec egestas viverra tincidunt. Proin porttitor finibus facilisis. Donec at ultricies dolor. Maecenas sed magna magna. Morbi iaculis sed risus ut interdum. Donec at lectus ante. Aliquam consequat lorem vitae urna pellentesque, eget vestibulum velit vestibulum. Fusce id dui eu orci placerat sodales. Proin nec auctor orci. Sed ultricies neque erat, id auctor massa commodo eu. Quisque et justo odio. Nulla quis convallis sapien. Etiam maximus mauris et ante consequat, sit amet vestibulum nisi molestie. Fusce varius risus enim. In vel magna ac leo dignissim venenatis sit amet nec tortor. Suspendisse enim risus, pulvinar eu porta vitae, dictum et lectus.</p>\r\n\r\n<p>Integer turpis est, fringilla sed eros nec, commodo blandit nibh. Interdum et malesuada fames ac ante ipsum primis in faucibus. Quisque mollis eros eu ipsum semper pulvinar. Morbi erat magna, commodo sed velit nec, pharetra posuere magna. Vestibulum mi orci, tempor vitae congue eu, suscipit quis magna. Ut faucibus molestie augue ut porta. Vestibulum at consequat est. Suspendisse potenti. Vivamus vitae elit a erat commodo sagittis. Aliquam elementum luctus mi sed venenatis. Cras faucibus tellus arcu, eget laoreet nisi laoreet ut. Etiam lobortis ac ex vel semper. Morbi ac lacinia orci. Pellentesque eget tellus finibus, rutrum elit id, placerat odio. Sed in lacus odio. Curabitur sodales rhoncus efficitur.</p>\r\n\r\n<p>Integer vulputate euismod magna, ut suscipit mauris dictum ut. Pellentesque maximus elementum massa, sed vehicula neque volutpat eu. Nam quis arcu in velit molestie fermentum. Morbi ultrices ante ligula, vel mollis augue aliquet in. Nullam mattis urna et leo consequat, a vehicula ligula gravida. Suspendisse non lacus dapibus, mattis eros sit amet, commodo sem. Duis sit amet velit in augue condimentum scelerisque. Duis sodales sapien nibh.</p>', '2016-01-01', '', '', '', 0, 0, ''),
(6, 'Brandywine', 'Mick', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec egestas viverra tincidunt. Proin porttitor finibus facilisis. Donec at ultricies dolor. Maecenas sed magna magna. Morbi iaculis sed risus ut interdum. Donec at lectus ante. Aliquam consequat lorem vitae urna pellentesque, eget vestibulum velit vestibulum. Fusce id dui eu orci placerat sodales. Proin nec auctor orci. Sed ultricies neque erat, id auctor massa commodo eu. Quisque et justo odio. Nulla quis convallis sapien. Etiam maximus mauris et ante consequat, sit amet vestibulum nisi molestie. Fusce varius risus enim. In vel magna ac leo dignissim venenatis sit amet nec tortor. Suspendisse enim risus, pulvinar eu porta vitae, dictum et lectus.</p>\r\n\r\n<p>Integer turpis est, fringilla sed eros nec, commodo blandit nibh. Interdum et malesuada fames ac ante ipsum primis in faucibus. Quisque mollis eros eu ipsum semper pulvinar. Morbi erat magna, commodo sed velit nec, pharetra posuere magna. Vestibulum mi orci, tempor vitae congue eu, suscipit quis magna. Ut faucibus molestie augue ut porta. Vestibulum at consequat est. Suspendisse potenti. Vivamus vitae elit a erat commodo sagittis. Aliquam elementum luctus mi sed venenatis. Cras faucibus tellus arcu, eget laoreet nisi laoreet ut. Etiam lobortis ac ex vel semper. Morbi ac lacinia orci. Pellentesque eget tellus finibus, rutrum elit id, placerat odio. Sed in lacus odio. Curabitur sodales rhoncus efficitur.</p>\r\n\r\n<p>Integer vulputate euismod magna, ut suscipit mauris dictum ut. Pellentesque maximus elementum massa, sed vehicula neque volutpat eu. Nam quis arcu in velit molestie fermentum. Morbi ultrices ante ligula, vel mollis augue aliquet in. Nullam mattis urna et leo consequat, a vehicula ligula gravida. Suspendisse non lacus dapibus, mattis eros sit amet, commodo sem. Duis sit amet velit in augue condimentum scelerisque. Duis sodales sapien nibh.</p>', '2016-01-01', '', '', '', 0, 0, ''),
(7, 'Brew Hut', 'Jeremy', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec egestas viverra tincidunt. Proin porttitor finibus facilisis. Donec at ultricies dolor. Maecenas sed magna magna. Morbi iaculis sed risus ut interdum. Donec at lectus ante. Aliquam consequat lorem vitae urna pellentesque, eget vestibulum velit vestibulum. Fusce id dui eu orci placerat sodales. Proin nec auctor orci. Sed ultricies neque erat, id auctor massa commodo eu. Quisque et justo odio. Nulla quis convallis sapien. Etiam maximus mauris et ante consequat, sit amet vestibulum nisi molestie. Fusce varius risus enim. In vel magna ac leo dignissim venenatis sit amet nec tortor. Suspendisse enim risus, pulvinar eu porta vitae, dictum et lectus.</p>\r\n\r\n<p>Integer turpis est, fringilla sed eros nec, commodo blandit nibh. Interdum et malesuada fames ac ante ipsum primis in faucibus. Quisque mollis eros eu ipsum semper pulvinar. Morbi erat magna, commodo sed velit nec, pharetra posuere magna. Vestibulum mi orci, tempor vitae congue eu, suscipit quis magna. Ut faucibus molestie augue ut porta. Vestibulum at consequat est. Suspendisse potenti. Vivamus vitae elit a erat commodo sagittis. Aliquam elementum luctus mi sed venenatis. Cras faucibus tellus arcu, eget laoreet nisi laoreet ut. Etiam lobortis ac ex vel semper. Morbi ac lacinia orci. Pellentesque eget tellus finibus, rutrum elit id, placerat odio. Sed in lacus odio. Curabitur sodales rhoncus efficitur.</p>\r\n\r\n<p>Integer vulputate euismod magna, ut suscipit mauris dictum ut. Pellentesque maximus elementum massa, sed vehicula neque volutpat eu. Nam quis arcu in velit molestie fermentum. Morbi ultrices ante ligula, vel mollis augue aliquet in. Nullam mattis urna et leo consequat, a vehicula ligula gravida. Suspendisse non lacus dapibus, mattis eros sit amet, commodo sem. Duis sit amet velit in augue condimentum scelerisque. Duis sodales sapien nibh.</p>', '2016-01-01', '', '', '', 0, 0, ''),
(8, 'Elfin Lakes - Round Mountain', 'Rex', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec egestas viverra tincidunt. Proin porttitor finibus facilisis. Donec at ultricies dolor. Maecenas sed magna magna. Morbi iaculis sed risus ut interdum. Donec at lectus ante. Aliquam consequat lorem vitae urna pellentesque, eget vestibulum velit vestibulum. Fusce id dui eu orci placerat sodales. Proin nec auctor orci. Sed ultricies neque erat, id auctor massa commodo eu. Quisque et justo odio. Nulla quis convallis sapien. Etiam maximus mauris et ante consequat, sit amet vestibulum nisi molestie. Fusce varius risus enim. In vel magna ac leo dignissim venenatis sit amet nec tortor. Suspendisse enim risus, pulvinar eu porta vitae, dictum et lectus.</p>\r\n\r\n<p>Integer turpis est, fringilla sed eros nec, commodo blandit nibh. Interdum et malesuada fames ac ante ipsum primis in faucibus. Quisque mollis eros eu ipsum semper pulvinar. Morbi erat magna, commodo sed velit nec, pharetra posuere magna. Vestibulum mi orci, tempor vitae congue eu, suscipit quis magna. Ut faucibus molestie augue ut porta. Vestibulum at consequat est. Suspendisse potenti. Vivamus vitae elit a erat commodo sagittis. Aliquam elementum luctus mi sed venenatis. Cras faucibus tellus arcu, eget laoreet nisi laoreet ut. Etiam lobortis ac ex vel semper. Morbi ac lacinia orci. Pellentesque eget tellus finibus, rutrum elit id, placerat odio. Sed in lacus odio. Curabitur sodales rhoncus efficitur.</p>\r\n\r\n<p>Integer vulputate euismod magna, ut suscipit mauris dictum ut. Pellentesque maximus elementum massa, sed vehicula neque volutpat eu. Nam quis arcu in velit molestie fermentum. Morbi ultrices ante ligula, vel mollis augue aliquet in. Nullam mattis urna et leo consequat, a vehicula ligula gravida. Suspendisse non lacus dapibus, mattis eros sit amet, commodo sem. Duis sit amet velit in augue condimentum scelerisque. Duis sodales sapien nibh.</p>', '2015-01-01', '', '', '', 0, 0, ''),
(9, 'Sunshine Mountain', 'simon', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec egestas viverra tincidunt. Proin porttitor finibus facilisis. Donec at ultricies dolor. Maecenas sed magna magna. Morbi iaculis sed risus ut interdum. Donec at lectus ante. Aliquam consequat lorem vitae urna pellentesque, eget vestibulum velit vestibulum. Fusce id dui eu orci placerat sodales. Proin nec auctor orci. Sed ultricies neque erat, id auctor massa commodo eu. Quisque et justo odio. Nulla quis convallis sapien. Etiam maximus mauris et ante consequat, sit amet vestibulum nisi molestie. Fusce varius risus enim. In vel magna ac leo dignissim venenatis sit amet nec tortor. Suspendisse enim risus, pulvinar eu porta vitae, dictum et lectus.</p>\r\n\r\n<p>Integer turpis est, fringilla sed eros nec, commodo blandit nibh. Interdum et malesuada fames ac ante ipsum primis in faucibus. Quisque mollis eros eu ipsum semper pulvinar. Morbi erat magna, commodo sed velit nec, pharetra posuere magna. Vestibulum mi orci, tempor vitae congue eu, suscipit quis magna. Ut faucibus molestie augue ut porta. Vestibulum at consequat est. Suspendisse potenti. Vivamus vitae elit a erat commodo sagittis. Aliquam elementum luctus mi sed venenatis. Cras faucibus tellus arcu, eget laoreet nisi laoreet ut. Etiam lobortis ac ex vel semper. Morbi ac lacinia orci. Pellentesque eget tellus finibus, rutrum elit id, placerat odio. Sed in lacus odio. Curabitur sodales rhoncus efficitur.</p>\r\n\r\n<p>Integer vulputate euismod magna, ut suscipit mauris dictum ut. Pellentesque maximus elementum massa, sed vehicula neque volutpat eu. Nam quis arcu in velit molestie fermentum. Morbi ultrices ante ligula, vel mollis augue aliquet in. Nullam mattis urna et leo consequat, a vehicula ligula gravida. Suspendisse non lacus dapibus, mattis eros sit amet, commodo sem. Duis sit amet velit in augue condimentum scelerisque. Duis sodales sapien nibh.</p>', '2015-01-01', '', '', '', 0, 0, ''),
(10, 'Icecap Peak', 'Karv', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec egestas viverra tincidunt. Proin porttitor finibus facilisis. Donec at ultricies dolor. Maecenas sed magna magna. Morbi iaculis sed risus ut interdum. Donec at lectus ante. Aliquam consequat lorem vitae urna pellentesque, eget vestibulum velit vestibulum. Fusce id dui eu orci placerat sodales. Proin nec auctor orci. Sed ultricies neque erat, id auctor massa commodo eu. Quisque et justo odio. Nulla quis convallis sapien. Etiam maximus mauris et ante consequat, sit amet vestibulum nisi molestie. Fusce varius risus enim. In vel magna ac leo dignissim venenatis sit amet nec tortor. Suspendisse enim risus, pulvinar eu porta vitae, dictum et lectus.</p>\r\n\r\n<p>Integer turpis est, fringilla sed eros nec, commodo blandit nibh. Interdum et malesuada fames ac ante ipsum primis in faucibus. Quisque mollis eros eu ipsum semper pulvinar. Morbi erat magna, commodo sed velit nec, pharetra posuere magna. Vestibulum mi orci, tempor vitae congue eu, suscipit quis magna. Ut faucibus molestie augue ut porta. Vestibulum at consequat est. Suspendisse potenti. Vivamus vitae elit a erat commodo sagittis. Aliquam elementum luctus mi sed venenatis. Cras faucibus tellus arcu, eget laoreet nisi laoreet ut. Etiam lobortis ac ex vel semper. Morbi ac lacinia orci. Pellentesque eget tellus finibus, rutrum elit id, placerat odio. Sed in lacus odio. Curabitur sodales rhoncus efficitur.</p>\r\n\r\n<p>Integer vulputate euismod magna, ut suscipit mauris dictum ut. Pellentesque maximus elementum massa, sed vehicula neque volutpat eu. Nam quis arcu in velit molestie fermentum. Morbi ultrices ante ligula, vel mollis augue aliquet in. Nullam mattis urna et leo consequat, a vehicula ligula gravida. Suspendisse non lacus dapibus, mattis eros sit amet, commodo sem. Duis sit amet velit in augue condimentum scelerisque. Duis sodales sapien nibh.</p>', '2015-01-01', '', '', '', 0, 0, ''),
(11, 'Les Gendarmes', 'muske', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec egestas viverra tincidunt. Proin porttitor finibus facilisis. Donec at ultricies dolor. Maecenas sed magna magna. Morbi iaculis sed risus ut interdum. Donec at lectus ante. Aliquam consequat lorem vitae urna pellentesque, eget vestibulum velit vestibulum. Fusce id dui eu orci placerat sodales. Proin nec auctor orci. Sed ultricies neque erat, id auctor massa commodo eu. Quisque et justo odio. Nulla quis convallis sapien. Etiam maximus mauris et ante consequat, sit amet vestibulum nisi molestie. Fusce varius risus enim. In vel magna ac leo dignissim venenatis sit amet nec tortor. Suspendisse enim risus, pulvinar eu porta vitae, dictum et lectus.</p>\r\n\r\n<p>Integer turpis est, fringilla sed eros nec, commodo blandit nibh. Interdum et malesuada fames ac ante ipsum primis in faucibus. Quisque mollis eros eu ipsum semper pulvinar. Morbi erat magna, commodo sed velit nec, pharetra posuere magna. Vestibulum mi orci, tempor vitae congue eu, suscipit quis magna. Ut faucibus molestie augue ut porta. Vestibulum at consequat est. Suspendisse potenti. Vivamus vitae elit a erat commodo sagittis. Aliquam elementum luctus mi sed venenatis. Cras faucibus tellus arcu, eget laoreet nisi laoreet ut. Etiam lobortis ac ex vel semper. Morbi ac lacinia orci. Pellentesque eget tellus finibus, rutrum elit id, placerat odio. Sed in lacus odio. Curabitur sodales rhoncus efficitur.</p>\r\n\r\n<p>Integer vulputate euismod magna, ut suscipit mauris dictum ut. Pellentesque maximus elementum massa, sed vehicula neque volutpat eu. Nam quis arcu in velit molestie fermentum. Morbi ultrices ante ligula, vel mollis augue aliquet in. Nullam mattis urna et leo consequat, a vehicula ligula gravida. Suspendisse non lacus dapibus, mattis eros sit amet, commodo sem. Duis sit amet velit in augue condimentum scelerisque. Duis sodales sapien nibh.</p>', '2015-01-01', '', '', '', 0, 0, ''),
(12, 'Rainbow', 'gutis', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec egestas viverra tincidunt. Proin porttitor finibus facilisis. Donec at ultricies dolor. Maecenas sed magna magna. Morbi iaculis sed risus ut interdum. Donec at lectus ante. Aliquam consequat lorem vitae urna pellentesque, eget vestibulum velit vestibulum. Fusce id dui eu orci placerat sodales. Proin nec auctor orci. Sed ultricies neque erat, id auctor massa commodo eu. Quisque et justo odio. Nulla quis convallis sapien. Etiam maximus mauris et ante consequat, sit amet vestibulum nisi molestie. Fusce varius risus enim. In vel magna ac leo dignissim venenatis sit amet nec tortor. Suspendisse enim risus, pulvinar eu porta vitae, dictum et lectus.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec egestas viverra tincidunt. Proin porttitor finibus facilisis. Donec at ultricies dolor. Maecenas sed magna magna. Morbi iaculis sed risus ut interdum. Donec at lectus ante. Aliquam consequat lorem vitae urna pellentesque, eget vestibulum velit vestibulum. Fusce id dui eu orci placerat sodales. Proin nec auctor orci. Sed ultricies neque erat, id auctor massa commodo eu. Quisque et justo odio. Nulla quis convallis sapien. Etiam maximus mauris et ante consequat, sit amet vestibulum nisi molestie. Fusce varius risus enim. In vel magna ac leo dignissim venenatis sit amet nec tortor. Suspendisse enim risus, pulvinar eu porta vitae, dictum et lectus.</p>', '2015-01-01', '', '', '', 0, 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `trails_comment`
--

CREATE TABLE IF NOT EXISTS `trails_comment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content` longtext NOT NULL,
  `trail_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `trails_comment_6f78b20c` (`trail_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `trails_comment`
--

INSERT INTO `trails_comment` (`id`, `content`, `trail_id`) VALUES
(1, 'comment', 14),
(2, 'test comment', 14);

-- --------------------------------------------------------

--
-- Table structure for table `trails_trail`
--

CREATE TABLE IF NOT EXISTS `trails_trail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `details` longtext NOT NULL,
  `writer` varchar(200) NOT NULL,
  `title` varchar(200) NOT NULL,
  `activity` varchar(200) NOT NULL,
  `season` varchar(200) NOT NULL,
  `trip_area` varchar(200) NOT NULL,
  `elevation_gain` varchar(200) NOT NULL,
  `distance_coverred` varchar(200) NOT NULL,
  `directions` longtext NOT NULL,
  `time` varchar(200) NOT NULL,
  `dislikes` int(11) NOT NULL,
  `likes` int(11) NOT NULL,
  `uname` varchar(20) NOT NULL,
  `image` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=21 ;

--
-- Dumping data for table `trails_trail`
--

INSERT INTO `trails_trail` (`id`, `details`, `writer`, `title`, `activity`, `season`, `trip_area`, `elevation_gain`, `distance_coverred`, `directions`, `time`, `dislikes`, `likes`, `uname`, `image`) VALUES
(2, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec egestas viverra tincidunt. Proin porttitor finibus facilisis. Donec at ultricies dolor. Maecenas sed magna magna. Morbi iaculis sed risus ut interdum. Donec at lectus ante. Aliquam consequat lorem vitae urna pellentesque, eget vestibulum velit vestibulum. Fusce id dui eu orci placerat sodales. Proin nec auctor orci. Sed ultricies neque erat, id auctor massa commodo eu. Quisque et justo odio. Nulla quis convallis sapien. Etiam maximus mauris et ante consequat, sit amet vestibulum nisi molestie. Fusce varius risus enim. In vel magna ac leo dignissim venenatis sit amet nec tortor. Suspendisse enim risus, pulvinar eu porta vitae, dictum et lectus.', 'clubtread', 'Ben Lomond', '', '', '', '884m', '14.5 km', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec egestas viverra tincidunt. Proin porttitor finibus facilisis. Donec at ultricies dolor. Maecenas sed magna magna. Morbi iaculis sed risus ut interdum. Donec at lectus ante. Aliquam consequat lorem vitae urna pellentesque, eget vestibulum velit vestibulum. Fusce id dui eu orci placerat sodales. Proin nec auctor orci. Sed ultricies neque erat, id auctor massa commodo eu. Quisque et justo odio. Nulla quis convallis sapien. Etiam maximus mauris et ante consequat, sit amet vestibulum nisi molestie. Fusce varius risus enim. In vel magna ac leo dignissim venenatis sit amet nec tortor. Suspendisse enim risus, pulvinar eu porta vitae, dictum et lectus.', '8 hours', 0, 0, '', ''),
(3, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec egestas viverra tincidunt. Proin porttitor finibus facilisis. Donec at ultricies dolor. Maecenas sed magna magna. Morbi iaculis sed risus ut interdum. Donec at lectus ante. Aliquam consequat lorem vitae urna pellentesque, eget vestibulum velit vestibulum. Fusce id dui eu orci placerat sodales. Proin nec auctor orci. Sed ultricies neque erat, id auctor massa commodo eu. Quisque et justo odio. Nulla quis convallis sapien. Etiam maximus mauris et ante consequat, sit amet vestibulum nisi molestie. Fusce varius risus enim. In vel magna ac leo dignissim venenatis sit amet nec tortor. Suspendisse enim risus, pulvinar eu porta vitae, dictum et lectus.', 'clubtread', 'Black Tusk', '', '', '', '1735m', '29 km', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec egestas viverra tincidunt. Proin porttitor finibus facilisis. Donec at ultricies dolor. Maecenas sed magna magna. Morbi iaculis sed risus ut interdum. Donec at lectus ante. Aliquam consequat lorem vitae urna pellentesque, eget vestibulum velit vestibulum. Fusce id dui eu orci placerat sodales. Proin nec auctor orci. Sed ultricies neque erat, id auctor massa commodo eu. Quisque et justo odio. Nulla quis convallis sapien. Etiam maximus mauris et ante consequat, sit amet vestibulum nisi molestie. Fusce varius risus enim. In vel magna ac leo dignissim venenatis sit amet nec tortor. Suspendisse enim risus, pulvinar eu porta vitae, dictum et lectus.', '10 hours', 0, 0, '', ''),
(4, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec egestas viverra tincidunt. Proin porttitor finibus facilisis. Donec at ultricies dolor. Maecenas sed magna magna. Morbi iaculis sed risus ut interdum. Donec at lectus ante. Aliquam consequat lorem vitae urna pellentesque, eget vestibulum velit vestibulum. Fusce id dui eu orci placerat sodales. Proin nec auctor orci. Sed ultricies neque erat, id auctor massa commodo eu. Quisque et justo odio. Nulla quis convallis sapien. Etiam maximus mauris et ante consequat, sit amet vestibulum nisi molestie. Fusce varius risus enim. In vel magna ac leo dignissim venenatis sit amet nec tortor. Suspendisse enim risus, pulvinar eu porta vitae, dictum et lectus.', 'clubtread', 'Blowdown Pass', '', '', '', '425m', '12km', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec egestas viverra tincidunt. Proin porttitor finibus facilisis. Donec at ultricies dolor. Maecenas sed magna magna. Morbi iaculis sed risus ut interdum. Donec at lectus ante. Aliquam consequat lorem vitae urna pellentesque, eget vestibulum velit vestibulum. Fusce id dui eu orci placerat sodales. Proin nec auctor orci. Sed ultricies neque erat, id auctor massa commodo eu. Quisque et justo odio. Nulla quis convallis sapien. Etiam maximus mauris et ante consequat, sit amet vestibulum nisi molestie. Fusce varius risus enim. In vel magna ac leo dignissim venenatis sit amet nec tortor. Suspendisse enim risus, pulvinar eu porta vitae, dictum et lectus.', '6 hours', 0, 0, '', ''),
(5, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec egestas viverra tincidunt. Proin porttitor finibus facilisis. Donec at ultricies dolor. Maecenas sed magna magna. Morbi iaculis sed risus ut interdum. Donec at lectus ante. Aliquam consequat lorem vitae urna pellentesque, eget vestibulum velit vestibulum. Fusce id dui eu orci placerat sodales. Proin nec auctor orci. Sed ultricies neque erat, id auctor massa commodo eu. Quisque et justo odio. Nulla quis convallis sapien. Etiam maximus mauris et ante consequat, sit amet vestibulum nisi molestie. Fusce varius risus enim. In vel magna ac leo dignissim venenatis sit amet nec tortor. Suspendisse enim risus, pulvinar eu porta vitae, dictum et lectus.', 'clubtread', 'Brandywine Meadows', '', '', '', '550m', '6km', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec egestas viverra tincidunt. Proin porttitor finibus facilisis. Donec at ultricies dolor. Maecenas sed magna magna. Morbi iaculis sed risus ut interdum. Donec at lectus ante. Aliquam consequat lorem vitae urna pellentesque, eget vestibulum velit vestibulum. Fusce id dui eu orci placerat sodales. Proin nec auctor orci. Sed ultricies neque erat, id auctor massa commodo eu. Quisque et justo odio. Nulla quis convallis sapien. Etiam maximus mauris et ante consequat, sit amet vestibulum nisi molestie. Fusce varius risus enim. In vel magna ac leo dignissim venenatis sit amet nec tortor. Suspendisse enim risus, pulvinar eu porta vitae, dictum et lectus.', '3 hours', 0, 0, '', ''),
(6, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec egestas viverra tincidunt. Proin porttitor finibus facilisis. Donec at ultricies dolor. Maecenas sed magna magna. Morbi iaculis sed risus ut interdum. Donec at lectus ante. Aliquam consequat lorem vitae urna pellentesque, eget vestibulum velit vestibulum. Fusce id dui eu orci placerat sodales. Proin nec auctor orci. Sed ultricies neque erat, id auctor massa commodo eu. Quisque et justo odio. Nulla quis convallis sapien. Etiam maximus mauris et ante consequat, sit amet vestibulum nisi molestie. Fusce varius risus enim. In vel magna ac leo dignissim venenatis sit amet nec tortor. Suspendisse enim risus, pulvinar eu porta vitae, dictum et lectus.', 'clubtread', 'Brew Hut', '', '', '', '1280m', '18km', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec egestas viverra tincidunt. Proin porttitor finibus facilisis. Donec at ultricies dolor. Maecenas sed magna magna. Morbi iaculis sed risus ut interdum. Donec at lectus ante. Aliquam consequat lorem vitae urna pellentesque, eget vestibulum velit vestibulum. Fusce id dui eu orci placerat sodales. Proin nec auctor orci. Sed ultricies neque erat, id auctor massa commodo eu. Quisque et justo odio. Nulla quis convallis sapien. Etiam maximus mauris et ante consequat, sit amet vestibulum nisi molestie. Fusce varius risus enim. In vel magna ac leo dignissim venenatis sit amet nec tortor. Suspendisse enim risus, pulvinar eu porta vitae, dictum et lectus.', '9 hours', 0, 0, '', ''),
(7, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec egestas viverra tincidunt. Proin porttitor finibus facilisis. Donec at ultricies dolor. Maecenas sed magna magna. Morbi iaculis sed risus ut interdum. Donec at lectus ante. Aliquam consequat lorem vitae urna pellentesque, eget vestibulum velit vestibulum. Fusce id dui eu orci placerat sodales. Proin nec auctor orci. Sed ultricies neque erat, id auctor massa commodo eu. Quisque et justo odio. Nulla quis convallis sapien. Etiam maximus mauris et ante consequat, sit amet vestibulum nisi molestie. Fusce varius risus enim. In vel magna ac leo dignissim venenatis sit amet nec tortor. Suspendisse enim risus, pulvinar eu porta vitae, dictum et lectus.', 'clubtread', 'Deeks Peak', '', '', '', '1605m', '16km', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec egestas viverra tincidunt. Proin porttitor finibus facilisis. Donec at ultricies dolor. Maecenas sed magna magna. Morbi iaculis sed risus ut interdum. Donec at lectus ante. Aliquam consequat lorem vitae urna pellentesque, eget vestibulum velit vestibulum. Fusce id dui eu orci placerat sodales. Proin nec auctor orci. Sed ultricies neque erat, id auctor massa commodo eu. Quisque et justo odio. Nulla quis convallis sapien. Etiam maximus mauris et ante consequat, sit amet vestibulum nisi molestie. Fusce varius risus enim. In vel magna ac leo dignissim venenatis sit amet nec tortor. Suspendisse enim risus, pulvinar eu porta vitae, dictum et lectus.', '8 hours', 0, 0, '', ''),
(8, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec egestas viverra tincidunt. Proin porttitor finibus facilisis. Donec at ultricies dolor. Maecenas sed magna magna. Morbi iaculis sed risus ut interdum. Donec at lectus ante. Aliquam consequat lorem vitae urna pellentesque, eget vestibulum velit vestibulum. Fusce id dui eu orci placerat sodales. Proin nec auctor orci. Sed ultricies neque erat, id auctor massa commodo eu. Quisque et justo odio. Nulla quis convallis sapien. Etiam maximus mauris et ante consequat, sit amet vestibulum nisi molestie. Fusce varius risus enim. In vel magna ac leo dignissim venenatis sit amet nec tortor. Suspendisse enim risus, pulvinar eu porta vitae, dictum et lectus.', 'clubtread', 'Empetrum', '', '', '', '1405m', '33km', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec egestas viverra tincidunt. Proin porttitor finibus facilisis. Donec at ultricies dolor. Maecenas sed magna magna. Morbi iaculis sed risus ut interdum. Donec at lectus ante. Aliquam consequat lorem vitae urna pellentesque, eget vestibulum velit vestibulum. Fusce id dui eu orci placerat sodales. Proin nec auctor orci. Sed ultricies neque erat, id auctor massa commodo eu. Quisque et justo odio. Nulla quis convallis sapien. Etiam maximus mauris et ante consequat, sit amet vestibulum nisi molestie. Fusce varius risus enim. In vel magna ac leo dignissim venenatis sit amet nec tortor. Suspendisse enim risus, pulvinar eu porta vitae, dictum et lectus.', '9 hours', 0, 0, '', ''),
(9, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec egestas viverra tincidunt. Proin porttitor finibus facilisis. Donec at ultricies dolor. Maecenas sed magna magna. Morbi iaculis sed risus ut interdum. Donec at lectus ante. Aliquam consequat lorem vitae urna pellentesque, eget vestibulum velit vestibulum. Fusce id dui eu orci placerat sodales. Proin nec auctor orci. Sed ultricies neque erat, id auctor massa commodo eu. Quisque et justo odio. Nulla quis convallis sapien. Etiam maximus mauris et ante consequat, sit amet vestibulum nisi molestie. Fusce varius risus enim. In vel magna ac leo dignissim venenatis sit amet nec tortor. Suspendisse enim risus, pulvinar eu porta vitae, dictum et lectus.', 'clubtread', 'Metal Dome', '', '', '', '800m', '10km', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec egestas viverra tincidunt. Proin porttitor finibus facilisis. Donec at ultricies dolor. Maecenas sed magna magna. Morbi iaculis sed risus ut interdum. Donec at lectus ante. Aliquam consequat lorem vitae urna pellentesque, eget vestibulum velit vestibulum. Fusce id dui eu orci placerat sodales. Proin nec auctor orci. Sed ultricies neque erat, id auctor massa commodo eu. Quisque et justo odio. Nulla quis convallis sapien. Etiam maximus mauris et ante consequat, sit amet vestibulum nisi molestie. Fusce varius risus enim. In vel magna ac leo dignissim venenatis sit amet nec tortor. Suspendisse enim risus, pulvinar eu porta vitae, dictum et lectus.', '5 hours', 0, 0, '', ''),
(10, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec egestas viverra tincidunt. Proin porttitor finibus facilisis. Donec at ultricies dolor. Maecenas sed magna magna. Morbi iaculis sed risus ut interdum. Donec at lectus ante. Aliquam consequat lorem vitae urna pellentesque, eget vestibulum velit vestibulum. Fusce id dui eu orci placerat sodales. Proin nec auctor orci. Sed ultricies neque erat, id auctor massa commodo eu. Quisque et justo odio. Nulla quis convallis sapien. Etiam maximus mauris et ante consequat, sit amet vestibulum nisi molestie. Fusce varius risus enim. In vel magna ac leo dignissim venenatis sit amet nec tortor. Suspendisse enim risus, pulvinar eu porta vitae, dictum et lectus.', 'clubtread', 'Musical Bumps', '', '', '', '305 m', '11.6 km', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec egestas viverra tincidunt. Proin porttitor finibus facilisis. Donec at ultricies dolor. Maecenas sed magna magna. Morbi iaculis sed risus ut interdum. Donec at lectus ante. Aliquam consequat lorem vitae urna pellentesque, eget vestibulum velit vestibulum. Fusce id dui eu orci placerat sodales. Proin nec auctor orci. Sed ultricies neque erat, id auctor massa commodo eu. Quisque et justo odio. Nulla quis convallis sapien. Etiam maximus mauris et ante consequat, sit amet vestibulum nisi molestie. Fusce varius risus enim. In vel magna ac leo dignissim venenatis sit amet nec tortor. Suspendisse enim risus, pulvinar eu porta vitae, dictum et lectus.', '3-5 hours', 0, 0, '', ''),
(11, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec egestas viverra tincidunt. Proin porttitor finibus facilisis. Donec at ultricies dolor. Maecenas sed magna magna. Morbi iaculis sed risus ut interdum. Donec at lectus ante. Aliquam consequat lorem vitae urna pellentesque, eget vestibulum velit vestibulum. Fusce id dui eu orci placerat sodales. Proin nec auctor orci. Sed ultricies neque erat, id auctor massa commodo eu. Quisque et justo odio. Nulla quis convallis sapien. Etiam maximus mauris et ante consequat, sit amet vestibulum nisi molestie. Fusce varius risus enim. In vel magna ac leo dignissim venenatis sit amet nec tortor. Suspendisse enim risus, pulvinar eu porta vitae, dictum et lectus.', 'clubtread', 'Phelix Creek', '', '', '', '945m', '18.2km', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec egestas viverra tincidunt. Proin porttitor finibus facilisis. Donec at ultricies dolor. Maecenas sed magna magna. Morbi iaculis sed risus ut interdum. Donec at lectus ante. Aliquam consequat lorem vitae urna pellentesque, eget vestibulum velit vestibulum. Fusce id dui eu orci placerat sodales. Proin nec auctor orci. Sed ultricies neque erat, id auctor massa commodo eu. Quisque et justo odio. Nulla quis convallis sapien. Etiam maximus mauris et ante consequat, sit amet vestibulum nisi molestie. Fusce varius risus enim. In vel magna ac leo dignissim venenatis sit amet nec tortor. Suspendisse enim risus, pulvinar eu porta vitae, dictum et lectus.', '8 hours', 0, 0, '', ''),
(12, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec egestas viverra tincidunt. Proin porttitor finibus facilisis. Donec at ultricies dolor. Maecenas sed magna magna. Morbi iaculis sed risus ut interdum. Donec at lectus ante. Aliquam consequat lorem vitae urna pellentesque, eget vestibulum velit vestibulum. Fusce id dui eu orci placerat sodales. Proin nec auctor orci. Sed ultricies neque erat, id auctor massa commodo eu. Quisque et justo odio. Nulla quis convallis sapien. Etiam maximus mauris et ante consequat, sit amet vestibulum nisi molestie. Fusce varius risus enim. In vel magna ac leo dignissim venenatis sit amet nec tortor. Suspendisse enim risus, pulvinar eu porta vitae, dictum et lectus.', 'clubtread', 'Solitude Glacier', '', '', '', '164m', '9km', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec egestas viverra tincidunt. Proin porttitor finibus facilisis. Donec at ultricies dolor. Maecenas sed magna magna. Morbi iaculis sed risus ut interdum. Donec at lectus ante. Aliquam consequat lorem vitae urna pellentesque, eget vestibulum velit vestibulum. Fusce id dui eu orci placerat sodales. Proin nec auctor orci. Sed ultricies neque erat, id auctor massa commodo eu. Quisque et justo odio. Nulla quis convallis sapien. Etiam maximus mauris et ante consequat, sit amet vestibulum nisi molestie. Fusce varius risus enim. In vel magna ac leo dignissim venenatis sit amet nec tortor. Suspendisse enim risus, pulvinar eu porta vitae, dictum et lectus.', '3-5 hours', 0, 0, '', ''),
(14, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec egestas viverra tincidunt. Proin porttitor finibus facilisis. Donec at ultricies dolor. Maecenas sed magna magna. Morbi iaculis sed risus ut interdum. Donec at lectus ante. Aliquam consequat lorem vitae urna pellentesque, eget vestibulum velit vestibulum. Fusce id dui eu orci placerat sodales. Proin nec auctor orci. Sed ultricies neque erat, id auctor massa commodo eu. Quisque et justo odio. Nulla quis convallis sapien. Etiam maximus mauris et ante consequat, sit amet vestibulum nisi molestie. Fusce varius risus enim. In vel magna ac leo dignissim venenatis sit amet nec tortor. Suspendisse enim risus, pulvinar eu porta vitae, dictum et lectus.', 'clubtread', 'Alouette Mountain', '', '', '', '1101m', '22km', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec egestas viverra tincidunt. Proin porttitor finibus facilisis. Donec at ultricies dolor. Maecenas sed magna magna. Morbi iaculis sed risus ut interdum. Donec at lectus ante. Aliquam consequat lorem vitae urna pellentesque, eget vestibulum velit vestibulum. Fusce id dui eu orci placerat sodales. Proin nec auctor orci. Sed ultricies neque erat, id auctor massa commodo eu. Quisque et justo odio. Nulla quis convallis sapien. Etiam maximus mauris et ante consequat, sit amet vestibulum nisi molestie. Fusce varius risus enim. In vel magna ac leo dignissim venenatis sit amet nec tortor. Suspendisse enim risus, pulvinar eu porta vitae, dictum et lectus.', '8 hours', 0, 1, '', ''),
(15, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec egestas viverra tincidunt. Proin porttitor finibus facilisis. Donec at ultricies dolor. Maecenas sed magna magna. Morbi iaculis sed risus ut interdum. Donec at lectus ante. Aliquam consequat lorem vitae urna pellentesque, eget vestibulum velit vestibulum. Fusce id dui eu orci placerat sodales. Proin nec auctor orci. Sed ultricies neque erat, id auctor massa commodo eu. Quisque et justo odio. Nulla quis convallis sapien. Etiam maximus mauris et ante consequat, sit amet vestibulum nisi molestie. Fusce varius risus enim. In vel magna ac leo dignissim venenatis sit amet nec tortor. Suspendisse enim risus, pulvinar eu porta vitae, dictum et lectus.', 'clubtread', 'BCMC Trail (Grouse Mountain)', '', '', '', '853m', '3.3km', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec egestas viverra tincidunt. Proin porttitor finibus facilisis. Donec at ultricies dolor. Maecenas sed magna magna. Morbi iaculis sed risus ut interdum. Donec at lectus ante. Aliquam consequat lorem vitae urna pellentesque, eget vestibulum velit vestibulum. Fusce id dui eu orci placerat sodales. Proin nec auctor orci. Sed ultricies neque erat, id auctor massa commodo eu. Quisque et justo odio. Nulla quis convallis sapien. Etiam maximus mauris et ante consequat, sit amet vestibulum nisi molestie. Fusce varius risus enim. In vel magna ac leo dignissim venenatis sit amet nec tortor. Suspendisse enim risus, pulvinar eu porta vitae, dictum et lectus.', '1.5 hours', 0, 0, '', ''),
(16, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec egestas viverra tincidunt. Proin porttitor finibus facilisis. Donec at ultricies dolor. Maecenas sed magna magna. Morbi iaculis sed risus ut interdum. Donec at lectus ante. Aliquam consequat lorem vitae urna pellentesque, eget vestibulum velit vestibulum. Fusce id dui eu orci placerat sodales. Proin nec auctor orci. Sed ultricies neque erat, id auctor massa commodo eu. Quisque et justo odio. Nulla quis convallis sapien. Etiam maximus mauris et ante consequat, sit amet vestibulum nisi molestie. Fusce varius risus enim. In vel magna ac leo dignissim venenatis sit amet nec tortor. Suspendisse enim risus, pulvinar eu porta vitae, dictum et lectus.', 'clubtread', 'Coliseum Mountain', '', '', '', '1256m', '23.6km', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec egestas viverra tincidunt. Proin porttitor finibus facilisis. Donec at ultricies dolor. Maecenas sed magna magna. Morbi iaculis sed risus ut interdum. Donec at lectus ante. Aliquam consequat lorem vitae urna pellentesque, eget vestibulum velit vestibulum. Fusce id dui eu orci placerat sodales. Proin nec auctor orci. Sed ultricies neque erat, id auctor massa commodo eu. Quisque et justo odio. Nulla quis convallis sapien. Etiam maximus mauris et ante consequat, sit amet vestibulum nisi molestie. Fusce varius risus enim. In vel magna ac leo dignissim venenatis sit amet nec tortor. Suspendisse enim risus, pulvinar eu porta vitae, dictum et lectus.', '10 hours', 0, 0, '', ''),
(17, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec egestas viverra tincidunt. Proin porttitor finibus facilisis. Donec at ultricies dolor. Maecenas sed magna magna. Morbi iaculis sed risus ut interdum. Donec at lectus ante. Aliquam consequat lorem vitae urna pellentesque, eget vestibulum velit vestibulum. Fusce id dui eu orci placerat sodales. Proin nec auctor orci. Sed ultricies neque erat, id auctor massa commodo eu. Quisque et justo odio. Nulla quis convallis sapien. Etiam maximus mauris et ante consequat, sit amet vestibulum nisi molestie. Fusce varius risus enim. In vel magna ac leo dignissim venenatis sit amet nec tortor. Suspendisse enim risus, pulvinar eu porta vitae, dictum et lectus.', 'clubtread', 'Dam Mountain', '', '', '', '264m', '5.1km', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec egestas viverra tincidunt. Proin porttitor finibus facilisis. Donec at ultricies dolor. Maecenas sed magna magna. Morbi iaculis sed risus ut interdum. Donec at lectus ante. Aliquam consequat lorem vitae urna pellentesque, eget vestibulum velit vestibulum. Fusce id dui eu orci placerat sodales. Proin nec auctor orci. Sed ultricies neque erat, id auctor massa commodo eu. Quisque et justo odio. Nulla quis convallis sapien. Etiam maximus mauris et ante consequat, sit amet vestibulum nisi molestie. Fusce varius risus enim. In vel magna ac leo dignissim venenatis sit amet nec tortor. Suspendisse enim risus, pulvinar eu porta vitae, dictum et lectus.', '2 hours', 0, 0, '', ''),
(18, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec egestas viverra tincidunt. Proin porttitor finibus facilisis. Donec at ultricies dolor. Maecenas sed magna magna. Morbi iaculis sed risus ut interdum. Donec at lectus ante. Aliquam consequat lorem vitae urna pellentesque, eget vestibulum velit vestibulum. Fusce id dui eu orci placerat sodales. Proin nec auctor orci. Sed ultricies neque erat, id auctor massa commodo eu. Quisque et justo odio. Nulla quis convallis sapien. Etiam maximus mauris et ante consequat, sit amet vestibulum nisi molestie. Fusce varius risus enim. In vel magna ac leo dignissim venenatis sit amet nec tortor. Suspendisse enim risus, pulvinar eu porta vitae, dictum et lectus.', 'clubtread', 'Mount Frome', '', '', '', '270m', '8.6km', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec egestas viverra tincidunt. Proin porttitor finibus facilisis. Donec at ultricies dolor. Maecenas sed magna magna. Morbi iaculis sed risus ut interdum. Donec at lectus ante. Aliquam consequat lorem vitae urna pellentesque, eget vestibulum velit vestibulum. Fusce id dui eu orci placerat sodales. Proin nec auctor orci. Sed ultricies neque erat, id auctor massa commodo eu. Quisque et justo odio. Nulla quis convallis sapien. Etiam maximus mauris et ante consequat, sit amet vestibulum nisi molestie. Fusce varius risus enim. In vel magna ac leo dignissim venenatis sit amet nec tortor. Suspendisse enim risus, pulvinar eu porta vitae, dictum et lectus.', '3-4 hours', 0, 0, '', ''),
(19, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec egestas viverra tincidunt. Proin porttitor finibus facilisis. Donec at ultricies dolor. Maecenas sed magna magna. Morbi iaculis sed risus ut interdum. Donec at lectus ante. Aliquam consequat lorem vitae urna pellentesque, eget vestibulum velit vestibulum. Fusce id dui eu orci placerat sodales. Proin nec auctor orci. Sed ultricies neque erat, id auctor massa commodo eu. Quisque et justo odio. Nulla quis convallis sapien. Etiam maximus mauris et ante consequat, sit amet vestibulum nisi molestie. Fusce varius risus enim. In vel magna ac leo dignissim venenatis sit amet nec tortor. Suspendisse enim risus, pulvinar eu porta vitae, dictum et lectus.', 'clubtread', 'Mount Seymour', '', '', '', '454m', '7.6 km', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec egestas viverra tincidunt. Proin porttitor finibus facilisis. Donec at ultricies dolor. Maecenas sed magna magna. Morbi iaculis sed risus ut interdum. Donec at lectus ante. Aliquam consequat lorem vitae urna pellentesque, eget vestibulum velit vestibulum. Fusce id dui eu orci placerat sodales. Proin nec auctor orci. Sed ultricies neque erat, id auctor massa commodo eu. Quisque et justo odio. Nulla quis convallis sapien. Etiam maximus mauris et ante consequat, sit amet vestibulum nisi molestie. Fusce varius risus enim. In vel magna ac leo dignissim venenatis sit amet nec tortor. Suspendisse enim risus, pulvinar eu porta vitae, dictum et lectus.', '5 hours', 0, 0, '', ''),
(20, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec egestas viverra tincidunt. Proin porttitor finibus facilisis. Donec at ultricies dolor. Maecenas sed magna magna. Morbi iaculis sed risus ut interdum. Donec at lectus ante. Aliquam consequat lorem vitae urna pellentesque, eget vestibulum velit vestibulum. Fusce id dui eu orci placerat sodales. Proin nec auctor orci. Sed ultricies neque erat, id auctor massa commodo eu. Quisque et justo odio. Nulla quis convallis sapien. Etiam maximus mauris et ante consequat, sit amet vestibulum nisi molestie. Fusce varius risus enim. In vel magna ac leo dignissim venenatis sit amet nec tortor. Suspendisse enim risus, pulvinar eu porta vitae, dictum et lectus.', 'clubtread', 'Norvan Falls', '', '', '', '215m', '11.8km', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec egestas viverra tincidunt. Proin porttitor finibus facilisis. Donec at ultricies dolor. Maecenas sed magna magna. Morbi iaculis sed risus ut interdum. Donec at lectus ante. Aliquam consequat lorem vitae urna pellentesque, eget vestibulum velit vestibulum. Fusce id dui eu orci placerat sodales. Proin nec auctor orci. Sed ultricies neque erat, id auctor massa commodo eu. Quisque et justo odio. Nulla quis convallis sapien. Etiam maximus mauris et ante consequat, sit amet vestibulum nisi molestie. Fusce varius risus enim. In vel magna ac leo dignissim venenatis sit amet nec tortor. Suspendisse enim risus, pulvinar eu porta vitae, dictum et lectus.', '6 hours', 0, 0, '', '');

-- --------------------------------------------------------

--
-- Table structure for table `userprofile_userprofile`
--

CREATE TABLE IF NOT EXISTS `userprofile_userprofile` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `likes_cheese` tinyint(1) NOT NULL,
  `favourite_hamster_name` varchar(50) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_group_permissi_permission_id_84c5c92e_fk_auth_permission_id` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permissi_content_type_id_2f476e4b_fk_django_content_type_id` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  ADD CONSTRAINT `auth_user_user_perm_permission_id_1fbb5f2c_fk_auth_permission_id` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  ADD CONSTRAINT `django_admin__content_type_id_c4bce8eb_fk_django_content_type_id` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `imageotd_comment`
--
ALTER TABLE `imageotd_comment`
  ADD CONSTRAINT `imageotd_comment_imageotd_id_440286be_fk_imageotd_imageotd_id` FOREIGN KEY (`imageotd_id`) REFERENCES `imageotd_imageotd` (`id`);

--
-- Constraints for table `reports_comment`
--
ALTER TABLE `reports_comment`
  ADD CONSTRAINT `reports_comment_report_id_0ea1b19a_fk_reports_report_id` FOREIGN KEY (`report_id`) REFERENCES `reports_report` (`id`);

--
-- Constraints for table `reports_participant`
--
ALTER TABLE `reports_participant`
  ADD CONSTRAINT `reports_participant_report_id_e6243534_fk_reports_report_id` FOREIGN KEY (`report_id`) REFERENCES `reports_report` (`id`);

--
-- Constraints for table `trails_comment`
--
ALTER TABLE `trails_comment`
  ADD CONSTRAINT `trails_comment_trail_id_8f324db9_fk_trails_trail_id` FOREIGN KEY (`trail_id`) REFERENCES `trails_trail` (`id`);

--
-- Constraints for table `userprofile_userprofile`
--
ALTER TABLE `userprofile_userprofile`
  ADD CONSTRAINT `userprofile_userprofile_user_id_59dda034_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
