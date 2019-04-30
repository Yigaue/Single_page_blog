-- phpMyAdmin SQL Dump
-- version 4.8.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 30, 2019 at 10:53 AM
-- Server version: 10.1.33-MariaDB
-- PHP Version: 7.2.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bitnami_joomla`
--
CREATE DATABASE IF NOT EXISTS `bitnami_joomla` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `bitnami_joomla`;

-- --------------------------------------------------------

--
-- Table structure for table `jos_assets`
--

CREATE TABLE `jos_assets` (
  `id` int(10) UNSIGNED NOT NULL COMMENT 'Primary Key',
  `parent_id` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set parent.',
  `lft` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set rgt.',
  `level` int(10) UNSIGNED NOT NULL COMMENT 'The cached level in the nested tree.',
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The unique name for the asset.\n',
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The descriptive title for the asset.',
  `rules` varchar(5120) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'JSON encoded access control.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `jos_assets`
--

INSERT INTO `jos_assets` (`id`, `parent_id`, `lft`, `rgt`, `level`, `name`, `title`, `rules`) VALUES
(1, 0, 0, 119, 0, 'root.1', 'Root Asset', '{\"core.login.site\":{\"6\":1,\"2\":1},\"core.login.admin\":{\"6\":1},\"core.login.offline\":{\"6\":1},\"core.admin\":{\"8\":1},\"core.manage\":{\"7\":1},\"core.create\":{\"6\":1,\"3\":1},\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1},\"core.edit.own\":{\"6\":1,\"3\":1}}'),
(2, 1, 1, 2, 1, 'com_admin', 'com_admin', '{}'),
(3, 1, 3, 6, 1, 'com_banners', 'com_banners', '{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1}}'),
(4, 1, 7, 8, 1, 'com_cache', 'com_cache', '{\"core.admin\":{\"7\":1},\"core.manage\":{\"7\":1}}'),
(5, 1, 9, 10, 1, 'com_checkin', 'com_checkin', '{\"core.admin\":{\"7\":1},\"core.manage\":{\"7\":1}}'),
(6, 1, 11, 12, 1, 'com_config', 'com_config', '{}'),
(7, 1, 13, 16, 1, 'com_contact', 'com_contact', '{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1}}'),
(8, 1, 17, 22, 1, 'com_content', 'com_content', '{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1},\"core.create\":{\"3\":1},\"core.edit\":{\"4\":1},\"core.edit.state\":{\"5\":1}}'),
(9, 1, 23, 24, 1, 'com_cpanel', 'com_cpanel', '{}'),
(10, 1, 25, 26, 1, 'com_installer', 'com_installer', '{\"core.manage\":{\"7\":0},\"core.delete\":{\"7\":0},\"core.edit.state\":{\"7\":0}}'),
(11, 1, 27, 28, 1, 'com_languages', 'com_languages', '{\"core.admin\":{\"7\":1}}'),
(12, 1, 29, 30, 1, 'com_login', 'com_login', '{}'),
(13, 1, 31, 32, 1, 'com_mailto', 'com_mailto', '{}'),
(14, 1, 33, 34, 1, 'com_massmail', 'com_massmail', '{}'),
(15, 1, 35, 36, 1, 'com_media', 'com_media', '{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1},\"core.create\":{\"3\":1},\"core.delete\":{\"5\":1}}'),
(16, 1, 37, 38, 1, 'com_menus', 'com_menus', '{\"core.admin\":{\"7\":1}}'),
(17, 1, 39, 40, 1, 'com_messages', 'com_messages', '{\"core.admin\":{\"7\":1},\"core.manage\":{\"7\":1}}'),
(18, 1, 41, 86, 1, 'com_modules', 'com_modules', '{\"core.admin\":{\"7\":1}}'),
(19, 1, 87, 90, 1, 'com_newsfeeds', 'com_newsfeeds', '{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1}}'),
(20, 1, 91, 92, 1, 'com_plugins', 'com_plugins', '{\"core.admin\":{\"7\":1}}'),
(21, 1, 93, 94, 1, 'com_redirect', 'com_redirect', '{\"core.admin\":{\"7\":1}}'),
(22, 1, 95, 96, 1, 'com_search', 'com_search', '{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1}}'),
(23, 1, 97, 98, 1, 'com_templates', 'com_templates', '{\"core.admin\":{\"7\":1}}'),
(24, 1, 99, 102, 1, 'com_users', 'com_users', '{\"core.admin\":{\"7\":1}}'),
(26, 1, 103, 104, 1, 'com_wrapper', 'com_wrapper', '{}'),
(27, 8, 18, 21, 2, 'com_content.category.2', 'Uncategorised', '{}'),
(28, 3, 4, 5, 2, 'com_banners.category.3', 'Uncategorised', '{}'),
(29, 7, 14, 15, 2, 'com_contact.category.4', 'Uncategorised', '{}'),
(30, 19, 88, 89, 2, 'com_newsfeeds.category.5', 'Uncategorised', '{}'),
(32, 24, 100, 101, 2, 'com_users.category.7', 'Uncategorised', '{}'),
(33, 1, 105, 106, 1, 'com_finder', 'com_finder', '{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1}}'),
(34, 1, 107, 108, 1, 'com_joomlaupdate', 'com_joomlaupdate', '{}'),
(35, 1, 109, 110, 1, 'com_tags', 'com_tags', '{}'),
(36, 1, 111, 112, 1, 'com_contenthistory', 'com_contenthistory', '{}'),
(37, 1, 113, 114, 1, 'com_ajax', 'com_ajax', '{}'),
(38, 1, 115, 116, 1, 'com_postinstall', 'com_postinstall', '{}'),
(39, 18, 42, 43, 2, 'com_modules.module.1', 'Main Menu', '{}'),
(40, 18, 44, 45, 2, 'com_modules.module.2', 'Login', '{}'),
(41, 18, 46, 47, 2, 'com_modules.module.3', 'Popular Articles', '{}'),
(42, 18, 48, 49, 2, 'com_modules.module.4', 'Recently Added Articles', '{}'),
(43, 18, 50, 51, 2, 'com_modules.module.8', 'Toolbar', '{}'),
(44, 18, 52, 53, 2, 'com_modules.module.9', 'Quick Icons', '{}'),
(45, 18, 54, 55, 2, 'com_modules.module.10', 'Logged-in Users', '{}'),
(46, 18, 56, 57, 2, 'com_modules.module.12', 'Admin Menu', '{}'),
(47, 18, 58, 59, 2, 'com_modules.module.13', 'Admin Submenu', '{}'),
(48, 18, 60, 61, 2, 'com_modules.module.14', 'User Status', '{}'),
(49, 18, 62, 63, 2, 'com_modules.module.15', 'Title', '{}'),
(50, 18, 64, 65, 2, 'com_modules.module.16', 'Login Form', '{}'),
(51, 18, 66, 67, 2, 'com_modules.module.17', 'Breadcrumbs', '{}'),
(52, 18, 68, 69, 2, 'com_modules.module.79', 'Multilanguage status', '{}'),
(53, 18, 70, 71, 2, 'com_modules.module.86', 'Joomla Version', '{}'),
(54, 18, 72, 73, 2, 'com_modules.module.87', 'Popular Tags', '{\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1}}'),
(55, 18, 74, 75, 2, 'com_modules.module.88', 'Site Information', '{\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1}}'),
(56, 18, 76, 77, 2, 'com_modules.module.89', 'Release News', '{\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1}}'),
(57, 18, 78, 79, 2, 'com_modules.module.90', 'Latest Articles', '{\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1}}'),
(58, 18, 80, 81, 2, 'com_modules.module.91', 'User Menu', '{\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1}}'),
(59, 18, 82, 83, 2, 'com_modules.module.92', 'Image Module', '{\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1}}'),
(60, 18, 84, 85, 2, 'com_modules.module.93', 'Search', '{\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1}}'),
(61, 27, 19, 20, 3, 'com_content.article.1', 'Getting Started', '{\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1}}'),
(62, 1, 117, 118, 1, 'jos_ucm_content.1', 'jos_ucm_content.1', '{}');

-- --------------------------------------------------------

--
-- Table structure for table `jos_associations`
--

CREATE TABLE `jos_associations` (
  `id` int(11) NOT NULL COMMENT 'A reference to the associated item.',
  `context` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The context of the associated item.',
  `key` char(32) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The key for the association computed from an md5 on associated ids.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jos_banners`
--

CREATE TABLE `jos_banners` (
  `id` int(11) NOT NULL,
  `cid` int(11) NOT NULL DEFAULT '0',
  `type` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `imptotal` int(11) NOT NULL DEFAULT '0',
  `impmade` int(11) NOT NULL DEFAULT '0',
  `clicks` int(11) NOT NULL DEFAULT '0',
  `clickurl` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `catid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `custombannercode` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sticky` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `metakey` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `own_prefix` tinyint(1) NOT NULL DEFAULT '0',
  `metakey_prefix` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `purchase_type` tinyint(4) NOT NULL DEFAULT '-1',
  `track_clicks` tinyint(4) NOT NULL DEFAULT '-1',
  `track_impressions` tinyint(4) NOT NULL DEFAULT '-1',
  `checked_out` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `reset` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `created_by` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `version` int(10) UNSIGNED NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jos_banner_clients`
--

CREATE TABLE `jos_banner_clients` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `contact` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `extrainfo` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `checked_out` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `metakey` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `own_prefix` tinyint(4) NOT NULL DEFAULT '0',
  `metakey_prefix` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `purchase_type` tinyint(4) NOT NULL DEFAULT '-1',
  `track_clicks` tinyint(4) NOT NULL DEFAULT '-1',
  `track_impressions` tinyint(4) NOT NULL DEFAULT '-1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jos_banner_tracks`
--

CREATE TABLE `jos_banner_tracks` (
  `track_date` datetime NOT NULL,
  `track_type` int(10) UNSIGNED NOT NULL,
  `banner_id` int(10) UNSIGNED NOT NULL,
  `count` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jos_categories`
--

CREATE TABLE `jos_categories` (
  `id` int(11) NOT NULL,
  `asset_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'FK to the jos_assets table.',
  `parent_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `lft` int(11) NOT NULL DEFAULT '0',
  `rgt` int(11) NOT NULL DEFAULT '0',
  `level` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `path` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `extension` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `note` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `access` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `metadesc` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'The meta description for the page.',
  `metakey` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'The meta keywords for the page.',
  `metadata` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'JSON encoded metadata properties.',
  `created_user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `hits` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `version` int(10) UNSIGNED NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `jos_categories`
--

INSERT INTO `jos_categories` (`id`, `asset_id`, `parent_id`, `lft`, `rgt`, `level`, `path`, `extension`, `title`, `alias`, `note`, `description`, `published`, `checked_out`, `checked_out_time`, `access`, `params`, `metadesc`, `metakey`, `metadata`, `created_user_id`, `created_time`, `modified_user_id`, `modified_time`, `hits`, `language`, `version`) VALUES
(1, 0, 0, 0, 11, 0, '', 'system', 'ROOT', 'root', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{}', '', '', '{}', 42, '2011-01-01 00:00:01', 0, '0000-00-00 00:00:00', 0, '*', 1),
(2, 27, 1, 1, 2, 1, 'uncategorised', 'com_content', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{\"category_layout\":\"\",\"image\":\"\"}', '', '', '{\"author\":\"\",\"robots\":\"\"}', 42, '2011-01-01 00:00:01', 0, '0000-00-00 00:00:00', 0, '*', 1),
(3, 28, 1, 3, 4, 1, 'uncategorised', 'com_banners', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{\"category_layout\":\"\",\"image\":\"\"}', '', '', '{\"author\":\"\",\"robots\":\"\"}', 42, '2011-01-01 00:00:01', 0, '0000-00-00 00:00:00', 0, '*', 1),
(4, 29, 1, 5, 6, 1, 'uncategorised', 'com_contact', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{\"category_layout\":\"\",\"image\":\"\"}', '', '', '{\"author\":\"\",\"robots\":\"\"}', 42, '2011-01-01 00:00:01', 0, '0000-00-00 00:00:00', 0, '*', 1),
(5, 30, 1, 7, 8, 1, 'uncategorised', 'com_newsfeeds', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{\"category_layout\":\"\",\"image\":\"\"}', '', '', '{\"author\":\"\",\"robots\":\"\"}', 42, '2011-01-01 00:00:01', 0, '0000-00-00 00:00:00', 0, '*', 1),
(7, 32, 1, 9, 10, 1, 'uncategorised', 'com_users', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{\"category_layout\":\"\",\"image\":\"\"}', '', '', '{\"author\":\"\",\"robots\":\"\"}', 42, '2011-01-01 00:00:01', 0, '0000-00-00 00:00:00', 0, '*', 1);

-- --------------------------------------------------------

--
-- Table structure for table `jos_contact_details`
--

CREATE TABLE `jos_contact_details` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `con_position` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8mb4_unicode_ci,
  `suburb` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `postcode` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `telephone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fax` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `misc` mediumtext COLLATE utf8mb4_unicode_ci,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_to` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `default_con` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `catid` int(11) NOT NULL DEFAULT '0',
  `access` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `mobile` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `webpage` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `sortname1` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `sortname2` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `sortname3` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `language` varchar(7) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `metakey` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `metadesc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `metadata` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `featured` tinyint(3) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Set if contact is featured.',
  `xreference` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'A reference to enable linkages to external data sets.',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `version` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `hits` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jos_content`
--

CREATE TABLE `jos_content` (
  `id` int(10) UNSIGNED NOT NULL,
  `asset_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'FK to the jos_assets table.',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `introtext` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `fulltext` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `catid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `checked_out` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `images` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `urls` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `attribs` varchar(5120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `version` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `metakey` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `metadesc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `access` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `hits` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `metadata` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `featured` tinyint(3) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Set if article is featured.',
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The language code for the article.',
  `xreference` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'A reference to enable linkages to external data sets.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `jos_content`
--

INSERT INTO `jos_content` (`id`, `asset_id`, `title`, `alias`, `introtext`, `fulltext`, `state`, `catid`, `created`, `created_by`, `created_by_alias`, `modified`, `modified_by`, `checked_out`, `checked_out_time`, `publish_up`, `publish_down`, `images`, `urls`, `attribs`, `version`, `ordering`, `metakey`, `metadesc`, `access`, `hits`, `metadata`, `featured`, `language`, `xreference`) VALUES
(1, 61, 'Getting Started', 'getting-started', '<p>It\'s easy to get started creating your website. Knowing some of the basics will help.</p><h3>What is a Content Management System?</h3><p>A content management system is software that allows you to create and manage webpages easily by separating the creation of your content from the mechanics required to present it on the web.</p><p>In this site, the content is stored in a <em>database</em>. The look and feel are created by a <em>template</em>. Joomla! brings together the template and your content to create web pages.</p><h3>Logging in</h3><p>To login to your site use the user name and password that were created as part of the installation process. Once logged-in you will be able to create and edit articles and modify some settings.</p><h3>Creating an article</h3><p>Once you are logged-in, a new menu will be visible. To create a new article, click on the \"Submit Article\" link on that menu.</p><p>The new article interface gives you a lot of options, but all you need to do is add a title and put something in the content area. To make it easy to find, set the state to published.</p><div>You can edit an existing article by clicking on the edit icon (this only displays to users who have the right to edit).</div><h3>Template, site settings, and modules</h3><p>The look and feel of your site is controlled by a template. You can change the site name, background colour, highlights colour and more by editing the template settings. Click the \"Template Settings\" in the user menu.</p><p>The boxes around the main content of the site are called modules. You can modify modules on the current page by moving your cursor to the module and clicking the edit link. Always be sure to save and close any module you edit.</p><p>You can change some site settings such as the site name and description by clicking on the \"Site Settings\" link.</p><p>More advanced options for templates, site settings, modules, and more are available in the site administrator.</p><h3>Site and Administrator</h3><p>Your site actually has two separate sites. The site (also called the front end) is what visitors to your site will see. The administrator (also called the back end) is only used by people managing your site. You can access the administrator by clicking the \"Site Administrator\" link on the \"User Menu\" menu (visible once you login) or by adding /administrator to the end of your domain name. The same user name and password are used for both sites.</p><h3>Learn more</h3><p>There is much more to learn about how to use Joomla! to create the website you envision. You can learn much more at the <a href=\"https://docs.joomla.org/\" target=\"_blank\">Joomla! documentation site</a> and on the<a href=\"https://forum.joomla.org/\" target=\"_blank\"> Joomla! forums</a>.</p>', '', 1, 2, '2013-11-16 00:00:00', 849, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2013-11-16 00:00:00', '0000-00-00 00:00:00', '{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}', '{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}', '{\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}', 1, 0, '', '', 1, 3, '{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}', 0, '*', '');

-- --------------------------------------------------------

--
-- Table structure for table `jos_contentitem_tag_map`
--

CREATE TABLE `jos_contentitem_tag_map` (
  `type_alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `core_content_id` int(10) UNSIGNED NOT NULL COMMENT 'PK from the core content table',
  `content_item_id` int(11) NOT NULL COMMENT 'PK from the content type table',
  `tag_id` int(10) UNSIGNED NOT NULL COMMENT 'PK from the tag table',
  `tag_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Date of most recent save for this tag-item',
  `type_id` mediumint(8) NOT NULL COMMENT 'PK from the content_type table'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Maps items from content tables to tags';

--
-- Dumping data for table `jos_contentitem_tag_map`
--

INSERT INTO `jos_contentitem_tag_map` (`type_alias`, `core_content_id`, `content_item_id`, `tag_id`, `tag_date`, `type_id`) VALUES
('com_content.article', 1, 1, 2, '2013-11-16 06:00:00', 1);

-- --------------------------------------------------------

--
-- Table structure for table `jos_content_frontpage`
--

CREATE TABLE `jos_content_frontpage` (
  `content_id` int(11) NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jos_content_rating`
--

CREATE TABLE `jos_content_rating` (
  `content_id` int(11) NOT NULL DEFAULT '0',
  `rating_sum` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `rating_count` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `lastip` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jos_content_types`
--

CREATE TABLE `jos_content_types` (
  `type_id` int(10) UNSIGNED NOT NULL,
  `type_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `type_alias` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `table` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `rules` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `field_mappings` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `router` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `content_history_options` varchar(5120) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'JSON string for com_contenthistory options'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `jos_content_types`
--

INSERT INTO `jos_content_types` (`type_id`, `type_title`, `type_alias`, `table`, `rules`, `field_mappings`, `router`, `content_history_options`) VALUES
(1, 'Article', 'com_content.article', '{\"special\":{\"dbtable\":\"jos_content\",\"key\":\"id\",\"type\":\"Content\",\"prefix\":\"JTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"jos_ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}', '', '{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"state\",\"core_alias\":\"alias\",\"core_created_time\":\"created\",\"core_modified_time\":\"modified\",\"core_body\":\"introtext\", \"core_hits\":\"hits\",\"core_publish_up\":\"publish_up\",\"core_publish_down\":\"publish_down\",\"core_access\":\"access\", \"core_params\":\"attribs\", \"core_featured\":\"featured\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"images\", \"core_urls\":\"urls\", \"core_version\":\"version\", \"core_ordering\":\"ordering\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"catid\", \"core_xreference\":\"xreference\", \"asset_id\":\"asset_id\"}, \"special\":{\"fulltext\":\"fulltext\"}}', 'ContentHelperRoute::getArticleRoute', '{\"formFile\":\"administrator\\/components\\/com_content\\/models\\/forms\\/article.xml\", \"hideFields\":[\"asset_id\",\"checked_out\",\"checked_out_time\",\"version\"],\"ignoreChanges\":[\"modified_by\", \"modified\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\"],\"convertToInt\":[\"publish_up\", \"publish_down\", \"featured\", \"ordering\"],\"displayLookup\":[{\"sourceColumn\":\"catid\",\"targetTable\":\"jos_categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"created_by\",\"targetTable\":\"jos_users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"access\",\"targetTable\":\"jos_viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_by\",\"targetTable\":\"jos_users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"} ]}'),
(2, 'Contact', 'com_contact.contact', '{\"special\":{\"dbtable\":\"jos_contact_details\",\"key\":\"id\",\"type\":\"Contact\",\"prefix\":\"ContactTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"jos_ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}', '', '{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"name\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created\",\"core_modified_time\":\"modified\",\"core_body\":\"address\", \"core_hits\":\"hits\",\"core_publish_up\":\"publish_up\",\"core_publish_down\":\"publish_down\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"featured\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"image\", \"core_urls\":\"webpage\", \"core_version\":\"version\", \"core_ordering\":\"ordering\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"catid\", \"core_xreference\":\"xreference\", \"asset_id\":\"null\"}, \"special\":{\"con_position\":\"con_position\",\"suburb\":\"suburb\",\"state\":\"state\",\"country\":\"country\",\"postcode\":\"postcode\",\"telephone\":\"telephone\",\"fax\":\"fax\",\"misc\":\"misc\",\"email_to\":\"email_to\",\"default_con\":\"default_con\",\"user_id\":\"user_id\",\"mobile\":\"mobile\",\"sortname1\":\"sortname1\",\"sortname2\":\"sortname2\",\"sortname3\":\"sortname3\"}}', 'ContactHelperRoute::getContactRoute', '{\"formFile\":\"administrator\\/components\\/com_contact\\/models\\/forms\\/contact.xml\",\"hideFields\":[\"default_con\",\"checked_out\",\"checked_out_time\",\"version\",\"xreference\"],\"ignoreChanges\":[\"modified_by\", \"modified\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\"],\"convertToInt\":[\"publish_up\", \"publish_down\", \"featured\", \"ordering\"], \"displayLookup\":[ {\"sourceColumn\":\"created_by\",\"targetTable\":\"jos_users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"catid\",\"targetTable\":\"jos_categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_by\",\"targetTable\":\"jos_users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"access\",\"targetTable\":\"jos_viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"user_id\",\"targetTable\":\"jos_users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"} ] }'),
(3, 'Newsfeed', 'com_newsfeeds.newsfeed', '{\"special\":{\"dbtable\":\"jos_newsfeeds\",\"key\":\"id\",\"type\":\"Newsfeed\",\"prefix\":\"NewsfeedsTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"jos_ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}', '', '{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"name\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created\",\"core_modified_time\":\"modified\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"publish_up\",\"core_publish_down\":\"publish_down\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"featured\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"images\", \"core_urls\":\"link\", \"core_version\":\"version\", \"core_ordering\":\"ordering\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"catid\", \"core_xreference\":\"xreference\", \"asset_id\":\"null\"}, \"special\":{\"numarticles\":\"numarticles\",\"cache_time\":\"cache_time\",\"rtl\":\"rtl\"}}', 'NewsfeedsHelperRoute::getNewsfeedRoute', '{\"formFile\":\"administrator\\/components\\/com_newsfeeds\\/models\\/forms\\/newsfeed.xml\",\"hideFields\":[\"asset_id\",\"checked_out\",\"checked_out_time\",\"version\"],\"ignoreChanges\":[\"modified_by\", \"modified\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\"],\"convertToInt\":[\"publish_up\", \"publish_down\", \"featured\", \"ordering\"],\"displayLookup\":[{\"sourceColumn\":\"catid\",\"targetTable\":\"jos_categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"created_by\",\"targetTable\":\"jos_users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"access\",\"targetTable\":\"jos_viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_by\",\"targetTable\":\"jos_users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"} ]}'),
(4, 'User', 'com_users.user', '{\"special\":{\"dbtable\":\"jos_users\",\"key\":\"id\",\"type\":\"User\",\"prefix\":\"JTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"jos_ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}', '', '{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"name\",\"core_state\":\"null\",\"core_alias\":\"username\",\"core_created_time\":\"registerdate\",\"core_modified_time\":\"lastvisitDate\",\"core_body\":\"null\", \"core_hits\":\"null\",\"core_publish_up\":\"null\",\"core_publish_down\":\"null\",\"access\":\"null\", \"core_params\":\"params\", \"core_featured\":\"null\", \"core_metadata\":\"null\", \"core_language\":\"null\", \"core_images\":\"null\", \"core_urls\":\"null\", \"core_version\":\"null\", \"core_ordering\":\"null\", \"core_metakey\":\"null\", \"core_metadesc\":\"null\", \"core_catid\":\"null\", \"core_xreference\":\"null\", \"asset_id\":\"null\"}, \"special\":{}}', 'UsersHelperRoute::getUserRoute', ''),
(5, 'Article Category', 'com_content.category', '{\"special\":{\"dbtable\":\"jos_categories\",\"key\":\"id\",\"type\":\"Category\",\"prefix\":\"JTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"jos_ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}', '', '{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created_time\",\"core_modified_time\":\"modified_time\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"null\",\"core_publish_down\":\"null\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"null\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"null\", \"core_urls\":\"null\", \"core_version\":\"version\", \"core_ordering\":\"null\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"parent_id\", \"core_xreference\":\"null\", \"asset_id\":\"asset_id\"}, \"special\":{\"parent_id\":\"parent_id\",\"lft\":\"lft\",\"rgt\":\"rgt\",\"level\":\"level\",\"path\":\"path\",\"extension\":\"extension\",\"note\":\"note\"}}', 'ContentHelperRoute::getCategoryRoute', '{\"formFile\":\"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml\", \"hideFields\":[\"asset_id\",\"checked_out\",\"checked_out_time\",\"version\",\"lft\",\"rgt\",\"level\",\"path\",\"extension\"], \"ignoreChanges\":[\"modified_user_id\", \"modified_time\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\", \"path\"],\"convertToInt\":[\"publish_up\", \"publish_down\"], \"displayLookup\":[{\"sourceColumn\":\"created_user_id\",\"targetTable\":\"jos_users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"access\",\"targetTable\":\"jos_viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_user_id\",\"targetTable\":\"jos_users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"parent_id\",\"targetTable\":\"jos_categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}]}'),
(6, 'Contact Category', 'com_contact.category', '{\"special\":{\"dbtable\":\"jos_categories\",\"key\":\"id\",\"type\":\"Category\",\"prefix\":\"JTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"jos_ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}', '', '{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created_time\",\"core_modified_time\":\"modified_time\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"null\",\"core_publish_down\":\"null\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"null\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"null\", \"core_urls\":\"null\", \"core_version\":\"version\", \"core_ordering\":\"null\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"parent_id\", \"core_xreference\":\"null\", \"asset_id\":\"asset_id\"}, \"special\":{\"parent_id\":\"parent_id\",\"lft\":\"lft\",\"rgt\":\"rgt\",\"level\":\"level\",\"path\":\"path\",\"extension\":\"extension\",\"note\":\"note\"}}', 'ContactHelperRoute::getCategoryRoute', '{\"formFile\":\"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml\", \"hideFields\":[\"asset_id\",\"checked_out\",\"checked_out_time\",\"version\",\"lft\",\"rgt\",\"level\",\"path\",\"extension\"], \"ignoreChanges\":[\"modified_user_id\", \"modified_time\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\", \"path\"],\"convertToInt\":[\"publish_up\", \"publish_down\"], \"displayLookup\":[{\"sourceColumn\":\"created_user_id\",\"targetTable\":\"jos_users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"access\",\"targetTable\":\"jos_viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_user_id\",\"targetTable\":\"jos_users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"parent_id\",\"targetTable\":\"jos_categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}]}'),
(7, 'Newsfeeds Category', 'com_newsfeeds.category', '{\"special\":{\"dbtable\":\"jos_categories\",\"key\":\"id\",\"type\":\"Category\",\"prefix\":\"JTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"jos_ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}', '', '{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created_time\",\"core_modified_time\":\"modified_time\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"null\",\"core_publish_down\":\"null\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"null\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"null\", \"core_urls\":\"null\", \"core_version\":\"version\", \"core_ordering\":\"null\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"parent_id\", \"core_xreference\":\"null\", \"asset_id\":\"asset_id\"}, \"special\":{\"parent_id\":\"parent_id\",\"lft\":\"lft\",\"rgt\":\"rgt\",\"level\":\"level\",\"path\":\"path\",\"extension\":\"extension\",\"note\":\"note\"}}', 'NewsfeedsHelperRoute::getCategoryRoute', '{\"formFile\":\"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml\", \"hideFields\":[\"asset_id\",\"checked_out\",\"checked_out_time\",\"version\",\"lft\",\"rgt\",\"level\",\"path\",\"extension\"], \"ignoreChanges\":[\"modified_user_id\", \"modified_time\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\", \"path\"],\"convertToInt\":[\"publish_up\", \"publish_down\"], \"displayLookup\":[{\"sourceColumn\":\"created_user_id\",\"targetTable\":\"jos_users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"access\",\"targetTable\":\"jos_viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_user_id\",\"targetTable\":\"jos_users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"parent_id\",\"targetTable\":\"jos_categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}]}'),
(8, 'Tag', 'com_tags.tag', '{\"special\":{\"dbtable\":\"jos_tags\",\"key\":\"tag_id\",\"type\":\"Tag\",\"prefix\":\"TagsTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"jos_ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}', '', '{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created_time\",\"core_modified_time\":\"modified_time\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"null\",\"core_publish_down\":\"null\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"featured\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"images\", \"core_urls\":\"urls\", \"core_version\":\"version\", \"core_ordering\":\"null\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"null\", \"core_xreference\":\"null\", \"asset_id\":\"null\"}, \"special\":{\"parent_id\":\"parent_id\",\"lft\":\"lft\",\"rgt\":\"rgt\",\"level\":\"level\",\"path\":\"path\"}}', 'TagsHelperRoute::getTagRoute', '{\"formFile\":\"administrator\\/components\\/com_tags\\/models\\/forms\\/tag.xml\", \"hideFields\":[\"checked_out\",\"checked_out_time\",\"version\", \"lft\", \"rgt\", \"level\", \"path\", \"urls\", \"publish_up\", \"publish_down\"],\"ignoreChanges\":[\"modified_user_id\", \"modified_time\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\", \"path\"],\"convertToInt\":[\"publish_up\", \"publish_down\"], \"displayLookup\":[{\"sourceColumn\":\"created_user_id\",\"targetTable\":\"jos_users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"}, {\"sourceColumn\":\"access\",\"targetTable\":\"jos_viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}, {\"sourceColumn\":\"modified_user_id\",\"targetTable\":\"jos_users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"}]}'),
(9, 'Banner', 'com_banners.banner', '{\"special\":{\"dbtable\":\"jos_banners\",\"key\":\"id\",\"type\":\"Banner\",\"prefix\":\"BannersTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"jos_ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}', '', '{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"name\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created\",\"core_modified_time\":\"modified\",\"core_body\":\"description\", \"core_hits\":\"null\",\"core_publish_up\":\"publish_up\",\"core_publish_down\":\"publish_down\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"null\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"images\", \"core_urls\":\"link\", \"core_version\":\"version\", \"core_ordering\":\"ordering\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"catid\", \"core_xreference\":\"null\", \"asset_id\":\"null\"}, \"special\":{\"imptotal\":\"imptotal\", \"impmade\":\"impmade\", \"clicks\":\"clicks\", \"clickurl\":\"clickurl\", \"custombannercode\":\"custombannercode\", \"cid\":\"cid\", \"purchase_type\":\"purchase_type\", \"track_impressions\":\"track_impressions\", \"track_clicks\":\"track_clicks\"}}', '', '{\"formFile\":\"administrator\\/components\\/com_banners\\/models\\/forms\\/banner.xml\", \"hideFields\":[\"checked_out\",\"checked_out_time\",\"version\", \"reset\"],\"ignoreChanges\":[\"modified_by\", \"modified\", \"checked_out\", \"checked_out_time\", \"version\", \"imptotal\", \"impmade\", \"reset\"], \"convertToInt\":[\"publish_up\", \"publish_down\", \"ordering\"], \"displayLookup\":[{\"sourceColumn\":\"catid\",\"targetTable\":\"jos_categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}, {\"sourceColumn\":\"cid\",\"targetTable\":\"jos_banner_clients\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"}, {\"sourceColumn\":\"created_by\",\"targetTable\":\"jos_users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"modified_by\",\"targetTable\":\"jos_users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"} ]}'),
(10, 'Banners Category', 'com_banners.category', '{\"special\":{\"dbtable\":\"jos_categories\",\"key\":\"id\",\"type\":\"Category\",\"prefix\":\"JTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"jos_ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}', '', '{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created_time\",\"core_modified_time\":\"modified_time\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"null\",\"core_publish_down\":\"null\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"null\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"null\", \"core_urls\":\"null\", \"core_version\":\"version\", \"core_ordering\":\"null\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"parent_id\", \"core_xreference\":\"null\", \"asset_id\":\"asset_id\"}, \"special\": {\"parent_id\":\"parent_id\",\"lft\":\"lft\",\"rgt\":\"rgt\",\"level\":\"level\",\"path\":\"path\",\"extension\":\"extension\",\"note\":\"note\"}}', '', '{\"formFile\":\"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml\", \"hideFields\":[\"asset_id\",\"checked_out\",\"checked_out_time\",\"version\",\"lft\",\"rgt\",\"level\",\"path\",\"extension\"], \"ignoreChanges\":[\"modified_user_id\", \"modified_time\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\", \"path\"], \"convertToInt\":[\"publish_up\", \"publish_down\"], \"displayLookup\":[{\"sourceColumn\":\"created_user_id\",\"targetTable\":\"jos_users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"access\",\"targetTable\":\"jos_viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_user_id\",\"targetTable\":\"jos_users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"parent_id\",\"targetTable\":\"jos_categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}]}'),
(11, 'Banner Client', 'com_banners.client', '{\"special\":{\"dbtable\":\"jos_banner_clients\",\"key\":\"id\",\"type\":\"Client\",\"prefix\":\"BannersTable\"}}', '', '', '', '{\"formFile\":\"administrator\\/components\\/com_banners\\/models\\/forms\\/client.xml\", \"hideFields\":[\"checked_out\",\"checked_out_time\"], \"ignoreChanges\":[\"checked_out\", \"checked_out_time\"], \"convertToInt\":[], \"displayLookup\":[]}'),
(12, 'User Notes', 'com_users.note', '{\"special\":{\"dbtable\":\"jos_user_notes\",\"key\":\"id\",\"type\":\"Note\",\"prefix\":\"UsersTable\"}}', '', '', '', '{\"formFile\":\"administrator\\/components\\/com_users\\/models\\/forms\\/note.xml\", \"hideFields\":[\"checked_out\",\"checked_out_time\", \"publish_up\", \"publish_down\"],\"ignoreChanges\":[\"modified_user_id\", \"modified_time\", \"checked_out\", \"checked_out_time\"], \"convertToInt\":[\"publish_up\", \"publish_down\"],\"displayLookup\":[{\"sourceColumn\":\"catid\",\"targetTable\":\"jos_categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}, {\"sourceColumn\":\"created_user_id\",\"targetTable\":\"jos_users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"}, {\"sourceColumn\":\"user_id\",\"targetTable\":\"jos_users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"}, {\"sourceColumn\":\"modified_user_id\",\"targetTable\":\"jos_users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"}]}'),
(13, 'User Notes Category', 'com_users.category', '{\"special\":{\"dbtable\":\"jos_categories\",\"key\":\"id\",\"type\":\"Category\",\"prefix\":\"JTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"jos_ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}', '', '{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created_time\",\"core_modified_time\":\"modified_time\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"null\",\"core_publish_down\":\"null\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"null\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"null\", \"core_urls\":\"null\", \"core_version\":\"version\", \"core_ordering\":\"null\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"parent_id\", \"core_xreference\":\"null\", \"asset_id\":\"asset_id\"}, \"special\":{\"parent_id\":\"parent_id\",\"lft\":\"lft\",\"rgt\":\"rgt\",\"level\":\"level\",\"path\":\"path\",\"extension\":\"extension\",\"note\":\"note\"}}', '', '{\"formFile\":\"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml\", \"hideFields\":[\"checked_out\",\"checked_out_time\",\"version\",\"lft\",\"rgt\",\"level\",\"path\",\"extension\"], \"ignoreChanges\":[\"modified_user_id\", \"modified_time\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\", \"path\"], \"convertToInt\":[\"publish_up\", \"publish_down\"], \"displayLookup\":[{\"sourceColumn\":\"created_user_id\",\"targetTable\":\"jos_users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"}, {\"sourceColumn\":\"access\",\"targetTable\":\"jos_viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_user_id\",\"targetTable\":\"jos_users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"parent_id\",\"targetTable\":\"jos_categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}]}');

-- --------------------------------------------------------

--
-- Table structure for table `jos_core_log_searches`
--

CREATE TABLE `jos_core_log_searches` (
  `search_term` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `hits` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jos_extensions`
--

CREATE TABLE `jos_extensions` (
  `extension_id` int(11) NOT NULL,
  `package_id` int(11) NOT NULL DEFAULT '0' COMMENT 'Parent package ID for extensions installed as a package.',
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `element` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `folder` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `client_id` tinyint(3) NOT NULL,
  `enabled` tinyint(3) NOT NULL DEFAULT '0',
  `access` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `protected` tinyint(3) NOT NULL DEFAULT '0',
  `manifest_cache` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `custom_data` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `system_data` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `checked_out` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) DEFAULT '0',
  `state` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `jos_extensions`
--

INSERT INTO `jos_extensions` (`extension_id`, `package_id`, `name`, `type`, `element`, `folder`, `client_id`, `enabled`, `access`, `protected`, `manifest_cache`, `params`, `custom_data`, `system_data`, `checked_out`, `checked_out_time`, `ordering`, `state`) VALUES
(1, 0, 'com_mailto', 'component', 'com_mailto', '', 0, 1, 1, 1, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(2, 0, 'com_wrapper', 'component', 'com_wrapper', '', 0, 1, 1, 1, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(3, 0, 'com_admin', 'component', 'com_admin', '', 1, 1, 1, 1, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(4, 0, 'com_banners', 'component', 'com_banners', '', 1, 1, 1, 0, '', '{\"purchase_type\":\"3\",\"track_impressions\":\"0\",\"track_clicks\":\"0\",\"metakey_prefix\":\"\",\"save_history\":\"1\",\"history_limit\":10}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(5, 0, 'com_cache', 'component', 'com_cache', '', 1, 1, 1, 1, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(6, 0, 'com_categories', 'component', 'com_categories', '', 1, 1, 1, 1, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(7, 0, 'com_checkin', 'component', 'com_checkin', '', 1, 1, 1, 1, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(8, 0, 'com_contact', 'component', 'com_contact', '', 1, 1, 1, 0, '', '{\"contact_layout\":\"_:default\",\"show_contact_category\":\"hide\",\"save_history\":\"1\",\"history_limit\":10,\"show_contact_list\":\"0\",\"presentation_style\":\"sliders\",\"show_tags\":\"1\",\"show_info\":\"1\",\"show_name\":\"1\",\"show_position\":\"1\",\"show_email\":\"0\",\"show_street_address\":\"1\",\"show_suburb\":\"1\",\"show_state\":\"1\",\"show_postcode\":\"1\",\"show_country\":\"1\",\"show_telephone\":\"1\",\"show_mobile\":\"1\",\"show_fax\":\"1\",\"show_webpage\":\"1\",\"show_image\":\"1\",\"show_misc\":\"1\",\"image\":\"\",\"allow_vcard\":\"0\",\"show_articles\":\"0\",\"articles_display_num\":\"10\",\"show_profile\":\"0\",\"show_user_custom_fields\":[\"-1\"],\"show_links\":\"0\",\"linka_name\":\"\",\"linkb_name\":\"\",\"linkc_name\":\"\",\"linkd_name\":\"\",\"linke_name\":\"\",\"contact_icons\":\"0\",\"icon_address\":\"\",\"icon_email\":\"\",\"icon_telephone\":\"\",\"icon_mobile\":\"\",\"icon_fax\":\"\",\"icon_misc\":\"\",\"category_layout\":\"_:default\",\"show_category_title\":\"1\",\"show_description\":\"1\",\"show_description_image\":\"0\",\"maxLevel\":\"-1\",\"show_subcat_desc\":\"1\",\"show_empty_categories\":\"0\",\"show_cat_items\":\"1\",\"show_cat_tags\":\"1\",\"show_base_description\":\"1\",\"maxLevelcat\":\"-1\",\"show_subcat_desc_cat\":\"1\",\"show_empty_categories_cat\":\"0\",\"show_cat_items_cat\":\"1\",\"filter_field\":\"0\",\"show_pagination_limit\":\"0\",\"show_headings\":\"1\",\"show_image_heading\":\"0\",\"show_position_headings\":\"1\",\"show_email_headings\":\"0\",\"show_telephone_headings\":\"1\",\"show_mobile_headings\":\"0\",\"show_fax_headings\":\"0\",\"show_suburb_headings\":\"1\",\"show_state_headings\":\"1\",\"show_country_headings\":\"1\",\"show_pagination\":\"2\",\"show_pagination_results\":\"1\",\"initial_sort\":\"ordering\",\"captcha\":\"\",\"show_email_form\":\"1\",\"show_email_copy\":\"0\",\"banned_email\":\"\",\"banned_subject\":\"\",\"banned_text\":\"\",\"validate_session\":\"1\",\"custom_reply\":\"0\",\"redirect\":\"\",\"show_feed_link\":\"1\",\"sef_advanced\":0,\"sef_ids\":0,\"custom_fields_enable\":\"1\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(9, 0, 'com_cpanel', 'component', 'com_cpanel', '', 1, 1, 1, 1, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10, 0, 'com_installer', 'component', 'com_installer', '', 1, 1, 1, 1, '', '{\"show_jed_info\":\"1\",\"cachetimeout\":\"6\",\"minimum_stability\":\"4\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(11, 0, 'com_languages', 'component', 'com_languages', '', 1, 1, 1, 1, '', '{\"administrator\":\"en-GB\",\"site\":\"en-GB\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(12, 0, 'com_login', 'component', 'com_login', '', 1, 1, 1, 1, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(13, 0, 'com_media', 'component', 'com_media', '', 1, 1, 0, 1, '', '{\"upload_extensions\":\"bmp,csv,doc,gif,ico,jpg,jpeg,odg,odp,ods,odt,pdf,png,ppt,txt,xcf,xls,BMP,CSV,DOC,GIF,ICO,JPG,JPEG,ODG,ODP,ODS,ODT,PDF,PNG,PPT,TXT,XCF,XLS\",\"upload_maxsize\":\"10\",\"file_path\":\"images\",\"image_path\":\"images\",\"restrict_uploads\":\"1\",\"allowed_media_usergroup\":\"3\",\"check_mime\":\"1\",\"image_extensions\":\"bmp,gif,jpg,png\",\"ignore_extensions\":\"\",\"upload_mime\":\"image\\/jpeg,image\\/gif,image\\/png,image\\/bmp,application\\/msword,application\\/excel,application\\/pdf,application\\/powerpoint,text\\/plain,application\\/x-zip\",\"upload_mime_illegal\":\"text\\/html\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(14, 0, 'com_menus', 'component', 'com_menus', '', 1, 1, 1, 1, '', '{\"page_title\":\"\",\"show_page_heading\":0,\"page_heading\":\"\",\"pageclass_sfx\":\"\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(15, 0, 'com_messages', 'component', 'com_messages', '', 1, 1, 1, 1, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(16, 0, 'com_modules', 'component', 'com_modules', '', 1, 1, 1, 1, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(17, 0, 'com_newsfeeds', 'component', 'com_newsfeeds', '', 1, 1, 1, 0, '', '{\"newsfeed_layout\":\"_:default\",\"save_history\":\"1\",\"history_limit\":5,\"show_feed_image\":\"1\",\"show_feed_description\":\"1\",\"show_item_description\":\"1\",\"feed_character_count\":\"0\",\"feed_display_order\":\"des\",\"float_first\":\"right\",\"float_second\":\"right\",\"show_tags\":\"1\",\"category_layout\":\"_:default\",\"show_category_title\":\"1\",\"show_description\":\"1\",\"show_description_image\":\"1\",\"maxLevel\":\"-1\",\"show_empty_categories\":\"0\",\"show_subcat_desc\":\"1\",\"show_cat_items\":\"1\",\"show_cat_tags\":\"1\",\"show_base_description\":\"1\",\"maxLevelcat\":\"-1\",\"show_empty_categories_cat\":\"0\",\"show_subcat_desc_cat\":\"1\",\"show_cat_items_cat\":\"1\",\"filter_field\":\"1\",\"show_pagination_limit\":\"1\",\"show_headings\":\"1\",\"show_articles\":\"0\",\"show_link\":\"1\",\"show_pagination\":\"1\",\"show_pagination_results\":\"1\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(18, 0, 'com_plugins', 'component', 'com_plugins', '', 1, 1, 1, 1, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(19, 0, 'com_search', 'component', 'com_search', '', 1, 1, 1, 0, '', '{\"enabled\":\"0\",\"search_phrases\":\"1\",\"search_areas\":\"1\",\"show_date\":\"1\",\"opensearch_name\":\"\",\"opensearch_description\":\"\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(20, 0, 'com_templates', 'component', 'com_templates', '', 1, 1, 1, 1, '', '{\"template_positions_display\":\"0\",\"upload_limit\":\"10\",\"image_formats\":\"gif,bmp,jpg,jpeg,png\",\"source_formats\":\"txt,less,ini,xml,js,php,css,scss,sass\",\"font_formats\":\"woff,ttf,otf\",\"compressed_formats\":\"zip\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(22, 0, 'com_content', 'component', 'com_content', '', 1, 1, 0, 1, '', '{\"article_layout\":\"_:default\",\"show_title\":\"1\",\"link_titles\":\"1\",\"show_intro\":\"1\",\"show_category\":\"1\",\"link_category\":\"1\",\"show_parent_category\":\"0\",\"link_parent_category\":\"0\",\"show_author\":\"1\",\"link_author\":\"0\",\"show_create_date\":\"0\",\"show_modify_date\":\"0\",\"show_publish_date\":\"1\",\"show_item_navigation\":\"1\",\"show_vote\":\"0\",\"show_readmore\":\"1\",\"show_readmore_title\":\"1\",\"readmore_limit\":\"100\",\"show_icons\":\"1\",\"show_print_icon\":\"1\",\"show_email_icon\":\"0\",\"show_hits\":\"1\",\"show_noauth\":\"0\",\"show_publishing_options\":\"1\",\"show_article_options\":\"1\",\"save_history\":\"1\",\"history_limit\":10,\"show_urls_images_frontend\":\"0\",\"show_urls_images_backend\":\"1\",\"targeta\":0,\"targetb\":0,\"targetc\":0,\"float_intro\":\"left\",\"float_fulltext\":\"left\",\"category_layout\":\"_:blog\",\"show_category_title\":\"0\",\"show_description\":\"0\",\"show_description_image\":\"0\",\"maxLevel\":\"1\",\"show_empty_categories\":\"0\",\"show_no_articles\":\"1\",\"show_subcat_desc\":\"1\",\"show_cat_num_articles\":\"0\",\"show_base_description\":\"1\",\"maxLevelcat\":\"-1\",\"show_empty_categories_cat\":\"0\",\"show_subcat_desc_cat\":\"1\",\"show_cat_num_articles_cat\":\"1\",\"num_leading_articles\":\"1\",\"num_intro_articles\":\"4\",\"num_columns\":\"2\",\"num_links\":\"4\",\"multi_column_order\":\"0\",\"show_subcategory_content\":\"0\",\"show_pagination_limit\":\"1\",\"filter_field\":\"hide\",\"show_headings\":\"1\",\"list_show_date\":\"0\",\"date_format\":\"\",\"list_show_hits\":\"1\",\"list_show_author\":\"1\",\"orderby_pri\":\"order\",\"orderby_sec\":\"rdate\",\"order_date\":\"published\",\"show_pagination\":\"2\",\"show_pagination_results\":\"1\",\"show_feed_link\":\"1\",\"feed_summary\":\"0\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(23, 0, 'com_config', 'component', 'com_config', '', 1, 1, 0, 1, '', '{\"filters\":{\"1\":{\"filter_type\":\"NH\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"6\":{\"filter_type\":\"BL\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"7\":{\"filter_type\":\"BL\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"2\":{\"filter_type\":\"NH\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"3\":{\"filter_type\":\"BL\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"4\":{\"filter_type\":\"BL\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"5\":{\"filter_type\":\"BL\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"10\":{\"filter_type\":\"BL\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"12\":{\"filter_type\":\"BL\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"8\":{\"filter_type\":\"NONE\",\"filter_tags\":\"\",\"filter_attributes\":\"\"}}}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(24, 0, 'com_redirect', 'component', 'com_redirect', '', 1, 1, 0, 1, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(25, 0, 'com_users', 'component', 'com_users', '', 1, 1, 0, 1, '', '{\"allowUserRegistration\":\"0\",\"new_usertype\":\"2\",\"guest_usergroup\":\"9\",\"sendpassword\":\"0\",\"useractivation\":\"2\",\"mail_to_admin\":\"1\",\"captcha\":\"\",\"frontend_userparams\":\"1\",\"site_language\":\"0\",\"change_login_name\":\"0\",\"reset_count\":\"10\",\"reset_time\":\"1\",\"minimum_length\":\"4\",\"minimum_integers\":\"0\",\"minimum_symbols\":\"0\",\"minimum_uppercase\":\"0\",\"save_history\":\"1\",\"history_limit\":5,\"mailSubjectPrefix\":\"\",\"mailBodySuffix\":\"\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(27, 0, 'com_finder', 'component', 'com_finder', '', 1, 1, 0, 0, '', '{\"enabled\":\"0\",\"show_description\":\"1\",\"description_length\":255,\"allow_empty_query\":\"0\",\"show_url\":\"1\",\"show_autosuggest\":\"1\",\"show_suggested_query\":\"1\",\"show_explained_query\":\"1\",\"show_advanced\":\"1\",\"show_advanced_tips\":\"1\",\"expand_advanced\":\"0\",\"show_date_filters\":\"0\",\"sort_order\":\"relevance\",\"sort_direction\":\"desc\",\"highlight_terms\":\"1\",\"opensearch_name\":\"\",\"opensearch_description\":\"\",\"batch_size\":\"50\",\"memory_table_limit\":30000,\"title_multiplier\":\"1.7\",\"text_multiplier\":\"0.7\",\"meta_multiplier\":\"1.2\",\"path_multiplier\":\"2.0\",\"misc_multiplier\":\"0.3\",\"stem\":\"1\",\"stemmer\":\"snowball\",\"enable_logging\":\"0\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(28, 0, 'com_joomlaupdate', 'component', 'com_joomlaupdate', '', 1, 1, 0, 1, '', '{\"updatesource\":\"default\",\"customurl\":\"\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(29, 0, 'com_tags', 'component', 'com_tags', '', 1, 1, 1, 1, '', '{\"tag_layout\":\"_:default\",\"save_history\":\"1\",\"history_limit\":5,\"show_tag_title\":\"0\",\"tag_list_show_tag_image\":\"0\",\"tag_list_show_tag_description\":\"0\",\"tag_list_image\":\"\",\"tag_list_orderby\":\"title\",\"tag_list_orderby_direction\":\"ASC\",\"show_headings\":\"0\",\"tag_list_show_date\":\"0\",\"tag_list_show_item_image\":\"0\",\"tag_list_show_item_description\":\"0\",\"tag_list_item_maximum_characters\":0,\"return_any_or_all\":\"1\",\"include_children\":\"0\",\"maximum\":200,\"tag_list_language_filter\":\"all\",\"tags_layout\":\"_:default\",\"all_tags_orderby\":\"title\",\"all_tags_orderby_direction\":\"ASC\",\"all_tags_show_tag_image\":\"0\",\"all_tags_show_tag_descripion\":\"0\",\"all_tags_tag_maximum_characters\":20,\"all_tags_show_tag_hits\":\"0\",\"filter_field\":\"1\",\"show_pagination_limit\":\"1\",\"show_pagination\":\"2\",\"show_pagination_results\":\"1\",\"tag_field_ajax_mode\":\"1\",\"show_feed_link\":\"1\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(30, 0, 'com_contenthistory', 'component', 'com_contenthistory', '', 1, 1, 1, 0, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(31, 0, 'com_ajax', 'component', 'com_ajax', '', 1, 1, 1, 1, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(32, 0, 'com_postinstall', 'component', 'com_postinstall', '', 1, 1, 1, 1, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(33, 0, 'com_fields', 'component', 'com_fields', '', 1, 1, 1, 0, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(34, 0, 'com_associations', 'component', 'com_associations', '', 1, 1, 1, 0, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(102, 0, 'phputf8', 'library', 'phputf8', '', 0, 1, 1, 1, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(103, 0, 'Joomla! Platform', 'library', 'joomla', '', 0, 1, 1, 1, '', '{\"mediaversion\":\"9a54bc2040438fc9db5bec783596b633\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(104, 0, 'IDNA Convert', 'library', 'idna_convert', '', 0, 1, 1, 1, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(105, 0, 'FOF', 'library', 'fof', '', 0, 1, 1, 1, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(106, 0, 'PHPass', 'library', 'phpass', '', 0, 1, 1, 1, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(200, 0, 'mod_articles_archive', 'module', 'mod_articles_archive', '', 0, 1, 1, 0, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(201, 0, 'mod_articles_latest', 'module', 'mod_articles_latest', '', 0, 1, 1, 0, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(202, 0, 'mod_articles_popular', 'module', 'mod_articles_popular', '', 0, 1, 1, 0, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(203, 0, 'mod_banners', 'module', 'mod_banners', '', 0, 1, 1, 0, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(204, 0, 'mod_breadcrumbs', 'module', 'mod_breadcrumbs', '', 0, 1, 1, 1, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(205, 0, 'mod_custom', 'module', 'mod_custom', '', 0, 1, 1, 1, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(206, 0, 'mod_feed', 'module', 'mod_feed', '', 0, 1, 1, 0, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(207, 0, 'mod_footer', 'module', 'mod_footer', '', 0, 1, 1, 0, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(208, 0, 'mod_login', 'module', 'mod_login', '', 0, 1, 1, 1, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(209, 0, 'mod_menu', 'module', 'mod_menu', '', 0, 1, 1, 1, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(210, 0, 'mod_articles_news', 'module', 'mod_articles_news', '', 0, 1, 1, 0, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(211, 0, 'mod_random_image', 'module', 'mod_random_image', '', 0, 1, 1, 0, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(212, 0, 'mod_related_items', 'module', 'mod_related_items', '', 0, 1, 1, 0, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(213, 0, 'mod_search', 'module', 'mod_search', '', 0, 1, 1, 0, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(214, 0, 'mod_stats', 'module', 'mod_stats', '', 0, 1, 1, 0, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(215, 0, 'mod_syndicate', 'module', 'mod_syndicate', '', 0, 1, 1, 1, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(216, 0, 'mod_users_latest', 'module', 'mod_users_latest', '', 0, 1, 1, 0, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(218, 0, 'mod_whosonline', 'module', 'mod_whosonline', '', 0, 1, 1, 0, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(219, 0, 'mod_wrapper', 'module', 'mod_wrapper', '', 0, 1, 1, 0, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(220, 0, 'mod_articles_category', 'module', 'mod_articles_category', '', 0, 1, 1, 0, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(221, 0, 'mod_articles_categories', 'module', 'mod_articles_categories', '', 0, 1, 1, 0, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(222, 0, 'mod_languages', 'module', 'mod_languages', '', 0, 1, 1, 1, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(223, 0, 'mod_finder', 'module', 'mod_finder', '', 0, 1, 0, 0, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(300, 0, 'mod_custom', 'module', 'mod_custom', '', 1, 1, 1, 1, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(301, 0, 'mod_feed', 'module', 'mod_feed', '', 1, 1, 1, 0, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(302, 0, 'mod_latest', 'module', 'mod_latest', '', 1, 1, 1, 0, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(303, 0, 'mod_logged', 'module', 'mod_logged', '', 1, 1, 1, 0, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(304, 0, 'mod_login', 'module', 'mod_login', '', 1, 1, 1, 1, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(305, 0, 'mod_menu', 'module', 'mod_menu', '', 1, 1, 1, 0, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(307, 0, 'mod_popular', 'module', 'mod_popular', '', 1, 1, 1, 0, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(308, 0, 'mod_quickicon', 'module', 'mod_quickicon', '', 1, 1, 1, 1, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(309, 0, 'mod_status', 'module', 'mod_status', '', 1, 1, 1, 0, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(310, 0, 'mod_submenu', 'module', 'mod_submenu', '', 1, 1, 1, 0, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(311, 0, 'mod_title', 'module', 'mod_title', '', 1, 1, 1, 0, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(312, 0, 'mod_toolbar', 'module', 'mod_toolbar', '', 1, 1, 1, 1, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(313, 0, 'mod_multilangstatus', 'module', 'mod_multilangstatus', '', 1, 1, 1, 0, '', '{\"cache\":\"0\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(314, 0, 'mod_version', 'module', 'mod_version', '', 1, 1, 1, 0, '', '{\"format\":\"short\",\"product\":\"1\",\"cache\":\"0\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(315, 0, 'mod_stats_admin', 'module', 'mod_stats_admin', '', 1, 1, 1, 0, '', '{\"serverinfo\":\"0\",\"siteinfo\":\"0\",\"counter\":\"0\",\"increase\":\"0\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(316, 0, 'mod_tags_popular', 'module', 'mod_tags_popular', '', 0, 1, 1, 0, '', '{\"maximum\":\"5\",\"timeframe\":\"alltime\",\"owncache\":\"1\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(317, 0, 'mod_tags_similar', 'module', 'mod_tags_similar', '', 0, 1, 1, 0, '', '{\"maximum\":\"5\",\"matchtype\":\"any\",\"owncache\":\"1\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(318, 0, 'mod_sampledata', 'module', 'mod_sampledata', '', 1, 1, 1, 0, '', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(400, 0, 'plg_authentication_gmail', 'plugin', 'gmail', 'authentication', 0, 0, 1, 0, '', '{\"applysuffix\":\"0\",\"suffix\":\"\",\"verifypeer\":\"1\",\"user_blacklist\":\"\"}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(401, 0, 'plg_authentication_joomla', 'plugin', 'joomla', 'authentication', 0, 1, 1, 1, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(402, 0, 'plg_authentication_ldap', 'plugin', 'ldap', 'authentication', 0, 0, 1, 0, '', '{\"host\":\"\",\"port\":\"389\",\"use_ldapV3\":\"0\",\"negotiate_tls\":\"0\",\"no_referrals\":\"0\",\"auth_method\":\"bind\",\"base_dn\":\"\",\"search_string\":\"\",\"users_dn\":\"\",\"username\":\"admin\",\"password\":\"bobby7\",\"ldap_fullname\":\"fullName\",\"ldap_email\":\"mail\",\"ldap_uid\":\"uid\"}', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(403, 0, 'plg_content_contact', 'plugin', 'contact', 'content', 0, 1, 1, 0, '', '', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(404, 0, 'plg_content_emailcloak', 'plugin', 'emailcloak', 'content', 0, 1, 1, 0, '', '{\"mode\":\"1\"}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(406, 0, 'plg_content_loadmodule', 'plugin', 'loadmodule', 'content', 0, 1, 1, 0, '', '{\"style\":\"xhtml\"}', '', '', 0, '2011-09-18 15:22:50', 0, 0),
(407, 0, 'plg_content_pagebreak', 'plugin', 'pagebreak', 'content', 0, 1, 1, 0, '', '{\"title\":\"1\",\"multipage_toc\":\"1\",\"showall\":\"1\"}', '', '', 0, '0000-00-00 00:00:00', 4, 0),
(408, 0, 'plg_content_pagenavigation', 'plugin', 'pagenavigation', 'content', 0, 1, 1, 0, '', '{\"position\":\"1\"}', '', '', 0, '0000-00-00 00:00:00', 5, 0),
(409, 0, 'plg_content_vote', 'plugin', 'vote', 'content', 0, 0, 1, 0, '', '', '', '', 0, '0000-00-00 00:00:00', 6, 0),
(410, 0, 'plg_editors_codemirror', 'plugin', 'codemirror', 'editors', 0, 1, 1, 1, '', '{\"lineNumbers\":\"1\",\"lineWrapping\":\"1\",\"matchTags\":\"1\",\"matchBrackets\":\"1\",\"marker-gutter\":\"1\",\"autoCloseTags\":\"1\",\"autoCloseBrackets\":\"1\",\"autoFocus\":\"1\",\"theme\":\"default\",\"tabmode\":\"indent\"}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(411, 0, 'plg_editors_none', 'plugin', 'none', 'editors', 0, 1, 1, 1, '', '', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(412, 0, 'plg_editors_tinymce', 'plugin', 'tinymce', 'editors', 0, 1, 1, 0, '', '{\"configuration\":{\"toolbars\":{\"2\":{\"toolbar1\":[\"bold\",\"underline\",\"strikethrough\",\"|\",\"undo\",\"redo\",\"|\",\"bullist\",\"numlist\",\"|\",\"pastetext\"]},\"1\":{\"menu\":[\"edit\",\"insert\",\"view\",\"format\",\"table\",\"tools\"],\"toolbar1\":[\"bold\",\"italic\",\"underline\",\"strikethrough\",\"|\",\"alignleft\",\"aligncenter\",\"alignright\",\"alignjustify\",\"|\",\"formatselect\",\"|\",\"bullist\",\"numlist\",\"|\",\"outdent\",\"indent\",\"|\",\"undo\",\"redo\",\"|\",\"link\",\"unlink\",\"anchor\",\"code\",\"|\",\"hr\",\"table\",\"|\",\"subscript\",\"superscript\",\"|\",\"charmap\",\"pastetext\",\"preview\"]},\"0\":{\"menu\":[\"edit\",\"insert\",\"view\",\"format\",\"table\",\"tools\"],\"toolbar1\":[\"bold\",\"italic\",\"underline\",\"strikethrough\",\"|\",\"alignleft\",\"aligncenter\",\"alignright\",\"alignjustify\",\"|\",\"styleselect\",\"|\",\"formatselect\",\"fontselect\",\"fontsizeselect\",\"|\",\"searchreplace\",\"|\",\"bullist\",\"numlist\",\"|\",\"outdent\",\"indent\",\"|\",\"undo\",\"redo\",\"|\",\"link\",\"unlink\",\"anchor\",\"image\",\"|\",\"code\",\"|\",\"forecolor\",\"backcolor\",\"|\",\"fullscreen\",\"|\",\"table\",\"|\",\"subscript\",\"superscript\",\"|\",\"charmap\",\"emoticons\",\"media\",\"hr\",\"ltr\",\"rtl\",\"|\",\"cut\",\"copy\",\"paste\",\"pastetext\",\"|\",\"visualchars\",\"visualblocks\",\"nonbreaking\",\"blockquote\",\"template\",\"|\",\"print\",\"preview\",\"codesample\",\"insertdatetime\",\"removeformat\"]}},\"setoptions\":{\"2\":{\"access\":[\"1\"],\"skin\":\"0\",\"skin_admin\":\"0\",\"mobile\":\"0\",\"drag_drop\":\"1\",\"path\":\"\",\"entity_encoding\":\"raw\",\"lang_mode\":\"1\",\"text_direction\":\"ltr\",\"content_css\":\"1\",\"content_css_custom\":\"\",\"relative_urls\":\"1\",\"newlines\":\"0\",\"use_config_textfilters\":\"0\",\"invalid_elements\":\"script,applet,iframe\",\"valid_elements\":\"\",\"extended_elements\":\"\",\"resizing\":\"1\",\"resize_horizontal\":\"1\",\"element_path\":\"1\",\"wordcount\":\"1\",\"image_advtab\":\"0\",\"advlist\":\"1\",\"autosave\":\"1\",\"contextmenu\":\"1\",\"custom_plugin\":\"\",\"custom_button\":\"\"},\"1\":{\"access\":[\"6\",\"2\"],\"skin\":\"0\",\"skin_admin\":\"0\",\"mobile\":\"0\",\"drag_drop\":\"1\",\"path\":\"\",\"entity_encoding\":\"raw\",\"lang_mode\":\"1\",\"text_direction\":\"ltr\",\"content_css\":\"1\",\"content_css_custom\":\"\",\"relative_urls\":\"1\",\"newlines\":\"0\",\"use_config_textfilters\":\"0\",\"invalid_elements\":\"script,applet,iframe\",\"valid_elements\":\"\",\"extended_elements\":\"\",\"resizing\":\"1\",\"resize_horizontal\":\"1\",\"element_path\":\"1\",\"wordcount\":\"1\",\"image_advtab\":\"0\",\"advlist\":\"1\",\"autosave\":\"1\",\"contextmenu\":\"1\",\"custom_plugin\":\"\",\"custom_button\":\"\"},\"0\":{\"access\":[\"7\",\"4\",\"8\"],\"skin\":\"0\",\"skin_admin\":\"0\",\"mobile\":\"0\",\"drag_drop\":\"1\",\"path\":\"\",\"entity_encoding\":\"raw\",\"lang_mode\":\"1\",\"text_direction\":\"ltr\",\"content_css\":\"1\",\"content_css_custom\":\"\",\"relative_urls\":\"1\",\"newlines\":\"0\",\"use_config_textfilters\":\"0\",\"invalid_elements\":\"script,applet,iframe\",\"valid_elements\":\"\",\"extended_elements\":\"\",\"resizing\":\"1\",\"resize_horizontal\":\"1\",\"element_path\":\"1\",\"wordcount\":\"1\",\"image_advtab\":\"1\",\"advlist\":\"1\",\"autosave\":\"1\",\"contextmenu\":\"1\",\"custom_plugin\":\"\",\"custom_button\":\"\"}}},\"sets_amount\":3,\"html_height\":\"550\",\"html_width\":\"750\"}', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(413, 0, 'plg_editors-xtd_article', 'plugin', 'article', 'editors-xtd', 0, 1, 1, 0, '', '', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(414, 0, 'plg_editors-xtd_image', 'plugin', 'image', 'editors-xtd', 0, 1, 1, 0, '', '', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(415, 0, 'plg_editors-xtd_pagebreak', 'plugin', 'pagebreak', 'editors-xtd', 0, 1, 1, 0, '', '', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(416, 0, 'plg_editors-xtd_readmore', 'plugin', 'readmore', 'editors-xtd', 0, 1, 1, 0, '', '', '', '', 0, '0000-00-00 00:00:00', 4, 0),
(417, 0, 'plg_search_categories', 'plugin', 'categories', 'search', 0, 1, 1, 0, '', '{\"search_limit\":\"50\",\"search_content\":\"1\",\"search_archived\":\"1\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(418, 0, 'plg_search_contacts', 'plugin', 'contacts', 'search', 0, 1, 1, 0, '', '{\"search_limit\":\"50\",\"search_content\":\"1\",\"search_archived\":\"1\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(419, 0, 'plg_search_content', 'plugin', 'content', 'search', 0, 1, 1, 0, '', '{\"search_limit\":\"50\",\"search_content\":\"1\",\"search_archived\":\"1\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(420, 0, 'plg_search_newsfeeds', 'plugin', 'newsfeeds', 'search', 0, 1, 1, 0, '', '{\"search_limit\":\"50\",\"search_content\":\"1\",\"search_archived\":\"1\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(422, 0, 'plg_system_languagefilter', 'plugin', 'languagefilter', 'system', 0, 0, 1, 1, '', '', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(423, 0, 'plg_system_p3p', 'plugin', 'p3p', 'system', 0, 0, 1, 0, '', '{\"headers\":\"NOI ADM DEV PSAi COM NAV OUR OTRo STP IND DEM\"}', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(424, 0, 'plg_system_cache', 'plugin', 'cache', 'system', 0, 0, 1, 1, '', '{\"browsercache\":\"0\",\"cachetime\":\"15\"}', '', '', 0, '0000-00-00 00:00:00', 9, 0),
(425, 0, 'plg_system_debug', 'plugin', 'debug', 'system', 0, 1, 1, 0, '', '{\"profile\":\"1\",\"queries\":\"1\",\"memory\":\"1\",\"language_files\":\"1\",\"language_strings\":\"1\",\"strip-first\":\"1\",\"strip-prefix\":\"\",\"strip-suffix\":\"\"}', '', '', 0, '0000-00-00 00:00:00', 4, 0),
(426, 0, 'plg_system_log', 'plugin', 'log', 'system', 0, 1, 1, 1, '', '', '', '', 0, '0000-00-00 00:00:00', 5, 0),
(427, 0, 'plg_system_redirect', 'plugin', 'redirect', 'system', 0, 0, 1, 1, '', '', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(428, 0, 'plg_system_remember', 'plugin', 'remember', 'system', 0, 1, 1, 1, '', '', '', '', 0, '0000-00-00 00:00:00', 7, 0),
(429, 0, 'plg_system_sef', 'plugin', 'sef', 'system', 0, 1, 1, 0, '', '', '', '', 0, '0000-00-00 00:00:00', 8, 0),
(430, 0, 'plg_system_logout', 'plugin', 'logout', 'system', 0, 1, 1, 1, '', '', '', '', 0, '0000-00-00 00:00:00', 6, 0),
(431, 0, 'plg_user_contactcreator', 'plugin', 'contactcreator', 'user', 0, 0, 1, 0, '', '{\"autowebpage\":\"\",\"category\":\"34\",\"autopublish\":\"0\"}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(432, 0, 'plg_user_joomla', 'plugin', 'joomla', 'user', 0, 1, 1, 0, '', '{\"autoregister\":\"1\",\"mail_to_user\":\"1\",\"forceLogout\":\"1\"}', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(433, 0, 'plg_user_profile', 'plugin', 'profile', 'user', 0, 0, 1, 0, '', '{\"register-require_address1\":\"1\",\"register-require_address2\":\"1\",\"register-require_city\":\"1\",\"register-require_region\":\"1\",\"register-require_country\":\"1\",\"register-require_postal_code\":\"1\",\"register-require_phone\":\"1\",\"register-require_website\":\"1\",\"register-require_favoritebook\":\"1\",\"register-require_aboutme\":\"1\",\"register-require_tos\":\"1\",\"register-require_dob\":\"1\",\"profile-require_address1\":\"1\",\"profile-require_address2\":\"1\",\"profile-require_city\":\"1\",\"profile-require_region\":\"1\",\"profile-require_country\":\"1\",\"profile-require_postal_code\":\"1\",\"profile-require_phone\":\"1\",\"profile-require_website\":\"1\",\"profile-require_favoritebook\":\"1\",\"profile-require_aboutme\":\"1\",\"profile-require_tos\":\"1\",\"profile-require_dob\":\"1\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(434, 0, 'plg_extension_joomla', 'plugin', 'joomla', 'extension', 0, 1, 1, 1, '', '', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(435, 0, 'plg_content_joomla', 'plugin', 'joomla', 'content', 0, 1, 1, 0, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(436, 0, 'plg_system_languagecode', 'plugin', 'languagecode', 'system', 0, 0, 1, 0, '', '', '', '', 0, '0000-00-00 00:00:00', 10, 0),
(437, 0, 'plg_quickicon_joomlaupdate', 'plugin', 'joomlaupdate', 'quickicon', 0, 1, 1, 1, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(438, 0, 'plg_quickicon_extensionupdate', 'plugin', 'extensionupdate', 'quickicon', 0, 1, 1, 1, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(439, 0, 'plg_captcha_recaptcha', 'plugin', 'recaptcha', 'captcha', 0, 0, 1, 0, '', '{\"public_key\":\"\",\"private_key\":\"\",\"theme\":\"clean\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(440, 0, 'plg_system_highlight', 'plugin', 'highlight', 'system', 0, 1, 1, 0, '', '', '', '', 0, '0000-00-00 00:00:00', 7, 0),
(441, 0, 'plg_content_finder', 'plugin', 'finder', 'content', 0, 0, 1, 0, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(442, 0, 'plg_finder_categories', 'plugin', 'categories', 'finder', 0, 1, 1, 0, '', '', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(443, 0, 'plg_finder_contacts', 'plugin', 'contacts', 'finder', 0, 1, 1, 0, '', '', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(444, 0, 'plg_finder_content', 'plugin', 'content', 'finder', 0, 1, 1, 0, '', '', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(445, 0, 'plg_finder_newsfeeds', 'plugin', 'newsfeeds', 'finder', 0, 1, 1, 0, '', '', '', '', 0, '0000-00-00 00:00:00', 4, 0),
(447, 0, 'plg_finder_tags', 'plugin', 'tags', 'finder', 0, 1, 1, 0, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(448, 0, 'plg_twofactorauth_totp', 'plugin', 'totp', 'twofactorauth', 0, 0, 1, 0, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(449, 0, 'plg_authentication_cookie', 'plugin', 'cookie', 'authentication', 0, 1, 1, 0, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(450, 0, 'plg_twofactorauth_yubikey', 'plugin', 'yubikey', 'twofactorauth', 0, 0, 1, 0, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(451, 0, 'plg_search_tags', 'plugin', 'tags', 'search', 0, 1, 1, 0, '', '{\"search_limit\":\"50\",\"show_tagged_items\":\"1\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(452, 0, 'plg_system_updatenotification', 'plugin', 'updatenotification', 'system', 0, 1, 1, 0, '', '{\"lastrun\":1530182924}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(453, 0, 'plg_editors-xtd_module', 'plugin', 'module', 'editors-xtd', 0, 1, 1, 0, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(454, 0, 'plg_system_stats', 'plugin', 'stats', 'system', 0, 1, 1, 0, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(455, 0, 'plg_installer_packageinstaller', 'plugin', 'packageinstaller', 'installer', 0, 1, 1, 1, '', '', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(456, 0, 'plg_installer_folderinstaller', 'plugin', 'folderinstaller', 'installer', 0, 1, 1, 1, '', '', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(457, 0, 'plg_installer_urlinstaller', 'plugin', 'urlinstaller', 'installer', 0, 1, 1, 1, '', '', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(458, 0, 'plg_quickicon_phpversioncheck', 'plugin', 'phpversioncheck', 'quickicon', 0, 1, 1, 1, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(459, 0, 'plg_editors-xtd_menu', 'plugin', 'menu', 'editors-xtd', 0, 1, 1, 0, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(460, 0, 'plg_editors-xtd_contact', 'plugin', 'contact', 'editors-xtd', 0, 1, 1, 0, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(461, 0, 'plg_system_fields', 'plugin', 'fields', 'system', 0, 1, 1, 0, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(462, 0, 'plg_fields_calendar', 'plugin', 'calendar', 'fields', 0, 1, 1, 0, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(463, 0, 'plg_fields_checkboxes', 'plugin', 'checkboxes', 'fields', 0, 1, 1, 0, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(464, 0, 'plg_fields_color', 'plugin', 'color', 'fields', 0, 1, 1, 0, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(465, 0, 'plg_fields_editor', 'plugin', 'editor', 'fields', 0, 1, 1, 0, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(466, 0, 'plg_fields_imagelist', 'plugin', 'imagelist', 'fields', 0, 1, 1, 0, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(467, 0, 'plg_fields_integer', 'plugin', 'integer', 'fields', 0, 1, 1, 0, '', '{\"multiple\":\"0\",\"first\":\"1\",\"last\":\"100\",\"step\":\"1\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(468, 0, 'plg_fields_list', 'plugin', 'list', 'fields', 0, 1, 1, 0, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(469, 0, 'plg_fields_media', 'plugin', 'media', 'fields', 0, 1, 1, 0, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(470, 0, 'plg_fields_radio', 'plugin', 'radio', 'fields', 0, 1, 1, 0, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(471, 0, 'plg_fields_sql', 'plugin', 'sql', 'fields', 0, 1, 1, 0, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(472, 0, 'plg_fields_text', 'plugin', 'text', 'fields', 0, 1, 1, 0, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(473, 0, 'plg_fields_textarea', 'plugin', 'textarea', 'fields', 0, 1, 1, 0, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(474, 0, 'plg_fields_url', 'plugin', 'url', 'fields', 0, 1, 1, 0, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(475, 0, 'plg_fields_user', 'plugin', 'user', 'fields', 0, 1, 1, 0, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(476, 0, 'plg_fields_usergrouplist', 'plugin', 'usergrouplist', 'fields', 0, 1, 1, 0, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(477, 0, 'plg_content_fields', 'plugin', 'fields', 'content', 0, 1, 1, 0, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(478, 0, 'plg_editors-xtd_fields', 'plugin', 'fields', 'editors-xtd', 0, 1, 1, 0, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(479, 0, 'plg_sampledata_blog', 'plugin', 'blog', 'sampledata', 0, 1, 1, 0, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(480, 0, 'plg_system_sessiongc', 'plugin', 'sessiongc', 'system', 0, 1, 1, 0, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(503, 0, 'beez3', 'template', 'beez3', '', 0, 1, 1, 0, '', '{\"wrapperSmall\":\"53\",\"wrapperLarge\":\"72\",\"sitetitle\":\"\",\"sitedescription\":\"\",\"navposition\":\"center\",\"templatecolor\":\"nature\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(504, 0, 'hathor', 'template', 'hathor', '', 1, 1, 1, 0, '', '{\"showSiteName\":\"0\",\"colourChoice\":\"0\",\"boldText\":\"0\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(506, 0, 'protostar', 'template', 'protostar', '', 0, 1, 1, 0, '', '{\"templateColor\":\"\",\"logoFile\":\"\",\"googleFont\":\"1\",\"googleFontName\":\"Open+Sans\",\"fluidContainer\":\"0\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(507, 0, 'isis', 'template', 'isis', '', 1, 1, 1, 0, '', '{\"templateColor\":\"\",\"logoFile\":\"\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(600, 802, 'English (en-GB)', 'language', 'en-GB', '', 0, 1, 1, 1, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(601, 802, 'English (en-GB)', 'language', 'en-GB', '', 1, 1, 1, 1, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(604, 0, 'EspaÃ±ol (Formal Internacional)', 'language', 'es-ES', '', 1, 1, 1, 0, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(605, 0, 'EspaÃ±ol (Formal Internacional)', 'language', 'es-ES', '', 0, 1, 1, 0, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(700, 0, 'files_joomla', 'file', 'joomla', '', 0, 1, 1, 1, '{\"version\":\"3.8.10-0\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(802, 0, 'English (en-GB) Language Pack', 'package', 'pkg_en-GB', '', 0, 1, 1, 1, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10000, 0, 'PortugusBrasil', 'language', 'pt-BR', '', 1, 1, 1, 0, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10001, 0, 'PortugusBrasil', 'language', 'pt-BR', '', 0, 1, 1, 0, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10002, 0, 'Pacote de Idiomas em PortuguÃªs Brasileiro para TinyMCE', 'file', 'TinyMCE_pt-BR', '', 0, 1, 0, 0, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10003, 0, '', 'language', 'zh-CN', '', 1, 1, 1, 0, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10004, 0, '', 'language', 'zh-CN', '', 0, 1, 1, 0, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10005, 0, 'Hebrew', 'language', 'he-IL', '', 1, 1, 1, 0, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10006, 0, 'Hebrew', 'language', 'he-IL', '', 0, 1, 1, 0, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10007, 0, 'GermanDE-CH-AT', 'language', 'de-DE', '', 1, 1, 1, 0, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10008, 0, 'GermanDE-CH-AT', 'language', 'de-DE', '', 0, 1, 1, 0, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10009, 0, 'RomanianRo', 'language', 'ro-RO', '', 1, 1, 1, 0, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10010, 0, 'Romanianro-RO', 'language', 'ro-RO', '', 0, 1, 1, 0, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10011, 0, 'Russian', 'language', 'ru-RU', '', 0, 1, 0, 0, '{\"legacy\":true,\"name\":\"Russian\",\"type\":\"language\",\"creationDate\":\"2012-02-04\",\"author\":\"Russian Translation Team\",\"copyright\":\"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved\",\"authorEmail\":\"smart@joomlaportal.ru\",\"authorUrl\":\"www.joomlaportal.ru\",\"version\":\"2.5.1.3\",\"description\":\"Russian language pack (site) for Joomla! 2.5\",\"group\":\"\"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10012, 0, 'Russian', 'language', 'ru-RU', '', 1, 1, 0, 0, '{\"legacy\":true,\"name\":\"Russian\",\"type\":\"language\",\"creationDate\":\"2012-02-04\",\"author\":\"Russian Translation Team\",\"copyright\":\"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved\",\"authorEmail\":\"smart@joomlaportal.ru\",\"authorUrl\":\"www.joomlaportal.ru\",\"version\":\"2.5.1.3\",\"description\":\"Russian language pack (administrator) for Joomla! 2.5\",\"group\":\"\"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `jos_fields`
--

CREATE TABLE `jos_fields` (
  `id` int(10) UNSIGNED NOT NULL,
  `asset_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `context` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `group_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `label` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `default_value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'text',
  `note` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` tinyint(1) NOT NULL DEFAULT '0',
  `required` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `fieldparams` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `access` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jos_fields_categories`
--

CREATE TABLE `jos_fields_categories` (
  `field_id` int(11) NOT NULL DEFAULT '0',
  `category_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jos_fields_groups`
--

CREATE TABLE `jos_fields_groups` (
  `id` int(10) UNSIGNED NOT NULL,
  `asset_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `context` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `note` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `access` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jos_fields_values`
--

CREATE TABLE `jos_fields_values` (
  `field_id` int(10) UNSIGNED NOT NULL,
  `item_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Allow references to items which have strings as ids, eg. none db systems.',
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jos_finder_filters`
--

CREATE TABLE `jos_finder_filters` (
  `filter_id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `alias` varchar(255) NOT NULL,
  `state` tinyint(1) NOT NULL DEFAULT '1',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) UNSIGNED NOT NULL,
  `created_by_alias` varchar(255) NOT NULL,
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `checked_out` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `map_count` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `data` text NOT NULL,
  `params` mediumtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `jos_finder_links`
--

CREATE TABLE `jos_finder_links` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `url` varchar(255) NOT NULL,
  `route` varchar(255) NOT NULL,
  `title` varchar(400) DEFAULT NULL,
  `description` text,
  `indexdate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `md5sum` varchar(32) DEFAULT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '1',
  `state` int(5) DEFAULT '1',
  `access` int(5) DEFAULT '0',
  `language` varchar(8) NOT NULL,
  `publish_start_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_end_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `start_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `end_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `list_price` double UNSIGNED NOT NULL DEFAULT '0',
  `sale_price` double UNSIGNED NOT NULL DEFAULT '0',
  `type_id` int(11) NOT NULL,
  `object` mediumblob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `jos_finder_links_terms0`
--

CREATE TABLE `jos_finder_links_terms0` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `jos_finder_links_terms1`
--

CREATE TABLE `jos_finder_links_terms1` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `jos_finder_links_terms2`
--

CREATE TABLE `jos_finder_links_terms2` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `jos_finder_links_terms3`
--

CREATE TABLE `jos_finder_links_terms3` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `jos_finder_links_terms4`
--

CREATE TABLE `jos_finder_links_terms4` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `jos_finder_links_terms5`
--

CREATE TABLE `jos_finder_links_terms5` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `jos_finder_links_terms6`
--

CREATE TABLE `jos_finder_links_terms6` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `jos_finder_links_terms7`
--

CREATE TABLE `jos_finder_links_terms7` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `jos_finder_links_terms8`
--

CREATE TABLE `jos_finder_links_terms8` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `jos_finder_links_terms9`
--

CREATE TABLE `jos_finder_links_terms9` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `jos_finder_links_termsa`
--

CREATE TABLE `jos_finder_links_termsa` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `jos_finder_links_termsb`
--

CREATE TABLE `jos_finder_links_termsb` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `jos_finder_links_termsc`
--

CREATE TABLE `jos_finder_links_termsc` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `jos_finder_links_termsd`
--

CREATE TABLE `jos_finder_links_termsd` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `jos_finder_links_termse`
--

CREATE TABLE `jos_finder_links_termse` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `jos_finder_links_termsf`
--

CREATE TABLE `jos_finder_links_termsf` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `jos_finder_taxonomy`
--

CREATE TABLE `jos_finder_taxonomy` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL,
  `state` tinyint(1) UNSIGNED NOT NULL DEFAULT '1',
  `access` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `ordering` tinyint(1) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `jos_finder_taxonomy`
--

INSERT INTO `jos_finder_taxonomy` (`id`, `parent_id`, `title`, `state`, `access`, `ordering`) VALUES
(1, 0, 'ROOT', 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `jos_finder_taxonomy_map`
--

CREATE TABLE `jos_finder_taxonomy_map` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `node_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `jos_finder_terms`
--

CREATE TABLE `jos_finder_terms` (
  `term_id` int(10) UNSIGNED NOT NULL,
  `term` varchar(75) NOT NULL,
  `stem` varchar(75) NOT NULL,
  `common` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `phrase` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `weight` float UNSIGNED NOT NULL DEFAULT '0',
  `soundex` varchar(75) NOT NULL,
  `links` int(10) NOT NULL DEFAULT '0',
  `language` char(3) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `jos_finder_terms_common`
--

CREATE TABLE `jos_finder_terms_common` (
  `term` varchar(75) NOT NULL,
  `language` varchar(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `jos_finder_terms_common`
--

INSERT INTO `jos_finder_terms_common` (`term`, `language`) VALUES
('a', 'en'),
('about', 'en'),
('after', 'en'),
('ago', 'en'),
('all', 'en'),
('am', 'en'),
('an', 'en'),
('and', 'en'),
('any', 'en'),
('are', 'en'),
('aren\'t', 'en'),
('as', 'en'),
('at', 'en'),
('be', 'en'),
('but', 'en'),
('by', 'en'),
('for', 'en'),
('from', 'en'),
('get', 'en'),
('go', 'en'),
('how', 'en'),
('if', 'en'),
('in', 'en'),
('into', 'en'),
('is', 'en'),
('isn\'t', 'en'),
('it', 'en'),
('its', 'en'),
('me', 'en'),
('more', 'en'),
('most', 'en'),
('must', 'en'),
('my', 'en'),
('new', 'en'),
('no', 'en'),
('none', 'en'),
('not', 'en'),
('nothing', 'en'),
('of', 'en'),
('off', 'en'),
('often', 'en'),
('old', 'en'),
('on', 'en'),
('onc', 'en'),
('once', 'en'),
('only', 'en'),
('or', 'en'),
('other', 'en'),
('our', 'en'),
('ours', 'en'),
('out', 'en'),
('over', 'en'),
('page', 'en'),
('she', 'en'),
('should', 'en'),
('small', 'en'),
('so', 'en'),
('some', 'en'),
('than', 'en'),
('thank', 'en'),
('that', 'en'),
('the', 'en'),
('their', 'en'),
('theirs', 'en'),
('them', 'en'),
('then', 'en'),
('there', 'en'),
('these', 'en'),
('they', 'en'),
('this', 'en'),
('those', 'en'),
('thus', 'en'),
('time', 'en'),
('times', 'en'),
('to', 'en'),
('too', 'en'),
('true', 'en'),
('under', 'en'),
('until', 'en'),
('up', 'en'),
('upon', 'en'),
('use', 'en'),
('user', 'en'),
('users', 'en'),
('version', 'en'),
('very', 'en'),
('via', 'en'),
('want', 'en'),
('was', 'en'),
('way', 'en'),
('were', 'en'),
('what', 'en'),
('when', 'en'),
('where', 'en'),
('which', 'en'),
('who', 'en'),
('whom', 'en'),
('whose', 'en'),
('why', 'en'),
('wide', 'en'),
('will', 'en'),
('with', 'en'),
('within', 'en'),
('without', 'en'),
('would', 'en'),
('yes', 'en'),
('yet', 'en'),
('you', 'en'),
('your', 'en'),
('yours', 'en');

-- --------------------------------------------------------

--
-- Table structure for table `jos_finder_tokens`
--

CREATE TABLE `jos_finder_tokens` (
  `term` varchar(75) NOT NULL,
  `stem` varchar(75) NOT NULL,
  `common` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `phrase` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `weight` float UNSIGNED NOT NULL DEFAULT '1',
  `context` tinyint(1) UNSIGNED NOT NULL DEFAULT '2',
  `language` char(3) NOT NULL DEFAULT ''
) ENGINE=MEMORY DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `jos_finder_tokens_aggregate`
--

CREATE TABLE `jos_finder_tokens_aggregate` (
  `term_id` int(10) UNSIGNED NOT NULL,
  `map_suffix` char(1) NOT NULL,
  `term` varchar(75) NOT NULL,
  `stem` varchar(75) NOT NULL,
  `common` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `phrase` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `term_weight` float UNSIGNED NOT NULL,
  `context` tinyint(1) UNSIGNED NOT NULL DEFAULT '2',
  `context_weight` float UNSIGNED NOT NULL,
  `total_weight` float UNSIGNED NOT NULL,
  `language` char(3) NOT NULL DEFAULT ''
) ENGINE=MEMORY DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `jos_finder_types`
--

CREATE TABLE `jos_finder_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(100) NOT NULL,
  `mime` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `jos_languages`
--

CREATE TABLE `jos_languages` (
  `lang_id` int(11) UNSIGNED NOT NULL,
  `asset_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `lang_code` char(7) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `title` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title_native` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sef` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(512) COLLATE utf8mb4_unicode_ci NOT NULL,
  `metakey` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `metadesc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `sitename` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `published` int(11) NOT NULL DEFAULT '0',
  `access` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `jos_languages`
--

INSERT INTO `jos_languages` (`lang_id`, `asset_id`, `lang_code`, `title`, `title_native`, `sef`, `image`, `description`, `metakey`, `metadesc`, `sitename`, `published`, `access`, `ordering`) VALUES
(1, 0, 'en-GB', 'English (en-GB)', 'English (United Kingdom)', 'en', 'en_gb', '', '', '', '', 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `jos_menu`
--

CREATE TABLE `jos_menu` (
  `id` int(11) NOT NULL,
  `menutype` varchar(24) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The type of menu this item belongs to. FK to jos_menu_types.menutype',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The display title of the menu item.',
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT 'The SEF alias of the menu item.',
  `note` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `path` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The computed path of the menu item based on the alias field.',
  `link` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The actually link the menu item refers to.',
  `type` varchar(16) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The type of link: Component, URL, Alias, Separator',
  `published` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'The published state of the menu link.',
  `parent_id` int(10) UNSIGNED NOT NULL DEFAULT '1' COMMENT 'The parent menu item in the menu tree.',
  `level` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'The relative level in the tree.',
  `component_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'FK to jos_extensions.id',
  `checked_out` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'FK to jos_users.id',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'The time the menu item was checked out.',
  `browserNav` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'The click behaviour of the link.',
  `access` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'The access level required to view the menu item.',
  `img` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The image of the menu item.',
  `template_style_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'JSON encoded data for the menu item.',
  `lft` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set rgt.',
  `home` tinyint(3) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Indicates if this menu item is the home or default page.',
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `client_id` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `jos_menu`
--

INSERT INTO `jos_menu` (`id`, `menutype`, `title`, `alias`, `note`, `path`, `link`, `type`, `published`, `parent_id`, `level`, `component_id`, `checked_out`, `checked_out_time`, `browserNav`, `access`, `img`, `template_style_id`, `params`, `lft`, `rgt`, `home`, `language`, `client_id`) VALUES
(1, '', 'Menu_Item_Root', 'root', '', '', '', '', 1, 0, 0, 0, 0, '0000-00-00 00:00:00', 0, 0, '', 0, '', 0, 53, 0, '*', 0),
(2, 'main', 'com_banners', 'Banners', '', 'Banners', 'index.php?option=com_banners', 'component', 1, 1, 1, 4, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners', 0, '', 1, 10, 0, '*', 1),
(3, 'main', 'com_banners', 'Banners', '', 'Banners/Banners', 'index.php?option=com_banners', 'component', 1, 2, 2, 4, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners', 0, '', 2, 3, 0, '*', 1),
(4, 'main', 'com_banners_categories', 'Categories', '', 'Banners/Categories', 'index.php?option=com_categories&extension=com_banners', 'component', 1, 2, 2, 6, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners-cat', 0, '', 4, 5, 0, '*', 1),
(5, 'main', 'com_banners_clients', 'Clients', '', 'Banners/Clients', 'index.php?option=com_banners&view=clients', 'component', 1, 2, 2, 4, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners-clients', 0, '', 6, 7, 0, '*', 1),
(6, 'main', 'com_banners_tracks', 'Tracks', '', 'Banners/Tracks', 'index.php?option=com_banners&view=tracks', 'component', 1, 2, 2, 4, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners-tracks', 0, '', 8, 9, 0, '*', 1),
(7, 'main', 'com_contact', 'Contacts', '', 'Contacts', 'index.php?option=com_contact', 'component', 1, 1, 1, 8, 0, '0000-00-00 00:00:00', 0, 0, 'class:contact', 0, '', 11, 16, 0, '*', 1),
(8, 'main', 'com_contact_contacts', 'Contacts', '', 'Contacts/Contacts', 'index.php?option=com_contact', 'component', 1, 7, 2, 8, 0, '0000-00-00 00:00:00', 0, 0, 'class:contact', 0, '', 12, 13, 0, '*', 1),
(9, 'main', 'com_contact_categories', 'Categories', '', 'Contacts/Categories', 'index.php?option=com_categories&extension=com_contact', 'component', 1, 7, 2, 6, 0, '0000-00-00 00:00:00', 0, 0, 'class:contact-cat', 0, '', 14, 15, 0, '*', 1),
(10, 'main', 'com_messages', 'Messaging', '', 'Messaging', 'index.php?option=com_messages', 'component', 1, 1, 1, 15, 0, '0000-00-00 00:00:00', 0, 0, 'class:messages', 0, '', 21, 24, 0, '*', 1),
(11, 'main', 'com_messages_add', 'New Private Message', '', 'Messaging/New Private Message', 'index.php?option=com_messages&task=message.add', 'component', 1, 10, 2, 15, 0, '0000-00-00 00:00:00', 0, 0, 'class:messages-add', 0, '', 22, 23, 0, '*', 1),
(13, 'main', 'com_newsfeeds', 'News Feeds', '', 'News Feeds', 'index.php?option=com_newsfeeds', 'component', 1, 1, 1, 17, 0, '0000-00-00 00:00:00', 0, 0, 'class:newsfeeds', 0, '', 31, 36, 0, '*', 1),
(14, 'main', 'com_newsfeeds_feeds', 'Feeds', '', 'News Feeds/Feeds', 'index.php?option=com_newsfeeds', 'component', 1, 13, 2, 17, 0, '0000-00-00 00:00:00', 0, 0, 'class:newsfeeds', 0, '', 32, 33, 0, '*', 1),
(15, 'main', 'com_newsfeeds_categories', 'Categories', '', 'News Feeds/Categories', 'index.php?option=com_categories&extension=com_newsfeeds', 'component', 1, 13, 2, 6, 0, '0000-00-00 00:00:00', 0, 0, 'class:newsfeeds-cat', 0, '', 34, 35, 0, '*', 1),
(16, 'main', 'com_redirect', 'Redirect', '', 'Redirect', 'index.php?option=com_redirect', 'component', 1, 1, 1, 24, 0, '0000-00-00 00:00:00', 0, 0, 'class:redirect', 0, '', 37, 38, 0, '*', 1),
(17, 'main', 'com_search', 'Basic Search', '', 'Basic Search', 'index.php?option=com_search', 'component', 1, 1, 1, 19, 0, '0000-00-00 00:00:00', 0, 0, 'class:search', 0, '', 39, 40, 0, '*', 1),
(18, 'main', 'com_finder', 'Smart Search', '', 'Smart Search', 'index.php?option=com_finder', 'component', 1, 1, 1, 27, 0, '0000-00-00 00:00:00', 0, 0, 'class:finder', 0, '', 41, 42, 0, '*', 1),
(19, 'main', 'com_joomlaupdate', 'Joomla! Update', '', 'Joomla! Update', 'index.php?option=com_joomlaupdate', 'component', 1, 1, 1, 28, 0, '0000-00-00 00:00:00', 0, 0, 'class:joomlaupdate', 0, '', 43, 44, 0, '*', 1),
(20, 'main', 'com_tags', 'Tags', '', 'Tags', 'index.php?option=com_tags', 'component', 1, 1, 1, 29, 0, '0000-00-00 00:00:00', 0, 1, 'class:tags', 0, '', 45, 46, 0, '', 1),
(21, 'main', 'com_postinstall', 'Post-installation messages', '', 'Post-installation messages', 'index.php?option=com_postinstall', 'component', 1, 1, 1, 32, 0, '0000-00-00 00:00:00', 0, 1, 'class:postinstall', 0, '', 47, 48, 0, '*', 1),
(22, 'main', 'com_associations', 'Multilingual Associations', '', 'Multilingual Associations', 'index.php?option=com_associations', 'component', 1, 1, 1, 34, 0, '0000-00-00 00:00:00', 0, 0, 'class:associations', 0, '', 49, 50, 0, '*', 1),
(101, 'mainmenu', 'Home', 'homepage', '', 'homepage', 'index.php?option=com_content&view=article&id=1', 'component', 1, 1, 1, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{\"show_title\":\"1\",\"link_titles\":\"\",\"show_intro\":\"\",\"info_block_position\":\"0\",\"show_category\":\"0\",\"link_category\":\"0\",\"show_parent_category\":\"0\",\"link_parent_category\":\"0\",\"show_author\":\"0\",\"link_author\":\"0\",\"show_create_date\":\"0\",\"show_modify_date\":\"0\",\"show_publish_date\":\"0\",\"show_item_navigation\":\"0\",\"show_vote\":\"\",\"show_tags\":\"\",\"show_icons\":\"0\",\"show_print_icon\":\"0\",\"show_email_icon\":\"0\",\"show_hits\":\"0\",\"show_noauth\":\"\",\"urls_position\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":0,\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}', 51, 52, 1, '*', 0),
(102, 'usermenu', 'Your Profile', 'your-profile', '', 'your-profile', 'index.php?option=com_users&view=profile&layout=edit', 'component', 1, 1, 1, 25, 0, '0000-00-00 00:00:00', 0, 2, '', 0, '{\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":0,\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}', 17, 18, 0, '*', 0),
(103, 'usermenu', 'Site Administrator', '2013-11-16-23-26-41', '', '2013-11-16-23-26-41', 'administrator', 'url', 1, 1, 1, 0, 0, '0000-00-00 00:00:00', 0, 6, '', 0, '{\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1}', 25, 26, 0, '*', 0),
(104, 'usermenu', 'Submit an Article', 'submit-an-article', '', 'submit-an-article', 'index.php?option=com_content&view=form&layout=edit', 'component', 1, 1, 1, 22, 0, '0000-00-00 00:00:00', 0, 3, '', 0, '{\"enable_category\":\"0\",\"catid\":\"2\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":0,\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}', 19, 20, 0, '*', 0),
(106, 'usermenu', 'Template Settings', 'template-settings', '', 'template-settings', 'index.php?option=com_config&view=templates&controller=config.display.templates', 'component', 1, 1, 1, 23, 0, '0000-00-00 00:00:00', 0, 6, '', 0, '{\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":0,\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}', 27, 28, 0, '*', 0),
(107, 'usermenu', 'Site Settings', 'site-settings', '', 'site-settings', 'index.php?option=com_config&view=config&controller=config.display.config', 'component', 1, 1, 1, 23, 0, '0000-00-00 00:00:00', 0, 6, '', 0, '{\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":0,\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}', 29, 30, 0, '*', 0);

-- --------------------------------------------------------

--
-- Table structure for table `jos_menu_types`
--

CREATE TABLE `jos_menu_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `asset_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `menutype` varchar(24) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(48) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `client_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `jos_menu_types`
--

INSERT INTO `jos_menu_types` (`id`, `asset_id`, `menutype`, `title`, `description`, `client_id`) VALUES
(1, 0, 'mainmenu', 'Main Menu', 'The main menu for the site', 0),
(2, 0, 'usermenu', 'User Menu', 'A Menu for logged-in Users', 0);

-- --------------------------------------------------------

--
-- Table structure for table `jos_messages`
--

CREATE TABLE `jos_messages` (
  `message_id` int(10) UNSIGNED NOT NULL,
  `user_id_from` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `user_id_to` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `folder_id` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `date_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `state` tinyint(1) NOT NULL DEFAULT '0',
  `priority` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `subject` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jos_messages_cfg`
--

CREATE TABLE `jos_messages_cfg` (
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `cfg_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `cfg_value` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jos_modules`
--

CREATE TABLE `jos_modules` (
  `id` int(11) NOT NULL,
  `asset_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'FK to the jos_assets table.',
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `note` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `ordering` int(11) NOT NULL DEFAULT '0',
  `position` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `checked_out` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `module` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `access` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `showtitle` tinyint(3) UNSIGNED NOT NULL DEFAULT '1',
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `client_id` tinyint(4) NOT NULL DEFAULT '0',
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `jos_modules`
--

INSERT INTO `jos_modules` (`id`, `asset_id`, `title`, `note`, `content`, `ordering`, `position`, `checked_out`, `checked_out_time`, `publish_up`, `publish_down`, `published`, `module`, `access`, `showtitle`, `params`, `client_id`, `language`) VALUES
(1, 39, 'Main Menu', '', '', 1, 'position-1', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_menu', 1, 1, '{\"menutype\":\"mainmenu\",\"base\":\"\",\"startLevel\":\"1\",\"endLevel\":\"0\",\"showAllChildren\":\"1\",\"tag_id\":\"\",\"class_sfx\":\" nav-pills\",\"window_open\":\"\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"_menu\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"itemid\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}', 0, '*'),
(2, 40, 'Login', '', '', 1, 'login', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_login', 1, 1, '', 1, '*'),
(3, 41, 'Popular Articles', '', '', 3, 'cpanel', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_popular', 3, 1, '{\"count\":\"5\",\"catid\":\"\",\"user_id\":\"0\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\"}', 1, '*'),
(4, 42, 'Recently Added Articles', '', '', 4, 'cpanel', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_latest', 3, 1, '{\"count\":\"5\",\"ordering\":\"c_dsc\",\"catid\":\"\",\"user_id\":\"0\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\"}', 1, '*'),
(8, 43, 'Toolbar', '', '', 1, 'toolbar', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_toolbar', 3, 1, '', 1, '*'),
(9, 44, 'Quick Icons', '', '', 1, 'icon', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_quickicon', 3, 1, '', 1, '*'),
(10, 45, 'Logged-in Users', '', '', 2, 'cpanel', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_logged', 3, 1, '{\"count\":\"5\",\"name\":\"1\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\"}', 1, '*'),
(12, 46, 'Admin Menu', '', '', 1, 'menu', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_menu', 3, 1, '{\"layout\":\"\",\"moduleclass_sfx\":\"\",\"shownew\":\"1\",\"showhelp\":\"1\",\"cache\":\"0\"}', 1, '*'),
(13, 47, 'Admin Submenu', '', '', 1, 'submenu', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_submenu', 3, 1, '', 1, '*'),
(14, 48, 'User Status', '', '', 2, 'status', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_status', 3, 1, '', 1, '*'),
(15, 49, 'Title', '', '', 1, 'title', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_title', 3, 1, '', 1, '*'),
(16, 50, 'Login Form', '', '', 7, 'position-7', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_login', 1, 1, '{\"greeting\":\"1\",\"name\":\"0\"}', 0, '*'),
(17, 51, 'Breadcrumbs', '', '', 1, 'position-2', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_breadcrumbs', 1, 1, '{\"moduleclass_sfx\":\"\",\"showHome\":\"1\",\"homeText\":\"\",\"showComponent\":\"1\",\"separator\":\"\",\"cache\":\"0\",\"cache_time\":\"0\",\"cachemode\":\"itemid\"}', 0, '*'),
(79, 52, 'Multilanguage status', '', '', 1, 'status', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_multilangstatus', 3, 1, '{\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\"}', 1, '*'),
(86, 53, 'Joomla Version', '', '', 1, 'footer', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_version', 3, 1, '{\"format\":\"short\",\"product\":\"1\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\"}', 1, '*'),
(87, 54, 'Popular Tags', '', '', 1, 'position-7', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_tags_popular', 1, 1, '{\"maximum\":\"10\",\"timeframe\":\"alltime\",\"order_value\":\"count\",\"order_direction\":\"1\",\"display_count\":0,\"no_results_text\":\"0\",\"minsize\":1,\"maxsize\":2,\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"owncache\":\"1\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}', 0, '*'),
(88, 55, 'Site Information', '', '', 3, 'cpanel', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_stats_admin', 3, 1, '{\"serverinfo\":\"1\",\"siteinfo\":\"1\",\"counter\":\"0\",\"increase\":\"0\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}', 1, '*'),
(89, 56, 'Release News', '', '', 0, 'postinstall', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_feed', 1, 1, '{\"rssurl\":\"https:\\/\\/www.joomla.org\\/announcements\\/release-news.feed\",\"rssrtl\":\"0\",\"rsstitle\":\"1\",\"rssdesc\":\"1\",\"rssimage\":\"1\",\"rssitems\":\"3\",\"rssitemdesc\":\"1\",\"word_count\":\"0\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}', 1, '*'),
(90, 57, 'Latest Articles', '', '', 1, 'position-7', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_articles_latest', 1, 1, '{\"catid\":[\"\"],\"count\":\"5\",\"show_featured\":\"\",\"ordering\":\"c_dsc\",\"user_id\":\"0\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}', 0, '*'),
(91, 58, 'User Menu', '', '', 3, 'position-7', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_menu', 1, 1, '{\"menutype\":\"usermenu\",\"base\":\"\",\"startLevel\":\"1\",\"endLevel\":\"0\",\"showAllChildren\":\"1\",\"tag_id\":\"\",\"class_sfx\":\"\",\"window_open\":\"\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"_menu\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"itemid\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}', 0, '*'),
(92, 59, 'Image Module', '', '<p><img src=\"images/headers/blue-flower.jpg\" alt=\"Blue Flower\" /></p>', 0, 'position-3', 42, '2018-06-28 10:52:13', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 0, '{\"prepare_content\":\"1\",\"backgroundimage\":\"\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}', 0, '*'),
(93, 60, 'Search', '', '', 0, 'position-0', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_search', 1, 1, '{\"label\":\"\",\"width\":\"20\",\"text\":\"\",\"button\":\"0\",\"button_pos\":\"right\",\"imagebutton\":\"1\",\"button_text\":\"\",\"opensearch\":\"1\",\"opensearch_title\":\"\",\"set_itemid\":\"0\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"itemid\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}', 0, '*');

-- --------------------------------------------------------

--
-- Table structure for table `jos_modules_menu`
--

CREATE TABLE `jos_modules_menu` (
  `moduleid` int(11) NOT NULL DEFAULT '0',
  `menuid` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `jos_modules_menu`
--

INSERT INTO `jos_modules_menu` (`moduleid`, `menuid`) VALUES
(1, 0),
(2, 0),
(3, 0),
(4, 0),
(6, 0),
(7, 0),
(8, 0),
(9, 0),
(10, 0),
(12, 0),
(13, 0),
(14, 0),
(15, 0),
(16, 0),
(17, 0),
(79, 0),
(86, 0),
(87, 0),
(88, 0),
(89, 0),
(90, 0),
(91, 0),
(92, 0),
(93, 0);

-- --------------------------------------------------------

--
-- Table structure for table `jos_newsfeeds`
--

CREATE TABLE `jos_newsfeeds` (
  `catid` int(11) NOT NULL DEFAULT '0',
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `link` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `numarticles` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `cache_time` int(10) UNSIGNED NOT NULL DEFAULT '3600',
  `checked_out` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `rtl` tinyint(4) NOT NULL DEFAULT '0',
  `access` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `metakey` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `metadesc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `metadata` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `xreference` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'A reference to enable linkages to external data sets.',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `version` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `hits` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `images` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jos_overrider`
--

CREATE TABLE `jos_overrider` (
  `id` int(10) NOT NULL COMMENT 'Primary Key',
  `constant` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `string` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `file` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jos_postinstall_messages`
--

CREATE TABLE `jos_postinstall_messages` (
  `postinstall_message_id` bigint(20) UNSIGNED NOT NULL,
  `extension_id` bigint(20) NOT NULL DEFAULT '700' COMMENT 'FK to jos_extensions',
  `title_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'Lang key for the title',
  `description_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'Lang key for description',
  `action_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `language_extension` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'com_postinstall' COMMENT 'Extension holding lang keys',
  `language_client_id` tinyint(3) NOT NULL DEFAULT '1',
  `type` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'link' COMMENT 'Message type - message, link, action',
  `action_file` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT 'RAD URI to the PHP file containing action method',
  `action` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT 'Action method name or URL',
  `condition_file` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'RAD URI to file holding display condition method',
  `condition_method` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Display condition method, must return boolean',
  `version_introduced` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '3.2.0' COMMENT 'Version when this message was introduced',
  `enabled` tinyint(3) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `jos_postinstall_messages`
--

INSERT INTO `jos_postinstall_messages` (`postinstall_message_id`, `extension_id`, `title_key`, `description_key`, `action_key`, `language_extension`, `language_client_id`, `type`, `action_file`, `action`, `condition_file`, `condition_method`, `version_introduced`, `enabled`) VALUES
(1, 700, 'PLG_TWOFACTORAUTH_TOTP_POSTINSTALL_TITLE', 'PLG_TWOFACTORAUTH_TOTP_POSTINSTALL_BODY', 'PLG_TWOFACTORAUTH_TOTP_POSTINSTALL_ACTION', 'plg_twofactorauth_totp', 1, 'action', 'site://plugins/twofactorauth/totp/postinstall/actions.php', 'twofactorauth_postinstall_action', 'site://plugins/twofactorauth/totp/postinstall/actions.php', 'twofactorauth_postinstall_condition', '3.2.0', 1),
(2, 700, 'COM_CPANEL_WELCOME_BEGINNERS_TITLE', 'COM_CPANEL_WELCOME_BEGINNERS_MESSAGE', '', 'com_cpanel', 1, 'message', '', '', '', '', '3.2.0', 1),
(3, 700, 'COM_CPANEL_MSG_STATS_COLLECTION_TITLE', 'COM_CPANEL_MSG_STATS_COLLECTION_BODY', '', 'com_cpanel', 1, 'message', '', '', 'admin://components/com_admin/postinstall/statscollection.php', 'admin_postinstall_statscollection_condition', '3.5.0', 1),
(4, 700, 'PLG_SYSTEM_UPDATENOTIFICATION_POSTINSTALL_UPDATECACHETIME', 'PLG_SYSTEM_UPDATENOTIFICATION_POSTINSTALL_UPDATECACHETIME_BODY', 'PLG_SYSTEM_UPDATENOTIFICATION_POSTINSTALL_UPDATECACHETIME_ACTION', 'plg_system_updatenotification', 1, 'action', 'site://plugins/system/updatenotification/postinstall/updatecachetime.php', 'updatecachetime_postinstall_action', 'site://plugins/system/updatenotification/postinstall/updatecachetime.php', 'updatecachetime_postinstall_condition', '3.6.3', 1),
(5, 700, 'COM_CPANEL_MSG_JOOMLA40_PRE_CHECKS_TITLE', 'COM_CPANEL_MSG_JOOMLA40_PRE_CHECKS_BODY', '', 'com_cpanel', 1, 'message', '', '', 'admin://components/com_admin/postinstall/joomla40checks.php', 'admin_postinstall_joomla40checks_condition', '3.7.0', 1),
(6, 700, 'TPL_HATHOR_MESSAGE_POSTINSTALL_TITLE', 'TPL_HATHOR_MESSAGE_POSTINSTALL_BODY', 'TPL_HATHOR_MESSAGE_POSTINSTALL_ACTION', 'tpl_hathor', 1, 'action', 'admin://templates/hathor/postinstall/hathormessage.php', 'hathormessage_postinstall_action', 'admin://templates/hathor/postinstall/hathormessage.php', 'hathormessage_postinstall_condition', '3.7.0', 1),
(7, 700, 'PLG_PLG_RECAPTCHA_VERSION_1_POSTINSTALL_TITLE', 'PLG_PLG_RECAPTCHA_VERSION_1_POSTINSTALL_BODY', 'PLG_PLG_RECAPTCHA_VERSION_1_POSTINSTALL_ACTION', 'plg_captcha_recaptcha', 1, 'action', 'site://plugins/captcha/recaptcha/postinstall/actions.php', 'recaptcha_postinstall_action', 'site://plugins/captcha/recaptcha/postinstall/actions.php', 'recaptcha_postinstall_condition', '3.8.6', 1);

-- --------------------------------------------------------

--
-- Table structure for table `jos_redirect_links`
--

CREATE TABLE `jos_redirect_links` (
  `id` int(10) UNSIGNED NOT NULL,
  `old_url` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL,
  `new_url` varchar(2048) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `referer` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `hits` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `published` tinyint(4) NOT NULL,
  `created_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `header` smallint(3) NOT NULL DEFAULT '301'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jos_schemas`
--

CREATE TABLE `jos_schemas` (
  `extension_id` int(11) NOT NULL,
  `version_id` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `jos_schemas`
--

INSERT INTO `jos_schemas` (`extension_id`, `version_id`) VALUES
(700, '3.8.9-2018-06-19');

-- --------------------------------------------------------

--
-- Table structure for table `jos_session`
--

CREATE TABLE `jos_session` (
  `session_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `client_id` tinyint(3) UNSIGNED DEFAULT NULL,
  `guest` tinyint(4) UNSIGNED DEFAULT '1',
  `time` varchar(14) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `data` mediumtext COLLATE utf8mb4_unicode_ci,
  `userid` int(11) DEFAULT '0',
  `username` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `jos_session`
--

INSERT INTO `jos_session` (`session_id`, `client_id`, `guest`, `time`, `data`, `userid`, `username`) VALUES
('411kch7p5sigb4teqo142ltat9', 0, 0, '1530183133', 'joomla|s:948:\"TzoyNDoiSm9vbWxhXFJlZ2lzdHJ5XFJlZ2lzdHJ5IjozOntzOjc6IgAqAGRhdGEiO086ODoic3RkQ2xhc3MiOjE6e3M6OToiX19kZWZhdWx0IjtPOjg6InN0ZENsYXNzIjozOntzOjc6InNlc3Npb24iO086ODoic3RkQ2xhc3MiOjM6e3M6NzoiY291bnRlciI7aTo4O3M6NToidGltZXIiO086ODoic3RkQ2xhc3MiOjM6e3M6NToic3RhcnQiO2k6MTUzMDE4MjkxMztzOjQ6Imxhc3QiO2k6MTUzMDE4MzExNztzOjM6Im5vdyI7aToxNTMwMTgzMTMzO31zOjU6InRva2VuIjtzOjMyOiJrMFhjbG5aanNydWc1TzcxNHNvS052ckRuZzM0OEJ3QyI7fXM6ODoicmVnaXN0cnkiO086MjQ6Ikpvb21sYVxSZWdpc3RyeVxSZWdpc3RyeSI6Mzp7czo3OiIAKgBkYXRhIjtPOjg6InN0ZENsYXNzIjoxOntzOjU6InVzZXJzIjtPOjg6InN0ZENsYXNzIjoxOntzOjU6ImxvZ2luIjtPOjg6InN0ZENsYXNzIjoxOntzOjQ6ImZvcm0iO086ODoic3RkQ2xhc3MiOjI6e3M6NjoicmV0dXJuIjtzOjI0OiJodHRwOi8vbG9jYWxob3N0L2pvb21sYS8iO3M6NDoiZGF0YSI7YTowOnt9fX19fXM6MTQ6IgAqAGluaXRpYWxpemVkIjtiOjA7czo5OiJzZXBhcmF0b3IiO3M6MToiLiI7fXM6NDoidXNlciI7TzoyMDoiSm9vbWxhXENNU1xVc2VyXFVzZXIiOjE6e3M6MjoiaWQiO3M6MjoiNDIiO319fXM6MTQ6IgAqAGluaXRpYWxpemVkIjtiOjA7czo5OiJzZXBhcmF0b3IiO3M6MToiLiI7fQ==\";', 42, 'yiga'),
('u9ldk3422r2au86lrp5utka6cv', 1, 0, '1530183209', 'joomla|s:948:\"TzoyNDoiSm9vbWxhXFJlZ2lzdHJ5XFJlZ2lzdHJ5IjozOntzOjc6IgAqAGRhdGEiO086ODoic3RkQ2xhc3MiOjE6e3M6OToiX19kZWZhdWx0IjtPOjg6InN0ZENsYXNzIjozOntzOjc6InNlc3Npb24iO086ODoic3RkQ2xhc3MiOjM6e3M6NzoiY291bnRlciI7aTo2O3M6NToidGltZXIiO086ODoic3RkQ2xhc3MiOjM6e3M6NToic3RhcnQiO2k6MTUzMDE4MzE0MTtzOjQ6Imxhc3QiO2k6MTUzMDE4MzIwNztzOjM6Im5vdyI7aToxNTMwMTgzMjA5O31zOjU6InRva2VuIjtzOjMyOiIxclRyZThsdFdLOUIxekhERFFDMUd0Y3ZPTXAwa1pYNSI7fXM6ODoicmVnaXN0cnkiO086MjQ6Ikpvb21sYVxSZWdpc3RyeVxSZWdpc3RyeSI6Mzp7czo3OiIAKgBkYXRhIjtPOjg6InN0ZENsYXNzIjoyOntzOjExOiJhcHBsaWNhdGlvbiI7Tzo4OiJzdGRDbGFzcyI6MTp7czo0OiJsYW5nIjtzOjU6ImVuLUdCIjt9czoxMzoiY29tX2luc3RhbGxlciI7Tzo4OiJzdGRDbGFzcyI6Mjp7czo3OiJtZXNzYWdlIjtzOjA6IiI7czoxNzoiZXh0ZW5zaW9uX21lc3NhZ2UiO3M6MDoiIjt9fXM6MTQ6IgAqAGluaXRpYWxpemVkIjtiOjA7czo5OiJzZXBhcmF0b3IiO3M6MToiLiI7fXM6NDoidXNlciI7TzoyMDoiSm9vbWxhXENNU1xVc2VyXFVzZXIiOjE6e3M6MjoiaWQiO3M6MjoiNDIiO319fXM6MTQ6IgAqAGluaXRpYWxpemVkIjtiOjA7czo5OiJzZXBhcmF0b3IiO3M6MToiLiI7fQ==\";', 42, 'yiga');

-- --------------------------------------------------------

--
-- Table structure for table `jos_tags`
--

CREATE TABLE `jos_tags` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `lft` int(11) NOT NULL DEFAULT '0',
  `rgt` int(11) NOT NULL DEFAULT '0',
  `level` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `path` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `note` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `access` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `metadesc` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The meta description for the page.',
  `metakey` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The meta keywords for the page.',
  `metadata` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'JSON encoded metadata properties.',
  `created_user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by_alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `modified_user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `images` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `urls` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `hits` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL,
  `version` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `jos_tags`
--

INSERT INTO `jos_tags` (`id`, `parent_id`, `lft`, `rgt`, `level`, `path`, `title`, `alias`, `note`, `description`, `published`, `checked_out`, `checked_out_time`, `access`, `params`, `metadesc`, `metakey`, `metadata`, `created_user_id`, `created_time`, `created_by_alias`, `modified_user_id`, `modified_time`, `images`, `urls`, `hits`, `language`, `version`, `publish_up`, `publish_down`) VALUES
(1, 0, 0, 3, 0, '', 'ROOT', 'root', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{}', '', '', '', 0, '2011-01-01 00:00:01', '', 0, '0000-00-00 00:00:00', '', '', 0, '*', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 1, 1, 2, 1, 'joomla', 'Joomla', 'joomla', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{\"tag_layout\":\"\",\"tag_link_class\":\"label label-info\",\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}', '', '', '{\"author\":\"\",\"robots\":\"\"}', 849, '2013-11-16 00:00:00', '', 0, '0000-00-00 00:00:00', '', '', 0, '*', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `jos_template_styles`
--

CREATE TABLE `jos_template_styles` (
  `id` int(10) UNSIGNED NOT NULL,
  `template` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `client_id` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `home` char(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `jos_template_styles`
--

INSERT INTO `jos_template_styles` (`id`, `template`, `client_id`, `home`, `title`, `params`) VALUES
(4, 'beez3', 0, '0', 'Beez3 - Default', '{\"wrapperSmall\":\"53\",\"wrapperLarge\":\"72\",\"logo\":\"images\\/joomla_black.png\",\"sitetitle\":\"Joomla!\",\"sitedescription\":\"Open Source Content Management\",\"navposition\":\"left\",\"templatecolor\":\"personal\",\"html5\":\"0\"}'),
(5, 'hathor', 1, '0', 'Hathor - Default', '{\"showSiteName\":\"0\",\"colourChoice\":\"\",\"boldText\":\"0\"}'),
(7, 'protostar', 0, '1', 'protostar - Default', '{\"templateColor\":\"\",\"logoFile\":\"\",\"googleFont\":\"1\",\"googleFontName\":\"Open+Sans\",\"fluidContainer\":\"0\"}'),
(8, 'isis', 1, '1', 'isis - Default', '{\"templateColor\":\"\",\"logoFile\":\"\"}');

-- --------------------------------------------------------

--
-- Table structure for table `jos_ucm_base`
--

CREATE TABLE `jos_ucm_base` (
  `ucm_id` int(10) UNSIGNED NOT NULL,
  `ucm_item_id` int(10) NOT NULL,
  `ucm_type_id` int(11) NOT NULL,
  `ucm_language_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `jos_ucm_base`
--

INSERT INTO `jos_ucm_base` (`ucm_id`, `ucm_item_id`, `ucm_type_id`, `ucm_language_id`) VALUES
(1, 1, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `jos_ucm_content`
--

CREATE TABLE `jos_ucm_content` (
  `core_content_id` int(10) UNSIGNED NOT NULL,
  `core_type_alias` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'FK to the content types table',
  `core_title` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `core_alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `core_body` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `core_state` tinyint(1) NOT NULL DEFAULT '0',
  `core_checked_out_time` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0000-00-00 00:00:00',
  `core_checked_out_user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `core_access` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `core_params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `core_featured` tinyint(4) UNSIGNED NOT NULL DEFAULT '0',
  `core_metadata` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'JSON encoded metadata properties.',
  `core_created_user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `core_created_by_alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `core_created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `core_modified_user_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Most recent user that modified',
  `core_modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `core_language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `core_publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `core_publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `core_content_item_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'ID from the individual type table',
  `asset_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'FK to the jos_assets table.',
  `core_images` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `core_urls` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `core_hits` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `core_version` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `core_ordering` int(11) NOT NULL DEFAULT '0',
  `core_metakey` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `core_metadesc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `core_catid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `core_xreference` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'A reference to enable linkages to external data sets.',
  `core_type_id` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Contains core content data in name spaced fields';

--
-- Dumping data for table `jos_ucm_content`
--

INSERT INTO `jos_ucm_content` (`core_content_id`, `core_type_alias`, `core_title`, `core_alias`, `core_body`, `core_state`, `core_checked_out_time`, `core_checked_out_user_id`, `core_access`, `core_params`, `core_featured`, `core_metadata`, `core_created_user_id`, `core_created_by_alias`, `core_created_time`, `core_modified_user_id`, `core_modified_time`, `core_language`, `core_publish_up`, `core_publish_down`, `core_content_item_id`, `asset_id`, `core_images`, `core_urls`, `core_hits`, `core_version`, `core_ordering`, `core_metakey`, `core_metadesc`, `core_catid`, `core_xreference`, `core_type_id`) VALUES
(1, 'com_content.article', 'Getting Started', 'getting-started', '<p>It\'s easy to get started creating your website. Knowing some of the basics will help.</p><h3>What is a Content Management System?</h3><p>A content management system is software that allows you to create and manage webpages easily by separating the creation of your content from the mechanics required to present it on the web.</p><p>In this site, the content is stored in a <em>database</em>. The look and feel are created by a <em>template</em>. Joomla! brings together the template and your content to create web pages.</p><h3>Logging in</h3><p>To login to your site use the user name and password that were created as part of the installation process. Once logged-in you will be able to create and edit articles and modify some settings.</p><h3>Creating an article</h3><p>Once you are logged-in, a new menu will be visible. To create a new article, click on the \"Submit Article\" link on that menu.</p><p>The new article interface gives you a lot of options, but all you need to do is add a title and put something in the content area. To make it easy to find, set the state to published.</p><div>You can edit an existing article by clicking on the edit icon (this only displays to users who have the right to edit).</div><h3>Template, site settings, and modules</h3><p>The look and feel of your site is controlled by a template. You can change the site name, background colour, highlights colour and more by editing the template settings. Click the \"Template Settings\" in the user menu.</p><p>The boxes around the main content of the site are called modules. You can modify modules on the current page by moving your cursor to the module and clicking the edit link. Always be sure to save and close any module you edit.</p><p>You can change some site settings such as the site name and description by clicking on the \"Site Settings\" link.</p><p>More advanced options for templates, site settings, modules, and more are available in the site administrator.</p><h3>Site and Administrator</h3><p>Your site actually has two separate sites. The site (also called the front end) is what visitors to your site will see. The administrator (also called the back end) is only used by people managing your site. You can access the administrator by clicking the \"Site Administrator\" link on the \"User Menu\" menu (visible once you login) or by adding /administrator to the end of your domain name. The same user name and password are used for both sites.</p><h3>Learn more</h3><p>There is much more to learn about how to use Joomla! to create the website you envision. You can learn much more at the <a href=\"https://docs.joomla.org/\" target=\"_blank\">Joomla! documentation site</a> and on the<a href=\"https://forum.joomla.org/\" target=\"_blank\"> Joomla! forums</a>.</p>', 1, '', 0, 1, '{\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}', 0, '{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}', 849, '', '2013-11-16 00:00:00', 0, '0000-00-00 00:00:00', '*', '2013-11-16 00:00:00', '0000-00-00 00:00:00', 1, 62, '{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}', '{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}', 0, 1, 0, '', '', 2, '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `jos_ucm_history`
--

CREATE TABLE `jos_ucm_history` (
  `version_id` int(10) UNSIGNED NOT NULL,
  `ucm_item_id` int(10) UNSIGNED NOT NULL,
  `ucm_type_id` int(10) UNSIGNED NOT NULL,
  `version_note` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'Optional version name',
  `save_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `editor_user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `character_count` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Number of characters in this version.',
  `sha1_hash` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'SHA1 hash of the version_data column.',
  `version_data` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'json-encoded string of version data',
  `keep_forever` tinyint(4) NOT NULL DEFAULT '0' COMMENT '0=auto delete; 1=keep'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `jos_ucm_history`
--

INSERT INTO `jos_ucm_history` (`version_id`, `ucm_item_id`, `ucm_type_id`, `version_note`, `save_date`, `editor_user_id`, `character_count`, `sha1_hash`, `version_data`, `keep_forever`) VALUES
(1, 2, 10, 'Initial content', '2013-11-16 00:00:00', 849, 558, 'be28228b479aa67bad3dc1db2975232a033d5f0f', '{\"id\":2,\"parent_id\":\"1\",\"lft\":\"1\",\"rgt\":2,\"level\":1,\"path\":\"joomla\",\"title\":\"Joomla\",\"alias\":\"joomla\",\"note\":\"\",\"description\":null,\"published\":1,\"checked_out\":\"0\",\"checked_out_time\":\"0000-00-00 00:00:00\",\"access\":1,\"params\":null,\"metadesc\":null,\"metakey\":null,\"metadata\":null,\"created_user_id\":\"849\",\"created_time\":\"2013-11-16 00:00:00\",\"created_by_alias\":\"\",\"modified_user_id\":\"0\",\"modified_time\":\"0000-00-00 00:00:00\",\"images\":null,\"urls\":null,\"hits\":\"0\",\"language\":\"*\",\"version\":\"1\",\"publish_up\":\"0000-00-00 00:00:00\",\"publish_down\":\"0000-00-00 00:00:00\"}', 0),
(2, 1, 1, 'Initial content', '2013-11-16 00:00:00', 849, 4539, '4f6bf8f67e89553853c3b6e8ed0a6111daaa7a2f', '{\"id\":1,\"asset_id\":54,\"title\":\"Getting Started\",\"alias\":\"getting-started\",\"introtext\":\"<p>It\'s easy to get started creating your website. Knowing some of the basics will help.<\\/p>\\r\\n<h3>What is a Content Management System?<\\/h3>\\r\\n<p>A content management system is software that allows you to create and manage webpages easily by separating the creation of your content from the mechanics required to present it on the web.<\\/p>\\r\\n<p>In this site, the content is stored in a <em>database<\\/em>. The look and feel are created by a <em>template<\\/em>. Joomla! brings together the template and your content to create web pages.<\\/p>\\r\\n<h3>Logging in<\\/h3>\\r\\n<p>To login to your site use the user name and password that were created as part of the installation process. Once logged-in you will be able to create and edit articles and modify some settings.<\\/p>\\r\\n<h3>Creating an article<\\/h3>\\r\\n<p>Once you are logged-in, a new menu will be visible. To create a new article, click on the \\\"Submit Article\\\" link on that menu.<\\/p>\\r\\n<p>The new article interface gives you a lot of options, but all you need to do is add a title and put something in the content area. To make it easy to find, set the state to published.<\\/p>\\r\\n<div>You can edit an existing article by clicking on the edit icon (this only displays to users who have the right to edit).<\\/div>\\r\\n<h3>Template, site settings, and modules<\\/h3>\\r\\n<p>The look and feel of your site is controlled by a template. You can change the site name, background colour, highlights colour and more by editing the template settings. Click the \\\"Template Settings\\\" in the user menu.\\u00a0<\\/p>\\r\\n<p>The boxes around the main content of the site are called modules. \\u00a0You can modify modules on the current page by moving your cursor to the module and clicking the edit link. Always be sure to save and close any module you edit.<\\/p>\\r\\n<p>You can change some site settings such as the site name and description by clicking on the \\\"Site Settings\\\" link.<\\/p>\\r\\n<p>More advanced options for templates, site settings, modules, and more are available in the site administrator.<\\/p>\\r\\n<h3>Site and Administrator<\\/h3>\\r\\n<p>Your site actually has two separate sites. The site (also called the front end) is what visitors to your site will see. The administrator (also called the back end) is only used by people managing your site. You can access the administrator by clicking the \\\"Site Administrator\\\" link on the \\\"User Menu\\\" menu (visible once you login) or by adding \\/administrator to the end of your domain name. The same user name and password are used for both sites.<\\/p>\\r\\n<h3>Learn more<\\/h3>\\r\\n<p>There is much more to learn about how to use Joomla! to create the website you envision. You can learn much more at the <a href=\\\"https:\\/\\/docs.joomla.org\\\" target=\\\"_blank\\\">Joomla! documentation site<\\/a> and on the<a href=\\\"https:\\/\\/forum.joomla.org\\/\\\" target=\\\"_blank\\\"> Joomla! forums<\\/a>.<\\/p>\",\"fulltext\":\"\",\"state\":1,\"catid\":\"2\",\"created\":\"2013-11-16 00:00:00\",\"created_by\":\"849\",\"created_by_alias\":\"\",\"modified\":\"\",\"modified_by\":null,\"checked_out\":null,\"checked_out_time\":null,\"publish_up\":\"2013-11-16 00:00:00\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_layout\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":1,\"ordering\":null,\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":null,\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\"}', 0);

-- --------------------------------------------------------

--
-- Table structure for table `jos_updates`
--

CREATE TABLE `jos_updates` (
  `update_id` int(11) NOT NULL,
  `update_site_id` int(11) DEFAULT '0',
  `extension_id` int(11) DEFAULT '0',
  `name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `element` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `type` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `folder` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `client_id` tinyint(3) DEFAULT '0',
  `version` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `data` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `detailsurl` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `infourl` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `extra_query` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Available Updates';

-- --------------------------------------------------------

--
-- Table structure for table `jos_update_sites`
--

CREATE TABLE `jos_update_sites` (
  `update_site_id` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `type` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `location` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `enabled` int(11) DEFAULT '0',
  `last_check_timestamp` bigint(20) DEFAULT '0',
  `extra_query` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Update Sites';

--
-- Dumping data for table `jos_update_sites`
--

INSERT INTO `jos_update_sites` (`update_site_id`, `name`, `type`, `location`, `enabled`, `last_check_timestamp`, `extra_query`) VALUES
(1, 'Joomla! Core', 'collection', 'https://update.joomla.org/core/list.xml', 0, 0, ''),
(2, 'Accredited Joomla! Translations', 'collection', 'https://update.joomla.org/language/translationlist_3.xml', 1, 0, ''),
(3, 'Joomla! Update Component Update Site', 'extension', 'https://update.joomla.org/core/extensions/com_joomlaupdate.xml', 1, 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `jos_update_sites_extensions`
--

CREATE TABLE `jos_update_sites_extensions` (
  `update_site_id` int(11) NOT NULL DEFAULT '0',
  `extension_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Links extensions to update sites';

--
-- Dumping data for table `jos_update_sites_extensions`
--

INSERT INTO `jos_update_sites_extensions` (`update_site_id`, `extension_id`) VALUES
(1, 700),
(2, 802),
(3, 28);

-- --------------------------------------------------------

--
-- Table structure for table `jos_usergroups`
--

CREATE TABLE `jos_usergroups` (
  `id` int(10) UNSIGNED NOT NULL COMMENT 'Primary Key',
  `parent_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Adjacency List Reference Id',
  `lft` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set rgt.',
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `jos_usergroups`
--

INSERT INTO `jos_usergroups` (`id`, `parent_id`, `lft`, `rgt`, `title`) VALUES
(1, 0, 1, 18, 'Public'),
(2, 1, 8, 15, 'Registered'),
(3, 2, 9, 14, 'Author'),
(4, 3, 10, 13, 'Editor'),
(5, 4, 11, 12, 'Publisher'),
(6, 1, 4, 7, 'Manager'),
(7, 6, 5, 6, 'Administrator'),
(8, 1, 16, 17, 'Super Users'),
(9, 1, 2, 3, 'Guest');

-- --------------------------------------------------------

--
-- Table structure for table `jos_users`
--

CREATE TABLE `jos_users` (
  `id` int(11) NOT NULL,
  `name` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `username` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `password` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `block` tinyint(4) NOT NULL DEFAULT '0',
  `sendEmail` tinyint(4) DEFAULT '0',
  `registerDate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `lastvisitDate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `activation` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastResetTime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Date of last password reset',
  `resetCount` int(11) NOT NULL DEFAULT '0' COMMENT 'Count of password resets since lastResetTime',
  `otpKey` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'Two factor authentication encrypted keys',
  `otep` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'One time emergency passwords',
  `requireReset` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'Require user to reset password on next login'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `jos_users`
--

INSERT INTO `jos_users` (`id`, `name`, `username`, `email`, `password`, `block`, `sendEmail`, `registerDate`, `lastvisitDate`, `activation`, `params`, `lastResetTime`, `resetCount`, `otpKey`, `otep`, `requireReset`) VALUES
(42, 'yiga', 'yiga', 'lekiagospel@gmail.com', '$2y$10$V/60x1wrm3ddig8fcEmH7uOz9IgoqMSPqpURQ5gDnA9JFjjAvoSom', 0, 1, '2018-06-28 10:51:17', '2018-06-28 10:53:20', '', '{}', '0000-00-00 00:00:00', 0, '', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `jos_user_keys`
--

CREATE TABLE `jos_user_keys` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `series` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `invalid` tinyint(4) NOT NULL,
  `time` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `uastring` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jos_user_notes`
--

CREATE TABLE `jos_user_notes` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `catid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `subject` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `checked_out` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_user_id` int(10) UNSIGNED NOT NULL,
  `modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `review_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jos_user_profiles`
--

CREATE TABLE `jos_user_profiles` (
  `user_id` int(11) NOT NULL,
  `profile_key` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `profile_value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `ordering` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Simple user profile storage table';

-- --------------------------------------------------------

--
-- Table structure for table `jos_user_usergroup_map`
--

CREATE TABLE `jos_user_usergroup_map` (
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Foreign Key to jos_users.id',
  `group_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Foreign Key to jos_usergroups.id'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `jos_user_usergroup_map`
--

INSERT INTO `jos_user_usergroup_map` (`user_id`, `group_id`) VALUES
(42, 8);

-- --------------------------------------------------------

--
-- Table structure for table `jos_utf8_conversion`
--

CREATE TABLE `jos_utf8_conversion` (
  `converted` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `jos_utf8_conversion`
--

INSERT INTO `jos_utf8_conversion` (`converted`) VALUES
(0);

-- --------------------------------------------------------

--
-- Table structure for table `jos_viewlevels`
--

CREATE TABLE `jos_viewlevels` (
  `id` int(10) UNSIGNED NOT NULL COMMENT 'Primary Key',
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `rules` varchar(5120) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'JSON encoded access control.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `jos_viewlevels`
--

INSERT INTO `jos_viewlevels` (`id`, `title`, `ordering`, `rules`) VALUES
(1, 'Public', 0, '[1]'),
(2, 'Registered', 2, '[6,2,8]'),
(3, 'Special', 3, '[6,3,8]'),
(5, 'Guest', 1, '[9]'),
(6, 'Super Users', 4, '[8]');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `jos_assets`
--
ALTER TABLE `jos_assets`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_asset_name` (`name`),
  ADD KEY `idx_lft_rgt` (`lft`,`rgt`),
  ADD KEY `idx_parent_id` (`parent_id`);

--
-- Indexes for table `jos_associations`
--
ALTER TABLE `jos_associations`
  ADD PRIMARY KEY (`context`,`id`),
  ADD KEY `idx_key` (`key`);

--
-- Indexes for table `jos_banners`
--
ALTER TABLE `jos_banners`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_state` (`state`),
  ADD KEY `idx_own_prefix` (`own_prefix`),
  ADD KEY `idx_metakey_prefix` (`metakey_prefix`(100)),
  ADD KEY `idx_banner_catid` (`catid`),
  ADD KEY `idx_language` (`language`);

--
-- Indexes for table `jos_banner_clients`
--
ALTER TABLE `jos_banner_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_own_prefix` (`own_prefix`),
  ADD KEY `idx_metakey_prefix` (`metakey_prefix`(100));

--
-- Indexes for table `jos_banner_tracks`
--
ALTER TABLE `jos_banner_tracks`
  ADD PRIMARY KEY (`track_date`,`track_type`,`banner_id`),
  ADD KEY `idx_track_date` (`track_date`),
  ADD KEY `idx_track_type` (`track_type`),
  ADD KEY `idx_banner_id` (`banner_id`);

--
-- Indexes for table `jos_categories`
--
ALTER TABLE `jos_categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cat_idx` (`extension`,`published`,`access`),
  ADD KEY `idx_access` (`access`),
  ADD KEY `idx_checkout` (`checked_out`),
  ADD KEY `idx_path` (`path`(100)),
  ADD KEY `idx_left_right` (`lft`,`rgt`),
  ADD KEY `idx_alias` (`alias`(100)),
  ADD KEY `idx_language` (`language`);

--
-- Indexes for table `jos_contact_details`
--
ALTER TABLE `jos_contact_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_access` (`access`),
  ADD KEY `idx_checkout` (`checked_out`),
  ADD KEY `idx_state` (`published`),
  ADD KEY `idx_catid` (`catid`),
  ADD KEY `idx_createdby` (`created_by`),
  ADD KEY `idx_featured_catid` (`featured`,`catid`),
  ADD KEY `idx_language` (`language`),
  ADD KEY `idx_xreference` (`xreference`);

--
-- Indexes for table `jos_content`
--
ALTER TABLE `jos_content`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_access` (`access`),
  ADD KEY `idx_checkout` (`checked_out`),
  ADD KEY `idx_state` (`state`),
  ADD KEY `idx_catid` (`catid`),
  ADD KEY `idx_createdby` (`created_by`),
  ADD KEY `idx_featured_catid` (`featured`,`catid`),
  ADD KEY `idx_language` (`language`),
  ADD KEY `idx_xreference` (`xreference`),
  ADD KEY `idx_alias` (`alias`(191));

--
-- Indexes for table `jos_contentitem_tag_map`
--
ALTER TABLE `jos_contentitem_tag_map`
  ADD UNIQUE KEY `uc_ItemnameTagid` (`type_id`,`content_item_id`,`tag_id`),
  ADD KEY `idx_tag_type` (`tag_id`,`type_id`),
  ADD KEY `idx_date_id` (`tag_date`,`tag_id`),
  ADD KEY `idx_core_content_id` (`core_content_id`);

--
-- Indexes for table `jos_content_frontpage`
--
ALTER TABLE `jos_content_frontpage`
  ADD PRIMARY KEY (`content_id`);

--
-- Indexes for table `jos_content_rating`
--
ALTER TABLE `jos_content_rating`
  ADD PRIMARY KEY (`content_id`);

--
-- Indexes for table `jos_content_types`
--
ALTER TABLE `jos_content_types`
  ADD PRIMARY KEY (`type_id`),
  ADD KEY `idx_alias` (`type_alias`(100));

--
-- Indexes for table `jos_extensions`
--
ALTER TABLE `jos_extensions`
  ADD PRIMARY KEY (`extension_id`),
  ADD KEY `element_clientid` (`element`,`client_id`),
  ADD KEY `element_folder_clientid` (`element`,`folder`,`client_id`),
  ADD KEY `extension` (`type`,`element`,`folder`,`client_id`);

--
-- Indexes for table `jos_fields`
--
ALTER TABLE `jos_fields`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_checkout` (`checked_out`),
  ADD KEY `idx_state` (`state`),
  ADD KEY `idx_created_user_id` (`created_user_id`),
  ADD KEY `idx_access` (`access`),
  ADD KEY `idx_context` (`context`(191)),
  ADD KEY `idx_language` (`language`);

--
-- Indexes for table `jos_fields_categories`
--
ALTER TABLE `jos_fields_categories`
  ADD PRIMARY KEY (`field_id`,`category_id`);

--
-- Indexes for table `jos_fields_groups`
--
ALTER TABLE `jos_fields_groups`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_checkout` (`checked_out`),
  ADD KEY `idx_state` (`state`),
  ADD KEY `idx_created_by` (`created_by`),
  ADD KEY `idx_access` (`access`),
  ADD KEY `idx_context` (`context`(191)),
  ADD KEY `idx_language` (`language`);

--
-- Indexes for table `jos_fields_values`
--
ALTER TABLE `jos_fields_values`
  ADD KEY `idx_field_id` (`field_id`),
  ADD KEY `idx_item_id` (`item_id`(191));

--
-- Indexes for table `jos_finder_filters`
--
ALTER TABLE `jos_finder_filters`
  ADD PRIMARY KEY (`filter_id`);

--
-- Indexes for table `jos_finder_links`
--
ALTER TABLE `jos_finder_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `idx_type` (`type_id`),
  ADD KEY `idx_title` (`title`(100)),
  ADD KEY `idx_md5` (`md5sum`),
  ADD KEY `idx_url` (`url`(75)),
  ADD KEY `idx_published_list` (`published`,`state`,`access`,`publish_start_date`,`publish_end_date`,`list_price`),
  ADD KEY `idx_published_sale` (`published`,`state`,`access`,`publish_start_date`,`publish_end_date`,`sale_price`);

--
-- Indexes for table `jos_finder_links_terms0`
--
ALTER TABLE `jos_finder_links_terms0`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `jos_finder_links_terms1`
--
ALTER TABLE `jos_finder_links_terms1`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `jos_finder_links_terms2`
--
ALTER TABLE `jos_finder_links_terms2`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `jos_finder_links_terms3`
--
ALTER TABLE `jos_finder_links_terms3`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `jos_finder_links_terms4`
--
ALTER TABLE `jos_finder_links_terms4`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `jos_finder_links_terms5`
--
ALTER TABLE `jos_finder_links_terms5`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `jos_finder_links_terms6`
--
ALTER TABLE `jos_finder_links_terms6`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `jos_finder_links_terms7`
--
ALTER TABLE `jos_finder_links_terms7`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `jos_finder_links_terms8`
--
ALTER TABLE `jos_finder_links_terms8`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `jos_finder_links_terms9`
--
ALTER TABLE `jos_finder_links_terms9`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `jos_finder_links_termsa`
--
ALTER TABLE `jos_finder_links_termsa`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `jos_finder_links_termsb`
--
ALTER TABLE `jos_finder_links_termsb`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `jos_finder_links_termsc`
--
ALTER TABLE `jos_finder_links_termsc`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `jos_finder_links_termsd`
--
ALTER TABLE `jos_finder_links_termsd`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `jos_finder_links_termse`
--
ALTER TABLE `jos_finder_links_termse`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `jos_finder_links_termsf`
--
ALTER TABLE `jos_finder_links_termsf`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `jos_finder_taxonomy`
--
ALTER TABLE `jos_finder_taxonomy`
  ADD PRIMARY KEY (`id`),
  ADD KEY `parent_id` (`parent_id`),
  ADD KEY `state` (`state`),
  ADD KEY `ordering` (`ordering`),
  ADD KEY `access` (`access`),
  ADD KEY `idx_parent_published` (`parent_id`,`state`,`access`);

--
-- Indexes for table `jos_finder_taxonomy_map`
--
ALTER TABLE `jos_finder_taxonomy_map`
  ADD PRIMARY KEY (`link_id`,`node_id`),
  ADD KEY `link_id` (`link_id`),
  ADD KEY `node_id` (`node_id`);

--
-- Indexes for table `jos_finder_terms`
--
ALTER TABLE `jos_finder_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD UNIQUE KEY `idx_term` (`term`),
  ADD KEY `idx_term_phrase` (`term`,`phrase`),
  ADD KEY `idx_stem_phrase` (`stem`,`phrase`),
  ADD KEY `idx_soundex_phrase` (`soundex`,`phrase`);

--
-- Indexes for table `jos_finder_terms_common`
--
ALTER TABLE `jos_finder_terms_common`
  ADD KEY `idx_word_lang` (`term`,`language`),
  ADD KEY `idx_lang` (`language`);

--
-- Indexes for table `jos_finder_tokens`
--
ALTER TABLE `jos_finder_tokens`
  ADD KEY `idx_word` (`term`),
  ADD KEY `idx_context` (`context`);

--
-- Indexes for table `jos_finder_tokens_aggregate`
--
ALTER TABLE `jos_finder_tokens_aggregate`
  ADD KEY `token` (`term`),
  ADD KEY `keyword_id` (`term_id`);

--
-- Indexes for table `jos_finder_types`
--
ALTER TABLE `jos_finder_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `title` (`title`);

--
-- Indexes for table `jos_languages`
--
ALTER TABLE `jos_languages`
  ADD PRIMARY KEY (`lang_id`),
  ADD UNIQUE KEY `idx_sef` (`sef`),
  ADD UNIQUE KEY `idx_langcode` (`lang_code`),
  ADD KEY `idx_access` (`access`),
  ADD KEY `idx_ordering` (`ordering`);

--
-- Indexes for table `jos_menu`
--
ALTER TABLE `jos_menu`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_client_id_parent_id_alias_language` (`client_id`,`parent_id`,`alias`(100),`language`),
  ADD KEY `idx_componentid` (`component_id`,`menutype`,`published`,`access`),
  ADD KEY `idx_menutype` (`menutype`),
  ADD KEY `idx_left_right` (`lft`,`rgt`),
  ADD KEY `idx_alias` (`alias`(100)),
  ADD KEY `idx_path` (`path`(100)),
  ADD KEY `idx_language` (`language`);

--
-- Indexes for table `jos_menu_types`
--
ALTER TABLE `jos_menu_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_menutype` (`menutype`);

--
-- Indexes for table `jos_messages`
--
ALTER TABLE `jos_messages`
  ADD PRIMARY KEY (`message_id`),
  ADD KEY `useridto_state` (`user_id_to`,`state`);

--
-- Indexes for table `jos_messages_cfg`
--
ALTER TABLE `jos_messages_cfg`
  ADD UNIQUE KEY `idx_user_var_name` (`user_id`,`cfg_name`);

--
-- Indexes for table `jos_modules`
--
ALTER TABLE `jos_modules`
  ADD PRIMARY KEY (`id`),
  ADD KEY `published` (`published`,`access`),
  ADD KEY `newsfeeds` (`module`,`published`),
  ADD KEY `idx_language` (`language`);

--
-- Indexes for table `jos_modules_menu`
--
ALTER TABLE `jos_modules_menu`
  ADD PRIMARY KEY (`moduleid`,`menuid`);

--
-- Indexes for table `jos_newsfeeds`
--
ALTER TABLE `jos_newsfeeds`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_access` (`access`),
  ADD KEY `idx_checkout` (`checked_out`),
  ADD KEY `idx_state` (`published`),
  ADD KEY `idx_catid` (`catid`),
  ADD KEY `idx_createdby` (`created_by`),
  ADD KEY `idx_language` (`language`),
  ADD KEY `idx_xreference` (`xreference`);

--
-- Indexes for table `jos_overrider`
--
ALTER TABLE `jos_overrider`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jos_postinstall_messages`
--
ALTER TABLE `jos_postinstall_messages`
  ADD PRIMARY KEY (`postinstall_message_id`);

--
-- Indexes for table `jos_redirect_links`
--
ALTER TABLE `jos_redirect_links`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_old_url` (`old_url`(100)),
  ADD KEY `idx_link_modifed` (`modified_date`);

--
-- Indexes for table `jos_schemas`
--
ALTER TABLE `jos_schemas`
  ADD PRIMARY KEY (`extension_id`,`version_id`);

--
-- Indexes for table `jos_session`
--
ALTER TABLE `jos_session`
  ADD PRIMARY KEY (`session_id`),
  ADD KEY `userid` (`userid`),
  ADD KEY `time` (`time`);

--
-- Indexes for table `jos_tags`
--
ALTER TABLE `jos_tags`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tag_idx` (`published`,`access`),
  ADD KEY `idx_access` (`access`),
  ADD KEY `idx_checkout` (`checked_out`),
  ADD KEY `idx_path` (`path`(100)),
  ADD KEY `idx_left_right` (`lft`,`rgt`),
  ADD KEY `idx_alias` (`alias`(100)),
  ADD KEY `idx_language` (`language`);

--
-- Indexes for table `jos_template_styles`
--
ALTER TABLE `jos_template_styles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_template` (`template`),
  ADD KEY `idx_home` (`home`);

--
-- Indexes for table `jos_ucm_base`
--
ALTER TABLE `jos_ucm_base`
  ADD PRIMARY KEY (`ucm_id`),
  ADD KEY `idx_ucm_item_id` (`ucm_item_id`),
  ADD KEY `idx_ucm_type_id` (`ucm_type_id`),
  ADD KEY `idx_ucm_language_id` (`ucm_language_id`);

--
-- Indexes for table `jos_ucm_content`
--
ALTER TABLE `jos_ucm_content`
  ADD PRIMARY KEY (`core_content_id`),
  ADD KEY `tag_idx` (`core_state`,`core_access`),
  ADD KEY `idx_access` (`core_access`),
  ADD KEY `idx_alias` (`core_alias`(100)),
  ADD KEY `idx_language` (`core_language`),
  ADD KEY `idx_title` (`core_title`(100)),
  ADD KEY `idx_modified_time` (`core_modified_time`),
  ADD KEY `idx_created_time` (`core_created_time`),
  ADD KEY `idx_content_type` (`core_type_alias`(100)),
  ADD KEY `idx_core_modified_user_id` (`core_modified_user_id`),
  ADD KEY `idx_core_checked_out_user_id` (`core_checked_out_user_id`),
  ADD KEY `idx_core_created_user_id` (`core_created_user_id`),
  ADD KEY `idx_core_type_id` (`core_type_id`);

--
-- Indexes for table `jos_ucm_history`
--
ALTER TABLE `jos_ucm_history`
  ADD PRIMARY KEY (`version_id`),
  ADD KEY `idx_ucm_item_id` (`ucm_type_id`,`ucm_item_id`),
  ADD KEY `idx_save_date` (`save_date`);

--
-- Indexes for table `jos_updates`
--
ALTER TABLE `jos_updates`
  ADD PRIMARY KEY (`update_id`);

--
-- Indexes for table `jos_update_sites`
--
ALTER TABLE `jos_update_sites`
  ADD PRIMARY KEY (`update_site_id`);

--
-- Indexes for table `jos_update_sites_extensions`
--
ALTER TABLE `jos_update_sites_extensions`
  ADD PRIMARY KEY (`update_site_id`,`extension_id`);

--
-- Indexes for table `jos_usergroups`
--
ALTER TABLE `jos_usergroups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_usergroup_parent_title_lookup` (`parent_id`,`title`),
  ADD KEY `idx_usergroup_title_lookup` (`title`),
  ADD KEY `idx_usergroup_adjacency_lookup` (`parent_id`),
  ADD KEY `idx_usergroup_nested_set_lookup` (`lft`,`rgt`) USING BTREE;

--
-- Indexes for table `jos_users`
--
ALTER TABLE `jos_users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_name` (`name`(100)),
  ADD KEY `idx_block` (`block`),
  ADD KEY `username` (`username`),
  ADD KEY `email` (`email`);

--
-- Indexes for table `jos_user_keys`
--
ALTER TABLE `jos_user_keys`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `series` (`series`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `jos_user_notes`
--
ALTER TABLE `jos_user_notes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_user_id` (`user_id`),
  ADD KEY `idx_category_id` (`catid`);

--
-- Indexes for table `jos_user_profiles`
--
ALTER TABLE `jos_user_profiles`
  ADD UNIQUE KEY `idx_user_id_profile_key` (`user_id`,`profile_key`);

--
-- Indexes for table `jos_user_usergroup_map`
--
ALTER TABLE `jos_user_usergroup_map`
  ADD PRIMARY KEY (`user_id`,`group_id`);

--
-- Indexes for table `jos_viewlevels`
--
ALTER TABLE `jos_viewlevels`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_assetgroup_title_lookup` (`title`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `jos_assets`
--
ALTER TABLE `jos_assets`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Primary Key', AUTO_INCREMENT=63;

--
-- AUTO_INCREMENT for table `jos_banners`
--
ALTER TABLE `jos_banners`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jos_banner_clients`
--
ALTER TABLE `jos_banner_clients`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jos_categories`
--
ALTER TABLE `jos_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `jos_contact_details`
--
ALTER TABLE `jos_contact_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jos_content`
--
ALTER TABLE `jos_content`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `jos_content_types`
--
ALTER TABLE `jos_content_types`
  MODIFY `type_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `jos_extensions`
--
ALTER TABLE `jos_extensions`
  MODIFY `extension_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10013;

--
-- AUTO_INCREMENT for table `jos_fields`
--
ALTER TABLE `jos_fields`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jos_fields_groups`
--
ALTER TABLE `jos_fields_groups`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jos_finder_filters`
--
ALTER TABLE `jos_finder_filters`
  MODIFY `filter_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jos_finder_links`
--
ALTER TABLE `jos_finder_links`
  MODIFY `link_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jos_finder_taxonomy`
--
ALTER TABLE `jos_finder_taxonomy`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `jos_finder_terms`
--
ALTER TABLE `jos_finder_terms`
  MODIFY `term_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jos_finder_types`
--
ALTER TABLE `jos_finder_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jos_languages`
--
ALTER TABLE `jos_languages`
  MODIFY `lang_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `jos_menu`
--
ALTER TABLE `jos_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=108;

--
-- AUTO_INCREMENT for table `jos_menu_types`
--
ALTER TABLE `jos_menu_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `jos_messages`
--
ALTER TABLE `jos_messages`
  MODIFY `message_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jos_modules`
--
ALTER TABLE `jos_modules`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=94;

--
-- AUTO_INCREMENT for table `jos_newsfeeds`
--
ALTER TABLE `jos_newsfeeds`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jos_overrider`
--
ALTER TABLE `jos_overrider`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT COMMENT 'Primary Key';

--
-- AUTO_INCREMENT for table `jos_postinstall_messages`
--
ALTER TABLE `jos_postinstall_messages`
  MODIFY `postinstall_message_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `jos_redirect_links`
--
ALTER TABLE `jos_redirect_links`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jos_tags`
--
ALTER TABLE `jos_tags`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `jos_template_styles`
--
ALTER TABLE `jos_template_styles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `jos_ucm_content`
--
ALTER TABLE `jos_ucm_content`
  MODIFY `core_content_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `jos_ucm_history`
--
ALTER TABLE `jos_ucm_history`
  MODIFY `version_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `jos_updates`
--
ALTER TABLE `jos_updates`
  MODIFY `update_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jos_update_sites`
--
ALTER TABLE `jos_update_sites`
  MODIFY `update_site_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `jos_usergroups`
--
ALTER TABLE `jos_usergroups`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Primary Key', AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `jos_users`
--
ALTER TABLE `jos_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `jos_user_keys`
--
ALTER TABLE `jos_user_keys`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jos_user_notes`
--
ALTER TABLE `jos_user_notes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jos_viewlevels`
--
ALTER TABLE `jos_viewlevels`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Primary Key', AUTO_INCREMENT=7;
--
-- Database: `bitnami_wordpress`
--
CREATE DATABASE IF NOT EXISTS `bitnami_wordpress` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `bitnami_wordpress`;

-- --------------------------------------------------------

--
-- Table structure for table `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_commentmeta`
--

INSERT INTO `wp_commentmeta` (`meta_id`, `comment_id`, `meta_key`, `meta_value`) VALUES
(2, 2, 'akismet_history', 'a:3:{s:4:\"time\";d:1530878150.481382;s:5:\"event\";s:11:\"check-error\";s:4:\"meta\";a:1:{s:8:\"response\";s:0:\"\";}}'),
(5, 2, 'akismet_history', 'a:3:{s:4:\"time\";d:1530878177.817652;s:5:\"event\";s:15:\"status-approved\";s:4:\"user\";s:4:\"yiga\";}');

-- --------------------------------------------------------

--
-- Table structure for table `wp_comments`
--

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'A WordPress Commenter', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2018-06-28 08:26:00', '2018-06-28 08:26:00', 'Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href=\"https://gravatar.com\">Gravatar</a>.', 0, '1', '', '', 0, 0),
(2, 7, 'Prosper', 'lekiaprosper@gmail.com', '', '::1', '2018-07-06 11:55:50', '2018-07-06 11:55:50', 'Nice post Sir', 0, '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', '', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_links`
--

CREATE TABLE `wp_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://127.0.0.1/wordpress/', 'yes'),
(2, 'home', 'http://127.0.0.1/wordpress/', 'yes'),
(3, 'blogname', 'Voice of  Pilgrims', 'yes'),
(4, 'blogdescription', 'All you need for a successful journey back Home', 'yes'),
(5, 'users_can_register', '1', 'yes'),
(6, 'admin_email', 'lekiagospel@gmail.com', 'yes'),
(7, 'start_of_week', '0', 'yes'),
(8, 'use_balanceTags', '0', 'yes'),
(9, 'use_smilies', '1', 'yes'),
(10, 'require_name_email', '1', 'yes'),
(11, 'comments_notify', '1', 'yes'),
(12, 'posts_per_rss', '10', 'yes'),
(13, 'rss_use_excerpt', '0', 'yes'),
(14, 'mailserver_url', 'mail.example.com', 'yes'),
(15, 'mailserver_login', 'login@example.com', 'yes'),
(16, 'mailserver_pass', 'password', 'yes'),
(17, 'mailserver_port', '110', 'yes'),
(18, 'default_category', '1', 'yes'),
(19, 'default_comment_status', 'open', 'yes'),
(20, 'default_ping_status', 'open', 'yes'),
(21, 'default_pingback_flag', '1', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'F j, Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'F j, Y g:i a', 'yes'),
(26, 'comment_moderation', '', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%year%/%monthnum%/%day%/%postname%/', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:14:{i:0;s:25:\"add-to-any/add-to-any.php\";i:1;s:19:\"akismet/akismet.php\";i:2;s:43:\"all-in-one-seo-pack/all_in_one_seo_pack.php\";i:3;s:51:\"all-in-one-wp-migration/all-in-one-wp-migration.php\";i:4;s:36:\"contact-form-7/wp-contact-form-7.php\";i:5;s:50:\"google-analytics-for-wordpress/googleanalytics.php\";i:6;s:35:\"googleanalytics/googleanalytics.php\";i:7;s:9:\"hello.php\";i:8;s:19:\"jetpack/jetpack.php\";i:9;s:47:\"really-simple-ssl/rlrsssl-really-simple-ssl.php\";i:10;s:27:\"simple-tags/simple-tags.php\";i:11;s:24:\"wordpress-seo/wp-seo.php\";i:12;s:29:\"wp-mail-smtp/wp_mail_smtp.php\";i:13;s:28:\"wysija-newsletters/index.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'drizzle-mag', 'yes'),
(41, 'stylesheet', 'drizzle-mag', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '38590', 'yes'),
(49, 'uploads_use_yearmonth_folders', '1', 'yes'),
(50, 'upload_path', '', 'yes'),
(51, 'blog_public', '0', 'yes'),
(52, 'default_link_category', '0', 'yes'),
(53, 'show_on_front', 'posts', 'yes'),
(54, 'tag_base', '', 'yes'),
(55, 'show_avatars', '1', 'yes'),
(56, 'avatar_rating', 'G', 'yes'),
(57, 'upload_url_path', '', 'yes'),
(58, 'thumbnail_size_w', '150', 'yes'),
(59, 'thumbnail_size_h', '150', 'yes'),
(60, 'thumbnail_crop', '1', 'yes'),
(61, 'medium_size_w', '300', 'yes'),
(62, 'medium_size_h', '300', 'yes'),
(63, 'avatar_default', 'mystery', 'yes'),
(64, 'large_size_w', '1024', 'yes'),
(65, 'large_size_h', '1024', 'yes'),
(66, 'image_default_link_type', '', 'yes'),
(67, 'image_default_size', '', 'yes'),
(68, 'image_default_align', '', 'yes'),
(69, 'close_comments_for_old_posts', '', 'yes'),
(70, 'close_comments_days_old', '14', 'yes'),
(71, 'thread_comments', '1', 'yes'),
(72, 'thread_comments_depth', '5', 'yes'),
(73, 'page_comments', '', 'yes'),
(74, 'comments_per_page', '50', 'yes'),
(75, 'default_comments_page', 'newest', 'yes'),
(76, 'comment_order', 'asc', 'yes'),
(77, 'sticky_posts', 'a:0:{}', 'yes'),
(78, 'widget_categories', 'a:2:{i:2;a:4:{s:5:\"title\";s:10:\"Post class\";s:5:\"count\";i:1;s:12:\"hierarchical\";i:1;s:8:\"dropdown\";i:1;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(79, 'widget_text', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(80, 'widget_rss', 'a:3:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;i:3;a:8:{s:5:\"title\";s:0:\"\";s:3:\"url\";s:0:\"\";s:4:\"link\";s:0:\"\";s:5:\"items\";i:10;s:5:\"error\";s:44:\"WP HTTP Error: A valid URL was not provided.\";s:12:\"show_summary\";i:1;s:11:\"show_author\";i:0;s:9:\"show_date\";i:1;}}', 'yes'),
(81, 'uninstall_plugins', 'a:2:{s:35:\"googleanalytics/googleanalytics.php\";s:35:\"Ga_Admin::uninstall_googleanalytics\";s:50:\"google-analytics-for-wordpress/googleanalytics.php\";s:35:\"monsterinsights_lite_uninstall_hook\";}', 'no'),
(82, 'timezone_string', '', 'yes'),
(83, 'page_for_posts', '0', 'yes'),
(84, 'page_on_front', '0', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '46', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'wp_page_for_privacy_policy', '3', 'yes'),
(92, 'initial_db_version', '38590', 'yes'),
(93, 'wp_user_roles', 'a:7:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:71:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;s:16:\"aiosp_manage_seo\";b:1;s:18:\"wysija_newsletters\";b:1;s:18:\"wysija_subscribers\";b:1;s:13:\"wysija_config\";b:1;s:16:\"wysija_theme_tab\";b:1;s:16:\"wysija_style_tab\";b:1;s:22:\"wysija_stats_dashboard\";b:1;s:11:\"simple_tags\";b:1;s:17:\"admin_simple_tags\";b:1;s:20:\"wpseo_manage_options\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:36:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:11:\"simple_tags\";b:1;s:15:\"wpseo_bulk_edit\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}s:13:\"wpseo_manager\";a:2:{s:4:\"name\";s:11:\"SEO Manager\";s:12:\"capabilities\";a:38:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:11:\"simple_tags\";b:1;s:15:\"wpseo_bulk_edit\";b:1;s:28:\"wpseo_edit_advanced_metadata\";b:1;s:20:\"wpseo_manage_options\";b:1;}}s:12:\"wpseo_editor\";a:2:{s:4:\"name\";s:10:\"SEO Editor\";s:12:\"capabilities\";a:37:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:11:\"simple_tags\";b:1;s:15:\"wpseo_bulk_edit\";b:1;s:28:\"wpseo_edit_advanced_metadata\";b:1;}}}', 'yes'),
(94, 'fresh_site', '0', 'yes'),
(95, 'widget_search', 'a:2:{i:2;a:1:{s:5:\"title\";s:16:\"Search any topic\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(96, 'widget_recent-posts', 'a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;s:9:\"show_date\";b:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(97, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(98, 'widget_archives', 'a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(99, 'widget_meta', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(100, 'sidebars_widgets', 'a:5:{s:19:\"wp_inactive_widgets\";a:4:{i:0;s:30:\"tortuga-magazine-posts-boxed-3\";i:1;s:6:\"meta-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"nav_menu-3\";}s:7:\"sidebar\";a:6:{i:0;s:8:\"search-2\";i:1;s:7:\"pages-3\";i:2;s:14:\"recent-posts-2\";i:3;s:12:\"categories-2\";i:4;s:10:\"archives-2\";i:5;s:5:\"rss-3\";}s:6:\"header\";a:0:{}s:17:\"magazine-homepage\";a:0:{}s:13:\"array_version\";i:3;}', 'yes'),
(101, 'widget_pages', 'a:2:{s:12:\"_multiwidget\";i:1;i:3;a:0:{}}', 'yes'),
(102, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(103, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(104, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(105, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(106, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_nav_menu', 'a:2:{s:12:\"_multiwidget\";i:1;i:3;a:1:{s:8:\"nav_menu\";i:3;}}', 'yes'),
(109, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'cron', 'a:11:{i:1544823643;a:1:{s:20:\"jetpack_clean_nonces\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1544823973;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1544827265;a:1:{s:19:\"wpseo-reindex-links\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1544827573;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1544870845;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1544874663;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1544874950;a:1:{s:24:\"akismet_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1544951285;a:1:{s:35:\"monsterinsights_usage_tracking_cron\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}i:1545172858;a:1:{s:18:\"wpseo_onpage_fetch\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}i:1545173342;a:1:{s:31:\"aiosp_sitemap_daily_update_cron\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}s:7:\"version\";i:2;}', 'yes'),
(111, 'theme_mods_twentyseventeen', 'a:3:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1530183897;s:4:\"data\";a:4:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:9:\"sidebar-2\";a:0:{}s:9:\"sidebar-3\";a:0:{}}}s:18:\"nav_menu_locations\";a:0:{}}', 'yes'),
(114, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-4.9.6.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-4.9.6.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-4.9.6-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-4.9.6-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"4.9.6\";s:7:\"version\";s:5:\"4.9.6\";s:11:\"php_version\";s:5:\"5.2.4\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"4.7\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1544819635;s:15:\"version_checked\";s:5:\"4.9.6\";s:12:\"translations\";a:0:{}}', 'no'),
(120, 'can_compress_scripts', '1', 'no'),
(125, 'theme_mods_twentysixteen', 'a:3:{s:18:\"custom_css_post_id\";i:-1;s:18:\"nav_menu_locations\";a:2:{s:7:\"primary\";i:3;s:6:\"social\";i:3;}s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1531049136;s:4:\"data\";a:4:{s:19:\"wp_inactive_widgets\";a:3:{i:0;s:6:\"meta-2\";i:1;s:17:\"recent-comments-2\";i:2;s:10:\"nav_menu-3\";}s:9:\"sidebar-1\";a:8:{i:0;s:8:\"search-2\";i:1;s:7:\"pages-3\";i:2;s:14:\"recent-posts-2\";i:3;s:12:\"categories-2\";i:4;s:10:\"archives-2\";i:5;s:13:\"media_image-3\";i:6;s:10:\"calendar-3\";i:7;s:5:\"rss-3\";}s:9:\"sidebar-2\";a:0:{}s:9:\"sidebar-3\";a:0:{}}}}', 'yes'),
(128, 'current_theme', 'Drizzle Mag', 'yes'),
(129, 'theme_switched', '', 'yes'),
(130, 'theme_switched_via_customizer', '', 'yes'),
(131, 'customize_stashed_theme_mods', 'a:6:{s:10:\"spicepress\";a:1:{s:27:\"nav_menu_locations[primary]\";a:4:{s:5:\"value\";i:3;s:4:\"type\";s:9:\"theme_mod\";s:7:\"user_id\";i:1;s:17:\"date_modified_gmt\";s:19:\"2018-12-14 21:29:30\";}}s:13:\"blossom-coach\";a:2:{s:12:\"social_links\";a:4:{s:5:\"value\";s:6:\"%5B%5D\";s:4:\"type\";s:9:\"theme_mod\";s:7:\"user_id\";i:1;s:17:\"date_modified_gmt\";s:19:\"2018-12-14 20:46:58\";}s:27:\"nav_menu_locations[primary]\";a:4:{s:5:\"value\";i:3;s:4:\"type\";s:9:\"theme_mod\";s:7:\"user_id\";i:1;s:17:\"date_modified_gmt\";s:19:\"2018-12-14 20:46:58\";}}s:6:\"hueman\";a:1:{s:26:\"nav_menu_locations[header]\";a:4:{s:5:\"value\";i:3;s:4:\"type\";s:9:\"theme_mod\";s:7:\"user_id\";i:1;s:17:\"date_modified_gmt\";s:19:\"2018-12-14 20:54:15\";}}s:12:\"business-key\";a:1:{s:26:\"nav_menu_locations[menu-1]\";a:4:{s:5:\"value\";i:3;s:4:\"type\";s:9:\"theme_mod\";s:7:\"user_id\";i:1;s:17:\"date_modified_gmt\";s:19:\"2018-12-14 21:16:18\";}}s:8:\"colormag\";a:1:{s:27:\"nav_menu_locations[primary]\";a:4:{s:5:\"value\";i:3;s:4:\"type\";s:9:\"theme_mod\";s:7:\"user_id\";i:1;s:17:\"date_modified_gmt\";s:19:\"2018-12-14 21:22:03\";}}s:7:\"cleanse\";a:1:{s:27:\"nav_menu_locations[primary]\";a:4:{s:5:\"value\";i:3;s:4:\"type\";s:9:\"theme_mod\";s:7:\"user_id\";i:1;s:17:\"date_modified_gmt\";s:19:\"2018-12-14 21:27:35\";}}}', 'no'),
(135, 'recently_activated', 'a:0:{}', 'yes'),
(136, 'widget_akismet_widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(139, 'aioseop_options', 'a:81:{s:16:\"aiosp_home_title\";N;s:22:\"aiosp_home_description\";s:0:\"\";s:20:\"aiosp_togglekeywords\";i:1;s:19:\"aiosp_home_keywords\";N;s:26:\"aiosp_use_static_home_info\";i:0;s:9:\"aiosp_can\";i:1;s:30:\"aiosp_no_paged_canonical_links\";i:0;s:31:\"aiosp_customize_canonical_links\";i:0;s:20:\"aiosp_rewrite_titles\";i:1;s:20:\"aiosp_force_rewrites\";i:1;s:24:\"aiosp_use_original_title\";i:0;s:28:\"aiosp_home_page_title_format\";s:12:\"%page_title%\";s:23:\"aiosp_page_title_format\";s:27:\"%page_title% | %blog_title%\";s:23:\"aiosp_post_title_format\";s:27:\"%post_title% | %blog_title%\";s:27:\"aiosp_category_title_format\";s:31:\"%category_title% | %blog_title%\";s:26:\"aiosp_archive_title_format\";s:30:\"%archive_title% | %blog_title%\";s:23:\"aiosp_date_title_format\";s:21:\"%date% | %blog_title%\";s:25:\"aiosp_author_title_format\";s:23:\"%author% | %blog_title%\";s:22:\"aiosp_tag_title_format\";s:20:\"%tag% | %blog_title%\";s:25:\"aiosp_search_title_format\";s:23:\"%search% | %blog_title%\";s:24:\"aiosp_description_format\";s:13:\"%description%\";s:22:\"aiosp_404_title_format\";s:33:\"Nothing found for %request_words%\";s:18:\"aiosp_paged_format\";s:14:\" - Part %page%\";s:17:\"aiosp_enablecpost\";s:2:\"on\";s:17:\"aiosp_cpostactive\";a:2:{i:0;s:4:\"post\";i:1;s:4:\"page\";}s:19:\"aiosp_cpostadvanced\";i:0;s:18:\"aiosp_cpostnoindex\";a:0:{}s:19:\"aiosp_cpostnofollow\";a:0:{}s:17:\"aiosp_cposttitles\";i:0;s:21:\"aiosp_posttypecolumns\";a:2:{i:0;s:4:\"post\";i:1;s:4:\"page\";}s:19:\"aiosp_google_verify\";s:0:\"\";s:17:\"aiosp_bing_verify\";s:0:\"\";s:22:\"aiosp_pinterest_verify\";s:0:\"\";s:22:\"aiosp_google_publisher\";s:0:\"\";s:28:\"aiosp_google_disable_profile\";i:0;s:29:\"aiosp_google_sitelinks_search\";N;s:26:\"aiosp_google_set_site_name\";N;s:30:\"aiosp_google_specify_site_name\";N;s:28:\"aiosp_google_author_advanced\";i:0;s:28:\"aiosp_google_author_location\";a:1:{i:0;s:3:\"all\";}s:29:\"aiosp_google_enable_publisher\";s:2:\"on\";s:30:\"aiosp_google_specify_publisher\";N;s:25:\"aiosp_google_analytics_id\";N;s:25:\"aiosp_ga_advanced_options\";s:2:\"on\";s:15:\"aiosp_ga_domain\";N;s:21:\"aiosp_ga_multi_domain\";i:0;s:21:\"aiosp_ga_addl_domains\";N;s:21:\"aiosp_ga_anonymize_ip\";N;s:28:\"aiosp_ga_display_advertising\";N;s:22:\"aiosp_ga_exclude_users\";N;s:29:\"aiosp_ga_track_outbound_links\";i:0;s:25:\"aiosp_ga_link_attribution\";i:0;s:27:\"aiosp_ga_enhanced_ecommerce\";i:0;s:20:\"aiosp_use_categories\";i:0;s:26:\"aiosp_use_tags_as_keywords\";i:1;s:32:\"aiosp_dynamic_postspage_keywords\";i:1;s:22:\"aiosp_category_noindex\";i:1;s:26:\"aiosp_archive_date_noindex\";i:1;s:28:\"aiosp_archive_author_noindex\";i:1;s:18:\"aiosp_tags_noindex\";i:0;s:20:\"aiosp_search_noindex\";i:0;s:17:\"aiosp_404_noindex\";i:0;s:17:\"aiosp_tax_noindex\";a:0:{}s:23:\"aiosp_paginated_noindex\";i:0;s:24:\"aiosp_paginated_nofollow\";i:0;s:27:\"aiosp_generate_descriptions\";i:0;s:18:\"aiosp_skip_excerpt\";i:0;s:20:\"aiosp_run_shortcodes\";i:0;s:33:\"aiosp_hide_paginated_descriptions\";i:0;s:32:\"aiosp_dont_truncate_descriptions\";i:0;s:19:\"aiosp_schema_markup\";i:1;s:20:\"aiosp_unprotect_meta\";i:0;s:33:\"aiosp_redirect_attachement_parent\";i:0;s:14:\"aiosp_ex_pages\";s:0:\"\";s:20:\"aiosp_post_meta_tags\";s:0:\"\";s:20:\"aiosp_page_meta_tags\";s:0:\"\";s:21:\"aiosp_front_meta_tags\";s:0:\"\";s:20:\"aiosp_home_meta_tags\";s:0:\"\";s:12:\"aiosp_do_log\";N;s:19:\"last_active_version\";s:3:\"2.5\";s:7:\"modules\";a:3:{s:29:\"aiosp_feature_manager_options\";a:7:{s:36:\"aiosp_feature_manager_enable_sitemap\";s:2:\"on\";s:38:\"aiosp_feature_manager_enable_opengraph\";s:2:\"on\";s:35:\"aiosp_feature_manager_enable_robots\";s:2:\"on\";s:40:\"aiosp_feature_manager_enable_file_editor\";s:2:\"on\";s:46:\"aiosp_feature_manager_enable_importer_exporter\";s:2:\"on\";s:39:\"aiosp_feature_manager_enable_bad_robots\";s:2:\"on\";s:40:\"aiosp_feature_manager_enable_performance\";s:2:\"on\";}s:21:\"aiosp_sitemap_options\";a:37:{s:22:\"aiosp_sitemap_filename\";s:7:\"sitemap\";s:24:\"aiosp_sitemap_daily_cron\";s:6:\"weekly\";s:21:\"aiosp_sitemap_indexes\";s:2:\"on\";s:23:\"aiosp_sitemap_max_posts\";s:5:\"50000\";s:23:\"aiosp_sitemap_posttypes\";a:4:{i:0;s:3:\"all\";i:1;s:4:\"post\";i:2;s:4:\"page\";i:3;s:10:\"attachment\";}s:24:\"aiosp_sitemap_taxonomies\";a:4:{i:0;s:3:\"all\";i:1;s:8:\"category\";i:2;s:8:\"post_tag\";i:3;s:11:\"post_format\";}s:21:\"aiosp_sitemap_archive\";s:2:\"on\";s:20:\"aiosp_sitemap_author\";s:2:\"on\";s:20:\"aiosp_sitemap_images\";s:0:\"\";s:21:\"aiosp_sitemap_gzipped\";s:2:\"on\";s:20:\"aiosp_sitemap_robots\";s:2:\"on\";s:21:\"aiosp_sitemap_rewrite\";s:2:\"on\";s:24:\"aiosp_sitemap_addl_pages\";a:0:{}s:29:\"aiosp_sitemap_excl_categories\";s:0:\"\";s:24:\"aiosp_sitemap_excl_pages\";s:0:\"\";s:27:\"aiosp_sitemap_prio_homepage\";s:2:\"no\";s:23:\"aiosp_sitemap_prio_post\";s:2:\"no\";s:34:\"aiosp_sitemap_prio_post_attachment\";s:2:\"no\";s:28:\"aiosp_sitemap_prio_post_page\";s:2:\"no\";s:28:\"aiosp_sitemap_prio_post_post\";s:2:\"no\";s:29:\"aiosp_sitemap_prio_taxonomies\";s:2:\"no\";s:41:\"aiosp_sitemap_prio_taxonomies_post_format\";s:2:\"no\";s:38:\"aiosp_sitemap_prio_taxonomies_post_tag\";s:2:\"no\";s:38:\"aiosp_sitemap_prio_taxonomies_category\";s:2:\"no\";s:26:\"aiosp_sitemap_prio_archive\";s:2:\"no\";s:25:\"aiosp_sitemap_prio_author\";s:2:\"no\";s:27:\"aiosp_sitemap_freq_homepage\";s:2:\"no\";s:23:\"aiosp_sitemap_freq_post\";s:2:\"no\";s:34:\"aiosp_sitemap_freq_post_attachment\";s:2:\"no\";s:28:\"aiosp_sitemap_freq_post_page\";s:2:\"no\";s:28:\"aiosp_sitemap_freq_post_post\";s:2:\"no\";s:29:\"aiosp_sitemap_freq_taxonomies\";s:2:\"no\";s:41:\"aiosp_sitemap_freq_taxonomies_post_format\";s:2:\"no\";s:38:\"aiosp_sitemap_freq_taxonomies_post_tag\";s:2:\"no\";s:38:\"aiosp_sitemap_freq_taxonomies_category\";s:2:\"no\";s:26:\"aiosp_sitemap_freq_archive\";s:2:\"no\";s:25:\"aiosp_sitemap_freq_author\";s:2:\"no\";}s:23:\"aiosp_opengraph_options\";a:50:{s:27:\"aiosp_opengraph_scan_header\";s:0:\"\";s:23:\"aiosp_opengraph_setmeta\";s:2:\"on\";s:19:\"aiosp_opengraph_key\";s:0:\"\";s:21:\"aiosp_opengraph_appid\";s:0:\"\";s:32:\"aiosp_opengraph_title_shortcodes\";s:0:\"\";s:38:\"aiosp_opengraph_description_shortcodes\";s:0:\"\";s:24:\"aiosp_opengraph_sitename\";s:18:\"Voice of  Pilgrims\";s:25:\"aiosp_opengraph_hometitle\";s:0:\"\";s:27:\"aiosp_opengraph_description\";s:0:\"\";s:25:\"aiosp_opengraph_homeimage\";s:66:\"http://localhost/wordpress/wp-content/uploads/2018/07/IMAG0237.jpg\";s:37:\"aiosp_opengraph_generate_descriptions\";s:0:\"\";s:22:\"aiosp_opengraph_defimg\";s:0:\"\";s:24:\"aiosp_opengraph_fallback\";s:2:\"on\";s:20:\"aiosp_opengraph_dimg\";s:95:\"http://localhost/wordpress/wp-content/plugins/all-in-one-seo-pack/images/default-user-image.png\";s:25:\"aiosp_opengraph_dimgwidth\";s:0:\"\";s:26:\"aiosp_opengraph_dimgheight\";s:0:\"\";s:24:\"aiosp_opengraph_meta_key\";s:0:\"\";s:21:\"aiosp_opengraph_image\";N;s:25:\"aiosp_opengraph_customimg\";N;s:26:\"aiosp_opengraph_imagewidth\";s:0:\"\";s:27:\"aiosp_opengraph_imageheight\";s:0:\"\";s:21:\"aiosp_opengraph_video\";N;s:26:\"aiosp_opengraph_videowidth\";s:0:\"\";s:27:\"aiosp_opengraph_videoheight\";s:0:\"\";s:23:\"aiosp_opengraph_defcard\";s:7:\"summary\";s:23:\"aiosp_opengraph_setcard\";N;s:28:\"aiosp_opengraph_twitter_site\";s:0:\"\";s:31:\"aiosp_opengraph_twitter_creator\";s:0:\"\";s:30:\"aiosp_opengraph_twitter_domain\";s:0:\"\";s:33:\"aiosp_opengraph_customimg_twitter\";N;s:24:\"aiosp_opengraph_gen_tags\";s:2:\"on\";s:28:\"aiosp_opengraph_gen_keywords\";s:2:\"on\";s:30:\"aiosp_opengraph_gen_categories\";s:2:\"on\";s:29:\"aiosp_opengraph_gen_post_tags\";s:2:\"on\";s:21:\"aiosp_opengraph_types\";a:2:{i:0;s:4:\"post\";i:1;s:4:\"page\";}s:21:\"aiosp_opengraph_title\";s:0:\"\";s:20:\"aiosp_opengraph_desc\";s:0:\"\";s:24:\"aiosp_opengraph_category\";s:0:\"\";s:23:\"aiosp_opengraph_section\";s:0:\"\";s:19:\"aiosp_opengraph_tag\";s:0:\"\";s:34:\"aiosp_opengraph_facebook_publisher\";s:0:\"\";s:31:\"aiosp_opengraph_facebook_author\";s:0:\"\";s:29:\"aiosp_opengraph_profile_links\";s:0:\"\";s:29:\"aiosp_opengraph_person_or_org\";s:3:\"org\";s:27:\"aiosp_opengraph_social_name\";s:0:\"\";s:35:\"aiosp_opengraph_post_fb_object_type\";s:7:\"article\";s:35:\"aiosp_opengraph_page_fb_object_type\";s:7:\"article\";s:41:\"aiosp_opengraph_attachment_fb_object_type\";s:7:\"article\";s:43:\"aiosp_opengraph_oembed_cache_fb_object_type\";s:7:\"article\";s:43:\"aiosp_opengraph_user_request_fb_object_type\";s:7:\"article\";}}}', 'yes'),
(146, 'theme_mods_twentyfifteen', 'a:4:{s:18:\"custom_css_post_id\";i:-1;s:18:\"nav_menu_locations\";a:2:{s:7:\"primary\";i:3;s:6:\"social\";i:3;}s:12:\"header_image\";s:13:\"remove-header\";s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1530879592;s:4:\"data\";a:2:{s:19:\"wp_inactive_widgets\";a:3:{i:0;s:6:\"meta-2\";i:1;s:17:\"recent-comments-2\";i:2;s:10:\"nav_menu-3\";}s:9:\"sidebar-1\";a:8:{i:0;s:8:\"search-2\";i:1;s:7:\"pages-3\";i:2;s:14:\"recent-posts-2\";i:3;s:12:\"categories-2\";i:4;s:10:\"archives-2\";i:5;s:13:\"media_image-3\";i:6;s:10:\"calendar-3\";i:7;s:5:\"rss-3\";}}}}', 'yes'),
(206, 'akismet_spam_count', '1', 'yes'),
(215, 'nav_menu_options', 'a:1:{s:8:\"auto_add\";a:1:{i:0;i:3;}}', 'yes'),
(227, '_transient_twentyfifteen_categories', '2', 'yes'),
(241, 'theme_mods_blogto', 'a:33:{i:0;b:0;s:18:\"nav_menu_locations\";a:2:{s:7:\"primary\";i:3;s:6:\"social\";i:3;}s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1531048974;s:4:\"data\";a:6:{s:19:\"wp_inactive_widgets\";a:3:{i:0;s:6:\"meta-2\";i:1;s:17:\"recent-comments-2\";i:2;s:10:\"nav_menu-3\";}s:13:\"right-sidebar\";a:8:{i:0;s:8:\"search-2\";i:1;s:7:\"pages-3\";i:2;s:14:\"recent-posts-2\";i:3;s:12:\"categories-2\";i:4;s:10:\"archives-2\";i:5;s:13:\"media_image-3\";i:6;s:10:\"calendar-3\";i:7;s:5:\"rss-3\";}s:23:\"blogto-footer-sidebar-1\";a:0:{}s:23:\"blogto-footer-sidebar-2\";a:0:{}s:23:\"blogto-footer-sidebar-3\";a:0:{}s:23:\"blogto-footer-sidebar-4\";a:0:{}}}s:12:\"header_image\";s:20:\"random-default-image\";s:16:\"background_image\";s:66:\"http://localhost/wordpress/wp-content/uploads/2018/07/IMAG0237.jpg\";s:21:\"background_position_x\";s:4:\"left\";s:21:\"background_position_y\";s:3:\"top\";s:17:\"background_preset\";s:3:\"fit\";s:15:\"background_size\";s:7:\"contain\";s:17:\"background_repeat\";s:6:\"repeat\";s:21:\"background_attachment\";s:5:\"fixed\";s:11:\"custom_logo\";i:52;s:16:\"site_title_color\";s:7:\"#000002\";s:15:\"slider_autoplay\";b:1;s:14:\"disable_slider\";b:1;s:14:\"slider_control\";b:1;s:13:\"blog_category\";i:1;s:11:\"blog_number\";s:1:\"5\";s:18:\"blog_section_title\";s:15:\"In case Miss It\";s:19:\"about_section_title\";s:14:\"Get to know us\";s:10:\"about_page\";i:20;s:14:\"callback_title\";s:22:\"Let\'s Keep You Updated\";s:20:\"callback_button_text\";s:9:\"Subscribe\";s:18:\"archive_post_image\";s:6:\"medium\";s:13:\"single_layout\";s:7:\"compact\";s:19:\"archive_post_layout\";s:4:\"grid\";s:18:\"archive_page_title\";s:27:\"Welcome To Voice of Pilgims\";s:16:\"enable_instagram\";b:1;s:27:\"enable_scroll_top_in_mobile\";b:1;s:21:\"disable_footer_widget\";b:0;s:11:\"footer_text\";s:104:\"Voice of Prophecy <a href=\"//keonthemes.com\" target=\"_blank\">- VOP</a> Copyright © All Rights Reserved.\";s:13:\"disable_about\";b:1;}', 'yes'),
(243, 'theme_mods_play-school-kindergarten', 'a:5:{i:0;b:0;s:18:\"nav_menu_locations\";a:1:{s:7:\"primary\";i:3;}s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1531049108;s:4:\"data\";a:8:{s:19:\"wp_inactive_widgets\";a:3:{i:0;s:6:\"meta-2\";i:1;s:17:\"recent-comments-2\";i:2;s:10:\"nav_menu-3\";}s:9:\"sidebar-1\";a:8:{i:0;s:8:\"search-2\";i:1;s:7:\"pages-3\";i:2;s:14:\"recent-posts-2\";i:3;s:12:\"categories-2\";i:4;s:10:\"archives-2\";i:5;s:13:\"media_image-3\";i:6;s:10:\"calendar-3\";i:7;s:5:\"rss-3\";}s:9:\"sidebar-2\";a:0:{}s:9:\"sidebar-3\";a:0:{}s:8:\"footer-1\";a:0:{}s:8:\"footer-2\";a:0:{}s:8:\"footer-3\";a:0:{}s:8:\"footer-4\";a:0:{}}}s:11:\"custom_logo\";s:0:\"\";}', 'yes'),
(248, 'theme_mods_business-key', 'a:4:{i:0;b:0;s:18:\"nav_menu_locations\";a:1:{s:6:\"menu-1\";i:3;}s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1531049025;s:4:\"data\";a:7:{s:19:\"wp_inactive_widgets\";a:3:{i:0;s:6:\"meta-2\";i:1;s:17:\"recent-comments-2\";i:2;s:10:\"nav_menu-3\";}s:9:\"sidebar-1\";a:8:{i:0;s:8:\"search-2\";i:1;s:7:\"pages-3\";i:2;s:14:\"recent-posts-2\";i:3;s:12:\"categories-2\";i:4;s:10:\"archives-2\";i:5;s:13:\"media_image-3\";i:6;s:10:\"calendar-3\";i:7;s:5:\"rss-3\";}s:9:\"sidebar-2\";a:0:{}s:8:\"footer-1\";a:0:{}s:8:\"footer-2\";a:0:{}s:8:\"footer-3\";a:0:{}s:8:\"footer-4\";a:0:{}}}}', 'yes'),
(254, 'WPLANG', '', 'yes'),
(255, 'new_admin_email', 'lekiagospel@gmail.com', 'yes'),
(266, 'akismet_strictness', '0', 'yes'),
(267, 'akismet_show_user_comments_approved', '0', 'yes'),
(275, 'aiosp_sitemap_cron_last_run', '1544819648', 'yes'),
(308, 'category_children', 'a:0:{}', 'yes'),
(393, 'theme_mods_cleanse', 'a:21:{s:18:\"custom_css_post_id\";i:-1;s:18:\"nav_menu_locations\";a:1:{s:7:\"primary\";i:3;}s:10:\"logo_title\";b:0;s:10:\"phone_num1\";s:11:\"07032034154\";s:10:\"breadcrumb\";b:1;s:18:\"numeric_pagination\";b:1;s:16:\"sidebar_position\";s:5:\"right\";s:13:\"scroll_to_top\";b:1;s:10:\"slider_cat\";i:2;s:9:\"service_4\";i:23;s:13:\"service_image\";i:14;s:19:\"featured_image_size\";i:2;s:18:\"social_sharing_box\";b:1;s:11:\"facebook_sb\";b:1;s:10:\"twitter_sb\";b:1;s:11:\"linkedin_sb\";b:1;s:14:\"google-plus_sb\";b:1;s:8:\"email_sb\";b:1;s:13:\"related_posts\";b:1;s:11:\"custom_logo\";i:106;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1531049067;s:4:\"data\";a:9:{s:19:\"wp_inactive_widgets\";a:3:{i:0;s:6:\"meta-2\";i:1;s:17:\"recent-comments-2\";i:2;s:10:\"nav_menu-3\";}s:9:\"sidebar-1\";a:8:{i:0;s:8:\"search-2\";i:1;s:7:\"pages-3\";i:2;s:14:\"recent-posts-2\";i:3;s:12:\"categories-2\";i:4;s:10:\"archives-2\";i:5;s:13:\"media_image-3\";i:6;s:10:\"calendar-3\";i:7;s:5:\"rss-3\";}s:8:\"top-left\";a:0:{}s:9:\"top-right\";a:0:{}s:12:\"header-right\";a:0:{}s:6:\"footer\";a:0:{}s:8:\"footer-2\";a:0:{}s:8:\"footer-3\";a:0:{}s:10:\"footer-nav\";a:0:{}}}}', 'yes'),
(423, 'theme_mods_tortuga', 'a:5:{i:0;b:0;s:18:\"nav_menu_locations\";a:1:{s:7:\"primary\";i:3;}s:18:\"custom_css_post_id\";i:-1;s:11:\"custom_logo\";i:111;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1544822010;s:4:\"data\";a:4:{s:19:\"wp_inactive_widgets\";a:4:{i:0;s:30:\"tortuga-magazine-posts-boxed-3\";i:1;s:6:\"meta-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"nav_menu-3\";}s:7:\"sidebar\";a:6:{i:0;s:8:\"search-2\";i:1;s:7:\"pages-3\";i:2;s:14:\"recent-posts-2\";i:3;s:12:\"categories-2\";i:4;s:10:\"archives-2\";i:5;s:5:\"rss-3\";}s:6:\"header\";a:0:{}s:17:\"magazine-homepage\";a:0:{}}}}', 'yes'),
(424, 'widget_tortuga-magazine-posts-columns', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(425, 'widget_tortuga-magazine-posts-grid', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(426, 'widget_tortuga-magazine-posts-boxed', 'a:2:{s:12:\"_multiwidget\";i:1;i:3;a:0:{}}', 'yes'),
(427, 'widget_tortuga-magazine-vertical-box', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(435, 'tortuga_theme_options', 'a:14:{s:10:\"blog_title\";s:13:\"Rich Resource\";s:11:\"post_layout\";s:11:\"two-columns\";s:14:\"excerpt_length\";i:40;s:15:\"slider_magazine\";b:1;s:11:\"slider_blog\";b:1;s:16:\"slider_animation\";s:4:\"fade\";s:16:\"site_description\";b:1;s:21:\"blog_magazine_widgets\";b:0;s:12:\"slider_speed\";i:6000;s:19:\"post_image_archives\";b:1;s:9:\"meta_date\";b:1;s:11:\"meta_author\";b:1;s:13:\"meta_comments\";b:1;s:9:\"meta_tags\";b:1;}', 'yes'),
(477, '_transient_twentysixteen_categories', '2', 'yes'),
(496, 'theme_mods_twentyten', 'a:1:{s:18:\"custom_css_post_id\";i:-1;}', 'yes'),
(503, 'shop_catalog_image_size', 'a:3:{s:5:\"width\";s:3:\"325\";s:6:\"height\";s:3:\"380\";s:4:\"crop\";i:1;}', 'yes'),
(504, 'shop_single_image_size', 'a:3:{s:5:\"width\";s:3:\"600\";s:6:\"height\";s:3:\"600\";s:4:\"crop\";i:1;}', 'yes'),
(505, 'shop_thumbnail_image_size', 'a:3:{s:5:\"width\";s:3:\"120\";s:6:\"height\";s:3:\"120\";s:4:\"crop\";i:1;}', 'yes'),
(506, 'theme_mods_total', 'a:3:{s:18:\"custom_css_post_id\";i:-1;s:18:\"nav_menu_locations\";a:1:{s:7:\"primary\";i:3;}s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1531264361;s:4:\"data\";a:8:{s:19:\"wp_inactive_widgets\";a:3:{i:0;s:6:\"meta-2\";i:1;s:17:\"recent-comments-2\";i:2;s:10:\"nav_menu-3\";}s:19:\"total-right-sidebar\";a:6:{i:0;s:8:\"search-2\";i:1;s:7:\"pages-3\";i:2;s:14:\"recent-posts-2\";i:3;s:12:\"categories-2\";i:4;s:10:\"archives-2\";i:5;s:5:\"rss-3\";}s:18:\"total-left-sidebar\";a:0:{}s:18:\"total-shop-sidebar\";a:0:{}s:13:\"total-footer1\";a:0:{}s:13:\"total-footer2\";a:0:{}s:13:\"total-footer3\";a:0:{}s:13:\"total-footer4\";a:0:{}}}}', 'yes'),
(508, '_transient_total_categories', '2', 'yes'),
(513, 'theme_mods_spicepress', 'a:3:{s:18:\"custom_css_post_id\";i:-1;s:18:\"nav_menu_locations\";a:1:{s:7:\"primary\";i:3;}s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1531263950;s:4:\"data\";a:7:{s:19:\"wp_inactive_widgets\";a:3:{i:0;s:6:\"meta-2\";i:1;s:17:\"recent-comments-2\";i:2;s:10:\"nav_menu-3\";}s:15:\"sidebar_primary\";a:6:{i:0;s:8:\"search-2\";i:1;s:7:\"pages-3\";i:2;s:14:\"recent-posts-2\";i:3;s:12:\"categories-2\";i:4;s:10:\"archives-2\";i:5;s:5:\"rss-3\";}s:23:\"footer_widget_area_left\";a:0:{}s:25:\"footer_widget_area_center\";a:0:{}s:24:\"footer_widget_area_right\";a:0:{}s:11:\"woocommerce\";a:0:{}s:24:\"wdl_contact_page_sidebar\";a:0:{}}}}', 'yes'),
(519, 'theme_mods_powerwp', 'a:3:{s:18:\"custom_css_post_id\";i:-1;s:18:\"nav_menu_locations\";a:1:{s:7:\"primary\";i:3;}s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1544822221;s:4:\"data\";a:4:{s:19:\"wp_inactive_widgets\";a:4:{i:0;s:30:\"tortuga-magazine-posts-boxed-3\";i:1;s:6:\"meta-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"nav_menu-3\";}s:7:\"sidebar\";a:6:{i:0;s:8:\"search-2\";i:1;s:7:\"pages-3\";i:2;s:14:\"recent-posts-2\";i:3;s:12:\"categories-2\";i:4;s:10:\"archives-2\";i:5;s:5:\"rss-3\";}s:6:\"header\";a:0:{}s:17:\"magazine-homepage\";a:0:{}}}}', 'yes'),
(525, 'widget_tpcrn-cat-posts-widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(526, 'widget_bfastmag-social-widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(527, 'theme_mods_bfastmag', 'a:3:{s:18:\"custom_css_post_id\";i:-1;s:18:\"nav_menu_locations\";a:1:{s:16:\"bfastmag-primary\";i:3;}s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1531263084;s:4:\"data\";a:6:{s:19:\"wp_inactive_widgets\";a:3:{i:0;s:6:\"meta-2\";i:1;s:17:\"recent-comments-2\";i:2;s:10:\"nav_menu-3\";}s:16:\"bfastmag-sidebar\";a:6:{i:0;s:8:\"search-2\";i:1;s:7:\"pages-3\";i:2;s:14:\"recent-posts-2\";i:3;s:12:\"categories-2\";i:4;s:10:\"archives-2\";i:5;s:5:\"rss-3\";}s:18:\"bfastmag-header-ad\";a:0:{}s:22:\"bfastmag-footer-block1\";a:0:{}s:22:\"bfastmag-footer-block2\";a:0:{}s:22:\"bfastmag-footer-block3\";a:0:{}}}}', 'yes'),
(530, 'theme_mods_bfastmag-shop', 'a:4:{s:32:\"bfastmag_featured_slider_disable\";b:1;s:29:\"bfastmag_featured_big_disable\";b:1;s:23:\"bfastmag_block1_disable\";b:0;s:18:\"custom_css_post_id\";i:-1;}', 'yes'),
(534, 'widget_colormag_featured_posts_slider_widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(535, 'widget_colormag_highlighted_posts_widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(536, 'widget_colormag_featured_posts_widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(537, 'widget_colormag_featured_posts_vertical_widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(538, 'widget_colormag_728x90_advertisement_widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(539, 'widget_colormag_300x250_advertisement_widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(540, 'widget_colormag_125x125_advertisement_widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(541, 'theme_mods_colormag', 'a:3:{s:18:\"custom_css_post_id\";i:-1;s:18:\"nav_menu_locations\";a:1:{s:7:\"primary\";i:3;}s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1531263517;s:4:\"data\";a:17:{s:19:\"wp_inactive_widgets\";a:3:{i:0;s:6:\"meta-2\";i:1;s:17:\"recent-comments-2\";i:2;s:10:\"nav_menu-3\";}s:22:\"colormag_right_sidebar\";a:6:{i:0;s:8:\"search-2\";i:1;s:7:\"pages-3\";i:2;s:14:\"recent-posts-2\";i:3;s:12:\"categories-2\";i:4;s:10:\"archives-2\";i:5;s:5:\"rss-3\";}s:21:\"colormag_left_sidebar\";a:0:{}s:23:\"colormag_header_sidebar\";a:0:{}s:31:\"colormag_front_page_slider_area\";a:0:{}s:38:\"colormag_front_page_area_beside_slider\";a:0:{}s:39:\"colormag_front_page_content_top_section\";a:0:{}s:47:\"colormag_front_page_content_middle_left_section\";a:0:{}s:48:\"colormag_front_page_content_middle_right_section\";a:0:{}s:42:\"colormag_front_page_content_bottom_section\";a:0:{}s:29:\"colormag_contact_page_sidebar\";a:0:{}s:31:\"colormag_error_404_page_sidebar\";a:0:{}s:47:\"colormag_advertisement_above_the_footer_sidebar\";a:0:{}s:27:\"colormag_footer_sidebar_one\";a:0:{}s:27:\"colormag_footer_sidebar_two\";a:0:{}s:29:\"colormag_footer_sidebar_three\";a:0:{}s:28:\"colormag_footer_sidebar_four\";a:0:{}}}}', 'yes'),
(545, 'theme_mods_blossom-coach', 'a:3:{s:18:\"custom_css_post_id\";i:-1;s:18:\"nav_menu_locations\";a:1:{s:7:\"primary\";i:3;}s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1531263422;s:4:\"data\";a:13:{s:19:\"wp_inactive_widgets\";a:3:{i:0;s:6:\"meta-2\";i:1;s:17:\"recent-comments-2\";i:2;s:10:\"nav_menu-3\";}s:7:\"sidebar\";a:6:{i:0;s:8:\"search-2\";i:1;s:7:\"pages-3\";i:2;s:14:\"recent-posts-2\";i:3;s:12:\"categories-2\";i:4;s:10:\"archives-2\";i:5;s:5:\"rss-3\";}s:6:\"client\";a:0:{}s:5:\"about\";a:0:{}s:3:\"cta\";a:0:{}s:11:\"testimonial\";a:0:{}s:7:\"service\";a:0:{}s:10:\"simple-cta\";a:0:{}s:7:\"contact\";a:0:{}s:10:\"footer-one\";a:0:{}s:10:\"footer-two\";a:0:{}s:12:\"footer-three\";a:0:{}s:11:\"footer-four\";a:0:{}}}}', 'yes'),
(550, 'widget_drizzle-mag-social', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(551, 'widget_drizzle-mag-recent-posts-extended', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(552, 'widget_drizzle-mag-news-block', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(553, 'widget_drizzle-mag-posts-slider', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(554, 'widget_drizzle-mag-featured-page', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(555, 'widget_drizzle-mag-tabbed', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(556, 'theme_mods_drizzle-mag', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:18:\"nav_menu_locations\";a:1:{s:7:\"primary\";i:3;}}', 'yes'),
(561, 'widget_academia-widget-featured-pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(562, 'theme_mods_fleming', 'a:3:{s:18:\"custom_css_post_id\";i:-1;s:18:\"nav_menu_locations\";a:1:{s:7:\"primary\";i:3;}s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1544822878;s:4:\"data\";a:4:{s:19:\"wp_inactive_widgets\";a:4:{i:0;s:30:\"tortuga-magazine-posts-boxed-3\";i:1;s:6:\"meta-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"nav_menu-3\";}s:7:\"sidebar\";a:6:{i:0;s:8:\"search-2\";i:1;s:7:\"pages-3\";i:2;s:14:\"recent-posts-2\";i:3;s:12:\"categories-2\";i:4;s:10:\"archives-2\";i:5;s:5:\"rss-3\";}s:6:\"header\";a:0:{}s:17:\"magazine-homepage\";a:0:{}}}}', 'yes'),
(566, 'hu_theme_options', 'a:4:{s:13:\"sidebar-areas\";a:8:{i:0;a:6:{s:2:\"id\";s:7:\"primary\";s:5:\"title\";s:7:\"Primary\";s:8:\"contexts\";a:8:{i:0;s:4:\"home\";i:1;s:9:\"blog-page\";i:2;s:4:\"page\";i:3;s:6:\"single\";i:4;s:7:\"archive\";i:5;s:16:\"archive-category\";i:6;s:6:\"search\";i:7;i:404;}s:9:\"locations\";a:1:{i:0;s:2:\"s1\";}s:10:\"is_builtin\";b:1;s:11:\"description\";s:146:\"Full width widget zone. Located in the left sidebar in a 3 columns layout. Can be on the right of a 2 columns sidebar when content is on the left.\";}i:1;a:6:{s:2:\"id\";s:9:\"secondary\";s:5:\"title\";s:9:\"Secondary\";s:8:\"contexts\";a:8:{i:0;s:4:\"home\";i:1;s:9:\"blog-page\";i:2;s:4:\"page\";i:3;s:6:\"single\";i:4;s:7:\"archive\";i:5;s:16:\"archive-category\";i:6;s:6:\"search\";i:7;i:404;}s:9:\"locations\";a:1:{i:0;s:2:\"s2\";}s:10:\"is_builtin\";b:1;s:11:\"description\";s:75:\"Full width widget zone. Located in the right sidebar in a 3 columns layout.\";}i:2;a:6:{s:2:\"id\";s:8:\"footer-1\";s:5:\"title\";s:8:\"Footer 1\";s:8:\"contexts\";a:8:{i:0;s:4:\"home\";i:1;s:9:\"blog-page\";i:2;s:4:\"page\";i:3;s:6:\"single\";i:4;s:7:\"archive\";i:5;s:16:\"archive-category\";i:6;s:6:\"search\";i:7;i:404;}s:9:\"locations\";a:1:{i:0;s:8:\"footer-1\";}s:10:\"is_builtin\";b:1;s:11:\"description\";s:19:\"Widgetized footer 1\";}i:3;a:6:{s:2:\"id\";s:8:\"footer-2\";s:5:\"title\";s:8:\"Footer 2\";s:8:\"contexts\";a:8:{i:0;s:4:\"home\";i:1;s:9:\"blog-page\";i:2;s:4:\"page\";i:3;s:6:\"single\";i:4;s:7:\"archive\";i:5;s:16:\"archive-category\";i:6;s:6:\"search\";i:7;i:404;}s:9:\"locations\";a:1:{i:0;s:8:\"footer-2\";}s:10:\"is_builtin\";b:1;s:11:\"description\";s:19:\"Widgetized footer 2\";}i:4;a:6:{s:2:\"id\";s:8:\"footer-3\";s:5:\"title\";s:8:\"Footer 3\";s:8:\"contexts\";a:8:{i:0;s:4:\"home\";i:1;s:9:\"blog-page\";i:2;s:4:\"page\";i:3;s:6:\"single\";i:4;s:7:\"archive\";i:5;s:16:\"archive-category\";i:6;s:6:\"search\";i:7;i:404;}s:9:\"locations\";a:1:{i:0;s:8:\"footer-3\";}s:10:\"is_builtin\";b:1;s:11:\"description\";s:19:\"Widgetized footer 3\";}i:5;a:6:{s:2:\"id\";s:8:\"footer-4\";s:5:\"title\";s:8:\"Footer 4\";s:8:\"contexts\";a:8:{i:0;s:4:\"home\";i:1;s:9:\"blog-page\";i:2;s:4:\"page\";i:3;s:6:\"single\";i:4;s:7:\"archive\";i:5;s:16:\"archive-category\";i:6;s:6:\"search\";i:7;i:404;}s:9:\"locations\";a:1:{i:0;s:8:\"footer-4\";}s:10:\"is_builtin\";b:1;s:11:\"description\";s:19:\"Widgetized footer 4\";}i:6;a:6:{s:2:\"id\";s:10:\"header-ads\";s:5:\"title\";s:29:\"Header (next to logo / title)\";s:8:\"contexts\";a:8:{i:0;s:4:\"home\";i:1;s:9:\"blog-page\";i:2;s:4:\"page\";i:3;s:6:\"single\";i:4;s:7:\"archive\";i:5;s:16:\"archive-category\";i:6;s:6:\"search\";i:7;i:404;}s:9:\"locations\";a:1:{i:0;s:10:\"header-ads\";}s:10:\"is_builtin\";b:1;s:11:\"description\";s:66:\"The Header Widget Zone is located next to your logo or site title.\";}i:7;a:6:{s:2:\"id\";s:10:\"footer-ads\";s:5:\"title\";s:17:\"Footer Full Width\";s:8:\"contexts\";a:8:{i:0;s:4:\"home\";i:1;s:9:\"blog-page\";i:2;s:4:\"page\";i:3;s:6:\"single\";i:4;s:7:\"archive\";i:5;s:16:\"archive-category\";i:6;s:6:\"search\";i:7;i:404;}s:9:\"locations\";a:1:{i:0;s:10:\"footer-ads\";}s:10:\"is_builtin\";b:1;s:11:\"description\";s:163:\"The Footer Widget Zone is located before the other footer widgets and takes 100% of the width. Very appropriate to display a Google Map or an advertisement banner.\";}}s:15:\"has_been_copied\";b:1;s:8:\"defaults\";a:84:{s:7:\"favicon\";N;s:20:\"display-header-title\";b:1;s:19:\"display-header-logo\";b:0;s:18:\"mobile-header-logo\";N;s:15:\"logo-max-height\";i:60;s:4:\"font\";s:15:\"source-sans-pro\";s:14:\"body-font-size\";i:16;s:15:\"container-width\";i:1380;s:5:\"boxed\";b:0;s:15:\"sidebar-padding\";s:2:\"30\";s:7:\"color-1\";s:7:\"#3b8dbd\";s:7:\"color-2\";s:7:\"#82b965\";s:15:\"body-background\";a:1:{s:16:\"background-color\";s:7:\"#eaeaea\";}s:19:\"image-border-radius\";i:0;s:14:\"ext_link_style\";b:0;s:15:\"ext_link_target\";b:0;s:13:\"post-comments\";b:1;s:13:\"page-comments\";b:0;s:12:\"smoothscroll\";b:1;s:10:\"responsive\";b:1;s:7:\"fittext\";b:0;s:21:\"attachments-in-search\";b:0;s:12:\"social-links\";a:0:{}s:12:\"minified-css\";b:1;s:15:\"structured-data\";b:0;s:14:\"smart_load_img\";b:0;s:16:\"js-mobile-detect\";b:0;s:10:\"about-page\";b:1;s:11:\"help-button\";b:1;s:16:\"site-description\";b:1;s:12:\"color-topbar\";s:7:\"#26272b\";s:12:\"color-header\";s:7:\"#33363b\";s:17:\"color-header-menu\";s:7:\"#33363b\";s:17:\"color-mobile-menu\";s:7:\"#33363b\";s:24:\"transparent-fixed-topnav\";b:1;s:16:\"use-header-image\";b:0;s:26:\"logo-title-on-header-image\";b:0;s:10:\"header-ads\";b:1;s:18:\"header-ads-desktop\";b:1;s:17:\"header-ads-mobile\";b:0;s:19:\"default-menu-header\";b:0;s:21:\"header-desktop-sticky\";s:8:\"stick_up\";s:14:\"desktop-search\";s:6:\"topbar\";s:25:\"header_mobile_menu_layout\";s:9:\"main_menu\";s:20:\"header-mobile-sticky\";s:8:\"stick_up\";s:17:\"header_mobile_btn\";s:8:\"animated\";s:13:\"mobile-search\";b:1;s:20:\"blog-heading-enabled\";b:1;s:12:\"blog-heading\";s:18:\"Voice of  Pilgrims\";s:15:\"blog-subheading\";s:4:\"Blog\";s:13:\"blog-standard\";b:0;s:14:\"excerpt-length\";i:34;s:22:\"featured-posts-enabled\";b:1;s:17:\"featured-category\";s:1:\"0\";s:20:\"featured-posts-count\";i:1;s:27:\"featured-posts-full-content\";b:0;s:18:\"featured-slideshow\";b:0;s:24:\"featured-slideshow-speed\";i:5000;s:22:\"featured-posts-include\";b:0;s:10:\"author-bio\";b:1;s:13:\"related-posts\";s:10:\"categories\";s:8:\"post-nav\";s:2:\"s1\";s:11:\"placeholder\";b:1;s:13:\"comment-count\";b:1;s:13:\"layout-global\";s:7:\"col-3cm\";s:11:\"layout-home\";s:7:\"inherit\";s:13:\"layout-single\";s:7:\"inherit\";s:14:\"layout-archive\";s:7:\"inherit\";s:23:\"layout-archive-category\";s:7:\"inherit\";s:13:\"layout-search\";s:7:\"inherit\";s:10:\"layout-404\";s:7:\"inherit\";s:11:\"layout-page\";s:7:\"inherit\";s:11:\"sidebar-top\";b:1;s:17:\"desktop-sticky-sb\";b:1;s:16:\"mobile-sticky-sb\";b:1;s:19:\"mobile-sidebar-hide\";s:1:\"1\";s:10:\"footer-ads\";b:1;s:19:\"default-menu-footer\";b:0;s:14:\"footer-widgets\";s:1:\"0\";s:11:\"footer-logo\";N;s:12:\"color-footer\";s:7:\"#33363b\";s:9:\"copyright\";s:0:\"\";s:6:\"credit\";b:1;s:3:\"ver\";s:5:\"3.4.0\";}s:18:\"last_update_notice\";a:2:{s:7:\"version\";s:5:\"3.4.0\";s:13:\"display_count\";i:0;}}', 'yes'),
(567, 'widget_alxtabs', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(568, 'widget_alxvideo', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(569, 'widget_alxposts', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(570, 'theme_mods_hueman', 'a:3:{s:18:\"custom_css_post_id\";i:-1;s:18:\"nav_menu_locations\";a:1:{s:6:\"header\";i:3;}s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1531263628;s:4:\"data\";a:9:{s:19:\"wp_inactive_widgets\";a:3:{i:0;s:6:\"meta-2\";i:1;s:17:\"recent-comments-2\";i:2;s:10:\"nav_menu-3\";}s:7:\"primary\";a:6:{i:0;s:8:\"search-2\";i:1;s:7:\"pages-3\";i:2;s:14:\"recent-posts-2\";i:3;s:12:\"categories-2\";i:4;s:10:\"archives-2\";i:5;s:5:\"rss-3\";}s:9:\"secondary\";a:0:{}s:8:\"footer-1\";a:0:{}s:8:\"footer-2\";a:0:{}s:8:\"footer-3\";a:0:{}s:8:\"footer-4\";a:0:{}s:10:\"header-ads\";a:0:{}s:10:\"footer-ads\";a:0:{}}}}', 'yes'),
(571, 'ot_media_post_ID', '135', 'yes'),
(575, 'theme_mods_madd-magazine', 'a:3:{s:18:\"custom_css_post_id\";i:-1;s:18:\"nav_menu_locations\";a:1:{s:6:\"menu-1\";i:3;}s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1531263669;s:4:\"data\";a:5:{s:19:\"wp_inactive_widgets\";a:3:{i:0;s:6:\"meta-2\";i:1;s:17:\"recent-comments-2\";i:2;s:10:\"nav_menu-3\";}s:14:\"sidebar-widget\";a:6:{i:0;s:8:\"search-2\";i:1;s:7:\"pages-3\";i:2;s:14:\"recent-posts-2\";i:3;s:12:\"categories-2\";i:4;s:10:\"archives-2\";i:5;s:5:\"rss-3\";}s:15:\"sidebar-widget2\";a:0:{}s:13:\"footer-widget\";a:0:{}s:11:\"ads-widget1\";a:0:{}}}}', 'yes'),
(579, 'widget_news_portal_ads_banner', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(580, 'widget_news_portal_featured_slider', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(581, 'widget_news_portal_featured_posts', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(582, 'widget_news_portal_block_posts', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(583, 'widget_news_portal_carousel', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(584, 'widget_news_portal_social_media', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(585, 'widget_news_portal_recent_posts', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(586, 'widget_news_portal_default_tabbed', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(587, 'theme_mods_news-portal', 'a:3:{s:18:\"custom_css_post_id\";i:-1;s:18:\"nav_menu_locations\";a:1:{s:24:\"news_portal_primary_menu\";i:3;}s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1544822535;s:4:\"data\";a:4:{s:19:\"wp_inactive_widgets\";a:4:{i:0;s:30:\"tortuga-magazine-posts-boxed-3\";i:1;s:6:\"meta-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"nav_menu-3\";}s:7:\"sidebar\";a:6:{i:0;s:8:\"search-2\";i:1;s:7:\"pages-3\";i:2;s:14:\"recent-posts-2\";i:3;s:12:\"categories-2\";i:4;s:10:\"archives-2\";i:5;s:5:\"rss-3\";}s:6:\"header\";a:0:{}s:17:\"magazine-homepage\";a:0:{}}}}', 'yes'),
(592, 'theme_mods_onepress', 'a:3:{s:18:\"custom_css_post_id\";i:-1;s:18:\"nav_menu_locations\";a:1:{s:7:\"primary\";i:3;}s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1544822982;s:4:\"data\";a:4:{s:19:\"wp_inactive_widgets\";a:4:{i:0;s:30:\"tortuga-magazine-posts-boxed-3\";i:1;s:6:\"meta-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"nav_menu-3\";}s:7:\"sidebar\";a:6:{i:0;s:8:\"search-2\";i:1;s:7:\"pages-3\";i:2;s:14:\"recent-posts-2\";i:3;s:12:\"categories-2\";i:4;s:10:\"archives-2\";i:5;s:5:\"rss-3\";}s:6:\"header\";a:0:{}s:17:\"magazine-homepage\";a:0:{}}}}', 'yes'),
(595, '_site_transient_update_themes', 'O:8:\"stdClass\":1:{s:12:\"last_checked\";i:1544822990;}', 'no'),
(612, 'wpcf7', 'a:2:{s:7:\"version\";s:5:\"5.0.2\";s:13:\"bulk_validate\";a:4:{s:9:\"timestamp\";i:1531262441;s:7:\"version\";s:5:\"5.0.2\";s:11:\"count_valid\";i:1;s:13:\"count_invalid\";i:0;}}', 'yes'),
(613, 'googleanalytics_web_property_id', 'UA-0000000-0', 'yes'),
(614, 'googleanalytics_exclude_roles', '[]', 'yes'),
(615, 'googleanalytics_sharethis_terms', '1', 'yes'),
(616, 'googleanalytics_hide_terms', '', 'yes'),
(617, 'googleanalytics_version', '2.1.3', 'yes'),
(618, 'googleanalytics_oauth_auth_code', '', 'yes'),
(619, 'googleanalytics_oauth_auth_token', '', 'yes'),
(620, 'googleanalytics_account_data', '', 'yes'),
(621, 'googleanalytics_selected_account', '', 'yes'),
(622, 'googleanalytics_web_property_id_manually', '', 'yes'),
(623, 'googleanalytics_web_property_id_manually_value', '', 'yes'),
(624, 'googleanalytics_disable_all_features', '', 'yes'),
(625, 'googleanalytics_cache_last_cache_time', '', 'yes'),
(626, 'googleanalytics_cache_buffer', '', 'yes'),
(627, 'googleanalytics_cache_last_time_attempt', '', 'yes'),
(630, 'jetpack_activated', '1', 'yes'),
(633, 'jetpack_activation_source', 'a:2:{i:0;s:7:\"unknown\";i:1;N;}', 'yes'),
(634, 'jetpack_sync_settings_disable', '0', 'yes'),
(637, 'jetpack_available_modules', 'a:1:{s:3:\"6.1\";a:43:{s:18:\"after-the-deadline\";s:3:\"1.1\";s:8:\"carousel\";s:3:\"1.5\";s:13:\"comment-likes\";s:3:\"5.1\";s:8:\"comments\";s:3:\"1.4\";s:12:\"contact-form\";s:3:\"1.3\";s:20:\"custom-content-types\";s:3:\"3.1\";s:10:\"custom-css\";s:3:\"1.7\";s:21:\"enhanced-distribution\";s:3:\"1.2\";s:16:\"google-analytics\";s:3:\"4.5\";s:19:\"gravatar-hovercards\";s:3:\"1.1\";s:15:\"infinite-scroll\";s:3:\"2.0\";s:8:\"json-api\";s:3:\"1.9\";s:5:\"latex\";s:3:\"1.1\";s:11:\"lazy-images\";s:5:\"5.6.0\";s:5:\"likes\";s:3:\"2.2\";s:6:\"manage\";s:3:\"3.4\";s:8:\"markdown\";s:3:\"2.8\";s:9:\"masterbar\";s:3:\"4.8\";s:9:\"minileven\";s:3:\"1.8\";s:7:\"monitor\";s:3:\"2.6\";s:5:\"notes\";s:3:\"1.9\";s:6:\"photon\";s:3:\"2.0\";s:13:\"post-by-email\";s:3:\"2.0\";s:7:\"protect\";s:3:\"3.4\";s:9:\"publicize\";s:3:\"2.0\";s:3:\"pwa\";s:5:\"5.6.0\";s:13:\"related-posts\";s:3:\"2.9\";s:6:\"search\";s:3:\"5.0\";s:9:\"seo-tools\";s:3:\"4.4\";s:10:\"sharedaddy\";s:3:\"1.1\";s:10:\"shortcodes\";s:3:\"1.1\";s:10:\"shortlinks\";s:3:\"1.1\";s:8:\"sitemaps\";s:3:\"3.9\";s:3:\"sso\";s:3:\"2.6\";s:5:\"stats\";s:3:\"1.1\";s:13:\"subscriptions\";s:3:\"1.2\";s:13:\"tiled-gallery\";s:3:\"2.1\";s:10:\"vaultpress\";s:5:\"0:1.2\";s:18:\"verification-tools\";s:3:\"3.0\";s:10:\"videopress\";s:3:\"2.5\";s:17:\"widget-visibility\";s:3:\"2.4\";s:7:\"widgets\";s:3:\"1.2\";s:7:\"wordads\";s:5:\"4.5.0\";}}', 'yes'),
(638, 'jetpack_options', 'a:3:{s:7:\"version\";s:14:\"6.1:1531262444\";s:11:\"old_version\";s:14:\"6.1:1531262444\";s:28:\"fallback_no_verify_ssl_certs\";i:0;}', 'yes'),
(639, 'simpletags', 'a:68:{s:13:\"use_tag_pages\";i:1;s:16:\"active_mass_edit\";i:1;s:13:\"active_manage\";i:0;s:20:\"active_related_posts\";i:0;s:15:\"active_autotags\";i:1;s:18:\"allow_embed_tcloud\";i:0;s:14:\"use_click_tags\";i:1;s:18:\"use_suggested_tags\";i:1;s:18:\"use_autocompletion\";i:1;s:14:\"auto_link_tags\";i:0;s:13:\"auto_link_min\";i:1;s:14:\"auto_link_case\";i:1;s:17:\"auto_link_exclude\";s:0:\"\";s:21:\"auto_link_max_by_post\";i:10;s:20:\"auto_link_max_by_tag\";i:1;s:18:\"auto_link_priority\";i:12;s:15:\"auto_link_views\";s:8:\"singular\";s:13:\"auto_link_dom\";i:0;s:15:\"auto_link_title\";s:20:\"Posts tagged with %s\";s:16:\"order_click_tags\";s:8:\"name-asc\";s:14:\"opencalais_key\";s:0:\"\";s:11:\"datatxt_key\";s:0:\"\";s:10:\"datatxt_id\";s:0:\"\";s:20:\"datatxt_access_token\";s:0:\"\";s:22:\"datatxt_min_confidence\";s:3:\"0.6\";s:11:\"alchemy_api\";s:0:\"\";s:11:\"zemanta_key\";s:0:\"\";s:12:\"tag4site_key\";s:0:\"\";s:10:\"proxem_key\";s:0:\"\";s:11:\"proxem_lang\";s:2:\"en\";s:17:\"autocomplete_type\";s:5:\"input\";s:16:\"autocomplete_min\";i:0;s:17:\"autocomplete_mode\";s:0:\"\";s:7:\"tt_feed\";i:0;s:11:\"tt_embedded\";s:2:\"no\";s:12:\"tt_separator\";s:2:\", \";s:9:\"tt_before\";s:6:\"Tags: \";s:8:\"tt_after\";s:6:\"<br />\";s:13:\"tt_notagstext\";s:22:\"No tags for this post.\";s:9:\"tt_number\";i:0;s:11:\"tt_inc_cats\";i:0;s:10:\"tt_xformat\";s:64:\"<a href=\"%tag_link%\" title=\"%tag_name%\" %tag_rel%>%tag_name%</a>\";s:12:\"tt_adv_usage\";s:0:\"\";s:11:\"rp_taxonomy\";s:8:\"post_tag\";s:7:\"rp_feed\";i:0;s:11:\"rp_embedded\";s:2:\"no\";s:8:\"rp_order\";s:10:\"count-desc\";s:12:\"rp_limit_qty\";i:5;s:13:\"rp_notagstext\";s:17:\"No related posts.\";s:8:\"rp_title\";s:22:\"<h4>Related posts</h4>\";s:10:\"rp_xformat\";s:95:\"<a href=\"%post_permalink%\" title=\"%post_title% (%post_date%)\">%post_title%</a> (%post_comment%)\";s:12:\"rp_adv_usage\";s:0:\"\";s:14:\"cloud_taxonomy\";s:8:\"post_tag\";s:17:\"cloud_selectionby\";s:5:\"count\";s:15:\"cloud_selection\";s:4:\"desc\";s:13:\"cloud_orderby\";s:6:\"random\";s:11:\"cloud_order\";s:3:\"asc\";s:15:\"cloud_limit_qty\";i:45;s:16:\"cloud_notagstext\";s:8:\"No tags.\";s:11:\"cloud_title\";s:18:\"<h4>Tag Cloud</h4>\";s:12:\"cloud_format\";s:4:\"flat\";s:13:\"cloud_xformat\";s:155:\"<a href=\"%tag_link%\" id=\"tag-link-%tag_id%\" class=\"st-tags t%tag_scale%\" title=\"%tag_count% topics\" %tag_rel% style=\"%tag_size% %tag_color%\">%tag_name%</a>\";s:15:\"cloud_max_color\";s:7:\"#000000\";s:15:\"cloud_min_color\";s:7:\"#CCCCCC\";s:14:\"cloud_max_size\";i:22;s:14:\"cloud_min_size\";i:8;s:10:\"cloud_unit\";s:2:\"pt\";s:15:\"cloud_adv_usage\";s:0:\"\";}', 'yes'),
(640, 'wp_mail_smtp_version', '1.2.5', 'yes'),
(641, 'wp_mail_smtp', 'a:2:{s:4:\"mail\";a:4:{s:10:\"from_email\";s:21:\"lekiagospel@gmail.com\";s:9:\"from_name\";s:17:\"Voice of Pilgrims\";s:6:\"mailer\";s:4:\"mail\";s:11:\"return_path\";b:0;}s:4:\"smtp\";a:1:{s:7:\"autotls\";b:1;}}', 'no'),
(642, 'wpseo', 'a:19:{s:15:\"ms_defaults_set\";b:0;s:7:\"version\";s:5:\"7.7.3\";s:20:\"disableadvanced_meta\";b:1;s:19:\"onpage_indexability\";b:1;s:11:\"baiduverify\";s:0:\"\";s:12:\"googleverify\";s:0:\"\";s:8:\"msverify\";s:0:\"\";s:12:\"yandexverify\";s:0:\"\";s:9:\"site_type\";s:4:\"blog\";s:20:\"has_multiple_authors\";b:1;s:16:\"environment_type\";s:7:\"staging\";s:23:\"content_analysis_active\";b:1;s:23:\"keyword_analysis_active\";b:1;s:21:\"enable_admin_bar_menu\";b:1;s:26:\"enable_cornerstone_content\";b:1;s:18:\"enable_xml_sitemap\";b:1;s:24:\"enable_text_link_counter\";b:1;s:22:\"show_onboarding_notice\";b:0;s:18:\"first_activated_on\";i:1531262459;}', 'yes'),
(643, 'wpseo_titles', 'a:71:{s:10:\"title_test\";i:0;s:17:\"forcerewritetitle\";b:0;s:9:\"separator\";s:7:\"sc-dash\";s:16:\"title-home-wpseo\";s:42:\"%%sitename%% %%page%% %%sep%% %%sitedesc%%\";s:18:\"title-author-wpseo\";s:41:\"%%name%%, Author at %%sitename%% %%page%%\";s:19:\"title-archive-wpseo\";s:38:\"%%date%% %%page%% %%sep%% %%sitename%%\";s:18:\"title-search-wpseo\";s:63:\"You searched for %%searchphrase%% %%page%% %%sep%% %%sitename%%\";s:15:\"title-404-wpseo\";s:35:\"Page not found %%sep%% %%sitename%%\";s:19:\"metadesc-home-wpseo\";s:0:\"\";s:21:\"metadesc-author-wpseo\";s:0:\"\";s:22:\"metadesc-archive-wpseo\";s:0:\"\";s:9:\"rssbefore\";s:0:\"\";s:8:\"rssafter\";s:53:\"The post %%POSTLINK%% appeared first on %%BLOGLINK%%.\";s:20:\"noindex-author-wpseo\";b:0;s:28:\"noindex-author-noposts-wpseo\";b:1;s:21:\"noindex-archive-wpseo\";b:1;s:14:\"disable-author\";b:0;s:12:\"disable-date\";b:0;s:19:\"disable-post_format\";b:0;s:18:\"disable-attachment\";b:1;s:23:\"is-media-purge-relevant\";b:0;s:20:\"breadcrumbs-404crumb\";s:25:\"Error 404: Page not found\";s:29:\"breadcrumbs-display-blog-page\";b:1;s:20:\"breadcrumbs-boldlast\";b:0;s:25:\"breadcrumbs-archiveprefix\";s:12:\"Archives for\";s:18:\"breadcrumbs-enable\";b:0;s:16:\"breadcrumbs-home\";s:4:\"Home\";s:18:\"breadcrumbs-prefix\";s:0:\"\";s:24:\"breadcrumbs-searchprefix\";s:16:\"You searched for\";s:15:\"breadcrumbs-sep\";s:7:\"&raquo;\";s:12:\"website_name\";s:17:\"Voice of Pilgrims\";s:11:\"person_name\";s:0:\"\";s:22:\"alternate_website_name\";s:0:\"\";s:12:\"company_logo\";s:66:\"http://localhost/wordpress/wp-content/uploads/2018/07/sitelogo.png\";s:12:\"company_name\";s:17:\"Voice of Pilgrims\";s:17:\"company_or_person\";s:7:\"company\";s:17:\"stripcategorybase\";b:0;s:10:\"title-post\";s:39:\"%%title%% %%page%% %%sep%% %%sitename%%\";s:13:\"metadesc-post\";s:0:\"\";s:12:\"noindex-post\";b:0;s:13:\"showdate-post\";b:0;s:23:\"display-metabox-pt-post\";b:1;s:10:\"title-page\";s:39:\"%%title%% %%page%% %%sep%% %%sitename%%\";s:13:\"metadesc-page\";s:0:\"\";s:12:\"noindex-page\";b:0;s:13:\"showdate-page\";b:0;s:23:\"display-metabox-pt-page\";b:1;s:16:\"title-attachment\";s:39:\"%%title%% %%page%% %%sep%% %%sitename%%\";s:19:\"metadesc-attachment\";s:0:\"\";s:18:\"noindex-attachment\";b:0;s:19:\"showdate-attachment\";b:0;s:29:\"display-metabox-pt-attachment\";b:1;s:18:\"title-tax-category\";s:53:\"%%term_title%% Archives %%page%% %%sep%% %%sitename%%\";s:21:\"metadesc-tax-category\";s:0:\"\";s:28:\"display-metabox-tax-category\";b:1;s:20:\"noindex-tax-category\";b:0;s:18:\"title-tax-post_tag\";s:53:\"%%term_title%% Archives %%page%% %%sep%% %%sitename%%\";s:21:\"metadesc-tax-post_tag\";s:0:\"\";s:28:\"display-metabox-tax-post_tag\";b:1;s:20:\"noindex-tax-post_tag\";b:0;s:21:\"title-tax-post_format\";s:53:\"%%term_title%% Archives %%page%% %%sep%% %%sitename%%\";s:24:\"metadesc-tax-post_format\";s:0:\"\";s:31:\"display-metabox-tax-post_format\";b:1;s:23:\"noindex-tax-post_format\";b:1;s:23:\"post_types-post-maintax\";i:0;s:13:\"title-wysijap\";s:39:\"%%title%% %%page%% %%sep%% %%sitename%%\";s:16:\"metadesc-wysijap\";s:0:\"\";s:15:\"noindex-wysijap\";b:0;s:16:\"showdate-wysijap\";b:0;s:26:\"display-metabox-pt-wysijap\";b:1;s:23:\"post_types-page-maintax\";i:0;}', 'yes'),
(644, 'wpseo_social', 'a:18:{s:13:\"facebook_site\";s:0:\"\";s:13:\"instagram_url\";s:0:\"\";s:12:\"linkedin_url\";s:0:\"\";s:11:\"myspace_url\";s:0:\"\";s:16:\"og_default_image\";s:0:\"\";s:18:\"og_frontpage_title\";s:0:\"\";s:17:\"og_frontpage_desc\";s:0:\"\";s:18:\"og_frontpage_image\";s:0:\"\";s:9:\"opengraph\";b:1;s:13:\"pinterest_url\";s:0:\"\";s:15:\"pinterestverify\";s:0:\"\";s:14:\"plus-publisher\";s:0:\"\";s:7:\"twitter\";b:1;s:12:\"twitter_site\";s:0:\"\";s:17:\"twitter_card_type\";s:19:\"summary_large_image\";s:11:\"youtube_url\";s:0:\"\";s:15:\"google_plus_url\";s:0:\"\";s:10:\"fbadminapp\";s:0:\"\";}', 'yes'),
(645, 'wpseo_flush_rewrite', '1', 'yes'),
(646, 'rlrsssl_options', 'a:13:{s:12:\"site_has_ssl\";b:0;s:4:\"hsts\";b:0;s:22:\"htaccess_warning_shown\";b:0;s:25:\"ssl_success_message_shown\";b:0;s:26:\"autoreplace_insecure_links\";b:1;s:17:\"plugin_db_version\";s:5:\"3.0.2\";s:5:\"debug\";b:0;s:20:\"do_not_edit_htaccess\";b:0;s:17:\"htaccess_redirect\";b:0;s:11:\"ssl_enabled\";b:0;s:19:\"javascript_redirect\";b:1;s:11:\"wp_redirect\";b:0;s:31:\"switch_mixed_content_fixer_hook\";b:0;}', 'yes'),
(647, 'simpletags-version', '2.4.7', 'yes'),
(648, '_transient_timeout_wpseo_link_table_inaccessible', '1562798465', 'no'),
(649, '_transient_wpseo_link_table_inaccessible', '0', 'no'),
(650, '_transient_timeout_wpseo_meta_table_inaccessible', '1562798465', 'no'),
(651, '_transient_wpseo_meta_table_inaccessible', '0', 'no'),
(652, 'widget_wysija', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(653, 'widget_a2a_share_save_widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(654, 'widget_a2a_follow_widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(655, 'widget_simpletags', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(657, 'wysija_post_type_updated', '1531262466', 'yes'),
(658, 'wysija_post_type_created', '1531262466', 'yes'),
(659, 'monsterinsights_usage_tracking_config', 'a:6:{s:3:\"day\";i:0;s:4:\"hour\";i:9;s:6:\"minute\";i:8;s:6:\"second\";i:5;s:6:\"offset\";i:32885;s:8:\"initsend\";i:1531645685;}', 'yes'),
(660, 'jetpack_testimonial', '0', 'yes'),
(661, 'monsterinsights_over_time', 'a:3:{s:17:\"installed_version\";s:5:\"7.0.6\";s:14:\"installed_date\";i:1531262467;s:13:\"installed_pro\";b:0;}', 'yes'),
(662, 'monsterinsights_db_version', '6.2.0', 'yes'),
(663, 'monsterinsights_settings_version', '7.0.0', 'yes'),
(664, 'monsterinsights_current_version', '7.0.6', 'yes'),
(666, 'monsterinsights_settings', 'a:25:{s:17:\"analytics_profile\";s:0:\"\";s:22:\"analytics_profile_code\";s:0:\"\";s:14:\"manual_ua_code\";s:0:\"\";s:26:\"track_internal_as_outbound\";i:0;s:23:\"track_internal_as_label\";s:0:\"\";s:14:\"track_outbound\";i:1;s:14:\"allow_tracking\";i:0;s:13:\"tracking_mode\";s:9:\"analytics\";s:11:\"events_mode\";s:2:\"js\";s:12:\"demographics\";i:1;s:12:\"ignore_users\";a:2:{i:0;s:13:\"administrator\";i:1;s:6:\"editor\";}s:19:\"dashboards_disabled\";i:0;s:13:\"anonymize_ips\";i:0;s:17:\"track_download_as\";s:5:\"event\";s:19:\"extensions_of_files\";s:30:\"doc,exe,js,pdf,ppt,tgz,zip,xls\";s:18:\"subdomain_tracking\";s:0:\"\";s:16:\"tag_links_in_rss\";i:0;s:12:\"allow_anchor\";i:0;s:16:\"add_allow_linker\";i:0;s:25:\"enhanced_link_attribution\";i:1;s:11:\"custom_code\";s:0:\"\";s:10:\"debug_mode\";i:0;s:14:\"anonymous_data\";i:0;s:13:\"save_settings\";a:0:{}s:12:\"view_reports\";a:0:{}}', 'yes'),
(671, 'wpseo_onpage', 'a:2:{s:6:\"status\";i:-1;s:10:\"last_fetch\";i:1544819648;}', 'yes'),
(672, 'installation_step', '16', 'yes'),
(673, 'wysija', 'YToxODp7czo5OiJmcm9tX25hbWUiO3M6NDoieWlnYSI7czoxMjoicmVwbHl0b19uYW1lIjtzOjQ6InlpZ2EiO3M6MTU6ImVtYWlsc19ub3RpZmllZCI7czoyMToibGVraWFnb3NwZWxAZ21haWwuY29tIjtzOjEwOiJmcm9tX2VtYWlsIjtzOjE0OiJpbmZvQGxvY2FsaG9zdCI7czoxMzoicmVwbHl0b19lbWFpbCI7czoxNDoiaW5mb0Bsb2NhbGhvc3QiO3M6MTU6ImRlZmF1bHRfbGlzdF9pZCI7aToxO3M6MTc6InRvdGFsX3N1YnNjcmliZXJzIjtzOjE6IjEiO3M6MTY6ImltcG9ydHdwX2xpc3RfaWQiO2k6MjtzOjE4OiJjb25maXJtX2VtYWlsX2xpbmsiO2k6MTUwO3M6MTI6InVwbG9hZGZvbGRlciI7czo1NzoiQzpceGFtcHBcYXBwc1x3b3JkcHJlc3NcaHRkb2NzL3dwLWNvbnRlbnQvdXBsb2Fkc1x3eXNpamFcIjtzOjk6InVwbG9hZHVybCI7czo1MzoiaHR0cDovL2xvY2FsaG9zdC93b3JkcHJlc3Mvd3AtY29udGVudC91cGxvYWRzL3d5c2lqYS8iO3M6MTY6ImNvbmZpcm1fZW1haWxfaWQiO2k6MjtzOjk6Imluc3RhbGxlZCI7YjoxO3M6MjA6Im1hbmFnZV9zdWJzY3JpcHRpb25zIjtiOjE7czoxNDoiaW5zdGFsbGVkX3RpbWUiO2k6MTUzMTI2MjQ4MjtzOjE3OiJ3eXNpamFfZGJfdmVyc2lvbiI7czo1OiIyLjguMiI7czoxMToiZGtpbV9kb21haW4iO3M6OToibG9jYWxob3N0IjtzOjE2OiJ3eXNpamFfd2hhdHNfbmV3IjtzOjU6IjIuOC4yIjt9', 'yes'),
(674, 'wysija_reinstall', '0', 'no'),
(675, 'ai1wm_secret_key', '7GZYoBPLd6of', 'yes'),
(676, 'do_activate', '0', 'yes'),
(681, '_amn_mi-lite_last_checked', '1544745600', 'yes'),
(682, '_amn_smtp_last_checked', '1544745600', 'yes'),
(683, 'wpseo_sitemap_1_cache_validator', '6AVwv', 'no'),
(684, 'wpseo_sitemap_wysijap_cache_validator', '6TSvg', 'no'),
(685, 'wysija_schedules', 'a:5:{s:5:\"queue\";a:3:{s:13:\"next_schedule\";i:1544824167;s:13:\"prev_schedule\";b:0;s:7:\"running\";b:0;}s:6:\"bounce\";a:3:{s:13:\"next_schedule\";i:1531348946;s:13:\"prev_schedule\";i:0;s:7:\"running\";b:0;}s:5:\"daily\";a:3:{s:13:\"next_schedule\";i:1544906640;s:13:\"prev_schedule\";b:0;s:7:\"running\";b:0;}s:6:\"weekly\";a:3:{s:13:\"next_schedule\";i:1545424729;s:13:\"prev_schedule\";b:0;s:7:\"running\";b:0;}s:7:\"monthly\";a:3:{s:13:\"next_schedule\";i:1547238835;s:13:\"prev_schedule\";b:0;s:7:\"running\";b:0;}}', 'yes'),
(690, 'addtoany_options', 'a:36:{s:8:\"position\";s:6:\"bottom\";s:30:\"display_in_posts_on_front_page\";s:1:\"1\";s:33:\"display_in_posts_on_archive_pages\";s:1:\"1\";s:19:\"display_in_excerpts\";s:1:\"1\";s:16:\"display_in_posts\";s:1:\"1\";s:16:\"display_in_pages\";s:1:\"1\";s:22:\"display_in_attachments\";s:1:\"1\";s:15:\"display_in_feed\";s:1:\"1\";s:7:\"onclick\";s:2:\"-1\";s:9:\"icon_size\";s:2:\"32\";s:7:\"icon_bg\";s:8:\"original\";s:13:\"icon_bg_color\";s:7:\"#2a2a2a\";s:7:\"icon_fg\";s:8:\"original\";s:13:\"icon_fg_color\";s:7:\"#ffffff\";s:6:\"button\";s:10:\"A2A_SVG_32\";s:13:\"button_custom\";s:0:\"\";s:17:\"button_show_count\";s:2:\"-1\";s:6:\"header\";s:0:\"\";s:23:\"additional_js_variables\";s:0:\"\";s:14:\"additional_css\";s:0:\"\";s:12:\"custom_icons\";s:2:\"-1\";s:16:\"custom_icons_url\";s:1:\"/\";s:17:\"custom_icons_type\";s:3:\"png\";s:18:\"custom_icons_width\";s:0:\"\";s:19:\"custom_icons_height\";s:0:\"\";s:5:\"cache\";s:2:\"-1\";s:22:\"display_in_cpt_wysijap\";s:1:\"1\";s:11:\"button_text\";s:5:\"Share\";s:24:\"special_facebook_options\";a:1:{s:10:\"show_count\";s:2:\"-1\";}s:25:\"special_pinterest_options\";a:1:{s:10:\"show_count\";s:2:\"-1\";}s:15:\"active_services\";a:6:{i:0;s:8:\"facebook\";i:1;s:7:\"twitter\";i:2;s:11:\"google_plus\";i:3;s:9:\"pinterest\";i:4;s:5:\"email\";i:5;s:8:\"whatsapp\";}s:29:\"special_facebook_like_options\";a:1:{s:4:\"verb\";s:4:\"like\";}s:29:\"special_twitter_tweet_options\";a:1:{s:10:\"show_count\";s:2:\"-1\";}s:30:\"special_google_plusone_options\";a:1:{s:10:\"show_count\";s:2:\"-1\";}s:33:\"special_google_plus_share_options\";a:1:{s:10:\"show_count\";s:2:\"-1\";}s:29:\"special_pinterest_pin_options\";a:1:{s:10:\"show_count\";s:2:\"-1\";}}', 'yes'),
(699, 'colormag_admin_notice_welcome', '1', 'yes'),
(710, '_transient_timeout_started_using_hueman', '1846623518', 'no'),
(711, '_transient_started_using_hueman', 'before|3.4.0', 'no'),
(712, '_transient_timeout_hu_start_date', '1846623518', 'no'),
(713, '_transient_hu_start_date', 'O:8:\"DateTime\":3:{s:4:\"date\";s:26:\"2018-07-10 22:58:38.581445\";s:13:\"timezone_type\";i:3;s:8:\"timezone\";s:3:\"UTC\";}', 'no'),
(714, '_transient_timeout__hu_sidebar_backup', '2161983518', 'no'),
(715, '_transient__hu_sidebar_backup', 'a:0:{}', 'no'),
(720, '_site_transient_update_plugins', 'O:8:\"stdClass\":1:{s:12:\"last_checked\";i:1544819644;}', 'no'),
(721, 'news_portal_admin_notice_welcome', '1', 'yes'),
(730, 'wysija_queries', '', 'no'),
(731, 'wysija_queries_errors', '', 'no'),
(732, 'wysija_msg', '', 'no'),
(737, 'wysija_last_php_cron_call', '1544822803', 'yes'),
(739, 'wysija_check_pn', '1544820567.3895', 'yes'),
(740, 'wysija_last_scheduled_check', '1544820567', 'yes'),
(743, 'wpseo_sitemap_attachment_cache_validator', '5jz3Z', 'no'),
(744, 'wpseo_sitemap_post_cache_validator', '6mIGI', 'no'),
(766, 'wpseo-gsc', 'a:1:{s:7:\"profile\";s:0:\"\";}', 'yes'),
(768, 'wpseo_sitemap_cache_validator_global', 'rGAW', 'no'),
(773, 'sharing-options', 'a:1:{s:6:\"global\";a:5:{s:12:\"button_style\";s:9:\"icon-text\";s:13:\"sharing_label\";s:11:\"Share this:\";s:10:\"open_links\";s:4:\"same\";s:4:\"show\";a:0:{}s:6:\"custom\";a:0:{}}}', 'yes'),
(774, 'stats_options', 'a:7:{s:9:\"admin_bar\";b:1;s:5:\"roles\";a:1:{i:0;s:13:\"administrator\";}s:11:\"count_roles\";a:0:{}s:7:\"blog_id\";b:0;s:12:\"do_not_track\";b:1;s:10:\"hide_smile\";b:1;s:7:\"version\";s:1:\"9\";}', 'yes'),
(775, 'rewrite_rules', 'a:132:{s:14:\"sitemap.xml.gz\";s:60:\"index.php?aiosp_sitemap_gzipped=1&aiosp_sitemap_path=root.gz\";s:25:\"sitemap_(.+)_(\\d+).xml.gz\";s:74:\"index.php?aiosp_sitemap_path=$matches[1].gz&aiosp_sitemap_page=$matches[2]\";s:19:\"sitemap_(.+).xml.gz\";s:43:\"index.php?aiosp_sitemap_path=$matches[1].gz\";s:11:\"sitemap.xml\";s:33:\"index.php?aiosp_sitemap_path=root\";s:22:\"sitemap_(.+)_(\\d+).xml\";s:71:\"index.php?aiosp_sitemap_path=$matches[1]&aiosp_sitemap_page=$matches[2]\";s:16:\"sitemap_(.+).xml\";s:40:\"index.php?aiosp_sitemap_path=$matches[1]\";s:19:\"sitemap_index\\.xml$\";s:19:\"index.php?sitemap=1\";s:31:\"([^/]+?)-sitemap([0-9]+)?\\.xml$\";s:51:\"index.php?sitemap=$matches[1]&sitemap_n=$matches[2]\";s:24:\"([a-z]+)?-?sitemap\\.xsl$\";s:25:\"index.php?xsl=$matches[1]\";s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:39:\"amn_mi-lite/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:49:\"amn_mi-lite/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:69:\"amn_mi-lite/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:64:\"amn_mi-lite/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:64:\"amn_mi-lite/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:45:\"amn_mi-lite/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:28:\"amn_mi-lite/([^/]+)/embed/?$\";s:44:\"index.php?amn_mi-lite=$matches[1]&embed=true\";s:32:\"amn_mi-lite/([^/]+)/trackback/?$\";s:38:\"index.php?amn_mi-lite=$matches[1]&tb=1\";s:40:\"amn_mi-lite/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?amn_mi-lite=$matches[1]&paged=$matches[2]\";s:47:\"amn_mi-lite/([^/]+)/comment-page-([0-9]{1,})/?$\";s:51:\"index.php?amn_mi-lite=$matches[1]&cpage=$matches[2]\";s:36:\"amn_mi-lite/([^/]+)(?:/([0-9]+))?/?$\";s:50:\"index.php?amn_mi-lite=$matches[1]&page=$matches[2]\";s:28:\"amn_mi-lite/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:38:\"amn_mi-lite/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:58:\"amn_mi-lite/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:53:\"amn_mi-lite/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:53:\"amn_mi-lite/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:34:\"amn_mi-lite/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:36:\"amn_smtp/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:46:\"amn_smtp/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:66:\"amn_smtp/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:61:\"amn_smtp/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:61:\"amn_smtp/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:42:\"amn_smtp/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:25:\"amn_smtp/([^/]+)/embed/?$\";s:41:\"index.php?amn_smtp=$matches[1]&embed=true\";s:29:\"amn_smtp/([^/]+)/trackback/?$\";s:35:\"index.php?amn_smtp=$matches[1]&tb=1\";s:37:\"amn_smtp/([^/]+)/page/?([0-9]{1,})/?$\";s:48:\"index.php?amn_smtp=$matches[1]&paged=$matches[2]\";s:44:\"amn_smtp/([^/]+)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?amn_smtp=$matches[1]&cpage=$matches[2]\";s:33:\"amn_smtp/([^/]+)(?:/([0-9]+))?/?$\";s:47:\"index.php?amn_smtp=$matches[1]&page=$matches[2]\";s:25:\"amn_smtp/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:35:\"amn_smtp/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:55:\"amn_smtp/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:50:\"amn_smtp/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:50:\"amn_smtp/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:31:\"amn_smtp/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:58:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:68:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:88:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:64:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:53:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$\";s:91:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$\";s:85:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1\";s:77:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:65:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]\";s:61:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]\";s:47:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:57:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:77:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:53:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]\";s:51:\"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]\";s:38:\"([0-9]{4})/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&cpage=$matches[2]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";}', 'yes'),
(808, '_transient_timeout_jetpack_https_test', '1544906152', 'no'),
(809, '_transient_jetpack_https_test', '0', 'no'),
(810, '_transient_timeout_jetpack_https_test_message', '1544906152', 'no'),
(811, '_transient_jetpack_https_test_message', 'WordPress reports no SSL support', 'no'),
(812, '_site_transient_timeout_aioseop_update_check_time', '1544841354', 'no'),
(813, '_site_transient_aioseop_update_check_time', '1544819754', 'no'),
(814, '_transient_timeout_wpseo-statistics-totals', '1544906164', 'no'),
(815, '_transient_wpseo-statistics-totals', 'a:1:{i:1;a:2:{s:6:\"scores\";a:1:{i:0;a:4:{s:8:\"seo_rank\";s:2:\"na\";s:5:\"label\";s:46:\"Posts <strong>without</strong> a focus keyword\";s:5:\"count\";s:1:\"5\";s:4:\"link\";s:103:\"http://localhost/wordpress/wp-admin/edit.php?post_status=publish&#038;post_type=post&#038;seo_filter=na\";}}s:8:\"division\";a:5:{s:3:\"bad\";i:0;s:2:\"ok\";i:0;s:4:\"good\";i:0;s:2:\"na\";i:1;s:7:\"noindex\";i:0;}}}', 'no'),
(816, '_transient_timeout_dash_v2_88ae138922fe95674369b1cb3d215a2b', '1544862988', 'no'),
(817, '_transient_dash_v2_88ae138922fe95674369b1cb3d215a2b', '<div class=\"rss-widget\"><p><strong>RSS Error:</strong> WP HTTP Error: cURL error 6: Could not resolve host: wordpress.org</p></div><div class=\"rss-widget\"><p><strong>RSS Error:</strong> WP HTTP Error: cURL error 6: Could not resolve host: planet.wordpress.org</p></div>', 'no'),
(824, 'wpseo_sitemap_customize_changeset_cache_validator', '6AVxu', 'no'),
(837, '_site_transient_timeout_theme_roots', '1544823274', 'no'),
(838, '_site_transient_theme_roots', 'a:24:{s:12:\"alante-boxed\";s:7:\"/themes\";s:13:\"bfastmag-shop\";s:7:\"/themes\";s:8:\"bfastmag\";s:7:\"/themes\";s:6:\"blogto\";s:7:\"/themes\";s:13:\"blossom-coach\";s:7:\"/themes\";s:12:\"business-key\";s:7:\"/themes\";s:13:\"business-mart\";s:7:\"/themes\";s:7:\"cleanse\";s:7:\"/themes\";s:8:\"colormag\";s:7:\"/themes\";s:11:\"drizzle-mag\";s:7:\"/themes\";s:7:\"fleming\";s:7:\"/themes\";s:6:\"hueman\";s:7:\"/themes\";s:13:\"madd-magazine\";s:7:\"/themes\";s:11:\"news-portal\";s:7:\"/themes\";s:8:\"onepress\";s:7:\"/themes\";s:24:\"play-school-kindergarten\";s:7:\"/themes\";s:7:\"powerwp\";s:7:\"/themes\";s:10:\"spicepress\";s:7:\"/themes\";s:7:\"tortuga\";s:7:\"/themes\";s:5:\"total\";s:7:\"/themes\";s:13:\"twentyfifteen\";s:7:\"/themes\";s:15:\"twentyseventeen\";s:7:\"/themes\";s:13:\"twentysixteen\";s:7:\"/themes\";s:9:\"twentyten\";s:7:\"/themes\";}', 'no'),
(841, '_transient_timeout_spicepress_cust_notify_plugin_info_spicebox', '1544823639', 'no'),
(842, '_transient_spicepress_cust_notify_plugin_info_spicebox', 'O:8:\"WP_Error\":2:{s:6:\"errors\";a:1:{s:18:\"plugins_api_failed\";a:1:{i:0;s:219:\"An unexpected error occurred. Something may be wrong with WordPress.org or this server&#8217;s configuration. If you continue to have problems, please try the <a href=\"https://wordpress.org/support/\">support forums</a>.\";}}s:10:\"error_data\";a:1:{s:18:\"plugins_api_failed\";s:55:\"cURL error 6: Could not resolve host: api.wordpress.org\";}}', 'no'),
(845, 'theme_switch_menu_locations', 'a:1:{s:7:\"primary\";i:3;}', 'yes'),
(854, '_transient_timeout_jetpack_idc_allowed', '1544822992', 'no'),
(855, '_transient_jetpack_idc_allowed', '1', 'no'),
(860, '_transient_is_multi_author', '0', 'yes'),
(861, '_transient_drizzle_mag_categories', '2', 'yes');

-- --------------------------------------------------------

--
-- Table structure for table `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 3, '_wp_page_template', 'default'),
(7, 7, '_edit_last', '1'),
(8, 7, '_edit_lock', '1538412318:1'),
(14, 11, '_wp_attached_file', '2018/07/GOSPEL-20161231_220533.jpg'),
(15, 11, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:640;s:6:\"height\";i:640;s:4:\"file\";s:34:\"2018/07/GOSPEL-20161231_220533.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:34:\"GOSPEL-20161231_220533-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:34:\"GOSPEL-20161231_220533-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:34:\"GOSPEL-20161231_220533-640x510.jpg\";s:5:\"width\";i:640;s:6:\"height\";i:510;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(21, 14, '_customize_changeset_uuid', '03966108-ea72-4439-81f2-88ffb12f1669'),
(22, 16, '_menu_item_type', 'post_type'),
(23, 16, '_menu_item_menu_item_parent', '0'),
(24, 16, '_menu_item_object_id', '14'),
(25, 16, '_menu_item_object', 'page'),
(26, 16, '_menu_item_target', ''),
(27, 16, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(28, 16, '_menu_item_xfn', ''),
(29, 16, '_menu_item_url', ''),
(39, 20, '_edit_last', '1'),
(40, 21, '_menu_item_type', 'post_type'),
(41, 21, '_menu_item_menu_item_parent', '0'),
(42, 21, '_menu_item_object_id', '20'),
(43, 21, '_menu_item_object', 'page'),
(44, 21, '_menu_item_target', ''),
(45, 21, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(46, 21, '_menu_item_xfn', ''),
(47, 21, '_menu_item_url', ''),
(48, 20, '_edit_lock', '1530878941:1'),
(49, 23, '_edit_last', '1'),
(50, 24, '_menu_item_type', 'post_type'),
(51, 24, '_menu_item_menu_item_parent', '0'),
(52, 24, '_menu_item_object_id', '23'),
(53, 24, '_menu_item_object', 'page'),
(54, 24, '_menu_item_target', ''),
(55, 24, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(56, 24, '_menu_item_xfn', ''),
(57, 24, '_menu_item_url', ''),
(58, 23, '_edit_lock', '1530879003:1'),
(59, 26, '_wp_attached_file', '2018/07/IMAG0237.jpg'),
(60, 26, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:2592;s:6:\"height\";i:1552;s:4:\"file\";s:20:\"2018/07/IMAG0237.jpg\";s:5:\"sizes\";a:5:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"IMAG0237-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"IMAG0237-300x180.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:20:\"IMAG0237-768x460.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:460;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:21:\"IMAG0237-1024x613.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:613;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:20:\"IMAG0237-825x510.jpg\";s:5:\"width\";i:825;s:6:\"height\";i:510;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:12:\"HTC Desire V\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:10:\"1520077197\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:4:\"3.53\";s:3:\"iso\";s:2:\"82\";s:13:\"shutter_speed\";s:7:\"0.00999\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(61, 27, '_wp_attached_file', '2018/07/cropped-IMAG0237.jpg'),
(62, 27, '_wp_attachment_context', 'custom-header'),
(63, 27, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:954;s:6:\"height\";i:1300;s:4:\"file\";s:28:\"2018/07/cropped-IMAG0237.jpg\";s:5:\"sizes\";a:5:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:28:\"cropped-IMAG0237-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:28:\"cropped-IMAG0237-220x300.jpg\";s:5:\"width\";i:220;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:29:\"cropped-IMAG0237-768x1047.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:1047;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:29:\"cropped-IMAG0237-751x1024.jpg\";s:5:\"width\";i:751;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:28:\"cropped-IMAG0237-825x510.jpg\";s:5:\"width\";i:825;s:6:\"height\";i:510;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}s:17:\"attachment_parent\";i:26;}'),
(73, 31, '_menu_item_type', 'post_type'),
(74, 31, '_menu_item_menu_item_parent', '0'),
(75, 31, '_menu_item_object_id', '23'),
(76, 31, '_menu_item_object', 'page'),
(77, 31, '_menu_item_target', ''),
(78, 31, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(79, 31, '_menu_item_xfn', ''),
(80, 31, '_menu_item_url', ''),
(81, 31, '_menu_item_orphaned', '1530879742'),
(82, 32, '_menu_item_type', 'post_type'),
(83, 32, '_menu_item_menu_item_parent', '0'),
(84, 32, '_menu_item_object_id', '20'),
(85, 32, '_menu_item_object', 'page'),
(86, 32, '_menu_item_target', ''),
(87, 32, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(88, 32, '_menu_item_xfn', ''),
(89, 32, '_menu_item_url', ''),
(90, 32, '_menu_item_orphaned', '1530879743'),
(91, 33, '_menu_item_type', 'post_type'),
(92, 33, '_menu_item_menu_item_parent', '0'),
(93, 33, '_menu_item_object_id', '14'),
(94, 33, '_menu_item_object', 'page'),
(95, 33, '_menu_item_target', ''),
(96, 33, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(97, 33, '_menu_item_xfn', ''),
(98, 33, '_menu_item_url', ''),
(99, 33, '_menu_item_orphaned', '1530879744'),
(100, 34, '_menu_item_type', 'post_type'),
(101, 34, '_menu_item_menu_item_parent', '0'),
(102, 34, '_menu_item_object_id', '2'),
(103, 34, '_menu_item_object', 'page'),
(104, 34, '_menu_item_target', ''),
(105, 34, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(106, 34, '_menu_item_xfn', ''),
(107, 34, '_menu_item_url', ''),
(119, 7, '_aioseop_opengraph_settings', 'a:14:{s:32:\"aioseop_opengraph_settings_title\";s:0:\"\";s:31:\"aioseop_opengraph_settings_desc\";s:0:\"\";s:36:\"aioseop_opengraph_settings_customimg\";s:0:\"\";s:37:\"aioseop_opengraph_settings_imagewidth\";s:0:\"\";s:38:\"aioseop_opengraph_settings_imageheight\";s:0:\"\";s:32:\"aioseop_opengraph_settings_video\";s:0:\"\";s:37:\"aioseop_opengraph_settings_videowidth\";s:0:\"\";s:38:\"aioseop_opengraph_settings_videoheight\";s:0:\"\";s:35:\"aioseop_opengraph_settings_category\";s:7:\"article\";s:34:\"aioseop_opengraph_settings_section\";s:0:\"\";s:30:\"aioseop_opengraph_settings_tag\";s:0:\"\";s:34:\"aioseop_opengraph_settings_setcard\";s:7:\"summary\";s:44:\"aioseop_opengraph_settings_customimg_twitter\";s:0:\"\";s:44:\"aioseop_opengraph_settings_customimg_checker\";s:1:\"0\";}'),
(122, 26, '_wp_attachment_is_custom_background', 'blogto'),
(133, 45, '_wp_attached_file', '2018/07/sitelogo.png'),
(134, 45, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:512;s:6:\"height\";i:512;s:4:\"file\";s:20:\"2018/07/sitelogo.png\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"sitelogo-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"sitelogo-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(135, 46, '_wp_attached_file', '2018/07/cropped-sitelogo.png'),
(136, 46, '_wp_attachment_context', 'site-icon'),
(137, 46, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:512;s:6:\"height\";i:512;s:4:\"file\";s:28:\"2018/07/cropped-sitelogo.png\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:28:\"cropped-sitelogo-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:28:\"cropped-sitelogo-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:13:\"site_icon-270\";a:4:{s:4:\"file\";s:28:\"cropped-sitelogo-270x270.png\";s:5:\"width\";i:270;s:6:\"height\";i:270;s:9:\"mime-type\";s:9:\"image/png\";}s:13:\"site_icon-192\";a:4:{s:4:\"file\";s:28:\"cropped-sitelogo-192x192.png\";s:5:\"width\";i:192;s:6:\"height\";i:192;s:9:\"mime-type\";s:9:\"image/png\";}s:13:\"site_icon-180\";a:4:{s:4:\"file\";s:28:\"cropped-sitelogo-180x180.png\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"site_icon-32\";a:4:{s:4:\"file\";s:26:\"cropped-sitelogo-32x32.png\";s:5:\"width\";i:32;s:6:\"height\";i:32;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(142, 49, '_wp_attached_file', '2018/07/cropped-sitelogo-Copy.png'),
(143, 49, '_wp_attachment_context', 'custom-logo'),
(144, 49, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:256;s:6:\"height\";i:256;s:4:\"file\";s:33:\"2018/07/cropped-sitelogo-Copy.png\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:33:\"cropped-sitelogo-Copy-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(150, 51, '_wp_attached_file', '2018/07/sitelogo-Copy.png'),
(151, 51, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:103;s:6:\"height\";i:103;s:4:\"file\";s:25:\"2018/07/sitelogo-Copy.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(152, 52, '_wp_attached_file', '2018/07/cropped-sitelogo-Copy-1.png'),
(153, 52, '_wp_attachment_context', 'custom-logo'),
(154, 52, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:103;s:6:\"height\";i:103;s:4:\"file\";s:35:\"2018/07/cropped-sitelogo-Copy-1.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(157, 54, '_edit_last', '1'),
(158, 54, '_edit_lock', '1531048698:1'),
(161, 54, '_aioseop_opengraph_settings', 'a:15:{s:32:\"aioseop_opengraph_settings_title\";s:0:\"\";s:31:\"aioseop_opengraph_settings_desc\";s:0:\"\";s:32:\"aioseop_opengraph_settings_image\";s:80:\"http://localhost/wordpress/wp-content/uploads/2018/07/GOSPEL-20161231_220533.jpg\";s:36:\"aioseop_opengraph_settings_customimg\";s:80:\"http://localhost/wordpress/wp-content/uploads/2018/07/GOSPEL-20161231_220533.jpg\";s:37:\"aioseop_opengraph_settings_imagewidth\";s:0:\"\";s:38:\"aioseop_opengraph_settings_imageheight\";s:0:\"\";s:32:\"aioseop_opengraph_settings_video\";s:0:\"\";s:37:\"aioseop_opengraph_settings_videowidth\";s:0:\"\";s:38:\"aioseop_opengraph_settings_videoheight\";s:0:\"\";s:35:\"aioseop_opengraph_settings_category\";s:7:\"article\";s:34:\"aioseop_opengraph_settings_section\";s:0:\"\";s:30:\"aioseop_opengraph_settings_tag\";s:0:\"\";s:34:\"aioseop_opengraph_settings_setcard\";s:7:\"summary\";s:44:\"aioseop_opengraph_settings_customimg_twitter\";s:80:\"http://localhost/wordpress/wp-content/uploads/2018/07/GOSPEL-20161231_220533.jpg\";s:44:\"aioseop_opengraph_settings_customimg_checker\";s:1:\"0\";}'),
(164, 57, '_edit_last', '1'),
(165, 57, '_edit_lock', '1531048445:1'),
(170, 57, '_aioseop_opengraph_settings', 'a:14:{s:32:\"aioseop_opengraph_settings_title\";s:0:\"\";s:31:\"aioseop_opengraph_settings_desc\";s:0:\"\";s:36:\"aioseop_opengraph_settings_customimg\";s:0:\"\";s:37:\"aioseop_opengraph_settings_imagewidth\";s:0:\"\";s:38:\"aioseop_opengraph_settings_imageheight\";s:0:\"\";s:32:\"aioseop_opengraph_settings_video\";s:0:\"\";s:37:\"aioseop_opengraph_settings_videowidth\";s:0:\"\";s:38:\"aioseop_opengraph_settings_videoheight\";s:0:\"\";s:35:\"aioseop_opengraph_settings_category\";s:7:\"article\";s:34:\"aioseop_opengraph_settings_section\";s:0:\"\";s:30:\"aioseop_opengraph_settings_tag\";s:0:\"\";s:34:\"aioseop_opengraph_settings_setcard\";s:7:\"summary\";s:44:\"aioseop_opengraph_settings_customimg_twitter\";s:0:\"\";s:44:\"aioseop_opengraph_settings_customimg_checker\";s:1:\"0\";}'),
(179, 59, '_wp_attached_file', '2018/07/cropped-IMAG0237-1.jpg'),
(180, 59, '_wp_attachment_context', 'custom-header'),
(181, 59, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1920;s:6:\"height\";i:848;s:4:\"file\";s:30:\"2018/07/cropped-IMAG0237-1.jpg\";s:5:\"sizes\";a:7:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:30:\"cropped-IMAG0237-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:30:\"cropped-IMAG0237-1-300x133.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:133;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:30:\"cropped-IMAG0237-1-768x339.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:339;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:31:\"cropped-IMAG0237-1-1024x452.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:452;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:16:\"blogto-1920-1200\";a:4:{s:4:\"file\";s:31:\"cropped-IMAG0237-1-1920x848.jpg\";s:5:\"width\";i:1920;s:6:\"height\";i:848;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:15:\"blogto-1200-850\";a:4:{s:4:\"file\";s:31:\"cropped-IMAG0237-1-1200x848.jpg\";s:5:\"width\";i:1200;s:6:\"height\";i:848;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:15:\"blogto-1170-710\";a:4:{s:4:\"file\";s:31:\"cropped-IMAG0237-1-1170x710.jpg\";s:5:\"width\";i:1170;s:6:\"height\";i:710;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}s:17:\"attachment_parent\";i:26;}'),
(182, 59, '_wp_attachment_custom_header_last_used_blogto', '1530888778'),
(183, 59, '_wp_attachment_is_custom_header', 'blogto'),
(252, 88, '_wp_attached_file', '2018/07/cropped-sitelogo-Copy-2.png'),
(253, 88, '_wp_attachment_context', 'custom-logo'),
(254, 88, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:250;s:6:\"height\";i:250;s:4:\"file\";s:35:\"2018/07/cropped-sitelogo-Copy-2.png\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:35:\"cropped-sitelogo-Copy-2-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:41:\"play-school-kindergarten-thumbnail-avatar\";a:4:{s:4:\"file\";s:35:\"cropped-sitelogo-Copy-2-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(257, 90, '_wp_attached_file', '2018/07/cropped-sitelogo-Copy-3.png'),
(258, 90, '_wp_attachment_context', 'custom-logo'),
(259, 90, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:250;s:6:\"height\";i:250;s:4:\"file\";s:35:\"2018/07/cropped-sitelogo-Copy-3.png\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:35:\"cropped-sitelogo-Copy-3-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:41:\"play-school-kindergarten-thumbnail-avatar\";a:4:{s:4:\"file\";s:35:\"cropped-sitelogo-Copy-3-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(292, 106, '_wp_attached_file', '2018/07/cropped-sitelogo-Copy-4.png'),
(293, 106, '_wp_attachment_context', 'custom-logo'),
(294, 106, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:103;s:6:\"height\";i:103;s:4:\"file\";s:35:\"2018/07/cropped-sitelogo-Copy-4.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(305, 111, '_wp_attached_file', '2018/07/cropped-sitelogo-Copy-5.png'),
(306, 111, '_wp_attachment_context', 'custom-logo'),
(307, 111, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:103;s:6:\"height\";i:103;s:4:\"file\";s:35:\"2018/07/cropped-sitelogo-Copy-5.png\";s:5:\"sizes\";a:1:{s:23:\"tortuga-thumbnail-small\";a:4:{s:4:\"file\";s:34:\"cropped-sitelogo-Copy-5-103x80.png\";s:5:\"width\";i:103;s:6:\"height\";i:80;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(310, 113, '_edit_last', '1'),
(311, 113, '_edit_lock', '1531048397:1'),
(312, 114, '_wp_attached_file', '2018/07/IMAG0162.jpg'),
(313, 114, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:2592;s:6:\"height\";i:1552;s:4:\"file\";s:20:\"2018/07/IMAG0162.jpg\";s:5:\"sizes\";a:9:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"IMAG0162-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"IMAG0162-300x180.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:20:\"IMAG0162-768x460.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:460;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:21:\"IMAG0162-1024x613.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:613;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:20:\"IMAG0162-900x400.jpg\";s:5:\"width\";i:900;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:20:\"tortuga-slider-image\";a:4:{s:4:\"file\";s:20:\"IMAG0162-780x420.jpg\";s:5:\"width\";i:780;s:6:\"height\";i:420;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:23:\"tortuga-thumbnail-small\";a:4:{s:4:\"file\";s:19:\"IMAG0162-120x80.jpg\";s:5:\"width\";i:120;s:6:\"height\";i:80;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:24:\"tortuga-thumbnail-medium\";a:4:{s:4:\"file\";s:20:\"IMAG0162-360x200.jpg\";s:5:\"width\";i:360;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:23:\"tortuga-thumbnail-large\";a:4:{s:4:\"file\";s:20:\"IMAG0162-600x330.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:330;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:12:\"HTC Desire V\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:10:\"1510933114\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:4:\"3.53\";s:3:\"iso\";s:2:\"74\";s:13:\"shutter_speed\";s:7:\"0.00997\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(314, 113, '_wp_page_template', 'template-fullwidth.php'),
(317, 113, '_aioseop_opengraph_settings', 'a:15:{s:32:\"aioseop_opengraph_settings_title\";s:0:\"\";s:31:\"aioseop_opengraph_settings_desc\";s:0:\"\";s:32:\"aioseop_opengraph_settings_image\";s:80:\"http://localhost/wordpress/wp-content/uploads/2018/07/GOSPEL-20161231_220533.jpg\";s:36:\"aioseop_opengraph_settings_customimg\";s:80:\"http://localhost/wordpress/wp-content/uploads/2018/07/GOSPEL-20161231_220533.jpg\";s:37:\"aioseop_opengraph_settings_imagewidth\";s:0:\"\";s:38:\"aioseop_opengraph_settings_imageheight\";s:0:\"\";s:32:\"aioseop_opengraph_settings_video\";s:0:\"\";s:37:\"aioseop_opengraph_settings_videowidth\";s:0:\"\";s:38:\"aioseop_opengraph_settings_videoheight\";s:0:\"\";s:35:\"aioseop_opengraph_settings_category\";s:7:\"article\";s:34:\"aioseop_opengraph_settings_section\";s:0:\"\";s:30:\"aioseop_opengraph_settings_tag\";s:0:\"\";s:34:\"aioseop_opengraph_settings_setcard\";s:7:\"summary\";s:44:\"aioseop_opengraph_settings_customimg_twitter\";s:0:\"\";s:44:\"aioseop_opengraph_settings_customimg_checker\";s:1:\"0\";}'),
(318, 113, '_thumbnail_id', '114'),
(325, 57, '_thumbnail_id', '26'),
(326, 57, '_wp_page_template', 'template-fullwidth.php'),
(333, 57, '_aioseop_description', 'One of the strategies of great leadership is building what I call the ring system. This system permits the followers to fall in a circle of relationship level. Here I would use three circles: '),
(334, 57, '_aioseop_title', 'Leadership and Communication'),
(335, 117, '_wp_attached_file', '2018/07/IMG_20151101_205243.jpg'),
(336, 117, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:2560;s:4:\"file\";s:31:\"2018/07/IMG_20151101_205243.jpg\";s:5:\"sizes\";a:9:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:31:\"IMG_20151101_205243-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:31:\"IMG_20151101_205243-225x300.jpg\";s:5:\"width\";i:225;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:32:\"IMG_20151101_205243-768x1024.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:32:\"IMG_20151101_205243-768x1024.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:31:\"IMG_20151101_205243-900x400.jpg\";s:5:\"width\";i:900;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:20:\"tortuga-slider-image\";a:4:{s:4:\"file\";s:31:\"IMG_20151101_205243-780x420.jpg\";s:5:\"width\";i:780;s:6:\"height\";i:420;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:23:\"tortuga-thumbnail-small\";a:4:{s:4:\"file\";s:30:\"IMG_20151101_205243-120x80.jpg\";s:5:\"width\";i:120;s:6:\"height\";i:80;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:24:\"tortuga-thumbnail-medium\";a:4:{s:4:\"file\";s:31:\"IMG_20151101_205243-360x200.jpg\";s:5:\"width\";i:360;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:23:\"tortuga-thumbnail-large\";a:4:{s:4:\"file\";s:31:\"IMG_20151101_205243-600x330.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:330;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"2\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:5:\"LENNY\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:10:\"1446411164\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:3:\"3.5\";s:3:\"iso\";s:3:\"100\";s:13:\"shutter_speed\";s:3:\"0/0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(337, 54, '_thumbnail_id', '117'),
(338, 54, '_wp_page_template', 'template-centered.php'),
(404, 149, '_form', '<label> Your Name (required)\n    [text* your-name] </label>\n\n<label> Your Email (required)\n    [email* your-email] </label>\n\n<label> Subject\n    [text your-subject] </label>\n\n<label> Your Message\n    [textarea your-message] </label>\n\n[submit \"Send\"]'),
(405, 149, '_mail', 'a:8:{s:7:\"subject\";s:35:\"Voice of  Pilgrims \"[your-subject]\"\";s:6:\"sender\";s:35:\"[your-name] <lekiagospel@gmail.com>\";s:4:\"body\";s:183:\"From: [your-name] <[your-email]>\nSubject: [your-subject]\n\nMessage Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on Voice of  Pilgrims (http://localhost/wordpress)\";s:9:\"recipient\";s:21:\"lekiagospel@gmail.com\";s:18:\"additional_headers\";s:22:\"Reply-To: [your-email]\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";i:0;s:13:\"exclude_blank\";i:0;}'),
(406, 149, '_mail_2', 'a:9:{s:6:\"active\";b:0;s:7:\"subject\";s:35:\"Voice of  Pilgrims \"[your-subject]\"\";s:6:\"sender\";s:42:\"Voice of  Pilgrims <lekiagospel@gmail.com>\";s:4:\"body\";s:125:\"Message Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on Voice of  Pilgrims (http://localhost/wordpress)\";s:9:\"recipient\";s:12:\"[your-email]\";s:18:\"additional_headers\";s:31:\"Reply-To: lekiagospel@gmail.com\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";i:0;s:13:\"exclude_blank\";i:0;}'),
(407, 149, '_messages', 'a:8:{s:12:\"mail_sent_ok\";s:45:\"Thank you for your message. It has been sent.\";s:12:\"mail_sent_ng\";s:71:\"There was an error trying to send your message. Please try again later.\";s:16:\"validation_error\";s:61:\"One or more fields have an error. Please check and try again.\";s:4:\"spam\";s:71:\"There was an error trying to send your message. Please try again later.\";s:12:\"accept_terms\";s:69:\"You must accept the terms and conditions before sending your message.\";s:16:\"invalid_required\";s:22:\"The field is required.\";s:16:\"invalid_too_long\";s:22:\"The field is too long.\";s:17:\"invalid_too_short\";s:23:\"The field is too short.\";}'),
(408, 149, '_additional_settings', NULL),
(409, 149, '_locale', 'en_US'),
(410, 152, '_edit_lock', '1544821965:1'),
(411, 152, '_wp_trash_meta_status', 'publish'),
(412, 152, '_wp_trash_meta_time', '1544822010'),
(413, 153, '_edit_lock', '1544822215:1'),
(414, 153, '_wp_trash_meta_status', 'publish'),
(415, 153, '_wp_trash_meta_time', '1544822221'),
(416, 154, '_edit_lock', '1544822524:1'),
(417, 154, '_wp_trash_meta_status', 'publish'),
(418, 154, '_wp_trash_meta_time', '1544822536'),
(419, 155, '_wp_trash_meta_status', 'publish'),
(420, 155, '_wp_trash_meta_time', '1544822762'),
(421, 156, '_edit_lock', '1544822857:1'),
(422, 156, '_wp_trash_meta_status', 'publish'),
(423, 156, '_wp_trash_meta_time', '1544822879'),
(424, 157, '_edit_lock', '1544822971:1'),
(425, 157, '_wp_trash_meta_status', 'publish'),
(426, 157, '_wp_trash_meta_time', '1544822983');

-- --------------------------------------------------------

--
-- Table structure for table `wp_posts`
--

CREATE TABLE `wp_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2018-06-28 08:26:00', '2018-06-28 08:26:00', 'Welcome to WordPress. This is your first post. Edit or delete it, then start writing!', 'Hello world!', '', 'publish', 'open', 'open', '', 'hello-world', '', '', '2018-06-28 08:26:00', '2018-06-28 08:26:00', '', 0, 'http:/?p=1', 0, 'post', '', 1),
(2, 1, '2018-06-28 08:26:00', '2018-06-28 08:26:00', 'This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:\n\n<blockquote>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</blockquote>\n\n...or something like this:\n\n<blockquote>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</blockquote>\n\nAs a new WordPress user, you should go to <a href=\"http:/wordpress/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!', 'Sample Page', '', 'publish', 'closed', 'open', '', 'sample-page', '', '', '2018-06-28 08:26:00', '2018-06-28 08:26:00', '', 0, 'http:/?page_id=2', 0, 'page', '', 0),
(3, 1, '2018-06-28 08:26:00', '2018-06-28 08:26:00', '<h2>Who we are</h2><p>Our website address is: http:.</p><h2>What personal data we collect and why we collect it</h2><h3>Comments</h3><p>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p><p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p><h3>Media</h3><p>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p><h3>Contact forms</h3><h3>Cookies</h3><p>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p><p>If you have an account and you log in to this site, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p><p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p><p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p><h3>Embedded content from other websites</h3><p>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p><p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracing your interaction with the embedded content if you have an account and are logged in to that website.</p><h3>Analytics</h3><h2>Who we share your data with</h2><h2>How long we retain your data</h2><p>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p><p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p><h2>What rights you have over your data</h2><p>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p><h2>Where we send your data</h2><p>Visitor comments may be checked through an automated spam detection service.</p><h2>Your contact information</h2><h2>Additional information</h2><h3>How we protect your data</h3><h3>What data breach procedures we have in place</h3><h3>What third parties we receive data from</h3><h3>What automated decision making and/or profiling we do with user data</h3><h3>Industry regulatory disclosure requirements</h3>', 'Privacy Policy', '', 'draft', 'closed', 'open', '', 'privacy-policy', '', '', '2018-06-28 08:26:00', '2018-06-28 08:26:00', '', 0, 'http:/?page_id=3', 0, 'page', '', 0),
(7, 1, '2018-07-06 11:53:31', '2018-07-06 11:53:31', '<img class=\" wp-image-26 alignleft\" src=\"http://localhost/wordpress/wp-content/uploads/2018/07/IMAG0237-300x180.jpg\" alt=\"\" width=\"282\" height=\"169\" />Some of us are far from knowing what a church is. Well, I don’t know what to call your local assembly. May be at best we can say it’s a social gathering, as someone rightly said “after Facebook it’s church”. And when you speak in this manner here, beware they will scourge you in their synagogue.\r\n\r\nSome time ago a young boy ate cocoyam and said it was yam. That’s what we have made out of the church. It’s badly twisted that we have completely lost it flavor and definition in every sense. Simplicity, beauty, power, fellowship is out of it. It has been hijacked and sincere seekers cries out ‘they have taken my Lord and I know not where they laid Him. Ardent lovers of our Lord, religious fanatic or extremist as they choose to call them, still seek and yell at the top of their voices to restore sanity to our father’s house.\r\n\r\nWhat do we have left for our children? How can the bride of Christ be so flamboyantly adorn till she has lost her identity, and men are force to believe what we see today is that church for which Christ gave his life? Indeed, he gave his life, but not to corrupt but to purge it. It is unacceptable that the church whose decay has been rooted should come shot of grace and make occasion for sinful indulgence and frivolities. The light we lack today in our society is it not because the church has been put under? Its true there are faithful men at their little corners who wrestles day and night that our generation come again to know that church for which the blood of the savior was shed.\r\n\r\nRecently I had worship in a church in a remote village; and soon enough I realized what our generation of churched people are missing – the glorified savior and Lord. I began to pour my heart, as it bleeds to the Lord: “please forgive us and our fathers for what we have done to the crucified Christ and how we have desecrated your temple. Please don’t let men fart in this church as they did in others for which we are dying of suffocation”.', 'DON’T’ FART IN THAT CHURCH', '', 'publish', 'open', 'open', '', 'dont-fart-in-that-church', '', '', '2018-07-06 13:59:04', '2018-07-06 13:59:04', '', 0, 'http://localhost/wordpress/?p=7', 0, 'post', '', 1),
(8, 1, '2018-07-06 11:53:31', '2018-07-06 11:53:31', 'Some of us are far from knowing what a church is. Well, I don’t know what to call your local assembly. May be at best we can say it’s a social gathering, as someone rightly said “after Facebook it’s church”. And when you speak in this manner here, beware they will scourge you in their synagogue.\r\n\r\nSome time ago a young boy ate cocoyam and said it was yam. That’s what we have made out of the church. It’s badly twisted that we have completely lost it flavor and definition in every sense. Simplicity, beauty, power, fellowship is out of it. It has been hijacked and sincere seekers cries out ‘they have taken my Lord and I know not where they laid Him. Ardent lovers of our Lord, religious fanatic or extremist as they choose to call them, still seek and yell at the top of their voices to restore sanity to our father’s house.\r\n\r\nWhat do we have left for our children? How can the bride of Christ be so flamboyantly adorn till she has lost her identity, and men are force to believe what we see today is that church for which Christ gave his life? Indeed, he gave his life, but not to corrupt but to purge it. It is unacceptable that the church whose decay has been rooted should come shot of grace and make occasion for sinful indulgence and frivolities. The light we lack today in our society is it not because the church has been put under? Its true there are faithful men at their little corners who wrestles day and night that our generation come again to know that church for which the blood of the savior was shed.\r\n\r\nRecently I had worship in a church in a remote village; and soon enough I realized what our generation of churched people are missing – the glorified savior and Lord. I began to pour my heart, as it bleeds to the Lord: “please forgive us and our fathers for what we have done to the crucified Christ and how we have desecrated your temple. Please don’t let men fart in this church as they did in others for which we are dying of suffocation”.', 'DON’T’ FART IN THAT CHURCH', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2018-07-06 11:53:31', '2018-07-06 11:53:31', '', 7, 'http://localhost/wordpress/2018/07/06/7-revision-v1/', 0, 'revision', '', 0),
(11, 1, '2018-07-06 12:00:59', '2018-07-06 12:00:59', '', 'GOSPEL 20161231_220533', '', 'inherit', 'open', 'closed', '', 'gospel-20161231_220533', '', '', '2018-07-06 12:00:59', '2018-07-06 12:00:59', '', 0, 'http://localhost/wordpress/wp-content/uploads/2018/07/GOSPEL-20161231_220533.jpg', 0, 'attachment', 'image/jpeg', 0),
(14, 1, '2018-07-06 12:02:36', '2018-07-06 12:02:36', '', 'Contact Us', '', 'publish', 'closed', 'closed', '', 'contact-us', '', '', '2018-07-06 12:02:36', '2018-07-06 12:02:36', '', 0, 'http://localhost/wordpress/?page_id=14', 0, 'page', '', 0),
(15, 1, '2018-07-06 12:02:36', '2018-07-06 12:02:36', '', 'Contact Us', '', 'inherit', 'closed', 'closed', '', '14-revision-v1', '', '', '2018-07-06 12:02:36', '2018-07-06 12:02:36', '', 14, 'http://localhost/wordpress/2018/07/06/14-revision-v1/', 0, 'revision', '', 0),
(16, 1, '2018-07-06 12:02:37', '2018-07-06 12:02:37', ' ', '', '', 'publish', 'closed', 'closed', '', '16', '', '', '2018-07-06 12:24:59', '2018-07-06 12:24:59', '', 0, 'http://localhost/wordpress/2018/07/06/16/', 1, 'nav_menu_item', '', 0),
(20, 1, '2018-07-06 12:11:03', '2018-07-06 12:11:03', '', 'About Us', '', 'publish', 'closed', 'closed', '', 'about-us', '', '', '2018-07-06 12:11:22', '2018-07-06 12:11:22', '', 0, 'http://localhost/wordpress/?page_id=20', 0, 'page', '', 0),
(21, 1, '2018-07-06 12:11:03', '2018-07-06 12:11:03', ' ', '', '', 'publish', 'closed', 'closed', '', '21', '', '', '2018-07-06 12:24:59', '2018-07-06 12:24:59', '', 0, 'http://localhost/wordpress/2018/07/06/21/', 2, 'nav_menu_item', '', 0),
(22, 1, '2018-07-06 12:11:03', '2018-07-06 12:11:03', '', 'About Us', '', 'inherit', 'closed', 'closed', '', '20-revision-v1', '', '', '2018-07-06 12:11:03', '2018-07-06 12:11:03', '', 20, 'http://localhost/wordpress/2018/07/06/20-revision-v1/', 0, 'revision', '', 0),
(23, 1, '2018-07-06 12:11:49', '2018-07-06 12:11:49', '', 'Support', '', 'publish', 'closed', 'closed', '', 'support', '', '', '2018-07-06 12:11:58', '2018-07-06 12:11:58', '', 0, 'http://localhost/wordpress/?page_id=23', 0, 'page', '', 0),
(24, 1, '2018-07-06 12:11:49', '2018-07-06 12:11:49', ' ', '', '', 'publish', 'closed', 'closed', '', '24', '', '', '2018-07-06 12:24:59', '2018-07-06 12:24:59', '', 0, 'http://localhost/wordpress/2018/07/06/24/', 3, 'nav_menu_item', '', 0),
(25, 1, '2018-07-06 12:11:49', '2018-07-06 12:11:49', '', 'Support', '', 'inherit', 'closed', 'closed', '', '23-revision-v1', '', '', '2018-07-06 12:11:49', '2018-07-06 12:11:49', '', 23, 'http://localhost/wordpress/2018/07/06/23-revision-v1/', 0, 'revision', '', 0),
(26, 1, '2018-07-06 12:15:01', '2018-07-06 12:15:01', '', 'IMAG0237', '', 'inherit', 'open', 'closed', '', 'imag0237', '', '', '2018-07-06 13:58:12', '2018-07-06 13:58:12', '', 7, 'http://localhost/wordpress/wp-content/uploads/2018/07/IMAG0237.jpg', 0, 'attachment', 'image/jpeg', 0),
(27, 1, '2018-07-06 12:15:20', '2018-07-06 12:15:20', '', 'cropped-IMAG0237.jpg', '', 'inherit', 'open', 'closed', '', 'cropped-imag0237-jpg', '', '', '2018-07-06 12:15:20', '2018-07-06 12:15:20', '', 0, 'http://localhost/wordpress/wp-content/uploads/2018/07/cropped-IMAG0237.jpg', 0, 'attachment', 'image/jpeg', 0),
(31, 1, '2018-07-06 12:22:22', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2018-07-06 12:22:22', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?p=31', 1, 'nav_menu_item', '', 0),
(32, 1, '2018-07-06 12:22:22', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2018-07-06 12:22:22', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?p=32', 1, 'nav_menu_item', '', 0),
(33, 1, '2018-07-06 12:22:23', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2018-07-06 12:22:23', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?p=33', 1, 'nav_menu_item', '', 0),
(34, 1, '2018-07-06 12:23:46', '2018-07-06 12:23:46', ' ', '', '', 'publish', 'closed', 'closed', '', '34', '', '', '2018-07-06 12:24:59', '2018-07-06 12:24:59', '', 0, 'http://localhost/wordpress/?p=34', 4, 'nav_menu_item', '', 0),
(39, 1, '2018-07-06 13:58:39', '2018-07-06 13:58:39', '<img class=\" wp-image-26 alignleft\" src=\"http://localhost/wordpress/wp-content/uploads/2018/07/IMAG0237-300x180.jpg\" alt=\"\" width=\"282\" height=\"169\" />Some of us are far from knowing what a church is. Well, I don’t know what to call your local assembly. May be at best we can say it’s a social gathering, as someone rightly said “after Facebook it’s church”. And when you speak in this manner here, beware they will scourge you in their synagogue.\r\n\r\nSome time ago a young boy ate cocoyam and said it was yam. That’s what we have made out of the church. It’s badly twisted that we have completely lost it flavor and definition in every sense. Simplicity, beauty, power, fellowship is out of it. It has been hijacked and sincere seekers cries out ‘they have taken my Lord and I know not where they laid Him. Ardent lovers of our Lord, religious fanatic or extremist as they choose to call them, still seek and yell at the top of their voices to restore sanity to our father’s house.\r\n\r\nWhat do we have left for our children? How can the bride of Christ be so flamboyantly adorn till she has lost her identity, and men are force to believe what we see today is that church for which Christ gave his life? Indeed, he gave his life, but not to corrupt but to purge it. It is unacceptable that the church whose decay has been rooted should come shot of grace and make occasion for sinful indulgence and frivolities. The light we lack today in our society is it not because the church has been put under? Its true there are faithful men at their little corners who wrestles day and night that our generation come again to know that church for which the blood of the savior was shed.\r\n\r\nRecently I had worship in a church in a remote village; and soon enough I realized what our generation of churched people are missing – the glorified savior and Lord. I began to pour my heart, as it bleeds to the Lord: “please forgive us and our fathers for what we have done to the crucified Christ and how we have desecrated your temple. Please don’t let men fart in this church as they did in others for which we are dying of suffocation”.', 'DON’T’ FART IN THAT CHURCH', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2018-07-06 13:58:39', '2018-07-06 13:58:39', '', 7, 'http://localhost/wordpress/2018/07/06/7-revision-v1/', 0, 'revision', '', 0),
(45, 1, '2018-07-06 14:25:40', '2018-07-06 14:25:40', '', 'sitelogo', '', 'inherit', 'open', 'closed', '', 'sitelogo', '', '', '2018-07-06 14:25:40', '2018-07-06 14:25:40', '', 0, 'http://localhost/wordpress/wp-content/uploads/2018/07/sitelogo.png', 0, 'attachment', 'image/png', 0),
(46, 1, '2018-07-06 14:25:43', '2018-07-06 14:25:43', 'http://localhost/wordpress/wp-content/uploads/2018/07/cropped-sitelogo.png', 'cropped-sitelogo.png', '', 'inherit', 'open', 'closed', '', 'cropped-sitelogo-png', '', '', '2018-07-06 14:25:43', '2018-07-06 14:25:43', '', 0, 'http://localhost/wordpress/wp-content/uploads/2018/07/cropped-sitelogo.png', 0, 'attachment', 'image/png', 0),
(49, 1, '2018-07-06 14:29:02', '2018-07-06 14:29:02', 'http://localhost/wordpress/wp-content/uploads/2018/07/cropped-sitelogo-Copy.png', 'cropped-sitelogo-Copy.png', '', 'inherit', 'open', 'closed', '', 'cropped-sitelogo-copy-png', '', '', '2018-07-06 14:29:02', '2018-07-06 14:29:02', '', 0, 'http://localhost/wordpress/wp-content/uploads/2018/07/cropped-sitelogo-Copy.png', 0, 'attachment', 'image/png', 0),
(51, 1, '2018-07-06 14:36:34', '2018-07-06 14:36:34', '', 'sitelogo - Copy', '', 'inherit', 'open', 'closed', '', 'sitelogo-copy', '', '', '2018-07-06 14:36:34', '2018-07-06 14:36:34', '', 0, 'http://localhost/wordpress/wp-content/uploads/2018/07/sitelogo-Copy.png', 0, 'attachment', 'image/png', 0),
(52, 1, '2018-07-06 14:36:45', '2018-07-06 14:36:45', 'http://localhost/wordpress/wp-content/uploads/2018/07/cropped-sitelogo-Copy-1.png', 'cropped-sitelogo-Copy-1.png', '', 'inherit', 'open', 'closed', '', 'cropped-sitelogo-copy-1-png', '', '', '2018-07-06 14:36:45', '2018-07-06 14:36:45', '', 0, 'http://localhost/wordpress/wp-content/uploads/2018/07/cropped-sitelogo-Copy-1.png', 0, 'attachment', 'image/png', 0),
(54, 1, '2018-07-06 14:43:05', '2018-07-06 14:43:05', 'Communication is a key ingredient in leadership. Communication is a much talked about subject in leadership. The question is how does it affect leadership? It is a serious matter in leadership, because we can’t lead effectively without effective communication. In simple terms communication means the act or ability to pass an intended message. Most time the crises in leadership is that we assume we’re communicating, but surprising many of these times we do not. We only talk. It can never be a team thing until we can effectively communicate our ideas, intention, believe and thought. It is important we analyze and measure our communication tools and diligently apply it. People needs are different therefore communication does come easy. And again we can’t do without it because it’s an everyday thing. Leadership is responsible for moving everyone in a team from one point to the other, and until this responsibility is accepted and understood it can’t work as we desire. It is not the problem of the followers as it is of the leader, that some in the team are weak, others strong, some gifted, and others are not. Leadership must seek to move all of this class of person around begin to develop and bring out the best in them. Except a leader is prepared to achieved such feat he should not seek a team because everyone on a team cannot measure shoulder to shoulder. What he does is build a balance team. The leader should be able to harness the strength of his followers and help them against their weakness. Leadership builds men; this makes it a more strenuous task than any form of human building job. Leadership skill is not one that comes by sudden flight. it comes by training and experience and ever developing.\r\n\r\nThe first step into effective communicating is listening. First let’s me assure you that you don’t need to be a Lincoln or a Mandela. Anybody can be a great leader. As it is, those that learns good leadership skill fast and best are those who have been affected by a negative leadership – this is not always true except the person desires to be good leader.\r\n\r\nListening is a slippery skill to learn. It is not difficult yet it is slippery skill to learn. It is not difficult yet it is not easily understood. This is because is because of the continuous talking of the human mind and it short attention span. Inclusively, the human nature is suspicious. This makes listening difficult. A great percentage of people do not listen. They pretend they do but don’t. Listening does not mean to silent while someone talks, and it does not mean hearing. Both are part of it but they are not. What then is listening? It is the act or ability to maintain questions and stillness of thought while someone speaks.\r\n\r\nThe ability to delay judgment, enter the other person’s head and get their thought and message. It doesn’t necessary mean to agree with them. Seek to understand people when they talk. Listening is an act we must learn in order to communicate effectively. Due to the rush of wanting to talk or rely back we fail to listen. Leaders sometimes can be consumed with their own thought and because of the business of their work their minds gets clouded. Take away the inner noise and hear your followers out – it is key. It is a crisis in leadership for people to be left behind. Actually, it is not of the leader that some fall behind. Some just naturally drag and slow the team. If you are a leader who just booth  away; you will  not be able to build a great team. You may achieve speed with few people who are always ready and on the go.\r\n\r\nOne of the way we fail to carry people along is building the team around one person or few gifted individuals. It is subtle and mostly the case that the leader inclines to the most responsive team member or follower, and this consequently leads to that person being the focus of the of the team – sometimes it baffles us how the weakest turns to become the pillar of the team. To combat this phenomenon it is essential to share the duties or responsibilities uniformly among the every member of the team; though this may not equal. No matter how we try the leader will always be tilted but don’t let this be obvious. If it becomes noticeable that the leader is inclined to an individual the others in the team will begin fall away gradually.', 'LEADERSHIP AND COMMUNICATION (part 1)', '', 'publish', 'open', 'open', '', 'leadership-and-communication-part-1', '', '', '2018-07-08 11:17:14', '2018-07-08 11:17:14', '', 0, 'http://localhost/wordpress/?p=54', 0, 'post', '', 0),
(55, 1, '2018-07-06 14:43:05', '2018-07-06 14:43:05', 'Communication is a key ingredient in leadership. Communication is a much talked about subject in leadership. The question is how does it affect leadership? It is a serious matter in leadership, because we can’t lead effectively without effective communication. In simple terms communication means the act or ability to pass an intended message. Most time the crises in leadership is that we assume we’re communicating, but surprising many of these times we do not. We only talk. It can never be a team thing until we can effectively communicate our ideas, intention, believe and thought. It is important we analyze and measure our communication tools and diligently apply it. People needs are different therefore communication does come easy. And again we can’t do without it because it’s an everyday thing. Leadership is responsible for moving everyone in a team from one point to the other, and until this responsibility is accepted and understood it can’t work as we desire. It is not the problem of the followers as it is of the leader, that some in the team are weak, others strong, some gifted, and others are not. Leadership must seek to move all of this class of person around begin to develop and bring out the best in them. Except a leader is prepared to achieved such feat he should not seek a team because everyone on a team cannot measure shoulder to shoulder. What he does is build a balance team. The leader should be able to harness the strength of his followers and help them against their weakness. Leadership builds men; this makes it a more strenuous task than any form of human building job. Leadership skill is not one that comes by sudden flight. it comes by training and experience and ever developing.\r\n\r\nThe first step into effective communicating is listening. First let’s me assure you that you don’t need to be a Lincoln or a Mandela. Anybody can be a great leader. As it is, those that learns good leadership skill fast and best are those who have been affected by a negative leadership – this is not always true except the person desires to be good leader.\r\n\r\nListening is a slippery skill to learn. It is not difficult yet it is slippery skill to learn. It is not difficult yet it is not easily understood. This is because is because of the continuous talking of the human mind and it short attention span. Inclusively, the human nature is suspicious. This makes listening difficult. A great percentage of people do not listen. They pretend they do but don’t. Listening does not mean to silent while someone talks, and it does not mean hearing. Both are part of it but they are not. What then is listening? It is the act or ability to maintain questions and stillness of thought while someone speaks.\r\n\r\nThe ability to delay judgment, enter the other person’s head and get their thought and message. It doesn’t necessary mean to agree with them. Seek to understand people when they talk. Listening is an act we must learn in order to communicate effectively. Due to the rush of wanting to talk or rely back we fail to listen. Leaders sometimes can be consumed with their own thought and because of the business of their work their minds gets clouded. Take away the inner noise and hear your followers out – it is key. It is a crisis in leadership for people to be left behind. Actually, it is not of the leader that some fall behind. Some just naturally drag and slow the team. If you are a leader who just booth  away; you will  not be able to build a great team. You may achieve speed with few people who are always ready and on the go.\r\n\r\nOne of the way we fail to carry people along is building the team around one person or few gifted individuals. It is subtle and mostly the case that the leader inclines to the most responsive team member or follower, and this consequently leads to that person being the focus of the of the team – sometimes it baffles us how the weakest turns to become the pillar of the team. To combat this phenomenon it is essential to share the duties or responsibilities uniformly among the every member of the team; though this may not equal. No matter how we try the leader will always be tilted but don’t let this be obvious. If it becomes noticeable that the leader is inclined to an individual the others in the team will begin fall away gradually.', 'LEADERSHIP AND COMMUNICATION (part 1)', '', 'inherit', 'closed', 'closed', '', '54-revision-v1', '', '', '2018-07-06 14:43:05', '2018-07-06 14:43:05', '', 54, 'http://localhost/wordpress/2018/07/06/54-revision-v1/', 0, 'revision', '', 0),
(57, 1, '2018-07-06 14:47:39', '2018-07-06 14:47:39', 'One of the strategies of great leadership is building what I call the ring system. This system permits the followers to fall in a circle of relationship level. Here I would use three circles: the outer circle, the middle circle and the inner circle. Anyone can access information on the outer circle but not anyone can on the inner circle.\r\n\r\nAs an example, Christ had the seventy two, the twelve and three (Peter, James and John). We should understand that this apply when majorly it comes to disseminating information and not duties. When it comes to being involve in the team everyone should. Christ didn’t permit information meant for the inner circle to be made public or others in the team of twelve. It is vital a leader has those he builds a strong inner life with, and yet do not impede the overall team progress. Those in the inner ring are like to assume leadership in absent of the leader. The ring system works best but we must be careful not to misunderstood things and quench team spirit.\r\n\r\nA leader should also be able to evaluate his leadership style and allow for open assessment. “Who do men say I am … and who do you say I am?” is one such question.\r\n\r\nThe next issue is interest. We can’t really listen to people and communicate with our team or people until we are interested in them. A common pitfall is trying to make the team an interesting one or get people to be interested in what we do as we. It may work for a time. Little wonder why people in the team we supposed should be interested in and still look outside? Something is getting their interest, and that is a distraction to them and the team. A team can travel as fast as it slowest member can; and all these, everything falls and rise on leadership.\r\n\r\nDon’t pretend to be interested, be genuinely interested. People can tell when you are genuinely interested in them and when you are trying to be. It is not just what we say. People read us beyond that. The human message is a complex mix of our oral and body language, with our actions and dealings with them and others both present and past. They also draw on our verbally shared experience with them, and we not always in control of all these. Sometimes these plights can be unknown to the leader.\r\n\r\nMany a good leader has thrown matters like this to the trash can for the excuse that they are sincere with their followers. Leadership suffers not because a leader is not sincere. A leader can be sincere, transparent has integrity and yet not be interested in the personality of his team members but the progress of the work, and people can tell when you really are not though they may not say it to you when sure platform for communication has not been established. Being interested in people is beyond the superficial “how are you?” greetings we throw and here there. We must get to know our followers and their personal struggles. This is the herculean task of leadership. Some leaders only remember their followers exist when they show up. Some don’t have the personal phone contact of their followers until it is time to delegate duties. They don’t know their followers beyond their names and this soon forget as the person exit the group. When a leader delegates duty to follower through another team member it shows the level of interest in that individual. It is crucial to relate to each member of your team directly and not through others.\r\n\r\nIn summary, communication is key to effective leadership; an act one can never outgrow.', 'LEADERSHIP AND COMMUNICATION (part 2)', '', 'publish', 'open', 'open', '', 'leadership-and-communication-part-2', '', '', '2018-07-08 11:16:23', '2018-07-08 11:16:23', '', 0, 'http://localhost/wordpress/?p=57', 0, 'post', '', 0),
(58, 1, '2018-07-06 14:47:39', '2018-07-06 14:47:39', 'One of the strategies of great leadership is building what I call the ring system. This system permits the followers to fall in a circle of relationship level. Here I would use three circles: the outer circle, the middle circle and the inner circle. Anyone can access information on the outer circle but not anyone can on the inner circle.\r\n\r\nAs an example, Christ had the seventy two, the twelve and three (Peter, James and John). We should understand that this apply when majorly it comes to disseminating information and not duties. When it comes to being involve in the team everyone should. Christ didn’t permit information meant for the inner circle to be made public or others in the team of twelve. It is vital a leader has those he builds a strong inner life with, and yet do not impede the overall team progress. Those in the inner ring are like to assume leadership in absent of the leader. The ring system works best but we must be careful not to misunderstood things and quench team spirit.\r\n\r\nA leader should also be able to evaluate his leadership style and allow for open assessment. “Who do men say I am … and who do you say I am?” is one such question.\r\n\r\nThe next issue is interest. We can’t really listen to people and communicate with our team or people until we are interested in them. A common pitfall is trying to make the team an interesting one or get people to be interested in what we do as we. It may work for a time. Little wonder why people in the team we supposed should be interested in and still look outside? Something is getting their interest, and that is a distraction to them and the team. A team can travel as fast as it slowest member can; and all these, everything falls and rise on leadership.\r\n\r\nDon’t pretend to be interested, be genuinely interested. People can tell when you are genuinely interested in them and when you are trying to be. It is not just what we say. People read us beyond that. The human message is a complex mix of our oral and body language, with our actions and dealings with them and others both present and past. They also draw on our verbally shared experience with them, and we not always in control of all these. Sometimes these plights can be unknown to the leader.\r\n\r\nMany a good leader has thrown matters like this to the trash can for the excuse that they are sincere with their followers. Leadership suffers not because a leader is not sincere. A leader can be sincere, transparent has integrity and yet not be interested in the personality of his team members but the progress of the work, and people can tell when you really are not though they may not say it to you when sure platform for communication has not been established. Being interested in people is beyond the superficial “how are you?” greetings we throw and here there. We must get to know our followers and their personal struggles. This is the herculean task of leadership. Some leaders only remember their followers exist when they show up. Some don’t have the personal phone contact of their followers until it is time to delegate duties. They don’t know their followers beyond their names and this soon forget as the person exit the group. When a leader delegates duty to follower through another team member it shows the level of interest in that individual. It is crucial to relate to each member of your team directly and not through others.\r\n\r\nIn summary, communication is key to effective leadership; an act one can never outgrow.', 'LEADERSHIP AND COMMUNICATION (part 2)', '', 'inherit', 'closed', 'closed', '', '57-revision-v1', '', '', '2018-07-06 14:47:39', '2018-07-06 14:47:39', '', 57, 'http://localhost/wordpress/2018/07/06/57-revision-v1/', 0, 'revision', '', 0),
(59, 1, '2018-07-06 14:52:56', '2018-07-06 14:52:56', '', 'cropped-IMAG0237-1.jpg', '', 'inherit', 'open', 'closed', '', 'cropped-imag0237-1-jpg', '', '', '2018-07-06 14:52:56', '2018-07-06 14:52:56', '', 0, 'http://localhost/wordpress/wp-content/uploads/2018/07/cropped-IMAG0237-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(88, 1, '2018-07-06 18:06:52', '2018-07-06 18:06:52', 'http://localhost/wordpress/wp-content/uploads/2018/07/cropped-sitelogo-Copy-2.png', 'cropped-sitelogo-Copy-2.png', '', 'inherit', 'open', 'closed', '', 'cropped-sitelogo-copy-2-png', '', '', '2018-07-06 18:06:52', '2018-07-06 18:06:52', '', 0, 'http://localhost/wordpress/wp-content/uploads/2018/07/cropped-sitelogo-Copy-2.png', 0, 'attachment', 'image/png', 0),
(90, 1, '2018-07-06 18:07:32', '2018-07-06 18:07:32', 'http://localhost/wordpress/wp-content/uploads/2018/07/cropped-sitelogo-Copy-3.png', 'cropped-sitelogo-Copy-3.png', '', 'inherit', 'open', 'closed', '', 'cropped-sitelogo-copy-3-png', '', '', '2018-07-06 18:07:32', '2018-07-06 18:07:32', '', 0, 'http://localhost/wordpress/wp-content/uploads/2018/07/cropped-sitelogo-Copy-3.png', 0, 'attachment', 'image/png', 0),
(106, 1, '2018-07-08 10:50:41', '2018-07-08 10:50:41', 'http://localhost/wordpress/wp-content/uploads/2018/07/cropped-sitelogo-Copy-4.png', 'cropped-sitelogo-Copy-4.png', '', 'inherit', 'open', 'closed', '', 'cropped-sitelogo-copy-4-png', '', '', '2018-07-08 10:50:41', '2018-07-08 10:50:41', '', 0, 'http://localhost/wordpress/wp-content/uploads/2018/07/cropped-sitelogo-Copy-4.png', 0, 'attachment', 'image/png', 0),
(111, 1, '2018-07-08 11:04:14', '2018-07-08 11:04:14', 'http://localhost/wordpress/wp-content/uploads/2018/07/cropped-sitelogo-Copy-5.png', 'cropped-sitelogo-Copy-5.png', '', 'inherit', 'open', 'closed', '', 'cropped-sitelogo-copy-5-png', '', '', '2018-07-08 11:04:14', '2018-07-08 11:04:14', '', 0, 'http://localhost/wordpress/wp-content/uploads/2018/07/cropped-sitelogo-Copy-5.png', 0, 'attachment', 'image/png', 0),
(113, 1, '2018-07-08 11:08:55', '2018-07-08 11:08:55', '<strong>Genesis 24</strong>\r\n\r\nAbraham had entrusted the task or responsibility of getting a wife for his son to his eldest servant. Not to say much of what that means, the eldest servant we believer had enough of discernment, and training under the patriarch to function in the capacity he had been charged.\r\n\r\nThe old Abraham had to charge his servant by oath, God being the witness. This was a griever matter than the covenant Abraham had made with Abimelech where he brought seven eve lambs (Genesis 21: 28). Here the servant was ask to place his hands under the thigh of Abraham – a man God had made great, whom the children of Heth called lord (Genesis 23:6). The servant was to feel the weight of the thigh of the man who is the father of them who believe by faith, a man who had sojourn on many lands, a friend of God (Isaiah 51:2; Genesis 23:4). At the point of taking hold of Abraham’s thigh he knew the weight of his master’s heart on the matter. Abraham was now close to his grave – he was well stricken in age, a man of many experiences. As he held Abraham’s thigh he understood that he was to make a decisions God made for Adam in Eden when he brought Eve to Adam. The whole task of finding a wife (for Isaac) was on him. Abraham had taken Sarah as wife having known her from childhood. This servant knew that in less than a moment he would be required to take to wife for Isaac a woman he had never met. How he would need discernment, diligence and a trained eyes and heart? …”thou shalt not take a wife unto my son of the daughters of the Canaanites among whom I dwell”. The grey-hair man said. He had known God, and his covenant; a circumcised man. The people of the land were kind and good to Abraham (Genesis 23). Their daughters could be educated and fair, and the people would be willing to give Abraham their daughters in marriage. But nothing qualifies enough for such decision. Not under any circumstance should a wife be taken from among the people Abraham dwelt was the oath. How many Christians still believe that they can marry from ‘the world’? They would say ‘I love her’, ‘I will convert her’, and like Samson, ‘she pleaseth me well’. And they know not that they cause God when they implied by action that the bone of their bones and the flesh of their flesh is not wash and redeem by the blood of Jesus. Son, do you neglect the words of your father and be equally yoked with unbelievers, or do you mingle and corrupt the holy seed in that you take to wife their daughters? (Ezra 9: 2)\r\n\r\nSome may say the unbelieving wife is sanctified by her believing husband: and that is true when the believing husband had married his unbelieving wife as an unbelieving husband. For what fellowship has light with darkness that the redeemed of God should love the daughters or sons of Belial? The question is do you seek your will or the will of God?\r\n\r\nAnd the servant having left his master was alone, remembered as he was trained, prayed. It shocks to know that in a great decision like this many do not pray. Some pray and yet do not pray through. Some grow weary and others drown in the sea of emotion. He would not cast off his discipline. Why would he flirt and roll from one side of his bed to the other burning with passion? For before he had met the damsel he had prayed. I ask, do you pray? He knew his master very well. Abraham would not take the damsel out, neither would he give gifts. He would pray! Why some may feel if she be a daughter of God why pray? They say ‘she is spiritual’ and would not pray. We learnt not so from the patriarch nor the Apostles who said “Thou, Lord which knowest the hearts of all men, shew whether of these two thou hast chosen”. The servant of Abraham would not let his eyes lead his heart, like some do, (Job 31:7) therefore he prayed. He knew whoever he is led to choose will bear the seed of God and birth forth the promise of God to his master. He was dealing with an issue on which the covenant and promise of God, and the people of God and the people of Israel even the Christ hung. He prayed – you see it was not trivial. None is of a purer theology that before you meet man you should meet God. I ask again, do you pray?\r\n\r\nHe prayed for a wife not a girl. He didn’t pray a vain prayer. Like the Pharisee do. It was fervent and earnest as prayers ought to. She should be one who can draw water from the well – a help meet, as Jacob too had met Leah, One who can stoop. She should be able to bear the seed of promise as Elizabeth knew of Mary and confessed “…the mother of my Lord should come to me”. He prayed that one who was able to bear his lord unborn, Jacob who is to be Israel; a patriarch in whom the twelve tribes would emerge should come to him. The destiny of the whole of the nation of Israel to be was in the balance, so he prayed fervently as Christ would do at Gethsemane and God heard him in that he made a woman and brought her unto the man.\r\n\r\nRebekah was made for Isaac. Rebekah not knowing she was an answer to prayers had quickly fit in the scene of play as a virtuous woman. She was birth forth by prayer for who can find a virtuous woman?\r\n\r\nI draw your attention to this friend, though the servant had prayed, he did not close his eyes. They were wide open, not for sensual use as we were told Rebekah was fair to look upon, but to behold the wonders of God. For whatever the Lord does it is marvelous in our sight. I do say as an English Reverend told his son “when you go to find her watch and pray”. This servant of Abraham had cast off all distractions and has passed the stage of ‘pray and go to bed’, as I was told by a sister. He looked as he sees his own prayer been answered before his eyes. Some pray and close their eyes yet they say I find a wife. When we pray let us watch to see what God is doing and know if need be we intensify our prayers or close in praise. It was not of doubt or lack of trust to pray and watch but we do well to know whether the Lord had made our journey prosperous or not.\r\n\r\n“… whose daughter art thou”? Now it was time to know who this fair damsel. It was, as I see, safe now to meet the damsel and give gifts. He had been with God. He withholds not what love would do – to give. It was safe now for he had put God before emotion or any attachment. It was time to go get her. He need not delay any further. He and seen her, he had tried her and it was time to take her home. Some would say ‘I will marry you’ and then go to enquire of God “is she the one?” They put the cart before the horse. Not this servant of Abraham, he would not move men before moving the heart of God. I make it plain that this man would not keep a damsel but make haste to meet her father. He knew there was no point tempting the devil and working that which is unlawful as some do with their bodies.\r\n\r\nSee, he sealed the testimony with worship (vs. 27). He would not forget in hurry like a heart merry with wine or like the nine lepers what God had done for him. The excitement of a beautiful damsel would not fade this to the background. We do not learn yet who this servant was, whether he was Eliezer (Genesis 15:2) or some other. But he introduced himself as a servant of Abraham. It is this Abraham whose name God had made great (Genesis 12:2). ‘Abraham’, a singular name need not be called Tehrah Abraham, or Dr Abraham or Rev. Dr Abraham (JP). He needs not all that. All you need call was ‘Abraham’ and we know who you spoke of.\r\n\r\nGod has made his name great, and this servant it sufficed him to say ‘I am Abraham’s servant’. Moreover, he was there for none other than Abraham’s. How many young men want to make a name before they step out? They want a title and great fortunes. Some though not having any of these lay false claims to it and think it is of any good to impress the damsel or her family like this. God loves the humble and let us like Abraham’s servant and the Apostle Paul say … I am a servant of Jesus. Marriage is honourable and he that finds a wife finds a good thing and obtains favour from the Lord. Marriage is beyond pleasure seeking. It is two coming together to fulfill God’s mandate on earth. They join in spirit to achieve a common assignment. It is done with the consent of both families.\r\n\r\nIn verse 52 and 53 we observe this servant worship the Lord again. His is a grateful heart. And also we note that he did all necessary appreciation and tender gifts and payment to receive the parents blessing (vs. 60).\r\n\r\nRebekah when she was called to seek her consent she flinch not but said “I will go”. What a prompt reply and accurate discernment: she was prepared for God’s best? She is a woman; the choice was not to be made for her. She perhaps had prayed and knew God’s mind on the matter and her life. She was prepared for marriage and when the time came she had her answers. Rebekah indeed was a virtuous woman not just beautiful. We know how well it is spoken of her in Proverbs 31.\r\n\r\nShe did something that would draw the attention of every diligent reader. In verse 64 it said that when she saw Isaac she lighted off her Camel. Rebekah was not a woman who would meet a man and remained on her camel. What woman wants peace at home and yet seeks to captain the ship? Are there not some who nurse the intention that someday they will ascend above the heights of the cloud, and within the thought burns quietly: “… I will be like the most High”. Rebekah would rather put off her educational qualification, her social status, her ‘spirituality’, and whatever she had attained and submit to the man. When it is marriage, she knows well that the man, whoever is the Lord has given her is her lord. She would not join the daughters of the land to agitate for gender equality in her family. How this falsehood had crept into the church and among God’s people – that some seek to make equal with the woman what God has made the head?\r\n\r\nNext we notice she covers her face with a veil (vs. 65) when she heard it was her lord. It is far gone into thin air, the subject of shamefacedness. But the Holy writ does show that woman (Godly wives) should be shamefaced. And I do make it clear that the Bible is not being traditional or outdated on the subject matter – this is an issue that will be address when this writing touches majorly on the young women.\r\n\r\nAnd further, <em>young men</em>, be admonished by these. Of making many books there is no end… for a word is enough for the wise.', 'TO MY YOUNG PEOPLE: before you meet her', '', 'publish', 'open', 'open', '', 'to-my-young-people-before-you-meet-her', '', '', '2018-07-08 11:15:37', '2018-07-08 11:15:37', '', 0, 'http://localhost/wordpress/?p=113', 0, 'post', '', 0),
(114, 1, '2018-07-08 11:07:40', '2018-07-08 11:07:40', '', 'IMAG0162', '', 'inherit', 'open', 'closed', '', 'imag0162', '', '', '2018-07-08 11:07:40', '2018-07-08 11:07:40', '', 113, 'http://localhost/wordpress/wp-content/uploads/2018/07/IMAG0162.jpg', 0, 'attachment', 'image/jpeg', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(115, 1, '2018-07-08 11:08:55', '2018-07-08 11:08:55', '<strong>Genesis 24</strong><img class=\" wp-image-114 alignright\" src=\"http://localhost/wordpress/wp-content/uploads/2018/07/IMAG0162-300x180.jpg\" alt=\"\" width=\"438\" height=\"263\" />\r\n\r\nAbraham had entrusted the task or responsibility of getting a wife for his son to his eldest servant. Not to say much of what that means, the eldest servant we believer had enough of discernment, and training under the patriarch to function in the capacity he had been charged.\r\n\r\nThe old Abraham had to charge his servant by oath, God being the witness. This was a griever matter than the covenant Abraham had made with Abimelech where he brought seven eve lambs (Genesis 21: 28). Here the servant was ask to place his hands under the thigh of Abraham – a man God had made great, whom the children of Heth called lord (Genesis 23:6). The servant was to feel the weight of the thigh of the man who is the father of them who believe by faith, a man who had sojourn on many lands, a friend of God (Isaiah 51:2; Genesis 23:4). At the point of taking hold of Abraham’s thigh he knew the weight of his master’s heart on the matter. Abraham was now close to his grave – he was well stricken in age, a man of many experiences. As he held Abraham’s thigh he understood that he was to make a decisions God made for Adam in Eden when he brought Eve to Adam. The whole task of finding a wife (for Isaac) was on him. Abraham had taken Sarah as wife having known her from childhood. This servant knew that in less than a moment he would be required to take to wife for Isaac a woman he had never met. How he would need discernment, diligence and a trained eyes and heart? …”thou shalt not take a wife unto my son of the daughters of the Canaanites among whom I dwell”. The grey-hair man said. He had known God, and his covenant; a circumcised man. The people of the land were kind and good to Abraham (Genesis 23). Their daughters could be educated and fair, and the people would be willing to give Abraham their daughters in marriage. But nothing qualifies enough for such decision. Not under any circumstance should a wife be taken from among the people Abraham dwelt was the oath. How many Christians still believe that they can marry from ‘the world’? They would say ‘I love her’, ‘I will convert her’, and like Samson, ‘she pleaseth me well’. And they know not that they cause God when they implied by action that the bone of their bones and the flesh of their flesh is not wash and redeem by the blood of Jesus. Son, do you neglect the words of your father and be equally yoked with unbelievers, or do you mingle and corrupt the holy seed in that you take to wife their daughters? (Ezra 9: 2)\r\n\r\nSome may say the unbelieving wife is sanctified by her believing husband: and that is true when the believing husband had married his unbelieving wife as an unbelieving husband. For what fellowship has light with darkness that the redeemed of God should love the daughters or sons of Belial? The question is do you seek your will or the will of God?\r\n\r\nAnd the servant having left his master was alone, remembered as he was trained, prayed. It shocks to know that in a great decision like this many do not pray. Some pray and yet do not pray through. Some grow weary and others drown in the sea of emotion. He would not cast off his discipline. Why would he flirt and roll from one side of his bed to the other burning with passion? For before he had met the damsel he had prayed. I ask, do you pray? He knew his master very well. Abraham would not take the damsel out, neither would he give gifts. He would pray! Why some may feel if she be a daughter of God why pray? They say ‘she is spiritual’ and would not pray. We learnt not so from the patriarch nor the Apostles who said “Thou, Lord which knowest the hearts of all men, shew whether of these two thou hast chosen”. The servant of Abraham would not let his eyes lead his heart, like some do, (Job 31:7) therefore he prayed. He knew whoever he is led to choose will bear the seed of God and birth forth the promise of God to his master. He was dealing with an issue on which the covenant and promise of God, and the people of God and the people of Israel even the Christ hung. He prayed – you see it was not trivial. None is of a purer theology that before you meet man you should meet God. I ask again, do you pray?\r\n\r\nHe prayed for a wife not a girl. He didn’t pray a vain prayer. Like the Pharisee do. It was fervent and earnest as prayers ought to. She should be one who can draw water from the well – a help meet, as Jacob too had met Leah, One who can stoop. She should be able to bear the seed of promise as Elizabeth knew of Mary and confessed “…the mother of my Lord should come to me”. He prayed that one who was able to bear his lord unborn, Jacob who is to be Israel; a patriarch in whom the twelve tribes would emerge should come to him. The destiny of the whole of the nation of Israel to be was in the balance, so he prayed fervently as Christ would do at Gethsemane and God heard him in that he made a woman and brought her unto the man.\r\n\r\nRebekah was made for Isaac. Rebekah not knowing she was an answer to prayers had quickly fit in the scene of play as a virtuous woman. She was birth forth by prayer for who can find a virtuous woman?\r\n\r\nI draw your attention to this friend, though the servant had prayed, he did not close his eyes. They were wide open, not for sensual use as we were told Rebekah was fair to look upon, but to behold the wonders of God. For whatever the Lord does it is marvelous in our sight. I do say as an English Reverend told his son “when you go to find her watch and pray”. This servant of Abraham had cast off all distractions and has passed the stage of ‘pray and go to bed’, as I was told by a sister. He looked as he sees his own prayer been answered before his eyes. Some pray and close their eyes yet they say I find a wife. When we pray let us watch to see what God is doing and know if need be we intensify our prayers or close in praise. It was not of doubt or lack of trust to pray and watch but we do well to know whether the Lord had made our journey prosperous or not.\r\n\r\n“… whose daughter art thou”? Now it was time to know who this fair damsel. It was, as I see, safe now to meet the damsel and give gifts. He had been with God. He withholds not what love would do – to give. It was safe now for he had put God before emotion or any attachment. It was time to go get her. He need not delay any further. He and seen her, he had tried her and it was time to take her home. Some would say ‘I will marry you’ and then go to enquire of God “is she the one?” They put the cart before the horse. Not this servant of Abraham, he would not move men before moving the heart of God. I make it plain that this man would not keep a damsel but make haste to meet her father. He knew there was no point tempting the devil and working that which is unlawful as some do with their bodies.\r\n\r\nSee, he sealed the testimony with worship (vs. 27). He would not forget in hurry like a heart merry with wine or like the nine lepers what God had done for him. The excitement of a beautiful damsel would not fade this to the background. We do not learn yet who this servant was, whether he was Eliezer (Genesis 15:2) or some other. But he introduced himself as a servant of Abraham. It is this Abraham whose name God had made great (Genesis 12:2). ‘Abraham’, a singular name need not be called Tehrah Abraham, or Dr Abraham or Rev. Dr Abraham (JP). He needs not all that. All you need call was ‘Abraham’ and we know who you spoke of.\r\n\r\nGod has made his name great, and this servant it sufficed him to say ‘I am Abraham’s servant’. Moreover, he was there for none other than Abraham’s. How many young men want to make a name before they step out? They want a title and great fortunes. Some though not having any of these lay false claims to it and think it is of any good to impress the damsel or her family like this. God loves the humble and let us like Abraham’s servant and the Apostle Paul say … I am a servant of Jesus. Marriage is honourable and he that finds a wife finds a good thing and obtains favour from the Lord. Marriage is beyond pleasure seeking. It is two coming together to fulfill God’s mandate on earth. They join in spirit to achieve a common assignment. It is done with the consent of both families.\r\n\r\nIn verse 52 and 53 we observe this servant worship the Lord again. His is a grateful heart. And also we note that he did all necessary appreciation and tender gifts and payment to receive the parents blessing (vs. 60).\r\n\r\nRebekah when she was called to seek her consent she flinch not but said “I will go”. What a prompt reply and accurate discernment: she was prepared for God’s best? She is a woman; the choice was not to be made for her. She perhaps had prayed and knew God’s mind on the matter and her life. She was prepared for marriage and when the time came she had her answers. Rebekah indeed was a virtuous woman not just beautiful. We know how well it is spoken of her in Proverbs 31.\r\n\r\nShe did something that would draw the attention of every diligent reader. In verse 64 it said that when she saw Isaac she lighted off her Camel. Rebekah was not a woman who would meet a man and remained on her camel. What woman wants peace at home and yet seeks to captain the ship? Are there not some who nurse the intention that someday they will ascend above the heights of the cloud, and within the thought burns quietly: “… I will be like the most High”. Rebekah would rather put off her educational qualification, her social status, her ‘spirituality’, and whatever she had attained and submit to the man. When it is marriage, she knows well that the man, whoever is the Lord has given her is her lord. She would not join the daughters of the land to agitate for gender equality in her family. How this falsehood had crept into the church and among God’s people – that some seek to make equal with the woman what God has made the head?\r\n\r\nNext we notice she covers her face with a veil (vs. 65) when she heard it was her lord. It is far gone into thin air, the subject of shamefacedness. But the Holy writ does show that woman (Godly wives) should be shamefaced. And I do make it clear that the Bible is not being traditional or outdated on the subject matter – this is an issue that will be address when this writing touches majorly on the young women.\r\n\r\nAnd further, <em>young men</em>, be admonished by these. Of making many books there is no end… for a word is enough for the wise.', 'TO MY YOUNG PEOPLE: before you meet her', '', 'inherit', 'closed', 'closed', '', '113-revision-v1', '', '', '2018-07-08 11:08:55', '2018-07-08 11:08:55', '', 113, 'http://localhost/wordpress/2018/07/08/113-revision-v1/', 0, 'revision', '', 0),
(116, 1, '2018-07-08 11:14:59', '2018-07-08 11:14:59', '<strong>Genesis 24</strong>\r\n\r\nAbraham had entrusted the task or responsibility of getting a wife for his son to his eldest servant. Not to say much of what that means, the eldest servant we believer had enough of discernment, and training under the patriarch to function in the capacity he had been charged.\r\n\r\nThe old Abraham had to charge his servant by oath, God being the witness. This was a griever matter than the covenant Abraham had made with Abimelech where he brought seven eve lambs (Genesis 21: 28). Here the servant was ask to place his hands under the thigh of Abraham – a man God had made great, whom the children of Heth called lord (Genesis 23:6). The servant was to feel the weight of the thigh of the man who is the father of them who believe by faith, a man who had sojourn on many lands, a friend of God (Isaiah 51:2; Genesis 23:4). At the point of taking hold of Abraham’s thigh he knew the weight of his master’s heart on the matter. Abraham was now close to his grave – he was well stricken in age, a man of many experiences. As he held Abraham’s thigh he understood that he was to make a decisions God made for Adam in Eden when he brought Eve to Adam. The whole task of finding a wife (for Isaac) was on him. Abraham had taken Sarah as wife having known her from childhood. This servant knew that in less than a moment he would be required to take to wife for Isaac a woman he had never met. How he would need discernment, diligence and a trained eyes and heart? …”thou shalt not take a wife unto my son of the daughters of the Canaanites among whom I dwell”. The grey-hair man said. He had known God, and his covenant; a circumcised man. The people of the land were kind and good to Abraham (Genesis 23). Their daughters could be educated and fair, and the people would be willing to give Abraham their daughters in marriage. But nothing qualifies enough for such decision. Not under any circumstance should a wife be taken from among the people Abraham dwelt was the oath. How many Christians still believe that they can marry from ‘the world’? They would say ‘I love her’, ‘I will convert her’, and like Samson, ‘she pleaseth me well’. And they know not that they cause God when they implied by action that the bone of their bones and the flesh of their flesh is not wash and redeem by the blood of Jesus. Son, do you neglect the words of your father and be equally yoked with unbelievers, or do you mingle and corrupt the holy seed in that you take to wife their daughters? (Ezra 9: 2)\r\n\r\nSome may say the unbelieving wife is sanctified by her believing husband: and that is true when the believing husband had married his unbelieving wife as an unbelieving husband. For what fellowship has light with darkness that the redeemed of God should love the daughters or sons of Belial? The question is do you seek your will or the will of God?\r\n\r\nAnd the servant having left his master was alone, remembered as he was trained, prayed. It shocks to know that in a great decision like this many do not pray. Some pray and yet do not pray through. Some grow weary and others drown in the sea of emotion. He would not cast off his discipline. Why would he flirt and roll from one side of his bed to the other burning with passion? For before he had met the damsel he had prayed. I ask, do you pray? He knew his master very well. Abraham would not take the damsel out, neither would he give gifts. He would pray! Why some may feel if she be a daughter of God why pray? They say ‘she is spiritual’ and would not pray. We learnt not so from the patriarch nor the Apostles who said “Thou, Lord which knowest the hearts of all men, shew whether of these two thou hast chosen”. The servant of Abraham would not let his eyes lead his heart, like some do, (Job 31:7) therefore he prayed. He knew whoever he is led to choose will bear the seed of God and birth forth the promise of God to his master. He was dealing with an issue on which the covenant and promise of God, and the people of God and the people of Israel even the Christ hung. He prayed – you see it was not trivial. None is of a purer theology that before you meet man you should meet God. I ask again, do you pray?\r\n\r\nHe prayed for a wife not a girl. He didn’t pray a vain prayer. Like the Pharisee do. It was fervent and earnest as prayers ought to. She should be one who can draw water from the well – a help meet, as Jacob too had met Leah, One who can stoop. She should be able to bear the seed of promise as Elizabeth knew of Mary and confessed “…the mother of my Lord should come to me”. He prayed that one who was able to bear his lord unborn, Jacob who is to be Israel; a patriarch in whom the twelve tribes would emerge should come to him. The destiny of the whole of the nation of Israel to be was in the balance, so he prayed fervently as Christ would do at Gethsemane and God heard him in that he made a woman and brought her unto the man.\r\n\r\nRebekah was made for Isaac. Rebekah not knowing she was an answer to prayers had quickly fit in the scene of play as a virtuous woman. She was birth forth by prayer for who can find a virtuous woman?\r\n\r\nI draw your attention to this friend, though the servant had prayed, he did not close his eyes. They were wide open, not for sensual use as we were told Rebekah was fair to look upon, but to behold the wonders of God. For whatever the Lord does it is marvelous in our sight. I do say as an English Reverend told his son “when you go to find her watch and pray”. This servant of Abraham had cast off all distractions and has passed the stage of ‘pray and go to bed’, as I was told by a sister. He looked as he sees his own prayer been answered before his eyes. Some pray and close their eyes yet they say I find a wife. When we pray let us watch to see what God is doing and know if need be we intensify our prayers or close in praise. It was not of doubt or lack of trust to pray and watch but we do well to know whether the Lord had made our journey prosperous or not.\r\n\r\n“… whose daughter art thou”? Now it was time to know who this fair damsel. It was, as I see, safe now to meet the damsel and give gifts. He had been with God. He withholds not what love would do – to give. It was safe now for he had put God before emotion or any attachment. It was time to go get her. He need not delay any further. He and seen her, he had tried her and it was time to take her home. Some would say ‘I will marry you’ and then go to enquire of God “is she the one?” They put the cart before the horse. Not this servant of Abraham, he would not move men before moving the heart of God. I make it plain that this man would not keep a damsel but make haste to meet her father. He knew there was no point tempting the devil and working that which is unlawful as some do with their bodies.\r\n\r\nSee, he sealed the testimony with worship (vs. 27). He would not forget in hurry like a heart merry with wine or like the nine lepers what God had done for him. The excitement of a beautiful damsel would not fade this to the background. We do not learn yet who this servant was, whether he was Eliezer (Genesis 15:2) or some other. But he introduced himself as a servant of Abraham. It is this Abraham whose name God had made great (Genesis 12:2). ‘Abraham’, a singular name need not be called Tehrah Abraham, or Dr Abraham or Rev. Dr Abraham (JP). He needs not all that. All you need call was ‘Abraham’ and we know who you spoke of.\r\n\r\nGod has made his name great, and this servant it sufficed him to say ‘I am Abraham’s servant’. Moreover, he was there for none other than Abraham’s. How many young men want to make a name before they step out? They want a title and great fortunes. Some though not having any of these lay false claims to it and think it is of any good to impress the damsel or her family like this. God loves the humble and let us like Abraham’s servant and the Apostle Paul say … I am a servant of Jesus. Marriage is honourable and he that finds a wife finds a good thing and obtains favour from the Lord. Marriage is beyond pleasure seeking. It is two coming together to fulfill God’s mandate on earth. They join in spirit to achieve a common assignment. It is done with the consent of both families.\r\n\r\nIn verse 52 and 53 we observe this servant worship the Lord again. His is a grateful heart. And also we note that he did all necessary appreciation and tender gifts and payment to receive the parents blessing (vs. 60).\r\n\r\nRebekah when she was called to seek her consent she flinch not but said “I will go”. What a prompt reply and accurate discernment: she was prepared for God’s best? She is a woman; the choice was not to be made for her. She perhaps had prayed and knew God’s mind on the matter and her life. She was prepared for marriage and when the time came she had her answers. Rebekah indeed was a virtuous woman not just beautiful. We know how well it is spoken of her in Proverbs 31.\r\n\r\nShe did something that would draw the attention of every diligent reader. In verse 64 it said that when she saw Isaac she lighted off her Camel. Rebekah was not a woman who would meet a man and remained on her camel. What woman wants peace at home and yet seeks to captain the ship? Are there not some who nurse the intention that someday they will ascend above the heights of the cloud, and within the thought burns quietly: “… I will be like the most High”. Rebekah would rather put off her educational qualification, her social status, her ‘spirituality’, and whatever she had attained and submit to the man. When it is marriage, she knows well that the man, whoever is the Lord has given her is her lord. She would not join the daughters of the land to agitate for gender equality in her family. How this falsehood had crept into the church and among God’s people – that some seek to make equal with the woman what God has made the head?\r\n\r\nNext we notice she covers her face with a veil (vs. 65) when she heard it was her lord. It is far gone into thin air, the subject of shamefacedness. But the Holy writ does show that woman (Godly wives) should be shamefaced. And I do make it clear that the Bible is not being traditional or outdated on the subject matter – this is an issue that will be address when this writing touches majorly on the young women.\r\n\r\nAnd further, <em>young men</em>, be admonished by these. Of making many books there is no end… for a word is enough for the wise.', 'TO MY YOUNG PEOPLE: before you meet her', '', 'inherit', 'closed', 'closed', '', '113-revision-v1', '', '', '2018-07-08 11:14:59', '2018-07-08 11:14:59', '', 113, 'http://localhost/wordpress/2018/07/08/113-revision-v1/', 0, 'revision', '', 0),
(117, 1, '2018-07-08 11:16:55', '2018-07-08 11:16:55', '', 'IMG_20151101_205243', '', 'inherit', 'open', 'closed', '', 'img_20151101_205243', '', '', '2018-07-08 11:16:55', '2018-07-08 11:16:55', '', 54, 'http://localhost/wordpress/wp-content/uploads/2018/07/IMG_20151101_205243.jpg', 0, 'attachment', 'image/jpeg', 0),
(135, 1, '2018-07-10 22:25:52', '2018-07-10 22:25:52', '', 'Media', '', 'private', 'closed', 'closed', '', 'media', '', '', '2018-07-10 22:25:52', '2018-07-10 22:25:52', '', 0, 'http://localhost/wordpress/?option-tree=media', 0, 'option-tree', '', 0),
(149, 1, '2018-07-10 22:40:40', '2018-07-10 22:40:40', '<label> Your Name (required)\n    [text* your-name] </label>\n\n<label> Your Email (required)\n    [email* your-email] </label>\n\n<label> Subject\n    [text your-subject] </label>\n\n<label> Your Message\n    [textarea your-message] </label>\n\n[submit \"Send\"]\nVoice of  Pilgrims \"[your-subject]\"\n[your-name] <lekiagospel@gmail.com>\nFrom: [your-name] <[your-email]>\nSubject: [your-subject]\n\nMessage Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on Voice of  Pilgrims (http://localhost/wordpress)\nlekiagospel@gmail.com\nReply-To: [your-email]\n\n0\n0\n\nVoice of  Pilgrims \"[your-subject]\"\nVoice of  Pilgrims <lekiagospel@gmail.com>\nMessage Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on Voice of  Pilgrims (http://localhost/wordpress)\n[your-email]\nReply-To: lekiagospel@gmail.com\n\n0\n0\nThank you for your message. It has been sent.\nThere was an error trying to send your message. Please try again later.\nOne or more fields have an error. Please check and try again.\nThere was an error trying to send your message. Please try again later.\nYou must accept the terms and conditions before sending your message.\nThe field is required.\nThe field is too long.\nThe field is too short.', 'Contact form 1', '', 'publish', 'closed', 'closed', '', 'contact-form-1', '', '', '2018-07-10 22:40:40', '2018-07-10 22:40:40', '', 0, 'http://localhost/wordpress/?post_type=wpcf7_contact_form&p=149', 0, 'wpcf7_contact_form', '', 0),
(150, 1, '2018-07-10 22:41:19', '2018-07-10 22:41:19', '[wysija_page]', 'Subscription confirmation', '', 'publish', 'closed', 'closed', '', 'subscriptions', '', '', '2018-07-10 22:41:19', '2018-07-10 22:41:19', '', 0, 'http://localhost/wordpress/?wysijap=subscriptions', 0, 'wysijap', '', 0),
(151, 1, '2018-12-14 20:35:57', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2018-12-14 20:35:57', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?p=151', 0, 'post', '', 0),
(152, 1, '2018-12-14 21:13:30', '2018-12-14 21:13:30', '{\n    \"old_sidebars_widgets_data\": {\n        \"value\": {\n            \"wp_inactive_widgets\": [\n                \"tortuga-magazine-posts-boxed-3\",\n                \"meta-2\",\n                \"recent-comments-2\",\n                \"nav_menu-3\"\n            ],\n            \"sidebar\": [\n                \"search-2\",\n                \"pages-3\",\n                \"recent-posts-2\",\n                \"categories-2\",\n                \"archives-2\",\n                \"rss-3\"\n            ],\n            \"header\": [],\n            \"magazine-homepage\": []\n        },\n        \"type\": \"global_variable\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-12-14 20:43:23\"\n    },\n    \"spicepress::nav_menu_locations[primary]\": {\n        \"value\": 3,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-12-14 20:43:23\"\n    },\n    \"blossom-coach::social_links\": {\n        \"value\": \"%5B%5D\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-12-14 20:46:58\"\n    },\n    \"blossom-coach::nav_menu_locations[primary]\": {\n        \"value\": 3,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-12-14 20:46:58\"\n    },\n    \"hu_theme_options[body-background]\": {\n        \"value\": {\n            \"background-color\": \"#eaeaea\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-12-14 20:54:15\"\n    },\n    \"hueman::nav_menu_locations[header]\": {\n        \"value\": 3,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-12-14 20:54:15\"\n    },\n    \"powerwp::nav_menu_locations[primary]\": {\n        \"value\": 3,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-12-14 21:13:30\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'f4da309d-bae2-4454-bac5-410660a29b09', '', '', '2018-12-14 21:13:30', '2018-12-14 21:13:30', '', 0, 'http://localhost/wordpress/?p=152', 0, 'customize_changeset', '', 0),
(153, 1, '2018-12-14 21:17:01', '2018-12-14 21:17:01', '{\n    \"old_sidebars_widgets_data\": {\n        \"value\": {\n            \"wp_inactive_widgets\": [\n                \"tortuga-magazine-posts-boxed-3\",\n                \"meta-2\",\n                \"recent-comments-2\",\n                \"nav_menu-3\"\n            ],\n            \"sidebar\": [\n                \"search-2\",\n                \"pages-3\",\n                \"recent-posts-2\",\n                \"categories-2\",\n                \"archives-2\",\n                \"rss-3\"\n            ],\n            \"header\": [],\n            \"magazine-homepage\": []\n        },\n        \"type\": \"global_variable\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-12-14 21:16:18\"\n    },\n    \"business-key::nav_menu_locations[menu-1]\": {\n        \"value\": 3,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-12-14 21:16:18\"\n    },\n    \"news-portal::nav_menu_locations[news_portal_primary_menu]\": {\n        \"value\": 3,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-12-14 21:17:01\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '1e042d10-ee13-4255-a176-ddaadc1a3e45', '', '', '2018-12-14 21:17:01', '2018-12-14 21:17:01', '', 0, 'http://localhost/wordpress/?p=153', 0, 'customize_changeset', '', 0),
(154, 1, '2018-12-14 21:22:16', '2018-12-14 21:22:16', '{\n    \"old_sidebars_widgets_data\": {\n        \"value\": {\n            \"wp_inactive_widgets\": [\n                \"tortuga-magazine-posts-boxed-3\",\n                \"meta-2\",\n                \"recent-comments-2\",\n                \"nav_menu-3\"\n            ],\n            \"sidebar\": [\n                \"search-2\",\n                \"pages-3\",\n                \"recent-posts-2\",\n                \"categories-2\",\n                \"archives-2\",\n                \"rss-3\"\n            ],\n            \"header\": [],\n            \"magazine-homepage\": []\n        },\n        \"type\": \"global_variable\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-12-14 21:22:03\"\n    },\n    \"colormag::nav_menu_locations[primary]\": {\n        \"value\": 3,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-12-14 21:22:03\"\n    },\n    \"drizzle-mag::nav_menu_locations[primary]\": {\n        \"value\": 3,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-12-14 21:22:15\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'a21effd3-930d-4787-b836-b473a9c0db6c', '', '', '2018-12-14 21:22:16', '2018-12-14 21:22:16', '', 0, 'http://localhost/wordpress/?p=154', 0, 'customize_changeset', '', 0),
(155, 1, '2018-12-14 21:26:02', '2018-12-14 21:26:02', '{\n    \"old_sidebars_widgets_data\": {\n        \"value\": {\n            \"wp_inactive_widgets\": [\n                \"tortuga-magazine-posts-boxed-3\",\n                \"meta-2\",\n                \"recent-comments-2\",\n                \"nav_menu-3\"\n            ],\n            \"sidebar\": [\n                \"search-2\",\n                \"pages-3\",\n                \"recent-posts-2\",\n                \"categories-2\",\n                \"archives-2\",\n                \"rss-3\"\n            ],\n            \"header\": [],\n            \"magazine-homepage\": []\n        },\n        \"type\": \"global_variable\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-12-14 21:26:02\"\n    },\n    \"fleming::nav_menu_locations[primary]\": {\n        \"value\": 3,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-12-14 21:26:02\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '86bb0917-16ed-4927-bd2a-18be81ffc451', '', '', '2018-12-14 21:26:02', '2018-12-14 21:26:02', '', 0, 'http://localhost/wordpress/2018/12/14/86bb0917-16ed-4927-bd2a-18be81ffc451/', 0, 'customize_changeset', '', 0),
(156, 1, '2018-12-14 21:27:58', '2018-12-14 21:27:58', '{\n    \"old_sidebars_widgets_data\": {\n        \"value\": {\n            \"wp_inactive_widgets\": [\n                \"tortuga-magazine-posts-boxed-3\",\n                \"meta-2\",\n                \"recent-comments-2\",\n                \"nav_menu-3\"\n            ],\n            \"sidebar\": [\n                \"search-2\",\n                \"pages-3\",\n                \"recent-posts-2\",\n                \"categories-2\",\n                \"archives-2\",\n                \"rss-3\"\n            ],\n            \"header\": [],\n            \"magazine-homepage\": []\n        },\n        \"type\": \"global_variable\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-12-14 21:27:35\"\n    },\n    \"cleanse::nav_menu_locations[primary]\": {\n        \"value\": 3,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-12-14 21:27:35\"\n    },\n    \"onepress::nav_menu_locations[primary]\": {\n        \"value\": 3,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-12-14 21:27:58\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'fad16cf9-c2d3-4c18-b66a-821b5b126144', '', '', '2018-12-14 21:27:58', '2018-12-14 21:27:58', '', 0, 'http://localhost/wordpress/?p=156', 0, 'customize_changeset', '', 0),
(157, 1, '2018-12-14 21:29:43', '2018-12-14 21:29:43', '{\n    \"old_sidebars_widgets_data\": {\n        \"value\": {\n            \"wp_inactive_widgets\": [\n                \"tortuga-magazine-posts-boxed-3\",\n                \"meta-2\",\n                \"recent-comments-2\",\n                \"nav_menu-3\"\n            ],\n            \"sidebar\": [\n                \"search-2\",\n                \"pages-3\",\n                \"recent-posts-2\",\n                \"categories-2\",\n                \"archives-2\",\n                \"rss-3\"\n            ],\n            \"header\": [],\n            \"magazine-homepage\": []\n        },\n        \"type\": \"global_variable\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-12-14 21:29:30\"\n    },\n    \"spicepress::nav_menu_locations[primary]\": {\n        \"value\": 3,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-12-14 21:29:30\"\n    },\n    \"drizzle-mag::nav_menu_locations[primary]\": {\n        \"value\": 3,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-12-14 21:29:42\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '1a23304c-3021-4f7f-99f6-364f3cd92489', '', '', '2018-12-14 21:29:43', '2018-12-14 21:29:43', '', 0, 'http://localhost/wordpress/?p=157', 0, 'customize_changeset', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorized', 'uncategorized', 0),
(2, 'Christian Living', 'christian-living', 0),
(3, 'About Us', 'about-us', 0),
(4, 'PersonalDe', 'personalde', 0),
(5, 'Personal Development', 'personal-development', 0),
(6, 'Leadership', 'leadership', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(7, 2, 0),
(16, 3, 0),
(21, 3, 0),
(24, 3, 0),
(34, 3, 0),
(54, 5, 0),
(57, 5, 0),
(57, 6, 0),
(113, 2, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_taxonomy`
--

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 1),
(2, 2, 'category', '', 0, 2),
(3, 3, 'nav_menu', '', 0, 4),
(4, 4, 'category', '', 0, 0),
(5, 5, 'category', '', 0, 2),
(6, 6, 'post_tag', '', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'yiga'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'syntax_highlighting', 'true'),
(7, 1, 'comment_shortcuts', 'false'),
(8, 1, 'admin_color', 'fresh'),
(9, 1, 'use_ssl', '0'),
(10, 1, 'show_admin_bar_front', 'true'),
(11, 1, 'locale', ''),
(12, 1, 'wp_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(13, 1, 'wp_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', 'wp496_privacy,addtoany_settings_pointer'),
(16, 1, 'show_welcome_panel', '1'),
(17, 1, 'session_tokens', 'a:1:{s:64:\"4ade57719c914ce923cc80abc9df2792e35d5343d97c590472d70895b03c8b22\";a:4:{s:10:\"expiration\";i:1544992550;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:73:\"Mozilla/5.0 (Windows NT 10.0; WOW64; rv:63.0) Gecko/20100101 Firefox/63.0\";s:5:\"login\";i:1544819750;}}'),
(18, 1, 'wp_dashboard_quick_press_last_post_id', '151'),
(19, 1, 'aioseop_seen_about_page', '2.5'),
(20, 1, 'wp_user-settings', 'mfold=o&libraryContent=browse'),
(21, 1, 'wp_user-settings-time', '1530879034'),
(22, 1, 'nav_menu_recently_edited', '3'),
(23, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}'),
(24, 1, 'metaboxhidden_nav-menus', 'a:2:{i:0;s:12:\"add-post_tag\";i:1;s:15:\"add-post_format\";}'),
(25, 1, 'wp_media_library_mode', 'list'),
(26, 1, 'closedpostboxes_post', 'a:0:{}'),
(27, 1, 'metaboxhidden_post', 'a:7:{i:0;s:11:\"postexcerpt\";i:1;s:13:\"trackbacksdiv\";i:2;s:10:\"postcustom\";i:3;s:16:\"commentstatusdiv\";i:4;s:11:\"commentsdiv\";i:5;s:7:\"slugdiv\";i:6;s:9:\"authordiv\";}'),
(29, 1, '_yoast_wpseo_profile_updated', '1544822990'),
(30, 1, 'hu_last_tgmpa_notice', 'a:2:{s:7:\"version\";s:5:\"3.4.0\";s:13:\"dismiss_count\";i:0;}'),
(31, 1, 'wysija_pref', 'YTowOnt9'),
(32, 1, 'wp_yoast_notifications', 'a:3:{i:0;a:2:{s:7:\"message\";s:1075:\"We\'ve noticed you\'ve been using Yoast SEO for some time now; we hope you love it! We\'d be thrilled if you could <a href=\"https://yoa.st/rate-yoast-seo?php_version=7.2.6&platform=wordpress&platform_version=4.9.6&software=free&software_version=7.7.3&role=administrator\">give us a 5 stars rating on WordPress.org</a>!\n\nIf you are experiencing issues, <a href=\"https://yoa.st/bugreport?php_version=7.2.6&platform=wordpress&platform_version=4.9.6&software=free&software_version=7.7.3&role=administrator\">please file a bug report</a> and we\'ll do our best to help you out.\n\nBy the way, did you know we also have a <a href=\'https://yoa.st/premium-notification?php_version=7.2.6&platform=wordpress&platform_version=4.9.6&software=free&software_version=7.7.3&role=administrator\'>Premium plugin</a>? It offers advanced features, like a redirect manager and support for multiple keywords. It also comes with 24/7 personal support.\n\n<a class=\"button\" href=\"http://localhost/wordpress/wp-admin/?page=wpseo_dashboard&yoast_dismiss=upsell\">Please don\'t show me this notification anymore</a>\";s:7:\"options\";a:9:{s:4:\"type\";s:7:\"warning\";s:2:\"id\";s:19:\"wpseo-upsell-notice\";s:5:\"nonce\";N;s:8:\"priority\";d:0.8;s:9:\"data_json\";a:0:{}s:13:\"dismissal_key\";N;s:12:\"capabilities\";s:20:\"wpseo_manage_options\";s:16:\"capability_check\";s:3:\"all\";s:14:\"yoast_branding\";b:0;}}i:1;a:2:{s:7:\"message\";s:169:\"Don\'t miss your crawl errors: <a href=\"http://localhost/wordpress/wp-admin/admin.php?page=wpseo_search_console&tab=settings\">connect with Google Search Console here</a>.\";s:7:\"options\";a:9:{s:4:\"type\";s:7:\"warning\";s:2:\"id\";s:17:\"wpseo-dismiss-gsc\";s:5:\"nonce\";N;s:8:\"priority\";d:0.5;s:9:\"data_json\";a:0:{}s:13:\"dismissal_key\";N;s:12:\"capabilities\";s:20:\"wpseo_manage_options\";s:16:\"capability_check\";s:3:\"all\";s:14:\"yoast_branding\";b:0;}}i:2;a:2:{s:7:\"message\";s:223:\"<strong>Huge SEO Issue: You\'re blocking access to robots.</strong> You must <a href=\"http://localhost/wordpress/wp-admin/options-reading.php\">go to your Reading Settings</a> and uncheck the box for Search Engine Visibility.\";s:7:\"options\";a:9:{s:4:\"type\";s:5:\"error\";s:2:\"id\";s:32:\"wpseo-dismiss-blog-public-notice\";s:5:\"nonce\";N;s:8:\"priority\";i:1;s:9:\"data_json\";a:0:{}s:13:\"dismissal_key\";N;s:12:\"capabilities\";s:20:\"wpseo_manage_options\";s:16:\"capability_check\";s:3:\"all\";s:14:\"yoast_branding\";b:0;}}}');

-- --------------------------------------------------------

--
-- Table structure for table `wp_users`
--

CREATE TABLE `wp_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'yiga', '$P$Btbr1WcVfoEiyQ7J7BFvsv3ii8Qjs1/', 'yiga', 'lekiagospel@gmail.com', '', '2018-06-28 08:25:57', '', 0, 'yiga');

-- --------------------------------------------------------

--
-- Table structure for table `wp_wysija_campaign`
--

CREATE TABLE `wp_wysija_campaign` (
  `campaign_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(250) DEFAULT NULL,
  `description` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wp_wysija_campaign`
--

INSERT INTO `wp_wysija_campaign` (`campaign_id`, `name`, `description`) VALUES
(1, '5 Minute User Guide', '');

-- --------------------------------------------------------

--
-- Table structure for table `wp_wysija_campaign_list`
--

CREATE TABLE `wp_wysija_campaign_list` (
  `list_id` int(10) UNSIGNED NOT NULL,
  `campaign_id` int(10) UNSIGNED NOT NULL,
  `filter` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `wp_wysija_custom_field`
--

CREATE TABLE `wp_wysija_custom_field` (
  `id` mediumint(9) NOT NULL,
  `name` tinytext NOT NULL,
  `type` tinytext NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT '0',
  `settings` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `wp_wysija_email`
--

CREATE TABLE `wp_wysija_email` (
  `email_id` int(10) UNSIGNED NOT NULL,
  `campaign_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `subject` varchar(250) NOT NULL DEFAULT '',
  `body` longtext,
  `created_at` int(10) UNSIGNED DEFAULT NULL,
  `modified_at` int(10) UNSIGNED DEFAULT NULL,
  `sent_at` int(10) UNSIGNED DEFAULT NULL,
  `from_email` varchar(250) DEFAULT NULL,
  `from_name` varchar(250) DEFAULT NULL,
  `replyto_email` varchar(250) DEFAULT NULL,
  `replyto_name` varchar(250) DEFAULT NULL,
  `attachments` text,
  `status` tinyint(4) NOT NULL DEFAULT '0',
  `type` tinyint(4) NOT NULL DEFAULT '1',
  `number_sent` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `number_opened` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `number_clicked` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `number_unsub` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `number_bounce` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `number_forward` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `params` text,
  `wj_data` longtext,
  `wj_styles` longtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wp_wysija_email`
--

INSERT INTO `wp_wysija_email` (`email_id`, `campaign_id`, `subject`, `body`, `created_at`, `modified_at`, `sent_at`, `from_email`, `from_name`, `replyto_email`, `replyto_name`, `attachments`, `status`, `type`, `number_sent`, `number_opened`, `number_clicked`, `number_unsub`, `number_bounce`, `number_forward`, `params`, `wj_data`, `wj_styles`) VALUES
(1, 1, '5 Minute User Guide', '<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Strict//EN\" \"http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd\">\n<html xmlns=\"http://www.w3.org/1999/xhtml\"  >\n<head>\n    <meta http-equiv=\"Content-Type\" content=\"text/html;charset=utf-8\" />\n    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\"/>\n    <title>5 Minute User Guide</title>\n    <style type=\"text/css\">body {\n        width:100% !important;\n        -webkit-text-size-adjust:100%;\n        -ms-text-size-adjust:100%;\n        margin:0;\n        padding:0;\n    }\n\n    body,table,td,p,a,li,blockquote{\n        -ms-text-size-adjust:100%;\n        -webkit-text-size-adjust:100%;\n    }\n\n    .ReadMsgBody{\n        width:100%;\n    }.ExternalClass {width:100%;}.ExternalClass, .ExternalClass p, .ExternalClass span, .ExternalClass font, .ExternalClass td, .ExternalClass div {line-height: 100%;}#backgroundTable {margin:0; padding:0; width:100% !important; line-height: 100% !important; background:#e8e8e8;}img {\n        outline:none;\n        text-decoration:none;\n        -ms-interpolation-mode: bicubic;\n    }\n    a img {border:none;}\n    .image_fix {display:block;}p {\n        font-family: \"Arial\";\n        font-size: 16px;\n        line-height: 150%;\n        margin: 1em 0;\n        padding: 0;\n    }h1,h2,h3,h4,h5,h6{\n        margin:0;\n        padding:0;\n    }h1 {\n        color:#000000 !important;\n        display:block;\n        font-family:Trebuchet MS;\n        font-size:40px;\n        font-style:normal;\n        font-weight:normal;\n        line-height:125%;\n        letter-spacing:normal;\n        margin:0;\n        \n        text-align:left;\n    }h2 {\n        color:#424242 !important;\n        display:block;\n        font-family:Trebuchet MS;\n        font-size:30px;\n        font-style:normal;\n        font-weight:normal;\n        line-height:125%;\n        letter-spacing:normal;\n        margin:0;\n        \n        text-align:left;\n    }h3 {\n        color:#424242 !important;\n        display:block;\n        font-family:Trebuchet MS;\n        font-size:24px;\n        font-style:normal;\n        font-weight:normal;\n        line-height:125%;\n        letter-spacing:normal;\n        margin:0;\n        \n        text-align:left;\n    }table td {border-collapse: collapse; mso-table-lspace: 0pt; mso-table-rspace: 0pt;}table { border-collapse:collapse; mso-table-lspace:0pt; mso-table-rspace:0pt; }a {\n        color:#4a91b0;\n        word-wrap:break-word;\n    }\n    #outlook a {padding:0;}\n    .yshortcuts { color:#4a91b0; }\n\n    #wysija_wrapper {\n        background:#e8e8e8;\n        color:#000000;\n        font-family:\"Arial\";\n        font-size:16px;\n        -webkit-text-size-adjust:100%;\n        -ms-text-size-adjust:100%;\n        \n    }\n\n    .wysija_header_container {\n        mso-border-right-alt: 0;\n        mso-border-left-alt: 0;\n        mso-border-top-alt: 0;\n        mso-border-bottom-alt: 0;\n        \n    }\n\n    .wysija_block {\n        mso-border-right-alt: 0;\n        mso-border-left-alt: 0;\n        mso-border-top-alt: 0;\n        mso-border-bottom-alt: 0;\n        background:#ffffff;\n    }\n\n    .wysija_footer_container {\n        mso-border-right-alt: 0;\n        mso-border-left-alt: 0;\n        mso-border-top-alt: 0;\n        mso-border-bottom-alt: 0;\n        \n    }\n\n    .wysija_viewbrowser_container, .wysija_viewbrowser_container a {\n        font-family: \"Arial\" !important;\n        font-size: 12px !important;\n        color: #000000 !important;\n    }\n    .wysija_unsubscribe_container, .wysija_unsubscribe_container a {\n        text-align:center;\n        color: #000000 !important;\n        font-size:12px;\n    }\n    .wysija_viewbrowser_container a, .wysija_unsubscribe_container a {\n        text-decoration:underline;\n    }\n    .wysija_list_item {\n        margin:0;\n    }@media only screen and (max-device-width: 480px), screen and (max-width: 480px) {a[href^=\"tel\"], a[href^=\"sms\"] {\n            text-decoration: none;\n            color: #4a91b0;pointer-events: none;\n            cursor: default;\n        }\n\n        .mobile_link a[href^=\"tel\"], .mobile_link a[href^=\"sms\"] {\n            text-decoration: default;\n            color: #4a91b0 !important;\n            pointer-events: auto;\n            cursor: default;\n        }body, table, td, p, a, li, blockquote { -webkit-text-size-adjust:none !important; }body{ width:100% !important; min-width:100% !important; }\n    }@media only screen and (min-device-width: 768px) and (max-device-width: 1024px), screen and (min-width: 768px) and (max-width: 1024px) {a[href^=\"tel\"],\n        a[href^=\"sms\"] {\n            text-decoration: none;\n            color: #4a91b0;pointer-events: none;\n            cursor: default;\n        }\n\n        .mobile_link a[href^=\"tel\"], .mobile_link a[href^=\"sms\"] {\n            text-decoration: default;\n            color: #4a91b0 !important;\n            pointer-events: auto;\n            cursor: default;\n        }\n    }\n\n    @media only screen and (-webkit-min-device-pixel-ratio: 2) {\n    }@media only screen and (-webkit-device-pixel-ratio:.75){}\n    @media only screen and (-webkit-device-pixel-ratio:1){}\n    @media only screen and (-webkit-device-pixel-ratio:1.5){}</style><!--[if IEMobile 7]>\n<style type=\"text/css\">\n\n</style>\n<![endif]--><!--[if gte mso 9]>\n<style type=\"text/css\">.wysija_image_container {\n        padding-top:0 !important;\n    }\n    .wysija_image_placeholder {\n        mso-text-raise:0;\n        mso-table-lspace:0;\n        mso-table-rspace:0;\n        margin-bottom: 0 !important;\n    }\n    .wysija_block .wysija_image_placeholder {\n        margin:2px 1px 0 1px !important;\n    }\n    p {\n        line-height: 110% !important;\n    }\n    h1, h2, h3 {\n        line-height: 110% !important;\n        margin:0 !important;\n        padding: 0 !important;\n    }\n</style>\n<![endif]-->\n\n<!--[if gte mso 15]>\n<style type=\"text/css\">table { font-size:1px; mso-line-height-alt:0; line-height:0; mso-margin-top-alt:0; }\n    tr { font-size:1px; mso-line-height-alt:0; mso-margin-top-alt:1px; }\n</style>\n<![endif]-->\n\n</head>\n<body bgcolor=\"#e8e8e8\" yahoo=\"fix\">\n    <span style=\"margin-bottom:0;margin-left:0;margin-right:0;margin-top:0;padding-bottom:0;padding-left:0;padding-right:0;padding-top:0;display:block;background:#e8e8e8;\">\n    <table width=\"100%\" cellpadding=\"0\" cellspacing=\"0\" border=\"0\" id=\"wysija_wrapper\">\n        <tr>\n            <td valign=\"top\" align=\"center\">\n                <table width=\"600\" cellpadding=\"0\" cellspacing=\"0\" border=\"0\" align=\"center\">\n                    \n                    <tr>\n                        <td width=\"600\" style=\"min-width:600px;\" valign=\"top\" align=\"center\"   >\n                            <p class=\"wysija_viewbrowser_container\" style=\"font-family: Arial, \'Helvetica Neue\', Helvetica, sans-serif;font-size: 12px;color: #000000;color: #000000 !important;background-color: #e8e8e8;border: 0;text-align: center;padding-top: 8px;padding-right: 8px;padding-bottom: 8px;padding-left: 8px;\" >Display problems? <a style=\"font-family: Arial, \'Helvetica Neue\', Helvetica, sans-serif;font-size: 12px;color: #000000;color: #000000 !important;background-color: #e8e8e8;border: 0;\" href=\"[view_in_browser_link]\" target=\"_blank\">View this newsletter in your browser.</a></p>\n                        </td>\n                    </tr>\n                    \n                    <tr>\n                        <td width=\"600\" style=\"min-width:600px;\" valign=\"top\" align=\"center\">\n                            \n<table class=\"wysija_header\" style=\"border: 0;border-collapse: collapse;mso-table-lspace: 0pt; mso-table-rspace: 0pt;clear: both;border: 0;min-width: 100%;\" width=\"100%\" cellspacing=\"0\" cellpadding=\"0\" border=\"0\" align=\"center\">\n <tr>\n <td height=\"1\" align=\"center\" class=\"wysija_header_container\" style=\"font-size:1px;line-height:1%;mso-line-height-rule:exactly;border: 0;min-width: 100%;background-color: #e8e8e8;border: 0;\" >\n \n <img width=\"600\" height=\"72\" src=\"http://localhost/wordpress/wp-content/plugins/wysija-newsletters/img/default-newsletter/newsletter/header.png\" border=\"0\" alt=\"\" class=\"image_fix\" style=\"width:600px; height:72px;text-decoration: none;outline: 0;border: 0;display: block;-ms-interpolation-mode: bicubic;\" />\n </td>\n </tr>\n</table>\n                        </td>\n                    </tr>\n                    <tr>\n                        <td width=\"600\" style=\"min-width:600px;\" valign=\"top\" align=\"left\">\n                            \n\n<table class=\"wysija_block\" style=\"border: 0;border-collapse: collapse;mso-table-lspace: 0pt; mso-table-rspace: 0pt;clear: both;border: 0;min-width: 100%;\" width=\"100%\" cellspacing=\"0\" cellpadding=\"0\" border=\"0\" align=\"left\">\n <tr>\n \n \n <td class=\"wysija_content_container left\" style=\"border: 0;border-collapse: collapse;background-color: #ffffff;border: 0;padding-top: 10px;padding-right: 17px;padding-bottom: 10px;padding-left: 17px;\" align=\"left\" >\n \n <div class=\"wysija_text_container\"><h2 style=\"font-family: \'Trebuchet MS\', \'Lucida Grande\', \'Lucida Sans Unicode\', \'Lucida Sans\', Tahoma, sans-serif;font-size: 30px;color: #424242;color: #424242 !important;background-color: #ffffff;border: 0;font-weight: normal;font-style: normal;letter-spacing: normal;mso-line-height-rule: exactly;-mso-line-height-rule: exactly;line-height: 125%;margin-top: 0;margin-right: 0;margin-bottom: 0;margin-left: 0;padding-top: 0;padding-right: 0;padding-bottom: 0;padding-left: 0;\"><strong>Step 1:</strong> hey, click on this text!</h2><p style=\"font-family: Arial, \'Helvetica Neue\', Helvetica, sans-serif;font-size: 16px;color: #000000;color: #000000 !important;background-color: #ffffff;border: 0;letter-spacing: normal;mso-line-height-rule: exactly;-mso-line-height-rule: exactly;line-height: 150%;margin-top: 1em;margin-right: 0;margin-bottom: 1em;margin-left: 0;padding-top: 0;padding-right: 0;padding-bottom: 0;padding-left: 0;vertical-align: top;word-wrap: break-word;\">To edit, simply click on this block of text.</p></div>\n </td>\n \n </tr>\n</table>\n\n<table class=\"wysija_block\" style=\"border: 0;border-collapse: collapse;mso-table-lspace: 0pt; mso-table-rspace: 0pt;clear: both;border: 0;min-width: 100%;\" width=\"100%\" cellspacing=\"0\" cellpadding=\"0\" border=\"0\" align=\"left\">\n <tr style=\"font-size:1px; mso-line-height-alt:0; mso-margin-top-alt:1px;\">\n <td width=\"100%\" valign=\"middle\" class=\"wysija_divider_container\" style=\"height:1px;background-color: #ffffff;border: 0;padding-top: 15px;padding-right: 17px;padding-bottom: 15px;padding-left: 17px;\" align=\"left\">\n <div align=\"center\">\n <img src=\"http://localhost/wordpress/wp-content/uploads/wysija/dividers/solid.jpg\" border=\"0\" width=\"564\" height=\"1\" alt=\"---\" class=\"image_fix\" style=\"width:564px; height:1px;text-decoration: none;outline: 0;border: 0;display: block;-ms-interpolation-mode: bicubic;\" />\n </div>\n </td>\n </tr>\n</table>\n\n\n<table class=\"wysija_block\" style=\"border: 0;border-collapse: collapse;mso-table-lspace: 0pt; mso-table-rspace: 0pt;clear: both;border: 0;min-width: 100%;\" width=\"100%\" cellspacing=\"0\" cellpadding=\"0\" border=\"0\" align=\"left\">\n <tr>\n \n \n <td class=\"wysija_content_container left\" style=\"border: 0;border-collapse: collapse;background-color: #ffffff;border: 0;padding-top: 10px;padding-right: 17px;padding-bottom: 10px;padding-left: 17px;\" align=\"left\" >\n \n <div class=\"wysija_text_container\"><h2 style=\"font-family: \'Trebuchet MS\', \'Lucida Grande\', \'Lucida Sans Unicode\', \'Lucida Sans\', Tahoma, sans-serif;font-size: 30px;color: #424242;color: #424242 !important;background-color: #ffffff;border: 0;font-weight: normal;font-style: normal;letter-spacing: normal;mso-line-height-rule: exactly;-mso-line-height-rule: exactly;line-height: 125%;margin-top: 0;margin-right: 0;margin-bottom: 0;margin-left: 0;padding-top: 0;padding-right: 0;padding-bottom: 0;padding-left: 0;\"><strong>Step 2:</strong> play with this image</h2></div>\n </td>\n \n </tr>\n</table>\n\n<table class=\"wysija_block\" style=\"border: 0;border-collapse: collapse;mso-table-lspace: 0pt; mso-table-rspace: 0pt;clear: both;border: 0;min-width: 100%;\" width=\"100%\" cellspacing=\"0\" cellpadding=\"0\" border=\"0\" align=\"left\">\n <tr>\n \n \n <td class=\"wysija_content_container left\" style=\"border: 0;border-collapse: collapse;background-color: #ffffff;border: 0;padding-top: 10px;padding-right: 17px;padding-bottom: 10px;padding-left: 17px;\" align=\"left\" >\n \n \n \n <table style=\"border: 0;border-collapse: collapse;mso-table-lspace: 0pt; mso-table-rspace: 0pt;clear: both;\" width=\"1%\" height=\"190\" cellspacing=\"0\" cellpadding=\"0\" border=\"0\" align=\"left\">\n <tr style=\"font-size:1px; mso-line-height-alt:0; mso-margin-top-alt:1px;\">\n <td class=\"wysija_image_container left\" style=\"border: 0;border-collapse: collapse;border: 1px solid #ffffff;display: block;margin-top: 0;margin-right: 0;margin-bottom: 0;margin-left: 0;padding-top: 0;padding-right: 10px;padding-bottom: 0;padding-left: 0;\" width=\"1%\" height=\"190\" valign=\"top\">\n <div align=\"left\" class=\"wysija_image_placeholder left\" style=\"height:190px;width:281px;border: 0;display: block;margin-top: 0;margin-right: 10px;margin-bottom: 0;margin-left: 0;padding-top: 0;padding-right: 0;padding-bottom: 0;padding-left: 0;\" >\n \n <img width=\"281\" height=\"190\" src=\"http://localhost/wordpress/wp-content/plugins/wysija-newsletters/img/default-newsletter/newsletter/pigeon.png\" border=\"0\" alt=\"\" class=\"image_fix\" style=\"width:281px; height:190px;text-decoration: none;outline: 0;border: 0;display: block;-ms-interpolation-mode: bicubic;\" />\n </div>\n </td>\n </tr>\n </table>\n\n <div class=\"wysija_text_container\"><p style=\"font-family: Arial, \'Helvetica Neue\', Helvetica, sans-serif;font-size: 16px;color: #000000;color: #000000 !important;background-color: #ffffff;border: 0;letter-spacing: normal;mso-line-height-rule: exactly;-mso-line-height-rule: exactly;line-height: 150%;margin-top: 1em;margin-right: 0;margin-bottom: 1em;margin-left: 0;padding-top: 0;padding-right: 0;padding-bottom: 0;padding-left: 0;vertical-align: top;word-wrap: break-word;\">Position your mouse over the image to the left.</p></div>\n </td>\n \n </tr>\n</table>\n\n<table class=\"wysija_block\" style=\"border: 0;border-collapse: collapse;mso-table-lspace: 0pt; mso-table-rspace: 0pt;clear: both;border: 0;min-width: 100%;\" width=\"100%\" cellspacing=\"0\" cellpadding=\"0\" border=\"0\" align=\"left\">\n <tr style=\"font-size:1px; mso-line-height-alt:0; mso-margin-top-alt:1px;\">\n <td width=\"100%\" valign=\"middle\" class=\"wysija_divider_container\" style=\"height:1px;background-color: #ffffff;border: 0;padding-top: 15px;padding-right: 17px;padding-bottom: 15px;padding-left: 17px;\" align=\"left\">\n <div align=\"center\">\n <img src=\"http://localhost/wordpress/wp-content/uploads/wysija/dividers/solid.jpg\" border=\"0\" width=\"564\" height=\"1\" alt=\"---\" class=\"image_fix\" style=\"width:564px; height:1px;text-decoration: none;outline: 0;border: 0;display: block;-ms-interpolation-mode: bicubic;\" />\n </div>\n </td>\n </tr>\n</table>\n\n\n<table class=\"wysija_block\" style=\"border: 0;border-collapse: collapse;mso-table-lspace: 0pt; mso-table-rspace: 0pt;clear: both;border: 0;min-width: 100%;\" width=\"100%\" cellspacing=\"0\" cellpadding=\"0\" border=\"0\" align=\"left\">\n <tr>\n \n \n <td class=\"wysija_content_container left\" style=\"border: 0;border-collapse: collapse;background-color: #ffffff;border: 0;padding-top: 10px;padding-right: 17px;padding-bottom: 10px;padding-left: 17px;\" align=\"left\" >\n \n <div class=\"wysija_text_container\"><h2 style=\"font-family: \'Trebuchet MS\', \'Lucida Grande\', \'Lucida Sans Unicode\', \'Lucida Sans\', Tahoma, sans-serif;font-size: 30px;color: #424242;color: #424242 !important;background-color: #ffffff;border: 0;font-weight: normal;font-style: normal;letter-spacing: normal;mso-line-height-rule: exactly;-mso-line-height-rule: exactly;line-height: 125%;margin-top: 0;margin-right: 0;margin-bottom: 0;margin-left: 0;padding-top: 0;padding-right: 0;padding-bottom: 0;padding-left: 0;\"><strong>Step 3:</strong> drop content here</h2><p style=\"font-family: Arial, \'Helvetica Neue\', Helvetica, sans-serif;font-size: 16px;color: #000000;color: #000000 !important;background-color: #ffffff;border: 0;letter-spacing: normal;mso-line-height-rule: exactly;-mso-line-height-rule: exactly;line-height: 150%;margin-top: 1em;margin-right: 0;margin-bottom: 1em;margin-left: 0;padding-top: 0;padding-right: 0;padding-bottom: 0;padding-left: 0;vertical-align: top;word-wrap: break-word;\">Drag and drop <strong>text, posts, dividers.</strong> Look on the right!</p><p style=\"font-family: Arial, \'Helvetica Neue\', Helvetica, sans-serif;font-size: 16px;color: #000000;color: #000000 !important;background-color: #ffffff;border: 0;letter-spacing: normal;mso-line-height-rule: exactly;-mso-line-height-rule: exactly;line-height: 150%;margin-top: 1em;margin-right: 0;margin-bottom: 1em;margin-left: 0;padding-top: 0;padding-right: 0;padding-bottom: 0;padding-left: 0;vertical-align: top;word-wrap: break-word;\">You can even <strong>social bookmarks</strong> like these:</p></div>\n </td>\n \n </tr>\n</table>\n<table class=\"wysija_block\" style=\"border: 0;border-collapse: collapse;mso-table-lspace: 0pt; mso-table-rspace: 0pt;clear: both;border: 0;min-width: 100%;\" width=\"100%\" cellspacing=\"0\" cellpadding=\"0\" border=\"0\" align=\"left\">\n <tr>\n <td class=\"wysija_gallery_container\" style=\"border: 0;border-collapse: collapse;background-color: #ffffff;border: 0;padding-top: 10px;padding-right: 17px;padding-bottom: 10px;padding-left: 17px;\" >\n <table class=\"wysija_gallery_table center\" style=\"border: 0;border-collapse: collapse;mso-table-lspace: 0pt; mso-table-rspace: 0pt;clear: both;border: 0;text-align: center;margin-top: 0;margin-right: auto;margin-bottom: 0;margin-left: auto;\" width=\"184\" cellspacing=\"0\" cellpadding=\"0\" border=\"0\" align=\"center\">\n <tr>\n \n \n <td class=\"wysija_cell_container\" style=\"border: 0;border-collapse: collapse;background-color: #ffffff;border: 1px solid #ffffff;\" width=\"61\" height=\"32\" valign=\"top\">\n <div align=\"center\">\n <a style=\"color: #4a91b0;color: #4a91b0 !important;background-color: #ffffff;border: 0;word-wrap: break-word;\" href=\"http://www.facebook.com/mailpoetplugin\"><img src=\"http://localhost/wordpress/wp-content/uploads/wysija/bookmarks/medium/02/facebook.png\" border=\"0\" alt=\"Facebook\" style=\"width:32px; height:32px;\" /></a>\n </div>\n </td>\n \n \n \n <td class=\"wysija_cell_container\" style=\"border: 0;border-collapse: collapse;background-color: #ffffff;border: 1px solid #ffffff;\" width=\"61\" height=\"32\" valign=\"top\">\n <div align=\"center\">\n <a style=\"color: #4a91b0;color: #4a91b0 !important;background-color: #ffffff;border: 0;word-wrap: break-word;\" href=\"http://www.twitter.com/mail_poet\"><img src=\"http://localhost/wordpress/wp-content/uploads/wysija/bookmarks/medium/02/twitter.png\" border=\"0\" alt=\"Twitter\" style=\"width:32px; height:32px;\" /></a>\n </div>\n </td>\n \n \n \n <td class=\"wysija_cell_container\" style=\"border: 0;border-collapse: collapse;background-color: #ffffff;border: 1px solid #ffffff;\" width=\"61\" height=\"32\" valign=\"top\">\n <div align=\"center\">\n <a style=\"color: #4a91b0;color: #4a91b0 !important;background-color: #ffffff;border: 0;word-wrap: break-word;\" href=\"https://plus.google.com/+Mailpoet\"><img src=\"http://localhost/wordpress/wp-content/uploads/wysija/bookmarks/medium/02/google.png\" border=\"0\" alt=\"Google\" style=\"width:32px; height:32px;\" /></a>\n </div>\n </td>\n \n \n </tr>\n </table>\n </td>\n </tr>\n</table>\n\n<table class=\"wysija_block\" style=\"border: 0;border-collapse: collapse;mso-table-lspace: 0pt; mso-table-rspace: 0pt;clear: both;border: 0;min-width: 100%;\" width=\"100%\" cellspacing=\"0\" cellpadding=\"0\" border=\"0\" align=\"left\">\n <tr style=\"font-size:1px; mso-line-height-alt:0; mso-margin-top-alt:1px;\">\n <td width=\"100%\" valign=\"middle\" class=\"wysija_divider_container\" style=\"height:1px;background-color: #ffffff;border: 0;padding-top: 15px;padding-right: 17px;padding-bottom: 15px;padding-left: 17px;\" align=\"left\">\n <div align=\"center\">\n <img src=\"http://localhost/wordpress/wp-content/uploads/wysija/dividers/solid.jpg\" border=\"0\" width=\"564\" height=\"1\" alt=\"---\" class=\"image_fix\" style=\"width:564px; height:1px;text-decoration: none;outline: 0;border: 0;display: block;-ms-interpolation-mode: bicubic;\" />\n </div>\n </td>\n </tr>\n</table>\n\n\n<table class=\"wysija_block\" style=\"border: 0;border-collapse: collapse;mso-table-lspace: 0pt; mso-table-rspace: 0pt;clear: both;border: 0;min-width: 100%;\" width=\"100%\" cellspacing=\"0\" cellpadding=\"0\" border=\"0\" align=\"left\">\n <tr>\n \n \n <td class=\"wysija_content_container left\" style=\"border: 0;border-collapse: collapse;background-color: #ffffff;border: 0;padding-top: 10px;padding-right: 17px;padding-bottom: 10px;padding-left: 17px;\" align=\"left\" >\n \n <div class=\"wysija_text_container\"><h2 style=\"font-family: \'Trebuchet MS\', \'Lucida Grande\', \'Lucida Sans Unicode\', \'Lucida Sans\', Tahoma, sans-serif;font-size: 30px;color: #424242;color: #424242 !important;background-color: #ffffff;border: 0;font-weight: normal;font-style: normal;letter-spacing: normal;mso-line-height-rule: exactly;-mso-line-height-rule: exactly;line-height: 125%;margin-top: 0;margin-right: 0;margin-bottom: 0;margin-left: 0;padding-top: 0;padding-right: 0;padding-bottom: 0;padding-left: 0;\"><strong>Step 4:</strong> and the footer?</h2><p style=\"font-family: Arial, \'Helvetica Neue\', Helvetica, sans-serif;font-size: 16px;color: #000000;color: #000000 !important;background-color: #ffffff;border: 0;letter-spacing: normal;mso-line-height-rule: exactly;-mso-line-height-rule: exactly;line-height: 150%;margin-top: 1em;margin-right: 0;margin-bottom: 1em;margin-left: 0;padding-top: 0;padding-right: 0;padding-bottom: 0;padding-left: 0;vertical-align: top;word-wrap: break-word;\">Change the footer\'s content in MailPoet\'s <strong>Settings</strong> page.</p></div>\n </td>\n \n </tr>\n</table>\n                        </td>\n                    </tr>\n                    <tr>\n                        <td width=\"600\" style=\"min-width:600px;\" valign=\"top\" align=\"center\"   >\n                            \n<table class=\"wysija_footer\" style=\"border: 0;border-collapse: collapse;mso-table-lspace: 0pt; mso-table-rspace: 0pt;clear: both;border: 0;min-width: 100%;\" width=\"100%\" cellspacing=\"0\" cellpadding=\"0\" border=\"0\" align=\"center\">\n <tr>\n <td height=\"1\" align=\"center\" class=\"wysija_footer_container\" style=\"font-size:1px;line-height:1%;mso-line-height-rule:exactly;border: 0;min-width: 100%;background-color: #e8e8e8;border: 0;\" >\n \n <img width=\"600\" height=\"46\" src=\"http://localhost/wordpress/wp-content/plugins/wysija-newsletters/img/default-newsletter/newsletter/footer.png\" border=\"0\" alt=\"\" class=\"image_fix\" style=\"width:600px; height:46px;text-decoration: none;outline: 0;border: 0;display: block;-ms-interpolation-mode: bicubic;\" />\n </td>\n </tr>\n</table>\n                        </td>\n                    </tr>\n                    \n                    <tr>\n                        <td width=\"600\" style=\"min-width:600px;\" valign=\"top\" align=\"center\"  >\n                            <p class=\"wysija_unsubscribe_container\" style=\"font-family: Verdana, Geneva, sans-serif;font-size: 12px;color: #000000;color: #000000 !important;background-color: #e8e8e8;border: 0;text-align: center;padding-top: 8px;padding-right: 8px;padding-bottom: 8px;padding-left: 8px;\" ><a style=\"color: #000000;color: #000000 !important;background-color: #e8e8e8;border: 0;\" href=\"[unsubscribe_link]\" target=\"_blank\">Unsubscribe</a><br /><br /></p>\n                        </td>\n                    </tr>\n                    \n                </table>\n            </td>\n        </tr>\n    </table>\n    </span>\n</body>\n</html>', 1531262478, 1531262478, NULL, 'info@localhost', 'yiga', 'info@localhost', 'yiga', NULL, 0, 1, 0, 0, 0, 0, 0, 0, 'YToxOntzOjE0OiJxdWlja3NlbGVjdGlvbiI7YToxOntzOjY6IndwLTMwMSI7YTo1OntzOjEwOiJpZGVudGlmaWVyIjtzOjY6IndwLTMwMSI7czo1OiJ3aWR0aCI7aToyODE7czo2OiJoZWlnaHQiO2k6MTkwO3M6MzoidXJsIjtzOjEwOToiaHR0cDovL2xvY2FsaG9zdC93b3JkcHJlc3Mvd3AtY29udGVudC9wbHVnaW5zL3d5c2lqYS1uZXdzbGV0dGVycy9pbWcvZGVmYXVsdC1uZXdzbGV0dGVyL25ld3NsZXR0ZXIvcGlnZW9uLnBuZyI7czo5OiJ0aHVtYl91cmwiO3M6MTE3OiJodHRwOi8vbG9jYWxob3N0L3dvcmRwcmVzcy93cC1jb250ZW50L3BsdWdpbnMvd3lzaWphLW5ld3NsZXR0ZXJzL2ltZy9kZWZhdWx0LW5ld3NsZXR0ZXIvbmV3c2xldHRlci9waWdlb24tMTUweDE1MC5wbmciO319fQ==', 'YTo0OntzOjc6InZlcnNpb24iO3M6NToiMi44LjIiO3M6NjoiaGVhZGVyIjthOjU6e3M6NDoidGV4dCI7TjtzOjU6ImltYWdlIjthOjU6e3M6Mzoic3JjIjtzOjEwOToiaHR0cDovL2xvY2FsaG9zdC93b3JkcHJlc3Mvd3AtY29udGVudC9wbHVnaW5zL3d5c2lqYS1uZXdzbGV0dGVycy9pbWcvZGVmYXVsdC1uZXdzbGV0dGVyL25ld3NsZXR0ZXIvaGVhZGVyLnBuZyI7czo1OiJ3aWR0aCI7aTo2MDA7czo2OiJoZWlnaHQiO2k6NzI7czo5OiJhbGlnbm1lbnQiO3M6NjoiY2VudGVyIjtzOjY6InN0YXRpYyI7YjowO31zOjk6ImFsaWdubWVudCI7czo2OiJjZW50ZXIiO3M6Njoic3RhdGljIjtiOjA7czo0OiJ0eXBlIjtzOjY6ImhlYWRlciI7fXM6NDoiYm9keSI7YTo5OntzOjc6ImJsb2NrLTEiO2E6Njp7czo0OiJ0ZXh0IjthOjE6e3M6NToidmFsdWUiO3M6MTQ4OiJQR2d5UGp4emRISnZibWMrVTNSbGNDQXhPand2YzNSeWIyNW5QaUJvWlhrc0lHTnNhV05ySUc5dUlIUm9hWE1nZEdWNGRDRThMMmd5UGp4d1BsUnZJR1ZrYVhRc0lITnBiWEJzZVNCamJHbGpheUJ2YmlCMGFHbHpJR0pzYjJOcklHOW1JSFJsZUhRdVBDOXdQZz09Ijt9czo1OiJpbWFnZSI7TjtzOjk6ImFsaWdubWVudCI7czo0OiJsZWZ0IjtzOjY6InN0YXRpYyI7YjowO3M6ODoicG9zaXRpb24iO2k6MTtzOjQ6InR5cGUiO3M6NzoiY29udGVudCI7fXM6NzoiYmxvY2stMiI7YTo1OntzOjg6InBvc2l0aW9uIjtpOjI7czo0OiJ0eXBlIjtzOjc6ImRpdmlkZXIiO3M6Mzoic3JjIjtzOjcxOiJodHRwOi8vbG9jYWxob3N0L3dvcmRwcmVzcy93cC1jb250ZW50L3VwbG9hZHMvd3lzaWphL2RpdmlkZXJzL3NvbGlkLmpwZyI7czo1OiJ3aWR0aCI7aTo1NjQ7czo2OiJoZWlnaHQiO2k6MTt9czo3OiJibG9jay0zIjthOjY6e3M6NDoidGV4dCI7YToxOntzOjU6InZhbHVlIjtzOjcyOiJQR2d5UGp4emRISnZibWMrVTNSbGNDQXlPand2YzNSeWIyNW5QaUJ3YkdGNUlIZHBkR2dnZEdocGN5QnBiV0ZuWlR3dmFESSsiO31zOjU6ImltYWdlIjtOO3M6OToiYWxpZ25tZW50IjtzOjQ6ImxlZnQiO3M6Njoic3RhdGljIjtiOjA7czo4OiJwb3NpdGlvbiI7aTozO3M6NDoidHlwZSI7czo3OiJjb250ZW50Ijt9czo3OiJibG9jay00IjthOjY6e3M6NDoidGV4dCI7YToxOntzOjU6InZhbHVlIjtzOjcyOiJQSEErVUc5emFYUnBiMjRnZVc5MWNpQnRiM1Z6WlNCdmRtVnlJSFJvWlNCcGJXRm5aU0IwYnlCMGFHVWdiR1ZtZEM0OEwzQSsiO31zOjU6ImltYWdlIjthOjU6e3M6Mzoic3JjIjtzOjEwOToiaHR0cDovL2xvY2FsaG9zdC93b3JkcHJlc3Mvd3AtY29udGVudC9wbHVnaW5zL3d5c2lqYS1uZXdzbGV0dGVycy9pbWcvZGVmYXVsdC1uZXdzbGV0dGVyL25ld3NsZXR0ZXIvcGlnZW9uLnBuZyI7czo1OiJ3aWR0aCI7aToyODE7czo2OiJoZWlnaHQiO2k6MTkwO3M6OToiYWxpZ25tZW50IjtzOjQ6ImxlZnQiO3M6Njoic3RhdGljIjtiOjA7fXM6OToiYWxpZ25tZW50IjtzOjQ6ImxlZnQiO3M6Njoic3RhdGljIjtiOjA7czo4OiJwb3NpdGlvbiI7aTo0O3M6NDoidHlwZSI7czo3OiJjb250ZW50Ijt9czo3OiJibG9jay01IjthOjU6e3M6ODoicG9zaXRpb24iO2k6NTtzOjQ6InR5cGUiO3M6NzoiZGl2aWRlciI7czozOiJzcmMiO3M6NzE6Imh0dHA6Ly9sb2NhbGhvc3Qvd29yZHByZXNzL3dwLWNvbnRlbnQvdXBsb2Fkcy93eXNpamEvZGl2aWRlcnMvc29saWQuanBnIjtzOjU6IndpZHRoIjtpOjU2NDtzOjY6ImhlaWdodCI7aToxO31zOjc6ImJsb2NrLTYiO2E6Njp7czo0OiJ0ZXh0IjthOjE6e3M6NToidmFsdWUiO3M6MjYwOiJQR2d5UGp4emRISnZibWMrVTNSbGNDQXpPand2YzNSeWIyNW5QaUJrY205d0lHTnZiblJsYm5RZ2FHVnlaVHd2YURJK1BIQStSSEpoWnlCaGJtUWdaSEp2Y0NBOGMzUnliMjVuUG5SbGVIUXNJSEJ2YzNSekxDQmthWFpwWkdWeWN5NDhMM04wY205dVp6NGdURzl2YXlCdmJpQjBhR1VnY21sbmFIUWhQQzl3UGp4d1BsbHZkU0JqWVc0Z1pYWmxiaUE4YzNSeWIyNW5Qbk52WTJsaGJDQmliMjlyYldGeWEzTThMM04wY205dVp6NGdiR2xyWlNCMGFHVnpaVG84TDNBKyI7fXM6NToiaW1hZ2UiO047czo5OiJhbGlnbm1lbnQiO3M6NDoibGVmdCI7czo2OiJzdGF0aWMiO2I6MDtzOjg6InBvc2l0aW9uIjtpOjY7czo0OiJ0eXBlIjtzOjc6ImNvbnRlbnQiO31zOjc6ImJsb2NrLTciO2E6NTp7czo1OiJ3aWR0aCI7aToxODQ7czo5OiJhbGlnbm1lbnQiO3M6NjoiY2VudGVyIjtzOjU6Iml0ZW1zIjthOjM6e2k6MDthOjc6e3M6MzoidXJsIjtzOjM4OiJodHRwOi8vd3d3LmZhY2Vib29rLmNvbS9tYWlscG9ldHBsdWdpbiI7czozOiJhbHQiO3M6ODoiRmFjZWJvb2siO3M6OToiY2VsbFdpZHRoIjtpOjYxO3M6MTA6ImNlbGxIZWlnaHQiO2k6MzI7czozOiJzcmMiO3M6ODU6Imh0dHA6Ly9sb2NhbGhvc3Qvd29yZHByZXNzL3dwLWNvbnRlbnQvdXBsb2Fkcy93eXNpamEvYm9va21hcmtzL21lZGl1bS8wMi9mYWNlYm9vay5wbmciO3M6NToid2lkdGgiO2k6MzI7czo2OiJoZWlnaHQiO2k6MzI7fWk6MTthOjc6e3M6MzoidXJsIjtzOjMyOiJodHRwOi8vd3d3LnR3aXR0ZXIuY29tL21haWxfcG9ldCI7czozOiJhbHQiO3M6NzoiVHdpdHRlciI7czo5OiJjZWxsV2lkdGgiO2k6NjE7czoxMDoiY2VsbEhlaWdodCI7aTozMjtzOjM6InNyYyI7czo4NDoiaHR0cDovL2xvY2FsaG9zdC93b3JkcHJlc3Mvd3AtY29udGVudC91cGxvYWRzL3d5c2lqYS9ib29rbWFya3MvbWVkaXVtLzAyL3R3aXR0ZXIucG5nIjtzOjU6IndpZHRoIjtpOjMyO3M6NjoiaGVpZ2h0IjtpOjMyO31pOjI7YTo3OntzOjM6InVybCI7czozMzoiaHR0cHM6Ly9wbHVzLmdvb2dsZS5jb20vK01haWxwb2V0IjtzOjM6ImFsdCI7czo2OiJHb29nbGUiO3M6OToiY2VsbFdpZHRoIjtpOjYxO3M6MTA6ImNlbGxIZWlnaHQiO2k6MzI7czozOiJzcmMiO3M6ODM6Imh0dHA6Ly9sb2NhbGhvc3Qvd29yZHByZXNzL3dwLWNvbnRlbnQvdXBsb2Fkcy93eXNpamEvYm9va21hcmtzL21lZGl1bS8wMi9nb29nbGUucG5nIjtzOjU6IndpZHRoIjtpOjMyO3M6NjoiaGVpZ2h0IjtpOjMyO319czo4OiJwb3NpdGlvbiI7aTo3O3M6NDoidHlwZSI7czo3OiJnYWxsZXJ5Ijt9czo3OiJibG9jay04IjthOjU6e3M6ODoicG9zaXRpb24iO2k6ODtzOjQ6InR5cGUiO3M6NzoiZGl2aWRlciI7czozOiJzcmMiO3M6NzE6Imh0dHA6Ly9sb2NhbGhvc3Qvd29yZHByZXNzL3dwLWNvbnRlbnQvdXBsb2Fkcy93eXNpamEvZGl2aWRlcnMvc29saWQuanBnIjtzOjU6IndpZHRoIjtpOjU2NDtzOjY6ImhlaWdodCI7aToxO31zOjc6ImJsb2NrLTkiO2E6Njp7czo0OiJ0ZXh0IjthOjE6e3M6NToidmFsdWUiO3M6MTcyOiJQR2d5UGp4emRISnZibWMrVTNSbGNDQTBPand2YzNSeWIyNW5QaUJoYm1RZ2RHaGxJR1p2YjNSbGNqODhMMmd5UGp4d1BrTm9ZVzVuWlNCMGFHVWdabTl2ZEdWeUozTWdZMjl1ZEdWdWRDQnBiaUJOWVdsc1VHOWxkQ2R6SUR4emRISnZibWMrVTJWMGRHbHVaM004TDNOMGNtOXVaejRnY0dGblpTNDhMM0ErIjt9czo1OiJpbWFnZSI7TjtzOjk6ImFsaWdubWVudCI7czo0OiJsZWZ0IjtzOjY6InN0YXRpYyI7YjowO3M6ODoicG9zaXRpb24iO2k6OTtzOjQ6InR5cGUiO3M6NzoiY29udGVudCI7fX1zOjY6ImZvb3RlciI7YTo1OntzOjQ6InRleHQiO047czo1OiJpbWFnZSI7YTo1OntzOjM6InNyYyI7czoxMDk6Imh0dHA6Ly9sb2NhbGhvc3Qvd29yZHByZXNzL3dwLWNvbnRlbnQvcGx1Z2lucy93eXNpamEtbmV3c2xldHRlcnMvaW1nL2RlZmF1bHQtbmV3c2xldHRlci9uZXdzbGV0dGVyL2Zvb3Rlci5wbmciO3M6NToid2lkdGgiO2k6NjAwO3M6NjoiaGVpZ2h0IjtpOjQ2O3M6OToiYWxpZ25tZW50IjtzOjY6ImNlbnRlciI7czo2OiJzdGF0aWMiO2I6MDt9czo5OiJhbGlnbm1lbnQiO3M6NjoiY2VudGVyIjtzOjY6InN0YXRpYyI7YjowO3M6NDoidHlwZSI7czo2OiJmb290ZXIiO319', 'YToxMDp7czo0OiJodG1sIjthOjE6e3M6MTA6ImJhY2tncm91bmQiO3M6NjoiZThlOGU4Ijt9czo2OiJoZWFkZXIiO2E6MTp7czoxMDoiYmFja2dyb3VuZCI7czo2OiJlOGU4ZTgiO31zOjQ6ImJvZHkiO2E6NDp7czo1OiJjb2xvciI7czo2OiIwMDAwMDAiO3M6NjoiZmFtaWx5IjtzOjU6IkFyaWFsIjtzOjQ6InNpemUiO2k6MTY7czoxMDoiYmFja2dyb3VuZCI7czo2OiJmZmZmZmYiO31zOjY6ImZvb3RlciI7YToxOntzOjEwOiJiYWNrZ3JvdW5kIjtzOjY6ImU4ZThlOCI7fXM6MjoiaDEiO2E6Mzp7czo1OiJjb2xvciI7czo2OiIwMDAwMDAiO3M6NjoiZmFtaWx5IjtzOjEyOiJUcmVidWNoZXQgTVMiO3M6NDoic2l6ZSI7aTo0MDt9czoyOiJoMiI7YTozOntzOjU6ImNvbG9yIjtzOjY6IjQyNDI0MiI7czo2OiJmYW1pbHkiO3M6MTI6IlRyZWJ1Y2hldCBNUyI7czo0OiJzaXplIjtpOjMwO31zOjI6ImgzIjthOjM6e3M6NToiY29sb3IiO3M6NjoiNDI0MjQyIjtzOjY6ImZhbWlseSI7czoxMjoiVHJlYnVjaGV0IE1TIjtzOjQ6InNpemUiO2k6MjQ7fXM6MToiYSI7YToyOntzOjU6ImNvbG9yIjtzOjY6IjRhOTFiMCI7czo5OiJ1bmRlcmxpbmUiO2I6MDt9czoxMToidW5zdWJzY3JpYmUiO2E6MTp7czo1OiJjb2xvciI7czo2OiIwMDAwMDAiO31zOjExOiJ2aWV3YnJvd3NlciI7YTozOntzOjU6ImNvbG9yIjtzOjY6IjAwMDAwMCI7czo2OiJmYW1pbHkiO3M6NToiQXJpYWwiO3M6NDoic2l6ZSI7aToxMjt9fQ=='),
(2, 0, 'Confirm your subscription to Voice of  Pilgrims', 'Hello!\n\nHurray! You\'ve subscribed to our site.\nWe need you to activate your subscription to the list(s): [lists_to_confirm] by clicking the link below: \n\n[activation_link]Click here to confirm your subscription.[/activation_link]\n\nThank you,\n\n The team!\n', 1531262481, 1531262481, NULL, 'info@localhost', 'yiga', 'info@localhost', 'yiga', NULL, 99, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `wp_wysija_email_user_stat`
--

CREATE TABLE `wp_wysija_email_user_stat` (
  `user_id` int(10) UNSIGNED NOT NULL,
  `email_id` int(10) UNSIGNED NOT NULL,
  `sent_at` int(10) UNSIGNED NOT NULL,
  `opened_at` int(10) UNSIGNED DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `wp_wysija_email_user_url`
--

CREATE TABLE `wp_wysija_email_user_url` (
  `email_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `url_id` int(10) UNSIGNED NOT NULL,
  `clicked_at` int(10) UNSIGNED DEFAULT NULL,
  `number_clicked` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `wp_wysija_form`
--

CREATE TABLE `wp_wysija_form` (
  `form_id` int(10) UNSIGNED NOT NULL,
  `name` tinytext CHARACTER SET utf8 COLLATE utf8_bin,
  `data` longtext CHARACTER SET utf8 COLLATE utf8_bin,
  `styles` longtext CHARACTER SET utf8 COLLATE utf8_bin,
  `subscribed` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wp_wysija_form`
--

INSERT INTO `wp_wysija_form` (`form_id`, `name`, `data`, `styles`, `subscribed`) VALUES
(1, 'Subscribe to our Newsletter', 'YTo0OntzOjc6InZlcnNpb24iO3M6MzoiMC40IjtzOjg6InNldHRpbmdzIjthOjQ6e3M6MTA6Im9uX3N1Y2Nlc3MiO3M6NzoibWVzc2FnZSI7czoxNToic3VjY2Vzc19tZXNzYWdlIjtzOjY1OiJDaGVjayB5b3VyIGluYm94IG9yIHNwYW0gZm9sZGVyIG5vdyB0byBjb25maXJtIHlvdXIgc3Vic2NyaXB0aW9uLiI7czo1OiJsaXN0cyI7YToxOntpOjA7czoxOiIxIjt9czoxNzoibGlzdHNfc2VsZWN0ZWRfYnkiO3M6NToiYWRtaW4iO31zOjQ6ImJvZHkiO2E6Mjp7aTowO2E6NDp7czo0OiJuYW1lIjtzOjU6IkVtYWlsIjtzOjQ6InR5cGUiO3M6NToiaW5wdXQiO3M6NToiZmllbGQiO3M6NToiZW1haWwiO3M6NjoicGFyYW1zIjthOjI6e3M6NToibGFiZWwiO3M6NToiRW1haWwiO3M6ODoicmVxdWlyZWQiO2I6MTt9fWk6MTthOjQ6e3M6NDoibmFtZSI7czo2OiJTdWJtaXQiO3M6NDoidHlwZSI7czo2OiJzdWJtaXQiO3M6NToiZmllbGQiO3M6Njoic3VibWl0IjtzOjY6InBhcmFtcyI7YToxOntzOjU6ImxhYmVsIjtzOjEwOiJTdWJzY3JpYmUhIjt9fX1zOjc6ImZvcm1faWQiO2k6MTt9', NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_wysija_list`
--

CREATE TABLE `wp_wysija_list` (
  `list_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(250) DEFAULT NULL,
  `namekey` varchar(255) DEFAULT NULL,
  `description` text,
  `unsub_mail_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `welcome_mail_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `is_enabled` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `is_public` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `created_at` int(10) UNSIGNED DEFAULT NULL,
  `ordering` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wp_wysija_list`
--

INSERT INTO `wp_wysija_list` (`list_id`, `name`, `namekey`, `description`, `unsub_mail_id`, `welcome_mail_id`, `is_enabled`, `is_public`, `created_at`, `ordering`) VALUES
(1, 'My first list', 'my-first-list', 'The list created automatically on install of the MailPoet.', 0, 0, 1, 1, 1531262477, 0),
(2, 'WordPress Users', 'users', 'The list created automatically on import of the plugin\'s subscribers : \"WordPress', 0, 0, 0, 0, 1531262478, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_wysija_queue`
--

CREATE TABLE `wp_wysija_queue` (
  `user_id` int(10) UNSIGNED NOT NULL,
  `email_id` int(10) UNSIGNED NOT NULL,
  `send_at` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `priority` tinyint(4) NOT NULL DEFAULT '0',
  `number_try` tinyint(3) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `wp_wysija_subscriber_ips`
--

CREATE TABLE `wp_wysija_subscriber_ips` (
  `ip` varchar(45) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `wp_wysija_url`
--

CREATE TABLE `wp_wysija_url` (
  `url_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(250) DEFAULT NULL,
  `url` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `wp_wysija_url_mail`
--

CREATE TABLE `wp_wysija_url_mail` (
  `email_id` int(11) NOT NULL,
  `url_id` int(10) UNSIGNED NOT NULL,
  `unique_clicked` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `total_clicked` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `wp_wysija_user`
--

CREATE TABLE `wp_wysija_user` (
  `user_id` int(10) UNSIGNED NOT NULL,
  `wpuser_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `email` varchar(255) NOT NULL,
  `firstname` varchar(255) NOT NULL DEFAULT '',
  `lastname` varchar(255) NOT NULL DEFAULT '',
  `ip` varchar(100) NOT NULL,
  `confirmed_ip` varchar(100) NOT NULL DEFAULT '0',
  `confirmed_at` int(10) UNSIGNED DEFAULT NULL,
  `last_opened` int(10) UNSIGNED DEFAULT NULL,
  `last_clicked` int(10) UNSIGNED DEFAULT NULL,
  `keyuser` varchar(255) NOT NULL DEFAULT '',
  `created_at` int(10) UNSIGNED DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '0',
  `domain` varchar(255) DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wp_wysija_user`
--

INSERT INTO `wp_wysija_user` (`user_id`, `wpuser_id`, `email`, `firstname`, `lastname`, `ip`, `confirmed_ip`, `confirmed_at`, `last_opened`, `last_clicked`, `keyuser`, `created_at`, `status`, `domain`) VALUES
(1, 1, 'lekiagospel@gmail.com', '', '', '', '0', NULL, NULL, NULL, '', 1531262479, 1, 'gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `wp_wysija_user_field`
--

CREATE TABLE `wp_wysija_user_field` (
  `field_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(250) DEFAULT NULL,
  `column_name` varchar(250) NOT NULL DEFAULT '',
  `type` tinyint(3) UNSIGNED DEFAULT '0',
  `values` text,
  `default` varchar(250) NOT NULL DEFAULT '',
  `is_required` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `error_message` varchar(250) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wp_wysija_user_field`
--

INSERT INTO `wp_wysija_user_field` (`field_id`, `name`, `column_name`, `type`, `values`, `default`, `is_required`, `error_message`) VALUES
(1, 'First name', 'firstname', 0, NULL, '', 0, 'Please enter first name'),
(2, 'Last name', 'lastname', 0, NULL, '', 0, 'Please enter last name');

-- --------------------------------------------------------

--
-- Table structure for table `wp_wysija_user_history`
--

CREATE TABLE `wp_wysija_user_history` (
  `history_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `email_id` int(10) UNSIGNED DEFAULT '0',
  `type` varchar(250) NOT NULL DEFAULT '',
  `details` text,
  `executed_at` int(10) UNSIGNED DEFAULT NULL,
  `executed_by` int(10) UNSIGNED DEFAULT NULL,
  `source` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `wp_wysija_user_list`
--

CREATE TABLE `wp_wysija_user_list` (
  `list_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `sub_date` int(10) UNSIGNED DEFAULT '0',
  `unsub_date` int(10) UNSIGNED DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wp_wysija_user_list`
--

INSERT INTO `wp_wysija_user_list` (`list_id`, `user_id`, `sub_date`, `unsub_date`) VALUES
(1, 1, 1531262477, 0),
(2, 1, 1531262479, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_yoast_seo_links`
--

CREATE TABLE `wp_yoast_seo_links` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL,
  `target_post_id` bigint(20) UNSIGNED NOT NULL,
  `type` varchar(8) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_yoast_seo_meta`
--

CREATE TABLE `wp_yoast_seo_meta` (
  `object_id` bigint(20) UNSIGNED NOT NULL,
  `internal_link_count` int(10) UNSIGNED DEFAULT NULL,
  `incoming_link_count` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_yoast_seo_meta`
--

INSERT INTO `wp_yoast_seo_meta` (`object_id`, `internal_link_count`, `incoming_link_count`) VALUES
(5, 0, 0),
(6, 0, 0),
(9, 0, 0),
(10, 0, 0),
(12, 0, 0),
(13, 0, 0),
(17, 0, 0),
(18, 0, 0),
(19, 0, 0),
(28, 0, 0),
(29, 0, 0),
(30, 0, 0),
(40, 0, 0),
(41, 0, 0),
(42, 0, 0),
(44, 0, 0),
(47, 0, 0),
(50, 0, 0),
(53, 0, 0),
(56, 0, 0),
(60, 0, 0),
(61, 0, 0),
(62, 0, 0),
(63, 0, 0),
(64, 0, 0),
(65, 0, 0),
(66, 0, 0),
(67, 0, 0),
(68, 0, 0),
(69, 0, 0),
(70, 0, 0),
(71, 0, 0),
(72, 0, 0),
(73, 0, 0),
(74, 0, 0),
(75, 0, 0),
(76, 0, 0),
(77, 0, 0),
(78, 0, 0),
(79, 0, 0),
(80, 0, 0),
(81, 0, 0),
(82, 0, 0),
(83, 0, 0),
(84, 0, 0),
(85, 0, 0),
(86, 0, 0),
(87, 0, 0),
(91, 0, 0),
(92, 0, 0),
(96, 0, 0),
(97, 0, 0),
(98, 0, 0),
(99, 0, 0),
(100, 0, 0),
(101, 0, 0),
(102, 0, 0),
(103, 0, 0),
(104, 0, 0),
(105, 0, 0),
(107, 0, 0),
(108, 0, 0),
(109, 0, 0),
(110, 0, 0),
(112, 0, 0),
(118, 0, 0),
(119, 0, 0),
(120, 0, 0),
(121, 0, 0),
(122, 0, 0),
(139, 0, 0),
(141, 0, 0),
(146, 0, 0),
(147, 0, 0),
(151, 0, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_comments`
--
ALTER TABLE `wp_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Indexes for table `wp_links`
--
ALTER TABLE `wp_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Indexes for table `wp_options`
--
ALTER TABLE `wp_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`);

--
-- Indexes for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_posts`
--
ALTER TABLE `wp_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Indexes for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_terms`
--
ALTER TABLE `wp_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Indexes for table `wp_term_relationships`
--
ALTER TABLE `wp_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Indexes for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Indexes for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_users`
--
ALTER TABLE `wp_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- Indexes for table `wp_wysija_campaign`
--
ALTER TABLE `wp_wysija_campaign`
  ADD PRIMARY KEY (`campaign_id`);

--
-- Indexes for table `wp_wysija_campaign_list`
--
ALTER TABLE `wp_wysija_campaign_list`
  ADD PRIMARY KEY (`list_id`,`campaign_id`);

--
-- Indexes for table `wp_wysija_custom_field`
--
ALTER TABLE `wp_wysija_custom_field`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_wysija_email`
--
ALTER TABLE `wp_wysija_email`
  ADD PRIMARY KEY (`email_id`);

--
-- Indexes for table `wp_wysija_email_user_stat`
--
ALTER TABLE `wp_wysija_email_user_stat`
  ADD PRIMARY KEY (`user_id`,`email_id`);

--
-- Indexes for table `wp_wysija_email_user_url`
--
ALTER TABLE `wp_wysija_email_user_url`
  ADD PRIMARY KEY (`user_id`,`email_id`,`url_id`);

--
-- Indexes for table `wp_wysija_form`
--
ALTER TABLE `wp_wysija_form`
  ADD PRIMARY KEY (`form_id`);

--
-- Indexes for table `wp_wysija_list`
--
ALTER TABLE `wp_wysija_list`
  ADD PRIMARY KEY (`list_id`);

--
-- Indexes for table `wp_wysija_queue`
--
ALTER TABLE `wp_wysija_queue`
  ADD PRIMARY KEY (`user_id`,`email_id`),
  ADD KEY `SENT_AT_INDEX` (`send_at`);

--
-- Indexes for table `wp_wysija_subscriber_ips`
--
ALTER TABLE `wp_wysija_subscriber_ips`
  ADD PRIMARY KEY (`created_at`,`ip`),
  ADD KEY `ip` (`ip`);

--
-- Indexes for table `wp_wysija_url`
--
ALTER TABLE `wp_wysija_url`
  ADD PRIMARY KEY (`url_id`);

--
-- Indexes for table `wp_wysija_url_mail`
--
ALTER TABLE `wp_wysija_url_mail`
  ADD PRIMARY KEY (`email_id`,`url_id`);

--
-- Indexes for table `wp_wysija_user`
--
ALTER TABLE `wp_wysija_user`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `EMAIL_UNIQUE` (`email`);

--
-- Indexes for table `wp_wysija_user_field`
--
ALTER TABLE `wp_wysija_user_field`
  ADD PRIMARY KEY (`field_id`);

--
-- Indexes for table `wp_wysija_user_history`
--
ALTER TABLE `wp_wysija_user_history`
  ADD PRIMARY KEY (`history_id`);

--
-- Indexes for table `wp_wysija_user_list`
--
ALTER TABLE `wp_wysija_user_list`
  ADD PRIMARY KEY (`list_id`,`user_id`);

--
-- Indexes for table `wp_yoast_seo_links`
--
ALTER TABLE `wp_yoast_seo_links`
  ADD PRIMARY KEY (`id`),
  ADD KEY `link_direction` (`post_id`,`type`);

--
-- Indexes for table `wp_yoast_seo_meta`
--
ALTER TABLE `wp_yoast_seo_meta`
  ADD UNIQUE KEY `object_id` (`object_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=862;

--
-- AUTO_INCREMENT for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=427;

--
-- AUTO_INCREMENT for table `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=158;

--
-- AUTO_INCREMENT for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wp_wysija_campaign`
--
ALTER TABLE `wp_wysija_campaign`
  MODIFY `campaign_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wp_wysija_custom_field`
--
ALTER TABLE `wp_wysija_custom_field`
  MODIFY `id` mediumint(9) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_wysija_email`
--
ALTER TABLE `wp_wysija_email`
  MODIFY `email_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `wp_wysija_form`
--
ALTER TABLE `wp_wysija_form`
  MODIFY `form_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wp_wysija_list`
--
ALTER TABLE `wp_wysija_list`
  MODIFY `list_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `wp_wysija_url`
--
ALTER TABLE `wp_wysija_url`
  MODIFY `url_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_wysija_url_mail`
--
ALTER TABLE `wp_wysija_url_mail`
  MODIFY `email_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_wysija_user`
--
ALTER TABLE `wp_wysija_user`
  MODIFY `user_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wp_wysija_user_field`
--
ALTER TABLE `wp_wysija_user_field`
  MODIFY `field_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `wp_wysija_user_history`
--
ALTER TABLE `wp_wysija_user_history`
  MODIFY `history_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_yoast_seo_links`
--
ALTER TABLE `wp_yoast_seo_links`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Database: `booklibrary`
--
CREATE DATABASE IF NOT EXISTS `booklibrary` DEFAULT CHARACTER SET armscii8 COLLATE armscii8_general_ci;
USE `booklibrary`;

-- --------------------------------------------------------

--
-- Table structure for table `authors`
--

CREATE TABLE `authors` (
  `id` int(11) NOT NULL,
  `firstName` varchar(30) DEFAULT NULL,
  `lastName` varchar(40) DEFAULT NULL,
  `bio` text
) ENGINE=InnoDB DEFAULT CHARSET=armscii8;

--
-- Dumping data for table `authors`
--

INSERT INTO `authors` (`id`, `firstName`, `lastName`, `bio`) VALUES
(1, 'Marc', 'Delisle', 'Marc Delisle is a member of the MySQL Developers Guide'),
(2, 'Sohail', 'Salehi', 'In recent years, Sohail has contributed to over 20 books, mainly in programming and computer graphics'),
(3, 'Cameron', 'Copper', 'J. Cameron Cooper has been playing around on the web');

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `id` int(11) NOT NULL,
  `author` int(11) DEFAULT NULL,
  `title` varchar(70) DEFAULT NULL,
  `isbn` varchar(20) DEFAULT NULL,
  `publisher` varchar(30) DEFAULT NULL,
  `year` int(4) DEFAULT NULL,
  `summary` text,
  `coverMime` varchar(20) DEFAULT NULL,
  `coverUmage` blob,
  `copies` tinyint(4) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=armscii8;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`id`, `author`, `title`, `isbn`, `publisher`, `year`, `summary`, `coverMime`, `coverUmage`, `copies`) VALUES
(1, 1, 'Creating your MySQL Database: Practical Design Tips and Techniques', '1904811302', 'Packt Publishing Ltd', 2006, 'A short guide for everyone on how to structure your data and\r\nset-up your MySQL database tables efficiently and easily.', NULL, NULL, 1),
(2, 2, 'ImageMagick Tricks', '1904811868', 'Packt Publishing Ltd', 2006, 'Unleash the power of ImageMagick with this fast, friendly\r\ntutorial, and tips guide', NULL, NULL, 1),
(3, 3, 'Building Websites with Plone', '1904811027', 'Packt Publishing Ltd', 2004, 'An in-depth and comprehensive guide to the Plone content\r\nmanagement system', NULL, NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `borrowers`
--

CREATE TABLE `borrowers` (
  `id` int(11) NOT NULL,
  `book` int(11) DEFAULT NULL,
  `name` varchar(40) DEFAULT NULL,
  `dt` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=armscii8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `authors`
--
ALTER TABLE `authors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `borrowers`
--
ALTER TABLE `borrowers`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `authors`
--
ALTER TABLE `authors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `books`
--
ALTER TABLE `books`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `borrowers`
--
ALTER TABLE `borrowers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- Database: `codehacking`
--
CREATE DATABASE IF NOT EXISTS `codehacking` DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci;
USE `codehacking`;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`migration`, `batch`) VALUES
('2014_10_12_000000_create_users_table', 1),
('2014_10_12_100000_create_password_resets_table', 1),
('2019_04_20_094419_create_roles_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'administrator', NULL, NULL),
(2, 'author', NULL, NULL),
(3, 'subscriber', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED DEFAULT NULL,
  `is_active` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `role_id`, `is_active`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 'Gospel Lekia', 'lekiagospel@gmail.com', '$2y$10$BpTsHS8A5g0CS8WIeY/YeOM2sm5aIRRjbOsRjvHsPQTi/HetxvgQ2', NULL, '2019-04-20 13:41:40', '2019-04-20 13:41:40');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`),
  ADD KEY `password_resets_token_index` (`token`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_role_id_index` (`role_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- Database: `kidstories`
--
CREATE DATABASE IF NOT EXISTS `kidstories` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `kidstories`;

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Gospel Lekia', 'lekiagospel@gmail.com', '2019-04-07 23:00:00', '1991gospel', NULL, '2019-04-15 23:00:00', NULL),
(2, 'Gospel Lekia', 'pindroptech@gmail.com', '2019-04-07 23:00:00', '1991go', NULL, '2019-04-15 23:00:00', NULL),
(3, 'Gospel Lekia', 'Yigaue20@yahoo.com', NULL, '$2y$10$urnrTJEUAeR8OvISv7sNjORAUynn2UzdEjwbG0wJmSNvLlVAaSnky', NULL, '2019-04-29 13:12:19', '2019-04-29 13:12:19');

-- --------------------------------------------------------

--
-- Table structure for table `bookmarks`
--

CREATE TABLE `bookmarks` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `story_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image_url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `story_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_11_000000_create_admins_table', 1),
(2, '2014_10_12_000000_create_users_table', 1),
(3, '2014_10_12_100000_create_password_resets_table', 1),
(4, '2016_06_01_000001_create_oauth_auth_codes_table', 1),
(5, '2016_06_01_000002_create_oauth_access_tokens_table', 1),
(6, '2016_06_01_000003_create_oauth_refresh_tokens_table', 1),
(7, '2016_06_01_000004_create_oauth_clients_table', 1),
(8, '2016_06_01_000005_create_oauth_personal_access_clients_table', 1),
(9, '2019_04_26_112454_create_categories_table', 1),
(10, '2019_04_27_112319_create_stories_table', 1),
(11, '2019_04_27_112459_create_bookmarks_table', 1),
(12, '2019_04_27_112504_create_reactions_table', 1),
(13, '2019_04_27_112509_create_comments_table', 1),
(14, '2019_04_27_112515_create_subscriptions_table', 1),
(15, '2019_04_27_112519_create_payments_table', 1),
(16, '2019_04_27_112524_create_subscribeds_table', 1),
(17, '2019_04_28_043716_add_user_id_to_subscribeds', 1);

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `client_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `client_id` int(10) UNSIGNED NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` int(10) UNSIGNED NOT NULL,
  `client_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `amount` double NOT NULL,
  `transaction_reference` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `reactions`
--

CREATE TABLE `reactions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `story_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `reaction` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `stories`
--

CREATE TABLE `stories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `image_url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `age` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `author` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `story_duration` time NOT NULL,
  `is_premium` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `subscribeds`
--

CREATE TABLE `subscribeds` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `subscription_id` bigint(20) UNSIGNED NOT NULL,
  `expired_date` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `subscriptions`
--

CREATE TABLE `subscriptions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cost` double NOT NULL,
  `duration` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `first_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_admin` tinyint(1) NOT NULL DEFAULT '0',
  `image_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `location` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `postal_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `is_admin`, `image_name`, `image_url`, `phone`, `location`, `postal_code`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Gospel', 'Lekia', 'lekiagospel@gmail.com', 1, NULL, NULL, '07032034154', 'Oyo', NULL, NULL, '1991gospel', NULL, '2019-04-19 23:00:00', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admins_email_unique` (`email`);

--
-- Indexes for table `bookmarks`
--
ALTER TABLE `bookmarks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `bookmarks_user_id_foreign` (`user_id`),
  ADD KEY `bookmarks_story_id_foreign` (`story_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `comments_user_id_foreign` (`user_id`),
  ADD KEY `comments_story_id_foreign` (`story_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_access_tokens`
--
ALTER TABLE `oauth_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_access_tokens_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_auth_codes`
--
ALTER TABLE `oauth_auth_codes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_clients_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_personal_access_clients_client_id_index` (`client_id`);

--
-- Indexes for table `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `payments_user_id_foreign` (`user_id`);

--
-- Indexes for table `reactions`
--
ALTER TABLE `reactions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `reactions_user_id_foreign` (`user_id`),
  ADD KEY `reactions_story_id_foreign` (`story_id`);

--
-- Indexes for table `stories`
--
ALTER TABLE `stories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `stories_category_id_foreign` (`category_id`);

--
-- Indexes for table `subscribeds`
--
ALTER TABLE `subscribeds`
  ADD PRIMARY KEY (`id`),
  ADD KEY `subscribeds_subscription_id_foreign` (`subscription_id`);

--
-- Indexes for table `subscriptions`
--
ALTER TABLE `subscriptions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `bookmarks`
--
ALTER TABLE `bookmarks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `reactions`
--
ALTER TABLE `reactions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `stories`
--
ALTER TABLE `stories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `subscribeds`
--
ALTER TABLE `subscribeds`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `subscriptions`
--
ALTER TABLE `subscriptions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `bookmarks`
--
ALTER TABLE `bookmarks`
  ADD CONSTRAINT `bookmarks_story_id_foreign` FOREIGN KEY (`story_id`) REFERENCES `stories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `bookmarks_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_story_id_foreign` FOREIGN KEY (`story_id`) REFERENCES `stories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `comments_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `payments`
--
ALTER TABLE `payments`
  ADD CONSTRAINT `payments_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `reactions`
--
ALTER TABLE `reactions`
  ADD CONSTRAINT `reactions_story_id_foreign` FOREIGN KEY (`story_id`) REFERENCES `stories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `reactions_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `stories`
--
ALTER TABLE `stories`
  ADD CONSTRAINT `stories_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `subscribeds`
--
ALTER TABLE `subscribeds`
  ADD CONSTRAINT `subscribeds_subscription_id_foreign` FOREIGN KEY (`subscription_id`) REFERENCES `subscriptions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
--
-- Database: `laravel_cms`
--
CREATE DATABASE IF NOT EXISTS `laravel_cms` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `laravel_cms`;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`migration`, `batch`) VALUES
('2014_10_12_000000_create_users_table', 1),
('2014_10_12_100000_create_password_resets_table', 1),
('2019_03_11_114227_create_posts_table', 1),
('2019_03_11_165748_add_is_admin_column_to_posts_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `content` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `created_at`, `updated_at`, `title`, `content`) VALUES
(1, '2019-04-19 23:00:00', NULL, 'Perfect Lekia', 'She is still schooling'),
(2, '2019-04-19 23:00:00', NULL, 'Prosper Lekia', 'i am a develper'),
(3, '2019-04-19 23:00:00', NULL, 'Gospel Lekia', 'Gospel works with HNG'),
(4, '2019-04-20 12:39:35', '2019-04-20 12:42:58', 'Peace Lekia Efeeloo', 'yes,She is yet to gain admission');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`),
  ADD KEY `password_resets_token_index` (`token`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Database: `myblog`
--
CREATE DATABASE IF NOT EXISTS `myblog` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `myblog`;

-- --------------------------------------------------------

--
-- Table structure for table `myblog`
--

CREATE TABLE `myblog` (
  `name` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
--
-- Database: `phpmyadmin`
--
CREATE DATABASE IF NOT EXISTS `phpmyadmin` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `phpmyadmin`;

-- --------------------------------------------------------

--
-- Table structure for table `pma__bookmark`
--

CREATE TABLE `pma__bookmark` (
  `id` int(11) NOT NULL,
  `dbase` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `query` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';

-- --------------------------------------------------------

--
-- Table structure for table `pma__central_columns`
--

CREATE TABLE `pma__central_columns` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_length` text COLLATE utf8_bin,
  `col_collation` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_isNull` tinyint(1) NOT NULL,
  `col_extra` varchar(255) COLLATE utf8_bin DEFAULT '',
  `col_default` text COLLATE utf8_bin
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Central list of columns';

-- --------------------------------------------------------

--
-- Table structure for table `pma__column_info`
--

CREATE TABLE `pma__column_info` (
  `id` int(5) UNSIGNED NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `column_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__designer_settings`
--

CREATE TABLE `pma__designer_settings` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `settings_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Settings related to Designer';

-- --------------------------------------------------------

--
-- Table structure for table `pma__export_templates`
--

CREATE TABLE `pma__export_templates` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `export_type` varchar(10) COLLATE utf8_bin NOT NULL,
  `template_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `template_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved export templates';

-- --------------------------------------------------------

--
-- Table structure for table `pma__favorite`
--

CREATE TABLE `pma__favorite` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Favorite tables';

-- --------------------------------------------------------

--
-- Table structure for table `pma__history`
--

CREATE TABLE `pma__history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `sqlquery` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__navigationhiding`
--

CREATE TABLE `pma__navigationhiding` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';

-- --------------------------------------------------------

--
-- Table structure for table `pma__pdf_pages`
--

CREATE TABLE `pma__pdf_pages` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `page_nr` int(10) UNSIGNED NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__recent`
--

CREATE TABLE `pma__recent` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

-- --------------------------------------------------------

--
-- Table structure for table `pma__relation`
--

CREATE TABLE `pma__relation` (
  `master_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- Table structure for table `pma__savedsearches`
--

CREATE TABLE `pma__savedsearches` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved searches';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_coords`
--

CREATE TABLE `pma__table_coords` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT '0',
  `x` float UNSIGNED NOT NULL DEFAULT '0',
  `y` float UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_info`
--

CREATE TABLE `pma__table_info` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `display_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_uiprefs`
--

CREATE TABLE `pma__table_uiprefs` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `prefs` text COLLATE utf8_bin NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

-- --------------------------------------------------------

--
-- Table structure for table `pma__tracking`
--

CREATE TABLE `pma__tracking` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `version` int(10) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text COLLATE utf8_bin NOT NULL,
  `schema_sql` text COLLATE utf8_bin,
  `data_sql` longtext COLLATE utf8_bin,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') COLLATE utf8_bin DEFAULT NULL,
  `tracking_active` int(1) UNSIGNED NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__userconfig`
--

CREATE TABLE `pma__userconfig` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `config_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- Dumping data for table `pma__userconfig`
--

INSERT INTO `pma__userconfig` (`username`, `timevalue`, `config_data`) VALUES
('root', '2019-04-30 09:51:09', '{\"Console\\/Mode\":\"collapse\"}');

-- --------------------------------------------------------

--
-- Table structure for table `pma__usergroups`
--

CREATE TABLE `pma__usergroups` (
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL,
  `tab` varchar(64) COLLATE utf8_bin NOT NULL,
  `allowed` enum('Y','N') COLLATE utf8_bin NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- Table structure for table `pma__users`
--

CREATE TABLE `pma__users` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pma__central_columns`
--
ALTER TABLE `pma__central_columns`
  ADD PRIMARY KEY (`db_name`,`col_name`);

--
-- Indexes for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`);

--
-- Indexes for table `pma__designer_settings`
--
ALTER TABLE `pma__designer_settings`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_user_type_template` (`username`,`export_type`,`template_name`);

--
-- Indexes for table `pma__favorite`
--
ALTER TABLE `pma__favorite`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__history`
--
ALTER TABLE `pma__history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`,`db`,`table`,`timevalue`);

--
-- Indexes for table `pma__navigationhiding`
--
ALTER TABLE `pma__navigationhiding`
  ADD PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`);

--
-- Indexes for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  ADD PRIMARY KEY (`page_nr`),
  ADD KEY `db_name` (`db_name`);

--
-- Indexes for table `pma__recent`
--
ALTER TABLE `pma__recent`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__relation`
--
ALTER TABLE `pma__relation`
  ADD PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  ADD KEY `foreign_field` (`foreign_db`,`foreign_table`);

--
-- Indexes for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`);

--
-- Indexes for table `pma__table_coords`
--
ALTER TABLE `pma__table_coords`
  ADD PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`);

--
-- Indexes for table `pma__table_info`
--
ALTER TABLE `pma__table_info`
  ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- Indexes for table `pma__table_uiprefs`
--
ALTER TABLE `pma__table_uiprefs`
  ADD PRIMARY KEY (`username`,`db_name`,`table_name`);

--
-- Indexes for table `pma__tracking`
--
ALTER TABLE `pma__tracking`
  ADD PRIMARY KEY (`db_name`,`table_name`,`version`);

--
-- Indexes for table `pma__userconfig`
--
ALTER TABLE `pma__userconfig`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__usergroups`
--
ALTER TABLE `pma__usergroups`
  ADD PRIMARY KEY (`usergroup`,`tab`,`allowed`);

--
-- Indexes for table `pma__users`
--
ALTER TABLE `pma__users`
  ADD PRIMARY KEY (`username`,`usergroup`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__history`
--
ALTER TABLE `pma__history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  MODIFY `page_nr` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Database: `sampleblog`
--
CREATE DATABASE IF NOT EXISTS `sampleblog` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `sampleblog`;

-- --------------------------------------------------------

--
-- Table structure for table `blog_members`
--

CREATE TABLE `blog_members` (
  `memberID` int(11) UNSIGNED NOT NULL,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `blog_members`
--

INSERT INTO `blog_members` (`memberID`, `username`, `password`, `email`) VALUES
(1, 'Demo', '$2y$10$wJxa1Wm0rtS2BzqKnoCPd.7QQzgu7D/aLlMR5Aw3O.m9jx3oRJ5R2', 'demo@demo.com'),
(3, 'lekia', '$2y$10$oBc2BhaSHV8GWgff66v9leBjlIqseExL62KaVFQbyh2OFHwruaBMO', 'lekiagospel@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `blog_posts`
--

CREATE TABLE `blog_posts` (
  `postID` int(11) UNSIGNED NOT NULL,
  `postTitle` varchar(255) DEFAULT NULL,
  `postDesc` text,
  `postCont` text,
  `postDate` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `blog_posts`
--

INSERT INTO `blog_posts` (`postID`, `postTitle`, `postDesc`, `postCont`, `postDate`) VALUES
(3, '5 THINGS I WISH I KNEW YEARS AGO AS A DEVELOPER IN SECURING MY DREAM JOB', '<p>Hello developer, I am glad you found this article. I wrote this with you in mind, and it is meant to guard you on this path. Why bear another burden when there is help?\r\nLife is lot easier when there are those on whose shoulders you can climb. Here I will be sharing briefly with you some truth that will boast your velocity whether as beginner, intermediate or youâ€™ve been around a while.\r\n</p>', '<h2>5 THINGS I WISH I KNEW YEARS AGO AS A DEVELOPER IN SECURING MY DREAM JOB</h2>\r\n\r\n<p>Hello developer, I am glad you found this article. I wrote this with you in mind, and it is meant to guard you on this path. Why bear another burden when there is help?\r\nLife is lot easier when there are those on whose shoulders you can climb. Here I will be sharing briefly with you some truth that will boast your velocity whether as beginner, intermediate or youâ€™ve been around a while.\r\nBecoming a developer is challenging and yet exciting. Youâ€™ve to love the job, or I should call it calling. It is something that you canâ€™t do casually. It requires a consistent and conscientious effort. The discipline, dedication and diligence are not words but in doing. Nobody pays to hear you talk as developer, you paid to do. So, sharpening your skills is top priority. \r\nâ€˜Okay, enough intro letâ€™s get to itâ€™. You are right weâ€™re getting there. I will list them out and we begin. \r\n</p>\r\n<ul>\r\n<li>Get a corner in the room</li>\r\n<li>Work your corner before inviting guest</li>\r\n<li>Keep up the standard</li>\r\n<li>Who say your dream Job is impossible?</li>\r\n<li>Donâ€™t reinvent the wheels, Leverage on platforms</li>\r\n</ul>\r\n<h2>Get a Corner in the Room/h2>\r\n<p>Joining the world of developers may sound exciting. You may have excitedly proclaimed â€˜I am a developerâ€™, only to discover your excitement just died the next minute on peeping in. You donâ€™t have be discouraged, we all felt that way too. \r\nThere are millions of developers round the world and you just +1. This should not scare you. You are unique in the million. Whatever, has brought you the developers society needs you. The number of developers is not important as it is that you get a corner. Look for aa niche and fit yourself. This is this place where you have passion for and wish pour your life, as life is not long enough for any of us. Choosing a language and start with it till you are proficient enough. Donâ€™t be carried away by the trends and all the buzz. Just pick a tool and master. This leads us to the next point.\r\n</p>\r\n<h2>Work your corner before inviting Guest</h2>\r\n<p>This is important. There are young developers who so out to impress. This is should not be your trade. You could waste precious hours if you do not plan your route as a developer. There are myriads of information available to you, but you donâ€™t need all of them. you need to be selective where you quench your hunger. How many hours can you invest to build your skills? Information is good, but skills is what people are paying for. You have to invest time and get rid of distractions. Get to know the fundamentals involve your field.\r\nDonâ€™t start by going for the jobs. Work your skills enough. You can do some task and project along the way but keep that big company out of it. \r\n</p>\r\n\r\n<h2>Keep Up the Standard</h2>\r\n<p>You are not done yet but you are close. After building your skills and choosing your tools, it is time to go a little out. Now youâ€™re ready to add more load. I call this keeping up the standard. Maintaining your relevance as a developer is challenging too. This is because technology is fast evolving and their new innovations and practice almost every day. It is not easy to keep up the with the trends, but you can if you have worked on your foundation adequately\r\nMake research for what skills and requirement is needed to land your dream job. Add these to your cart and gradually work on them. When youâ€™re ready attack with full force.\r\n</p>', '2013-06-05 23:20:24'),
(6, 'Rewrite Your Life', '<p>People have asked â€˜how do I fulfill purposeâ€™; how do I live life to the fullest? Some have lived lives worth celebrating, yet others have passed by on earth hardly noticed. The valley of the ordinary life seems not to let go, whilst they yearn for a better life, their lives do not seem to rise above the roof top. </p>', '<h2>Rewrite your Life</h2>\r\n<p>People have asked â€˜how do I fulfill purposeâ€™; how do I live life to the fullest? Some have lived lives worth celebrating, yet others have passed by on earth hardly noticed. The valley of the ordinary life seems not to let go, whilst they yearn for a better life, their lives do not seem to rise above the roof top. \r\nCan everyone live an extraordinary life? The answer is no. can anyone live an extraordinary life? Yes. Can I live an extraordinary life? Can I really make my life count after all I have been through? â€“ Yes you can, but you alone can decide that. Your life was design to drip milk and honey; to be what the nations will look upon in admiration. But right now that may seem the opposite or there is this lump of dissatisfaction in your breast. It has not always been easy, and will not ever be. But the truth is, you can get better and quickly.\r\n.</p>', '2013-06-06 08:28:35');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `blog_members`
--
ALTER TABLE `blog_members`
  ADD PRIMARY KEY (`memberID`);

--
-- Indexes for table `blog_posts`
--
ALTER TABLE `blog_posts`
  ADD PRIMARY KEY (`postID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `blog_members`
--
ALTER TABLE `blog_members`
  MODIFY `memberID` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `blog_posts`
--
ALTER TABLE `blog_posts`
  MODIFY `postID` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- Database: `test`
--
CREATE DATABASE IF NOT EXISTS `test` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `test`;

-- --------------------------------------------------------

--
-- Table structure for table `studentdata`
--

CREATE TABLE `studentdata` (
  `id` int(10) UNSIGNED NOT NULL,
  `date_reg` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `firstname` varchar(50) NOT NULL,
  `surname` varchar(50) NOT NULL,
  `class` varchar(4) NOT NULL,
  `age` varchar(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `studentdata`
--

INSERT INTO `studentdata` (`id`, `date_reg`, `firstname`, `surname`, `class`, `age`) VALUES
(1, '0000-00-00 00:00:00', 'Hoj', 'Feie', 'SS1', '17'),
(2, '0000-00-00 00:00:00', 'Lekia', 'Gospel', 'SS2', '13'),
(3, NULL, 'Wilson', 'Churuchill', 'SS3', '18'),
(4, '2019-04-05 12:34:10', 'James', 'Oborn', 'JS3', '20'),
(5, '2019-04-05 12:39:49', 'Tayo', 'Deolo', 'SS3', '12'),
(6, '2019-04-05 12:52:38', 'Moses', 'Dada', 'SS2', '13'),
(7, '2019-04-05 12:53:35', 'Moses', 'Dada', 'SS2', '13'),
(8, '2019-04-05 12:54:34', 'Moses', 'Dada', 'SS2', '13'),
(9, '2019-04-05 12:58:08', 'Moses', 'Dada', 'SS2', '13'),
(10, '2019-04-05 12:58:48', 'Moses', 'Dada', 'SS2', '13');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `studentdata`
--
ALTER TABLE `studentdata`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `studentdata`
--
ALTER TABLE `studentdata`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
