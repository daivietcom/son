-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th10 30, 2017 lúc 11:46 AM
-- Phiên bản máy phục vụ: 10.1.26-MariaDB
-- Phiên bản PHP: 7.0.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `rt_doy`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `rt_commentmeta`
--

CREATE TABLE `rt_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `rt_comments`
--

CREATE TABLE `rt_comments` (
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

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `rt_cpd_counter`
--

CREATE TABLE `rt_cpd_counter` (
  `id` int(10) NOT NULL,
  `ip` int(10) UNSIGNED NOT NULL,
  `client` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` date NOT NULL,
  `page` mediumint(9) NOT NULL,
  `country` char(2) COLLATE utf8mb4_unicode_ci NOT NULL,
  `referer` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `rt_cpd_counter`
--

INSERT INTO `rt_cpd_counter` (`id`, `ip`, `client`, `date`, `page`, `country`, `referer`) VALUES
(1, 1121751540, 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/63.4.160 Chrome/57.4.2987.160 Safari/537.36', '2017-06-15', 0, '', 'http://l.facebook.com/l.php?u=http%3A%2F%2Fraothue.ddns.net%2Fdemo%2Frt-core&#038;h=ATMDMzwZbgK-2UGngysG8Ucz02Q4L48DpQp5MKyKotP8E4E74r4ReB6zvMocLq2fZS'),
(2, 1121751539, 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/63.4.160 Chrome/57.4.2987.160 Safari/537.36', '2017-06-15', 0, '', 'http://raothue.ddns.net/demo/rt-core/'),
(3, 2918996571, 'facebookexternalhit/1.1 (+http://www.facebook.com/externalhit_uatext.php)', '2017-06-15', 39, '', ''),
(4, 1, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', '2017-07-04', 0, '', ''),
(5, 1, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', '2017-07-04', 0, '', 'http://localhost/RT/'),
(6, 1, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', '2017-07-04', 0, '', ''),
(7, 1984344676, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', '2017-07-04', 0, '', ''),
(8, 392390006, 'Mozilla/5.0 (Windows NT 6.1; WOW64) SkypeUriPreview Preview/0.5', '2017-07-04', 0, '', ''),
(9, 223146450, 'Mozilla/5.0 (Windows NT 6.1; WOW64) SkypeUriPreview Preview/0.5', '2017-07-04', 0, '', ''),
(10, 1984344676, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', '2017-07-04', 38, '', 'http://raothue.ddns.net/demo/RT-Fix/'),
(11, 1984344676, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', '2017-07-04', 37, '', 'http://raothue.ddns.net/demo/RT-Fix/san-pham/may-loc-nuoc-ro-5/'),
(12, 1984344676, 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/64.4.130 Chrome/58.4.3029.130 Safari/537.36', '2017-07-04', 39, '', 'http://raothue.ddns.net/demo/RT-Fix/'),
(13, 1984344676, 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/64.4.130 Chrome/58.4.3029.130 Safari/537.36', '2017-07-04', -2, '', 'http://raothue.ddns.net/demo/RT-Fix/san-pham/may-loc-nuoc-ro-6/'),
(14, 1743668476, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', '2017-07-04', 0, '', ''),
(15, 1743668476, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', '2017-07-04', 38, '', 'http://raothue.ddns.net/demo/RT-Fix/'),
(16, 712281010, 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', '2017-07-05', 0, '', ''),
(17, 1984344676, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', '2017-07-05', 0, '', ''),
(18, 1984344676, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', '2017-07-05', 37, '', 'http://raothue.ddns.net/demo/RT-Fix/'),
(19, 1963285907, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', '2017-07-05', 0, '', ''),
(20, 1984344676, 'Mozilla/5.0 (Linux; Android 6.0.1; SM-G920F Build/MMB29K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.95 Mobile', '2017-07-07', 0, '', 'http://hungrt.raothue.com/phongkhamphucnhanduong/lorem-ipsum-simply-dummy-text-printing-6/'),
(21, 1984344676, 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36 Google (+https://developers.google.com/+/web/', '2017-07-07', 39, '', ''),
(22, 1984344676, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '2017-07-11', 0, '', ''),
(23, 1984344676, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', '2017-07-19', 0, '', ''),
(24, 1984319673, 'Mozilla/5.0 (iPhone; CPU iPhone OS 8_0_2 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) Version/8.0 Mobile/12A366 Safari/600.1.4', '2017-07-20', 0, '', 'http://rtgroup.vn/hoangcuong/07/thoitrangminh/gioi-thieu/'),
(25, 1984344676, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', '2017-07-20', 0, '', ''),
(26, 1984344676, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', '2017-07-23', 0, '', ''),
(27, 1984344676, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', '2017-07-23', 36, '', 'http://raothue.ddns.net/demo/RT-Fix/'),
(28, 1984344676, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', '2017-07-23', 15, '', 'http://raothue.ddns.net/demo/RT-Fix/danh-muc/may-loc-nuoc-nano/'),
(29, 1984344676, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', '2017-07-23', 39, '', 'http://raothue.ddns.net/demo/RT-Fix/'),
(30, 1984344676, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', '2017-07-25', 0, '', ''),
(31, 1984344676, 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.75 Safari/537.36 Google Favicon', '2017-07-31', 0, '', ''),
(32, 1984344676, 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.75 Safari/537.36 Google Favicon', '2017-08-01', 0, '', ''),
(33, 1984344676, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.90 Safari/537.36', '2017-08-09', 0, '', ''),
(34, 1984344676, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.90 Safari/537.36', '2017-08-10', 0, '', ''),
(35, 3555131562, 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.75 Safari/537.36 Google Favicon', '2017-08-16', 0, '', ''),
(36, 1984344676, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.101 Safari/537.36', '2017-08-21', 0, '', ''),
(37, 1984344676, 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/66.4.102 Chrome/60.4.3112.102 Safari/537.36', '2017-08-27', 0, '', ''),
(38, 1984344676, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.113 Safari/537.36', '2017-08-29', 0, '', ''),
(39, 1, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.113 Safari/537.36', '2017-08-30', 0, '', ''),
(40, 1, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.113 Safari/537.36', '2017-08-30', 0, '', 'http://localhost/RT_web/RT-Aug/'),
(41, 1, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.113 Safari/537.36', '2017-09-05', 0, '', ''),
(42, 1, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.113 Safari/537.36', '2017-09-05', 0, '', 'http://localhost/RT-Aug/'),
(43, 1, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.113 Safari/537.36', '2017-09-12', 0, '', ''),
(44, 1, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.113 Safari/537.36', '2017-09-12', 0, '', 'http://localhost/RT-Nov/'),
(45, 1, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.113 Safari/537.36', '2017-09-15', 0, '', ''),
(46, 1, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.113 Safari/537.36', '2017-09-15', 0, '', 'http://localhost/RT-Nov/');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `rt_links`
--

CREATE TABLE `rt_links` (
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
-- Cấu trúc bảng cho bảng `rt_options`
--

CREATE TABLE `rt_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `rt_options`
--

INSERT INTO `rt_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://raothue.ddns.net/demo/rt-core', 'yes'),
(2, 'home', 'http://raothue.ddns.net/demo/rt-core', 'yes'),
(3, 'blogname', 'Nam Việt .Group', 'yes'),
(4, 'blogdescription', '', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'mailtrunggian01@gmail.com', 'yes'),
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
(18, 'default_category', '2', 'yes'),
(19, 'default_comment_status', 'open', 'yes'),
(20, 'default_ping_status', 'open', 'yes'),
(21, 'default_pingback_flag', '0', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'j F, Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'j F, Y g:i a', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%postname%/', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:10:{i:0;s:36:\"contact-form-7/wp-contact-form-7.php\";i:1;s:25:\"count-per-day/counter.php\";i:2;s:33:\"duplicate-post/duplicate-post.php\";i:3;s:25:\"menu-icons/menu-icons.php\";i:4;s:23:\"ml-slider/ml-slider.php\";i:5;s:37:\"tinymce-advanced/tinymce-advanced.php\";i:6;s:37:\"user-role-editor/user-role-editor.php\";i:7;s:27:\"woocommerce/woocommerce.php\";i:8;s:24:\"wordpress-seo/wp-seo.php\";i:9;s:19:\"wp-smtp/wp-smtp.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '7', 'yes'),
(38, 'default_email_category', '2', 'yes'),
(39, 'recently_edited', 'a:4:{i:0;s:112:\"/home/rt/domains/raothue.ddns.net/public_html/demo/RT-Fix/wp-content/plugins/disable-xml-rpc/disable-xml-rpc.php\";i:1;s:93:\"/home/rt/domains/raothue.ddns.net/public_html/demo/RT-Fix/wp-content/themes/RT/front-page.php\";i:2;s:88:\"/home/rt/domains/raothue.ddns.net/public_html/demo/RT-Fix/wp-content/themes/RT/style.css\";i:3;s:0:\"\";}', 'no'),
(40, 'template', 'RT', 'yes'),
(41, 'stylesheet', 'RT', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '0', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '38590', 'yes'),
(49, 'uploads_use_yearmonth_folders', '1', 'yes'),
(50, 'upload_path', '', 'yes'),
(51, 'blog_public', '1', 'yes'),
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
(66, 'image_default_link_type', 'none', 'yes'),
(67, 'image_default_size', '', 'yes'),
(68, 'image_default_align', '', 'yes'),
(69, 'close_comments_for_old_posts', '0', 'yes'),
(70, 'close_comments_days_old', '14', 'yes'),
(71, 'thread_comments', '1', 'yes'),
(72, 'thread_comments_depth', '5', 'yes'),
(73, 'page_comments', '0', 'yes'),
(74, 'comments_per_page', '50', 'yes'),
(75, 'default_comments_page', 'newest', 'yes'),
(76, 'comment_order', 'asc', 'yes'),
(77, 'sticky_posts', 'a:0:{}', 'yes'),
(78, 'widget_categories', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(79, 'widget_text', 'a:4:{i:2;a:3:{s:5:\"title\";s:21:\"Thông tin liên hệ\";s:4:\"text\";s:203:\"Công ty TNHH Aqua-Pura Việt Nam\r\n\r\nTrụ sở chính: Số 268 Mai anh Tuấn - Đống Đa - Hà Nội\r\n\r\nĐiện thoại: 0906 55 67 69\r\n\r\nEmail: aquapuravn@gmail.com\r\n\r\nWebsite: www.aquapura.com.vn\";s:6:\"filter\";s:7:\"content\";}i:3;a:4:{s:5:\"title\";s:21:\"Thông tin liên hệ\";s:4:\"text\";s:836:\"<i class=\"fa fa-windows\" aria-hidden=\"true\"></i> Công ty Cổ phần Nam Việt.Group - Nam Việt Group\r\n\r\n<i class=\"fa fa-home\" aria-hidden=\"true\"></i> Nhà máy: Tầng 6, tòa nhà số 87, phố Vương Thừa Vũ, P. Khương Mai, Q. Thanh Xuân, Hà Nội\r\n\r\n<i class=\"fa fa-home\" aria-hidden=\"true\"></i> Nhà máy miền Bắc: KCN Biên Giang-Yên Thành-Hà Đông - Hà Nội\r\n\r\n<i class=\"fa fa-home\" aria-hidden=\"true\"></i> Nhà máy miền Trung: KĐT Phước Lý - Quận Liên Chiểu - Đà Nẵng\r\n\r\n<i class=\"fa fa-home\" aria-hidden=\"true\"></i> Nhà máy miền Nam: Cụm CN đường TX31 - Thạnh Xuân - Quận 12 - Hồ Chí Minh\r\n\r\n<i class=\"fa fa-phone\" aria-hidden=\"true\"></i> Hotline: 0964.893.088 - 0936.370.566 - 0944348833\r\n\r\n<i class=\"fa fa-envelope\" aria-hidden=\"true\"></i> Email: pkt.winpro@gmail.com\";s:6:\"filter\";b:1;s:6:\"visual\";b:1;}i:4;a:4:{s:5:\"title\";s:21:\"Đăng ký nhận tin\";s:4:\"text\";s:61:\"[contact-form-7 id=\"136\" title=\"Đăng ký email nhận tin\"]\";s:6:\"filter\";b:1;s:6:\"visual\";b:1;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(80, 'widget_rss', 'a:0:{}', 'yes'),
(81, 'uninstall_plugins', 'a:2:{s:11:\"counter.php\";s:23:\"count_per_day_uninstall\";s:23:\"loginizer/loginizer.php\";s:22:\"loginizer_deactivation\";}', 'no'),
(82, 'timezone_string', '', 'yes'),
(83, 'page_for_posts', '0', 'yes'),
(84, 'page_on_front', '0', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '0', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'initial_db_version', '38590', 'yes'),
(92, 'rt_user_roles', 'a:9:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:141:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;s:14:\"ure_edit_roles\";b:1;s:16:\"ure_create_roles\";b:1;s:16:\"ure_delete_roles\";b:1;s:23:\"ure_create_capabilities\";b:1;s:23:\"ure_delete_capabilities\";b:1;s:18:\"ure_manage_options\";b:1;s:15:\"ure_reset_roles\";b:1;s:18:\"manage_woocommerce\";b:1;s:24:\"view_woocommerce_reports\";b:1;s:12:\"edit_product\";b:1;s:12:\"read_product\";b:1;s:14:\"delete_product\";b:1;s:13:\"edit_products\";b:1;s:20:\"edit_others_products\";b:1;s:16:\"publish_products\";b:1;s:21:\"read_private_products\";b:1;s:15:\"delete_products\";b:1;s:23:\"delete_private_products\";b:1;s:25:\"delete_published_products\";b:1;s:22:\"delete_others_products\";b:1;s:21:\"edit_private_products\";b:1;s:23:\"edit_published_products\";b:1;s:20:\"manage_product_terms\";b:1;s:18:\"edit_product_terms\";b:1;s:20:\"delete_product_terms\";b:1;s:20:\"assign_product_terms\";b:1;s:15:\"edit_shop_order\";b:1;s:15:\"read_shop_order\";b:1;s:17:\"delete_shop_order\";b:1;s:16:\"edit_shop_orders\";b:1;s:23:\"edit_others_shop_orders\";b:1;s:19:\"publish_shop_orders\";b:1;s:24:\"read_private_shop_orders\";b:1;s:18:\"delete_shop_orders\";b:1;s:26:\"delete_private_shop_orders\";b:1;s:28:\"delete_published_shop_orders\";b:1;s:25:\"delete_others_shop_orders\";b:1;s:24:\"edit_private_shop_orders\";b:1;s:26:\"edit_published_shop_orders\";b:1;s:23:\"manage_shop_order_terms\";b:1;s:21:\"edit_shop_order_terms\";b:1;s:23:\"delete_shop_order_terms\";b:1;s:23:\"assign_shop_order_terms\";b:1;s:16:\"edit_shop_coupon\";b:1;s:16:\"read_shop_coupon\";b:1;s:18:\"delete_shop_coupon\";b:1;s:17:\"edit_shop_coupons\";b:1;s:24:\"edit_others_shop_coupons\";b:1;s:20:\"publish_shop_coupons\";b:1;s:25:\"read_private_shop_coupons\";b:1;s:19:\"delete_shop_coupons\";b:1;s:27:\"delete_private_shop_coupons\";b:1;s:29:\"delete_published_shop_coupons\";b:1;s:26:\"delete_others_shop_coupons\";b:1;s:25:\"edit_private_shop_coupons\";b:1;s:27:\"edit_published_shop_coupons\";b:1;s:24:\"manage_shop_coupon_terms\";b:1;s:22:\"edit_shop_coupon_terms\";b:1;s:24:\"delete_shop_coupon_terms\";b:1;s:24:\"assign_shop_coupon_terms\";b:1;s:17:\"edit_shop_webhook\";b:1;s:17:\"read_shop_webhook\";b:1;s:19:\"delete_shop_webhook\";b:1;s:18:\"edit_shop_webhooks\";b:1;s:25:\"edit_others_shop_webhooks\";b:1;s:21:\"publish_shop_webhooks\";b:1;s:26:\"read_private_shop_webhooks\";b:1;s:20:\"delete_shop_webhooks\";b:1;s:28:\"delete_private_shop_webhooks\";b:1;s:30:\"delete_published_shop_webhooks\";b:1;s:27:\"delete_others_shop_webhooks\";b:1;s:26:\"edit_private_shop_webhooks\";b:1;s:28:\"edit_published_shop_webhooks\";b:1;s:25:\"manage_shop_webhook_terms\";b:1;s:23:\"edit_shop_webhook_terms\";b:1;s:25:\"delete_shop_webhook_terms\";b:1;s:25:\"assign_shop_webhook_terms\";b:1;s:15:\"wpseo_bulk_edit\";b:1;s:10:\"copy_posts\";b:1;s:20:\"wpseo_manage_options\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:36:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:15:\"wpseo_bulk_edit\";b:1;s:10:\"copy_posts\";b:1;}}s:8:\"customer\";a:2:{s:4:\"name\";s:12:\"Khách hàng\";s:12:\"capabilities\";a:1:{s:4:\"read\";b:1;}}s:12:\"shop_manager\";a:2:{s:4:\"name\";s:12:\"Shop manager\";s:12:\"capabilities\";a:108:{s:20:\"assign_product_terms\";b:1;s:24:\"assign_shop_coupon_terms\";b:1;s:23:\"assign_shop_order_terms\";b:1;s:25:\"assign_shop_webhook_terms\";b:1;s:19:\"delete_others_pages\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_others_products\";b:1;s:26:\"delete_others_shop_coupons\";b:1;s:25:\"delete_others_shop_orders\";b:1;s:27:\"delete_others_shop_webhooks\";b:1;s:12:\"delete_pages\";b:1;s:12:\"delete_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:20:\"delete_private_posts\";b:1;s:23:\"delete_private_products\";b:1;s:27:\"delete_private_shop_coupons\";b:1;s:26:\"delete_private_shop_orders\";b:1;s:28:\"delete_private_shop_webhooks\";b:1;s:14:\"delete_product\";b:1;s:20:\"delete_product_terms\";b:1;s:15:\"delete_products\";b:1;s:22:\"delete_published_pages\";b:1;s:22:\"delete_published_posts\";b:1;s:25:\"delete_published_products\";b:1;s:29:\"delete_published_shop_coupons\";b:1;s:28:\"delete_published_shop_orders\";b:1;s:30:\"delete_published_shop_webhooks\";b:1;s:18:\"delete_shop_coupon\";b:1;s:24:\"delete_shop_coupon_terms\";b:1;s:19:\"delete_shop_coupons\";b:1;s:17:\"delete_shop_order\";b:1;s:23:\"delete_shop_order_terms\";b:1;s:18:\"delete_shop_orders\";b:1;s:19:\"delete_shop_webhook\";b:1;s:25:\"delete_shop_webhook_terms\";b:1;s:20:\"delete_shop_webhooks\";b:1;s:17:\"edit_others_pages\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_others_products\";b:1;s:24:\"edit_others_shop_coupons\";b:1;s:23:\"edit_others_shop_orders\";b:1;s:25:\"edit_others_shop_webhooks\";b:1;s:10:\"edit_pages\";b:1;s:10:\"edit_posts\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"edit_private_posts\";b:1;s:21:\"edit_private_products\";b:1;s:25:\"edit_private_shop_coupons\";b:1;s:24:\"edit_private_shop_orders\";b:1;s:26:\"edit_private_shop_webhooks\";b:1;s:12:\"edit_product\";b:1;s:18:\"edit_product_terms\";b:1;s:13:\"edit_products\";b:1;s:20:\"edit_published_pages\";b:1;s:20:\"edit_published_posts\";b:1;s:23:\"edit_published_products\";b:1;s:27:\"edit_published_shop_coupons\";b:1;s:26:\"edit_published_shop_orders\";b:1;s:28:\"edit_published_shop_webhooks\";b:1;s:16:\"edit_shop_coupon\";b:1;s:22:\"edit_shop_coupon_terms\";b:1;s:17:\"edit_shop_coupons\";b:1;s:15:\"edit_shop_order\";b:1;s:21:\"edit_shop_order_terms\";b:1;s:16:\"edit_shop_orders\";b:1;s:17:\"edit_shop_webhook\";b:1;s:23:\"edit_shop_webhook_terms\";b:1;s:18:\"edit_shop_webhooks\";b:1;s:18:\"edit_theme_options\";b:1;s:10:\"edit_users\";b:1;s:7:\"level_0\";b:1;s:7:\"level_1\";b:1;s:7:\"level_2\";b:1;s:7:\"level_3\";b:1;s:7:\"level_4\";b:1;s:7:\"level_5\";b:1;s:7:\"level_6\";b:1;s:7:\"level_7\";b:1;s:7:\"level_8\";b:1;s:7:\"level_9\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:14:\"manage_options\";b:1;s:20:\"manage_product_terms\";b:1;s:24:\"manage_shop_coupon_terms\";b:1;s:23:\"manage_shop_order_terms\";b:1;s:25:\"manage_shop_webhook_terms\";b:1;s:18:\"manage_woocommerce\";b:1;s:17:\"moderate_comments\";b:1;s:13:\"publish_pages\";b:1;s:13:\"publish_posts\";b:1;s:16:\"publish_products\";b:1;s:20:\"publish_shop_coupons\";b:1;s:19:\"publish_shop_orders\";b:1;s:21:\"publish_shop_webhooks\";b:1;s:4:\"read\";b:1;s:18:\"read_private_pages\";b:1;s:18:\"read_private_posts\";b:1;s:21:\"read_private_products\";b:1;s:25:\"read_private_shop_coupons\";b:1;s:24:\"read_private_shop_orders\";b:1;s:26:\"read_private_shop_webhooks\";b:1;s:12:\"read_product\";b:1;s:16:\"read_shop_coupon\";b:1;s:15:\"read_shop_order\";b:1;s:17:\"read_shop_webhook\";b:1;s:12:\"upload_files\";b:1;s:24:\"view_woocommerce_reports\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}s:13:\"wpseo_manager\";a:2:{s:4:\"name\";s:11:\"SEO Manager\";s:12:\"capabilities\";a:38:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:15:\"wpseo_bulk_edit\";b:1;s:10:\"copy_posts\";b:1;s:28:\"wpseo_edit_advanced_metadata\";b:1;s:20:\"wpseo_manage_options\";b:1;}}s:12:\"wpseo_editor\";a:2:{s:4:\"name\";s:10:\"SEO Editor\";s:12:\"capabilities\";a:37:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:15:\"wpseo_bulk_edit\";b:1;s:10:\"copy_posts\";b:1;s:28:\"wpseo_edit_advanced_metadata\";b:1;}}}', 'yes'),
(93, 'fresh_site', '0', 'yes'),
(94, 'WPLANG', 'vi', 'yes'),
(95, 'widget_search', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(96, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(97, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(98, 'widget_archives', 'a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(99, 'widget_meta', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(100, 'sidebars_widgets', 'a:11:{s:6:\"footer\";a:1:{i:0;s:6:\"text-2\";}s:19:\"wp_inactive_widgets\";a:1:{i:0;s:13:\"media_video-2\";}s:11:\"camket-home\";a:1:{i:0;s:7:\"imgqc-2\";}s:6:\"header\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:10:\"nav_menu-2\";i:1;s:16:\"support_online-2\";i:2;s:22:\"facebook-like-widget-2\";i:3;s:16:\"rt_widget_post-3\";i:4;s:12:\"imgpartner-2\";i:5;s:20:\"countperday_widget-2\";}s:9:\"sidebar-2\";a:1:{i:0;s:16:\"rt_widget_post-2\";}s:15:\"before-footer-1\";a:0:{}s:8:\"footer-1\";a:1:{i:0;s:6:\"text-3\";}s:8:\"footer-2\";a:1:{i:0;s:6:\"text-4\";}s:8:\"footer-3\";a:0:{}s:13:\"array_version\";i:3;}', 'yes'),
(101, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(102, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(103, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(104, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(105, 'widget_media_video', 'a:2:{i:2;a:11:{s:13:\"attachment_id\";i:0;s:3:\"url\";s:43:\"https://www.youtube.com/watch?v=rV_dtahuM4w\";s:5:\"title\";s:5:\"Video\";s:7:\"preload\";s:8:\"metadata\";s:7:\"content\";s:0:\"\";s:3:\"mp4\";s:0:\"\";s:3:\"m4v\";s:0:\"\";s:4:\"webm\";s:0:\"\";s:3:\"ogv\";s:0:\"\";s:3:\"flv\";s:0:\"\";s:4:\"loop\";b:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(106, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'widget_nav_menu', 'a:2:{i:2;a:2:{s:5:\"title\";s:23:\"Danh mục sản phẩm\";s:8:\"nav_menu\";i:23;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'cron', 'a:11:{i:1509361676;a:1:{s:32:\"woocommerce_cancel_unpaid_orders\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:2:{s:8:\"schedule\";b:0;s:4:\"args\";a:0:{}}}}i:1509380438;a:2:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1509380439;a:1:{s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1509382800;a:1:{s:27:\"woocommerce_scheduled_sales\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1509390424;a:1:{s:28:\"woocommerce_cleanup_sessions\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1509423680;a:1:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1509423864;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1509433415;a:1:{s:19:\"wpseo-reindex-links\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1509433624;a:1:{s:30:\"woocommerce_tracker_send_event\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1510012800;a:1:{s:25:\"woocommerce_geoip_updater\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:7:\"monthly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:2635200;}}}s:7:\"version\";i:2;}', 'yes'),
(109, 'theme_mods_twentysixteen', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1497500485;s:4:\"data\";a:4:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:9:\"sidebar-2\";a:0:{}s:9:\"sidebar-3\";a:0:{}}}}', 'yes'),
(121, 'can_compress_scripts', '0', 'no'),
(140, 'current_theme', 'RT Core 2017 V1', 'yes'),
(141, 'theme_mods_RT', 'a:3:{i:0;b:0;s:18:\"nav_menu_locations\";a:2:{s:7:\"primary\";i:22;s:9:\"secondary\";i:22;}s:18:\"custom_css_post_id\";i:-1;}', 'yes'),
(142, 'theme_switched', '', 'yes'),
(143, 'widget_cs_widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(144, 'widget_support_online', 'a:2:{i:2;a:10:{s:16:\"number_supporter\";s:1:\"2\";s:10:\"data_style\";s:12:\"gd_support_2\";s:5:\"title\";s:25:\"Hỗ trợ trực tuyến\";s:8:\"link_img\";s:62:\"http://localhost/doylecolor/wp-content/uploads/2017/10/spo.png\";s:16:\"supporter_1_name\";s:25:\"Hỗ trợ trực tuyến\";s:17:\"supporter_1_phone\";s:12:\"0987 319 588\";s:16:\"supporter_1_mail\";s:0:\"\";s:16:\"supporter_2_name\";s:25:\"Hỗ trợ trực tuyến\";s:17:\"supporter_2_phone\";s:12:\"0987 319 588\";s:16:\"supporter_2_mail\";s:23:\"trungle.benny@gmail.com\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(145, 'widget_imgqc', 'a:2:{i:2;a:14:{s:5:\"title\";s:0:\"\";s:7:\"img_num\";s:1:\"4\";s:11:\"img_title_0\";s:0:\"\";s:9:\"img_src_0\";s:62:\"http://localhost/doylecolor/wp-content/uploads/2017/10/ck1.png\";s:10:\"img_link_0\";s:0:\"\";s:11:\"img_title_1\";s:0:\"\";s:9:\"img_src_1\";s:62:\"http://localhost/doylecolor/wp-content/uploads/2017/10/ck3.png\";s:10:\"img_link_1\";s:0:\"\";s:11:\"img_title_2\";s:0:\"\";s:9:\"img_src_2\";s:62:\"http://localhost/doylecolor/wp-content/uploads/2017/10/ck2.png\";s:10:\"img_link_2\";s:0:\"\";s:11:\"img_title_3\";s:0:\"\";s:9:\"img_src_3\";s:62:\"http://localhost/doylecolor/wp-content/uploads/2017/10/ck4.png\";s:10:\"img_link_3\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(146, 'widget_facebook-like-widget', 'a:2:{i:2;a:7:{s:5:\"title\";s:13:\"Like Facebook\";s:8:\"page_url\";s:43:\"https://www.facebook.com/dochoithongminh17/\";s:5:\"width\";s:3:\"233\";s:12:\"color_scheme\";s:5:\"light\";s:10:\"show_faces\";s:2:\"on\";s:11:\"show_stream\";N;s:11:\"show_header\";N;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(147, 'widget_products-slider', 'a:2:{i:2;a:5:{s:5:\"title\";s:26:\"Sản phẩm khuyến mãi\";s:3:\"cat\";s:2:\"17\";s:6:\"numpro\";s:1:\"5\";s:8:\"autoplay\";s:0:\"\";s:5:\"limit\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(148, 'widget_imgpartner', 'a:2:{i:2;a:21:{s:5:\"title\";s:11:\"Album ảnh\";s:5:\"slide\";s:2:\"on\";s:14:\"slide_vertical\";s:2:\"on\";s:10:\"slide_numb\";s:1:\"3\";s:7:\"img_num\";s:1:\"4\";s:11:\"img_title_0\";s:0:\"\";s:9:\"img_src_0\";s:61:\"http://localhost/doylecolor/wp-content/uploads/2017/10/a1.jpg\";s:10:\"img_link_0\";s:0:\"\";s:13:\"img_content_0\";s:0:\"\";s:11:\"img_title_1\";s:0:\"\";s:9:\"img_src_1\";s:61:\"http://localhost/doylecolor/wp-content/uploads/2017/10/a2.jpg\";s:10:\"img_link_1\";s:0:\"\";s:13:\"img_content_1\";s:0:\"\";s:11:\"img_title_2\";s:0:\"\";s:9:\"img_src_2\";s:61:\"http://localhost/doylecolor/wp-content/uploads/2017/10/a3.jpg\";s:10:\"img_link_2\";s:0:\"\";s:13:\"img_content_2\";s:0:\"\";s:11:\"img_title_3\";s:0:\"\";s:9:\"img_src_3\";s:61:\"http://localhost/doylecolor/wp-content/uploads/2017/10/a4.jpg\";s:10:\"img_link_3\";s:0:\"\";s:13:\"img_content_3\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(151, '_cs_options', 'a:66:{s:7:\"favicon\";s:0:\"\";s:4:\"logo\";s:3:\"124\";s:11:\"logo_mobile\";s:0:\"\";s:10:\"mts_slides\";s:2:\"12\";s:9:\"page_home\";s:0:\"\";s:11:\"product_cat\";a:3:{i:1;a:2:{s:17:\"product_cat_title\";s:18:\"Sản phẩm mới\";s:15:\"product_cat_sub\";s:2:\"43\";}i:2;a:2:{s:17:\"product_cat_title\";s:17:\"Sơn nội thất\";s:15:\"product_cat_sub\";s:2:\"37\";}i:3;a:2:{s:17:\"product_cat_title\";s:19:\"Sơn ngoại thất\";s:15:\"product_cat_sub\";s:2:\"38\";}}s:13:\"numberproduct\";s:1:\"6\";s:16:\"product_category\";a:1:{i:1;a:2:{s:22:\"product_category_title\";s:3:\"Tin\";s:20:\"product_category_sub\";s:1:\"2\";}}s:10:\"numberpost\";s:1:\"5\";s:10:\"responsive\";b:1;s:9:\"site_full\";b:1;s:11:\"banner_full\";b:1;s:12:\"layout_width\";s:4:\"1000\";s:13:\"layout_custom\";s:4:\"1000\";s:11:\"layout_home\";s:4:\"left\";s:15:\"layout_category\";s:4:\"left\";s:13:\"layout_single\";s:4:\"left\";s:11:\"layout_page\";s:4:\"left\";s:18:\"layout_product_cat\";s:5:\"right\";s:14:\"layout_product\";s:4:\"left\";s:10:\"main_color\";s:0:\"\";s:10:\"background\";a:6:{s:5:\"image\";s:0:\"\";s:6:\"repeat\";s:0:\"\";s:8:\"position\";s:0:\"\";s:10:\"attachment\";s:0:\"\";s:4:\"size\";s:0:\"\";s:5:\"color\";s:0:\"\";}s:8:\"gr_mennu\";s:319:\"background-image: -moz-linear-gradient( 90deg, rgb(220,34,39) 0%, rgb(238,58,63) 100%);\r\n                          background-image: -webkit-linear-gradient( 90deg, rgb(220,34,39) 0%, rgb(238,58,63) 100%);\r\n                          background-image: -ms-linear-gradient( 90deg, rgb(220,34,39) 0%, rgb(238,58,63) 100%);\";s:7:\"bg_menu\";a:6:{s:5:\"image\";s:0:\"\";s:6:\"repeat\";s:0:\"\";s:8:\"position\";s:0:\"\";s:10:\"attachment\";s:0:\"\";s:4:\"size\";s:0:\"\";s:5:\"color\";s:0:\"\";}s:15:\"gr_widget_title\";s:319:\"background-image: -moz-linear-gradient( 90deg, rgb(220,34,39) 0%, rgb(238,58,63) 100%);\r\n                          background-image: -webkit-linear-gradient( 90deg, rgb(220,34,39) 0%, rgb(238,58,63) 100%);\r\n                          background-image: -ms-linear-gradient( 90deg, rgb(220,34,39) 0%, rgb(238,58,63) 100%);\";s:15:\"bg_widget_title\";a:6:{s:5:\"image\";s:0:\"\";s:6:\"repeat\";s:0:\"\";s:8:\"position\";s:0:\"\";s:10:\"attachment\";s:0:\"\";s:4:\"size\";s:0:\"\";s:5:\"color\";s:0:\"\";}s:17:\"bg_category_title\";a:6:{s:5:\"image\";s:0:\"\";s:6:\"repeat\";s:9:\"no-repeat\";s:8:\"position\";s:11:\"left center\";s:10:\"attachment\";s:0:\"\";s:4:\"size\";s:0:\"\";s:5:\"color\";s:0:\"\";}s:17:\"gr_category_title\";s:307:\"background-image: -moz-linear-gradient( 90deg, rgb(220,34,39) 0%, rgb(238,58,63) 100%);\r\n                    background-image: -webkit-linear-gradient( 90deg, rgb(220,34,39) 0%, rgb(238,58,63) 100%);\r\n                    background-image: -ms-linear-gradient( 90deg, rgb(220,34,39) 0%, rgb(238,58,63) 100%);\";s:9:\"bg_footer\";a:6:{s:5:\"image\";s:0:\"\";s:6:\"repeat\";s:9:\"no-repeat\";s:8:\"position\";s:13:\"center center\";s:10:\"attachment\";s:0:\"\";s:4:\"size\";s:0:\"\";s:5:\"color\";s:0:\"\";}s:9:\"gr_footer\";s:307:\"background-image: -moz-linear-gradient( 90deg, rgb(220,34,39) 0%, rgb(238,58,63) 100%);\r\n                    background-image: -webkit-linear-gradient( 90deg, rgb(220,34,39) 0%, rgb(238,58,63) 100%);\r\n                    background-image: -ms-linear-gradient( 90deg, rgb(220,34,39) 0%, rgb(238,58,63) 100%);\";s:10:\"bg_submenu\";a:6:{s:5:\"image\";s:0:\"\";s:6:\"repeat\";s:0:\"\";s:8:\"position\";s:0:\"\";s:10:\"attachment\";s:0:\"\";s:4:\"size\";s:0:\"\";s:5:\"color\";s:0:\"\";}s:13:\"bg_hover_menu\";a:6:{s:5:\"image\";s:0:\"\";s:6:\"repeat\";s:0:\"\";s:8:\"position\";s:0:\"\";s:10:\"attachment\";s:0:\"\";s:4:\"size\";s:0:\"\";s:5:\"color\";s:0:\"\";}s:13:\"layout_header\";s:7:\"default\";s:24:\"vertical_mega_menu_title\";s:23:\"Danh mục sản phẩm\";s:9:\"style_prd\";s:15:\"product_style_1\";s:13:\"thousands_sep\";s:0:\"\";s:17:\"colums_product_lg\";s:16:\"col-lg-4 lg-3-cl\";s:17:\"colums_product_md\";s:16:\"col-md-4 md-3-cl\";s:17:\"colums_product_sm\";s:16:\"col-sm-4 sm-3-cl\";s:17:\"colums_product_xs\";s:16:\"col-xs-6 xs-2-cl\";s:13:\"on_cart_image\";b:1;s:19:\"on_cart_image_width\";s:3:\"270\";s:19:\"on_cart_image_heigh\";s:3:\"400\";s:13:\"tooltip_image\";b:1;s:14:\"style_category\";s:15:\"content_style_2\";s:20:\"before_footer_widget\";s:1:\"1\";s:13:\"footer_column\";s:1:\"3\";s:9:\"copyright\";s:173:\"<a title=\"thiet ke website\" href=\"http://thietkewebmienphi.com/\" target=\"_blank\" rel=\"nofollow noopener\">© 2017 doylecolor.com . Thiết kế và phát triển bởi RT</a>\";s:7:\"top_bar\";b:0;s:15:\"sticky_nav_menu\";b:0;s:18:\"vertical_mega_menu\";b:0;s:20:\"enable_header_search\";b:0;s:7:\"on_cart\";b:0;s:11:\"buy_now_btn\";b:0;s:8:\"info_btn\";b:0;s:9:\"quickview\";b:0;s:16:\"quickview_mobile\";b:0;s:7:\"tooltip\";b:0;s:13:\"tooltip_title\";b:0;s:13:\"tooltip_price\";b:0;s:18:\"check_using_cmt_fb\";b:0;s:7:\"zoomimg\";b:0;s:17:\"enable_breadcrumb\";b:0;s:15:\"custom_sidebars\";s:0:\"\";s:16:\"rt_header_script\";s:0:\"\";s:16:\"rt_footer_script\";s:0:\"\";}', 'yes'),
(154, 'recently_activated', 'a:0:{}', 'yes'),
(165, 'wpcf7', 'a:2:{s:7:\"version\";s:3:\"4.9\";s:13:\"bulk_validate\";a:4:{s:9:\"timestamp\";i:1497500571;s:7:\"version\";s:3:\"4.8\";s:11:\"count_valid\";i:1;s:13:\"count_invalid\";i:0;}}', 'yes'),
(166, 'count_per_day', 'a:31:{s:7:\"version\";s:5:\"3.5.7\";s:10:\"onlinetime\";i:300;s:4:\"user\";i:0;s:10:\"user_level\";i:0;s:9:\"autocount\";i:1;s:4:\"bots\";s:143:\"bot\nspider\nsearch\ncrawler\nask.com\nvalidator\nsnoopy\nsuchen.de\nsuchbaer.de\nshelob\nsemager\nxenu\nsuch_de\nia_archiver\nMicrosoft URL Control\nnetluchs\";s:15:\"dashboard_posts\";i:20;s:20:\"dashboard_last_posts\";i:20;s:19:\"dashboard_last_days\";i:7;s:13:\"show_in_lists\";i:1;s:10:\"chart_days\";i:60;s:12:\"chart_height\";i:200;s:9:\"countries\";i:20;s:17:\"exclude_countries\";s:0:\"\";s:9:\"startdate\";s:0:\"\";s:10:\"startcount\";s:0:\"\";s:10:\"startreads\";s:0:\"\";s:5:\"anoip\";i:0;s:12:\"massbotlimit\";i:25;s:7:\"clients\";s:42:\"Firefox, Edge, MSIE, Chrome, Safari, Opera\";s:4:\"ajax\";i:0;s:5:\"debug\";i:0;s:8:\"referers\";i:1;s:12:\"referers_cut\";i:0;s:8:\"fieldlen\";i:150;s:8:\"localref\";i:1;s:18:\"dashboard_referers\";i:20;s:18:\"referers_last_days\";i:7;s:12:\"no_front_css\";i:0;s:9:\"whocansee\";s:13:\"publish_posts\";s:11:\"backup_part\";i:10000;}', 'yes'),
(167, 'tadv_settings', 'a:6:{s:7:\"options\";s:15:\"menubar,advlist\";s:9:\"toolbar_1\";s:106:\"formatselect,bold,italic,blockquote,bullist,numlist,alignleft,aligncenter,alignright,link,unlink,undo,redo\";s:9:\"toolbar_2\";s:103:\"fontselect,fontsizeselect,outdent,indent,pastetext,removeformat,charmap,wp_more,forecolor,table,wp_help\";s:9:\"toolbar_3\";s:0:\"\";s:9:\"toolbar_4\";s:0:\"\";s:7:\"plugins\";s:104:\"anchor,code,insertdatetime,nonbreaking,print,searchreplace,table,visualblocks,visualchars,advlist,wptadv\";}', 'yes'),
(168, 'tadv_admin_settings', 'a:1:{s:7:\"options\";a:0:{}}', 'yes'),
(169, 'tadv_version', '4000', 'yes'),
(170, 'user_role_editor', 'a:1:{s:11:\"ure_version\";s:6:\"4.36.1\";}', 'yes'),
(171, 'rt_backup_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'no'),
(172, 'ure_tasks_queue', 'a:0:{}', 'yes'),
(173, 'woocommerce_default_country', 'VN', 'yes'),
(174, 'woocommerce_allowed_countries', 'all', 'yes'),
(175, 'woocommerce_all_except_countries', 'a:0:{}', 'yes'),
(176, 'woocommerce_specific_allowed_countries', 'a:0:{}', 'yes'),
(177, 'woocommerce_ship_to_countries', 'disabled', 'yes'),
(178, 'woocommerce_specific_ship_to_countries', 'a:0:{}', 'yes'),
(179, 'woocommerce_default_customer_address', 'geolocation', 'yes'),
(180, 'woocommerce_calc_taxes', 'no', 'yes'),
(181, 'woocommerce_demo_store', 'no', 'yes'),
(182, 'woocommerce_demo_store_notice', 'Đây là cửa hàng demo nhằm mục đích thử nghiệm &mdash; các đơn hàng sẽ không có hiệu lực.', 'no'),
(183, 'woocommerce_currency', 'VND', 'yes'),
(184, 'woocommerce_currency_pos', 'right', 'yes'),
(185, 'woocommerce_price_thousand_sep', '.', 'yes'),
(186, 'woocommerce_price_decimal_sep', '.', 'yes'),
(187, 'woocommerce_price_num_decimals', '0', 'yes'),
(188, 'woocommerce_weight_unit', 'kg', 'yes'),
(189, 'woocommerce_dimension_unit', 'cm', 'yes'),
(190, 'woocommerce_enable_review_rating', 'yes', 'yes'),
(191, 'woocommerce_review_rating_required', 'yes', 'no'),
(192, 'woocommerce_review_rating_verification_label', 'yes', 'no'),
(193, 'woocommerce_review_rating_verification_required', 'no', 'no'),
(194, 'woocommerce_shop_page_id', '', 'yes'),
(195, 'woocommerce_shop_page_display', '', 'yes'),
(196, 'woocommerce_category_archive_display', '', 'yes'),
(197, 'woocommerce_default_catalog_orderby', 'menu_order', 'yes'),
(198, 'woocommerce_cart_redirect_after_add', 'no', 'yes'),
(199, 'woocommerce_enable_ajax_add_to_cart', 'yes', 'yes'),
(200, 'shop_catalog_image_size', 'a:3:{s:5:\"width\";s:3:\"300\";s:6:\"height\";s:3:\"300\";s:4:\"crop\";i:0;}', 'yes'),
(201, 'shop_single_image_size', 'a:3:{s:5:\"width\";s:3:\"600\";s:6:\"height\";s:3:\"600\";s:4:\"crop\";i:0;}', 'yes'),
(202, 'shop_thumbnail_image_size', 'a:3:{s:5:\"width\";s:3:\"180\";s:6:\"height\";s:3:\"180\";s:4:\"crop\";i:0;}', 'yes'),
(203, 'woocommerce_manage_stock', 'yes', 'yes'),
(204, 'woocommerce_hold_stock_minutes', '60', 'no'),
(205, 'woocommerce_notify_low_stock', 'yes', 'no'),
(206, 'woocommerce_notify_no_stock', 'yes', 'no'),
(207, 'woocommerce_stock_email_recipient', 'phamtuan170291@gmail.com', 'no'),
(208, 'woocommerce_notify_low_stock_amount', '2', 'no'),
(209, 'woocommerce_notify_no_stock_amount', '0', 'yes'),
(210, 'woocommerce_hide_out_of_stock_items', 'no', 'yes'),
(211, 'woocommerce_stock_format', '', 'yes'),
(212, 'woocommerce_file_download_method', 'force', 'no'),
(213, 'woocommerce_downloads_require_login', 'no', 'no'),
(214, 'woocommerce_downloads_grant_access_after_payment', 'yes', 'no'),
(215, 'woocommerce_prices_include_tax', 'no', 'yes'),
(216, 'woocommerce_tax_based_on', 'shipping', 'yes'),
(217, 'woocommerce_shipping_tax_class', 'inherit', 'yes'),
(218, 'woocommerce_tax_round_at_subtotal', 'no', 'yes'),
(219, 'woocommerce_tax_classes', 'Reduced rate\nZero rate', 'yes'),
(220, 'woocommerce_tax_display_shop', 'excl', 'yes'),
(221, 'woocommerce_tax_display_cart', 'excl', 'no'),
(222, 'woocommerce_price_display_suffix', '', 'yes'),
(223, 'woocommerce_tax_total_display', 'itemized', 'no'),
(224, 'woocommerce_enable_shipping_calc', 'yes', 'no'),
(225, 'woocommerce_shipping_cost_requires_address', 'no', 'no'),
(226, 'woocommerce_ship_to_destination', 'billing', 'no'),
(227, 'woocommerce_shipping_debug_mode', 'no', 'no'),
(228, 'woocommerce_enable_coupons', 'yes', 'yes'),
(229, 'woocommerce_calc_discounts_sequentially', 'no', 'no'),
(230, 'woocommerce_enable_guest_checkout', 'yes', 'no'),
(231, 'woocommerce_force_ssl_checkout', 'no', 'yes'),
(232, 'woocommerce_unforce_ssl_checkout', 'no', 'yes'),
(233, 'woocommerce_cart_page_id', '8', 'yes'),
(234, 'woocommerce_checkout_page_id', '9', 'yes'),
(235, 'woocommerce_terms_page_id', '', 'no'),
(236, 'woocommerce_checkout_pay_endpoint', 'order-pay', 'yes'),
(237, 'woocommerce_checkout_order_received_endpoint', 'order-received', 'yes'),
(238, 'woocommerce_myaccount_add_payment_method_endpoint', 'add-payment-method', 'yes'),
(239, 'woocommerce_myaccount_delete_payment_method_endpoint', 'delete-payment-method', 'yes'),
(240, 'woocommerce_myaccount_set_default_payment_method_endpoint', 'set-default-payment-method', 'yes'),
(241, 'woocommerce_myaccount_page_id', '10', 'yes'),
(242, 'woocommerce_enable_signup_and_login_from_checkout', 'yes', 'no'),
(243, 'woocommerce_enable_myaccount_registration', 'no', 'no'),
(244, 'woocommerce_enable_checkout_login_reminder', 'yes', 'no'),
(245, 'woocommerce_registration_generate_username', 'yes', 'no'),
(246, 'woocommerce_registration_generate_password', 'no', 'no'),
(247, 'woocommerce_myaccount_orders_endpoint', 'orders', 'yes'),
(248, 'woocommerce_myaccount_view_order_endpoint', 'view-order', 'yes'),
(249, 'woocommerce_myaccount_downloads_endpoint', 'downloads', 'yes'),
(250, 'woocommerce_myaccount_edit_account_endpoint', 'edit-account', 'yes'),
(251, 'woocommerce_myaccount_edit_address_endpoint', 'edit-address', 'yes'),
(252, 'woocommerce_myaccount_payment_methods_endpoint', 'payment-methods', 'yes'),
(253, 'woocommerce_myaccount_lost_password_endpoint', 'lost-password', 'yes'),
(254, 'woocommerce_logout_endpoint', 'customer-logout', 'yes'),
(255, 'woocommerce_email_from_name', 'RT &#8211; Core', 'no'),
(256, 'woocommerce_email_from_address', 'phamtuan170291@gmail.com', 'no'),
(257, 'woocommerce_email_header_image', '', 'no'),
(258, 'woocommerce_email_footer_text', 'RT &#8211; Core - Powered by WooCommerce', 'no'),
(259, 'woocommerce_email_base_color', '#96588a', 'no'),
(260, 'woocommerce_email_background_color', '#f7f7f7', 'no'),
(261, 'woocommerce_email_body_background_color', '#ffffff', 'no'),
(262, 'woocommerce_email_text_color', '#3c3c3c', 'no'),
(263, 'woocommerce_api_enabled', 'yes', 'yes'),
(269, 'wp_smtp_options', 'a:9:{s:4:\"from\";s:25:\"hoangngoctan.89@gmail.com\";s:8:\"fromname\";s:8:\"RT Group\";s:4:\"host\";s:14:\"smtp-pulse.com\";s:10:\"smtpsecure\";s:3:\"ssl\";s:4:\"port\";s:3:\"465\";s:8:\"smtpauth\";s:3:\"yes\";s:8:\"username\";s:25:\"hoangngoctan.89@gmail.com\";s:8:\"password\";s:12:\"WrRFd3BHDPen\";s:10:\"deactivate\";s:0:\"\";}', 'yes'),
(271, 'wpseo', 'a:25:{s:14:\"blocking_files\";a:0:{}s:15:\"ms_defaults_set\";b:0;s:7:\"version\";s:5:\"5.6.1\";s:12:\"company_logo\";s:0:\"\";s:12:\"company_name\";s:0:\"\";s:17:\"company_or_person\";s:0:\"\";s:20:\"disableadvanced_meta\";b:1;s:19:\"onpage_indexability\";b:1;s:12:\"googleverify\";s:0:\"\";s:8:\"msverify\";s:0:\"\";s:11:\"person_name\";s:0:\"\";s:12:\"website_name\";s:0:\"\";s:22:\"alternate_website_name\";s:0:\"\";s:12:\"yandexverify\";s:0:\"\";s:9:\"site_type\";s:0:\"\";s:20:\"has_multiple_authors\";b:0;s:16:\"environment_type\";s:0:\"\";s:23:\"content_analysis_active\";b:1;s:23:\"keyword_analysis_active\";b:1;s:20:\"enable_setting_pages\";b:1;s:21:\"enable_admin_bar_menu\";b:1;s:26:\"enable_cornerstone_content\";b:1;s:24:\"enable_text_link_counter\";b:1;s:22:\"show_onboarding_notice\";b:1;s:18:\"first_activated_on\";i:1498547015;}', 'yes'),
(272, 'wpseo_permalinks', 'a:9:{s:15:\"cleanpermalinks\";b:0;s:24:\"cleanpermalink-extravars\";s:0:\"\";s:29:\"cleanpermalink-googlecampaign\";b:0;s:31:\"cleanpermalink-googlesitesearch\";b:0;s:15:\"cleanreplytocom\";b:0;s:10:\"cleanslugs\";b:1;s:18:\"redirectattachment\";b:0;s:17:\"stripcategorybase\";b:1;s:13:\"trailingslash\";b:0;}', 'yes'),
(273, 'wpseo_titles', 'a:79:{s:10:\"title_test\";i:0;s:17:\"forcerewritetitle\";b:0;s:9:\"separator\";s:7:\"sc-dash\";s:15:\"usemetakeywords\";b:0;s:16:\"title-home-wpseo\";s:12:\"%%sitename%%\";s:18:\"title-author-wpseo\";s:41:\"%%name%%, Author at %%sitename%% %%page%%\";s:19:\"title-archive-wpseo\";s:38:\"%%date%% %%page%% %%sep%% %%sitename%%\";s:18:\"title-search-wpseo\";s:63:\"You searched for %%searchphrase%% %%page%% %%sep%% %%sitename%%\";s:15:\"title-404-wpseo\";s:35:\"Page not found %%sep%% %%sitename%%\";s:19:\"metadesc-home-wpseo\";s:0:\"\";s:21:\"metadesc-author-wpseo\";s:0:\"\";s:22:\"metadesc-archive-wpseo\";s:0:\"\";s:18:\"metakey-home-wpseo\";s:0:\"\";s:20:\"metakey-author-wpseo\";s:0:\"\";s:22:\"noindex-subpages-wpseo\";b:0;s:20:\"noindex-author-wpseo\";b:0;s:21:\"noindex-archive-wpseo\";b:1;s:14:\"disable-author\";b:0;s:12:\"disable-date\";b:0;s:19:\"disable-post_format\";b:0;s:10:\"title-post\";s:9:\"%%title%%\";s:13:\"metadesc-post\";s:0:\"\";s:12:\"metakey-post\";s:0:\"\";s:12:\"noindex-post\";b:0;s:13:\"showdate-post\";b:0;s:16:\"hideeditbox-post\";b:0;s:10:\"title-page\";s:9:\"%%title%%\";s:13:\"metadesc-page\";s:0:\"\";s:12:\"metakey-page\";s:0:\"\";s:12:\"noindex-page\";b:0;s:13:\"showdate-page\";b:0;s:16:\"hideeditbox-page\";b:0;s:16:\"title-attachment\";s:9:\"%%title%%\";s:19:\"metadesc-attachment\";s:0:\"\";s:18:\"metakey-attachment\";s:0:\"\";s:18:\"noindex-attachment\";b:0;s:19:\"showdate-attachment\";b:0;s:22:\"hideeditbox-attachment\";b:0;s:18:\"title-tax-category\";s:14:\"%%term_title%%\";s:21:\"metadesc-tax-category\";s:0:\"\";s:20:\"metakey-tax-category\";s:0:\"\";s:24:\"hideeditbox-tax-category\";b:0;s:20:\"noindex-tax-category\";b:0;s:18:\"title-tax-post_tag\";s:14:\"%%term_title%%\";s:21:\"metadesc-tax-post_tag\";s:0:\"\";s:20:\"metakey-tax-post_tag\";s:0:\"\";s:24:\"hideeditbox-tax-post_tag\";b:0;s:20:\"noindex-tax-post_tag\";b:0;s:21:\"title-tax-post_format\";s:14:\"%%term_title%%\";s:24:\"metadesc-tax-post_format\";s:0:\"\";s:23:\"metakey-tax-post_format\";s:0:\"\";s:27:\"hideeditbox-tax-post_format\";b:0;s:23:\"noindex-tax-post_format\";b:1;s:13:\"title-product\";s:9:\"%%title%%\";s:16:\"metadesc-product\";s:0:\"\";s:15:\"metakey-product\";s:0:\"\";s:15:\"noindex-product\";b:0;s:16:\"showdate-product\";b:0;s:19:\"hideeditbox-product\";b:0;s:23:\"title-ptarchive-product\";s:9:\"%%title%%\";s:26:\"metadesc-ptarchive-product\";s:0:\"\";s:25:\"metakey-ptarchive-product\";s:0:\"\";s:25:\"bctitle-ptarchive-product\";s:0:\"\";s:25:\"noindex-ptarchive-product\";b:0;s:21:\"title-tax-product_cat\";s:14:\"%%term_title%%\";s:24:\"metadesc-tax-product_cat\";s:0:\"\";s:23:\"metakey-tax-product_cat\";s:0:\"\";s:27:\"hideeditbox-tax-product_cat\";b:0;s:23:\"noindex-tax-product_cat\";b:0;s:21:\"title-tax-product_tag\";s:14:\"%%term_title%%\";s:24:\"metadesc-tax-product_tag\";s:0:\"\";s:23:\"metakey-tax-product_tag\";s:0:\"\";s:27:\"hideeditbox-tax-product_tag\";b:0;s:23:\"noindex-tax-product_tag\";b:0;s:32:\"title-tax-product_shipping_class\";s:14:\"%%term_title%%\";s:35:\"metadesc-tax-product_shipping_class\";s:0:\"\";s:34:\"metakey-tax-product_shipping_class\";s:0:\"\";s:38:\"hideeditbox-tax-product_shipping_class\";b:0;s:34:\"noindex-tax-product_shipping_class\";b:0;}', 'yes'),
(274, 'wpseo_social', 'a:20:{s:9:\"fb_admins\";a:0:{}s:12:\"fbconnectkey\";s:32:\"2cdd605acc9428232c289a10caf5055e\";s:13:\"facebook_site\";s:0:\"\";s:13:\"instagram_url\";s:0:\"\";s:12:\"linkedin_url\";s:0:\"\";s:11:\"myspace_url\";s:0:\"\";s:16:\"og_default_image\";s:0:\"\";s:18:\"og_frontpage_title\";s:0:\"\";s:17:\"og_frontpage_desc\";s:0:\"\";s:18:\"og_frontpage_image\";s:0:\"\";s:9:\"opengraph\";b:1;s:13:\"pinterest_url\";s:0:\"\";s:15:\"pinterestverify\";s:0:\"\";s:14:\"plus-publisher\";s:0:\"\";s:7:\"twitter\";b:1;s:12:\"twitter_site\";s:0:\"\";s:17:\"twitter_card_type\";s:7:\"summary\";s:11:\"youtube_url\";s:0:\"\";s:15:\"google_plus_url\";s:0:\"\";s:10:\"fbadminapp\";s:0:\"\";}', 'yes'),
(275, 'wpseo_rss', 'a:2:{s:9:\"rssbefore\";s:0:\"\";s:8:\"rssafter\";s:53:\"The post %%POSTLINK%% appeared first on %%BLOGLINK%%.\";}', 'yes'),
(276, 'wpseo_internallinks', 'a:15:{s:20:\"breadcrumbs-404crumb\";s:0:\"\";s:23:\"breadcrumbs-blog-remove\";b:0;s:20:\"breadcrumbs-boldlast\";b:1;s:25:\"breadcrumbs-archiveprefix\";s:0:\"\";s:18:\"breadcrumbs-enable\";b:1;s:16:\"breadcrumbs-home\";s:11:\"Trang chủ\";s:18:\"breadcrumbs-prefix\";s:0:\"\";s:24:\"breadcrumbs-searchprefix\";s:0:\"\";s:15:\"breadcrumbs-sep\";s:2:\"»\";s:23:\"post_types-post-maintax\";i:0;s:29:\"post_types-attachment-maintax\";i:0;s:26:\"post_types-product-maintax\";i:0;s:29:\"taxonomy-product_cat-ptparent\";i:0;s:29:\"taxonomy-product_tag-ptparent\";i:0;s:40:\"taxonomy-product_shipping_class-ptparent\";i:0;}', 'yes'),
(277, 'wpseo_xml', 'a:22:{s:22:\"disable_author_sitemap\";b:1;s:22:\"disable_author_noposts\";b:1;s:16:\"enablexmlsitemap\";b:1;s:16:\"entries-per-page\";i:1000;s:14:\"excluded-posts\";s:0:\"\";s:38:\"user_role-administrator-not_in_sitemap\";b:0;s:31:\"user_role-editor-not_in_sitemap\";b:0;s:31:\"user_role-author-not_in_sitemap\";b:0;s:36:\"user_role-contributor-not_in_sitemap\";b:0;s:35:\"user_role-subscriber-not_in_sitemap\";b:0;s:33:\"user_role-customer-not_in_sitemap\";b:0;s:37:\"user_role-shop_manager-not_in_sitemap\";b:0;s:30:\"post_types-post-not_in_sitemap\";b:0;s:30:\"post_types-page-not_in_sitemap\";b:0;s:36:\"post_types-attachment-not_in_sitemap\";b:1;s:33:\"post_types-product-not_in_sitemap\";b:0;s:34:\"taxonomies-category-not_in_sitemap\";b:0;s:34:\"taxonomies-post_tag-not_in_sitemap\";b:0;s:37:\"taxonomies-post_format-not_in_sitemap\";b:0;s:37:\"taxonomies-product_cat-not_in_sitemap\";b:0;s:37:\"taxonomies-product_tag-not_in_sitemap\";b:0;s:48:\"taxonomies-product_shipping_class-not_in_sitemap\";b:0;}', 'yes'),
(279, 'woocommerce_admin_notices', 'a:0:{}', 'yes'),
(281, '_transient_woocommerce_webhook_ids', 'a:0:{}', 'yes');
INSERT INTO `rt_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(282, 'widget_countperday_widget', 'a:2:{i:2;a:30:{s:5:\"title\";s:22:\"Thống kê truy cập\";s:5:\"order\";s:199:\"show|getreadsall|getreadstoday|getreadsyesterday|getreadslastweek|getreadsthismonth|getuserall|getusertoday|getuseryesterday|getuserlastweek|getuserthismonth|getuserperday|getuseronline|getfirstcount\";s:4:\"show\";i:0;s:11:\"getreadsall\";i:0;s:13:\"getreadstoday\";i:0;s:17:\"getreadsyesterday\";i:0;s:16:\"getreadslastweek\";i:0;s:17:\"getreadsthismonth\";i:0;s:10:\"getuserall\";s:1:\"1\";s:12:\"getusertoday\";s:1:\"1\";s:16:\"getuseryesterday\";s:1:\"1\";s:15:\"getuserlastweek\";i:0;s:16:\"getuserthismonth\";i:0;s:13:\"getuserperday\";i:0;s:13:\"getuseronline\";s:1:\"1\";s:13:\"getfirstcount\";i:0;s:9:\"show_name\";s:9:\"This post\";s:16:\"getreadsall_name\";s:11:\"Total reads\";s:18:\"getreadstoday_name\";s:11:\"Reads today\";s:22:\"getreadsyesterday_name\";s:15:\"Reads yesterday\";s:21:\"getreadslastweek_name\";s:15:\"Reads last week\";s:22:\"getreadsthismonth_name\";s:15:\"Reads per month\";s:15:\"getuserall_name\";s:17:\"Tổng truy cập\";s:17:\"getusertoday_name\";s:8:\"Hôm nay\";s:21:\"getuseryesterday_name\";s:8:\"Hôm qua\";s:20:\"getuserlastweek_name\";s:18:\"Visitors last week\";s:21:\"getuserthismonth_name\";s:18:\"Visitors per month\";s:18:\"getuserperday_name\";s:16:\"Visitors per day\";s:18:\"getuseronline_name\";s:12:\"Đang online\";s:18:\"getfirstcount_name\";s:17:\"Counter starts on\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(283, 'widget_countperday_popular_posts_widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(284, 'widget_woocommerce_product_search', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(285, 'widget_woocommerce_rating_filter', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(286, 'widget_metaslider_widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(287, 'widget_rt_post_by_category_widget', 'a:2:{i:2;a:11:{s:5:\"title\";s:30:\"Bài viết theo chuyên mục\";s:5:\"style\";s:1:\"1\";s:6:\"number\";s:1:\"6\";s:3:\"cat\";s:1:\"2\";s:14:\"thumb_position\";s:3:\"top\";s:7:\"heading\";s:2:\"h4\";s:12:\"on_off_thumb\";i:1;s:10:\"first_post\";i:1;s:10:\"other_post\";i:0;s:7:\"excerpt\";i:0;s:4:\"meta\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(288, 'widget_rt-posts-slider-widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(289, 'widget_rt_products_by_category_widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(292, '_transient_wc_count_comments', 'O:8:\"stdClass\":7:{s:14:\"total_comments\";i:0;s:3:\"all\";i:0;s:9:\"moderated\";i:0;s:8:\"approved\";i:0;s:4:\"spam\";i:0;s:5:\"trash\";i:0;s:12:\"post-trashed\";i:0;}', 'yes'),
(293, 'duplicate_post_copytitle', '1', 'yes'),
(294, 'duplicate_post_copydate', '', 'yes'),
(295, 'duplicate_post_copystatus', '', 'yes'),
(296, 'duplicate_post_copyslug', '1', 'yes'),
(297, 'duplicate_post_copyexcerpt', '1', 'yes'),
(298, 'duplicate_post_copycontent', '1', 'yes'),
(299, 'duplicate_post_copythumbnail', '1', 'yes'),
(300, 'duplicate_post_copytemplate', '1', 'yes'),
(301, 'duplicate_post_copyformat', '1', 'yes'),
(302, 'duplicate_post_copyauthor', '', 'yes'),
(303, 'duplicate_post_copypassword', '', 'yes'),
(304, 'duplicate_post_copyattachments', '', 'yes'),
(305, 'duplicate_post_copychildren', '', 'yes'),
(306, 'duplicate_post_copycomments', '', 'yes'),
(307, 'duplicate_post_copymenuorder', '1', 'yes'),
(308, 'duplicate_post_taxonomies_blacklist', '', 'yes'),
(309, 'duplicate_post_blacklist', '', 'yes'),
(310, 'duplicate_post_types_enabled', 'a:3:{i:0;s:4:\"post\";i:1;s:4:\"page\";i:2;s:7:\"product\";}', 'yes'),
(311, 'duplicate_post_show_row', '1', 'yes'),
(312, 'duplicate_post_show_adminbar', '1', 'yes'),
(313, 'duplicate_post_show_submitbox', '1', 'yes'),
(314, 'duplicate_post_show_bulkactions', '1', 'yes'),
(315, 'duplicate_post_version', '3.2', 'no'),
(316, 'duplicate_post_show_notice', '', 'no'),
(317, 'woocommerce_meta_box_errors', 'a:0:{}', 'yes'),
(320, 'wpseo_sitemap_1_cache_validator', '3G5PS', 'no'),
(321, 'wpseo_sitemap_page_cache_validator', '5gRsm', 'no'),
(327, 'woocommerce_allow_tracking', 'no', 'yes'),
(328, 'wpseo_sitemap_product_cache_validator', '3G5Qy', 'no'),
(334, 'wpseo_sitemap_cache_validator_global', '2RbGb', 'no'),
(337, 'rewrite_rules', 'a:160:{s:24:\"^wc-auth/v([1]{1})/(.*)?\";s:63:\"index.php?wc-auth-version=$matches[1]&wc-auth-route=$matches[2]\";s:22:\"^wc-api/v([1-3]{1})/?$\";s:51:\"index.php?wc-api-version=$matches[1]&wc-api-route=/\";s:24:\"^wc-api/v([1-3]{1})(.*)?\";s:61:\"index.php?wc-api-version=$matches[1]&wc-api-route=$matches[2]\";s:19:\"sitemap_index\\.xml$\";s:19:\"index.php?sitemap=1\";s:31:\"([^/]+?)-sitemap([0-9]+)?\\.xml$\";s:51:\"index.php?sitemap=$matches[1]&sitemap_n=$matches[2]\";s:24:\"([a-z]+)?-?sitemap\\.xsl$\";s:25:\"index.php?xsl=$matches[1]\";s:7:\"shop/?$\";s:27:\"index.php?post_type=product\";s:37:\"shop/feed/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?post_type=product&feed=$matches[1]\";s:32:\"shop/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?post_type=product&feed=$matches[1]\";s:24:\"shop/page/([0-9]{1,})/?$\";s:45:\"index.php?post_type=product&paged=$matches[1]\";s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:49:\"(album-anh)/(?:feed/)?(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:32:\"(album-anh)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:14:\"(album-anh)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:47:\"(tin-tuc)/(?:feed/)?(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:30:\"(tin-tuc)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:12:\"(tin-tuc)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:50:\"(tuyen-dung)/(?:feed/)?(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:33:\"(tuyen-dung)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:15:\"(tuyen-dung)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:14:\"category/(.+)$\";s:45:\"index.php?wpseo_category_redirect=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:29:\"tag/([^/]+)/wc-api(/(.*))?/?$\";s:44:\"index.php?tag=$matches[1]&wc-api=$matches[3]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:47:\"danh-muc/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_cat=$matches[1]&feed=$matches[2]\";s:42:\"danh-muc/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_cat=$matches[1]&feed=$matches[2]\";s:23:\"danh-muc/(.+?)/embed/?$\";s:44:\"index.php?product_cat=$matches[1]&embed=true\";s:35:\"danh-muc/(.+?)/page/?([0-9]{1,})/?$\";s:51:\"index.php?product_cat=$matches[1]&paged=$matches[2]\";s:17:\"danh-muc/(.+?)/?$\";s:33:\"index.php?product_cat=$matches[1]\";s:60:\" thẻ sản phẩm/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_tag=$matches[1]&feed=$matches[2]\";s:55:\" thẻ sản phẩm/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_tag=$matches[1]&feed=$matches[2]\";s:36:\" thẻ sản phẩm/([^/]+)/embed/?$\";s:44:\"index.php?product_tag=$matches[1]&embed=true\";s:48:\" thẻ sản phẩm/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?product_tag=$matches[1]&paged=$matches[2]\";s:30:\" thẻ sản phẩm/([^/]+)/?$\";s:33:\"index.php?product_tag=$matches[1]\";s:36:\"san-pham/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:46:\"san-pham/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:66:\"san-pham/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:61:\"san-pham/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:61:\"san-pham/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:42:\"san-pham/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:25:\"san-pham/([^/]+)/embed/?$\";s:40:\"index.php?product=$matches[1]&embed=true\";s:29:\"san-pham/([^/]+)/trackback/?$\";s:34:\"index.php?product=$matches[1]&tb=1\";s:49:\"san-pham/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?product=$matches[1]&feed=$matches[2]\";s:44:\"san-pham/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?product=$matches[1]&feed=$matches[2]\";s:37:\"san-pham/([^/]+)/page/?([0-9]{1,})/?$\";s:47:\"index.php?product=$matches[1]&paged=$matches[2]\";s:44:\"san-pham/([^/]+)/comment-page-([0-9]{1,})/?$\";s:47:\"index.php?product=$matches[1]&cpage=$matches[2]\";s:34:\"san-pham/([^/]+)/wc-api(/(.*))?/?$\";s:48:\"index.php?product=$matches[1]&wc-api=$matches[3]\";s:40:\"san-pham/[^/]+/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:51:\"san-pham/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:33:\"san-pham/([^/]+)(?:/([0-9]+))?/?$\";s:46:\"index.php?product=$matches[1]&page=$matches[2]\";s:25:\"san-pham/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:35:\"san-pham/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:55:\"san-pham/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:50:\"san-pham/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:50:\"san-pham/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:31:\"san-pham/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:17:\"wc-api(/(.*))?/?$\";s:29:\"index.php?&wc-api=$matches[2]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:26:\"comments/wc-api(/(.*))?/?$\";s:29:\"index.php?&wc-api=$matches[2]\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:29:\"search/(.+)/wc-api(/(.*))?/?$\";s:42:\"index.php?s=$matches[1]&wc-api=$matches[3]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:32:\"author/([^/]+)/wc-api(/(.*))?/?$\";s:52:\"index.php?author_name=$matches[1]&wc-api=$matches[3]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:54:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/wc-api(/(.*))?/?$\";s:82:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&wc-api=$matches[5]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:41:\"([0-9]{4})/([0-9]{1,2})/wc-api(/(.*))?/?$\";s:66:\"index.php?year=$matches[1]&monthnum=$matches[2]&wc-api=$matches[4]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:28:\"([0-9]{4})/wc-api(/(.*))?/?$\";s:45:\"index.php?year=$matches[1]&wc-api=$matches[3]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:25:\"(.?.+?)/wc-api(/(.*))?/?$\";s:49:\"index.php?pagename=$matches[1]&wc-api=$matches[3]\";s:28:\"(.?.+?)/order-pay(/(.*))?/?$\";s:52:\"index.php?pagename=$matches[1]&order-pay=$matches[3]\";s:33:\"(.?.+?)/order-received(/(.*))?/?$\";s:57:\"index.php?pagename=$matches[1]&order-received=$matches[3]\";s:25:\"(.?.+?)/orders(/(.*))?/?$\";s:49:\"index.php?pagename=$matches[1]&orders=$matches[3]\";s:29:\"(.?.+?)/view-order(/(.*))?/?$\";s:53:\"index.php?pagename=$matches[1]&view-order=$matches[3]\";s:28:\"(.?.+?)/downloads(/(.*))?/?$\";s:52:\"index.php?pagename=$matches[1]&downloads=$matches[3]\";s:31:\"(.?.+?)/edit-account(/(.*))?/?$\";s:55:\"index.php?pagename=$matches[1]&edit-account=$matches[3]\";s:31:\"(.?.+?)/edit-address(/(.*))?/?$\";s:55:\"index.php?pagename=$matches[1]&edit-address=$matches[3]\";s:34:\"(.?.+?)/payment-methods(/(.*))?/?$\";s:58:\"index.php?pagename=$matches[1]&payment-methods=$matches[3]\";s:32:\"(.?.+?)/lost-password(/(.*))?/?$\";s:56:\"index.php?pagename=$matches[1]&lost-password=$matches[3]\";s:34:\"(.?.+?)/customer-logout(/(.*))?/?$\";s:58:\"index.php?pagename=$matches[1]&customer-logout=$matches[3]\";s:37:\"(.?.+?)/add-payment-method(/(.*))?/?$\";s:61:\"index.php?pagename=$matches[1]&add-payment-method=$matches[3]\";s:40:\"(.?.+?)/delete-payment-method(/(.*))?/?$\";s:64:\"index.php?pagename=$matches[1]&delete-payment-method=$matches[3]\";s:45:\"(.?.+?)/set-default-payment-method(/(.*))?/?$\";s:69:\"index.php?pagename=$matches[1]&set-default-payment-method=$matches[3]\";s:31:\".?.+?/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:42:\".?.+?/attachment/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";s:27:\"[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\"[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\"[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"([^/]+)/embed/?$\";s:37:\"index.php?name=$matches[1]&embed=true\";s:20:\"([^/]+)/trackback/?$\";s:31:\"index.php?name=$matches[1]&tb=1\";s:40:\"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:35:\"([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:28:\"([^/]+)/page/?([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&paged=$matches[2]\";s:35:\"([^/]+)/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&cpage=$matches[2]\";s:25:\"([^/]+)/wc-api(/(.*))?/?$\";s:45:\"index.php?name=$matches[1]&wc-api=$matches[3]\";s:31:\"[^/]+/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:42:\"[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:24:\"([^/]+)(?:/([0-9]+))?/?$\";s:43:\"index.php?name=$matches[1]&page=$matches[2]\";s:16:\"[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:26:\"[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:46:\"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:22:\"[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";}', 'yes'),
(343, 'metaslider_systemcheck', 'a:2:{s:16:\"wordPressVersion\";b:0;s:12:\"imageLibrary\";b:0;}', 'no'),
(344, 'ml-slider_children', 'a:0:{}', 'yes'),
(349, 'ure_role_additional_options_values', 'a:1:{s:12:\"shop_manager\";a:0:{}}', 'yes'),
(353, 'wpseo_sitemap_author_cache_validator', 'Dh1X', 'no'),
(356, 'wpseo_sitemap_post_cache_validator', '381mf', 'no'),
(374, 'wpseo_sitemap_category_cache_validator', '3Byf1', 'no'),
(378, 'wpseo_sitemap_product_cat_cache_validator', '3G5Qk', 'no'),
(385, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}', 'yes'),
(386, '_transient_product_query-transient-version', '1509358615', 'yes'),
(387, '_transient_product-transient-version', '1509358615', 'yes'),
(390, 'count_per_day_online', 'a:0:{}', 'yes'),
(402, 'wpseo_sitemap_42_cache_validator', 'dw7x', 'no'),
(407, 'wpseo_sitemap_46_cache_validator', '3471g', 'no'),
(411, 'wpseo_sitemap_48_cache_validator', '346Zj', 'no'),
(413, 'wpseo_sitemap_50_cache_validator', '346Xy', 'no'),
(430, 'count_per_day_search', 'a:1:{s:10:\"2017-06-15\";a:2:{i:0;s:2:\"ro\";i:1;s:4:\"nano\";}}', 'yes'),
(472, 'woocommerce_permalinks', 'a:4:{s:13:\"category_base\";s:8:\"danh-muc\";s:8:\"tag_base\";s:0:\"\";s:14:\"attribute_base\";s:0:\"\";s:12:\"product_base\";s:9:\"/san-pham\";}', 'yes'),
(480, 'wpseo_sitemap_18_cache_validator', '2tu2', 'no'),
(507, 'widget_rt_widget_product', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(508, 'widget_rt_widget_archive', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(509, 'widget_rt_widget_post', 'a:3:{i:2;a:13:{s:5:\"title\";s:9:\"Tin tức\";s:2:\"on\";N;s:5:\"slide\";s:8:\"vertical\";s:7:\"numberp\";s:1:\"5\";s:6:\"numbsl\";s:1:\"1\";s:8:\"numbshow\";s:1:\"3\";s:10:\"speedslide\";s:4:\"1000\";s:3:\"tax\";s:1:\"2\";s:9:\"thumbnail\";s:1:\"1\";s:7:\"stthumb\";s:10:\"align-left\";s:8:\"fstthumb\";N;s:7:\"excerpt\";s:1:\"1\";s:8:\"nbexerpt\";s:3:\"100\";}i:3;a:13:{s:5:\"title\";s:23:\"Tin tức & Sự kiện\";s:2:\"on\";N;s:5:\"slide\";s:8:\"vertical\";s:7:\"numberp\";s:1:\"4\";s:6:\"numbsl\";s:0:\"\";s:8:\"numbshow\";s:0:\"\";s:10:\"speedslide\";s:4:\"1000\";s:3:\"tax\";s:1:\"2\";s:9:\"thumbnail\";s:1:\"1\";s:7:\"stthumb\";s:6:\"normal\";s:8:\"fstthumb\";N;s:7:\"excerpt\";N;s:8:\"nbexerpt\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(510, 'widget_rt_widget_tab', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(511, 'woocommerce_enable_reviews', 'yes', 'yes'),
(584, 'wpseo_sitemap_63_cache_validator', '4yd4s', 'no'),
(589, 'wpseo_sitemap_65_cache_validator', '4yd6e', 'no'),
(636, '_transient_timeout_plugin_slugs', '1509441491', 'no'),
(637, '_transient_plugin_slugs', 'a:13:{i:0;s:59:\"black-studio-tinymce-widget/black-studio-tinymce-widget.php\";i:1;s:36:\"contact-form-7/wp-contact-form-7.php\";i:2;s:25:\"count-per-day/counter.php\";i:3;s:33:\"duplicate-post/duplicate-post.php\";i:4;s:53:\"float-left-right-advertising/float_left_right_ads.php\";i:5;s:25:\"menu-icons/menu-icons.php\";i:6;s:23:\"ml-slider/ml-slider.php\";i:7;s:47:\"regenerate-thumbnails/regenerate-thumbnails.php\";i:8;s:37:\"tinymce-advanced/tinymce-advanced.php\";i:9;s:37:\"user-role-editor/user-role-editor.php\";i:10;s:27:\"woocommerce/woocommerce.php\";i:11;s:19:\"wp-smtp/wp-smtp.php\";i:12;s:24:\"wordpress-seo/wp-seo.php\";}', 'no'),
(644, 'widget_black-studio-tinymce', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(663, 'widget_woocommerce_price_filter', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(777, '_transient_yoast_i18n_wordpress-seo_promo_hide', '1', 'yes'),
(804, 'wpseo_sitemap_13_cache_validator', 'R2ri', 'no'),
(805, 'wpseo_sitemap_54_cache_validator', 'R2sW', 'no'),
(853, 'loginizer_ins_time', '1500544359', 'yes'),
(854, 'loginizer_promo_time', '1500544359', 'yes'),
(991, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(997, 'auto_core_update_notified', 'a:4:{s:4:\"type\";s:7:\"success\";s:5:\"email\";s:25:\"mailtrunggian01@gmail.com\";s:7:\"version\";s:5:\"4.8.1\";s:9:\"timestamp\";i:1501725262;}', 'no'),
(1045, 'wpseo_sitemap_67_cache_validator', '4yd5F', 'no'),
(1187, 'widget_rt-widget-text', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(1240, '_transient_wc_attribute_taxonomies', 'a:0:{}', 'yes'),
(1249, 'wpseo_sitemap_40_cache_validator', '3473K', 'no'),
(1260, 'wpseo_sitemap_28_cache_validator', '37XH5', 'no'),
(1261, 'wpseo_sitemap_35_cache_validator', '37XGQ', 'no'),
(1262, 'wpseo_sitemap_36_cache_validator', '37XGo', 'no'),
(1263, 'wpseo_sitemap_37_cache_validator', '37XGa', 'no'),
(1264, 'wpseo_sitemap_38_cache_validator', '37XFH', 'no'),
(1265, 'wpseo_sitemap_39_cache_validator', '37XEY', 'no'),
(1266, 'wpseo_sitemap_23_cache_validator', 'dxIi', 'no'),
(1267, 'wpseo_sitemap_24_cache_validator', '34mVB', 'no'),
(1268, 'wpseo_sitemap_25_cache_validator', '34mZA', 'no'),
(1269, 'wpseo_sitemap_26_cache_validator', '34n4U', 'no'),
(1270, 'wpseo_sitemap_27_cache_validator', '34n6S', 'no'),
(1282, 'widget_video-widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(1301, 'wpseo_sitemap_83_cache_validator', '2U8jR', 'no'),
(1305, 'wpseo_sitemap_85_cache_validator', '2UesA', 'no'),
(1309, 'wpseo_sitemap_87_cache_validator', '2Uod4', 'no'),
(1313, 'wpseo_sitemap_89_cache_validator', '2UtUk', 'no'),
(1317, 'wpseo_sitemap_91_cache_validator', '2UzTK', 'no'),
(1321, 'wpseo_sitemap_93_cache_validator', '2UFxK', 'no'),
(1325, 'wpseo_sitemap_95_cache_validator', 'cGht', 'no'),
(1329, 'wpseo_sitemap_97_cache_validator', '2USVD', 'no'),
(1344, 'wpseo_taxonomy_meta', 'a:2:{s:11:\"product_cat\";a:3:{i:31;a:2:{s:13:\"wpseo_linkdex\";s:2:\"-9\";s:19:\"wpseo_content_score\";s:2:\"30\";}i:30;a:2:{s:13:\"wpseo_linkdex\";s:2:\"-9\";s:19:\"wpseo_content_score\";s:2:\"30\";}i:26;a:2:{s:13:\"wpseo_linkdex\";s:2:\"-9\";s:19:\"wpseo_content_score\";s:2:\"30\";}}s:8:\"category\";a:1:{i:33;a:2:{s:13:\"wpseo_linkdex\";s:2:\"-2\";s:19:\"wpseo_content_score\";s:2:\"30\";}}}', 'yes'),
(1395, 'wpseo_sitemap_17_cache_validator', '3oAy6', 'no'),
(1460, '_site_transient_update_themes', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1509350853;s:7:\"checked\";a:1:{s:2:\"RT\";s:5:\"1.0.0\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}}', 'no'),
(1479, 'widget_cs-text-widget', 'a:3:{i:3;a:2:{s:5:\"title\";s:0:\"\";s:7:\"content\";s:0:\"\";}i:4;a:2:{s:5:\"title\";s:0:\"\";s:7:\"content\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(1694, '_transient_timeout_external_ip_address_27.76.234.94', '1508949212', 'no'),
(1695, '_transient_external_ip_address_27.76.234.94', '115.146.122.250', 'no'),
(1698, '_transient_timeout_external_ip_address_118.70.178.100', '1509095701', 'no'),
(1699, '_transient_external_ip_address_118.70.178.100', '115.146.122.250', 'no'),
(1718, '_transient_timeout_wpseo-dashboard-totals', '1508742330', 'no'),
(1719, '_transient_wpseo-dashboard-totals', 'a:1:{i:1;a:1:{i:3;a:5:{s:8:\"seo_rank\";s:2:\"na\";s:5:\"title\";s:27:\"Posts without focus keyword\";s:5:\"class\";s:15:\"wpseo-glance-na\";s:10:\"icon_class\";s:2:\"na\";s:5:\"count\";s:1:\"9\";}}}', 'no'),
(1720, '_transient_timeout_wc_upgrade_notice_3.1.2', '1508742365', 'no'),
(1721, '_transient_wc_upgrade_notice_3.1.2', '', 'no'),
(1728, 'woocommerce_store_address', '', 'yes'),
(1729, 'woocommerce_store_address_2', '', 'yes'),
(1730, 'woocommerce_store_city', '', 'yes'),
(1731, 'woocommerce_store_postcode', '', 'yes'),
(1732, 'woocommerce_version', '3.2.1', 'yes'),
(1733, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1509355084;s:7:\"checked\";a:13:{s:59:\"black-studio-tinymce-widget/black-studio-tinymce-widget.php\";s:5:\"2.5.1\";s:36:\"contact-form-7/wp-contact-form-7.php\";s:3:\"4.9\";s:25:\"count-per-day/counter.php\";s:5:\"3.5.7\";s:33:\"duplicate-post/duplicate-post.php\";s:3:\"3.2\";s:53:\"float-left-right-advertising/float_left_right_ads.php\";s:5:\"2.0.1\";s:25:\"menu-icons/menu-icons.php\";s:6:\"0.10.2\";s:23:\"ml-slider/ml-slider.php\";s:5:\"3.5.1\";s:47:\"regenerate-thumbnails/regenerate-thumbnails.php\";s:5:\"2.3.1\";s:37:\"tinymce-advanced/tinymce-advanced.php\";s:5:\"4.6.3\";s:37:\"user-role-editor/user-role-editor.php\";s:6:\"4.36.1\";s:27:\"woocommerce/woocommerce.php\";s:5:\"3.2.1\";s:19:\"wp-smtp/wp-smtp.php\";s:5:\"1.1.9\";s:24:\"wordpress-seo/wp-seo.php\";s:5:\"5.6.1\";}s:8:\"response\";a:1:{s:24:\"wordpress-seo/wp-seo.php\";O:8:\"stdClass\":11:{s:2:\"id\";s:27:\"w.org/plugins/wordpress-seo\";s:4:\"slug\";s:13:\"wordpress-seo\";s:6:\"plugin\";s:24:\"wordpress-seo/wp-seo.php\";s:11:\"new_version\";s:5:\"5.7.1\";s:3:\"url\";s:44:\"https://wordpress.org/plugins/wordpress-seo/\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/plugin/wordpress-seo.5.7.1.zip\";s:5:\"icons\";a:4:{s:2:\"1x\";s:66:\"https://ps.w.org/wordpress-seo/assets/icon-128x128.png?rev=1550389\";s:2:\"2x\";s:66:\"https://ps.w.org/wordpress-seo/assets/icon-256x256.png?rev=1550389\";s:3:\"svg\";s:58:\"https://ps.w.org/wordpress-seo/assets/icon.svg?rev=1203032\";s:7:\"default\";s:58:\"https://ps.w.org/wordpress-seo/assets/icon.svg?rev=1203032\";}s:7:\"banners\";a:3:{s:2:\"2x\";s:69:\"https://ps.w.org/wordpress-seo/assets/banner-1544x500.png?rev=1695112\";s:2:\"1x\";s:68:\"https://ps.w.org/wordpress-seo/assets/banner-772x250.png?rev=1695112\";s:7:\"default\";s:69:\"https://ps.w.org/wordpress-seo/assets/banner-1544x500.png?rev=1695112\";}s:11:\"banners_rtl\";a:3:{s:2:\"2x\";s:73:\"https://ps.w.org/wordpress-seo/assets/banner-1544x500-rtl.png?rev=1695112\";s:2:\"1x\";s:72:\"https://ps.w.org/wordpress-seo/assets/banner-772x250-rtl.png?rev=1695112\";s:7:\"default\";s:73:\"https://ps.w.org/wordpress-seo/assets/banner-1544x500-rtl.png?rev=1695112\";}s:6:\"tested\";s:5:\"4.8.2\";s:13:\"compatibility\";O:8:\"stdClass\":0:{}}}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:12:{s:59:\"black-studio-tinymce-widget/black-studio-tinymce-widget.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:41:\"w.org/plugins/black-studio-tinymce-widget\";s:4:\"slug\";s:27:\"black-studio-tinymce-widget\";s:6:\"plugin\";s:59:\"black-studio-tinymce-widget/black-studio-tinymce-widget.php\";s:11:\"new_version\";s:5:\"2.5.1\";s:3:\"url\";s:58:\"https://wordpress.org/plugins/black-studio-tinymce-widget/\";s:7:\"package\";s:76:\"https://downloads.wordpress.org/plugin/black-studio-tinymce-widget.2.5.1.zip\";s:5:\"icons\";a:3:{s:2:\"1x\";s:80:\"https://ps.w.org/black-studio-tinymce-widget/assets/icon-128x128.png?rev=1002774\";s:2:\"2x\";s:80:\"https://ps.w.org/black-studio-tinymce-widget/assets/icon-256x256.png?rev=1002774\";s:7:\"default\";s:80:\"https://ps.w.org/black-studio-tinymce-widget/assets/icon-256x256.png?rev=1002774\";}s:7:\"banners\";a:3:{s:2:\"2x\";s:83:\"https://ps.w.org/black-studio-tinymce-widget/assets/banner-1544x500.png?rev=1002774\";s:2:\"1x\";s:82:\"https://ps.w.org/black-studio-tinymce-widget/assets/banner-772x250.png?rev=1002774\";s:7:\"default\";s:83:\"https://ps.w.org/black-studio-tinymce-widget/assets/banner-1544x500.png?rev=1002774\";}s:11:\"banners_rtl\";a:0:{}}s:36:\"contact-form-7/wp-contact-form-7.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:28:\"w.org/plugins/contact-form-7\";s:4:\"slug\";s:14:\"contact-form-7\";s:6:\"plugin\";s:36:\"contact-form-7/wp-contact-form-7.php\";s:11:\"new_version\";s:3:\"4.9\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/contact-form-7/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/plugin/contact-form-7.4.9.zip\";s:5:\"icons\";a:3:{s:2:\"1x\";s:66:\"https://ps.w.org/contact-form-7/assets/icon-128x128.png?rev=984007\";s:2:\"2x\";s:66:\"https://ps.w.org/contact-form-7/assets/icon-256x256.png?rev=984007\";s:7:\"default\";s:66:\"https://ps.w.org/contact-form-7/assets/icon-256x256.png?rev=984007\";}s:7:\"banners\";a:3:{s:2:\"2x\";s:69:\"https://ps.w.org/contact-form-7/assets/banner-1544x500.png?rev=860901\";s:2:\"1x\";s:68:\"https://ps.w.org/contact-form-7/assets/banner-772x250.png?rev=880427\";s:7:\"default\";s:69:\"https://ps.w.org/contact-form-7/assets/banner-1544x500.png?rev=860901\";}s:11:\"banners_rtl\";a:0:{}}s:25:\"count-per-day/counter.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:27:\"w.org/plugins/count-per-day\";s:4:\"slug\";s:13:\"count-per-day\";s:6:\"plugin\";s:25:\"count-per-day/counter.php\";s:11:\"new_version\";s:5:\"3.5.7\";s:3:\"url\";s:44:\"https://wordpress.org/plugins/count-per-day/\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/plugin/count-per-day.3.5.7.zip\";s:5:\"icons\";a:3:{s:2:\"1x\";s:65:\"https://ps.w.org/count-per-day/assets/icon-128x128.png?rev=987085\";s:2:\"2x\";s:65:\"https://ps.w.org/count-per-day/assets/icon-256x256.png?rev=987085\";s:7:\"default\";s:65:\"https://ps.w.org/count-per-day/assets/icon-256x256.png?rev=987085\";}s:7:\"banners\";a:2:{s:2:\"1x\";s:67:\"https://ps.w.org/count-per-day/assets/banner-772x250.png?rev=517175\";s:7:\"default\";s:67:\"https://ps.w.org/count-per-day/assets/banner-772x250.png?rev=517175\";}s:11:\"banners_rtl\";a:0:{}}s:33:\"duplicate-post/duplicate-post.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:28:\"w.org/plugins/duplicate-post\";s:4:\"slug\";s:14:\"duplicate-post\";s:6:\"plugin\";s:33:\"duplicate-post/duplicate-post.php\";s:11:\"new_version\";s:3:\"3.2\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/duplicate-post/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/plugin/duplicate-post.3.2.zip\";s:5:\"icons\";a:3:{s:2:\"1x\";s:67:\"https://ps.w.org/duplicate-post/assets/icon-128x128.png?rev=1612753\";s:2:\"2x\";s:67:\"https://ps.w.org/duplicate-post/assets/icon-256x256.png?rev=1612753\";s:7:\"default\";s:67:\"https://ps.w.org/duplicate-post/assets/icon-256x256.png?rev=1612753\";}s:7:\"banners\";a:2:{s:2:\"1x\";s:69:\"https://ps.w.org/duplicate-post/assets/banner-772x250.png?rev=1612986\";s:7:\"default\";s:69:\"https://ps.w.org/duplicate-post/assets/banner-772x250.png?rev=1612986\";}s:11:\"banners_rtl\";a:0:{}}s:53:\"float-left-right-advertising/float_left_right_ads.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:42:\"w.org/plugins/float-left-right-advertising\";s:4:\"slug\";s:28:\"float-left-right-advertising\";s:6:\"plugin\";s:53:\"float-left-right-advertising/float_left_right_ads.php\";s:11:\"new_version\";s:3:\"2.0\";s:3:\"url\";s:59:\"https://wordpress.org/plugins/float-left-right-advertising/\";s:7:\"package\";s:71:\"https://downloads.wordpress.org/plugin/float-left-right-advertising.zip\";s:5:\"icons\";a:0:{}s:7:\"banners\";a:2:{s:2:\"1x\";s:82:\"https://ps.w.org/float-left-right-advertising/assets/banner-772x250.jpg?rev=583059\";s:7:\"default\";s:82:\"https://ps.w.org/float-left-right-advertising/assets/banner-772x250.jpg?rev=583059\";}s:11:\"banners_rtl\";a:0:{}}s:25:\"menu-icons/menu-icons.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:24:\"w.org/plugins/menu-icons\";s:4:\"slug\";s:10:\"menu-icons\";s:6:\"plugin\";s:25:\"menu-icons/menu-icons.php\";s:11:\"new_version\";s:6:\"0.10.2\";s:3:\"url\";s:41:\"https://wordpress.org/plugins/menu-icons/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/menu-icons.0.10.2.zip\";s:5:\"icons\";a:0:{}s:7:\"banners\";a:3:{s:2:\"2x\";s:65:\"https://ps.w.org/menu-icons/assets/banner-1544x500.jpg?rev=979807\";s:2:\"1x\";s:64:\"https://ps.w.org/menu-icons/assets/banner-772x250.jpg?rev=979807\";s:7:\"default\";s:65:\"https://ps.w.org/menu-icons/assets/banner-1544x500.jpg?rev=979807\";}s:11:\"banners_rtl\";a:0:{}}s:23:\"ml-slider/ml-slider.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:23:\"w.org/plugins/ml-slider\";s:4:\"slug\";s:9:\"ml-slider\";s:6:\"plugin\";s:23:\"ml-slider/ml-slider.php\";s:11:\"new_version\";s:5:\"3.5.1\";s:3:\"url\";s:40:\"https://wordpress.org/plugins/ml-slider/\";s:7:\"package\";s:58:\"https://downloads.wordpress.org/plugin/ml-slider.3.5.1.zip\";s:5:\"icons\";a:4:{s:2:\"1x\";s:62:\"https://ps.w.org/ml-slider/assets/icon-128x128.png?rev=1000654\";s:2:\"2x\";s:62:\"https://ps.w.org/ml-slider/assets/icon-256x256.png?rev=1000654\";s:3:\"svg\";s:54:\"https://ps.w.org/ml-slider/assets/icon.svg?rev=1000654\";s:7:\"default\";s:54:\"https://ps.w.org/ml-slider/assets/icon.svg?rev=1000654\";}s:7:\"banners\";a:3:{s:2:\"2x\";s:65:\"https://ps.w.org/ml-slider/assets/banner-1544x500.png?rev=1686195\";s:2:\"1x\";s:64:\"https://ps.w.org/ml-slider/assets/banner-772x250.png?rev=1686195\";s:7:\"default\";s:65:\"https://ps.w.org/ml-slider/assets/banner-1544x500.png?rev=1686195\";}s:11:\"banners_rtl\";a:0:{}}s:47:\"regenerate-thumbnails/regenerate-thumbnails.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:35:\"w.org/plugins/regenerate-thumbnails\";s:4:\"slug\";s:21:\"regenerate-thumbnails\";s:6:\"plugin\";s:47:\"regenerate-thumbnails/regenerate-thumbnails.php\";s:11:\"new_version\";s:5:\"2.3.1\";s:3:\"url\";s:52:\"https://wordpress.org/plugins/regenerate-thumbnails/\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/plugin/regenerate-thumbnails.zip\";s:5:\"icons\";a:2:{s:2:\"1x\";s:74:\"https://ps.w.org/regenerate-thumbnails/assets/icon-128x128.png?rev=1753390\";s:7:\"default\";s:74:\"https://ps.w.org/regenerate-thumbnails/assets/icon-128x128.png?rev=1753390\";}s:7:\"banners\";a:3:{s:2:\"2x\";s:77:\"https://ps.w.org/regenerate-thumbnails/assets/banner-1544x500.jpg?rev=1753390\";s:2:\"1x\";s:76:\"https://ps.w.org/regenerate-thumbnails/assets/banner-772x250.jpg?rev=1753390\";s:7:\"default\";s:77:\"https://ps.w.org/regenerate-thumbnails/assets/banner-1544x500.jpg?rev=1753390\";}s:11:\"banners_rtl\";a:0:{}}s:37:\"tinymce-advanced/tinymce-advanced.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:30:\"w.org/plugins/tinymce-advanced\";s:4:\"slug\";s:16:\"tinymce-advanced\";s:6:\"plugin\";s:37:\"tinymce-advanced/tinymce-advanced.php\";s:11:\"new_version\";s:5:\"4.6.3\";s:3:\"url\";s:47:\"https://wordpress.org/plugins/tinymce-advanced/\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/plugin/tinymce-advanced.4.6.3.zip\";s:5:\"icons\";a:3:{s:2:\"1x\";s:68:\"https://ps.w.org/tinymce-advanced/assets/icon-128x128.png?rev=971511\";s:2:\"2x\";s:68:\"https://ps.w.org/tinymce-advanced/assets/icon-256x256.png?rev=971511\";s:7:\"default\";s:68:\"https://ps.w.org/tinymce-advanced/assets/icon-256x256.png?rev=971511\";}s:7:\"banners\";a:2:{s:2:\"1x\";s:70:\"https://ps.w.org/tinymce-advanced/assets/banner-772x250.png?rev=894078\";s:7:\"default\";s:70:\"https://ps.w.org/tinymce-advanced/assets/banner-772x250.png?rev=894078\";}s:11:\"banners_rtl\";a:0:{}}s:37:\"user-role-editor/user-role-editor.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:30:\"w.org/plugins/user-role-editor\";s:4:\"slug\";s:16:\"user-role-editor\";s:6:\"plugin\";s:37:\"user-role-editor/user-role-editor.php\";s:11:\"new_version\";s:6:\"4.36.1\";s:3:\"url\";s:47:\"https://wordpress.org/plugins/user-role-editor/\";s:7:\"package\";s:66:\"https://downloads.wordpress.org/plugin/user-role-editor.4.36.1.zip\";s:5:\"icons\";a:3:{s:2:\"1x\";s:69:\"https://ps.w.org/user-role-editor/assets/icon-128x128.jpg?rev=1020390\";s:2:\"2x\";s:69:\"https://ps.w.org/user-role-editor/assets/icon-256x256.jpg?rev=1020390\";s:7:\"default\";s:69:\"https://ps.w.org/user-role-editor/assets/icon-256x256.jpg?rev=1020390\";}s:7:\"banners\";a:2:{s:2:\"1x\";s:71:\"https://ps.w.org/user-role-editor/assets/banner-772x250.png?rev=1263116\";s:7:\"default\";s:71:\"https://ps.w.org/user-role-editor/assets/banner-772x250.png?rev=1263116\";}s:11:\"banners_rtl\";a:0:{}}s:27:\"woocommerce/woocommerce.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:25:\"w.org/plugins/woocommerce\";s:4:\"slug\";s:11:\"woocommerce\";s:6:\"plugin\";s:27:\"woocommerce/woocommerce.php\";s:11:\"new_version\";s:5:\"3.2.1\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/woocommerce/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/woocommerce.3.2.1.zip\";s:5:\"icons\";a:3:{s:2:\"1x\";s:64:\"https://ps.w.org/woocommerce/assets/icon-128x128.png?rev=1440831\";s:2:\"2x\";s:64:\"https://ps.w.org/woocommerce/assets/icon-256x256.png?rev=1440831\";s:7:\"default\";s:64:\"https://ps.w.org/woocommerce/assets/icon-256x256.png?rev=1440831\";}s:7:\"banners\";a:3:{s:2:\"2x\";s:67:\"https://ps.w.org/woocommerce/assets/banner-1544x500.png?rev=1629184\";s:2:\"1x\";s:66:\"https://ps.w.org/woocommerce/assets/banner-772x250.png?rev=1629184\";s:7:\"default\";s:67:\"https://ps.w.org/woocommerce/assets/banner-1544x500.png?rev=1629184\";}s:11:\"banners_rtl\";a:0:{}}s:19:\"wp-smtp/wp-smtp.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:21:\"w.org/plugins/wp-smtp\";s:4:\"slug\";s:7:\"wp-smtp\";s:6:\"plugin\";s:19:\"wp-smtp/wp-smtp.php\";s:11:\"new_version\";s:5:\"1.1.9\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/wp-smtp/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/wp-smtp.1.1.9.zip\";s:5:\"icons\";a:0:{}s:7:\"banners\";a:0:{}s:11:\"banners_rtl\";a:0:{}}}}', 'no'),
(1734, 'wpseo_license_server_version', '2', 'yes'),
(1739, 'woocommerce_db_version', '3.2.1', 'yes'),
(1742, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:62:\"https://downloads.wordpress.org/release/vi/wordpress-4.8.2.zip\";s:6:\"locale\";s:2:\"vi\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:62:\"https://downloads.wordpress.org/release/vi/wordpress-4.8.2.zip\";s:10:\"no_content\";b:0;s:11:\"new_bundled\";b:0;s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"4.8.2\";s:7:\"version\";s:5:\"4.8.2\";s:11:\"php_version\";s:5:\"5.2.4\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"4.7\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1509350848;s:15:\"version_checked\";s:5:\"4.8.2\";s:12:\"translations\";a:0:{}}', 'no'),
(1743, 'widget_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(1760, '_transient_timeout_external_ip_address_::1', '1509955647', 'no'),
(1761, '_transient_external_ip_address_::1', '0.0.0.0', 'no'),
(1766, 'wpseo_sitemap_105_cache_validator', '38hI3', 'no'),
(1776, '_site_transient_timeout_theme_roots', '1509356879', 'no'),
(1777, '_site_transient_theme_roots', 'a:1:{s:2:\"RT\";s:7:\"/themes\";}', 'no'),
(1778, '_transient_timeout__woocommerce_helper_updates', '1509398279', 'no'),
(1779, '_transient__woocommerce_helper_updates', 'a:4:{s:4:\"hash\";s:32:\"d751713988987e9331980363e24189ce\";s:7:\"updated\";i:1509355079;s:8:\"products\";a:0:{}s:6:\"errors\";a:1:{i:0;s:10:\"http-error\";}}', 'no'),
(1783, 'wpseo_sitemap_20_cache_validator', '3BkAv', 'no'),
(1784, 'wpseo_sitemap_21_cache_validator', '3BkBA', 'no'),
(1791, 'category_children', 'a:0:{}', 'yes'),
(1811, 'wpseo_sitemap_99_cache_validator', 'gRLn', 'no'),
(1812, 'wpseo_sitemap_100_cache_validator', 'gRLV', 'no'),
(1813, 'wpseo_sitemap_101_cache_validator', '3BExy', 'no'),
(1814, 'wpseo_sitemap_102_cache_validator', '3BEye', 'no'),
(1815, 'wpseo_sitemap_103_cache_validator', '3BEyL', 'no'),
(1816, 'wpseo_sitemap_104_cache_validator', '3BEzj', 'no'),
(1825, 'product_cat_children', 'a:0:{}', 'yes'),
(1826, '_transient_timeout_cs-taxonomy-transient', '1509357861', 'no'),
(1827, '_transient_cs-taxonomy-transient', 'a:0:{}', 'no'),
(1836, 'duplicate_post_title_prefix', '', 'yes'),
(1837, 'duplicate_post_title_suffix', '', 'yes'),
(1838, 'duplicate_post_increase_menu_order_by', '', 'yes'),
(1839, 'duplicate_post_roles', 'a:4:{i:0;s:13:\"administrator\";i:1;s:6:\"editor\";i:2;s:13:\"wpseo_manager\";i:3;s:12:\"wpseo_editor\";}', 'yes'),
(1853, 'wpseo_sitemap_22_cache_validator', '3FDM9', 'no'),
(1854, 'wpseo_sitemap_60_cache_validator', '3FKhz', 'no'),
(1855, 'wpseo_sitemap_61_cache_validator', '3FKjr', 'no'),
(1860, '_transient_timeout_wc_related_104', '1509444997', 'no'),
(1861, '_transient_wc_related_104', 'a:23:{i:0;s:3:\"143\";i:1;s:3:\"144\";i:2;s:3:\"145\";i:3;s:3:\"146\";i:4;s:3:\"147\";i:5;s:3:\"148\";i:6;s:3:\"149\";i:7;s:3:\"150\";i:8;s:3:\"151\";i:9;s:3:\"152\";i:10;s:3:\"153\";i:11;s:3:\"154\";i:12;s:3:\"155\";i:13;s:3:\"156\";i:14;s:3:\"157\";i:15;s:3:\"158\";i:16;s:3:\"159\";i:17;s:3:\"160\";i:18;s:3:\"161\";i:19;s:3:\"162\";i:20;s:3:\"163\";i:21;s:3:\"164\";i:22;s:3:\"165\";}', 'no'),
(1862, '_transient_timeout_cs-metabox-transient', '1509358625', 'no'),
(1863, '_transient_cs-metabox-transient', 'a:2:{s:3:\"ids\";a:2:{s:10:\"rt_sidebar\";s:17:\"overwrite_sidebar\";s:20:\"_custom_post_options\";s:9:\"section_4\";}s:6:\"errors\";a:0:{}}', 'no'),
(1864, '_transient_is_multi_author', '0', 'yes'),
(1865, '_transient_timeout_wc_term_counts', '1511950619', 'no'),
(1866, '_transient_wc_term_counts', 'a:7:{i:43;s:2:\"24\";i:42;s:2:\"24\";i:40;s:2:\"24\";i:39;s:2:\"24\";i:38;s:2:\"24\";i:37;s:2:\"24\";i:41;s:2:\"24\";}', 'no'),
(1867, '_transient_timeout_cs-framework-transient', '1509358643', 'no'),
(1868, '_transient_cs-framework-transient', 'a:2:{s:6:\"errors\";a:0:{}s:10:\"section_id\";s:15:\"product_setting\";}', 'no'),
(1869, '_transient_timeout_settings_errors', '1509358663', 'no'),
(1870, '_transient_settings_errors', 'a:1:{i:0;a:4:{s:7:\"setting\";s:7:\"general\";s:4:\"code\";s:16:\"settings_updated\";s:7:\"message\";s:28:\"Đã lưu mọi cài đặt.\";s:4:\"type\";s:7:\"updated\";}}', 'no');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `rt_postmeta`
--

CREATE TABLE `rt_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `rt_postmeta`
--

INSERT INTO `rt_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(6, 2, '_edit_lock', '1506303982:1'),
(7, 2, '_edit_last', '1'),
(8, 2, 'rt_sidebar', 'a:4:{s:4:\"area\";s:4:\"left\";s:17:\"left_sidebar_name\";s:9:\"sidebar-1\";s:18:\"right_sidebar_name\";s:9:\"sidebar-2\";s:12:\"is_overwrite\";b:0;}'),
(9, 6, '_form', '<div class=\"row\">\n<div class=\"col-md-6 col-sm-6\">[text* your-name placeholder\"Họ tên\"]</div>\n<div class=\"col-md-6 col-sm-6\">[tel* your-tel placeholder\"Số điện thoại\"]</div>\n<div class=\"col-md-6 col-sm-6\">[email* your-email placeholder\"Email\"]</div>\n<div class=\"col-md-6 col-sm-6\">[text your-subject placeholder\"Tiêu đề\"]</div>\n<div class=\"col-md-12 col-sm-12\">[textarea your-message placeholder\"Nội dung\"] </div>\n</div>\n[submit \"Gửi\"]\n<style>\n.wpcf7-form-control:not(.wpcf7-submit) { padding: 5px 10px; margin: 15px 0;}\n</style>'),
(10, 6, '_mail', 'a:9:{s:6:\"active\";b:1;s:7:\"subject\";s:26:\"RT - Core \"[your-subject]\"\";s:6:\"sender\";s:40:\"[your-name] <wordpress@raothue.ddns.net>\";s:9:\"recipient\";s:25:\"mailtrunggian01@gmail.com\";s:4:\"body\";s:132:\"Gửi từ: [your-name] \nEmail: [your-email]\nSố điện thoại: [your-tel]\nTiêu đê: [your-subject]\n\nNội dung:\n[your-message]\";s:18:\"additional_headers\";s:22:\"Reply-To: [your-email]\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:0;s:13:\"exclude_blank\";b:0;}'),
(11, 6, '_mail_2', 'a:9:{s:6:\"active\";b:0;s:7:\"subject\";s:26:\"RT - Core \"[your-subject]\"\";s:6:\"sender\";s:38:\"RT - Core <wordpress@raothue.ddns.net>\";s:9:\"recipient\";s:12:\"[your-email]\";s:4:\"body\";s:126:\"Message Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on RT - Core (http://raothue.ddns.net/demo/rt-core)\";s:18:\"additional_headers\";s:34:\"Reply-To: phamtuan170291@gmail.com\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:0;s:13:\"exclude_blank\";b:0;}'),
(12, 6, '_messages', 'a:23:{s:12:\"mail_sent_ok\";s:45:\"Thank you for your message. It has been sent.\";s:12:\"mail_sent_ng\";s:71:\"There was an error trying to send your message. Please try again later.\";s:16:\"validation_error\";s:61:\"One or more fields have an error. Please check and try again.\";s:4:\"spam\";s:71:\"There was an error trying to send your message. Please try again later.\";s:12:\"accept_terms\";s:69:\"You must accept the terms and conditions before sending your message.\";s:16:\"invalid_required\";s:22:\"The field is required.\";s:16:\"invalid_too_long\";s:22:\"The field is too long.\";s:17:\"invalid_too_short\";s:23:\"The field is too short.\";s:12:\"invalid_date\";s:29:\"The date format is incorrect.\";s:14:\"date_too_early\";s:44:\"The date is before the earliest one allowed.\";s:13:\"date_too_late\";s:41:\"The date is after the latest one allowed.\";s:13:\"upload_failed\";s:46:\"There was an unknown error uploading the file.\";s:24:\"upload_file_type_invalid\";s:49:\"You are not allowed to upload files of this type.\";s:21:\"upload_file_too_large\";s:20:\"The file is too big.\";s:23:\"upload_failed_php_error\";s:38:\"There was an error uploading the file.\";s:14:\"invalid_number\";s:29:\"The number format is invalid.\";s:16:\"number_too_small\";s:47:\"The number is smaller than the minimum allowed.\";s:16:\"number_too_large\";s:46:\"The number is larger than the maximum allowed.\";s:23:\"quiz_answer_not_correct\";s:36:\"The answer to the quiz is incorrect.\";s:17:\"captcha_not_match\";s:31:\"Your entered code is incorrect.\";s:13:\"invalid_email\";s:38:\"The e-mail address entered is invalid.\";s:11:\"invalid_url\";s:19:\"The URL is invalid.\";s:11:\"invalid_tel\";s:32:\"The telephone number is invalid.\";}'),
(13, 6, '_additional_settings', ''),
(14, 6, '_locale', 'vi'),
(18, 12, 'ml-slider_settings', 'a:35:{s:4:\"type\";s:4:\"nivo\";s:6:\"random\";s:5:\"false\";s:8:\"cssClass\";s:0:\"\";s:8:\"printCss\";s:4:\"true\";s:7:\"printJs\";s:4:\"true\";s:5:\"width\";s:3:\"745\";s:6:\"height\";s:3:\"300\";s:3:\"spw\";s:1:\"7\";s:3:\"sph\";s:1:\"5\";s:5:\"delay\";s:4:\"3000\";s:6:\"sDelay\";i:30;s:7:\"opacity\";d:0.69999999999999996;s:10:\"titleSpeed\";i:500;s:6:\"effect\";s:6:\"random\";s:10:\"navigation\";s:5:\"false\";s:5:\"links\";s:4:\"true\";s:10:\"hoverPause\";s:4:\"true\";s:5:\"theme\";s:7:\"default\";s:9:\"direction\";s:10:\"horizontal\";s:7:\"reverse\";s:5:\"false\";s:14:\"animationSpeed\";s:3:\"600\";s:8:\"prevText\";s:1:\"<\";s:8:\"nextText\";s:1:\">\";s:6:\"slices\";s:2:\"15\";s:6:\"center\";s:5:\"false\";s:9:\"smartCrop\";s:4:\"true\";s:12:\"carouselMode\";s:5:\"false\";s:14:\"carouselMargin\";s:1:\"5\";s:6:\"easing\";s:6:\"linear\";s:8:\"autoPlay\";s:4:\"true\";s:11:\"thumb_width\";i:150;s:12:\"thumb_height\";i:100;s:9:\"fullWidth\";s:4:\"true\";s:10:\"noConflict\";s:5:\"false\";s:12:\"smoothHeight\";s:5:\"false\";}'),
(22, 15, '_edit_last', '1'),
(23, 15, '_edit_lock', '1497508416:1'),
(24, 15, 'rt_sidebar', 'a:4:{s:4:\"area\";s:4:\"left\";s:17:\"left_sidebar_name\";s:9:\"sidebar-1\";s:18:\"right_sidebar_name\";s:9:\"sidebar-2\";s:12:\"is_overwrite\";b:0;}'),
(25, 15, '_yoast_wpseo_content_score', '30'),
(44, 19, '_menu_item_type', 'post_type'),
(45, 19, '_menu_item_menu_item_parent', '0'),
(46, 19, '_menu_item_object_id', '15'),
(47, 19, '_menu_item_object', 'page'),
(48, 19, '_menu_item_target', ''),
(49, 19, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(50, 19, '_menu_item_xfn', ''),
(51, 19, '_menu_item_url', ''),
(431, 53, '_wp_attachment_image_alt', ''),
(432, 53, 'ml-slider_type', 'image'),
(434, 53, 'ml-slider_crop_position', 'center-center'),
(539, 74, '_wp_attached_file', '2017/09/1.jpg'),
(540, 74, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1600;s:6:\"height\";i:1200;s:4:\"file\";s:13:\"2017/09/1.jpg\";s:5:\"sizes\";a:7:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:13:\"1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:13:\"1-300x225.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:225;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:13:\"1-768x576.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:576;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:14:\"1-1024x768.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:13:\"1-180x135.jpg\";s:5:\"width\";i:180;s:6:\"height\";i:135;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:13:\"1-300x225.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:225;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:13:\"1-600x450.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:450;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(541, 75, '_wp_attached_file', '2017/09/2.jpg'),
(542, 75, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1600;s:6:\"height\";i:1200;s:4:\"file\";s:13:\"2017/09/2.jpg\";s:5:\"sizes\";a:7:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:13:\"2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:13:\"2-300x225.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:225;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:13:\"2-768x576.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:576;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:14:\"2-1024x768.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:13:\"2-180x135.jpg\";s:5:\"width\";i:180;s:6:\"height\";i:135;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:13:\"2-300x225.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:225;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:13:\"2-600x450.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:450;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(543, 76, '_wp_attached_file', '2017/09/3.jpg'),
(544, 76, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1600;s:6:\"height\";i:1200;s:4:\"file\";s:13:\"2017/09/3.jpg\";s:5:\"sizes\";a:7:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:13:\"3-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:13:\"3-300x225.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:225;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:13:\"3-768x576.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:576;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:14:\"3-1024x768.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:13:\"3-180x135.jpg\";s:5:\"width\";i:180;s:6:\"height\";i:135;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:13:\"3-300x225.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:225;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:13:\"3-600x450.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:450;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(545, 77, '_wp_attached_file', '2017/09/4.jpg'),
(546, 77, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1600;s:6:\"height\";i:1200;s:4:\"file\";s:13:\"2017/09/4.jpg\";s:5:\"sizes\";a:7:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:13:\"4-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:13:\"4-300x225.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:225;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:13:\"4-768x576.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:576;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:14:\"4-1024x768.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:13:\"4-180x135.jpg\";s:5:\"width\";i:180;s:6:\"height\";i:135;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:13:\"4-300x225.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:225;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:13:\"4-600x450.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:450;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(547, 78, '_wp_attached_file', '2017/09/5.jpg'),
(548, 78, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1600;s:6:\"height\";i:1200;s:4:\"file\";s:13:\"2017/09/5.jpg\";s:5:\"sizes\";a:7:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:13:\"5-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:13:\"5-300x225.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:225;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:13:\"5-768x576.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:576;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:14:\"5-1024x768.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:13:\"5-180x135.jpg\";s:5:\"width\";i:180;s:6:\"height\";i:135;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:13:\"5-300x225.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:225;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:13:\"5-600x450.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:450;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(549, 79, '_wp_attached_file', '2017/09/6.jpg'),
(550, 79, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1600;s:6:\"height\";i:1200;s:4:\"file\";s:13:\"2017/09/6.jpg\";s:5:\"sizes\";a:7:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:13:\"6-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:13:\"6-300x225.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:225;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:13:\"6-768x576.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:576;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:14:\"6-1024x768.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:13:\"6-180x135.jpg\";s:5:\"width\";i:180;s:6:\"height\";i:135;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:13:\"6-300x225.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:225;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:13:\"6-600x450.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:450;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(551, 80, '_wp_attached_file', '2017/09/logo.png'),
(552, 80, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:304;s:6:\"height\";i:65;s:4:\"file\";s:16:\"2017/09/logo.png\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:15:\"logo-150x65.png\";s:5:\"width\";i:150;s:6:\"height\";i:65;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:15:\"logo-300x64.png\";s:5:\"width\";i:300;s:6:\"height\";i:64;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:15:\"logo-180x38.png\";s:5:\"width\";i:180;s:6:\"height\";i:38;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:15:\"logo-300x64.png\";s:5:\"width\";i:300;s:6:\"height\";i:64;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(553, 81, '_edit_last', '1'),
(554, 81, '_edit_lock', '1504595809:1'),
(555, 81, '_thumbnail_id', '74'),
(557, 81, 'rt_sidebar', 'a:4:{s:4:\"area\";s:4:\"left\";s:17:\"left_sidebar_name\";s:9:\"sidebar-1\";s:18:\"right_sidebar_name\";s:9:\"sidebar-2\";s:12:\"is_overwrite\";b:0;}'),
(558, 81, '_yoast_wpseo_content_score', '30'),
(559, 81, '_yoast_wpseo_primary_category', '2'),
(560, 83, '_thumbnail_id', '75'),
(561, 83, 'rt_sidebar', 'a:4:{s:4:\"area\";s:4:\"left\";s:17:\"left_sidebar_name\";s:9:\"sidebar-1\";s:18:\"right_sidebar_name\";s:9:\"sidebar-2\";s:12:\"is_overwrite\";b:0;}'),
(562, 83, '_yoast_wpseo_content_score', '30'),
(563, 83, '_yoast_wpseo_primary_category', '2'),
(564, 83, '_dp_original', '81'),
(565, 83, '_edit_lock', '1504595832:1'),
(566, 83, '_edit_last', '1'),
(568, 83, 'rt_sidebar', 'a:4:{s:4:\"area\";s:4:\"left\";s:17:\"left_sidebar_name\";s:9:\"sidebar-1\";s:18:\"right_sidebar_name\";s:9:\"sidebar-2\";s:12:\"is_overwrite\";b:0;}'),
(569, 85, '_thumbnail_id', '76'),
(570, 85, 'rt_sidebar', 'a:4:{s:4:\"area\";s:4:\"left\";s:17:\"left_sidebar_name\";s:9:\"sidebar-1\";s:18:\"right_sidebar_name\";s:9:\"sidebar-2\";s:12:\"is_overwrite\";b:0;}'),
(571, 85, 'rt_sidebar', 'a:4:{s:4:\"area\";s:4:\"left\";s:17:\"left_sidebar_name\";s:9:\"sidebar-1\";s:18:\"right_sidebar_name\";s:9:\"sidebar-2\";s:12:\"is_overwrite\";b:0;}'),
(572, 85, '_yoast_wpseo_content_score', '30'),
(573, 85, '_yoast_wpseo_primary_category', '2'),
(575, 85, '_dp_original', '83'),
(576, 85, '_edit_lock', '1504595869:1'),
(577, 85, '_edit_last', '1'),
(579, 85, 'rt_sidebar', 'a:4:{s:4:\"area\";s:4:\"left\";s:17:\"left_sidebar_name\";s:9:\"sidebar-1\";s:18:\"right_sidebar_name\";s:9:\"sidebar-2\";s:12:\"is_overwrite\";b:0;}'),
(580, 87, '_thumbnail_id', '77'),
(581, 87, 'rt_sidebar', 'a:4:{s:4:\"area\";s:4:\"left\";s:17:\"left_sidebar_name\";s:9:\"sidebar-1\";s:18:\"right_sidebar_name\";s:9:\"sidebar-2\";s:12:\"is_overwrite\";b:0;}'),
(582, 87, 'rt_sidebar', 'a:4:{s:4:\"area\";s:4:\"left\";s:17:\"left_sidebar_name\";s:9:\"sidebar-1\";s:18:\"right_sidebar_name\";s:9:\"sidebar-2\";s:12:\"is_overwrite\";b:0;}'),
(583, 87, 'rt_sidebar', 'a:4:{s:4:\"area\";s:4:\"left\";s:17:\"left_sidebar_name\";s:9:\"sidebar-1\";s:18:\"right_sidebar_name\";s:9:\"sidebar-2\";s:12:\"is_overwrite\";b:0;}'),
(584, 87, '_yoast_wpseo_content_score', '30'),
(585, 87, '_yoast_wpseo_primary_category', '2'),
(587, 87, '_dp_original', '85'),
(588, 87, '_edit_lock', '1504595890:1'),
(589, 87, '_edit_last', '1'),
(591, 87, 'rt_sidebar', 'a:4:{s:4:\"area\";s:4:\"left\";s:17:\"left_sidebar_name\";s:9:\"sidebar-1\";s:18:\"right_sidebar_name\";s:9:\"sidebar-2\";s:12:\"is_overwrite\";b:0;}'),
(592, 89, '_thumbnail_id', '78'),
(593, 89, 'rt_sidebar', 'a:4:{s:4:\"area\";s:4:\"left\";s:17:\"left_sidebar_name\";s:9:\"sidebar-1\";s:18:\"right_sidebar_name\";s:9:\"sidebar-2\";s:12:\"is_overwrite\";b:0;}'),
(594, 89, 'rt_sidebar', 'a:4:{s:4:\"area\";s:4:\"left\";s:17:\"left_sidebar_name\";s:9:\"sidebar-1\";s:18:\"right_sidebar_name\";s:9:\"sidebar-2\";s:12:\"is_overwrite\";b:0;}'),
(595, 89, 'rt_sidebar', 'a:4:{s:4:\"area\";s:4:\"left\";s:17:\"left_sidebar_name\";s:9:\"sidebar-1\";s:18:\"right_sidebar_name\";s:9:\"sidebar-2\";s:12:\"is_overwrite\";b:0;}'),
(596, 89, 'rt_sidebar', 'a:4:{s:4:\"area\";s:4:\"left\";s:17:\"left_sidebar_name\";s:9:\"sidebar-1\";s:18:\"right_sidebar_name\";s:9:\"sidebar-2\";s:12:\"is_overwrite\";b:0;}'),
(597, 89, '_yoast_wpseo_content_score', '30'),
(598, 89, '_yoast_wpseo_primary_category', '2'),
(600, 89, '_dp_original', '87'),
(601, 89, '_edit_lock', '1504595912:1'),
(602, 89, '_edit_last', '1'),
(604, 89, 'rt_sidebar', 'a:4:{s:4:\"area\";s:4:\"left\";s:17:\"left_sidebar_name\";s:9:\"sidebar-1\";s:18:\"right_sidebar_name\";s:9:\"sidebar-2\";s:12:\"is_overwrite\";b:0;}'),
(605, 91, '_thumbnail_id', '79'),
(606, 91, 'rt_sidebar', 'a:4:{s:4:\"area\";s:4:\"left\";s:17:\"left_sidebar_name\";s:9:\"sidebar-1\";s:18:\"right_sidebar_name\";s:9:\"sidebar-2\";s:12:\"is_overwrite\";b:0;}'),
(607, 91, 'rt_sidebar', 'a:4:{s:4:\"area\";s:4:\"left\";s:17:\"left_sidebar_name\";s:9:\"sidebar-1\";s:18:\"right_sidebar_name\";s:9:\"sidebar-2\";s:12:\"is_overwrite\";b:0;}'),
(608, 91, 'rt_sidebar', 'a:4:{s:4:\"area\";s:4:\"left\";s:17:\"left_sidebar_name\";s:9:\"sidebar-1\";s:18:\"right_sidebar_name\";s:9:\"sidebar-2\";s:12:\"is_overwrite\";b:0;}'),
(609, 91, 'rt_sidebar', 'a:4:{s:4:\"area\";s:4:\"left\";s:17:\"left_sidebar_name\";s:9:\"sidebar-1\";s:18:\"right_sidebar_name\";s:9:\"sidebar-2\";s:12:\"is_overwrite\";b:0;}'),
(610, 91, 'rt_sidebar', 'a:4:{s:4:\"area\";s:4:\"left\";s:17:\"left_sidebar_name\";s:9:\"sidebar-1\";s:18:\"right_sidebar_name\";s:9:\"sidebar-2\";s:12:\"is_overwrite\";b:0;}'),
(611, 91, '_yoast_wpseo_content_score', '30'),
(612, 91, '_yoast_wpseo_primary_category', '2'),
(614, 91, '_dp_original', '89'),
(615, 91, '_edit_lock', '1504595933:1'),
(616, 91, '_edit_last', '1'),
(618, 91, 'rt_sidebar', 'a:4:{s:4:\"area\";s:4:\"left\";s:17:\"left_sidebar_name\";s:9:\"sidebar-1\";s:18:\"right_sidebar_name\";s:9:\"sidebar-2\";s:12:\"is_overwrite\";b:0;}'),
(619, 93, '_thumbnail_id', '75'),
(620, 93, 'rt_sidebar', 'a:4:{s:4:\"area\";s:4:\"left\";s:17:\"left_sidebar_name\";s:9:\"sidebar-1\";s:18:\"right_sidebar_name\";s:9:\"sidebar-2\";s:12:\"is_overwrite\";b:0;}'),
(621, 93, 'rt_sidebar', 'a:4:{s:4:\"area\";s:4:\"left\";s:17:\"left_sidebar_name\";s:9:\"sidebar-1\";s:18:\"right_sidebar_name\";s:9:\"sidebar-2\";s:12:\"is_overwrite\";b:0;}'),
(622, 93, 'rt_sidebar', 'a:4:{s:4:\"area\";s:4:\"left\";s:17:\"left_sidebar_name\";s:9:\"sidebar-1\";s:18:\"right_sidebar_name\";s:9:\"sidebar-2\";s:12:\"is_overwrite\";b:0;}'),
(623, 93, 'rt_sidebar', 'a:4:{s:4:\"area\";s:4:\"left\";s:17:\"left_sidebar_name\";s:9:\"sidebar-1\";s:18:\"right_sidebar_name\";s:9:\"sidebar-2\";s:12:\"is_overwrite\";b:0;}'),
(624, 93, 'rt_sidebar', 'a:4:{s:4:\"area\";s:4:\"left\";s:17:\"left_sidebar_name\";s:9:\"sidebar-1\";s:18:\"right_sidebar_name\";s:9:\"sidebar-2\";s:12:\"is_overwrite\";b:0;}'),
(625, 93, 'rt_sidebar', 'a:4:{s:4:\"area\";s:4:\"left\";s:17:\"left_sidebar_name\";s:9:\"sidebar-1\";s:18:\"right_sidebar_name\";s:9:\"sidebar-2\";s:12:\"is_overwrite\";b:0;}'),
(626, 93, '_yoast_wpseo_content_score', '30'),
(627, 93, '_yoast_wpseo_primary_category', '2'),
(629, 93, '_dp_original', '91'),
(630, 93, '_edit_lock', '1504595955:1'),
(631, 93, '_edit_last', '1'),
(633, 93, 'rt_sidebar', 'a:4:{s:4:\"area\";s:4:\"left\";s:17:\"left_sidebar_name\";s:9:\"sidebar-1\";s:18:\"right_sidebar_name\";s:9:\"sidebar-2\";s:12:\"is_overwrite\";b:0;}'),
(634, 95, '_thumbnail_id', '77'),
(635, 95, 'rt_sidebar', 'a:4:{s:4:\"area\";s:4:\"left\";s:17:\"left_sidebar_name\";s:9:\"sidebar-1\";s:18:\"right_sidebar_name\";s:9:\"sidebar-2\";s:12:\"is_overwrite\";b:0;}'),
(636, 95, 'rt_sidebar', 'a:4:{s:4:\"area\";s:4:\"left\";s:17:\"left_sidebar_name\";s:9:\"sidebar-1\";s:18:\"right_sidebar_name\";s:9:\"sidebar-2\";s:12:\"is_overwrite\";b:0;}'),
(637, 95, 'rt_sidebar', 'a:4:{s:4:\"area\";s:4:\"left\";s:17:\"left_sidebar_name\";s:9:\"sidebar-1\";s:18:\"right_sidebar_name\";s:9:\"sidebar-2\";s:12:\"is_overwrite\";b:0;}'),
(638, 95, 'rt_sidebar', 'a:4:{s:4:\"area\";s:4:\"left\";s:17:\"left_sidebar_name\";s:9:\"sidebar-1\";s:18:\"right_sidebar_name\";s:9:\"sidebar-2\";s:12:\"is_overwrite\";b:0;}'),
(639, 95, 'rt_sidebar', 'a:4:{s:4:\"area\";s:4:\"left\";s:17:\"left_sidebar_name\";s:9:\"sidebar-1\";s:18:\"right_sidebar_name\";s:9:\"sidebar-2\";s:12:\"is_overwrite\";b:0;}'),
(640, 95, 'rt_sidebar', 'a:4:{s:4:\"area\";s:4:\"left\";s:17:\"left_sidebar_name\";s:9:\"sidebar-1\";s:18:\"right_sidebar_name\";s:9:\"sidebar-2\";s:12:\"is_overwrite\";b:0;}'),
(641, 95, 'rt_sidebar', 'a:4:{s:4:\"area\";s:4:\"left\";s:17:\"left_sidebar_name\";s:9:\"sidebar-1\";s:18:\"right_sidebar_name\";s:9:\"sidebar-2\";s:12:\"is_overwrite\";b:0;}'),
(642, 95, '_yoast_wpseo_content_score', '30'),
(643, 95, '_yoast_wpseo_primary_category', '2'),
(645, 95, '_dp_original', '93'),
(646, 95, '_edit_lock', '1504595983:1'),
(647, 95, '_edit_last', '1'),
(649, 95, 'rt_sidebar', 'a:4:{s:4:\"area\";s:4:\"left\";s:17:\"left_sidebar_name\";s:9:\"sidebar-1\";s:18:\"right_sidebar_name\";s:9:\"sidebar-2\";s:12:\"is_overwrite\";b:0;}'),
(651, 97, 'rt_sidebar', 'a:4:{s:4:\"area\";s:4:\"left\";s:17:\"left_sidebar_name\";s:9:\"sidebar-1\";s:18:\"right_sidebar_name\";s:9:\"sidebar-2\";s:12:\"is_overwrite\";b:0;}'),
(652, 97, 'rt_sidebar', 'a:4:{s:4:\"area\";s:4:\"left\";s:17:\"left_sidebar_name\";s:9:\"sidebar-1\";s:18:\"right_sidebar_name\";s:9:\"sidebar-2\";s:12:\"is_overwrite\";b:0;}'),
(653, 97, 'rt_sidebar', 'a:4:{s:4:\"area\";s:4:\"left\";s:17:\"left_sidebar_name\";s:9:\"sidebar-1\";s:18:\"right_sidebar_name\";s:9:\"sidebar-2\";s:12:\"is_overwrite\";b:0;}'),
(654, 97, 'rt_sidebar', 'a:4:{s:4:\"area\";s:4:\"left\";s:17:\"left_sidebar_name\";s:9:\"sidebar-1\";s:18:\"right_sidebar_name\";s:9:\"sidebar-2\";s:12:\"is_overwrite\";b:0;}'),
(655, 97, 'rt_sidebar', 'a:4:{s:4:\"area\";s:4:\"left\";s:17:\"left_sidebar_name\";s:9:\"sidebar-1\";s:18:\"right_sidebar_name\";s:9:\"sidebar-2\";s:12:\"is_overwrite\";b:0;}'),
(656, 97, 'rt_sidebar', 'a:4:{s:4:\"area\";s:4:\"left\";s:17:\"left_sidebar_name\";s:9:\"sidebar-1\";s:18:\"right_sidebar_name\";s:9:\"sidebar-2\";s:12:\"is_overwrite\";b:0;}'),
(657, 97, 'rt_sidebar', 'a:4:{s:4:\"area\";s:4:\"left\";s:17:\"left_sidebar_name\";s:9:\"sidebar-1\";s:18:\"right_sidebar_name\";s:9:\"sidebar-2\";s:12:\"is_overwrite\";b:0;}'),
(658, 97, 'rt_sidebar', 'a:4:{s:4:\"area\";s:4:\"left\";s:17:\"left_sidebar_name\";s:9:\"sidebar-1\";s:18:\"right_sidebar_name\";s:9:\"sidebar-2\";s:12:\"is_overwrite\";b:0;}'),
(659, 97, '_yoast_wpseo_content_score', '30'),
(660, 97, '_yoast_wpseo_primary_category', '2'),
(662, 97, '_dp_original', '95'),
(663, 97, '_edit_lock', '1507779770:1'),
(664, 97, '_edit_last', '1'),
(666, 97, 'rt_sidebar', 'a:4:{s:4:\"area\";s:4:\"left\";s:17:\"left_sidebar_name\";s:9:\"sidebar-1\";s:18:\"right_sidebar_name\";s:9:\"sidebar-2\";s:12:\"is_overwrite\";b:0;}'),
(667, 99, '_wc_review_count', '0'),
(668, 99, '_wc_rating_count', 'a:0:{}'),
(669, 99, '_wc_average_rating', '0'),
(670, 99, '_edit_last', '1'),
(671, 99, '_edit_lock', '1504596767:1'),
(672, 99, '_thumbnail_id', '76'),
(673, 99, '_sku', ''),
(674, 99, '_regular_price', '4500000'),
(675, 99, '_sale_price', '3900000'),
(676, 99, '_sale_price_dates_from', ''),
(677, 99, '_sale_price_dates_to', ''),
(678, 99, 'total_sales', '0'),
(679, 99, '_tax_status', 'taxable'),
(680, 99, '_tax_class', ''),
(681, 99, '_manage_stock', 'no'),
(682, 99, '_backorders', 'no'),
(683, 99, '_sold_individually', 'no'),
(684, 99, '_weight', ''),
(685, 99, '_length', ''),
(686, 99, '_width', ''),
(687, 99, '_height', ''),
(688, 99, '_upsell_ids', 'a:0:{}'),
(689, 99, '_crosssell_ids', 'a:0:{}'),
(690, 99, '_purchase_note', ''),
(691, 99, '_default_attributes', 'a:0:{}'),
(692, 99, '_virtual', 'no'),
(693, 99, '_downloadable', 'no'),
(694, 99, '_product_image_gallery', '77,78,79'),
(695, 99, '_download_limit', '-1'),
(696, 99, '_download_expiry', '-1'),
(697, 99, '_stock', NULL),
(698, 99, '_stock_status', 'instock'),
(699, 99, '_product_version', '3.1.2'),
(700, 99, '_price', '3900000'),
(701, 99, '_yoast_wpseo_primary_product_cat', '24'),
(702, 99, 'rt_sidebar', 'a:4:{s:4:\"area\";s:4:\"left\";s:17:\"left_sidebar_name\";s:9:\"sidebar-1\";s:18:\"right_sidebar_name\";s:9:\"sidebar-2\";s:12:\"is_overwrite\";b:0;}'),
(703, 99, '_yoast_wpseo_content_score', '60'),
(704, 100, '_sku', ''),
(705, 100, '_regular_price', '4500000'),
(706, 100, '_sale_price', '3900000'),
(707, 100, '_sale_price_dates_from', ''),
(708, 100, '_sale_price_dates_to', ''),
(709, 100, 'total_sales', '0'),
(710, 100, '_tax_status', 'taxable'),
(711, 100, '_tax_class', ''),
(712, 100, '_manage_stock', 'no'),
(713, 100, '_backorders', 'no'),
(714, 100, '_sold_individually', 'no'),
(715, 100, '_weight', ''),
(716, 100, '_length', ''),
(717, 100, '_width', ''),
(718, 100, '_height', ''),
(719, 100, '_upsell_ids', 'a:0:{}'),
(720, 100, '_crosssell_ids', 'a:0:{}'),
(721, 100, '_purchase_note', ''),
(722, 100, '_default_attributes', 'a:0:{}'),
(723, 100, '_virtual', 'no'),
(724, 100, '_downloadable', 'no'),
(725, 100, '_product_image_gallery', '77,78,79'),
(726, 100, '_download_limit', '-1'),
(727, 100, '_download_expiry', '-1'),
(728, 100, '_thumbnail_id', '74'),
(729, 100, '_stock', NULL),
(730, 100, '_stock_status', 'instock'),
(731, 100, '_wc_average_rating', '0'),
(732, 100, '_wc_rating_count', 'a:0:{}'),
(733, 100, '_wc_review_count', '0'),
(734, 100, '_downloadable_files', 'a:0:{}'),
(735, 100, '_product_attributes', 'a:0:{}'),
(736, 100, '_product_version', '3.1.2'),
(737, 100, '_price', '3900000'),
(738, 100, '_yoast_wpseo_primary_product_cat', '24'),
(739, 100, 'rt_sidebar', 'a:4:{s:4:\"area\";s:4:\"left\";s:17:\"left_sidebar_name\";s:9:\"sidebar-1\";s:18:\"right_sidebar_name\";s:9:\"sidebar-2\";s:12:\"is_overwrite\";b:0;}'),
(740, 100, '_yoast_wpseo_content_score', '60'),
(741, 100, '_edit_lock', '1504596796:1'),
(742, 100, '_edit_last', '1'),
(743, 101, '_sku', ''),
(744, 101, '_regular_price', '4500000'),
(745, 101, '_sale_price', '3900000'),
(746, 101, '_sale_price_dates_from', ''),
(747, 101, '_sale_price_dates_to', ''),
(748, 101, 'total_sales', '0'),
(749, 101, '_tax_status', 'taxable'),
(750, 101, '_tax_class', ''),
(751, 101, '_manage_stock', 'no'),
(752, 101, '_backorders', 'no'),
(753, 101, '_sold_individually', 'no'),
(754, 101, '_weight', ''),
(755, 101, '_length', ''),
(756, 101, '_width', ''),
(757, 101, '_height', ''),
(758, 101, '_upsell_ids', 'a:0:{}'),
(759, 101, '_crosssell_ids', 'a:0:{}'),
(760, 101, '_purchase_note', ''),
(761, 101, '_default_attributes', 'a:0:{}'),
(762, 101, '_virtual', 'no'),
(763, 101, '_downloadable', 'no'),
(764, 101, '_product_image_gallery', '77,78,79'),
(765, 101, '_download_limit', '-1'),
(766, 101, '_download_expiry', '-1'),
(767, 101, '_thumbnail_id', '75'),
(768, 101, '_stock', NULL),
(769, 101, '_stock_status', 'instock'),
(770, 101, '_wc_average_rating', '0'),
(771, 101, '_wc_rating_count', 'a:0:{}'),
(772, 101, '_wc_review_count', '0'),
(773, 101, '_downloadable_files', 'a:0:{}'),
(774, 101, '_product_attributes', 'a:0:{}'),
(775, 101, '_product_version', '3.1.2'),
(776, 101, '_price', '3900000'),
(777, 101, '_yoast_wpseo_primary_product_cat', '24'),
(778, 101, 'rt_sidebar', 'a:4:{s:4:\"area\";s:4:\"left\";s:17:\"left_sidebar_name\";s:9:\"sidebar-1\";s:18:\"right_sidebar_name\";s:9:\"sidebar-2\";s:12:\"is_overwrite\";b:0;}'),
(779, 101, '_yoast_wpseo_content_score', '60'),
(780, 101, '_edit_lock', '1504596834:1'),
(781, 101, '_edit_last', '1'),
(782, 102, '_sku', ''),
(783, 102, '_regular_price', '4500000'),
(784, 102, '_sale_price', '3900000'),
(785, 102, '_sale_price_dates_from', ''),
(786, 102, '_sale_price_dates_to', ''),
(787, 102, 'total_sales', '0'),
(788, 102, '_tax_status', 'taxable'),
(789, 102, '_tax_class', ''),
(790, 102, '_manage_stock', 'no'),
(791, 102, '_backorders', 'no'),
(792, 102, '_sold_individually', 'no'),
(793, 102, '_weight', ''),
(794, 102, '_length', ''),
(795, 102, '_width', ''),
(796, 102, '_height', ''),
(797, 102, '_upsell_ids', 'a:0:{}'),
(798, 102, '_crosssell_ids', 'a:0:{}'),
(799, 102, '_purchase_note', ''),
(800, 102, '_default_attributes', 'a:0:{}'),
(801, 102, '_virtual', 'no'),
(802, 102, '_downloadable', 'no'),
(803, 102, '_product_image_gallery', '77,78,79'),
(804, 102, '_download_limit', '-1'),
(805, 102, '_download_expiry', '-1'),
(806, 102, '_thumbnail_id', '77'),
(807, 102, '_stock', NULL),
(808, 102, '_stock_status', 'instock'),
(809, 102, '_wc_average_rating', '0'),
(810, 102, '_wc_rating_count', 'a:0:{}'),
(811, 102, '_wc_review_count', '0'),
(812, 102, '_downloadable_files', 'a:0:{}'),
(813, 102, '_product_attributes', 'a:0:{}'),
(814, 102, '_product_version', '3.1.2'),
(815, 102, '_price', '3900000'),
(816, 102, '_yoast_wpseo_primary_product_cat', '24'),
(817, 102, 'rt_sidebar', 'a:4:{s:4:\"area\";s:4:\"left\";s:17:\"left_sidebar_name\";s:9:\"sidebar-1\";s:18:\"right_sidebar_name\";s:9:\"sidebar-2\";s:12:\"is_overwrite\";b:0;}'),
(818, 102, '_yoast_wpseo_content_score', '60'),
(819, 102, '_edit_lock', '1504596855:1'),
(820, 102, '_edit_last', '1'),
(821, 103, '_sku', ''),
(822, 103, '_regular_price', '4500000'),
(823, 103, '_sale_price', '3900000'),
(824, 103, '_sale_price_dates_from', ''),
(825, 103, '_sale_price_dates_to', ''),
(826, 103, 'total_sales', '0'),
(827, 103, '_tax_status', 'taxable'),
(828, 103, '_tax_class', ''),
(829, 103, '_manage_stock', 'no'),
(830, 103, '_backorders', 'no'),
(831, 103, '_sold_individually', 'no'),
(832, 103, '_weight', ''),
(833, 103, '_length', ''),
(834, 103, '_width', ''),
(835, 103, '_height', ''),
(836, 103, '_upsell_ids', 'a:0:{}'),
(837, 103, '_crosssell_ids', 'a:0:{}'),
(838, 103, '_purchase_note', ''),
(839, 103, '_default_attributes', 'a:0:{}'),
(840, 103, '_virtual', 'no'),
(841, 103, '_downloadable', 'no'),
(842, 103, '_product_image_gallery', '77,78,79'),
(843, 103, '_download_limit', '-1'),
(844, 103, '_download_expiry', '-1'),
(845, 103, '_thumbnail_id', '78'),
(846, 103, '_stock', NULL),
(847, 103, '_stock_status', 'instock'),
(848, 103, '_wc_average_rating', '0'),
(849, 103, '_wc_rating_count', 'a:0:{}'),
(850, 103, '_wc_review_count', '0'),
(851, 103, '_downloadable_files', 'a:0:{}'),
(852, 103, '_product_attributes', 'a:0:{}'),
(853, 103, '_product_version', '3.1.2'),
(854, 103, '_price', '3900000'),
(855, 103, '_yoast_wpseo_primary_product_cat', '24'),
(856, 103, 'rt_sidebar', 'a:4:{s:4:\"area\";s:4:\"left\";s:17:\"left_sidebar_name\";s:9:\"sidebar-1\";s:18:\"right_sidebar_name\";s:9:\"sidebar-2\";s:12:\"is_overwrite\";b:0;}'),
(857, 103, '_yoast_wpseo_content_score', '60'),
(858, 103, '_edit_lock', '1504596908:1'),
(859, 103, '_edit_last', '1'),
(860, 104, '_sku', ''),
(861, 104, '_regular_price', ''),
(862, 104, '_sale_price', ''),
(863, 104, '_sale_price_dates_from', ''),
(864, 104, '_sale_price_dates_to', ''),
(865, 104, 'total_sales', '0'),
(866, 104, '_tax_status', 'taxable'),
(867, 104, '_tax_class', ''),
(868, 104, '_manage_stock', 'no'),
(869, 104, '_backorders', 'no'),
(870, 104, '_sold_individually', 'no'),
(871, 104, '_weight', ''),
(872, 104, '_length', ''),
(873, 104, '_width', ''),
(874, 104, '_height', ''),
(875, 104, '_upsell_ids', 'a:0:{}'),
(876, 104, '_crosssell_ids', 'a:0:{}'),
(877, 104, '_purchase_note', ''),
(878, 104, '_default_attributes', 'a:0:{}'),
(879, 104, '_virtual', 'no'),
(880, 104, '_downloadable', 'no'),
(881, 104, '_product_image_gallery', ''),
(882, 104, '_download_limit', '-1'),
(883, 104, '_download_expiry', '-1'),
(884, 104, '_thumbnail_id', '137'),
(885, 104, '_stock', NULL),
(886, 104, '_stock_status', 'instock'),
(887, 104, '_wc_average_rating', '0'),
(888, 104, '_wc_rating_count', 'a:0:{}'),
(889, 104, '_wc_review_count', '0'),
(890, 104, '_downloadable_files', 'a:0:{}'),
(891, 104, '_product_attributes', 'a:0:{}'),
(892, 104, '_product_version', '3.2.1'),
(893, 104, '_price', ''),
(894, 104, '_yoast_wpseo_primary_product_cat', ''),
(895, 104, 'rt_sidebar', 'a:4:{s:4:\"area\";s:4:\"left\";s:17:\"left_sidebar_name\";s:9:\"sidebar-1\";s:18:\"right_sidebar_name\";s:9:\"sidebar-2\";s:12:\"is_overwrite\";b:0;}'),
(896, 104, '_yoast_wpseo_content_score', '60'),
(897, 104, '_edit_lock', '1509357995:1'),
(898, 104, '_edit_last', '1'),
(899, 105, '_thumbnail_id', '78'),
(900, 105, '_wp_attachment_image_alt', ''),
(901, 105, 'ml-slider_type', 'image'),
(902, 78, '_wp_attachment_backup_sizes', 'a:2:{s:16:\"resized-1200x450\";a:5:{s:4:\"path\";s:57:\"C:wampwwwRT-Aug/wp-content/uploads/2017/09/5-1200x450.jpg\";s:4:\"file\";s:14:\"5-1200x450.jpg\";s:5:\"width\";i:1200;s:6:\"height\";i:450;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:16:\"resized-1200x350\";a:5:{s:4:\"path\";s:57:\"C:wampwwwRT-Aug/wp-content/uploads/2017/09/5-1200x350.jpg\";s:4:\"file\";s:14:\"5-1200x350.jpg\";s:5:\"width\";i:1200;s:6:\"height\";i:350;s:9:\"mime-type\";s:10:\"image/jpeg\";}}'),
(903, 105, 'ml-slider_crop_position', 'center-center'),
(904, 106, '_menu_item_type', 'custom'),
(905, 106, '_menu_item_menu_item_parent', '0'),
(906, 106, '_menu_item_object_id', '106'),
(907, 106, '_menu_item_object', 'custom'),
(908, 106, '_menu_item_target', ''),
(909, 106, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(910, 106, '_menu_item_xfn', ''),
(911, 106, '_menu_item_url', 'http://localhost/doylecolor/'),
(913, 107, '_menu_item_type', 'post_type'),
(914, 107, '_menu_item_menu_item_parent', '0'),
(915, 107, '_menu_item_object_id', '2'),
(916, 107, '_menu_item_object', 'page'),
(917, 107, '_menu_item_target', ''),
(918, 107, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(919, 107, '_menu_item_xfn', ''),
(920, 107, '_menu_item_url', ''),
(921, 113, '_menu_item_type', 'custom'),
(922, 113, '_menu_item_menu_item_parent', '0'),
(923, 113, '_menu_item_object_id', '113'),
(924, 113, '_menu_item_object', 'custom'),
(925, 113, '_menu_item_target', ''),
(926, 113, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(927, 113, '_menu_item_xfn', ''),
(928, 113, '_menu_item_url', 'http://hungrt.raothue.com/a_product/'),
(930, 114, '_menu_item_type', 'post_type'),
(931, 114, '_menu_item_menu_item_parent', '0'),
(932, 114, '_menu_item_object_id', '15'),
(933, 114, '_menu_item_object', 'page'),
(934, 114, '_menu_item_target', ''),
(935, 114, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(936, 114, '_menu_item_xfn', ''),
(937, 114, '_menu_item_url', ''),
(939, 115, '_menu_item_type', 'post_type'),
(940, 115, '_menu_item_menu_item_parent', '0'),
(941, 115, '_menu_item_object_id', '2'),
(942, 115, '_menu_item_object', 'page'),
(943, 115, '_menu_item_target', ''),
(944, 115, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(945, 115, '_menu_item_xfn', ''),
(946, 115, '_menu_item_url', ''),
(952, 104, '_custom_post_options', 'a:4:{s:16:\"section_4_text_1\";s:4:\"SP01\";s:16:\"section_4_text_2\";s:10:\"Còn hàng\";s:16:\"section_4_text_3\";s:3:\"abc\";s:16:\"section_4_text_4\";s:3:\"xyz\";}'),
(953, 117, '_edit_last', '1'),
(954, 117, '_wp_page_template', 'default'),
(955, 117, 'rt_sidebar', 'a:4:{s:4:\"area\";s:4:\"left\";s:17:\"left_sidebar_name\";s:9:\"sidebar-1\";s:18:\"right_sidebar_name\";s:9:\"sidebar-2\";s:12:\"is_overwrite\";b:0;}'),
(956, 117, '_yoast_wpseo_content_score', '30'),
(957, 117, '_edit_lock', '1506270160:1'),
(958, 120, '_menu_item_type', 'post_type'),
(959, 120, '_menu_item_menu_item_parent', '0'),
(960, 120, '_menu_item_object_id', '15'),
(961, 120, '_menu_item_object', 'page'),
(962, 120, '_menu_item_target', ''),
(963, 120, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(964, 120, '_menu_item_xfn', ''),
(965, 120, '_menu_item_url', ''),
(967, 121, '_menu_item_type', 'post_type'),
(968, 121, '_menu_item_menu_item_parent', '0'),
(969, 121, '_menu_item_object_id', '2'),
(970, 121, '_menu_item_object', 'page'),
(971, 121, '_menu_item_target', ''),
(972, 121, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(973, 121, '_menu_item_xfn', ''),
(974, 121, '_menu_item_url', ''),
(976, 122, '_menu_item_type', 'post_type'),
(977, 122, '_menu_item_menu_item_parent', '0'),
(978, 122, '_menu_item_object_id', '117'),
(979, 122, '_menu_item_object', 'page'),
(980, 122, '_menu_item_target', ''),
(981, 122, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(982, 122, '_menu_item_xfn', ''),
(983, 122, '_menu_item_url', ''),
(985, 6, '_config_errors', 'a:1:{s:11:\"mail.sender\";a:1:{i:0;a:2:{s:4:\"code\";i:103;s:4:\"args\";a:3:{s:7:\"message\";s:0:\"\";s:6:\"params\";a:0:{}s:4:\"link\";s:70:\"https://contactform7.com/configuration-errors/email-not-in-site-domain\";}}}}'),
(986, 105, '_wp_desired_post_slug', 'slider-12-image-2'),
(987, 124, '_wp_attached_file', '2017/10/banner.png'),
(988, 124, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1366;s:6:\"height\";i:166;s:4:\"file\";s:18:\"2017/10/banner.png\";s:5:\"sizes\";a:7:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"banner-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:17:\"banner-300x36.png\";s:5:\"width\";i:300;s:6:\"height\";i:36;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:17:\"banner-768x93.png\";s:5:\"width\";i:768;s:6:\"height\";i:93;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:19:\"banner-1024x124.png\";s:5:\"width\";i:1024;s:6:\"height\";i:124;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:17:\"banner-180x22.png\";s:5:\"width\";i:180;s:6:\"height\";i:22;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:17:\"banner-300x36.png\";s:5:\"width\";i:300;s:6:\"height\";i:36;s:9:\"mime-type\";s:9:\"image/png\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:17:\"banner-600x73.png\";s:5:\"width\";i:600;s:6:\"height\";i:73;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(989, 125, '_wp_attached_file', '2017/10/ck1.png'),
(990, 125, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:235;s:6:\"height\";i:112;s:4:\"file\";s:15:\"2017/10/ck1.png\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:15:\"ck1-150x112.png\";s:5:\"width\";i:150;s:6:\"height\";i:112;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:14:\"ck1-180x86.png\";s:5:\"width\";i:180;s:6:\"height\";i:86;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(991, 126, '_wp_attached_file', '2017/10/ck2.png'),
(992, 126, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:235;s:6:\"height\";i:112;s:4:\"file\";s:15:\"2017/10/ck2.png\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:15:\"ck2-150x112.png\";s:5:\"width\";i:150;s:6:\"height\";i:112;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:14:\"ck2-180x86.png\";s:5:\"width\";i:180;s:6:\"height\";i:86;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(993, 127, '_wp_attached_file', '2017/10/ck3.png'),
(994, 127, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:235;s:6:\"height\";i:112;s:4:\"file\";s:15:\"2017/10/ck3.png\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:15:\"ck3-150x112.png\";s:5:\"width\";i:150;s:6:\"height\";i:112;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:14:\"ck3-180x86.png\";s:5:\"width\";i:180;s:6:\"height\";i:86;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(995, 128, '_wp_attached_file', '2017/10/ck4.png'),
(996, 128, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:235;s:6:\"height\";i:112;s:4:\"file\";s:15:\"2017/10/ck4.png\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:15:\"ck4-150x112.png\";s:5:\"width\";i:150;s:6:\"height\";i:112;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:14:\"ck4-180x86.png\";s:5:\"width\";i:180;s:6:\"height\";i:86;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(997, 129, '_wp_attached_file', '2017/10/slide.png'),
(998, 129, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:745;s:6:\"height\";i:300;s:4:\"file\";s:17:\"2017/10/slide.png\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"slide-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:17:\"slide-300x121.png\";s:5:\"width\";i:300;s:6:\"height\";i:121;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:16:\"slide-180x72.png\";s:5:\"width\";i:180;s:6:\"height\";i:72;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:17:\"slide-300x121.png\";s:5:\"width\";i:300;s:6:\"height\";i:121;s:9:\"mime-type\";s:9:\"image/png\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:17:\"slide-600x242.png\";s:5:\"width\";i:600;s:6:\"height\";i:242;s:9:\"mime-type\";s:9:\"image/png\";}s:27:\"meta-slider-resized-745x217\";a:4:{s:4:\"file\";s:17:\"slide-745x217.png\";s:5:\"width\";i:745;s:6:\"height\";i:217;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(999, 130, '_wp_attached_file', '2017/10/spo.png'),
(1000, 130, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:235;s:6:\"height\";i:157;s:4:\"file\";s:15:\"2017/10/spo.png\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:15:\"spo-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:15:\"spo-180x120.png\";s:5:\"width\";i:180;s:6:\"height\";i:120;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1001, 131, '_thumbnail_id', '129'),
(1002, 131, '_wp_attachment_image_alt', ''),
(1003, 131, 'ml-slider_type', 'image'),
(1004, 129, '_wp_attachment_backup_sizes', 'a:1:{s:15:\"resized-745x217\";a:5:{s:4:\"path\";s:68:\"C:xampphtdocsdoylecolor/wp-content/uploads/2017/10/slide-745x217.png\";s:4:\"file\";s:17:\"slide-745x217.png\";s:5:\"width\";i:745;s:6:\"height\";i:217;s:9:\"mime-type\";s:9:\"image/png\";}}'),
(1005, 131, 'ml-slider_crop_position', 'center-center'),
(1006, 132, '_wp_attached_file', '2017/10/a1.jpg'),
(1007, 132, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:650;s:6:\"height\";i:488;s:4:\"file\";s:14:\"2017/10/a1.jpg\";s:5:\"sizes\";a:5:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:14:\"a1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:14:\"a1-300x225.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:225;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:14:\"a1-180x135.jpg\";s:5:\"width\";i:180;s:6:\"height\";i:135;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:14:\"a1-300x225.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:225;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:14:\"a1-600x450.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:450;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1008, 133, '_wp_attached_file', '2017/10/a2.jpg'),
(1009, 133, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:680;s:6:\"height\";i:660;s:4:\"file\";s:14:\"2017/10/a2.jpg\";s:5:\"sizes\";a:5:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:14:\"a2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:14:\"a2-300x291.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:291;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:14:\"a2-180x175.jpg\";s:5:\"width\";i:180;s:6:\"height\";i:175;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:14:\"a2-300x291.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:291;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:14:\"a2-600x582.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:582;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1010, 134, '_wp_attached_file', '2017/10/a3.jpg');
INSERT INTO `rt_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1011, 134, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:736;s:6:\"height\";i:552;s:4:\"file\";s:14:\"2017/10/a3.jpg\";s:5:\"sizes\";a:5:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:14:\"a3-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:14:\"a3-300x225.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:225;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:14:\"a3-180x135.jpg\";s:5:\"width\";i:180;s:6:\"height\";i:135;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:14:\"a3-300x225.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:225;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:14:\"a3-600x450.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:450;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1012, 135, '_wp_attached_file', '2017/10/a4.jpg'),
(1013, 135, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:700;s:6:\"height\";i:525;s:4:\"file\";s:14:\"2017/10/a4.jpg\";s:5:\"sizes\";a:5:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:14:\"a4-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:14:\"a4-300x225.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:225;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:14:\"a4-180x135.jpg\";s:5:\"width\";i:180;s:6:\"height\";i:135;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:14:\"a4-300x225.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:225;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:14:\"a4-600x450.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:450;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1014, 136, '_form', '[email* your-email placeholder\"Nhập email đăng ký\"][submit \"Đăng ký\"]\n<p class=\"tet\">Nếu bạn không có thời gian thường xuyên duyệt website của chúng tôi. Hãy đăng ký email để theo dõi những bản tin khuyến mại đặc biệt và các chương trình khuyến mại .</p>'),
(1015, 136, '_mail', 'a:9:{s:6:\"active\";b:1;s:7:\"subject\";s:27:\"Đăng ký email nhận tin\";s:6:\"sender\";s:39:\"[your-name] <mailtrunggian01@gmail.com>\";s:9:\"recipient\";s:20:\"pkt.winpro@gmail.com\";s:4:\"body\";s:24:\"Gửi từ: [your-email]\";s:18:\"additional_headers\";s:22:\"Reply-To: [your-email]\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:0;s:13:\"exclude_blank\";b:0;}'),
(1016, 136, '_mail_2', 'a:9:{s:6:\"active\";b:0;s:7:\"subject\";s:34:\"Nam Việt .Group \"[your-subject]\"\";s:6:\"sender\";s:45:\"Nam Việt .Group <mailtrunggian01@gmail.com>\";s:9:\"recipient\";s:12:\"[your-email]\";s:4:\"body\";s:125:\"Message Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on Nam Việt .Group (http://localhost/doylecolor)\";s:18:\"additional_headers\";s:35:\"Reply-To: mailtrunggian01@gmail.com\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:0;s:13:\"exclude_blank\";b:0;}'),
(1017, 136, '_messages', 'a:23:{s:12:\"mail_sent_ok\";s:45:\"Thank you for your message. It has been sent.\";s:12:\"mail_sent_ng\";s:71:\"There was an error trying to send your message. Please try again later.\";s:16:\"validation_error\";s:61:\"One or more fields have an error. Please check and try again.\";s:4:\"spam\";s:71:\"There was an error trying to send your message. Please try again later.\";s:12:\"accept_terms\";s:69:\"You must accept the terms and conditions before sending your message.\";s:16:\"invalid_required\";s:22:\"The field is required.\";s:16:\"invalid_too_long\";s:22:\"The field is too long.\";s:17:\"invalid_too_short\";s:23:\"The field is too short.\";s:12:\"invalid_date\";s:29:\"The date format is incorrect.\";s:14:\"date_too_early\";s:44:\"The date is before the earliest one allowed.\";s:13:\"date_too_late\";s:41:\"The date is after the latest one allowed.\";s:13:\"upload_failed\";s:46:\"There was an unknown error uploading the file.\";s:24:\"upload_file_type_invalid\";s:49:\"You are not allowed to upload files of this type.\";s:21:\"upload_file_too_large\";s:20:\"The file is too big.\";s:23:\"upload_failed_php_error\";s:38:\"There was an error uploading the file.\";s:14:\"invalid_number\";s:29:\"The number format is invalid.\";s:16:\"number_too_small\";s:47:\"The number is smaller than the minimum allowed.\";s:16:\"number_too_large\";s:46:\"The number is larger than the maximum allowed.\";s:23:\"quiz_answer_not_correct\";s:36:\"The answer to the quiz is incorrect.\";s:17:\"captcha_not_match\";s:31:\"Your entered code is incorrect.\";s:13:\"invalid_email\";s:38:\"The e-mail address entered is invalid.\";s:11:\"invalid_url\";s:19:\"The URL is invalid.\";s:11:\"invalid_tel\";s:32:\"The telephone number is invalid.\";}'),
(1018, 136, '_additional_settings', ''),
(1019, 136, '_locale', 'vi'),
(1020, 106, 'menu-icons', 'a:8:{s:4:\"type\";s:9:\"dashicons\";s:4:\"icon\";s:20:\"dashicons-admin-home\";s:10:\"hide_label\";s:0:\"\";s:8:\"position\";s:6:\"before\";s:14:\"vertical_align\";s:6:\"middle\";s:9:\"font_size\";s:3:\"1.2\";s:9:\"svg_width\";s:1:\"1\";s:10:\"image_size\";s:9:\"thumbnail\";}'),
(1021, 103, '_wp_trash_meta_status', 'publish'),
(1022, 103, '_wp_trash_meta_time', '1509357872'),
(1023, 103, '_wp_desired_post_slug', 'tranh-ve-tuong-kho-lon-d02-ban-sao'),
(1024, 102, '_wp_trash_meta_status', 'publish'),
(1025, 102, '_wp_trash_meta_time', '1509357872'),
(1026, 102, '_wp_desired_post_slug', 'tranh-ve-tuong-kho-lon-d04'),
(1027, 101, '_wp_trash_meta_status', 'publish'),
(1028, 101, '_wp_trash_meta_time', '1509357873'),
(1029, 101, '_wp_desired_post_slug', 'tranh-ve-tuong-kho-lon-d03'),
(1030, 100, '_wp_trash_meta_status', 'publish'),
(1031, 100, '_wp_trash_meta_time', '1509357873'),
(1032, 100, '_wp_desired_post_slug', 'tranh-ve-tuong-kho-lon-d02'),
(1033, 99, '_wp_trash_meta_status', 'publish'),
(1034, 99, '_wp_trash_meta_time', '1509357873'),
(1035, 99, '_wp_desired_post_slug', 'tranh-ve-tuong-kho-lon-d01'),
(1036, 137, '_wp_attached_file', '2017/09/1.png'),
(1037, 137, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:400;s:6:\"height\";i:400;s:4:\"file\";s:13:\"2017/09/1.png\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:13:\"1-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:13:\"1-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:13:\"1-180x180.png\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:13:\"1-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1038, 138, '_wp_attached_file', '2017/09/2-1.jpg'),
(1039, 138, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:850;s:6:\"height\";i:850;s:4:\"file\";s:15:\"2017/09/2-1.jpg\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:15:\"2-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:15:\"2-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:15:\"2-1-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:15:\"2-1-180x180.jpg\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:15:\"2-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:15:\"2-1-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1040, 139, '_wp_attached_file', '2017/09/3.png'),
(1041, 139, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:365;s:6:\"height\";i:365;s:4:\"file\";s:13:\"2017/09/3.png\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:13:\"3-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:13:\"3-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:13:\"3-180x180.png\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:13:\"3-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1042, 140, '_wp_attached_file', '2017/09/4-1.jpg'),
(1043, 140, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:400;s:6:\"height\";i:401;s:4:\"file\";s:15:\"2017/09/4-1.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:15:\"4-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:15:\"4-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:15:\"4-1-180x180.jpg\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:15:\"4-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(1044, 141, '_wp_attached_file', '2017/09/5.png'),
(1045, 141, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:400;s:6:\"height\";i:400;s:4:\"file\";s:13:\"2017/09/5.png\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:13:\"5-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:13:\"5-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:13:\"5-180x180.png\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:13:\"5-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1046, 142, '_wp_attached_file', '2017/09/6-1.jpg'),
(1047, 142, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:515;s:6:\"height\";i:515;s:4:\"file\";s:15:\"2017/09/6-1.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:15:\"6-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:15:\"6-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:15:\"6-1-180x180.jpg\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:15:\"6-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1048, 104, '_wp_old_slug', 'tranh-ve-tuong-kho-lon-d06'),
(1049, 143, '_sku', ''),
(1050, 143, '_regular_price', ''),
(1051, 143, '_sale_price', ''),
(1052, 143, '_sale_price_dates_from', ''),
(1053, 143, '_sale_price_dates_to', ''),
(1054, 143, 'total_sales', '0'),
(1055, 143, '_tax_status', 'taxable'),
(1056, 143, '_tax_class', ''),
(1057, 143, '_manage_stock', 'no'),
(1058, 143, '_backorders', 'no'),
(1059, 143, '_sold_individually', 'no'),
(1060, 143, '_weight', ''),
(1061, 143, '_length', ''),
(1062, 143, '_width', ''),
(1063, 143, '_height', ''),
(1064, 143, '_upsell_ids', 'a:0:{}'),
(1065, 143, '_crosssell_ids', 'a:0:{}'),
(1066, 143, '_purchase_note', ''),
(1067, 143, '_default_attributes', 'a:0:{}'),
(1068, 143, '_virtual', 'no'),
(1069, 143, '_downloadable', 'no'),
(1070, 143, '_product_image_gallery', ''),
(1071, 143, '_download_limit', '-1'),
(1072, 143, '_download_expiry', '-1'),
(1073, 143, '_thumbnail_id', '138'),
(1074, 143, '_stock', NULL),
(1075, 143, '_stock_status', 'instock'),
(1076, 143, '_wc_average_rating', '0'),
(1077, 143, '_wc_rating_count', 'a:0:{}'),
(1078, 143, '_wc_review_count', '0'),
(1079, 143, '_downloadable_files', 'a:0:{}'),
(1080, 143, '_product_attributes', 'a:0:{}'),
(1081, 143, '_product_version', '3.2.1'),
(1082, 143, '_price', ''),
(1083, 143, '_yoast_wpseo_primary_product_cat', ''),
(1084, 143, 'rt_sidebar', 'a:4:{s:4:\"area\";s:4:\"left\";s:17:\"left_sidebar_name\";s:9:\"sidebar-1\";s:18:\"right_sidebar_name\";s:9:\"sidebar-2\";s:12:\"is_overwrite\";b:0;}'),
(1085, 143, '_yoast_wpseo_content_score', '60'),
(1086, 143, '_custom_post_options', 'a:4:{s:16:\"section_4_text_1\";s:4:\"SP01\";s:16:\"section_4_text_2\";s:10:\"Còn hàng\";s:16:\"section_4_text_3\";s:3:\"abc\";s:16:\"section_4_text_4\";s:3:\"xyz\";}'),
(1087, 143, '_wp_old_slug', 'tranh-ve-tuong-kho-lon-d06'),
(1088, 143, '_dp_original', '104'),
(1089, 143, '_edit_lock', '1509358172:1'),
(1090, 144, '_sku', ''),
(1091, 144, '_regular_price', ''),
(1092, 144, '_sale_price', ''),
(1093, 144, '_sale_price_dates_from', ''),
(1094, 144, '_sale_price_dates_to', ''),
(1095, 144, 'total_sales', '0'),
(1096, 144, '_tax_status', 'taxable'),
(1097, 144, '_tax_class', ''),
(1098, 144, '_manage_stock', 'no'),
(1099, 144, '_backorders', 'no'),
(1100, 144, '_sold_individually', 'no'),
(1101, 144, '_weight', ''),
(1102, 144, '_length', ''),
(1103, 144, '_width', ''),
(1104, 144, '_height', ''),
(1105, 144, '_upsell_ids', 'a:0:{}'),
(1106, 144, '_crosssell_ids', 'a:0:{}'),
(1107, 144, '_purchase_note', ''),
(1108, 144, '_default_attributes', 'a:0:{}'),
(1109, 144, '_virtual', 'no'),
(1110, 144, '_downloadable', 'no'),
(1111, 144, '_product_image_gallery', ''),
(1112, 144, '_download_limit', '-1'),
(1113, 144, '_download_expiry', '-1'),
(1114, 144, '_thumbnail_id', '139'),
(1115, 144, '_stock', NULL),
(1116, 144, '_stock_status', 'instock'),
(1117, 144, '_wc_average_rating', '0'),
(1118, 144, '_wc_rating_count', 'a:0:{}'),
(1119, 144, '_wc_review_count', '0'),
(1120, 144, '_downloadable_files', 'a:0:{}'),
(1121, 144, '_product_attributes', 'a:0:{}'),
(1122, 144, '_product_version', '3.2.1'),
(1123, 144, '_price', ''),
(1124, 144, '_yoast_wpseo_primary_product_cat', ''),
(1125, 144, 'rt_sidebar', 'a:4:{s:4:\"area\";s:4:\"left\";s:17:\"left_sidebar_name\";s:9:\"sidebar-1\";s:18:\"right_sidebar_name\";s:9:\"sidebar-2\";s:12:\"is_overwrite\";b:0;}'),
(1126, 144, '_yoast_wpseo_content_score', '60'),
(1127, 144, '_custom_post_options', 'a:4:{s:16:\"section_4_text_1\";s:4:\"SP01\";s:16:\"section_4_text_2\";s:10:\"Còn hàng\";s:16:\"section_4_text_3\";s:3:\"abc\";s:16:\"section_4_text_4\";s:3:\"xyz\";}'),
(1128, 144, '_wp_old_slug', 'tranh-ve-tuong-kho-lon-d06'),
(1129, 144, '_dp_original', '104'),
(1130, 144, '_edit_lock', '1509358172:1'),
(1131, 145, '_sku', ''),
(1132, 145, '_regular_price', ''),
(1133, 145, '_sale_price', ''),
(1134, 145, '_sale_price_dates_from', ''),
(1135, 145, '_sale_price_dates_to', ''),
(1136, 145, 'total_sales', '0'),
(1137, 145, '_tax_status', 'taxable'),
(1138, 145, '_tax_class', ''),
(1139, 145, '_manage_stock', 'no'),
(1140, 145, '_backorders', 'no'),
(1141, 145, '_sold_individually', 'no'),
(1142, 145, '_weight', ''),
(1143, 145, '_length', ''),
(1144, 145, '_width', ''),
(1145, 145, '_height', ''),
(1146, 145, '_upsell_ids', 'a:0:{}'),
(1147, 145, '_crosssell_ids', 'a:0:{}'),
(1148, 145, '_purchase_note', ''),
(1149, 145, '_default_attributes', 'a:0:{}'),
(1150, 145, '_virtual', 'no'),
(1151, 145, '_downloadable', 'no'),
(1152, 145, '_product_image_gallery', ''),
(1153, 145, '_download_limit', '-1'),
(1154, 145, '_download_expiry', '-1'),
(1155, 145, '_thumbnail_id', '140'),
(1156, 145, '_stock', NULL),
(1157, 145, '_stock_status', 'instock'),
(1158, 145, '_wc_average_rating', '0'),
(1159, 145, '_wc_rating_count', 'a:0:{}'),
(1160, 145, '_wc_review_count', '0'),
(1161, 145, '_downloadable_files', 'a:0:{}'),
(1162, 145, '_product_attributes', 'a:0:{}'),
(1163, 145, '_product_version', '3.2.1'),
(1164, 145, '_price', ''),
(1165, 145, '_yoast_wpseo_primary_product_cat', ''),
(1166, 145, 'rt_sidebar', 'a:4:{s:4:\"area\";s:4:\"left\";s:17:\"left_sidebar_name\";s:9:\"sidebar-1\";s:18:\"right_sidebar_name\";s:9:\"sidebar-2\";s:12:\"is_overwrite\";b:0;}'),
(1167, 145, '_yoast_wpseo_content_score', '60'),
(1168, 145, '_custom_post_options', 'a:4:{s:16:\"section_4_text_1\";s:4:\"SP01\";s:16:\"section_4_text_2\";s:10:\"Còn hàng\";s:16:\"section_4_text_3\";s:3:\"abc\";s:16:\"section_4_text_4\";s:3:\"xyz\";}'),
(1169, 145, '_wp_old_slug', 'tranh-ve-tuong-kho-lon-d06'),
(1170, 145, '_dp_original', '104'),
(1171, 145, '_edit_lock', '1509358145:1'),
(1172, 146, '_sku', ''),
(1173, 146, '_regular_price', ''),
(1174, 146, '_sale_price', ''),
(1175, 146, '_sale_price_dates_from', ''),
(1176, 146, '_sale_price_dates_to', ''),
(1177, 146, 'total_sales', '0'),
(1178, 146, '_tax_status', 'taxable'),
(1179, 146, '_tax_class', ''),
(1180, 146, '_manage_stock', 'no'),
(1181, 146, '_backorders', 'no'),
(1182, 146, '_sold_individually', 'no'),
(1183, 146, '_weight', ''),
(1184, 146, '_length', ''),
(1185, 146, '_width', ''),
(1186, 146, '_height', ''),
(1187, 146, '_upsell_ids', 'a:0:{}'),
(1188, 146, '_crosssell_ids', 'a:0:{}'),
(1189, 146, '_purchase_note', ''),
(1190, 146, '_default_attributes', 'a:0:{}'),
(1191, 146, '_virtual', 'no'),
(1192, 146, '_downloadable', 'no'),
(1193, 146, '_product_image_gallery', ''),
(1194, 146, '_download_limit', '-1'),
(1195, 146, '_download_expiry', '-1'),
(1196, 146, '_thumbnail_id', '141'),
(1197, 146, '_stock', NULL),
(1198, 146, '_stock_status', 'instock'),
(1199, 146, '_wc_average_rating', '0'),
(1200, 146, '_wc_rating_count', 'a:0:{}'),
(1201, 146, '_wc_review_count', '0'),
(1202, 146, '_downloadable_files', 'a:0:{}'),
(1203, 146, '_product_attributes', 'a:0:{}'),
(1204, 146, '_product_version', '3.2.1'),
(1205, 146, '_price', ''),
(1206, 146, '_yoast_wpseo_primary_product_cat', ''),
(1207, 146, 'rt_sidebar', 'a:4:{s:4:\"area\";s:4:\"left\";s:17:\"left_sidebar_name\";s:9:\"sidebar-1\";s:18:\"right_sidebar_name\";s:9:\"sidebar-2\";s:12:\"is_overwrite\";b:0;}'),
(1208, 146, '_yoast_wpseo_content_score', '60'),
(1209, 146, '_custom_post_options', 'a:4:{s:16:\"section_4_text_1\";s:4:\"SP01\";s:16:\"section_4_text_2\";s:10:\"Còn hàng\";s:16:\"section_4_text_3\";s:3:\"abc\";s:16:\"section_4_text_4\";s:3:\"xyz\";}'),
(1210, 146, '_wp_old_slug', 'tranh-ve-tuong-kho-lon-d06'),
(1211, 146, '_dp_original', '104'),
(1212, 146, '_edit_lock', '1509358290:1'),
(1213, 147, '_sku', ''),
(1214, 147, '_regular_price', ''),
(1215, 147, '_sale_price', ''),
(1216, 147, '_sale_price_dates_from', ''),
(1217, 147, '_sale_price_dates_to', ''),
(1218, 147, 'total_sales', '0'),
(1219, 147, '_tax_status', 'taxable'),
(1220, 147, '_tax_class', ''),
(1221, 147, '_manage_stock', 'no'),
(1222, 147, '_backorders', 'no'),
(1223, 147, '_sold_individually', 'no'),
(1224, 147, '_weight', ''),
(1225, 147, '_length', ''),
(1226, 147, '_width', ''),
(1227, 147, '_height', ''),
(1228, 147, '_upsell_ids', 'a:0:{}'),
(1229, 147, '_crosssell_ids', 'a:0:{}'),
(1230, 147, '_purchase_note', ''),
(1231, 147, '_default_attributes', 'a:0:{}'),
(1232, 147, '_virtual', 'no'),
(1233, 147, '_downloadable', 'no'),
(1234, 147, '_product_image_gallery', ''),
(1235, 147, '_download_limit', '-1'),
(1236, 147, '_download_expiry', '-1'),
(1237, 147, '_thumbnail_id', '142'),
(1238, 147, '_stock', NULL),
(1239, 147, '_stock_status', 'instock'),
(1240, 147, '_wc_average_rating', '0'),
(1241, 147, '_wc_rating_count', 'a:0:{}'),
(1242, 147, '_wc_review_count', '0'),
(1243, 147, '_downloadable_files', 'a:0:{}'),
(1244, 147, '_product_attributes', 'a:0:{}'),
(1245, 147, '_product_version', '3.2.1'),
(1246, 147, '_price', ''),
(1247, 147, '_yoast_wpseo_primary_product_cat', ''),
(1248, 147, 'rt_sidebar', 'a:4:{s:4:\"area\";s:4:\"left\";s:17:\"left_sidebar_name\";s:9:\"sidebar-1\";s:18:\"right_sidebar_name\";s:9:\"sidebar-2\";s:12:\"is_overwrite\";b:0;}'),
(1249, 147, '_yoast_wpseo_content_score', '60'),
(1250, 147, '_custom_post_options', 'a:4:{s:16:\"section_4_text_1\";s:4:\"SP01\";s:16:\"section_4_text_2\";s:10:\"Còn hàng\";s:16:\"section_4_text_3\";s:3:\"abc\";s:16:\"section_4_text_4\";s:3:\"xyz\";}'),
(1251, 147, '_wp_old_slug', 'tranh-ve-tuong-kho-lon-d06'),
(1252, 147, '_dp_original', '104'),
(1253, 147, '_edit_lock', '1509358291:1'),
(1254, 143, '_edit_last', '1'),
(1255, 145, '_edit_last', '1'),
(1256, 146, '_edit_last', '1'),
(1257, 147, '_edit_last', '1'),
(1258, 144, '_edit_last', '1'),
(1259, 148, '_sku', ''),
(1260, 148, '_regular_price', ''),
(1261, 148, '_sale_price', ''),
(1262, 148, '_sale_price_dates_from', ''),
(1263, 148, '_sale_price_dates_to', ''),
(1264, 148, 'total_sales', '0'),
(1265, 148, '_tax_status', 'taxable'),
(1266, 148, '_tax_class', ''),
(1267, 148, '_manage_stock', 'no'),
(1268, 148, '_backorders', 'no'),
(1269, 148, '_sold_individually', 'no'),
(1270, 148, '_weight', ''),
(1271, 148, '_length', ''),
(1272, 148, '_width', ''),
(1273, 148, '_height', ''),
(1274, 148, '_upsell_ids', 'a:0:{}'),
(1275, 148, '_crosssell_ids', 'a:0:{}'),
(1276, 148, '_purchase_note', ''),
(1277, 148, '_default_attributes', 'a:0:{}'),
(1278, 148, '_virtual', 'no'),
(1279, 148, '_downloadable', 'no'),
(1280, 148, '_product_image_gallery', ''),
(1281, 148, '_download_limit', '-1'),
(1282, 148, '_download_expiry', '-1'),
(1283, 148, '_thumbnail_id', '142'),
(1284, 148, '_stock', NULL),
(1285, 148, '_stock_status', 'instock'),
(1286, 148, '_wc_average_rating', '0'),
(1287, 148, '_wc_rating_count', 'a:0:{}'),
(1288, 148, '_wc_review_count', '0'),
(1289, 148, '_downloadable_files', 'a:0:{}'),
(1290, 148, '_product_attributes', 'a:0:{}'),
(1291, 148, '_product_version', '3.2.1'),
(1292, 148, '_price', ''),
(1293, 148, '_yoast_wpseo_primary_product_cat', ''),
(1294, 148, 'rt_sidebar', 'a:4:{s:4:\"area\";s:4:\"left\";s:17:\"left_sidebar_name\";s:9:\"sidebar-1\";s:18:\"right_sidebar_name\";s:9:\"sidebar-2\";s:12:\"is_overwrite\";b:0;}'),
(1295, 148, '_yoast_wpseo_content_score', '60'),
(1296, 148, '_custom_post_options', 'a:4:{s:16:\"section_4_text_1\";s:4:\"SP01\";s:16:\"section_4_text_2\";s:10:\"Còn hàng\";s:16:\"section_4_text_3\";s:3:\"abc\";s:16:\"section_4_text_4\";s:3:\"xyz\";}'),
(1297, 148, '_wp_old_slug', 'tranh-ve-tuong-kho-lon-d06'),
(1299, 148, '_dp_original', '147'),
(1300, 149, '_sku', ''),
(1301, 149, '_regular_price', ''),
(1302, 149, '_sale_price', ''),
(1303, 149, '_sale_price_dates_from', ''),
(1304, 149, '_sale_price_dates_to', ''),
(1305, 149, 'total_sales', '0'),
(1306, 149, '_tax_status', 'taxable'),
(1307, 149, '_tax_class', ''),
(1308, 149, '_manage_stock', 'no'),
(1309, 149, '_backorders', 'no'),
(1310, 149, '_sold_individually', 'no'),
(1311, 149, '_weight', ''),
(1312, 149, '_length', ''),
(1313, 149, '_width', ''),
(1314, 149, '_height', ''),
(1315, 149, '_upsell_ids', 'a:0:{}'),
(1316, 149, '_crosssell_ids', 'a:0:{}'),
(1317, 149, '_purchase_note', ''),
(1318, 149, '_default_attributes', 'a:0:{}'),
(1319, 149, '_virtual', 'no'),
(1320, 149, '_downloadable', 'no'),
(1321, 149, '_product_image_gallery', ''),
(1322, 149, '_download_limit', '-1'),
(1323, 149, '_download_expiry', '-1'),
(1324, 149, '_thumbnail_id', '141'),
(1325, 149, '_stock', NULL),
(1326, 149, '_stock_status', 'instock'),
(1327, 149, '_wc_average_rating', '0'),
(1328, 149, '_wc_rating_count', 'a:0:{}'),
(1329, 149, '_wc_review_count', '0'),
(1330, 149, '_downloadable_files', 'a:0:{}'),
(1331, 149, '_product_attributes', 'a:0:{}'),
(1332, 149, '_product_version', '3.2.1'),
(1333, 149, '_price', ''),
(1334, 149, '_yoast_wpseo_primary_product_cat', ''),
(1335, 149, 'rt_sidebar', 'a:4:{s:4:\"area\";s:4:\"left\";s:17:\"left_sidebar_name\";s:9:\"sidebar-1\";s:18:\"right_sidebar_name\";s:9:\"sidebar-2\";s:12:\"is_overwrite\";b:0;}'),
(1336, 149, '_yoast_wpseo_content_score', '60'),
(1337, 149, '_custom_post_options', 'a:4:{s:16:\"section_4_text_1\";s:4:\"SP01\";s:16:\"section_4_text_2\";s:10:\"Còn hàng\";s:16:\"section_4_text_3\";s:3:\"abc\";s:16:\"section_4_text_4\";s:3:\"xyz\";}'),
(1338, 149, '_wp_old_slug', 'tranh-ve-tuong-kho-lon-d06'),
(1340, 149, '_dp_original', '146'),
(1341, 150, '_sku', ''),
(1342, 150, '_regular_price', ''),
(1343, 150, '_sale_price', ''),
(1344, 150, '_sale_price_dates_from', ''),
(1345, 150, '_sale_price_dates_to', ''),
(1346, 150, 'total_sales', '0'),
(1347, 150, '_tax_status', 'taxable'),
(1348, 150, '_tax_class', ''),
(1349, 150, '_manage_stock', 'no'),
(1350, 150, '_backorders', 'no'),
(1351, 150, '_sold_individually', 'no'),
(1352, 150, '_weight', ''),
(1353, 150, '_length', ''),
(1354, 150, '_width', ''),
(1355, 150, '_height', ''),
(1356, 150, '_upsell_ids', 'a:0:{}'),
(1357, 150, '_crosssell_ids', 'a:0:{}'),
(1358, 150, '_purchase_note', ''),
(1359, 150, '_default_attributes', 'a:0:{}'),
(1360, 150, '_virtual', 'no'),
(1361, 150, '_downloadable', 'no'),
(1362, 150, '_product_image_gallery', ''),
(1363, 150, '_download_limit', '-1'),
(1364, 150, '_download_expiry', '-1'),
(1365, 150, '_thumbnail_id', '140'),
(1366, 150, '_stock', NULL),
(1367, 150, '_stock_status', 'instock'),
(1368, 150, '_wc_average_rating', '0'),
(1369, 150, '_wc_rating_count', 'a:0:{}'),
(1370, 150, '_wc_review_count', '0'),
(1371, 150, '_downloadable_files', 'a:0:{}'),
(1372, 150, '_product_attributes', 'a:0:{}'),
(1373, 150, '_product_version', '3.2.1'),
(1374, 150, '_price', ''),
(1375, 150, '_yoast_wpseo_primary_product_cat', ''),
(1376, 150, 'rt_sidebar', 'a:4:{s:4:\"area\";s:4:\"left\";s:17:\"left_sidebar_name\";s:9:\"sidebar-1\";s:18:\"right_sidebar_name\";s:9:\"sidebar-2\";s:12:\"is_overwrite\";b:0;}'),
(1377, 150, '_yoast_wpseo_content_score', '60'),
(1378, 150, '_custom_post_options', 'a:4:{s:16:\"section_4_text_1\";s:4:\"SP01\";s:16:\"section_4_text_2\";s:10:\"Còn hàng\";s:16:\"section_4_text_3\";s:3:\"abc\";s:16:\"section_4_text_4\";s:3:\"xyz\";}'),
(1379, 150, '_wp_old_slug', 'tranh-ve-tuong-kho-lon-d06'),
(1381, 150, '_dp_original', '145'),
(1382, 151, '_sku', ''),
(1383, 151, '_regular_price', ''),
(1384, 151, '_sale_price', ''),
(1385, 151, '_sale_price_dates_from', ''),
(1386, 151, '_sale_price_dates_to', ''),
(1387, 151, 'total_sales', '0'),
(1388, 151, '_tax_status', 'taxable'),
(1389, 151, '_tax_class', ''),
(1390, 151, '_manage_stock', 'no'),
(1391, 151, '_backorders', 'no'),
(1392, 151, '_sold_individually', 'no'),
(1393, 151, '_weight', ''),
(1394, 151, '_length', ''),
(1395, 151, '_width', ''),
(1396, 151, '_height', ''),
(1397, 151, '_upsell_ids', 'a:0:{}'),
(1398, 151, '_crosssell_ids', 'a:0:{}'),
(1399, 151, '_purchase_note', ''),
(1400, 151, '_default_attributes', 'a:0:{}'),
(1401, 151, '_virtual', 'no'),
(1402, 151, '_downloadable', 'no'),
(1403, 151, '_product_image_gallery', ''),
(1404, 151, '_download_limit', '-1'),
(1405, 151, '_download_expiry', '-1'),
(1406, 151, '_thumbnail_id', '138'),
(1407, 151, '_stock', NULL),
(1408, 151, '_stock_status', 'instock'),
(1409, 151, '_wc_average_rating', '0'),
(1410, 151, '_wc_rating_count', 'a:0:{}'),
(1411, 151, '_wc_review_count', '0'),
(1412, 151, '_downloadable_files', 'a:0:{}'),
(1413, 151, '_product_attributes', 'a:0:{}'),
(1414, 151, '_product_version', '3.2.1'),
(1415, 151, '_price', ''),
(1416, 151, '_yoast_wpseo_primary_product_cat', ''),
(1417, 151, 'rt_sidebar', 'a:4:{s:4:\"area\";s:4:\"left\";s:17:\"left_sidebar_name\";s:9:\"sidebar-1\";s:18:\"right_sidebar_name\";s:9:\"sidebar-2\";s:12:\"is_overwrite\";b:0;}'),
(1418, 151, '_yoast_wpseo_content_score', '60'),
(1419, 151, '_custom_post_options', 'a:4:{s:16:\"section_4_text_1\";s:4:\"SP01\";s:16:\"section_4_text_2\";s:10:\"Còn hàng\";s:16:\"section_4_text_3\";s:3:\"abc\";s:16:\"section_4_text_4\";s:3:\"xyz\";}'),
(1420, 151, '_wp_old_slug', 'tranh-ve-tuong-kho-lon-d06'),
(1422, 151, '_dp_original', '143'),
(1423, 152, '_sku', ''),
(1424, 152, '_regular_price', ''),
(1425, 152, '_sale_price', ''),
(1426, 152, '_sale_price_dates_from', ''),
(1427, 152, '_sale_price_dates_to', ''),
(1428, 152, 'total_sales', '0'),
(1429, 152, '_tax_status', 'taxable'),
(1430, 152, '_tax_class', ''),
(1431, 152, '_manage_stock', 'no'),
(1432, 152, '_backorders', 'no'),
(1433, 152, '_sold_individually', 'no'),
(1434, 152, '_weight', ''),
(1435, 152, '_length', ''),
(1436, 152, '_width', ''),
(1437, 152, '_height', ''),
(1438, 152, '_upsell_ids', 'a:0:{}'),
(1439, 152, '_crosssell_ids', 'a:0:{}'),
(1440, 152, '_purchase_note', ''),
(1441, 152, '_default_attributes', 'a:0:{}'),
(1442, 152, '_virtual', 'no'),
(1443, 152, '_downloadable', 'no'),
(1444, 152, '_product_image_gallery', ''),
(1445, 152, '_download_limit', '-1'),
(1446, 152, '_download_expiry', '-1'),
(1447, 152, '_thumbnail_id', '139'),
(1448, 152, '_stock', NULL),
(1449, 152, '_stock_status', 'instock'),
(1450, 152, '_wc_average_rating', '0'),
(1451, 152, '_wc_rating_count', 'a:0:{}'),
(1452, 152, '_wc_review_count', '0'),
(1453, 152, '_downloadable_files', 'a:0:{}'),
(1454, 152, '_product_attributes', 'a:0:{}'),
(1455, 152, '_product_version', '3.2.1'),
(1456, 152, '_price', ''),
(1457, 152, '_yoast_wpseo_primary_product_cat', ''),
(1458, 152, 'rt_sidebar', 'a:4:{s:4:\"area\";s:4:\"left\";s:17:\"left_sidebar_name\";s:9:\"sidebar-1\";s:18:\"right_sidebar_name\";s:9:\"sidebar-2\";s:12:\"is_overwrite\";b:0;}'),
(1459, 152, '_yoast_wpseo_content_score', '60'),
(1460, 152, '_custom_post_options', 'a:4:{s:16:\"section_4_text_1\";s:4:\"SP01\";s:16:\"section_4_text_2\";s:10:\"Còn hàng\";s:16:\"section_4_text_3\";s:3:\"abc\";s:16:\"section_4_text_4\";s:3:\"xyz\";}'),
(1461, 152, '_wp_old_slug', 'tranh-ve-tuong-kho-lon-d06'),
(1463, 152, '_dp_original', '144'),
(1464, 153, '_sku', ''),
(1465, 153, '_regular_price', ''),
(1466, 153, '_sale_price', ''),
(1467, 153, '_sale_price_dates_from', ''),
(1468, 153, '_sale_price_dates_to', ''),
(1469, 153, 'total_sales', '0'),
(1470, 153, '_tax_status', 'taxable'),
(1471, 153, '_tax_class', ''),
(1472, 153, '_manage_stock', 'no'),
(1473, 153, '_backorders', 'no'),
(1474, 153, '_sold_individually', 'no'),
(1475, 153, '_weight', ''),
(1476, 153, '_length', ''),
(1477, 153, '_width', ''),
(1478, 153, '_height', ''),
(1479, 153, '_upsell_ids', 'a:0:{}'),
(1480, 153, '_crosssell_ids', 'a:0:{}'),
(1481, 153, '_purchase_note', ''),
(1482, 153, '_default_attributes', 'a:0:{}'),
(1483, 153, '_virtual', 'no'),
(1484, 153, '_downloadable', 'no'),
(1485, 153, '_product_image_gallery', ''),
(1486, 153, '_download_limit', '-1'),
(1487, 153, '_download_expiry', '-1'),
(1488, 153, '_thumbnail_id', '137'),
(1489, 153, '_stock', NULL),
(1490, 153, '_stock_status', 'instock'),
(1491, 153, '_wc_average_rating', '0'),
(1492, 153, '_wc_rating_count', 'a:0:{}'),
(1493, 153, '_wc_review_count', '0'),
(1494, 153, '_downloadable_files', 'a:0:{}'),
(1495, 153, '_product_attributes', 'a:0:{}'),
(1496, 153, '_product_version', '3.2.1'),
(1497, 153, '_price', ''),
(1498, 153, '_yoast_wpseo_primary_product_cat', ''),
(1499, 153, 'rt_sidebar', 'a:4:{s:4:\"area\";s:4:\"left\";s:17:\"left_sidebar_name\";s:9:\"sidebar-1\";s:18:\"right_sidebar_name\";s:9:\"sidebar-2\";s:12:\"is_overwrite\";b:0;}'),
(1500, 153, '_yoast_wpseo_content_score', '60'),
(1501, 153, '_custom_post_options', 'a:4:{s:16:\"section_4_text_1\";s:4:\"SP01\";s:16:\"section_4_text_2\";s:10:\"Còn hàng\";s:16:\"section_4_text_3\";s:3:\"abc\";s:16:\"section_4_text_4\";s:3:\"xyz\";}'),
(1502, 153, '_wp_old_slug', 'tranh-ve-tuong-kho-lon-d06'),
(1503, 153, '_dp_original', '104'),
(1504, 154, '_sku', ''),
(1505, 154, '_regular_price', ''),
(1506, 154, '_sale_price', ''),
(1507, 154, '_sale_price_dates_from', ''),
(1508, 154, '_sale_price_dates_to', ''),
(1509, 154, 'total_sales', '0'),
(1510, 154, '_tax_status', 'taxable'),
(1511, 154, '_tax_class', ''),
(1512, 154, '_manage_stock', 'no'),
(1513, 154, '_backorders', 'no'),
(1514, 154, '_sold_individually', 'no'),
(1515, 154, '_weight', ''),
(1516, 154, '_length', ''),
(1517, 154, '_width', ''),
(1518, 154, '_height', ''),
(1519, 154, '_upsell_ids', 'a:0:{}'),
(1520, 154, '_crosssell_ids', 'a:0:{}'),
(1521, 154, '_purchase_note', ''),
(1522, 154, '_default_attributes', 'a:0:{}'),
(1523, 154, '_virtual', 'no'),
(1524, 154, '_downloadable', 'no'),
(1525, 154, '_product_image_gallery', ''),
(1526, 154, '_download_limit', '-1'),
(1527, 154, '_download_expiry', '-1'),
(1528, 154, '_thumbnail_id', '137'),
(1529, 154, '_stock', NULL),
(1530, 154, '_stock_status', 'instock'),
(1531, 154, '_wc_average_rating', '0'),
(1532, 154, '_wc_rating_count', 'a:0:{}'),
(1533, 154, '_wc_review_count', '0'),
(1534, 154, '_downloadable_files', 'a:0:{}'),
(1535, 154, '_product_attributes', 'a:0:{}'),
(1536, 154, '_product_version', '3.2.1'),
(1537, 154, '_price', ''),
(1538, 154, '_yoast_wpseo_primary_product_cat', ''),
(1539, 154, 'rt_sidebar', 'a:4:{s:4:\"area\";s:4:\"left\";s:17:\"left_sidebar_name\";s:9:\"sidebar-1\";s:18:\"right_sidebar_name\";s:9:\"sidebar-2\";s:12:\"is_overwrite\";b:0;}'),
(1540, 154, '_yoast_wpseo_content_score', '60'),
(1541, 154, '_custom_post_options', 'a:4:{s:16:\"section_4_text_1\";s:4:\"SP01\";s:16:\"section_4_text_2\";s:10:\"Còn hàng\";s:16:\"section_4_text_3\";s:3:\"abc\";s:16:\"section_4_text_4\";s:3:\"xyz\";}'),
(1542, 154, '_wp_old_slug', 'tranh-ve-tuong-kho-lon-d06'),
(1544, 154, '_dp_original', '153'),
(1545, 155, '_sku', ''),
(1546, 155, '_regular_price', ''),
(1547, 155, '_sale_price', ''),
(1548, 155, '_sale_price_dates_from', ''),
(1549, 155, '_sale_price_dates_to', ''),
(1550, 155, 'total_sales', '0'),
(1551, 155, '_tax_status', 'taxable'),
(1552, 155, '_tax_class', ''),
(1553, 155, '_manage_stock', 'no'),
(1554, 155, '_backorders', 'no'),
(1555, 155, '_sold_individually', 'no'),
(1556, 155, '_weight', ''),
(1557, 155, '_length', ''),
(1558, 155, '_width', ''),
(1559, 155, '_height', ''),
(1560, 155, '_upsell_ids', 'a:0:{}'),
(1561, 155, '_crosssell_ids', 'a:0:{}'),
(1562, 155, '_purchase_note', ''),
(1563, 155, '_default_attributes', 'a:0:{}'),
(1564, 155, '_virtual', 'no'),
(1565, 155, '_downloadable', 'no'),
(1566, 155, '_product_image_gallery', ''),
(1567, 155, '_download_limit', '-1'),
(1568, 155, '_download_expiry', '-1'),
(1569, 155, '_thumbnail_id', '139'),
(1570, 155, '_stock', NULL),
(1571, 155, '_stock_status', 'instock'),
(1572, 155, '_wc_average_rating', '0'),
(1573, 155, '_wc_rating_count', 'a:0:{}'),
(1574, 155, '_wc_review_count', '0'),
(1575, 155, '_downloadable_files', 'a:0:{}'),
(1576, 155, '_product_attributes', 'a:0:{}'),
(1577, 155, '_product_version', '3.2.1'),
(1578, 155, '_price', ''),
(1579, 155, '_yoast_wpseo_primary_product_cat', ''),
(1580, 155, 'rt_sidebar', 'a:4:{s:4:\"area\";s:4:\"left\";s:17:\"left_sidebar_name\";s:9:\"sidebar-1\";s:18:\"right_sidebar_name\";s:9:\"sidebar-2\";s:12:\"is_overwrite\";b:0;}'),
(1581, 155, '_yoast_wpseo_content_score', '60'),
(1582, 155, '_custom_post_options', 'a:4:{s:16:\"section_4_text_1\";s:4:\"SP01\";s:16:\"section_4_text_2\";s:10:\"Còn hàng\";s:16:\"section_4_text_3\";s:3:\"abc\";s:16:\"section_4_text_4\";s:3:\"xyz\";}'),
(1583, 155, '_wp_old_slug', 'tranh-ve-tuong-kho-lon-d06'),
(1585, 155, '_dp_original', '152'),
(1586, 156, '_sku', ''),
(1587, 156, '_regular_price', ''),
(1588, 156, '_sale_price', ''),
(1589, 156, '_sale_price_dates_from', ''),
(1590, 156, '_sale_price_dates_to', ''),
(1591, 156, 'total_sales', '0'),
(1592, 156, '_tax_status', 'taxable'),
(1593, 156, '_tax_class', ''),
(1594, 156, '_manage_stock', 'no'),
(1595, 156, '_backorders', 'no'),
(1596, 156, '_sold_individually', 'no'),
(1597, 156, '_weight', ''),
(1598, 156, '_length', ''),
(1599, 156, '_width', ''),
(1600, 156, '_height', ''),
(1601, 156, '_upsell_ids', 'a:0:{}'),
(1602, 156, '_crosssell_ids', 'a:0:{}'),
(1603, 156, '_purchase_note', ''),
(1604, 156, '_default_attributes', 'a:0:{}'),
(1605, 156, '_virtual', 'no'),
(1606, 156, '_downloadable', 'no'),
(1607, 156, '_product_image_gallery', ''),
(1608, 156, '_download_limit', '-1'),
(1609, 156, '_download_expiry', '-1'),
(1610, 156, '_thumbnail_id', '138'),
(1611, 156, '_stock', NULL),
(1612, 156, '_stock_status', 'instock'),
(1613, 156, '_wc_average_rating', '0'),
(1614, 156, '_wc_rating_count', 'a:0:{}'),
(1615, 156, '_wc_review_count', '0'),
(1616, 156, '_downloadable_files', 'a:0:{}'),
(1617, 156, '_product_attributes', 'a:0:{}'),
(1618, 156, '_product_version', '3.2.1'),
(1619, 156, '_price', ''),
(1620, 156, '_yoast_wpseo_primary_product_cat', ''),
(1621, 156, 'rt_sidebar', 'a:4:{s:4:\"area\";s:4:\"left\";s:17:\"left_sidebar_name\";s:9:\"sidebar-1\";s:18:\"right_sidebar_name\";s:9:\"sidebar-2\";s:12:\"is_overwrite\";b:0;}'),
(1622, 156, '_yoast_wpseo_content_score', '60'),
(1623, 156, '_custom_post_options', 'a:4:{s:16:\"section_4_text_1\";s:4:\"SP01\";s:16:\"section_4_text_2\";s:10:\"Còn hàng\";s:16:\"section_4_text_3\";s:3:\"abc\";s:16:\"section_4_text_4\";s:3:\"xyz\";}'),
(1624, 156, '_wp_old_slug', 'tranh-ve-tuong-kho-lon-d06'),
(1626, 156, '_dp_original', '151'),
(1627, 157, '_sku', ''),
(1628, 157, '_regular_price', ''),
(1629, 157, '_sale_price', ''),
(1630, 157, '_sale_price_dates_from', ''),
(1631, 157, '_sale_price_dates_to', ''),
(1632, 157, 'total_sales', '0'),
(1633, 157, '_tax_status', 'taxable'),
(1634, 157, '_tax_class', ''),
(1635, 157, '_manage_stock', 'no'),
(1636, 157, '_backorders', 'no'),
(1637, 157, '_sold_individually', 'no'),
(1638, 157, '_weight', ''),
(1639, 157, '_length', ''),
(1640, 157, '_width', ''),
(1641, 157, '_height', ''),
(1642, 157, '_upsell_ids', 'a:0:{}'),
(1643, 157, '_crosssell_ids', 'a:0:{}'),
(1644, 157, '_purchase_note', ''),
(1645, 157, '_default_attributes', 'a:0:{}'),
(1646, 157, '_virtual', 'no'),
(1647, 157, '_downloadable', 'no'),
(1648, 157, '_product_image_gallery', ''),
(1649, 157, '_download_limit', '-1'),
(1650, 157, '_download_expiry', '-1'),
(1651, 157, '_thumbnail_id', '140'),
(1652, 157, '_stock', NULL),
(1653, 157, '_stock_status', 'instock'),
(1654, 157, '_wc_average_rating', '0'),
(1655, 157, '_wc_rating_count', 'a:0:{}'),
(1656, 157, '_wc_review_count', '0'),
(1657, 157, '_downloadable_files', 'a:0:{}'),
(1658, 157, '_product_attributes', 'a:0:{}'),
(1659, 157, '_product_version', '3.2.1'),
(1660, 157, '_price', ''),
(1661, 157, '_yoast_wpseo_primary_product_cat', ''),
(1662, 157, 'rt_sidebar', 'a:4:{s:4:\"area\";s:4:\"left\";s:17:\"left_sidebar_name\";s:9:\"sidebar-1\";s:18:\"right_sidebar_name\";s:9:\"sidebar-2\";s:12:\"is_overwrite\";b:0;}'),
(1663, 157, '_yoast_wpseo_content_score', '60'),
(1664, 157, '_custom_post_options', 'a:4:{s:16:\"section_4_text_1\";s:4:\"SP01\";s:16:\"section_4_text_2\";s:10:\"Còn hàng\";s:16:\"section_4_text_3\";s:3:\"abc\";s:16:\"section_4_text_4\";s:3:\"xyz\";}'),
(1665, 157, '_wp_old_slug', 'tranh-ve-tuong-kho-lon-d06'),
(1667, 157, '_dp_original', '150'),
(1668, 158, '_sku', ''),
(1669, 158, '_regular_price', ''),
(1670, 158, '_sale_price', ''),
(1671, 158, '_sale_price_dates_from', ''),
(1672, 158, '_sale_price_dates_to', ''),
(1673, 158, 'total_sales', '0'),
(1674, 158, '_tax_status', 'taxable'),
(1675, 158, '_tax_class', ''),
(1676, 158, '_manage_stock', 'no'),
(1677, 158, '_backorders', 'no'),
(1678, 158, '_sold_individually', 'no'),
(1679, 158, '_weight', ''),
(1680, 158, '_length', ''),
(1681, 158, '_width', ''),
(1682, 158, '_height', ''),
(1683, 158, '_upsell_ids', 'a:0:{}'),
(1684, 158, '_crosssell_ids', 'a:0:{}'),
(1685, 158, '_purchase_note', ''),
(1686, 158, '_default_attributes', 'a:0:{}'),
(1687, 158, '_virtual', 'no'),
(1688, 158, '_downloadable', 'no'),
(1689, 158, '_product_image_gallery', ''),
(1690, 158, '_download_limit', '-1'),
(1691, 158, '_download_expiry', '-1'),
(1692, 158, '_thumbnail_id', '141'),
(1693, 158, '_stock', NULL),
(1694, 158, '_stock_status', 'instock'),
(1695, 158, '_wc_average_rating', '0'),
(1696, 158, '_wc_rating_count', 'a:0:{}'),
(1697, 158, '_wc_review_count', '0'),
(1698, 158, '_downloadable_files', 'a:0:{}'),
(1699, 158, '_product_attributes', 'a:0:{}'),
(1700, 158, '_product_version', '3.2.1'),
(1701, 158, '_price', ''),
(1702, 158, '_yoast_wpseo_primary_product_cat', ''),
(1703, 158, 'rt_sidebar', 'a:4:{s:4:\"area\";s:4:\"left\";s:17:\"left_sidebar_name\";s:9:\"sidebar-1\";s:18:\"right_sidebar_name\";s:9:\"sidebar-2\";s:12:\"is_overwrite\";b:0;}'),
(1704, 158, '_yoast_wpseo_content_score', '60'),
(1705, 158, '_custom_post_options', 'a:4:{s:16:\"section_4_text_1\";s:4:\"SP01\";s:16:\"section_4_text_2\";s:10:\"Còn hàng\";s:16:\"section_4_text_3\";s:3:\"abc\";s:16:\"section_4_text_4\";s:3:\"xyz\";}'),
(1706, 158, '_wp_old_slug', 'tranh-ve-tuong-kho-lon-d06'),
(1708, 158, '_dp_original', '149'),
(1709, 159, '_sku', ''),
(1710, 159, '_regular_price', ''),
(1711, 159, '_sale_price', ''),
(1712, 159, '_sale_price_dates_from', ''),
(1713, 159, '_sale_price_dates_to', ''),
(1714, 159, 'total_sales', '0'),
(1715, 159, '_tax_status', 'taxable'),
(1716, 159, '_tax_class', ''),
(1717, 159, '_manage_stock', 'no'),
(1718, 159, '_backorders', 'no'),
(1719, 159, '_sold_individually', 'no'),
(1720, 159, '_weight', ''),
(1721, 159, '_length', ''),
(1722, 159, '_width', ''),
(1723, 159, '_height', ''),
(1724, 159, '_upsell_ids', 'a:0:{}'),
(1725, 159, '_crosssell_ids', 'a:0:{}'),
(1726, 159, '_purchase_note', ''),
(1727, 159, '_default_attributes', 'a:0:{}'),
(1728, 159, '_virtual', 'no'),
(1729, 159, '_downloadable', 'no'),
(1730, 159, '_product_image_gallery', ''),
(1731, 159, '_download_limit', '-1'),
(1732, 159, '_download_expiry', '-1'),
(1733, 159, '_thumbnail_id', '142'),
(1734, 159, '_stock', NULL),
(1735, 159, '_stock_status', 'instock'),
(1736, 159, '_wc_average_rating', '0'),
(1737, 159, '_wc_rating_count', 'a:0:{}'),
(1738, 159, '_wc_review_count', '0'),
(1739, 159, '_downloadable_files', 'a:0:{}'),
(1740, 159, '_product_attributes', 'a:0:{}'),
(1741, 159, '_product_version', '3.2.1'),
(1742, 159, '_price', ''),
(1743, 159, '_yoast_wpseo_primary_product_cat', ''),
(1744, 159, 'rt_sidebar', 'a:4:{s:4:\"area\";s:4:\"left\";s:17:\"left_sidebar_name\";s:9:\"sidebar-1\";s:18:\"right_sidebar_name\";s:9:\"sidebar-2\";s:12:\"is_overwrite\";b:0;}'),
(1745, 159, '_yoast_wpseo_content_score', '60'),
(1746, 159, '_custom_post_options', 'a:4:{s:16:\"section_4_text_1\";s:4:\"SP01\";s:16:\"section_4_text_2\";s:10:\"Còn hàng\";s:16:\"section_4_text_3\";s:3:\"abc\";s:16:\"section_4_text_4\";s:3:\"xyz\";}'),
(1747, 159, '_wp_old_slug', 'tranh-ve-tuong-kho-lon-d06'),
(1749, 159, '_dp_original', '148'),
(1750, 160, '_sku', ''),
(1751, 160, '_regular_price', ''),
(1752, 160, '_sale_price', ''),
(1753, 160, '_sale_price_dates_from', ''),
(1754, 160, '_sale_price_dates_to', ''),
(1755, 160, 'total_sales', '0'),
(1756, 160, '_tax_status', 'taxable'),
(1757, 160, '_tax_class', ''),
(1758, 160, '_manage_stock', 'no'),
(1759, 160, '_backorders', 'no'),
(1760, 160, '_sold_individually', 'no'),
(1761, 160, '_weight', ''),
(1762, 160, '_length', ''),
(1763, 160, '_width', ''),
(1764, 160, '_height', ''),
(1765, 160, '_upsell_ids', 'a:0:{}'),
(1766, 160, '_crosssell_ids', 'a:0:{}'),
(1767, 160, '_purchase_note', ''),
(1768, 160, '_default_attributes', 'a:0:{}'),
(1769, 160, '_virtual', 'no'),
(1770, 160, '_downloadable', 'no'),
(1771, 160, '_product_image_gallery', ''),
(1772, 160, '_download_limit', '-1'),
(1773, 160, '_download_expiry', '-1'),
(1774, 160, '_thumbnail_id', '139'),
(1775, 160, '_stock', NULL),
(1776, 160, '_stock_status', 'instock'),
(1777, 160, '_wc_average_rating', '0'),
(1778, 160, '_wc_rating_count', 'a:0:{}'),
(1779, 160, '_wc_review_count', '0'),
(1780, 160, '_downloadable_files', 'a:0:{}'),
(1781, 160, '_product_attributes', 'a:0:{}'),
(1782, 160, '_product_version', '3.2.1'),
(1783, 160, '_price', ''),
(1784, 160, '_yoast_wpseo_primary_product_cat', ''),
(1785, 160, 'rt_sidebar', 'a:4:{s:4:\"area\";s:4:\"left\";s:17:\"left_sidebar_name\";s:9:\"sidebar-1\";s:18:\"right_sidebar_name\";s:9:\"sidebar-2\";s:12:\"is_overwrite\";b:0;}'),
(1786, 160, '_yoast_wpseo_content_score', '60'),
(1787, 160, '_custom_post_options', 'a:4:{s:16:\"section_4_text_1\";s:4:\"SP01\";s:16:\"section_4_text_2\";s:10:\"Còn hàng\";s:16:\"section_4_text_3\";s:3:\"abc\";s:16:\"section_4_text_4\";s:3:\"xyz\";}'),
(1788, 160, '_wp_old_slug', 'tranh-ve-tuong-kho-lon-d06'),
(1790, 160, '_dp_original', '144'),
(1791, 161, '_sku', ''),
(1792, 161, '_regular_price', ''),
(1793, 161, '_sale_price', ''),
(1794, 161, '_sale_price_dates_from', ''),
(1795, 161, '_sale_price_dates_to', ''),
(1796, 161, 'total_sales', '0'),
(1797, 161, '_tax_status', 'taxable'),
(1798, 161, '_tax_class', ''),
(1799, 161, '_manage_stock', 'no'),
(1800, 161, '_backorders', 'no'),
(1801, 161, '_sold_individually', 'no'),
(1802, 161, '_weight', ''),
(1803, 161, '_length', ''),
(1804, 161, '_width', ''),
(1805, 161, '_height', ''),
(1806, 161, '_upsell_ids', 'a:0:{}'),
(1807, 161, '_crosssell_ids', 'a:0:{}'),
(1808, 161, '_purchase_note', ''),
(1809, 161, '_default_attributes', 'a:0:{}'),
(1810, 161, '_virtual', 'no'),
(1811, 161, '_downloadable', 'no'),
(1812, 161, '_product_image_gallery', ''),
(1813, 161, '_download_limit', '-1'),
(1814, 161, '_download_expiry', '-1'),
(1815, 161, '_thumbnail_id', '142'),
(1816, 161, '_stock', NULL),
(1817, 161, '_stock_status', 'instock'),
(1818, 161, '_wc_average_rating', '0'),
(1819, 161, '_wc_rating_count', 'a:0:{}'),
(1820, 161, '_wc_review_count', '0'),
(1821, 161, '_downloadable_files', 'a:0:{}'),
(1822, 161, '_product_attributes', 'a:0:{}'),
(1823, 161, '_product_version', '3.2.1'),
(1824, 161, '_price', ''),
(1825, 161, '_yoast_wpseo_primary_product_cat', ''),
(1826, 161, 'rt_sidebar', 'a:4:{s:4:\"area\";s:4:\"left\";s:17:\"left_sidebar_name\";s:9:\"sidebar-1\";s:18:\"right_sidebar_name\";s:9:\"sidebar-2\";s:12:\"is_overwrite\";b:0;}'),
(1827, 161, '_yoast_wpseo_content_score', '60'),
(1828, 161, '_custom_post_options', 'a:4:{s:16:\"section_4_text_1\";s:4:\"SP01\";s:16:\"section_4_text_2\";s:10:\"Còn hàng\";s:16:\"section_4_text_3\";s:3:\"abc\";s:16:\"section_4_text_4\";s:3:\"xyz\";}'),
(1829, 161, '_wp_old_slug', 'tranh-ve-tuong-kho-lon-d06'),
(1831, 161, '_dp_original', '147'),
(1832, 162, '_sku', ''),
(1833, 162, '_regular_price', ''),
(1834, 162, '_sale_price', ''),
(1835, 162, '_sale_price_dates_from', ''),
(1836, 162, '_sale_price_dates_to', ''),
(1837, 162, 'total_sales', '0'),
(1838, 162, '_tax_status', 'taxable'),
(1839, 162, '_tax_class', ''),
(1840, 162, '_manage_stock', 'no'),
(1841, 162, '_backorders', 'no'),
(1842, 162, '_sold_individually', 'no'),
(1843, 162, '_weight', ''),
(1844, 162, '_length', ''),
(1845, 162, '_width', ''),
(1846, 162, '_height', ''),
(1847, 162, '_upsell_ids', 'a:0:{}'),
(1848, 162, '_crosssell_ids', 'a:0:{}'),
(1849, 162, '_purchase_note', ''),
(1850, 162, '_default_attributes', 'a:0:{}'),
(1851, 162, '_virtual', 'no'),
(1852, 162, '_downloadable', 'no'),
(1853, 162, '_product_image_gallery', ''),
(1854, 162, '_download_limit', '-1'),
(1855, 162, '_download_expiry', '-1'),
(1856, 162, '_thumbnail_id', '141'),
(1857, 162, '_stock', NULL),
(1858, 162, '_stock_status', 'instock'),
(1859, 162, '_wc_average_rating', '0'),
(1860, 162, '_wc_rating_count', 'a:0:{}'),
(1861, 162, '_wc_review_count', '0'),
(1862, 162, '_downloadable_files', 'a:0:{}'),
(1863, 162, '_product_attributes', 'a:0:{}'),
(1864, 162, '_product_version', '3.2.1'),
(1865, 162, '_price', ''),
(1866, 162, '_yoast_wpseo_primary_product_cat', ''),
(1867, 162, 'rt_sidebar', 'a:4:{s:4:\"area\";s:4:\"left\";s:17:\"left_sidebar_name\";s:9:\"sidebar-1\";s:18:\"right_sidebar_name\";s:9:\"sidebar-2\";s:12:\"is_overwrite\";b:0;}'),
(1868, 162, '_yoast_wpseo_content_score', '60'),
(1869, 162, '_custom_post_options', 'a:4:{s:16:\"section_4_text_1\";s:4:\"SP01\";s:16:\"section_4_text_2\";s:10:\"Còn hàng\";s:16:\"section_4_text_3\";s:3:\"abc\";s:16:\"section_4_text_4\";s:3:\"xyz\";}'),
(1870, 162, '_wp_old_slug', 'tranh-ve-tuong-kho-lon-d06'),
(1872, 162, '_dp_original', '146'),
(1873, 163, '_sku', ''),
(1874, 163, '_regular_price', ''),
(1875, 163, '_sale_price', ''),
(1876, 163, '_sale_price_dates_from', ''),
(1877, 163, '_sale_price_dates_to', ''),
(1878, 163, 'total_sales', '0'),
(1879, 163, '_tax_status', 'taxable'),
(1880, 163, '_tax_class', ''),
(1881, 163, '_manage_stock', 'no'),
(1882, 163, '_backorders', 'no'),
(1883, 163, '_sold_individually', 'no'),
(1884, 163, '_weight', ''),
(1885, 163, '_length', ''),
(1886, 163, '_width', ''),
(1887, 163, '_height', ''),
(1888, 163, '_upsell_ids', 'a:0:{}'),
(1889, 163, '_crosssell_ids', 'a:0:{}'),
(1890, 163, '_purchase_note', ''),
(1891, 163, '_default_attributes', 'a:0:{}'),
(1892, 163, '_virtual', 'no'),
(1893, 163, '_downloadable', 'no'),
(1894, 163, '_product_image_gallery', ''),
(1895, 163, '_download_limit', '-1'),
(1896, 163, '_download_expiry', '-1'),
(1897, 163, '_thumbnail_id', '140'),
(1898, 163, '_stock', NULL),
(1899, 163, '_stock_status', 'instock'),
(1900, 163, '_wc_average_rating', '0'),
(1901, 163, '_wc_rating_count', 'a:0:{}'),
(1902, 163, '_wc_review_count', '0'),
(1903, 163, '_downloadable_files', 'a:0:{}'),
(1904, 163, '_product_attributes', 'a:0:{}');
INSERT INTO `rt_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1905, 163, '_product_version', '3.2.1'),
(1906, 163, '_price', ''),
(1907, 163, '_yoast_wpseo_primary_product_cat', ''),
(1908, 163, 'rt_sidebar', 'a:4:{s:4:\"area\";s:4:\"left\";s:17:\"left_sidebar_name\";s:9:\"sidebar-1\";s:18:\"right_sidebar_name\";s:9:\"sidebar-2\";s:12:\"is_overwrite\";b:0;}'),
(1909, 163, '_yoast_wpseo_content_score', '60'),
(1910, 163, '_custom_post_options', 'a:4:{s:16:\"section_4_text_1\";s:4:\"SP01\";s:16:\"section_4_text_2\";s:10:\"Còn hàng\";s:16:\"section_4_text_3\";s:3:\"abc\";s:16:\"section_4_text_4\";s:3:\"xyz\";}'),
(1911, 163, '_wp_old_slug', 'tranh-ve-tuong-kho-lon-d06'),
(1913, 163, '_dp_original', '145'),
(1914, 164, '_sku', ''),
(1915, 164, '_regular_price', ''),
(1916, 164, '_sale_price', ''),
(1917, 164, '_sale_price_dates_from', ''),
(1918, 164, '_sale_price_dates_to', ''),
(1919, 164, 'total_sales', '0'),
(1920, 164, '_tax_status', 'taxable'),
(1921, 164, '_tax_class', ''),
(1922, 164, '_manage_stock', 'no'),
(1923, 164, '_backorders', 'no'),
(1924, 164, '_sold_individually', 'no'),
(1925, 164, '_weight', ''),
(1926, 164, '_length', ''),
(1927, 164, '_width', ''),
(1928, 164, '_height', ''),
(1929, 164, '_upsell_ids', 'a:0:{}'),
(1930, 164, '_crosssell_ids', 'a:0:{}'),
(1931, 164, '_purchase_note', ''),
(1932, 164, '_default_attributes', 'a:0:{}'),
(1933, 164, '_virtual', 'no'),
(1934, 164, '_downloadable', 'no'),
(1935, 164, '_product_image_gallery', ''),
(1936, 164, '_download_limit', '-1'),
(1937, 164, '_download_expiry', '-1'),
(1938, 164, '_thumbnail_id', '138'),
(1939, 164, '_stock', NULL),
(1940, 164, '_stock_status', 'instock'),
(1941, 164, '_wc_average_rating', '0'),
(1942, 164, '_wc_rating_count', 'a:0:{}'),
(1943, 164, '_wc_review_count', '0'),
(1944, 164, '_downloadable_files', 'a:0:{}'),
(1945, 164, '_product_attributes', 'a:0:{}'),
(1946, 164, '_product_version', '3.2.1'),
(1947, 164, '_price', ''),
(1948, 164, '_yoast_wpseo_primary_product_cat', ''),
(1949, 164, 'rt_sidebar', 'a:4:{s:4:\"area\";s:4:\"left\";s:17:\"left_sidebar_name\";s:9:\"sidebar-1\";s:18:\"right_sidebar_name\";s:9:\"sidebar-2\";s:12:\"is_overwrite\";b:0;}'),
(1950, 164, '_yoast_wpseo_content_score', '60'),
(1951, 164, '_custom_post_options', 'a:4:{s:16:\"section_4_text_1\";s:4:\"SP01\";s:16:\"section_4_text_2\";s:10:\"Còn hàng\";s:16:\"section_4_text_3\";s:3:\"abc\";s:16:\"section_4_text_4\";s:3:\"xyz\";}'),
(1952, 164, '_wp_old_slug', 'tranh-ve-tuong-kho-lon-d06'),
(1954, 164, '_dp_original', '143'),
(1955, 165, '_sku', ''),
(1956, 165, '_regular_price', ''),
(1957, 165, '_sale_price', ''),
(1958, 165, '_sale_price_dates_from', ''),
(1959, 165, '_sale_price_dates_to', ''),
(1960, 165, 'total_sales', '0'),
(1961, 165, '_tax_status', 'taxable'),
(1962, 165, '_tax_class', ''),
(1963, 165, '_manage_stock', 'no'),
(1964, 165, '_backorders', 'no'),
(1965, 165, '_sold_individually', 'no'),
(1966, 165, '_weight', ''),
(1967, 165, '_length', ''),
(1968, 165, '_width', ''),
(1969, 165, '_height', ''),
(1970, 165, '_upsell_ids', 'a:0:{}'),
(1971, 165, '_crosssell_ids', 'a:0:{}'),
(1972, 165, '_purchase_note', ''),
(1973, 165, '_default_attributes', 'a:0:{}'),
(1974, 165, '_virtual', 'no'),
(1975, 165, '_downloadable', 'no'),
(1976, 165, '_product_image_gallery', ''),
(1977, 165, '_download_limit', '-1'),
(1978, 165, '_download_expiry', '-1'),
(1979, 165, '_thumbnail_id', '137'),
(1980, 165, '_stock', NULL),
(1981, 165, '_stock_status', 'instock'),
(1982, 165, '_wc_average_rating', '0'),
(1983, 165, '_wc_rating_count', 'a:0:{}'),
(1984, 165, '_wc_review_count', '0'),
(1985, 165, '_downloadable_files', 'a:0:{}'),
(1986, 165, '_product_attributes', 'a:0:{}'),
(1987, 165, '_product_version', '3.2.1'),
(1988, 165, '_price', ''),
(1989, 165, '_yoast_wpseo_primary_product_cat', ''),
(1990, 165, 'rt_sidebar', 'a:4:{s:4:\"area\";s:4:\"left\";s:17:\"left_sidebar_name\";s:9:\"sidebar-1\";s:18:\"right_sidebar_name\";s:9:\"sidebar-2\";s:12:\"is_overwrite\";b:0;}'),
(1991, 165, '_yoast_wpseo_content_score', '60'),
(1992, 165, '_custom_post_options', 'a:4:{s:16:\"section_4_text_1\";s:4:\"SP01\";s:16:\"section_4_text_2\";s:10:\"Còn hàng\";s:16:\"section_4_text_3\";s:3:\"abc\";s:16:\"section_4_text_4\";s:3:\"xyz\";}'),
(1993, 165, '_wp_old_slug', 'tranh-ve-tuong-kho-lon-d06'),
(1994, 165, '_dp_original', '104'),
(1995, 166, '_menu_item_type', 'taxonomy'),
(1996, 166, '_menu_item_menu_item_parent', '0'),
(1997, 166, '_menu_item_object_id', '43'),
(1998, 166, '_menu_item_object', 'product_cat'),
(1999, 166, '_menu_item_target', ''),
(2000, 166, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(2001, 166, '_menu_item_xfn', ''),
(2002, 166, '_menu_item_url', ''),
(2004, 167, '_menu_item_type', 'taxonomy'),
(2005, 167, '_menu_item_menu_item_parent', '0'),
(2006, 167, '_menu_item_object_id', '35'),
(2007, 167, '_menu_item_object', 'category'),
(2008, 167, '_menu_item_target', ''),
(2009, 167, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(2010, 167, '_menu_item_xfn', ''),
(2011, 167, '_menu_item_url', ''),
(2013, 168, '_menu_item_type', 'taxonomy'),
(2014, 168, '_menu_item_menu_item_parent', '0'),
(2015, 168, '_menu_item_object_id', '36'),
(2016, 168, '_menu_item_object', 'category'),
(2017, 168, '_menu_item_target', ''),
(2018, 168, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(2019, 168, '_menu_item_xfn', ''),
(2020, 168, '_menu_item_url', ''),
(2022, 169, '_menu_item_type', 'taxonomy'),
(2023, 169, '_menu_item_menu_item_parent', '0'),
(2024, 169, '_menu_item_object_id', '37'),
(2025, 169, '_menu_item_object', 'product_cat'),
(2026, 169, '_menu_item_target', ''),
(2027, 169, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(2028, 169, '_menu_item_xfn', ''),
(2029, 169, '_menu_item_url', ''),
(2031, 170, '_menu_item_type', 'taxonomy'),
(2032, 170, '_menu_item_menu_item_parent', '0'),
(2033, 170, '_menu_item_object_id', '38'),
(2034, 170, '_menu_item_object', 'product_cat'),
(2035, 170, '_menu_item_target', ''),
(2036, 170, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(2037, 170, '_menu_item_xfn', ''),
(2038, 170, '_menu_item_url', ''),
(2040, 171, '_menu_item_type', 'taxonomy'),
(2041, 171, '_menu_item_menu_item_parent', '0'),
(2042, 171, '_menu_item_object_id', '39'),
(2043, 171, '_menu_item_object', 'product_cat'),
(2044, 171, '_menu_item_target', ''),
(2045, 171, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(2046, 171, '_menu_item_xfn', ''),
(2047, 171, '_menu_item_url', ''),
(2049, 172, '_menu_item_type', 'taxonomy'),
(2050, 172, '_menu_item_menu_item_parent', '0'),
(2051, 172, '_menu_item_object_id', '40'),
(2052, 172, '_menu_item_object', 'product_cat'),
(2053, 172, '_menu_item_target', ''),
(2054, 172, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(2055, 172, '_menu_item_xfn', ''),
(2056, 172, '_menu_item_url', ''),
(2058, 173, '_menu_item_type', 'taxonomy'),
(2059, 173, '_menu_item_menu_item_parent', '0'),
(2060, 173, '_menu_item_object_id', '41'),
(2061, 173, '_menu_item_object', 'product_cat'),
(2062, 173, '_menu_item_target', ''),
(2063, 173, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(2064, 173, '_menu_item_xfn', ''),
(2065, 173, '_menu_item_url', ''),
(2067, 174, '_menu_item_type', 'taxonomy'),
(2068, 174, '_menu_item_menu_item_parent', '0'),
(2069, 174, '_menu_item_object_id', '42'),
(2070, 174, '_menu_item_object', 'product_cat'),
(2071, 174, '_menu_item_target', ''),
(2072, 174, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(2073, 174, '_menu_item_xfn', ''),
(2074, 174, '_menu_item_url', ''),
(2076, 148, '_edit_lock', '1509358480:1'),
(2077, 148, '_edit_last', '1');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `rt_posts`
--

CREATE TABLE `rt_posts` (
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
-- Đang đổ dữ liệu cho bảng `rt_posts`
--

INSERT INTO `rt_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(2, 1, '2017-06-15 04:20:37', '2017-06-14 21:20:37', 'Đây là một trang mẫu. Nó khác với một bài blog bởi vì nó sẽ là một trang tĩnh và sẽ được thêm vào thanh menu của trang web của bạn (trong hầu hết theme). Mọi người thường bắt đầu bằng một trang Giới thiệu để giới thiệu bản thân đến người dùng tiềm năng. Bạn có thể viết như sau:\r\n<blockquote>Xin chào! Tôi là người giao thư bằng xe đạp vào ban ngày, một diễn viên đầy tham vọng vào ban đêm, và đây là trang web của tôi. Tôi sống ở Los Angeles, có một chú cho tuyệt vời tên là Jack, và tôi thích uống cocktail.</blockquote>\r\n...hay như thế này:\r\n<blockquote>Công ty XYZ Doohickey được thành lập vào năm 1971, và đã cung cấp đồ dùng chất lượng cho công chúng kể từ đó. Nằm ở thành phố Gotham, XYZ tạo việc làm cho hơn 2.000 người và làm tất cả những điều tuyệt vời cho cộng đồng Gotham.</blockquote>\r\nLà người dùng WordPress mới, bạn nên truy cập <a href=\"http://raothue.ddns.net/demo/rt-core/wp-admin/\">trang quản trị</a> để xóa trang này và tạo các trang mới cho nội dung của bạn. Chúc vui vẻ!', 'Giới thiệu', '', 'publish', 'closed', 'closed', '', 'gioi-thieu', '', '', '2017-09-24 23:23:03', '2017-09-24 16:23:03', '', 0, 'http://raothue.ddns.net/demo/rt-core/?page_id=2', 0, 'page', '', 0),
(5, 1, '2017-06-15 04:22:29', '2017-06-15 04:22:29', 'Đây là một trang mẫu. Nó khác với một bài blog bởi vì nó sẽ là một trang tĩnh và sẽ được thêm vào thanh menu của trang web của bạn (trong hầu hết theme). Mọi người thường bắt đầu bằng một trang Giới thiệu để giới thiệu bản thân đến người dùng tiềm năng. Bạn có thể viết như sau:\r\n<blockquote>Xin chào! Tôi là người giao thư bằng xe đạp vào ban ngày, một diễn viên đầy tham vọng vào ban đêm, và đây là trang web của tôi. Tôi sống ở Los Angeles, có một chú cho tuyệt vời tên là Jack, và tôi thích uống cocktail.</blockquote>\r\n...hay như thế này:\r\n<blockquote>Công ty XYZ Doohickey được thành lập vào năm 1971, và đã cung cấp đồ dùng chất lượng cho công chúng kể từ đó. Nằm ở thành phố Gotham, XYZ tạo việc làm cho hơn 2.000 người và làm tất cả những điều tuyệt vời cho cộng đồng Gotham.</blockquote>\r\nLà người dùng WordPress mới, bạn nên truy cập <a href=\"http://raothue.ddns.net/demo/rt-core/wp-admin/\">trang quản trị</a> để xóa trang này và tạo các trang mới cho nội dung của bạn. Chúc vui vẻ!', 'Trang Mẫu', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2017-06-15 04:22:29', '2017-06-15 04:22:29', '', 2, 'http://raothue.ddns.net/demo/rt-core/2-revision-v1/', 0, 'revision', '', 0),
(6, 1, '2017-06-15 04:22:51', '2017-06-15 04:22:51', '<div class=\"row\">\r\n<div class=\"col-md-6 col-sm-6\">[text* your-name placeholder\"Họ tên\"]</div>\r\n<div class=\"col-md-6 col-sm-6\">[tel* your-tel placeholder\"Số điện thoại\"]</div>\r\n<div class=\"col-md-6 col-sm-6\">[email* your-email placeholder\"Email\"]</div>\r\n<div class=\"col-md-6 col-sm-6\">[text your-subject placeholder\"Tiêu đề\"]</div>\r\n<div class=\"col-md-12 col-sm-12\">[textarea your-message placeholder\"Nội dung\"] </div>\r\n</div>\r\n[submit \"Gửi\"]\r\n<style>\r\n.wpcf7-form-control:not(.wpcf7-submit) { padding: 5px 10px; margin: 15px 0;}\r\n</style>\n1\nRT - Core \"[your-subject]\"\n[your-name] <wordpress@raothue.ddns.net>\nmailtrunggian01@gmail.com\nGửi từ: [your-name] \r\nEmail: [your-email]\r\nSố điện thoại: [your-tel]\r\nTiêu đê: [your-subject]\r\n\r\nNội dung:\r\n[your-message]\nReply-To: [your-email]\n\n\n\n\nRT - Core \"[your-subject]\"\nRT - Core <wordpress@raothue.ddns.net>\n[your-email]\nMessage Body:\r\n[your-message]\r\n\r\n-- \r\nThis e-mail was sent from a contact form on RT - Core (http://raothue.ddns.net/demo/rt-core)\nReply-To: phamtuan170291@gmail.com\n\n\n\nThank you for your message. It has been sent.\nThere was an error trying to send your message. Please try again later.\nOne or more fields have an error. Please check and try again.\nThere was an error trying to send your message. Please try again later.\nYou must accept the terms and conditions before sending your message.\nThe field is required.\nThe field is too long.\nThe field is too short.\nThe date format is incorrect.\nThe date is before the earliest one allowed.\nThe date is after the latest one allowed.\nThere was an unknown error uploading the file.\nYou are not allowed to upload files of this type.\nThe file is too big.\nThere was an error uploading the file.\nThe number format is invalid.\nThe number is smaller than the minimum allowed.\nThe number is larger than the maximum allowed.\nThe answer to the quiz is incorrect.\nYour entered code is incorrect.\nThe e-mail address entered is invalid.\nThe URL is invalid.\nThe telephone number is invalid.', 'Contact form 1', '', 'publish', 'closed', 'closed', '', 'contact-form-1', '', '', '2017-09-28 20:56:47', '2017-09-28 13:56:47', '', 0, 'http://raothue.ddns.net/demo/rt-core/?post_type=wpcf7_contact_form&#038;p=6', 0, 'wpcf7_contact_form', '', 0),
(8, 1, '2017-06-15 04:23:49', '2017-06-15 04:23:49', '[woocommerce_cart]', 'Giỏ hàng', '', 'publish', 'closed', 'closed', '', 'gio-hang', '', '', '2017-06-15 04:23:49', '2017-06-15 04:23:49', '', 0, 'http://raothue.ddns.net/demo/rt-core/gio-hang/', 0, 'page', '', 0),
(9, 1, '2017-06-15 04:23:49', '2017-06-15 04:23:49', '[woocommerce_checkout]', 'Thanh toán', '', 'publish', 'closed', 'closed', '', 'thanh-toan', '', '', '2017-06-15 04:23:49', '2017-06-15 04:23:49', '', 0, 'http://raothue.ddns.net/demo/rt-core/thanh-toan/', 0, 'page', '', 0),
(10, 1, '2017-06-15 04:23:49', '2017-06-15 04:23:49', '[woocommerce_my_account]', 'My account', '', 'publish', 'closed', 'closed', '', 'tai-khoan', '', '', '2017-06-15 04:23:49', '2017-06-15 04:23:49', '', 0, 'http://raothue.ddns.net/demo/rt-core/tai-khoan/', 0, 'page', '', 0),
(12, 1, '2017-06-15 04:28:56', '2017-06-15 04:28:56', '', 'Slide Home', '', 'publish', 'closed', 'closed', '', 'new-slider', '', '', '2017-10-30 15:09:33', '2017-10-30 08:09:33', '', 0, 'http://raothue.ddns.net/demo/rt-core/?post_type=ml-slider&#038;p=12', 0, 'ml-slider', '', 0),
(15, 1, '2017-06-15 06:35:55', '2017-06-15 06:35:55', '[contact-form-7 id=\"6\" title=\"Contact form 1\"]', 'Liên hệ', '', 'publish', 'closed', 'closed', '', 'lien-he', '', '', '2017-06-15 06:35:55', '2017-06-15 06:35:55', '', 0, 'http://raothue.ddns.net/demo/rt-core/?page_id=15', 0, 'page', '', 0),
(16, 1, '2017-06-15 06:35:55', '2017-06-15 06:35:55', '[contact-form-7 id=\"6\" title=\"Contact form 1\"]', 'Liên hệ', '', 'inherit', 'closed', 'closed', '', '15-revision-v1', '', '', '2017-06-15 06:35:55', '2017-06-15 06:35:55', '', 15, 'http://raothue.ddns.net/demo/rt-core/15-revision-v1/', 0, 'revision', '', 0),
(19, 1, '2017-06-15 06:36:40', '2017-06-15 06:36:40', ' ', '', '', 'publish', 'closed', 'closed', '', '19', '', '', '2017-10-30 17:15:13', '2017-10-30 10:15:13', '', 0, 'http://raothue.ddns.net/demo/rt-core/?p=19', 6, 'nav_menu_item', '', 0),
(53, 1, '2017-06-15 07:30:00', '2017-06-15 07:30:00', '', 'Slider 12 - image', '', 'publish', 'closed', 'closed', '', 'slider-12-image', '', '', '2017-07-04 08:41:00', '2017-07-04 08:41:00', '', 0, 'http://raothue.ddns.net/demo/rt-core/?post_type=ml-slide&#038;p=53', 0, 'ml-slide', '', 0),
(74, 1, '2017-09-05 14:16:27', '2017-09-05 07:16:27', '', '1', '', 'inherit', 'open', 'closed', '', '1', '', '', '2017-09-19 15:41:24', '2017-09-19 08:41:24', '', 104, 'http://localhost/RT-Aug/wp-content/uploads/2017/09/1.jpg', 0, 'attachment', 'image/jpeg', 0),
(75, 1, '2017-09-05 14:16:29', '2017-09-05 07:16:29', '', '2', '', 'inherit', 'open', 'closed', '', '2', '', '', '2017-10-12 10:44:38', '2017-10-12 03:44:38', '', 97, 'http://localhost/RT-Aug/wp-content/uploads/2017/09/2.jpg', 0, 'attachment', 'image/jpeg', 0),
(76, 1, '2017-09-05 14:16:31', '2017-09-05 07:16:31', '', '3', '', 'inherit', 'open', 'closed', '', '3', '', '', '2017-10-12 10:44:38', '2017-10-12 03:44:38', '', 97, 'http://localhost/RT-Aug/wp-content/uploads/2017/09/3.jpg', 0, 'attachment', 'image/jpeg', 0),
(77, 1, '2017-09-05 14:16:33', '2017-09-05 07:16:33', '', '4', '', 'inherit', 'open', 'closed', '', '4', '', '', '2017-10-12 10:44:38', '2017-10-12 03:44:38', '', 97, 'http://localhost/RT-Aug/wp-content/uploads/2017/09/4.jpg', 0, 'attachment', 'image/jpeg', 0),
(78, 1, '2017-09-05 14:16:35', '2017-09-05 07:16:35', '', '5', '', 'inherit', 'open', 'closed', '', '5', '', '', '2017-10-12 10:44:38', '2017-10-12 03:44:38', '', 97, 'http://localhost/RT-Aug/wp-content/uploads/2017/09/5.jpg', 0, 'attachment', 'image/jpeg', 0),
(79, 1, '2017-09-05 14:16:37', '2017-09-05 07:16:37', '', '6', '', 'inherit', 'open', 'closed', '', '6', '', '', '2017-09-19 15:45:29', '2017-09-19 08:45:29', '', 104, 'http://localhost/RT-Aug/wp-content/uploads/2017/09/6.jpg', 0, 'attachment', 'image/jpeg', 0),
(80, 1, '2017-09-05 14:16:39', '2017-09-05 07:16:39', '', 'logo', '', 'inherit', 'open', 'closed', '', 'logo', '', '', '2017-09-05 14:16:39', '2017-09-05 07:16:39', '', 0, 'http://localhost/RT-Aug/wp-content/uploads/2017/09/logo.png', 0, 'attachment', 'image/png', 0),
(81, 1, '2017-09-05 14:19:06', '2017-09-05 07:19:06', 'Chúng ta vẫn biết rằng, làm việc với một đoạn văn bản dễ đọc và rõ nghĩa dễ gây rối trí và cản trở việc tập trung vào yếu tố trình bày văn bản. Lorem Ipsum có ưu điểm hơn so với đoạn văn bản chỉ gồm nội dung kiểu \"Nội dung, nội dung, nội dung\" là nó khiến văn bản giống thật hơn, bình thường hơn. Nhiều phần mềm thiết kế giao diện web và dàn trang ngày nay đã sử dụng Lorem Ipsum làm đoạn văn bản giả, và nếu bạn thử tìm các đoạn \"Lorem ipsum\" trên mạng thì sẽ khám phá ra nhiều trang web hiện vẫn đang trong quá trình xây dựng. Có nhiều phiên bản khác nhau đã xuất hiện, đôi khi do vô tình, nhiều khi do cố ý (xen thêm vào những câu hài hước hay thông tục).\r\n\r\nChúng ta vẫn biết rằng, làm việc với một đoạn văn bản dễ đọc và rõ nghĩa dễ gây rối trí và cản trở việc tập trung vào yếu tố trình bày văn bản. Lorem Ipsum có ưu điểm hơn so với đoạn văn bản chỉ gồm nội dung kiểu \"Nội dung, nội dung, nội dung\" là nó khiến văn bản giống thật hơn, bình thường hơn. Nhiều phần mềm thiết kế giao diện web và dàn trang ngày nay đã sử dụng Lorem Ipsum làm đoạn văn bản giả, và nếu bạn thử tìm các đoạn \"Lorem ipsum\" trên mạng thì sẽ khám phá ra nhiều trang web hiện vẫn đang trong quá trình xây dựng. Có nhiều phiên bản khác nhau đã xuất hiện, đôi khi do vô tình, nhiều khi do cố ý (xen thêm vào những câu hài hước hay thông tục).\r\n\r\nChúng ta vẫn biết rằng, làm việc với một đoạn văn bản dễ đọc và rõ nghĩa dễ gây rối trí và cản trở việc tập trung vào yếu tố trình bày văn bản. Lorem Ipsum có ưu điểm hơn so với đoạn văn bản chỉ gồm nội dung kiểu \"Nội dung, nội dung, nội dung\" là nó khiến văn bản giống thật hơn, bình thường hơn. Nhiều phần mềm thiết kế giao diện web và dàn trang ngày nay đã sử dụng Lorem Ipsum làm đoạn văn bản giả, và nếu bạn thử tìm các đoạn \"Lorem ipsum\" trên mạng thì sẽ khám phá ra nhiều trang web hiện vẫn đang trong quá trình xây dựng. Có nhiều phiên bản khác nhau đã xuất hiện, đôi khi do vô tình, nhiều khi do cố ý (xen thêm vào những câu hài hước hay thông tục).', 'Iran tuyên bố đã đuổi máy bay do thám U2 của Mỹ', '', 'publish', 'open', 'open', '', 'iran-tuyen-bo-da-duoi-may-bay-tham-u2-cua', '', '', '2017-09-05 14:19:06', '2017-09-05 07:19:06', '', 0, 'http://localhost/RT-Aug/?p=81', 0, 'post', '', 0),
(82, 1, '2017-09-05 14:19:06', '2017-09-05 07:19:06', 'Chúng ta vẫn biết rằng, làm việc với một đoạn văn bản dễ đọc và rõ nghĩa dễ gây rối trí và cản trở việc tập trung vào yếu tố trình bày văn bản. Lorem Ipsum có ưu điểm hơn so với đoạn văn bản chỉ gồm nội dung kiểu \"Nội dung, nội dung, nội dung\" là nó khiến văn bản giống thật hơn, bình thường hơn. Nhiều phần mềm thiết kế giao diện web và dàn trang ngày nay đã sử dụng Lorem Ipsum làm đoạn văn bản giả, và nếu bạn thử tìm các đoạn \"Lorem ipsum\" trên mạng thì sẽ khám phá ra nhiều trang web hiện vẫn đang trong quá trình xây dựng. Có nhiều phiên bản khác nhau đã xuất hiện, đôi khi do vô tình, nhiều khi do cố ý (xen thêm vào những câu hài hước hay thông tục).\r\n\r\nChúng ta vẫn biết rằng, làm việc với một đoạn văn bản dễ đọc và rõ nghĩa dễ gây rối trí và cản trở việc tập trung vào yếu tố trình bày văn bản. Lorem Ipsum có ưu điểm hơn so với đoạn văn bản chỉ gồm nội dung kiểu \"Nội dung, nội dung, nội dung\" là nó khiến văn bản giống thật hơn, bình thường hơn. Nhiều phần mềm thiết kế giao diện web và dàn trang ngày nay đã sử dụng Lorem Ipsum làm đoạn văn bản giả, và nếu bạn thử tìm các đoạn \"Lorem ipsum\" trên mạng thì sẽ khám phá ra nhiều trang web hiện vẫn đang trong quá trình xây dựng. Có nhiều phiên bản khác nhau đã xuất hiện, đôi khi do vô tình, nhiều khi do cố ý (xen thêm vào những câu hài hước hay thông tục).\r\n\r\nChúng ta vẫn biết rằng, làm việc với một đoạn văn bản dễ đọc và rõ nghĩa dễ gây rối trí và cản trở việc tập trung vào yếu tố trình bày văn bản. Lorem Ipsum có ưu điểm hơn so với đoạn văn bản chỉ gồm nội dung kiểu \"Nội dung, nội dung, nội dung\" là nó khiến văn bản giống thật hơn, bình thường hơn. Nhiều phần mềm thiết kế giao diện web và dàn trang ngày nay đã sử dụng Lorem Ipsum làm đoạn văn bản giả, và nếu bạn thử tìm các đoạn \"Lorem ipsum\" trên mạng thì sẽ khám phá ra nhiều trang web hiện vẫn đang trong quá trình xây dựng. Có nhiều phiên bản khác nhau đã xuất hiện, đôi khi do vô tình, nhiều khi do cố ý (xen thêm vào những câu hài hước hay thông tục).', 'Iran tuyên bố đã đuổi máy bay do thám U2 của Mỹ', '', 'inherit', 'closed', 'closed', '', '81-revision-v1', '', '', '2017-09-05 14:19:06', '2017-09-05 07:19:06', '', 81, 'http://localhost/RT-Aug/81-revision-v1/', 0, 'revision', '', 0),
(83, 1, '2017-09-05 14:19:30', '2017-09-05 07:19:30', 'Chúng ta vẫn biết rằng, làm việc với một đoạn văn bản dễ đọc và rõ nghĩa dễ gây rối trí và cản trở việc tập trung vào yếu tố trình bày văn bản. Lorem Ipsum có ưu điểm hơn so với đoạn văn bản chỉ gồm nội dung kiểu \"Nội dung, nội dung, nội dung\" là nó khiến văn bản giống thật hơn, bình thường hơn. Nhiều phần mềm thiết kế giao diện web và dàn trang ngày nay đã sử dụng Lorem Ipsum làm đoạn văn bản giả, và nếu bạn thử tìm các đoạn \"Lorem ipsum\" trên mạng thì sẽ khám phá ra nhiều trang web hiện vẫn đang trong quá trình xây dựng. Có nhiều phiên bản khác nhau đã xuất hiện, đôi khi do vô tình, nhiều khi do cố ý (xen thêm vào những câu hài hước hay thông tục).\r\n\r\nChúng ta vẫn biết rằng, làm việc với một đoạn văn bản dễ đọc và rõ nghĩa dễ gây rối trí và cản trở việc tập trung vào yếu tố trình bày văn bản. Lorem Ipsum có ưu điểm hơn so với đoạn văn bản chỉ gồm nội dung kiểu \"Nội dung, nội dung, nội dung\" là nó khiến văn bản giống thật hơn, bình thường hơn. Nhiều phần mềm thiết kế giao diện web và dàn trang ngày nay đã sử dụng Lorem Ipsum làm đoạn văn bản giả, và nếu bạn thử tìm các đoạn \"Lorem ipsum\" trên mạng thì sẽ khám phá ra nhiều trang web hiện vẫn đang trong quá trình xây dựng. Có nhiều phiên bản khác nhau đã xuất hiện, đôi khi do vô tình, nhiều khi do cố ý (xen thêm vào những câu hài hước hay thông tục).\r\n\r\nChúng ta vẫn biết rằng, làm việc với một đoạn văn bản dễ đọc và rõ nghĩa dễ gây rối trí và cản trở việc tập trung vào yếu tố trình bày văn bản. Lorem Ipsum có ưu điểm hơn so với đoạn văn bản chỉ gồm nội dung kiểu \"Nội dung, nội dung, nội dung\" là nó khiến văn bản giống thật hơn, bình thường hơn. Nhiều phần mềm thiết kế giao diện web và dàn trang ngày nay đã sử dụng Lorem Ipsum làm đoạn văn bản giả, và nếu bạn thử tìm các đoạn \"Lorem ipsum\" trên mạng thì sẽ khám phá ra nhiều trang web hiện vẫn đang trong quá trình xây dựng. Có nhiều phiên bản khác nhau đã xuất hiện, đôi khi do vô tình, nhiều khi do cố ý (xen thêm vào những câu hài hước hay thông tục).', 'Iran tuyên bố đã đuổi máy bay do thám U2 của Mỹ', '', 'publish', 'open', 'open', '', 'iran-tuyen-bo-da-duoi-may-bay-tham-u2-cua-2', '', '', '2017-09-05 14:19:30', '2017-09-05 07:19:30', '', 0, 'http://localhost/RT-Aug/?p=83', 0, 'post', '', 0),
(84, 1, '2017-09-05 14:19:30', '2017-09-05 07:19:30', 'Chúng ta vẫn biết rằng, làm việc với một đoạn văn bản dễ đọc và rõ nghĩa dễ gây rối trí và cản trở việc tập trung vào yếu tố trình bày văn bản. Lorem Ipsum có ưu điểm hơn so với đoạn văn bản chỉ gồm nội dung kiểu \"Nội dung, nội dung, nội dung\" là nó khiến văn bản giống thật hơn, bình thường hơn. Nhiều phần mềm thiết kế giao diện web và dàn trang ngày nay đã sử dụng Lorem Ipsum làm đoạn văn bản giả, và nếu bạn thử tìm các đoạn \"Lorem ipsum\" trên mạng thì sẽ khám phá ra nhiều trang web hiện vẫn đang trong quá trình xây dựng. Có nhiều phiên bản khác nhau đã xuất hiện, đôi khi do vô tình, nhiều khi do cố ý (xen thêm vào những câu hài hước hay thông tục).\r\n\r\nChúng ta vẫn biết rằng, làm việc với một đoạn văn bản dễ đọc và rõ nghĩa dễ gây rối trí và cản trở việc tập trung vào yếu tố trình bày văn bản. Lorem Ipsum có ưu điểm hơn so với đoạn văn bản chỉ gồm nội dung kiểu \"Nội dung, nội dung, nội dung\" là nó khiến văn bản giống thật hơn, bình thường hơn. Nhiều phần mềm thiết kế giao diện web và dàn trang ngày nay đã sử dụng Lorem Ipsum làm đoạn văn bản giả, và nếu bạn thử tìm các đoạn \"Lorem ipsum\" trên mạng thì sẽ khám phá ra nhiều trang web hiện vẫn đang trong quá trình xây dựng. Có nhiều phiên bản khác nhau đã xuất hiện, đôi khi do vô tình, nhiều khi do cố ý (xen thêm vào những câu hài hước hay thông tục).\r\n\r\nChúng ta vẫn biết rằng, làm việc với một đoạn văn bản dễ đọc và rõ nghĩa dễ gây rối trí và cản trở việc tập trung vào yếu tố trình bày văn bản. Lorem Ipsum có ưu điểm hơn so với đoạn văn bản chỉ gồm nội dung kiểu \"Nội dung, nội dung, nội dung\" là nó khiến văn bản giống thật hơn, bình thường hơn. Nhiều phần mềm thiết kế giao diện web và dàn trang ngày nay đã sử dụng Lorem Ipsum làm đoạn văn bản giả, và nếu bạn thử tìm các đoạn \"Lorem ipsum\" trên mạng thì sẽ khám phá ra nhiều trang web hiện vẫn đang trong quá trình xây dựng. Có nhiều phiên bản khác nhau đã xuất hiện, đôi khi do vô tình, nhiều khi do cố ý (xen thêm vào những câu hài hước hay thông tục).', 'Iran tuyên bố đã đuổi máy bay do thám U2 của Mỹ', '', 'inherit', 'closed', 'closed', '', '83-revision-v1', '', '', '2017-09-05 14:19:30', '2017-09-05 07:19:30', '', 83, 'http://localhost/RT-Aug/83-revision-v1/', 0, 'revision', '', 0),
(85, 1, '2017-09-05 14:20:07', '2017-09-05 07:20:07', 'Chúng ta vẫn biết rằng, làm việc với một đoạn văn bản dễ đọc và rõ nghĩa dễ gây rối trí và cản trở việc tập trung vào yếu tố trình bày văn bản. Lorem Ipsum có ưu điểm hơn so với đoạn văn bản chỉ gồm nội dung kiểu \"Nội dung, nội dung, nội dung\" là nó khiến văn bản giống thật hơn, bình thường hơn. Nhiều phần mềm thiết kế giao diện web và dàn trang ngày nay đã sử dụng Lorem Ipsum làm đoạn văn bản giả, và nếu bạn thử tìm các đoạn \"Lorem ipsum\" trên mạng thì sẽ khám phá ra nhiều trang web hiện vẫn đang trong quá trình xây dựng. Có nhiều phiên bản khác nhau đã xuất hiện, đôi khi do vô tình, nhiều khi do cố ý (xen thêm vào những câu hài hước hay thông tục).\r\n\r\nChúng ta vẫn biết rằng, làm việc với một đoạn văn bản dễ đọc và rõ nghĩa dễ gây rối trí và cản trở việc tập trung vào yếu tố trình bày văn bản. Lorem Ipsum có ưu điểm hơn so với đoạn văn bản chỉ gồm nội dung kiểu \"Nội dung, nội dung, nội dung\" là nó khiến văn bản giống thật hơn, bình thường hơn. Nhiều phần mềm thiết kế giao diện web và dàn trang ngày nay đã sử dụng Lorem Ipsum làm đoạn văn bản giả, và nếu bạn thử tìm các đoạn \"Lorem ipsum\" trên mạng thì sẽ khám phá ra nhiều trang web hiện vẫn đang trong quá trình xây dựng. Có nhiều phiên bản khác nhau đã xuất hiện, đôi khi do vô tình, nhiều khi do cố ý (xen thêm vào những câu hài hước hay thông tục).\r\n\r\nChúng ta vẫn biết rằng, làm việc với một đoạn văn bản dễ đọc và rõ nghĩa dễ gây rối trí và cản trở việc tập trung vào yếu tố trình bày văn bản. Lorem Ipsum có ưu điểm hơn so với đoạn văn bản chỉ gồm nội dung kiểu \"Nội dung, nội dung, nội dung\" là nó khiến văn bản giống thật hơn, bình thường hơn. Nhiều phần mềm thiết kế giao diện web và dàn trang ngày nay đã sử dụng Lorem Ipsum làm đoạn văn bản giả, và nếu bạn thử tìm các đoạn \"Lorem ipsum\" trên mạng thì sẽ khám phá ra nhiều trang web hiện vẫn đang trong quá trình xây dựng. Có nhiều phiên bản khác nhau đã xuất hiện, đôi khi do vô tình, nhiều khi do cố ý (xen thêm vào những câu hài hước hay thông tục).', 'Iran tuyên bố đã đuổi máy bay do thám U2 của Mỹ', '', 'publish', 'open', 'open', '', 'iran-tuyen-bo-da-duoi-may-bay-tham-u2-cua-3', '', '', '2017-09-05 14:20:07', '2017-09-05 07:20:07', '', 0, 'http://localhost/RT-Aug/?p=85', 0, 'post', '', 0),
(86, 1, '2017-09-05 14:20:07', '2017-09-05 07:20:07', 'Chúng ta vẫn biết rằng, làm việc với một đoạn văn bản dễ đọc và rõ nghĩa dễ gây rối trí và cản trở việc tập trung vào yếu tố trình bày văn bản. Lorem Ipsum có ưu điểm hơn so với đoạn văn bản chỉ gồm nội dung kiểu \"Nội dung, nội dung, nội dung\" là nó khiến văn bản giống thật hơn, bình thường hơn. Nhiều phần mềm thiết kế giao diện web và dàn trang ngày nay đã sử dụng Lorem Ipsum làm đoạn văn bản giả, và nếu bạn thử tìm các đoạn \"Lorem ipsum\" trên mạng thì sẽ khám phá ra nhiều trang web hiện vẫn đang trong quá trình xây dựng. Có nhiều phiên bản khác nhau đã xuất hiện, đôi khi do vô tình, nhiều khi do cố ý (xen thêm vào những câu hài hước hay thông tục).\r\n\r\nChúng ta vẫn biết rằng, làm việc với một đoạn văn bản dễ đọc và rõ nghĩa dễ gây rối trí và cản trở việc tập trung vào yếu tố trình bày văn bản. Lorem Ipsum có ưu điểm hơn so với đoạn văn bản chỉ gồm nội dung kiểu \"Nội dung, nội dung, nội dung\" là nó khiến văn bản giống thật hơn, bình thường hơn. Nhiều phần mềm thiết kế giao diện web và dàn trang ngày nay đã sử dụng Lorem Ipsum làm đoạn văn bản giả, và nếu bạn thử tìm các đoạn \"Lorem ipsum\" trên mạng thì sẽ khám phá ra nhiều trang web hiện vẫn đang trong quá trình xây dựng. Có nhiều phiên bản khác nhau đã xuất hiện, đôi khi do vô tình, nhiều khi do cố ý (xen thêm vào những câu hài hước hay thông tục).\r\n\r\nChúng ta vẫn biết rằng, làm việc với một đoạn văn bản dễ đọc và rõ nghĩa dễ gây rối trí và cản trở việc tập trung vào yếu tố trình bày văn bản. Lorem Ipsum có ưu điểm hơn so với đoạn văn bản chỉ gồm nội dung kiểu \"Nội dung, nội dung, nội dung\" là nó khiến văn bản giống thật hơn, bình thường hơn. Nhiều phần mềm thiết kế giao diện web và dàn trang ngày nay đã sử dụng Lorem Ipsum làm đoạn văn bản giả, và nếu bạn thử tìm các đoạn \"Lorem ipsum\" trên mạng thì sẽ khám phá ra nhiều trang web hiện vẫn đang trong quá trình xây dựng. Có nhiều phiên bản khác nhau đã xuất hiện, đôi khi do vô tình, nhiều khi do cố ý (xen thêm vào những câu hài hước hay thông tục).', 'Iran tuyên bố đã đuổi máy bay do thám U2 của Mỹ', '', 'inherit', 'closed', 'closed', '', '85-revision-v1', '', '', '2017-09-05 14:20:07', '2017-09-05 07:20:07', '', 85, 'http://localhost/RT-Aug/85-revision-v1/', 0, 'revision', '', 0),
(87, 1, '2017-09-05 14:20:29', '2017-09-05 07:20:29', 'Chúng ta vẫn biết rằng, làm việc với một đoạn văn bản dễ đọc và rõ nghĩa dễ gây rối trí và cản trở việc tập trung vào yếu tố trình bày văn bản. Lorem Ipsum có ưu điểm hơn so với đoạn văn bản chỉ gồm nội dung kiểu \"Nội dung, nội dung, nội dung\" là nó khiến văn bản giống thật hơn, bình thường hơn. Nhiều phần mềm thiết kế giao diện web và dàn trang ngày nay đã sử dụng Lorem Ipsum làm đoạn văn bản giả, và nếu bạn thử tìm các đoạn \"Lorem ipsum\" trên mạng thì sẽ khám phá ra nhiều trang web hiện vẫn đang trong quá trình xây dựng. Có nhiều phiên bản khác nhau đã xuất hiện, đôi khi do vô tình, nhiều khi do cố ý (xen thêm vào những câu hài hước hay thông tục).\r\n\r\nChúng ta vẫn biết rằng, làm việc với một đoạn văn bản dễ đọc và rõ nghĩa dễ gây rối trí và cản trở việc tập trung vào yếu tố trình bày văn bản. Lorem Ipsum có ưu điểm hơn so với đoạn văn bản chỉ gồm nội dung kiểu \"Nội dung, nội dung, nội dung\" là nó khiến văn bản giống thật hơn, bình thường hơn. Nhiều phần mềm thiết kế giao diện web và dàn trang ngày nay đã sử dụng Lorem Ipsum làm đoạn văn bản giả, và nếu bạn thử tìm các đoạn \"Lorem ipsum\" trên mạng thì sẽ khám phá ra nhiều trang web hiện vẫn đang trong quá trình xây dựng. Có nhiều phiên bản khác nhau đã xuất hiện, đôi khi do vô tình, nhiều khi do cố ý (xen thêm vào những câu hài hước hay thông tục).\r\n\r\nChúng ta vẫn biết rằng, làm việc với một đoạn văn bản dễ đọc và rõ nghĩa dễ gây rối trí và cản trở việc tập trung vào yếu tố trình bày văn bản. Lorem Ipsum có ưu điểm hơn so với đoạn văn bản chỉ gồm nội dung kiểu \"Nội dung, nội dung, nội dung\" là nó khiến văn bản giống thật hơn, bình thường hơn. Nhiều phần mềm thiết kế giao diện web và dàn trang ngày nay đã sử dụng Lorem Ipsum làm đoạn văn bản giả, và nếu bạn thử tìm các đoạn \"Lorem ipsum\" trên mạng thì sẽ khám phá ra nhiều trang web hiện vẫn đang trong quá trình xây dựng. Có nhiều phiên bản khác nhau đã xuất hiện, đôi khi do vô tình, nhiều khi do cố ý (xen thêm vào những câu hài hước hay thông tục).', 'Iran tuyên bố đã đuổi máy bay do thám U2 của Mỹ', '', 'publish', 'open', 'open', '', 'iran-tuyen-bo-da-duoi-may-bay-tham-u2-cua-4', '', '', '2017-09-05 14:20:29', '2017-09-05 07:20:29', '', 0, 'http://localhost/RT-Aug/?p=87', 0, 'post', '', 0),
(88, 1, '2017-09-05 14:20:29', '2017-09-05 07:20:29', 'Chúng ta vẫn biết rằng, làm việc với một đoạn văn bản dễ đọc và rõ nghĩa dễ gây rối trí và cản trở việc tập trung vào yếu tố trình bày văn bản. Lorem Ipsum có ưu điểm hơn so với đoạn văn bản chỉ gồm nội dung kiểu \"Nội dung, nội dung, nội dung\" là nó khiến văn bản giống thật hơn, bình thường hơn. Nhiều phần mềm thiết kế giao diện web và dàn trang ngày nay đã sử dụng Lorem Ipsum làm đoạn văn bản giả, và nếu bạn thử tìm các đoạn \"Lorem ipsum\" trên mạng thì sẽ khám phá ra nhiều trang web hiện vẫn đang trong quá trình xây dựng. Có nhiều phiên bản khác nhau đã xuất hiện, đôi khi do vô tình, nhiều khi do cố ý (xen thêm vào những câu hài hước hay thông tục).\r\n\r\nChúng ta vẫn biết rằng, làm việc với một đoạn văn bản dễ đọc và rõ nghĩa dễ gây rối trí và cản trở việc tập trung vào yếu tố trình bày văn bản. Lorem Ipsum có ưu điểm hơn so với đoạn văn bản chỉ gồm nội dung kiểu \"Nội dung, nội dung, nội dung\" là nó khiến văn bản giống thật hơn, bình thường hơn. Nhiều phần mềm thiết kế giao diện web và dàn trang ngày nay đã sử dụng Lorem Ipsum làm đoạn văn bản giả, và nếu bạn thử tìm các đoạn \"Lorem ipsum\" trên mạng thì sẽ khám phá ra nhiều trang web hiện vẫn đang trong quá trình xây dựng. Có nhiều phiên bản khác nhau đã xuất hiện, đôi khi do vô tình, nhiều khi do cố ý (xen thêm vào những câu hài hước hay thông tục).\r\n\r\nChúng ta vẫn biết rằng, làm việc với một đoạn văn bản dễ đọc và rõ nghĩa dễ gây rối trí và cản trở việc tập trung vào yếu tố trình bày văn bản. Lorem Ipsum có ưu điểm hơn so với đoạn văn bản chỉ gồm nội dung kiểu \"Nội dung, nội dung, nội dung\" là nó khiến văn bản giống thật hơn, bình thường hơn. Nhiều phần mềm thiết kế giao diện web và dàn trang ngày nay đã sử dụng Lorem Ipsum làm đoạn văn bản giả, và nếu bạn thử tìm các đoạn \"Lorem ipsum\" trên mạng thì sẽ khám phá ra nhiều trang web hiện vẫn đang trong quá trình xây dựng. Có nhiều phiên bản khác nhau đã xuất hiện, đôi khi do vô tình, nhiều khi do cố ý (xen thêm vào những câu hài hước hay thông tục).', 'Iran tuyên bố đã đuổi máy bay do thám U2 của Mỹ', '', 'inherit', 'closed', 'closed', '', '87-revision-v1', '', '', '2017-09-05 14:20:29', '2017-09-05 07:20:29', '', 87, 'http://localhost/RT-Aug/87-revision-v1/', 0, 'revision', '', 0),
(89, 1, '2017-09-05 14:20:51', '2017-09-05 07:20:51', 'Chúng ta vẫn biết rằng, làm việc với một đoạn văn bản dễ đọc và rõ nghĩa dễ gây rối trí và cản trở việc tập trung vào yếu tố trình bày văn bản. Lorem Ipsum có ưu điểm hơn so với đoạn văn bản chỉ gồm nội dung kiểu \"Nội dung, nội dung, nội dung\" là nó khiến văn bản giống thật hơn, bình thường hơn. Nhiều phần mềm thiết kế giao diện web và dàn trang ngày nay đã sử dụng Lorem Ipsum làm đoạn văn bản giả, và nếu bạn thử tìm các đoạn \"Lorem ipsum\" trên mạng thì sẽ khám phá ra nhiều trang web hiện vẫn đang trong quá trình xây dựng. Có nhiều phiên bản khác nhau đã xuất hiện, đôi khi do vô tình, nhiều khi do cố ý (xen thêm vào những câu hài hước hay thông tục).\r\n\r\nChúng ta vẫn biết rằng, làm việc với một đoạn văn bản dễ đọc và rõ nghĩa dễ gây rối trí và cản trở việc tập trung vào yếu tố trình bày văn bản. Lorem Ipsum có ưu điểm hơn so với đoạn văn bản chỉ gồm nội dung kiểu \"Nội dung, nội dung, nội dung\" là nó khiến văn bản giống thật hơn, bình thường hơn. Nhiều phần mềm thiết kế giao diện web và dàn trang ngày nay đã sử dụng Lorem Ipsum làm đoạn văn bản giả, và nếu bạn thử tìm các đoạn \"Lorem ipsum\" trên mạng thì sẽ khám phá ra nhiều trang web hiện vẫn đang trong quá trình xây dựng. Có nhiều phiên bản khác nhau đã xuất hiện, đôi khi do vô tình, nhiều khi do cố ý (xen thêm vào những câu hài hước hay thông tục).\r\n\r\nChúng ta vẫn biết rằng, làm việc với một đoạn văn bản dễ đọc và rõ nghĩa dễ gây rối trí và cản trở việc tập trung vào yếu tố trình bày văn bản. Lorem Ipsum có ưu điểm hơn so với đoạn văn bản chỉ gồm nội dung kiểu \"Nội dung, nội dung, nội dung\" là nó khiến văn bản giống thật hơn, bình thường hơn. Nhiều phần mềm thiết kế giao diện web và dàn trang ngày nay đã sử dụng Lorem Ipsum làm đoạn văn bản giả, và nếu bạn thử tìm các đoạn \"Lorem ipsum\" trên mạng thì sẽ khám phá ra nhiều trang web hiện vẫn đang trong quá trình xây dựng. Có nhiều phiên bản khác nhau đã xuất hiện, đôi khi do vô tình, nhiều khi do cố ý (xen thêm vào những câu hài hước hay thông tục).', 'Iran tuyên bố đã đuổi máy bay do thám U2 của Mỹ', '', 'publish', 'open', 'open', '', 'iran-tuyen-bo-da-duoi-may-bay-tham-u2-cua-5', '', '', '2017-09-05 14:20:51', '2017-09-05 07:20:51', '', 0, 'http://localhost/RT-Aug/?p=89', 0, 'post', '', 0),
(90, 1, '2017-09-05 14:20:51', '2017-09-05 07:20:51', 'Chúng ta vẫn biết rằng, làm việc với một đoạn văn bản dễ đọc và rõ nghĩa dễ gây rối trí và cản trở việc tập trung vào yếu tố trình bày văn bản. Lorem Ipsum có ưu điểm hơn so với đoạn văn bản chỉ gồm nội dung kiểu \"Nội dung, nội dung, nội dung\" là nó khiến văn bản giống thật hơn, bình thường hơn. Nhiều phần mềm thiết kế giao diện web và dàn trang ngày nay đã sử dụng Lorem Ipsum làm đoạn văn bản giả, và nếu bạn thử tìm các đoạn \"Lorem ipsum\" trên mạng thì sẽ khám phá ra nhiều trang web hiện vẫn đang trong quá trình xây dựng. Có nhiều phiên bản khác nhau đã xuất hiện, đôi khi do vô tình, nhiều khi do cố ý (xen thêm vào những câu hài hước hay thông tục).\r\n\r\nChúng ta vẫn biết rằng, làm việc với một đoạn văn bản dễ đọc và rõ nghĩa dễ gây rối trí và cản trở việc tập trung vào yếu tố trình bày văn bản. Lorem Ipsum có ưu điểm hơn so với đoạn văn bản chỉ gồm nội dung kiểu \"Nội dung, nội dung, nội dung\" là nó khiến văn bản giống thật hơn, bình thường hơn. Nhiều phần mềm thiết kế giao diện web và dàn trang ngày nay đã sử dụng Lorem Ipsum làm đoạn văn bản giả, và nếu bạn thử tìm các đoạn \"Lorem ipsum\" trên mạng thì sẽ khám phá ra nhiều trang web hiện vẫn đang trong quá trình xây dựng. Có nhiều phiên bản khác nhau đã xuất hiện, đôi khi do vô tình, nhiều khi do cố ý (xen thêm vào những câu hài hước hay thông tục).\r\n\r\nChúng ta vẫn biết rằng, làm việc với một đoạn văn bản dễ đọc và rõ nghĩa dễ gây rối trí và cản trở việc tập trung vào yếu tố trình bày văn bản. Lorem Ipsum có ưu điểm hơn so với đoạn văn bản chỉ gồm nội dung kiểu \"Nội dung, nội dung, nội dung\" là nó khiến văn bản giống thật hơn, bình thường hơn. Nhiều phần mềm thiết kế giao diện web và dàn trang ngày nay đã sử dụng Lorem Ipsum làm đoạn văn bản giả, và nếu bạn thử tìm các đoạn \"Lorem ipsum\" trên mạng thì sẽ khám phá ra nhiều trang web hiện vẫn đang trong quá trình xây dựng. Có nhiều phiên bản khác nhau đã xuất hiện, đôi khi do vô tình, nhiều khi do cố ý (xen thêm vào những câu hài hước hay thông tục).', 'Iran tuyên bố đã đuổi máy bay do thám U2 của Mỹ', '', 'inherit', 'closed', 'closed', '', '89-revision-v1', '', '', '2017-09-05 14:20:51', '2017-09-05 07:20:51', '', 89, 'http://localhost/RT-Aug/89-revision-v1/', 0, 'revision', '', 0),
(91, 1, '2017-09-05 14:21:12', '2017-09-05 07:21:12', 'Chúng ta vẫn biết rằng, làm việc với một đoạn văn bản dễ đọc và rõ nghĩa dễ gây rối trí và cản trở việc tập trung vào yếu tố trình bày văn bản. Lorem Ipsum có ưu điểm hơn so với đoạn văn bản chỉ gồm nội dung kiểu \"Nội dung, nội dung, nội dung\" là nó khiến văn bản giống thật hơn, bình thường hơn. Nhiều phần mềm thiết kế giao diện web và dàn trang ngày nay đã sử dụng Lorem Ipsum làm đoạn văn bản giả, và nếu bạn thử tìm các đoạn \"Lorem ipsum\" trên mạng thì sẽ khám phá ra nhiều trang web hiện vẫn đang trong quá trình xây dựng. Có nhiều phiên bản khác nhau đã xuất hiện, đôi khi do vô tình, nhiều khi do cố ý (xen thêm vào những câu hài hước hay thông tục).\r\n\r\nChúng ta vẫn biết rằng, làm việc với một đoạn văn bản dễ đọc và rõ nghĩa dễ gây rối trí và cản trở việc tập trung vào yếu tố trình bày văn bản. Lorem Ipsum có ưu điểm hơn so với đoạn văn bản chỉ gồm nội dung kiểu \"Nội dung, nội dung, nội dung\" là nó khiến văn bản giống thật hơn, bình thường hơn. Nhiều phần mềm thiết kế giao diện web và dàn trang ngày nay đã sử dụng Lorem Ipsum làm đoạn văn bản giả, và nếu bạn thử tìm các đoạn \"Lorem ipsum\" trên mạng thì sẽ khám phá ra nhiều trang web hiện vẫn đang trong quá trình xây dựng. Có nhiều phiên bản khác nhau đã xuất hiện, đôi khi do vô tình, nhiều khi do cố ý (xen thêm vào những câu hài hước hay thông tục).\r\n\r\nChúng ta vẫn biết rằng, làm việc với một đoạn văn bản dễ đọc và rõ nghĩa dễ gây rối trí và cản trở việc tập trung vào yếu tố trình bày văn bản. Lorem Ipsum có ưu điểm hơn so với đoạn văn bản chỉ gồm nội dung kiểu \"Nội dung, nội dung, nội dung\" là nó khiến văn bản giống thật hơn, bình thường hơn. Nhiều phần mềm thiết kế giao diện web và dàn trang ngày nay đã sử dụng Lorem Ipsum làm đoạn văn bản giả, và nếu bạn thử tìm các đoạn \"Lorem ipsum\" trên mạng thì sẽ khám phá ra nhiều trang web hiện vẫn đang trong quá trình xây dựng. Có nhiều phiên bản khác nhau đã xuất hiện, đôi khi do vô tình, nhiều khi do cố ý (xen thêm vào những câu hài hước hay thông tục).', 'Iran tuyên bố đã đuổi máy bay do thám U2 của Mỹ', '', 'publish', 'open', 'open', '', 'iran-tuyen-bo-da-duoi-may-bay-tham-u2-cua-6', '', '', '2017-09-05 14:21:12', '2017-09-05 07:21:12', '', 0, 'http://localhost/RT-Aug/?p=91', 0, 'post', '', 0),
(92, 1, '2017-09-05 14:21:12', '2017-09-05 07:21:12', 'Chúng ta vẫn biết rằng, làm việc với một đoạn văn bản dễ đọc và rõ nghĩa dễ gây rối trí và cản trở việc tập trung vào yếu tố trình bày văn bản. Lorem Ipsum có ưu điểm hơn so với đoạn văn bản chỉ gồm nội dung kiểu \"Nội dung, nội dung, nội dung\" là nó khiến văn bản giống thật hơn, bình thường hơn. Nhiều phần mềm thiết kế giao diện web và dàn trang ngày nay đã sử dụng Lorem Ipsum làm đoạn văn bản giả, và nếu bạn thử tìm các đoạn \"Lorem ipsum\" trên mạng thì sẽ khám phá ra nhiều trang web hiện vẫn đang trong quá trình xây dựng. Có nhiều phiên bản khác nhau đã xuất hiện, đôi khi do vô tình, nhiều khi do cố ý (xen thêm vào những câu hài hước hay thông tục).\r\n\r\nChúng ta vẫn biết rằng, làm việc với một đoạn văn bản dễ đọc và rõ nghĩa dễ gây rối trí và cản trở việc tập trung vào yếu tố trình bày văn bản. Lorem Ipsum có ưu điểm hơn so với đoạn văn bản chỉ gồm nội dung kiểu \"Nội dung, nội dung, nội dung\" là nó khiến văn bản giống thật hơn, bình thường hơn. Nhiều phần mềm thiết kế giao diện web và dàn trang ngày nay đã sử dụng Lorem Ipsum làm đoạn văn bản giả, và nếu bạn thử tìm các đoạn \"Lorem ipsum\" trên mạng thì sẽ khám phá ra nhiều trang web hiện vẫn đang trong quá trình xây dựng. Có nhiều phiên bản khác nhau đã xuất hiện, đôi khi do vô tình, nhiều khi do cố ý (xen thêm vào những câu hài hước hay thông tục).\r\n\r\nChúng ta vẫn biết rằng, làm việc với một đoạn văn bản dễ đọc và rõ nghĩa dễ gây rối trí và cản trở việc tập trung vào yếu tố trình bày văn bản. Lorem Ipsum có ưu điểm hơn so với đoạn văn bản chỉ gồm nội dung kiểu \"Nội dung, nội dung, nội dung\" là nó khiến văn bản giống thật hơn, bình thường hơn. Nhiều phần mềm thiết kế giao diện web và dàn trang ngày nay đã sử dụng Lorem Ipsum làm đoạn văn bản giả, và nếu bạn thử tìm các đoạn \"Lorem ipsum\" trên mạng thì sẽ khám phá ra nhiều trang web hiện vẫn đang trong quá trình xây dựng. Có nhiều phiên bản khác nhau đã xuất hiện, đôi khi do vô tình, nhiều khi do cố ý (xen thêm vào những câu hài hước hay thông tục).', 'Iran tuyên bố đã đuổi máy bay do thám U2 của Mỹ', '', 'inherit', 'closed', 'closed', '', '91-revision-v1', '', '', '2017-09-05 14:21:12', '2017-09-05 07:21:12', '', 91, 'http://localhost/RT-Aug/91-revision-v1/', 0, 'revision', '', 0),
(93, 1, '2017-09-05 14:21:34', '2017-09-05 07:21:34', 'Chúng ta vẫn biết rằng, làm việc với một đoạn văn bản dễ đọc và rõ nghĩa dễ gây rối trí và cản trở việc tập trung vào yếu tố trình bày văn bản. Lorem Ipsum có ưu điểm hơn so với đoạn văn bản chỉ gồm nội dung kiểu \"Nội dung, nội dung, nội dung\" là nó khiến văn bản giống thật hơn, bình thường hơn. Nhiều phần mềm thiết kế giao diện web và dàn trang ngày nay đã sử dụng Lorem Ipsum làm đoạn văn bản giả, và nếu bạn thử tìm các đoạn \"Lorem ipsum\" trên mạng thì sẽ khám phá ra nhiều trang web hiện vẫn đang trong quá trình xây dựng. Có nhiều phiên bản khác nhau đã xuất hiện, đôi khi do vô tình, nhiều khi do cố ý (xen thêm vào những câu hài hước hay thông tục).\r\n\r\nChúng ta vẫn biết rằng, làm việc với một đoạn văn bản dễ đọc và rõ nghĩa dễ gây rối trí và cản trở việc tập trung vào yếu tố trình bày văn bản. Lorem Ipsum có ưu điểm hơn so với đoạn văn bản chỉ gồm nội dung kiểu \"Nội dung, nội dung, nội dung\" là nó khiến văn bản giống thật hơn, bình thường hơn. Nhiều phần mềm thiết kế giao diện web và dàn trang ngày nay đã sử dụng Lorem Ipsum làm đoạn văn bản giả, và nếu bạn thử tìm các đoạn \"Lorem ipsum\" trên mạng thì sẽ khám phá ra nhiều trang web hiện vẫn đang trong quá trình xây dựng. Có nhiều phiên bản khác nhau đã xuất hiện, đôi khi do vô tình, nhiều khi do cố ý (xen thêm vào những câu hài hước hay thông tục).\r\n\r\nChúng ta vẫn biết rằng, làm việc với một đoạn văn bản dễ đọc và rõ nghĩa dễ gây rối trí và cản trở việc tập trung vào yếu tố trình bày văn bản. Lorem Ipsum có ưu điểm hơn so với đoạn văn bản chỉ gồm nội dung kiểu \"Nội dung, nội dung, nội dung\" là nó khiến văn bản giống thật hơn, bình thường hơn. Nhiều phần mềm thiết kế giao diện web và dàn trang ngày nay đã sử dụng Lorem Ipsum làm đoạn văn bản giả, và nếu bạn thử tìm các đoạn \"Lorem ipsum\" trên mạng thì sẽ khám phá ra nhiều trang web hiện vẫn đang trong quá trình xây dựng. Có nhiều phiên bản khác nhau đã xuất hiện, đôi khi do vô tình, nhiều khi do cố ý (xen thêm vào những câu hài hước hay thông tục).', 'Iran tuyên bố đã đuổi máy bay do thám U2 của Mỹ', '', 'publish', 'open', 'open', '', 'iran-tuyen-bo-da-duoi-may-bay-tham-u2-cua-7', '', '', '2017-09-05 14:21:34', '2017-09-05 07:21:34', '', 0, 'http://localhost/RT-Aug/?p=93', 0, 'post', '', 0),
(94, 1, '2017-09-05 14:21:34', '2017-09-05 07:21:34', 'Chúng ta vẫn biết rằng, làm việc với một đoạn văn bản dễ đọc và rõ nghĩa dễ gây rối trí và cản trở việc tập trung vào yếu tố trình bày văn bản. Lorem Ipsum có ưu điểm hơn so với đoạn văn bản chỉ gồm nội dung kiểu \"Nội dung, nội dung, nội dung\" là nó khiến văn bản giống thật hơn, bình thường hơn. Nhiều phần mềm thiết kế giao diện web và dàn trang ngày nay đã sử dụng Lorem Ipsum làm đoạn văn bản giả, và nếu bạn thử tìm các đoạn \"Lorem ipsum\" trên mạng thì sẽ khám phá ra nhiều trang web hiện vẫn đang trong quá trình xây dựng. Có nhiều phiên bản khác nhau đã xuất hiện, đôi khi do vô tình, nhiều khi do cố ý (xen thêm vào những câu hài hước hay thông tục).\r\n\r\nChúng ta vẫn biết rằng, làm việc với một đoạn văn bản dễ đọc và rõ nghĩa dễ gây rối trí và cản trở việc tập trung vào yếu tố trình bày văn bản. Lorem Ipsum có ưu điểm hơn so với đoạn văn bản chỉ gồm nội dung kiểu \"Nội dung, nội dung, nội dung\" là nó khiến văn bản giống thật hơn, bình thường hơn. Nhiều phần mềm thiết kế giao diện web và dàn trang ngày nay đã sử dụng Lorem Ipsum làm đoạn văn bản giả, và nếu bạn thử tìm các đoạn \"Lorem ipsum\" trên mạng thì sẽ khám phá ra nhiều trang web hiện vẫn đang trong quá trình xây dựng. Có nhiều phiên bản khác nhau đã xuất hiện, đôi khi do vô tình, nhiều khi do cố ý (xen thêm vào những câu hài hước hay thông tục).\r\n\r\nChúng ta vẫn biết rằng, làm việc với một đoạn văn bản dễ đọc và rõ nghĩa dễ gây rối trí và cản trở việc tập trung vào yếu tố trình bày văn bản. Lorem Ipsum có ưu điểm hơn so với đoạn văn bản chỉ gồm nội dung kiểu \"Nội dung, nội dung, nội dung\" là nó khiến văn bản giống thật hơn, bình thường hơn. Nhiều phần mềm thiết kế giao diện web và dàn trang ngày nay đã sử dụng Lorem Ipsum làm đoạn văn bản giả, và nếu bạn thử tìm các đoạn \"Lorem ipsum\" trên mạng thì sẽ khám phá ra nhiều trang web hiện vẫn đang trong quá trình xây dựng. Có nhiều phiên bản khác nhau đã xuất hiện, đôi khi do vô tình, nhiều khi do cố ý (xen thêm vào những câu hài hước hay thông tục).', 'Iran tuyên bố đã đuổi máy bay do thám U2 của Mỹ', '', 'inherit', 'closed', 'closed', '', '93-revision-v1', '', '', '2017-09-05 14:21:34', '2017-09-05 07:21:34', '', 93, 'http://localhost/RT-Aug/93-revision-v1/', 0, 'revision', '', 0),
(95, 1, '2017-09-05 14:22:01', '2017-09-05 07:22:01', 'Chúng ta vẫn biết rằng, làm việc với một đoạn văn bản dễ đọc và rõ nghĩa dễ gây rối trí và cản trở việc tập trung vào yếu tố trình bày văn bản. Lorem Ipsum có ưu điểm hơn so với đoạn văn bản chỉ gồm nội dung kiểu \"Nội dung, nội dung, nội dung\" là nó khiến văn bản giống thật hơn, bình thường hơn. Nhiều phần mềm thiết kế giao diện web và dàn trang ngày nay đã sử dụng Lorem Ipsum làm đoạn văn bản giả, và nếu bạn thử tìm các đoạn \"Lorem ipsum\" trên mạng thì sẽ khám phá ra nhiều trang web hiện vẫn đang trong quá trình xây dựng. Có nhiều phiên bản khác nhau đã xuất hiện, đôi khi do vô tình, nhiều khi do cố ý (xen thêm vào những câu hài hước hay thông tục).\r\n\r\nChúng ta vẫn biết rằng, làm việc với một đoạn văn bản dễ đọc và rõ nghĩa dễ gây rối trí và cản trở việc tập trung vào yếu tố trình bày văn bản. Lorem Ipsum có ưu điểm hơn so với đoạn văn bản chỉ gồm nội dung kiểu \"Nội dung, nội dung, nội dung\" là nó khiến văn bản giống thật hơn, bình thường hơn. Nhiều phần mềm thiết kế giao diện web và dàn trang ngày nay đã sử dụng Lorem Ipsum làm đoạn văn bản giả, và nếu bạn thử tìm các đoạn \"Lorem ipsum\" trên mạng thì sẽ khám phá ra nhiều trang web hiện vẫn đang trong quá trình xây dựng. Có nhiều phiên bản khác nhau đã xuất hiện, đôi khi do vô tình, nhiều khi do cố ý (xen thêm vào những câu hài hước hay thông tục).\r\n\r\nChúng ta vẫn biết rằng, làm việc với một đoạn văn bản dễ đọc và rõ nghĩa dễ gây rối trí và cản trở việc tập trung vào yếu tố trình bày văn bản. Lorem Ipsum có ưu điểm hơn so với đoạn văn bản chỉ gồm nội dung kiểu \"Nội dung, nội dung, nội dung\" là nó khiến văn bản giống thật hơn, bình thường hơn. Nhiều phần mềm thiết kế giao diện web và dàn trang ngày nay đã sử dụng Lorem Ipsum làm đoạn văn bản giả, và nếu bạn thử tìm các đoạn \"Lorem ipsum\" trên mạng thì sẽ khám phá ra nhiều trang web hiện vẫn đang trong quá trình xây dựng. Có nhiều phiên bản khác nhau đã xuất hiện, đôi khi do vô tình, nhiều khi do cố ý (xen thêm vào những câu hài hước hay thông tục).', 'Iran tuyên bố đã đuổi máy bay do thám U2 của Mỹ', '', 'publish', 'open', 'open', '', 'iran-tuyen-bo-da-duoi-may-bay-tham-u2-cua-8', '', '', '2017-09-05 14:22:01', '2017-09-05 07:22:01', '', 0, 'http://localhost/RT-Aug/?p=95', 0, 'post', '', 0),
(96, 1, '2017-09-05 14:22:01', '2017-09-05 07:22:01', 'Chúng ta vẫn biết rằng, làm việc với một đoạn văn bản dễ đọc và rõ nghĩa dễ gây rối trí và cản trở việc tập trung vào yếu tố trình bày văn bản. Lorem Ipsum có ưu điểm hơn so với đoạn văn bản chỉ gồm nội dung kiểu \"Nội dung, nội dung, nội dung\" là nó khiến văn bản giống thật hơn, bình thường hơn. Nhiều phần mềm thiết kế giao diện web và dàn trang ngày nay đã sử dụng Lorem Ipsum làm đoạn văn bản giả, và nếu bạn thử tìm các đoạn \"Lorem ipsum\" trên mạng thì sẽ khám phá ra nhiều trang web hiện vẫn đang trong quá trình xây dựng. Có nhiều phiên bản khác nhau đã xuất hiện, đôi khi do vô tình, nhiều khi do cố ý (xen thêm vào những câu hài hước hay thông tục).\r\n\r\nChúng ta vẫn biết rằng, làm việc với một đoạn văn bản dễ đọc và rõ nghĩa dễ gây rối trí và cản trở việc tập trung vào yếu tố trình bày văn bản. Lorem Ipsum có ưu điểm hơn so với đoạn văn bản chỉ gồm nội dung kiểu \"Nội dung, nội dung, nội dung\" là nó khiến văn bản giống thật hơn, bình thường hơn. Nhiều phần mềm thiết kế giao diện web và dàn trang ngày nay đã sử dụng Lorem Ipsum làm đoạn văn bản giả, và nếu bạn thử tìm các đoạn \"Lorem ipsum\" trên mạng thì sẽ khám phá ra nhiều trang web hiện vẫn đang trong quá trình xây dựng. Có nhiều phiên bản khác nhau đã xuất hiện, đôi khi do vô tình, nhiều khi do cố ý (xen thêm vào những câu hài hước hay thông tục).\r\n\r\nChúng ta vẫn biết rằng, làm việc với một đoạn văn bản dễ đọc và rõ nghĩa dễ gây rối trí và cản trở việc tập trung vào yếu tố trình bày văn bản. Lorem Ipsum có ưu điểm hơn so với đoạn văn bản chỉ gồm nội dung kiểu \"Nội dung, nội dung, nội dung\" là nó khiến văn bản giống thật hơn, bình thường hơn. Nhiều phần mềm thiết kế giao diện web và dàn trang ngày nay đã sử dụng Lorem Ipsum làm đoạn văn bản giả, và nếu bạn thử tìm các đoạn \"Lorem ipsum\" trên mạng thì sẽ khám phá ra nhiều trang web hiện vẫn đang trong quá trình xây dựng. Có nhiều phiên bản khác nhau đã xuất hiện, đôi khi do vô tình, nhiều khi do cố ý (xen thêm vào những câu hài hước hay thông tục).', 'Iran tuyên bố đã đuổi máy bay do thám U2 của Mỹ', '', 'inherit', 'closed', 'closed', '', '95-revision-v1', '', '', '2017-09-05 14:22:01', '2017-09-05 07:22:01', '', 95, 'http://localhost/RT-Aug/95-revision-v1/', 0, 'revision', '', 0),
(97, 1, '2017-09-05 14:22:26', '2017-09-05 07:22:26', 'Chúng ta vẫn biết rằng, làm việc với một đoạn văn bản dễ đọc và rõ nghĩa dễ gây rối trí và cản trở việc tập trung vào yếu tố trình bày văn bản. Lorem Ipsum có ưu điểm hơn so với đoạn văn bản chỉ gồm nội dung kiểu \"Nội dung, nội dung, nội dung\" là nó khiến văn bản giống thật hơn, bình thường hơn. Nhiều phần mềm thiết kế giao diện web và dàn trang ngày nay đã sử dụng Lorem Ipsum làm đoạn văn bản giả, và nếu bạn thử tìm các đoạn \"Lorem ipsum\" trên mạng thì sẽ khám phá ra nhiều trang web hiện vẫn đang trong quá trình xây dựng. Có nhiều phiên bản khác nhau đã xuất hiện, đôi khi do vô tình, nhiều khi do cố ý (xen thêm vào những câu hài hước hay thông tục).\r\n\r\nChúng ta vẫn biết rằng, làm việc với một đoạn văn bản dễ đọc và rõ nghĩa dễ gây rối trí và cản trở việc tập trung vào yếu tố trình bày văn bản. Lorem Ipsum có ưu điểm hơn so với đoạn văn bản chỉ gồm nội dung kiểu \"Nội dung, nội dung, nội dung\" là nó khiến văn bản giống thật hơn, bình thường hơn. Nhiều phần mềm thiết kế giao diện web và dàn trang ngày nay đã sử dụng Lorem Ipsum làm đoạn văn bản giả, và nếu bạn thử tìm các đoạn \"Lorem ipsum\" trên mạng thì sẽ khám phá ra nhiều trang web hiện vẫn đang trong quá trình xây dựng. Có nhiều phiên bản khác nhau đã xuất hiện, đôi khi do vô tình, nhiều khi do cố ý (xen thêm vào những câu hài hước hay thông tục).\r\n\r\nChúng ta vẫn biết rằng, làm việc với một đoạn văn bản dễ đọc và rõ nghĩa dễ gây rối trí và cản trở việc tập trung vào yếu tố trình bày văn bản. Lorem Ipsum có ưu điểm hơn so với đoạn văn bản chỉ gồm nội dung kiểu \"Nội dung, nội dung, nội dung\" là nó khiến văn bản giống thật hơn, bình thường hơn. Nhiều phần mềm thiết kế giao diện web và dàn trang ngày nay đã sử dụng Lorem Ipsum làm đoạn văn bản giả, và nếu bạn thử tìm các đoạn \"Lorem ipsum\" trên mạng thì sẽ khám phá ra nhiều trang web hiện vẫn đang trong quá trình xây dựng. Có nhiều phiên bản khác nhau đã xuất hiện, đôi khi do vô tình, nhiều khi do cố ý (xen thêm vào những câu hài hước hay thông tục).', 'Iran tuyên bố đã đuổi máy bay do thám U2 của Mỹ', '', 'publish', 'open', 'open', '', 'iran-tuyen-bo-da-duoi-may-bay-tham-u2-cua-9', '', '', '2017-09-05 16:33:56', '2017-09-05 09:33:56', '', 0, 'http://localhost/RT-Aug/?p=97', 0, 'post', '', 0);
INSERT INTO `rt_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(98, 1, '2017-09-05 14:22:26', '2017-09-05 07:22:26', 'Chúng ta vẫn biết rằng, làm việc với một đoạn văn bản dễ đọc và rõ nghĩa dễ gây rối trí và cản trở việc tập trung vào yếu tố trình bày văn bản. Lorem Ipsum có ưu điểm hơn so với đoạn văn bản chỉ gồm nội dung kiểu \"Nội dung, nội dung, nội dung\" là nó khiến văn bản giống thật hơn, bình thường hơn. Nhiều phần mềm thiết kế giao diện web và dàn trang ngày nay đã sử dụng Lorem Ipsum làm đoạn văn bản giả, và nếu bạn thử tìm các đoạn \"Lorem ipsum\" trên mạng thì sẽ khám phá ra nhiều trang web hiện vẫn đang trong quá trình xây dựng. Có nhiều phiên bản khác nhau đã xuất hiện, đôi khi do vô tình, nhiều khi do cố ý (xen thêm vào những câu hài hước hay thông tục).\r\n\r\nChúng ta vẫn biết rằng, làm việc với một đoạn văn bản dễ đọc và rõ nghĩa dễ gây rối trí và cản trở việc tập trung vào yếu tố trình bày văn bản. Lorem Ipsum có ưu điểm hơn so với đoạn văn bản chỉ gồm nội dung kiểu \"Nội dung, nội dung, nội dung\" là nó khiến văn bản giống thật hơn, bình thường hơn. Nhiều phần mềm thiết kế giao diện web và dàn trang ngày nay đã sử dụng Lorem Ipsum làm đoạn văn bản giả, và nếu bạn thử tìm các đoạn \"Lorem ipsum\" trên mạng thì sẽ khám phá ra nhiều trang web hiện vẫn đang trong quá trình xây dựng. Có nhiều phiên bản khác nhau đã xuất hiện, đôi khi do vô tình, nhiều khi do cố ý (xen thêm vào những câu hài hước hay thông tục).\r\n\r\nChúng ta vẫn biết rằng, làm việc với một đoạn văn bản dễ đọc và rõ nghĩa dễ gây rối trí và cản trở việc tập trung vào yếu tố trình bày văn bản. Lorem Ipsum có ưu điểm hơn so với đoạn văn bản chỉ gồm nội dung kiểu \"Nội dung, nội dung, nội dung\" là nó khiến văn bản giống thật hơn, bình thường hơn. Nhiều phần mềm thiết kế giao diện web và dàn trang ngày nay đã sử dụng Lorem Ipsum làm đoạn văn bản giả, và nếu bạn thử tìm các đoạn \"Lorem ipsum\" trên mạng thì sẽ khám phá ra nhiều trang web hiện vẫn đang trong quá trình xây dựng. Có nhiều phiên bản khác nhau đã xuất hiện, đôi khi do vô tình, nhiều khi do cố ý (xen thêm vào những câu hài hước hay thông tục).', 'Iran tuyên bố đã đuổi máy bay do thám U2 của Mỹ', '', 'inherit', 'closed', 'closed', '', '97-revision-v1', '', '', '2017-09-05 14:22:26', '2017-09-05 07:22:26', '', 97, 'http://localhost/RT-Aug/97-revision-v1/', 0, 'revision', '', 0),
(99, 1, '2017-09-05 14:34:55', '2017-09-05 07:34:55', 'Sed porttitor lectus nibh. Praesent sapien massa, convallis a pellentesque nec, egestas non nisi. Nulla quis lorem ut libero malesuada feugiat. Nulla quis lorem ut libero malesuada feugiat. Nulla porttitor accumsan tincidunt. Curabitur aliquet quam id dui posuere blandit. Praesent sapien massa, convallis a pellentesque nec, egestas non nisi. Praesent sapien massa, convallis a pellentesque nec, egestas non nisi. Quisque velit nisi, pretium ut lacinia in, elementum id enim. Nulla quis lorem ut libero malesuada feugiat.\r\n\r\nDonec rutrum congue leo eget malesuada. Curabitur aliquet quam id dui posuere blandit. Sed porttitor lectus nibh. Sed porttitor lectus nibh. Vivamus magna justo, lacinia eget consectetur sed, convallis at tellus. Nulla porttitor accumsan tincidunt. Curabitur aliquet quam id dui posuere blandit. Curabitur aliquet quam id dui posuere blandit. Cras ultricies ligula sed magna dictum porta. Nulla porttitor accumsan tincidunt.\r\n\r\nSed porttitor lectus nibh. Praesent sapien massa, convallis a pellentesque nec, egestas non nisi. Nulla quis lorem ut libero malesuada feugiat. Nulla quis lorem ut libero malesuada feugiat. Nulla porttitor accumsan tincidunt. Curabitur aliquet quam id dui posuere blandit. Praesent sapien massa, convallis a pellentesque nec, egestas non nisi. Praesent sapien massa, convallis a pellentesque nec, egestas non nisi. Quisque velit nisi, pretium ut lacinia in, elementum id enim. Nulla quis lorem ut libero malesuada feugiat.\r\n\r\nDonec rutrum congue leo eget malesuada. Curabitur aliquet quam id dui posuere blandit. Sed porttitor lectus nibh. Sed porttitor lectus nibh. Vivamus magna justo, lacinia eget consectetur sed, convallis at tellus. Nulla porttitor accumsan tincidunt. Curabitur aliquet quam id dui posuere blandit. Curabitur aliquet quam id dui posuere blandit. Cras ultricies ligula sed magna dictum porta. Nulla porttitor accumsan tincidunt.', 'Tranh vẽ tường khổ lớn D01', '', 'trash', 'open', 'closed', '', 'tranh-ve-tuong-kho-lon-d01__trashed', '', '', '2017-10-30 17:04:33', '2017-10-30 10:04:33', '', 0, 'http://localhost/RT-Aug/?post_type=product&#038;p=99', 0, 'product', '', 0),
(100, 1, '2017-09-05 14:35:15', '2017-09-05 07:35:15', 'Sed porttitor lectus nibh. Praesent sapien massa, convallis a pellentesque nec, egestas non nisi. Nulla quis lorem ut libero malesuada feugiat. Nulla quis lorem ut libero malesuada feugiat. Nulla porttitor accumsan tincidunt. Curabitur aliquet quam id dui posuere blandit. Praesent sapien massa, convallis a pellentesque nec, egestas non nisi. Praesent sapien massa, convallis a pellentesque nec, egestas non nisi. Quisque velit nisi, pretium ut lacinia in, elementum id enim. Nulla quis lorem ut libero malesuada feugiat.\r\n\r\nDonec rutrum congue leo eget malesuada. Curabitur aliquet quam id dui posuere blandit. Sed porttitor lectus nibh. Sed porttitor lectus nibh. Vivamus magna justo, lacinia eget consectetur sed, convallis at tellus. Nulla porttitor accumsan tincidunt. Curabitur aliquet quam id dui posuere blandit. Curabitur aliquet quam id dui posuere blandit. Cras ultricies ligula sed magna dictum porta. Nulla porttitor accumsan tincidunt.\r\n\r\nSed porttitor lectus nibh. Praesent sapien massa, convallis a pellentesque nec, egestas non nisi. Nulla quis lorem ut libero malesuada feugiat. Nulla quis lorem ut libero malesuada feugiat. Nulla porttitor accumsan tincidunt. Curabitur aliquet quam id dui posuere blandit. Praesent sapien massa, convallis a pellentesque nec, egestas non nisi. Praesent sapien massa, convallis a pellentesque nec, egestas non nisi. Quisque velit nisi, pretium ut lacinia in, elementum id enim. Nulla quis lorem ut libero malesuada feugiat.\r\n\r\nDonec rutrum congue leo eget malesuada. Curabitur aliquet quam id dui posuere blandit. Sed porttitor lectus nibh. Sed porttitor lectus nibh. Vivamus magna justo, lacinia eget consectetur sed, convallis at tellus. Nulla porttitor accumsan tincidunt. Curabitur aliquet quam id dui posuere blandit. Curabitur aliquet quam id dui posuere blandit. Cras ultricies ligula sed magna dictum porta. Nulla porttitor accumsan tincidunt.', 'Tranh vẽ tường khổ lớn D02', '', 'trash', 'open', 'closed', '', 'tranh-ve-tuong-kho-lon-d02__trashed', '', '', '2017-10-30 17:04:33', '2017-10-30 10:04:33', '', 0, 'http://localhost/RT-Aug/?post_type=product&#038;p=100', 0, 'product', '', 0),
(101, 1, '2017-09-05 14:35:43', '2017-09-05 07:35:43', 'Sed porttitor lectus nibh. Praesent sapien massa, convallis a pellentesque nec, egestas non nisi. Nulla quis lorem ut libero malesuada feugiat. Nulla quis lorem ut libero malesuada feugiat. Nulla porttitor accumsan tincidunt. Curabitur aliquet quam id dui posuere blandit. Praesent sapien massa, convallis a pellentesque nec, egestas non nisi. Praesent sapien massa, convallis a pellentesque nec, egestas non nisi. Quisque velit nisi, pretium ut lacinia in, elementum id enim. Nulla quis lorem ut libero malesuada feugiat.\r\n\r\nDonec rutrum congue leo eget malesuada. Curabitur aliquet quam id dui posuere blandit. Sed porttitor lectus nibh. Sed porttitor lectus nibh. Vivamus magna justo, lacinia eget consectetur sed, convallis at tellus. Nulla porttitor accumsan tincidunt. Curabitur aliquet quam id dui posuere blandit. Curabitur aliquet quam id dui posuere blandit. Cras ultricies ligula sed magna dictum porta. Nulla porttitor accumsan tincidunt.\r\n\r\nSed porttitor lectus nibh. Praesent sapien massa, convallis a pellentesque nec, egestas non nisi. Nulla quis lorem ut libero malesuada feugiat. Nulla quis lorem ut libero malesuada feugiat. Nulla porttitor accumsan tincidunt. Curabitur aliquet quam id dui posuere blandit. Praesent sapien massa, convallis a pellentesque nec, egestas non nisi. Praesent sapien massa, convallis a pellentesque nec, egestas non nisi. Quisque velit nisi, pretium ut lacinia in, elementum id enim. Nulla quis lorem ut libero malesuada feugiat.\r\n\r\nDonec rutrum congue leo eget malesuada. Curabitur aliquet quam id dui posuere blandit. Sed porttitor lectus nibh. Sed porttitor lectus nibh. Vivamus magna justo, lacinia eget consectetur sed, convallis at tellus. Nulla porttitor accumsan tincidunt. Curabitur aliquet quam id dui posuere blandit. Curabitur aliquet quam id dui posuere blandit. Cras ultricies ligula sed magna dictum porta. Nulla porttitor accumsan tincidunt.', 'Tranh vẽ tường khổ lớn D03', '', 'trash', 'open', 'closed', '', 'tranh-ve-tuong-kho-lon-d03__trashed', '', '', '2017-10-30 17:04:33', '2017-10-30 10:04:33', '', 0, 'http://localhost/RT-Aug/?post_type=product&#038;p=101', 0, 'product', '', 0),
(102, 1, '2017-09-05 14:36:18', '2017-09-05 07:36:18', 'Sed porttitor lectus nibh. Praesent sapien massa, convallis a pellentesque nec, egestas non nisi. Nulla quis lorem ut libero malesuada feugiat. Nulla quis lorem ut libero malesuada feugiat. Nulla porttitor accumsan tincidunt. Curabitur aliquet quam id dui posuere blandit. Praesent sapien massa, convallis a pellentesque nec, egestas non nisi. Praesent sapien massa, convallis a pellentesque nec, egestas non nisi. Quisque velit nisi, pretium ut lacinia in, elementum id enim. Nulla quis lorem ut libero malesuada feugiat.\r\n\r\nDonec rutrum congue leo eget malesuada. Curabitur aliquet quam id dui posuere blandit. Sed porttitor lectus nibh. Sed porttitor lectus nibh. Vivamus magna justo, lacinia eget consectetur sed, convallis at tellus. Nulla porttitor accumsan tincidunt. Curabitur aliquet quam id dui posuere blandit. Curabitur aliquet quam id dui posuere blandit. Cras ultricies ligula sed magna dictum porta. Nulla porttitor accumsan tincidunt.\r\n\r\nSed porttitor lectus nibh. Praesent sapien massa, convallis a pellentesque nec, egestas non nisi. Nulla quis lorem ut libero malesuada feugiat. Nulla quis lorem ut libero malesuada feugiat. Nulla porttitor accumsan tincidunt. Curabitur aliquet quam id dui posuere blandit. Praesent sapien massa, convallis a pellentesque nec, egestas non nisi. Praesent sapien massa, convallis a pellentesque nec, egestas non nisi. Quisque velit nisi, pretium ut lacinia in, elementum id enim. Nulla quis lorem ut libero malesuada feugiat.\r\n\r\nDonec rutrum congue leo eget malesuada. Curabitur aliquet quam id dui posuere blandit. Sed porttitor lectus nibh. Sed porttitor lectus nibh. Vivamus magna justo, lacinia eget consectetur sed, convallis at tellus. Nulla porttitor accumsan tincidunt. Curabitur aliquet quam id dui posuere blandit. Curabitur aliquet quam id dui posuere blandit. Cras ultricies ligula sed magna dictum porta. Nulla porttitor accumsan tincidunt.', 'Tranh vẽ tường khổ lớn D04', '', 'trash', 'open', 'closed', '', 'tranh-ve-tuong-kho-lon-d04__trashed', '', '', '2017-10-30 17:04:32', '2017-10-30 10:04:32', '', 0, 'http://localhost/RT-Aug/?post_type=product&#038;p=102', 0, 'product', '', 0),
(103, 1, '2017-09-05 14:36:42', '2017-09-05 07:36:42', 'Sed porttitor lectus nibh. Praesent sapien massa, convallis a pellentesque nec, egestas non nisi. Nulla quis lorem ut libero malesuada feugiat. Nulla quis lorem ut libero malesuada feugiat. Nulla porttitor accumsan tincidunt. Curabitur aliquet quam id dui posuere blandit. Praesent sapien massa, convallis a pellentesque nec, egestas non nisi. Praesent sapien massa, convallis a pellentesque nec, egestas non nisi. Quisque velit nisi, pretium ut lacinia in, elementum id enim. Nulla quis lorem ut libero malesuada feugiat.\r\n\r\nDonec rutrum congue leo eget malesuada. Curabitur aliquet quam id dui posuere blandit. Sed porttitor lectus nibh. Sed porttitor lectus nibh. Vivamus magna justo, lacinia eget consectetur sed, convallis at tellus. Nulla porttitor accumsan tincidunt. Curabitur aliquet quam id dui posuere blandit. Curabitur aliquet quam id dui posuere blandit. Cras ultricies ligula sed magna dictum porta. Nulla porttitor accumsan tincidunt.\r\n\r\nSed porttitor lectus nibh. Praesent sapien massa, convallis a pellentesque nec, egestas non nisi. Nulla quis lorem ut libero malesuada feugiat. Nulla quis lorem ut libero malesuada feugiat. Nulla porttitor accumsan tincidunt. Curabitur aliquet quam id dui posuere blandit. Praesent sapien massa, convallis a pellentesque nec, egestas non nisi. Praesent sapien massa, convallis a pellentesque nec, egestas non nisi. Quisque velit nisi, pretium ut lacinia in, elementum id enim. Nulla quis lorem ut libero malesuada feugiat.\r\n\r\nDonec rutrum congue leo eget malesuada. Curabitur aliquet quam id dui posuere blandit. Sed porttitor lectus nibh. Sed porttitor lectus nibh. Vivamus magna justo, lacinia eget consectetur sed, convallis at tellus. Nulla porttitor accumsan tincidunt. Curabitur aliquet quam id dui posuere blandit. Curabitur aliquet quam id dui posuere blandit. Cras ultricies ligula sed magna dictum porta. Nulla porttitor accumsan tincidunt.', 'Tranh vẽ tường khổ lớn D05', '', 'trash', 'open', 'closed', '', 'tranh-ve-tuong-kho-lon-d02-ban-sao__trashed', '', '', '2017-10-30 17:04:32', '2017-10-30 10:04:32', '', 0, 'http://localhost/RT-Aug/?post_type=product&#038;p=103', 0, 'product', '', 0),
(104, 1, '2017-09-05 14:37:36', '2017-09-05 07:37:36', 'Sed porttitor lectus nibh. Praesent sapien massa, convallis a pellentesque nec, egestas non nisi. Nulla quis lorem ut libero malesuada feugiat. Nulla quis lorem ut libero malesuada feugiat. Nulla porttitor accumsan tincidunt. Curabitur aliquet quam id dui posuere blandit. Praesent sapien massa, convallis a pellentesque nec, egestas non nisi. Praesent sapien massa, convallis a pellentesque nec, egestas non nisi. Quisque velit nisi, pretium ut lacinia in, elementum id enim. Nulla quis lorem ut libero malesuada feugiat.\r\n\r\nDonec rutrum congue leo eget malesuada. Curabitur aliquet quam id dui posuere blandit. Sed porttitor lectus nibh. Sed porttitor lectus nibh. Vivamus magna justo, lacinia eget consectetur sed, convallis at tellus. Nulla porttitor accumsan tincidunt. Curabitur aliquet quam id dui posuere blandit. Curabitur aliquet quam id dui posuere blandit. Cras ultricies ligula sed magna dictum porta. Nulla porttitor accumsan tincidunt.\r\n\r\n<img class=\"aligncenter size-full wp-image-79\" src=\"http://tuan.raothue.com/theme/Nov/wp-content/uploads/2017/09/6.jpg\" alt=\"\" width=\"1600\" height=\"1200\" />\r\n\r\nSed porttitor lectus nibh. Praesent sapien massa, convallis a pellentesque nec, egestas non nisi. Nulla quis lorem ut libero malesuada feugiat. Nulla quis lorem ut libero malesuada feugiat. Nulla porttitor accumsan tincidunt. Curabitur aliquet quam id dui posuere blandit. Praesent sapien massa, convallis a pellentesque nec, egestas non nisi. Praesent sapien massa, convallis a pellentesque nec, egestas non nisi. Quisque velit nisi, pretium ut lacinia in, elementum id enim. Nulla quis lorem ut libero malesuada feugiat.\r\n\r\nDonec rutrum congue leo eget malesuada. Curabitur aliquet quam id dui posuere blandit. Sed porttitor lectus nibh. Sed porttitor lectus nibh. Vivamus magna justo, lacinia eget consectetur sed, convallis at tellus. Nulla porttitor accumsan tincidunt. Curabitur aliquet quam id dui posuere blandit. Curabitur aliquet quam id dui posuere blandit. Cras ultricies ligula sed magna dictum porta. Nulla porttitor accumsan tincidunt.\r\n\r\n&nbsp;', 'Sơn ngoại thất Doyle sắc màu bền đẹp', 'Donec rutrum congue leo eget malesuada. Curabitur aliquet quam id dui posuere blandit. Sed porttitor lectus nibh. Sed porttitor lectus nibh. Vivamus magna justo, lacinia eget consectetur sed, convallis at tellus. Nulla porttitor accumsan tincidunt. Curabitur aliquet quam id dui posuere blandit. Curabitur aliquet quam id dui posuere blandit. Cras ultricies ligula sed magna dictum porta. Nulla porttitor accumsan tincidunt.', 'publish', 'open', 'closed', '', 'son-ngoai-that-doyle-sac-mau-ben-dep', '', '', '2017-10-30 17:08:53', '2017-10-30 10:08:53', '', 0, 'http://localhost/RT-Aug/?post_type=product&#038;p=104', 0, 'product', '', 0),
(105, 1, '2017-09-05 15:58:57', '2017-09-05 08:58:57', '', 'Slider 12 - image', '', 'trash', 'closed', 'closed', '', 'slider-12-image-2__trashed', '', '', '2017-10-30 15:09:02', '2017-10-30 08:09:02', '', 0, 'http://localhost/RT-Aug/?post_type=ml-slide&#038;p=105', 0, 'ml-slide', '', 0),
(106, 1, '2017-09-05 16:10:42', '2017-09-05 09:10:42', '', 'Trang chủ', '', 'publish', 'closed', 'closed', '', 'trang-chu-2', '', '', '2017-10-30 17:15:13', '2017-10-30 10:15:13', '', 0, 'http://localhost/RT-Aug/?p=106', 1, 'nav_menu_item', '', 0),
(107, 1, '2017-09-05 16:10:43', '2017-09-05 09:10:43', ' ', '', '', 'publish', 'closed', 'closed', '', '107', '', '', '2017-10-30 17:15:13', '2017-10-30 10:15:13', '', 0, 'http://localhost/RT-Aug/?p=107', 2, 'nav_menu_item', '', 0),
(113, 1, '2017-09-24 23:16:11', '2017-09-24 16:16:11', '', 'Trang chủ', '', 'publish', 'closed', 'closed', '', 'trang-chu', '', '', '2017-09-24 23:16:11', '2017-09-24 16:16:11', '', 0, 'http://hungrt.raothue.com/a_product/?p=113', 1, 'nav_menu_item', '', 0),
(114, 1, '2017-09-24 23:16:11', '2017-09-24 16:16:11', ' ', '', '', 'publish', 'closed', 'closed', '', '114', '', '', '2017-09-24 23:16:11', '2017-09-24 16:16:11', '', 0, 'http://hungrt.raothue.com/a_product/?p=114', 3, 'nav_menu_item', '', 0),
(115, 1, '2017-09-24 23:16:11', '2017-09-24 16:16:11', ' ', '', '', 'publish', 'closed', 'closed', '', '115', '', '', '2017-09-24 23:16:11', '2017-09-24 16:16:11', '', 0, 'http://hungrt.raothue.com/a_product/?p=115', 2, 'nav_menu_item', '', 0),
(117, 1, '2017-09-24 23:22:38', '2017-09-24 16:22:38', '', 'Hướng dẫn mua hàng', '', 'publish', 'closed', 'closed', '', 'huong-dan-mua-hang', '', '', '2017-09-24 23:22:38', '2017-09-24 16:22:38', '', 0, 'http://hungrt.raothue.com/a_product/?page_id=117', 0, 'page', '', 0),
(118, 1, '2017-09-24 23:22:38', '2017-09-24 16:22:38', '', 'Hướng dẫn mua hàng', '', 'inherit', 'closed', 'closed', '', '117-revision-v1', '', '', '2017-09-24 23:22:38', '2017-09-24 16:22:38', '', 117, 'http://hungrt.raothue.com/a_product/117-revision-v1/', 0, 'revision', '', 0),
(119, 1, '2017-09-24 23:23:03', '2017-09-24 16:23:03', 'Đây là một trang mẫu. Nó khác với một bài blog bởi vì nó sẽ là một trang tĩnh và sẽ được thêm vào thanh menu của trang web của bạn (trong hầu hết theme). Mọi người thường bắt đầu bằng một trang Giới thiệu để giới thiệu bản thân đến người dùng tiềm năng. Bạn có thể viết như sau:\r\n<blockquote>Xin chào! Tôi là người giao thư bằng xe đạp vào ban ngày, một diễn viên đầy tham vọng vào ban đêm, và đây là trang web của tôi. Tôi sống ở Los Angeles, có một chú cho tuyệt vời tên là Jack, và tôi thích uống cocktail.</blockquote>\r\n...hay như thế này:\r\n<blockquote>Công ty XYZ Doohickey được thành lập vào năm 1971, và đã cung cấp đồ dùng chất lượng cho công chúng kể từ đó. Nằm ở thành phố Gotham, XYZ tạo việc làm cho hơn 2.000 người và làm tất cả những điều tuyệt vời cho cộng đồng Gotham.</blockquote>\r\nLà người dùng WordPress mới, bạn nên truy cập <a href=\"http://raothue.ddns.net/demo/rt-core/wp-admin/\">trang quản trị</a> để xóa trang này và tạo các trang mới cho nội dung của bạn. Chúc vui vẻ!', 'Giới thiệu', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2017-09-24 23:23:03', '2017-09-24 16:23:03', '', 2, 'http://hungrt.raothue.com/a_product/2-revision-v1/', 0, 'revision', '', 0),
(120, 1, '2017-09-24 23:24:18', '2017-09-24 16:24:18', ' ', '', '', 'publish', 'closed', 'closed', '', '120', '', '', '2017-09-24 23:24:29', '2017-09-24 16:24:29', '', 0, 'http://hungrt.raothue.com/a_product/?p=120', 3, 'nav_menu_item', '', 0),
(121, 1, '2017-09-24 23:24:18', '2017-09-24 16:24:18', '', 'Về chúng tôi', '', 'publish', 'closed', 'closed', '', 've-chung-toi', '', '', '2017-09-24 23:24:29', '2017-09-24 16:24:29', '', 0, 'http://hungrt.raothue.com/a_product/?p=121', 1, 'nav_menu_item', '', 0),
(122, 1, '2017-09-24 23:24:29', '2017-09-24 16:24:29', ' ', '', '', 'publish', 'closed', 'closed', '', '122', '', '', '2017-09-24 23:24:29', '2017-09-24 16:24:29', '', 0, 'http://hungrt.raothue.com/a_product/?p=122', 2, 'nav_menu_item', '', 0),
(123, 1, '2017-10-30 15:08:01', '0000-00-00 00:00:00', '', 'Lưu bản nháp tự động', '', 'auto-draft', 'open', 'open', '', '', '', '', '2017-10-30 15:08:01', '0000-00-00 00:00:00', '', 0, 'http://localhost/doylecolor/?p=123', 0, 'post', '', 0),
(124, 1, '2017-10-30 15:09:14', '2017-10-30 08:09:14', '', 'banner', '', 'inherit', 'open', 'closed', '', 'banner', '', '', '2017-10-30 15:09:14', '2017-10-30 08:09:14', '', 0, 'http://localhost/doylecolor/wp-content/uploads/2017/10/banner.png', 0, 'attachment', 'image/png', 0),
(125, 1, '2017-10-30 15:09:15', '2017-10-30 08:09:15', '', 'ck1', '', 'inherit', 'open', 'closed', '', 'ck1', '', '', '2017-10-30 15:09:15', '2017-10-30 08:09:15', '', 0, 'http://localhost/doylecolor/wp-content/uploads/2017/10/ck1.png', 0, 'attachment', 'image/png', 0),
(126, 1, '2017-10-30 15:09:16', '2017-10-30 08:09:16', '', 'ck2', '', 'inherit', 'open', 'closed', '', 'ck2', '', '', '2017-10-30 15:09:16', '2017-10-30 08:09:16', '', 0, 'http://localhost/doylecolor/wp-content/uploads/2017/10/ck2.png', 0, 'attachment', 'image/png', 0),
(127, 1, '2017-10-30 15:09:16', '2017-10-30 08:09:16', '', 'ck3', '', 'inherit', 'open', 'closed', '', 'ck3', '', '', '2017-10-30 15:09:16', '2017-10-30 08:09:16', '', 0, 'http://localhost/doylecolor/wp-content/uploads/2017/10/ck3.png', 0, 'attachment', 'image/png', 0),
(128, 1, '2017-10-30 15:09:17', '2017-10-30 08:09:17', '', 'ck4', '', 'inherit', 'open', 'closed', '', 'ck4', '', '', '2017-10-30 15:09:17', '2017-10-30 08:09:17', '', 0, 'http://localhost/doylecolor/wp-content/uploads/2017/10/ck4.png', 0, 'attachment', 'image/png', 0),
(129, 1, '2017-10-30 15:09:18', '2017-10-30 08:09:18', '', 'slide', '', 'inherit', 'open', 'closed', '', 'slide', '', '', '2017-10-30 15:09:18', '2017-10-30 08:09:18', '', 0, 'http://localhost/doylecolor/wp-content/uploads/2017/10/slide.png', 0, 'attachment', 'image/png', 0),
(130, 1, '2017-10-30 15:09:19', '2017-10-30 08:09:19', '', 'spo', '', 'inherit', 'open', 'closed', '', 'spo', '', '', '2017-10-30 15:09:19', '2017-10-30 08:09:19', '', 0, 'http://localhost/doylecolor/wp-content/uploads/2017/10/spo.png', 0, 'attachment', 'image/png', 0),
(131, 1, '2017-10-30 15:09:24', '2017-10-30 08:09:24', '', 'Slider 12 - image', '', 'publish', 'closed', 'closed', '', 'slider-12-image-2', '', '', '2017-10-30 15:09:33', '2017-10-30 08:09:33', '', 0, 'http://localhost/doylecolor/?post_type=ml-slide&#038;p=131', 0, 'ml-slide', '', 0),
(132, 1, '2017-10-30 16:16:48', '2017-10-30 09:16:48', '', 'a1', '', 'inherit', 'open', 'closed', '', 'a1', '', '', '2017-10-30 16:16:48', '2017-10-30 09:16:48', '', 0, 'http://localhost/doylecolor/wp-content/uploads/2017/10/a1.jpg', 0, 'attachment', 'image/jpeg', 0),
(133, 1, '2017-10-30 16:16:49', '2017-10-30 09:16:49', '', 'a2', '', 'inherit', 'open', 'closed', '', 'a2', '', '', '2017-10-30 16:16:49', '2017-10-30 09:16:49', '', 0, 'http://localhost/doylecolor/wp-content/uploads/2017/10/a2.jpg', 0, 'attachment', 'image/jpeg', 0),
(134, 1, '2017-10-30 16:16:50', '2017-10-30 09:16:50', '', 'a3', '', 'inherit', 'open', 'closed', '', 'a3', '', '', '2017-10-30 16:16:50', '2017-10-30 09:16:50', '', 0, 'http://localhost/doylecolor/wp-content/uploads/2017/10/a3.jpg', 0, 'attachment', 'image/jpeg', 0),
(135, 1, '2017-10-30 16:16:51', '2017-10-30 09:16:51', '', 'a4', '', 'inherit', 'open', 'closed', '', 'a4', '', '', '2017-10-30 16:16:51', '2017-10-30 09:16:51', '', 0, 'http://localhost/doylecolor/wp-content/uploads/2017/10/a4.jpg', 0, 'attachment', 'image/jpeg', 0),
(136, 1, '2017-10-30 16:50:01', '2017-10-30 09:50:01', '[email* your-email placeholder\"Nhập email đăng ký\"][submit \"Đăng ký\"]\r\n<p class=\"tet\">Nếu bạn không có thời gian thường xuyên duyệt website của chúng tôi. Hãy đăng ký email để theo dõi những bản tin khuyến mại đặc biệt và các chương trình khuyến mại .</p>\n1\nĐăng ký email nhận tin\n[your-name] <mailtrunggian01@gmail.com>\npkt.winpro@gmail.com\nGửi từ: [your-email]\nReply-To: [your-email]\n\n\n\n\nNam Việt .Group \"[your-subject]\"\nNam Việt .Group <mailtrunggian01@gmail.com>\n[your-email]\nMessage Body:\r\n[your-message]\r\n\r\n-- \r\nThis e-mail was sent from a contact form on Nam Việt .Group (http://localhost/doylecolor)\nReply-To: mailtrunggian01@gmail.com\n\n\n\nThank you for your message. It has been sent.\nThere was an error trying to send your message. Please try again later.\nOne or more fields have an error. Please check and try again.\nThere was an error trying to send your message. Please try again later.\nYou must accept the terms and conditions before sending your message.\nThe field is required.\nThe field is too long.\nThe field is too short.\nThe date format is incorrect.\nThe date is before the earliest one allowed.\nThe date is after the latest one allowed.\nThere was an unknown error uploading the file.\nYou are not allowed to upload files of this type.\nThe file is too big.\nThere was an error uploading the file.\nThe number format is invalid.\nThe number is smaller than the minimum allowed.\nThe number is larger than the maximum allowed.\nThe answer to the quiz is incorrect.\nYour entered code is incorrect.\nThe e-mail address entered is invalid.\nThe URL is invalid.\nThe telephone number is invalid.', 'Đăng ký email nhận tin', '', 'publish', 'closed', 'closed', '', 'dang-ky-email-nhan-tin', '', '', '2017-10-30 16:51:50', '2017-10-30 09:51:50', '', 0, 'http://localhost/doylecolor/?post_type=wpcf7_contact_form&#038;p=136', 0, 'wpcf7_contact_form', '', 0),
(137, 1, '2017-10-30 17:07:56', '2017-10-30 10:07:56', '', '1', '', 'inherit', 'open', 'closed', '', '1-2', '', '', '2017-10-30 17:07:56', '2017-10-30 10:07:56', '', 104, 'http://localhost/doylecolor/wp-content/uploads/2017/09/1.png', 0, 'attachment', 'image/png', 0),
(138, 1, '2017-10-30 17:07:57', '2017-10-30 10:07:57', '', '2', '', 'inherit', 'open', 'closed', '', '2-2', '', '', '2017-10-30 17:07:57', '2017-10-30 10:07:57', '', 104, 'http://localhost/doylecolor/wp-content/uploads/2017/09/2-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(139, 1, '2017-10-30 17:07:58', '2017-10-30 10:07:58', '', '3', '', 'inherit', 'open', 'closed', '', '3-2', '', '', '2017-10-30 17:07:58', '2017-10-30 10:07:58', '', 104, 'http://localhost/doylecolor/wp-content/uploads/2017/09/3.png', 0, 'attachment', 'image/png', 0),
(140, 1, '2017-10-30 17:07:59', '2017-10-30 10:07:59', '', '4', '', 'inherit', 'open', 'closed', '', '4-2', '', '', '2017-10-30 17:07:59', '2017-10-30 10:07:59', '', 104, 'http://localhost/doylecolor/wp-content/uploads/2017/09/4-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(141, 1, '2017-10-30 17:08:00', '2017-10-30 10:08:00', '', '5', '', 'inherit', 'open', 'closed', '', '5-2', '', '', '2017-10-30 17:08:00', '2017-10-30 10:08:00', '', 104, 'http://localhost/doylecolor/wp-content/uploads/2017/09/5.png', 0, 'attachment', 'image/png', 0),
(142, 1, '2017-10-30 17:08:01', '2017-10-30 10:08:01', '', '6', '', 'inherit', 'open', 'closed', '', '6-2', '', '', '2017-10-30 17:08:01', '2017-10-30 10:08:01', '', 104, 'http://localhost/doylecolor/wp-content/uploads/2017/09/6-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(143, 1, '2017-10-30 17:10:14', '2017-10-30 10:10:14', 'Sed porttitor lectus nibh. Praesent sapien massa, convallis a pellentesque nec, egestas non nisi. Nulla quis lorem ut libero malesuada feugiat. Nulla quis lorem ut libero malesuada feugiat. Nulla porttitor accumsan tincidunt. Curabitur aliquet quam id dui posuere blandit. Praesent sapien massa, convallis a pellentesque nec, egestas non nisi. Praesent sapien massa, convallis a pellentesque nec, egestas non nisi. Quisque velit nisi, pretium ut lacinia in, elementum id enim. Nulla quis lorem ut libero malesuada feugiat.\r\n\r\nDonec rutrum congue leo eget malesuada. Curabitur aliquet quam id dui posuere blandit. Sed porttitor lectus nibh. Sed porttitor lectus nibh. Vivamus magna justo, lacinia eget consectetur sed, convallis at tellus. Nulla porttitor accumsan tincidunt. Curabitur aliquet quam id dui posuere blandit. Curabitur aliquet quam id dui posuere blandit. Cras ultricies ligula sed magna dictum porta. Nulla porttitor accumsan tincidunt.\r\n\r\n<img class=\"aligncenter size-full wp-image-79\" src=\"http://tuan.raothue.com/theme/Nov/wp-content/uploads/2017/09/6.jpg\" alt=\"\" width=\"1600\" height=\"1200\" />\r\n\r\nSed porttitor lectus nibh. Praesent sapien massa, convallis a pellentesque nec, egestas non nisi. Nulla quis lorem ut libero malesuada feugiat. Nulla quis lorem ut libero malesuada feugiat. Nulla porttitor accumsan tincidunt. Curabitur aliquet quam id dui posuere blandit. Praesent sapien massa, convallis a pellentesque nec, egestas non nisi. Praesent sapien massa, convallis a pellentesque nec, egestas non nisi. Quisque velit nisi, pretium ut lacinia in, elementum id enim. Nulla quis lorem ut libero malesuada feugiat.\r\n\r\nDonec rutrum congue leo eget malesuada. Curabitur aliquet quam id dui posuere blandit. Sed porttitor lectus nibh. Sed porttitor lectus nibh. Vivamus magna justo, lacinia eget consectetur sed, convallis at tellus. Nulla porttitor accumsan tincidunt. Curabitur aliquet quam id dui posuere blandit. Curabitur aliquet quam id dui posuere blandit. Cras ultricies ligula sed magna dictum porta. Nulla porttitor accumsan tincidunt.\r\n\r\n&nbsp;', 'Sơn ngoại thất Doyle sắc màu bền đẹp', 'Donec rutrum congue leo eget malesuada. Curabitur aliquet quam id dui posuere blandit. Sed porttitor lectus nibh. Sed porttitor lectus nibh. Vivamus magna justo, lacinia eget consectetur sed, convallis at tellus. Nulla porttitor accumsan tincidunt. Curabitur aliquet quam id dui posuere blandit. Curabitur aliquet quam id dui posuere blandit. Cras ultricies ligula sed magna dictum porta. Nulla porttitor accumsan tincidunt.', 'publish', 'open', 'closed', '', 'son-ngoai-doyle-sac-mau-ben-dep', '', '', '2017-10-30 17:11:49', '2017-10-30 10:11:49', '', 0, 'http://localhost/doylecolor/?post_type=product&#038;p=143', 0, 'product', '', 0),
(144, 1, '2017-10-30 17:11:47', '2017-10-30 10:11:47', 'Sed porttitor lectus nibh. Praesent sapien massa, convallis a pellentesque nec, egestas non nisi. Nulla quis lorem ut libero malesuada feugiat. Nulla quis lorem ut libero malesuada feugiat. Nulla porttitor accumsan tincidunt. Curabitur aliquet quam id dui posuere blandit. Praesent sapien massa, convallis a pellentesque nec, egestas non nisi. Praesent sapien massa, convallis a pellentesque nec, egestas non nisi. Quisque velit nisi, pretium ut lacinia in, elementum id enim. Nulla quis lorem ut libero malesuada feugiat.\r\n\r\nDonec rutrum congue leo eget malesuada. Curabitur aliquet quam id dui posuere blandit. Sed porttitor lectus nibh. Sed porttitor lectus nibh. Vivamus magna justo, lacinia eget consectetur sed, convallis at tellus. Nulla porttitor accumsan tincidunt. Curabitur aliquet quam id dui posuere blandit. Curabitur aliquet quam id dui posuere blandit. Cras ultricies ligula sed magna dictum porta. Nulla porttitor accumsan tincidunt.\r\n\r\n<img class=\"aligncenter size-full wp-image-79\" src=\"http://tuan.raothue.com/theme/Nov/wp-content/uploads/2017/09/6.jpg\" alt=\"\" width=\"1600\" height=\"1200\" />\r\n\r\nSed porttitor lectus nibh. Praesent sapien massa, convallis a pellentesque nec, egestas non nisi. Nulla quis lorem ut libero malesuada feugiat. Nulla quis lorem ut libero malesuada feugiat. Nulla porttitor accumsan tincidunt. Curabitur aliquet quam id dui posuere blandit. Praesent sapien massa, convallis a pellentesque nec, egestas non nisi. Praesent sapien massa, convallis a pellentesque nec, egestas non nisi. Quisque velit nisi, pretium ut lacinia in, elementum id enim. Nulla quis lorem ut libero malesuada feugiat.\r\n\r\nDonec rutrum congue leo eget malesuada. Curabitur aliquet quam id dui posuere blandit. Sed porttitor lectus nibh. Sed porttitor lectus nibh. Vivamus magna justo, lacinia eget consectetur sed, convallis at tellus. Nulla porttitor accumsan tincidunt. Curabitur aliquet quam id dui posuere blandit. Curabitur aliquet quam id dui posuere blandit. Cras ultricies ligula sed magna dictum porta. Nulla porttitor accumsan tincidunt.\r\n\r\n&nbsp;', 'Sơn ngoại thất Doyle sắc màu bền đẹp', 'Donec rutrum congue leo eget malesuada. Curabitur aliquet quam id dui posuere blandit. Sed porttitor lectus nibh. Sed porttitor lectus nibh. Vivamus magna justo, lacinia eget consectetur sed, convallis at tellus. Nulla porttitor accumsan tincidunt. Curabitur aliquet quam id dui posuere blandit. Curabitur aliquet quam id dui posuere blandit. Cras ultricies ligula sed magna dictum porta. Nulla porttitor accumsan tincidunt.', 'publish', 'open', 'closed', '', 'son-ngoai-doyle-sac-mau-ben-dep-5', '', '', '2017-10-30 17:14:17', '2017-10-30 10:14:17', '', 0, 'http://localhost/doylecolor/?post_type=product&#038;p=144', 0, 'product', '', 0),
(145, 1, '2017-10-30 17:10:59', '2017-10-30 10:10:59', 'Sed porttitor lectus nibh. Praesent sapien massa, convallis a pellentesque nec, egestas non nisi. Nulla quis lorem ut libero malesuada feugiat. Nulla quis lorem ut libero malesuada feugiat. Nulla porttitor accumsan tincidunt. Curabitur aliquet quam id dui posuere blandit. Praesent sapien massa, convallis a pellentesque nec, egestas non nisi. Praesent sapien massa, convallis a pellentesque nec, egestas non nisi. Quisque velit nisi, pretium ut lacinia in, elementum id enim. Nulla quis lorem ut libero malesuada feugiat.\r\n\r\nDonec rutrum congue leo eget malesuada. Curabitur aliquet quam id dui posuere blandit. Sed porttitor lectus nibh. Sed porttitor lectus nibh. Vivamus magna justo, lacinia eget consectetur sed, convallis at tellus. Nulla porttitor accumsan tincidunt. Curabitur aliquet quam id dui posuere blandit. Curabitur aliquet quam id dui posuere blandit. Cras ultricies ligula sed magna dictum porta. Nulla porttitor accumsan tincidunt.\r\n\r\n<img class=\"aligncenter size-full wp-image-79\" src=\"http://tuan.raothue.com/theme/Nov/wp-content/uploads/2017/09/6.jpg\" alt=\"\" width=\"1600\" height=\"1200\" />\r\n\r\nSed porttitor lectus nibh. Praesent sapien massa, convallis a pellentesque nec, egestas non nisi. Nulla quis lorem ut libero malesuada feugiat. Nulla quis lorem ut libero malesuada feugiat. Nulla porttitor accumsan tincidunt. Curabitur aliquet quam id dui posuere blandit. Praesent sapien massa, convallis a pellentesque nec, egestas non nisi. Praesent sapien massa, convallis a pellentesque nec, egestas non nisi. Quisque velit nisi, pretium ut lacinia in, elementum id enim. Nulla quis lorem ut libero malesuada feugiat.\r\n\r\nDonec rutrum congue leo eget malesuada. Curabitur aliquet quam id dui posuere blandit. Sed porttitor lectus nibh. Sed porttitor lectus nibh. Vivamus magna justo, lacinia eget consectetur sed, convallis at tellus. Nulla porttitor accumsan tincidunt. Curabitur aliquet quam id dui posuere blandit. Curabitur aliquet quam id dui posuere blandit. Cras ultricies ligula sed magna dictum porta. Nulla porttitor accumsan tincidunt.\r\n\r\n&nbsp;', 'Sơn ngoại thất Doyle sắc màu bền đẹp', 'Donec rutrum congue leo eget malesuada. Curabitur aliquet quam id dui posuere blandit. Sed porttitor lectus nibh. Sed porttitor lectus nibh. Vivamus magna justo, lacinia eget consectetur sed, convallis at tellus. Nulla porttitor accumsan tincidunt. Curabitur aliquet quam id dui posuere blandit. Curabitur aliquet quam id dui posuere blandit. Cras ultricies ligula sed magna dictum porta. Nulla porttitor accumsan tincidunt.', 'publish', 'open', 'closed', '', 'son-ngoai-doyle-sac-mau-ben-dep-2', '', '', '2017-10-30 17:10:59', '2017-10-30 10:10:59', '', 0, 'http://localhost/doylecolor/?post_type=product&#038;p=145', 0, 'product', '', 0),
(146, 1, '2017-10-30 17:11:01', '2017-10-30 10:11:01', 'Sed porttitor lectus nibh. Praesent sapien massa, convallis a pellentesque nec, egestas non nisi. Nulla quis lorem ut libero malesuada feugiat. Nulla quis lorem ut libero malesuada feugiat. Nulla porttitor accumsan tincidunt. Curabitur aliquet quam id dui posuere blandit. Praesent sapien massa, convallis a pellentesque nec, egestas non nisi. Praesent sapien massa, convallis a pellentesque nec, egestas non nisi. Quisque velit nisi, pretium ut lacinia in, elementum id enim. Nulla quis lorem ut libero malesuada feugiat.\r\n\r\nDonec rutrum congue leo eget malesuada. Curabitur aliquet quam id dui posuere blandit. Sed porttitor lectus nibh. Sed porttitor lectus nibh. Vivamus magna justo, lacinia eget consectetur sed, convallis at tellus. Nulla porttitor accumsan tincidunt. Curabitur aliquet quam id dui posuere blandit. Curabitur aliquet quam id dui posuere blandit. Cras ultricies ligula sed magna dictum porta. Nulla porttitor accumsan tincidunt.\r\n\r\n<img class=\"aligncenter size-full wp-image-79\" src=\"http://tuan.raothue.com/theme/Nov/wp-content/uploads/2017/09/6.jpg\" alt=\"\" width=\"1600\" height=\"1200\" />\r\n\r\nSed porttitor lectus nibh. Praesent sapien massa, convallis a pellentesque nec, egestas non nisi. Nulla quis lorem ut libero malesuada feugiat. Nulla quis lorem ut libero malesuada feugiat. Nulla porttitor accumsan tincidunt. Curabitur aliquet quam id dui posuere blandit. Praesent sapien massa, convallis a pellentesque nec, egestas non nisi. Praesent sapien massa, convallis a pellentesque nec, egestas non nisi. Quisque velit nisi, pretium ut lacinia in, elementum id enim. Nulla quis lorem ut libero malesuada feugiat.\r\n\r\nDonec rutrum congue leo eget malesuada. Curabitur aliquet quam id dui posuere blandit. Sed porttitor lectus nibh. Sed porttitor lectus nibh. Vivamus magna justo, lacinia eget consectetur sed, convallis at tellus. Nulla porttitor accumsan tincidunt. Curabitur aliquet quam id dui posuere blandit. Curabitur aliquet quam id dui posuere blandit. Cras ultricies ligula sed magna dictum porta. Nulla porttitor accumsan tincidunt.\r\n\r\n&nbsp;', 'Sơn ngoại thất Doyle sắc màu bền đẹp', 'Donec rutrum congue leo eget malesuada. Curabitur aliquet quam id dui posuere blandit. Sed porttitor lectus nibh. Sed porttitor lectus nibh. Vivamus magna justo, lacinia eget consectetur sed, convallis at tellus. Nulla porttitor accumsan tincidunt. Curabitur aliquet quam id dui posuere blandit. Curabitur aliquet quam id dui posuere blandit. Cras ultricies ligula sed magna dictum porta. Nulla porttitor accumsan tincidunt.', 'publish', 'open', 'closed', '', 'son-ngoai-doyle-sac-mau-ben-dep-3', '', '', '2017-10-30 17:11:01', '2017-10-30 10:11:01', '', 0, 'http://localhost/doylecolor/?post_type=product&#038;p=146', 0, 'product', '', 0),
(147, 1, '2017-10-30 17:11:04', '2017-10-30 10:11:04', 'Sed porttitor lectus nibh. Praesent sapien massa, convallis a pellentesque nec, egestas non nisi. Nulla quis lorem ut libero malesuada feugiat. Nulla quis lorem ut libero malesuada feugiat. Nulla porttitor accumsan tincidunt. Curabitur aliquet quam id dui posuere blandit. Praesent sapien massa, convallis a pellentesque nec, egestas non nisi. Praesent sapien massa, convallis a pellentesque nec, egestas non nisi. Quisque velit nisi, pretium ut lacinia in, elementum id enim. Nulla quis lorem ut libero malesuada feugiat.\r\n\r\nDonec rutrum congue leo eget malesuada. Curabitur aliquet quam id dui posuere blandit. Sed porttitor lectus nibh. Sed porttitor lectus nibh. Vivamus magna justo, lacinia eget consectetur sed, convallis at tellus. Nulla porttitor accumsan tincidunt. Curabitur aliquet quam id dui posuere blandit. Curabitur aliquet quam id dui posuere blandit. Cras ultricies ligula sed magna dictum porta. Nulla porttitor accumsan tincidunt.\r\n\r\n<img class=\"aligncenter size-full wp-image-79\" src=\"http://tuan.raothue.com/theme/Nov/wp-content/uploads/2017/09/6.jpg\" alt=\"\" width=\"1600\" height=\"1200\" />\r\n\r\nSed porttitor lectus nibh. Praesent sapien massa, convallis a pellentesque nec, egestas non nisi. Nulla quis lorem ut libero malesuada feugiat. Nulla quis lorem ut libero malesuada feugiat. Nulla porttitor accumsan tincidunt. Curabitur aliquet quam id dui posuere blandit. Praesent sapien massa, convallis a pellentesque nec, egestas non nisi. Praesent sapien massa, convallis a pellentesque nec, egestas non nisi. Quisque velit nisi, pretium ut lacinia in, elementum id enim. Nulla quis lorem ut libero malesuada feugiat.\r\n\r\nDonec rutrum congue leo eget malesuada. Curabitur aliquet quam id dui posuere blandit. Sed porttitor lectus nibh. Sed porttitor lectus nibh. Vivamus magna justo, lacinia eget consectetur sed, convallis at tellus. Nulla porttitor accumsan tincidunt. Curabitur aliquet quam id dui posuere blandit. Curabitur aliquet quam id dui posuere blandit. Cras ultricies ligula sed magna dictum porta. Nulla porttitor accumsan tincidunt.\r\n\r\n&nbsp;', 'Sơn ngoại thất Doyle sắc màu bền đẹp', 'Donec rutrum congue leo eget malesuada. Curabitur aliquet quam id dui posuere blandit. Sed porttitor lectus nibh. Sed porttitor lectus nibh. Vivamus magna justo, lacinia eget consectetur sed, convallis at tellus. Nulla porttitor accumsan tincidunt. Curabitur aliquet quam id dui posuere blandit. Curabitur aliquet quam id dui posuere blandit. Cras ultricies ligula sed magna dictum porta. Nulla porttitor accumsan tincidunt.', 'publish', 'open', 'closed', '', 'son-ngoai-doyle-sac-mau-ben-dep-4', '', '', '2017-10-30 17:14:18', '2017-10-30 10:14:18', '', 0, 'http://localhost/doylecolor/?post_type=product&#038;p=147', 0, 'product', '', 0),
(148, 1, '2017-10-30 17:14:16', '2017-10-30 10:14:16', 'Sed porttitor lectus nibh. Praesent sapien massa, convallis a pellentesque nec, egestas non nisi. Nulla quis lorem ut libero malesuada feugiat. Nulla quis lorem ut libero malesuada feugiat. Nulla porttitor accumsan tincidunt. Curabitur aliquet quam id dui posuere blandit. Praesent sapien massa, convallis a pellentesque nec, egestas non nisi. Praesent sapien massa, convallis a pellentesque nec, egestas non nisi. Quisque velit nisi, pretium ut lacinia in, elementum id enim. Nulla quis lorem ut libero malesuada feugiat.\r\n\r\nDonec rutrum congue leo eget malesuada. Curabitur aliquet quam id dui posuere blandit. Sed porttitor lectus nibh. Sed porttitor lectus nibh. Vivamus magna justo, lacinia eget consectetur sed, convallis at tellus. Nulla porttitor accumsan tincidunt. Curabitur aliquet quam id dui posuere blandit. Curabitur aliquet quam id dui posuere blandit. Cras ultricies ligula sed magna dictum porta. Nulla porttitor accumsan tincidunt.\r\n\r\n<img class=\"aligncenter size-full wp-image-79\" src=\"http://tuan.raothue.com/theme/Nov/wp-content/uploads/2017/09/6.jpg\" alt=\"\" width=\"1600\" height=\"1200\" />\r\n\r\nSed porttitor lectus nibh. Praesent sapien massa, convallis a pellentesque nec, egestas non nisi. Nulla quis lorem ut libero malesuada feugiat. Nulla quis lorem ut libero malesuada feugiat. Nulla porttitor accumsan tincidunt. Curabitur aliquet quam id dui posuere blandit. Praesent sapien massa, convallis a pellentesque nec, egestas non nisi. Praesent sapien massa, convallis a pellentesque nec, egestas non nisi. Quisque velit nisi, pretium ut lacinia in, elementum id enim. Nulla quis lorem ut libero malesuada feugiat.\r\n\r\nDonec rutrum congue leo eget malesuada. Curabitur aliquet quam id dui posuere blandit. Sed porttitor lectus nibh. Sed porttitor lectus nibh. Vivamus magna justo, lacinia eget consectetur sed, convallis at tellus. Nulla porttitor accumsan tincidunt. Curabitur aliquet quam id dui posuere blandit. Curabitur aliquet quam id dui posuere blandit. Cras ultricies ligula sed magna dictum porta. Nulla porttitor accumsan tincidunt.\r\n\r\n&nbsp;', 'Sơn ngoại thất Doyle sắc màu bền đẹp', 'Donec rutrum congue leo eget malesuada. Curabitur aliquet quam id dui posuere blandit. Sed porttitor lectus nibh. Sed porttitor lectus nibh. Vivamus magna justo, lacinia eget consectetur sed, convallis at tellus. Nulla porttitor accumsan tincidunt. Curabitur aliquet quam id dui posuere blandit. Curabitur aliquet quam id dui posuere blandit. Cras ultricies ligula sed magna dictum porta. Nulla porttitor accumsan tincidunt.', 'publish', 'open', 'closed', '', 'son-ngoai-that-doyle-sac-mau-ben-dep-19', '', '', '2017-10-30 17:16:54', '2017-10-30 10:16:54', '', 0, 'http://localhost/doylecolor/?post_type=product&#038;p=148', 0, 'product', '', 0),
(149, 1, '2017-10-30 17:14:15', '2017-10-30 10:14:15', 'Sed porttitor lectus nibh. Praesent sapien massa, convallis a pellentesque nec, egestas non nisi. Nulla quis lorem ut libero malesuada feugiat. Nulla quis lorem ut libero malesuada feugiat. Nulla porttitor accumsan tincidunt. Curabitur aliquet quam id dui posuere blandit. Praesent sapien massa, convallis a pellentesque nec, egestas non nisi. Praesent sapien massa, convallis a pellentesque nec, egestas non nisi. Quisque velit nisi, pretium ut lacinia in, elementum id enim. Nulla quis lorem ut libero malesuada feugiat.\r\n\r\nDonec rutrum congue leo eget malesuada. Curabitur aliquet quam id dui posuere blandit. Sed porttitor lectus nibh. Sed porttitor lectus nibh. Vivamus magna justo, lacinia eget consectetur sed, convallis at tellus. Nulla porttitor accumsan tincidunt. Curabitur aliquet quam id dui posuere blandit. Curabitur aliquet quam id dui posuere blandit. Cras ultricies ligula sed magna dictum porta. Nulla porttitor accumsan tincidunt.\r\n\r\n<img class=\"aligncenter size-full wp-image-79\" src=\"http://tuan.raothue.com/theme/Nov/wp-content/uploads/2017/09/6.jpg\" alt=\"\" width=\"1600\" height=\"1200\" />\r\n\r\nSed porttitor lectus nibh. Praesent sapien massa, convallis a pellentesque nec, egestas non nisi. Nulla quis lorem ut libero malesuada feugiat. Nulla quis lorem ut libero malesuada feugiat. Nulla porttitor accumsan tincidunt. Curabitur aliquet quam id dui posuere blandit. Praesent sapien massa, convallis a pellentesque nec, egestas non nisi. Praesent sapien massa, convallis a pellentesque nec, egestas non nisi. Quisque velit nisi, pretium ut lacinia in, elementum id enim. Nulla quis lorem ut libero malesuada feugiat.\r\n\r\nDonec rutrum congue leo eget malesuada. Curabitur aliquet quam id dui posuere blandit. Sed porttitor lectus nibh. Sed porttitor lectus nibh. Vivamus magna justo, lacinia eget consectetur sed, convallis at tellus. Nulla porttitor accumsan tincidunt. Curabitur aliquet quam id dui posuere blandit. Curabitur aliquet quam id dui posuere blandit. Cras ultricies ligula sed magna dictum porta. Nulla porttitor accumsan tincidunt.\r\n\r\n&nbsp;', 'Sơn ngoại thất Doyle sắc màu bền đẹp', 'Donec rutrum congue leo eget malesuada. Curabitur aliquet quam id dui posuere blandit. Sed porttitor lectus nibh. Sed porttitor lectus nibh. Vivamus magna justo, lacinia eget consectetur sed, convallis at tellus. Nulla porttitor accumsan tincidunt. Curabitur aliquet quam id dui posuere blandit. Curabitur aliquet quam id dui posuere blandit. Cras ultricies ligula sed magna dictum porta. Nulla porttitor accumsan tincidunt.', 'publish', 'open', 'closed', '', 'son-ngoai-that-doyle-sac-mau-ben-dep-18', '', '', '2017-10-30 17:14:15', '2017-10-30 10:14:15', '', 0, 'http://localhost/doylecolor/?post_type=product&#038;p=149', 0, 'product', '', 0);
INSERT INTO `rt_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(150, 1, '2017-10-30 17:14:14', '2017-10-30 10:14:14', 'Sed porttitor lectus nibh. Praesent sapien massa, convallis a pellentesque nec, egestas non nisi. Nulla quis lorem ut libero malesuada feugiat. Nulla quis lorem ut libero malesuada feugiat. Nulla porttitor accumsan tincidunt. Curabitur aliquet quam id dui posuere blandit. Praesent sapien massa, convallis a pellentesque nec, egestas non nisi. Praesent sapien massa, convallis a pellentesque nec, egestas non nisi. Quisque velit nisi, pretium ut lacinia in, elementum id enim. Nulla quis lorem ut libero malesuada feugiat.\r\n\r\nDonec rutrum congue leo eget malesuada. Curabitur aliquet quam id dui posuere blandit. Sed porttitor lectus nibh. Sed porttitor lectus nibh. Vivamus magna justo, lacinia eget consectetur sed, convallis at tellus. Nulla porttitor accumsan tincidunt. Curabitur aliquet quam id dui posuere blandit. Curabitur aliquet quam id dui posuere blandit. Cras ultricies ligula sed magna dictum porta. Nulla porttitor accumsan tincidunt.\r\n\r\n<img class=\"aligncenter size-full wp-image-79\" src=\"http://tuan.raothue.com/theme/Nov/wp-content/uploads/2017/09/6.jpg\" alt=\"\" width=\"1600\" height=\"1200\" />\r\n\r\nSed porttitor lectus nibh. Praesent sapien massa, convallis a pellentesque nec, egestas non nisi. Nulla quis lorem ut libero malesuada feugiat. Nulla quis lorem ut libero malesuada feugiat. Nulla porttitor accumsan tincidunt. Curabitur aliquet quam id dui posuere blandit. Praesent sapien massa, convallis a pellentesque nec, egestas non nisi. Praesent sapien massa, convallis a pellentesque nec, egestas non nisi. Quisque velit nisi, pretium ut lacinia in, elementum id enim. Nulla quis lorem ut libero malesuada feugiat.\r\n\r\nDonec rutrum congue leo eget malesuada. Curabitur aliquet quam id dui posuere blandit. Sed porttitor lectus nibh. Sed porttitor lectus nibh. Vivamus magna justo, lacinia eget consectetur sed, convallis at tellus. Nulla porttitor accumsan tincidunt. Curabitur aliquet quam id dui posuere blandit. Curabitur aliquet quam id dui posuere blandit. Cras ultricies ligula sed magna dictum porta. Nulla porttitor accumsan tincidunt.\r\n\r\n&nbsp;', 'Sơn ngoại thất Doyle sắc màu bền đẹp', 'Donec rutrum congue leo eget malesuada. Curabitur aliquet quam id dui posuere blandit. Sed porttitor lectus nibh. Sed porttitor lectus nibh. Vivamus magna justo, lacinia eget consectetur sed, convallis at tellus. Nulla porttitor accumsan tincidunt. Curabitur aliquet quam id dui posuere blandit. Curabitur aliquet quam id dui posuere blandit. Cras ultricies ligula sed magna dictum porta. Nulla porttitor accumsan tincidunt.', 'publish', 'open', 'closed', '', 'son-ngoai-that-doyle-sac-mau-ben-dep-17', '', '', '2017-10-30 17:14:14', '2017-10-30 10:14:14', '', 0, 'http://localhost/doylecolor/?post_type=product&#038;p=150', 0, 'product', '', 0),
(151, 1, '2017-10-30 17:14:13', '2017-10-30 10:14:13', 'Sed porttitor lectus nibh. Praesent sapien massa, convallis a pellentesque nec, egestas non nisi. Nulla quis lorem ut libero malesuada feugiat. Nulla quis lorem ut libero malesuada feugiat. Nulla porttitor accumsan tincidunt. Curabitur aliquet quam id dui posuere blandit. Praesent sapien massa, convallis a pellentesque nec, egestas non nisi. Praesent sapien massa, convallis a pellentesque nec, egestas non nisi. Quisque velit nisi, pretium ut lacinia in, elementum id enim. Nulla quis lorem ut libero malesuada feugiat.\r\n\r\nDonec rutrum congue leo eget malesuada. Curabitur aliquet quam id dui posuere blandit. Sed porttitor lectus nibh. Sed porttitor lectus nibh. Vivamus magna justo, lacinia eget consectetur sed, convallis at tellus. Nulla porttitor accumsan tincidunt. Curabitur aliquet quam id dui posuere blandit. Curabitur aliquet quam id dui posuere blandit. Cras ultricies ligula sed magna dictum porta. Nulla porttitor accumsan tincidunt.\r\n\r\n<img class=\"aligncenter size-full wp-image-79\" src=\"http://tuan.raothue.com/theme/Nov/wp-content/uploads/2017/09/6.jpg\" alt=\"\" width=\"1600\" height=\"1200\" />\r\n\r\nSed porttitor lectus nibh. Praesent sapien massa, convallis a pellentesque nec, egestas non nisi. Nulla quis lorem ut libero malesuada feugiat. Nulla quis lorem ut libero malesuada feugiat. Nulla porttitor accumsan tincidunt. Curabitur aliquet quam id dui posuere blandit. Praesent sapien massa, convallis a pellentesque nec, egestas non nisi. Praesent sapien massa, convallis a pellentesque nec, egestas non nisi. Quisque velit nisi, pretium ut lacinia in, elementum id enim. Nulla quis lorem ut libero malesuada feugiat.\r\n\r\nDonec rutrum congue leo eget malesuada. Curabitur aliquet quam id dui posuere blandit. Sed porttitor lectus nibh. Sed porttitor lectus nibh. Vivamus magna justo, lacinia eget consectetur sed, convallis at tellus. Nulla porttitor accumsan tincidunt. Curabitur aliquet quam id dui posuere blandit. Curabitur aliquet quam id dui posuere blandit. Cras ultricies ligula sed magna dictum porta. Nulla porttitor accumsan tincidunt.\r\n\r\n&nbsp;', 'Sơn ngoại thất Doyle sắc màu bền đẹp', 'Donec rutrum congue leo eget malesuada. Curabitur aliquet quam id dui posuere blandit. Sed porttitor lectus nibh. Sed porttitor lectus nibh. Vivamus magna justo, lacinia eget consectetur sed, convallis at tellus. Nulla porttitor accumsan tincidunt. Curabitur aliquet quam id dui posuere blandit. Curabitur aliquet quam id dui posuere blandit. Cras ultricies ligula sed magna dictum porta. Nulla porttitor accumsan tincidunt.', 'publish', 'open', 'closed', '', 'son-ngoai-that-doyle-sac-mau-ben-dep-16', '', '', '2017-10-30 17:14:13', '2017-10-30 10:14:13', '', 0, 'http://localhost/doylecolor/?post_type=product&#038;p=151', 0, 'product', '', 0),
(152, 1, '2017-10-30 17:14:12', '2017-10-30 10:14:12', 'Sed porttitor lectus nibh. Praesent sapien massa, convallis a pellentesque nec, egestas non nisi. Nulla quis lorem ut libero malesuada feugiat. Nulla quis lorem ut libero malesuada feugiat. Nulla porttitor accumsan tincidunt. Curabitur aliquet quam id dui posuere blandit. Praesent sapien massa, convallis a pellentesque nec, egestas non nisi. Praesent sapien massa, convallis a pellentesque nec, egestas non nisi. Quisque velit nisi, pretium ut lacinia in, elementum id enim. Nulla quis lorem ut libero malesuada feugiat.\r\n\r\nDonec rutrum congue leo eget malesuada. Curabitur aliquet quam id dui posuere blandit. Sed porttitor lectus nibh. Sed porttitor lectus nibh. Vivamus magna justo, lacinia eget consectetur sed, convallis at tellus. Nulla porttitor accumsan tincidunt. Curabitur aliquet quam id dui posuere blandit. Curabitur aliquet quam id dui posuere blandit. Cras ultricies ligula sed magna dictum porta. Nulla porttitor accumsan tincidunt.\r\n\r\n<img class=\"aligncenter size-full wp-image-79\" src=\"http://tuan.raothue.com/theme/Nov/wp-content/uploads/2017/09/6.jpg\" alt=\"\" width=\"1600\" height=\"1200\" />\r\n\r\nSed porttitor lectus nibh. Praesent sapien massa, convallis a pellentesque nec, egestas non nisi. Nulla quis lorem ut libero malesuada feugiat. Nulla quis lorem ut libero malesuada feugiat. Nulla porttitor accumsan tincidunt. Curabitur aliquet quam id dui posuere blandit. Praesent sapien massa, convallis a pellentesque nec, egestas non nisi. Praesent sapien massa, convallis a pellentesque nec, egestas non nisi. Quisque velit nisi, pretium ut lacinia in, elementum id enim. Nulla quis lorem ut libero malesuada feugiat.\r\n\r\nDonec rutrum congue leo eget malesuada. Curabitur aliquet quam id dui posuere blandit. Sed porttitor lectus nibh. Sed porttitor lectus nibh. Vivamus magna justo, lacinia eget consectetur sed, convallis at tellus. Nulla porttitor accumsan tincidunt. Curabitur aliquet quam id dui posuere blandit. Curabitur aliquet quam id dui posuere blandit. Cras ultricies ligula sed magna dictum porta. Nulla porttitor accumsan tincidunt.\r\n\r\n&nbsp;', 'Sơn ngoại thất Doyle sắc màu bền đẹp', 'Donec rutrum congue leo eget malesuada. Curabitur aliquet quam id dui posuere blandit. Sed porttitor lectus nibh. Sed porttitor lectus nibh. Vivamus magna justo, lacinia eget consectetur sed, convallis at tellus. Nulla porttitor accumsan tincidunt. Curabitur aliquet quam id dui posuere blandit. Curabitur aliquet quam id dui posuere blandit. Cras ultricies ligula sed magna dictum porta. Nulla porttitor accumsan tincidunt.', 'publish', 'open', 'closed', '', 'son-ngoai-that-doyle-sac-mau-ben-dep-15', '', '', '2017-10-30 17:14:12', '2017-10-30 10:14:12', '', 0, 'http://localhost/doylecolor/?post_type=product&#038;p=152', 0, 'product', '', 0),
(153, 1, '2017-10-30 17:14:11', '2017-10-30 10:14:11', 'Sed porttitor lectus nibh. Praesent sapien massa, convallis a pellentesque nec, egestas non nisi. Nulla quis lorem ut libero malesuada feugiat. Nulla quis lorem ut libero malesuada feugiat. Nulla porttitor accumsan tincidunt. Curabitur aliquet quam id dui posuere blandit. Praesent sapien massa, convallis a pellentesque nec, egestas non nisi. Praesent sapien massa, convallis a pellentesque nec, egestas non nisi. Quisque velit nisi, pretium ut lacinia in, elementum id enim. Nulla quis lorem ut libero malesuada feugiat.\r\n\r\nDonec rutrum congue leo eget malesuada. Curabitur aliquet quam id dui posuere blandit. Sed porttitor lectus nibh. Sed porttitor lectus nibh. Vivamus magna justo, lacinia eget consectetur sed, convallis at tellus. Nulla porttitor accumsan tincidunt. Curabitur aliquet quam id dui posuere blandit. Curabitur aliquet quam id dui posuere blandit. Cras ultricies ligula sed magna dictum porta. Nulla porttitor accumsan tincidunt.\r\n\r\n<img class=\"aligncenter size-full wp-image-79\" src=\"http://tuan.raothue.com/theme/Nov/wp-content/uploads/2017/09/6.jpg\" alt=\"\" width=\"1600\" height=\"1200\" />\r\n\r\nSed porttitor lectus nibh. Praesent sapien massa, convallis a pellentesque nec, egestas non nisi. Nulla quis lorem ut libero malesuada feugiat. Nulla quis lorem ut libero malesuada feugiat. Nulla porttitor accumsan tincidunt. Curabitur aliquet quam id dui posuere blandit. Praesent sapien massa, convallis a pellentesque nec, egestas non nisi. Praesent sapien massa, convallis a pellentesque nec, egestas non nisi. Quisque velit nisi, pretium ut lacinia in, elementum id enim. Nulla quis lorem ut libero malesuada feugiat.\r\n\r\nDonec rutrum congue leo eget malesuada. Curabitur aliquet quam id dui posuere blandit. Sed porttitor lectus nibh. Sed porttitor lectus nibh. Vivamus magna justo, lacinia eget consectetur sed, convallis at tellus. Nulla porttitor accumsan tincidunt. Curabitur aliquet quam id dui posuere blandit. Curabitur aliquet quam id dui posuere blandit. Cras ultricies ligula sed magna dictum porta. Nulla porttitor accumsan tincidunt.\r\n\r\n&nbsp;', 'Sơn ngoại thất Doyle sắc màu bền đẹp', 'Donec rutrum congue leo eget malesuada. Curabitur aliquet quam id dui posuere blandit. Sed porttitor lectus nibh. Sed porttitor lectus nibh. Vivamus magna justo, lacinia eget consectetur sed, convallis at tellus. Nulla porttitor accumsan tincidunt. Curabitur aliquet quam id dui posuere blandit. Curabitur aliquet quam id dui posuere blandit. Cras ultricies ligula sed magna dictum porta. Nulla porttitor accumsan tincidunt.', 'publish', 'open', 'closed', '', 'son-ngoai-that-doyle-sac-mau-ben-dep-14', '', '', '2017-10-30 17:14:11', '2017-10-30 10:14:11', '', 0, 'http://localhost/doylecolor/?post_type=product&#038;p=153', 0, 'product', '', 0),
(154, 1, '2017-10-30 17:14:10', '2017-10-30 10:14:10', 'Sed porttitor lectus nibh. Praesent sapien massa, convallis a pellentesque nec, egestas non nisi. Nulla quis lorem ut libero malesuada feugiat. Nulla quis lorem ut libero malesuada feugiat. Nulla porttitor accumsan tincidunt. Curabitur aliquet quam id dui posuere blandit. Praesent sapien massa, convallis a pellentesque nec, egestas non nisi. Praesent sapien massa, convallis a pellentesque nec, egestas non nisi. Quisque velit nisi, pretium ut lacinia in, elementum id enim. Nulla quis lorem ut libero malesuada feugiat.\r\n\r\nDonec rutrum congue leo eget malesuada. Curabitur aliquet quam id dui posuere blandit. Sed porttitor lectus nibh. Sed porttitor lectus nibh. Vivamus magna justo, lacinia eget consectetur sed, convallis at tellus. Nulla porttitor accumsan tincidunt. Curabitur aliquet quam id dui posuere blandit. Curabitur aliquet quam id dui posuere blandit. Cras ultricies ligula sed magna dictum porta. Nulla porttitor accumsan tincidunt.\r\n\r\n<img class=\"aligncenter size-full wp-image-79\" src=\"http://tuan.raothue.com/theme/Nov/wp-content/uploads/2017/09/6.jpg\" alt=\"\" width=\"1600\" height=\"1200\" />\r\n\r\nSed porttitor lectus nibh. Praesent sapien massa, convallis a pellentesque nec, egestas non nisi. Nulla quis lorem ut libero malesuada feugiat. Nulla quis lorem ut libero malesuada feugiat. Nulla porttitor accumsan tincidunt. Curabitur aliquet quam id dui posuere blandit. Praesent sapien massa, convallis a pellentesque nec, egestas non nisi. Praesent sapien massa, convallis a pellentesque nec, egestas non nisi. Quisque velit nisi, pretium ut lacinia in, elementum id enim. Nulla quis lorem ut libero malesuada feugiat.\r\n\r\nDonec rutrum congue leo eget malesuada. Curabitur aliquet quam id dui posuere blandit. Sed porttitor lectus nibh. Sed porttitor lectus nibh. Vivamus magna justo, lacinia eget consectetur sed, convallis at tellus. Nulla porttitor accumsan tincidunt. Curabitur aliquet quam id dui posuere blandit. Curabitur aliquet quam id dui posuere blandit. Cras ultricies ligula sed magna dictum porta. Nulla porttitor accumsan tincidunt.\r\n\r\n&nbsp;', 'Sơn ngoại thất Doyle sắc màu bền đẹp', 'Donec rutrum congue leo eget malesuada. Curabitur aliquet quam id dui posuere blandit. Sed porttitor lectus nibh. Sed porttitor lectus nibh. Vivamus magna justo, lacinia eget consectetur sed, convallis at tellus. Nulla porttitor accumsan tincidunt. Curabitur aliquet quam id dui posuere blandit. Curabitur aliquet quam id dui posuere blandit. Cras ultricies ligula sed magna dictum porta. Nulla porttitor accumsan tincidunt.', 'publish', 'open', 'closed', '', 'son-ngoai-that-doyle-sac-mau-ben-dep-13', '', '', '2017-10-30 17:14:10', '2017-10-30 10:14:10', '', 0, 'http://localhost/doylecolor/?post_type=product&#038;p=154', 0, 'product', '', 0),
(155, 1, '2017-10-30 17:14:09', '2017-10-30 10:14:09', 'Sed porttitor lectus nibh. Praesent sapien massa, convallis a pellentesque nec, egestas non nisi. Nulla quis lorem ut libero malesuada feugiat. Nulla quis lorem ut libero malesuada feugiat. Nulla porttitor accumsan tincidunt. Curabitur aliquet quam id dui posuere blandit. Praesent sapien massa, convallis a pellentesque nec, egestas non nisi. Praesent sapien massa, convallis a pellentesque nec, egestas non nisi. Quisque velit nisi, pretium ut lacinia in, elementum id enim. Nulla quis lorem ut libero malesuada feugiat.\r\n\r\nDonec rutrum congue leo eget malesuada. Curabitur aliquet quam id dui posuere blandit. Sed porttitor lectus nibh. Sed porttitor lectus nibh. Vivamus magna justo, lacinia eget consectetur sed, convallis at tellus. Nulla porttitor accumsan tincidunt. Curabitur aliquet quam id dui posuere blandit. Curabitur aliquet quam id dui posuere blandit. Cras ultricies ligula sed magna dictum porta. Nulla porttitor accumsan tincidunt.\r\n\r\n<img class=\"aligncenter size-full wp-image-79\" src=\"http://tuan.raothue.com/theme/Nov/wp-content/uploads/2017/09/6.jpg\" alt=\"\" width=\"1600\" height=\"1200\" />\r\n\r\nSed porttitor lectus nibh. Praesent sapien massa, convallis a pellentesque nec, egestas non nisi. Nulla quis lorem ut libero malesuada feugiat. Nulla quis lorem ut libero malesuada feugiat. Nulla porttitor accumsan tincidunt. Curabitur aliquet quam id dui posuere blandit. Praesent sapien massa, convallis a pellentesque nec, egestas non nisi. Praesent sapien massa, convallis a pellentesque nec, egestas non nisi. Quisque velit nisi, pretium ut lacinia in, elementum id enim. Nulla quis lorem ut libero malesuada feugiat.\r\n\r\nDonec rutrum congue leo eget malesuada. Curabitur aliquet quam id dui posuere blandit. Sed porttitor lectus nibh. Sed porttitor lectus nibh. Vivamus magna justo, lacinia eget consectetur sed, convallis at tellus. Nulla porttitor accumsan tincidunt. Curabitur aliquet quam id dui posuere blandit. Curabitur aliquet quam id dui posuere blandit. Cras ultricies ligula sed magna dictum porta. Nulla porttitor accumsan tincidunt.\r\n\r\n&nbsp;', 'Sơn ngoại thất Doyle sắc màu bền đẹp', 'Donec rutrum congue leo eget malesuada. Curabitur aliquet quam id dui posuere blandit. Sed porttitor lectus nibh. Sed porttitor lectus nibh. Vivamus magna justo, lacinia eget consectetur sed, convallis at tellus. Nulla porttitor accumsan tincidunt. Curabitur aliquet quam id dui posuere blandit. Curabitur aliquet quam id dui posuere blandit. Cras ultricies ligula sed magna dictum porta. Nulla porttitor accumsan tincidunt.', 'publish', 'open', 'closed', '', 'son-ngoai-that-doyle-sac-mau-ben-dep-12', '', '', '2017-10-30 17:14:09', '2017-10-30 10:14:09', '', 0, 'http://localhost/doylecolor/?post_type=product&#038;p=155', 0, 'product', '', 0),
(156, 1, '2017-10-30 17:14:07', '2017-10-30 10:14:07', 'Sed porttitor lectus nibh. Praesent sapien massa, convallis a pellentesque nec, egestas non nisi. Nulla quis lorem ut libero malesuada feugiat. Nulla quis lorem ut libero malesuada feugiat. Nulla porttitor accumsan tincidunt. Curabitur aliquet quam id dui posuere blandit. Praesent sapien massa, convallis a pellentesque nec, egestas non nisi. Praesent sapien massa, convallis a pellentesque nec, egestas non nisi. Quisque velit nisi, pretium ut lacinia in, elementum id enim. Nulla quis lorem ut libero malesuada feugiat.\r\n\r\nDonec rutrum congue leo eget malesuada. Curabitur aliquet quam id dui posuere blandit. Sed porttitor lectus nibh. Sed porttitor lectus nibh. Vivamus magna justo, lacinia eget consectetur sed, convallis at tellus. Nulla porttitor accumsan tincidunt. Curabitur aliquet quam id dui posuere blandit. Curabitur aliquet quam id dui posuere blandit. Cras ultricies ligula sed magna dictum porta. Nulla porttitor accumsan tincidunt.\r\n\r\n<img class=\"aligncenter size-full wp-image-79\" src=\"http://tuan.raothue.com/theme/Nov/wp-content/uploads/2017/09/6.jpg\" alt=\"\" width=\"1600\" height=\"1200\" />\r\n\r\nSed porttitor lectus nibh. Praesent sapien massa, convallis a pellentesque nec, egestas non nisi. Nulla quis lorem ut libero malesuada feugiat. Nulla quis lorem ut libero malesuada feugiat. Nulla porttitor accumsan tincidunt. Curabitur aliquet quam id dui posuere blandit. Praesent sapien massa, convallis a pellentesque nec, egestas non nisi. Praesent sapien massa, convallis a pellentesque nec, egestas non nisi. Quisque velit nisi, pretium ut lacinia in, elementum id enim. Nulla quis lorem ut libero malesuada feugiat.\r\n\r\nDonec rutrum congue leo eget malesuada. Curabitur aliquet quam id dui posuere blandit. Sed porttitor lectus nibh. Sed porttitor lectus nibh. Vivamus magna justo, lacinia eget consectetur sed, convallis at tellus. Nulla porttitor accumsan tincidunt. Curabitur aliquet quam id dui posuere blandit. Curabitur aliquet quam id dui posuere blandit. Cras ultricies ligula sed magna dictum porta. Nulla porttitor accumsan tincidunt.\r\n\r\n&nbsp;', 'Sơn ngoại thất Doyle sắc màu bền đẹp', 'Donec rutrum congue leo eget malesuada. Curabitur aliquet quam id dui posuere blandit. Sed porttitor lectus nibh. Sed porttitor lectus nibh. Vivamus magna justo, lacinia eget consectetur sed, convallis at tellus. Nulla porttitor accumsan tincidunt. Curabitur aliquet quam id dui posuere blandit. Curabitur aliquet quam id dui posuere blandit. Cras ultricies ligula sed magna dictum porta. Nulla porttitor accumsan tincidunt.', 'publish', 'open', 'closed', '', 'son-ngoai-that-doyle-sac-mau-ben-dep-11', '', '', '2017-10-30 17:14:07', '2017-10-30 10:14:07', '', 0, 'http://localhost/doylecolor/?post_type=product&#038;p=156', 0, 'product', '', 0),
(157, 1, '2017-10-30 17:14:06', '2017-10-30 10:14:06', 'Sed porttitor lectus nibh. Praesent sapien massa, convallis a pellentesque nec, egestas non nisi. Nulla quis lorem ut libero malesuada feugiat. Nulla quis lorem ut libero malesuada feugiat. Nulla porttitor accumsan tincidunt. Curabitur aliquet quam id dui posuere blandit. Praesent sapien massa, convallis a pellentesque nec, egestas non nisi. Praesent sapien massa, convallis a pellentesque nec, egestas non nisi. Quisque velit nisi, pretium ut lacinia in, elementum id enim. Nulla quis lorem ut libero malesuada feugiat.\r\n\r\nDonec rutrum congue leo eget malesuada. Curabitur aliquet quam id dui posuere blandit. Sed porttitor lectus nibh. Sed porttitor lectus nibh. Vivamus magna justo, lacinia eget consectetur sed, convallis at tellus. Nulla porttitor accumsan tincidunt. Curabitur aliquet quam id dui posuere blandit. Curabitur aliquet quam id dui posuere blandit. Cras ultricies ligula sed magna dictum porta. Nulla porttitor accumsan tincidunt.\r\n\r\n<img class=\"aligncenter size-full wp-image-79\" src=\"http://tuan.raothue.com/theme/Nov/wp-content/uploads/2017/09/6.jpg\" alt=\"\" width=\"1600\" height=\"1200\" />\r\n\r\nSed porttitor lectus nibh. Praesent sapien massa, convallis a pellentesque nec, egestas non nisi. Nulla quis lorem ut libero malesuada feugiat. Nulla quis lorem ut libero malesuada feugiat. Nulla porttitor accumsan tincidunt. Curabitur aliquet quam id dui posuere blandit. Praesent sapien massa, convallis a pellentesque nec, egestas non nisi. Praesent sapien massa, convallis a pellentesque nec, egestas non nisi. Quisque velit nisi, pretium ut lacinia in, elementum id enim. Nulla quis lorem ut libero malesuada feugiat.\r\n\r\nDonec rutrum congue leo eget malesuada. Curabitur aliquet quam id dui posuere blandit. Sed porttitor lectus nibh. Sed porttitor lectus nibh. Vivamus magna justo, lacinia eget consectetur sed, convallis at tellus. Nulla porttitor accumsan tincidunt. Curabitur aliquet quam id dui posuere blandit. Curabitur aliquet quam id dui posuere blandit. Cras ultricies ligula sed magna dictum porta. Nulla porttitor accumsan tincidunt.\r\n\r\n&nbsp;', 'Sơn ngoại thất Doyle sắc màu bền đẹp', 'Donec rutrum congue leo eget malesuada. Curabitur aliquet quam id dui posuere blandit. Sed porttitor lectus nibh. Sed porttitor lectus nibh. Vivamus magna justo, lacinia eget consectetur sed, convallis at tellus. Nulla porttitor accumsan tincidunt. Curabitur aliquet quam id dui posuere blandit. Curabitur aliquet quam id dui posuere blandit. Cras ultricies ligula sed magna dictum porta. Nulla porttitor accumsan tincidunt.', 'publish', 'open', 'closed', '', 'son-ngoai-that-doyle-sac-mau-ben-dep-10', '', '', '2017-10-30 17:14:06', '2017-10-30 10:14:06', '', 0, 'http://localhost/doylecolor/?post_type=product&#038;p=157', 0, 'product', '', 0),
(158, 1, '2017-10-30 17:14:05', '2017-10-30 10:14:05', 'Sed porttitor lectus nibh. Praesent sapien massa, convallis a pellentesque nec, egestas non nisi. Nulla quis lorem ut libero malesuada feugiat. Nulla quis lorem ut libero malesuada feugiat. Nulla porttitor accumsan tincidunt. Curabitur aliquet quam id dui posuere blandit. Praesent sapien massa, convallis a pellentesque nec, egestas non nisi. Praesent sapien massa, convallis a pellentesque nec, egestas non nisi. Quisque velit nisi, pretium ut lacinia in, elementum id enim. Nulla quis lorem ut libero malesuada feugiat.\r\n\r\nDonec rutrum congue leo eget malesuada. Curabitur aliquet quam id dui posuere blandit. Sed porttitor lectus nibh. Sed porttitor lectus nibh. Vivamus magna justo, lacinia eget consectetur sed, convallis at tellus. Nulla porttitor accumsan tincidunt. Curabitur aliquet quam id dui posuere blandit. Curabitur aliquet quam id dui posuere blandit. Cras ultricies ligula sed magna dictum porta. Nulla porttitor accumsan tincidunt.\r\n\r\n<img class=\"aligncenter size-full wp-image-79\" src=\"http://tuan.raothue.com/theme/Nov/wp-content/uploads/2017/09/6.jpg\" alt=\"\" width=\"1600\" height=\"1200\" />\r\n\r\nSed porttitor lectus nibh. Praesent sapien massa, convallis a pellentesque nec, egestas non nisi. Nulla quis lorem ut libero malesuada feugiat. Nulla quis lorem ut libero malesuada feugiat. Nulla porttitor accumsan tincidunt. Curabitur aliquet quam id dui posuere blandit. Praesent sapien massa, convallis a pellentesque nec, egestas non nisi. Praesent sapien massa, convallis a pellentesque nec, egestas non nisi. Quisque velit nisi, pretium ut lacinia in, elementum id enim. Nulla quis lorem ut libero malesuada feugiat.\r\n\r\nDonec rutrum congue leo eget malesuada. Curabitur aliquet quam id dui posuere blandit. Sed porttitor lectus nibh. Sed porttitor lectus nibh. Vivamus magna justo, lacinia eget consectetur sed, convallis at tellus. Nulla porttitor accumsan tincidunt. Curabitur aliquet quam id dui posuere blandit. Curabitur aliquet quam id dui posuere blandit. Cras ultricies ligula sed magna dictum porta. Nulla porttitor accumsan tincidunt.\r\n\r\n&nbsp;', 'Sơn ngoại thất Doyle sắc màu bền đẹp', 'Donec rutrum congue leo eget malesuada. Curabitur aliquet quam id dui posuere blandit. Sed porttitor lectus nibh. Sed porttitor lectus nibh. Vivamus magna justo, lacinia eget consectetur sed, convallis at tellus. Nulla porttitor accumsan tincidunt. Curabitur aliquet quam id dui posuere blandit. Curabitur aliquet quam id dui posuere blandit. Cras ultricies ligula sed magna dictum porta. Nulla porttitor accumsan tincidunt.', 'publish', 'open', 'closed', '', 'son-ngoai-that-doyle-sac-mau-ben-dep-9', '', '', '2017-10-30 17:14:05', '2017-10-30 10:14:05', '', 0, 'http://localhost/doylecolor/?post_type=product&#038;p=158', 0, 'product', '', 0),
(159, 1, '2017-10-30 17:14:04', '2017-10-30 10:14:04', 'Sed porttitor lectus nibh. Praesent sapien massa, convallis a pellentesque nec, egestas non nisi. Nulla quis lorem ut libero malesuada feugiat. Nulla quis lorem ut libero malesuada feugiat. Nulla porttitor accumsan tincidunt. Curabitur aliquet quam id dui posuere blandit. Praesent sapien massa, convallis a pellentesque nec, egestas non nisi. Praesent sapien massa, convallis a pellentesque nec, egestas non nisi. Quisque velit nisi, pretium ut lacinia in, elementum id enim. Nulla quis lorem ut libero malesuada feugiat.\r\n\r\nDonec rutrum congue leo eget malesuada. Curabitur aliquet quam id dui posuere blandit. Sed porttitor lectus nibh. Sed porttitor lectus nibh. Vivamus magna justo, lacinia eget consectetur sed, convallis at tellus. Nulla porttitor accumsan tincidunt. Curabitur aliquet quam id dui posuere blandit. Curabitur aliquet quam id dui posuere blandit. Cras ultricies ligula sed magna dictum porta. Nulla porttitor accumsan tincidunt.\r\n\r\n<img class=\"aligncenter size-full wp-image-79\" src=\"http://tuan.raothue.com/theme/Nov/wp-content/uploads/2017/09/6.jpg\" alt=\"\" width=\"1600\" height=\"1200\" />\r\n\r\nSed porttitor lectus nibh. Praesent sapien massa, convallis a pellentesque nec, egestas non nisi. Nulla quis lorem ut libero malesuada feugiat. Nulla quis lorem ut libero malesuada feugiat. Nulla porttitor accumsan tincidunt. Curabitur aliquet quam id dui posuere blandit. Praesent sapien massa, convallis a pellentesque nec, egestas non nisi. Praesent sapien massa, convallis a pellentesque nec, egestas non nisi. Quisque velit nisi, pretium ut lacinia in, elementum id enim. Nulla quis lorem ut libero malesuada feugiat.\r\n\r\nDonec rutrum congue leo eget malesuada. Curabitur aliquet quam id dui posuere blandit. Sed porttitor lectus nibh. Sed porttitor lectus nibh. Vivamus magna justo, lacinia eget consectetur sed, convallis at tellus. Nulla porttitor accumsan tincidunt. Curabitur aliquet quam id dui posuere blandit. Curabitur aliquet quam id dui posuere blandit. Cras ultricies ligula sed magna dictum porta. Nulla porttitor accumsan tincidunt.\r\n\r\n&nbsp;', 'Sơn ngoại thất Doyle sắc màu bền đẹp', 'Donec rutrum congue leo eget malesuada. Curabitur aliquet quam id dui posuere blandit. Sed porttitor lectus nibh. Sed porttitor lectus nibh. Vivamus magna justo, lacinia eget consectetur sed, convallis at tellus. Nulla porttitor accumsan tincidunt. Curabitur aliquet quam id dui posuere blandit. Curabitur aliquet quam id dui posuere blandit. Cras ultricies ligula sed magna dictum porta. Nulla porttitor accumsan tincidunt.', 'publish', 'open', 'closed', '', 'son-ngoai-that-doyle-sac-mau-ben-dep-8', '', '', '2017-10-30 17:14:04', '2017-10-30 10:14:04', '', 0, 'http://localhost/doylecolor/?post_type=product&#038;p=159', 0, 'product', '', 0),
(160, 1, '2017-10-30 17:14:03', '2017-10-30 10:14:03', 'Sed porttitor lectus nibh. Praesent sapien massa, convallis a pellentesque nec, egestas non nisi. Nulla quis lorem ut libero malesuada feugiat. Nulla quis lorem ut libero malesuada feugiat. Nulla porttitor accumsan tincidunt. Curabitur aliquet quam id dui posuere blandit. Praesent sapien massa, convallis a pellentesque nec, egestas non nisi. Praesent sapien massa, convallis a pellentesque nec, egestas non nisi. Quisque velit nisi, pretium ut lacinia in, elementum id enim. Nulla quis lorem ut libero malesuada feugiat.\r\n\r\nDonec rutrum congue leo eget malesuada. Curabitur aliquet quam id dui posuere blandit. Sed porttitor lectus nibh. Sed porttitor lectus nibh. Vivamus magna justo, lacinia eget consectetur sed, convallis at tellus. Nulla porttitor accumsan tincidunt. Curabitur aliquet quam id dui posuere blandit. Curabitur aliquet quam id dui posuere blandit. Cras ultricies ligula sed magna dictum porta. Nulla porttitor accumsan tincidunt.\r\n\r\n<img class=\"aligncenter size-full wp-image-79\" src=\"http://tuan.raothue.com/theme/Nov/wp-content/uploads/2017/09/6.jpg\" alt=\"\" width=\"1600\" height=\"1200\" />\r\n\r\nSed porttitor lectus nibh. Praesent sapien massa, convallis a pellentesque nec, egestas non nisi. Nulla quis lorem ut libero malesuada feugiat. Nulla quis lorem ut libero malesuada feugiat. Nulla porttitor accumsan tincidunt. Curabitur aliquet quam id dui posuere blandit. Praesent sapien massa, convallis a pellentesque nec, egestas non nisi. Praesent sapien massa, convallis a pellentesque nec, egestas non nisi. Quisque velit nisi, pretium ut lacinia in, elementum id enim. Nulla quis lorem ut libero malesuada feugiat.\r\n\r\nDonec rutrum congue leo eget malesuada. Curabitur aliquet quam id dui posuere blandit. Sed porttitor lectus nibh. Sed porttitor lectus nibh. Vivamus magna justo, lacinia eget consectetur sed, convallis at tellus. Nulla porttitor accumsan tincidunt. Curabitur aliquet quam id dui posuere blandit. Curabitur aliquet quam id dui posuere blandit. Cras ultricies ligula sed magna dictum porta. Nulla porttitor accumsan tincidunt.\r\n\r\n&nbsp;', 'Sơn ngoại thất Doyle sắc màu bền đẹp', 'Donec rutrum congue leo eget malesuada. Curabitur aliquet quam id dui posuere blandit. Sed porttitor lectus nibh. Sed porttitor lectus nibh. Vivamus magna justo, lacinia eget consectetur sed, convallis at tellus. Nulla porttitor accumsan tincidunt. Curabitur aliquet quam id dui posuere blandit. Curabitur aliquet quam id dui posuere blandit. Cras ultricies ligula sed magna dictum porta. Nulla porttitor accumsan tincidunt.', 'publish', 'open', 'closed', '', 'son-ngoai-that-doyle-sac-mau-ben-dep-7', '', '', '2017-10-30 17:14:03', '2017-10-30 10:14:03', '', 0, 'http://localhost/doylecolor/?post_type=product&#038;p=160', 0, 'product', '', 0),
(161, 1, '2017-10-30 17:14:01', '2017-10-30 10:14:01', 'Sed porttitor lectus nibh. Praesent sapien massa, convallis a pellentesque nec, egestas non nisi. Nulla quis lorem ut libero malesuada feugiat. Nulla quis lorem ut libero malesuada feugiat. Nulla porttitor accumsan tincidunt. Curabitur aliquet quam id dui posuere blandit. Praesent sapien massa, convallis a pellentesque nec, egestas non nisi. Praesent sapien massa, convallis a pellentesque nec, egestas non nisi. Quisque velit nisi, pretium ut lacinia in, elementum id enim. Nulla quis lorem ut libero malesuada feugiat.\r\n\r\nDonec rutrum congue leo eget malesuada. Curabitur aliquet quam id dui posuere blandit. Sed porttitor lectus nibh. Sed porttitor lectus nibh. Vivamus magna justo, lacinia eget consectetur sed, convallis at tellus. Nulla porttitor accumsan tincidunt. Curabitur aliquet quam id dui posuere blandit. Curabitur aliquet quam id dui posuere blandit. Cras ultricies ligula sed magna dictum porta. Nulla porttitor accumsan tincidunt.\r\n\r\n<img class=\"aligncenter size-full wp-image-79\" src=\"http://tuan.raothue.com/theme/Nov/wp-content/uploads/2017/09/6.jpg\" alt=\"\" width=\"1600\" height=\"1200\" />\r\n\r\nSed porttitor lectus nibh. Praesent sapien massa, convallis a pellentesque nec, egestas non nisi. Nulla quis lorem ut libero malesuada feugiat. Nulla quis lorem ut libero malesuada feugiat. Nulla porttitor accumsan tincidunt. Curabitur aliquet quam id dui posuere blandit. Praesent sapien massa, convallis a pellentesque nec, egestas non nisi. Praesent sapien massa, convallis a pellentesque nec, egestas non nisi. Quisque velit nisi, pretium ut lacinia in, elementum id enim. Nulla quis lorem ut libero malesuada feugiat.\r\n\r\nDonec rutrum congue leo eget malesuada. Curabitur aliquet quam id dui posuere blandit. Sed porttitor lectus nibh. Sed porttitor lectus nibh. Vivamus magna justo, lacinia eget consectetur sed, convallis at tellus. Nulla porttitor accumsan tincidunt. Curabitur aliquet quam id dui posuere blandit. Curabitur aliquet quam id dui posuere blandit. Cras ultricies ligula sed magna dictum porta. Nulla porttitor accumsan tincidunt.\r\n\r\n&nbsp;', 'Sơn ngoại thất Doyle sắc màu bền đẹp', 'Donec rutrum congue leo eget malesuada. Curabitur aliquet quam id dui posuere blandit. Sed porttitor lectus nibh. Sed porttitor lectus nibh. Vivamus magna justo, lacinia eget consectetur sed, convallis at tellus. Nulla porttitor accumsan tincidunt. Curabitur aliquet quam id dui posuere blandit. Curabitur aliquet quam id dui posuere blandit. Cras ultricies ligula sed magna dictum porta. Nulla porttitor accumsan tincidunt.', 'publish', 'open', 'closed', '', 'son-ngoai-that-doyle-sac-mau-ben-dep-6', '', '', '2017-10-30 17:14:01', '2017-10-30 10:14:01', '', 0, 'http://localhost/doylecolor/?post_type=product&#038;p=161', 0, 'product', '', 0),
(162, 1, '2017-10-30 17:14:00', '2017-10-30 10:14:00', 'Sed porttitor lectus nibh. Praesent sapien massa, convallis a pellentesque nec, egestas non nisi. Nulla quis lorem ut libero malesuada feugiat. Nulla quis lorem ut libero malesuada feugiat. Nulla porttitor accumsan tincidunt. Curabitur aliquet quam id dui posuere blandit. Praesent sapien massa, convallis a pellentesque nec, egestas non nisi. Praesent sapien massa, convallis a pellentesque nec, egestas non nisi. Quisque velit nisi, pretium ut lacinia in, elementum id enim. Nulla quis lorem ut libero malesuada feugiat.\r\n\r\nDonec rutrum congue leo eget malesuada. Curabitur aliquet quam id dui posuere blandit. Sed porttitor lectus nibh. Sed porttitor lectus nibh. Vivamus magna justo, lacinia eget consectetur sed, convallis at tellus. Nulla porttitor accumsan tincidunt. Curabitur aliquet quam id dui posuere blandit. Curabitur aliquet quam id dui posuere blandit. Cras ultricies ligula sed magna dictum porta. Nulla porttitor accumsan tincidunt.\r\n\r\n<img class=\"aligncenter size-full wp-image-79\" src=\"http://tuan.raothue.com/theme/Nov/wp-content/uploads/2017/09/6.jpg\" alt=\"\" width=\"1600\" height=\"1200\" />\r\n\r\nSed porttitor lectus nibh. Praesent sapien massa, convallis a pellentesque nec, egestas non nisi. Nulla quis lorem ut libero malesuada feugiat. Nulla quis lorem ut libero malesuada feugiat. Nulla porttitor accumsan tincidunt. Curabitur aliquet quam id dui posuere blandit. Praesent sapien massa, convallis a pellentesque nec, egestas non nisi. Praesent sapien massa, convallis a pellentesque nec, egestas non nisi. Quisque velit nisi, pretium ut lacinia in, elementum id enim. Nulla quis lorem ut libero malesuada feugiat.\r\n\r\nDonec rutrum congue leo eget malesuada. Curabitur aliquet quam id dui posuere blandit. Sed porttitor lectus nibh. Sed porttitor lectus nibh. Vivamus magna justo, lacinia eget consectetur sed, convallis at tellus. Nulla porttitor accumsan tincidunt. Curabitur aliquet quam id dui posuere blandit. Curabitur aliquet quam id dui posuere blandit. Cras ultricies ligula sed magna dictum porta. Nulla porttitor accumsan tincidunt.\r\n\r\n&nbsp;', 'Sơn ngoại thất Doyle sắc màu bền đẹp', 'Donec rutrum congue leo eget malesuada. Curabitur aliquet quam id dui posuere blandit. Sed porttitor lectus nibh. Sed porttitor lectus nibh. Vivamus magna justo, lacinia eget consectetur sed, convallis at tellus. Nulla porttitor accumsan tincidunt. Curabitur aliquet quam id dui posuere blandit. Curabitur aliquet quam id dui posuere blandit. Cras ultricies ligula sed magna dictum porta. Nulla porttitor accumsan tincidunt.', 'publish', 'open', 'closed', '', 'son-ngoai-that-doyle-sac-mau-ben-dep-5', '', '', '2017-10-30 17:14:00', '2017-10-30 10:14:00', '', 0, 'http://localhost/doylecolor/?post_type=product&#038;p=162', 0, 'product', '', 0),
(163, 1, '2017-10-30 17:13:59', '2017-10-30 10:13:59', 'Sed porttitor lectus nibh. Praesent sapien massa, convallis a pellentesque nec, egestas non nisi. Nulla quis lorem ut libero malesuada feugiat. Nulla quis lorem ut libero malesuada feugiat. Nulla porttitor accumsan tincidunt. Curabitur aliquet quam id dui posuere blandit. Praesent sapien massa, convallis a pellentesque nec, egestas non nisi. Praesent sapien massa, convallis a pellentesque nec, egestas non nisi. Quisque velit nisi, pretium ut lacinia in, elementum id enim. Nulla quis lorem ut libero malesuada feugiat.\r\n\r\nDonec rutrum congue leo eget malesuada. Curabitur aliquet quam id dui posuere blandit. Sed porttitor lectus nibh. Sed porttitor lectus nibh. Vivamus magna justo, lacinia eget consectetur sed, convallis at tellus. Nulla porttitor accumsan tincidunt. Curabitur aliquet quam id dui posuere blandit. Curabitur aliquet quam id dui posuere blandit. Cras ultricies ligula sed magna dictum porta. Nulla porttitor accumsan tincidunt.\r\n\r\n<img class=\"aligncenter size-full wp-image-79\" src=\"http://tuan.raothue.com/theme/Nov/wp-content/uploads/2017/09/6.jpg\" alt=\"\" width=\"1600\" height=\"1200\" />\r\n\r\nSed porttitor lectus nibh. Praesent sapien massa, convallis a pellentesque nec, egestas non nisi. Nulla quis lorem ut libero malesuada feugiat. Nulla quis lorem ut libero malesuada feugiat. Nulla porttitor accumsan tincidunt. Curabitur aliquet quam id dui posuere blandit. Praesent sapien massa, convallis a pellentesque nec, egestas non nisi. Praesent sapien massa, convallis a pellentesque nec, egestas non nisi. Quisque velit nisi, pretium ut lacinia in, elementum id enim. Nulla quis lorem ut libero malesuada feugiat.\r\n\r\nDonec rutrum congue leo eget malesuada. Curabitur aliquet quam id dui posuere blandit. Sed porttitor lectus nibh. Sed porttitor lectus nibh. Vivamus magna justo, lacinia eget consectetur sed, convallis at tellus. Nulla porttitor accumsan tincidunt. Curabitur aliquet quam id dui posuere blandit. Curabitur aliquet quam id dui posuere blandit. Cras ultricies ligula sed magna dictum porta. Nulla porttitor accumsan tincidunt.\r\n\r\n&nbsp;', 'Sơn ngoại thất Doyle sắc màu bền đẹp', 'Donec rutrum congue leo eget malesuada. Curabitur aliquet quam id dui posuere blandit. Sed porttitor lectus nibh. Sed porttitor lectus nibh. Vivamus magna justo, lacinia eget consectetur sed, convallis at tellus. Nulla porttitor accumsan tincidunt. Curabitur aliquet quam id dui posuere blandit. Curabitur aliquet quam id dui posuere blandit. Cras ultricies ligula sed magna dictum porta. Nulla porttitor accumsan tincidunt.', 'publish', 'open', 'closed', '', 'son-ngoai-that-doyle-sac-mau-ben-dep-4', '', '', '2017-10-30 17:13:59', '2017-10-30 10:13:59', '', 0, 'http://localhost/doylecolor/?post_type=product&#038;p=163', 0, 'product', '', 0),
(164, 1, '2017-10-30 17:13:58', '2017-10-30 10:13:58', 'Sed porttitor lectus nibh. Praesent sapien massa, convallis a pellentesque nec, egestas non nisi. Nulla quis lorem ut libero malesuada feugiat. Nulla quis lorem ut libero malesuada feugiat. Nulla porttitor accumsan tincidunt. Curabitur aliquet quam id dui posuere blandit. Praesent sapien massa, convallis a pellentesque nec, egestas non nisi. Praesent sapien massa, convallis a pellentesque nec, egestas non nisi. Quisque velit nisi, pretium ut lacinia in, elementum id enim. Nulla quis lorem ut libero malesuada feugiat.\r\n\r\nDonec rutrum congue leo eget malesuada. Curabitur aliquet quam id dui posuere blandit. Sed porttitor lectus nibh. Sed porttitor lectus nibh. Vivamus magna justo, lacinia eget consectetur sed, convallis at tellus. Nulla porttitor accumsan tincidunt. Curabitur aliquet quam id dui posuere blandit. Curabitur aliquet quam id dui posuere blandit. Cras ultricies ligula sed magna dictum porta. Nulla porttitor accumsan tincidunt.\r\n\r\n<img class=\"aligncenter size-full wp-image-79\" src=\"http://tuan.raothue.com/theme/Nov/wp-content/uploads/2017/09/6.jpg\" alt=\"\" width=\"1600\" height=\"1200\" />\r\n\r\nSed porttitor lectus nibh. Praesent sapien massa, convallis a pellentesque nec, egestas non nisi. Nulla quis lorem ut libero malesuada feugiat. Nulla quis lorem ut libero malesuada feugiat. Nulla porttitor accumsan tincidunt. Curabitur aliquet quam id dui posuere blandit. Praesent sapien massa, convallis a pellentesque nec, egestas non nisi. Praesent sapien massa, convallis a pellentesque nec, egestas non nisi. Quisque velit nisi, pretium ut lacinia in, elementum id enim. Nulla quis lorem ut libero malesuada feugiat.\r\n\r\nDonec rutrum congue leo eget malesuada. Curabitur aliquet quam id dui posuere blandit. Sed porttitor lectus nibh. Sed porttitor lectus nibh. Vivamus magna justo, lacinia eget consectetur sed, convallis at tellus. Nulla porttitor accumsan tincidunt. Curabitur aliquet quam id dui posuere blandit. Curabitur aliquet quam id dui posuere blandit. Cras ultricies ligula sed magna dictum porta. Nulla porttitor accumsan tincidunt.\r\n\r\n&nbsp;', 'Sơn ngoại thất Doyle sắc màu bền đẹp', 'Donec rutrum congue leo eget malesuada. Curabitur aliquet quam id dui posuere blandit. Sed porttitor lectus nibh. Sed porttitor lectus nibh. Vivamus magna justo, lacinia eget consectetur sed, convallis at tellus. Nulla porttitor accumsan tincidunt. Curabitur aliquet quam id dui posuere blandit. Curabitur aliquet quam id dui posuere blandit. Cras ultricies ligula sed magna dictum porta. Nulla porttitor accumsan tincidunt.', 'publish', 'open', 'closed', '', 'son-ngoai-that-doyle-sac-mau-ben-dep-3', '', '', '2017-10-30 17:13:58', '2017-10-30 10:13:58', '', 0, 'http://localhost/doylecolor/?post_type=product&#038;p=164', 0, 'product', '', 0),
(165, 1, '2017-10-30 17:13:57', '2017-10-30 10:13:57', 'Sed porttitor lectus nibh. Praesent sapien massa, convallis a pellentesque nec, egestas non nisi. Nulla quis lorem ut libero malesuada feugiat. Nulla quis lorem ut libero malesuada feugiat. Nulla porttitor accumsan tincidunt. Curabitur aliquet quam id dui posuere blandit. Praesent sapien massa, convallis a pellentesque nec, egestas non nisi. Praesent sapien massa, convallis a pellentesque nec, egestas non nisi. Quisque velit nisi, pretium ut lacinia in, elementum id enim. Nulla quis lorem ut libero malesuada feugiat.\r\n\r\nDonec rutrum congue leo eget malesuada. Curabitur aliquet quam id dui posuere blandit. Sed porttitor lectus nibh. Sed porttitor lectus nibh. Vivamus magna justo, lacinia eget consectetur sed, convallis at tellus. Nulla porttitor accumsan tincidunt. Curabitur aliquet quam id dui posuere blandit. Curabitur aliquet quam id dui posuere blandit. Cras ultricies ligula sed magna dictum porta. Nulla porttitor accumsan tincidunt.\r\n\r\n<img class=\"aligncenter size-full wp-image-79\" src=\"http://tuan.raothue.com/theme/Nov/wp-content/uploads/2017/09/6.jpg\" alt=\"\" width=\"1600\" height=\"1200\" />\r\n\r\nSed porttitor lectus nibh. Praesent sapien massa, convallis a pellentesque nec, egestas non nisi. Nulla quis lorem ut libero malesuada feugiat. Nulla quis lorem ut libero malesuada feugiat. Nulla porttitor accumsan tincidunt. Curabitur aliquet quam id dui posuere blandit. Praesent sapien massa, convallis a pellentesque nec, egestas non nisi. Praesent sapien massa, convallis a pellentesque nec, egestas non nisi. Quisque velit nisi, pretium ut lacinia in, elementum id enim. Nulla quis lorem ut libero malesuada feugiat.\r\n\r\nDonec rutrum congue leo eget malesuada. Curabitur aliquet quam id dui posuere blandit. Sed porttitor lectus nibh. Sed porttitor lectus nibh. Vivamus magna justo, lacinia eget consectetur sed, convallis at tellus. Nulla porttitor accumsan tincidunt. Curabitur aliquet quam id dui posuere blandit. Curabitur aliquet quam id dui posuere blandit. Cras ultricies ligula sed magna dictum porta. Nulla porttitor accumsan tincidunt.\r\n\r\n&nbsp;', 'Sơn ngoại thất Doyle sắc màu bền đẹp', 'Donec rutrum congue leo eget malesuada. Curabitur aliquet quam id dui posuere blandit. Sed porttitor lectus nibh. Sed porttitor lectus nibh. Vivamus magna justo, lacinia eget consectetur sed, convallis at tellus. Nulla porttitor accumsan tincidunt. Curabitur aliquet quam id dui posuere blandit. Curabitur aliquet quam id dui posuere blandit. Cras ultricies ligula sed magna dictum porta. Nulla porttitor accumsan tincidunt.', 'publish', 'open', 'closed', '', 'son-ngoai-that-doyle-sac-mau-ben-dep-2', '', '', '2017-10-30 17:13:57', '2017-10-30 10:13:57', '', 0, 'http://localhost/doylecolor/?post_type=product&#038;p=165', 0, 'product', '', 0),
(166, 1, '2017-10-30 17:14:49', '2017-10-30 10:14:49', '', 'Sản phẩm', '', 'publish', 'closed', 'closed', '', 'san-pham', '', '', '2017-10-30 17:15:13', '2017-10-30 10:15:13', '', 0, 'http://localhost/doylecolor/?p=166', 3, 'nav_menu_item', '', 0),
(167, 1, '2017-10-30 17:15:13', '2017-10-30 10:15:13', ' ', '', '', 'publish', 'closed', 'closed', '', '167', '', '', '2017-10-30 17:15:13', '2017-10-30 10:15:13', '', 0, 'http://localhost/doylecolor/?p=167', 4, 'nav_menu_item', '', 0),
(168, 1, '2017-10-30 17:15:13', '2017-10-30 10:15:13', ' ', '', '', 'publish', 'closed', 'closed', '', '168', '', '', '2017-10-30 17:15:13', '2017-10-30 10:15:13', '', 0, 'http://localhost/doylecolor/?p=168', 5, 'nav_menu_item', '', 0),
(169, 1, '2017-10-30 17:15:36', '2017-10-30 10:15:36', ' ', '', '', 'publish', 'closed', 'closed', '', '169', '', '', '2017-10-30 17:15:36', '2017-10-30 10:15:36', '', 0, 'http://localhost/doylecolor/?p=169', 1, 'nav_menu_item', '', 0),
(170, 1, '2017-10-30 17:15:36', '2017-10-30 10:15:36', ' ', '', '', 'publish', 'closed', 'closed', '', '170', '', '', '2017-10-30 17:15:36', '2017-10-30 10:15:36', '', 0, 'http://localhost/doylecolor/?p=170', 2, 'nav_menu_item', '', 0),
(171, 1, '2017-10-30 17:15:36', '2017-10-30 10:15:36', ' ', '', '', 'publish', 'closed', 'closed', '', '171', '', '', '2017-10-30 17:15:36', '2017-10-30 10:15:36', '', 0, 'http://localhost/doylecolor/?p=171', 3, 'nav_menu_item', '', 0),
(172, 1, '2017-10-30 17:15:37', '2017-10-30 10:15:37', ' ', '', '', 'publish', 'closed', 'closed', '', '172', '', '', '2017-10-30 17:15:37', '2017-10-30 10:15:37', '', 0, 'http://localhost/doylecolor/?p=172', 4, 'nav_menu_item', '', 0),
(173, 1, '2017-10-30 17:15:37', '2017-10-30 10:15:37', ' ', '', '', 'publish', 'closed', 'closed', '', '173', '', '', '2017-10-30 17:15:37', '2017-10-30 10:15:37', '', 0, 'http://localhost/doylecolor/?p=173', 5, 'nav_menu_item', '', 0),
(174, 1, '2017-10-30 17:15:37', '2017-10-30 10:15:37', ' ', '', '', 'publish', 'closed', 'closed', '', '174', '', '', '2017-10-30 17:15:37', '2017-10-30 10:15:37', '', 0, 'http://localhost/doylecolor/?p=174', 6, 'nav_menu_item', '', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `rt_termmeta`
--

CREATE TABLE `rt_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `rt_termmeta`
--

INSERT INTO `rt_termmeta` (`meta_id`, `term_id`, `meta_key`, `meta_value`) VALUES
(1, 2, 'rt_sidebar', 'a:4:{s:4:\"area\";s:4:\"left\";s:17:\"left_sidebar_name\";s:9:\"sidebar-1\";s:18:\"right_sidebar_name\";s:9:\"sidebar-2\";s:12:\"is_overwrite\";b:0;}'),
(71, 35, 'rt_sidebar', 'a:4:{s:4:\"area\";s:4:\"left\";s:17:\"left_sidebar_name\";s:9:\"sidebar-1\";s:18:\"right_sidebar_name\";s:9:\"sidebar-2\";s:12:\"is_overwrite\";b:0;}'),
(72, 36, 'rt_sidebar', 'a:4:{s:4:\"area\";s:4:\"left\";s:17:\"left_sidebar_name\";s:9:\"sidebar-1\";s:18:\"right_sidebar_name\";s:9:\"sidebar-2\";s:12:\"is_overwrite\";b:0;}'),
(73, 37, 'order', '0'),
(74, 37, 'display_type', ''),
(75, 37, 'thumbnail_id', '0'),
(76, 37, 'rt_sidebar', 'a:4:{s:4:\"area\";s:4:\"left\";s:17:\"left_sidebar_name\";s:9:\"sidebar-1\";s:18:\"right_sidebar_name\";s:9:\"sidebar-2\";s:12:\"is_overwrite\";b:0;}'),
(77, 38, 'order', '0'),
(78, 38, 'display_type', ''),
(79, 38, 'thumbnail_id', '0'),
(80, 38, 'rt_sidebar', 'a:4:{s:4:\"area\";s:4:\"left\";s:17:\"left_sidebar_name\";s:9:\"sidebar-1\";s:18:\"right_sidebar_name\";s:9:\"sidebar-2\";s:12:\"is_overwrite\";b:0;}'),
(81, 39, 'order', '0'),
(82, 39, 'display_type', ''),
(83, 39, 'thumbnail_id', '0'),
(84, 39, 'rt_sidebar', 'a:4:{s:4:\"area\";s:4:\"left\";s:17:\"left_sidebar_name\";s:9:\"sidebar-1\";s:18:\"right_sidebar_name\";s:9:\"sidebar-2\";s:12:\"is_overwrite\";b:0;}'),
(85, 40, 'order', '0'),
(86, 40, 'display_type', ''),
(87, 40, 'thumbnail_id', '0'),
(88, 40, 'rt_sidebar', 'a:4:{s:4:\"area\";s:4:\"left\";s:17:\"left_sidebar_name\";s:9:\"sidebar-1\";s:18:\"right_sidebar_name\";s:9:\"sidebar-2\";s:12:\"is_overwrite\";b:0;}'),
(89, 41, 'order', '0'),
(90, 41, 'display_type', ''),
(91, 41, 'thumbnail_id', '0'),
(92, 41, 'rt_sidebar', 'a:4:{s:4:\"area\";s:4:\"left\";s:17:\"left_sidebar_name\";s:9:\"sidebar-1\";s:18:\"right_sidebar_name\";s:9:\"sidebar-2\";s:12:\"is_overwrite\";b:0;}'),
(93, 42, 'order', '0'),
(94, 42, 'display_type', ''),
(95, 42, 'thumbnail_id', '0'),
(96, 42, 'rt_sidebar', 'a:4:{s:4:\"area\";s:4:\"left\";s:17:\"left_sidebar_name\";s:9:\"sidebar-1\";s:18:\"right_sidebar_name\";s:9:\"sidebar-2\";s:12:\"is_overwrite\";b:0;}'),
(97, 43, 'order', '0'),
(98, 43, 'display_type', ''),
(99, 43, 'thumbnail_id', '0'),
(100, 43, 'rt_sidebar', 'a:4:{s:4:\"area\";s:4:\"left\";s:17:\"left_sidebar_name\";s:9:\"sidebar-1\";s:18:\"right_sidebar_name\";s:9:\"sidebar-2\";s:12:\"is_overwrite\";b:0;}'),
(101, 42, 'product_count_product_cat', '24'),
(102, 40, 'product_count_product_cat', '24'),
(103, 43, 'product_count_product_cat', '24'),
(104, 39, 'product_count_product_cat', '24'),
(105, 38, 'product_count_product_cat', '24'),
(106, 37, 'product_count_product_cat', '24'),
(107, 41, 'product_count_product_cat', '24');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `rt_terms`
--

CREATE TABLE `rt_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `rt_terms`
--

INSERT INTO `rt_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(2, 'Tin tức', 'tin-tuc', 0),
(3, 'simple', 'simple', 0),
(4, 'grouped', 'grouped', 0),
(5, 'variable', 'variable', 0),
(6, 'external', 'external', 0),
(7, 'exclude-from-search', 'exclude-from-search', 0),
(8, 'exclude-from-catalog', 'exclude-from-catalog', 0),
(9, 'featured', 'featured', 0),
(10, 'outofstock', 'outofstock', 0),
(11, 'rated-1', 'rated-1', 0),
(12, 'rated-2', 'rated-2', 0),
(13, 'rated-3', 'rated-3', 0),
(14, 'rated-4', 'rated-4', 0),
(15, 'rated-5', 'rated-5', 0),
(16, '12', '12', 0),
(22, 'Menu top', 'menu-top', 0),
(23, 'Danh Mục Sản Phẩm', 'danh-muc-san-pham', 0),
(33, 'Menu footer', 'menu-footer', 0),
(34, 'Giới thiệu', 'gioi-thieu', 0),
(35, 'Album ảnh', 'album-anh', 0),
(36, 'Tuyển dụng', 'tuyen-dung', 0),
(37, 'Sơn nội thất', 'son-noi-that', 0),
(38, 'Sơn ngoại thất', 'son-ngoai-that', 0),
(39, 'Sơn lót kháng kiềm', 'son-lot-khang-kiem', 0),
(40, 'Chống thấm', 'chong-tham', 0),
(41, 'Trang trí', 'trang-tri', 0),
(42, 'Bột bả', 'bot-ba', 0),
(43, 'Sản phẩm mới', 'san-pham-moi', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `rt_term_relationships`
--

CREATE TABLE `rt_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `rt_term_relationships`
--

INSERT INTO `rt_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(19, 22, 0),
(53, 16, 0),
(81, 2, 0),
(83, 2, 0),
(85, 2, 0),
(87, 2, 0),
(89, 2, 0),
(91, 2, 0),
(93, 2, 0),
(95, 2, 0),
(97, 2, 0),
(99, 3, 0),
(100, 3, 0),
(101, 3, 0),
(102, 3, 0),
(103, 3, 0),
(104, 3, 0),
(104, 37, 0),
(104, 38, 0),
(104, 39, 0),
(104, 40, 0),
(104, 41, 0),
(104, 42, 0),
(104, 43, 0),
(106, 22, 0),
(107, 22, 0),
(113, 33, 0),
(114, 33, 0),
(115, 33, 0),
(120, 34, 0),
(121, 34, 0),
(122, 34, 0),
(131, 16, 0),
(143, 3, 0),
(143, 37, 0),
(143, 38, 0),
(143, 39, 0),
(143, 40, 0),
(143, 41, 0),
(143, 42, 0),
(143, 43, 0),
(144, 3, 0),
(144, 37, 0),
(144, 38, 0),
(144, 39, 0),
(144, 40, 0),
(144, 41, 0),
(144, 42, 0),
(144, 43, 0),
(145, 3, 0),
(145, 37, 0),
(145, 38, 0),
(145, 39, 0),
(145, 40, 0),
(145, 41, 0),
(145, 42, 0),
(145, 43, 0),
(146, 3, 0),
(146, 37, 0),
(146, 38, 0),
(146, 39, 0),
(146, 40, 0),
(146, 41, 0),
(146, 42, 0),
(146, 43, 0),
(147, 3, 0),
(147, 37, 0),
(147, 38, 0),
(147, 39, 0),
(147, 40, 0),
(147, 41, 0),
(147, 42, 0),
(147, 43, 0),
(148, 3, 0),
(148, 37, 0),
(148, 38, 0),
(148, 39, 0),
(148, 40, 0),
(148, 41, 0),
(148, 42, 0),
(148, 43, 0),
(149, 3, 0),
(149, 37, 0),
(149, 38, 0),
(149, 39, 0),
(149, 40, 0),
(149, 41, 0),
(149, 42, 0),
(149, 43, 0),
(150, 3, 0),
(150, 37, 0),
(150, 38, 0),
(150, 39, 0),
(150, 40, 0),
(150, 41, 0),
(150, 42, 0),
(150, 43, 0),
(151, 3, 0),
(151, 37, 0),
(151, 38, 0),
(151, 39, 0),
(151, 40, 0),
(151, 41, 0),
(151, 42, 0),
(151, 43, 0),
(152, 3, 0),
(152, 37, 0),
(152, 38, 0),
(152, 39, 0),
(152, 40, 0),
(152, 41, 0),
(152, 42, 0),
(152, 43, 0),
(153, 3, 0),
(153, 37, 0),
(153, 38, 0),
(153, 39, 0),
(153, 40, 0),
(153, 41, 0),
(153, 42, 0),
(153, 43, 0),
(154, 3, 0),
(154, 37, 0),
(154, 38, 0),
(154, 39, 0),
(154, 40, 0),
(154, 41, 0),
(154, 42, 0),
(154, 43, 0),
(155, 3, 0),
(155, 37, 0),
(155, 38, 0),
(155, 39, 0),
(155, 40, 0),
(155, 41, 0),
(155, 42, 0),
(155, 43, 0),
(156, 3, 0),
(156, 37, 0),
(156, 38, 0),
(156, 39, 0),
(156, 40, 0),
(156, 41, 0),
(156, 42, 0),
(156, 43, 0),
(157, 3, 0),
(157, 37, 0),
(157, 38, 0),
(157, 39, 0),
(157, 40, 0),
(157, 41, 0),
(157, 42, 0),
(157, 43, 0),
(158, 3, 0),
(158, 37, 0),
(158, 38, 0),
(158, 39, 0),
(158, 40, 0),
(158, 41, 0),
(158, 42, 0),
(158, 43, 0),
(159, 3, 0),
(159, 37, 0),
(159, 38, 0),
(159, 39, 0),
(159, 40, 0),
(159, 41, 0),
(159, 42, 0),
(159, 43, 0),
(160, 3, 0),
(160, 37, 0),
(160, 38, 0),
(160, 39, 0),
(160, 40, 0),
(160, 41, 0),
(160, 42, 0),
(160, 43, 0),
(161, 3, 0),
(161, 37, 0),
(161, 38, 0),
(161, 39, 0),
(161, 40, 0),
(161, 41, 0),
(161, 42, 0),
(161, 43, 0),
(162, 3, 0),
(162, 37, 0),
(162, 38, 0),
(162, 39, 0),
(162, 40, 0),
(162, 41, 0),
(162, 42, 0),
(162, 43, 0),
(163, 3, 0),
(163, 37, 0),
(163, 38, 0),
(163, 39, 0),
(163, 40, 0),
(163, 41, 0),
(163, 42, 0),
(163, 43, 0),
(164, 3, 0),
(164, 37, 0),
(164, 38, 0),
(164, 39, 0),
(164, 40, 0),
(164, 41, 0),
(164, 42, 0),
(164, 43, 0),
(165, 3, 0),
(165, 37, 0),
(165, 38, 0),
(165, 39, 0),
(165, 40, 0),
(165, 41, 0),
(165, 42, 0),
(165, 43, 0),
(166, 22, 0),
(167, 22, 0),
(168, 22, 0),
(169, 23, 0),
(170, 23, 0),
(171, 23, 0),
(172, 23, 0),
(173, 23, 0),
(174, 23, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `rt_term_taxonomy`
--

CREATE TABLE `rt_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `rt_term_taxonomy`
--

INSERT INTO `rt_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(2, 2, 'category', '', 0, 9),
(3, 3, 'product_type', '', 0, 24),
(4, 4, 'product_type', '', 0, 0),
(5, 5, 'product_type', '', 0, 0),
(6, 6, 'product_type', '', 0, 0),
(7, 7, 'product_visibility', '', 0, 0),
(8, 8, 'product_visibility', '', 0, 0),
(9, 9, 'product_visibility', '', 0, 0),
(10, 10, 'product_visibility', '', 0, 0),
(11, 11, 'product_visibility', '', 0, 0),
(12, 12, 'product_visibility', '', 0, 0),
(13, 13, 'product_visibility', '', 0, 0),
(14, 14, 'product_visibility', '', 0, 0),
(15, 15, 'product_visibility', '', 0, 0),
(16, 16, 'ml-slider', '', 0, 2),
(22, 22, 'nav_menu', '', 0, 6),
(23, 23, 'nav_menu', '', 0, 6),
(33, 33, 'nav_menu', '', 0, 3),
(34, 34, 'nav_menu', '', 0, 3),
(35, 35, 'category', '', 0, 0),
(36, 36, 'category', '', 0, 0),
(37, 37, 'product_cat', '', 0, 24),
(38, 38, 'product_cat', '', 0, 24),
(39, 39, 'product_cat', '', 0, 24),
(40, 40, 'product_cat', '', 0, 24),
(41, 41, 'product_cat', '', 0, 24),
(42, 42, 'product_cat', '', 0, 24),
(43, 43, 'product_cat', '', 0, 24);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `rt_usermeta`
--

CREATE TABLE `rt_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `rt_usermeta`
--

INSERT INTO `rt_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'adminraothue'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'comment_shortcuts', 'false'),
(7, 1, 'admin_color', 'fresh'),
(8, 1, 'use_ssl', '0'),
(9, 1, 'show_admin_bar_front', 'true'),
(10, 1, 'locale', ''),
(11, 1, 'rt_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(12, 1, 'rt_user_level', '10'),
(13, 1, 'dismissed_wp_pointers', 'black_studio_tinymce_widget,text_widget_custom_html,text_widget_paste_html'),
(14, 1, 'show_welcome_panel', '0'),
(15, 1, 'session_tokens', 'a:1:{s:64:\"783e4883f9f572dfe1a10a83c9150035dbf6e7487889fa23cf840b3e135cf3eb\";a:4:{s:10:\"expiration\";i:1509523679;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36\";s:5:\"login\";i:1509350879;}}'),
(16, 1, 'rt_user-settings', 'libraryContent=browse&hidetb=1&editor=tinymce&imgsize=full&align=center'),
(17, 1, 'rt_user-settings-time', '1505810948'),
(18, 1, 'rt_dashboard_quick_press_last_post_id', '123'),
(19, 1, 'community-events-location', 'a:1:{s:2:\"ip\";s:2:\"::\";}'),
(20, 1, 'rt_yoast_notifications', 'a:2:{i:0;a:2:{s:7:\"message\";s:561:\"To make sure all the links in your texts are counted, we need to analyze all your texts.\n					All you have to do is press the following button and we\'ll go through all your texts for you.\n					\n					<button type=\"button\" id=\"noticeRunLinkIndex\" class=\"button\">Count links</button>\n					\n					The Text link counter feature provides insights in how many links are found in your text and how many links are referring to your text. This is very helpful when you are improving your <a href=\"https://yoa.st/15m?utm_content=5.0.1\" target=\"_blank\">internal linking</a>.\";s:7:\"options\";a:8:{s:4:\"type\";s:7:\"warning\";s:2:\"id\";s:19:\"wpseo-reindex-links\";s:5:\"nonce\";s:10:\"f97bcd1bcd\";s:8:\"priority\";d:0.80000000000000004;s:9:\"data_json\";a:0:{}s:13:\"dismissal_key\";N;s:12:\"capabilities\";s:14:\"manage_options\";s:16:\"capability_check\";s:3:\"all\";}}i:1;a:2:{s:7:\"message\";s:170:\"Don\'t miss your crawl errors: <a href=\"http://localhost/doylecolor/wp-admin/admin.php?page=wpseo_search_console&tab=settings\">connect with Google Search Console here</a>.\";s:7:\"options\";a:8:{s:4:\"type\";s:7:\"warning\";s:2:\"id\";s:17:\"wpseo-dismiss-gsc\";s:5:\"nonce\";N;s:8:\"priority\";d:0.5;s:9:\"data_json\";a:0:{}s:13:\"dismissal_key\";N;s:12:\"capabilities\";s:20:\"wpseo_manage_options\";s:16:\"capability_check\";s:3:\"all\";}}}'),
(38, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}'),
(39, 1, 'metaboxhidden_nav-menus', 'a:6:{i:0;s:21:\"add-post-type-product\";i:1;s:12:\"add-post_tag\";i:2;s:15:\"add-post_format\";i:3;s:15:\"add-product_tag\";i:4;s:19:\"menu-icons-settings\";i:5;s:30:\"woocommerce_endpoints_nav_link\";}'),
(40, 1, 'closedpostboxes_nav-menus', 'a:0:{}'),
(41, 1, 'closedpostboxes_product', 'a:1:{i:0;s:10:\"wpseo_meta\";}'),
(42, 1, 'metaboxhidden_product', 'a:3:{i:0;s:26:\"woocommerce-product-images\";i:1;s:10:\"postcustom\";i:2;s:7:\"slugdiv\";}'),
(43, 1, 'meta-box-order_product', 'a:3:{s:4:\"side\";s:95:\"postimagediv,woocommerce-product-images,submitdiv,product_catdiv,tagsdiv-product_tag,rt_sidebar\";s:6:\"normal\";s:87:\"woocommerce-product-data,_custom_post_options,postcustom,slugdiv,postexcerpt,wpseo_meta\";s:8:\"advanced\";s:0:\"\";}'),
(44, 1, 'screen_layout_product', '2'),
(45, 1, 'manageedit-productcolumnshidden', 'a:6:{i:0;s:11:\"is_in_stock\";i:1;s:8:\"featured\";i:2;s:12:\"product_type\";i:3;s:11:\"wpseo-title\";i:4;s:14:\"wpseo-metadesc\";i:5;s:13:\"wpseo-focuskw\";}'),
(46, 1, 'closedpostboxes_post', 'a:1:{i:0;s:9:\"formatdiv\";}'),
(47, 1, 'metaboxhidden_post', 'a:7:{i:0;s:11:\"postexcerpt\";i:1;s:13:\"trackbacksdiv\";i:2;s:10:\"postcustom\";i:3;s:16:\"commentstatusdiv\";i:4;s:11:\"commentsdiv\";i:5;s:7:\"slugdiv\";i:6;s:9:\"authordiv\";}'),
(48, 1, 'meta-box-order_post', 'a:3:{s:4:\"side\";s:72:\"postimagediv,submitdiv,categorydiv,formatdiv,tagsdiv-post_tag,rt_sidebar\";s:6:\"normal\";s:94:\"wpseo_meta,postexcerpt,trackbacksdiv,postcustom,commentstatusdiv,commentsdiv,slugdiv,authordiv\";s:8:\"advanced\";s:0:\"\";}'),
(49, 1, 'screen_layout_post', '2'),
(68, 1, 'nav_menu_recently_edited', '23'),
(69, 1, '_yoast_wpseo_profile_updated', '1499150848'),
(70, 1, 'wpseo_title', ''),
(71, 1, 'wpseo_metadesc', ''),
(72, 1, 'wpseo_metakey', ''),
(73, 1, 'wpseo_excludeauthorsitemap', ''),
(74, 1, 'wpseo_content_analysis_disable', ''),
(75, 1, 'wpseo_keyword_analysis_disable', ''),
(76, 1, 'billing_first_name', ''),
(77, 1, 'billing_last_name', ''),
(78, 1, 'billing_company', ''),
(79, 1, 'billing_address_1', ''),
(80, 1, 'billing_address_2', ''),
(81, 1, 'billing_city', ''),
(82, 1, 'billing_postcode', ''),
(83, 1, 'billing_country', ''),
(84, 1, 'billing_state', ''),
(85, 1, 'billing_phone', ''),
(86, 1, 'billing_email', 'mailtrunggian01@gmail.com'),
(87, 1, 'shipping_first_name', ''),
(88, 1, 'shipping_last_name', ''),
(89, 1, 'shipping_company', ''),
(90, 1, 'shipping_address_1', ''),
(91, 1, 'shipping_address_2', ''),
(92, 1, 'shipping_city', ''),
(93, 1, 'shipping_postcode', ''),
(94, 1, 'shipping_country', ''),
(95, 1, 'shipping_state', ''),
(96, 1, 'googleplus', ''),
(97, 1, 'twitter', ''),
(98, 1, 'facebook', ''),
(99, 1, 'last_update', '1499150851'),
(102, 1, 'rt_media_library_mode', 'list'),
(103, 1, 'wpseo-remove-upsell-notice', '1'),
(104, 1, 'wpseo-reindex-links', 'seen'),
(105, 1, 'wpseo-dismiss-gsc', 'seen'),
(106, 2, 'nickname', 'nangcao'),
(107, 2, 'first_name', ''),
(108, 2, 'last_name', ''),
(109, 2, 'description', ''),
(110, 2, 'rich_editing', 'true'),
(111, 2, 'comment_shortcuts', 'false'),
(112, 2, 'admin_color', 'fresh'),
(113, 2, 'use_ssl', '0'),
(114, 2, 'show_admin_bar_front', 'true'),
(115, 2, 'locale', ''),
(116, 2, 'rt_capabilities', 'a:1:{s:12:\"shop_manager\";b:1;}'),
(117, 2, 'rt_user_level', '9'),
(118, 2, '_yoast_wpseo_profile_updated', '1505462091'),
(119, 2, 'dismissed_wp_pointers', ''),
(120, 2, 'session_tokens', 'a:1:{s:64:\"b4f136201131ac91c1283849a2554b9fdda776774a4151d5d929eb2dc3fecbba\";a:4:{s:10:\"expiration\";i:1505960182;s:2:\"ip\";s:14:\"118.70.178.100\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.113 Safari/537.36\";s:5:\"login\";i:1505787382;}}'),
(121, 2, 'rt_dashboard_quick_press_last_post_id', '111'),
(122, 2, 'rt_yoast_notifications', 'a:2:{i:0;a:2:{s:7:\"message\";s:782:\"We\'ve noticed you\'ve been using Yoast SEO for some time now; we hope you love it! We\'d be thrilled if you could <a href=\"https://yoa.st/rate-yoast-seo?utm_content=5.4\">give us a 5 stars rating on WordPress.org</a>!\n\nIf you are experiencing issues, <a href=\"https://yoa.st/bugreport?utm_content=5.4\">please file a bug report</a> and we\'ll do our best to help you out.\n\nBy the way, did you know we also have a <a href=\'https://yoa.st/premium-notification?utm_content=5.4\'>Premium plugin</a>? It offers advanced features, like a redirect manager and support for multiple keywords. It also comes with 24/7 personal support.\n\n<a class=\"button\" href=\"http://tuan.raothue.com/theme/Nov/wp-admin/?page=wpseo_dashboard&yoast_dismiss=upsell\">Please don\'t show me this notification anymore</a>\";s:7:\"options\";a:8:{s:4:\"type\";s:7:\"warning\";s:2:\"id\";s:19:\"wpseo-upsell-notice\";s:5:\"nonce\";N;s:8:\"priority\";d:0.80000000000000004;s:9:\"data_json\";a:0:{}s:13:\"dismissal_key\";N;s:12:\"capabilities\";s:14:\"manage_options\";s:16:\"capability_check\";s:3:\"all\";}}i:1;a:2:{s:7:\"message\";s:176:\"Don\'t miss your crawl errors: <a href=\"http://tuan.raothue.com/theme/Nov/wp-admin/admin.php?page=wpseo_search_console&tab=settings\">connect with Google Search Console here</a>.\";s:7:\"options\";a:8:{s:4:\"type\";s:7:\"warning\";s:2:\"id\";s:17:\"wpseo-dismiss-gsc\";s:5:\"nonce\";N;s:8:\"priority\";d:0.5;s:9:\"data_json\";a:0:{}s:13:\"dismissal_key\";N;s:12:\"capabilities\";s:14:\"manage_options\";s:16:\"capability_check\";s:3:\"all\";}}}'),
(123, 2, 'wpseo-upsell-notice', 'seen'),
(124, 2, 'wpseo-dismiss-gsc', 'seen'),
(139, 2, 'closedpostboxes_dashboard', 'a:1:{i:0;s:24:\"wpseo-dashboard-overview\";}'),
(140, 2, 'metaboxhidden_dashboard', 'a:0:{}'),
(141, 1, '_woocommerce_persistent_cart_1', 'a:1:{s:4:\"cart\";a:0:{}}');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `rt_users`
--

CREATE TABLE `rt_users` (
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
-- Đang đổ dữ liệu cho bảng `rt_users`
--

INSERT INTO `rt_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'adminraothue', '$P$BwClOxUnFzG.BBHqEx/oGYfYRztex41', 'adminraothue', 'mailtrunggian01@gmail.com', '', '2017-06-15 04:20:37', '', 0, 'adminraothue'),
(2, 'nangcao', '$P$BvM3Kq2fzDSoYpBte9WkejN5HQrkIJ.', 'nangcao', 'nangcao@hotmail.com', '', '2017-09-15 07:54:51', '', 0, 'nangcao');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `rt_woocommerce_api_keys`
--

CREATE TABLE `rt_woocommerce_api_keys` (
  `key_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `description` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `permissions` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `consumer_key` char(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `consumer_secret` char(43) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nonces` longtext COLLATE utf8mb4_unicode_ci,
  `truncated_key` char(7) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_access` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `rt_woocommerce_attribute_taxonomies`
--

CREATE TABLE `rt_woocommerce_attribute_taxonomies` (
  `attribute_id` bigint(20) UNSIGNED NOT NULL,
  `attribute_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `attribute_label` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `attribute_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `attribute_orderby` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `attribute_public` int(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `rt_woocommerce_downloadable_product_permissions`
--

CREATE TABLE `rt_woocommerce_downloadable_product_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `download_id` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `order_key` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_email` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `downloads_remaining` varchar(9) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `access_granted` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `access_expires` datetime DEFAULT NULL,
  `download_count` bigint(20) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `rt_woocommerce_log`
--

CREATE TABLE `rt_woocommerce_log` (
  `log_id` bigint(20) UNSIGNED NOT NULL,
  `timestamp` datetime NOT NULL,
  `level` smallint(4) NOT NULL,
  `source` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `context` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `rt_woocommerce_order_itemmeta`
--

CREATE TABLE `rt_woocommerce_order_itemmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `order_item_id` bigint(20) UNSIGNED NOT NULL,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `rt_woocommerce_order_items`
--

CREATE TABLE `rt_woocommerce_order_items` (
  `order_item_id` bigint(20) UNSIGNED NOT NULL,
  `order_item_name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_item_type` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `order_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `rt_woocommerce_payment_tokenmeta`
--

CREATE TABLE `rt_woocommerce_payment_tokenmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `payment_token_id` bigint(20) UNSIGNED NOT NULL,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `rt_woocommerce_payment_tokens`
--

CREATE TABLE `rt_woocommerce_payment_tokens` (
  `token_id` bigint(20) UNSIGNED NOT NULL,
  `gateway_id` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `type` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_default` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `rt_woocommerce_sessions`
--

CREATE TABLE `rt_woocommerce_sessions` (
  `session_id` bigint(20) UNSIGNED NOT NULL,
  `session_key` char(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `session_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `session_expiry` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `rt_woocommerce_sessions`
--

INSERT INTO `rt_woocommerce_sessions` (`session_id`, `session_key`, `session_value`, `session_expiry`) VALUES
(11, '1', 'a:7:{s:4:\"cart\";s:6:\"a:0:{}\";s:11:\"cart_totals\";s:367:\"a:15:{s:8:\"subtotal\";i:0;s:12:\"subtotal_tax\";i:0;s:14:\"shipping_total\";i:0;s:12:\"shipping_tax\";i:0;s:14:\"shipping_taxes\";a:0:{}s:14:\"discount_total\";i:0;s:12:\"discount_tax\";i:0;s:19:\"cart_contents_total\";i:0;s:17:\"cart_contents_tax\";i:0;s:19:\"cart_contents_taxes\";a:0:{}s:9:\"fee_total\";i:0;s:7:\"fee_tax\";i:0;s:9:\"fee_taxes\";a:0:{}s:5:\"total\";i:0;s:9:\"total_tax\";i:0;}\";s:15:\"applied_coupons\";s:6:\"a:0:{}\";s:22:\"coupon_discount_totals\";s:6:\"a:0:{}\";s:26:\"coupon_discount_tax_totals\";s:6:\"a:0:{}\";s:21:\"removed_cart_contents\";s:6:\"a:0:{}\";s:8:\"customer\";s:675:\"a:25:{s:2:\"id\";i:1;s:8:\"postcode\";s:0:\"\";s:4:\"city\";s:0:\"\";s:9:\"address_1\";s:0:\"\";s:7:\"address\";s:0:\"\";s:9:\"address_2\";s:0:\"\";s:5:\"state\";s:0:\"\";s:7:\"country\";s:2:\"VN\";s:17:\"shipping_postcode\";s:0:\"\";s:13:\"shipping_city\";s:0:\"\";s:18:\"shipping_address_1\";s:0:\"\";s:16:\"shipping_address\";s:0:\"\";s:18:\"shipping_address_2\";s:0:\"\";s:14:\"shipping_state\";s:0:\"\";s:16:\"shipping_country\";s:2:\"VN\";s:13:\"is_vat_exempt\";b:0;s:19:\"calculated_shipping\";b:0;s:10:\"first_name\";s:0:\"\";s:9:\"last_name\";s:0:\"\";s:7:\"company\";s:0:\"\";s:5:\"phone\";s:0:\"\";s:5:\"email\";s:25:\"mailtrunggian01@gmail.com\";s:19:\"shipping_first_name\";s:0:\"\";s:18:\"shipping_last_name\";s:0:\"\";s:16:\"shipping_company\";s:0:\"\";}\";}', 1509523743);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `rt_woocommerce_shipping_zones`
--

CREATE TABLE `rt_woocommerce_shipping_zones` (
  `zone_id` bigint(20) UNSIGNED NOT NULL,
  `zone_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `zone_order` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `rt_woocommerce_shipping_zone_locations`
--

CREATE TABLE `rt_woocommerce_shipping_zone_locations` (
  `location_id` bigint(20) UNSIGNED NOT NULL,
  `zone_id` bigint(20) UNSIGNED NOT NULL,
  `location_code` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `location_type` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `rt_woocommerce_shipping_zone_methods`
--

CREATE TABLE `rt_woocommerce_shipping_zone_methods` (
  `zone_id` bigint(20) UNSIGNED NOT NULL,
  `instance_id` bigint(20) UNSIGNED NOT NULL,
  `method_id` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `method_order` bigint(20) UNSIGNED NOT NULL,
  `is_enabled` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `rt_woocommerce_tax_rates`
--

CREATE TABLE `rt_woocommerce_tax_rates` (
  `tax_rate_id` bigint(20) UNSIGNED NOT NULL,
  `tax_rate_country` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tax_rate_state` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tax_rate` varchar(8) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tax_rate_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tax_rate_priority` bigint(20) UNSIGNED NOT NULL,
  `tax_rate_compound` int(1) NOT NULL DEFAULT '0',
  `tax_rate_shipping` int(1) NOT NULL DEFAULT '1',
  `tax_rate_order` bigint(20) UNSIGNED NOT NULL,
  `tax_rate_class` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `rt_woocommerce_tax_rate_locations`
--

CREATE TABLE `rt_woocommerce_tax_rate_locations` (
  `location_id` bigint(20) UNSIGNED NOT NULL,
  `location_code` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tax_rate_id` bigint(20) UNSIGNED NOT NULL,
  `location_type` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `rt_yoast_seo_links`
--

CREATE TABLE `rt_yoast_seo_links` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL,
  `target_post_id` bigint(20) UNSIGNED NOT NULL,
  `type` varchar(8) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `rt_yoast_seo_links`
--

INSERT INTO `rt_yoast_seo_links` (`id`, `url`, `post_id`, `target_post_id`, `type`) VALUES
(1, 'http://raothue.ddns.net/demo/rt-core/wp-admin/', 2, 0, 'external');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `rt_yoast_seo_meta`
--

CREATE TABLE `rt_yoast_seo_meta` (
  `object_id` bigint(20) UNSIGNED NOT NULL,
  `internal_link_count` int(10) UNSIGNED DEFAULT NULL,
  `incoming_link_count` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `rt_yoast_seo_meta`
--

INSERT INTO `rt_yoast_seo_meta` (`object_id`, `internal_link_count`, `incoming_link_count`) VALUES
(2, 0, 0),
(81, 0, 0),
(83, 0, 0),
(85, 0, 0),
(87, 0, 0),
(89, 0, 0),
(91, 0, 0),
(93, 0, 0),
(95, 0, 0),
(97, 0, 0),
(99, 0, 0),
(100, 0, 0),
(101, 0, 0),
(102, 0, 0),
(103, 0, 0),
(104, 0, 0),
(117, 0, 0),
(143, 0, 0),
(144, 0, 0),
(145, 0, 0),
(146, 0, 0),
(147, 0, 0),
(148, 0, 0),
(149, 0, 0),
(150, 0, 0),
(151, 0, 0),
(152, 0, 0),
(153, 0, 0),
(154, 0, 0),
(155, 0, 0),
(156, 0, 0),
(157, 0, 0),
(158, 0, 0),
(159, 0, 0),
(160, 0, 0),
(161, 0, 0),
(162, 0, 0),
(163, 0, 0),
(164, 0, 0),
(165, 0, 0);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `rt_commentmeta`
--
ALTER TABLE `rt_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Chỉ mục cho bảng `rt_comments`
--
ALTER TABLE `rt_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10)),
  ADD KEY `woo_idx_comment_type` (`comment_type`);

--
-- Chỉ mục cho bảng `rt_cpd_counter`
--
ALTER TABLE `rt_cpd_counter`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_dateip` (`date`,`ip`),
  ADD KEY `idx_page` (`page`);

--
-- Chỉ mục cho bảng `rt_links`
--
ALTER TABLE `rt_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Chỉ mục cho bảng `rt_options`
--
ALTER TABLE `rt_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`);

--
-- Chỉ mục cho bảng `rt_postmeta`
--
ALTER TABLE `rt_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Chỉ mục cho bảng `rt_posts`
--
ALTER TABLE `rt_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Chỉ mục cho bảng `rt_termmeta`
--
ALTER TABLE `rt_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Chỉ mục cho bảng `rt_terms`
--
ALTER TABLE `rt_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Chỉ mục cho bảng `rt_term_relationships`
--
ALTER TABLE `rt_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Chỉ mục cho bảng `rt_term_taxonomy`
--
ALTER TABLE `rt_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Chỉ mục cho bảng `rt_usermeta`
--
ALTER TABLE `rt_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Chỉ mục cho bảng `rt_users`
--
ALTER TABLE `rt_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- Chỉ mục cho bảng `rt_woocommerce_api_keys`
--
ALTER TABLE `rt_woocommerce_api_keys`
  ADD PRIMARY KEY (`key_id`),
  ADD KEY `consumer_key` (`consumer_key`),
  ADD KEY `consumer_secret` (`consumer_secret`);

--
-- Chỉ mục cho bảng `rt_woocommerce_attribute_taxonomies`
--
ALTER TABLE `rt_woocommerce_attribute_taxonomies`
  ADD PRIMARY KEY (`attribute_id`),
  ADD KEY `attribute_name` (`attribute_name`(20));

--
-- Chỉ mục cho bảng `rt_woocommerce_downloadable_product_permissions`
--
ALTER TABLE `rt_woocommerce_downloadable_product_permissions`
  ADD PRIMARY KEY (`permission_id`),
  ADD KEY `download_order_key_product` (`product_id`,`order_id`,`order_key`(16),`download_id`),
  ADD KEY `download_order_product` (`download_id`,`order_id`,`product_id`),
  ADD KEY `order_id` (`order_id`);

--
-- Chỉ mục cho bảng `rt_woocommerce_log`
--
ALTER TABLE `rt_woocommerce_log`
  ADD PRIMARY KEY (`log_id`),
  ADD KEY `level` (`level`);

--
-- Chỉ mục cho bảng `rt_woocommerce_order_itemmeta`
--
ALTER TABLE `rt_woocommerce_order_itemmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `order_item_id` (`order_item_id`),
  ADD KEY `meta_key` (`meta_key`(32));

--
-- Chỉ mục cho bảng `rt_woocommerce_order_items`
--
ALTER TABLE `rt_woocommerce_order_items`
  ADD PRIMARY KEY (`order_item_id`),
  ADD KEY `order_id` (`order_id`);

--
-- Chỉ mục cho bảng `rt_woocommerce_payment_tokenmeta`
--
ALTER TABLE `rt_woocommerce_payment_tokenmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `payment_token_id` (`payment_token_id`),
  ADD KEY `meta_key` (`meta_key`(32));

--
-- Chỉ mục cho bảng `rt_woocommerce_payment_tokens`
--
ALTER TABLE `rt_woocommerce_payment_tokens`
  ADD PRIMARY KEY (`token_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Chỉ mục cho bảng `rt_woocommerce_sessions`
--
ALTER TABLE `rt_woocommerce_sessions`
  ADD PRIMARY KEY (`session_key`),
  ADD UNIQUE KEY `session_id` (`session_id`);

--
-- Chỉ mục cho bảng `rt_woocommerce_shipping_zones`
--
ALTER TABLE `rt_woocommerce_shipping_zones`
  ADD PRIMARY KEY (`zone_id`);

--
-- Chỉ mục cho bảng `rt_woocommerce_shipping_zone_locations`
--
ALTER TABLE `rt_woocommerce_shipping_zone_locations`
  ADD PRIMARY KEY (`location_id`),
  ADD KEY `location_id` (`location_id`),
  ADD KEY `location_type_code` (`location_type`(10),`location_code`(20));

--
-- Chỉ mục cho bảng `rt_woocommerce_shipping_zone_methods`
--
ALTER TABLE `rt_woocommerce_shipping_zone_methods`
  ADD PRIMARY KEY (`instance_id`);

--
-- Chỉ mục cho bảng `rt_woocommerce_tax_rates`
--
ALTER TABLE `rt_woocommerce_tax_rates`
  ADD PRIMARY KEY (`tax_rate_id`),
  ADD KEY `tax_rate_country` (`tax_rate_country`),
  ADD KEY `tax_rate_state` (`tax_rate_state`(2)),
  ADD KEY `tax_rate_class` (`tax_rate_class`(10)),
  ADD KEY `tax_rate_priority` (`tax_rate_priority`);

--
-- Chỉ mục cho bảng `rt_woocommerce_tax_rate_locations`
--
ALTER TABLE `rt_woocommerce_tax_rate_locations`
  ADD PRIMARY KEY (`location_id`),
  ADD KEY `tax_rate_id` (`tax_rate_id`),
  ADD KEY `location_type_code` (`location_type`(10),`location_code`(20));

--
-- Chỉ mục cho bảng `rt_yoast_seo_links`
--
ALTER TABLE `rt_yoast_seo_links`
  ADD PRIMARY KEY (`id`),
  ADD KEY `link_direction` (`post_id`,`type`);

--
-- Chỉ mục cho bảng `rt_yoast_seo_meta`
--
ALTER TABLE `rt_yoast_seo_meta`
  ADD UNIQUE KEY `object_id` (`object_id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `rt_commentmeta`
--
ALTER TABLE `rt_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `rt_comments`
--
ALTER TABLE `rt_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `rt_cpd_counter`
--
ALTER TABLE `rt_cpd_counter`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT cho bảng `rt_links`
--
ALTER TABLE `rt_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `rt_options`
--
ALTER TABLE `rt_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1872;

--
-- AUTO_INCREMENT cho bảng `rt_postmeta`
--
ALTER TABLE `rt_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2078;

--
-- AUTO_INCREMENT cho bảng `rt_posts`
--
ALTER TABLE `rt_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=175;

--
-- AUTO_INCREMENT cho bảng `rt_termmeta`
--
ALTER TABLE `rt_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=108;

--
-- AUTO_INCREMENT cho bảng `rt_terms`
--
ALTER TABLE `rt_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT cho bảng `rt_term_taxonomy`
--
ALTER TABLE `rt_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT cho bảng `rt_usermeta`
--
ALTER TABLE `rt_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=142;

--
-- AUTO_INCREMENT cho bảng `rt_users`
--
ALTER TABLE `rt_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `rt_woocommerce_api_keys`
--
ALTER TABLE `rt_woocommerce_api_keys`
  MODIFY `key_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `rt_woocommerce_attribute_taxonomies`
--
ALTER TABLE `rt_woocommerce_attribute_taxonomies`
  MODIFY `attribute_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `rt_woocommerce_downloadable_product_permissions`
--
ALTER TABLE `rt_woocommerce_downloadable_product_permissions`
  MODIFY `permission_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `rt_woocommerce_log`
--
ALTER TABLE `rt_woocommerce_log`
  MODIFY `log_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `rt_woocommerce_order_itemmeta`
--
ALTER TABLE `rt_woocommerce_order_itemmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `rt_woocommerce_order_items`
--
ALTER TABLE `rt_woocommerce_order_items`
  MODIFY `order_item_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `rt_woocommerce_payment_tokenmeta`
--
ALTER TABLE `rt_woocommerce_payment_tokenmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `rt_woocommerce_payment_tokens`
--
ALTER TABLE `rt_woocommerce_payment_tokens`
  MODIFY `token_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `rt_woocommerce_sessions`
--
ALTER TABLE `rt_woocommerce_sessions`
  MODIFY `session_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT cho bảng `rt_woocommerce_shipping_zones`
--
ALTER TABLE `rt_woocommerce_shipping_zones`
  MODIFY `zone_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `rt_woocommerce_shipping_zone_locations`
--
ALTER TABLE `rt_woocommerce_shipping_zone_locations`
  MODIFY `location_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `rt_woocommerce_shipping_zone_methods`
--
ALTER TABLE `rt_woocommerce_shipping_zone_methods`
  MODIFY `instance_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `rt_woocommerce_tax_rates`
--
ALTER TABLE `rt_woocommerce_tax_rates`
  MODIFY `tax_rate_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `rt_woocommerce_tax_rate_locations`
--
ALTER TABLE `rt_woocommerce_tax_rate_locations`
  MODIFY `location_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `rt_yoast_seo_links`
--
ALTER TABLE `rt_yoast_seo_links`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
