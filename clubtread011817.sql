-- phpMyAdmin SQL Dump
-- version 4.0.10deb1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jan 17, 2017 at 06:30 PM
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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=108 ;

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
(107, '2017-01-17 04:17:22', '1', 'Alcoholic Traverse', 2, '[{"changed": {"fields": ["likdisdif"]}}]', 7, 1);

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
(2, 'Dam Mountain Snowshoe', 'ejain', '<p>Reached the Grouse Mountain station around 10am. Found a spot in one of the lots after circling around a bit. Took us about an hour to get to the top and get moving.<br />\r\n<br />\r\nFollowed the &quot;SSG&quot; (SnowShoe Grind?) markers to the top of Dam Mountain. Continued down on the other side to do a small loop, with a side trip to the viewpoint at the end of Thunderbird Ridge for lunch.<br />\r\n<br />\r\nThe snow was great and the route was easy to follow, but people without good traction on their snowshoes (and without crampons or microspikes) had a hard time today.<br />\r\n<br />\r\nSome crowds along the Snowshoe Grind, but not so many people on Thunderbird Ridge.</p>', '2016-01-01', '', '', '', 0, 1, 'admin'),
(3, 'Sumas Mountain Hike', 'KARVITK', '<p>This trip report is 30 days late, my apologies.<br />\r\n<br />\r\nThis being a &quot;RMOC&quot; trip, we had 10 hikers who took advantage of an opportunity to shorten the hike; by leaving two vehicles at the upper parking lot, a short distance below the gate on the access road up to the summit transmission towers.<br />\r\n<br />\r\nWe started the hike from the bottom , from the trailhead off the gravel section of the Sumas Mountain Road. The first km is beautiful lush and green, then a stretch hugs the upper north flanks of the mountain before heading south to Chadsey lake, where had a 20 minute first lunch.<br />\r\n<br />\r\nHike east and then south past the transmission towers to the official Eastern Lookout; views are limited due to trees growing up (last 20 -years) and crowding the open view.<br />\r\n<br />\r\nTwo open view areas off the beaten track offered wide open views and a great place to have our second lunch.<br />\r\n<br />\r\nThen back to the vehicles at the upper lot; cutting 4 to 5 km hike down slope to the bottom road. 12 km return in total with 700 meters elevation gain. 5 hours in total.<br />\r\n<br />\r\nTotal Stats: 12 km return with 700 meters net elevation gain.<br />\r\n<br />\r\n&nbsp;</p>', '2016-01-01', '', '', '', 0, 0, ''),
(4, 'Alouette Snowshoe', 'activegirl', '<p>Wondering what to do on an ugly rainy wet Sunday, so wepacked up the snowshoes and headed up Alouette. After seeing John and Kates great pictures, we were pretty excited to getback to see some snow. From parking lot to Evans plateau was very muddy, sloppy, slushy wet , and raining heavy. We werehappy we had our plastic ponchos. On wardsfrom the plateau the snow progressively got heavier and was sticking, making itstill quite slippery underneath. After the turn off, snow continued to getdeeper, we definitely needed our snowshoes after this point. We made it to thelook out just before the boulder field where the snow was about 5-6 deep. Incredibly soft powder. We were post holingbetween 12-18 inches and at some points 30 inches or more, even with MSRlightening ascent 30&rsquo;s.<br />\r\nWe decided to turn around at this point as there was no view,it was snowing heavily, the peak was socked right in and time wasn&rsquo;t on ourside.<br />\r\nTrip down was slow and slippery..but was still a great day outwith fantastic scenery.</p>\r\n\r\n<p>&nbsp;</p>', '2016-01-01', '', '', '', 0, 0, ''),
(5, 'Golden Ears Park', 'Wanderring Tree Frog', '<p>With a dismal weather forecast, Maiggen and I still went through with our planned Saturday morning hike. I decided that Golden Ears was halfway between our places and a quick trip around the East Canyon trail and back along the West Canyon, crossing at the (notso)new bridge would allow us to get out and get some exercise. We met at 8:30am in downtown Maple Ridge and I drove us out to the East Canyon parking, not raining yet but we still brought our wet weather gear as the skies were all clouds. The trail is straightforward, even though wet in places. We made quick work of the loop and were back at the truck two hours after starting, no rain was seen. Its a great loop hike for anyone looking for a short easy day. We even got some sun while we had lunch outdoors at Big Feast, the best restaurant in Maple Ridge. So much for the rainy forecast!<br />\r\n<br />\r\nOK, the sideways pictures are very annoying. I&#39;m really trying to make this site work. Still cant upload photos from my phone, they still show up sideways when they appear correct on my computer.</p>', '2016-01-01', '', '', '', 0, 0, ''),
(6, 'Brandywine', 'Mick Range', '<p>The original plan was to follow Matt Gunn&#39;s directions for Brandywine Mountain, but........<br />\r\nDoug and I set out on June 28 to find that the Brandywine FSR was blocked at the bottom, so, we followed a detour onto Callaghan Valley Road. There were road crews working and signs had been knocked down. The long and the short of it was that we ended up meandering the logging roads until we found one that looked like a good approach to the mountain, and then we decided to walk the path seldom trodden, so to speak. Up through a cutblock, a labyrinth of dense huckleberries and devil&#39;s club,through a chain of subalpine ponds and into another cutblock, then into a beautiful old growth forest and a maze of cliffbands. So where did that get us ? Atop a knoll above a substantial gorge of a creek that drains the upper snowfields of Metal Dome. Only problem was that we would need about seven more hours to solve this conundrum, and we had closer to three hours left. So we beat a retreat to the truck and decided to try to find the Brandywine FSR.This is a route we plan to revisit in winter, a la Robin Tivy&#39;s account on Bivouac<br />\r\nWe enjoyed a long photo session with a friendly black bear, and headed back down the Callaghan Road. Sure enough, where the turnoff is signed for the landfill, we were able to get on Brandywine Callaghan West FSR which led us belatedly to our original approach plan. What the hey, we still had time to bump and grind our way up the 4WD road to the sled cabin, then we managed a short jaunt into Brandywine Meadows, vowing to return soon&nbsp;<br />\r\n<br />\r\nFast forward to July 11, another day, another shot at the prize, eh ? &quot;Yep&quot;,says Doug,&quot;I wanna drive that road again !&quot; This time we make it up the road, and hike into the meadows, which have lost three feet of snow in 13 days. Thursday&#39;s windstorm left skies of perfect clarity, with peaks visible in sharp detail, and the meadows coming to life. A great day in the mountains was had, walking the endless meadows, ascending steeply to the ridge,then trekking the long ridgeline to the summit of Brandywine. If you haven&#39;t been, I&#39;d highly recommend this trip, but a wait until July 25 might have the meadows in full bloom, and the tiger traps will have melted out to make travel easier.<br />\r\nIt took us about 6 1/2 hours car to car at a decent pace. We were able to park at 1240m, and cumulative vertical gain was about 1050m altogether. I give it 4 stars and I&#39;m telling you the beer tasted unbelievable Friday night&nbsp;<br />\r\n<br />\r\nHere is the link to my photoset on Flickr, you can watch the slideshow, or click on each individual photo for the captions. We took about 250 photos, so check back whenever you want an alpine fix in the coming weeks, I&#39;ll be uploading many more&nbsp;</p>', '2016-01-01', '', '', '', 0, 0, ''),
(7, 'Brew Hut', 'Jeremy', '<p>Brew hut ski day.&nbsp;<br />\r\n<br />\r\nJeremy and I got our first day of skinning in yesterday with a trip to brew hut. In typical fashion our planning amounted to a &quot;hey we should go skiing Tuesday&quot;. With a forecast calling for heavy snow and wind, we settled on trying for Brew Peak, or hut, or just exploring...<br />\r\n<br />\r\nUp at 5am, we quickly made the drive down from Whistler to Roe Creek FSR. I&#39;d been to brew hut about 5 years ago, so did my best to navigate the roads from memory, because who has time to plan? After one wrong branch road, we found the correct roads, fresh logging along here but most of the major junctions have reflective markers on the correct turns.&nbsp;<br />\r\n<br />\r\nWe parked at a pullout just below a cluster of reflective markers on some trees/stumps in the newly logged area. We followed intermittent flags and footbed a short ways across the logging onto the trail. We hiked along at a moderate pace, following an obvious boot track in the snow.&nbsp;<br />\r\n<br />\r\nAbout halfway to the lake there was finally enough snow to stop and put our skis on and skin from there. The stoke was high to be on skis/splitboard and we had smiles on our faces. Some interesting early season creek crossing kept us entertained.&nbsp;<br />\r\n<br />\r\nAs we passed the first lake the terrain opened up and simultaneously the visibility closed down. We navigated by Jer&#39;s new 3D map app, and my rough memory of where we needed to go. To say we couldn&#39;t see far was an understatement. You could literally have a rock covered in snow 2&#39; from the front of your skis and you didn&#39;t know it was there. There was a lot of crashing into things, falling down, laughter and merriment.&nbsp;<br />\r\n<br />\r\nBut we kept going up, and when the app showed us crossing an upper lake, we did our best to stay along the edge, not knowing if the lake was fully frozen with our recent warm weather. As we gained a bit more elevation, we got into a wind tunnel area, and quickly chilled off. I was in the lead and swung behind the shelter of some trees and caught sight of brew hut! I tried to yell to Jer, but he couldn&#39;t hear me over the wind.&nbsp;<br />\r\n<br />\r\nI had the door cleared of snow just as Jer skinned up and we went in an built a small fire to help dry gear and regain warmth. We ate and hung out before gearing up with almost all our clothes, helmets, googles and set out for our return trip. We left the skins on for the trip down.&nbsp;<br />\r\n<br />\r\nMore entertainment ensured on the way down, skiing into things, over drops, falling down as the heavy snow fell and the wind froze our faces. All to soon we were passing the lower lake, a bit sheltered conditions improved. We skinned along, picking up bits of our up track, some of it already buried in the fresh snow. We got to skin a bit lower than our uphill transition, but eventually the skis/board ended up back on our packs and we slipped and slided in our boots back towards the truck.&nbsp;<br />\r\n<br />\r\nWe got to the logging road to find what was a bare road this morning was now covered with a lot of heavy wet snow. And my clutch decided now was the time to die. So after some clutchless adventure driving in a snowstorm on steep and deep snow covered logging roads we headed back to Whistler with our first awesome ski day of the year in the bag. Woohoo!&nbsp;<br />\r\n<br />\r\nI&#39;ll try and get some pictures up today.<br />\r\nUnless I decide I still hate the photo upload process.</p>', '2016-01-01', '', '', '', 0, 0, ''),
(8, 'Elfin Lakes - Round Mountain', 'Rex', '<p>Some Trail/Road Beta from Dec 4th 2016...&nbsp;<br />\r\n<br />\r\nGroup of 5 out in stellar winter conditions on this classic BC snowshoe. This was one of those perfect weather days following a big dump of snow.&nbsp;<br />\r\n<br />\r\n<strong>ROAD:</strong>&nbsp;The road was plowed all the way to the Diamond Head parking lot, but a couple signs at the lower parking lot that it is mandatory to have chains, snow tires and 4x4 is recommended beyond that point in case it dumps during the day. The road was much icier on the way down after a days worth of vehicle traffic so please be careful.<br />\r\n<br />\r\n<strong>CONDITIONS:</strong>&nbsp;The Winter route is in (orange poles) and nicely kicked down all the way to the hut.<br />\r\n<br />\r\nTons of skiers swarming around Round Mountain (ok maybe not swarming... about 40+ or so throughout the day) ... and nice to see multiple groups digging pits on various slopes doing snow assesments.&nbsp;<br />\r\n<br />\r\n<strong>NOTE:</strong>&nbsp;This hike is 22km&#39;ish and one of those hikes where it feels like you are going uphill both ways so be prepared to work a little on this (especially if breaking new trail) as the cummuative gain is about 1300-1400m.&nbsp;<br />\r\n<br />\r\nThis snowshoe has some really excellent eye candy when the conditions are just right!&nbsp;<br />\r\n<br />\r\nHave fun and stay safe!<br />\r\n<br />\r\n&nbsp;</p>', '2015-01-01', '', '', '', 0, 0, ''),
(9, 'Sunshine Mountain', 'simonc', '<p>The Cadwallader Range extends south from the small (mining) town of Bralorne to the well known Tolkien Group of peaks with Mount John Decker the southern most summit near Birkenhead Lake. Doug, Alex, Ben and I drove The Hurley to the Bralorne Connector and followed that into the small town. Along the connector a grizzly bear paced us along the road for a km before veering off into the bush. We drove the Noel Creek FSR a short while then turned up a spur road (some steep sections with waterbars) that got us to landing at about 1460m elevation.<br />\r\n<br />\r\nFrom there we follow an ATV track to the alpine where the views really start to open up. Heather and gravel give way to the same type of rock that makes the Twin Sisters in Washington State so much fun - super grippy and rough. Here though the rock is more fractured as we traverse the west side of a couple of subpeaks then up to Sunshine.<br />\r\n<br />\r\nYou can stay with the ridge crest on good rock or there&#39;s a ramp a little below. Either way it&#39;s an easy scramble to reach the summit (the earlier traverse is more tricky) which has flying ants on it so we retreat to a flatter section nearby. First views of Crazy Peak are impressive, as is The Bendor Range to the north and east.<br />\r\n<br />\r\nAfter rousing everyone we dropped off Sunshine, got into a bit more traversing then followed the south ridge down into a bowl which featured a few tarns. Doug&#39;s knees were giving him a bit of grief so he elected to check out the tarns and chill for a while whilst we went (to) Crazy. We crossed the bowl saying hello to a couple of marmots then ascended talus and a bit of snow to gain the northwestern ridge of Crazy.<br />\r\n<br />\r\nThe first part of the ridge was smooth travel and we quickly gained elevation. After a small bump we dropped into a flat area then started up steeper and looser talus - nothing difficult and this got us to a shoulder and the top of a pocket glacier. The scrambling begins from here and there was usually a couple of options depending on comfort/exposure level.<br />\r\n<br />\r\nWe could mostly stay on the ridge crest with a couple of ledges (or gullies) used to avoid pinnacles. The rock not as good as Sunshine but not too bad and nothing went above class 3 with some exposure. As for the name, Crazy is the original (though unofficial) name but bivouac.com called it Cadwallader as it&#39;s the highest peak in the range. It shows up as that on google maps. Cheam and Joffre aren&#39;t the highest peaks in their range/group however.<br />\r\n<br />\r\nAfter about 45 minutes we packed up and started down the ridge still enjoying the great views that this area has to offer. We made good time but we all had our cameras out frequently.</p>\r\n\r\n<p><br />\r\nAfter scraping some snow into water bottles we dropped off the ridge spotting Doug (a spec) by one of the tarns. The marmots whistled again as we passed then we chose to take the full southern ridge up to cut out the talus traverse, meeting Doug at a flat moonscape section below the red rock summit area of Sunshine. We had thought of bypassing the summit but Doug had left his poles down the other side so we ascended back to the top and were glad we did as evening light on Crazy and other distant peaks was pleasant and we could take one more break before heading back to camp.<br />\r\n<br />\r\nI was the last to leave as usual as it was hard to depart this scenic area and I caught up with the others hunting around for Doug&#39;s poles which Alex found after backtracking slightly. We contour around the sub peaks and down to the sub alpine bowl then follow the trail down to the landing around dusk, crack open some beers, make sleeping arrangements and start on dinner as we&#39;ll be spending the night.&nbsp;<br />\r\n<br />\r\nAnother truck drove up as darkness took over, a group of 4 from Squamish who frequent this area often (summer and winter). They were here for a few hours to watch the meteor shower before heading back to stay in Bralorne. We ate our dinner as they got a fire going then we all sat around talking for a while before they left and it was after midnight (and quite a few beers) before we all turned in. Not too many meteors seen on this night though.<br />\r\n<br />\r\nDoug and I were woken at 6:30 by Ben talking up a storm so we all got up and had a leisurely breakfast and discussed what the plan was for today. Truax would have been nice but a good sized distance and elevation gain so we were happy to potter around something easier. Down to Bralorne then north a bit to get on Kingdom Lake FSR. We had a couple of ideas, one being Mount Ferguson but we couldn&#39;t find the trailhead so continued down (south) on the road to the Piebiter Creek area. There we had a choice of the Standard Creek Trail towards McGillivray Pass or the Piebiter Creek Mining Road.<br />\r\n<br />\r\nWe chose the latter (we also didn&#39;t have a lot of info on this area so were winging it a little). The old road is in good shape with a couple of bypass trails and we soon got to the old mining cabins with racks upon racks of core samples.<br />\r\n<br />\r\nNo bridge across the creek though and it was flowing fast so we looked up creek for a way across but didn&#39;t find anything. Ben ended up wading across (up to thigh high) and we saw a mouse like creature (vole? shrew?) that ran from us and swam upstream in the creek. Royal Mountain was above us and the goal but we didn&#39;t feel particular motivated to cross the creek and join Ben so he came back and we found a good spot for some food (and picked wild raspberries) before heading back down to drink more beer.<br />\r\n<br />\r\nThen it was off to Gold Bridge (first time for me) and the general store was open so we grabbed some food and drink. Gun Lake for a swim seemed like a good idea so we continued northwards and on to the road in that direction. Downton Lake Reservoir was drawn down so we paused by there for a picture before going uphill to Gun Lake.<br />\r\n<br />\r\nGun Lake had lots of private houses all around it but we found the boat launch area with a small dock and went there to relax for a while. I was the only person who went for a swim as it didn&#39;t feel quite as warm up here. First time in this area for me too.<br />\r\n<br />\r\nFeeling refreshed we all piled back in my vehicle and drove back towards Gold Bridge, taking the Hurley turn off and that road all the way back. This road is currently rough at both ends with the higher sections not too bad. Plenty of vehicles parked at the Semaphore Trailhead. At Pemberton we enjoyed quality food at McDonald&#39;s and Doug felt like a swim so we stopped at Mile One Lake before heading home. A little bit slow south of Squamish then good back into West Vancouver where I dropped off Alex and Ben. First time Doug and I have hiked with them - both veterans of multi-day mountain traverses, numerous other peaks and fun guys to hang out with.&nbsp;<br />\r\n<br />\r\nDoug and I head back into Vancouver, I drop him off and head home very content with this outing as the country up that way is spectacular and the possibilities around there and going north into the Chilcotins seem almost endless.&nbsp;</p>', '2015-01-01', '', '', '', 0, 0, ''),
(10, 'Icecap Peak', 'Karvitk', '<p>Pardeep and I made an attempt on Icecap Pk a few weeks ago. Access was via E200 spur off the Elaho main ( first bridge over the Elaho). There is active logging in this area so the road is in good shape and has been extended to 850m elevation. It&#39;s very steep in spots so 4X4 is recommended.<br />\r\n<br />\r\nFrom end of the road we bushwhacked up onto the ridge and made camp around 1950m overlooking the glacier below Amicus and Icecap. Pretty great camp site!<br />\r\n<br />\r\nWe headed up towards Icecap in the afternoon. Routefinding was straightforward, but there was a nasty maze of crevasses just below the summit so we opted to go for the sub-summit instead.&nbsp;<br />\r\n<br />\r\nGreat views of the entire Ashlu-Elaho divide. Definitely in my ski touring bucket list. There are some really nice looking lakes just south of Icecap that probably don&#39;t see too many visitors.<br />\r\n<br />\r\nWe hung out on top for a while and then headed back to camp. During the evening we watched the lightning dance in a large thundercloud far off towards Pemberton.<br />\r\n<br />\r\nNext day we hiked out and managed to beat the crowds pouring back into Vancouver on the Sea to Sky. Great trip out to a cool area that is seldom visited in summer. Black flies and mozzies were out in full force all weekend.&nbsp;<br />\r\n<br />\r\nOne thing I wanted to call attention to was the litter left behind by heli-skiing operators. It&#39;s a shame to go into a relatively remote alpine area and see wooden stakes lying all over the place.&nbsp;<br />\r\n<br />\r\nFirst time writing a TR from my phone. Its actually far less painful than using the desktop site.</p>', '2015-01-01', '', '', '', 0, 0, ''),
(11, 'Les Gendarmes', 'muskeeto', '<p>Les Gendarmes lie just West of Journeyman Peak along the ridge, i thought they&#39;d make a good scramble in a convenient location. I wasn&#39;t too sure what to expect as my last visit had minimal views.<br />\r\n<br />\r\nHeaded past Journeyman and made for the ridge, i knew there was a nice big drop off on top of the ridge to get past. We find we may have headed up to the ridge too soon. There&#39;s alot of ice and snow and we don&#39;t have crampons or axes. Keep heading up hoping we dont have to drop all the way down.<br />\r\nWe are able to keep climbing up and find ourselves close to the ridge with a short section of snow and icy to cross, there are patches of ice, we try to go around between the rock and snow.<br />\r\n<br />\r\nWe would have had to crawl down thru this hole on solid ice. Back to the start of the snow we go and look for another route. Dropping down a little there is a route thru the icy patches.<br />\r\n<br />\r\nCrossing above some ice and small crevasses we soon find easier terrain.<br />\r\n<br />\r\nClose to the top we find a bit of a crux, the rock all seems broken up, difficult to know just how secure it is.<br />\r\n<br />\r\nOn top Journeyman in the background. The original &#39;plan&#39; was a loop to Ring Lake, but it would have taken forever, i had a look and the descent to the next Gendarme, a steep crack with loose rocks, a handline would be useful to get down, a similar climb to the East Gendarme. From there we would have had to cross patches of ice and snow to gain the top of the ridge.<br />\r\nRetracing our steps to the start of the ridge the others headed to Journeyman, i go retrieve my pole which i dropped climbing back down the Gendarme.<br />\r\n&nbsp;</p>', '2015-01-01', '', '', '', 0, 0, ''),
(12, 'Rainbow', 'gutis', '<p>We had Rainbow Mountain in our sights, but with a dog in tow, we couldn&rsquo;t use the trail from the Whistler side. The trail from Madeley Lake is the obvious alternative, but instead, we elected to give the winter route to Hanging Lake a try.<br />\r\n<br />\r\nWith access from the Whistler Olympic Park having limited hours, we drove to the end of the Northair mine site road for our starting point.<br />\r\n<br />\r\nIt&rsquo;s a thick bushwhack through the old clearcut, then a creek crossing. From here, the winter route leads up to Hanging Lake. The route is well marked with bright orange markers up high on the trees, but it is light bushwhacking the entire way.<br />\r\n<br />\r\nThe insects were horrendous. We finally gave in and applied a bit of insect repellent to the top of our hats and our arms. Otto (the dog) would occasionally yelp when a fly got him. But I think he chomped more of them than got him. The hordes were primarily in the forest. Very few in the alpine.<br />\r\n<br />\r\nThe payoff of the route is an hour time savings and 3-4km of distance, each way. Looking forward to doing it in snow next time though.<br />\r\n<br />\r\nHanging Lake has a brand new outhouse!<br />\r\n<br />\r\nWe followed the scramble route up the south-west side of Rainbow, suffering greatly in the 30 degree heat. Some cold meltwater creeks allowed us to top up our water supplies.<br />\r\n<br />\r\nOtto had trouble on the large talus at the pinnacle and didn&rsquo;t want to proceed. We took turns carrying the dog past the pinnacle and over some of the larger steps. Obstacles bypassed and the summit was in sight.<br />\r\n<br />\r\nA helicopter landing on the glacier entertained us during our lunch break.<br />\r\n<br />\r\nFor the descent, we set our sights on Beverly Lake due west of us. This route was really nice. A mix of ramps, heather covered slopes and easy talus made for better travel than the ascent route. The dog was certainly happier.<br />\r\n<br />\r\nWe also got to see the pinnacle from the other side.<br />\r\n<br />\r\nAt last, the lake!<br />\r\n<br />\r\nThe return went quickly as we had done it before. We made excellent time to Hanging Lake, and then speed bushwhacked downhill back to the vehicle whilst fleeing and karate-chopping the bugs. Both of us ran out of water about 5 minutes from the car, but cold refreshments awaited (Lemon San Pellegrino, some fancy root beer, and one lonely can of Blue Buck beer).<br />\r\n<br />\r\n<u>STATS</u><br />\r\n21.5km return<br />\r\n1,550m cumulative elevation gain</p>', '2015-01-01', '', '', '', 0, 0, '');

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
(2, 'Continue along the logging road, beyond Cyrtina Creek. After 1.4 km, turn left up a leafy trail - this is the Cyrtina Creek Spur. After about 50-100m, turn left again at some flagging to cross a ditch and climb a rocky path up a wide gully. At the top, continue west along a very deactivated logging road.\r\n\r\nThe road switches back right, then left, then right again. At this switchback, after about an hour to an hour and a quarter, approximately 1300m elevation, there is a cairned route beginning on the left side of the road just where the road finishes turning east. This new trail, blazed in 2004, is flagged and becoming boot-worn, but still a little treacherous contouring along a steep hillside.\r\n\r\nAfter about 400m travel, the trail opens up onto a wide bench. Continue straight ahead, following cairns and a worn path. After another 600m, at 1425m elevation, reach the south end of Wind Lake. Continuing past Wind Lake northbound, the cairned route leads on to Mountain Lake and the BCMC''s Mountain Lake Hut.\r\n\r\nTo continue to Ben Lomond, turn right at the far end of Wind Lake, and follow the drainage up to the Northeast. Reach the ridge at about 1500m. Follow the ridge to the right, turning Southeast.\r\n\r\nAfter a short distance, you will have to drop left into a bowl, to bypass a peak on the right. Cross the bowl, and continue up toward the high spot on the ridge straight ahead.\r\n\r\nDrop down once more to cross a final dip in the ridge before gaining the actual Northwest ridge of Ben Lomond. Pleasant scrambling, starting slightly to the left, will take you straight up this ridge to the broad, broken summit.', 'clubtread', 'Ben Lomond', '', '', '', '884m', '14.5 km', 'This route requires access to the key for the gated Britannia Creek FSR. The key is available through the BC Mountaineering Club. E-mail info@bcmc.ca for information. Without the key, add 13 km and 700m elevation on logging road.\r\n\r\nExit Highway 99 northbound (not available from southbound lanes) to the right, just past the top of the long hill climbing out of Furry Creek (Britannia Creek FSR). After passing the gate, continue for 0.9 km and turn right on the Furry Creek Main road. Follow this road for 12 km, keeping to the main roadway (avoid roads dropping away to the right). There is a spur up and to the left at approximately 8.5 km - keep right on the main roadway here. From that point on, there are a few waterbars - deep, but not terribly steep. At 12 km, the road drops down to the right to cross Cyrtina Creek. You might as well stop here - burly 4WDs can cross the creek, but only reach about 100m beyond it before the road constricts too much to continue.', '8 hours', 0, 0, '', ''),
(3, 'To reach Black Tusk from Garibaldi Lake or Taylor Meadows: take the Rubble Creek trail as you would for Garibaldi Lake. At the Taylor Meadows junction (~6.5km) take the trail to Taylor Meadows. Continue through the campground and continue along the trail to Black Tusk Meadows (stay left as another trail descents to join up with the Garibaldi Lake trail after the old ranger cabin just after Taylor Meadows campground).\r\n\r\nContinue onwards past Outhouse Junction (where the trail from Garibaldi Lake joins, just before Black Tusk Meadows). 0.5km after that is the junction: Black Tusk to the left, Panorama Ridge and Helm access to the right. Take the left trail to Black Tusk and start climbing out of Black Tusk Meadows. Pass numerous stream courses and boulder fields/scree slopes along the way. The trail climbs steeply until you get to the end of the maintained trail (marked with a sign recommending you not go further). Although the maintained trail stops there, there is a clear path in the scree climbing to Black Tusk proper. If you choose to continue your ascent (a steep slope, but by no means a scramble), take care in the loose rock and dirt and watch for falling rock if you are at the base of the Tusk. Satisfy yourself and return the way you came.', 'clubtread', 'Black Tusk', '', '', '', '1735m', '29 km', 'Start in the Rubble Creek / Black Tusk parking lot (same as for Garibaldi Lake).', '10 hours', 0, 0, '', ''),
(4, 'This is a road hike all the way to the pass. From trailhead, the road passes through alder, and rises steadily to sub-alpine meadow, crossing some wet areas and creeks along the way. Follow the road to an S-bend, stay left uphill around curve to reach the pass, there are spectacular views of Blowdown Lake and surrounding mountains along the way. Or go right at S-bend on another road to reach Blowdown Lake. There is a a camping area at the lake.\r\n\r\nAt the pass there is a sign for the boundary of the Stein park, motorized vehicles prohibited beyond that point. To the left of the sign is the route up Gott peak, the footbed is clearly visible. The route up Gott peak is steep but minimal scrambling is required. From the pass, you can also scramble up Gotcha peak to your right, not as high as Gott peak but the route is rockier, more scrambling is required.\r\n\r\nThe area is home to grizzly bears, appropriate precautions should be taken.', 'clubtread', 'Blowdown Pass', '', '', '', '425m', '12km', 'Follow Highway 99 thru Pemberton, past Mount Currie, toward Lillooet. Reach the end of Duffy Lake and drive a few kms. further crossing Blowdown Creek and looking for an avalanche gate. Immediately past the avalanche gate, turn right onto Blowdown Creek Road. This road begins at a sharp angle and there is a sign at the start that says Blowdown logging (or other company name?). Set odometer here and drive 9 km. Less than 1/2 km further stay on left fork. Less than 1.5 km further is parking area on left, trailhead is road thru alder across from parking area, marked with several flagging tapes. 4x4 vehicle may be able to drive up this road to park, will become rougher as it goes.\r\n\r\nJuly 2007 the alder choked road (Branch 6?) was drivable with high clearance 4x4 all the way to the pass. There is a reasonable camping spot just below the pass beside a small creek overlooking the lake which is (relatively) bug free.\r\n\r\nAs of August 11, 2007, the Blowdown Creek road is suitable for 2 wd car to described parking area / trailhead.', '6 hours', 0, 0, '', ''),
(5, 'Note - August 5th 2007 - the road is easy 2WD now all the way to the trailhead. It has been graded and the brush has been removed since 2006. I suspect there''ll be new logging in the area soon, as there are ''fall boundary'' markers all over the place.\r\n\r\n* Old MoF trail\r\n\r\n* Starts off of main FSR, signed with post.\r\n\r\n* First part of trail partially hidden, climb through about 30 meters of brush to find actual trailbead\r\n\r\n* Climbs uphill through forest. Most of the area is marked with "fall boundary" markers - this part of the trail will likely be destroyed soon.\r\n\r\n* Not well maintained - quite a bit of deadfall and overgrowth.\r\n\r\n* Reaches an area below an old clearcut, then turns left and leads in the forest just beneath it. This area can be VERY muddy, with a number of makeshift planks, logs, and other means to get around the mud. Very monotonous to get through it, might be worth brining a change of clothes if you go in rainy season!\r\n\r\n* Eventually climbs out of the mud ridge and into a sub-alpine meadow. Right after leaving the forest, a junction is reached with a shortcut trail on the right leading down to the 4x4 branch road and cabin.\r\n\r\n* Follow the main trail through the meadows, which can be muddy. Due to the mud, people try to walk around the trail, damaging the meadows and making the mud problem worse.\r\n\r\n* Meadows are fairly short - bowl type valley.\r\n\r\n* Didn''t hike to end of trail, but supposedly ends at the edge of it with an intermittent trail leading up to the top of the mountain.\r\n\r\n* Area seems popular with campers - there were some campfires at the far end of the meadows.\r\n\r\n* Unprotected area.\r\n\r\n* Logging road is a real grunt coming back all the way down on foot. Great views though - better than from the trail.\r\n\r\n* Cabin has a cooking counter, wood stove, picnic table, and bunk. Large glass windows with incredible view of Black Tusk. Parts of the cabin have old bottles and cans piled up', 'clubtread', 'Brandywine Meadows', '', '', '', '550m', '6km', 'Located south of Whistler, on the north side of the Brandywine River/Creek bridge. A well graded logging road can be followed with a "strong" 2wd vehicle. There are two options- continuing straight on the main road to the signed trailhead, or taking the right fork immediately before the trailhead and climbing uphill with a 4wd vehicle. Park at the end of the branch road, next to a snowmobiler''s cabin. From here, a deactivated road can be followed to a shortcut trail.\r\n\r\n* From the south, drive Hwy 99 to Brandywine Fall Provincial Park and continue past. Approximately 2.7km past Brandywine Falls Provincial Park is an exit for Callahan Valley Road and Whistler Olympic Park. Take this exit and reset your odometer.\r\n\r\n800m turn left on Brandywine Mountain Forest Service Road.\r\n\r\n* Continue to 1.4km where there is a hut / parking gate on the left side. The road forks at this point. Stay to the left just past this parking gate as the road opens up to a large open gravel parking lot. Drive through this gravel area to the far side.\r\n\r\n* 2.1km there will be a snowmobile club on the left hand side, continue driving along the road.\r\n\r\n* 2.3km the road narrows from 2 lanes to 1.\r\n\r\n* 3.2km the road opens up a bit with deactivated roads on either side of the main road, continue along BMFSR.\r\n\r\n* 4.8km there is a fork in the road, stay right.\r\n\r\n* Just before a fork at 6.4km there is a sign on the left hand side indicating you are leaving the Whistler Community Area. Stay left at the fork. (The right hand option is marked as BR 2100.)\r\n\r\n* 6.5km there is another fork, stay right.\r\n\r\n* 7.2km you will pass a chain link gate on the right with a "6.0km" marker on it. Continue past this gate and drive up a steep hill: most 2wd cars cannot make it here, so do not attempt to go up unless you do not care for you car.\r\n\r\n* 8.5km you arrive at the Brandywine Mountain Trail Head.', '3 hours', 0, 0, '', ''),
(6, 'This trail and the nearby Brew Hut are maintained by the UBC Varisty Outdoors club. see http://www.ubc-voc.com/wiki/Brew_Lake_Trail and http://www.ubc-voc.com/wiki/Brew_Hut for more details.', 'clubtread', 'Brew Hut', '', '', '', '1280m', '18km', 'Park at Brandywine Falls (47 km north of Squamish on Highway 99) and Hike south along the railroad tracks. After a 90 degree bend right, there is a 90 degree bend to the left. The trail starts on the right (west) side of the tracks near the end of the left bend, about 3km south of Brandywine Falls. The trail climbs steeply from here to Brew Lake. There is one section where the trail has been logged and a rough bypass trail has been constructed on the climbers left side of the clearcut, crossing a logging road en route. The bypass trail is easy to miss on the way down.\r\n\r\nAs of August 2013, the trail has some portions that are very overgrown and easy to miss on your way up.Pay attention to the markers!\r\n\r\nThere is no trail from Brew Lake up to the Brew Hut. Hike cross country over heather and blueberry meadows NW to a small lake and then N to the low pass between Brew Lake and Brandywine Creek. The hut is just east of this pass', '9 hours', 0, 0, '', ''),
(7, 'The trailhead starts right at the east end of the parking lot. Head up the old road, and within 20m, take the road heading right. If you pass the Kiewet yellow truck on stilts, you have gone the wrong way. If you pass through a gate, over a bridge and skirt around an old gravel pit, you have gone the right way. After 0.8km you hit a trail sign. Another .2km or so later on you reach the junction - straight ahead for Deeks Lake, or go left to get to the Lost Lake Shelter and beyond for Deeks Peak.\r\n\r\nLost Lake Shelter\r\n\r\nTrail is fairly overgrown at places, but is fairly easy to follow. Rocks can be slippery at times, as this trail doesn''t get a lot of use and moss covers the vast majority of the trail. At N49 32.339 W123 14.037 the trail gets considerably narrower, going from a logging / ATV track to a singletrack at best, ensure you go over the rocks straight ahead to access the remaining part of the trail.\r\n\r\nShelter sleeps 3 or so with an element of comfort, a wood stove and outdoor fire pit is provided. Please conserve firewood as it is very difficult to dry/cut up there.\r\n\r\nFebruary, 2009 trip report with more directionshere:\r\n\r\nhttp://www.clubtread.com/sforum/topic.asp?TOPIC_ID=29809\r\n\r\nMessage Ryan.In.Yaletown for the GPS track.\r\n\r\nSometimes referred to as the ''Kallahne Creek Trail''', 'clubtread', 'Deeks Peak', '', '', '', '1605m', '16km', 'The start of the route to Deeks Peak and the Lost Lake Shelter is located at the same parking lot as the north end of the Howe Sound Crest Trail. From Horseshoe Bay, drive north on Highway #99 (Sea-to-Sky) for 22km. Take the Porteau Road road exit and park in the large parking lot on the east side of the highway.\r\n\r\nParking lot is labelled with several signs saying no overnight parking/camping, there is some parking available along the roadside or below the highway.', '8 hours', 0, 0, '', ''),
(8, 'Route is as follows:\r\n\r\n-Climb the Rubble Creek switchbacks as you would for Garibaldi Lake hike.\r\n\r\n-At the 6km junction take the Taylor Meadows Campground turnoff.\r\n\r\n-Pass through the campground, cross Taylor Creek, pass the old ranger station and take the trail heading towards Black Tusk Meadows. The trail in this section can be extremely muddy.\r\n\r\n-At the Outhouse Junction continue towards Helm/Panorama/Black Tusk.\r\n\r\n-At the Black Tusk trail junction, continue straight towards Panorama/Helm.\r\n\r\n-At the Panorama trail junction, continue into Helm Valley.\r\n\r\n-Cross Helm Creek. There is no bridge, but there are sufficient rocks to hop across in low water without getting wet.\r\n\r\n-After the trail passes the small lake that is immediately to the north of Helm Lake (at or just past the level of Cinder Cone), turn left off-trail and head towards the saddle between Black Tusk and Empetrum. (Skirt to the north of a stand of trees that is north of the lake.) Leave the trail at a large white rock.\r\n\r\n-Take your time and look for a good place to re-cross Helm Creek - there should be plenty. A good spot is flagged.\r\n\r\n-Continue towards the saddle between Black Tusk and Empetrum. Look for a small stream course running down the south/south-east face of Empetrum. You should be able to pick a decently worn unofficial trail around here.\r\n\r\n-Even if you cannot locate a trail, ascend the stream course for ~20 minutes to the col, and then angle yourself right (north) up through a grassy slope to gain and follow the ridge line. A trailbed will be here.\r\n\r\n-The route should be fairly evident. You''ll first come to a false summit with excellent views to Black Tusk and Helm.\r\n\r\n-Continue along the summit ridge to the north/north-west to the true summit, marked by a cairn. A quick pace will see you summiting in 4-5 hours.\r\n\r\n-Retrace your steps back to your car for a long day.', 'clubtread', 'Empetrum', '', '', '', '1405m', '33km', 'Park in the Rubble Creek trailhead of Garibaldi Provincial Park along Highway 99 north of Squamish - same place as for Garibaldi Lake, Panorama Ridge and Black Tusk hikes. The 2km access road is paved and in excellent shape. Parking is now free at all BC Provincial Parks.', '9 hours', 0, 0, '', ''),
(9, 'There should be snowmobile tracks and some signage but follow the ridgeline up and eventually the trees will thin out and the summit comes into view. A pretty easy grade thoughout. Great views from the summit.', 'clubtread', 'Metal Dome', '', '', '', '800m', '10km', 'See Brandywine Mtn. for road directions. At the 4.5km mark on the FSR, turn right and head up staying on the main road. 4x4 needed here. Get up as far as you can then ski/snowshoe/walk the road up to the cabin (right at a junction. Left goes to Brandywine Meadows). From here either head up through the cut block or follow the road as it contours around to its end.', '5 hours', 0, 0, '', ''),
(10, 'Cumulative elevation gain (travelling to Russet Lake): 750 m\r\n\r\nCumulative elevation gain (returning from Russet Lake): 675 m\r\n\r\nThe scenic trail initially travels through the Whistler ski area, crossing Harmony Ridge, and bypassing Piccolo summit. The trail then ascends to Flute Summit, and continues on to Oboe Summit before dropping down to the Singing Pass Trail junction. From the junction, it is another 2km to the Himmelsbach Hut at Russet Lake.\r\n\r\nTo the south, there are good views of Black Tusk, Cheakamus Glacier and Cheakamus Lake. Blackcomb, Mt Decker and other peaks are visible to the north.', 'clubtread', 'Musical Bumps', '', '', '', '305 m', '11.6 km', 'The Musical Bumps Trail begins at the top of the Whistler Village Gondola. Pass below the offloading station of the Emerald Express chairlift to access the well maintained trail.', '3-5 hours', 0, 0, '', ''),
(11, 'This trail and the nearby Brian Waddington Hut are maintained by the UBC Varisty Outdoors club. see http://www.ubc-voc.com/wiki/Brian_Waddington_Hut for more details.\r\n\r\nA new trail has been completed entirely on the west side of the creek. At the end of the Phelix Creek road, continue through the logging slash to some large boulders. The trail starts just beyond and slightly above the boulders. The new trail is a good route for hiking, skiing or snowshoeing to the Brian Waddington Hut. Please follow the new trail around the north side of the lake, staying high and far away from the fragile terrain along the shore of the lake.', 'clubtread', 'Phelix Creek', '', '', '', '945m', '18.2km', 'Head north from Mt. Currie towards D''arcy. 33.9 km from the Mt. Currie junction, a couple kilometers before reaching D''arcy, the Blackwater Road leaves the main highway on the left. Reset your odometer again. Follow Blackwater Road west for 13.5km until just before a gate at the entrance to Birkenhead Lake Provincial Park. The Phelix Creek road goes uphill from here on the right hand side. There is a sizeable parking area at the bottom of the road. Blackwater Road is plowed in winter as far as the Birkenhead Lake Park gate.', '8 hours', 0, 0, '', ''),
(12, 'An excellent full day hike with an opportunity to meet some friendly folks along the way. You don''t even need to pack a lunch, as you can make a pit-stop at Callaghan Lodge and order a first class meal from their lunch menu before continuing to the Solitude Glacier Trail Head. Solitude Glacier lies about 5 kilometres due west of Callaghan Lodge. Access to the bottom of the moraine is moderately difficult, and is not suitable for novice hikers. The hike starts with an easy walk through a series of meadows rising gently for 2.5 kilometres until the point at which a rustic trail ascends a steep grade for about 150 metres before terminating at the bottom of a large glacial cirque surrounded by glaciers and ice walls. Travel above this point, up along the moraine (2.5 km) to the toe of the glacier is on loose scree.', 'clubtread', 'Solitude Glacier', '', '', '', '164m', '9km', 'From Downtown Vancouver (approx. 1 1/2 hrs.)\r\n\r\nDrive towards Stanley Park on Georgia Street. Follow the Stanley Park Causeway across the Lion’s Gate Bridge. On the north side of the bridge, keep left and follow the cloverleaf under the bridge towards West Vancouver. Turn right at the first set of lights onto Taylor Way. Follow\r\n\r\nTaylor Way to the top of the hill and turn left at the lights immediately after driving under a big overpass (this is the highway). You will now be on the on-ramp to the Trans-Canada Highway (#1). Continue along Hwy #1 and follow the signs to Highway 99. From Vancouver to Whistler is about 1.5\r\n\r\nhours, depending on traffic and road conditions. About 30 minutes past Squamish, you will pass Brandywine Falls Provincial Park. The turnoff to Callaghan Country is about 5 minutes past this park on the left hand side. You will see a sign announcing the Callaghan Valley Recreation Areas and another sign announcing Whistler Olympic Park as the 2010 Olympic Nordic venue. Turn left here. Follow the paved Callaghan Valley access road about 8.5km. You will see our sign on your left. Turn left and cross the bridge\r\n\r\nover Madeley Creek (If you arrive at Whistler Olympic Park, you’ve gone too far!) Follow the Callaghan Lake Forest Service Road to Callaghan Lake. It is about 8.5km from the Callaghan Country base to Callaghan Lake on a rough road and it takes about 30 – 45 minutes. A vehicle with good clearance (4WD preferred) is recommended. The trail to the lodge begins about 250m before you reach the lake – look for the sign on your left. There is a small clearing just off the road – park here. Take the Callaghan Lake to Callaghan Lodge (Conflict Lake) Trail to the Solitude Glacier Trail Head.', '3-5 hours', 0, 0, '', ''),
(14, 'Start on the Incline Trail just before the Mike Lake parking area. Follow the fire road, taking two marked shortcut trails, before following the trail proper up to the summit area. There are very few steep sections: the Incline Trail and some short steep sections near the top. The rest is a gradual uphill walk.\r\n\r\nA possible bike and hike outing.\r\n\r\nLimited views before the summit. One viewpoint at "10.5" km overlooking Alouette Lake.\r\n\r\nThe panoramic view from Alouette Mountain is spectacular. For many hikers the highlight of the trail is the virgin stands of mountain hemlock and yellow cedar.\r\n\r\nBe sure to carry water in dry weather and expect snow well into June.\r\n\r\nTrail conditions Sept 08: blowdown starting on second short cut; also overhanging bushes that may get you soaked if they''re wet.', 'clubtread', 'Alouette Mountain', '', '', '', '1101m', '22km', 'Take the Mike Lake road on the left about 4km into Golden Ears park and park at the lake, or you may also be able to park 5min before the lake at the trailhead (limited space here). The trailhead (Incline Trail) is well signed.', '8 hours', 0, 1, '', ''),
(15, 'Trailhead is the same as Grouse Grind, but the trail is the route that runs beside the Grind on the right (to east)\r\n\r\nThis trail is a slightly longer route to the Grouse Chalet, and usually gets somewhat less traffic. Scenery is similar, but the upper reaches of the trail crosses through some old growth forest. As with all trails up Grouse, it''s a steep track and a good workout, and the usual cautions apply.\r\n\r\nStart hiking up the Grouse Grind. Now after about 10 m past the gate the Baden Powell trail heads right, take that fork and in about 200m in there is a junction, the old GG start heads up to the left. Keep straight here and cross a dry creekbed. On the other side of the creekbed there is another junction (the Baden Powell trail heads straight), turn left here heading up the hill, following the markers.\r\n\r\nOnce you reach the chalet, you can hike down or take the Grouse Mountain Skyride for a fee of five dollars\r\n\r\nItemized description of trail:\r\n\r\n* Parking Lot 292 m\r\n\r\n* Tag #2 338m Junction with BP Trail\r\n\r\n* Tag # 17 415m Trail starts to switchback more steeply here\r\n\r\n* Tag #27 478m Tree fell Dec 06 creating an archway over the trail\r\n\r\n* Tag #31 Junction. Trail goes left (facing uphill) into ravine of creek then follows ravine up about 100 m and then climbs steeply out of ravine to rejoin BCMC trail at Tag#46. This is also a crossover to the Grind. It also connects to the Flint and Feather Trail. This is also the 1/4 point in elevation for the BCMC. There are two white stripes painted on the uphill side of a tree on the trail.\r\n\r\n* Tag #46 Junction. A Trail comes out of ravine. There is a blue X painted on a tree left of the trail\r\n\r\n* Tag #57 Junction. A trail goes to the right, it is the old BCMC and it continues to the junction with the Larson Trail at the "Private Property" signs. Tags begin about 50m along trail. There is a pleasant viewpoint on this trail about 100 m west of the Larson junction.\r\n\r\n* Tag #78 688m Junction. A trail goes to the right downhill and it continues to a junction with the Larson Trail at the same place as the previous trail.\r\n\r\n* Tag # 81 700m White paint on a tree. This is the site of a former cabin and now has a dense patch of small trees on a rock ledge above the trail. This is the half way point in elevation.\r\n\r\n* Tag #88 736m A University of Toronto Air Quality Research project with a "Do Not Touch" sign is visible above the trail.\r\n\r\n* Tag #99 805m\r\n\r\n* Tag #118 907m Junction. Larson Trail goes to the right downhill. This is the 3/4 point.\r\n\r\n* Tag # 129 971m Viewpoint for Capilano Lake\r\n\r\n* Tag # 135 1001m Another Viewpoint with Simic Trail very near right side of trail.\r\n\r\n* Tag #138 1026m Bridge over small creek\r\n\r\n* Tag # 145 1065m Road just ahead. Flint and Feather joins BCMC near here.\r\n\r\n* Pipeline 1075m\r\n\r\n* Grouse Grind Timer Clock 1110m\r\n\r\n* Top of Red Skyride 1118m\r\n\r\nReturn to parking lot, altimeter now reads 285m , seven meters lower than before.Hmm\r\n\r\nThis makes total elevation gain to be 1110 - 292 = 818m', 'clubtread', 'BCMC Trail (Grouse Mountain)', '', '', '', '853m', '3.3km', 'Follow Highway #1 (Trans-Canada) to North Vancouver, taking exit #14 for Capilano Road North. Follow Capilano Road to it''s northern end, at the base of the Grouse Mountain Skyride. Both pay parking as well as free parking along Capilano Road is available.\r\n\r\nThe 232 and 236 busses operate to the Grouse Mountain parking lot daily. For bus schedules and information, visit the Translink website.', '1.5 hours', 0, 0, '', ''),
(16, 'From the parking lot, follow the standard route toward Norvan Falls. At a junction 6.8 km before you reach the falls, turn right and head steeply uphill, following tapes and the occasional sign or marker.\r\n\r\nAt first the trail switches back up a steep and loose hillside, then swings left at about 750m elevation and enters old growth forest. From here you work your way through several creek gullies and an avalanche debris field at Norvan Meadows. Keep your eyes open for a set of tapes off trail to your right at Norvan Pools that lead to Norvan''s Castle, the world''s fourth largest Western hemlock tree. Next you will cross Norvan Creek and work your way uphill to another creek crossing on your way up to Norvan Pass. Here a right turn off the main trail provides a brief diversion to a nice viewpoint of the surrounding scenery, should you wish to stop. If not, continue climbing up into the Needle/Coliseum Col and some very scenic meadows. Soon the trail will intersect the route coming up from Paton''s Lookout in the LSCR and begin scrambling uphill to treeline, winding through some alpine terrain to the Coliseum summit at 1446m. You can continue to Mt Burwell from here if you wish, which will add a couple of hours to your trip.\r\n\r\nThe following description is based on a quick pace:\r\n\r\n-Start at the trailhead. Check the sign boards for the recent bear sightings.\r\n\r\n-Hike the mostly flat and well maintained trail to the Coliseum junction just before NorVan falls turnoff (1 hour, 30 min mark).\r\n\r\n-At the sign for Coliseum, turn right and head up the steepness past a number of old large stumps. Note that the sign says 7 hours return from that point - a quick hiker can do it in a little over 5 hours.\r\n\r\n-The steepest part will end and you will be in the valley between Coliseum and the Needles (2 hour mark).\r\n\r\n-The trail here will be surprisingly wet and muddy, even in the middle of the summer. Parts of the trail will be stream courses. Pass through an avalanche chute or two and a creekbed or two.\r\n\r\n-Gain the NorVan pass (3 hour mark). Take the spur trail to the right for 2 minutes to get to a nice viewpoint of the Seymour watershed on the other side.\r\n\r\n-Rejoin the main trail and head up left towards Coliseum.\r\n\r\n-The trail is steep in some spots. There are really only two "scramble" sections that require the use of hands for balance. Neither is particularly long or difficult. You will pass by a number of tarns as you pass tree level and start on the bare rock.\r\n\r\n-Follow the flagging and cairns to the Coliseum summit (4 hour, 10 minute mark). Enjoy the views all around and consider heading over to Mt. Burwell beyond.\r\n\r\n-Return the way you came. A quick hiker will be able to summit Coliseum and return to the trailhead in a little over 8 hours.', 'clubtread', 'Coliseum Mountain', '', '', '', '1256m', '23.6km', 'From Highway #1 (Trans-Canada Highway), head north over the Ironworkers Memorial (Second-Narrows) Bridge. Take exit #19 north, signed as Lynn Valley Road. Follow the road north for 3.5 km to Lynn Headwaters Regional Park. Park next to the main trailhead or in one of the overflow parking lots.\r\n\r\nThe 228 bus operates to the Lynn Valley Road / Langworthy Street intersection daily. It''s a walk of approximately 2 km to the trailhead from the bus stop. For bus schedules and information, visit the Translink website.', '10 hours', 0, 0, '', ''),
(17, 'Route starts from the Grouse Alpine Area kiosk which is 1.2 km from the skyride. Moderately difficult route going up the south side of Dam Mountain, then along the ridge; steeper and slippier going down the north side back to the alpine trail. There are many side trails - follow the flagging. Views face westward over the Capilano watershed.', 'clubtread', 'Dam Mountain', '', '', '', '264m', '5.1km', 'Follow Highway #1 (Trans-Canada) to North Vancouver, taking exit #14 for Capilano Road North. Follow Capilano Road to it''s northern end, at the base of the Grouse Mountain Skyride. Both pay parking as well as free parking along Capilano Road is available.\r\n\r\nThe 232 and 236 busses operate to the Grouse Mountain parking lot daily. For bus schedules and information, visit the Translink website.', '2 hours', 0, 0, '', ''),
(18, 'There are many trails to Mt. Fromme, but the one described here is, I believe, shortest and easiest if you take the Skyride up the Grouse Mountain. The North and South Peaks of Mt. Fromme are among the best places to overview the Metro Vancouver area and many backcountry mountains. The return distance from the Trail Head to both peaks is about 4.6km with 270m elevation gain. The total distance (return) from the Skyride is about 8.6km.\r\n\r\nFrom the trail head, walk about 300m to get to the junction at the Pipleline Pass, which is the junction of Mt. Fromme Trail and Erik The Red Trail, as marked. Pick the right fork here. The trail is well marked and the slope is moderate. There are many deers in this area so if there''s snow on the ground you''ll see many deer footprints. It seems that the deers also like this trail and in some sections you can even follow the footprints. So, you should not be surprised when you see a deer or a few of them in the woods.\r\n\r\nThe hike is quite straightforward and you won''t miss the trail. Only at about 1050m elevation there are some marks that may make you a bit confused. There are orange markers on the left but flaggings on the right, making you think this may be a junction. But it''s actually not. The two branches meet again after 30m or so. When you reach the "Y" junction to the North and South Peak, you can choose to go either of them first and then return to the "Y" junction and hike up to the other. It''s also possible for you to travel a loop from the South Peak down to the Mountain Highway by taking one of the downhill trails. But, if you are hiking this trail for the first time and the peak is covered by snow, you can hardly find the other trails, which usually few people use, especially in winter.\r\n\r\nSo, in the winter the safest way of going down hill is to return to the "Y" junction and follow your own footprints to the Pipeline Pass, which is what I did.\r\n\r\nTo get the waypoints related to the following photos, open the photo.', 'clubtread', 'Mount Frome', '', '', '', '270m', '8.6km', 'This trail shares the same trail head as Erik The Red Trail. If you start from the Skyride Chalet (upper Terminal), walk down the Grouse Mountain Highway to the col between Grouse Mtn and Mt. Fromme, at the head of Mosquito Creek, just passing the green sign board "Private Road" of the ski resort. You can take the ski tracks as a shortcut.', '3-4 hours', 0, 0, '', ''),
(19, 'Net elevation gain is 455m, cumulative gain may be closer to 600m.\r\n\r\nThe well-maintained trail leaves the parking lot going north, passing the First Lake and Dog Mtn Trail junctions, west of and parallel to the ski run. Then it swings right though a meadow, then left to follow the ski run to a small tarn (sometimes called Sugar Bowl, the headwaters of Suicide Creek), before making its way up to Brockton Point. Soon the trail goes right and downhill*, skirting the eastern slopes below Pump Peak to the Elsay lake trail juncion. At this junction go north ( up the slope) as the Elsay Lake trail goes downhill to the East, descending 300 metres. The Mount Seymour trail then goes north and approaches Pump Peak from the east, effectively from the back of the peak. Then you''ll cross an open area going North on your way to a prominent gully that leads you up to Second Peak. From the top of the gully you''ll carefully move downhill, then to your right as you traverse the north side of Second Peak (Tim Jones Peak), then follow the obvious ridge up to another plateau. This will lead you to another gully to access the summit of Mount Seymour, also called Third Peak.\r\n\r\n*You may choose the old route up to Pump Peak by looking to turn left just past the tarn at Brockton Point, before the main trail goes east and downhill, and climb the south face of Pump Peak via the gully. This original route is the origin of the "Pump Peak" name as you had to ''pump'' to get up it. BC Parks decided to decommission this route several decades ago as being too dangerous for the general public. Depending on which route you choose up the face, you will be scrambling some Class 2 and 3 rock in some areas. An easy route is to turn left at the base of the rock face and soon after go up a narrow gully: takes only a few minutes up to the plateau, and you may see some old trail markers along this route. Keep going north along the old trail on the plateau, crossing down into a couple of easy dry creek beds. This route will join the main trail on the plateau beyond Pump Peak.\r\n\r\nSome popular Vancouver hiking guides have in the past incorrectly listed the Mount Seymour main trail as requiring scrambling. The trail does not require any scrambling (using your hands) under good conditions, unless you take the old "decommissioned" route up Pump Peak.\r\n\r\nIt should be noted that during the winter this trail can be a serious undertaking, complete with ice, exposure, steep slopes and avalanche hazards. The trail''s popularity combined with many cliffs and bluffs on the mountain results in an above-average number of search-and-rescue operations on the mountain. Plan your hike accordingly and make sure you are prepared. The Elsay Lake Trail junction signage and many trail markers at this elevation can be buried in winter and into late spring so it is advisable to first familarize yourself with the route in summer.', 'clubtread', 'Mount Seymour', '', '', '', '454m', '7.6 km', 'From Highway #1 (Trans-Canada Highway), head north over the Ironworkers Memorial (Second-Narrows) Bridge in the middle lane. Take the third exit after the bridge (#22a), signed as Mount Seymour Parkway. Turn right onto Mount Seymour Parkway almost immediately and follow it 4.4 km before turning left onto Mount Seymour Road.\r\n\r\nFollow Mount Seymour Road as it winds it''s way up the mountain. Drive to the end of the large parking lot at the end of the road. Start at the BC Parks Mount Seymour Trail kiosk, to the left of the Mystery Peak chairlift. Mount Seymour Resorts now restricts parking for vehicles during the winter months to their paying customers only(i.e. in the ski season, November to April) during which time hikers or snowshoers must use the designated "Lot 5" at the roadside or use Lot 1, 1km before the trailhead.\r\n\r\nPets must be on leash at all times in the park.\r\n\r\nTrails at this elevation are not open to mountain bikes, such as the Mount Seymour Trail.\r\n\r\nMore info: http://www.env.gov.bc.ca/bcparks/explore/parkpgs/mt_seymour/', '5 hours', 0, 0, '', ''),
(20, 'This is a very well marked route which is fairly easy to follow. There are few cautions, but exercise good judgement in wet conditions, when footing can become slick. Keep your eyes open for logging artifacts you may find along the trail, but please leave them for others to see.\r\n\r\nIf you are thinking about crossing Norvan Creek and heading for Hanes Valley, be advised it is a rough and rugged route for which you must be prepared and the route is closed by the parks in winter.\r\n\r\nStart by crossing the bridge over Lynn Creek, then follow the Cedar Mills Trail to the debris chute at 3.8km . Here you turn right and then left at the signed junction onto the Headwaters Trail which will eventually bring you to Norvan Creek. To see the falls, don''t cross the bridge over the creek, instead turn right and hike another 5-10 minutes along the south bank of the creek', 'clubtread', 'Norvan Falls', '', '', '', '215m', '11.8km', 'From Highway #1 (Trans-Canada Highway), head north over the Ironworkers Memorial (Second-Narrows) Bridge. Take exit #19 north, signed as Lynn Valley Road. Follow the road north for 3.5 km to Lynn Headwaters Regional Park. Park next to the main trailhead or in one of the overflow parking lots.\r\n\r\nThe 228 bus operates to the Lynn Valley Road / Langworthy Street intersection daily. It''s a walk of approximately 2 km to the trailhead from the bus stop. For bus schedules and information, visit the Translink website.', '6 hours', 0, 0, '', '');

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
