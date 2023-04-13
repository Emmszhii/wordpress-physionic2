-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 13, 2023 at 03:01 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db-physionic`
--

-- --------------------------------------------------------

--
-- Table structure for table `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_comments`
--

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `comment_author` tinytext NOT NULL,
  `comment_author_email` varchar(100) NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT 0,
  `comment_approved` varchar(20) NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) NOT NULL DEFAULT '',
  `comment_type` varchar(20) NOT NULL DEFAULT 'comment',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'A WordPress Commenter', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2023-03-29 23:45:40', '2023-03-29 23:45:40', 'Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href=\"https://en.gravatar.com/\">Gravatar</a>.', 0, 'post-trashed', '', 'comment', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_links`
--

CREATE TABLE `wp_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) NOT NULL DEFAULT '',
  `link_name` varchar(255) NOT NULL DEFAULT '',
  `link_image` varchar(255) NOT NULL DEFAULT '',
  `link_target` varchar(25) NOT NULL DEFAULT '',
  `link_description` varchar(255) NOT NULL DEFAULT '',
  `link_visible` varchar(20) NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT 1,
  `link_rating` int(11) NOT NULL DEFAULT 0,
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) NOT NULL DEFAULT '',
  `link_notes` mediumtext NOT NULL,
  `link_rss` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) NOT NULL DEFAULT '',
  `option_value` longtext NOT NULL,
  `autoload` varchar(20) NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost/physionic', 'yes'),
(2, 'home', 'http://localhost/physionic', 'yes'),
(3, 'blogname', 'Physionic', 'yes'),
(4, 'blogdescription', '', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'emmszhii@gmail.com', 'yes'),
(7, 'start_of_week', '1', 'yes'),
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
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%year%/%monthnum%/%day%/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:112:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:17:\"^wp-sitemap\\.xml$\";s:23:\"index.php?sitemap=index\";s:17:\"^wp-sitemap\\.xsl$\";s:36:\"index.php?sitemap-stylesheet=sitemap\";s:23:\"^wp-sitemap-index\\.xsl$\";s:34:\"index.php?sitemap-stylesheet=index\";s:48:\"^wp-sitemap-([a-z]+?)-([a-z\\d_-]+?)-(\\d+?)\\.xml$\";s:75:\"index.php?sitemap=$matches[1]&sitemap-subtype=$matches[2]&paged=$matches[3]\";s:34:\"^wp-sitemap-([a-z]+?)-(\\d+?)\\.xml$\";s:47:\"index.php?sitemap=$matches[1]&paged=$matches[2]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:41:\"physionicpost/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:51:\"physionicpost/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:71:\"physionicpost/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:66:\"physionicpost/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:66:\"physionicpost/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:47:\"physionicpost/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:30:\"physionicpost/([^/]+)/embed/?$\";s:46:\"index.php?physionicpost=$matches[1]&embed=true\";s:34:\"physionicpost/([^/]+)/trackback/?$\";s:40:\"index.php?physionicpost=$matches[1]&tb=1\";s:42:\"physionicpost/([^/]+)/page/?([0-9]{1,})/?$\";s:53:\"index.php?physionicpost=$matches[1]&paged=$matches[2]\";s:49:\"physionicpost/([^/]+)/comment-page-([0-9]{1,})/?$\";s:53:\"index.php?physionicpost=$matches[1]&cpage=$matches[2]\";s:38:\"physionicpost/([^/]+)(?:/([0-9]+))?/?$\";s:52:\"index.php?physionicpost=$matches[1]&page=$matches[2]\";s:30:\"physionicpost/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:40:\"physionicpost/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:60:\"physionicpost/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:55:\"physionicpost/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:55:\"physionicpost/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:36:\"physionicpost/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:39:\"index.php?&page_id=51&cpage=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:58:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:68:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:88:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:64:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:53:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$\";s:91:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$\";s:85:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1\";s:77:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:65:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]\";s:61:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]\";s:47:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:57:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:77:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:53:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]\";s:51:\"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]\";s:38:\"([0-9]{4})/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&cpage=$matches[2]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:3:{i:0;s:34:\"advanced-custom-fields-pro/acf.php\";i:2;s:33:\"classic-editor/classic-editor.php\";i:3;s:37:\"post-types-order/post-types-order.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', 'a:3:{i:0;s:66:\"C:\\xampp\\htdocs\\physionic/wp-content/themes/physionic/css/main.css\";i:1;s:63:\"C:\\xampp\\htdocs\\physionic/wp-content/themes/physionic/style.css\";i:3;s:0:\"\";}', 'no'),
(40, 'template', 'physionic', 'yes'),
(41, 'stylesheet', 'physionic', 'yes'),
(42, 'comment_registration', '0', 'yes'),
(43, 'html_type', 'text/html', 'yes'),
(44, 'use_trackback', '0', 'yes'),
(45, 'default_role', 'subscriber', 'yes'),
(46, 'db_version', '53496', 'yes'),
(47, 'uploads_use_yearmonth_folders', '1', 'yes'),
(48, 'upload_path', '', 'yes'),
(49, 'blog_public', '1', 'yes'),
(50, 'default_link_category', '2', 'yes'),
(51, 'show_on_front', 'page', 'yes'),
(52, 'tag_base', '', 'yes'),
(53, 'show_avatars', '1', 'yes'),
(54, 'avatar_rating', 'G', 'yes'),
(55, 'upload_url_path', '', 'yes'),
(56, 'thumbnail_size_w', '150', 'yes'),
(57, 'thumbnail_size_h', '150', 'yes'),
(58, 'thumbnail_crop', '1', 'yes'),
(59, 'medium_size_w', '300', 'yes'),
(60, 'medium_size_h', '300', 'yes'),
(61, 'avatar_default', 'mystery', 'yes'),
(62, 'large_size_w', '1024', 'yes'),
(63, 'large_size_h', '1024', 'yes'),
(64, 'image_default_link_type', 'none', 'yes'),
(65, 'image_default_size', '', 'yes'),
(66, 'image_default_align', '', 'yes'),
(67, 'close_comments_for_old_posts', '0', 'yes'),
(68, 'close_comments_days_old', '14', 'yes'),
(69, 'thread_comments', '1', 'yes'),
(70, 'thread_comments_depth', '5', 'yes'),
(71, 'page_comments', '0', 'yes'),
(72, 'comments_per_page', '50', 'yes'),
(73, 'default_comments_page', 'newest', 'yes'),
(74, 'comment_order', 'asc', 'yes'),
(75, 'sticky_posts', 'a:0:{}', 'yes'),
(76, 'widget_categories', 'a:0:{}', 'yes'),
(77, 'widget_text', 'a:0:{}', 'yes'),
(78, 'widget_rss', 'a:0:{}', 'yes'),
(79, 'uninstall_plugins', 'a:0:{}', 'no'),
(80, 'timezone_string', '', 'yes'),
(81, 'page_for_posts', '0', 'yes'),
(82, 'page_on_front', '51', 'yes'),
(83, 'default_post_format', '0', 'yes'),
(84, 'link_manager_enabled', '0', 'yes'),
(85, 'finished_splitting_shared_terms', '1', 'yes'),
(86, 'site_icon', '0', 'yes'),
(87, 'medium_large_size_w', '768', 'yes'),
(88, 'medium_large_size_h', '0', 'yes'),
(89, 'wp_page_for_privacy_policy', '3', 'yes'),
(90, 'show_comments_cookies_opt_in', '1', 'yes'),
(91, 'admin_email_lifespan', '1695685539', 'yes'),
(92, 'disallowed_keys', '', 'no'),
(93, 'comment_previously_approved', '1', 'yes'),
(94, 'auto_plugin_theme_update_emails', 'a:0:{}', 'no'),
(95, 'auto_update_core_dev', 'enabled', 'yes'),
(96, 'auto_update_core_minor', 'enabled', 'yes'),
(97, 'auto_update_core_major', 'enabled', 'yes'),
(98, 'wp_force_deactivated_plugins', 'a:0:{}', 'yes'),
(99, 'initial_db_version', '53496', 'yes'),
(100, 'wp_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'yes'),
(101, 'fresh_site', '0', 'yes'),
(102, 'user_count', '1', 'no'),
(103, 'widget_block', 'a:6:{i:2;a:1:{s:7:\"content\";s:19:\"<!-- wp:search /-->\";}i:3;a:1:{s:7:\"content\";s:154:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Recent Posts</h2><!-- /wp:heading --><!-- wp:latest-posts /--></div><!-- /wp:group -->\";}i:4;a:1:{s:7:\"content\";s:227:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Recent Comments</h2><!-- /wp:heading --><!-- wp:latest-comments {\"displayAvatar\":false,\"displayDate\":false,\"displayExcerpt\":false} /--></div><!-- /wp:group -->\";}i:5;a:1:{s:7:\"content\";s:146:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Archives</h2><!-- /wp:heading --><!-- wp:archives /--></div><!-- /wp:group -->\";}i:6;a:1:{s:7:\"content\";s:150:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Categories</h2><!-- /wp:heading --><!-- wp:categories /--></div><!-- /wp:group -->\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(104, 'sidebars_widgets', 'a:2:{s:19:\"wp_inactive_widgets\";a:5:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";i:3;s:7:\"block-5\";i:4;s:7:\"block-6\";}s:13:\"array_version\";i:3;}', 'yes'),
(105, 'cron', 'a:7:{i:1681350340;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1681386340;a:4:{s:18:\"wp_https_detection\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1681386349;a:1:{s:21:\"wp_update_user_counts\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1681429540;a:2:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1681429549;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1681429559;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}s:7:\"version\";i:2;}', 'yes'),
(106, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_archives', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(111, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(112, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(113, 'widget_meta', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(114, 'widget_search', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(115, 'widget_recent-posts', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(116, 'widget_recent-comments', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(117, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(118, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(119, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(121, 'recovery_keys', 'a:0:{}', 'yes'),
(124, 'theme_mods_twentytwentythree', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1680134075;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";}s:9:\"sidebar-2\";a:2:{i:0;s:7:\"block-5\";i:1;s:7:\"block-6\";}}}}', 'yes'),
(127, 'https_detection_errors', 'a:1:{s:23:\"ssl_verification_failed\";a:1:{i:0;s:24:\"SSL verification failed.\";}}', 'yes'),
(141, 'can_compress_scripts', '1', 'no'),
(154, 'recently_activated', 'a:0:{}', 'yes'),
(155, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:57:\"https://downloads.wordpress.org/release/wordpress-6.2.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:57:\"https://downloads.wordpress.org/release/wordpress-6.2.zip\";s:10:\"no_content\";s:68:\"https://downloads.wordpress.org/release/wordpress-6.2-no-content.zip\";s:11:\"new_bundled\";s:69:\"https://downloads.wordpress.org/release/wordpress-6.2-new-bundled.zip\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:3:\"6.2\";s:7:\"version\";s:3:\"6.2\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"6.1\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1681346145;s:15:\"version_checked\";s:3:\"6.2\";s:12:\"translations\";a:0:{}}', 'no'),
(156, 'auto_core_update_notified', 'a:4:{s:4:\"type\";s:7:\"success\";s:5:\"email\";s:18:\"emmszhii@gmail.com\";s:7:\"version\";s:3:\"6.2\";s:9:\"timestamp\";i:1680133587;}', 'no'),
(163, 'finished_updating_comment_type', '1', 'yes'),
(168, 'current_theme', '', 'yes'),
(169, 'theme_mods_physionic', 'a:3:{i:0;b:0;s:18:\"nav_menu_locations\";a:1:{s:11:\"header_menu\";i:2;}s:18:\"custom_css_post_id\";i:-1;}', 'yes'),
(170, 'theme_switched', '', 'yes'),
(173, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}', 'yes'),
(177, 'acf_version', '6.0.5', 'yes'),
(182, 'recovery_mode_email_last_sent', '1680139909', 'yes'),
(197, 'category_children', 'a:0:{}', 'yes'),
(218, '_transient_health-check-site-status-result', '{\"good\":15,\"recommended\":5,\"critical\":1}', 'yes'),
(245, '_site_transient_timeout_php_check_ce267f3653936506950ae9448202043a', '1681774781', 'no'),
(246, '_site_transient_php_check_ce267f3653936506950ae9448202043a', 'a:5:{s:19:\"recommended_version\";s:3:\"7.4\";s:15:\"minimum_version\";s:6:\"5.6.20\";s:12:\"is_supported\";b:1;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}', 'no'),
(266, '_transient_timeout_acf_plugin_updates', '1681518956', 'no'),
(267, '_transient_acf_plugin_updates', 'a:4:{s:7:\"plugins\";a:1:{s:34:\"advanced-custom-fields-pro/acf.php\";a:8:{s:4:\"slug\";s:26:\"advanced-custom-fields-pro\";s:6:\"plugin\";s:34:\"advanced-custom-fields-pro/acf.php\";s:11:\"new_version\";s:5:\"6.1.4\";s:3:\"url\";s:36:\"https://www.advancedcustomfields.com\";s:6:\"tested\";s:3:\"6.2\";s:7:\"package\";s:0:\"\";s:5:\"icons\";a:1:{s:7:\"default\";s:63:\"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png\";}s:7:\"banners\";a:2:{s:3:\"low\";s:77:\"https://ps.w.org/advanced-custom-fields/assets/banner-772x250.jpg?rev=1729102\";s:4:\"high\";s:78:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=1729099\";}}}s:10:\"expiration\";i:172800;s:6:\"status\";i:1;s:7:\"checked\";a:1:{s:34:\"advanced-custom-fields-pro/acf.php\";s:5:\"6.0.5\";}}', 'no'),
(268, '_site_transient_timeout_theme_roots', '1681347957', 'no'),
(269, '_site_transient_theme_roots', 'a:4:{s:9:\"physionic\";s:7:\"/themes\";s:15:\"twentytwentyone\";s:7:\"/themes\";s:17:\"twentytwentythree\";s:7:\"/themes\";s:15:\"twentytwentytwo\";s:7:\"/themes\";}', 'no'),
(270, '_site_transient_update_themes', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1681346159;s:7:\"checked\";a:4:{s:9:\"physionic\";s:0:\"\";s:15:\"twentytwentyone\";s:3:\"1.7\";s:17:\"twentytwentythree\";s:3:\"1.0\";s:15:\"twentytwentytwo\";s:3:\"1.3\";}s:8:\"response\";a:3:{s:15:\"twentytwentyone\";a:6:{s:5:\"theme\";s:15:\"twentytwentyone\";s:11:\"new_version\";s:3:\"1.8\";s:3:\"url\";s:45:\"https://wordpress.org/themes/twentytwentyone/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/theme/twentytwentyone.1.8.zip\";s:8:\"requires\";s:3:\"5.3\";s:12:\"requires_php\";s:3:\"5.6\";}s:17:\"twentytwentythree\";a:6:{s:5:\"theme\";s:17:\"twentytwentythree\";s:11:\"new_version\";s:3:\"1.1\";s:3:\"url\";s:47:\"https://wordpress.org/themes/twentytwentythree/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/theme/twentytwentythree.1.1.zip\";s:8:\"requires\";s:3:\"6.1\";s:12:\"requires_php\";s:3:\"5.6\";}s:15:\"twentytwentytwo\";a:6:{s:5:\"theme\";s:15:\"twentytwentytwo\";s:11:\"new_version\";s:3:\"1.4\";s:3:\"url\";s:45:\"https://wordpress.org/themes/twentytwentytwo/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/theme/twentytwentytwo.1.4.zip\";s:8:\"requires\";s:3:\"5.9\";s:12:\"requires_php\";s:3:\"5.6\";}}s:9:\"no_update\";a:0:{}s:12:\"translations\";a:0:{}}', 'no'),
(271, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1681346161;s:8:\"response\";a:3:{s:30:\"advanced-custom-fields/acf.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:36:\"w.org/plugins/advanced-custom-fields\";s:4:\"slug\";s:22:\"advanced-custom-fields\";s:6:\"plugin\";s:30:\"advanced-custom-fields/acf.php\";s:11:\"new_version\";s:5:\"6.1.4\";s:3:\"url\";s:53:\"https://wordpress.org/plugins/advanced-custom-fields/\";s:7:\"package\";s:71:\"https://downloads.wordpress.org/plugin/advanced-custom-fields.6.1.4.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png?rev=1082746\";s:2:\"1x\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-128x128.png?rev=1082746\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:78:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=2892919\";s:2:\"1x\";s:77:\"https://ps.w.org/advanced-custom-fields/assets/banner-772x250.jpg?rev=2892919\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"4.7\";s:6:\"tested\";s:3:\"6.2\";s:12:\"requires_php\";s:3:\"5.6\";}s:37:\"post-types-order/post-types-order.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:30:\"w.org/plugins/post-types-order\";s:4:\"slug\";s:16:\"post-types-order\";s:6:\"plugin\";s:37:\"post-types-order/post-types-order.php\";s:11:\"new_version\";s:5:\"2.0.2\";s:3:\"url\";s:47:\"https://wordpress.org/plugins/post-types-order/\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/plugin/post-types-order.2.0.2.zip\";s:5:\"icons\";a:1:{s:2:\"1x\";s:69:\"https://ps.w.org/post-types-order/assets/icon-128x128.png?rev=1226428\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:72:\"https://ps.w.org/post-types-order/assets/banner-1544x500.png?rev=1675574\";s:2:\"1x\";s:71:\"https://ps.w.org/post-types-order/assets/banner-772x250.png?rev=2870026\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"2.8\";s:6:\"tested\";s:3:\"6.2\";s:12:\"requires_php\";b:0;}s:34:\"advanced-custom-fields-pro/acf.php\";O:8:\"stdClass\":8:{s:4:\"slug\";s:26:\"advanced-custom-fields-pro\";s:6:\"plugin\";s:34:\"advanced-custom-fields-pro/acf.php\";s:11:\"new_version\";s:5:\"6.1.4\";s:3:\"url\";s:36:\"https://www.advancedcustomfields.com\";s:6:\"tested\";s:3:\"6.2\";s:7:\"package\";s:0:\"\";s:5:\"icons\";a:1:{s:7:\"default\";s:63:\"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png\";}s:7:\"banners\";a:2:{s:3:\"low\";s:77:\"https://ps.w.org/advanced-custom-fields/assets/banner-772x250.jpg?rev=1729102\";s:4:\"high\";s:78:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=1729099\";}}}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:1:{s:33:\"classic-editor/classic-editor.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:28:\"w.org/plugins/classic-editor\";s:4:\"slug\";s:14:\"classic-editor\";s:6:\"plugin\";s:33:\"classic-editor/classic-editor.php\";s:11:\"new_version\";s:5:\"1.6.3\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/classic-editor/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/plugin/classic-editor.1.6.3.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/classic-editor/assets/icon-256x256.png?rev=1998671\";s:2:\"1x\";s:67:\"https://ps.w.org/classic-editor/assets/icon-128x128.png?rev=1998671\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:70:\"https://ps.w.org/classic-editor/assets/banner-1544x500.png?rev=1998671\";s:2:\"1x\";s:69:\"https://ps.w.org/classic-editor/assets/banner-772x250.png?rev=1998676\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"4.9\";}}s:7:\"checked\";a:4:{s:30:\"advanced-custom-fields/acf.php\";s:5:\"6.0.7\";s:34:\"advanced-custom-fields-pro/acf.php\";s:5:\"6.0.5\";s:33:\"classic-editor/classic-editor.php\";s:5:\"1.6.3\";s:37:\"post-types-order/post-types-order.php\";s:3:\"2.0\";}}', 'no');

-- --------------------------------------------------------

--
-- Table structure for table `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 3, '_wp_page_template', 'default'),
(3, 5, '_menu_item_type', 'custom'),
(4, 5, '_menu_item_menu_item_parent', '0'),
(5, 5, '_menu_item_object_id', '5'),
(6, 5, '_menu_item_object', 'custom'),
(7, 5, '_menu_item_target', ''),
(8, 5, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(9, 5, '_menu_item_xfn', ''),
(10, 5, '_menu_item_url', 'http://localhost/physionic/'),
(12, 6, '_menu_item_type', 'post_type'),
(13, 6, '_menu_item_menu_item_parent', '0'),
(14, 6, '_menu_item_object_id', '2'),
(15, 6, '_menu_item_object', 'page'),
(16, 6, '_menu_item_target', ''),
(17, 6, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(18, 6, '_menu_item_xfn', ''),
(19, 6, '_menu_item_url', ''),
(21, 7, '_menu_item_type', 'post_type'),
(22, 7, '_menu_item_menu_item_parent', '0'),
(23, 7, '_menu_item_object_id', '2'),
(24, 7, '_menu_item_object', 'page'),
(25, 7, '_menu_item_target', ''),
(26, 7, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(27, 7, '_menu_item_xfn', ''),
(28, 7, '_menu_item_url', ''),
(30, 8, '_menu_item_type', 'post_type'),
(31, 8, '_menu_item_menu_item_parent', '0'),
(32, 8, '_menu_item_object_id', '2'),
(33, 8, '_menu_item_object', 'page'),
(34, 8, '_menu_item_target', ''),
(35, 8, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(36, 8, '_menu_item_xfn', ''),
(37, 8, '_menu_item_url', ''),
(39, 10, '_edit_last', '1'),
(40, 10, '_edit_lock', '1680139045:1'),
(41, 1, '_wp_trash_meta_status', 'publish'),
(42, 1, '_wp_trash_meta_time', '1680138895'),
(43, 1, '_wp_desired_post_slug', 'hello-world'),
(44, 1, '_wp_trash_meta_comments_status', 'a:1:{i:1;s:1:\"1\";}'),
(45, 10, '_wp_trash_meta_status', 'draft'),
(46, 10, '_wp_trash_meta_time', '1680139190'),
(47, 10, '_wp_desired_post_slug', ''),
(48, 22, '_edit_last', '1'),
(49, 22, '_edit_lock', '1680149682:1'),
(50, 24, '_wp_attached_file', '2023/03/icn-circle-circle-md.png'),
(51, 24, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:73;s:6:\"height\";i:72;s:4:\"file\";s:32:\"2023/03/icn-circle-circle-md.png\";s:8:\"filesize\";i:1681;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(52, 22, '_thumbnail_id', '24'),
(53, 26, '_edit_last', '1'),
(54, 26, '_edit_lock', '1680140187:1'),
(55, 26, '_thumbnail_id', '24'),
(56, 27, '_edit_last', '1'),
(57, 27, '_edit_lock', '1680140554:1'),
(58, 27, '_thumbnail_id', '24'),
(59, 28, '_edit_last', '1'),
(60, 28, '_edit_lock', '1680141419:1'),
(61, 29, '_wp_attached_file', '2023/03/dr.A.png'),
(62, 29, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:50;s:6:\"height\";i:51;s:4:\"file\";s:16:\"2023/03/dr.A.png\";s:8:\"filesize\";i:5435;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(63, 30, '_wp_attached_file', '2023/03/dr.B.png'),
(64, 30, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:50;s:6:\"height\";i:51;s:4:\"file\";s:16:\"2023/03/dr.B.png\";s:8:\"filesize\";i:5002;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(65, 31, '_wp_attached_file', '2023/03/dr.C.png'),
(66, 31, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:51;s:6:\"height\";i:51;s:4:\"file\";s:16:\"2023/03/dr.C.png\";s:8:\"filesize\";i:5514;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(67, 28, '_thumbnail_id', '31'),
(68, 32, '_edit_last', '1'),
(69, 32, '_edit_lock', '1680141409:1'),
(70, 32, '_thumbnail_id', '30'),
(71, 33, '_edit_last', '1'),
(72, 33, '_edit_lock', '1680141739:1'),
(73, 33, '_thumbnail_id', '29'),
(74, 34, '_edit_last', '1'),
(75, 34, '_edit_lock', '1680142750:1'),
(76, 35, '_edit_last', '1'),
(77, 35, '_edit_lock', '1680142759:1'),
(78, 36, '_edit_last', '1'),
(79, 36, '_edit_lock', '1680142818:1'),
(80, 37, '_edit_last', '1'),
(81, 37, '_edit_lock', '1680142324:1'),
(82, 38, '_edit_last', '1'),
(83, 38, '_edit_lock', '1680142731:1'),
(84, 39, '_edit_last', '1'),
(85, 39, '_edit_lock', '1680142504:1'),
(86, 40, '_edit_last', '1'),
(87, 40, '_edit_lock', '1680142494:1'),
(88, 41, '_edit_last', '1'),
(89, 41, '_edit_lock', '1680142485:1'),
(90, 42, '_edit_last', '1'),
(91, 42, '_edit_lock', '1680142467:1'),
(92, 43, '_edit_last', '1'),
(93, 43, '_edit_lock', '1680142459:1'),
(94, 44, '_wp_attached_file', '2023/03/arrow-right.png'),
(95, 44, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:9;s:6:\"height\";i:16;s:4:\"file\";s:23:\"2023/03/arrow-right.png\";s:8:\"filesize\";i:197;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(96, 43, '_thumbnail_id', '44'),
(97, 42, '_thumbnail_id', '44'),
(98, 41, '_thumbnail_id', '44'),
(99, 40, '_thumbnail_id', '44'),
(100, 39, '_thumbnail_id', '44'),
(101, 38, '_thumbnail_id', '44'),
(102, 36, '_thumbnail_id', '44'),
(103, 34, '_thumbnail_id', '44'),
(104, 35, '_thumbnail_id', '44'),
(105, 45, '_edit_last', '1'),
(106, 45, '_edit_lock', '1680158337:1'),
(107, 43, '_wp_trash_meta_status', 'publish'),
(108, 43, '_wp_trash_meta_time', '1680148871'),
(109, 43, '_wp_desired_post_slug', 'the-qucik-fox-jumps-over-the-lazy-dog-10'),
(110, 42, '_wp_trash_meta_status', 'publish'),
(111, 42, '_wp_trash_meta_time', '1680148871'),
(112, 42, '_wp_desired_post_slug', 'the-qucik-fox-jumps-over-the-lazy-dog-9'),
(113, 41, '_wp_trash_meta_status', 'publish'),
(114, 41, '_wp_trash_meta_time', '1680148871'),
(115, 41, '_wp_desired_post_slug', 'the-qucik-fox-jumps-over-the-lazy-dog-8'),
(116, 40, '_wp_trash_meta_status', 'publish'),
(117, 40, '_wp_trash_meta_time', '1680148871'),
(118, 40, '_wp_desired_post_slug', 'the-qucik-fox-jumps-over-the-lazy-dog-7'),
(119, 39, '_wp_trash_meta_status', 'publish'),
(120, 39, '_wp_trash_meta_time', '1680148872'),
(121, 39, '_wp_desired_post_slug', 'the-qucik-fox-jumps-over-the-lazy-dog-6'),
(122, 38, '_wp_trash_meta_status', 'publish'),
(123, 38, '_wp_trash_meta_time', '1680148872'),
(124, 38, '_wp_desired_post_slug', 'the-qucik-fox-jumps-over-the-lazy-dog-5'),
(125, 37, '_wp_trash_meta_status', 'publish'),
(126, 37, '_wp_trash_meta_time', '1680148872'),
(127, 37, '_wp_desired_post_slug', 'the-qucik-fox-jumps-over-the-lazy-dog-4'),
(128, 36, '_wp_trash_meta_status', 'publish'),
(129, 36, '_wp_trash_meta_time', '1680148872'),
(130, 36, '_wp_desired_post_slug', 'the-qucik-fox-jumps-over-the-lazy-dog-3'),
(131, 35, '_wp_trash_meta_status', 'publish'),
(132, 35, '_wp_trash_meta_time', '1680148872'),
(133, 35, '_wp_desired_post_slug', 'the-qucik-fox-jumps-over-the-lazy-dog-2'),
(134, 34, '_wp_trash_meta_status', 'publish'),
(135, 34, '_wp_trash_meta_time', '1680148872'),
(136, 34, '_wp_desired_post_slug', 'the-qucik-fox-jumps-over-the-lazy-dog'),
(137, 50, '_edit_last', '1'),
(138, 50, '_edit_lock', '1680149187:1'),
(139, 50, '_thumbnail_id', '44'),
(140, 50, 'faq_item_0_the_question', 'Lorem ipsum, dolor sit amet consectetur adipisicing elit. Ullam, sapiente?'),
(141, 50, '_faq_item_0_the_question', 'field_6424f6d1da3f7'),
(142, 50, 'faq_item_0_the_answer', 'amet consectetur adipisicing elit. Ullam, sapiente?'),
(143, 50, '_faq_item_0_the_answer', 'field_64250949da3f8'),
(144, 50, 'faq_item_1_the_question', 'Lorem ipsum, dolor sit amet consectetur adipisicing elit. Ullam, sapiente?'),
(145, 50, '_faq_item_1_the_question', 'field_6424f6d1da3f7'),
(146, 50, 'faq_item_1_the_answer', 'amet consectetur adipisicing elit. Ullam, sapiente?'),
(147, 50, '_faq_item_1_the_answer', 'field_64250949da3f8'),
(148, 50, 'faq_item_2_the_question', 'Lorem ipsum, dolor sit amet consectetur adipisicing elit. Ullam, sapiente?'),
(149, 50, '_faq_item_2_the_question', 'field_6424f6d1da3f7'),
(150, 50, 'faq_item_2_the_answer', 'amet consectetur adipisicing elit. Ullam, sapiente?'),
(151, 50, '_faq_item_2_the_answer', 'field_64250949da3f8'),
(152, 50, 'faq_item_3_the_question', 'Lorem ipsum, dolor sit amet consectetur adipisicing elit. Ullam, sapiente?'),
(153, 50, '_faq_item_3_the_question', 'field_6424f6d1da3f7'),
(154, 50, 'faq_item_3_the_answer', 'amet consectetur adipisicing elit. Ullam, sapiente?'),
(155, 50, '_faq_item_3_the_answer', 'field_64250949da3f8'),
(156, 50, 'faq_item_4_the_question', 'Lorem ipsum, dolor sit amet consectetur adipisicing elit. Ullam, sapiente?'),
(157, 50, '_faq_item_4_the_question', 'field_6424f6d1da3f7'),
(158, 50, 'faq_item_4_the_answer', 'amet consectetur adipisicing elit. Ullam, sapiente?'),
(159, 50, '_faq_item_4_the_answer', 'field_64250949da3f8'),
(160, 50, 'faq_item_5_the_question', 'Lorem ipsum, dolor sit amet consectetur adipisicing elit. Ullam, sapiente?'),
(161, 50, '_faq_item_5_the_question', 'field_6424f6d1da3f7'),
(162, 50, 'faq_item_5_the_answer', 'amet consectetur adipisicing elit. Ullam, sapiente?'),
(163, 50, '_faq_item_5_the_answer', 'field_64250949da3f8'),
(164, 50, 'faq_item_6_the_question', 'Lorem ipsum, dolor sit amet consectetur adipisicing elit. Ullam, sapiente?'),
(165, 50, '_faq_item_6_the_question', 'field_6424f6d1da3f7'),
(166, 50, 'faq_item_6_the_answer', 'amet consectetur adipisicing elit. Ullam, sapiente?'),
(167, 50, '_faq_item_6_the_answer', 'field_64250949da3f8'),
(168, 50, 'faq_item_7_the_question', 'Lorem ipsum, dolor sit amet consectetur adipisicing elit. Ullam, sapiente?'),
(169, 50, '_faq_item_7_the_question', 'field_6424f6d1da3f7'),
(170, 50, 'faq_item_7_the_answer', 'amet consectetur adipisicing elit. Ullam, sapiente?'),
(171, 50, '_faq_item_7_the_answer', 'field_64250949da3f8'),
(172, 50, 'faq_item_8_the_question', 'Lorem ipsum, dolor sit amet consectetur adipisicing elit. Ullam, sapiente?'),
(173, 50, '_faq_item_8_the_question', 'field_6424f6d1da3f7'),
(174, 50, 'faq_item_8_the_answer', 'amet consectetur adipisicing elit. Ullam, sapiente?'),
(175, 50, '_faq_item_8_the_answer', 'field_64250949da3f8'),
(176, 50, 'faq_item_9_the_question', 'Lorem ipsum, dolor sit amet consectetur adipisicing elit. Ullam, sapiente?'),
(177, 50, '_faq_item_9_the_question', 'field_6424f6d1da3f7'),
(178, 50, 'faq_item_9_the_answer', 'amet consectetur adipisicing elit. Ullam, sapiente?'),
(179, 50, '_faq_item_9_the_answer', 'field_64250949da3f8'),
(180, 50, 'faq_item', '10'),
(181, 50, '_faq_item', 'field_6424f675da3f5'),
(182, 2, '_edit_lock', '1680149727:1'),
(183, 51, '_edit_last', '1'),
(184, 51, '_wp_page_template', 'default'),
(185, 51, '_edit_lock', '1680479646:1'),
(186, 53, '_edit_last', '1'),
(187, 53, '_edit_lock', '1680151213:1'),
(188, 51, 'the_title', 'Physionic'),
(189, 51, '_the_title', 'field_64250d92a963f'),
(190, 51, 'faq_item_0_the_question', 'Lorem ipsum, dolor sit amet consectetur adipisicing elit. Corporis, sequi!'),
(191, 51, '_faq_item_0_the_question', 'field_6424f6d1da3f7'),
(192, 51, 'faq_item_0_the_answer', 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Sequi neque quis nemo amet tempora illum dicta temporibus nulla quaerat in?'),
(193, 51, '_faq_item_0_the_answer', 'field_64250949da3f8'),
(194, 51, 'faq_item_1_the_question', 'Lorem ipsum, dolor sit amet consectetur adipisicing elit. Corporis, sequi!'),
(195, 51, '_faq_item_1_the_question', 'field_6424f6d1da3f7'),
(196, 51, 'faq_item_1_the_answer', 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Sequi neque quis nemo amet tempora illum dicta temporibus nulla quaerat in?'),
(197, 51, '_faq_item_1_the_answer', 'field_64250949da3f8'),
(198, 51, 'faq_item_2_the_question', 'Lorem ipsum, dolor sit amet consectetur adipisicing elit. Corporis, sequi!'),
(199, 51, '_faq_item_2_the_question', 'field_6424f6d1da3f7'),
(200, 51, 'faq_item_2_the_answer', 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Sequi neque quis nemo amet tempora illum dicta temporibus nulla quaerat in?'),
(201, 51, '_faq_item_2_the_answer', 'field_64250949da3f8'),
(202, 51, 'faq_item_3_the_question', 'Lorem ipsum, dolor sit amet consectetur adipisicing elit. Corporis, sequi!'),
(203, 51, '_faq_item_3_the_question', 'field_6424f6d1da3f7'),
(204, 51, 'faq_item_3_the_answer', 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Sequi neque quis nemo amet tempora illum dicta temporibus nulla quaerat in?'),
(205, 51, '_faq_item_3_the_answer', 'field_64250949da3f8'),
(206, 51, 'faq_item_4_the_question', 'Lorem ipsum, dolor sit amet consectetur adipisicing elit. Corporis, sequi!'),
(207, 51, '_faq_item_4_the_question', 'field_6424f6d1da3f7'),
(208, 51, 'faq_item_4_the_answer', 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Sequi neque quis nemo amet tempora illum dicta temporibus nulla quaerat in?'),
(209, 51, '_faq_item_4_the_answer', 'field_64250949da3f8'),
(210, 51, 'faq_item_5_the_question', 'Lorem ipsum, dolor sit amet consectetur adipisicing elit. Corporis, sequi!'),
(211, 51, '_faq_item_5_the_question', 'field_6424f6d1da3f7'),
(212, 51, 'faq_item_5_the_answer', 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Sequi neque quis nemo amet tempora illum dicta temporibus nulla quaerat in?'),
(213, 51, '_faq_item_5_the_answer', 'field_64250949da3f8'),
(214, 51, 'faq_item_6_the_question', 'Lorem ipsum, dolor sit amet consectetur adipisicing elit. Corporis, sequi!'),
(215, 51, '_faq_item_6_the_question', 'field_6424f6d1da3f7'),
(216, 51, 'faq_item_6_the_answer', 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Sequi neque quis nemo amet tempora illum dicta temporibus nulla quaerat in?'),
(217, 51, '_faq_item_6_the_answer', 'field_64250949da3f8'),
(218, 51, 'faq_item_7_the_question', 'Lorem ipsum, dolor sit amet consectetur adipisicing elit. Corporis, sequi!'),
(219, 51, '_faq_item_7_the_question', 'field_6424f6d1da3f7'),
(220, 51, 'faq_item_7_the_answer', 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Sequi neque quis nemo amet tempora illum dicta temporibus nulla quaerat in?'),
(221, 51, '_faq_item_7_the_answer', 'field_64250949da3f8'),
(222, 51, 'faq_item_8_the_question', 'Lorem ipsum, dolor sit amet consectetur adipisicing elit. Corporis, sequi!'),
(223, 51, '_faq_item_8_the_question', 'field_6424f6d1da3f7'),
(224, 51, 'faq_item_8_the_answer', 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Sequi neque quis nemo amet tempora illum dicta temporibus nulla quaerat in?'),
(225, 51, '_faq_item_8_the_answer', 'field_64250949da3f8'),
(226, 51, 'faq_item_9_the_question', 'Lorem ipsum, dolor sit amet consectetur adipisicing elit. Corporis, sequi!'),
(227, 51, '_faq_item_9_the_question', 'field_6424f6d1da3f7'),
(228, 51, 'faq_item_9_the_answer', 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Sequi neque quis nemo amet tempora illum dicta temporibus nulla quaerat in?'),
(229, 51, '_faq_item_9_the_answer', 'field_64250949da3f8'),
(230, 51, 'faq_item', '10'),
(231, 51, '_faq_item', 'field_6424f675da3f5'),
(232, 55, 'the_title', 'Physionic'),
(233, 55, '_the_title', 'field_64250d92a963f'),
(234, 55, 'faq_item_0_the_question', 'Lorem ipsum, dolor sit amet consectetur adipisicing elit. Corporis, sequi!'),
(235, 55, '_faq_item_0_the_question', 'field_6424f6d1da3f7'),
(236, 55, 'faq_item_0_the_answer', 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Sequi neque quis nemo amet tempora illum dicta temporibus nulla quaerat in?'),
(237, 55, '_faq_item_0_the_answer', 'field_64250949da3f8'),
(238, 55, 'faq_item_1_the_question', 'Lorem ipsum, dolor sit amet consectetur adipisicing elit. Corporis, sequi!'),
(239, 55, '_faq_item_1_the_question', 'field_6424f6d1da3f7'),
(240, 55, 'faq_item_1_the_answer', 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Sequi neque quis nemo amet tempora illum dicta temporibus nulla quaerat in?'),
(241, 55, '_faq_item_1_the_answer', 'field_64250949da3f8'),
(242, 55, 'faq_item_2_the_question', 'Lorem ipsum, dolor sit amet consectetur adipisicing elit. Corporis, sequi!'),
(243, 55, '_faq_item_2_the_question', 'field_6424f6d1da3f7'),
(244, 55, 'faq_item_2_the_answer', 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Sequi neque quis nemo amet tempora illum dicta temporibus nulla quaerat in?'),
(245, 55, '_faq_item_2_the_answer', 'field_64250949da3f8'),
(246, 55, 'faq_item_3_the_question', 'Lorem ipsum, dolor sit amet consectetur adipisicing elit. Corporis, sequi!'),
(247, 55, '_faq_item_3_the_question', 'field_6424f6d1da3f7'),
(248, 55, 'faq_item_3_the_answer', 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Sequi neque quis nemo amet tempora illum dicta temporibus nulla quaerat in?'),
(249, 55, '_faq_item_3_the_answer', 'field_64250949da3f8'),
(250, 55, 'faq_item_4_the_question', 'Lorem ipsum, dolor sit amet consectetur adipisicing elit. Corporis, sequi!'),
(251, 55, '_faq_item_4_the_question', 'field_6424f6d1da3f7'),
(252, 55, 'faq_item_4_the_answer', 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Sequi neque quis nemo amet tempora illum dicta temporibus nulla quaerat in?'),
(253, 55, '_faq_item_4_the_answer', 'field_64250949da3f8'),
(254, 55, 'faq_item_5_the_question', 'Lorem ipsum, dolor sit amet consectetur adipisicing elit. Corporis, sequi!'),
(255, 55, '_faq_item_5_the_question', 'field_6424f6d1da3f7'),
(256, 55, 'faq_item_5_the_answer', 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Sequi neque quis nemo amet tempora illum dicta temporibus nulla quaerat in?'),
(257, 55, '_faq_item_5_the_answer', 'field_64250949da3f8'),
(258, 55, 'faq_item_6_the_question', 'Lorem ipsum, dolor sit amet consectetur adipisicing elit. Corporis, sequi!'),
(259, 55, '_faq_item_6_the_question', 'field_6424f6d1da3f7'),
(260, 55, 'faq_item_6_the_answer', 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Sequi neque quis nemo amet tempora illum dicta temporibus nulla quaerat in?'),
(261, 55, '_faq_item_6_the_answer', 'field_64250949da3f8'),
(262, 55, 'faq_item_7_the_question', 'Lorem ipsum, dolor sit amet consectetur adipisicing elit. Corporis, sequi!'),
(263, 55, '_faq_item_7_the_question', 'field_6424f6d1da3f7'),
(264, 55, 'faq_item_7_the_answer', 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Sequi neque quis nemo amet tempora illum dicta temporibus nulla quaerat in?'),
(265, 55, '_faq_item_7_the_answer', 'field_64250949da3f8'),
(266, 55, 'faq_item_8_the_question', 'Lorem ipsum, dolor sit amet consectetur adipisicing elit. Corporis, sequi!'),
(267, 55, '_faq_item_8_the_question', 'field_6424f6d1da3f7'),
(268, 55, 'faq_item_8_the_answer', 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Sequi neque quis nemo amet tempora illum dicta temporibus nulla quaerat in?'),
(269, 55, '_faq_item_8_the_answer', 'field_64250949da3f8'),
(270, 55, 'faq_item_9_the_question', 'Lorem ipsum, dolor sit amet consectetur adipisicing elit. Corporis, sequi!'),
(271, 55, '_faq_item_9_the_question', 'field_6424f6d1da3f7'),
(272, 55, 'faq_item_9_the_answer', 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Sequi neque quis nemo amet tempora illum dicta temporibus nulla quaerat in?'),
(273, 55, '_faq_item_9_the_answer', 'field_64250949da3f8'),
(274, 55, 'faq_item', '10'),
(275, 55, '_faq_item', 'field_6424f675da3f5'),
(276, 50, '_wp_trash_meta_status', 'publish'),
(277, 50, '_wp_trash_meta_time', '1680150131'),
(278, 50, '_wp_desired_post_slug', 'faq'),
(279, 56, '_edit_last', '1'),
(280, 56, '_edit_lock', '1680151509:1'),
(281, 51, 'the_arrow', '44'),
(282, 51, '_the_arrow', 'field_6425133f5837f'),
(283, 58, 'the_title', 'Physionic'),
(284, 58, '_the_title', 'field_64250d92a963f'),
(285, 58, 'faq_item_0_the_question', 'Lorem ipsum, dolor sit amet consectetur adipisicing elit. Corporis, sequi!'),
(286, 58, '_faq_item_0_the_question', 'field_6424f6d1da3f7'),
(287, 58, 'faq_item_0_the_answer', 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Sequi neque quis nemo amet tempora illum dicta temporibus nulla quaerat in?'),
(288, 58, '_faq_item_0_the_answer', 'field_64250949da3f8'),
(289, 58, 'faq_item_1_the_question', 'Lorem ipsum, dolor sit amet consectetur adipisicing elit. Corporis, sequi!'),
(290, 58, '_faq_item_1_the_question', 'field_6424f6d1da3f7'),
(291, 58, 'faq_item_1_the_answer', 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Sequi neque quis nemo amet tempora illum dicta temporibus nulla quaerat in?'),
(292, 58, '_faq_item_1_the_answer', 'field_64250949da3f8'),
(293, 58, 'faq_item_2_the_question', 'Lorem ipsum, dolor sit amet consectetur adipisicing elit. Corporis, sequi!'),
(294, 58, '_faq_item_2_the_question', 'field_6424f6d1da3f7'),
(295, 58, 'faq_item_2_the_answer', 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Sequi neque quis nemo amet tempora illum dicta temporibus nulla quaerat in?'),
(296, 58, '_faq_item_2_the_answer', 'field_64250949da3f8'),
(297, 58, 'faq_item_3_the_question', 'Lorem ipsum, dolor sit amet consectetur adipisicing elit. Corporis, sequi!'),
(298, 58, '_faq_item_3_the_question', 'field_6424f6d1da3f7'),
(299, 58, 'faq_item_3_the_answer', 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Sequi neque quis nemo amet tempora illum dicta temporibus nulla quaerat in?'),
(300, 58, '_faq_item_3_the_answer', 'field_64250949da3f8'),
(301, 58, 'faq_item_4_the_question', 'Lorem ipsum, dolor sit amet consectetur adipisicing elit. Corporis, sequi!'),
(302, 58, '_faq_item_4_the_question', 'field_6424f6d1da3f7'),
(303, 58, 'faq_item_4_the_answer', 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Sequi neque quis nemo amet tempora illum dicta temporibus nulla quaerat in?'),
(304, 58, '_faq_item_4_the_answer', 'field_64250949da3f8'),
(305, 58, 'faq_item_5_the_question', 'Lorem ipsum, dolor sit amet consectetur adipisicing elit. Corporis, sequi!'),
(306, 58, '_faq_item_5_the_question', 'field_6424f6d1da3f7'),
(307, 58, 'faq_item_5_the_answer', 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Sequi neque quis nemo amet tempora illum dicta temporibus nulla quaerat in?'),
(308, 58, '_faq_item_5_the_answer', 'field_64250949da3f8'),
(309, 58, 'faq_item_6_the_question', 'Lorem ipsum, dolor sit amet consectetur adipisicing elit. Corporis, sequi!'),
(310, 58, '_faq_item_6_the_question', 'field_6424f6d1da3f7'),
(311, 58, 'faq_item_6_the_answer', 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Sequi neque quis nemo amet tempora illum dicta temporibus nulla quaerat in?'),
(312, 58, '_faq_item_6_the_answer', 'field_64250949da3f8'),
(313, 58, 'faq_item_7_the_question', 'Lorem ipsum, dolor sit amet consectetur adipisicing elit. Corporis, sequi!'),
(314, 58, '_faq_item_7_the_question', 'field_6424f6d1da3f7'),
(315, 58, 'faq_item_7_the_answer', 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Sequi neque quis nemo amet tempora illum dicta temporibus nulla quaerat in?'),
(316, 58, '_faq_item_7_the_answer', 'field_64250949da3f8'),
(317, 58, 'faq_item_8_the_question', 'Lorem ipsum, dolor sit amet consectetur adipisicing elit. Corporis, sequi!'),
(318, 58, '_faq_item_8_the_question', 'field_6424f6d1da3f7'),
(319, 58, 'faq_item_8_the_answer', 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Sequi neque quis nemo amet tempora illum dicta temporibus nulla quaerat in?'),
(320, 58, '_faq_item_8_the_answer', 'field_64250949da3f8'),
(321, 58, 'faq_item_9_the_question', 'Lorem ipsum, dolor sit amet consectetur adipisicing elit. Corporis, sequi!'),
(322, 58, '_faq_item_9_the_question', 'field_6424f6d1da3f7'),
(323, 58, 'faq_item_9_the_answer', 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Sequi neque quis nemo amet tempora illum dicta temporibus nulla quaerat in?'),
(324, 58, '_faq_item_9_the_answer', 'field_64250949da3f8'),
(325, 58, 'faq_item', '10'),
(326, 58, '_faq_item', 'field_6424f675da3f5'),
(327, 58, 'the_arrow', '44'),
(328, 58, '_the_arrow', 'field_6425133f5837f'),
(329, 59, '_edit_last', '1'),
(330, 59, '_edit_lock', '1680159137:1'),
(331, 51, 'get_in_touch', ''),
(332, 51, '_get_in_touch', 'field_64252648c26f7'),
(333, 51, 'get_in_p', ''),
(334, 51, '_get_in_p', 'field_64252672c26f8'),
(335, 51, 'touch_link_0_touch_title', 'Get In Touch'),
(336, 51, '_touch_link_0_touch_title', 'field_64252bf308460'),
(337, 51, 'touch_link_0_touch_field_0_touch_content', '<ul class=\"touch__content\">\r\n<li>Get In Touch</li>\r\n<li>the quick fox jumps over the lazy dog\r\n</li>\r\n<li>\r\n <ul class=\"socLinks d--flex\">\r\n     <li><i class=\"fa-brands fa-facebook\"></i></li>\r\n                                <li><i class=\"fa-brands fa-instagram\"></i></li>\r\n                                <li><i class=\"fa-brands fa-twitter\"></i></li>\r\n </ul>\r\n</li>\r\n</ul>'),
(338, 51, '_touch_link_0_touch_field_0_touch_content', 'field_64252c7d08461'),
(339, 51, 'touch_link_0_touch_field', '1'),
(340, 51, '_touch_link_0_touch_field', 'field_642529a996761'),
(341, 51, 'touch_link_1_touch_title', 'Company info'),
(342, 51, '_touch_link_1_touch_title', 'field_64252bf308460'),
(343, 51, 'touch_link_1_touch_field_0_touch_content', '<ul class=\"touch__content\">\r\n<li>We are hiring</li>\r\n<li>About Us</li>\r\n<li>Blog</li>\r\n</ul>'),
(344, 51, '_touch_link_1_touch_field_0_touch_content', 'field_64252c7d08461'),
(345, 51, 'touch_link_1_touch_field', '1'),
(346, 51, '_touch_link_1_touch_field', 'field_642529a996761'),
(347, 51, 'touch_link', '4'),
(348, 51, '_touch_link', 'field_6425298096760'),
(349, 73, 'the_title', 'Physionic'),
(350, 73, '_the_title', 'field_64250d92a963f'),
(351, 73, 'faq_item_0_the_question', 'Lorem ipsum, dolor sit amet consectetur adipisicing elit. Corporis, sequi!'),
(352, 73, '_faq_item_0_the_question', 'field_6424f6d1da3f7'),
(353, 73, 'faq_item_0_the_answer', 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Sequi neque quis nemo amet tempora illum dicta temporibus nulla quaerat in?'),
(354, 73, '_faq_item_0_the_answer', 'field_64250949da3f8'),
(355, 73, 'faq_item_1_the_question', 'Lorem ipsum, dolor sit amet consectetur adipisicing elit. Corporis, sequi!'),
(356, 73, '_faq_item_1_the_question', 'field_6424f6d1da3f7'),
(357, 73, 'faq_item_1_the_answer', 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Sequi neque quis nemo amet tempora illum dicta temporibus nulla quaerat in?'),
(358, 73, '_faq_item_1_the_answer', 'field_64250949da3f8'),
(359, 73, 'faq_item_2_the_question', 'Lorem ipsum, dolor sit amet consectetur adipisicing elit. Corporis, sequi!'),
(360, 73, '_faq_item_2_the_question', 'field_6424f6d1da3f7'),
(361, 73, 'faq_item_2_the_answer', 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Sequi neque quis nemo amet tempora illum dicta temporibus nulla quaerat in?'),
(362, 73, '_faq_item_2_the_answer', 'field_64250949da3f8'),
(363, 73, 'faq_item_3_the_question', 'Lorem ipsum, dolor sit amet consectetur adipisicing elit. Corporis, sequi!'),
(364, 73, '_faq_item_3_the_question', 'field_6424f6d1da3f7'),
(365, 73, 'faq_item_3_the_answer', 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Sequi neque quis nemo amet tempora illum dicta temporibus nulla quaerat in?'),
(366, 73, '_faq_item_3_the_answer', 'field_64250949da3f8'),
(367, 73, 'faq_item_4_the_question', 'Lorem ipsum, dolor sit amet consectetur adipisicing elit. Corporis, sequi!'),
(368, 73, '_faq_item_4_the_question', 'field_6424f6d1da3f7'),
(369, 73, 'faq_item_4_the_answer', 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Sequi neque quis nemo amet tempora illum dicta temporibus nulla quaerat in?'),
(370, 73, '_faq_item_4_the_answer', 'field_64250949da3f8'),
(371, 73, 'faq_item_5_the_question', 'Lorem ipsum, dolor sit amet consectetur adipisicing elit. Corporis, sequi!'),
(372, 73, '_faq_item_5_the_question', 'field_6424f6d1da3f7'),
(373, 73, 'faq_item_5_the_answer', 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Sequi neque quis nemo amet tempora illum dicta temporibus nulla quaerat in?'),
(374, 73, '_faq_item_5_the_answer', 'field_64250949da3f8'),
(375, 73, 'faq_item_6_the_question', 'Lorem ipsum, dolor sit amet consectetur adipisicing elit. Corporis, sequi!'),
(376, 73, '_faq_item_6_the_question', 'field_6424f6d1da3f7'),
(377, 73, 'faq_item_6_the_answer', 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Sequi neque quis nemo amet tempora illum dicta temporibus nulla quaerat in?'),
(378, 73, '_faq_item_6_the_answer', 'field_64250949da3f8'),
(379, 73, 'faq_item_7_the_question', 'Lorem ipsum, dolor sit amet consectetur adipisicing elit. Corporis, sequi!'),
(380, 73, '_faq_item_7_the_question', 'field_6424f6d1da3f7'),
(381, 73, 'faq_item_7_the_answer', 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Sequi neque quis nemo amet tempora illum dicta temporibus nulla quaerat in?'),
(382, 73, '_faq_item_7_the_answer', 'field_64250949da3f8'),
(383, 73, 'faq_item_8_the_question', 'Lorem ipsum, dolor sit amet consectetur adipisicing elit. Corporis, sequi!'),
(384, 73, '_faq_item_8_the_question', 'field_6424f6d1da3f7'),
(385, 73, 'faq_item_8_the_answer', 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Sequi neque quis nemo amet tempora illum dicta temporibus nulla quaerat in?'),
(386, 73, '_faq_item_8_the_answer', 'field_64250949da3f8'),
(387, 73, 'faq_item_9_the_question', 'Lorem ipsum, dolor sit amet consectetur adipisicing elit. Corporis, sequi!'),
(388, 73, '_faq_item_9_the_question', 'field_6424f6d1da3f7'),
(389, 73, 'faq_item_9_the_answer', 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Sequi neque quis nemo amet tempora illum dicta temporibus nulla quaerat in?'),
(390, 73, '_faq_item_9_the_answer', 'field_64250949da3f8'),
(391, 73, 'faq_item', '10'),
(392, 73, '_faq_item', 'field_6424f675da3f5'),
(393, 73, 'the_arrow', '44'),
(394, 73, '_the_arrow', 'field_6425133f5837f'),
(395, 73, 'get_in_touch', ''),
(396, 73, '_get_in_touch', 'field_64252648c26f7'),
(397, 73, 'get_in_p', ''),
(398, 73, '_get_in_p', 'field_64252672c26f8'),
(399, 73, 'touch_link_0_touch_title', 'Get In Touch'),
(400, 73, '_touch_link_0_touch_title', 'field_64252bf308460'),
(401, 73, 'touch_link_0_touch_field_0_touch_content', 'the quick fox jumps over the lazy dog'),
(402, 73, '_touch_link_0_touch_field_0_touch_content', 'field_64252c7d08461'),
(403, 73, 'touch_link_0_touch_field', '1'),
(404, 73, '_touch_link_0_touch_field', 'field_642529a996761'),
(405, 73, 'touch_link_1_touch_title', 'Company info'),
(406, 73, '_touch_link_1_touch_title', 'field_64252bf308460'),
(407, 73, 'touch_link_1_touch_field_0_touch_content', '<ul> \r\n<li>About Us</li>\r\n<li>We are hiring</li>\r\n<li>Blog</li>\r\n</ul>'),
(408, 73, '_touch_link_1_touch_field_0_touch_content', 'field_64252c7d08461'),
(409, 73, 'touch_link_1_touch_field', '1'),
(410, 73, '_touch_link_1_touch_field', 'field_642529a996761'),
(411, 73, 'touch_link', '2'),
(412, 73, '_touch_link', 'field_6425298096760'),
(417, 74, 'the_title', 'Physionic'),
(418, 74, '_the_title', 'field_64250d92a963f'),
(419, 74, 'faq_item_0_the_question', 'Lorem ipsum, dolor sit amet consectetur adipisicing elit. Corporis, sequi!'),
(420, 74, '_faq_item_0_the_question', 'field_6424f6d1da3f7'),
(421, 74, 'faq_item_0_the_answer', 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Sequi neque quis nemo amet tempora illum dicta temporibus nulla quaerat in?'),
(422, 74, '_faq_item_0_the_answer', 'field_64250949da3f8'),
(423, 74, 'faq_item_1_the_question', 'Lorem ipsum, dolor sit amet consectetur adipisicing elit. Corporis, sequi!'),
(424, 74, '_faq_item_1_the_question', 'field_6424f6d1da3f7'),
(425, 74, 'faq_item_1_the_answer', 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Sequi neque quis nemo amet tempora illum dicta temporibus nulla quaerat in?'),
(426, 74, '_faq_item_1_the_answer', 'field_64250949da3f8'),
(427, 74, 'faq_item_2_the_question', 'Lorem ipsum, dolor sit amet consectetur adipisicing elit. Corporis, sequi!'),
(428, 74, '_faq_item_2_the_question', 'field_6424f6d1da3f7'),
(429, 74, 'faq_item_2_the_answer', 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Sequi neque quis nemo amet tempora illum dicta temporibus nulla quaerat in?'),
(430, 74, '_faq_item_2_the_answer', 'field_64250949da3f8'),
(431, 74, 'faq_item_3_the_question', 'Lorem ipsum, dolor sit amet consectetur adipisicing elit. Corporis, sequi!'),
(432, 74, '_faq_item_3_the_question', 'field_6424f6d1da3f7'),
(433, 74, 'faq_item_3_the_answer', 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Sequi neque quis nemo amet tempora illum dicta temporibus nulla quaerat in?'),
(434, 74, '_faq_item_3_the_answer', 'field_64250949da3f8'),
(435, 74, 'faq_item_4_the_question', 'Lorem ipsum, dolor sit amet consectetur adipisicing elit. Corporis, sequi!'),
(436, 74, '_faq_item_4_the_question', 'field_6424f6d1da3f7'),
(437, 74, 'faq_item_4_the_answer', 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Sequi neque quis nemo amet tempora illum dicta temporibus nulla quaerat in?'),
(438, 74, '_faq_item_4_the_answer', 'field_64250949da3f8'),
(439, 74, 'faq_item_5_the_question', 'Lorem ipsum, dolor sit amet consectetur adipisicing elit. Corporis, sequi!'),
(440, 74, '_faq_item_5_the_question', 'field_6424f6d1da3f7'),
(441, 74, 'faq_item_5_the_answer', 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Sequi neque quis nemo amet tempora illum dicta temporibus nulla quaerat in?'),
(442, 74, '_faq_item_5_the_answer', 'field_64250949da3f8'),
(443, 74, 'faq_item_6_the_question', 'Lorem ipsum, dolor sit amet consectetur adipisicing elit. Corporis, sequi!'),
(444, 74, '_faq_item_6_the_question', 'field_6424f6d1da3f7'),
(445, 74, 'faq_item_6_the_answer', 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Sequi neque quis nemo amet tempora illum dicta temporibus nulla quaerat in?'),
(446, 74, '_faq_item_6_the_answer', 'field_64250949da3f8'),
(447, 74, 'faq_item_7_the_question', 'Lorem ipsum, dolor sit amet consectetur adipisicing elit. Corporis, sequi!'),
(448, 74, '_faq_item_7_the_question', 'field_6424f6d1da3f7'),
(449, 74, 'faq_item_7_the_answer', 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Sequi neque quis nemo amet tempora illum dicta temporibus nulla quaerat in?'),
(450, 74, '_faq_item_7_the_answer', 'field_64250949da3f8'),
(451, 74, 'faq_item_8_the_question', 'Lorem ipsum, dolor sit amet consectetur adipisicing elit. Corporis, sequi!'),
(452, 74, '_faq_item_8_the_question', 'field_6424f6d1da3f7'),
(453, 74, 'faq_item_8_the_answer', 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Sequi neque quis nemo amet tempora illum dicta temporibus nulla quaerat in?'),
(454, 74, '_faq_item_8_the_answer', 'field_64250949da3f8'),
(455, 74, 'faq_item_9_the_question', 'Lorem ipsum, dolor sit amet consectetur adipisicing elit. Corporis, sequi!'),
(456, 74, '_faq_item_9_the_question', 'field_6424f6d1da3f7'),
(457, 74, 'faq_item_9_the_answer', 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Sequi neque quis nemo amet tempora illum dicta temporibus nulla quaerat in?'),
(458, 74, '_faq_item_9_the_answer', 'field_64250949da3f8'),
(459, 74, 'faq_item', '10'),
(460, 74, '_faq_item', 'field_6424f675da3f5'),
(461, 74, 'the_arrow', '44'),
(462, 74, '_the_arrow', 'field_6425133f5837f'),
(463, 74, 'get_in_touch', ''),
(464, 74, '_get_in_touch', 'field_64252648c26f7'),
(465, 74, 'get_in_p', ''),
(466, 74, '_get_in_p', 'field_64252672c26f8'),
(467, 74, 'touch_link_0_touch_title', 'Get In Touch'),
(468, 74, '_touch_link_0_touch_title', 'field_64252bf308460'),
(469, 74, 'touch_link_0_touch_field_0_touch_content', 'the quick fox jumps over the lazy dog'),
(470, 74, '_touch_link_0_touch_field_0_touch_content', 'field_64252c7d08461'),
(471, 74, 'touch_link_0_touch_field', '1'),
(472, 74, '_touch_link_0_touch_field', 'field_642529a996761'),
(473, 74, 'touch_link_1_touch_title', 'Company info'),
(474, 74, '_touch_link_1_touch_title', 'field_64252bf308460'),
(475, 74, 'touch_link_1_touch_field_0_touch_content', 'We are hiring'),
(476, 74, '_touch_link_1_touch_field_0_touch_content', 'field_64252c7d08461'),
(477, 74, 'touch_link_1_touch_field', '3'),
(478, 74, '_touch_link_1_touch_field', 'field_642529a996761'),
(479, 74, 'touch_link', '2'),
(480, 74, '_touch_link', 'field_6425298096760'),
(481, 74, 'touch_link_1_touch_field_1_touch_content', 'About Us'),
(482, 74, '_touch_link_1_touch_field_1_touch_content', 'field_64252c7d08461'),
(483, 74, 'touch_link_1_touch_field_2_touch_content', 'Blog'),
(484, 74, '_touch_link_1_touch_field_2_touch_content', 'field_64252c7d08461'),
(485, 75, 'the_title', 'Physionic'),
(486, 75, '_the_title', 'field_64250d92a963f'),
(487, 75, 'faq_item_0_the_question', 'Lorem ipsum, dolor sit amet consectetur adipisicing elit. Corporis, sequi!'),
(488, 75, '_faq_item_0_the_question', 'field_6424f6d1da3f7'),
(489, 75, 'faq_item_0_the_answer', 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Sequi neque quis nemo amet tempora illum dicta temporibus nulla quaerat in?'),
(490, 75, '_faq_item_0_the_answer', 'field_64250949da3f8'),
(491, 75, 'faq_item_1_the_question', 'Lorem ipsum, dolor sit amet consectetur adipisicing elit. Corporis, sequi!'),
(492, 75, '_faq_item_1_the_question', 'field_6424f6d1da3f7'),
(493, 75, 'faq_item_1_the_answer', 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Sequi neque quis nemo amet tempora illum dicta temporibus nulla quaerat in?'),
(494, 75, '_faq_item_1_the_answer', 'field_64250949da3f8'),
(495, 75, 'faq_item_2_the_question', 'Lorem ipsum, dolor sit amet consectetur adipisicing elit. Corporis, sequi!'),
(496, 75, '_faq_item_2_the_question', 'field_6424f6d1da3f7'),
(497, 75, 'faq_item_2_the_answer', 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Sequi neque quis nemo amet tempora illum dicta temporibus nulla quaerat in?'),
(498, 75, '_faq_item_2_the_answer', 'field_64250949da3f8'),
(499, 75, 'faq_item_3_the_question', 'Lorem ipsum, dolor sit amet consectetur adipisicing elit. Corporis, sequi!'),
(500, 75, '_faq_item_3_the_question', 'field_6424f6d1da3f7'),
(501, 75, 'faq_item_3_the_answer', 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Sequi neque quis nemo amet tempora illum dicta temporibus nulla quaerat in?'),
(502, 75, '_faq_item_3_the_answer', 'field_64250949da3f8'),
(503, 75, 'faq_item_4_the_question', 'Lorem ipsum, dolor sit amet consectetur adipisicing elit. Corporis, sequi!'),
(504, 75, '_faq_item_4_the_question', 'field_6424f6d1da3f7'),
(505, 75, 'faq_item_4_the_answer', 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Sequi neque quis nemo amet tempora illum dicta temporibus nulla quaerat in?'),
(506, 75, '_faq_item_4_the_answer', 'field_64250949da3f8'),
(507, 75, 'faq_item_5_the_question', 'Lorem ipsum, dolor sit amet consectetur adipisicing elit. Corporis, sequi!'),
(508, 75, '_faq_item_5_the_question', 'field_6424f6d1da3f7'),
(509, 75, 'faq_item_5_the_answer', 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Sequi neque quis nemo amet tempora illum dicta temporibus nulla quaerat in?'),
(510, 75, '_faq_item_5_the_answer', 'field_64250949da3f8'),
(511, 75, 'faq_item_6_the_question', 'Lorem ipsum, dolor sit amet consectetur adipisicing elit. Corporis, sequi!'),
(512, 75, '_faq_item_6_the_question', 'field_6424f6d1da3f7'),
(513, 75, 'faq_item_6_the_answer', 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Sequi neque quis nemo amet tempora illum dicta temporibus nulla quaerat in?'),
(514, 75, '_faq_item_6_the_answer', 'field_64250949da3f8'),
(515, 75, 'faq_item_7_the_question', 'Lorem ipsum, dolor sit amet consectetur adipisicing elit. Corporis, sequi!'),
(516, 75, '_faq_item_7_the_question', 'field_6424f6d1da3f7'),
(517, 75, 'faq_item_7_the_answer', 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Sequi neque quis nemo amet tempora illum dicta temporibus nulla quaerat in?'),
(518, 75, '_faq_item_7_the_answer', 'field_64250949da3f8'),
(519, 75, 'faq_item_8_the_question', 'Lorem ipsum, dolor sit amet consectetur adipisicing elit. Corporis, sequi!'),
(520, 75, '_faq_item_8_the_question', 'field_6424f6d1da3f7'),
(521, 75, 'faq_item_8_the_answer', 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Sequi neque quis nemo amet tempora illum dicta temporibus nulla quaerat in?'),
(522, 75, '_faq_item_8_the_answer', 'field_64250949da3f8'),
(523, 75, 'faq_item_9_the_question', 'Lorem ipsum, dolor sit amet consectetur adipisicing elit. Corporis, sequi!'),
(524, 75, '_faq_item_9_the_question', 'field_6424f6d1da3f7'),
(525, 75, 'faq_item_9_the_answer', 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Sequi neque quis nemo amet tempora illum dicta temporibus nulla quaerat in?'),
(526, 75, '_faq_item_9_the_answer', 'field_64250949da3f8'),
(527, 75, 'faq_item', '10'),
(528, 75, '_faq_item', 'field_6424f675da3f5'),
(529, 75, 'the_arrow', '44'),
(530, 75, '_the_arrow', 'field_6425133f5837f'),
(531, 75, 'get_in_touch', ''),
(532, 75, '_get_in_touch', 'field_64252648c26f7'),
(533, 75, 'get_in_p', ''),
(534, 75, '_get_in_p', 'field_64252672c26f8'),
(535, 75, 'touch_link_0_touch_title', 'Get In Touch'),
(536, 75, '_touch_link_0_touch_title', 'field_64252bf308460'),
(537, 75, 'touch_link_0_touch_field_0_touch_content', 'the quick fox jumps over the lazy dog'),
(538, 75, '_touch_link_0_touch_field_0_touch_content', 'field_64252c7d08461'),
(539, 75, 'touch_link_0_touch_field', '1'),
(540, 75, '_touch_link_0_touch_field', 'field_642529a996761'),
(541, 75, 'touch_link_1_touch_title', 'Company info'),
(542, 75, '_touch_link_1_touch_title', 'field_64252bf308460'),
(543, 75, 'touch_link_1_touch_field_0_touch_content', '<ul>\r\n<li>We are hiring</li>\r\n<li>About Us</li>\r\n<li>Blog</li>\r\n</ul>'),
(544, 75, '_touch_link_1_touch_field_0_touch_content', 'field_64252c7d08461'),
(545, 75, 'touch_link_1_touch_field', '1'),
(546, 75, '_touch_link_1_touch_field', 'field_642529a996761'),
(547, 75, 'touch_link', '2'),
(548, 75, '_touch_link', 'field_6425298096760'),
(549, 76, 'the_title', 'Physionic'),
(550, 76, '_the_title', 'field_64250d92a963f'),
(551, 76, 'faq_item_0_the_question', 'Lorem ipsum, dolor sit amet consectetur adipisicing elit. Corporis, sequi!'),
(552, 76, '_faq_item_0_the_question', 'field_6424f6d1da3f7'),
(553, 76, 'faq_item_0_the_answer', 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Sequi neque quis nemo amet tempora illum dicta temporibus nulla quaerat in?'),
(554, 76, '_faq_item_0_the_answer', 'field_64250949da3f8'),
(555, 76, 'faq_item_1_the_question', 'Lorem ipsum, dolor sit amet consectetur adipisicing elit. Corporis, sequi!'),
(556, 76, '_faq_item_1_the_question', 'field_6424f6d1da3f7'),
(557, 76, 'faq_item_1_the_answer', 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Sequi neque quis nemo amet tempora illum dicta temporibus nulla quaerat in?'),
(558, 76, '_faq_item_1_the_answer', 'field_64250949da3f8'),
(559, 76, 'faq_item_2_the_question', 'Lorem ipsum, dolor sit amet consectetur adipisicing elit. Corporis, sequi!'),
(560, 76, '_faq_item_2_the_question', 'field_6424f6d1da3f7'),
(561, 76, 'faq_item_2_the_answer', 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Sequi neque quis nemo amet tempora illum dicta temporibus nulla quaerat in?'),
(562, 76, '_faq_item_2_the_answer', 'field_64250949da3f8'),
(563, 76, 'faq_item_3_the_question', 'Lorem ipsum, dolor sit amet consectetur adipisicing elit. Corporis, sequi!'),
(564, 76, '_faq_item_3_the_question', 'field_6424f6d1da3f7'),
(565, 76, 'faq_item_3_the_answer', 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Sequi neque quis nemo amet tempora illum dicta temporibus nulla quaerat in?'),
(566, 76, '_faq_item_3_the_answer', 'field_64250949da3f8'),
(567, 76, 'faq_item_4_the_question', 'Lorem ipsum, dolor sit amet consectetur adipisicing elit. Corporis, sequi!'),
(568, 76, '_faq_item_4_the_question', 'field_6424f6d1da3f7'),
(569, 76, 'faq_item_4_the_answer', 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Sequi neque quis nemo amet tempora illum dicta temporibus nulla quaerat in?'),
(570, 76, '_faq_item_4_the_answer', 'field_64250949da3f8'),
(571, 76, 'faq_item_5_the_question', 'Lorem ipsum, dolor sit amet consectetur adipisicing elit. Corporis, sequi!'),
(572, 76, '_faq_item_5_the_question', 'field_6424f6d1da3f7'),
(573, 76, 'faq_item_5_the_answer', 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Sequi neque quis nemo amet tempora illum dicta temporibus nulla quaerat in?'),
(574, 76, '_faq_item_5_the_answer', 'field_64250949da3f8'),
(575, 76, 'faq_item_6_the_question', 'Lorem ipsum, dolor sit amet consectetur adipisicing elit. Corporis, sequi!'),
(576, 76, '_faq_item_6_the_question', 'field_6424f6d1da3f7'),
(577, 76, 'faq_item_6_the_answer', 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Sequi neque quis nemo amet tempora illum dicta temporibus nulla quaerat in?'),
(578, 76, '_faq_item_6_the_answer', 'field_64250949da3f8'),
(579, 76, 'faq_item_7_the_question', 'Lorem ipsum, dolor sit amet consectetur adipisicing elit. Corporis, sequi!'),
(580, 76, '_faq_item_7_the_question', 'field_6424f6d1da3f7'),
(581, 76, 'faq_item_7_the_answer', 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Sequi neque quis nemo amet tempora illum dicta temporibus nulla quaerat in?'),
(582, 76, '_faq_item_7_the_answer', 'field_64250949da3f8'),
(583, 76, 'faq_item_8_the_question', 'Lorem ipsum, dolor sit amet consectetur adipisicing elit. Corporis, sequi!'),
(584, 76, '_faq_item_8_the_question', 'field_6424f6d1da3f7'),
(585, 76, 'faq_item_8_the_answer', 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Sequi neque quis nemo amet tempora illum dicta temporibus nulla quaerat in?'),
(586, 76, '_faq_item_8_the_answer', 'field_64250949da3f8'),
(587, 76, 'faq_item_9_the_question', 'Lorem ipsum, dolor sit amet consectetur adipisicing elit. Corporis, sequi!'),
(588, 76, '_faq_item_9_the_question', 'field_6424f6d1da3f7'),
(589, 76, 'faq_item_9_the_answer', 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Sequi neque quis nemo amet tempora illum dicta temporibus nulla quaerat in?'),
(590, 76, '_faq_item_9_the_answer', 'field_64250949da3f8'),
(591, 76, 'faq_item', '10'),
(592, 76, '_faq_item', 'field_6424f675da3f5'),
(593, 76, 'the_arrow', '44'),
(594, 76, '_the_arrow', 'field_6425133f5837f'),
(595, 76, 'get_in_touch', ''),
(596, 76, '_get_in_touch', 'field_64252648c26f7'),
(597, 76, 'get_in_p', ''),
(598, 76, '_get_in_p', 'field_64252672c26f8'),
(599, 76, 'touch_link_0_touch_title', 'Get In Touch'),
(600, 76, '_touch_link_0_touch_title', 'field_64252bf308460'),
(601, 76, 'touch_link_0_touch_field_0_touch_content', 'the quick fox jumps over the lazy dog'),
(602, 76, '_touch_link_0_touch_field_0_touch_content', 'field_64252c7d08461'),
(603, 76, 'touch_link_0_touch_field', '1'),
(604, 76, '_touch_link_0_touch_field', 'field_642529a996761'),
(605, 76, 'touch_link_1_touch_title', 'Company info'),
(606, 76, '_touch_link_1_touch_title', 'field_64252bf308460'),
(607, 76, 'touch_link_1_touch_field_0_touch_content', '<ul class=\"touch__content\">\r\n<li>We are hiring</li>\r\n<li>About Us</li>\r\n<li>Blog</li>\r\n</ul>'),
(608, 76, '_touch_link_1_touch_field_0_touch_content', 'field_64252c7d08461'),
(609, 76, 'touch_link_1_touch_field', '1'),
(610, 76, '_touch_link_1_touch_field', 'field_642529a996761'),
(611, 76, 'touch_link', '2'),
(612, 76, '_touch_link', 'field_6425298096760'),
(613, 51, 'touch_link_2_touch_title', 'Features'),
(614, 51, '_touch_link_2_touch_title', 'field_64252bf308460'),
(615, 51, 'touch_link_2_touch_field_0_touch_content', '<ul class=\"touch__content\">\r\n<li>Business Marketing</li>\r\n<li>User Analytic</li>\r\n<li>Live Chat</li>\r\n<li>Unlimited Support</li>\r\n</ul>\r\n\r\n\r\n'),
(616, 51, '_touch_link_2_touch_field_0_touch_content', 'field_64252c7d08461'),
(617, 51, 'touch_link_2_touch_field', '1'),
(618, 51, '_touch_link_2_touch_field', 'field_642529a996761'),
(619, 51, 'touch_link_3_touch_title', 'Resources'),
(620, 51, '_touch_link_3_touch_title', 'field_64252bf308460'),
(621, 51, 'touch_link_3_touch_field_0_touch_content', '<ul class=\"touch__content\">\r\n<li>IOS & Android</li>\r\n<li>Watch a Demo</li>\r\n<li>Customers</li>\r\n<li>API</li>\r\n</ul>\r\n\r\n\r\n\r\n\r\n\r\n'),
(622, 51, '_touch_link_3_touch_field_0_touch_content', 'field_64252c7d08461'),
(623, 51, 'touch_link_3_touch_field', '1'),
(624, 51, '_touch_link_3_touch_field', 'field_642529a996761'),
(625, 77, 'the_title', 'Physionic'),
(626, 77, '_the_title', 'field_64250d92a963f'),
(627, 77, 'faq_item_0_the_question', 'Lorem ipsum, dolor sit amet consectetur adipisicing elit. Corporis, sequi!'),
(628, 77, '_faq_item_0_the_question', 'field_6424f6d1da3f7'),
(629, 77, 'faq_item_0_the_answer', 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Sequi neque quis nemo amet tempora illum dicta temporibus nulla quaerat in?'),
(630, 77, '_faq_item_0_the_answer', 'field_64250949da3f8'),
(631, 77, 'faq_item_1_the_question', 'Lorem ipsum, dolor sit amet consectetur adipisicing elit. Corporis, sequi!'),
(632, 77, '_faq_item_1_the_question', 'field_6424f6d1da3f7'),
(633, 77, 'faq_item_1_the_answer', 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Sequi neque quis nemo amet tempora illum dicta temporibus nulla quaerat in?'),
(634, 77, '_faq_item_1_the_answer', 'field_64250949da3f8'),
(635, 77, 'faq_item_2_the_question', 'Lorem ipsum, dolor sit amet consectetur adipisicing elit. Corporis, sequi!'),
(636, 77, '_faq_item_2_the_question', 'field_6424f6d1da3f7'),
(637, 77, 'faq_item_2_the_answer', 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Sequi neque quis nemo amet tempora illum dicta temporibus nulla quaerat in?'),
(638, 77, '_faq_item_2_the_answer', 'field_64250949da3f8'),
(639, 77, 'faq_item_3_the_question', 'Lorem ipsum, dolor sit amet consectetur adipisicing elit. Corporis, sequi!'),
(640, 77, '_faq_item_3_the_question', 'field_6424f6d1da3f7'),
(641, 77, 'faq_item_3_the_answer', 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Sequi neque quis nemo amet tempora illum dicta temporibus nulla quaerat in?');
INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(642, 77, '_faq_item_3_the_answer', 'field_64250949da3f8'),
(643, 77, 'faq_item_4_the_question', 'Lorem ipsum, dolor sit amet consectetur adipisicing elit. Corporis, sequi!'),
(644, 77, '_faq_item_4_the_question', 'field_6424f6d1da3f7'),
(645, 77, 'faq_item_4_the_answer', 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Sequi neque quis nemo amet tempora illum dicta temporibus nulla quaerat in?'),
(646, 77, '_faq_item_4_the_answer', 'field_64250949da3f8'),
(647, 77, 'faq_item_5_the_question', 'Lorem ipsum, dolor sit amet consectetur adipisicing elit. Corporis, sequi!'),
(648, 77, '_faq_item_5_the_question', 'field_6424f6d1da3f7'),
(649, 77, 'faq_item_5_the_answer', 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Sequi neque quis nemo amet tempora illum dicta temporibus nulla quaerat in?'),
(650, 77, '_faq_item_5_the_answer', 'field_64250949da3f8'),
(651, 77, 'faq_item_6_the_question', 'Lorem ipsum, dolor sit amet consectetur adipisicing elit. Corporis, sequi!'),
(652, 77, '_faq_item_6_the_question', 'field_6424f6d1da3f7'),
(653, 77, 'faq_item_6_the_answer', 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Sequi neque quis nemo amet tempora illum dicta temporibus nulla quaerat in?'),
(654, 77, '_faq_item_6_the_answer', 'field_64250949da3f8'),
(655, 77, 'faq_item_7_the_question', 'Lorem ipsum, dolor sit amet consectetur adipisicing elit. Corporis, sequi!'),
(656, 77, '_faq_item_7_the_question', 'field_6424f6d1da3f7'),
(657, 77, 'faq_item_7_the_answer', 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Sequi neque quis nemo amet tempora illum dicta temporibus nulla quaerat in?'),
(658, 77, '_faq_item_7_the_answer', 'field_64250949da3f8'),
(659, 77, 'faq_item_8_the_question', 'Lorem ipsum, dolor sit amet consectetur adipisicing elit. Corporis, sequi!'),
(660, 77, '_faq_item_8_the_question', 'field_6424f6d1da3f7'),
(661, 77, 'faq_item_8_the_answer', 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Sequi neque quis nemo amet tempora illum dicta temporibus nulla quaerat in?'),
(662, 77, '_faq_item_8_the_answer', 'field_64250949da3f8'),
(663, 77, 'faq_item_9_the_question', 'Lorem ipsum, dolor sit amet consectetur adipisicing elit. Corporis, sequi!'),
(664, 77, '_faq_item_9_the_question', 'field_6424f6d1da3f7'),
(665, 77, 'faq_item_9_the_answer', 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Sequi neque quis nemo amet tempora illum dicta temporibus nulla quaerat in?'),
(666, 77, '_faq_item_9_the_answer', 'field_64250949da3f8'),
(667, 77, 'faq_item', '10'),
(668, 77, '_faq_item', 'field_6424f675da3f5'),
(669, 77, 'the_arrow', '44'),
(670, 77, '_the_arrow', 'field_6425133f5837f'),
(671, 77, 'get_in_touch', ''),
(672, 77, '_get_in_touch', 'field_64252648c26f7'),
(673, 77, 'get_in_p', ''),
(674, 77, '_get_in_p', 'field_64252672c26f8'),
(675, 77, 'touch_link_0_touch_title', 'Get In Touch'),
(676, 77, '_touch_link_0_touch_title', 'field_64252bf308460'),
(677, 77, 'touch_link_0_touch_field_0_touch_content', 'the quick fox jumps over the lazy dog'),
(678, 77, '_touch_link_0_touch_field_0_touch_content', 'field_64252c7d08461'),
(679, 77, 'touch_link_0_touch_field', '1'),
(680, 77, '_touch_link_0_touch_field', 'field_642529a996761'),
(681, 77, 'touch_link_1_touch_title', 'Company info'),
(682, 77, '_touch_link_1_touch_title', 'field_64252bf308460'),
(683, 77, 'touch_link_1_touch_field_0_touch_content', '<ul class=\"touch__content\">\r\n<li>We are hiring</li>\r\n<li>About Us</li>\r\n<li>Blog</li>\r\n</ul>'),
(684, 77, '_touch_link_1_touch_field_0_touch_content', 'field_64252c7d08461'),
(685, 77, 'touch_link_1_touch_field', '1'),
(686, 77, '_touch_link_1_touch_field', 'field_642529a996761'),
(687, 77, 'touch_link', '4'),
(688, 77, '_touch_link', 'field_6425298096760'),
(689, 77, 'touch_link_2_touch_title', 'Features'),
(690, 77, '_touch_link_2_touch_title', 'field_64252bf308460'),
(691, 77, 'touch_link_2_touch_field_0_touch_content', '<ul class=\"touch__content\">\r\n<li>Business Marketing</li>\r\n<li>User Analytic</li>\r\n<li>Live Chat</li>\r\n<li>Unlimited Support</li>\r\n</ul>\r\n\r\n\r\n'),
(692, 77, '_touch_link_2_touch_field_0_touch_content', 'field_64252c7d08461'),
(693, 77, 'touch_link_2_touch_field', '1'),
(694, 77, '_touch_link_2_touch_field', 'field_642529a996761'),
(695, 77, 'touch_link_3_touch_title', 'Resources'),
(696, 77, '_touch_link_3_touch_title', 'field_64252bf308460'),
(697, 77, 'touch_link_3_touch_field_0_touch_content', '<ul class=\"touch__content\">\r\n<li>IOS & Android</li>\r\n<li>Watch a Demo</li>\r\n<li>Customers</li>\r\n<li>API</li>\r\n</ul>\r\n\r\n\r\n\r\n\r\n\r\n'),
(698, 77, '_touch_link_3_touch_field_0_touch_content', 'field_64252c7d08461'),
(699, 77, 'touch_link_3_touch_field', '1'),
(700, 77, '_touch_link_3_touch_field', 'field_642529a996761'),
(701, 79, 'the_title', 'Physionic'),
(702, 79, '_the_title', 'field_64250d92a963f'),
(703, 79, 'faq_item_0_the_question', 'Lorem ipsum, dolor sit amet consectetur adipisicing elit. Corporis, sequi!'),
(704, 79, '_faq_item_0_the_question', 'field_6424f6d1da3f7'),
(705, 79, 'faq_item_0_the_answer', 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Sequi neque quis nemo amet tempora illum dicta temporibus nulla quaerat in?'),
(706, 79, '_faq_item_0_the_answer', 'field_64250949da3f8'),
(707, 79, 'faq_item_1_the_question', 'Lorem ipsum, dolor sit amet consectetur adipisicing elit. Corporis, sequi!'),
(708, 79, '_faq_item_1_the_question', 'field_6424f6d1da3f7'),
(709, 79, 'faq_item_1_the_answer', 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Sequi neque quis nemo amet tempora illum dicta temporibus nulla quaerat in?'),
(710, 79, '_faq_item_1_the_answer', 'field_64250949da3f8'),
(711, 79, 'faq_item_2_the_question', 'Lorem ipsum, dolor sit amet consectetur adipisicing elit. Corporis, sequi!'),
(712, 79, '_faq_item_2_the_question', 'field_6424f6d1da3f7'),
(713, 79, 'faq_item_2_the_answer', 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Sequi neque quis nemo amet tempora illum dicta temporibus nulla quaerat in?'),
(714, 79, '_faq_item_2_the_answer', 'field_64250949da3f8'),
(715, 79, 'faq_item_3_the_question', 'Lorem ipsum, dolor sit amet consectetur adipisicing elit. Corporis, sequi!'),
(716, 79, '_faq_item_3_the_question', 'field_6424f6d1da3f7'),
(717, 79, 'faq_item_3_the_answer', 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Sequi neque quis nemo amet tempora illum dicta temporibus nulla quaerat in?'),
(718, 79, '_faq_item_3_the_answer', 'field_64250949da3f8'),
(719, 79, 'faq_item_4_the_question', 'Lorem ipsum, dolor sit amet consectetur adipisicing elit. Corporis, sequi!'),
(720, 79, '_faq_item_4_the_question', 'field_6424f6d1da3f7'),
(721, 79, 'faq_item_4_the_answer', 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Sequi neque quis nemo amet tempora illum dicta temporibus nulla quaerat in?'),
(722, 79, '_faq_item_4_the_answer', 'field_64250949da3f8'),
(723, 79, 'faq_item_5_the_question', 'Lorem ipsum, dolor sit amet consectetur adipisicing elit. Corporis, sequi!'),
(724, 79, '_faq_item_5_the_question', 'field_6424f6d1da3f7'),
(725, 79, 'faq_item_5_the_answer', 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Sequi neque quis nemo amet tempora illum dicta temporibus nulla quaerat in?'),
(726, 79, '_faq_item_5_the_answer', 'field_64250949da3f8'),
(727, 79, 'faq_item_6_the_question', 'Lorem ipsum, dolor sit amet consectetur adipisicing elit. Corporis, sequi!'),
(728, 79, '_faq_item_6_the_question', 'field_6424f6d1da3f7'),
(729, 79, 'faq_item_6_the_answer', 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Sequi neque quis nemo amet tempora illum dicta temporibus nulla quaerat in?'),
(730, 79, '_faq_item_6_the_answer', 'field_64250949da3f8'),
(731, 79, 'faq_item_7_the_question', 'Lorem ipsum, dolor sit amet consectetur adipisicing elit. Corporis, sequi!'),
(732, 79, '_faq_item_7_the_question', 'field_6424f6d1da3f7'),
(733, 79, 'faq_item_7_the_answer', 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Sequi neque quis nemo amet tempora illum dicta temporibus nulla quaerat in?'),
(734, 79, '_faq_item_7_the_answer', 'field_64250949da3f8'),
(735, 79, 'faq_item_8_the_question', 'Lorem ipsum, dolor sit amet consectetur adipisicing elit. Corporis, sequi!'),
(736, 79, '_faq_item_8_the_question', 'field_6424f6d1da3f7'),
(737, 79, 'faq_item_8_the_answer', 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Sequi neque quis nemo amet tempora illum dicta temporibus nulla quaerat in?'),
(738, 79, '_faq_item_8_the_answer', 'field_64250949da3f8'),
(739, 79, 'faq_item_9_the_question', 'Lorem ipsum, dolor sit amet consectetur adipisicing elit. Corporis, sequi!'),
(740, 79, '_faq_item_9_the_question', 'field_6424f6d1da3f7'),
(741, 79, 'faq_item_9_the_answer', 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Sequi neque quis nemo amet tempora illum dicta temporibus nulla quaerat in?'),
(742, 79, '_faq_item_9_the_answer', 'field_64250949da3f8'),
(743, 79, 'faq_item', '10'),
(744, 79, '_faq_item', 'field_6424f675da3f5'),
(745, 79, 'the_arrow', '44'),
(746, 79, '_the_arrow', 'field_6425133f5837f'),
(747, 79, 'get_in_touch', ''),
(748, 79, '_get_in_touch', 'field_64252648c26f7'),
(749, 79, 'get_in_p', ''),
(750, 79, '_get_in_p', 'field_64252672c26f8'),
(751, 79, 'touch_link_0_touch_title', 'Get In Touch'),
(752, 79, '_touch_link_0_touch_title', 'field_64252bf308460'),
(753, 79, 'touch_link_0_touch_field_0_touch_content', '<ul class=\"touch__content\">\r\n<li>Get In Touch</li>\r\n<li>the quick fox jumps over the lazy dog\r\n</li>\r\n</ul>'),
(754, 79, '_touch_link_0_touch_field_0_touch_content', 'field_64252c7d08461'),
(755, 79, 'touch_link_0_touch_field', '1'),
(756, 79, '_touch_link_0_touch_field', 'field_642529a996761'),
(757, 79, 'touch_link_1_touch_title', 'Company info'),
(758, 79, '_touch_link_1_touch_title', 'field_64252bf308460'),
(759, 79, 'touch_link_1_touch_field_0_touch_content', '<ul class=\"touch__content\">\r\n<li>We are hiring</li>\r\n<li>About Us</li>\r\n<li>Blog</li>\r\n</ul>'),
(760, 79, '_touch_link_1_touch_field_0_touch_content', 'field_64252c7d08461'),
(761, 79, 'touch_link_1_touch_field', '1'),
(762, 79, '_touch_link_1_touch_field', 'field_642529a996761'),
(763, 79, 'touch_link', '4'),
(764, 79, '_touch_link', 'field_6425298096760'),
(765, 79, 'touch_link_2_touch_title', 'Features'),
(766, 79, '_touch_link_2_touch_title', 'field_64252bf308460'),
(767, 79, 'touch_link_2_touch_field_0_touch_content', '<ul class=\"touch__content\">\r\n<li>Business Marketing</li>\r\n<li>User Analytic</li>\r\n<li>Live Chat</li>\r\n<li>Unlimited Support</li>\r\n</ul>\r\n\r\n\r\n'),
(768, 79, '_touch_link_2_touch_field_0_touch_content', 'field_64252c7d08461'),
(769, 79, 'touch_link_2_touch_field', '1'),
(770, 79, '_touch_link_2_touch_field', 'field_642529a996761'),
(771, 79, 'touch_link_3_touch_title', 'Resources'),
(772, 79, '_touch_link_3_touch_title', 'field_64252bf308460'),
(773, 79, 'touch_link_3_touch_field_0_touch_content', '<ul class=\"touch__content\">\r\n<li>IOS & Android</li>\r\n<li>Watch a Demo</li>\r\n<li>Customers</li>\r\n<li>API</li>\r\n</ul>\r\n\r\n\r\n\r\n\r\n\r\n'),
(774, 79, '_touch_link_3_touch_field_0_touch_content', 'field_64252c7d08461'),
(775, 79, 'touch_link_3_touch_field', '1'),
(776, 79, '_touch_link_3_touch_field', 'field_642529a996761'),
(777, 80, 'the_title', 'Physionic'),
(778, 80, '_the_title', 'field_64250d92a963f'),
(779, 80, 'faq_item_0_the_question', 'Lorem ipsum, dolor sit amet consectetur adipisicing elit. Corporis, sequi!'),
(780, 80, '_faq_item_0_the_question', 'field_6424f6d1da3f7'),
(781, 80, 'faq_item_0_the_answer', 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Sequi neque quis nemo amet tempora illum dicta temporibus nulla quaerat in?'),
(782, 80, '_faq_item_0_the_answer', 'field_64250949da3f8'),
(783, 80, 'faq_item_1_the_question', 'Lorem ipsum, dolor sit amet consectetur adipisicing elit. Corporis, sequi!'),
(784, 80, '_faq_item_1_the_question', 'field_6424f6d1da3f7'),
(785, 80, 'faq_item_1_the_answer', 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Sequi neque quis nemo amet tempora illum dicta temporibus nulla quaerat in?'),
(786, 80, '_faq_item_1_the_answer', 'field_64250949da3f8'),
(787, 80, 'faq_item_2_the_question', 'Lorem ipsum, dolor sit amet consectetur adipisicing elit. Corporis, sequi!'),
(788, 80, '_faq_item_2_the_question', 'field_6424f6d1da3f7'),
(789, 80, 'faq_item_2_the_answer', 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Sequi neque quis nemo amet tempora illum dicta temporibus nulla quaerat in?'),
(790, 80, '_faq_item_2_the_answer', 'field_64250949da3f8'),
(791, 80, 'faq_item_3_the_question', 'Lorem ipsum, dolor sit amet consectetur adipisicing elit. Corporis, sequi!'),
(792, 80, '_faq_item_3_the_question', 'field_6424f6d1da3f7'),
(793, 80, 'faq_item_3_the_answer', 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Sequi neque quis nemo amet tempora illum dicta temporibus nulla quaerat in?'),
(794, 80, '_faq_item_3_the_answer', 'field_64250949da3f8'),
(795, 80, 'faq_item_4_the_question', 'Lorem ipsum, dolor sit amet consectetur adipisicing elit. Corporis, sequi!'),
(796, 80, '_faq_item_4_the_question', 'field_6424f6d1da3f7'),
(797, 80, 'faq_item_4_the_answer', 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Sequi neque quis nemo amet tempora illum dicta temporibus nulla quaerat in?'),
(798, 80, '_faq_item_4_the_answer', 'field_64250949da3f8'),
(799, 80, 'faq_item_5_the_question', 'Lorem ipsum, dolor sit amet consectetur adipisicing elit. Corporis, sequi!'),
(800, 80, '_faq_item_5_the_question', 'field_6424f6d1da3f7'),
(801, 80, 'faq_item_5_the_answer', 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Sequi neque quis nemo amet tempora illum dicta temporibus nulla quaerat in?'),
(802, 80, '_faq_item_5_the_answer', 'field_64250949da3f8'),
(803, 80, 'faq_item_6_the_question', 'Lorem ipsum, dolor sit amet consectetur adipisicing elit. Corporis, sequi!'),
(804, 80, '_faq_item_6_the_question', 'field_6424f6d1da3f7'),
(805, 80, 'faq_item_6_the_answer', 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Sequi neque quis nemo amet tempora illum dicta temporibus nulla quaerat in?'),
(806, 80, '_faq_item_6_the_answer', 'field_64250949da3f8'),
(807, 80, 'faq_item_7_the_question', 'Lorem ipsum, dolor sit amet consectetur adipisicing elit. Corporis, sequi!'),
(808, 80, '_faq_item_7_the_question', 'field_6424f6d1da3f7'),
(809, 80, 'faq_item_7_the_answer', 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Sequi neque quis nemo amet tempora illum dicta temporibus nulla quaerat in?'),
(810, 80, '_faq_item_7_the_answer', 'field_64250949da3f8'),
(811, 80, 'faq_item_8_the_question', 'Lorem ipsum, dolor sit amet consectetur adipisicing elit. Corporis, sequi!'),
(812, 80, '_faq_item_8_the_question', 'field_6424f6d1da3f7'),
(813, 80, 'faq_item_8_the_answer', 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Sequi neque quis nemo amet tempora illum dicta temporibus nulla quaerat in?'),
(814, 80, '_faq_item_8_the_answer', 'field_64250949da3f8'),
(815, 80, 'faq_item_9_the_question', 'Lorem ipsum, dolor sit amet consectetur adipisicing elit. Corporis, sequi!'),
(816, 80, '_faq_item_9_the_question', 'field_6424f6d1da3f7'),
(817, 80, 'faq_item_9_the_answer', 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Sequi neque quis nemo amet tempora illum dicta temporibus nulla quaerat in?'),
(818, 80, '_faq_item_9_the_answer', 'field_64250949da3f8'),
(819, 80, 'faq_item', '10'),
(820, 80, '_faq_item', 'field_6424f675da3f5'),
(821, 80, 'the_arrow', '44'),
(822, 80, '_the_arrow', 'field_6425133f5837f'),
(823, 80, 'get_in_touch', ''),
(824, 80, '_get_in_touch', 'field_64252648c26f7'),
(825, 80, 'get_in_p', ''),
(826, 80, '_get_in_p', 'field_64252672c26f8'),
(827, 80, 'touch_link_0_touch_title', 'Get In Touch'),
(828, 80, '_touch_link_0_touch_title', 'field_64252bf308460'),
(829, 80, 'touch_link_0_touch_field_0_touch_content', '<ul class=\"touch__content\">\r\n<li>Get In Touch</li>\r\n<li>the quick fox jumps over the lazy dog\r\n</li>\r\n<li>\r\n <ul class=\"socLinks d--flex\">\r\n     <li><i class=\"fa-brands fa-facebook\"></i></li>\r\n                                <li><i class=\"fa-brands fa-instagram\"></i></li>\r\n                                <li><i class=\"fa-brands fa-twitter\"></i></li>\r\n </ul>\r\n</li>\r\n</ul>'),
(830, 80, '_touch_link_0_touch_field_0_touch_content', 'field_64252c7d08461'),
(831, 80, 'touch_link_0_touch_field', '1'),
(832, 80, '_touch_link_0_touch_field', 'field_642529a996761'),
(833, 80, 'touch_link_1_touch_title', 'Company info'),
(834, 80, '_touch_link_1_touch_title', 'field_64252bf308460'),
(835, 80, 'touch_link_1_touch_field_0_touch_content', '<ul class=\"touch__content\">\r\n<li>We are hiring</li>\r\n<li>About Us</li>\r\n<li>Blog</li>\r\n</ul>'),
(836, 80, '_touch_link_1_touch_field_0_touch_content', 'field_64252c7d08461'),
(837, 80, 'touch_link_1_touch_field', '1'),
(838, 80, '_touch_link_1_touch_field', 'field_642529a996761'),
(839, 80, 'touch_link', '4'),
(840, 80, '_touch_link', 'field_6425298096760'),
(841, 80, 'touch_link_2_touch_title', 'Features'),
(842, 80, '_touch_link_2_touch_title', 'field_64252bf308460'),
(843, 80, 'touch_link_2_touch_field_0_touch_content', '<ul class=\"touch__content\">\r\n<li>Business Marketing</li>\r\n<li>User Analytic</li>\r\n<li>Live Chat</li>\r\n<li>Unlimited Support</li>\r\n</ul>\r\n\r\n\r\n'),
(844, 80, '_touch_link_2_touch_field_0_touch_content', 'field_64252c7d08461'),
(845, 80, 'touch_link_2_touch_field', '1'),
(846, 80, '_touch_link_2_touch_field', 'field_642529a996761'),
(847, 80, 'touch_link_3_touch_title', 'Resources'),
(848, 80, '_touch_link_3_touch_title', 'field_64252bf308460'),
(849, 80, 'touch_link_3_touch_field_0_touch_content', '<ul class=\"touch__content\">\r\n<li>IOS & Android</li>\r\n<li>Watch a Demo</li>\r\n<li>Customers</li>\r\n<li>API</li>\r\n</ul>\r\n\r\n\r\n\r\n\r\n\r\n'),
(850, 80, '_touch_link_3_touch_field_0_touch_content', 'field_64252c7d08461'),
(851, 80, 'touch_link_3_touch_field', '1'),
(852, 80, '_touch_link_3_touch_field', 'field_642529a996761'),
(853, 81, '_edit_last', '1'),
(854, 81, '_edit_lock', '1680479638:1');

-- --------------------------------------------------------

--
-- Table structure for table `wp_posts`
--

CREATE TABLE `wp_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext NOT NULL,
  `post_title` text NOT NULL,
  `post_excerpt` text NOT NULL,
  `post_status` varchar(20) NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) NOT NULL DEFAULT 'open',
  `post_password` varchar(255) NOT NULL DEFAULT '',
  `post_name` varchar(200) NOT NULL DEFAULT '',
  `to_ping` text NOT NULL,
  `pinged` text NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `guid` varchar(255) NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT 0,
  `post_type` varchar(20) NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2023-03-29 23:45:40', '2023-03-29 23:45:40', '<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->', 'Hello world!', '', 'trash', 'open', 'open', '', 'hello-world__trashed', '', '', '2023-03-30 01:14:55', '2023-03-30 01:14:55', '', 0, 'http://localhost/physionic/?p=1', 0, 'post', '', 1),
(2, 1, '2023-03-29 23:45:40', '2023-03-29 23:45:40', '<!-- wp:paragraph -->\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...or something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>As a new WordPress user, you should go to <a href=\"http://localhost/physionic/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\n<!-- /wp:paragraph -->', 'Sample Page', '', 'publish', 'closed', 'open', '', 'sample-page', '', '', '2023-03-29 23:45:40', '2023-03-29 23:45:40', '', 0, 'http://localhost/physionic/?page_id=2', 0, 'page', '', 0),
(3, 1, '2023-03-29 23:45:40', '2023-03-29 23:45:40', '<!-- wp:heading --><h2>Who we are</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Our website address is: http://localhost/physionic.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Comments</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Media</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Cookies</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you visit our login page, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Embedded content from other websites</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Who we share your data with</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you request a password reset, your IP address will be included in the reset email.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>How long we retain your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What rights you have over your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Where your data is sent</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Visitor comments may be checked through an automated spam detection service.</p><!-- /wp:paragraph -->', 'Privacy Policy', '', 'draft', 'closed', 'open', '', 'privacy-policy', '', '', '2023-03-29 23:45:40', '2023-03-29 23:45:40', '', 0, 'http://localhost/physionic/?page_id=3', 0, 'page', '', 0),
(5, 1, '2023-03-30 00:42:57', '2023-03-30 00:41:07', '', 'Home', '', 'publish', 'closed', 'closed', '', 'home', '', '', '2023-03-30 00:42:57', '2023-03-30 00:42:57', '', 0, 'http://localhost/physionic/?p=5', 1, 'nav_menu_item', '', 0),
(6, 1, '2023-03-30 00:42:57', '2023-03-30 00:41:07', '', 'Product', '', 'publish', 'closed', 'closed', '', 'product', '', '', '2023-03-30 00:42:57', '2023-03-30 00:42:57', '', 0, 'http://localhost/physionic/?p=6', 2, 'nav_menu_item', '', 0),
(7, 1, '2023-03-30 00:42:57', '2023-03-30 00:41:57', '', 'Pricing', '', 'publish', 'closed', 'closed', '', 'pricing', '', '', '2023-03-30 00:42:57', '2023-03-30 00:42:57', '', 0, 'http://localhost/physionic/?p=7', 3, 'nav_menu_item', '', 0),
(8, 1, '2023-03-30 00:42:57', '2023-03-30 00:42:16', '', 'Contact', '', 'publish', 'closed', 'closed', '', 'contact', '', '', '2023-03-30 00:42:57', '2023-03-30 00:42:57', '', 0, 'http://localhost/physionic/?p=8', 4, 'nav_menu_item', '', 0),
(10, 1, '2023-03-30 01:19:50', '2023-03-30 01:19:50', '', 'Emergency Case', '', 'trash', 'closed', 'closed', '', '__trashed', '', '', '2023-03-30 01:19:50', '2023-03-30 01:19:50', '', 0, 'http://localhost/physionic/?post_type=physionicpost&#038;p=10', 0, 'physionicpost', '', 0),
(14, 1, '2023-03-30 01:14:55', '2023-03-30 01:14:55', '<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->', 'Hello world!', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2023-03-30 01:14:55', '2023-03-30 01:14:55', '', 1, 'http://localhost/physionic/?p=14', 0, 'revision', '', 0),
(22, 1, '2023-03-30 01:27:50', '2023-03-30 01:27:50', '<ul>\r\n	<li>The Best products start with Figma</li>\r\n	<li>Design with real data</li>\r\n	<li>Lightning fast prototyping</li>\r\n	<li>Fastest way to organize</li>\r\n	<li>work at the speed of though</li>\r\n</ul>\r\n\r\n', 'Emergency Case', '', 'publish', 'closed', 'closed', '', 'emergency-case', '', '', '2023-03-30 01:38:15', '2023-03-30 01:38:15', '', 0, 'http://localhost/physionic/?post_type=physionicpost&#038;p=22', 2, 'physionicpost', '', 0),
(24, 1, '2023-03-30 01:38:03', '2023-03-30 01:38:03', '', 'icn-circle circle-md', '', 'inherit', 'open', 'closed', '', 'icn-circle-circle-md', '', '', '2023-03-30 01:38:03', '2023-03-30 01:38:03', '', 22, 'http://localhost/physionic/wp-content/uploads/2023/03/icn-circle-circle-md.png', 0, 'attachment', 'image/png', 0),
(26, 1, '2023-03-30 01:38:48', '2023-03-30 01:38:48', '<ul>\r\n	<li>The Best products start with Figma</li>\r\n	<li>Design with real data</li>\r\n	<li>Lightning fast prototyping</li>\r\n	<li>Fastest way to organize</li>\r\n	<li>work at the speed of though</li>\r\n</ul>\r\n\r\n', 'Emergency Case', '', 'publish', 'closed', 'closed', '', 'emergency-case-2', '', '', '2023-03-30 01:38:48', '2023-03-30 01:38:48', '', 0, 'http://localhost/physionic/?post_type=physionicpost&#038;p=26', 1, 'physionicpost', '', 0),
(27, 1, '2023-03-30 01:39:03', '2023-03-30 01:39:03', '<ul>\r\n	<li>The Best products start with Figma</li>\r\n	<li>Design with real data</li>\r\n	<li>Lightning fast prototyping</li>\r\n	<li>Fastest way to organize</li>\r\n	<li>work at the speed of though</li>\r\n</ul>\r\n\r\n', 'Emergency Case', '', 'publish', 'closed', 'closed', '', 'emergency-case-3', '', '', '2023-03-30 01:39:03', '2023-03-30 01:39:03', '', 0, 'http://localhost/physionic/?post_type=physionicpost&#038;p=27', 0, 'physionicpost', '', 0),
(28, 1, '2023-03-30 01:58:34', '2023-03-30 01:58:34', 'Slate helps you see how many more days you need to work to reach your financial goal.', 'clients', 'Slate helps you see how many more days you need to work to reach your financial goal.', 'publish', 'closed', 'closed', '', 'clients', '', '', '2023-03-30 01:59:18', '2023-03-30 01:59:18', '', 0, 'http://localhost/physionic/?post_type=physionicpost&#038;p=28', 6, 'physionicpost', '', 0),
(29, 1, '2023-03-30 01:58:15', '2023-03-30 01:58:15', '', 'dr.A', '', 'inherit', 'open', 'closed', '', 'dr-a', '', '', '2023-03-30 01:58:15', '2023-03-30 01:58:15', '', 28, 'http://localhost/physionic/wp-content/uploads/2023/03/dr.A.png', 0, 'attachment', 'image/png', 0),
(30, 1, '2023-03-30 01:58:18', '2023-03-30 01:58:18', '', 'dr.B', '', 'inherit', 'open', 'closed', '', 'dr-b', '', '', '2023-03-30 01:58:18', '2023-03-30 01:58:18', '', 28, 'http://localhost/physionic/wp-content/uploads/2023/03/dr.B.png', 0, 'attachment', 'image/png', 0),
(31, 1, '2023-03-30 01:58:22', '2023-03-30 01:58:22', '', 'dr.C', '', 'inherit', 'open', 'closed', '', 'dr-c', '', '', '2023-03-30 01:58:22', '2023-03-30 01:58:22', '', 28, 'http://localhost/physionic/wp-content/uploads/2023/03/dr.C.png', 0, 'attachment', 'image/png', 0),
(32, 1, '2023-03-30 01:58:46', '2023-03-30 01:58:46', 'Slate helps you see how many more days you need to work to reach your financial goal.', 'client', 'Slate helps you see how many more days you need to work to reach your financial goal.', 'publish', 'closed', 'closed', '', 'client', '', '', '2023-03-30 01:59:12', '2023-03-30 01:59:12', '', 0, 'http://localhost/physionic/?post_type=physionicpost&#038;p=32', 5, 'physionicpost', '', 0),
(33, 1, '2023-03-30 01:59:06', '2023-03-30 01:59:06', 'Slate helps you see how many more days you need to work to reach your financial goal.', 'clients', 'Slate helps you see how many more days you need to work to reach your financial goal.', 'publish', 'closed', 'closed', '', 'clients-2', '', '', '2023-03-30 02:03:19', '2023-03-30 02:03:19', '', 0, 'http://localhost/physionic/?post_type=physionicpost&#038;p=33', 4, 'physionicpost', '', 0),
(34, 1, '2023-03-30 02:13:42', '2023-03-30 02:13:42', 'Things on a very small scaleThings on a very small scaleThings on a very small scale', 'the qucik fox jumps over the lazy dog', 'the qucik fox jumps over the lazy dogthe qucik fox jumps over the lazy dogthe qucik fox jumps over the lazy dogthe qucik fox jumps over the lazy dog', 'trash', 'closed', 'closed', '', 'the-qucik-fox-jumps-over-the-lazy-dog__trashed', '', '', '2023-03-30 04:01:12', '2023-03-30 04:01:12', '', 0, 'http://localhost/physionic/?post_type=physionicpost&#038;p=34', 0, 'physionicpost', '', 0),
(35, 1, '2023-03-30 02:14:04', '2023-03-30 02:14:04', 'the qucik fox jumps over the lazy dogthe qucik fox jumps over the lazy dogthe qucik fox jumps over the lazy dog', 'the qucik fox jumps over the lazy dog', 'the qucik fox jumps over the lazy dogthe qucik fox jumps over the lazy dogthe qucik fox jumps over the lazy dog', 'trash', 'closed', 'closed', '', 'the-qucik-fox-jumps-over-the-lazy-dog-2__trashed', '', '', '2023-03-30 04:01:12', '2023-03-30 04:01:12', '', 0, 'http://localhost/physionic/?post_type=physionicpost&#038;p=35', 0, 'physionicpost', '', 0),
(36, 1, '2023-03-30 02:14:12', '2023-03-30 02:14:12', 'the qucik fox jumps over the lazy dogthe qucik fox jumps over the lazy dog', 'the qucik fox jumps over the lazy dog', 'the qucik fox jumps over the lazy dogthe qucik fox jumps over the lazy dogthe qucik fox jumps over the lazy dog', 'trash', 'closed', 'closed', '', 'the-qucik-fox-jumps-over-the-lazy-dog-3__trashed', '', '', '2023-03-30 04:01:12', '2023-03-30 04:01:12', '', 0, 'http://localhost/physionic/?post_type=physionicpost&#038;p=36', 0, 'physionicpost', '', 0),
(37, 1, '2023-03-30 02:14:25', '2023-03-30 02:14:25', 'the qucik fox jumps over the lazy dogthe qucik fox jumps over the lazy dog', 'the qucik fox jumps over the lazy dog', 'the qucik fox jumps over the lazy dogthe qucik fox jumps over the lazy dogthe qucik fox jumps over the lazy dog', 'trash', 'closed', 'closed', '', 'the-qucik-fox-jumps-over-the-lazy-dog-4__trashed', '', '', '2023-03-30 04:01:12', '2023-03-30 04:01:12', '', 0, 'http://localhost/physionic/?post_type=physionicpost&#038;p=37', 0, 'physionicpost', '', 0),
(38, 1, '2023-03-30 02:14:35', '2023-03-30 02:14:35', 'the qucik fox jumps over the lazy dogthe qucik fox jumps over the lazy dogthe qucik fox jumps over the lazy dog', 'the qucik fox jumps over the lazy dog', 'the qucik fox jumps over the lazy dogthe qucik fox jumps over the lazy dogthe qucik fox jumps over the lazy dog', 'trash', 'closed', 'closed', '', 'the-qucik-fox-jumps-over-the-lazy-dog-5__trashed', '', '', '2023-03-30 04:01:12', '2023-03-30 04:01:12', '', 0, 'http://localhost/physionic/?post_type=physionicpost&#038;p=38', 0, 'physionicpost', '', 0),
(39, 1, '2023-03-30 02:14:46', '2023-03-30 02:14:46', 'the qucik fox jumps over the lazy dogthe qucik fox jumps over the lazy dog', 'the qucik fox jumps over the lazy dog', 'the qucik fox jumps over the lazy dogthe qucik fox jumps over the lazy dog', 'trash', 'closed', 'closed', '', 'the-qucik-fox-jumps-over-the-lazy-dog-6__trashed', '', '', '2023-03-30 04:01:12', '2023-03-30 04:01:12', '', 0, 'http://localhost/physionic/?post_type=physionicpost&#038;p=39', 0, 'physionicpost', '', 0),
(40, 1, '2023-03-30 02:14:54', '2023-03-30 02:14:54', 'the qucik fox jumps over the lazy dogthe qucik fox jumps over the lazy dog', 'the qucik fox jumps over the lazy dog', 'the qucik fox jumps over the lazy dogthe qucik fox jumps over the lazy dog', 'trash', 'closed', 'closed', '', 'the-qucik-fox-jumps-over-the-lazy-dog-7__trashed', '', '', '2023-03-30 04:01:11', '2023-03-30 04:01:11', '', 0, 'http://localhost/physionic/?post_type=physionicpost&#038;p=40', 0, 'physionicpost', '', 0),
(41, 1, '2023-03-30 02:15:07', '2023-03-30 02:15:07', 'the qucik fox jumps over the lazy dog', 'the qucik fox jumps over the lazy dog', 'the qucik fox jumps over the lazy dogthe qucik fox jumps over the lazy dog', 'trash', 'closed', 'closed', '', 'the-qucik-fox-jumps-over-the-lazy-dog-8__trashed', '', '', '2023-03-30 04:01:11', '2023-03-30 04:01:11', '', 0, 'http://localhost/physionic/?post_type=physionicpost&#038;p=41', 0, 'physionicpost', '', 0),
(42, 1, '2023-03-30 02:15:15', '2023-03-30 02:15:15', 'the qucik fox jumps over the lazy dog', 'the qucik fox jumps over the lazy dog', 'the qucik fox jumps over the lazy dogthe qucik fox jumps over the lazy dog', 'trash', 'closed', 'closed', '', 'the-qucik-fox-jumps-over-the-lazy-dog-9__trashed', '', '', '2023-03-30 04:01:11', '2023-03-30 04:01:11', '', 0, 'http://localhost/physionic/?post_type=physionicpost&#038;p=42', 0, 'physionicpost', '', 0),
(43, 1, '2023-03-30 02:15:24', '2023-03-30 02:15:24', 'the qucik fox jumps over the lazy dog', 'the qucik fox jumps over the lazy dog', 'the qucik fox jumps over the lazy dog', 'trash', 'closed', 'closed', '', 'the-qucik-fox-jumps-over-the-lazy-dog-10__trashed', '', '', '2023-03-30 04:01:11', '2023-03-30 04:01:11', '', 0, 'http://localhost/physionic/?post_type=physionicpost&#038;p=43', 0, 'physionicpost', '', 0),
(44, 1, '2023-03-30 02:16:08', '2023-03-30 02:16:08', '', 'arrow-right', '', 'inherit', 'open', 'closed', '', 'arrow-right', '', '', '2023-03-30 02:16:08', '2023-03-30 02:16:08', '', 43, 'http://localhost/physionic/wp-content/uploads/2023/03/arrow-right.png', 0, 'attachment', 'image/png', 0),
(45, 1, '2023-03-30 04:00:42', '2023-03-30 04:00:42', 'a:8:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:4:\"page\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:2:\"51\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";s:12:\"show_in_rest\";i:0;}', 'faq', 'faq', 'publish', 'closed', 'closed', '', 'group_6424f674db573', '', '', '2023-03-30 04:19:51', '2023-03-30 04:19:51', '', 0, 'http://localhost/physionic/?post_type=acf-field-group&#038;p=45', 0, 'acf-field-group', '', 0),
(46, 1, '2023-03-30 04:00:42', '2023-03-30 04:00:42', 'a:13:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:8:\"repeater\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:6:\"layout\";s:5:\"table\";s:10:\"pagination\";i:0;s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:9:\"collapsed\";s:0:\"\";s:12:\"button_label\";s:0:\"\";s:13:\"rows_per_page\";i:20;}', 'faq item', 'faq_item', 'publish', 'closed', 'closed', '', 'field_6424f675da3f5', '', '', '2023-03-30 04:00:42', '2023-03-30 04:00:42', '', 45, 'http://localhost/physionic/?post_type=acf-field&p=46', 0, 'acf-field', '', 0),
(47, 1, '2023-03-30 04:00:42', '2023-03-30 04:00:42', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'the question', 'the_question', 'publish', 'closed', 'closed', '', 'field_6424f6d1da3f7', '', '', '2023-03-30 04:00:42', '2023-03-30 04:00:42', '', 46, 'http://localhost/physionic/?post_type=acf-field&p=47', 0, 'acf-field', '', 0),
(48, 1, '2023-03-30 04:00:42', '2023-03-30 04:00:42', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'the answer', 'the_answer', 'publish', 'closed', 'closed', '', 'field_64250949da3f8', '', '', '2023-03-30 04:00:42', '2023-03-30 04:00:42', '', 46, 'http://localhost/physionic/?post_type=acf-field&p=48', 1, 'acf-field', '', 0),
(50, 1, '2023-03-30 04:03:57', '2023-03-30 04:03:57', 'Problems trying to resolve the conflict between the two major realms of Classical physics: Newtonian mechanics', 'FAQ', 'Problems trying to resolve the conflict between the two major realms of Classical physics: Newtonian mechanics', 'trash', 'closed', 'closed', '', 'faq__trashed', '', '', '2023-03-30 04:22:11', '2023-03-30 04:22:11', '', 0, 'http://localhost/physionic/?post_type=physionicpost&#038;p=50', 3, 'physionicpost', '', 0),
(51, 1, '2023-03-30 04:18:09', '2023-03-30 04:18:09', '', 'Home', '', 'publish', 'closed', 'closed', '', 'home', '', '', '2023-03-30 07:09:06', '2023-03-30 07:09:06', '', 0, 'http://localhost/physionic/?page_id=51', 0, 'page', '', 0),
(52, 1, '2023-03-30 04:18:09', '2023-03-30 04:18:09', '', 'Home', '', 'inherit', 'closed', 'closed', '', '51-revision-v1', '', '', '2023-03-30 04:18:09', '2023-03-30 04:18:09', '', 51, 'http://localhost/physionic/?p=52', 0, 'revision', '', 0),
(53, 1, '2023-03-30 04:18:46', '2023-03-30 04:18:46', 'a:8:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:4:\"page\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:2:\"51\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";s:12:\"show_in_rest\";i:0;}', 'The Title', 'the-title', 'publish', 'closed', 'closed', '', 'group_64250d9200d65', '', '', '2023-03-30 04:42:34', '2023-03-30 04:42:34', '', 0, 'http://localhost/physionic/?post_type=acf-field-group&#038;p=53', 0, 'acf-field-group', '', 0),
(54, 1, '2023-03-30 04:18:46', '2023-03-30 04:18:46', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'The Title', 'the_title', 'publish', 'closed', 'closed', '', 'field_64250d92a963f', '', '', '2023-03-30 04:18:46', '2023-03-30 04:18:46', '', 53, 'http://localhost/physionic/?post_type=acf-field&p=54', 0, 'acf-field', '', 0),
(55, 1, '2023-03-30 04:21:55', '2023-03-30 04:21:55', '', 'Home', '', 'inherit', 'closed', 'closed', '', '51-revision-v1', '', '', '2023-03-30 04:21:55', '2023-03-30 04:21:55', '', 51, 'http://localhost/physionic/?p=55', 0, 'revision', '', 0),
(56, 1, '2023-03-30 04:43:47', '2023-03-30 04:43:47', 'a:8:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:4:\"page\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:2:\"51\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";s:12:\"show_in_rest\";i:0;}', 'The arrow', 'the-arrow', 'publish', 'closed', 'closed', '', 'group_6425133f34590', '', '', '2023-03-30 04:43:47', '2023-03-30 04:43:47', '', 0, 'http://localhost/physionic/?post_type=acf-field-group&#038;p=56', 0, 'acf-field-group', '', 0),
(57, 1, '2023-03-30 04:43:47', '2023-03-30 04:43:47', 'a:16:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";s:12:\"preview_size\";s:6:\"medium\";}', 'the arrow', 'the_arrow', 'publish', 'closed', 'closed', '', 'field_6425133f5837f', '', '', '2023-03-30 04:43:47', '2023-03-30 04:43:47', '', 56, 'http://localhost/physionic/?post_type=acf-field&p=57', 0, 'acf-field', '', 0),
(58, 1, '2023-03-30 04:47:49', '2023-03-30 04:47:49', '', 'Home', '', 'inherit', 'closed', 'closed', '', '51-revision-v1', '', '', '2023-03-30 04:47:49', '2023-03-30 04:47:49', '', 51, 'http://localhost/physionic/?p=58', 0, 'revision', '', 0),
(59, 1, '2023-03-30 06:09:51', '2023-03-30 06:09:51', 'a:8:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:4:\"page\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:2:\"51\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";s:12:\"show_in_rest\";i:0;}', 'Get In Touch', 'get-in-touch', 'publish', 'closed', 'closed', '', 'group_6425264850015', '', '', '2023-03-30 06:51:08', '2023-03-30 06:51:08', '', 0, 'http://localhost/physionic/?post_type=acf-field-group&#038;p=59', 0, 'acf-field-group', '', 0),
(60, 1, '2023-03-30 06:09:51', '2023-03-30 06:09:51', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'get in touch', 'get_in_touch', 'publish', 'closed', 'closed', '', 'field_64252648c26f7', '', '', '2023-03-30 06:09:51', '2023-03-30 06:09:51', '', 59, 'http://localhost/physionic/?post_type=acf-field&p=60', 0, 'acf-field', '', 0),
(61, 1, '2023-03-30 06:09:51', '2023-03-30 06:09:51', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'get in p', 'get_in_p', 'publish', 'closed', 'closed', '', 'field_64252672c26f8', '', '', '2023-03-30 06:12:25', '2023-03-30 06:12:25', '', 59, 'http://localhost/physionic/?post_type=acf-field&#038;p=61', 1, 'acf-field', '', 0),
(68, 1, '2023-03-30 06:18:37', '2023-03-30 06:18:37', 'a:13:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:8:\"repeater\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:6:\"layout\";s:5:\"table\";s:10:\"pagination\";i:0;s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:9:\"collapsed\";s:0:\"\";s:12:\"button_label\";s:0:\"\";s:13:\"rows_per_page\";i:20;}', 'touch link', 'touch_link', 'publish', 'closed', 'closed', '', 'field_6425298096760', '', '', '2023-03-30 06:18:37', '2023-03-30 06:18:37', '', 59, 'http://localhost/physionic/?post_type=acf-field&p=68', 2, 'acf-field', '', 0),
(69, 1, '2023-03-30 06:18:37', '2023-03-30 06:18:37', 'a:12:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:8:\"repeater\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:9:\"collapsed\";s:0:\"\";s:12:\"button_label\";s:7:\"Add Row\";s:6:\"layout\";s:5:\"table\";s:13:\"rows_per_page\";i:20;}', 'touch field', 'touch_field', 'publish', 'closed', 'closed', '', 'field_642529a996761', '', '', '2023-03-30 06:32:06', '2023-03-30 06:32:06', '', 68, 'http://localhost/physionic/?post_type=acf-field&#038;p=69', 1, 'acf-field', '', 0),
(71, 1, '2023-03-30 06:31:15', '2023-03-30 06:31:15', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:4:\"rows\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"new_lines\";s:0:\"\";}', 'touch content', 'touch_content', 'publish', 'closed', 'closed', '', 'field_64252c7d08461', '', '', '2023-03-30 06:51:08', '2023-03-30 06:51:08', '', 69, 'http://localhost/physionic/?post_type=acf-field&#038;p=71', 0, 'acf-field', '', 0),
(72, 1, '2023-03-30 06:31:15', '2023-03-30 06:31:15', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'touch title', 'touch_title', 'publish', 'closed', 'closed', '', 'field_64252bf308460', '', '', '2023-03-30 06:33:05', '2023-03-30 06:33:05', '', 68, 'http://localhost/physionic/?post_type=acf-field&#038;p=72', 0, 'acf-field', '', 0),
(73, 1, '2023-03-30 06:38:21', '2023-03-30 06:38:21', '', 'Home', '', 'inherit', 'closed', 'closed', '', '51-revision-v1', '', '', '2023-03-30 06:38:21', '2023-03-30 06:38:21', '', 51, 'http://localhost/physionic/?p=73', 0, 'revision', '', 0),
(74, 1, '2023-03-30 06:49:41', '2023-03-30 06:49:41', '', 'Home', '', 'inherit', 'closed', 'closed', '', '51-revision-v1', '', '', '2023-03-30 06:49:41', '2023-03-30 06:49:41', '', 51, 'http://localhost/physionic/?p=74', 0, 'revision', '', 0),
(75, 1, '2023-03-30 06:52:03', '2023-03-30 06:52:03', '', 'Home', '', 'inherit', 'closed', 'closed', '', '51-revision-v1', '', '', '2023-03-30 06:52:03', '2023-03-30 06:52:03', '', 51, 'http://localhost/physionic/?p=75', 0, 'revision', '', 0),
(76, 1, '2023-03-30 06:53:32', '2023-03-30 06:53:32', '', 'Home', '', 'inherit', 'closed', 'closed', '', '51-revision-v1', '', '', '2023-03-30 06:53:32', '2023-03-30 06:53:32', '', 51, 'http://localhost/physionic/?p=76', 0, 'revision', '', 0),
(77, 1, '2023-03-30 06:56:31', '2023-03-30 06:56:31', '', 'Home', '', 'inherit', 'closed', 'closed', '', '51-revision-v1', '', '', '2023-03-30 06:56:31', '2023-03-30 06:56:31', '', 51, 'http://localhost/physionic/?p=77', 0, 'revision', '', 0),
(78, 1, '2023-03-30 06:56:32', '2023-03-30 06:56:32', '', 'Home', '', 'inherit', 'closed', 'closed', '', '51-autosave-v1', '', '', '2023-03-30 06:56:32', '2023-03-30 06:56:32', '', 51, 'http://localhost/physionic/?p=78', 0, 'revision', '', 0),
(79, 1, '2023-03-30 06:59:29', '2023-03-30 06:59:29', '', 'Home', '', 'inherit', 'closed', 'closed', '', '51-revision-v1', '', '', '2023-03-30 06:59:29', '2023-03-30 06:59:29', '', 51, 'http://localhost/physionic/?p=79', 0, 'revision', '', 0),
(80, 1, '2023-03-30 07:09:06', '2023-03-30 07:09:06', '', 'Home', '', 'inherit', 'closed', 'closed', '', '51-revision-v1', '', '', '2023-03-30 07:09:06', '2023-03-30 07:09:06', '', 51, 'http://localhost/physionic/?p=80', 0, 'revision', '', 0),
(81, 1, '2023-04-02 22:59:55', '2023-04-02 22:59:55', 'a:8:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:4:\"page\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:2:\"51\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";s:12:\"show_in_rest\";i:0;}', 'Pricing', 'pricing', 'publish', 'closed', 'closed', '', 'group_642a0841293b7', '', '', '2023-04-02 23:56:22', '2023-04-02 23:56:22', '', 0, 'http://localhost/physionic/?post_type=acf-field-group&#038;p=81', 0, 'acf-field-group', '', 0),
(91, 1, '2023-04-02 23:56:22', '2023-04-02 23:56:22', 'a:13:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:8:\"repeater\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:6:\"layout\";s:5:\"table\";s:10:\"pagination\";i:0;s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:9:\"collapsed\";s:0:\"\";s:12:\"button_label\";s:0:\"\";s:13:\"rows_per_page\";i:20;}', 'pricing', 'pricing', 'publish', 'closed', 'closed', '', 'field_642a0a3095d70', '', '', '2023-04-02 23:56:22', '2023-04-02 23:56:22', '', 81, 'http://localhost/physionic/?post_type=acf-field&p=91', 0, 'acf-field', '', 0),
(92, 1, '2023-04-02 23:56:22', '2023-04-02 23:56:22', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'pricing title', 'pricing_title', 'publish', 'closed', 'closed', '', 'field_642a0a4695d71', '', '', '2023-04-02 23:56:22', '2023-04-02 23:56:22', '', 91, 'http://localhost/physionic/?post_type=acf-field&p=92', 0, 'acf-field', '', 0),
(93, 1, '2023-04-02 23:56:22', '2023-04-02 23:56:22', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'pricing parag', 'pricing_parag', 'publish', 'closed', 'closed', '', 'field_642a0a5695d72', '', '', '2023-04-02 23:56:22', '2023-04-02 23:56:22', '', 91, 'http://localhost/physionic/?post_type=acf-field&p=93', 1, 'acf-field', '', 0),
(94, 1, '2023-04-02 23:56:22', '2023-04-02 23:56:22', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'pricing price', 'pricing_price', 'publish', 'closed', 'closed', '', 'field_642a0a5c95d73', '', '', '2023-04-02 23:56:22', '2023-04-02 23:56:22', '', 91, 'http://localhost/physionic/?post_type=acf-field&p=94', 2, 'acf-field', '', 0),
(95, 1, '2023-04-02 23:56:22', '2023-04-02 23:56:22', 'a:13:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:8:\"repeater\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:6:\"layout\";s:5:\"table\";s:10:\"pagination\";i:0;s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:9:\"collapsed\";s:0:\"\";s:12:\"button_label\";s:0:\"\";s:13:\"rows_per_page\";i:20;}', 'pricing features', 'pricing_features', 'publish', 'closed', 'closed', '', 'field_642a0bec95d74', '', '', '2023-04-02 23:56:22', '2023-04-02 23:56:22', '', 91, 'http://localhost/physionic/?post_type=acf-field&p=95', 3, 'acf-field', '', 0),
(96, 1, '2023-04-02 23:56:22', '2023-04-02 23:56:22', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'pricing feature', 'pricing_feature', 'publish', 'closed', 'closed', '', 'field_642a0bff95d75', '', '', '2023-04-02 23:56:22', '2023-04-02 23:56:22', '', 95, 'http://localhost/physionic/?post_type=acf-field&p=96', 0, 'acf-field', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) NOT NULL DEFAULT '',
  `slug` varchar(200) NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorized', 'uncategorized', 0),
(2, 'Menu 1', 'menu-1', 0),
(3, 'emergency', 'emergency', 0),
(4, 'clients', 'clients', 0),
(5, 'faq', 'faq', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_order` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(5, 2, 0),
(6, 2, 0),
(7, 2, 0),
(8, 2, 0),
(22, 3, 0),
(26, 3, 0),
(27, 3, 0),
(28, 4, 0),
(32, 4, 0),
(33, 4, 0),
(34, 5, 0),
(35, 5, 0),
(36, 5, 0),
(37, 5, 0),
(38, 5, 0),
(39, 5, 0),
(40, 5, 0),
(41, 5, 0),
(42, 5, 0),
(43, 5, 0),
(50, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_taxonomy`
--

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `taxonomy` varchar(32) NOT NULL DEFAULT '',
  `description` longtext NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `count` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 0),
(2, 2, 'nav_menu', '', 0, 4),
(3, 3, 'category', '', 0, 3),
(4, 4, 'category', '', 0, 3),
(5, 5, 'category', '', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'admin'),
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
(14, 1, 'dismissed_wp_pointers', 'theme_editor_notice'),
(15, 1, 'show_welcome_panel', '1'),
(16, 1, 'session_tokens', 'a:2:{s:64:\"ba23ce28b0f95fd1979f8760657a6ce3b30cc854da03753b784abc4142e33913\";a:4:{s:10:\"expiration\";i:1681342791;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:111:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36\";s:5:\"login\";i:1681169991;}s:64:\"ef3c3148bf4dbf50639ad5c9d4fe19052b8369ff2b1364a75b50e05525cd3003\";a:4:{s:10:\"expiration\";i:1681439275;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:111:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36\";s:5:\"login\";i:1681266475;}}'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '4'),
(18, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}'),
(19, 1, 'metaboxhidden_nav-menus', 'a:2:{i:0;s:27:\"add-post-type-physionicpost\";i:1;s:12:\"add-post_tag\";}'),
(20, 1, 'wp_user-settings', 'mfold=o&editor=html&libraryContent=browse'),
(21, 1, 'wp_user-settings-time', '1680140290'),
(22, 1, 'nav_menu_recently_edited', '2'),
(23, 1, 'closedpostboxes_physionicpost', 'a:0:{}'),
(24, 1, 'metaboxhidden_physionicpost', 'a:1:{i:0;s:7:\"slugdiv\";}'),
(25, 1, 'closedpostboxes_page', 'a:0:{}'),
(26, 1, 'metaboxhidden_page', 'a:5:{i:0;s:12:\"revisionsdiv\";i:1;s:16:\"commentstatusdiv\";i:2;s:11:\"commentsdiv\";i:3;s:7:\"slugdiv\";i:4;s:9:\"authordiv\";}'),
(27, 1, 'meta-box-order_page', 'a:4:{s:15:\"acf_after_title\";s:0:\"\";s:4:\"side\";s:36:\"submitdiv,pageparentdiv,postimagediv\";s:6:\"normal\";s:179:\"acf-group_6425264850015,acf-group_642a0841293b7,acf-group_6425133f34590,acf-group_64250d9200d65,acf-group_6424f674db573,revisionsdiv,commentstatusdiv,commentsdiv,slugdiv,authordiv\";s:8:\"advanced\";s:0:\"\";}'),
(28, 1, 'screen_layout_page', '2');

-- --------------------------------------------------------

--
-- Table structure for table `wp_users`
--

CREATE TABLE `wp_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) NOT NULL DEFAULT '',
  `user_pass` varchar(255) NOT NULL DEFAULT '',
  `user_nicename` varchar(50) NOT NULL DEFAULT '',
  `user_email` varchar(100) NOT NULL DEFAULT '',
  `user_url` varchar(100) NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT 0,
  `display_name` varchar(250) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'admin', '$P$BeiNr05XPP25okujuO7SdfIIT71tbb.', 'admin', 'emmszhii@gmail.com', 'http://localhost/physionic', '2023-03-29 23:45:40', '', 0, 'admin');

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
  ADD UNIQUE KEY `option_name` (`option_name`),
  ADD KEY `autoload` (`autoload`);

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
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=273;

--
-- AUTO_INCREMENT for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=855;

--
-- AUTO_INCREMENT for table `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=97;

--
-- AUTO_INCREMENT for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
