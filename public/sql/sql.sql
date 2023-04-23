-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Oct 22, 2022 at 12:30 PM
-- Server version: 10.5.17-MariaDB
-- PHP Version: 7.4.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `currentnewscombd_onno`
--

-- --------------------------------------------------------

--
-- Table structure for table `activations`
--

CREATE TABLE `activations` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `completed` tinyint(1) NOT NULL DEFAULT 0,
  `completed_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `activations`
--

INSERT INTO `activations` (`id`, `user_id`, `code`, `completed`, `completed_at`, `created_at`, `updated_at`) VALUES
(1, 1, 'u5Znnmny15sKoVQAQo5v4lK7A3JFXFuD', 1, '2021-09-04 22:34:39', '2021-09-04 22:34:39', '2021-09-04 22:34:39');

-- --------------------------------------------------------

--
-- Table structure for table `ads`
--

CREATE TABLE `ads` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `ad_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ad_size` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ad_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ad_url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ad_image_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ad_code` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ad_text` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ad_locations`
--

CREATE TABLE `ad_locations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `unique_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ad_id` bigint(20) UNSIGNED DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `albums`
--

CREATE TABLE `albums` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `language` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tabs` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT 0,
  `meta_keywords` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `disk` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `original_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'cover image',
  `thumbnail` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'cover image',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `app_intros`
--

CREATE TABLE `app_intros` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `language` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `disk` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `audio`
--

CREATE TABLE `audio` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `audio_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `disk` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `original` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `audio_mp3` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `audio_ogg` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `duration` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `audio_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `audio_post`
--

CREATE TABLE `audio_post` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `post_id` int(10) UNSIGNED NOT NULL,
  `audio_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `language` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_featured` tinyint(1) NOT NULL COMMENT '0 for not, 1 for featured',
  `meta_description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_keywords` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `category_name`, `language`, `slug`, `is_featured`, `meta_description`, `meta_keywords`, `order`, `created_at`, `updated_at`) VALUES
(1, 'World', 'en', 'world', 1, '', '', 1, '2021-09-04 22:34:39', '2021-12-06 17:24:25'),
(2, 'Science', 'en', 'science', 1, '', '', 1, '2021-09-04 22:34:39', '2021-12-06 17:24:41'),
(3, 'Life Style', 'en', 'life-style', 1, '', '', 1, '2021-09-04 22:34:39', '2021-12-06 17:24:55'),
(4, 'RSS News', 'en', 'rss-news', 0, NULL, NULL, 4, '2021-09-04 22:34:39', '2021-09-04 22:34:39');

-- --------------------------------------------------------


CREATE TABLE `category_post` (
  `category_id` bigint NOT NULL,
  `post_id` bigint NOT NULL
)

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED DEFAULT NULL,
  `comment` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `contact_messages`
--

CREATE TABLE `contact_messages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `message_seen` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `crons`
--

CREATE TABLE `crons` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `cron_for` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `video_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `email_templates`
--

CREATE TABLE `email_templates` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email_group` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `template_body` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lang` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT 'en',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `email_templates`
--

INSERT INTO `email_templates` (`id`, `email_group`, `subject`, `template_body`, `lang`, `created_at`, `updated_at`) VALUES
(1, 'registration', 'Registration successful', '<table id=\"backgroundTable\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" align=\"center\"><tbody><tr><td valign=\"top\"><table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" align=\"center\"><tbody><tr><td width=\"600\" height=\"50\">&nbsp;</td></tr><tr><td style=\"color: #999999;\" width=\"600\" height=\"90\">{SITE_LOGO}</td></tr><tr><td style=\"background: whitesmoke; border: 1px solid #e0e0e0; font-family: Helvetica,Arial,sans-serif;\" valign=\"top\" bgcolor=\"whitesmoke\" width=\"600\" height=\"200\"><table style=\"margin-left: 15px;\" align=\"center\"><tbody><tr><td width=\"560\" height=\"10\">&nbsp;</td></tr><tr><td width=\"560\"><h4>New Account</h4><p style=\"font-size: 12px; font-family: Helvetica,Arial,sans-serif;\">Hi {USERNAME},</p><p style=\"font-size: 12px; line-height: 20px; font-family: Helvetica,Arial,sans-serif;\">Thanks for joining {SITE_NAME}. We listed your sign in details below, make sure you keep them safe.<br /> To open your {SITE_NAME} homepage, please follow this link:<br /> <a style=\"color: #11a7db; text-decoration: none;\" href=\"{SITE_URL}\"><strong>{SITE_NAME} Account</strong></a><br /><br /> Link doesn\'t work? Copy the following link to your browser address bar:<br /><br />{SITE_URL}<br /><br /> Your username: {USERNAME}<br /> Your email address: {USER_EMAIL}<br /><br /><br />{SIGNATURE}</p></td></tr><tr><td width=\"560\" height=\"10\">&nbsp;</td></tr></tbody></table></td></tr><tr><td width=\"600\" height=\"10\">&nbsp;</td></tr><tr><td align=\"right\">&nbsp;</td></tr></tbody></table></td></tr></tbody></table>', 'en', '2021-09-04 22:34:39', '2021-09-04 22:34:39'),
(2, 'forgot_password', 'Forgot Password', '<table id=\"backgroundTable\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" align=\"center\"><tbody><tr><td valign=\"top\"><table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" align=\"center\"><tbody><tr><td width=\"600\" height=\"50\">&nbsp;</td></tr><tr><td style=\"color: #999999;\" width=\"600\" height=\"90\">{SITE_LOGO}</td></tr><tr><td style=\"background: whitesmoke; border: 1px solid #e0e0e0; font-family: Helvetica,Arial,sans-serif;\" valign=\"top\" bgcolor=\"whitesmoke\" width=\"600\" height=\"200\"><table style=\"margin-left: 15px;\" align=\"center\"><tbody><tr><td width=\"560\" height=\"10\">&nbsp;</td></tr><tr><td width=\"560\"><h4>New Password</h4><p style=\"font-size: 12px; line-height: 20px; font-family: Helvetica,Arial,sans-serif;\">Forgot your password, huh? No big deal.<br />To create a new password, just follow this link:<br /> <a style=\"color: #11a7db; text-decoration: none;\" href=\"{PASS_KEY_URL}\"><strong>Create new password</strong></a><br /><br /> Link doesn\'t work? Copy the following link to your browser address bar:<br /> {PASS_KEY_URL}<br /><br /> You received this email, because it was requested by a {SITE_NAME} user.This is part of the procedure to create a new password on the system. If you DID NOT request a new password then please ignore this email and your password will remain the same.<br /><br />Thank you,<br /><br /> Best Regards,<br /> {SITE_NAME}</p></td></tr><tr><td width=\"560\" height=\"10\">&nbsp;</td></tr></tbody></table></td></tr><tr><td width=\"600\" height=\"10\">&nbsp;</td></tr><tr><td align=\"right\"><span style=\"font-size: 10px; color: #999999; font-family: Helvetica,Arial,sans-serif;\">{SIGNATURE}</span></td></tr></tbody></table></td></tr></tbody></table>', 'en', '2021-09-04 22:34:39', '2021-09-04 22:34:39'),
(3, 'activate_account', 'Activate Account', '<table id=\"backgroundTable\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" align=\"center\"><tbody><tr><td valign=\"top\"><table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" align=\"center\"><tbody><tr><td width=\"600\" height=\"50\">&nbsp;</td></tr><tr><td style=\"color: #999999;\" width=\"600\" height=\"90\">{SITE_LOGO}</td></tr><tr><td style=\"background: whitesmoke; border: 1px solid #e0e0e0; font-family: Helvetica,Arial,sans-serif;\" valign=\"top\" bgcolor=\"whitesmoke\" width=\"600\" height=\"200\"><table style=\"margin-left: 15px;\" align=\"center\"><tbody><tr><td width=\"560\" height=\"10\">&nbsp;</td></tr><tr><td width=\"560\"><h4>Activate Account</h4><p style=\"font-size: 12px; font-family: Helvetica,Arial,sans-serif;\">Hi {USERNAME},</p><p style=\"font-size: 12px; line-height: 20px; font-family: Helvetica,Arial,sans-serif;\">Thanks for joining {SITE_NAME}. We listed your sign in details below, make sure you keep them safe. To verify your email address, please follow this link:<br /> <a style=\"color: #11a7db; text-decoration: none;\" href=\"{ACTIVATE_URL}\"><strong>Complete Registration</strong></a><br /><br /> Link doesn\'t work? Copy the following link to your browser address bar:<br /> {ACTIVATE_URL}<br /><br /> Your username: {USERNAME}<br /> Your email address: {USER_EMAIL}<br /> Your password: {PASSWORD}<br /><br /><br /> {SIGNATURE}</p></td></tr><tr><td width=\"560\" height=\"10\">&nbsp;</td></tr></tbody></table></td></tr><tr><td width=\"600\" height=\"10\">&nbsp;</td></tr><tr><td align=\"right\">&nbsp;</td></tr></tbody></table></td></tr></tbody></table><p>&nbsp;</p>', 'en', '2021-09-04 22:34:39', '2021-09-04 22:34:39'),
(4, 'reset_password', 'Reset Password', '<table id=\"backgroundTable\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" align=\"center\"><tbody><tr><td valign=\"top\"><table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" align=\"center\"><tbody><tr><td width=\"600\" height=\"50\">&nbsp;</td></tr><tr><td style=\"color: #999999;\" width=\"600\" height=\"90\">{SITE_LOGO}</td></tr><tr><td style=\"background: whitesmoke; border: 1px solid #e0e0e0; font-family: Helvetica,Arial,sans-serif;\" valign=\"top\" bgcolor=\"whitesmoke\" width=\"600\" height=\"200\"><table style=\"margin-left: 15px;\" align=\"center\"><tbody><tr><td width=\"560\" height=\"10\">&nbsp;</td></tr><tr><td width=\"560\"><h4>New Password</h4><p style=\"font-size: 12px; font-family: Helvetica,Arial,sans-serif;\">Hi {USERNAME},</p><p style=\"font-size: 12px; line-height: 20px; font-family: Helvetica,Arial,sans-serif;\">You have changed your password.<br />Please, keep it in your records so you don\'t forget it:<br />Your username: {USERNAME}<br />Your email address: {USER_EMAIL}<br />Your new password: {NEW_PASSWORD}<br /><br /><br /> Best Regards,<br /> {SITE_NAME}</p></td></tr><tr><td width=\"560\" height=\"10\">&nbsp;</td></tr></tbody></table></td></tr><tr><td width=\"600\" height=\"10\">&nbsp;</td></tr><tr><td align=\"right\"><span style=\"font-size: 10px; color: #999999; font-family: Helvetica,Arial,sans-serif;\">{SIGNATURE}</span></td></tr></tbody></table></td></tr></tbody></table>', 'en', '2021-09-04 22:34:39', '2021-09-04 22:34:39');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `flag_icons`
--

CREATE TABLE `flag_icons` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `icon_class` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `flag_icons`
--

INSERT INTO `flag_icons` (`id`, `icon_class`, `title`, `created_at`, `updated_at`) VALUES
(1, 'flag-icon flag-icon-ad', 'ad', '2021-09-04 22:34:39', '2021-09-04 22:34:39'),
(2, 'flag-icon flag-icon-ae', 'ae', '2021-09-04 22:34:39', '2021-09-04 22:34:39'),
(3, 'flag-icon flag-icon-af', 'af', '2021-09-04 22:34:39', '2021-09-04 22:34:39'),
(4, 'flag-icon flag-icon-ag', 'ag', '2021-09-04 22:34:39', '2021-09-04 22:34:39'),
(5, 'flag-icon flag-icon-ai', 'ai', '2021-09-04 22:34:39', '2021-09-04 22:34:39'),
(6, 'flag-icon flag-icon-al', 'al', '2021-09-04 22:34:39', '2021-09-04 22:34:39'),
(7, 'flag-icon flag-icon-am', 'am', '2021-09-04 22:34:39', '2021-09-04 22:34:39'),
(8, 'flag-icon flag-icon-ao', 'ao', '2021-09-04 22:34:39', '2021-09-04 22:34:39'),
(9, 'flag-icon flag-icon-aq', 'aq', '2021-09-04 22:34:39', '2021-09-04 22:34:39'),
(10, 'flag-icon flag-icon-ar', 'ar', '2021-09-04 22:34:39', '2021-09-04 22:34:39'),
(11, 'flag-icon flag-icon-as', 'as', '2021-09-04 22:34:39', '2021-09-04 22:34:39'),
(12, 'flag-icon flag-icon-at', 'at', '2021-09-04 22:34:39', '2021-09-04 22:34:39'),
(13, 'flag-icon flag-icon-au', 'au', '2021-09-04 22:34:39', '2021-09-04 22:34:39'),
(14, 'flag-icon flag-icon-aw', 'aw', '2021-09-04 22:34:39', '2021-09-04 22:34:39'),
(15, 'flag-icon flag-icon-ax', 'ax', '2021-09-04 22:34:39', '2021-09-04 22:34:39'),
(16, 'flag-icon flag-icon-az', 'az', '2021-09-04 22:34:39', '2021-09-04 22:34:39'),
(17, 'flag-icon flag-icon-ba', 'ba', '2021-09-04 22:34:39', '2021-09-04 22:34:39'),
(18, 'flag-icon flag-icon-bb', 'bb', '2021-09-04 22:34:39', '2021-09-04 22:34:39'),
(19, 'flag-icon flag-icon-bd', 'bd', '2021-09-04 22:34:39', '2021-09-04 22:34:39'),
(20, 'flag-icon flag-icon-be', 'be', '2021-09-04 22:34:39', '2021-09-04 22:34:39'),
(21, 'flag-icon flag-icon-bf', 'bf', '2021-09-04 22:34:39', '2021-09-04 22:34:39'),
(22, 'flag-icon flag-icon-bg', 'bg', '2021-09-04 22:34:39', '2021-09-04 22:34:39'),
(23, 'flag-icon flag-icon-bh', 'bh', '2021-09-04 22:34:39', '2021-09-04 22:34:39'),
(24, 'flag-icon flag-icon-bi', 'bi', '2021-09-04 22:34:39', '2021-09-04 22:34:39'),
(25, 'flag-icon flag-icon-bj', 'bj', '2021-09-04 22:34:39', '2021-09-04 22:34:39'),
(26, 'flag-icon flag-icon-bl', 'bl', '2021-09-04 22:34:39', '2021-09-04 22:34:39'),
(27, 'flag-icon flag-icon-bm', 'bm', '2021-09-04 22:34:39', '2021-09-04 22:34:39'),
(28, 'flag-icon flag-icon-bn', 'bn', '2021-09-04 22:34:39', '2021-09-04 22:34:39'),
(29, 'flag-icon flag-icon-bo', 'bo', '2021-09-04 22:34:39', '2021-09-04 22:34:39'),
(30, 'flag-icon flag-icon-bq', 'bq', '2021-09-04 22:34:39', '2021-09-04 22:34:39'),
(31, 'flag-icon flag-icon-br', 'br', '2021-09-04 22:34:39', '2021-09-04 22:34:39'),
(32, 'flag-icon flag-icon-bs', 'bs', '2021-09-04 22:34:39', '2021-09-04 22:34:39'),
(33, 'flag-icon flag-icon-bt', 'bt', '2021-09-04 22:34:39', '2021-09-04 22:34:39'),
(34, 'flag-icon flag-icon-bv', 'bv', '2021-09-04 22:34:39', '2021-09-04 22:34:39'),
(35, 'flag-icon flag-icon-bw', 'bw', '2021-09-04 22:34:39', '2021-09-04 22:34:39'),
(36, 'flag-icon flag-icon-by', 'by', '2021-09-04 22:34:39', '2021-09-04 22:34:39'),
(37, 'flag-icon flag-icon-bz', 'bz', '2021-09-04 22:34:39', '2021-09-04 22:34:39'),
(38, 'flag-icon flag-icon-ca', 'ca', '2021-09-04 22:34:39', '2021-09-04 22:34:39'),
(39, 'flag-icon flag-icon-cc', 'cc', '2021-09-04 22:34:39', '2021-09-04 22:34:39'),
(40, 'flag-icon flag-icon-cd', 'cd', '2021-09-04 22:34:39', '2021-09-04 22:34:39'),
(41, 'flag-icon flag-icon-cf', 'cf', '2021-09-04 22:34:39', '2021-09-04 22:34:39'),
(42, 'flag-icon flag-icon-cg', 'cg', '2021-09-04 22:34:39', '2021-09-04 22:34:39'),
(43, 'flag-icon flag-icon-ch', 'ch', '2021-09-04 22:34:39', '2021-09-04 22:34:39'),
(44, 'flag-icon flag-icon-ci', 'ci', '2021-09-04 22:34:39', '2021-09-04 22:34:39'),
(45, 'flag-icon flag-icon-ck', 'ck', '2021-09-04 22:34:39', '2021-09-04 22:34:39'),
(46, 'flag-icon flag-icon-cl', 'cl', '2021-09-04 22:34:39', '2021-09-04 22:34:39'),
(47, 'flag-icon flag-icon-cm', 'cm', '2021-09-04 22:34:39', '2021-09-04 22:34:39'),
(48, 'flag-icon flag-icon-cn', 'cn', '2021-09-04 22:34:39', '2021-09-04 22:34:39'),
(49, 'flag-icon flag-icon-co', 'co', '2021-09-04 22:34:39', '2021-09-04 22:34:39'),
(50, 'flag-icon flag-icon-cr', 'cr', '2021-09-04 22:34:39', '2021-09-04 22:34:39'),
(51, 'flag-icon flag-icon-cu', 'cu', '2021-09-04 22:34:39', '2021-09-04 22:34:39'),
(52, 'flag-icon flag-icon-cv', 'cv', '2021-09-04 22:34:39', '2021-09-04 22:34:39'),
(53, 'flag-icon flag-icon-cw', 'cw', '2021-09-04 22:34:39', '2021-09-04 22:34:39'),
(54, 'flag-icon flag-icon-cx', 'cx', '2021-09-04 22:34:39', '2021-09-04 22:34:39'),
(55, 'flag-icon flag-icon-cy', 'cy', '2021-09-04 22:34:39', '2021-09-04 22:34:39'),
(56, 'flag-icon flag-icon-cz', 'cz', '2021-09-04 22:34:39', '2021-09-04 22:34:39'),
(57, 'flag-icon flag-icon-de', 'de', '2021-09-04 22:34:39', '2021-09-04 22:34:39'),
(58, 'flag-icon flag-icon-dj', 'dj', '2021-09-04 22:34:39', '2021-09-04 22:34:39'),
(59, 'flag-icon flag-icon-dk', 'dk', '2021-09-04 22:34:39', '2021-09-04 22:34:39'),
(60, 'flag-icon flag-icon-dm', 'dm', '2021-09-04 22:34:39', '2021-09-04 22:34:39'),
(61, 'flag-icon flag-icon-do', 'do', '2021-09-04 22:34:39', '2021-09-04 22:34:39'),
(62, 'flag-icon flag-icon-dz', 'dz', '2021-09-04 22:34:39', '2021-09-04 22:34:39'),
(63, 'flag-icon flag-icon-ec', 'ec', '2021-09-04 22:34:39', '2021-09-04 22:34:39'),
(64, 'flag-icon flag-icon-ee', 'ee', '2021-09-04 22:34:39', '2021-09-04 22:34:39'),
(65, 'flag-icon flag-icon-eg', 'eg', '2021-09-04 22:34:39', '2021-09-04 22:34:39'),
(66, 'flag-icon flag-icon-eh', 'eh', '2021-09-04 22:34:39', '2021-09-04 22:34:39'),
(67, 'flag-icon flag-icon-er', 'er', '2021-09-04 22:34:39', '2021-09-04 22:34:39'),
(68, 'flag-icon flag-icon-es', 'es', '2021-09-04 22:34:39', '2021-09-04 22:34:39'),
(69, 'flag-icon flag-icon-et', 'et', '2021-09-04 22:34:39', '2021-09-04 22:34:39'),
(70, 'flag-icon flag-icon-fi', 'fi', '2021-09-04 22:34:39', '2021-09-04 22:34:39'),
(71, 'flag-icon flag-icon-fj', 'fj', '2021-09-04 22:34:39', '2021-09-04 22:34:39'),
(72, 'flag-icon flag-icon-fk', 'fk', '2021-09-04 22:34:39', '2021-09-04 22:34:39'),
(73, 'flag-icon flag-icon-fm', 'fm', '2021-09-04 22:34:39', '2021-09-04 22:34:39'),
(74, 'flag-icon flag-icon-fo', 'fo', '2021-09-04 22:34:39', '2021-09-04 22:34:39'),
(75, 'flag-icon flag-icon-fr', 'fr', '2021-09-04 22:34:39', '2021-09-04 22:34:39'),
(76, 'flag-icon flag-icon-ga', 'ga', '2021-09-04 22:34:39', '2021-09-04 22:34:39'),
(77, 'flag-icon flag-icon-gb', 'gb', '2021-09-04 22:34:39', '2021-09-04 22:34:39'),
(78, 'flag-icon flag-icon-gd', 'gd', '2021-09-04 22:34:39', '2021-09-04 22:34:39'),
(79, 'flag-icon flag-icon-ge', 'ge', '2021-09-04 22:34:39', '2021-09-04 22:34:39'),
(80, 'flag-icon flag-icon-gf', 'gf', '2021-09-04 22:34:39', '2021-09-04 22:34:39'),
(81, 'flag-icon flag-icon-gg', 'gg', '2021-09-04 22:34:39', '2021-09-04 22:34:39'),
(82, 'flag-icon flag-icon-gh', 'gh', '2021-09-04 22:34:39', '2021-09-04 22:34:39'),
(83, 'flag-icon flag-icon-gi', 'gi', '2021-09-04 22:34:39', '2021-09-04 22:34:39'),
(84, 'flag-icon flag-icon-gl', 'gl', '2021-09-04 22:34:39', '2021-09-04 22:34:39'),
(85, 'flag-icon flag-icon-gm', 'gm', '2021-09-04 22:34:39', '2021-09-04 22:34:39'),
(86, 'flag-icon flag-icon-gn', 'gn', '2021-09-04 22:34:39', '2021-09-04 22:34:39'),
(87, 'flag-icon flag-icon-gp', 'gp', '2021-09-04 22:34:39', '2021-09-04 22:34:39'),
(88, 'flag-icon flag-icon-gq', 'gq', '2021-09-04 22:34:39', '2021-09-04 22:34:39'),
(89, 'flag-icon flag-icon-gr', 'gr', '2021-09-04 22:34:39', '2021-09-04 22:34:39'),
(90, 'flag-icon flag-icon-gs', 'gs', '2021-09-04 22:34:39', '2021-09-04 22:34:39'),
(91, 'flag-icon flag-icon-gt', 'gt', '2021-09-04 22:34:39', '2021-09-04 22:34:39'),
(92, 'flag-icon flag-icon-gu', 'gu', '2021-09-04 22:34:39', '2021-09-04 22:34:39'),
(93, 'flag-icon flag-icon-gw', 'gw', '2021-09-04 22:34:39', '2021-09-04 22:34:39'),
(94, 'flag-icon flag-icon-gy', 'gy', '2021-09-04 22:34:39', '2021-09-04 22:34:39'),
(95, 'flag-icon flag-icon-hk', 'hk', '2021-09-04 22:34:39', '2021-09-04 22:34:39'),
(96, 'flag-icon flag-icon-hm', 'hm', '2021-09-04 22:34:39', '2021-09-04 22:34:39'),
(97, 'flag-icon flag-icon-hn', 'hn', '2021-09-04 22:34:39', '2021-09-04 22:34:39'),
(98, 'flag-icon flag-icon-hr', 'hr', '2021-09-04 22:34:39', '2021-09-04 22:34:39'),
(99, 'flag-icon flag-icon-ht', 'ht', '2021-09-04 22:34:39', '2021-09-04 22:34:39'),
(100, 'flag-icon flag-icon-hu', 'hu', '2021-09-04 22:34:39', '2021-09-04 22:34:39'),
(101, 'flag-icon flag-icon-id', 'id', '2021-09-04 22:34:39', '2021-09-04 22:34:39'),
(102, 'flag-icon flag-icon-ie', 'ie', '2021-09-04 22:34:39', '2021-09-04 22:34:39'),
(103, 'flag-icon flag-icon-il', 'il', '2021-09-04 22:34:39', '2021-09-04 22:34:39'),
(104, 'flag-icon flag-icon-im', 'im', '2021-09-04 22:34:39', '2021-09-04 22:34:39'),
(105, 'flag-icon flag-icon-in', 'in', '2021-09-04 22:34:39', '2021-09-04 22:34:39'),
(106, 'flag-icon flag-icon-io', 'io', '2021-09-04 22:34:39', '2021-09-04 22:34:39'),
(107, 'flag-icon flag-icon-iq', 'iq', '2021-09-04 22:34:39', '2021-09-04 22:34:39'),
(108, 'flag-icon flag-icon-ir', 'ir', '2021-09-04 22:34:39', '2021-09-04 22:34:39'),
(109, 'flag-icon flag-icon-is', 'is', '2021-09-04 22:34:39', '2021-09-04 22:34:39'),
(110, 'flag-icon flag-icon-it', 'it', '2021-09-04 22:34:39', '2021-09-04 22:34:39'),
(111, 'flag-icon flag-icon-je', 'je', '2021-09-04 22:34:39', '2021-09-04 22:34:39'),
(112, 'flag-icon flag-icon-jm', 'jm', '2021-09-04 22:34:39', '2021-09-04 22:34:39'),
(113, 'flag-icon flag-icon-jo', 'jo', '2021-09-04 22:34:39', '2021-09-04 22:34:39'),
(114, 'flag-icon flag-icon-jp', 'jp', '2021-09-04 22:34:39', '2021-09-04 22:34:39'),
(115, 'flag-icon flag-icon-ke', 'ke', '2021-09-04 22:34:39', '2021-09-04 22:34:39'),
(116, 'flag-icon flag-icon-kg', 'kg', '2021-09-04 22:34:39', '2021-09-04 22:34:39'),
(117, 'flag-icon flag-icon-kh', 'kh', '2021-09-04 22:34:39', '2021-09-04 22:34:39'),
(118, 'flag-icon flag-icon-ki', 'ki', '2021-09-04 22:34:39', '2021-09-04 22:34:39'),
(119, 'flag-icon flag-icon-km', 'km', '2021-09-04 22:34:39', '2021-09-04 22:34:39'),
(120, 'flag-icon flag-icon-kn', 'kn', '2021-09-04 22:34:39', '2021-09-04 22:34:39'),
(121, 'flag-icon flag-icon-kp', 'kp', '2021-09-04 22:34:39', '2021-09-04 22:34:39'),
(122, 'flag-icon flag-icon-kr', 'kr', '2021-09-04 22:34:39', '2021-09-04 22:34:39'),
(123, 'flag-icon flag-icon-kw', 'kw', '2021-09-04 22:34:39', '2021-09-04 22:34:39'),
(124, 'flag-icon flag-icon-ky', 'ky', '2021-09-04 22:34:39', '2021-09-04 22:34:39'),
(125, 'flag-icon flag-icon-kz', 'kz', '2021-09-04 22:34:39', '2021-09-04 22:34:39'),
(126, 'flag-icon flag-icon-la', 'la', '2021-09-04 22:34:39', '2021-09-04 22:34:39'),
(127, 'flag-icon flag-icon-lb', 'lb', '2021-09-04 22:34:39', '2021-09-04 22:34:39'),
(128, 'flag-icon flag-icon-lc', 'lc', '2021-09-04 22:34:39', '2021-09-04 22:34:39'),
(129, 'flag-icon flag-icon-li', 'li', '2021-09-04 22:34:39', '2021-09-04 22:34:39'),
(130, 'flag-icon flag-icon-lk', 'lk', '2021-09-04 22:34:39', '2021-09-04 22:34:39'),
(131, 'flag-icon flag-icon-lr', 'lr', '2021-09-04 22:34:39', '2021-09-04 22:34:39'),
(132, 'flag-icon flag-icon-ls', 'ls', '2021-09-04 22:34:39', '2021-09-04 22:34:39'),
(133, 'flag-icon flag-icon-lt', 'lt', '2021-09-04 22:34:39', '2021-09-04 22:34:39'),
(134, 'flag-icon flag-icon-lu', 'lu', '2021-09-04 22:34:39', '2021-09-04 22:34:39'),
(135, 'flag-icon flag-icon-lv', 'lv', '2021-09-04 22:34:39', '2021-09-04 22:34:39'),
(136, 'flag-icon flag-icon-ly', 'ly', '2021-09-04 22:34:39', '2021-09-04 22:34:39'),
(137, 'flag-icon flag-icon-ma', 'ma', '2021-09-04 22:34:39', '2021-09-04 22:34:39'),
(138, 'flag-icon flag-icon-mc', 'mc', '2021-09-04 22:34:39', '2021-09-04 22:34:39'),
(139, 'flag-icon flag-icon-md', 'md', '2021-09-04 22:34:39', '2021-09-04 22:34:39'),
(140, 'flag-icon flag-icon-me', 'me', '2021-09-04 22:34:39', '2021-09-04 22:34:39'),
(141, 'flag-icon flag-icon-mf', 'mf', '2021-09-04 22:34:39', '2021-09-04 22:34:39'),
(142, 'flag-icon flag-icon-mg', 'mg', '2021-09-04 22:34:39', '2021-09-04 22:34:39'),
(143, 'flag-icon flag-icon-mh', 'mh', '2021-09-04 22:34:39', '2021-09-04 22:34:39'),
(144, 'flag-icon flag-icon-mk', 'mk', '2021-09-04 22:34:39', '2021-09-04 22:34:39'),
(145, 'flag-icon flag-icon-ml', 'ml', '2021-09-04 22:34:39', '2021-09-04 22:34:39'),
(146, 'flag-icon flag-icon-mm', 'mm', '2021-09-04 22:34:39', '2021-09-04 22:34:39'),
(147, 'flag-icon flag-icon-mn', 'mn', '2021-09-04 22:34:39', '2021-09-04 22:34:39'),
(148, 'flag-icon flag-icon-mo', 'mo', '2021-09-04 22:34:39', '2021-09-04 22:34:39'),
(149, 'flag-icon flag-icon-mp', 'mp', '2021-09-04 22:34:39', '2021-09-04 22:34:39'),
(150, 'flag-icon flag-icon-mq', 'mq', '2021-09-04 22:34:39', '2021-09-04 22:34:39'),
(151, 'flag-icon flag-icon-mr', 'mr', '2021-09-04 22:34:39', '2021-09-04 22:34:39'),
(152, 'flag-icon flag-icon-ms', 'ms', '2021-09-04 22:34:39', '2021-09-04 22:34:39'),
(153, 'flag-icon flag-icon-mt', 'mt', '2021-09-04 22:34:39', '2021-09-04 22:34:39'),
(154, 'flag-icon flag-icon-mu', 'mu', '2021-09-04 22:34:39', '2021-09-04 22:34:39'),
(155, 'flag-icon flag-icon-mv', 'mv', '2021-09-04 22:34:39', '2021-09-04 22:34:39'),
(156, 'flag-icon flag-icon-mw', 'mw', '2021-09-04 22:34:39', '2021-09-04 22:34:39'),
(157, 'flag-icon flag-icon-mx', 'mx', '2021-09-04 22:34:39', '2021-09-04 22:34:39'),
(158, 'flag-icon flag-icon-my', 'my', '2021-09-04 22:34:39', '2021-09-04 22:34:39'),
(159, 'flag-icon flag-icon-mz', 'mz', '2021-09-04 22:34:39', '2021-09-04 22:34:39'),
(160, 'flag-icon flag-icon-na', 'na', '2021-09-04 22:34:39', '2021-09-04 22:34:39'),
(161, 'flag-icon flag-icon-nc', 'nc', '2021-09-04 22:34:39', '2021-09-04 22:34:39'),
(162, 'flag-icon flag-icon-ne', 'ne', '2021-09-04 22:34:39', '2021-09-04 22:34:39'),
(163, 'flag-icon flag-icon-nf', 'nf', '2021-09-04 22:34:39', '2021-09-04 22:34:39'),
(164, 'flag-icon flag-icon-ng', 'ng', '2021-09-04 22:34:39', '2021-09-04 22:34:39'),
(165, 'flag-icon flag-icon-ni', 'ni', '2021-09-04 22:34:39', '2021-09-04 22:34:39'),
(166, 'flag-icon flag-icon-nl', 'nl', '2021-09-04 22:34:39', '2021-09-04 22:34:39'),
(167, 'flag-icon flag-icon-no', 'no', '2021-09-04 22:34:39', '2021-09-04 22:34:39'),
(168, 'flag-icon flag-icon-np', 'np', '2021-09-04 22:34:39', '2021-09-04 22:34:39'),
(169, 'flag-icon flag-icon-nr', 'nr', '2021-09-04 22:34:39', '2021-09-04 22:34:39'),
(170, 'flag-icon flag-icon-nu', 'nu', '2021-09-04 22:34:39', '2021-09-04 22:34:39'),
(171, 'flag-icon flag-icon-nz', 'nz', '2021-09-04 22:34:39', '2021-09-04 22:34:39'),
(172, 'flag-icon flag-icon-om', 'om', '2021-09-04 22:34:39', '2021-09-04 22:34:39'),
(173, 'flag-icon flag-icon-pa', 'pa', '2021-09-04 22:34:39', '2021-09-04 22:34:39'),
(174, 'flag-icon flag-icon-pe', 'pe', '2021-09-04 22:34:39', '2021-09-04 22:34:39'),
(175, 'flag-icon flag-icon-pf', 'pf', '2021-09-04 22:34:39', '2021-09-04 22:34:39'),
(176, 'flag-icon flag-icon-pg', 'pg', '2021-09-04 22:34:39', '2021-09-04 22:34:39'),
(177, 'flag-icon flag-icon-ph', 'ph', '2021-09-04 22:34:39', '2021-09-04 22:34:39'),
(178, 'flag-icon flag-icon-pk', 'pk', '2021-09-04 22:34:39', '2021-09-04 22:34:39'),
(179, 'flag-icon flag-icon-pl', 'pl', '2021-09-04 22:34:39', '2021-09-04 22:34:39'),
(180, 'flag-icon flag-icon-pm', 'pm', '2021-09-04 22:34:39', '2021-09-04 22:34:39'),
(181, 'flag-icon flag-icon-pn', 'pn', '2021-09-04 22:34:39', '2021-09-04 22:34:39'),
(182, 'flag-icon flag-icon-pr', 'pr', '2021-09-04 22:34:39', '2021-09-04 22:34:39'),
(183, 'flag-icon flag-icon-ps', 'ps', '2021-09-04 22:34:39', '2021-09-04 22:34:39'),
(184, 'flag-icon flag-icon-pt', 'pt', '2021-09-04 22:34:39', '2021-09-04 22:34:39'),
(185, 'flag-icon flag-icon-pw', 'pw', '2021-09-04 22:34:39', '2021-09-04 22:34:39'),
(186, 'flag-icon flag-icon-py', 'py', '2021-09-04 22:34:39', '2021-09-04 22:34:39'),
(187, 'flag-icon flag-icon-qa', 'qa', '2021-09-04 22:34:39', '2021-09-04 22:34:39'),
(188, 'flag-icon flag-icon-re', 're', '2021-09-04 22:34:39', '2021-09-04 22:34:39'),
(189, 'flag-icon flag-icon-ro', 'ro', '2021-09-04 22:34:39', '2021-09-04 22:34:39'),
(190, 'flag-icon flag-icon-rs', 'rs', '2021-09-04 22:34:39', '2021-09-04 22:34:39'),
(191, 'flag-icon flag-icon-ru', 'ru', '2021-09-04 22:34:39', '2021-09-04 22:34:39'),
(192, 'flag-icon flag-icon-rw', 'rw', '2021-09-04 22:34:39', '2021-09-04 22:34:39'),
(193, 'flag-icon flag-icon-sa', 'sa', '2021-09-04 22:34:39', '2021-09-04 22:34:39'),
(194, 'flag-icon flag-icon-sb', 'sb', '2021-09-04 22:34:39', '2021-09-04 22:34:39'),
(195, 'flag-icon flag-icon-sc', 'sc', '2021-09-04 22:34:39', '2021-09-04 22:34:39'),
(196, 'flag-icon flag-icon-sd', 'sd', '2021-09-04 22:34:39', '2021-09-04 22:34:39'),
(197, 'flag-icon flag-icon-se', 'se', '2021-09-04 22:34:39', '2021-09-04 22:34:39'),
(198, 'flag-icon flag-icon-sg', 'sg', '2021-09-04 22:34:39', '2021-09-04 22:34:39'),
(199, 'flag-icon flag-icon-sh', 'sh', '2021-09-04 22:34:39', '2021-09-04 22:34:39'),
(200, 'flag-icon flag-icon-si', 'si', '2021-09-04 22:34:39', '2021-09-04 22:34:39'),
(201, 'flag-icon flag-icon-sj', 'sj', '2021-09-04 22:34:39', '2021-09-04 22:34:39'),
(202, 'flag-icon flag-icon-sk', 'sk', '2021-09-04 22:34:39', '2021-09-04 22:34:39'),
(203, 'flag-icon flag-icon-sl', 'sl', '2021-09-04 22:34:39', '2021-09-04 22:34:39'),
(204, 'flag-icon flag-icon-sm', 'sm', '2021-09-04 22:34:39', '2021-09-04 22:34:39'),
(205, 'flag-icon flag-icon-sn', 'sn', '2021-09-04 22:34:39', '2021-09-04 22:34:39'),
(206, 'flag-icon flag-icon-so', 'so', '2021-09-04 22:34:39', '2021-09-04 22:34:39'),
(207, 'flag-icon flag-icon-sr', 'sr', '2021-09-04 22:34:39', '2021-09-04 22:34:39'),
(208, 'flag-icon flag-icon-ss', 'ss', '2021-09-04 22:34:39', '2021-09-04 22:34:39'),
(209, 'flag-icon flag-icon-st', 'st', '2021-09-04 22:34:39', '2021-09-04 22:34:39'),
(210, 'flag-icon flag-icon-sv', 'sv', '2021-09-04 22:34:39', '2021-09-04 22:34:39'),
(211, 'flag-icon flag-icon-sx', 'sx', '2021-09-04 22:34:39', '2021-09-04 22:34:39'),
(212, 'flag-icon flag-icon-sy', 'sy', '2021-09-04 22:34:39', '2021-09-04 22:34:39'),
(213, 'flag-icon flag-icon-sz', 'sz', '2021-09-04 22:34:39', '2021-09-04 22:34:39'),
(214, 'flag-icon flag-icon-tc', 'tc', '2021-09-04 22:34:39', '2021-09-04 22:34:39'),
(215, 'flag-icon flag-icon-td', 'td', '2021-09-04 22:34:39', '2021-09-04 22:34:39'),
(216, 'flag-icon flag-icon-tf', 'tf', '2021-09-04 22:34:39', '2021-09-04 22:34:39'),
(217, 'flag-icon flag-icon-tg', 'tg', '2021-09-04 22:34:39', '2021-09-04 22:34:39'),
(218, 'flag-icon flag-icon-th', 'th', '2021-09-04 22:34:39', '2021-09-04 22:34:39'),
(219, 'flag-icon flag-icon-tj', 'tj', '2021-09-04 22:34:39', '2021-09-04 22:34:39'),
(220, 'flag-icon flag-icon-tk', 'tk', '2021-09-04 22:34:39', '2021-09-04 22:34:39'),
(221, 'flag-icon flag-icon-tl', 'tl', '2021-09-04 22:34:39', '2021-09-04 22:34:39'),
(222, 'flag-icon flag-icon-tm', 'tm', '2021-09-04 22:34:39', '2021-09-04 22:34:39'),
(223, 'flag-icon flag-icon-tn', 'tn', '2021-09-04 22:34:39', '2021-09-04 22:34:39'),
(224, 'flag-icon flag-icon-to', 'to', '2021-09-04 22:34:39', '2021-09-04 22:34:39'),
(225, 'flag-icon flag-icon-tr', 'tr', '2021-09-04 22:34:39', '2021-09-04 22:34:39'),
(226, 'flag-icon flag-icon-tt', 'tt', '2021-09-04 22:34:39', '2021-09-04 22:34:39'),
(227, 'flag-icon flag-icon-tv', 'tv', '2021-09-04 22:34:39', '2021-09-04 22:34:39'),
(228, 'flag-icon flag-icon-tw', 'tw', '2021-09-04 22:34:39', '2021-09-04 22:34:39'),
(229, 'flag-icon flag-icon-tz', 'tz', '2021-09-04 22:34:39', '2021-09-04 22:34:39'),
(230, 'flag-icon flag-icon-ua', 'ua', '2021-09-04 22:34:39', '2021-09-04 22:34:39'),
(231, 'flag-icon flag-icon-ug', 'ug', '2021-09-04 22:34:39', '2021-09-04 22:34:39'),
(232, 'flag-icon flag-icon-um', 'um', '2021-09-04 22:34:39', '2021-09-04 22:34:39'),
(233, 'flag-icon flag-icon-us', 'us', '2021-09-04 22:34:39', '2021-09-04 22:34:39'),
(234, 'flag-icon flag-icon-uy', 'uy', '2021-09-04 22:34:39', '2021-09-04 22:34:39'),
(235, 'flag-icon flag-icon-uz', 'uz', '2021-09-04 22:34:39', '2021-09-04 22:34:39'),
(236, 'flag-icon flag-icon-va', 'va', '2021-09-04 22:34:39', '2021-09-04 22:34:39'),
(237, 'flag-icon flag-icon-vc', 'vc', '2021-09-04 22:34:39', '2021-09-04 22:34:39'),
(238, 'flag-icon flag-icon-ve', 've', '2021-09-04 22:34:39', '2021-09-04 22:34:39'),
(239, 'flag-icon flag-icon-vg', 'vg', '2021-09-04 22:34:39', '2021-09-04 22:34:39'),
(240, 'flag-icon flag-icon-vi', 'vi', '2021-09-04 22:34:39', '2021-09-04 22:34:39'),
(241, 'flag-icon flag-icon-vn', 'vn', '2021-09-04 22:34:39', '2021-09-04 22:34:39'),
(242, 'flag-icon flag-icon-vu', 'vu', '2021-09-04 22:34:39', '2021-09-04 22:34:39'),
(243, 'flag-icon flag-icon-wf', 'wf', '2021-09-04 22:34:39', '2021-09-04 22:34:39'),
(244, 'flag-icon flag-icon-ws', 'ws', '2021-09-04 22:34:39', '2021-09-04 22:34:39'),
(245, 'flag-icon flag-icon-ye', 'ye', '2021-09-04 22:34:39', '2021-09-04 22:34:39'),
(246, 'flag-icon flag-icon-yt', 'yt', '2021-09-04 22:34:39', '2021-09-04 22:34:39'),
(247, 'flag-icon flag-icon-za', 'za', '2021-09-04 22:34:39', '2021-09-04 22:34:39'),
(248, 'flag-icon flag-icon-zm', 'zm', '2021-09-04 22:34:39', '2021-09-04 22:34:39'),
(249, 'flag-icon flag-icon-zw', 'zw', '2021-09-04 22:34:39', '2021-09-04 22:34:39');

-- --------------------------------------------------------

--
-- Table structure for table `gallery_images`
--

CREATE TABLE `gallery_images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `disk` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `album_id` bigint(20) UNSIGNED DEFAULT NULL,
  `tab` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_cover` tinyint(1) NOT NULL DEFAULT 0 COMMENT '0 no, 1 yes',
  `original_image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `thumbnail` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `images`
--

CREATE TABLE `images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `disk` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `original_image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `og_image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `thumbnail` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `big_image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `big_image_two` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `medium_image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `medium_image_two` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `medium_image_three` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `small_image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `languages`
--

CREATE TABLE `languages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon_class` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `text_direction` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `languages`
--

INSERT INTO `languages` (`id`, `name`, `code`, `status`, `icon_class`, `text_direction`, `created_at`, `updated_at`) VALUES
(1, 'English', 'en', 'active', 'flag-icon flag-icon-us', 'LTR', '2021-09-04 22:34:39', '2021-12-06 17:22:15');

-- --------------------------------------------------------

--
-- Table structure for table `language_configs`
--

CREATE TABLE `language_configs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `language_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `script` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `native` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `regional` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `language_configs`
--

INSERT INTO `language_configs` (`id`, `language_id`, `name`, `script`, `native`, `regional`, `created_at`, `updated_at`) VALUES
(1, 1, 'English', 'Latn', 'English', 'en_GB', '2021-09-04 22:34:39', '2021-09-04 22:34:39');

-- --------------------------------------------------------

--
-- Table structure for table `ltm_translations`
--

CREATE TABLE `ltm_translations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `locale` varchar(191) COLLATE utf8mb4_bin NOT NULL,
  `group` varchar(191) COLLATE utf8mb4_bin NOT NULL,
  `key` text COLLATE utf8mb4_bin NOT NULL,
  `value` text COLLATE utf8mb4_bin DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Dumping data for table `ltm_translations`
--

INSERT INTO `ltm_translations` (`id`, `status`, `locale`, `group`, `key`, `value`, `created_at`, `updated_at`) VALUES
(1, 1, 'en', 'auth', 'failed', 'These credentials do not match our records.', '2022-10-22 18:29:27', '2022-10-22 18:29:27'),
(2, 1, 'en', 'auth', 'throttle', 'Too many login attempts. Please try again in :seconds seconds.', '2022-10-22 18:29:27', '2022-10-22 18:29:27'),
(3, 1, 'en', 'genders', 'genderType.1', 'Male', '2022-10-22 18:29:27', '2022-10-22 18:29:27'),
(4, 1, 'en', 'genders', 'genderType.2', 'Female', '2022-10-22 18:29:27', '2022-10-22 18:29:27'),
(5, 1, 'en', 'genders', 'genderType.3', 'Other', '2022-10-22 18:29:27', '2022-10-22 18:29:27'),
(6, 1, 'en', 'pagination', 'previous', '&laquo; Previous', '2022-10-22 18:29:27', '2022-10-22 18:29:27'),
(7, 1, 'en', 'pagination', 'next', 'Next &raquo;', '2022-10-22 18:29:27', '2022-10-22 18:29:27'),
(8, 1, 'en', 'passwords', 'reset', 'Your password has been reset!', '2022-10-22 18:29:27', '2022-10-22 18:29:27'),
(9, 1, 'en', 'passwords', 'sent', 'We have e-mailed your password reset link!', '2022-10-22 18:29:27', '2022-10-22 18:29:27'),
(10, 1, 'en', 'passwords', 'token', 'This password reset token is invalid.', '2022-10-22 18:29:27', '2022-10-22 18:29:27'),
(11, 1, 'en', 'passwords', 'user', 'We can\'t find a user with that e-mail address.', '2022-10-22 18:29:27', '2022-10-22 18:29:27'),
(12, 1, 'en', 'validation', 'accepted', 'The :attribute must be accepted.', '2022-10-22 18:29:27', '2022-10-22 18:29:27'),
(13, 1, 'en', 'validation', 'active_url', 'The :attribute is not a valid URL.', '2022-10-22 18:29:27', '2022-10-22 18:29:27'),
(14, 1, 'en', 'validation', 'after', 'The :attribute must be a date after :date.', '2022-10-22 18:29:27', '2022-10-22 18:29:27'),
(15, 1, 'en', 'validation', 'after_or_equal', 'The :attribute must be a date after or equal to :date.', '2022-10-22 18:29:27', '2022-10-22 18:29:27'),
(16, 1, 'en', 'validation', 'alpha', 'The :attribute may only contain letters.', '2022-10-22 18:29:27', '2022-10-22 18:29:27'),
(17, 1, 'en', 'validation', 'alpha_dash', 'The :attribute may only contain letters, numbers, dashes and underscores.', '2022-10-22 18:29:27', '2022-10-22 18:29:27'),
(18, 1, 'en', 'validation', 'alpha_num', 'The :attribute may only contain letters and numbers.', '2022-10-22 18:29:27', '2022-10-22 18:29:27'),
(19, 1, 'en', 'validation', 'array', 'The :attribute must be an array.', '2022-10-22 18:29:27', '2022-10-22 18:29:27'),
(20, 1, 'en', 'validation', 'before', 'The :attribute must be a date before :date.', '2022-10-22 18:29:27', '2022-10-22 18:29:27'),
(21, 1, 'en', 'validation', 'before_or_equal', 'The :attribute must be a date before or equal to :date.', '2022-10-22 18:29:27', '2022-10-22 18:29:27'),
(22, 1, 'en', 'validation', 'between.numeric', 'The :attribute must be between :min and :max.', '2022-10-22 18:29:27', '2022-10-22 18:29:27'),
(23, 1, 'en', 'validation', 'between.file', 'The :attribute must be between :min and :max kilobytes.', '2022-10-22 18:29:27', '2022-10-22 18:29:27'),
(24, 1, 'en', 'validation', 'between.string', 'The :attribute must be between :min and :max characters.', '2022-10-22 18:29:27', '2022-10-22 18:29:27'),
(25, 1, 'en', 'validation', 'between.array', 'The :attribute must have between :min and :max items.', '2022-10-22 18:29:27', '2022-10-22 18:29:27'),
(26, 1, 'en', 'validation', 'boolean', 'The :attribute field must be true or false.', '2022-10-22 18:29:27', '2022-10-22 18:29:27'),
(27, 1, 'en', 'validation', 'confirmed', 'The :attribute confirmation does not match.', '2022-10-22 18:29:27', '2022-10-22 18:29:27'),
(28, 1, 'en', 'validation', 'date', 'The :attribute is not a valid date.', '2022-10-22 18:29:27', '2022-10-22 18:29:27'),
(29, 1, 'en', 'validation', 'date_equals', 'The :attribute must be a date equal to :date.', '2022-10-22 18:29:27', '2022-10-22 18:29:27'),
(30, 1, 'en', 'validation', 'date_format', 'The :attribute does not match the format :format.', '2022-10-22 18:29:27', '2022-10-22 18:29:27'),
(31, 1, 'en', 'validation', 'different', 'The :attribute and :other must be different.', '2022-10-22 18:29:27', '2022-10-22 18:29:27'),
(32, 1, 'en', 'validation', 'digits', 'The :attribute must be :digits digits.', '2022-10-22 18:29:27', '2022-10-22 18:29:27'),
(33, 1, 'en', 'validation', 'digits_between', 'The :attribute must be between :min and :max digits.', '2022-10-22 18:29:27', '2022-10-22 18:29:27'),
(34, 1, 'en', 'validation', 'dimensions', 'The :attribute has invalid image dimensions.', '2022-10-22 18:29:27', '2022-10-22 18:29:27'),
(35, 1, 'en', 'validation', 'distinct', 'The :attribute field has a duplicate value.', '2022-10-22 18:29:27', '2022-10-22 18:29:27'),
(36, 1, 'en', 'validation', 'email', 'The :attribute must be a valid email address.', '2022-10-22 18:29:27', '2022-10-22 18:29:27'),
(37, 1, 'en', 'validation', 'ends_with', 'The :attribute must end with one of the following: :values', '2022-10-22 18:29:27', '2022-10-22 18:29:27'),
(38, 1, 'en', 'validation', 'exists', 'The selected :attribute is invalid.', '2022-10-22 18:29:27', '2022-10-22 18:29:27'),
(39, 1, 'en', 'validation', 'file', 'The :attribute must be a file.', '2022-10-22 18:29:27', '2022-10-22 18:29:27'),
(40, 1, 'en', 'validation', 'filled', 'The :attribute field must have a value.', '2022-10-22 18:29:27', '2022-10-22 18:29:27'),
(41, 1, 'en', 'validation', 'gt.numeric', 'The :attribute must be greater than :value.', '2022-10-22 18:29:27', '2022-10-22 18:29:27'),
(42, 1, 'en', 'validation', 'gt.file', 'The :attribute must be greater than :value kilobytes.', '2022-10-22 18:29:27', '2022-10-22 18:29:27'),
(43, 1, 'en', 'validation', 'gt.string', 'The :attribute must be greater than :value characters.', '2022-10-22 18:29:27', '2022-10-22 18:29:27'),
(44, 1, 'en', 'validation', 'gt.array', 'The :attribute must have more than :value items.', '2022-10-22 18:29:27', '2022-10-22 18:29:27'),
(45, 1, 'en', 'validation', 'gte.numeric', 'The :attribute must be greater than or equal :value.', '2022-10-22 18:29:27', '2022-10-22 18:29:27'),
(46, 1, 'en', 'validation', 'gte.file', 'The :attribute must be greater than or equal :value kilobytes.', '2022-10-22 18:29:27', '2022-10-22 18:29:27'),
(47, 1, 'en', 'validation', 'gte.string', 'The :attribute must be greater than or equal :value characters.', '2022-10-22 18:29:27', '2022-10-22 18:29:27'),
(48, 1, 'en', 'validation', 'gte.array', 'The :attribute must have :value items or more.', '2022-10-22 18:29:27', '2022-10-22 18:29:27'),
(49, 1, 'en', 'validation', 'image', 'The :attribute must be an image.', '2022-10-22 18:29:27', '2022-10-22 18:29:27'),
(50, 1, 'en', 'validation', 'in', 'The selected :attribute is invalid.', '2022-10-22 18:29:27', '2022-10-22 18:29:27'),
(51, 1, 'en', 'validation', 'in_array', 'The :attribute field does not exist in :other.', '2022-10-22 18:29:27', '2022-10-22 18:29:27'),
(52, 1, 'en', 'validation', 'integer', 'The :attribute must be an integer.', '2022-10-22 18:29:27', '2022-10-22 18:29:27'),
(53, 1, 'en', 'validation', 'ip', 'The :attribute must be a valid IP address.', '2022-10-22 18:29:27', '2022-10-22 18:29:27'),
(54, 1, 'en', 'validation', 'ipv4', 'The :attribute must be a valid IPv4 address.', '2022-10-22 18:29:27', '2022-10-22 18:29:27'),
(55, 1, 'en', 'validation', 'ipv6', 'The :attribute must be a valid IPv6 address.', '2022-10-22 18:29:27', '2022-10-22 18:29:27'),
(56, 1, 'en', 'validation', 'json', 'The :attribute must be a valid JSON string.', '2022-10-22 18:29:27', '2022-10-22 18:29:27'),
(57, 1, 'en', 'validation', 'lt.numeric', 'The :attribute must be less than :value.', '2022-10-22 18:29:27', '2022-10-22 18:29:27'),
(58, 1, 'en', 'validation', 'lt.file', 'The :attribute must be less than :value kilobytes.', '2022-10-22 18:29:27', '2022-10-22 18:29:27'),
(59, 1, 'en', 'validation', 'lt.string', 'The :attribute must be less than :value characters.', '2022-10-22 18:29:27', '2022-10-22 18:29:27'),
(60, 1, 'en', 'validation', 'lt.array', 'The :attribute must have less than :value items.', '2022-10-22 18:29:27', '2022-10-22 18:29:27'),
(61, 1, 'en', 'validation', 'lte.numeric', 'The :attribute must be less than or equal :value.', '2022-10-22 18:29:27', '2022-10-22 18:29:27'),
(62, 1, 'en', 'validation', 'lte.file', 'The :attribute must be less than or equal :value kilobytes.', '2022-10-22 18:29:27', '2022-10-22 18:29:27'),
(63, 1, 'en', 'validation', 'lte.string', 'The :attribute must be less than or equal :value characters.', '2022-10-22 18:29:27', '2022-10-22 18:29:27'),
(64, 1, 'en', 'validation', 'lte.array', 'The :attribute must not have more than :value items.', '2022-10-22 18:29:27', '2022-10-22 18:29:27'),
(65, 1, 'en', 'validation', 'max.numeric', 'The :attribute may not be greater than :max.', '2022-10-22 18:29:27', '2022-10-22 18:29:27'),
(66, 1, 'en', 'validation', 'max.file', 'The :attribute may not be greater than :max kilobytes.', '2022-10-22 18:29:27', '2022-10-22 18:29:27'),
(67, 1, 'en', 'validation', 'max.string', 'The :attribute may not be greater than :max characters.', '2022-10-22 18:29:27', '2022-10-22 18:29:27'),
(68, 1, 'en', 'validation', 'max.array', 'The :attribute may not have more than :max items.', '2022-10-22 18:29:27', '2022-10-22 18:29:27'),
(69, 1, 'en', 'validation', 'mimes', 'The :attribute must be a file of type: :values.', '2022-10-22 18:29:27', '2022-10-22 18:29:27'),
(70, 1, 'en', 'validation', 'mimetypes', 'The :attribute must be a file of type: :values.', '2022-10-22 18:29:27', '2022-10-22 18:29:27'),
(71, 1, 'en', 'validation', 'min.numeric', 'The :attribute must be at least :min.', '2022-10-22 18:29:27', '2022-10-22 18:29:27'),
(72, 1, 'en', 'validation', 'min.file', 'The :attribute must be at least :min kilobytes.', '2022-10-22 18:29:27', '2022-10-22 18:29:27'),
(73, 1, 'en', 'validation', 'min.string', 'The :attribute must be at least :min characters.', '2022-10-22 18:29:27', '2022-10-22 18:29:27'),
(74, 1, 'en', 'validation', 'min.array', 'The :attribute must have at least :min items.', '2022-10-22 18:29:27', '2022-10-22 18:29:27'),
(75, 1, 'en', 'validation', 'not_in', 'The selected :attribute is invalid.', '2022-10-22 18:29:27', '2022-10-22 18:29:27'),
(76, 1, 'en', 'validation', 'not_regex', 'The :attribute format is invalid.', '2022-10-22 18:29:27', '2022-10-22 18:29:27'),
(77, 1, 'en', 'validation', 'numeric', 'The :attribute must be a number.', '2022-10-22 18:29:27', '2022-10-22 18:29:27'),
(78, 1, 'en', 'validation', 'present', 'The :attribute field must be present.', '2022-10-22 18:29:27', '2022-10-22 18:29:27'),
(79, 1, 'en', 'validation', 'regex', 'The :attribute format is invalid.', '2022-10-22 18:29:27', '2022-10-22 18:29:27'),
(80, 1, 'en', 'validation', 'required', 'The :attribute field is required.', '2022-10-22 18:29:27', '2022-10-22 18:29:27'),
(81, 1, 'en', 'validation', 'required_if', 'The :attribute field is required when :other is :value.', '2022-10-22 18:29:27', '2022-10-22 18:29:27'),
(82, 1, 'en', 'validation', 'required_unless', 'The :attribute field is required unless :other is in :values.', '2022-10-22 18:29:27', '2022-10-22 18:29:27'),
(83, 1, 'en', 'validation', 'required_with', 'The :attribute field is required when :values is present.', '2022-10-22 18:29:27', '2022-10-22 18:29:27'),
(84, 1, 'en', 'validation', 'required_with_all', 'The :attribute field is required when :values are present.', '2022-10-22 18:29:27', '2022-10-22 18:29:27'),
(85, 1, 'en', 'validation', 'required_without', 'The :attribute field is required when :values is not present.', '2022-10-22 18:29:27', '2022-10-22 18:29:27'),
(86, 1, 'en', 'validation', 'required_without_all', 'The :attribute field is required when none of :values are present.', '2022-10-22 18:29:27', '2022-10-22 18:29:27'),
(87, 1, 'en', 'validation', 'same', 'The :attribute and :other must match.', '2022-10-22 18:29:27', '2022-10-22 18:29:27'),
(88, 1, 'en', 'validation', 'size.numeric', 'The :attribute must be :size.', '2022-10-22 18:29:27', '2022-10-22 18:29:27'),
(89, 1, 'en', 'validation', 'size.file', 'The :attribute must be :size kilobytes.', '2022-10-22 18:29:27', '2022-10-22 18:29:27'),
(90, 1, 'en', 'validation', 'size.string', 'The :attribute must be :size characters.', '2022-10-22 18:29:27', '2022-10-22 18:29:27'),
(91, 1, 'en', 'validation', 'size.array', 'The :attribute must contain :size items.', '2022-10-22 18:29:27', '2022-10-22 18:29:27'),
(92, 1, 'en', 'validation', 'starts_with', 'The :attribute must start with one of the following: :values', '2022-10-22 18:29:27', '2022-10-22 18:29:27'),
(93, 1, 'en', 'validation', 'string', 'The :attribute must be a string.', '2022-10-22 18:29:27', '2022-10-22 18:29:27'),
(94, 1, 'en', 'validation', 'timezone', 'The :attribute must be a valid zone.', '2022-10-22 18:29:27', '2022-10-22 18:29:27'),
(95, 1, 'en', 'validation', 'unique', 'The :attribute has already been taken.', '2022-10-22 18:29:27', '2022-10-22 18:29:27'),
(96, 1, 'en', 'validation', 'uploaded', 'The :attribute failed to upload.', '2022-10-22 18:29:27', '2022-10-22 18:29:27'),
(97, 1, 'en', 'validation', 'url', 'The :attribute format is invalid.', '2022-10-22 18:29:27', '2022-10-22 18:29:27'),
(98, 1, 'en', 'validation', 'uuid', 'The :attribute must be a valid UUID.', '2022-10-22 18:29:27', '2022-10-22 18:29:27'),
(99, 1, 'en', 'validation', 'custom.attribute-name.rule-name', 'custom-message', '2022-10-22 18:29:27', '2022-10-22 18:29:27'),
(100, 1, 'en', '_json', 'app_name', 'NeonX', '2022-10-22 18:29:27', '2022-10-22 18:29:27'),
(101, 1, 'en', '_json', 'app_full_name', 'ONNO Laravel News and magazine script', '2022-10-22 18:29:27', '2022-10-22 18:29:27'),
(102, 1, 'en', '_json', 'login', 'Login', '2022-10-22 18:29:27', '2022-10-22 18:29:27'),
(103, 1, 'en', '_json', 'registration', 'Registration', '2022-10-22 18:29:27', '2022-10-22 18:29:27'),
(104, 1, 'en', '_json', 'back_to', 'Back to', '2022-10-22 18:29:27', '2022-10-22 18:29:27'),
(105, 1, 'en', '_json', 'back_to_home', 'Back to Home', '2022-10-22 18:29:27', '2022-10-22 18:29:27'),
(106, 1, 'en', '_json', 'please_enter_your_user_information', 'Please enter your user information.', '2022-10-22 18:29:27', '2022-10-22 18:29:27'),
(107, 1, 'en', '_json', 'remember_me', 'Remember Me', '2022-10-22 18:29:27', '2022-10-22 18:29:27'),
(108, 1, 'en', '_json', 'create_an_account', 'Create an Account', '2022-10-22 18:29:27', '2022-10-22 18:29:27'),
(109, 1, 'en', '_json', 'forgot_password', 'Forgot Password', '2022-10-22 18:29:27', '2022-10-22 18:29:27'),
(110, 1, 'en', '_json', 'about', 'About', '2022-10-22 18:29:27', '2022-10-22 18:29:27'),
(111, 1, 'en', '_json', 'support', 'Support', '2022-10-22 18:29:27', '2022-10-22 18:29:27'),
(112, 1, 'en', '_json', 'contact_us', 'Contact Us', '2022-10-22 18:29:27', '2022-10-22 18:29:27'),
(113, 1, 'en', '_json', 'notification', 'Notification', '2022-10-22 18:29:27', '2022-10-22 18:29:27'),
(114, 1, 'en', '_json', 'view_all_notifications', 'View all notifications', '2022-10-22 18:29:27', '2022-10-22 18:29:27'),
(115, 1, 'en', '_json', 'available', 'Available', '2022-10-22 18:29:27', '2022-10-22 18:29:27'),
(116, 1, 'en', '_json', 'account', 'Account', '2022-10-22 18:29:27', '2022-10-22 18:29:27'),
(117, 1, 'en', '_json', 'setting', 'Setting', '2022-10-22 18:29:27', '2022-10-22 18:29:27'),
(118, 1, 'en', '_json', 'logout', 'Logout', '2022-10-22 18:29:27', '2022-10-22 18:29:27'),
(119, 1, 'en', '_json', 'dashboard', 'Dashboard', '2022-10-22 18:29:27', '2022-10-22 18:29:27'),
(120, 1, 'en', '_json', 'menu', 'Menu', '2022-10-22 18:29:27', '2022-10-22 18:29:27'),
(121, 1, 'en', '_json', 'home', 'Home', '2022-10-22 18:29:27', '2022-10-22 18:29:27'),
(122, 1, 'en', '_json', 'users', 'Users', '2022-10-22 18:29:27', '2022-10-22 18:29:27'),
(123, 1, 'en', '_json', 'add_user', 'Add User', '2022-10-22 18:29:27', '2022-10-22 18:29:27'),
(124, 1, 'en', '_json', 'roles_&_permissions', 'Roles & Permissions', '2022-10-22 18:29:27', '2022-10-22 18:29:27'),
(125, 1, 'en', '_json', 'roles', 'Roles', '2022-10-22 18:29:27', '2022-10-22 18:29:27'),
(126, 1, 'en', '_json', 'modules', 'Modules', '2022-10-22 18:29:27', '2022-10-22 18:29:27'),
(127, 1, 'en', '_json', 'permission_management', 'Permission Management', '2022-10-22 18:29:27', '2022-10-22 18:29:27'),
(128, 1, 'en', '_json', 'language_settings', 'Language Settings', '2022-10-22 18:29:27', '2022-10-22 18:29:27'),
(129, 1, 'en', '_json', 'add_role', 'Add Role', '2022-10-22 18:29:27', '2022-10-22 18:29:27'),
(130, 1, 'en', '_json', 'name', 'Name', '2022-10-22 18:29:27', '2022-10-22 18:29:27'),
(131, 1, 'en', '_json', 'slug', 'Slug', '2022-10-22 18:29:27', '2022-10-22 18:29:27'),
(132, 1, 'en', '_json', 'permissions', 'Permissions', '2022-10-22 18:29:27', '2022-10-22 18:29:27'),
(133, 1, 'en', '_json', 'module', 'Module', '2022-10-22 18:29:27', '2022-10-22 18:29:27'),
(134, 1, 'en', '_json', 'read', 'Read', '2022-10-22 18:29:27', '2022-10-22 18:29:27'),
(135, 1, 'en', '_json', 'write', 'Write', '2022-10-22 18:29:27', '2022-10-22 18:29:27'),
(136, 1, 'en', '_json', 'delete', 'Delete', '2022-10-22 18:29:27', '2022-10-22 18:29:27'),
(137, 1, 'en', '_json', 'first_name', 'First Name', '2022-10-22 18:29:27', '2022-10-22 18:29:27'),
(138, 1, 'en', '_json', 'last_name', 'Last Name', '2022-10-22 18:29:27', '2022-10-22 18:29:27'),
(139, 1, 'en', '_json', 'email', 'Email', '2022-10-22 18:29:27', '2022-10-22 18:29:27'),
(140, 1, 'en', '_json', 'role', 'Role', '2022-10-22 18:29:27', '2022-10-22 18:29:27'),
(141, 1, 'en', '_json', 'password', 'Password', '2022-10-22 18:29:27', '2022-10-22 18:29:27'),
(142, 1, 'en', '_json', 'confirm_password', 'Confirm Password', '2022-10-22 18:29:27', '2022-10-22 18:29:27'),
(143, 1, 'en', '_json', 'image', 'Image', '2022-10-22 18:29:27', '2022-10-22 18:29:27'),
(144, 1, 'en', '_json', 'administrators', 'Administrators', '2022-10-22 18:29:27', '2022-10-22 18:29:27'),
(145, 1, 'en', '_json', 'last_login', 'Last Login', '2022-10-22 18:29:27', '2022-10-22 18:29:27'),
(146, 1, 'en', '_json', 'options', 'Options', '2022-10-22 18:29:27', '2022-10-22 18:29:27'),
(147, 1, 'en', '_json', 'showing', 'Showing', '2022-10-22 18:29:27', '2022-10-22 18:29:27'),
(148, 1, 'en', '_json', 'to', 'To', '2022-10-22 18:29:27', '2022-10-22 18:29:27'),
(149, 1, 'en', '_json', 'of', 'Of', '2022-10-22 18:29:27', '2022-10-22 18:29:27'),
(150, 1, 'en', '_json', 'entries', 'Entries', '2022-10-22 18:29:27', '2022-10-22 18:29:27'),
(151, 1, 'en', '_json', 'update_role_and_permission', 'Update Role And Permission', '2022-10-22 18:29:27', '2022-10-22 18:29:27'),
(152, 1, 'en', '_json', 'role_name', 'Role Name', '2022-10-22 18:29:27', '2022-10-22 18:29:27'),
(153, 1, 'en', '_json', 'save_changes', 'Save Changes', '2022-10-22 18:29:27', '2022-10-22 18:29:27'),
(154, 1, 'en', '_json', 'add_permission', 'Add permission', '2022-10-22 18:29:27', '2022-10-22 18:29:27'),
(155, 1, 'en', '_json', 'description', 'Description', '2022-10-22 18:29:27', '2022-10-22 18:29:27'),
(156, 1, 'en', '_json', 'created', 'Created', '2022-10-22 18:29:27', '2022-10-22 18:29:27'),
(157, 1, 'en', '_json', 'edit', 'Edit', '2022-10-22 18:29:27', '2022-10-22 18:29:27'),
(158, 1, 'en', '_json', 'profile', 'Profile', '2022-10-22 18:29:27', '2022-10-22 18:29:27'),
(159, 1, 'en', '_json', 'change_password', 'Change Password', '2022-10-22 18:29:27', '2022-10-22 18:29:27'),
(160, 1, 'en', '_json', 'edit_profile', 'Update Profile', '2022-10-22 18:29:27', '2022-10-22 18:29:27'),
(161, 1, 'en', '_json', 'avatar', 'Avatar', '2022-10-22 18:29:27', '2022-10-22 18:29:27'),
(162, 1, 'en', '_json', 'status', 'Status', '2022-10-22 18:29:27', '2022-10-22 18:29:27'),
(163, 1, 'en', '_json', 'join_date', 'Join Date', '2022-10-22 18:29:27', '2022-10-22 18:29:27'),
(164, 1, 'en', '_json', 'confirmed', 'Confirmed', '2022-10-22 18:29:27', '2022-10-22 18:29:27'),
(165, 1, 'en', '_json', 'unconfirmed', 'Unconfirmed', '2022-10-22 18:29:27', '2022-10-22 18:29:27'),
(166, 1, 'en', '_json', 'inactive', 'Inactive', '2022-10-22 18:29:27', '2022-10-22 18:29:27'),
(167, 1, 'en', '_json', 'active', 'Active', '2022-10-22 18:29:27', '2022-10-22 18:29:27'),
(168, 1, 'en', '_json', 'banned', 'Banned', '2022-10-22 18:29:27', '2022-10-22 18:29:27'),
(169, 1, 'en', '_json', 'change_role', 'Change Role', '2022-10-22 18:29:27', '2022-10-22 18:29:27'),
(170, 1, 'en', '_json', 'ban_user', 'Ban User', '2022-10-22 18:29:27', '2022-10-22 18:29:27'),
(171, 1, 'en', '_json', 'unban_user', 'Unban User', '2022-10-22 18:29:27', '2022-10-22 18:29:27'),
(172, 1, 'en', '_json', 'close', 'Close', '2022-10-22 18:29:27', '2022-10-22 18:29:27'),
(173, 1, 'en', '_json', 'save', 'Save', '2022-10-22 18:29:27', '2022-10-22 18:29:27'),
(174, 1, 'en', '_json', 'old_password', 'Old Password', '2022-10-22 18:29:27', '2022-10-22 18:29:27'),
(175, 1, 'en', '_json', 'new_password', 'New Password', '2022-10-22 18:29:27', '2022-10-22 18:29:27'),
(176, 1, 'en', '_json', 'update', 'Update', '2022-10-22 18:29:27', '2022-10-22 18:29:27'),
(177, 1, 'en', '_json', 'default_language', 'Default Language', '2022-10-22 18:29:27', '2022-10-22 18:29:27'),
(178, 1, 'en', '_json', 'language', 'Language', '2022-10-22 18:29:27', '2022-10-22 18:29:27'),
(179, 1, 'en', '_json', 'add_language', 'Add Language', '2022-10-22 18:29:27', '2022-10-22 18:29:27'),
(180, 1, 'en', '_json', 'language_name', 'Language Name', '2022-10-22 18:29:27', '2022-10-22 18:29:27'),
(181, 1, 'en', '_json', 'short_form', 'Short Form', '2022-10-22 18:29:27', '2022-10-22 18:29:27'),
(182, 1, 'en', '_json', 'script', 'Script', '2022-10-22 18:29:27', '2022-10-22 18:29:27'),
(183, 1, 'en', '_json', 'native', 'Native', '2022-10-22 18:29:27', '2022-10-22 18:29:27'),
(184, 1, 'en', '_json', 'regional', 'Regional', '2022-10-22 18:29:27', '2022-10-22 18:29:27'),
(185, 1, 'en', '_json', 'text_direction', 'Text Direction', '2022-10-22 18:29:27', '2022-10-22 18:29:27'),
(186, 1, 'en', '_json', 'ltr', 'LTR', '2022-10-22 18:29:27', '2022-10-22 18:29:27'),
(187, 1, 'en', '_json', 'rtl', 'RTL', '2022-10-22 18:29:27', '2022-10-22 18:29:27'),
(188, 1, 'en', '_json', 'languages', 'Languages', '2022-10-22 18:29:27', '2022-10-22 18:29:27'),
(189, 1, 'en', '_json', 'code', 'Code', '2022-10-22 18:29:27', '2022-10-22 18:29:27'),
(190, 1, 'en', '_json', 'edit_phrase', 'Edit Phrase', '2022-10-22 18:29:27', '2022-10-22 18:29:27'),
(191, 1, 'en', '_json', 'plain_text', 'Plain Text', '2022-10-22 18:29:27', '2022-10-22 18:29:27'),
(192, 1, 'en', '_json', 'translated_text', 'Translated Text', '2022-10-22 18:29:27', '2022-10-22 18:29:27'),
(193, 1, 'en', '_json', 'add', 'Add', '2022-10-22 18:29:27', '2022-10-22 18:29:27'),
(194, 1, 'en', '_json', 'phrase', 'Phrase', '2022-10-22 18:29:27', '2022-10-22 18:29:27'),
(195, 1, 'en', '_json', 'translated_language', 'Translated Language', '2022-10-22 18:29:27', '2022-10-22 18:29:27'),
(196, 1, 'en', '_json', 'flag', 'Flag', '2022-10-22 18:29:27', '2022-10-22 18:29:27'),
(197, 1, 'en', '_json', 'select_option', 'Select option', '2022-10-22 18:29:27', '2022-10-22 18:29:27'),
(198, 1, 'en', '_json', 'update_languages', 'Update Language', '2022-10-22 18:29:27', '2022-10-22 18:29:27'),
(199, 1, 'en', '_json', 'gallery', 'Gallery', '2022-10-22 18:29:27', '2022-10-22 18:29:27'),
(200, 1, 'en', '_json', 'password_confirmation', 'Password Confirmation', '2022-10-22 18:29:27', '2022-10-22 18:29:27'),
(201, 1, 'en', '_json', 'update_language', 'Update Language', '2022-10-22 18:29:27', '2022-10-22 18:29:27'),
(202, 1, 'en', '_json', 'add_image', 'Add Image', '2022-10-22 18:29:27', '2022-10-22 18:29:27'),
(203, 1, 'en', '_json', 'save_change', 'Save Change', '2022-10-22 18:29:27', '2022-10-22 18:29:27'),
(204, 1, 'en', '_json', 'general_settings', 'General Settings', '2022-10-22 18:29:27', '2022-10-22 18:29:27'),
(205, 1, 'en', '_json', 'company_informations', 'Company Informations', '2022-10-22 18:29:27', '2022-10-22 18:29:27'),
(206, 1, 'en', '_json', 'social_media_settings', 'Social Media Settings', '2022-10-22 18:29:27', '2022-10-22 18:29:27'),
(207, 1, 'en', '_json', 'settings', 'Settings', '2022-10-22 18:29:27', '2022-10-22 18:29:27'),
(208, 1, 'en', '_json', 'email_settings', 'Email Settings', '2022-10-22 18:29:27', '2022-10-22 18:29:27'),
(209, 1, 'en', '_json', 'timezone', 'Timezone', '2022-10-22 18:29:27', '2022-10-22 18:29:27'),
(210, 1, 'en', '_json', 'application_name', 'Application Name', '2022-10-22 18:29:27', '2022-10-22 18:29:27'),
(211, 1, 'en', '_json', 'copyright', 'Copyright', '2022-10-22 18:29:27', '2022-10-22 18:29:27'),
(212, 1, 'en', '_json', 'copyright_text', 'Copyright Text', '2022-10-22 18:29:27', '2022-10-22 18:29:27'),
(213, 1, 'en', '_json', 'address', 'Address', '2022-10-22 18:29:27', '2022-10-22 18:29:27'),
(214, 1, 'en', '_json', 'phone', 'Phone', '2022-10-22 18:29:27', '2022-10-22 18:29:27'),
(215, 1, 'en', '_json', 'facebook_url', 'Facebook URL', '2022-10-22 18:29:27', '2022-10-22 18:29:27'),
(216, 1, 'en', '_json', 'twitter_url', 'Twitter URL', '2022-10-22 18:29:27', '2022-10-22 18:29:27'),
(217, 1, 'en', '_json', 'google_url', 'Google URL', '2022-10-22 18:29:27', '2022-10-22 18:29:27'),
(218, 1, 'en', '_json', 'instagram_url', 'Instagram URL', '2022-10-22 18:29:27', '2022-10-22 18:29:27'),
(219, 1, 'en', '_json', 'pinterest_url', 'Pinterest URL', '2022-10-22 18:29:27', '2022-10-22 18:29:27'),
(220, 1, 'en', '_json', 'linkedin_url', 'Linkedin URL', '2022-10-22 18:29:27', '2022-10-22 18:29:27'),
(221, 1, 'en', '_json', 'youtube_url', 'Youtube URL', '2022-10-22 18:29:27', '2022-10-22 18:29:27'),
(222, 1, 'en', '_json', 'mail_driver', 'Mail driver', '2022-10-22 18:29:27', '2022-10-22 18:29:27'),
(223, 1, 'en', '_json', 'mail_host', 'Mail host', '2022-10-22 18:29:27', '2022-10-22 18:29:27'),
(224, 1, 'en', '_json', 'mail_port', 'Mail port', '2022-10-22 18:29:27', '2022-10-22 18:29:27'),
(225, 1, 'en', '_json', 'mail_address', 'Mail address', '2022-10-22 18:29:27', '2022-10-22 18:29:27'),
(226, 1, 'en', '_json', 'mail_username', 'Mail username', '2022-10-22 18:29:27', '2022-10-22 18:29:27'),
(227, 1, 'en', '_json', 'mail_password', 'Mail password', '2022-10-22 18:29:27', '2022-10-22 18:29:27'),
(228, 1, 'en', '_json', 'mail_encryption', 'Mail encryption', '2022-10-22 18:29:27', '2022-10-22 18:29:27'),
(229, 1, 'en', '_json', 'path', 'Path', '2022-10-22 18:29:27', '2022-10-22 18:29:27'),
(230, 1, 'en', '_json', 'add_logo', 'Add Logo', '2022-10-22 18:29:27', '2022-10-22 18:29:27'),
(231, 1, 'en', '_json', 'add_favicon', 'Add Favicon', '2022-10-22 18:29:27', '2022-10-22 18:29:27'),
(232, 1, 'en', '_json', 'zip_code', 'Zip Code', '2022-10-22 18:29:27', '2022-10-22 18:29:27'),
(233, 1, 'en', '_json', 'city', 'City', '2022-10-22 18:29:27', '2022-10-22 18:29:27'),
(234, 1, 'en', '_json', 'state', 'State', '2022-10-22 18:29:27', '2022-10-22 18:29:27'),
(235, 1, 'en', '_json', 'country', 'Country', '2022-10-22 18:29:27', '2022-10-22 18:29:27'),
(236, 1, 'en', '_json', 'website', 'Website', '2022-10-22 18:29:27', '2022-10-22 18:29:27'),
(237, 1, 'en', '_json', 'company_registration', 'Company Registration', '2022-10-22 18:29:27', '2022-10-22 18:29:27'),
(238, 1, 'en', '_json', 'tax_number', 'Tax Number', '2022-10-22 18:29:27', '2022-10-22 18:29:27'),
(239, 1, 'en', '_json', 'email_template', 'Email Template', '2022-10-22 18:29:27', '2022-10-22 18:29:27'),
(240, 1, 'en', '_json', 'templates', 'Templates', '2022-10-22 18:29:27', '2022-10-22 18:29:27'),
(241, 1, 'en', '_json', 'email_group', 'Email Group', '2022-10-22 18:29:27', '2022-10-22 18:29:27'),
(242, 1, 'en', '_json', 'subject', 'Subject', '2022-10-22 18:29:27', '2022-10-22 18:29:27'),
(243, 1, 'en', '_json', 'template_body', 'Template body', '2022-10-22 18:29:27', '2022-10-22 18:29:27'),
(244, 1, 'en', '_json', 'send_code', 'Send code', '2022-10-22 18:29:27', '2022-10-22 18:29:27'),
(245, 1, 'en', '_json', 'reset_password', 'Reset password', '2022-10-22 18:29:27', '2022-10-22 18:29:27'),
(246, 1, 'en', '_json', 'update_template', 'Update template', '2022-10-22 18:29:27', '2022-10-22 18:29:27'),
(247, 1, 'en', '_json', 'default_language_changed', 'Default language changed', '2022-10-22 18:29:27', '2022-10-22 18:29:27'),
(248, 1, 'en', '_json', 'new_language_added', 'New language successfully added.', '2022-10-22 18:29:27', '2022-10-22 18:29:27'),
(249, 1, 'en', '_json', 'successfully_updated', 'Successfully updated.', '2022-10-22 18:29:27', '2022-10-22 18:29:27'),
(250, 1, 'en', '_json', 'successfully_added', 'Successfully added.', '2022-10-22 18:29:27', '2022-10-22 18:29:27'),
(251, 1, 'en', '_json', 'reset_code_is_send_to_mail', 'Reset Code is send to your mail', '2022-10-22 18:29:27', '2022-10-22 18:29:27'),
(252, 1, 'en', '_json', 'you_can_login_with_new_password', 'You can login with  new password', '2022-10-22 18:29:27', '2022-10-22 18:29:27'),
(253, 1, 'en', '_json', 'email_password_mismatch', 'Email & Password Mismatch', '2022-10-22 18:29:27', '2022-10-22 18:29:27'),
(254, 1, 'en', '_json', 'you_are_banned', 'You are banned. Please try after few moment.', '2022-10-22 18:29:27', '2022-10-22 18:29:27'),
(255, 1, 'en', '_json', 'your_account_is_not_activated', 'Your account is not activated.', '2022-10-22 18:29:27', '2022-10-22 18:29:27'),
(256, 1, 'en', '_json', 'your_account_activation_successfully', 'your account activation successfully', '2022-10-22 18:29:27', '2022-10-22 18:29:27'),
(257, 1, 'en', '_json', 'check_your_mail_for_active', 'Check your mail for activating your account.', '2022-10-22 18:29:27', '2022-10-22 18:29:27'),
(258, 1, 'en', '_json', 'new_role_successfully_created', 'New role successfully created.', '2022-10-22 18:29:27', '2022-10-22 18:29:27'),
(259, 1, 'en', '_json', 'successfully_update_role', 'Successfully update user role.', '2022-10-22 18:29:27', '2022-10-22 18:29:27'),
(260, 1, 'en', '_json', 'ban_this_user', 'Ban this user', '2022-10-22 18:29:27', '2022-10-22 18:29:27'),
(261, 1, 'en', '_json', 'unban_this_user', 'Reactive this user. Please Check mail for active account.', '2022-10-22 18:29:27', '2022-10-22 18:29:27'),
(262, 1, 'en', '_json', 'permission_successfully_updated', 'Permission successfully updated.', '2022-10-22 18:29:27', '2022-10-22 18:29:27'),
(263, 1, 'en', '_json', 'check_user_mail_for_active_this_account', 'Check your mail for active this account.', '2022-10-22 18:29:27', '2022-10-22 18:29:27'),
(264, 1, 'en', '_json', 'the_email_has_already_been_taken', 'The email has already been taken', '2022-10-22 18:29:27', '2022-10-22 18:29:27'),
(265, 1, 'en', '_json', 'please_check_again', 'Please check again.', '2022-10-22 18:29:27', '2022-10-22 18:29:27'),
(266, 1, 'en', '_json', 'successfully_deleted', 'Successfully Deleted', '2022-10-22 18:29:27', '2022-10-22 18:29:27'),
(267, 1, 'en', '_json', 'not_found', 'Not found', '2022-10-22 18:29:27', '2022-10-22 18:29:27'),
(268, 1, 'en', '_json', 'you_can_not_delete_this', 'You can not delete this.', '2022-10-22 18:29:27', '2022-10-22 18:29:27'),
(269, 1, 'en', '_json', 'are_you_sure?', 'Are you sure?', '2022-10-22 18:29:27', '2022-10-22 18:29:27'),
(270, 1, 'en', '_json', 'it_will_be_deleted_permanently', 'It will be deleted permanently!', '2022-10-22 18:29:27', '2022-10-22 18:29:27'),
(271, 1, 'en', '_json', 'cancel', 'Cancel', '2022-10-22 18:29:27', '2022-10-22 18:29:27'),
(272, 1, 'en', '_json', 'deleted', 'Deleted', '2022-10-22 18:29:27', '2022-10-22 18:29:27'),
(273, 1, 'en', '_json', 'something_went_wrong_with_ajax', 'Something went wrong with ajax !', '2022-10-22 18:29:27', '2022-10-22 18:29:27'),
(274, 1, 'en', '_json', 'group', 'Group', '2022-10-22 18:29:27', '2022-10-22 18:29:27'),
(275, 1, 'en', '_json', 'default_messages', 'Messages', '2022-10-22 18:29:27', '2022-10-22 18:29:27'),
(276, 1, 'en', '_json', 'add_page', 'Add Page', '2022-10-22 18:29:27', '2022-10-22 18:29:27'),
(277, 1, 'en', '_json', 'pages', 'Pages', '2022-10-22 18:29:27', '2022-10-22 18:29:27'),
(278, 1, 'en', '_json', 'title', 'Title', '2022-10-22 18:29:27', '2022-10-22 18:29:27'),
(279, 1, 'en', '_json', 'slug_message', 'Slug Message', '2022-10-22 18:29:27', '2022-10-22 18:29:27'),
(280, 1, 'en', '_json', 'template', 'Template', '2022-10-22 18:29:27', '2022-10-22 18:29:27'),
(281, 1, 'en', '_json', 'visibility', 'Visibility', '2022-10-22 18:29:27', '2022-10-22 18:29:27'),
(282, 1, 'en', '_json', 'show', 'Show', '2022-10-22 18:29:27', '2022-10-22 18:29:27'),
(283, 1, 'en', '_json', 'hide', 'Hide', '2022-10-22 18:29:27', '2022-10-22 18:29:27'),
(284, 1, 'en', '_json', 'show_only_to_registered_users', 'Show only to registered users', '2022-10-22 18:29:27', '2022-10-22 18:29:27'),
(285, 1, 'en', '_json', 'successfully_update_menu_arrangement', 'Successfully update menu arrangement.', '2022-10-22 18:29:27', '2022-10-22 18:29:27'),
(286, 1, 'en', '_json', 'yes', 'Yes', '2022-10-22 18:29:27', '2022-10-22 18:29:27'),
(287, 1, 'en', '_json', 'no', 'No', '2022-10-22 18:29:27', '2022-10-22 18:29:27'),
(288, 1, 'en', '_json', 'show_title', 'Show Title', '2022-10-22 18:29:27', '2022-10-22 18:29:27'),
(289, 1, 'en', '_json', 'show_breadcrumb', 'Show Breadcrumb', '2022-10-22 18:29:27', '2022-10-22 18:29:27'),
(290, 1, 'en', '_json', 'show_right_column', 'Show Right Column', '2022-10-22 18:29:27', '2022-10-22 18:29:27'),
(291, 1, 'en', '_json', 'show_on_menu', 'Show On Menu', '2022-10-22 18:29:27', '2022-10-22 18:29:27'),
(292, 1, 'en', '_json', 'top_menu', 'Top Menu', '2022-10-22 18:29:27', '2022-10-22 18:29:27'),
(293, 1, 'en', '_json', 'main_menu', 'Main Menu', '2022-10-22 18:29:27', '2022-10-22 18:29:27'),
(294, 1, 'en', '_json', 'footer', 'Footer', '2022-10-22 18:29:27', '2022-10-22 18:29:27'),
(295, 1, 'en', '_json', 'do_not_add_to_menu', 'Do not add to menu', '2022-10-22 18:29:27', '2022-10-22 18:29:27'),
(296, 1, 'en', '_json', 'meta_tag', 'Meta Tag', '2022-10-22 18:29:27', '2022-10-22 18:29:27'),
(297, 1, 'en', '_json', 'keywords', 'Keywords', '2022-10-22 18:29:27', '2022-10-22 18:29:27'),
(298, 1, 'en', '_json', 'location', 'Location', '2022-10-22 18:29:27', '2022-10-22 18:29:27'),
(299, 1, 'en', '_json', 'date_added', 'Date Added', '2022-10-22 18:29:27', '2022-10-22 18:29:27'),
(300, 1, 'en', '_json', 'update_page', 'Update Page', '2022-10-22 18:29:27', '2022-10-22 18:29:27'),
(301, 1, 'en', '_json', 'menu_order', 'Menu order', '2022-10-22 18:29:27', '2022-10-22 18:29:27'),
(302, 1, 'en', '_json', 'back_to_pages', 'Back to pages', '2022-10-22 18:29:27', '2022-10-22 18:29:27'),
(303, 1, 'en', '_json', 'feature_image', 'Feature image', '2022-10-22 18:29:27', '2022-10-22 18:29:27'),
(304, 1, 'en', '_json', 'page_layout', 'Layout', '2022-10-22 18:29:27', '2022-10-22 18:29:27'),
(305, 1, 'en', '_json', 'seo', 'SEO', '2022-10-22 18:29:27', '2022-10-22 18:29:27'),
(306, 1, 'en', '_json', 'page_content', 'Content', '2022-10-22 18:29:27', '2022-10-22 18:29:27'),
(307, 1, 'en', '_json', 'remark', 'Remark', '2022-10-22 18:29:27', '2022-10-22 18:29:27'),
(308, 1, 'en', '_json', 'add_menu', 'Add menu', '2022-10-22 18:29:27', '2022-10-22 18:29:27'),
(309, 1, 'en', '_json', 'edit_menu', 'Edit menu', '2022-10-22 18:29:27', '2022-10-22 18:29:27'),
(310, 1, 'en', '_json', 'add_menu_item', 'Add menu item', '2022-10-22 18:29:27', '2022-10-22 18:29:27'),
(311, 1, 'en', '_json', 'label', 'Label', '2022-10-22 18:29:27', '2022-10-22 18:29:27'),
(312, 1, 'en', '_json', 'order', 'Order', '2022-10-22 18:29:27', '2022-10-22 18:29:27'),
(313, 1, 'en', '_json', 'parent', 'Parent', '2022-10-22 18:29:27', '2022-10-22 18:29:27'),
(314, 1, 'en', '_json', 'custom', 'Custom', '2022-10-22 18:29:27', '2022-10-22 18:29:27'),
(315, 1, 'en', '_json', 'page', 'Page', '2022-10-22 18:29:27', '2022-10-22 18:29:27'),
(316, 1, 'en', '_json', 'post', 'Post', '2022-10-22 18:29:27', '2022-10-22 18:29:27'),
(317, 1, 'en', '_json', 'source', 'Source', '2022-10-22 18:29:27', '2022-10-22 18:29:27'),
(318, 1, 'en', '_json', 'url', 'URL', '2022-10-22 18:29:27', '2022-10-22 18:29:27'),
(319, 1, 'en', '_json', 'post_id', 'Post id', '2022-10-22 18:29:27', '2022-10-22 18:29:27'),
(320, 1, 'en', '_json', 'page_id', 'Page id', '2022-10-22 18:29:27', '2022-10-22 18:29:27'),
(321, 1, 'en', '_json', 'menu_item', 'Menu item', '2022-10-22 18:29:27', '2022-10-22 18:29:27'),
(322, 1, 'en', '_json', 'update_menu_item', 'Update menu item', '2022-10-22 18:29:27', '2022-10-22 18:29:27'),
(323, 1, 'en', '_json', 'back_to_menu_item', 'Back to menu item', '2022-10-22 18:29:27', '2022-10-22 18:29:27'),
(324, 1, 'en', '_json', 'menu_location', 'Menu Location', '2022-10-22 18:29:27', '2022-10-22 18:29:27'),
(325, 1, 'en', '_json', 'create_new_menu', 'Create new menu', '2022-10-22 18:29:27', '2022-10-22 18:29:27'),
(326, 1, 'en', '_json', 'create', 'Create', '2022-10-22 18:29:27', '2022-10-22 18:29:27'),
(327, 1, 'en', '_json', 'choice_page', 'Choice page', '2022-10-22 18:29:27', '2022-10-22 18:29:27'),
(328, 1, 'en', '_json', 'posts', 'Posts', '2022-10-22 18:29:27', '2022-10-22 18:29:27'),
(329, 1, 'en', '_json', 'appearance', 'Appearance', '2022-10-22 18:29:27', '2022-10-22 18:29:27'),
(330, 1, 'en', '_json', 'theme', 'Theme', '2022-10-22 18:29:27', '2022-10-22 18:29:27'),
(331, 1, 'en', '_json', 'delete_menu_item', 'Delete menu item?', '2022-10-22 18:29:27', '2022-10-22 18:29:27'),
(332, 1, 'en', '_json', 'select_menu', 'Select menu', '2022-10-22 18:29:27', '2022-10-22 18:29:27'),
(333, 1, 'en', '_json', 'delete_this_menu', 'Delete this menu?', '2022-10-22 18:29:27', '2022-10-22 18:29:27'),
(334, 1, 'en', '_json', 'drag_drop_menu_item_for_rearrange', 'Drag & Drop menu item for rearrange.', '2022-10-22 18:29:27', '2022-10-22 18:29:27'),
(335, 1, 'en', '_json', 'open_in_new_teb', 'Open in new teb', '2022-10-22 18:29:27', '2022-10-22 18:29:27'),
(336, 1, 'en', '_json', 'select_language', 'Select Language', '2022-10-22 18:29:27', '2022-10-22 18:29:27'),
(337, 1, 'en', '_json', 'category_name', 'Category name', '2022-10-22 18:29:27', '2022-10-22 18:29:27'),
(338, 1, 'en', '_json', 'show_on_homepage', 'Show on homepage', '2022-10-22 18:29:27', '2022-10-22 18:29:27'),
(339, 1, 'en', '_json', 'category_block_style', 'Category block style', '2022-10-22 18:29:27', '2022-10-22 18:29:27'),
(340, 1, 'en', '_json', 'add_category', 'Add Category', '2022-10-22 18:29:27', '2022-10-22 18:29:27'),
(341, 1, 'en', '_json', 'update_category', 'Update Category', '2022-10-22 18:29:27', '2022-10-22 18:29:27'),
(342, 1, 'en', '_json', 'add_sub_category', 'Add sub category', '2022-10-22 18:29:27', '2022-10-22 18:29:27'),
(343, 1, 'en', '_json', 'parent_category', 'Parent category', '2022-10-22 18:29:27', '2022-10-22 18:29:27'),
(344, 1, 'en', '_json', 'sub_category_name', 'Sub category name', '2022-10-22 18:29:27', '2022-10-22 18:29:27'),
(345, 1, 'en', '_json', 'update_sub_category', 'Update sub category', '2022-10-22 18:29:27', '2022-10-22 18:29:27'),
(346, 1, 'en', '_json', 'categories', 'Categories', '2022-10-22 18:29:27', '2022-10-22 18:29:27'),
(347, 1, 'en', '_json', 'sub_categories', 'Sub Categories', '2022-10-22 18:29:27', '2022-10-22 18:29:27'),
(348, 1, 'en', '_json', 'select_category', 'Select Category', '2022-10-22 18:29:27', '2022-10-22 18:29:27'),
(349, 1, 'en', '_json', 'select_sub_category', 'Select Sub Category', '2022-10-22 18:29:27', '2022-10-22 18:29:27'),
(350, 1, 'en', '_json', 'add_post', 'Add post', '2022-10-22 18:29:27', '2022-10-22 18:29:27'),
(351, 1, 'en', '_json', 'posts_details', 'Posts details', '2022-10-22 18:29:27', '2022-10-22 18:29:27'),
(352, 1, 'en', '_json', 'content', 'Content', '2022-10-22 18:29:27', '2022-10-22 18:29:27'),
(353, 1, 'en', '_json', 'add_to_featured', 'Add to featured', '2022-10-22 18:29:27', '2022-10-22 18:29:27'),
(354, 1, 'en', '_json', 'add_to_breaking', 'Add to breaking', '2022-10-22 18:29:27', '2022-10-22 18:29:27'),
(355, 1, 'en', '_json', 'add_to_slider', 'Add to slider', '2022-10-22 18:29:27', '2022-10-22 18:29:27'),
(356, 1, 'en', '_json', 'add_to_recommended', 'Add to recommended', '2022-10-22 18:29:27', '2022-10-22 18:29:27'),
(357, 1, 'en', '_json', 'show_only_to_authenticate_users', 'Show only to authenticated users', '2022-10-22 18:29:27', '2022-10-22 18:29:27'),
(358, 1, 'en', '_json', 'seo_details', 'SEO Details', '2022-10-22 18:29:27', '2022-10-22 18:29:27'),
(359, 1, 'en', '_json', 'tags', 'Tags', '2022-10-22 18:29:27', '2022-10-22 18:29:27'),
(360, 1, 'en', '_json', 'sub_category', 'Sub Category', '2022-10-22 18:29:27', '2022-10-22 18:29:27'),
(361, 1, 'en', '_json', 'send_post_to_newsletter', 'Send post to newsletter', '2022-10-22 18:29:27', '2022-10-22 18:29:27'),
(362, 1, 'en', '_json', 'send_notification_subscribers', 'Send notification to subscribers', '2022-10-22 18:29:27', '2022-10-22 18:29:27'),
(363, 1, 'en', '_json', 'publish', 'Publish', '2022-10-22 18:29:27', '2022-10-22 18:29:27'),
(364, 1, 'en', '_json', 'published', 'Published', '2022-10-22 18:29:27', '2022-10-22 18:29:27'),
(365, 1, 'en', '_json', 'create_post', 'Create post', '2022-10-22 18:29:27', '2022-10-22 18:29:27'),
(366, 1, 'en', '_json', 'category', 'Category', '2022-10-22 18:29:27', '2022-10-22 18:29:27'),
(367, 1, 'en', '_json', 'draft', 'Draft', '2022-10-22 18:29:27', '2022-10-22 18:29:27'),
(368, 1, 'en', '_json', 'scheduled', 'Scheduled', '2022-10-22 18:29:27', '2022-10-22 18:29:27'),
(369, 1, 'en', '_json', 'schedule_date', 'Schedule Date', '2022-10-22 18:29:27', '2022-10-22 18:29:27'),
(370, 1, 'en', '_json', 'post_type', 'Post Type', '2022-10-22 18:29:27', '2022-10-22 18:29:27'),
(371, 1, 'en', '_json', 'post_by', 'Post By', '2022-10-22 18:29:27', '2022-10-22 18:29:27'),
(372, 1, 'en', '_json', 'hit', 'Hit', '2022-10-22 18:29:27', '2022-10-22 18:29:27'),
(373, 1, 'en', '_json', 'added_date', 'Added date', '2022-10-22 18:29:27', '2022-10-22 18:29:27'),
(374, 1, 'en', '_json', 'breaking', 'Breaking', '2022-10-22 18:29:27', '2022-10-22 18:29:27'),
(375, 1, 'en', '_json', 'featured', 'Featured', '2022-10-22 18:29:27', '2022-10-22 18:29:27'),
(376, 1, 'en', '_json', 'recommended', 'Recommended', '2022-10-22 18:29:27', '2022-10-22 18:29:27'),
(377, 1, 'en', '_json', 'slider', 'Slider', '2022-10-22 18:29:27', '2022-10-22 18:29:27'),
(378, 1, 'en', '_json', 'view', 'View', '2022-10-22 18:29:27', '2022-10-22 18:29:27'),
(379, 1, 'en', '_json', 'breaking_posts', 'Breaking Posts', '2022-10-22 18:29:27', '2022-10-22 18:29:27'),
(380, 1, 'en', '_json', 'featured_posts', 'Featured Posts', '2022-10-22 18:29:27', '2022-10-22 18:29:27'),
(381, 1, 'en', '_json', 'pending_posts', 'Pending Posts', '2022-10-22 18:29:27', '2022-10-22 18:29:27'),
(382, 1, 'en', '_json', 'recommended_posts', 'Recommended Posts', '2022-10-22 18:29:27', '2022-10-22 18:29:27'),
(383, 1, 'en', '_json', 'slider_posts', 'Slider Posts', '2022-10-22 18:29:27', '2022-10-22 18:29:27'),
(384, 1, 'en', '_json', 'unpublished', 'Unpublish', '2022-10-22 18:29:27', '2022-10-22 18:29:27'),
(385, 1, 'en', '_json', 'update_order', 'Update Order', '2022-10-22 18:29:27', '2022-10-22 18:29:27'),
(386, 1, 'en', '_json', 'remove', 'Remove', '2022-10-22 18:29:27', '2022-10-22 18:29:27'),
(387, 1, 'en', '_json', 'create_article', 'Create Article', '2022-10-22 18:29:27', '2022-10-22 18:29:27'),
(388, 1, 'en', '_json', 'default_storage', 'Default Storage', '2022-10-22 18:29:27', '2022-10-22 18:29:27'),
(389, 1, 'en', '_json', 'aws_access_key_id', 'AWS access key id', '2022-10-22 18:29:27', '2022-10-22 18:29:27'),
(390, 1, 'en', '_json', 'aws_secret_access_key', 'AWS secret access key', '2022-10-22 18:29:27', '2022-10-22 18:29:27'),
(391, 1, 'en', '_json', 'aws_default_region', 'AWS default region', '2022-10-22 18:29:27', '2022-10-22 18:29:27'),
(392, 1, 'en', '_json', 'aws_bucket', 'AWS bucket', '2022-10-22 18:29:27', '2022-10-22 18:29:27'),
(393, 1, 'en', '_json', 'upload_video', 'Upload Video', '2022-10-22 18:29:27', '2022-10-22 18:29:27'),
(394, 1, 'en', '_json', 'remove_video', 'Remote Video', '2022-10-22 18:29:27', '2022-10-22 18:29:27'),
(395, 1, 'en', '_json', 'add_video', 'Add Video', '2022-10-22 18:29:27', '2022-10-22 18:29:27'),
(396, 1, 'en', '_json', 'image_gallery', 'Image Gallery', '2022-10-22 18:29:27', '2022-10-22 18:29:27'),
(397, 1, 'en', '_json', 'upload', 'Upload', '2022-10-22 18:29:27', '2022-10-22 18:29:27'),
(398, 1, 'en', '_json', 'select_image', 'Select Image', '2022-10-22 18:29:27', '2022-10-22 18:29:27'),
(399, 1, 'en', '_json', 'storage_settings', 'Storage Setting', '2022-10-22 18:29:27', '2022-10-22 18:29:27'),
(400, 1, 'en', '_json', 'it_will_be_remove_form_this_feature', 'It will be remove form this feature', '2022-10-22 18:29:27', '2022-10-22 18:29:27'),
(401, 1, 'en', '_json', 'it_will_be_added_to_this_feature', 'It will be added to this feature', '2022-10-22 18:29:27', '2022-10-22 18:29:27'),
(402, 1, 'en', '_json', 'added', 'Added', '2022-10-22 18:29:27', '2022-10-22 18:29:27'),
(403, 1, 'en', '_json', 'removed', 'Removed', '2022-10-22 18:29:27', '2022-10-22 18:29:27'),
(404, 1, 'en', '_json', 'create_video_post', 'Create Video Post', '2022-10-22 18:29:27', '2022-10-22 18:29:27'),
(405, 1, 'en', '_json', 'update_post', 'Update post', '2022-10-22 18:29:27', '2022-10-22 18:29:27'),
(406, 1, 'en', '_json', 'no_more_records', 'No more records!', '2022-10-22 18:29:27', '2022-10-22 18:29:27'),
(407, 1, 'en', '_json', 'load_more', 'Load more...', '2022-10-22 18:29:27', '2022-10-22 18:29:27'),
(408, 1, 'en', '_json', 'select_video', 'Select video', '2022-10-22 18:29:27', '2022-10-22 18:29:27'),
(409, 1, 'en', '_json', 'video_gallery', 'Video gallery', '2022-10-22 18:29:27', '2022-10-22 18:29:27'),
(410, 1, 'en', '_json', 'post_thumbnail', 'Post Thumbnail', '2022-10-22 18:29:27', '2022-10-22 18:29:27'),
(411, 1, 'en', '_json', 'video_url_type', 'Video url type', '2022-10-22 18:29:27', '2022-10-22 18:29:27'),
(412, 1, 'en', '_json', 'video_url', 'Video url', '2022-10-22 18:29:27', '2022-10-22 18:29:27'),
(413, 1, 'en', '_json', 'add_video_thumbnail', 'Add video thumbnail', '2022-10-22 18:29:27', '2022-10-22 18:29:27'),
(414, 1, 'en', '_json', 'ads', 'Ads', '2022-10-22 18:29:27', '2022-10-22 18:29:27'),
(415, 1, 'en', '_json', 'ad_location', 'Ad Location', '2022-10-22 18:29:27', '2022-10-22 18:29:27'),
(416, 1, 'en', '_json', 'create_ad', 'Create ad', '2022-10-22 18:29:27', '2022-10-22 18:29:27'),
(417, 1, 'en', '_json', 'ad_name', 'Ad Name', '2022-10-22 18:29:27', '2022-10-22 18:29:27'),
(418, 1, 'en', '_json', 'ad_size', 'Ad Size', '2022-10-22 18:29:27', '2022-10-22 18:29:27'),
(419, 1, 'en', '_json', 'ad_type', 'Ad Type', '2022-10-22 18:29:27', '2022-10-22 18:29:27'),
(420, 1, 'en', '_json', 'ad_url', 'Ad URL', '2022-10-22 18:29:27', '2022-10-22 18:29:27'),
(421, 1, 'en', '_json', 'ad_image', 'Ad Image', '2022-10-22 18:29:27', '2022-10-22 18:29:27'),
(422, 1, 'en', '_json', 'ad_code', 'Ad Code', '2022-10-22 18:29:27', '2022-10-22 18:29:27'),
(423, 1, 'en', '_json', 'ads_details', 'Ads Details', '2022-10-22 18:29:27', '2022-10-22 18:29:27'),
(424, 1, 'en', '_json', 'back_to_ads', 'Back to Ads', '2022-10-22 18:29:27', '2022-10-22 18:29:27'),
(425, 1, 'en', '_json', 'enable', 'Enable', '2022-10-22 18:29:27', '2022-10-22 18:29:27'),
(426, 1, 'en', '_json', 'disable', 'Disable', '2022-10-22 18:29:27', '2022-10-22 18:29:27'),
(427, 1, 'en', '_json', 'update_ad_image', 'Update ad image', '2022-10-22 18:29:27', '2022-10-22 18:29:27'),
(428, 1, 'en', '_json', 'edit_ad', 'Edit Ad', '2022-10-22 18:29:27', '2022-10-22 18:29:27'),
(429, 1, 'en', '_json', 'update_ad', 'Update Ad', '2022-10-22 18:29:27', '2022-10-22 18:29:27'),
(430, 1, 'en', '_json', 'ads_location', 'Ads Location', '2022-10-22 18:29:27', '2022-10-22 18:29:27'),
(431, 1, 'en', '_json', 'unique_name', 'Unique Name', '2022-10-22 18:29:27', '2022-10-22 18:29:27'),
(432, 1, 'en', '_json', 'ad_text', 'Ad Text', '2022-10-22 18:29:27', '2022-10-22 18:29:27'),
(433, 1, 'en', '_json', 'text', 'Text', '2022-10-22 18:29:27', '2022-10-22 18:29:27'),
(434, 1, 'en', '_json', 'send_notification', 'Send Notification', '2022-10-22 18:29:27', '2022-10-22 18:29:27'),
(435, 1, 'en', '_json', 'notification_setting', 'Notification Setting', '2022-10-22 18:29:27', '2022-10-22 18:29:27'),
(436, 1, 'en', '_json', 'notification_setting_details', 'Notification Setting Details', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(437, 1, 'en', '_json', 'onesignal_api_key', 'Onesignal API Key', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(438, 1, 'en', '_json', 'onesignal_app_id', 'Onesignal App Id', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(439, 1, 'en', '_json', 'onesignal_action_message', 'Onesignal Action Message', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(440, 1, 'en', '_json', 'onesignal_accept_button', 'Onesignal Accept Button', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(441, 1, 'en', '_json', 'onesignal_cancel_button', 'Onesignal Cancel Button', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(442, 1, 'en', '_json', 'icon_url', 'Icon URL', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(443, 1, 'en', '_json', 'image_url', 'Image URL', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(444, 1, 'en', '_json', 'message', 'Message', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(445, 1, 'en', '_json', 'headings', 'Headings', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(446, 1, 'en', '_json', 'send_custom_notification', 'Send custom notification', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(447, 1, 'en', '_json', 'successfully_send', 'Successfully Send', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(448, 1, 'en', '_json', 'send_email_to_subscribers', 'Send email to subscribers', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(449, 1, 'en', '_json', 'newsletter', 'Newsletter', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(450, 1, 'en', '_json', 'subscribers', 'Subscribers', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(451, 1, 'en', '_json', 'send_email', 'Send email', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(452, 1, 'en', '_json', 'add_poll', 'Add Poll', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(453, 1, 'en', '_json', 'back_to_polls', 'Back to polls', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(454, 1, 'en', '_json', 'question', 'Question', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(455, 1, 'en', '_json', 'option_1', 'Option 1', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(456, 1, 'en', '_json', 'option_2', 'Option 2', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(457, 1, 'en', '_json', 'option_3', 'Option 3', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(458, 1, 'en', '_json', 'option_4', 'Option 4', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(459, 1, 'en', '_json', 'option_5', 'Option 5', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(460, 1, 'en', '_json', 'option_6', 'Option 6', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(461, 1, 'en', '_json', 'option_7', 'Option 7', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(462, 1, 'en', '_json', 'option_8', 'Option 8', '2022-10-22 18:29:28', '2022-10-22 18:29:28');
INSERT INTO `ltm_translations` (`id`, `status`, `locale`, `group`, `key`, `value`, `created_at`, `updated_at`) VALUES
(463, 1, 'en', '_json', 'option_9', 'Option 9', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(464, 1, 'en', '_json', 'option_10', 'Option 10', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(465, 1, 'en', '_json', 'auth_required', 'Auth required', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(466, 1, 'en', '_json', 'polls', 'Polls', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(467, 1, 'en', '_json', 'poll', 'Poll', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(468, 1, 'en', '_json', 'vote', 'Vote', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(469, 1, 'en', '_json', 'update_poll', 'Update poll', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(470, 1, 'en', '_json', 'create_poll', 'Create poll', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(471, 1, 'en', '_json', 'result', 'Result', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(472, 1, 'en', '_json', 'total_vote', 'Total vote', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(473, 1, 'en', '_json', 'widgets', 'Widgets', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(474, 1, 'en', '_json', 'short_code', 'Short code', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(475, 1, 'en', '_json', 'add_widget', 'Add widget', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(476, 1, 'en', '_json', 'update_widget', 'Update Widget', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(477, 1, 'en', '_json', 'back_to_widgets', 'Back to widgets', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(478, 1, 'en', '_json', 'default', 'Default', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(479, 1, 'en', '_json', 'type', 'Type', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(480, 1, 'en', '_json', 'send_date', 'Send date', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(481, 1, 'en', '_json', 'contact_messages', 'Contact messages', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(482, 1, 'en', '_json', 'comment', 'Comment', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(483, 1, 'en', '_json', 'comments', 'Comments', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(484, 1, 'en', '_json', 'comment_at', 'Comment At', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(485, 1, 'en', '_json', 'unseen', 'Unseen', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(486, 1, 'en', '_json', 'seen', 'Seen', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(487, 1, 'en', '_json', 'replay', 'Replay', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(488, 1, 'en', '_json', 'all', 'All', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(489, 1, 'en', '_json', 'filter', 'Filter', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(490, 1, 'en', '_json', 'seo_settings', 'SEO Settings', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(491, 1, 'en', '_json', 'seo_title', 'SEO Title', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(492, 1, 'en', '_json', 'seo_keywords', 'SEO Keywords', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(493, 1, 'en', '_json', 'seo_meta_description', 'SEO Meta Description', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(494, 1, 'en', '_json', 'author_name', 'Author Name', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(495, 1, 'en', '_json', 'google_analytics_id', 'Google Analytics ID', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(496, 1, 'en', '_json', 'select_current_theme', 'Select current theme', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(497, 1, 'en', '_json', 'og_title', 'OG Title', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(498, 1, 'en', '_json', 'og_description', 'OG Description', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(499, 1, 'en', '_json', 'og_image', 'OG Image', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(500, 1, 'en', '_json', 'add_section', 'Add Section', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(501, 1, 'en', '_json', 'section_label', 'Section label', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(502, 1, 'en', '_json', 'post_amount', 'Post Amount', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(503, 1, 'en', '_json', 'section_style', 'Section Style', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(504, 1, 'en', '_json', 'sections', 'Sections', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(505, 1, 'en', '_json', 'primary_section', 'Primary Sections', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(506, 1, 'en', '_json', 'update_section', 'Update Section', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(507, 1, 'en', '_json', 'update_theme', 'Update Theme', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(508, 1, 'en', '_json', 'header', 'Header', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(509, 1, 'en', '_json', 'themes_options', 'Themes Options', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(510, 1, 'en', '_json', 'modulus', 'Modules', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(511, 1, 'en', '_json', 'home_content', 'Home Page Setting', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(512, 1, 'en', '_json', 'primary_color', 'Primary Color', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(513, 1, 'en', '_json', 'font', 'Font', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(514, 1, 'en', '_json', 'option', 'Option', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(515, 1, 'en', '_json', 'please_select_at_least_one_item', 'Please select at least one Item.', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(516, 1, 'en', '_json', 'socials', 'Socials', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(517, 1, 'en', '_json', 'create_social', 'Create Social', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(518, 1, 'en', '_json', 'back_to_socials', 'Back to Socials', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(519, 1, 'en', '_json', 'social_details', 'Social Details', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(520, 1, 'en', '_json', 'icon_bg_color', 'Icon Backgroud color', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(521, 1, 'en', '_json', 'text_bg_color', 'Text Background color', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(522, 1, 'en', '_json', 'click_me_to_visit_site', 'Click here to visit', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(523, 1, 'en', '_json', 'use_class_of_font_awesome_icon', 'Use class of font awesome icon', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(524, 1, 'en', '_json', 'icon', 'Icon', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(525, 1, 'en', '_json', 'color', 'Color', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(526, 1, 'en', '_json', 'about_site', 'About Site', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(527, 1, 'en', '_json', 'start_date', 'Start Date', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(528, 1, 'en', '_json', 'end_date', 'End Date', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(529, 1, 'en', '_json', 'right_side_bar', 'Right Sidebar', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(530, 1, 'en', '_json', 'content_type', 'Content Type', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(531, 1, 'en', '_json', 'stay_connected', 'Stay Connected', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(532, 1, 'en', '_json', 'breaking_news', 'Breaking News', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(533, 1, 'en', '_json', 'submit_now', 'Submit Now', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(534, 1, 'en', '_json', 'about_us', 'About Us', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(535, 1, 'en', '_json', 'you_have_to_select_one_option', 'You have to select one option.', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(536, 1, 'en', '_json', 'you_have_to_login_for_voting', 'You have to login for voting.', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(537, 1, 'en', '_json', 'vote_has_been_submitted_successfully', 'Vote has been submitted successfully.', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(538, 1, 'en', '_json', 'vote_has_been_submitted_unsuccessfully', 'Vote has been submitted unsuccessfully.', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(539, 1, 'en', '_json', 'thank_you', 'Thank You', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(540, 1, 'en', '_json', 'oops', 'Oops', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(541, 1, 'en', '_json', 'select_language_for_below_fields', 'Select language for below fields', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(542, 1, 'en', '_json', 'sign_up', 'Sign Up', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(543, 1, 'en', '_json', 'newsletter_description', 'Subscribe to our mailing list to get the new updates!', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(544, 1, 'en', '_json', 'follow_us', 'Follow Us', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(545, 1, 'en', '_json', 'reply_from', 'Reply From', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(546, 1, 'en', '_json', 'page_type', 'Page Type', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(547, 1, 'en', '_json', 'page_template_type', 'Page Tempalte Type', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(548, 1, 'en', '_json', 'without_sidebar', 'Without Sidebar', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(549, 1, 'en', '_json', 'with_right_sidebar', 'With Right Sidebar', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(550, 1, 'en', '_json', 'with_left_sidebar', 'With Left Sidebar', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(551, 1, 'en', '_json', 'send_a_message', 'Send a Message', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(552, 1, 'en', '_json', 'recaptcha_settings', 'reCaptcha Settings', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(553, 1, 'en', '_json', 'captcha_secret', 'Captcha Secret', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(554, 1, 'en', '_json', 'captcha_sitekey', 'Captcha Sitekey', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(555, 1, 'en', '_json', 'captcha', 'Captcha', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(556, 1, 'en', '_json', 'test_mail_subject', 'This is test mail subject', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(557, 1, 'en', '_json', 'test_mail_success_message', 'Your email working fine.', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(558, 1, 'en', '_json', 'test_mail_error_message', 'Something went wrong, please check email setting', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(559, 1, 'en', '_json', 'test_mail_message', 'This is test mail', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(560, 1, 'en', '_json', 'already_have_an_account', 'Already have an account?', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(561, 1, 'en', '_json', 'successfully_registration_need_to_mail_verification', 'You have registered successfully, you have to verify your email address.', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(562, 1, 'en', '_json', 'dont_have_an_account', 'Don\'t you have an account?', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(563, 1, 'en', '_json', 'available_merge_fields', 'Available Merge Fields', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(564, 1, 'en', '_json', 'site_logo', 'Site Logo', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(565, 1, 'en', '_json', 'username', 'Username', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(566, 1, 'en', '_json', 'site_name', 'Site Name', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(567, 1, 'en', '_json', 'site_url', 'Site Url', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(568, 1, 'en', '_json', 'user_email', 'User Email', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(569, 1, 'en', '_json', 'activate_url', 'Activate Url', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(570, 1, 'en', '_json', 'post_title', 'Post Title', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(571, 1, 'en', '_json', 'read_more', 'Read More', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(572, 1, 'en', '_json', 'popular_post', 'Popular Post', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(573, 1, 'en', '_json', 'latest_post', 'Latest Post', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(574, 1, 'en', '_json', 'recommended_post', 'Recommended Post', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(575, 1, 'en', '_json', 'our_blog', 'Our Blog', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(576, 1, 'en', '_json', 'posted_on', 'Posted On', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(577, 1, 'en', '_json', 'no_content_available', 'No content available.', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(578, 1, 'en', '_json', 'successfully_unsubscribed', 'Successfully Unsubscribed', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(579, 1, 'en', '_json', 'unsuccessfully_unsubscribed', 'Unsuccessfully Unsubscribed', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(580, 1, 'en', '_json', 'show_ad_in_bottom', 'Show ad in bottom?', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(581, 1, 'en', '_json', 'must_select', 'Select at least one', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(582, 1, 'en', '_json', 'default_mode', 'Default Mode', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(583, 1, 'en', '_json', 'dark_mode', 'Dark Mode', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(584, 1, 'en', '_json', 'submitted_posts', 'Submitted Post', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(585, 1, 'en', '_json', 'unpublish', 'Unpublish', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(586, 1, 'en', '_json', 'comment_settings', 'Comment Settings', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(587, 1, 'en', '_json', 'all_comments', 'All Comments', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(588, 1, 'en', '_json', 'today', 'Today', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(589, 1, 'en', '_json', 'in_build', 'In Build', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(590, 1, 'en', '_json', 'disqus_comment', 'Disqus Comment', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(591, 1, 'en', '_json', 'disqus_short', 'Disqus Short Name', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(592, 1, 'en', '_json', 'facebook_comment', 'Facebook Comment', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(593, 1, 'en', '_json', 'facebook_app_id', 'Facebook App ID', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(594, 1, 'en', '_json', 'signature', 'Signature', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(595, 1, 'en', '_json', 'search', 'Search here', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(596, 1, 'en', '_json', 'input_user', 'User name', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(597, 1, 'en', '_json', 'input_email', 'demo@example.com', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(598, 1, 'en', '_json', 'input_message', 'your message here..', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(599, 1, 'en', '_json', 'submit_news', 'Submit News', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(600, 1, 'en', '_json', 'post_image', 'Post Image', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(601, 1, 'en', '_json', 'subscribe', 'Subscribe', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(602, 1, 'en', '_json', 'email_address', 'Email Address', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(603, 1, 'en', '_json', 'view_results', 'View Results', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(604, 1, 'en', '_json', 'custom_header_footer', 'Custom Header Footer', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(605, 1, 'en', '_json', 'custom_css', 'Custom CSS', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(606, 1, 'en', '_json', 'predefined_header', 'Predefined Header', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(607, 1, 'en', '_json', 'custom_js', 'Custom JS', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(608, 1, 'en', '_json', 'addthis_public_id', 'AddThis Public ID', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(609, 1, 'en', '_json', 'adthis_option', 'AddThis Option', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(610, 1, 'en', '_json', 'article_detail_prefix', 'Article Detail Prefix', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(611, 1, 'en', '_json', 'page_detail_prefix', 'Page Detail Prefix', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(612, 1, 'en', '_json', 'url_settings', 'Route Setting', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(613, 1, 'en', '_json', 'cron_information', 'Cron Information', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(614, 1, 'en', '_json', 'update_cron_information', 'Update info', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(615, 1, 'en', '_json', 'related_post', 'You May Also Like', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(616, 1, 'en', '_json', 'cron_job_completed_successfully', 'Cron Job Completed successfully', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(617, 1, 'en', '_json', 'cron_job_completed_unsuccessfully', 'Cron job completed unsuccessfully', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(618, 1, 'en', '_json', 'total_visits', 'Total Visits', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(619, 1, 'en', '_json', 'total_visitors', 'Total Visitors', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(620, 1, 'en', '_json', 'total_unique_visits', 'Total Unique Visits', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(621, 1, 'en', '_json', 'total_unique_visitors', 'Total Unique Visitors', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(622, 1, 'en', '_json', 'visit_vs_visitor', 'Visit Vs Visitor', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(623, 1, 'en', '_json', 'submitted_post', 'Submitted Post', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(624, 1, 'en', '_json', 'post_published', 'Post Published', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(625, 1, 'en', '_json', 'total_register_users', 'Total Register Users', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(626, 1, 'en', '_json', 'browser_usages', 'Browser Usages', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(627, 1, 'en', '_json', 'current_month_visitors', 'Current Month Visitors', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(628, 1, 'en', '_json', 'current_month_visits', 'Current Month Visits', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(629, 1, 'en', '_json', 'top_hits_post', 'Top Hits Post', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(630, 1, 'en', '_json', 'available_tags', 'Available Tags', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(631, 1, 'en', '_json', 'add_tag', 'Add New Tag here..', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(632, 1, 'en', '_json', 'subscribe_description', 'Subscribe to our newsletter', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(633, 1, 'en', '_json', 'videos', 'Videos', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(634, 1, 'en', '_json', 'page_not_found', 'Page not found', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(635, 1, 'en', '_json', '404_message', 'It looks like you found a glitch in the page...', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(636, 1, 'en', '_json', '1', '403', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(637, 1, 'en', '_json', 'access_forbidden', 'Access forbidden', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(638, 1, 'en', '_json', '403_message', 'Access to this resource on the server is denied.', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(639, 1, 'en', '_json', 'generate_sitemap', 'Generate Sitemap', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(640, 1, 'en', '_json', 'successfully_generated', 'Sitemap Generated Successfully', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(641, 1, 'en', '_json', 'go_to_sitemap', 'Go to Sitemap', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(642, 1, 'en', '_json', 'cron', 'Cron', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(643, 1, 'en', '_json', 'cpanel_cron_command', 'cPanel CRON Command', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(644, 1, 'en', '_json', 'video_convert_cron', 'Video Convert CRON', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(645, 1, 'en', '_json', 'schedule_post_cron', 'Schedule Post CRON', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(646, 1, 'en', '_json', 'ffmpeg_description', 'This system will compress, convert, and optimize videos to mp4. This system require \'ffmpeg\' to be installed in your server. If you can\'t install FFMPEG, please contact your hosting provider, and they shall install it.', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(647, 1, 'en', '_json', 'ffmpeg_status', 'ffmpeg Status', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(648, 1, 'en', '_json', 'ffmpeg_settings', 'ffmpeg Setting', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(649, 1, 'en', '_json', 'no_page_available', 'No page available', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(650, 1, 'en', '_json', 'no_post_available', 'No post available', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(651, 1, 'en', '_json', 'no_category_available', 'No category available', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(652, 1, 'en', '_json', 'all_post', 'All Post', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(653, 1, 'en', '_json', 'your_email_is_invalid', 'Your email is invalid.', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(654, 1, 'en', '_json', 'is_mega_menu', 'is mega menu.?', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(655, 1, 'en', '_json', 'tab_type', 'tab type', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(656, 1, 'en', '_json', 'category_type', 'category type', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(657, 1, 'en', '_json', 'add_to_editor_picks', 'Add to editor picks', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(658, 1, 'en', '_json', 'editor_picks', 'Editor picks', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(659, 1, 'en', '_json', 'server_error', 'Server error', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(660, 1, 'en', '_json', '500_message', 'Oops something went wrong, this server unable to complete you request.', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(661, 1, 'en', '_json', 'run_manually', 'Run Manually', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(662, 1, 'en', '_json', 'for_all', 'For All', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(663, 1, 'en', '_json', 'video_convert', 'Video Convert', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(664, 1, 'en', '_json', 'schedule_post', 'Schedule Post', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(665, 1, 'en', '_json', 'newsletter_cron', 'Newsletter Cron', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(666, 1, 'en', '_json', 'please_make_sure_you_have_set_writable_permision_following_folder', 'Please make sure you have set writable permission on following folder.', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(667, 1, 'en', '_json', 'bad_request', 'Bad Request', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(668, 1, 'en', '_json', '405_message', 'Possible Reason: Method Not Allowed.', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(669, 1, 'en', '_json', 'update_social', 'Update Social', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(670, 1, 'en', '_json', 'your_account_is_banned', 'Your account is banned', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(671, 1, 'en', '_json', 'member_since', 'Member Since', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(672, 1, 'en', '_json', 'preloader_option', 'Preloader Option', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(673, 1, 'en', '_json', 'preference_setting', 'Preference Setting', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(674, 1, 'en', '_json', 'my_profile', 'My Profile', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(675, 1, 'en', '_json', 'show_email_on_profile_page', 'Show email on profile page', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(676, 1, 'en', '_json', 'about_me', 'About me', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(677, 1, 'en', '_json', 'login_with_facebook', 'Login with Facebook', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(678, 1, 'en', '_json', 'login_with_twitter', 'Login with Twitter', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(679, 1, 'en', '_json', 'login_with_google', 'Login with Google', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(680, 1, 'en', '_json', 'sign_up_with_facebook', 'Sign up with Facebook', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(681, 1, 'en', '_json', 'sign_up_with_twitter', 'Sign up with Twitter', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(682, 1, 'en', '_json', 'sign_up_with_google', 'Sign up with Google', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(683, 1, 'en', '_json', 'social_login_settings', 'Social Login Settings', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(684, 1, 'en', '_json', 'facebook_client_id', 'Facebook Client ID', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(685, 1, 'en', '_json', 'facebook_client_secretkey', 'Facebook client secretkey', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(686, 1, 'en', '_json', 'facebook_callback_url', 'Facebook callback URL', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(687, 1, 'en', '_json', 'facebook_login_visibility', 'Facebook login visibility', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(688, 1, 'en', '_json', 'google_client_id', 'Google client ID', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(689, 1, 'en', '_json', 'google_client_secretkey', 'Google client secretkey', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(690, 1, 'en', '_json', 'google_callback_url', 'Google callback URL', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(691, 1, 'en', '_json', 'google_login_visibility', 'Google login visibility', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(692, 1, 'en', '_json', 'something_went_wrong_please_check_your_social_login_settings', 'Something went wrong! Please check your social login settings.', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(693, 1, 'en', '_json', 'addthis_script', 'AddThis Script', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(694, 1, 'en', '_json', 'addthis_toolbox', 'AddThis Toolbox code', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(695, 1, 'en', '_json', 'like', 'Like', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(696, 1, 'en', '_json', 'love', 'Love', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(697, 1, 'en', '_json', 'haha', 'HaHa', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(698, 1, 'en', '_json', 'wow', 'Wow', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(699, 1, 'en', '_json', 'sad', 'Sad', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(700, 1, 'en', '_json', 'angry', 'Angry', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(701, 1, 'en', '_json', 'others', 'others', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(702, 1, 'en', '_json', 'whats_your_reaction', 'What\'s your reaction?', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(703, 1, 'en', '_json', 'you_and', 'you and', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(704, 1, 'en', '_json', 'please_select_a_date', 'Please select a date!', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(705, 1, 'en', '_json', 'archive', 'Archive', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(706, 1, 'en', '_json', 'you_can_make_child_only_for_category_for_tab_mega_menu', 'You can make child only category for tab mega menu.', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(707, 1, 'en', '_json', 'you_can_make_child_max_length_2', 'You can make child length max 2.', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(708, 1, 'en', '_json', 'read_now', 'Read now', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(709, 1, 'en', '_json', 'article_detail', 'Article detail', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(710, 1, 'en', '_json', 'create_audio_post', 'Create Audio post', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(711, 1, 'en', '_json', 'upload_audio', 'Upload Audio', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(712, 1, 'en', '_json', 'add_audio', 'Add Audio', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(713, 1, 'en', '_json', 'select_audio', 'Select Audio', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(714, 1, 'en', '_json', 'show_author_on_post_detail', 'Show author on post detail page', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(715, 1, 'en', '_json', 'submit', 'Submit', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(716, 1, 'en', '_json', 'albums', 'Albums', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(717, 1, 'en', '_json', 'images', 'Images', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(718, 1, 'en', '_json', 'gallery_images', 'Gallery Images', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(719, 1, 'en', '_json', 'album', 'Album', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(720, 1, 'en', '_json', 'tab', 'Tab', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(721, 1, 'en', '_json', 'set_as_cover', 'Set as cover', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(722, 1, 'en', '_json', 'it_will_be_set_as_album_cover', 'It will be set as album cover', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(723, 1, 'en', '_json', 'select_album_first', 'Select album first', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(724, 1, 'en', '_json', 'select_album', 'Select album', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(725, 1, 'en', '_json', 'add_gallery_image', 'Add gallery Image', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(726, 1, 'en', '_json', 'album_name', 'Album name', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(727, 1, 'en', '_json', 'tabs', 'Tabs', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(728, 1, 'en', '_json', 'add_album', 'Add album', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(729, 1, 'en', '_json', 'hit_enter', 'Write and hit enter', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(730, 1, 'en', '_json', 'update_album', 'Update album', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(731, 1, 'en', '_json', 'update_gallery_image', 'Update gallery image', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(732, 1, 'en', '_json', 'select_tab', 'Select tab', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(733, 1, 'en', '_json', 'change_image', 'Change Image', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(734, 1, 'en', '_json', 'back', 'Back', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(735, 1, 'en', '_json', 'update_image', 'Update Image', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(736, 1, 'en', '_json', 'album_cover', 'Album Cover', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(737, 1, 'en', '_json', 'image_and_text', 'Image and Text', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(738, 1, 'en', '_json', 'text_and_image', 'Text and Image', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(739, 1, 'en', '_json', 'text_image_text', 'Text, Image and Text', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(740, 1, 'en', '_json', 'video', 'Video', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(741, 1, 'en', '_json', 'embadded', 'Embedded', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(742, 1, 'en', '_json', 'add_content', 'Add Content', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(743, 1, 'en', '_json', 'twitter', 'Twitter', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(744, 1, 'en', '_json', 'vimeo', 'Vimeo', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(745, 1, 'en', '_json', 'youtube', 'Youtube', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(746, 1, 'en', '_json', 'youtube_embed', 'Youtube Embed', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(747, 1, 'en', '_json', 'vimeo_embed', 'Vimeo Embed', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(748, 1, 'en', '_json', 'twitter_embed', 'Twitter Embed', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(749, 1, 'en', '_json', 'image_left', 'Image Left', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(750, 1, 'en', '_json', 'image_right', 'Image Right', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(751, 1, 'en', '_json', 'image_center', 'Image center', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(752, 1, 'en', '_json', 'right_sidebar', 'Right Sidebar', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(753, 1, 'en', '_json', 'rss_feeds', 'RSS Feeds', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(754, 1, 'en', '_json', 'feed_name', 'Feed Name', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(755, 1, 'en', '_json', 'feed_url', 'Feed URL', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(756, 1, 'en', '_json', 'auto_update', 'Auto update', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(757, 1, 'en', '_json', 'add_rss_source', 'Add RSS source', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(758, 1, 'en', '_json', 'feed_details', 'Feed details', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(759, 1, 'en', '_json', 'valid_feed_url', 'Valid feed URL', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(760, 1, 'en', '_json', 'number_of_post_to_import', 'Number of posts to import', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(761, 1, 'en', '_json', 'show_read_more', 'Show read more', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(762, 1, 'en', '_json', 'keep_post_original_publish_date', 'Keep post original publish date', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(763, 1, 'en', '_json', 'add_feed', 'Add feed', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(764, 1, 'en', '_json', 'update_rss_source', 'Update RSS source', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(765, 1, 'en', '_json', 'update_rss', 'Update RSS', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(766, 1, 'en', '_json', 'rss_auto_update_post_import', 'RSS auto update post import', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(767, 1, 'en', '_json', 'sorry_invalid_rss_feed_url:', 'Sorry invalid rss feed URL', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(768, 1, 'en', '_json', 'read_actual_content', 'Read actual content', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(769, 1, 'en', '_json', 'cover_image', 'Cover Image', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(770, 1, 'en', '_json', 'your_version', 'Your version', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(771, 1, 'en', '_json', 'go_to_upgrade', 'Go to database sync', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(772, 1, 'en', '_json', 'database_sync', 'Database Sync', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(773, 1, 'en', '_json', 'already_up_to_date', 'Already Up To Date', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(774, 1, 'en', '_json', 'api', 'API', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(775, 1, 'en', '_json', 'api_settings', 'API Settings', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(776, 1, 'en', '_json', 'android_settings', 'Android Settings', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(777, 1, 'en', '_json', 'ios_settings', 'iOS Settings', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(778, 1, 'en', '_json', 'app_config', 'App Config', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(779, 1, 'en', '_json', 'app_intro', 'App Intro', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(780, 1, 'en', '_json', 'ads_config', 'Ads Config', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(781, 1, 'en', '_json', 'api_server_url', 'API Server URL', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(782, 1, 'en', '_json', 'api_key_for_app', 'API Key for App', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(783, 1, 'en', '_json', 'copy_&_paste_this_to_app_source_code', 'Copy and Paste this to App Source Code', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(784, 1, 'en', '_json', 'now_just_paste_into_android_configuration_file', 'Now just paste into android configuration file', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(785, 1, 'en', '_json', 'latest_apk_version', 'Latest apk version', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(786, 1, 'en', '_json', 'latest_apk_code', 'Latest apk code', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(787, 1, 'en', '_json', 'apk_file_url', 'apk file URL', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(788, 1, 'en', '_json', 'whats_new_on_latest_apk', 'What\'s new on latest apk?', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(789, 1, 'en', '_json', 'update_skipable', 'Update Skippable', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(790, 1, 'en', '_json', 'latest_ipa_version', 'Latest iPA version', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(791, 1, 'en', '_json', 'latest_ipa_code', 'Latest iPA code', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(792, 1, 'en', '_json', 'ipa_file_url', 'iPA file URL', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(793, 1, 'en', '_json', 'whats_new_on_latest_ipa', 'What\'s new on latest iPA?', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(794, 1, 'en', '_json', 'mandatory_login', 'Mandatory Login', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(795, 1, 'en', '_json', 'intro_skippable', 'Intro Skippable', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(796, 1, 'en', '_json', 'privacy_policy_url', 'Privacy policy URL', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(797, 1, 'en', '_json', 'terms_n_condition_url', 'Terms and Condition URL', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(798, 1, 'en', '_json', 'support_url', 'Support URL', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(799, 1, 'en', '_json', 'add_intro', 'Add Intro', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(800, 1, 'en', '_json', 'ads_enable', 'Ads Enable', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(801, 1, 'en', '_json', 'mobile_ads_network', 'Mobile Ads Network', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(802, 1, 'en', '_json', 'admob_app_id', 'Admob App ID', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(803, 1, 'en', '_json', 'admob_banner_ads_id', 'Admob Banner Ads ID', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(804, 1, 'en', '_json', 'admob_native_ads_id', 'Admob Native Ads ID', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(805, 1, 'en', '_json', 'admob_interstitial_ads_id', 'Admob Interstitial Ads ID', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(806, 1, 'en', '_json', 'fan_native_ads_placement_id', 'Fan Native Ads Placement ID', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(807, 1, 'en', '_json', 'fan_banner_ads_placement_id', 'Fan Banner Ads Placement ID', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(808, 1, 'en', '_json', 'fan_interstitial_ads_placement_id', 'Fan Interstitial Ads Placement ID', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(809, 1, 'en', '_json', 'startapp_app_id', 'Startapp App ID', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(810, 1, 'en', '_json', 'invalid_credentials', 'Invalid Credentials', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(811, 1, 'en', '_json', 'could_not_create_token', 'Could not create token', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(812, 1, 'en', '_json', 'suspicious_activity_on_your_ip', 'Suspicious activity has occurred on your IP address and you have been denied access for another', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(813, 1, 'en', '_json', 'seconds', 'second(s)', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(814, 1, 'en', '_json', 'you_account_not_activated_check_mail_or_contact_support', 'Your account is not activated yet. Please check your mail or contact with support.', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(815, 1, 'en', '_json', 'something_went_wrong', 'Something went wrong', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(816, 1, 'en', '_json', 'successfully_login', 'Successfully Login', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(817, 1, 'en', '_json', 'successfully_logout', 'Logout Successfully', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(818, 1, 'en', '_json', 'failed_to_logout', 'Failed to logout, please try again.', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(819, 1, 'en', '_json', 'you_are_not_allowed_to_set_this_password', 'Haha!!!You are not allowed to set password for this user.', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(820, 1, 'en', '_json', 'please_enter_valid_user_id', 'Please enter valid user ID', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(821, 1, 'en', '_json', 'successfully_found', 'Successfully found', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(822, 1, 'en', '_json', 'user_not_found', 'User not found', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(823, 1, 'en', '_json', 'please_enter_valid_user_email', 'Please enter valid user email', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(824, 1, 'en', '_json', 'password_wrong', 'Password wrong', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(825, 1, 'en', '_json', 'update_app_intro', 'Update App Intro', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(826, 1, 'en', '_json', 'gender', 'Gender', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(827, 1, 'en', '_json', 'dob', 'Date of Birth', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(828, 1, 'en', '_json', 'create_trivia_quiz', 'Create Trivia Quiz', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(829, 1, 'en', '_json', 'questions', 'Questions', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(830, 1, 'en', '_json', 'answers', 'Answers', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(831, 1, 'en', '_json', 'answer_format', 'Answer Format', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(832, 1, 'en', '_json', 'answer_text', 'Answer Text', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(833, 1, 'en', '_json', 'correct', 'Correct', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(834, 1, 'en', '_json', 'add_answer', 'Add Answer', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(835, 1, 'en', '_json', 'add_question', 'Add Question', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(836, 1, 'en', '_json', 'results', 'Results', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(837, 1, 'en', '_json', 'range_of_correct_ans_for_showing_this_result', 'Range of correct answer for showing this result', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(838, 1, 'en', '_json', 'minimum_correct', 'Minimum correct', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(839, 1, 'en', '_json', 'maximum_correct', 'Maximum correct', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(840, 1, 'en', '_json', 'add_result', 'Add Result', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(841, 1, 'en', '_json', 'correct_answer', 'Correct Answer', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(842, 1, 'en', '_json', 'wrong_answer', 'Wrong Answer', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(843, 1, 'en', '_json', 'play_again', 'Play Again', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(844, 1, 'en', '_json', 'create_personality_quiz', 'Create Personality Quiz', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(845, 1, 'en', '_json', 'select_a_result', 'Select a result', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(846, 1, 'en', '_json', 'current_characters', 'Current Characters', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(847, 1, 'en', '_json', 'meta_title', 'Meta Title', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(848, 1, 'en', '_json', 'should_bd', 'should be', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(849, 1, 'en', '_json', 'in_between', 'in between', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(850, 1, 'en', '_json', 'characters', 'characters', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(851, 1, 'en', '_json', 'meta_description', 'Meta Description', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(852, 1, 'en', '_json', 'meta_tags', 'Meta Tags', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(853, 1, 'en', '_json', 'registration_through_app_key', 'Registration Through App Key', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(854, 1, 'en', '_json', 'commented', 'Commented', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(855, 1, 'en', '_json', 'replied', 'Replied', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(856, 1, 'en', '_json', 'post_not_found', 'Post not found', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(857, 1, 'en', '_json', 'invalid_attempt', 'Invalid attempt!', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(858, 1, 'en', '_json', 'required_field_missing', 'Required filed missing', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(859, 1, 'en', '_json', 'something_went_wrong_please_try_again', 'Something went wrong, please try again.', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(860, 1, 'en', '_json', 'is_featured', 'Is featured', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(861, 1, 'en', '_json', 'top_stories', 'Top Stories', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(862, 1, 'en', '_json', 'latest_posts', 'Latest Posts', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(863, 1, 'en', '_json', 'mobile_app', 'Mobile App', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(864, 1, 'en', '_json', 'audio_gallery', 'Audio Gallery', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(865, 1, 'en', '_json', 'cache_update', 'Cache Update', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(866, 1, 'en', '_json', 'cache', 'Cache', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(867, 0, 'phrase', '_json', 'login', '', '2022-10-22 18:29:28', '2022-10-22 18:29:29'),
(868, 1, 'phrase', '_json', 'registration', '', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(869, 1, 'phrase', '_json', 'back_to', ' ', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(870, 1, 'phrase', '_json', 'back_to_home', '', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(871, 1, 'phrase', '_json', 'please_enter_your_user_information', '', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(872, 1, 'phrase', '_json', 'remember_me', ' ', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(873, 1, 'phrase', '_json', 'create_an_account', ' ', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(874, 1, 'phrase', '_json', 'forgot_password', ' ', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(875, 1, 'phrase', '_json', 'app_name', '', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(876, 1, 'phrase', '_json', 'app_full_name', '', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(877, 1, 'phrase', '_json', 'about', '', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(878, 1, 'phrase', '_json', 'support', '', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(879, 1, 'phrase', '_json', 'contact_us', ' ', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(880, 1, 'phrase', '_json', 'notification', '', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(881, 1, 'phrase', '_json', 'view_all_notifications', '', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(882, 1, 'phrase', '_json', 'available', '', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(883, 1, 'phrase', '_json', 'account', '', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(884, 1, 'phrase', '_json', 'setting', '', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(885, 1, 'phrase', '_json', 'logout', '', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(886, 1, 'phrase', '_json', 'dashboard', '', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(887, 1, 'phrase', '_json', 'menu', '', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(888, 1, 'phrase', '_json', 'home', '', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(889, 1, 'phrase', '_json', 'add_user', ' ', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(890, 1, 'phrase', '_json', 'users', '', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(891, 1, 'phrase', '_json', 'roles_&_permissions', '', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(892, 1, 'phrase', '_json', 'roles', '', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(893, 1, 'phrase', '_json', 'modulus', '', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(894, 1, 'phrase', '_json', 'permission_management', ' ', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(895, 1, 'phrase', '_json', 'language_settings', ' ', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(896, 1, 'phrase', '_json', 'add_role', ' ', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(897, 1, 'phrase', '_json', 'name', '', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(898, 1, 'phrase', '_json', 'slug', '', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(899, 1, 'phrase', '_json', 'permissions', '', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(900, 1, 'phrase', '_json', 'module', '', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(901, 1, 'phrase', '_json', 'read', '', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(902, 1, 'phrase', '_json', 'write', '', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(903, 1, 'phrase', '_json', 'delete', '', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(904, 1, 'phrase', '_json', 'first_name', ' ', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(905, 1, 'phrase', '_json', 'last_name', ' ', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(906, 1, 'phrase', '_json', 'email', '', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(907, 1, 'phrase', '_json', 'role', '', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(908, 1, 'phrase', '_json', 'password', '', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(909, 1, 'phrase', '_json', 'password_confirmation', ' ', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(910, 1, 'phrase', '_json', 'image', '', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(911, 1, 'phrase', '_json', 'administrators', '', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(912, 1, 'phrase', '_json', 'last_login', ' ', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(913, 1, 'phrase', '_json', 'options', '', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(914, 1, 'phrase', '_json', 'showing', '', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(915, 1, 'phrase', '_json', 'to', '', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(916, 1, 'phrase', '_json', 'of', '', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(917, 1, 'phrase', '_json', 'entries', '', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(918, 1, 'phrase', '_json', 'update_role_and_permission', '   ', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(919, 1, 'phrase', '_json', 'role_name', ' ', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(920, 1, 'phrase', '_json', 'save_changes', ' ', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(921, 1, 'phrase', '_json', 'add_permission', ' ', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(922, 1, 'phrase', '_json', 'description', '', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(923, 1, 'phrase', '_json', 'created', '', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(924, 1, 'phrase', '_json', 'edit', '', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(925, 1, 'phrase', '_json', 'profile', '', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(926, 1, 'phrase', '_json', 'change_password', '', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(927, 1, 'phrase', '_json', 'edit_profile', ' ', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(928, 1, 'phrase', '_json', 'avatar', '', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(929, 1, 'phrase', '_json', 'status', '', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(930, 1, 'phrase', '_json', 'join_date', ' ', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(931, 1, 'phrase', '_json', 'confirmed', '', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(932, 1, 'phrase', '_json', 'unconfirmed', '', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(933, 1, 'phrase', '_json', 'inactive', '', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(934, 1, 'phrase', '_json', 'active', '', '2022-10-22 18:29:28', '2022-10-22 18:29:28');
INSERT INTO `ltm_translations` (`id`, `status`, `locale`, `group`, `key`, `value`, `created_at`, `updated_at`) VALUES
(935, 1, 'phrase', '_json', 'banned', '', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(936, 1, 'phrase', '_json', 'change_role', ' ', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(937, 1, 'phrase', '_json', 'ban_user', ' ', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(938, 1, 'phrase', '_json', 'unban_user', ' ', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(939, 1, 'phrase', '_json', 'close', '', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(940, 1, 'phrase', '_json', 'save', '', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(941, 1, 'phrase', '_json', 'old_password', ' ', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(942, 1, 'phrase', '_json', 'new_password', ' ', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(943, 1, 'phrase', '_json', 'confirm_password', ' ', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(944, 1, 'phrase', '_json', 'update', '', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(945, 1, 'phrase', '_json', 'default_language', ' ', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(946, 1, 'phrase', '_json', 'language', '', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(947, 1, 'phrase', '_json', 'add_language', ' ', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(948, 1, 'phrase', '_json', 'language_name', ' ', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(949, 1, 'phrase', '_json', 'short_form', ' ', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(950, 1, 'phrase', '_json', 'script', '', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(951, 1, 'phrase', '_json', 'native', '', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(952, 1, 'phrase', '_json', 'regional', '', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(953, 1, 'phrase', '_json', 'text_direction', ' ', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(954, 1, 'phrase', '_json', 'ltr', '', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(955, 1, 'phrase', '_json', 'rtl', '', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(956, 1, 'phrase', '_json', 'languages', '', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(957, 1, 'phrase', '_json', 'code', '', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(958, 1, 'phrase', '_json', 'edit_phrase', '', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(959, 1, 'phrase', '_json', 'translated_text', '', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(960, 1, 'phrase', '_json', 'add', '', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(961, 1, 'phrase', '_json', 'phrase', '', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(962, 1, 'phrase', '_json', 'translated_language', '', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(963, 1, 'phrase', '_json', 'update_language', '', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(964, 1, 'phrase', '_json', 'select_option', '', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(965, 1, 'phrase', '_json', 'update_languages', '', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(966, 1, 'phrase', '_json', 'gallery', '', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(967, 1, 'phrase', '_json', 'add_image', '', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(968, 1, 'phrase', '_json', 'general_settings', '', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(969, 1, 'phrase', '_json', 'contact_settings', '', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(970, 1, 'phrase', '_json', 'save_change', '', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(971, 1, 'phrase', '_json', 'modules', '', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(972, 1, 'phrase', '_json', 'plain_text', '', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(973, 1, 'phrase', '_json', 'flag', '', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(974, 1, 'phrase', '_json', 'social_media_settings', '', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(975, 1, 'phrase', '_json', 'email_settings', '', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(976, 1, 'phrase', '_json', 'timezone', '', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(977, 1, 'phrase', '_json', 'application_name', '', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(978, 1, 'phrase', '_json', 'copyright', '', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(979, 1, 'phrase', '_json', 'copyright_text', '', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(980, 1, 'phrase', '_json', 'address', '', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(981, 1, 'phrase', '_json', 'phone', '', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(982, 1, 'phrase', '_json', 'facebook_url', '', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(983, 1, 'phrase', '_json', 'twitter_url', '', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(984, 1, 'phrase', '_json', 'google_url', '', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(985, 1, 'phrase', '_json', 'instagram_url', '', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(986, 1, 'phrase', '_json', 'pinterest_url', '', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(987, 1, 'phrase', '_json', 'linkedin_url', '', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(988, 1, 'phrase', '_json', 'youtube_url', '', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(989, 1, 'phrase', '_json', 'settings', '', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(990, 1, 'phrase', '_json', 'mail_driver', '', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(991, 1, 'phrase', '_json', 'mail_host', ' ', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(992, 1, 'phrase', '_json', 'mail_port', ' ', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(993, 1, 'phrase', '_json', 'mail_address', '', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(994, 1, 'phrase', '_json', 'mail_username', '', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(995, 1, 'phrase', '_json', 'mail_password', '', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(996, 1, 'phrase', '_json', 'path', '', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(997, 1, 'phrase', '_json', 'add_logo', '', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(998, 1, 'phrase', '_json', 'add_favicon', '', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(999, 1, 'phrase', '_json', 'zip_code', '', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(1000, 1, 'phrase', '_json', 'city', '', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(1001, 1, 'phrase', '_json', 'state', '', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(1002, 1, 'phrase', '_json', 'country', '', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(1003, 1, 'phrase', '_json', 'website', '', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(1004, 1, 'phrase', '_json', 'company_registration', '', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(1005, 1, 'phrase', '_json', 'tax_number', '', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(1006, 1, 'phrase', '_json', 'email_template', '', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(1007, 1, 'phrase', '_json', 'templates', '', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(1008, 1, 'phrase', '_json', 'email_group', '', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(1009, 1, 'phrase', '_json', 'subject', '', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(1010, 1, 'phrase', '_json', 'template_body', '', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(1011, 1, 'phrase', '_json', 'update_template', '', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(1012, 1, 'phrase', '_json', 'send_code', '', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(1013, 1, 'phrase', '_json', 'reset_password', '', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(1014, 1, 'phrase', '_json', 'default_language_changed', ' ', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(1015, 1, 'phrase', '_json', 'new_language_added', '', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(1016, 1, 'phrase', '_json', 'successfully_updated', '', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(1017, 1, 'phrase', '_json', 'successfully_added', '', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(1018, 1, 'phrase', '_json', 'reset_code_is_send_to_mail', '', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(1019, 1, 'phrase', '_json', 'you_can_login_with_new_password', '', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(1020, 1, 'phrase', '_json', 'email_password_mismatch', '', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(1021, 1, 'phrase', '_json', 'you_are_banned', '', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(1022, 1, 'phrase', '_json', 'your_account_is_not_activated', '', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(1023, 1, 'phrase', '_json', 'your_account_activation_successfully', '', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(1024, 1, 'phrase', '_json', 'check_your_mail_for_active', '', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(1025, 1, 'phrase', '_json', 'new_role_successfully_created', '', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(1026, 1, 'phrase', '_json', 'successfully_update_role', '', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(1027, 1, 'phrase', '_json', 'ban_this_user', '', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(1028, 1, 'phrase', '_json', 'unban_this_user', '', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(1029, 1, 'phrase', '_json', 'permission_successfully_updated', '', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(1030, 1, 'phrase', '_json', 'check_user_mail_for_active_this_account', '', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(1031, 1, 'phrase', '_json', 'the_email_has_already_been_taken', '', '2022-10-22 18:29:28', '2022-10-22 18:29:28'),
(1032, 1, 'phrase', '_json', 'please_check_again', '', '2022-10-22 18:29:29', '2022-10-22 18:29:29'),
(1033, 1, 'phrase', '_json', 'successfully_deleted', '', '2022-10-22 18:29:29', '2022-10-22 18:29:29'),
(1034, 1, 'phrase', '_json', 'not_found', '', '2022-10-22 18:29:29', '2022-10-22 18:29:29'),
(1035, 1, 'phrase', '_json', 'you_can_not_delete_this', '', '2022-10-22 18:29:29', '2022-10-22 18:29:29'),
(1036, 1, 'phrase', '_json', 'group', '', '2022-10-22 18:29:29', '2022-10-22 18:29:29'),
(1037, 1, 'phrase', '_json', 'default_messages', '', '2022-10-22 18:29:29', '2022-10-22 18:29:29'),
(1038, 1, 'phrase', '_json', 'are_you_sure?', '', '2022-10-22 18:29:29', '2022-10-22 18:29:29'),
(1039, 1, 'phrase', '_json', 'it_will_be_deleted_permanently', '', '2022-10-22 18:29:29', '2022-10-22 18:29:29'),
(1040, 1, 'phrase', '_json', 'cancel', '', '2022-10-22 18:29:29', '2022-10-22 18:29:29'),
(1041, 1, 'phrase', '_json', 'deleted', '', '2022-10-22 18:29:29', '2022-10-22 18:29:29'),
(1042, 1, 'phrase', '_json', 'something_went_wrong_with_ajax', '', '2022-10-22 18:29:29', '2022-10-22 18:29:29'),
(1043, 1, 'phrase', '_json', 'add_page', '', '2022-10-22 18:29:29', '2022-10-22 18:29:29'),
(1044, 1, 'phrase', '_json', 'pages', '', '2022-10-22 18:29:29', '2022-10-22 18:29:29'),
(1045, 1, 'phrase', '_json', 'title', '', '2022-10-22 18:29:29', '2022-10-22 18:29:29'),
(1046, 1, 'phrase', '_json', 'template', '', '2022-10-22 18:29:29', '2022-10-22 18:29:29'),
(1047, 1, 'phrase', '_json', 'visibility', '', '2022-10-22 18:29:29', '2022-10-22 18:29:29'),
(1048, 1, 'phrase', '_json', 'show', '', '2022-10-22 18:29:29', '2022-10-22 18:29:29'),
(1049, 1, 'phrase', '_json', 'hide', '', '2022-10-22 18:29:29', '2022-10-22 18:29:29'),
(1050, 1, 'phrase', '_json', 'show_only_to_registered_users', '', '2022-10-22 18:29:29', '2022-10-22 18:29:29'),
(1051, 1, 'phrase', '_json', 'successfully_update_menu_arrangement', '', '2022-10-22 18:29:29', '2022-10-22 18:29:29'),
(1052, 1, 'phrase', '_json', 'yes', '', '2022-10-22 18:29:29', '2022-10-22 18:29:29'),
(1053, 1, 'phrase', '_json', 'no', '', '2022-10-22 18:29:29', '2022-10-22 18:29:29'),
(1054, 1, 'phrase', '_json', 'show_title', '', '2022-10-22 18:29:29', '2022-10-22 18:29:29'),
(1055, 1, 'phrase', '_json', 'show_breadcrumb', '', '2022-10-22 18:29:29', '2022-10-22 18:29:29'),
(1056, 1, 'phrase', '_json', 'show_right_column', '', '2022-10-22 18:29:29', '2022-10-22 18:29:29'),
(1057, 1, 'phrase', '_json', 'show_on_menu', '  ', '2022-10-22 18:29:29', '2022-10-22 18:29:29'),
(1058, 1, 'phrase', '_json', 'top_menu', '', '2022-10-22 18:29:29', '2022-10-22 18:29:29'),
(1059, 1, 'phrase', '_json', 'main_menu', '', '2022-10-22 18:29:29', '2022-10-22 18:29:29'),
(1060, 1, 'phrase', '_json', 'footer', '', '2022-10-22 18:29:29', '2022-10-22 18:29:29'),
(1061, 1, 'phrase', '_json', 'do_not_add_to_menu', '    ', '2022-10-22 18:29:29', '2022-10-22 18:29:29'),
(1062, 1, 'phrase', '_json', 'meta_tag', ' ', '2022-10-22 18:29:29', '2022-10-22 18:29:29'),
(1063, 1, 'phrase', '_json', 'keywords', '', '2022-10-22 18:29:29', '2022-10-22 18:29:29'),
(1064, 1, 'phrase', '_json', 'location', '', '2022-10-22 18:29:29', '2022-10-22 18:29:29'),
(1065, 1, 'phrase', '_json', 'date_added', '', '2022-10-22 18:29:29', '2022-10-22 18:29:29'),
(1066, 1, 'phrase', '_json', 'update_page', '', '2022-10-22 18:29:29', '2022-10-22 18:29:29'),
(1067, 1, 'phrase', '_json', 'menu_order', '', '2022-10-22 18:29:29', '2022-10-22 18:29:29'),
(1068, 1, 'phrase', '_json', 'back_to_pages', '', '2022-10-22 18:29:29', '2022-10-22 18:29:29'),
(1069, 1, 'phrase', '_json', 'feature_image', '', '2022-10-22 18:29:29', '2022-10-22 18:29:29'),
(1070, 1, 'phrase', '_json', 'page_layout', '', '2022-10-22 18:29:29', '2022-10-22 18:29:29'),
(1071, 1, 'phrase', '_json', 'remark', '', '2022-10-22 18:29:29', '2022-10-22 18:29:29'),
(1072, 1, 'phrase', '_json', 'add_menu', '', '2022-10-22 18:29:29', '2022-10-22 18:29:29'),
(1073, 1, 'phrase', '_json', 'edit_menu', '', '2022-10-22 18:29:29', '2022-10-22 18:29:29'),
(1074, 1, 'phrase', '_json', 'add_menu_item', '', '2022-10-22 18:29:29', '2022-10-22 18:29:29'),
(1075, 1, 'phrase', '_json', 'label', '', '2022-10-22 18:29:29', '2022-10-22 18:29:29'),
(1076, 1, 'phrase', '_json', 'order', '', '2022-10-22 18:29:29', '2022-10-22 18:29:29'),
(1077, 1, 'phrase', '_json', 'parent', '', '2022-10-22 18:29:29', '2022-10-22 18:29:29'),
(1078, 1, 'phrase', '_json', 'custom', '', '2022-10-22 18:29:29', '2022-10-22 18:29:29'),
(1079, 1, 'phrase', '_json', 'page', '', '2022-10-22 18:29:29', '2022-10-22 18:29:29'),
(1080, 1, 'phrase', '_json', 'post', '', '2022-10-22 18:29:29', '2022-10-22 18:29:29'),
(1081, 1, 'phrase', '_json', 'source', '', '2022-10-22 18:29:29', '2022-10-22 18:29:29'),
(1082, 1, 'phrase', '_json', 'url', '', '2022-10-22 18:29:29', '2022-10-22 18:29:29'),
(1083, 1, 'phrase', '_json', 'mail_encryption', '', '2022-10-22 18:29:29', '2022-10-22 18:29:29'),
(1084, 1, 'phrase', '_json', 'seo', '', '2022-10-22 18:29:29', '2022-10-22 18:29:29'),
(1085, 1, 'phrase', '_json', 'post_id', '', '2022-10-22 18:29:29', '2022-10-22 18:29:29'),
(1086, 1, 'phrase', '_json', 'page_id', '', '2022-10-22 18:29:29', '2022-10-22 18:29:29'),
(1087, 1, 'phrase', '_json', 'menu_item', '', '2022-10-22 18:29:29', '2022-10-22 18:29:29'),
(1088, 1, 'phrase', '_json', 'update_menu_item', '', '2022-10-22 18:29:29', '2022-10-22 18:29:29'),
(1089, 1, 'phrase', '_json', 'back_to_menu_item', '', '2022-10-22 18:29:29', '2022-10-22 18:29:29'),
(1090, 1, 'phrase', '_json', 'menu_location', '', '2022-10-22 18:29:29', '2022-10-22 18:29:29'),
(1091, 1, 'phrase', '_json', 'create_new_menu', '', '2022-10-22 18:29:29', '2022-10-22 18:29:29'),
(1092, 1, 'phrase', '_json', 'create', '', '2022-10-22 18:29:29', '2022-10-22 18:29:29'),
(1093, 1, 'phrase', '_json', 'choice_page', '', '2022-10-22 18:29:29', '2022-10-22 18:29:29'),
(1094, 1, 'phrase', '_json', 'posts', '', '2022-10-22 18:29:29', '2022-10-22 18:29:29'),
(1095, 1, 'phrase', '_json', 'appearance', '', '2022-10-22 18:29:29', '2022-10-22 18:29:29'),
(1096, 1, 'phrase', '_json', 'drag_drop_menu_item_for_rearrange', '', '2022-10-22 18:29:29', '2022-10-22 18:29:29'),
(1097, 1, 'phrase', '_json', 'theme', '', '2022-10-22 18:29:29', '2022-10-22 18:29:29'),
(1098, 1, 'phrase', '_json', 'delete_menu_item', '', '2022-10-22 18:29:29', '2022-10-22 18:29:29'),
(1099, 1, 'phrase', '_json', 'select_menu', '', '2022-10-22 18:29:29', '2022-10-22 18:29:29'),
(1100, 1, 'phrase', '_json', 'delete_this_menu', '', '2022-10-22 18:29:29', '2022-10-22 18:29:29'),
(1101, 1, 'phrase', '_json', 'open_in_new_teb', '', '2022-10-22 18:29:29', '2022-10-22 18:29:29'),
(1102, 1, 'phrase', '_json', 'category_name', '', '2022-10-22 18:29:29', '2022-10-22 18:29:29'),
(1103, 1, 'phrase', '_json', 'select_language', '', '2022-10-22 18:29:29', '2022-10-22 18:29:29'),
(1104, 1, 'phrase', '_json', 'show_on_homepage', '', '2022-10-22 18:29:29', '2022-10-22 18:29:29'),
(1105, 1, 'phrase', '_json', 'category_block_style', '', '2022-10-22 18:29:29', '2022-10-22 18:29:29'),
(1106, 1, 'phrase', '_json', 'add_category', '', '2022-10-22 18:29:29', '2022-10-22 18:29:29'),
(1107, 1, 'phrase', '_json', 'update_category', '', '2022-10-22 18:29:29', '2022-10-22 18:29:29'),
(1108, 1, 'phrase', '_json', 'add_sub_category', '', '2022-10-22 18:29:29', '2022-10-22 18:29:29'),
(1109, 1, 'phrase', '_json', 'parent_category', '', '2022-10-22 18:29:29', '2022-10-22 18:29:29'),
(1110, 1, 'phrase', '_json', 'sub_category_name', '', '2022-10-22 18:29:29', '2022-10-22 18:29:29'),
(1111, 1, 'phrase', '_json', 'update_sub_category', '', '2022-10-22 18:29:29', '2022-10-22 18:29:29'),
(1112, 1, 'phrase', '_json', 'sub_categories', '', '2022-10-22 18:29:29', '2022-10-22 18:29:29'),
(1113, 1, 'phrase', '_json', 'categories', '', '2022-10-22 18:29:29', '2022-10-22 18:29:29'),
(1114, 1, 'phrase', '_json', 'select_category', '', '2022-10-22 18:29:29', '2022-10-22 18:29:29'),
(1115, 1, 'phrase', '_json', 'select_sub_category', '', '2022-10-22 18:29:29', '2022-10-22 18:29:29'),
(1116, 1, 'phrase', '_json', 'add_post', '', '2022-10-22 18:29:29', '2022-10-22 18:29:29'),
(1117, 1, 'phrase', '_json', 'posts_details', '', '2022-10-22 18:29:29', '2022-10-22 18:29:29'),
(1118, 1, 'phrase', '_json', 'content', '', '2022-10-22 18:29:29', '2022-10-22 18:29:29'),
(1119, 1, 'phrase', '_json', 'add_to_featured', '', '2022-10-22 18:29:29', '2022-10-22 18:29:29'),
(1120, 1, 'phrase', '_json', 'add_to_breaking', '', '2022-10-22 18:29:29', '2022-10-22 18:29:29'),
(1121, 1, 'phrase', '_json', 'add_to_slider', '', '2022-10-22 18:29:29', '2022-10-22 18:29:29'),
(1122, 1, 'phrase', '_json', 'add_to_recommended', '', '2022-10-22 18:29:29', '2022-10-22 18:29:29'),
(1123, 1, 'phrase', '_json', 'add_to_editor_picks', '', '2022-10-22 18:29:29', '2022-10-22 18:29:29'),
(1124, 1, 'phrase', '_json', 'editor_picks', '', '2022-10-22 18:29:29', '2022-10-22 18:29:29'),
(1125, 1, 'phrase', '_json', 'show_only_to_authenticate_users', '', '2022-10-22 18:29:29', '2022-10-22 18:29:29'),
(1126, 1, 'phrase', '_json', 'seo_details', '', '2022-10-22 18:29:29', '2022-10-22 18:29:29'),
(1127, 1, 'phrase', '_json', 'tags', '', '2022-10-22 18:29:29', '2022-10-22 18:29:29'),
(1128, 1, 'phrase', '_json', 'sub_category', '', '2022-10-22 18:29:29', '2022-10-22 18:29:29'),
(1129, 1, 'phrase', '_json', 'send_post_to_newsletter', '', '2022-10-22 18:29:29', '2022-10-22 18:29:29'),
(1130, 1, 'phrase', '_json', 'send_notification_subscribers', '', '2022-10-22 18:29:29', '2022-10-22 18:29:29'),
(1131, 1, 'phrase', '_json', 'publish', '', '2022-10-22 18:29:29', '2022-10-22 18:29:29'),
(1132, 1, 'phrase', '_json', 'published', '', '2022-10-22 18:29:29', '2022-10-22 18:29:29'),
(1133, 1, 'phrase', '_json', 'create_post', '', '2022-10-22 18:29:29', '2022-10-22 18:29:29'),
(1134, 1, 'phrase', '_json', 'category', '', '2022-10-22 18:29:29', '2022-10-22 18:29:29'),
(1135, 1, 'phrase', '_json', 'draft', '', '2022-10-22 18:29:29', '2022-10-22 18:29:29'),
(1136, 1, 'phrase', '_json', 'scheduled', '', '2022-10-22 18:29:29', '2022-10-22 18:29:29'),
(1137, 1, 'phrase', '_json', 'schedule_date', '', '2022-10-22 18:29:29', '2022-10-22 18:29:29'),
(1138, 1, 'phrase', '_json', 'post_type', '', '2022-10-22 18:29:29', '2022-10-22 18:29:29'),
(1139, 1, 'phrase', '_json', 'post_by', '', '2022-10-22 18:29:29', '2022-10-22 18:29:29'),
(1140, 1, 'phrase', '_json', 'hit', '', '2022-10-22 18:29:29', '2022-10-22 18:29:29'),
(1141, 1, 'phrase', '_json', 'added_date', '', '2022-10-22 18:29:29', '2022-10-22 18:29:29'),
(1142, 1, 'phrase', '_json', 'breaking', '', '2022-10-22 18:29:29', '2022-10-22 18:29:29'),
(1143, 1, 'phrase', '_json', 'featured', '', '2022-10-22 18:29:29', '2022-10-22 18:29:29'),
(1144, 1, 'phrase', '_json', 'recommended', '', '2022-10-22 18:29:29', '2022-10-22 18:29:29'),
(1145, 1, 'phrase', '_json', 'slider', '', '2022-10-22 18:29:29', '2022-10-22 18:29:29'),
(1146, 1, 'phrase', '_json', 'view', '', '2022-10-22 18:29:29', '2022-10-22 18:29:29'),
(1147, 1, 'phrase', '_json', 'breaking_posts', '', '2022-10-22 18:29:29', '2022-10-22 18:29:29'),
(1148, 1, 'phrase', '_json', 'featured_posts', '', '2022-10-22 18:29:29', '2022-10-22 18:29:29'),
(1149, 1, 'phrase', '_json', 'pending_posts', '', '2022-10-22 18:29:29', '2022-10-22 18:29:29'),
(1150, 1, 'phrase', '_json', 'recommended_posts', '', '2022-10-22 18:29:29', '2022-10-22 18:29:29'),
(1151, 1, 'phrase', '_json', 'slider_posts', '', '2022-10-22 18:29:29', '2022-10-22 18:29:29'),
(1152, 1, 'phrase', '_json', 'unpublished', '', '2022-10-22 18:29:29', '2022-10-22 18:29:29'),
(1153, 1, 'phrase', '_json', 'update_order', '', '2022-10-22 18:29:29', '2022-10-22 18:29:29'),
(1154, 1, 'phrase', '_json', 'remove', '', '2022-10-22 18:29:29', '2022-10-22 18:29:29'),
(1155, 1, 'phrase', '_json', 'create_article', '', '2022-10-22 18:29:29', '2022-10-22 18:29:29'),
(1156, 1, 'phrase', '_json', 'default_storage', '', '2022-10-22 18:29:29', '2022-10-22 18:29:29'),
(1157, 1, 'phrase', '_json', 'aws_access_key_id', '', '2022-10-22 18:29:29', '2022-10-22 18:29:29'),
(1158, 1, 'phrase', '_json', 'aws_secret_access_key', '', '2022-10-22 18:29:29', '2022-10-22 18:29:29'),
(1159, 1, 'phrase', '_json', 'aws_default_region', '', '2022-10-22 18:29:29', '2022-10-22 18:29:29'),
(1160, 1, 'phrase', '_json', 'aws_bucket', '', '2022-10-22 18:29:29', '2022-10-22 18:29:29'),
(1161, 1, 'phrase', '_json', 'upload_video', '', '2022-10-22 18:29:29', '2022-10-22 18:29:29'),
(1162, 1, 'phrase', '_json', 'remove_video', '', '2022-10-22 18:29:29', '2022-10-22 18:29:29'),
(1163, 1, 'phrase', '_json', 'add_video', '', '2022-10-22 18:29:29', '2022-10-22 18:29:29'),
(1164, 1, 'phrase', '_json', 'image_gallery', '', '2022-10-22 18:29:29', '2022-10-22 18:29:29'),
(1165, 1, 'phrase', '_json', 'upload', '', '2022-10-22 18:29:29', '2022-10-22 18:29:29'),
(1166, 1, 'phrase', '_json', 'select_image', '', '2022-10-22 18:29:29', '2022-10-22 18:29:29'),
(1167, 1, 'phrase', '_json', 'storage_settings', '', '2022-10-22 18:29:29', '2022-10-22 18:29:29'),
(1168, 1, 'phrase', '_json', 'it_will_be_remove_form_this_feature', '', '2022-10-22 18:29:29', '2022-10-22 18:29:29'),
(1169, 1, 'phrase', '_json', 'it_will_be_added_to_this_feature', '', '2022-10-22 18:29:29', '2022-10-22 18:29:29'),
(1170, 1, 'phrase', '_json', 'added', '', '2022-10-22 18:29:29', '2022-10-22 18:29:29'),
(1171, 1, 'phrase', '_json', 'removed', '', '2022-10-22 18:29:29', '2022-10-22 18:29:29'),
(1172, 1, 'phrase', '_json', 'create_video_post', '', '2022-10-22 18:29:29', '2022-10-22 18:29:29'),
(1173, 1, 'phrase', '_json', 'update_post', '', '2022-10-22 18:29:29', '2022-10-22 18:29:29'),
(1174, 1, 'phrase', '_json', 'no_more_records', '', '2022-10-22 18:29:29', '2022-10-22 18:29:29'),
(1175, 1, 'phrase', '_json', 'load_more', '', '2022-10-22 18:29:29', '2022-10-22 18:29:29'),
(1176, 1, 'phrase', '_json', 'select_video', '', '2022-10-22 18:29:29', '2022-10-22 18:29:29'),
(1177, 1, 'phrase', '_json', 'video_gallery', '', '2022-10-22 18:29:29', '2022-10-22 18:29:29'),
(1178, 1, 'phrase', '_json', 'post_thumbnail', '', '2022-10-22 18:29:29', '2022-10-22 18:29:29'),
(1179, 1, 'phrase', '_json', 'video_url_type', '', '2022-10-22 18:29:29', '2022-10-22 18:29:29'),
(1180, 1, 'phrase', '_json', 'video_url', '', '2022-10-22 18:29:29', '2022-10-22 18:29:29'),
(1181, 1, 'phrase', '_json', 'add_video_thumbnail', '', '2022-10-22 18:29:29', '2022-10-22 18:29:29'),
(1182, 1, 'phrase', '_json', 'ads', '', '2022-10-22 18:29:29', '2022-10-22 18:29:29'),
(1183, 1, 'phrase', '_json', 'ad_location', '', '2022-10-22 18:29:29', '2022-10-22 18:29:29'),
(1184, 1, 'phrase', '_json', 'create_ad', '', '2022-10-22 18:29:29', '2022-10-22 18:29:29'),
(1185, 1, 'phrase', '_json', 'ad_name', '', '2022-10-22 18:29:29', '2022-10-22 18:29:29'),
(1186, 1, 'phrase', '_json', 'ad_size', '', '2022-10-22 18:29:29', '2022-10-22 18:29:29'),
(1187, 1, 'phrase', '_json', 'ad_type', '', '2022-10-22 18:29:29', '2022-10-22 18:29:29'),
(1188, 1, 'phrase', '_json', 'ad_url', '', '2022-10-22 18:29:29', '2022-10-22 18:29:29'),
(1189, 1, 'phrase', '_json', 'ad_image', '', '2022-10-22 18:29:29', '2022-10-22 18:29:29'),
(1190, 1, 'phrase', '_json', 'ad_code', '', '2022-10-22 18:29:29', '2022-10-22 18:29:29'),
(1191, 1, 'phrase', '_json', 'ads_details', '', '2022-10-22 18:29:29', '2022-10-22 18:29:29'),
(1192, 1, 'phrase', '_json', 'back_to_ads', '', '2022-10-22 18:29:29', '2022-10-22 18:29:29'),
(1193, 1, 'phrase', '_json', 'enable', '', '2022-10-22 18:29:29', '2022-10-22 18:29:29'),
(1194, 1, 'phrase', '_json', 'disable', '', '2022-10-22 18:29:29', '2022-10-22 18:29:29'),
(1195, 1, 'phrase', '_json', 'update_ad_image', '', '2022-10-22 18:29:29', '2022-10-22 18:29:29'),
(1196, 1, 'phrase', '_json', 'edit_ad', '', '2022-10-22 18:29:29', '2022-10-22 18:29:29'),
(1197, 1, 'phrase', '_json', 'update_ad', '', '2022-10-22 18:29:29', '2022-10-22 18:29:29'),
(1198, 1, 'phrase', '_json', 'ads_location', '', '2022-10-22 18:29:29', '2022-10-22 18:29:29'),
(1199, 1, 'phrase', '_json', 'unique_name', '', '2022-10-22 18:29:29', '2022-10-22 18:29:29'),
(1200, 1, 'phrase', '_json', 'ad_text', '', '2022-10-22 18:29:29', '2022-10-22 18:29:29'),
(1201, 1, 'phrase', '_json', 'text', '', '2022-10-22 18:29:29', '2022-10-22 18:29:29'),
(1202, 1, 'phrase', '_json', 'send_notification', '', '2022-10-22 18:29:29', '2022-10-22 18:29:29'),
(1203, 1, 'phrase', '_json', 'notification_setting_details', '', '2022-10-22 18:29:29', '2022-10-22 18:29:29'),
(1204, 1, 'phrase', '_json', 'notification_setting', '', '2022-10-22 18:29:29', '2022-10-22 18:29:29'),
(1205, 1, 'phrase', '_json', 'onesignal_api_key', '', '2022-10-22 18:29:29', '2022-10-22 18:29:29'),
(1206, 1, 'phrase', '_json', 'onesignal_app_id', '', '2022-10-22 18:29:29', '2022-10-22 18:29:29'),
(1207, 1, 'phrase', '_json', 'onesignal_action_message', '', '2022-10-22 18:29:29', '2022-10-22 18:29:29'),
(1208, 1, 'phrase', '_json', 'onesignal_accept_button', '', '2022-10-22 18:29:29', '2022-10-22 18:29:29'),
(1209, 1, 'phrase', '_json', 'onesignal_cancel_button', '', '2022-10-22 18:29:29', '2022-10-22 18:29:29'),
(1210, 1, 'phrase', '_json', 'icon_url', '', '2022-10-22 18:29:29', '2022-10-22 18:29:29'),
(1211, 1, 'phrase', '_json', 'image_url', '', '2022-10-22 18:29:29', '2022-10-22 18:29:29'),
(1212, 1, 'phrase', '_json', 'message', '', '2022-10-22 18:29:29', '2022-10-22 18:29:29'),
(1213, 1, 'phrase', '_json', 'headings', '', '2022-10-22 18:29:29', '2022-10-22 18:29:29'),
(1214, 1, 'phrase', '_json', 'send_custom_notification', '', '2022-10-22 18:29:29', '2022-10-22 18:29:29'),
(1215, 1, 'phrase', '_json', 'successfully_send', '', '2022-10-22 18:29:29', '2022-10-22 18:29:29'),
(1216, 1, 'phrase', '_json', 'send_email_to_subscribers', '', '2022-10-22 18:29:29', '2022-10-22 18:29:29'),
(1217, 1, 'phrase', '_json', 'Newsletter', '', '2022-10-22 18:29:29', '2022-10-22 18:29:29'),
(1218, 1, 'phrase', '_json', 'subscribers', '', '2022-10-22 18:29:29', '2022-10-22 18:29:29'),
(1219, 1, 'phrase', '_json', 'send_email', '', '2022-10-22 18:29:29', '2022-10-22 18:29:29'),
(1220, 1, 'phrase', '_json', 'add_poll', '', '2022-10-22 18:29:29', '2022-10-22 18:29:29'),
(1221, 1, 'phrase', '_json', 'back_to_polls', '', '2022-10-22 18:29:29', '2022-10-22 18:29:29'),
(1222, 1, 'phrase', '_json', 'question', '', '2022-10-22 18:29:29', '2022-10-22 18:29:29'),
(1223, 1, 'phrase', '_json', 'option_1', '', '2022-10-22 18:29:29', '2022-10-22 18:29:29'),
(1224, 1, 'phrase', '_json', 'option_2', '', '2022-10-22 18:29:29', '2022-10-22 18:29:29'),
(1225, 1, 'phrase', '_json', 'option_3', '', '2022-10-22 18:29:29', '2022-10-22 18:29:29'),
(1226, 1, 'phrase', '_json', 'option_4', '', '2022-10-22 18:29:29', '2022-10-22 18:29:29'),
(1227, 1, 'phrase', '_json', 'option_5', '', '2022-10-22 18:29:29', '2022-10-22 18:29:29'),
(1228, 1, 'phrase', '_json', 'option_6', '', '2022-10-22 18:29:29', '2022-10-22 18:29:29'),
(1229, 1, 'phrase', '_json', 'option_7', '', '2022-10-22 18:29:29', '2022-10-22 18:29:29'),
(1230, 1, 'phrase', '_json', 'option_8', '', '2022-10-22 18:29:29', '2022-10-22 18:29:29'),
(1231, 1, 'phrase', '_json', 'option_9', '', '2022-10-22 18:29:29', '2022-10-22 18:29:29'),
(1232, 1, 'phrase', '_json', 'option_10', '', '2022-10-22 18:29:29', '2022-10-22 18:29:29'),
(1233, 1, 'phrase', '_json', 'auth_required', '', '2022-10-22 18:29:29', '2022-10-22 18:29:29'),
(1234, 1, 'phrase', '_json', 'update_poll', '', '2022-10-22 18:29:29', '2022-10-22 18:29:29'),
(1235, 1, 'phrase', '_json', 'create_poll', '', '2022-10-22 18:29:29', '2022-10-22 18:29:29'),
(1236, 1, 'phrase', '_json', 'polls', '', '2022-10-22 18:29:29', '2022-10-22 18:29:29'),
(1237, 1, 'phrase', '_json', 'poll', '', '2022-10-22 18:29:29', '2022-10-22 18:29:29'),
(1238, 1, 'phrase', '_json', 'vote', '', '2022-10-22 18:29:29', '2022-10-22 18:29:29'),
(1239, 1, 'phrase', '_json', 'result', '', '2022-10-22 18:29:29', '2022-10-22 18:29:29'),
(1240, 1, 'phrase', '_json', 'total_vote', '', '2022-10-22 18:29:29', '2022-10-22 18:29:29'),
(1241, 1, 'phrase', '_json', 'widgets', '', '2022-10-22 18:29:29', '2022-10-22 18:29:29'),
(1242, 1, 'phrase', '_json', 'short_code', '', '2022-10-22 18:29:29', '2022-10-22 18:29:29'),
(1243, 1, 'phrase', '_json', 'add_widget', '', '2022-10-22 18:29:29', '2022-10-22 18:29:29'),
(1244, 1, 'phrase', '_json', 'update_widget', '', '2022-10-22 18:29:29', '2022-10-22 18:29:29'),
(1245, 1, 'phrase', '_json', 'back_to_widgets', '', '2022-10-22 18:29:29', '2022-10-22 18:29:29'),
(1246, 1, 'phrase', '_json', 'default', '', '2022-10-22 18:29:29', '2022-10-22 18:29:29'),
(1247, 1, 'phrase', '_json', 'type', '', '2022-10-22 18:29:29', '2022-10-22 18:29:29'),
(1248, 1, 'phrase', '_json', 'send_date', '', '2022-10-22 18:29:29', '2022-10-22 18:29:29'),
(1249, 1, 'phrase', '_json', 'contact_messages', '', '2022-10-22 18:29:29', '2022-10-22 18:29:29'),
(1250, 1, 'phrase', '_json', 'comment', '', '2022-10-22 18:29:29', '2022-10-22 18:29:29'),
(1251, 1, 'phrase', '_json', 'comments', '', '2022-10-22 18:29:29', '2022-10-22 18:29:29'),
(1252, 1, 'phrase', '_json', 'comment_at', '', '2022-10-22 18:29:29', '2022-10-22 18:29:29'),
(1253, 1, 'phrase', '_json', 'unseen', '', '2022-10-22 18:29:29', '2022-10-22 18:29:29'),
(1254, 1, 'phrase', '_json', 'seen', '', '2022-10-22 18:29:29', '2022-10-22 18:29:29'),
(1255, 1, 'phrase', '_json', 'replay', '', '2022-10-22 18:29:29', '2022-10-22 18:29:29'),
(1256, 1, 'phrase', '_json', 'all', '', '2022-10-22 18:29:29', '2022-10-22 18:29:29'),
(1257, 1, 'phrase', '_json', 'filter', '', '2022-10-22 18:29:29', '2022-10-22 18:29:29'),
(1258, 1, 'phrase', '_json', 'seo_settings', '', '2022-10-22 18:29:29', '2022-10-22 18:29:29'),
(1259, 1, 'phrase', '_json', 'seo_title', '', '2022-10-22 18:29:29', '2022-10-22 18:29:29'),
(1260, 1, 'phrase', '_json', 'seo_keywords', '', '2022-10-22 18:29:29', '2022-10-22 18:29:29'),
(1261, 1, 'phrase', '_json', 'seo_meta_description', '', '2022-10-22 18:29:29', '2022-10-22 18:29:29'),
(1262, 1, 'phrase', '_json', 'author_name', '', '2022-10-22 18:29:29', '2022-10-22 18:29:29'),
(1263, 1, 'phrase', '_json', 'google_analytics_id', '', '2022-10-22 18:29:29', '2022-10-22 18:29:29'),
(1264, 1, 'phrase', '_json', 'select_current_theme', '', '2022-10-22 18:29:29', '2022-10-22 18:29:29'),
(1265, 1, 'phrase', '_json', 'og_title', '', '2022-10-22 18:29:29', '2022-10-22 18:29:29'),
(1266, 1, 'phrase', '_json', 'og_description', '', '2022-10-22 18:29:29', '2022-10-22 18:29:29'),
(1267, 1, 'phrase', '_json', 'og_image', '', '2022-10-22 18:29:29', '2022-10-22 18:29:29'),
(1268, 1, 'phrase', '_json', 'add_section', '', '2022-10-22 18:29:29', '2022-10-22 18:29:29'),
(1269, 1, 'phrase', '_json', 'section_label', '', '2022-10-22 18:29:29', '2022-10-22 18:29:29'),
(1270, 1, 'phrase', '_json', 'post_amount', '', '2022-10-22 18:29:29', '2022-10-22 18:29:29'),
(1271, 1, 'phrase', '_json', 'section_style', '', '2022-10-22 18:29:29', '2022-10-22 18:29:29'),
(1272, 1, 'phrase', '_json', 'sections', '', '2022-10-22 18:29:29', '2022-10-22 18:29:29'),
(1273, 1, 'phrase', '_json', 'primary_section', '', '2022-10-22 18:29:29', '2022-10-22 18:29:29'),
(1274, 1, 'phrase', '_json', 'update_section', '', '2022-10-22 18:29:29', '2022-10-22 18:29:29'),
(1275, 1, 'phrase', '_json', 'update_theme', '', '2022-10-22 18:29:29', '2022-10-22 18:29:29'),
(1276, 1, 'phrase', '_json', 'header', '', '2022-10-22 18:29:29', '2022-10-22 18:29:29'),
(1277, 1, 'phrase', '_json', 'themes_options', '', '2022-10-22 18:29:29', '2022-10-22 18:29:29'),
(1278, 1, 'phrase', '_json', 'page_content', '', '2022-10-22 18:29:29', '2022-10-22 18:29:29'),
(1279, 1, 'phrase', '_json', 'socials', 'Socials', '2022-10-22 18:29:29', '2022-10-22 18:29:29'),
(1280, 1, 'phrase', '_json', 'create_social', '', '2022-10-22 18:29:29', '2022-10-22 18:29:29'),
(1281, 1, 'phrase', '_json', 'back_to_socials', '', '2022-10-22 18:29:29', '2022-10-22 18:29:29'),
(1282, 1, 'phrase', '_json', 'social_details', '', '2022-10-22 18:29:29', '2022-10-22 18:29:29'),
(1283, 1, 'phrase', '_json', 'bg_color', '', '2022-10-22 18:29:29', '2022-10-22 18:29:29'),
(1284, 1, 'phrase', '_json', 'click_me_to_visit_site', '', '2022-10-22 18:29:29', '2022-10-22 18:29:29'),
(1285, 1, 'phrase', '_json', 'use_class_of_font_awesome_icon', '', '2022-10-22 18:29:29', '2022-10-22 18:29:29'),
(1286, 1, 'phrase', '_json', 'icon', '', '2022-10-22 18:29:29', '2022-10-22 18:29:29'),
(1287, 1, 'phrase', '_json', 'about_site', '', '2022-10-22 18:29:29', '2022-10-22 18:29:29'),
(1288, 1, 'phrase', '_json', 'icon_bg_color', '', '2022-10-22 18:29:29', '2022-10-22 18:29:29'),
(1289, 1, 'phrase', '_json', 'text_bg_color', '', '2022-10-22 18:29:29', '2022-10-22 18:29:29'),
(1290, 1, 'phrase', '_json', 'start_date', '', '2022-10-22 18:29:29', '2022-10-22 18:29:29'),
(1291, 1, 'phrase', '_json', 'end_date', '', '2022-10-22 18:29:29', '2022-10-22 18:29:29'),
(1292, 1, 'phrase', '_json', 'right_sidebar', '', '2022-10-22 18:29:29', '2022-10-22 18:29:29'),
(1293, 1, 'phrase', '_json', 'content_type', '', '2022-10-22 18:29:29', '2022-10-22 18:29:29'),
(1294, 1, 'phrase', '_json', 'select_language_for_below_fields', '', '2022-10-22 18:29:29', '2022-10-22 18:29:29'),
(1295, 1, 'phrase', '_json', 'dont_have_an_account', '', '2022-10-22 18:29:29', '2022-10-22 18:29:29'),
(1296, 1, 'phrase', '_json', 'sign_up', '', '2022-10-22 18:29:29', '2022-10-22 18:29:29'),
(1297, 1, 'phrase', '_json', 'already_have_an_account', '', '2022-10-22 18:29:29', '2022-10-22 18:29:29'),
(1298, 1, 'phrase', '_json', 'submit_now', '', '2022-10-22 18:29:29', '2022-10-22 18:29:29'),
(1299, 1, 'phrase', '_json', 'follow_us', '', '2022-10-22 18:29:29', '2022-10-22 18:29:29'),
(1300, 1, 'phrase', '_json', 'reply_from', '', '2022-10-22 18:29:29', '2022-10-22 18:29:29'),
(1301, 1, 'phrase', '_json', 'breaking_news', '', '2022-10-22 18:29:29', '2022-10-22 18:29:29'),
(1302, 1, 'phrase', '_json', 'reply', '', '2022-10-22 18:29:29', '2022-10-22 18:29:29'),
(1303, 1, 'phrase', '_json', 'subscribe_description', '', '2022-10-22 18:29:29', '2022-10-22 18:29:29'),
(1304, 1, 'phrase', '_json', 'subscribe', '', '2022-10-22 18:29:29', '2022-10-22 18:29:29'),
(1305, 1, 'phrase', '_json', 'stay_connected', '', '2022-10-22 18:29:29', '2022-10-22 18:29:29'),
(1306, 1, 'phrase', '_json', 'newsletter', '', '2022-10-22 18:29:29', '2022-10-22 18:29:29'),
(1307, 1, 'phrase', '_json', 'newsletter_description', '', '2022-10-22 18:29:29', '2022-10-22 18:29:29'),
(1308, 1, 'phrase', '_json', 'weather', '', '2022-10-22 18:29:29', '2022-10-22 18:29:29'),
(1309, 1, 'phrase', '_json', 'about_us', '', '2022-10-22 18:29:29', '2022-10-22 18:29:29'),
(1310, 1, 'phrase', '_json', 'you_have_to_select_one_option', '', '2022-10-22 18:29:29', '2022-10-22 18:29:29'),
(1311, 1, 'phrase', '_json', 'you_have_to_login_for_voting', '', '2022-10-22 18:29:29', '2022-10-22 18:29:29'),
(1312, 1, 'phrase', '_json', 'vote_has_been_submitted_successfully', '', '2022-10-22 18:29:29', '2022-10-22 18:29:29'),
(1313, 1, 'phrase', '_json', 'vote_has_been_submitted_unsuccessfully', '', '2022-10-22 18:29:29', '2022-10-22 18:29:29'),
(1314, 1, 'phrase', '_json', 'thank_you', '', '2022-10-22 18:29:29', '2022-10-22 18:29:29'),
(1315, 1, 'phrase', '_json', 'oops', '', '2022-10-22 18:29:29', '2022-10-22 18:29:29'),
(1316, 1, 'phrase', '_json', 'page_type', '', '2022-10-22 18:29:29', '2022-10-22 18:29:29'),
(1317, 1, 'phrase', '_json', 'page_template_type', '', '2022-10-22 18:29:29', '2022-10-22 18:29:29'),
(1318, 1, 'phrase', '_json', 'without_sidebar', '', '2022-10-22 18:29:29', '2022-10-22 18:29:29'),
(1319, 1, 'phrase', '_json', 'with_right_sidebar', '', '2022-10-22 18:29:29', '2022-10-22 18:29:29'),
(1320, 1, 'phrase', '_json', 'with_left_sidebar', '', '2022-10-22 18:29:29', '2022-10-22 18:29:29'),
(1321, 1, 'phrase', '_json', 'send_a_message', '', '2022-10-22 18:29:29', '2022-10-22 18:29:29'),
(1322, 1, 'phrase', '_json', 'recaptcha_settings', '', '2022-10-22 18:29:29', '2022-10-22 18:29:29'),
(1323, 1, 'phrase', '_json', 'captcha_secret', '', '2022-10-22 18:29:29', '2022-10-22 18:29:29'),
(1324, 1, 'phrase', '_json', 'captcha_sitekey', '', '2022-10-22 18:29:29', '2022-10-22 18:29:29'),
(1325, 1, 'phrase', '_json', 'captcha', '', '2022-10-22 18:29:29', '2022-10-22 18:29:29'),
(1326, 1, 'phrase', '_json', 'test_mail_subject', '', '2022-10-22 18:29:29', '2022-10-22 18:29:29'),
(1327, 1, 'phrase', '_json', 'test_mail_success_message', '', '2022-10-22 18:29:29', '2022-10-22 18:29:29'),
(1328, 1, 'phrase', '_json', 'test_mail_error_message', '', '2022-10-22 18:29:29', '2022-10-22 18:29:29'),
(1329, 1, 'phrase', '_json', 'test_mail_message', '', '2022-10-22 18:29:29', '2022-10-22 18:29:29'),
(1330, 1, 'phrase', '_json', 'successfully_registration_need_to_mail_verification', '', '2022-10-22 18:29:29', '2022-10-22 18:29:29'),
(1331, 1, 'phrase', '_json', 'available_merge_fields', '', '2022-10-22 18:29:29', '2022-10-22 18:29:29'),
(1332, 1, 'phrase', '_json', 'site_logo', '', '2022-10-22 18:29:29', '2022-10-22 18:29:29'),
(1333, 1, 'phrase', '_json', 'username', '', '2022-10-22 18:29:29', '2022-10-22 18:29:29'),
(1334, 1, 'phrase', '_json', 'site_name', '', '2022-10-22 18:29:29', '2022-10-22 18:29:29'),
(1335, 1, 'phrase', '_json', 'site_url', '', '2022-10-22 18:29:29', '2022-10-22 18:29:29'),
(1336, 1, 'phrase', '_json', 'user_email', '', '2022-10-22 18:29:29', '2022-10-22 18:29:29'),
(1337, 1, 'phrase', '_json', 'activate_url', '', '2022-10-22 18:29:29', '2022-10-22 18:29:29'),
(1338, 1, 'phrase', '_json', 'post_title', '', '2022-10-22 18:29:29', '2022-10-22 18:29:29'),
(1339, 1, 'phrase', '_json', 'read_more', '', '2022-10-22 18:29:29', '2022-10-22 18:29:29'),
(1340, 1, 'phrase', '_json', 'our_blog', '', '2022-10-22 18:29:29', '2022-10-22 18:29:29'),
(1341, 1, 'phrase', '_json', 'popular_post', '', '2022-10-22 18:29:29', '2022-10-22 18:29:29'),
(1342, 1, 'phrase', '_json', 'latest_post', '', '2022-10-22 18:29:29', '2022-10-22 18:29:29'),
(1343, 1, 'phrase', '_json', 'recommended_post', '', '2022-10-22 18:29:29', '2022-10-22 18:29:29'),
(1344, 1, 'phrase', '_json', 'posted_on', '', '2022-10-22 18:29:29', '2022-10-22 18:29:29'),
(1345, 1, 'phrase', '_json', 'no_content_available', '', '2022-10-22 18:29:29', '2022-10-22 18:29:29'),
(1346, 1, 'phrase', '_json', 'successfully_unsubscribed', '', '2022-10-22 18:29:29', '2022-10-22 18:29:29'),
(1347, 1, 'phrase', '_json', 'unsuccessfully_unsubscribed', '', '2022-10-22 18:29:29', '2022-10-22 18:29:29'),
(1348, 1, 'phrase', '_json', 'show_ad_in_bottom', '', '2022-10-22 18:29:29', '2022-10-22 18:29:29'),
(1349, 1, 'phrase', '_json', 'must_select', '', '2022-10-22 18:29:29', '2022-10-22 18:29:29'),
(1350, 1, 'phrase', '_json', 'default_mode', '', '2022-10-22 18:29:29', '2022-10-22 18:29:29'),
(1351, 1, 'phrase', '_json', 'dark_mode', '', '2022-10-22 18:29:29', '2022-10-22 18:29:29'),
(1352, 1, 'phrase', '_json', 'today', '', '2022-10-22 18:29:29', '2022-10-22 18:29:29'),
(1353, 1, 'phrase', '_json', 'comment_settings', '', '2022-10-22 18:29:29', '2022-10-22 18:29:29'),
(1354, 1, 'phrase', '_json', 'all_comments', '', '2022-10-22 18:29:29', '2022-10-22 18:29:29'),
(1355, 1, 'phrase', '_json', 'unpublish', '', '2022-10-22 18:29:29', '2022-10-22 18:29:29'),
(1356, 1, 'phrase', '_json', 'submitted_posts', '', '2022-10-22 18:29:29', '2022-10-22 18:29:29'),
(1357, 1, 'phrase', '_json', 'in_build', '', '2022-10-22 18:29:29', '2022-10-22 18:29:29'),
(1358, 1, 'phrase', '_json', 'disqus_comment', '', '2022-10-22 18:29:29', '2022-10-22 18:29:29'),
(1359, 1, 'phrase', '_json', 'disqus_short', '', '2022-10-22 18:29:29', '2022-10-22 18:29:29'),
(1360, 1, 'phrase', '_json', 'facebook_comment', '', '2022-10-22 18:29:29', '2022-10-22 18:29:29'),
(1361, 1, 'phrase', '_json', 'facebook_app_id', '', '2022-10-22 18:29:29', '2022-10-22 18:29:29'),
(1362, 1, 'phrase', '_json', 'signature', '', '2022-10-22 18:29:29', '2022-10-22 18:29:29'),
(1363, 1, 'phrase', '_json', 'search', '', '2022-10-22 18:29:29', '2022-10-22 18:29:29'),
(1364, 1, 'phrase', '_json', 'input_user', '', '2022-10-22 18:29:29', '2022-10-22 18:29:29'),
(1365, 1, 'phrase', '_json', 'input_email', '', '2022-10-22 18:29:29', '2022-10-22 18:29:29'),
(1366, 1, 'phrase', '_json', 'input_message', '', '2022-10-22 18:29:29', '2022-10-22 18:29:29'),
(1367, 1, 'phrase', '_json', 'submit_news', '', '2022-10-22 18:29:29', '2022-10-22 18:29:29'),
(1368, 1, 'phrase', '_json', 'post_image', '', '2022-10-22 18:29:29', '2022-10-22 18:29:29'),
(1369, 1, 'phrase', '_json', 'email_address', '', '2022-10-22 18:29:29', '2022-10-22 18:29:29'),
(1370, 1, 'phrase', '_json', 'view_results', '', '2022-10-22 18:29:29', '2022-10-22 18:29:29'),
(1371, 1, 'phrase', '_json', 'custom_header_footer', '', '2022-10-22 18:29:29', '2022-10-22 18:29:29'),
(1372, 1, 'phrase', '_json', 'predefined_header', '', '2022-10-22 18:29:29', '2022-10-22 18:29:29'),
(1373, 1, 'phrase', '_json', 'custom_js', '', '2022-10-22 18:29:29', '2022-10-22 18:29:29'),
(1374, 1, 'phrase', '_json', 'custom_css', '', '2022-10-22 18:29:29', '2022-10-22 18:29:29'),
(1375, 1, 'phrase', '_json', 'addthis_public_id', '', '2022-10-22 18:29:29', '2022-10-22 18:29:29'),
(1376, 1, 'phrase', '_json', 'adthis_option', '', '2022-10-22 18:29:29', '2022-10-22 18:29:29'),
(1377, 1, 'phrase', '_json', 'article_detail_prefix', '', '2022-10-22 18:29:29', '2022-10-22 18:29:29'),
(1378, 1, 'phrase', '_json', 'page_detail_prefix', '', '2022-10-22 18:29:29', '2022-10-22 18:29:29'),
(1379, 1, 'phrase', '_json', 'url_settings', '', '2022-10-22 18:29:29', '2022-10-22 18:29:29'),
(1380, 1, 'phrase', '_json', 'cron_information', '', '2022-10-22 18:29:29', '2022-10-22 18:29:29'),
(1381, 1, 'phrase', '_json', 'update_cron_information', '', '2022-10-22 18:29:29', '2022-10-22 18:29:29'),
(1382, 1, 'phrase', '_json', 'related_post', '', '2022-10-22 18:29:29', '2022-10-22 18:29:29'),
(1383, 1, 'phrase', '_json', 'cron_job_completed_successfully', '', '2022-10-22 18:29:29', '2022-10-22 18:29:29'),
(1384, 1, 'phrase', '_json', 'cron_job_completed_unsuccessfully', '', '2022-10-22 18:29:29', '2022-10-22 18:29:29'),
(1385, 1, 'phrase', '_json', 'total_visits', '', '2022-10-22 18:29:29', '2022-10-22 18:29:29'),
(1386, 1, 'phrase', '_json', 'total_visitors', '', '2022-10-22 18:29:29', '2022-10-22 18:29:29'),
(1387, 1, 'phrase', '_json', 'total_unique_visits', '', '2022-10-22 18:29:29', '2022-10-22 18:29:29'),
(1388, 1, 'phrase', '_json', 'total_unique_visitors', '', '2022-10-22 18:29:29', '2022-10-22 18:29:29'),
(1389, 1, 'phrase', '_json', 'visit_vs_visitor', '', '2022-10-22 18:29:29', '2022-10-22 18:29:29'),
(1390, 1, 'phrase', '_json', 'submitted_post', '', '2022-10-22 18:29:29', '2022-10-22 18:29:29'),
(1391, 1, 'phrase', '_json', 'post_published', '', '2022-10-22 18:29:29', '2022-10-22 18:29:29'),
(1392, 1, 'phrase', '_json', 'total_register_users', '', '2022-10-22 18:29:29', '2022-10-22 18:29:29'),
(1393, 1, 'phrase', '_json', 'browser_usages', '', '2022-10-22 18:29:29', '2022-10-22 18:29:29'),
(1394, 1, 'phrase', '_json', 'current_month_visitors', '', '2022-10-22 18:29:29', '2022-10-22 18:29:29'),
(1395, 1, 'phrase', '_json', 'current_month_visits', '', '2022-10-22 18:29:29', '2022-10-22 18:29:29'),
(1396, 1, 'phrase', '_json', 'top_hits_post', '', '2022-10-22 18:29:29', '2022-10-22 18:29:29'),
(1397, 1, 'phrase', '_json', 'available_tags', '', '2022-10-22 18:29:29', '2022-10-22 18:29:29'),
(1398, 1, 'phrase', '_json', 'add_tag', '', '2022-10-22 18:29:29', '2022-10-22 18:29:29'),
(1399, 1, 'phrase', '_json', 'videos', '', '2022-10-22 18:29:29', '2022-10-22 18:29:29'),
(1400, 1, 'phrase', '_json', 'page_not_found', '', '2022-10-22 18:29:29', '2022-10-22 18:29:29'),
(1401, 1, 'phrase', '_json', '404_message', '', '2022-10-22 18:29:29', '2022-10-22 18:29:29'),
(1402, 1, 'phrase', '_json', '1', '', '2022-10-22 18:29:29', '2022-10-22 18:29:29'),
(1403, 1, 'phrase', '_json', '403_message', '', '2022-10-22 18:29:29', '2022-10-22 18:29:29'),
(1404, 1, 'phrase', '_json', 'generate_sitemap', '', '2022-10-22 18:29:29', '2022-10-22 18:29:29'),
(1405, 1, 'phrase', '_json', 'successfully_generated', '', '2022-10-22 18:29:29', '2022-10-22 18:29:29'),
(1406, 1, 'phrase', '_json', 'go_to_sitemap', '', '2022-10-22 18:29:29', '2022-10-22 18:29:29'),
(1407, 1, 'phrase', '_json', '2', '', '2022-10-22 18:29:29', '2022-10-22 18:29:29'),
(1408, 1, 'phrase', '_json', 'server_error', '', '2022-10-22 18:29:29', '2022-10-22 18:29:29'),
(1409, 1, 'phrase', '_json', '500_message', '', '2022-10-22 18:29:29', '2022-10-22 18:29:29'),
(1410, 1, 'phrase', '_json', 'cron ', '', '2022-10-22 18:29:29', '2022-10-22 18:29:29'),
(1411, 1, 'phrase', '_json', 'cPanel_cron_command', '', '2022-10-22 18:29:29', '2022-10-22 18:29:29'),
(1412, 1, 'phrase', '_json', 'video_convert_cron', '', '2022-10-22 18:29:29', '2022-10-22 18:29:29'),
(1413, 1, 'phrase', '_json', 'schedule_post_cron', '', '2022-10-22 18:29:29', '2022-10-22 18:29:29'),
(1414, 1, 'phrase', '_json', 'ffmpeg_description ', '', '2022-10-22 18:29:29', '2022-10-22 18:29:29'),
(1415, 1, 'phrase', '_json', 'ffmpeg_status', '', '2022-10-22 18:29:29', '2022-10-22 18:29:29'),
(1416, 1, 'phrase', '_json', 'ffmpeg_settings', '', '2022-10-22 18:29:29', '2022-10-22 18:29:29'),
(1417, 1, 'phrase', '_json', 'no_page_available', '', '2022-10-22 18:29:29', '2022-10-22 18:29:29'),
(1418, 1, 'phrase', '_json', 'no_post_available', '', '2022-10-22 18:29:29', '2022-10-22 18:29:29'),
(1419, 1, 'phrase', '_json', 'no_category_available', '', '2022-10-22 18:29:29', '2022-10-22 18:29:29'),
(1420, 1, 'phrase', '_json', 'slug_message', '', '2022-10-22 18:29:29', '2022-10-22 18:29:29'),
(1421, 1, 'phrase', '_json', 'all_post', '', '2022-10-22 18:29:29', '2022-10-22 18:29:29'),
(1422, 1, 'phrase', '_json', 'your_email_is_invalid', '', '2022-10-22 18:29:29', '2022-10-22 18:29:29'),
(1423, 1, 'phrase', '_json', 'is_mega_menu', '', '2022-10-22 18:29:29', '2022-10-22 18:29:29'),
(1424, 1, 'phrase', '_json', 'tab_type', '', '2022-10-22 18:29:29', '2022-10-22 18:29:29'),
(1425, 1, 'phrase', '_json', 'cayegory_type', '', '2022-10-22 18:29:29', '2022-10-22 18:29:29'),
(1426, 1, 'phrase', '_json', 'run_manually', '', '2022-10-22 18:29:29', '2022-10-22 18:29:29'),
(1427, 1, 'phrase', '_json', 'for_all', '', '2022-10-22 18:29:29', '2022-10-22 18:29:29'),
(1428, 1, 'phrase', '_json', 'video_convert', '', '2022-10-22 18:29:29', '2022-10-22 18:29:29'),
(1429, 1, 'phrase', '_json', 'schedule_post', '', '2022-10-22 18:29:29', '2022-10-22 18:29:29'),
(1430, 1, 'phrase', '_json', 'newsletter_cron', '', '2022-10-22 18:29:29', '2022-10-22 18:29:29'),
(1431, 1, 'phrase', '_json', 'please_make_sure_you_have_set_writable_permision_following_folder', '', '2022-10-22 18:29:29', '2022-10-22 18:29:29'),
(1432, 1, 'phrase', '_json', 'bad_request', '', '2022-10-22 18:29:29', '2022-10-22 18:29:29'),
(1433, 1, 'phrase', '_json', '405_message', '', '2022-10-22 18:29:29', '2022-10-22 18:29:29'),
(1434, 1, 'phrase', '_json', 'update_social', '', '2022-10-22 18:29:29', '2022-10-22 18:29:29'),
(1435, 1, 'phrase', '_json', 'your_account_is_banned', '', '2022-10-22 18:29:29', '2022-10-22 18:29:29'),
(1436, 1, 'phrase', '_json', 'member_since', '', '2022-10-22 18:29:29', '2022-10-22 18:29:29'),
(1437, 1, 'phrase', '_json', 'preloader_option', '', '2022-10-22 18:29:29', '2022-10-22 18:29:29'),
(1438, 1, 'phrase', '_json', 'preference_setting', '', '2022-10-22 18:29:29', '2022-10-22 18:29:29'),
(1439, 1, 'phrase', '_json', 'my_profile', '', '2022-10-22 18:29:29', '2022-10-22 18:29:29'),
(1440, 1, 'phrase', '_json', 'show_email_on_profile_page', '', '2022-10-22 18:29:29', '2022-10-22 18:29:29'),
(1441, 1, 'phrase', '_json', 'about_me', '', '2022-10-22 18:29:29', '2022-10-22 18:29:29'),
(1442, 1, 'phrase', '_json', 'login_with_facebook', '', '2022-10-22 18:29:29', '2022-10-22 18:29:29'),
(1443, 1, 'phrase', '_json', 'login_with_twitter', '', '2022-10-22 18:29:29', '2022-10-22 18:29:29'),
(1444, 1, 'phrase', '_json', 'login_with_google', '', '2022-10-22 18:29:29', '2022-10-22 18:29:29'),
(1445, 1, 'phrase', '_json', 'sign_up_with_facebook', '', '2022-10-22 18:29:29', '2022-10-22 18:29:29'),
(1446, 1, 'phrase', '_json', 'sign_up_with_twitter', '', '2022-10-22 18:29:29', '2022-10-22 18:29:29'),
(1447, 1, 'phrase', '_json', 'sign_up_with_google', '', '2022-10-22 18:29:29', '2022-10-22 18:29:29'),
(1448, 1, 'phrase', '_json', 'social_login_settings', '', '2022-10-22 18:29:29', '2022-10-22 18:29:29'),
(1449, 1, 'phrase', '_json', 'facebook_client_id', '', '2022-10-22 18:29:29', '2022-10-22 18:29:29'),
(1450, 1, 'phrase', '_json', 'facebook_client_secretkey', '', '2022-10-22 18:29:29', '2022-10-22 18:29:29'),
(1451, 1, 'phrase', '_json', 'facebook_callback_url', '', '2022-10-22 18:29:29', '2022-10-22 18:29:29'),
(1452, 1, 'phrase', '_json', 'facebook_login_visibility', '', '2022-10-22 18:29:29', '2022-10-22 18:29:29'),
(1453, 1, 'phrase', '_json', 'google_client_id', '', '2022-10-22 18:29:29', '2022-10-22 18:29:29'),
(1454, 1, 'phrase', '_json', 'google_client_secretkey', '', '2022-10-22 18:29:29', '2022-10-22 18:29:29'),
(1455, 1, 'phrase', '_json', 'google_callback_url', '', '2022-10-22 18:29:29', '2022-10-22 18:29:29'),
(1456, 1, 'phrase', '_json', 'google_login_visibility', '', '2022-10-22 18:29:29', '2022-10-22 18:29:29'),
(1457, 1, 'phrase', '_json', 'something_went_wrong_please_check_your_social_login_settings', '', '2022-10-22 18:29:29', '2022-10-22 18:29:29'),
(1458, 1, 'phrase', '_json', 'addthis_script', '', '2022-10-22 18:29:29', '2022-10-22 18:29:29');
INSERT INTO `ltm_translations` (`id`, `status`, `locale`, `group`, `key`, `value`, `created_at`, `updated_at`) VALUES
(1459, 1, 'phrase', '_json', 'addthis_toolbox', '', '2022-10-22 18:29:29', '2022-10-22 18:29:29'),
(1460, 1, 'phrase', '_json', 'like', '', '2022-10-22 18:29:29', '2022-10-22 18:29:29'),
(1461, 1, 'phrase', '_json', 'love', '', '2022-10-22 18:29:29', '2022-10-22 18:29:29'),
(1462, 1, 'phrase', '_json', 'haha', '', '2022-10-22 18:29:29', '2022-10-22 18:29:29'),
(1463, 1, 'phrase', '_json', 'wow', '', '2022-10-22 18:29:29', '2022-10-22 18:29:29'),
(1464, 1, 'phrase', '_json', 'sad', '', '2022-10-22 18:29:29', '2022-10-22 18:29:29'),
(1465, 1, 'phrase', '_json', 'angry', '', '2022-10-22 18:29:29', '2022-10-22 18:29:29'),
(1466, 1, 'phrase', '_json', 'others', '', '2022-10-22 18:29:29', '2022-10-22 18:29:29'),
(1467, 1, 'phrase', '_json', 'whats_your_reaction', '', '2022-10-22 18:29:29', '2022-10-22 18:29:29'),
(1468, 1, 'phrase', '_json', 'you_and', '', '2022-10-22 18:29:29', '2022-10-22 18:29:29'),
(1469, 1, 'phrase', '_json', 'please_select_a_date', '', '2022-10-22 18:29:29', '2022-10-22 18:29:29'),
(1470, 1, 'phrase', '_json', 'archive', '', '2022-10-22 18:29:29', '2022-10-22 18:29:29'),
(1471, 1, 'phrase', '_json', 'you_can_make_child_only_for_category_for_tab_mega_menu', '', '2022-10-22 18:29:29', '2022-10-22 18:29:29'),
(1472, 1, 'phrase', '_json', 'you_can_make_child_max_length_2', '', '2022-10-22 18:29:29', '2022-10-22 18:29:29'),
(1473, 1, 'phrase', '_json', 'read_now', '', '2022-10-22 18:29:29', '2022-10-22 18:29:29'),
(1474, 1, 'phrase', '_json', 'article_detail', '', '2022-10-22 18:29:29', '2022-10-22 18:29:29'),
(1475, 1, 'phrase', '_json', 'create_audio_post', '', '2022-10-22 18:29:29', '2022-10-22 18:29:29'),
(1476, 1, 'phrase', '_json', 'upload_audio', '', '2022-10-22 18:29:29', '2022-10-22 18:29:29'),
(1477, 1, 'phrase', '_json', 'add_audio', '', '2022-10-22 18:29:29', '2022-10-22 18:29:29'),
(1478, 1, 'phrase', '_json', 'select_audio', '', '2022-10-22 18:29:29', '2022-10-22 18:29:29'),
(1479, 1, 'phrase', '_json', 'show_author_on_post_detail', '', '2022-10-22 18:29:29', '2022-10-22 18:29:29'),
(1480, 1, 'phrase', '_json', 'submit', '', '2022-10-22 18:29:29', '2022-10-22 18:29:29'),
(1481, 1, 'phrase', '_json', 'albums', '', '2022-10-22 18:29:29', '2022-10-22 18:29:29'),
(1482, 1, 'phrase', '_json', 'images', '', '2022-10-22 18:29:29', '2022-10-22 18:29:29'),
(1483, 1, 'phrase', '_json', 'gallery_images', '', '2022-10-22 18:29:29', '2022-10-22 18:29:29'),
(1484, 1, 'phrase', '_json', 'album', '', '2022-10-22 18:29:29', '2022-10-22 18:29:29'),
(1485, 1, 'phrase', '_json', 'tab', '', '2022-10-22 18:29:29', '2022-10-22 18:29:29'),
(1486, 1, 'phrase', '_json', 'set_as_cover', '', '2022-10-22 18:29:29', '2022-10-22 18:29:29'),
(1487, 1, 'phrase', '_json', 'it_will_be_set_as_album_cover', '', '2022-10-22 18:29:29', '2022-10-22 18:29:29'),
(1488, 1, 'phrase', '_json', 'select_album_first', '', '2022-10-22 18:29:29', '2022-10-22 18:29:29'),
(1489, 1, 'phrase', '_json', 'select_album', '', '2022-10-22 18:29:29', '2022-10-22 18:29:29'),
(1490, 1, 'phrase', '_json', 'add_gallery_image', '', '2022-10-22 18:29:29', '2022-10-22 18:29:29'),
(1491, 1, 'phrase', '_json', 'album_name', '', '2022-10-22 18:29:29', '2022-10-22 18:29:29'),
(1492, 1, 'phrase', '_json', 'tabs', '', '2022-10-22 18:29:29', '2022-10-22 18:29:29'),
(1493, 1, 'phrase', '_json', 'add_album', '', '2022-10-22 18:29:29', '2022-10-22 18:29:29'),
(1494, 1, 'phrase', '_json', 'hit_enter', '', '2022-10-22 18:29:29', '2022-10-22 18:29:29'),
(1495, 1, 'phrase', '_json', 'update_album', '', '2022-10-22 18:29:29', '2022-10-22 18:29:29'),
(1496, 1, 'phrase', '_json', 'update_gallery_image', '', '2022-10-22 18:29:29', '2022-10-22 18:29:29'),
(1497, 1, 'phrase', '_json', 'select_tab', '', '2022-10-22 18:29:29', '2022-10-22 18:29:29'),
(1498, 1, 'phrase', '_json', 'change_image', '', '2022-10-22 18:29:29', '2022-10-22 18:29:29'),
(1499, 1, 'phrase', '_json', 'back', '', '2022-10-22 18:29:29', '2022-10-22 18:29:29'),
(1500, 1, 'phrase', '_json', 'update_image', '', '2022-10-22 18:29:29', '2022-10-22 18:29:29'),
(1501, 1, 'phrase', '_json', 'album_cover', '', '2022-10-22 18:29:29', '2022-10-22 18:29:29'),
(1502, 1, 'phrase', '_json', 'image_and_text', '', '2022-10-22 18:29:29', '2022-10-22 18:29:29'),
(1503, 1, 'phrase', '_json', 'text_and_image', '', '2022-10-22 18:29:29', '2022-10-22 18:29:29'),
(1504, 1, 'phrase', '_json', 'text_image_text', '', '2022-10-22 18:29:29', '2022-10-22 18:29:29'),
(1505, 1, 'phrase', '_json', 'video', '', '2022-10-22 18:29:29', '2022-10-22 18:29:29'),
(1506, 1, 'phrase', '_json', 'embadded', '', '2022-10-22 18:29:29', '2022-10-22 18:29:29'),
(1507, 1, 'phrase', '_json', 'add_content', '', '2022-10-22 18:29:29', '2022-10-22 18:29:29'),
(1508, 1, 'phrase', '_json', 'twitter', '', '2022-10-22 18:29:29', '2022-10-22 18:29:29'),
(1509, 1, 'phrase', '_json', 'vimeo', '', '2022-10-22 18:29:29', '2022-10-22 18:29:29'),
(1510, 1, 'phrase', '_json', 'youtube', '', '2022-10-22 18:29:29', '2022-10-22 18:29:29'),
(1511, 1, 'phrase', '_json', 'youtube_embed', '', '2022-10-22 18:29:29', '2022-10-22 18:29:29'),
(1512, 1, 'phrase', '_json', 'vimeo_embed', '', '2022-10-22 18:29:29', '2022-10-22 18:29:29'),
(1513, 1, 'phrase', '_json', 'twitter_embed', '', '2022-10-22 18:29:29', '2022-10-22 18:29:29'),
(1514, 1, 'phrase', '_json', 'image_left', '', '2022-10-22 18:29:29', '2022-10-22 18:29:29'),
(1515, 1, 'phrase', '_json', 'image_right', '', '2022-10-22 18:29:29', '2022-10-22 18:29:29'),
(1516, 1, 'phrase', '_json', 'image_center', '', '2022-10-22 18:29:29', '2022-10-22 18:29:29'),
(1517, 1, 'phrase', '_json', 'rss_feeds', '', '2022-10-22 18:29:29', '2022-10-22 18:29:29'),
(1518, 1, 'phrase', '_json', 'feed_name', '', '2022-10-22 18:29:29', '2022-10-22 18:29:29'),
(1519, 1, 'phrase', '_json', 'feed_url', '', '2022-10-22 18:29:29', '2022-10-22 18:29:29'),
(1520, 1, 'phrase', '_json', 'auto_update', '', '2022-10-22 18:29:29', '2022-10-22 18:29:29'),
(1521, 1, 'phrase', '_json', 'add_rss_source', '', '2022-10-22 18:29:29', '2022-10-22 18:29:29'),
(1522, 1, 'phrase', '_json', 'feed_details', '', '2022-10-22 18:29:30', '2022-10-22 18:29:30'),
(1523, 1, 'phrase', '_json', 'valid_feed_url', '', '2022-10-22 18:29:30', '2022-10-22 18:29:30'),
(1524, 1, 'phrase', '_json', 'number_of_post_to_import', '', '2022-10-22 18:29:30', '2022-10-22 18:29:30'),
(1525, 1, 'phrase', '_json', 'show_read_more', '', '2022-10-22 18:29:30', '2022-10-22 18:29:30'),
(1526, 1, 'phrase', '_json', 'keep_post_original_publish_date', '', '2022-10-22 18:29:30', '2022-10-22 18:29:30'),
(1527, 1, 'phrase', '_json', 'add_feed', '', '2022-10-22 18:29:30', '2022-10-22 18:29:30'),
(1528, 1, 'phrase', '_json', 'update_rss_source', '', '2022-10-22 18:29:30', '2022-10-22 18:29:30'),
(1529, 1, 'phrase', '_json', 'update_rss', '', '2022-10-22 18:29:30', '2022-10-22 18:29:30'),
(1530, 1, 'phrase', '_json', 'rss_auto_update_post_import', '', '2022-10-22 18:29:30', '2022-10-22 18:29:30'),
(1531, 1, 'phrase', '_json', 'sorry_invalid_rss_feed_url:', '', '2022-10-22 18:29:30', '2022-10-22 18:29:30'),
(1532, 1, 'phrase', '_json', 'read_actual_content', '', '2022-10-22 18:29:30', '2022-10-22 18:29:30'),
(1533, 1, 'phrase', '_json', 'cover_image', '', '2022-10-22 18:29:30', '2022-10-22 18:29:30'),
(1534, 1, 'phrase', '_json', 'select_cover_image', '', '2022-10-22 18:29:30', '2022-10-22 18:29:30'),
(1535, 1, 'phrase', '_json', 'your_version', '', '2022-10-22 18:29:30', '2022-10-22 18:29:30'),
(1536, 1, 'phrase', '_json', 'go_to_upgrade', '', '2022-10-22 18:29:30', '2022-10-22 18:29:30'),
(1537, 1, 'phrase', '_json', 'database_sync', '', '2022-10-22 18:29:30', '2022-10-22 18:29:30'),
(1538, 1, 'phrase', '_json', 'already_up_to_date', '', '2022-10-22 18:29:30', '2022-10-22 18:29:30'),
(1539, 1, 'phrase', '_json', 'api', '', '2022-10-22 18:29:30', '2022-10-22 18:29:30'),
(1540, 1, 'phrase', '_json', 'api_settings', '', '2022-10-22 18:29:30', '2022-10-22 18:29:30'),
(1541, 1, 'phrase', '_json', 'android_settings', '', '2022-10-22 18:29:30', '2022-10-22 18:29:30'),
(1542, 1, 'phrase', '_json', 'ios_settings', '', '2022-10-22 18:29:30', '2022-10-22 18:29:30'),
(1543, 1, 'phrase', '_json', 'app_config', '', '2022-10-22 18:29:30', '2022-10-22 18:29:30'),
(1544, 1, 'phrase', '_json', 'app_intro', '', '2022-10-22 18:29:30', '2022-10-22 18:29:30'),
(1545, 1, 'phrase', '_json', 'ads_config', '', '2022-10-22 18:29:30', '2022-10-22 18:29:30'),
(1546, 1, 'phrase', '_json', 'api_server_url', '', '2022-10-22 18:29:30', '2022-10-22 18:29:30'),
(1547, 1, 'phrase', '_json', 'api_key_for_app', '', '2022-10-22 18:29:30', '2022-10-22 18:29:30'),
(1548, 1, 'phrase', '_json', 'copy_&_paste_this_to_app_source_Code', '', '2022-10-22 18:29:30', '2022-10-22 18:29:30'),
(1549, 1, 'phrase', '_json', 'now_just_paste_into_android_configuration_file', '', '2022-10-22 18:29:30', '2022-10-22 18:29:30'),
(1550, 1, 'phrase', '_json', 'latest_apk_version', '', '2022-10-22 18:29:30', '2022-10-22 18:29:30'),
(1551, 1, 'phrase', '_json', 'latest_apk_code', '', '2022-10-22 18:29:30', '2022-10-22 18:29:30'),
(1552, 1, 'phrase', '_json', 'apk_file_url', '', '2022-10-22 18:29:30', '2022-10-22 18:29:30'),
(1553, 1, 'phrase', '_json', 'whats_new_on_latest_apk', '', '2022-10-22 18:29:30', '2022-10-22 18:29:30'),
(1554, 1, 'phrase', '_json', 'update_skipable', '', '2022-10-22 18:29:30', '2022-10-22 18:29:30'),
(1555, 1, 'phrase', '_json', 'latest_ipa_version', '', '2022-10-22 18:29:30', '2022-10-22 18:29:30'),
(1556, 1, 'phrase', '_json', 'latest_ipa_code', '', '2022-10-22 18:29:30', '2022-10-22 18:29:30'),
(1557, 1, 'phrase', '_json', 'ipa_file_url', '', '2022-10-22 18:29:30', '2022-10-22 18:29:30'),
(1558, 1, 'phrase', '_json', 'whats_new_on_latest_ipa', '', '2022-10-22 18:29:30', '2022-10-22 18:29:30'),
(1559, 1, 'phrase', '_json', 'mandatory_login', '', '2022-10-22 18:29:30', '2022-10-22 18:29:30'),
(1560, 1, 'phrase', '_json', 'intro_skippable', '', '2022-10-22 18:29:30', '2022-10-22 18:29:30'),
(1561, 1, 'phrase', '_json', 'privacy_policy_url', '', '2022-10-22 18:29:30', '2022-10-22 18:29:30'),
(1562, 1, 'phrase', '_json', 'terms_n_condition_url', '', '2022-10-22 18:29:30', '2022-10-22 18:29:30'),
(1563, 1, 'phrase', '_json', 'support_url', '', '2022-10-22 18:29:30', '2022-10-22 18:29:30'),
(1564, 1, 'phrase', '_json', 'add_intro', '', '2022-10-22 18:29:30', '2022-10-22 18:29:30'),
(1565, 1, 'phrase', '_json', 'ads_enable', '', '2022-10-22 18:29:30', '2022-10-22 18:29:30'),
(1566, 1, 'phrase', '_json', 'mobile_ads_network', '', '2022-10-22 18:29:30', '2022-10-22 18:29:30'),
(1567, 1, 'phrase', '_json', 'admob_app_id', '', '2022-10-22 18:29:30', '2022-10-22 18:29:30'),
(1568, 1, 'phrase', '_json', 'admob_banner_ads_id', '', '2022-10-22 18:29:30', '2022-10-22 18:29:30'),
(1569, 1, 'phrase', '_json', 'admob_native_ads_id', '', '2022-10-22 18:29:30', '2022-10-22 18:29:30'),
(1570, 1, 'phrase', '_json', 'admob_interstitial_ads_id', '', '2022-10-22 18:29:30', '2022-10-22 18:29:30'),
(1571, 1, 'phrase', '_json', 'fan_native_ads_placement_id', '', '2022-10-22 18:29:30', '2022-10-22 18:29:30'),
(1572, 1, 'phrase', '_json', 'fan_banner_ads_placement_id', '', '2022-10-22 18:29:30', '2022-10-22 18:29:30'),
(1573, 1, 'phrase', '_json', 'fan_interstitial_ads_placement_id', '', '2022-10-22 18:29:30', '2022-10-22 18:29:30'),
(1574, 1, 'phrase', '_json', 'startapp_app_id', '', '2022-10-22 18:29:30', '2022-10-22 18:29:30'),
(1575, 1, 'phrase', '_json', 'invalid_credentials', '', '2022-10-22 18:29:30', '2022-10-22 18:29:30'),
(1576, 1, 'phrase', '_json', 'could_not_create_token', '', '2022-10-22 18:29:30', '2022-10-22 18:29:30'),
(1577, 1, 'phrase', '_json', 'suspicious_activity_on_your_ip', '', '2022-10-22 18:29:30', '2022-10-22 18:29:30'),
(1578, 1, 'phrase', '_json', 'seconds', '', '2022-10-22 18:29:30', '2022-10-22 18:29:30'),
(1579, 1, 'phrase', '_json', 'you_account_not_activated_check_mail_or_contact_support', '', '2022-10-22 18:29:30', '2022-10-22 18:29:30'),
(1580, 1, 'phrase', '_json', 'something_went_wrong', '', '2022-10-22 18:29:30', '2022-10-22 18:29:30'),
(1581, 1, 'phrase', '_json', 'successfully_login', '', '2022-10-22 18:29:30', '2022-10-22 18:29:30'),
(1582, 1, 'phrase', '_json', 'successfully_logout', '', '2022-10-22 18:29:30', '2022-10-22 18:29:30'),
(1583, 1, 'phrase', '_json', 'failed_to_logout', '', '2022-10-22 18:29:30', '2022-10-22 18:29:30'),
(1584, 1, 'phrase', '_json', 'you_are_not_allowed_to_set_this_password', '', '2022-10-22 18:29:30', '2022-10-22 18:29:30'),
(1585, 1, 'phrase', '_json', 'please_enter_valid_user_id', '', '2022-10-22 18:29:30', '2022-10-22 18:29:30'),
(1586, 1, 'phrase', '_json', 'successfully_found', '', '2022-10-22 18:29:30', '2022-10-22 18:29:30'),
(1587, 1, 'phrase', '_json', 'user_not_found', '', '2022-10-22 18:29:30', '2022-10-22 18:29:30'),
(1588, 1, 'phrase', '_json', 'please_enter_valid_user_email', '', '2022-10-22 18:29:30', '2022-10-22 18:29:30'),
(1589, 1, 'phrase', '_json', 'password_wrong', '', '2022-10-22 18:29:30', '2022-10-22 18:29:30'),
(1590, 1, 'phrase', '_json', 'update_app_intro', '', '2022-10-22 18:29:30', '2022-10-22 18:29:30'),
(1591, 1, 'phrase', '_json', 'gender', '', '2022-10-22 18:29:30', '2022-10-22 18:29:30'),
(1592, 1, 'phrase', '_json', 'dob', '', '2022-10-22 18:29:30', '2022-10-22 18:29:30'),
(1593, 1, 'phrase', '_json', 'create_trivia_quiz', '', '2022-10-22 18:29:30', '2022-10-22 18:29:30'),
(1594, 1, 'phrase', '_json', 'questions', '', '2022-10-22 18:29:30', '2022-10-22 18:29:30'),
(1595, 1, 'phrase', '_json', 'answers', '', '2022-10-22 18:29:30', '2022-10-22 18:29:30'),
(1596, 1, 'phrase', '_json', 'answer_format', '', '2022-10-22 18:29:30', '2022-10-22 18:29:30'),
(1597, 1, 'phrase', '_json', 'answer_text', '', '2022-10-22 18:29:30', '2022-10-22 18:29:30'),
(1598, 1, 'phrase', '_json', 'correct', '', '2022-10-22 18:29:30', '2022-10-22 18:29:30'),
(1599, 1, 'phrase', '_json', 'add_answer', '', '2022-10-22 18:29:30', '2022-10-22 18:29:30'),
(1600, 1, 'phrase', '_json', 'add_question', '', '2022-10-22 18:29:30', '2022-10-22 18:29:30'),
(1601, 1, 'phrase', '_json', 'results', '', '2022-10-22 18:29:30', '2022-10-22 18:29:30'),
(1602, 1, 'phrase', '_json', 'range_of_correct_ans_for_showing_this_result', '', '2022-10-22 18:29:30', '2022-10-22 18:29:30'),
(1603, 1, 'phrase', '_json', 'minimum_correct', '', '2022-10-22 18:29:30', '2022-10-22 18:29:30'),
(1604, 1, 'phrase', '_json', 'maximum_correct', '', '2022-10-22 18:29:30', '2022-10-22 18:29:30'),
(1605, 1, 'phrase', '_json', 'add_result', '', '2022-10-22 18:29:30', '2022-10-22 18:29:30'),
(1606, 1, 'phrase', '_json', 'correct_answer', '', '2022-10-22 18:29:30', '2022-10-22 18:29:30'),
(1607, 1, 'phrase', '_json', 'wrong_answer', '', '2022-10-22 18:29:30', '2022-10-22 18:29:30'),
(1608, 1, 'phrase', '_json', 'play_again', '', '2022-10-22 18:29:30', '2022-10-22 18:29:30'),
(1609, 1, 'phrase', '_json', 'create_personality_quiz', '', '2022-10-22 18:29:30', '2022-10-22 18:29:30'),
(1610, 1, 'phrase', '_json', 'select_a_result', '', '2022-10-22 18:29:30', '2022-10-22 18:29:30'),
(1611, 1, 'phrase', '_json', 'current_characters', '', '2022-10-22 18:29:30', '2022-10-22 18:29:30'),
(1612, 1, 'phrase', '_json', 'meta_title', '', '2022-10-22 18:29:30', '2022-10-22 18:29:30'),
(1613, 1, 'phrase', '_json', 'meta_tags', '', '2022-10-22 18:29:30', '2022-10-22 18:29:30'),
(1614, 1, 'phrase', '_json', 'should_bd', '', '2022-10-22 18:29:30', '2022-10-22 18:29:30'),
(1615, 1, 'phrase', '_json', 'in_between', '', '2022-10-22 18:29:30', '2022-10-22 18:29:30'),
(1616, 1, 'phrase', '_json', 'characters', '', '2022-10-22 18:29:30', '2022-10-22 18:29:30'),
(1617, 1, 'phrase', '_json', 'meta_description', '', '2022-10-22 18:29:30', '2022-10-22 18:29:30'),
(1618, 1, 'phrase', '_json', 'registration_through_app_key', '', '2022-10-22 18:29:30', '2022-10-22 18:29:30'),
(1619, 1, 'phrase', '_json', 'commented', '', '2022-10-22 18:29:30', '2022-10-22 18:29:30'),
(1620, 1, 'phrase', '_json', 'replied', '', '2022-10-22 18:29:30', '2022-10-22 18:29:30'),
(1621, 1, 'phrase', '_json', 'post_not_found', '', '2022-10-22 18:29:30', '2022-10-22 18:29:30'),
(1622, 1, 'phrase', '_json', 'invalid_attempt', '', '2022-10-22 18:29:30', '2022-10-22 18:29:30'),
(1623, 1, 'phrase', '_json', 'required_field_missing', '', '2022-10-22 18:29:30', '2022-10-22 18:29:30'),
(1624, 1, 'phrase', '_json', 'something_went_wrong_please_try_again', '', '2022-10-22 18:29:30', '2022-10-22 18:29:30'),
(1625, 1, 'phrase', '_json', 'is_featured', '', '2022-10-22 18:29:30', '2022-10-22 18:29:30'),
(1626, 1, 'phrase', '_json', 'top_stories', '', '2022-10-22 18:29:30', '2022-10-22 18:29:30'),
(1627, 1, 'phrase', '_json', 'latest_posts', '', '2022-10-22 18:29:30', '2022-10-22 18:29:30'),
(1628, 1, 'phrase', '_json', 'mobile_app', '', '2022-10-22 18:29:30', '2022-10-22 18:29:30'),
(1629, 1, 'phrase', '_json', 'audio_gallery', '', '2022-10-22 18:29:30', '2022-10-22 18:29:30'),
(1630, 1, 'phrase', '_json', 'cache_update', 'Cache Update', '2022-10-22 18:29:30', '2022-10-22 18:29:30'),
(1631, 1, 'phrase', '_json', 'cache', 'Cache', '2022-10-22 18:29:30', '2022-10-22 18:29:30');

-- --------------------------------------------------------

--
-- Table structure for table `menu`
--

CREATE TABLE `menu` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remark` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menu`
--

INSERT INTO `menu` (`id`, `title`, `remark`, `created_at`, `updated_at`) VALUES
(1, 'Primary Menu', NULL, '2021-09-04 22:34:40', '2021-09-04 22:34:40');

-- --------------------------------------------------------

--
-- Table structure for table `menu_item`
--

CREATE TABLE `menu_item` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `label` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `language` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `menu_id` bigint(20) UNSIGNED NOT NULL,
  `is_mega_menu` enum('no','tab','category') COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'no = normal menu, tab = tab type mega menu, category = category type mega menu',
  `order` int(11) NOT NULL DEFAULT 0,
  `parent` bigint(20) UNSIGNED DEFAULT NULL,
  `source` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `page_id` bigint(20) UNSIGNED DEFAULT NULL,
  `category_id` bigint(20) UNSIGNED DEFAULT NULL,
  `sub_category_id` bigint(20) UNSIGNED DEFAULT NULL,
  `post_id` bigint(20) UNSIGNED DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `new_teb` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menu_item`
--

INSERT INTO `menu_item` (`id`, `label`, `language`, `menu_id`, `is_mega_menu`, `order`, `parent`, `source`, `url`, `page_id`, `category_id`, `sub_category_id`, `post_id`, `status`, `new_teb`, `created_at`, `updated_at`) VALUES
(1, 'Home', 'en', 1, 'no', 1, NULL, 'custom', '#', NULL, NULL, NULL, NULL, 1, 0, '2020-10-14 05:26:41', '2020-12-18 21:45:20'),
(2, 'Life Style', 'en', 1, 'tab', 2, NULL, 'custom', '', NULL, NULL, NULL, NULL, 1, 0, '2020-10-14 05:33:29', '2020-12-18 21:45:20'),
(3, 'World', 'en', 1, 'no', 3, 2, 'category', NULL, NULL, 1, NULL, NULL, 1, 0, '2020-10-14 05:33:38', '2020-12-18 21:45:20'),
(4, 'Science', 'en', 1, 'no', 4, 2, 'category', NULL, NULL, 2, NULL, NULL, 1, 0, '2020-10-14 05:33:38', '2020-12-18 21:45:20'),
(6, 'Contact Us', 'en', 1, 'no', 11, 32, 'page', NULL, 1, NULL, NULL, NULL, 1, 0, '2020-10-14 05:34:07', '2020-12-19 04:35:31'),
(7, 'About us', 'en', 1, 'no', 12, 32, 'page', NULL, 2, NULL, NULL, NULL, 1, 0, '2020-10-14 05:42:29', '2020-12-18 21:45:40'),
(8, 'Pages', 'en', 1, 'no', 10, NULL, 'custom', '#', NULL, NULL, NULL, NULL, 1, 0, '2020-12-18 21:05:24', '2020-12-19 04:35:31'),
(9, 'RSS News', 'en', 1, 'no', 5, NULL, 'category', NULL, NULL, 4, NULL, NULL, 1, 0, '2020-12-18 21:06:18', '2020-12-18 21:45:20'),
(10, 'Nasa', 'en', 1, 'no', 6, 33, 'sub-category', NULL, NULL, NULL, 4, NULL, 1, 0, '2020-12-18 21:06:40', '2020-12-18 21:45:20'),
(11, 'Wired', 'en', 1, 'no', 7, 33, 'sub-category', NULL, NULL, NULL, 5, NULL, 1, 0, '2020-12-18 21:06:40', '2020-12-18 21:45:20'),
(12, 'ABC News', 'en', 1, 'no', 8, 33, 'sub-category', NULL, NULL, NULL, 6, NULL, 1, 0, '2020-12-18 21:06:40', '2020-12-18 21:45:20'),
(13, 'gallery', 'en', 1, 'no', 9, NULL, 'page', NULL, NULL, NULL, NULL, NULL, 1, 0, '2020-12-18 21:37:06', '2020-12-19 04:35:31');

-- --------------------------------------------------------

--
-- Table structure for table `menu_locations`
--

CREATE TABLE `menu_locations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `unique_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `menu_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menu_locations`
--

INSERT INTO `menu_locations` (`id`, `title`, `unique_name`, `menu_id`, `created_at`, `updated_at`) VALUES
(1, 'Primary', 'primary', 1, '2021-09-04 22:34:40', '2021-09-04 22:34:40');

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
(1, '2014_04_02_193005_create_translations_table', 1),
(2, '2014_06_04_000000_create_images_table', 1),
(3, '2014_06_12_000001_create_videos_table', 1),
(4, '2014_06_12_000002_create_audios_table', 1),
(5, '2014_07_02_230147_migration_cartalyst_sentinel', 1),
(6, '2019_08_19_000000_create_failed_jobs_table', 1),
(7, '2019_09_28_121115_create_Permissions_table', 1),
(8, '2019_10_02_101820_create_categories_table', 1),
(9, '2019_10_02_130602_create_sub_categories_table', 1),
(10, '2019_10_03_102624_create_posts_table', 1),
(11, '2019_10_13_160721_create_settings_table', 1),
(12, '2019_10_13_173518_create_languages_table', 1),
(13, '2019_10_13_180528_create_language_configs_table', 1),
(14, '2019_10_16_102855_create_flag_icon', 1),
(15, '2019_11_05_144716_create_email_templates_table', 1),
(16, '2019_11_16_155414_create_pages_table', 1),
(17, '2019_11_23_161232_create_menu_table', 1),
(18, '2019_11_23_161241_create_menu_item_table', 1),
(19, '2019_11_30_170502_create_menu_locations_table', 1),
(20, '2019_12_31_180342_create_ads_table', 1),
(21, '2020_01_01_151432_create_ad_locations_table', 1),
(22, '2020_01_05_160344_create_crons_table', 1),
(23, '2020_01_06_141735_create_polls_table', 1),
(24, '2020_01_06_145613_create_votes_table', 1),
(25, '2020_01_07_173342_create_widgets_table', 1),
(26, '2020_01_08_141817_create_contact_messages_table', 1),
(27, '2020_01_08_151731_create_comments_table', 1),
(28, '2020_02_27_171520_create_themes_table', 1),
(29, '2020_02_29_123626_create_theme_sections_table', 1),
(30, '2020_03_02_174040_create_tags_table', 1),
(31, '2020_07_07_005751_create_poll_options_table', 1),
(32, '2020_07_16_110239_create_jobs_table', 1),
(33, '2020_08_17_162145_create_social_media_table', 1),
(34, '2020_08_27_105041_create_poll_results_table', 1),
(35, '2020_09_24_140613_create_visitor_trackers_table', 1),
(36, '2020_11_07_144953_create_reactions_table', 1),
(37, '2020_11_16_144042_create_audio_post_table', 1),
(38, '2020_11_24_145954_create_albums_table', 1),
(39, '2020_11_24_150907_create_gallery_images_table', 1),
(40, '2020_12_03_125915_create_rss_feeds_table', 1),
(41, '2020_12_15_124608_column_update', 1),
(42, '2021_01_02_175930_column_update_2nd', 1),
(43, '2021_01_04_111845_create_app_intros_table', 1),
(44, '2021_01_13_154702_create_quiz_questions_table', 1),
(45, '2021_01_14_154705_create_quiz_results_table', 1),
(46, '2021_01_14_154717_create_quiz_answers_table', 1),
(47, '2021_02_23_104453_version_control', 1),
(48, '2021_02_23_104453_version_update', 1);

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image_id` bigint(20) UNSIGNED DEFAULT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `language` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `page_type` tinyint(1) NOT NULL DEFAULT 1 COMMENT '1 default page, 2 contact us page',
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `template` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1' COMMENT '1 without sidebar, 2 with right sidebar, 3 with left sidebar',
  `visibility` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `show_for_register` tinyint(1) NOT NULL,
  `show_title` tinyint(1) NOT NULL,
  `show_breadcrumb` tinyint(1) NOT NULL,
  `location` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_keywords` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `image_id`, `title`, `language`, `page_type`, `slug`, `description`, `template`, `visibility`, `show_for_register`, `show_title`, `show_breadcrumb`, `location`, `meta_title`, `meta_description`, `meta_keywords`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Contact Us', 'en', 2, 'contact-us', 'Oh dear! I shall never get to twenty at that rate! However, the Multiplication Table doesn\'t signify: let\'s try Geography. London is the same solemn tone, \'For the Duchess. \'Everything\'s got a moral, if only you can find them.\' As she said to a snail. &quot;There\'s a porpoise close behind it was over at last: \'and I wish you could see this, as she spoke, but no result seemed to be sure! However, everything is to-day! And yesterday things went on muttering over the edge of the Gryphon, \'she wants for to know when the Rabbit angrily. \'Here! Come and help me out of sight: then it watched the Queen had ordered. They very soon found out a new pair of white kid gloves: she took courage, and went stamping about, and shouting \'Off with his head!\' or \'Off with her head! Off--\' \'Nonsense!\' said Alice, as she could, and waited to see that queer little toss of her little sister\'s dream. The long grass rustled at her for a few minutes to see its meaning. \'And just as she could. \'The game\'s going on between the executioner, the King, \'unless it was very likely to eat some of them say, \'Look out now, Five! Don\'t go splashing paint over me like that!\' By this time with great curiosity. \'Soles and eels, of course,\' he said to herself how she was saying, and the party went back for a rabbit! I suppose it doesn\'t matter much,\' thought Alice, \'it\'ll never do to hold it. As soon as there seemed to Alice again. \'No, I give you fair warning,\' shouted the Queen was silent. The Dormouse shook itself, and was going on, as she wandered about for a baby: altogether Alice did not get dry very soon. \'Ahem!\' said the Duchess, digging her sharp little chin. \'I\'ve a right to think,\' said Alice very meekly: \'I\'m growing.\' \'You\'ve no right to grow larger again, and the poor little thing was to eat or drink something or other; but the Dormouse denied nothing, being fast asleep. \'After that,\' continued the Hatter, and, just as she tucked it away under her arm, and timidly said \'Consider, my dear: she is such a noise inside, no one else seemed inclined to say it over) \'--yes, that\'s about the temper of your flamingo. Shall I try the patience of an oyster!\' \'I wish the creatures order one about, and crept a little now and then; such as, that a red-hot poker will burn you if you were never even spoke to Time!\' \'Perhaps not,\' Alice replied thoughtfully. \'They have their tails fast in their mouths--and they\'re all over with William the Conqueror.\' (For, with all their simple joys, remembering her own child-life, and the baby--the fire-irons came first; then followed a shower of little cartwheels, and the other ladder?--Why, I hadn\'t to bring tears into her head. \'If I eat one of the accident, all except the King, and the baby with some severity; \'it\'s very rude.\' The Hatter shook his head off outside,\' the Queen was close behind her, listening: so she felt a very small cake, on which the cook had disappeared. \'Never mind!\' said the Gryphon, half to herself, \'it would have appeared to them.', '1', '1', 0, 1, 1, NULL, NULL, NULL, NULL, '2021-09-04 22:34:39', '2021-09-04 22:34:39'),
(2, NULL, 'About Us', 'en', 1, 'about-us', 'Alice was so full of tears, but said nothing. \'Perhaps it doesn\'t matter much,\' thought Alice, \'and those twelve creatures,\' (she was rather doubtful whether she ought not to be talking in a loud, indignant voice, but she had tired herself out with trying, the poor little juror (it was exactly the right thing to eat or drink under the window, and some were birds,) \'I suppose they are the jurors.\' She said this she looked up, but it makes me grow large again, for she thought, and it said nothing. \'This here young lady,\' said the King triumphantly, pointing to the tarts on the bank--the birds with draggled feathers, the animals with their hands and feet, to make out which were the cook, and a large crowd collected round it: there was silence for some time without interrupting it. \'They were learning to draw,\' the Dormouse say?\' one of the shepherd boy--and the sneeze of the reeds--the rattling teacups would change (she knew) to the Hatter. He came in with a teacup in one hand, and a large crowd collected round it: there was a general chorus of \'There goes Bill!\' then the other, and making quite a large fan in the air. She did it at all,\' said Alice: \'she\'s so extremely--\' Just then her head on her spectacles, and began to repeat it, but her voice sounded hoarse and strange, and the pattern on their slates, and then a row of lamps hanging from the Gryphon, half to herself, as she spoke, but no result seemed to be rude, so she went to work throwing everything within her reach at the other ladder?--Why, I hadn\'t drunk quite so much!\' said Alice, who had not a mile high,\' said Alice. \'Why?\' \'IT DOES THE BOOTS AND SHOES.\' the Gryphon remarked: \'because they lessen from day to such stuff? Be off, or I\'ll have you executed, whether you\'re a little before she made it out into the garden door. Poor Alice! It was so long that they were playing the Queen to play croquet with the edge of the Lobster Quadrille, that she had not got into a tree. By the use of a well?\' The Dormouse had closed its eyes were looking up into the open air. \'IF I don\'t know,\' he went on again:-- \'You may not have lived much under the sea,\' the Gryphon remarked: \'because they lessen from day to such stuff? Be off, or I\'ll have you executed, whether you\'re a little scream, half of fright and half believed herself in Wonderland, though she looked up, and began to cry again, for this curious child was very glad that it might be hungry, in which the wretched Hatter trembled so, that he had come back with the clock. For instance, if you were me?\' \'Well, perhaps not,\' said the March Hare, \'that &quot;I breathe when I sleep&quot; is the reason so many tea-things are put out here?\' she asked. \'Yes, that\'s it,\' said Alice a good deal worse off than before, as the rest of the lefthand bit of stick, and made another rush at the Gryphon whispered in reply, \'for fear they should forget them before the end of the leaves: \'I should have croqueted the Queen\'s absence, and were quite dry again, the cook was.\r\n\r\n\r\n', '1', '1', 0, 1, 1, NULL, NULL, NULL, NULL, '2021-09-04 22:34:39', '2021-09-04 22:34:39');

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `slug`, `name`, `description`, `created_at`, `updated_at`) VALUES
(1, 'album_read', 'album', '', NULL, NULL),
(2, 'album_write', 'album', '', NULL, NULL),
(3, 'album_delete', 'album', '', NULL, NULL),
(4, 'rss_read', 'rss', '', NULL, NULL),
(5, 'rss_write', 'rss', '', NULL, NULL),
(6, 'rss_delete', 'rss', '', NULL, NULL),
(7, 'api_read', 'api', '', NULL, NULL),
(8, 'api_write', 'api', '', NULL, NULL),
(9, 'api_delete', 'api', '', NULL, NULL),
(10, 'users_read', 'users', '', '2021-09-04 22:34:39', '2021-09-04 22:34:39'),
(11, 'users_write', 'users', '', '2021-09-04 22:34:39', '2021-09-04 22:34:39'),
(12, 'users_delete', 'users', '', '2021-09-04 22:34:39', '2021-09-04 22:34:39'),
(13, 'role_read', 'role', '', '2021-09-04 22:34:39', '2021-09-04 22:34:39'),
(14, 'role_write', 'role', '', '2021-09-04 22:34:39', '2021-09-04 22:34:39'),
(15, 'role_delete', 'role', '', '2021-09-04 22:34:39', '2021-09-04 22:34:39'),
(16, 'permission_read', 'permission', '', '2021-09-04 22:34:39', '2021-09-04 22:34:39'),
(17, 'permission_write', 'permission', '', '2021-09-04 22:34:39', '2021-09-04 22:34:39'),
(18, 'permission_delete', 'permission', '', '2021-09-04 22:34:39', '2021-09-04 22:34:39'),
(19, 'settings_read', 'settings', '', '2021-09-04 22:34:39', '2021-09-04 22:34:39'),
(20, 'settings_write', 'settings', '', '2021-09-04 22:34:39', '2021-09-04 22:34:39'),
(21, 'settings_delete', 'settings', '', '2021-09-04 22:34:39', '2021-09-04 22:34:39'),
(22, 'language_settings_read', 'language_settings', '', '2021-09-04 22:34:39', '2021-09-04 22:34:39'),
(23, 'language_settings_write', 'language_settings', '', '2021-09-04 22:34:39', '2021-09-04 22:34:39'),
(24, 'language_settings_delete', 'language_settings', '', '2021-09-04 22:34:39', '2021-09-04 22:34:39'),
(25, 'pages_read', 'pages', '', '2021-09-04 22:34:39', '2021-09-04 22:34:39'),
(26, 'pages_write', 'pages', '', '2021-09-04 22:34:39', '2021-09-04 22:34:39'),
(27, 'pages_delete', 'pages', '', '2021-09-04 22:34:39', '2021-09-04 22:34:39'),
(28, 'menu_read', 'menu', '', '2021-09-04 22:34:39', '2021-09-04 22:34:39'),
(29, 'menu_write', 'menu', '', '2021-09-04 22:34:39', '2021-09-04 22:34:39'),
(30, 'menu_delete', 'menu', '', '2021-09-04 22:34:39', '2021-09-04 22:34:39'),
(31, 'menu_item_read', 'menu_item', '', '2021-09-04 22:34:39', '2021-09-04 22:34:39'),
(32, 'menu_item_write', 'menu_item', '', '2021-09-04 22:34:39', '2021-09-04 22:34:39'),
(33, 'menu_item_delete', 'menu_item', '', '2021-09-04 22:34:39', '2021-09-04 22:34:39'),
(34, 'post_read', 'post', '', '2021-09-04 22:34:39', '2021-09-04 22:34:39'),
(35, 'post_write', 'post', '', '2021-09-04 22:34:39', '2021-09-04 22:34:39'),
(36, 'post_delete', 'post', '', '2021-09-04 22:34:39', '2021-09-04 22:34:39'),
(37, 'category_read', 'category', '', '2021-09-04 22:34:39', '2021-09-04 22:34:39'),
(38, 'category_write', 'category', '', '2021-09-04 22:34:39', '2021-09-04 22:34:39'),
(39, 'category_delete', 'category', '', '2021-09-04 22:34:39', '2021-09-04 22:34:39'),
(40, 'sub_category_read', 'sub_category', '', '2021-09-04 22:34:39', '2021-09-04 22:34:39'),
(41, 'sub_category_write', 'sub_category', '', '2021-09-04 22:34:39', '2021-09-04 22:34:39'),
(42, 'sub_category_delete', 'sub_category', '', '2021-09-04 22:34:39', '2021-09-04 22:34:39'),
(43, 'widget_read', 'widget', '', '2021-09-04 22:34:39', '2021-09-04 22:34:39'),
(44, 'widget_write', 'widget', '', '2021-09-04 22:34:39', '2021-09-04 22:34:39'),
(45, 'widget_delete', 'widget', '', '2021-09-04 22:34:39', '2021-09-04 22:34:39'),
(46, 'newsletter_read', 'newsletter', '', '2021-09-04 22:34:39', '2021-09-04 22:34:39'),
(47, 'newsletter_write', 'newsletter', '', '2021-09-04 22:34:39', '2021-09-04 22:34:39'),
(48, 'newsletter_delete', 'newsletter', '', '2021-09-04 22:34:39', '2021-09-04 22:34:39'),
(49, 'notification_read', 'notification', '', '2021-09-04 22:34:39', '2021-09-04 22:34:39'),
(50, 'notification_write', 'notification', '', '2021-09-04 22:34:39', '2021-09-04 22:34:39'),
(51, 'notification_delete', 'notification', '', '2021-09-04 22:34:39', '2021-09-04 22:34:39'),
(52, 'contact_message_read', 'contact_message', '', '2021-09-04 22:34:39', '2021-09-04 22:34:39'),
(53, 'contact_message_write', 'contact_message', '', '2021-09-04 22:34:39', '2021-09-04 22:34:39'),
(54, 'contact_message_delete', 'contact_message', '', '2021-09-04 22:34:39', '2021-09-04 22:34:39'),
(55, 'ads_read', 'ads', '', '2021-09-04 22:34:39', '2021-09-04 22:34:39'),
(56, 'ads_write', 'ads', '', '2021-09-04 22:34:39', '2021-09-04 22:34:39'),
(57, 'ads_delete', 'ads', '', '2021-09-04 22:34:39', '2021-09-04 22:34:39'),
(58, 'theme_section_read', 'theme_section', '', '2021-09-04 22:34:39', '2021-09-04 22:34:39'),
(59, 'theme_section_write', 'theme_section', '', '2021-09-04 22:34:39', '2021-09-04 22:34:39'),
(60, 'theme_section_delete', 'theme_section', '', '2021-09-04 22:34:39', '2021-09-04 22:34:39'),
(61, 'socials_read', 'socials', '', '2021-09-04 22:34:39', '2021-09-04 22:34:39'),
(62, 'socials_write', 'socials', '', '2021-09-04 22:34:39', '2021-09-04 22:34:39'),
(63, 'socials_delete', 'socials', '', '2021-09-04 22:34:39', '2021-09-04 22:34:39'),
(64, 'polls_read', 'polls', '', '2021-09-04 22:34:39', '2021-09-04 22:34:39'),
(65, 'polls_write', 'polls', '', '2021-09-04 22:34:39', '2021-09-04 22:34:39'),
(66, 'polls_delete', 'polls', '', '2021-09-04 22:34:39', '2021-09-04 22:34:39'),
(67, 'comments_read', 'comments', '', '2021-09-04 22:34:39', '2021-09-04 22:34:39'),
(68, 'comments_write', 'comments', '', '2021-09-04 22:34:39', '2021-09-04 22:34:39'),
(69, 'comments_delete', 'comments', '', '2021-09-04 22:34:39', '2021-09-04 22:34:39');

-- --------------------------------------------------------

--
-- Table structure for table `persistences`
--

CREATE TABLE `persistences` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `persistences`
--

INSERT INTO `persistences` (`id`, `user_id`, `code`, `created_at`, `updated_at`) VALUES
(1, 1, 'GiHlchZZi56fKw9J4YS0eikgZV1hc3Dp', '2021-09-05 10:50:36', '2021-09-05 10:50:36'),
(3, 1, 'EY0tHUkeHp1qz05OD4tvQxg4p4SBDgG6', '2021-09-06 08:55:07', '2021-09-06 08:55:07'),
(4, 1, 'TfI3sripLAxrTbu3wuMbGkbmvAIV9l0s', '2021-09-07 03:45:45', '2021-09-07 03:45:45'),
(5, 1, 'RGcJTeKvG75SAiCluYFZwqBsZCod5tRn', '2021-09-08 09:27:16', '2021-09-08 09:27:16'),
(6, 1, 'ulkQ5Jnh0zTrx2ZYW0bbQFeVM3tGruh5', '2021-09-16 11:05:50', '2021-09-16 11:05:50'),
(7, 1, 'tzChU3oL1KL0uOFXsAgCbqBTf2jwD0o5', '2021-09-29 12:14:07', '2021-09-29 12:14:07'),
(8, 1, '3LR3t1poEo0iClSipm1lhhWEJhF9ZQAX', '2021-09-29 16:35:45', '2021-09-29 16:35:45'),
(9, 1, 'n89cGS6hFFaH1bXlw9mSPUJt05MKrzyE', '2021-09-29 16:55:11', '2021-09-29 16:55:11'),
(10, 1, 'ugxBDXtWjRNErkuHBHp8oYt5zdQRQ2g5', '2021-09-29 17:05:58', '2021-09-29 17:05:58'),
(11, 1, '5yb6A6yf6L78Ur5wzAgdEqQ9RAgtxbDy', '2021-09-29 19:53:46', '2021-09-29 19:53:46'),
(13, 1, 'L3NRyYcJmhP7thdlI4WhHJXkuM1nJhVa', '2021-09-30 02:15:06', '2021-09-30 02:15:06'),
(14, 1, 'pwxq5IJmYctUrwzpXWAeD8flgtvF58x0', '2021-09-30 02:29:29', '2021-09-30 02:29:29'),
(15, 1, 'kzrP0IdTBJHzTvfJUpjkljf4KVpAgU36', '2021-09-30 02:33:07', '2021-09-30 02:33:07'),
(17, 1, 'JRngYOnN2LJlY47EPIBxkG6a0zh0E5qA', '2021-09-30 02:58:16', '2021-09-30 02:58:16'),
(18, 1, '2uRJrLv32nSrqUTbG0lUPeYgoJ1n69oE', '2021-09-30 09:49:26', '2021-09-30 09:49:26'),
(19, 1, '5Gg6QvuKefUlee0QQ0oPo43VyBIet1S9', '2021-09-30 10:20:26', '2021-09-30 10:20:26'),
(20, 1, 'j4yMptgvooJ6zXpNel9ESA0asxGFwXvb', '2021-09-30 16:19:41', '2021-09-30 16:19:41'),
(21, 1, 'SxndOG2b5PHtBlU0RMsC9mMvbGhr6Rc4', '2021-09-30 17:25:08', '2021-09-30 17:25:08'),
(22, 1, 'CaTrS0I6CwyjUMT2zYRPqKnkRRwlvDrv', '2021-09-30 18:31:22', '2021-09-30 18:31:22'),
(23, 1, 'ywWNT4L5hZkKdNbFoHngo0AnxucQbO4q', '2021-09-30 21:43:54', '2021-09-30 21:43:54'),
(24, 1, 'D96qgrjAnkD7oyMhNoAkd0j8G7AR0Ml9', '2021-10-01 01:50:40', '2021-10-01 01:50:40'),
(25, 1, 'mqEHPjCoIYWbdQOkRTMogFBQnWPVxxk5', '2021-10-01 08:24:09', '2021-10-01 08:24:09'),
(26, 1, '8Qj9WoxWWyunf9y6EbUEWHWcGrfdMmIF', '2021-10-01 10:13:30', '2021-10-01 10:13:30'),
(27, 1, 'SqlLjQdcP0AdnEMHgmBpeEvXOueYz5t7', '2021-10-01 11:22:44', '2021-10-01 11:22:44'),
(28, 1, 'tdqup3bhT7fojK86eCryJE3Lqc1D9rJ4', '2021-10-01 17:16:30', '2021-10-01 17:16:30'),
(29, 1, '1qN7fYNRTCVk3hu4bNKcLLfQMGFBigWo', '2021-10-01 21:05:01', '2021-10-01 21:05:01'),
(30, 1, '3CunyjVfghNSWLUwADOLfWly0TE4A2qJ', '2021-10-02 00:44:40', '2021-10-02 00:44:40'),
(31, 1, 'Y1anoLi7PJhNXaaqCEZT9jCUmn9UGeOG', '2021-10-02 05:52:11', '2021-10-02 05:52:11'),
(32, 1, 'S1IjaF7GzT68AQwq7hMK61wE9DEhGxhe', '2021-10-02 09:56:48', '2021-10-02 09:56:48'),
(33, 1, 'J8YBKWcbSvSujsjiDylo5nmf3qguLI7p', '2021-10-02 16:22:08', '2021-10-02 16:22:08'),
(34, 1, 'hmNz9e674wPgwbrQJRWYq5S8bWUfJyjB', '2021-10-02 19:23:04', '2021-10-02 19:23:04'),
(35, 1, 'SRVXQXY2cuZEyykMN0R31mFR2w2POPuc', '2021-10-02 19:32:13', '2021-10-02 19:32:13'),
(36, 1, '0xjleaM3rh3vGKYoupEwCgYvk0ZqSbrp', '2021-10-02 19:35:11', '2021-10-02 19:35:11'),
(37, 1, 'ZIjFRq6AoIk4TxBmSetxgSnV5BpyY6EX', '2021-10-02 23:09:22', '2021-10-02 23:09:22'),
(38, 1, 'Em2tHoMJe62kVwlvT7sfoEjmIBvjHhlx', '2021-10-02 23:40:07', '2021-10-02 23:40:07'),
(39, 1, 'hVuPpw4trDewuiITwJcJjjlljbx5m7el', '2021-10-03 02:49:38', '2021-10-03 02:49:38'),
(40, 1, 'gPmxqwCyW5UJUKAKrerpnkQlliX7mGrJ', '2021-10-03 08:26:44', '2021-10-03 08:26:44'),
(41, 1, 'UiQDA6CvUMEBlxnjh6l7Cpx1WRsvndUJ', '2021-10-03 14:28:45', '2021-10-03 14:28:45'),
(42, 1, 'VD9btYcOycZiVxGzhJfaMudnqzdWWmdS', '2021-10-03 17:17:52', '2021-10-03 17:17:52'),
(43, 1, 'N10IppiE9XFsjbwX1ZZNmX0xTvkeAxDl', '2021-10-03 17:53:40', '2021-10-03 17:53:40'),
(44, 1, '4CvTzGwzG4qXVj6JTE3GIJL2K0dyqESX', '2021-10-04 08:53:18', '2021-10-04 08:53:18'),
(46, 1, 'vsUqqJKX5AKVdGJGvENJJqPuI7wBXUCS', '2021-10-04 14:45:39', '2021-10-04 14:45:39'),
(47, 1, 'mHFklwxPyuZj7eJQlUBIVOeVUoakjqSC', '2021-10-04 17:20:49', '2021-10-04 17:20:49'),
(48, 1, 'nP4k41Rovopv3J0dPIy3ZlQwisqSAE6Z', '2021-10-04 18:02:50', '2021-10-04 18:02:50'),
(49, 1, 'aKWEXViisHFJUk2HURYVoOZSVawIWKWR', '2021-10-04 18:27:58', '2021-10-04 18:27:58'),
(50, 1, '0fbofgj2ED7tLbU5LNiziJD68yfbQalh', '2021-10-04 20:02:03', '2021-10-04 20:02:03'),
(51, 1, 'D9He9lmgc6TPyRjtr6hj2E3uxYdxVZdO', '2021-10-05 01:18:29', '2021-10-05 01:18:29'),
(52, 1, 'Rz0xmWIwVzyPaUI1jdaTRKwDIpUCo2Uq', '2021-10-05 01:39:53', '2021-10-05 01:39:53'),
(54, 1, 'vSOOUuBjOvhPzBXn1hCrjqbwbiIbEzKk', '2021-10-05 01:55:10', '2021-10-05 01:55:10'),
(55, 1, 'mTeFoAc2mUHLFgumLY8DTX8FNaN9LApD', '2021-10-05 04:18:13', '2021-10-05 04:18:13'),
(56, 1, '3zkimtHkumrybWESrYxdBgZnP0ILfigk', '2021-10-05 10:00:35', '2021-10-05 10:00:35'),
(57, 1, 'yyAwLWVzbjZwvFaDgVLs1lP8s8XdkoV0', '2021-10-05 12:05:39', '2021-10-05 12:05:39'),
(58, 1, 'rHqw8JayTS5exl8lENBY71xZ4fKm8adJ', '2021-10-05 14:12:12', '2021-10-05 14:12:12'),
(59, 1, 'Nhf39BGsgdfpqex1m4g8BgesVr5UWbPk', '2021-10-05 14:19:45', '2021-10-05 14:19:45'),
(60, 1, 'ItCwXzxoAVmQvScgp55wFdqCSck8WohS', '2021-10-05 15:59:08', '2021-10-05 15:59:08'),
(61, 1, 'Edk13aIsdf2P2BvcBmLOMT1THgitJuuU', '2021-10-05 17:32:58', '2021-10-05 17:32:58'),
(62, 1, 'EnfhA89VEfn5jRhUcs0FQPw9XDjwHvGR', '2021-10-05 21:20:46', '2021-10-05 21:20:46'),
(63, 1, 'oVRYDFrIOYXFbW2WNpARj4v2pokkwAjm', '2021-10-05 22:19:22', '2021-10-05 22:19:22'),
(64, 1, '8hBFBsf3F2vHQUM0jy0h5usJ6P95ehvT', '2021-10-05 23:09:10', '2021-10-05 23:09:10'),
(65, 1, 'Yn60kKGAzZvItv5ff6kZ6JIbI7nlTxwQ', '2021-10-05 23:25:46', '2021-10-05 23:25:46'),
(67, 1, 'kXkRreYG8QGTRkodrUnpIS4LKjLB9Mbo', '2021-10-06 00:40:40', '2021-10-06 00:40:40'),
(68, 1, 'ct6a0mdY3LOWRBFew08SBbsFz2F2Mzhl', '2021-10-06 11:35:37', '2021-10-06 11:35:37'),
(69, 1, 'JhbEoNhG2p8xFbIhtmY3l5Lz9Gv5BUcS', '2021-10-06 12:15:05', '2021-10-06 12:15:05'),
(71, 1, 'f2bwIx9wzO1a5Glwpn5rVTEG145EaMHs', '2021-10-06 19:22:34', '2021-10-06 19:22:34'),
(72, 1, 'rlniTiIiMPOxTq8CAyQc6enT6TEJA36T', '2021-10-06 21:05:28', '2021-10-06 21:05:28'),
(73, 1, 'LfZjDnIvE9TGJNCciO3jyvC4bIF9oNyz', '2021-10-06 21:16:30', '2021-10-06 21:16:30'),
(74, 1, 'MO0sKtr9AIARd1jO4VussUO7O2UzbuOy', '2021-10-06 21:22:49', '2021-10-06 21:22:49'),
(75, 1, 'SJJS842fjcg1u1bsJpEzfiMv5ttE3SYp', '2021-10-07 04:49:30', '2021-10-07 04:49:30'),
(76, 1, 'SNvhDy3r9SBr62p3RmYCN5Lnm5iqi6Sm', '2021-10-07 08:09:04', '2021-10-07 08:09:04'),
(77, 1, '9wbCpkpJXwzdJSSha51INnQpmXiM4OzG', '2021-10-07 11:48:28', '2021-10-07 11:48:28'),
(78, 1, 'IsZHvaaXfK1bvBfhCaPteiBjY1usaJ04', '2021-10-07 12:37:42', '2021-10-07 12:37:42'),
(79, 1, 'UiSsDP51pqH9CQyWKwuqudwiHYalTEqT', '2021-10-07 14:00:48', '2021-10-07 14:00:48'),
(80, 1, 'porOiWIDD5OjCDw1wZQwGg1junXxUVCM', '2021-10-07 18:27:39', '2021-10-07 18:27:39'),
(81, 1, 'bkNRnLNo4LReC0RbcuTtBCxm1x2HI7l5', '2021-10-07 18:39:40', '2021-10-07 18:39:40'),
(82, 1, 'PM5utbV6o10QzSd8qmM2PVWxXPM2dhMm', '2021-10-07 18:47:12', '2021-10-07 18:47:12'),
(83, 1, '4aG1iUsBtOOaHLUm63sjLWh7Cvvq9msU', '2021-10-07 19:04:15', '2021-10-07 19:04:15'),
(84, 1, 'JVQ9gsqUR3dMTy7eVF5tlry506heJaTO', '2021-10-07 19:16:02', '2021-10-07 19:16:02'),
(85, 1, '6TmQYe1FuKeen0DZmCgpeyY4UU4qofZw', '2021-10-07 21:06:43', '2021-10-07 21:06:43'),
(86, 1, '9cQ6pR3fp93rlKB1rUpcTy5423PIOsaT', '2021-10-07 21:13:05', '2021-10-07 21:13:05'),
(87, 1, 'MZoG9586eQzZHIm00fGrHYxpfKE8Bmwy', '2021-10-08 00:20:57', '2021-10-08 00:20:57'),
(88, 1, 'SnWhhKLnggvQrTuXqmV2kkMYubyxWd48', '2021-10-08 03:01:25', '2021-10-08 03:01:25'),
(89, 1, 'JIygbhnxATLZ5J8QmjRV0qi0jtKaby8f', '2021-10-08 04:08:42', '2021-10-08 04:08:42'),
(90, 1, 'I49OS9ARIndEREktP9Lfs6jCJIZ6bpGC', '2021-10-08 10:01:49', '2021-10-08 10:01:49'),
(91, 1, 'poi9KQ4V1qU7FFcofWJjnnImcScqDFBZ', '2021-10-08 17:08:20', '2021-10-08 17:08:20'),
(92, 1, 'Mw49JUXrZPjiz1bsx7D1D2SmHDhmPKzH', '2021-10-08 19:20:47', '2021-10-08 19:20:47'),
(93, 1, '5MlEK3tz3RD8g8yOOzNEhKi7TdFFF1Ek', '2021-10-08 19:33:30', '2021-10-08 19:33:30'),
(94, 1, 'IrP0eqxubs70Rdz2HbZ1U6NQ9aMR4dFY', '2021-10-08 20:11:07', '2021-10-08 20:11:07'),
(95, 6, '2hMOrXRemGHtvSgriCFeyyV2kBVRKv0i', '2021-10-08 22:08:43', '2021-10-08 22:08:43'),
(96, 1, '3gk5GJdigCPfo3CAWj3ru1itcangyvNU', '2021-10-08 22:51:42', '2021-10-08 22:51:42'),
(97, 1, 'cwMw9YhJc79o183ZKPgAl4Ebj93fbWvL', '2021-10-09 01:36:54', '2021-10-09 01:36:54'),
(98, 1, 'H7JEJQ9gPo9dhk5inBNkuHnYZMwDCw3J', '2021-10-09 09:10:23', '2021-10-09 09:10:23'),
(100, 1, 'Wos1x4osMzfSkCBMUMvhxMH6EiBYl4So', '2021-10-09 13:28:58', '2021-10-09 13:28:58'),
(101, 1, 'NCUJFZLGdUMMXWoCjyfZe8AOEbRs5Vgb', '2021-10-09 14:05:55', '2021-10-09 14:05:55'),
(102, 1, 'LjuS0dN8Ewup2wxwlM2BCcfbHuq2hehI', '2021-10-09 14:41:37', '2021-10-09 14:41:37'),
(103, 1, 'z9E5LqG1i3IhNulVii3KmeR5MveA9G9A', '2021-10-09 16:37:34', '2021-10-09 16:37:34'),
(104, 1, 'WTAQt6fKDS3P60qHS5XXuWQIyEDPw9Eq', '2021-10-09 17:07:11', '2021-10-09 17:07:11'),
(105, 1, '3xWGI2K9M2HdACCfNtgQ7Y8lNxFaj7tt', '2021-10-09 17:33:07', '2021-10-09 17:33:07'),
(106, 1, 'PwfKsC8vuXkrxLjE1OpmBeQhhqT0Ldp4', '2021-10-09 18:43:10', '2021-10-09 18:43:10'),
(107, 1, 'Hm6kwIsQn1cPJYeGj4EFTW9g9U3plIMp', '2021-10-09 20:49:52', '2021-10-09 20:49:52'),
(108, 1, 'WX0JaCZkgN08t2HdCwtip1nX2fZkCHS5', '2021-10-09 21:21:55', '2021-10-09 21:21:55'),
(109, 1, 'TuURxl7KxWq13pU9NTI0WMeDnovqdYW6', '2021-10-09 22:34:56', '2021-10-09 22:34:56'),
(110, 1, 't7lIJZssOlRv3rDnkHKhhjYOb1lWz0bW', '2021-10-10 00:03:12', '2021-10-10 00:03:12'),
(111, 1, 'VzHDm9UHj311pEynQclADiDNMaX1TG5v', '2021-10-10 00:13:36', '2021-10-10 00:13:36'),
(112, 1, '6QlHrxuKTlniTAyXaCvVD1KoHXhCRU01', '2021-10-10 04:56:09', '2021-10-10 04:56:09'),
(113, 1, 'H5D1cjnHCglHR8JFJ2dXKAyTm3e5mVCE', '2021-10-10 11:03:50', '2021-10-10 11:03:50'),
(114, 1, 'kTqJX3afdJ1ZZZVbRtgiEJg73y5QhsPU', '2021-10-10 15:10:27', '2021-10-10 15:10:27'),
(115, 1, 'Ggxnz9B3In22zE9M3ZT3L36vJSb2wfxQ', '2021-10-10 16:36:39', '2021-10-10 16:36:39'),
(116, 1, '2yFjYd3s4dEJrSQbET9hiGnxENAX7wjT', '2021-10-10 17:13:33', '2021-10-10 17:13:33'),
(117, 1, 'vACGkjE2zUByCpKHPeLHXSIK1BEjfUtt', '2021-10-10 20:58:00', '2021-10-10 20:58:00'),
(120, 1, 'cjNAsmCaekAwnu5IrBVs0jXZo7zntUf6', '2021-10-10 22:40:24', '2021-10-10 22:40:24'),
(121, 1, 'dNBfIlLOoroCf3be03fRgIcSHfbY8Bg6', '2021-10-10 22:42:43', '2021-10-10 22:42:43'),
(122, 1, 'zhvQDQd56YXCxl1SaUfqGoZ55jzniHvM', '2021-10-10 22:44:43', '2021-10-10 22:44:43'),
(123, 1, 'QVDRticQYT76aGmItyf4DRELeJqNn0gK', '2021-10-11 00:45:22', '2021-10-11 00:45:22'),
(124, 1, 'SLZ0D30BCtYzrv7mzspQQw8TzicvUeoE', '2021-10-11 00:50:21', '2021-10-11 00:50:21'),
(125, 1, '18lOR5b8Zc9Y6XzrYjgGjAC9aHrmY6O1', '2021-10-11 01:12:03', '2021-10-11 01:12:03'),
(126, 1, 'rOv1lndVLFcLalAHPf04My3tkdzlj3u9', '2021-10-11 01:28:42', '2021-10-11 01:28:42'),
(127, 1, 'EVLioAQ1oacnEV85DWOLHG2bpL5FioNX', '2021-10-11 02:36:25', '2021-10-11 02:36:25'),
(128, 1, '1OejTyyDwCvUliMUxwsNb4kyRv0kfLkQ', '2021-10-11 02:44:30', '2021-10-11 02:44:30'),
(129, 1, 'iSkguycU36JIOwfUFvUcAP1RCK1U1fvj', '2021-10-11 06:54:18', '2021-10-11 06:54:18'),
(130, 1, 'ULgSdDBN88TUqffgC0fRGCtGvV3SVini', '2021-10-11 11:21:22', '2021-10-11 11:21:22'),
(131, 1, 'g6qJb6mqgStVvRzhaf00OI1pYmgbS76Z', '2021-10-11 19:33:11', '2021-10-11 19:33:11'),
(132, 1, 'BRfWG1uMKXuB8fGluwlHpxh3Qpu9O6k6', '2021-10-11 20:02:56', '2021-10-11 20:02:56'),
(133, 1, 'oy6Efsg49UqJ6OIoMmBwCvyRCoSfMIt5', '2021-10-11 22:33:06', '2021-10-11 22:33:06'),
(134, 1, 'jlvUQm728WaSdRDaWEVuWHGMmwkxjA9g', '2021-10-12 12:38:18', '2021-10-12 12:38:18'),
(135, 1, 'GfxrYFmjin7zwPaUezQo7T0EjpPJjhWB', '2021-10-12 12:40:04', '2021-10-12 12:40:04'),
(136, 1, 'MeUAIbNIZnc23uCn3K5TwA6X86IWWxqo', '2021-10-12 17:10:19', '2021-10-12 17:10:19'),
(137, 1, 'rPChr5cGZ11IHlwTuFgu5FJR0s5Lj7YE', '2021-10-12 18:22:18', '2021-10-12 18:22:18'),
(138, 1, 'eoj37hH2Jb0rJxdBWkI8EvCMuYTWd4Rc', '2021-10-13 00:06:05', '2021-10-13 00:06:05'),
(139, 1, 'DubPkLPhyBXVooTNWC2bNU6CCUtbanIc', '2021-10-13 02:39:19', '2021-10-13 02:39:19'),
(140, 1, 'BBV2NHDsu9LKnmAbRdvZuRbymRqybBaQ', '2021-10-13 09:47:51', '2021-10-13 09:47:51'),
(141, 1, '2e6jL0EcUEm5Q2Bfb88KiPl0rQ5xrc1c', '2021-10-13 12:05:38', '2021-10-13 12:05:38'),
(142, 1, 'FjZNtEEGnLDR8OstKHAHFE0bwmIauKT0', '2021-10-13 13:08:04', '2021-10-13 13:08:04'),
(143, 1, 'oYDdSisWG5hYVodrrHjmxk5P7bljVx2v', '2021-10-13 13:50:21', '2021-10-13 13:50:21'),
(144, 1, 'arrMZSfOZsAREmHgnG1Otj4Y9BPAqJYW', '2021-10-13 17:37:34', '2021-10-13 17:37:34'),
(145, 1, 'QjZVNratzngUFynXoDLOYMGJz3aWgZjH', '2021-10-13 18:26:19', '2021-10-13 18:26:19'),
(146, 1, 'DZpyoI6wCSnrJLQRZQL9goDFK5H6CY6p', '2021-10-14 00:25:07', '2021-10-14 00:25:07'),
(147, 1, 'mex3W7syJfMrOpjFUDUNX110wN5fSpdd', '2021-10-14 01:40:27', '2021-10-14 01:40:27'),
(148, 1, 'pmY0Cgo1ANggZbvUNhVqWgtK9gHrW0iR', '2021-10-14 03:01:58', '2021-10-14 03:01:58'),
(149, 1, 'P9d6cgj5WjV7lCF8lC5DDWRMkyssawua', '2021-10-14 05:16:51', '2021-10-14 05:16:51'),
(150, 1, 'apKPdnCb05Ux6nWhcDUiOgOLK5SRIqlc', '2021-10-14 07:02:34', '2021-10-14 07:02:34'),
(151, 1, 'iQFzEHlpFxGr1lipgS84ByWo8MkjPj2b', '2021-10-14 13:59:24', '2021-10-14 13:59:24'),
(152, 1, 'EuXxit8tofeB1iENzrpFKJHOyhFbGEhh', '2021-10-14 15:36:05', '2021-10-14 15:36:05'),
(153, 1, 'rkzqUksK5jK5taUMSQwul2bDGxvG58is', '2021-10-14 19:35:15', '2021-10-14 19:35:15'),
(154, 1, 'MxbZ8l60blyqqXfdpHQk2rmyOJkUUkrt', '2021-10-15 13:51:25', '2021-10-15 13:51:25'),
(155, 1, 'Ft5CYpr5u9x0SThjVddzSpaDd9nZ9jOT', '2021-10-15 14:25:51', '2021-10-15 14:25:51'),
(156, 1, 'BKh1Sb0YE2n6AXLGxJvxANEKTliF3ypF', '2021-10-15 14:29:05', '2021-10-15 14:29:05'),
(157, 1, 'b9rLRuHmoflu2BANyg9dxYOhAmzI41R9', '2021-10-15 14:56:27', '2021-10-15 14:56:27'),
(158, 1, 'ZRzmn7AIL2MJVOxi00mjjasE0xAcLf3Y', '2021-10-15 14:57:08', '2021-10-15 14:57:08'),
(159, 1, 'P80MvNGJINcYMsA86F8aRK2MscDabfXc', '2021-10-15 17:32:12', '2021-10-15 17:32:12'),
(160, 1, 'jOPTQPrdhe9GEEUWddhRbEYlMhMvL8qQ', '2021-10-15 20:27:40', '2021-10-15 20:27:40'),
(161, 1, 'v91B9EpXb87PBOC4OJ0mkMdDu7jkdwMS', '2021-10-15 22:45:10', '2021-10-15 22:45:10'),
(162, 1, 'GnXHy3Nto7y0jS64sIU6wJvIcbk261YH', '2021-10-16 12:40:24', '2021-10-16 12:40:24'),
(163, 1, 'RhZtW7NhdzriX7i5FqErbmvM2aMJZS9q', '2021-10-16 13:18:16', '2021-10-16 13:18:16'),
(164, 1, 'uuRxU3jyvTWCYVlpSb2Zv8rFdiCQ44pG', '2021-10-16 13:20:39', '2021-10-16 13:20:39'),
(165, 1, '14c4zGES87aqVAsBSkf4V4KPOqrev2Ad', '2021-10-16 13:20:40', '2021-10-16 13:20:40'),
(166, 1, 'tOitV5iY1tCoDiSj0vMCccc3n2BCqvBE', '2021-10-16 16:10:34', '2021-10-16 16:10:34'),
(167, 1, 'TY5KRpys38KYOIM6mPSu33MILfkojGUN', '2021-10-16 18:31:04', '2021-10-16 18:31:04'),
(168, 1, '0evm9QTtinwyl2RLOF1J6FnfWutmrKHT', '2021-10-16 21:29:16', '2021-10-16 21:29:16'),
(169, 1, 'XYRFqw1Ul1HLFurcSauPFk4YcXrArjwW', '2021-10-17 01:23:32', '2021-10-17 01:23:32'),
(170, 1, 'HwVwgNFaVT5UnTcR5ATUyjN6JgEZoso9', '2021-10-17 02:42:12', '2021-10-17 02:42:12'),
(171, 1, '8EnttOPoxppDWA66Hy5yVlRhRdDqSEen', '2021-10-17 14:23:58', '2021-10-17 14:23:58'),
(172, 1, 'IYnQIWeaiNGunQNPHZhaeEd2usW3D4AE', '2021-10-17 15:14:47', '2021-10-17 15:14:47'),
(173, 1, 'rvQMQfO6N1FitoStQRzEiU3aj6lsXpO8', '2021-10-17 21:51:27', '2021-10-17 21:51:27'),
(174, 1, 'BCgstnGrVBfZGG5VO06GZF5rflFbunBU', '2021-10-17 21:57:57', '2021-10-17 21:57:57'),
(175, 1, 'JRo6NgjiYDpVEIcKiOuRviSkc9EAe7nk', '2021-10-18 00:42:29', '2021-10-18 00:42:29'),
(176, 1, 'IFtogvegouKjVWVaMO54IHl2Sr4lLQ2D', '2021-10-18 07:56:38', '2021-10-18 07:56:38'),
(177, 1, 'wk76wlm9gI7cOcxVZtyyfBqSBPGhRzu7', '2021-10-18 13:20:55', '2021-10-18 13:20:55'),
(178, 1, 'eNa148rnj2vsEJ9rL0XZYbJjkb5HDZ9T', '2021-10-18 13:22:00', '2021-10-18 13:22:00'),
(179, 1, 'G9XbEhfmZ4f8g9N4NAo277jmB7sz67wJ', '2021-10-18 16:15:00', '2021-10-18 16:15:00'),
(180, 1, '24P3ur3ucRlbyuLilojugtB013yj69bx', '2021-10-18 16:34:56', '2021-10-18 16:34:56'),
(181, 1, 'jb7nW7yyBDGSRuHWymRMPcXYQbCAeGE5', '2021-10-18 17:33:17', '2021-10-18 17:33:17'),
(182, 1, 'jZwgdqGcubA0nIioU4HmKj5neEaNX4Fo', '2021-10-19 01:33:36', '2021-10-19 01:33:36'),
(183, 1, 'RntKyz5Sjn1yyjDcE24r0bdcNjfEJNbr', '2021-10-19 03:25:06', '2021-10-19 03:25:06'),
(184, 1, 'SPup8SzismkuG4Kq1kQB0RQaQIPQImst', '2021-10-19 08:05:11', '2021-10-19 08:05:11'),
(185, 1, '4LUJ4eiJGV0dsQ2SK30JK1DNOx7ljrwE', '2021-10-19 09:44:09', '2021-10-19 09:44:09'),
(186, 1, '2HUZby1eJlnPLHGGIlldutEbiyQmKWwV', '2021-10-19 10:14:05', '2021-10-19 10:14:05'),
(187, 1, 'NoEZwV4JnK9r8ICSVu11owNjr4yYoyUI', '2021-10-19 10:56:19', '2021-10-19 10:56:19'),
(188, 1, '2YPS5smOI0cSVVatJqMjO9QA7zYU3n0G', '2021-10-19 12:08:48', '2021-10-19 12:08:48'),
(189, 1, 'k95GCrXdK7kIrWMU7xkwDNHHlnxYho4u', '2021-10-19 16:28:10', '2021-10-19 16:28:10'),
(190, 1, 'NaB1uX63lpWqdwbdLB68Aqog2rrlOXBF', '2021-10-19 17:08:41', '2021-10-19 17:08:41'),
(191, 1, 'CcaLVeglewg1egF7TDT9u8wNnTEtaEjP', '2021-10-19 18:15:08', '2021-10-19 18:15:08'),
(192, 1, 'KoIQG1DIdfu8MyJRiF6Ijb6tlZHZYiYC', '2021-10-19 18:30:35', '2021-10-19 18:30:35'),
(193, 1, 'cdHBznxqAVYA7gVXrwwU17QL0Kqf3Drj', '2021-10-19 19:31:16', '2021-10-19 19:31:16'),
(194, 1, 'P2fagI4C8I3kKP8vMBeXjpxUvnbVs9gW', '2021-10-19 19:44:40', '2021-10-19 19:44:40'),
(195, 1, 'PEpjtXytX4qD4lMHzBZFKFprjGkEadyG', '2021-10-20 00:26:15', '2021-10-20 00:26:15'),
(196, 1, 'coTLc6gaVRFOjCC64Fsf8x6OiVqcQRF1', '2021-10-20 13:45:55', '2021-10-20 13:45:55'),
(197, 1, 'qFhOnEmafUphXyDuRglomTAhyxX0agLQ', '2021-10-20 17:45:08', '2021-10-20 17:45:08'),
(198, 1, 'FukNkyEAGwnHnxyBN8sAw3SdaFHNc0yB', '2021-10-20 18:15:37', '2021-10-20 18:15:37'),
(199, 2, 'PqEiKZHmfPL8deRHrnexrMe4aUJKjfjS', '2021-10-20 18:29:31', '2021-10-20 18:29:31'),
(200, 1, 'F16PlcdGV8jl4VNiVBi152qBKnOyQgNs', '2021-10-20 23:26:27', '2021-10-20 23:26:27'),
(201, 1, 'RSUJ0EY0wth72tDUPEGR0rvtUIamwfdq', '2021-10-21 08:52:29', '2021-10-21 08:52:29'),
(203, 1, '07hufXPbl2YEmOXDk56ceKd4jiiA7e6v', '2021-10-21 12:40:18', '2021-10-21 12:40:18'),
(204, 1, '54D1OFxmgOMvd7ZoTCqErph8JeLPCcOr', '2021-10-21 13:34:10', '2021-10-21 13:34:10'),
(205, 1, '5h6WSViHnZw8UZI1BpWmAEHWc1ErWtuo', '2021-10-21 14:47:24', '2021-10-21 14:47:24'),
(206, 1, 'g4vsepQgAzTIxIFLiqwkDPiy3iUVIJIF', '2021-10-21 17:36:08', '2021-10-21 17:36:08'),
(207, 1, 'u7vMj95nVFs4sslx7J4bPGwGHlcfEPCn', '2021-10-21 21:13:08', '2021-10-21 21:13:08'),
(208, 1, 'LTlhv8lrlv8XVhIdARGeeT9XeE5KNw5k', '2021-10-21 21:50:18', '2021-10-21 21:50:18'),
(209, 1, 'U2mLiBwtLTvgNIR1Ys0eevwycPXlUFwh', '2021-10-22 00:35:48', '2021-10-22 00:35:48'),
(210, 1, 'WtOmyqs4UUhI01yhcwfZihtM0NRwU6Ov', '2021-10-22 01:18:49', '2021-10-22 01:18:49'),
(211, 1, 'xqT4kHb9TiOnonByVgXLqPIyzDAFUJNN', '2021-10-22 01:54:45', '2021-10-22 01:54:45'),
(212, 1, 'MnAdmhUv2GKrBT0SHA3sw2o4FlLrqk9w', '2021-10-22 02:52:33', '2021-10-22 02:52:33'),
(213, 1, 'pxrFjhaU9qTywBIDZKGqduaJJOctlhRO', '2021-10-22 10:32:16', '2021-10-22 10:32:16'),
(214, 1, 'Rj5O5PMY2x7pMZIL97wDckVOpZR3CkrV', '2021-10-22 12:28:33', '2021-10-22 12:28:33'),
(215, 1, '3DrwPyNGLCn6TZ3FNWyHsRDdoUC4K8SA', '2021-10-22 15:19:53', '2021-10-22 15:19:53'),
(216, 1, 'EoIHEM3XkC9SqJzp9s2tHxamSXqndEua', '2021-10-22 15:19:56', '2021-10-22 15:19:56'),
(218, 1, 'NEUJAeknnKTnELdzMyxqaeMviJZDe8US', '2021-10-22 19:48:23', '2021-10-22 19:48:23'),
(219, 1, 'sbKgvbsV0S88CqplSIrjPXekG0GNKV6U', '2021-10-22 21:59:10', '2021-10-22 21:59:10'),
(220, 1, '9AC3lkXiG2Ti9LGmfyQFTHJiTWYmoN6S', '2021-10-23 01:35:53', '2021-10-23 01:35:53'),
(221, 1, 'q1MtWRDdB3bH9SUR8LtNpB55voDcLB4I', '2021-10-23 08:58:01', '2021-10-23 08:58:01'),
(222, 1, 'uMaruPG7cAQOcuAKJiRkkIdeiu9gY3cn', '2021-10-23 14:56:12', '2021-10-23 14:56:12'),
(223, 1, 'gLyRwefQEmvYAUHyPwWV9IsJmuW3osFp', '2021-10-23 15:40:15', '2021-10-23 15:40:15'),
(225, 1, 'VAHCFNXAopeLVc9clZpdK47kQtd3pjjW', '2021-10-23 17:13:14', '2021-10-23 17:13:14'),
(226, 1, 'zoH0BfSKiD0CIGMsAbSd4ftOShJ7te7g', '2021-10-23 17:56:47', '2021-10-23 17:56:47'),
(227, 1, 'DYF8rDMLIet8QaVCeKKW48qMcKvYkoHm', '2021-10-23 17:59:38', '2021-10-23 17:59:38'),
(228, 1, 'hEc4GhpeuEvvxMGf1snXZf2LcGLb32QD', '2021-10-23 19:23:25', '2021-10-23 19:23:25'),
(229, 1, 'p9yogGlcPOVK5QAq2sAvsQT6Om0ITPA0', '2021-10-24 07:27:43', '2021-10-24 07:27:43'),
(230, 1, '0dQw279u5unvFc7eD0Ox9QPL0Bi8rEet', '2021-10-24 13:27:55', '2021-10-24 13:27:55'),
(231, 1, 'u20qt2S7O1jZnwHLZgjKDPtbVOJsCJC9', '2021-10-24 15:55:27', '2021-10-24 15:55:27'),
(232, 1, 'iR0VlZ1qockLl0DopPxePdziBnMO5Kok', '2021-10-25 01:48:32', '2021-10-25 01:48:32'),
(233, 1, '6ntUMySFsMH1SsWLyRHfQznBKEaupC8M', '2021-10-25 10:39:11', '2021-10-25 10:39:11'),
(234, 1, '5mAAmhhTUz1VwMGsvQIxvEFykNY9dyoi', '2021-10-25 12:36:08', '2021-10-25 12:36:08'),
(235, 1, 'ntxvLdnZySIWpwL7qbO1fRepv1uDq1xn', '2021-10-25 12:51:21', '2021-10-25 12:51:21'),
(236, 1, 'hcKRMVEEjDhQrudCgcnulra2UbcLox9u', '2021-10-25 12:58:39', '2021-10-25 12:58:39'),
(237, 1, 'MtzZAZnV788t8CYI2Fx8qY4QVlSNxeRQ', '2021-10-25 13:31:03', '2021-10-25 13:31:03'),
(238, 1, '17dTvAfBQvMOiNr2lDgeOn28UHw5YLxL', '2021-10-25 13:42:58', '2021-10-25 13:42:58'),
(239, 1, 'oCKiXld0kvJZMWwQhwwiBBWKgWcMMFMM', '2021-10-25 14:54:13', '2021-10-25 14:54:13'),
(240, 1, 'pFvxKwOd2kH5om1mVI8D2dg5UcU7IRY3', '2021-10-25 16:39:49', '2021-10-25 16:39:49'),
(241, 1, '5fiUFBDmrZPplAMBOOXMqtc0xIwXsG43', '2021-10-25 17:48:49', '2021-10-25 17:48:49'),
(242, 1, 'tZhTOCKk4mWzg20UEfr7aFugUv6jNTVH', '2021-10-25 17:54:46', '2021-10-25 17:54:46'),
(243, 1, 'SqV9hm0mPAkuGGDX0E2KeOVVV6XOqAD9', '2021-10-25 17:56:53', '2021-10-25 17:56:53'),
(244, 1, 'pp0CaEcXvkx84O6tiJkC50QdqRGGRZcc', '2021-10-25 20:51:59', '2021-10-25 20:51:59'),
(245, 1, '1qK3UqEoLAXIo843LF7i2VnDdTWdsGCd', '2021-10-25 21:06:59', '2021-10-25 21:06:59'),
(246, 1, 'IutsOlH04ky85m4Jt4fxdqDMx4iyuGWE', '2021-10-25 21:33:24', '2021-10-25 21:33:24'),
(247, 1, 'c8k9AE8jjWrS2kf77Y5dYhzXsgLHCBJt', '2021-10-25 21:47:21', '2021-10-25 21:47:21'),
(250, 1, 'rmxo7VMrVqCI7LXinYSc12msUN3VPrRo', '2021-10-26 05:02:27', '2021-10-26 05:02:27'),
(251, 1, '1o3QxvV8Q5deiOSKfF4lSe3cGo5P50Po', '2021-10-26 12:59:00', '2021-10-26 12:59:00'),
(252, 1, 'meQLDRNqTAp7uuREXwNCKrzC8K00WuQT', '2021-10-26 14:25:09', '2021-10-26 14:25:09'),
(253, 1, 'zjL2OjP8afrQXB9quAS9z5nQXaAlk0ak', '2021-10-26 16:08:22', '2021-10-26 16:08:22'),
(254, 1, '9cuoIqWfJZEG7h15RXOanYrou6ueOOGf', '2021-10-26 18:23:57', '2021-10-26 18:23:57'),
(255, 1, 'biWxVXcqVWPYDQhqs3kkEYzYXwwsloX0', '2021-10-26 19:02:46', '2021-10-26 19:02:46'),
(256, 1, '3gEbNmHFsRqHwouZfOvC8zruzMdrqNmX', '2021-10-26 19:39:05', '2021-10-26 19:39:05'),
(257, 1, 'wTWDHxakX8uro8viYDKJumtPmwPlLsgR', '2021-10-26 20:44:00', '2021-10-26 20:44:00'),
(258, 1, 'zXmpA5E0vqBwbfyhoLwEw0WWBXsyEjK3', '2021-10-26 21:58:01', '2021-10-26 21:58:01'),
(259, 1, 'TlLHIq35VSAtLDEIlMiL9udVdbL23dXq', '2021-10-26 22:50:06', '2021-10-26 22:50:06'),
(260, 1, 'koJxluzig5FQLcKj5xGqd2GZoNo6Vo9z', '2021-10-27 00:13:38', '2021-10-27 00:13:38'),
(261, 1, 'dUG1GwR1SMZ76YGaPa4E5jO3uNPFgjJe', '2021-10-27 00:33:35', '2021-10-27 00:33:35'),
(263, 1, 'IpwGmtKg0HSnbxPXOc9tDlSNyOTuAnds', '2021-10-27 03:03:01', '2021-10-27 03:03:01'),
(264, 1, 'ZX46MJjeEhE0uaCrfg1u2cOWINWptGFn', '2021-10-27 06:18:55', '2021-10-27 06:18:55'),
(265, 1, 'KhqIOEoky2oXqXjD84cskyfTMlle0p57', '2021-10-27 12:20:29', '2021-10-27 12:20:29'),
(266, 1, 'xHZ3JW4aGwMOr0hemdelhPK8wWAxwI0w', '2021-10-27 13:57:00', '2021-10-27 13:57:00'),
(267, 1, 'a2YpPcpAAixp8dtwvMymrqBhpXV3PRxQ', '2021-10-27 15:19:22', '2021-10-27 15:19:22'),
(268, 1, 'VIRQb0Z6N9i0gxlzYjpVSu3SLfvlHMmY', '2021-10-27 15:59:28', '2021-10-27 15:59:28'),
(269, 1, 'RSFFJBxhIGkXJJF7OGpjJ5oCsaWIftbC', '2021-10-27 18:59:00', '2021-10-27 18:59:00'),
(270, 1, 'RAQHDDOXZPFv7Y2N8XKOda8JwxMX92cW', '2021-10-28 01:28:45', '2021-10-28 01:28:45'),
(271, 1, 'BJPzB6NDomXWaXMuCIe0L7GNFEGBgnpl', '2021-10-28 01:41:35', '2021-10-28 01:41:35'),
(272, 1, 'Zprak6nIUXMXpPeROJxsMPebxAPv1eRb', '2021-10-28 09:31:32', '2021-10-28 09:31:32'),
(273, 1, '7xFz23cbcOCyopPSuqukPvxU13Vu1DMY', '2021-10-28 11:48:28', '2021-10-28 11:48:28'),
(274, 1, 'LDG9oF317FtfzC8xElP5Kpih6qbGKznk', '2021-10-28 13:56:59', '2021-10-28 13:56:59'),
(275, 1, '2vdYgQ4NrcVVCNkG9ORsiasWMjCkE23l', '2021-10-28 15:40:32', '2021-10-28 15:40:32'),
(276, 1, 'hn36OUyuSZTx3u0AQ1yB0PSWIytSA7DY', '2021-10-28 16:51:55', '2021-10-28 16:51:55'),
(277, 1, 'P9SztWxtyaW72qDzIo6NEOQzxVsRlIVB', '2021-10-28 20:51:10', '2021-10-28 20:51:10'),
(278, 1, '8bm6iRLBJ5GoKwKRmF62mYKjnFpdU4zJ', '2021-10-28 23:23:16', '2021-10-28 23:23:16'),
(279, 1, 'UxgZRqXJ0ec41yQCKJd9YKv1phK5NKV3', '2021-10-29 01:06:30', '2021-10-29 01:06:30'),
(280, 1, '9i2gzpm29faoWg5GZTpyUK7do2klYMlk', '2021-10-29 10:14:29', '2021-10-29 10:14:29'),
(281, 1, 'McdnMDRVTllKabl0VEoIGAcT13pqBxee', '2021-10-29 12:35:00', '2021-10-29 12:35:00'),
(282, 1, '5pBOkxXglffwWFQNWMeErXZJ6OzMvtXY', '2021-10-29 17:37:48', '2021-10-29 17:37:48'),
(283, 1, 'kSmMtJdT8BCasbHgZK8HzUIjnQqLjfxj', '2021-10-29 17:40:23', '2021-10-29 17:40:23'),
(284, 1, 'Gb6vieQxCwjNJ7KW16OtodS2fhn6fBDU', '2021-10-29 19:35:03', '2021-10-29 19:35:03'),
(285, 1, 'QMI2755MCE8OWKvaKWQyq5qEkk3A7GQO', '2021-10-29 20:40:48', '2021-10-29 20:40:48'),
(286, 1, 'S4FSPnIKOyCnYg6RsSFF90izpYk3ilXx', '2021-10-29 21:28:18', '2021-10-29 21:28:18'),
(287, 1, 'wzFcIOZEm7LrjmxeJB7VNpkh7jr9Ab7o', '2021-10-29 21:39:40', '2021-10-29 21:39:40'),
(288, 12, 'XxwS0ITKEoK6VjaJ74RcHyGnot8q7dqJ', '2021-10-29 22:01:51', '2021-10-29 22:01:51'),
(289, 1, 'r56aLOCtsTT3f4rcyYYgxzl9ZrKV1hcn', '2021-10-30 06:30:37', '2021-10-30 06:30:37'),
(291, 1, 'kjdELc5JoUeFv5su74xaA8G0sWJWMRzi', '2021-10-30 15:39:15', '2021-10-30 15:39:15'),
(292, 1, 'JkHoHvxdujXzTL4nryNZugMYtUR5Mw5m', '2021-10-30 15:54:25', '2021-10-30 15:54:25'),
(293, 1, '3hPD9i8heqi3MU3TTiFo9a662C2XPbQZ', '2021-10-30 15:58:40', '2021-10-30 15:58:40'),
(294, 1, 'W2ZAoBQxpnKz6nopypsAi5fMyJrUTwZB', '2021-10-30 22:16:22', '2021-10-30 22:16:22'),
(295, 1, '1smVH4TIAf9ZEYHuE258Rg2ncuixWpWL', '2021-10-31 00:29:15', '2021-10-31 00:29:15'),
(296, 1, 'cLP8nhfo1tmjvJH3qqx189aLMtXCJMe4', '2021-10-31 00:53:28', '2021-10-31 00:53:28'),
(297, 1, 'vmg2ECIqLW1FDiFF9KxWH6PWzbcjzu7G', '2021-10-31 10:23:49', '2021-10-31 10:23:49'),
(298, 1, 'nmC4atXolx8rlvZ1DQaHdwXOqSOhd5oq', '2021-10-31 10:48:37', '2021-10-31 10:48:37'),
(299, 1, 'Djn70ymmtFsWJ27l2f4SCG2sTdkZS4OI', '2021-10-31 14:36:35', '2021-10-31 14:36:35'),
(300, 1, 'YJvGPLp9LwDsk8SngU9HHcMc859WAdiX', '2021-10-31 15:48:08', '2021-10-31 15:48:08'),
(301, 1, 'HFc64OgQdQXaO7K7H8eRX0J4zhLzwUE5', '2021-10-31 16:08:41', '2021-10-31 16:08:41'),
(302, 1, 'KgxQ8lQy85B6NK4PfudBTHrhUP0TShIj', '2021-10-31 16:31:06', '2021-10-31 16:31:06'),
(303, 1, 'ySozKoSmKMVtB0GgQ736aNEqHrk1qZDu', '2021-10-31 18:21:44', '2021-10-31 18:21:44'),
(304, 1, 'qwy72K4nkTHMN5UyUUUigzoa3dWs2Mlg', '2021-10-31 21:51:08', '2021-10-31 21:51:08'),
(306, 1, '1epEFjvt4IxlJl8bvYJ3jZCeJYqRM1JS', '2021-10-31 22:05:35', '2021-10-31 22:05:35'),
(307, 1, '8ENuwenNpia4CoQmjKGpKH9FvBRBwx0n', '2021-11-01 14:56:42', '2021-11-01 14:56:42'),
(308, 1, 'EjJRtHoJFY8orDESK6Or0zlUutXWrWrD', '2021-11-01 14:58:57', '2021-11-01 14:58:57'),
(309, 1, 'YVJd0npGLkZBSxGpQBntrGMigrrLeqMD', '2021-11-01 15:04:43', '2021-11-01 15:04:43'),
(310, 1, 'oIhgsVAsXBEkINj5CdJXc1WIyG7mOojN', '2021-11-01 15:20:35', '2021-11-01 15:20:35'),
(311, 1, 'IfRS3NEXrTCa8GRrhEIs9ZzSZUh76woa', '2021-11-01 15:24:45', '2021-11-01 15:24:45'),
(312, 1, 'iveReRHEbEblgVxbXIrmgntsNoP8IgiY', '2021-11-01 15:49:32', '2021-11-01 15:49:32'),
(313, 1, 'H47hleKoaHqPD5kgxtaa9xyqP3hgbPGz', '2021-11-01 18:41:45', '2021-11-01 18:41:45'),
(314, 1, 'CFqxJ9SWoyDp8nzznkZQvQv8SMrHaymG', '2021-11-01 20:21:34', '2021-11-01 20:21:34'),
(315, 1, 'ChgEfAgHsAFvHZm5YyvQAirVwrnWCiRg', '2021-11-01 20:58:29', '2021-11-01 20:58:29'),
(316, 1, 'cw5Qc0N6vd06Kv0jwvRV0XWMTgGVXxdd', '2021-11-01 21:37:11', '2021-11-01 21:37:11'),
(318, 1, 'G91SfUBsvgC9agpO8mcYOubqdIFE154u', '2021-11-01 23:04:51', '2021-11-01 23:04:51'),
(319, 1, 'cEarlnCQJaSjTlvRF1xK7PReMAG9TjXh', '2021-11-01 23:04:52', '2021-11-01 23:04:52'),
(320, 1, '5VKQS07svXANMCkzTgTMaXEoCpMeI5Xp', '2021-11-02 00:52:34', '2021-11-02 00:52:34'),
(321, 1, 'TL8GJ6uEG2JvMTlxV2hihSTpxKdQbsGt', '2021-11-02 01:02:29', '2021-11-02 01:02:29'),
(322, 1, '3d6mjMWoOQ7UdmIK5F1vtqEhE0BtI0Os', '2021-11-02 06:21:09', '2021-11-02 06:21:09'),
(323, 1, 'sOWd1bzYEx3Ui09WsAyjkKH8iDX6dFzE', '2021-11-02 12:25:49', '2021-11-02 12:25:49'),
(324, 1, 'JrP0inNQgNJ6tcarhXjH1CPFy5wpFftM', '2021-11-02 12:42:56', '2021-11-02 12:42:56'),
(325, 1, 'YNJlwrrdP0KniLgrngbRcD87cvgnRKbw', '2021-11-02 14:31:05', '2021-11-02 14:31:05'),
(326, 1, 'WiPXgSCxQDg8wckUcuQu6qRQrYWqmi1W', '2021-11-02 17:01:27', '2021-11-02 17:01:27'),
(327, 1, 'r6CZtv55rE45QcL00iy5H47LdFOxe4uf', '2021-11-02 17:14:59', '2021-11-02 17:14:59'),
(328, 1, 'MaMchouSgOpwWSivHpBrQUeUUXYCcvQH', '2021-11-02 18:48:03', '2021-11-02 18:48:03'),
(329, 1, 'tuMzHWU7B84V990cl2dV8afv69ndIz4a', '2021-11-02 19:39:53', '2021-11-02 19:39:53'),
(330, 1, '1QmIK9zDnKarP0qDEaNobMej3bAxL60I', '2021-11-02 19:43:48', '2021-11-02 19:43:48'),
(331, 1, 'ROCWVTzjYnkbjDxXdfsli6C6AXsUoY1B', '2021-11-02 20:10:46', '2021-11-02 20:10:46'),
(332, 1, 'HLIpRcRvHEeDUpxfdedPyyLfkXZHfF0X', '2021-11-02 20:22:43', '2021-11-02 20:22:43'),
(333, 1, 'POaPWFWAYzy05I2dlTfeA1y4Ybv78A8J', '2021-11-02 21:13:41', '2021-11-02 21:13:41'),
(334, 1, 'BH7i6RnadHXsUVZbCM6TeHHzdiBNKxRT', '2021-11-02 22:06:30', '2021-11-02 22:06:30'),
(335, 1, 'oL9HA92yE1368SYGH8triJd081DityyJ', '2021-11-02 22:18:31', '2021-11-02 22:18:31'),
(336, 1, 'KjDqBk9Flesy6LYdfUjJynx8noAO2iVq', '2021-11-02 22:23:18', '2021-11-02 22:23:18'),
(337, 1, '3A9IaI0AXDfO1gwFq3gnKfCcVtNUhrcq', '2021-11-02 22:28:45', '2021-11-02 22:28:45'),
(338, 1, 'vVM1KW4P2cCfedkXTbxomiDg0bOjyryG', '2021-11-02 22:29:51', '2021-11-02 22:29:51'),
(339, 1, 'rNbgz3IMtsZTVhViIkyJi9bJEr7khq5T', '2021-11-03 00:35:59', '2021-11-03 00:35:59'),
(340, 1, 'fLuThR9vkXgq4W2QnjFstj3aZn2NSkkx', '2021-11-03 00:44:29', '2021-11-03 00:44:29'),
(341, 1, '9KxIRsjgaPQMvL21LVIRZumOlY8wIZST', '2021-11-03 00:44:30', '2021-11-03 00:44:30'),
(342, 1, 'ajHtcGIHfWaLPzDpDA3chs2VnxjgZk5u', '2021-11-03 06:55:41', '2021-11-03 06:55:41'),
(343, 1, '7U1eA0phmuQYZ8hC7sxDKV7WzIzLdtiW', '2021-11-03 11:28:33', '2021-11-03 11:28:33'),
(344, 1, 'xI0ozgGtH9fyAKUWfdH3cXcXHJ79h2mp', '2021-11-03 12:42:27', '2021-11-03 12:42:27'),
(345, 1, '5RMxaB2LRhUpvKsXdiqYeMfPO0Ei44yv', '2021-11-03 16:05:43', '2021-11-03 16:05:43'),
(346, 1, 'DrkXcxsl2q9emx8Q9VblJHIF3pe9xUnI', '2021-11-03 18:46:06', '2021-11-03 18:46:06'),
(347, 1, 'QooxM3uCEBeRwepxGBPfSci6xjbsFXXU', '2021-11-03 21:30:36', '2021-11-03 21:30:36'),
(348, 1, 'mZtsgN256nlA83uUSn34liPGLTOFal9R', '2021-11-03 22:24:30', '2021-11-03 22:24:30'),
(350, 1, 'zZh3SILIXd60GgoE9LEF4kPyipbyjSUP', '2021-11-04 01:28:22', '2021-11-04 01:28:22'),
(351, 1, '4ZCi02hCE8Z2Jy4ISab2bbN6Y8l8rkBm', '2021-11-04 01:55:16', '2021-11-04 01:55:16'),
(352, 1, 'Avv37hgZfHwk6k4oFLSwC1dVsBMsi1Eu', '2021-11-04 09:11:39', '2021-11-04 09:11:39'),
(354, 1, 'iZJSUn0UAHfwtv57u6RiGhxKfBLqDNcB', '2021-11-04 12:53:12', '2021-11-04 12:53:12'),
(355, 1, 'n04duYnMqXhjiZs58O5dhU1JmDaDW16c', '2021-11-04 12:57:37', '2021-11-04 12:57:37'),
(356, 1, 'etSRmfIYUZDYdOFwwHlmOlBRoKNxBmsJ', '2021-11-04 17:48:46', '2021-11-04 17:48:46'),
(357, 1, 'bDv2eXqgY96Mo3WZEBDygsKOs9cOj76e', '2021-11-04 18:20:58', '2021-11-04 18:20:58'),
(358, 1, '2Cq1wtWwplvz78iOCiP74xUQN7jWMpui', '2021-11-05 00:37:32', '2021-11-05 00:37:32'),
(359, 1, 'bkcaCxiD7lmLBKVuuLvn7qXy9TRPUvQ5', '2021-11-05 02:13:06', '2021-11-05 02:13:06'),
(360, 1, 'TsQ1wuHPryixeDUqYeffiM6Ehol5IpjS', '2021-11-05 02:54:55', '2021-11-05 02:54:55'),
(361, 1, 'YKpEz8UI2e3tlRd7xHnr8T8yRzIkszMH', '2021-11-05 03:32:11', '2021-11-05 03:32:11'),
(362, 1, 'lYM7XFISxC2XBKfB57liCOcZHyh1am1v', '2021-11-05 03:49:10', '2021-11-05 03:49:10'),
(363, 1, 'fvm3NqywYQESA2GwASHehxbCXuhqad0C', '2021-11-05 05:22:41', '2021-11-05 05:22:41'),
(364, 1, 'B81RkgNbRnoVDHKJgdS3oGh7TITPmLFI', '2021-11-05 05:59:25', '2021-11-05 05:59:25'),
(365, 1, 'bpKB8LdJwY3uv87V5vs3XlCZLST0an5r', '2021-11-05 08:33:26', '2021-11-05 08:33:26'),
(366, 1, 'KyOQR2ZREFVAVNdlRUDGDq8DgpgL3Kmq', '2021-11-05 23:40:43', '2021-11-05 23:40:43'),
(367, 1, 'Nwh2Rom8gutJPaMVjhXlZ9FhTR5Hw4dQ', '2021-11-06 00:30:01', '2021-11-06 00:30:01'),
(368, 1, '0BsPzxk5c8iBKkoaH8wcPATFFGVBn7D6', '2021-11-06 01:23:30', '2021-11-06 01:23:30'),
(370, 1, 'HOAnjvlW5FBiJO2UPwlp58kT8X6Mtjw5', '2021-11-06 12:55:37', '2021-11-06 12:55:37'),
(371, 1, '3KB1rHN0IajenL6ARCIk6cUSjMDUhSj5', '2021-11-06 15:58:21', '2021-11-06 15:58:21'),
(372, 1, 'T0xstcx8ZkjiiGspChTrD1Zy4WOhQ7i1', '2021-11-06 16:29:52', '2021-11-06 16:29:52'),
(373, 17, 'AAQafVWJ0YxB0QCEqeqzFip1CN2WJmAP', '2021-11-06 17:28:40', '2021-11-06 17:28:40'),
(374, 1, 'rqGDMPfASaSTpKLKPZ78dx8BxsqnwZJB', '2021-11-06 19:06:19', '2021-11-06 19:06:19'),
(375, 1, 'yz0O1ohOkhh83oZHHymKki4xwjNGpoWH', '2021-11-06 21:14:30', '2021-11-06 21:14:30'),
(376, 1, 'OUGTe2RxPBLRKmBsJc2SXubQyWgDeRyL', '2021-11-06 22:10:44', '2021-11-06 22:10:44'),
(377, 1, 'L5jYV9FwwQFxCo86wQi6M0C92SMIwCUP', '2021-11-06 22:24:17', '2021-11-06 22:24:17'),
(378, 1, 'ufRYqa0kxmGhcr4msOLEu6Kk6sypUXD1', '2021-11-07 01:28:17', '2021-11-07 01:28:17'),
(379, 1, 'RZw8ukVPbBzVLgJLi2yrwzw4HW2iEiJC', '2021-11-07 11:09:42', '2021-11-07 11:09:42'),
(380, 1, 'BocfKcXjHRDSvS6vz0nSiM5ugjPGFQsK', '2021-11-07 12:24:15', '2021-11-07 12:24:15'),
(381, 1, 'yELTvEBKvjdRAq5MncwaEcXRO6PMFolk', '2021-11-07 12:44:15', '2021-11-07 12:44:15'),
(382, 1, 'mdtbHfW1hIMOvErkodQ2I18CvLqt7eWL', '2021-11-07 13:58:23', '2021-11-07 13:58:23'),
(383, 1, '85LuJUsTJU9F5Fx3cFZUGDrK2WrwxUzl', '2021-11-07 15:42:47', '2021-11-07 15:42:47'),
(384, 1, 'pSbhMP65npv44NXtdSs69wecy6ZfEU0m', '2021-11-07 15:50:48', '2021-11-07 15:50:48'),
(385, 1, 'HcteNgog3FszdKQtII37Q2jxhatY4uKp', '2021-11-07 16:34:52', '2021-11-07 16:34:52'),
(386, 1, 'Z5JRlGcbmJk8nIByVH6FbrxHP408uxqO', '2021-11-07 17:08:43', '2021-11-07 17:08:43'),
(387, 1, 'wQMgruGqSEeYPfBt0Q85DqlQn0GYo5fO', '2021-11-07 21:33:23', '2021-11-07 21:33:23'),
(388, 1, '1LJVvviLGwLB8QvOMv1rLWXWrqAtTMDf', '2021-11-07 21:50:00', '2021-11-07 21:50:00'),
(390, 1, 'tV4DnIQOQxUBC30uZcYOQgz5nOAJPKk4', '2021-11-07 22:51:57', '2021-11-07 22:51:57'),
(391, 1, 'aWe7UxU8McK9qzfnaGknrRlQ3xm7zRgY', '2021-11-07 23:27:35', '2021-11-07 23:27:35'),
(392, 1, 'zNuHkLkyeoX8oX7veTdwk1u2aozhvoaj', '2021-11-07 23:32:39', '2021-11-07 23:32:39'),
(393, 1, 'LWkYyRB8LdtUkJDVZ5dIsap4HjGEuoV2', '2021-11-08 05:27:53', '2021-11-08 05:27:53'),
(394, 1, 'Pv7InckbavsiSXlqaaXx7rpiJoQfbdcx', '2021-11-08 10:17:15', '2021-11-08 10:17:15'),
(396, 1, 'RfVsDziqgwbKMqx8KWCbvpP5qRs1IHBM', '2021-11-08 14:30:14', '2021-11-08 14:30:14'),
(397, 1, 'a64Rsl3563lFEwv1FDjbmOswryqSHM5R', '2021-11-08 16:29:42', '2021-11-08 16:29:42'),
(398, 1, 'Vb9WlCuhoIWsw6Pgfzyt1XObls8iScpn', '2021-11-08 16:51:20', '2021-11-08 16:51:20'),
(399, 1, '5d2L9ibOEz6jsnAOZwAAI32mpz1t9rNj', '2021-11-08 17:06:27', '2021-11-08 17:06:27'),
(400, 1, 'aNJzOjxsy8TKAqBwC3fikddBDDl5pRnh', '2021-11-08 17:50:39', '2021-11-08 17:50:39'),
(402, 1, '2RY3zHm4BKzclEUSpkvpAgEAaF9FWBrK', '2021-11-08 19:21:22', '2021-11-08 19:21:22'),
(403, 1, 'Ao5aK2eRVoxPda0VxednvGUPdJvoybfM', '2021-11-08 19:30:34', '2021-11-08 19:30:34'),
(404, 1, 'dH7DAx9WfSQahUcypFMEKrs3WzSwVTVw', '2021-11-08 19:58:45', '2021-11-08 19:58:45'),
(405, 1, 'ufYUDNMYd4AOI7JRtbX4UuIe10daEed4', '2021-11-08 20:06:12', '2021-11-08 20:06:12'),
(406, 1, 'RB9Fq6XeSG9kI8OSzLl6uxXAow8ROocL', '2021-11-08 23:53:42', '2021-11-08 23:53:42'),
(407, 1, 'QieAnvMAzl6INqlZHvxx1PR7ghy5lXQu', '2021-11-09 00:30:02', '2021-11-09 00:30:02'),
(408, 1, 'dGXiwqxftcDY1I0LiWZatiYNuY1m2UkE', '2021-11-09 01:33:49', '2021-11-09 01:33:49'),
(409, 1, '10wGuYypcOKZ12A1qd0Nt3Fz9CS2zUZJ', '2021-11-09 04:06:49', '2021-11-09 04:06:49'),
(411, 1, 'A2qyno88G78RI92jTUQcdEeCmB1ytkT3', '2021-11-09 04:45:45', '2021-11-09 04:45:45'),
(412, 1, 'X7B95Ev0Tl85xr9QZ3UTdkJFWJJFEHJ1', '2021-11-09 07:16:49', '2021-11-09 07:16:49'),
(413, 1, 'LaTwrfgQo7ldJ9nEzKMncLb5pDQ4n0jr', '2021-11-09 11:24:56', '2021-11-09 11:24:56'),
(414, 1, 'TET2UknVhlfnN5wvNlmlb6pdtgpV8sLm', '2021-11-09 11:48:09', '2021-11-09 11:48:09'),
(415, 21, 'U0MiQ87tORWda3QdPFttE7Zbwn3V9jaH', '2021-11-09 11:50:57', '2021-11-09 11:50:57'),
(416, 1, 'QM60EL4T8CIUjoD9bJ6HRrUYuqTSIjZa', '2021-11-09 11:57:00', '2021-11-09 11:57:00'),
(417, 1, 'WEXKE5M7blpm0SDIF6lWHatcqh3rA1W4', '2021-11-09 13:14:23', '2021-11-09 13:14:23'),
(418, 1, 'iGphLF0O9RObcBjcHwjlxhsnNpLBfbbI', '2021-11-09 14:54:56', '2021-11-09 14:54:56'),
(419, 1, 'Jm9GRuIpDwSEtDo0RDgoVXVsObGiyxg4', '2021-11-09 16:05:21', '2021-11-09 16:05:21'),
(420, 1, '2YA4ua5obduH93L3TlDwRi5htVd9qd1z', '2021-11-09 18:25:37', '2021-11-09 18:25:37'),
(421, 1, 'DK5VbOgDTbbQhkAIsZGfzwzMbUQ1Qsdt', '2021-11-09 20:59:22', '2021-11-09 20:59:22'),
(424, 1, 'VbVayrn7DIYYCAljHmxmfoOlnWZj0sNp', '2021-11-10 00:20:28', '2021-11-10 00:20:28'),
(425, 1, 'UikxTULuFusMxyKAGkYEaSIrzjrnpvDa', '2021-11-10 09:45:19', '2021-11-10 09:45:19'),
(426, 1, 'Xv3geoamI3em3J0NGAV4Xz2fQJGq7wd2', '2021-11-10 13:26:05', '2021-11-10 13:26:05'),
(427, 1, 'AqPuLIEpHGK5oBJddsOYeq3zUloUSpXf', '2021-11-10 15:45:11', '2021-11-10 15:45:11'),
(428, 1, 'MX3JmFpcaSKYBvidnCG7r24ocZTxMeEa', '2021-11-10 16:15:20', '2021-11-10 16:15:20'),
(429, 1, 'wLpUkfsmLWjYuvEzTSr5dYsml01x46Fr', '2021-11-10 16:50:14', '2021-11-10 16:50:14'),
(430, 1, 'GnNstEQqbreeqDbZYm6BJ11UWfqc6qMA', '2021-11-10 17:14:36', '2021-11-10 17:14:36'),
(431, 1, 'DbcCYI7jiEBpZsnm92AgnYzGIsJAHdec', '2021-11-10 17:17:46', '2021-11-10 17:17:46'),
(432, 1, 'AMajCbImwVraneIsU1LaJeIxgm8Oi8Cw', '2021-11-10 17:20:27', '2021-11-10 17:20:27'),
(433, 1, 'q57mjRfLzRvUofvExQsStExGSAIfrGSB', '2021-11-10 18:12:43', '2021-11-10 18:12:43'),
(434, 1, '95sMq5IeYsjrMBVty1t3sM4rN5gBLZ1U', '2021-11-10 20:57:48', '2021-11-10 20:57:48'),
(435, 1, 'tCHcbWfV31c476y6OeMkkuf5GU02u1S3', '2021-11-10 21:53:53', '2021-11-10 21:53:53'),
(436, 1, 'dZjm0Sb0NJLiWSvTup9Kb7uLGZj6yC4Y', '2021-11-10 23:33:04', '2021-11-10 23:33:04'),
(437, 1, 'IkSvNPlO3bMUg8CMRNnH7Q8HV54TXrih', '2021-11-11 01:54:09', '2021-11-11 01:54:09'),
(438, 1, 'gcOpIZlwyrYzbotDG0IvTTSv924V4ifJ', '2021-11-11 02:18:47', '2021-11-11 02:18:47'),
(440, 1, 'JDPdFyKo4ScXLBfN6u8uEpFahHTEBdL5', '2021-11-11 10:44:09', '2021-11-11 10:44:09'),
(441, 1, '177aIy1vFVCZoDYi6W4ednHKw1y3B0SO', '2021-11-11 11:04:24', '2021-11-11 11:04:24'),
(442, 1, 'caqM46j5qxlvvURg3PE8JcQR0EyniomK', '2021-11-11 11:40:41', '2021-11-11 11:40:41'),
(443, 1, 'zaAwPPZxhR02mwvzIVsvK15BBu3d7vpt', '2021-11-11 13:42:17', '2021-11-11 13:42:17'),
(444, 1, 'nLX0CorRdGaRC0FmB8RiNo7BgC1aqox0', '2021-11-11 15:49:50', '2021-11-11 15:49:50'),
(445, 1, 'is3YhMhj37xSRYLd3SD7jUYBxoTzSsDv', '2021-11-11 16:12:34', '2021-11-11 16:12:34'),
(446, 1, 'g8MVqqKiMJVisZyffaaPofeSRWZZ9Y4J', '2021-11-11 17:42:19', '2021-11-11 17:42:19'),
(447, 1, 'uFtB3m8TkkBSUAGvwjlsamVesIGCZE1w', '2021-11-11 21:21:10', '2021-11-11 21:21:10'),
(448, 1, 'zH3gRM9ScaiUZM0LbBzZdYsKA0jBestf', '2021-11-11 23:26:05', '2021-11-11 23:26:05'),
(449, 1, 'Lpt4fBa2iM8lGM8uKhtqulQvtw5Oh671', '2021-11-12 01:00:12', '2021-11-12 01:00:12'),
(450, 1, 'X2BKuJond9DyzXXD9MBfpeRO6DfRH4Xs', '2021-11-12 02:03:33', '2021-11-12 02:03:33'),
(451, 1, 'Ib7hlG9h17KTowsouPCRbuB3eU0MH9i2', '2021-11-12 16:00:01', '2021-11-12 16:00:01'),
(452, 1, 'M3igH5RLBEAt13H1XqDeGpVhOjIQIE7C', '2021-11-12 18:08:31', '2021-11-12 18:08:31'),
(453, 1, 'ZOd9XnhJfpvxDpljAuVHthhSAjmiskww', '2021-11-12 18:26:11', '2021-11-12 18:26:11'),
(454, 1, 'ugu9odRPUxo0Pw0dM6AiTPv2rteQkbeJ', '2021-11-12 22:20:03', '2021-11-12 22:20:03'),
(455, 1, 'CvyOcyjCgHhsy30EDeCSRlLNjBPvg1OT', '2021-11-13 05:45:13', '2021-11-13 05:45:13'),
(456, 1, 'GVX26vsPZfzg7bRnDQ0ADVJKHwkpxrcJ', '2021-11-13 09:39:42', '2021-11-13 09:39:42'),
(457, 1, 'CayySGxYAHpFBYAFUxiSgHZsPG22NmKZ', '2021-11-13 15:03:26', '2021-11-13 15:03:26'),
(458, 1, 'ADSPuWDiPGvEfWv3OX6umD5o3GEZKb7h', '2021-11-13 16:06:44', '2021-11-13 16:06:44'),
(459, 1, '4Qhx54DmXwHPKJJoW6gBANXAee37rKbG', '2021-11-13 16:49:35', '2021-11-13 16:49:35'),
(460, 1, 'ig6vDEE4MpZBLqlt8AlkIOk6LBzaBGtO', '2021-11-13 18:26:03', '2021-11-13 18:26:03'),
(461, 1, 'OqIBywt5QKCnSpQDyzv6LZfLPaxaaHTS', '2021-11-13 18:54:26', '2021-11-13 18:54:26'),
(462, 1, 'eAoYnn5TbaPkfN3D1oWH5eAWregLcT00', '2021-11-13 20:34:48', '2021-11-13 20:34:48'),
(463, 1, 'ItSPj6rIzupdGL4m77SqLbsFc0X63mhd', '2021-11-13 20:35:43', '2021-11-13 20:35:43'),
(464, 1, 'joRwB20If5OTXcuEhpawibUade9CTFf1', '2021-11-13 20:40:01', '2021-11-13 20:40:01'),
(467, 1, 'GC4RTN2AqeCLq2Hjfc96Lk562GgD7lln', '2021-11-14 10:56:37', '2021-11-14 10:56:37'),
(468, 1, 'GlU50usEnIEpf1PSEQVj8eE8SKZ0kKVa', '2021-11-14 10:57:21', '2021-11-14 10:57:21'),
(469, 1, 'NWwnYY7JMlcqKc9BEE9zzylx2L8XNBhF', '2021-11-14 10:58:50', '2021-11-14 10:58:50'),
(470, 1, 'qCE2lZ4HqUADb80sb2G4y7cwDjSgURJG', '2021-11-14 11:06:37', '2021-11-14 11:06:37'),
(471, 1, 'DzXIdatP4bRvaaPQDV9xWHMqW72ipO2p', '2021-11-14 11:13:29', '2021-11-14 11:13:29'),
(472, 1, 'Qi4zcJper7q04mxNc8sS9s4rV9lWj6Pq', '2021-11-14 12:29:43', '2021-11-14 12:29:43'),
(473, 1, 'VaSw1Q7SbVlNX7EH4SXV2IBM2MXKrrlU', '2021-11-14 13:33:22', '2021-11-14 13:33:22'),
(474, 1, 'hJj5oUj748TylcfnYwOhNWdZCQkwj4zS', '2021-11-14 16:45:55', '2021-11-14 16:45:55'),
(475, 1, 'h3auK1isjGKwiOnLTTvJth17sKuF5FZL', '2021-11-14 20:30:52', '2021-11-14 20:30:52'),
(476, 1, '7xaYzkx85995fFT62pylr3JK8F8jmIvR', '2021-11-15 13:05:01', '2021-11-15 13:05:01'),
(477, 1, 'SSA592jAaPMUzxumkMpJO6JZPOjnSczj', '2021-11-15 14:49:56', '2021-11-15 14:49:56'),
(478, 1, 'hefNWBPGEsGe5ImToymkHMmjAW5LSJNX', '2021-11-15 14:50:07', '2021-11-15 14:50:07'),
(479, 1, 'dw72GEYidZAF2G2W7x4MjywvyrLibQkV', '2021-11-15 14:50:08', '2021-11-15 14:50:08'),
(480, 1, 'FrqdT0XAiUiLBmp3R7ljwPOBrNyYgUaN', '2021-11-15 15:27:33', '2021-11-15 15:27:33'),
(481, 1, 'XfQnDP250A3QAEkIWiyliXru4Nocr2pA', '2021-11-15 19:09:53', '2021-11-15 19:09:53'),
(482, 1, '3hRYuoso2rna7ws3cK4Zqj5Xi589MGLU', '2021-11-15 21:14:45', '2021-11-15 21:14:45'),
(483, 1, 'RGVprhJYITwKKsiqCD0ZcEh2EDKlkxkA', '2021-11-15 23:24:34', '2021-11-15 23:24:34'),
(484, 1, 'zLrsEW1wCu8uAtd5wLxBPsIZWKEDvURJ', '2021-11-16 11:01:09', '2021-11-16 11:01:09'),
(485, 1, 'FFGkJ4te63CrcuEJIFdGCLTu9A3JRjHx', '2021-11-16 11:21:03', '2021-11-16 11:21:03'),
(486, 1, '67T0fzm7H3SEM8dxpz51zO1zj4gGHuuE', '2021-11-16 12:21:27', '2021-11-16 12:21:27'),
(487, 1, 'mj42GicLEMiNZdyAXbYPLBbnK9zTlpPQ', '2021-11-16 14:24:03', '2021-11-16 14:24:03'),
(488, 1, 'dt8kwuuXjwVK45MSqwvBBr8myWUi1qdb', '2021-11-16 14:41:23', '2021-11-16 14:41:23'),
(489, 1, 'FcOCSTcAiYSKaasfpJx3DmpIX0P2B98j', '2021-11-16 18:56:41', '2021-11-16 18:56:41'),
(490, 1, 'pM0UAUey3LcKi9Zj34bdZxdUhtV82Tvv', '2021-11-17 02:19:15', '2021-11-17 02:19:15'),
(491, 1, 'U2smRk5SRDxyD1IeVS6GPe2oJ8zPT2Dt', '2021-11-17 03:54:35', '2021-11-17 03:54:35'),
(492, 1, 'jgrsBbHjk4GBA079i7A2aiiZZQwjSvBi', '2021-11-17 11:30:03', '2021-11-17 11:30:03'),
(493, 1, 'DQaUaDZbc7zi1ZirDN68SDsJmbERjK3t', '2021-11-17 16:18:46', '2021-11-17 16:18:46'),
(494, 1, 'i3AbghZr4jpuaDCLWfWDcieEGJpaaS5d', '2021-11-17 17:00:12', '2021-11-17 17:00:12'),
(495, 1, 'GDM7K2yajppKozCoZiUITTRaGZ8xWzP9', '2021-11-17 17:04:02', '2021-11-17 17:04:02'),
(496, 1, 'prMMbFQ7B9l9PQja6mrdNdPQAr2gjlDt', '2021-11-17 21:55:56', '2021-11-17 21:55:56'),
(497, 1, 'yEC7cyo72zJW3VF7cyppljUjf2c2qpHw', '2021-11-18 00:47:24', '2021-11-18 00:47:24'),
(498, 1, 'kAPCOoP6S0llAeIUjONk1sb0UzxVJ9Kc', '2021-11-18 03:08:47', '2021-11-18 03:08:47'),
(500, 1, '33u2YZGRgvlRjm1VNbQdJGDROcypII5q', '2021-11-18 03:43:24', '2021-11-18 03:43:24'),
(501, 1, '1RMtKJflhuivcPJnFwPcJc897ZptBQC4', '2021-11-18 05:12:31', '2021-11-18 05:12:31'),
(502, 1, 'buGuejjUyhmGJEK3dvoCgEwcjrEsuHaL', '2021-11-18 09:22:33', '2021-11-18 09:22:33'),
(503, 1, 'rmz2c7p3MqoB6eeRhApHGk88YtlVMDCS', '2021-11-18 11:24:54', '2021-11-18 11:24:54'),
(504, 1, '7DlFSBak4TimTeGAb13293qllgQsd33C', '2021-11-18 12:33:24', '2021-11-18 12:33:24'),
(505, 1, 'ZFMR3kNarXEajzzKA3fYzboRnkazhBcX', '2021-11-18 13:10:26', '2021-11-18 13:10:26'),
(506, 1, 't1bXbJnXkXYy1IkDECjCHMVkEh3r0i5s', '2021-11-18 14:21:56', '2021-11-18 14:21:56'),
(507, 1, 'vL6ttGXijQoEvC5joezn1RZNT9TGwucj', '2021-11-18 15:04:11', '2021-11-18 15:04:11'),
(508, 1, 'RFv0C5KaSewjdViFS0utuQLvfgxzoIkQ', '2021-11-18 15:20:33', '2021-11-18 15:20:33'),
(509, 1, 'mWsvKGNRcABg6XCG02gqn3f7B3kSBxQ4', '2021-11-19 17:34:39', '2021-11-19 17:34:39'),
(510, 1, 'SvF4rxVbeNhKDZXpjUrHhNV6U8KQOw03', '2021-11-19 17:37:49', '2021-11-19 17:37:49'),
(511, 1, 'z0bJ04UTRWzPtXW3qCVaJbBhKYFAAFkd', '2021-11-19 23:43:36', '2021-11-19 23:43:36'),
(512, 1, 'EgihR1fYJOOqX4OKXK5G08ui9KVw45ET', '2021-11-20 00:12:21', '2021-11-20 00:12:21'),
(513, 1, 'RjANI74zPfCZOFh1wQdoNeNXumKTB0Mj', '2021-11-20 01:35:41', '2021-11-20 01:35:41'),
(515, 1, 'qRIZFGz8p6SpqFtvUKMIVNbolyluxvhF', '2021-11-20 04:01:42', '2021-11-20 04:01:42'),
(516, 1, 'WB7fzPEf0TBoLb0GdzlzqNq5DHc0uo6B', '2021-11-20 05:00:15', '2021-11-20 05:00:15'),
(518, 1, 'bFhLJLUI6qQSvlk3WpR04aOaiT55J7wi', '2021-11-20 13:48:57', '2021-11-20 13:48:57'),
(519, 1, 'vp3l1YDnsaxHkRaebeR6Ybt0px9LnfKZ', '2021-11-20 14:25:31', '2021-11-20 14:25:31'),
(520, 1, 'WjL7viDAqmXPMbIEfRIV3YkdwHNUhN1g', '2021-11-20 15:04:21', '2021-11-20 15:04:21'),
(521, 1, 'ywMWOkKDf7XOYmtluP58M7L3vw7x3nSQ', '2021-11-20 15:23:20', '2021-11-20 15:23:20'),
(522, 1, 'TJcun1pQWAnjsX3wbTaVrF41L6PehyNG', '2021-11-20 17:07:38', '2021-11-20 17:07:38'),
(523, 1, '5WiMQnXMbPZfrSgYGuBbaMdkdE7ydrHF', '2021-11-20 17:27:44', '2021-11-20 17:27:44'),
(524, 1, 'HUogCvKQAVPQW8wwO6svInjVYOl0lDkg', '2021-11-20 21:02:09', '2021-11-20 21:02:09'),
(525, 1, 'YedLHwPbK3o8vc1PL5S55OvmLRIWDIqx', '2021-11-20 21:20:39', '2021-11-20 21:20:39'),
(526, 1, 'sDPGOhQgXu81i0HBq7ah2I0Uhspw88t0', '2021-11-21 03:14:45', '2021-11-21 03:14:45'),
(527, 1, 'bxVKF2ar24FlU7LEb3aWZ9WM6jEQ6wRc', '2021-11-21 04:54:19', '2021-11-21 04:54:19'),
(528, 1, 'AD2QM1AFw3HyvhmU4Pty28TKkUz1AKo1', '2021-11-21 14:25:36', '2021-11-21 14:25:36'),
(529, 1, 'Ov7vCRMYfOUPDR8TDdmyIRnFjz9xOc1a', '2021-11-21 15:52:55', '2021-11-21 15:52:55'),
(530, 1, 'RKEBFripKOZerJiWeI94MQyiuPzQrtLC', '2021-11-21 19:50:58', '2021-11-21 19:50:58'),
(531, 1, 'IalFgZwxezYlW5hm6rofDiLeAHbHvreX', '2021-11-21 22:43:58', '2021-11-21 22:43:58'),
(532, 1, 'pfe3Nw1NBn9aPTa8thJJvjJF0kmrFM0n', '2021-11-22 01:17:57', '2021-11-22 01:17:57'),
(533, 1, '5Z2ny9pqXpPBQNUklYSW6EhuzYYcined', '2021-11-22 02:59:15', '2021-11-22 02:59:15'),
(534, 1, 'zV9ld28TQRKMKpTgcztdsclCDiA1osv4', '2021-11-22 03:17:15', '2021-11-22 03:17:15'),
(535, 1, 'wxaXRVmlwYS7LmNTvxECWjHAzj2805HT', '2021-11-22 13:46:53', '2021-11-22 13:46:53'),
(536, 1, '6RaggrdEldfKJmputNGg9ux5M9Lu0EGA', '2021-11-22 14:52:51', '2021-11-22 14:52:51'),
(537, 1, 'jb9LFnWsUwFbiIVIq45xWWeM5PZYXt6Q', '2021-11-22 15:31:23', '2021-11-22 15:31:23'),
(538, 1, 'O6nwgS0faNqdbf07osMGHkgHwstQblz3', '2021-11-22 15:33:08', '2021-11-22 15:33:08'),
(539, 1, 'rQXYrAdJRyPC0TgqMk1HiFUOS5Jo3wnJ', '2021-11-22 17:15:00', '2021-11-22 17:15:00'),
(540, 1, 'ONTrZ5eMcwdFAzUrlbNmcnXzv3sOw7rv', '2021-11-22 19:02:29', '2021-11-22 19:02:29'),
(541, 1, 'pCGMxD28wiJke5x5iHxSmxPCP9WwNlGC', '2021-11-23 00:13:42', '2021-11-23 00:13:42'),
(542, 1, 'd96PV6TqIqvaZGLKetvJ3YFnbYMSIvXe', '2021-11-23 04:18:25', '2021-11-23 04:18:25'),
(543, 1, 'HIuYT7cGTY4jHD9YmGqBnRL21BDoCQgD', '2021-11-23 11:05:03', '2021-11-23 11:05:03'),
(544, 1, 'fXAC2BZkiFUM95QERRGFYYUYW3jqjZQ5', '2021-11-23 11:43:13', '2021-11-23 11:43:13'),
(545, 1, '6BXTxlV9oHKHvJ6dBEuaki8orLpg0lic', '2021-11-23 14:43:06', '2021-11-23 14:43:06'),
(546, 1, 'Litzl8DcCD8kkAm8ABGYeG6H0AhsaCFf', '2021-11-23 15:11:07', '2021-11-23 15:11:07'),
(547, 1, 'QJdsKV43cjeo7WpdlhCjernoM7mwScW3', '2021-11-23 16:29:29', '2021-11-23 16:29:29'),
(548, 1, 'Xu07mZ7PxHAfuCrqlme6sGFUrjjMGLWy', '2021-11-23 18:44:43', '2021-11-23 18:44:43'),
(549, 1, '3PIdLpZsGVzw0GYv2cjPAnoxiW49Lk6E', '2021-11-23 19:49:12', '2021-11-23 19:49:12'),
(550, 1, 'YuYFEMapywMIfbDLN2jkSp3LVMXlzLXZ', '2021-11-23 23:35:53', '2021-11-23 23:35:53'),
(551, 1, 'h3dbR0BUvbRBsaD1eggcxrI7RAsnfWav', '2021-11-24 03:16:55', '2021-11-24 03:16:55'),
(552, 1, 'YIHdEQlPWxw5BbhcBL5bb5DxWXgHkVH2', '2021-11-24 10:16:02', '2021-11-24 10:16:02'),
(553, 1, '6uXDCVr2kVKmu3ax4Wn9uLDBandg5IEZ', '2021-11-24 16:20:03', '2021-11-24 16:20:03'),
(554, 1, 'PXqH55WjJzniE5mlR3KhMP8SP8lbT2zj', '2021-11-24 16:50:47', '2021-11-24 16:50:47'),
(555, 1, 'Q3Q25z2mHeNFwuzPxJ2vuXUtPdxSQ1Nl', '2021-11-24 16:58:16', '2021-11-24 16:58:16'),
(556, 1, 'g56uAa5H6nq9zkNBzlRIUuzmAPP67GRo', '2021-11-24 17:51:00', '2021-11-24 17:51:00'),
(557, 1, 'YRI4qPOzr9iRsSwA0b96pNeCQIERXby6', '2021-11-24 17:51:00', '2021-11-24 17:51:00'),
(558, 1, '0Y7zJ95DUx2JKXS5vAPBqT8Rx5QhLvt1', '2021-11-24 18:15:19', '2021-11-24 18:15:19'),
(559, 1, 'T5vkfRBI4PJkhupy5VKXuNje4ti24s7Y', '2021-11-24 21:05:41', '2021-11-24 21:05:41'),
(560, 1, 'LCwTivTsQ4ez01igI8Yo71YoqudeG0Vf', '2021-11-24 23:38:47', '2021-11-24 23:38:47'),
(561, 1, 'usOvrH1cc4PXG28g22ek3oJwoA9JqHU9', '2021-11-25 00:03:27', '2021-11-25 00:03:27'),
(562, 1, 'U4Kis6xQfkXOQ3lDr3JfKqOPS8tlJXR2', '2021-11-25 00:47:26', '2021-11-25 00:47:26'),
(563, 1, '8Aao2I0eNmLz4D2JpuE3yi490wnfnhSe', '2021-11-25 01:26:43', '2021-11-25 01:26:43'),
(564, 1, 'MgymrEVD45jeHNGCfmpmgwJ9Yn09kwb4', '2021-11-25 01:27:41', '2021-11-25 01:27:41'),
(565, 1, 'rBv3dwXdlwPIl6DFYMeTrMfU1UYhAW7e', '2021-11-25 03:59:16', '2021-11-25 03:59:16'),
(566, 1, 'VWGR5J1EhX3GnnsQxomX7tpbzHHWgTcC', '2021-11-25 09:46:00', '2021-11-25 09:46:00'),
(567, 1, 'pshvRYFRWTHy9vL8pZqwYKsBsEETIBEo', '2021-11-25 10:06:35', '2021-11-25 10:06:35'),
(568, 1, 'IzvCSLP4dT2BFyhdyyTHEl6pEP0HmM0S', '2021-11-25 12:20:14', '2021-11-25 12:20:14'),
(569, 1, 'BUBl3FUeaKmnPbFvKQtU3GTsY3z2SRuj', '2021-11-25 13:07:33', '2021-11-25 13:07:33'),
(570, 1, '7z2lEWzZU2WgEAjXam3N7QwoPgCYzJWT', '2021-11-25 16:01:24', '2021-11-25 16:01:24'),
(572, 1, 'bwz7DiWmYAt5BfJr9T1C2sL1QrUNba2z', '2021-11-25 16:56:39', '2021-11-25 16:56:39'),
(573, 1, 'wmznynr30FIe1vZG32kN87GLxJXWFpbO', '2021-11-25 17:13:30', '2021-11-25 17:13:30'),
(574, 1, 'pO01wsOxynvfrOgP1dyAixkoWOccHrvu', '2021-11-25 20:12:50', '2021-11-25 20:12:50'),
(575, 1, 'yTLLFfzhV0ruuagPkcGnlNOPto6Kld72', '2021-11-25 20:21:29', '2021-11-25 20:21:29'),
(576, 1, 'nIRmDLTI86zSP0QhN38OkneGIY9zACg6', '2021-11-25 21:03:00', '2021-11-25 21:03:00'),
(577, 1, 'MJNLbN29JgzrMbXaJnxmvyZ4lXk60gD2', '2021-11-25 21:46:16', '2021-11-25 21:46:16'),
(578, 1, 'ubMykUsuvxDtb5uxfi7leJb1JM6b3nTa', '2021-11-25 22:14:54', '2021-11-25 22:14:54'),
(579, 1, 'v7rNycrLwgDIeQalwF3oJryLSHvyLwEN', '2021-11-25 22:53:11', '2021-11-25 22:53:11'),
(580, 1, 'z9F8p4nv4xjM31xCFzKzbZnfgK3q00yv', '2021-11-25 23:27:56', '2021-11-25 23:27:56'),
(581, 1, 'eUlb5knVTwlnqLxMPF7dXo5V5GeDEszf', '2021-11-26 02:31:21', '2021-11-26 02:31:21'),
(583, 1, 'k4EL9WVGeEJBGVyIjQSoSxunpQwEnoYm', '2021-11-26 16:26:48', '2021-11-26 16:26:48'),
(584, 1, 'fRFonqAwucfUIJ0ynxj6JAVeD4I5m9MS', '2021-11-26 17:09:27', '2021-11-26 17:09:27'),
(586, 1, 'dzWPdewLJ3Pzsyld80heA152SwRs2a02', '2021-11-26 18:58:49', '2021-11-26 18:58:49'),
(587, 1, 'aMxmpIupYBS8NHYZCVY0gsJgTUfJUV0Z', '2021-11-26 19:14:25', '2021-11-26 19:14:25'),
(588, 1, 'hK04HKsBS8elJVHn1qONYzxiniOUPJCi', '2021-11-26 19:19:20', '2021-11-26 19:19:20'),
(589, 1, 'R1Y54YdblX1tYkjjRlubwIptAH8S2miO', '2021-11-26 21:36:22', '2021-11-26 21:36:22'),
(590, 1, '5J0rv3UABYHZQG6Ft2WRW07Jc3WxM8zO', '2021-11-27 01:04:07', '2021-11-27 01:04:07'),
(591, 1, 'Rr9j5MWkPGuNWyOyIqZb52lSUygWTt1t', '2021-11-27 09:39:49', '2021-11-27 09:39:49'),
(592, 31, 'xBzAxHkiR58g5rZmoeD9AnKicuaSisde', '2021-11-27 14:52:31', '2021-11-27 14:52:31');
INSERT INTO `persistences` (`id`, `user_id`, `code`, `created_at`, `updated_at`) VALUES
(593, 1, 'V3WzDfmdXkjYDNLz6UjTCh4H3DaAq9CN', '2021-11-27 15:18:34', '2021-11-27 15:18:34'),
(594, 1, 'CAp13kQrhYlAjIK384o2bV4Lvioa0GFw', '2021-11-27 19:38:19', '2021-11-27 19:38:19'),
(595, 1, 'JPkj4KvMXb5lLvp99jObA26aekrRNgRG', '2021-11-27 20:01:11', '2021-11-27 20:01:11'),
(596, 1, 'OeSOahZfIQnGj5D56o3jrZ7KkqiWpR0R', '2021-11-27 21:14:27', '2021-11-27 21:14:27'),
(597, 1, 'KOM6T1lJtheTubfP8xGBsBw0Zs8R1xJ3', '2021-11-27 22:27:58', '2021-11-27 22:27:58'),
(598, 1, 'EvDphUxJScuuIKixkHWzrpEEOw63SzlW', '2021-11-28 00:35:09', '2021-11-28 00:35:09'),
(599, 1, 'JaD8lskkOZqEDPszc3J8mZlZxZCOxzNV', '2021-11-28 00:44:20', '2021-11-28 00:44:20'),
(600, 1, '40bMFTZnCqh0DNRytAi5yVYXoTEoCNCf', '2021-11-28 01:52:46', '2021-11-28 01:52:46'),
(601, 1, 'jtargYwTvvfvbMYCgEAlsQVCU4olgIzn', '2021-12-06 17:20:13', '2021-12-06 17:20:13'),
(603, 1, 'D6H8KzJSYCKa6O2kuoYkrpyscKGIJUK8', '2021-12-06 20:28:56', '2021-12-06 20:28:56'),
(604, 1, 'fi1QGAZrkvEWhYRCAMkRYF7WtPOrm8Y4', '2021-12-06 22:24:55', '2021-12-06 22:24:55'),
(606, 1, 'lFzBxZ9IC1Tufw6hWIJlDR9eSbiNk1Dh', '2021-12-07 09:17:17', '2021-12-07 09:17:17'),
(607, 1, 'BLMYcev01Nml5VLsHAhOtS6cLFiuaiaW', '2021-12-07 12:29:56', '2021-12-07 12:29:56'),
(608, 1, 'NjB9G98faBB6a8yWTTq4Z0W5LQvwXcL0', '2021-12-07 13:55:25', '2021-12-07 13:55:25'),
(609, 1, 'lW2LpJ4tj7W7RelVh0YFOvGy5K5qLwQ3', '2021-12-07 14:39:25', '2021-12-07 14:39:25'),
(610, 1, 'vJydIgO9iEAqxLAfADg72FLIgvXtYavd', '2021-12-07 14:41:44', '2021-12-07 14:41:44'),
(611, 1, 'QD6Oyodu3AnKV9UZhGnyjPxpFzXaq7CG', '2021-12-07 15:40:30', '2021-12-07 15:40:30'),
(612, 1, 'KYkeyYZOOHGP5ZF97AjPKHkAvrXMctUs', '2021-12-07 18:30:03', '2021-12-07 18:30:03'),
(613, 1, '2tvHKZN63gCxfvcKbX1ZeWh0vx7oURST', '2021-12-07 20:17:34', '2021-12-07 20:17:34'),
(614, 1, 'YQenGPZHYqNRXJVAY4ZkkjrWIsNph8cq', '2021-12-07 21:59:52', '2021-12-07 21:59:52'),
(615, 1, 'KmHfhXRFGS4Ba0iTwyZlfCMczXVT0olW', '2021-12-08 00:09:01', '2021-12-08 00:09:01'),
(616, 1, 'vDHZfknLqBFzRDq8KUDIPCPgrpwbPW9f', '2021-12-08 01:11:48', '2021-12-08 01:11:48'),
(617, 1, 'Jp92CgqgtJ0uFvbjMLPVOPuG5HDi8dL5', '2021-12-08 04:34:29', '2021-12-08 04:34:29'),
(618, 1, 'Fe31Ku4kjAFT6bE6EJ2PyjhoyCZFoxDH', '2021-12-08 08:48:34', '2021-12-08 08:48:34'),
(619, 1, 'w5QHZhduTh0qF5Wz2PylSymmS0Ch34Ar', '2021-12-08 12:30:02', '2021-12-08 12:30:02'),
(620, 34, 'S7etOJRA5wAatBDBRsDrInO9BtqPIgsI', '2021-12-08 12:48:10', '2021-12-08 12:48:10'),
(621, 1, 'gRDySkaUTLECYS9svC1Y4OR95Goeag6R', '2021-12-08 13:21:55', '2021-12-08 13:21:55'),
(622, 1, 'KnrHl8HFsJQexPRINJDMyK80vYUIC7Nf', '2021-12-08 14:30:01', '2021-12-08 14:30:01'),
(623, 1, 'Is4bFZYMFi2MwUQQxWeQmgNuPfe9VlNg', '2021-12-08 15:40:31', '2021-12-08 15:40:31'),
(624, 1, 'UZUWwD0EpqMRwGOi7hg7hZyzEkL3llKx', '2021-12-08 16:09:49', '2021-12-08 16:09:49'),
(625, 1, 'QkOYabAzFZdSlRmkeqWWo0FpUuu3FX4X', '2021-12-08 17:24:54', '2021-12-08 17:24:54'),
(626, 1, 'n4XRGCiodKAWnaordJFQiIvPZKgkNsln', '2021-12-08 17:47:46', '2021-12-08 17:47:46'),
(627, 1, 'tmYFnpWOninjuXyHFeuJDL0oHSDMTIDu', '2021-12-08 18:51:16', '2021-12-08 18:51:16'),
(629, 1, '9EWK8OW0eWNuGNwv5KT1OqoAE3nPaaq2', '2021-12-08 20:55:00', '2021-12-08 20:55:00'),
(631, 1, 'hukzBtuxHEhi3kA8ghpGmtqtQhsRkzI4', '2021-12-08 22:20:54', '2021-12-08 22:20:54'),
(633, 1, 'UejFn1CX0WXKdHXSDg4I3SHlGcLzUjHP', '2021-12-08 23:19:01', '2021-12-08 23:19:01'),
(634, 1, 'iJC9bsfXIYcVLF22cSOtebkH8SL9EYP7', '2021-12-08 23:31:09', '2021-12-08 23:31:09'),
(635, 1, 'klSNcN903cRRW1VyLCQaPHPccrOgNTen', '2021-12-09 02:18:06', '2021-12-09 02:18:06'),
(636, 2, 'gP1pNMEKVEXfA4YD6tW7OoXz7bF9gluh', '2021-12-09 03:04:56', '2021-12-09 03:04:56'),
(637, 1, 'W92lBvGDjLplDuCD9ibdWjqU1sHNwkRl', '2021-12-09 04:14:40', '2021-12-09 04:14:40'),
(638, 1, 'hzkzU8Wps1fMEZVrvCCT04h4v2eY0YPr', '2021-12-09 11:22:22', '2021-12-09 11:22:22'),
(639, 2, 'EchSRVmrijXoaHV9ScjDezLwGXi8zY6v', '2021-12-09 14:20:27', '2021-12-09 14:20:27'),
(641, 1, 'HJpHg3ulX7bhUFsVJFPctlUV0NbhHXnD', '2021-12-09 14:44:14', '2021-12-09 14:44:14'),
(642, 1, 'W40XRugi34aUeAK5JrzPILI8RaBMAUtq', '2021-12-09 18:01:48', '2021-12-09 18:01:48'),
(643, 1, 'QrlvJ9rw5lC3X3mm0jisUZ95FMSRVxDS', '2021-12-09 19:23:38', '2021-12-09 19:23:38'),
(644, 1, 'lrU03KVcACbmu2U5BHGczBwgVdxYWEhN', '2021-12-09 20:36:49', '2021-12-09 20:36:49'),
(645, 1, '6wB4nCZzl6FGLnt7K7hIs0OyN7xFzwIW', '2021-12-09 22:20:23', '2021-12-09 22:20:23'),
(646, 1, 'kLkivDSlVcTs4yUW9NPIsv2oLwMO8d2U', '2021-12-09 23:14:25', '2021-12-09 23:14:25'),
(647, 1, 'qVK7ubrBYfDKdUNsS6DjKm9MzdmqtOjD', '2021-12-10 03:03:39', '2021-12-10 03:03:39'),
(648, 1, '7NA5CNgokvrRgOontu4GgcsY22aapaHT', '2021-12-10 06:00:17', '2021-12-10 06:00:17'),
(649, 1, 'gIiQDoN8qAGLM9eVKIVy2IH1dILTHs2W', '2021-12-10 07:25:58', '2021-12-10 07:25:58'),
(650, 1, 'a32LmjO0duFx5Dbm0B9LozvM9qMjfkhn', '2021-12-10 11:34:45', '2021-12-10 11:34:45'),
(651, 1, 'jbMxJ9bEdyvulLFIPv7dBSWFIZmQRnCq', '2021-12-10 12:54:56', '2021-12-10 12:54:56'),
(652, 1, 'uLqmWOpBvV4KuNfhcN0PgtiWeKqRv12b', '2021-12-10 13:02:51', '2021-12-10 13:02:51'),
(653, 1, 'TAa546ycYRyfcb069RIS9BxzM254vhxR', '2021-12-10 15:53:01', '2021-12-10 15:53:01'),
(654, 1, 'Lz434xKzabeml1Yv6rrRvft69quacZKA', '2021-12-10 16:49:46', '2021-12-10 16:49:46'),
(656, 1, 'aAVThNUAeZrmN3200CDfrKUrT53txp2U', '2021-12-10 20:39:51', '2021-12-10 20:39:51'),
(657, 1, '6wIEJFMfQWGABiSo3APvI3laL09zqF9D', '2021-12-10 22:21:53', '2021-12-10 22:21:53'),
(659, 1, 'Zyij1U5aEgk9iuWwytCs2djqNVkX4XqN', '2021-12-10 23:49:19', '2021-12-10 23:49:19'),
(660, 1, 'PIFeZm2iIgXYvYXjxSSGhMcotKAAZBWc', '2021-12-11 01:04:59', '2021-12-11 01:04:59'),
(661, 1, 'AsgGMRDwkyEdsseC3Rv0rHnnVOaP2jDt', '2021-12-11 04:03:53', '2021-12-11 04:03:53'),
(662, 1, 'TZdecZUs6LorUJGoUaI5t02nlAQhrKjZ', '2021-12-11 05:10:17', '2021-12-11 05:10:17'),
(663, 1, 'x174ODnce3PTSNq4cnAgw9UK4VwpY2zE', '2021-12-11 11:39:56', '2021-12-11 11:39:56'),
(664, 1, '0LdVkGg6XmKJ8OcIbghI8FAxCu54oFAk', '2021-12-11 16:20:17', '2021-12-11 16:20:17'),
(665, 1, 'ETHmrTVu9zI0mT3PfzrgLR46VSKoPqLX', '2021-12-11 17:53:29', '2021-12-11 17:53:29'),
(666, 1, 'zbWwZyMkOP6arAw6Dyum4I4NK85s7KC0', '2021-12-11 18:06:07', '2021-12-11 18:06:07'),
(667, 1, 'BrSqREIDI4H5YJ6yzJ9FT3fFIEQekjX2', '2021-12-11 19:46:56', '2021-12-11 19:46:56'),
(668, 1, 'KYWPcGsocEvr9nWUvPCXQ3Y8O4rCUYLi', '2021-12-12 00:26:35', '2021-12-12 00:26:35'),
(669, 1, 'rfGCemS7soloEzDM2ywUOyXt3Apu3RKd', '2021-12-12 01:50:57', '2021-12-12 01:50:57'),
(670, 1, 'rHU4eedM0i7nPaATKkq6A9mAnDbFDVsv', '2021-12-12 01:53:56', '2021-12-12 01:53:56'),
(671, 1, 'H7LPpEJ75Fq6Yow9ViLdh4LSmvmiAHjI', '2021-12-12 02:44:31', '2021-12-12 02:44:31'),
(672, 1, 'EZCsnC533jpQbUw6MEbYukf4qkfqjvBu', '2021-12-12 09:08:46', '2021-12-12 09:08:46'),
(673, 1, 'qnFkmGh3xAAfZCVahiMqDu2Xfz0oOWzt', '2021-12-12 09:19:41', '2021-12-12 09:19:41'),
(674, 1, 'QN49x29DCNQH8MaWZJJVpW7vvVn1t0Ks', '2021-12-12 17:56:49', '2021-12-12 17:56:49'),
(675, 1, 'cjJ1OU0VGPDD0c6pmI9mhKLd3LLUGn6X', '2021-12-13 05:50:55', '2021-12-13 05:50:55'),
(676, 1, 'kIR8J4yIEw4ddnAi6OXtxqalywFbUtlF', '2021-12-13 14:47:47', '2021-12-13 14:47:47'),
(677, 1, 'OP0TvjPw5QE40Vg3rtJhD3JWTuH6TSYC', '2021-12-13 17:19:30', '2021-12-13 17:19:30'),
(678, 1, '8OU2xmjBBOyKRGmjMMpYdcD2q2U5jxAu', '2021-12-13 22:41:10', '2021-12-13 22:41:10'),
(679, 1, 'l953cXYQoKqYm236MZLHoWqofSFYA4P6', '2021-12-14 11:46:10', '2021-12-14 11:46:10'),
(680, 1, 'BZAH4ayNpZGP20JEE68LxruTvgJVI7a2', '2021-12-14 12:00:44', '2021-12-14 12:00:44'),
(681, 1, 't7Ws4Jp9RLFDoCqQsp6KpAwbC9qPuL8o', '2021-12-14 12:10:49', '2021-12-14 12:10:49'),
(682, 1, 'Yyk7AHaK1lJTWKVhq73Iz3DaNrmHbcOl', '2021-12-14 15:20:05', '2021-12-14 15:20:05'),
(683, 1, '6oKkPfmraCAB5nsawvApi4TV2zLNNRid', '2021-12-14 16:33:03', '2021-12-14 16:33:03'),
(684, 1, 'MOLwlG568LHLIbw17pfDlvTBmoQnU4Dp', '2021-12-14 16:39:34', '2021-12-14 16:39:34'),
(685, 1, '37SKiVdNO2kbOgAHp3YmjM0nrhTuXVJs', '2021-12-14 16:51:15', '2021-12-14 16:51:15'),
(686, 1, 'ogvf0CnqVFavAyIu5xYkWH2jzou7ncme', '2021-12-14 18:06:59', '2021-12-14 18:06:59'),
(687, 1, 'LBr4o7aV0KQ6p0lFrXpFXwEeiM0J60GW', '2021-12-14 22:29:00', '2021-12-14 22:29:00'),
(688, 1, 'nxRLUeaEEhwA09QhUvTxLE2CWkgEwfji', '2021-12-15 03:12:26', '2021-12-15 03:12:26'),
(689, 1, '50OwgZcyAJYd2YPVka2ML1trs2IOvWO2', '2021-12-15 12:24:09', '2021-12-15 12:24:09'),
(690, 1, 'o3FYXRdqRJc6oJFvW4NIOMljEOoMPPuP', '2021-12-15 12:46:56', '2021-12-15 12:46:56'),
(691, 1, 'eSFAZ7NVw26FETLqIO3sb5pe0tO5kBMD', '2021-12-15 13:32:00', '2021-12-15 13:32:00'),
(692, 1, '9Om5aJg6NsRqaN56S7v1Bpz4Q1TFkHDD', '2021-12-15 14:00:03', '2021-12-15 14:00:03'),
(693, 1, 'vYduuOSX2EQrQEpqKGuyBccCBZMDGZQE', '2021-12-15 14:03:51', '2021-12-15 14:03:51'),
(694, 1, 'GebBvfmeYEdn4puGlWC9UitFE5i2w4al', '2021-12-15 14:06:04', '2021-12-15 14:06:04'),
(695, 1, 'BUuwtCSD8jrZEuzHeaS9L8IE20VRe2Kx', '2021-12-15 14:39:37', '2021-12-15 14:39:37'),
(696, 1, 'zN5uQHZmXUy2pjroAGo3LhjuZaGYGiQ0', '2021-12-15 17:17:03', '2021-12-15 17:17:03'),
(697, 1, 'CzfIH0zxaCOoL24fLdeXrPLZIK82FP2W', '2021-12-15 19:28:57', '2021-12-15 19:28:57'),
(698, 1, 'vtSwXG1HD2rrFTT7BEJxWsiczrS0lETn', '2021-12-15 20:01:32', '2021-12-15 20:01:32'),
(699, 1, 'zixd16gWYBwoorLIZNM0nbBiU9FBKB6w', '2021-12-15 20:18:50', '2021-12-15 20:18:50'),
(700, 1, 'ny4jVV9IWRAcABWPyDdMazSaaMFoZSj8', '2021-12-15 21:11:10', '2021-12-15 21:11:10'),
(701, 1, '2LdhokoWDyyDkA31VsuusCkTPuKsllLK', '2021-12-16 00:54:14', '2021-12-16 00:54:14'),
(702, 1, 'E58pgIYMoJ6nmoAKfBuHie1d7W83IvCB', '2021-12-16 02:19:49', '2021-12-16 02:19:49'),
(703, 1, '7G8N2wenYOmGfZlicSuL5XVwhRDGmMaD', '2021-12-16 02:48:07', '2021-12-16 02:48:07'),
(704, 1, 'zFDq0Ewrtl1owhklMHwBe7oEyeTosy1d', '2021-12-16 07:10:10', '2021-12-16 07:10:10'),
(705, 1, 'Ylesw9Hx0AjgpeQyY08DASAzYXN0YAqW', '2021-12-16 08:05:53', '2021-12-16 08:05:53'),
(706, 1, 'lG2D0suXauR2jPoYNfaj8goLKhsphAQK', '2021-12-16 10:01:07', '2021-12-16 10:01:07'),
(707, 1, 'AiWe19lAW7Ged3EtopPAIF9wL5Q6q7s3', '2021-12-16 11:29:35', '2021-12-16 11:29:35'),
(708, 1, 'eteYc6l6yVv8C0J9PJuinTESAvF21o4b', '2021-12-16 12:40:56', '2021-12-16 12:40:56'),
(709, 1, 'yigrvyhHPPW7Lh7NbrV22qTyWpUUDsMy', '2021-12-16 15:11:06', '2021-12-16 15:11:06'),
(710, 1, 'EfvPFL1tdjT2ERu54tZYQlVbBAJHxpuM', '2021-12-16 15:12:05', '2021-12-16 15:12:05'),
(711, 1, 'emoDpyXXPLc0MxFCRCKw0j81mIXVL7xN', '2021-12-16 15:54:01', '2021-12-16 15:54:01'),
(712, 1, 'yo7AbfD8cAOTDXIckExjJ9uB0OFJ4j66', '2021-12-16 17:01:43', '2021-12-16 17:01:43'),
(713, 1, '56XBE2YSuCKdrlEAQDduJrAXP1Volu33', '2021-12-16 18:14:19', '2021-12-16 18:14:19'),
(714, 1, 'ALNdryqjLGNYX2nkKQ8kxHXgvjgSuh76', '2021-12-16 18:34:01', '2021-12-16 18:34:01'),
(715, 1, 'GPRVNXzWiuvPZQw1EjaTrlEsAbPJ8DLn', '2021-12-16 22:31:46', '2021-12-16 22:31:46'),
(716, 1, 'TlSeSw0A3SzI3sFLJULxnlDtOoQ5Lkr0', '2021-12-17 04:04:18', '2021-12-17 04:04:18'),
(717, 1, 'WfhUh1BdiSngiiV717bhp9EA3LWs9AeX', '2021-12-17 06:32:16', '2021-12-17 06:32:16'),
(718, 1, 'xEUCq5CrPFH9IBwGY7bmzzFbkfsKEDfT', '2021-12-17 11:48:03', '2021-12-17 11:48:03'),
(719, 1, '0JDLa3PUbALRoKdvnm3CI6BZDYbgdopb', '2021-12-17 13:54:03', '2021-12-17 13:54:03'),
(720, 2, 'CJ0lux7P56yFG31WlYJES1j3UsXUgPaH', '2021-12-17 15:08:19', '2021-12-17 15:08:19'),
(721, 1, '4p5BpqQyfKsLlMsDV72c0F8OkR4R68sk', '2021-12-17 15:41:05', '2021-12-17 15:41:05'),
(722, 1, 'rQbGHlxIqXGUD9IKkdTvbV2Urf2sN8Rg', '2021-12-17 16:58:06', '2021-12-17 16:58:06'),
(723, 2, 'JgWZ4fsUd5npNPHS92GUZco7Yxsp75Vz', '2021-12-17 17:50:59', '2021-12-17 17:50:59'),
(724, 1, 'DsHr8MPlPCzHwqpEjJAQf9PMeaLQD7jN', '2021-12-17 18:00:47', '2021-12-17 18:00:47'),
(725, 1, 'yPDAsjNIaLcD51M7eHMabE9Ry78e2izi', '2021-12-17 20:13:31', '2021-12-17 20:13:31'),
(726, 1, 'K9uedqQUt8EaMWMJdEpMweUTQKwY3QyB', '2021-12-17 20:52:53', '2021-12-17 20:52:53'),
(727, 1, '9Arqxzv3k00MFlmrhSX4fBAEwLUdz4i1', '2021-12-17 21:06:31', '2021-12-17 21:06:31'),
(728, 1, 'yjebxti1SikSiAF3TPundX9xugh2hYU1', '2021-12-17 22:35:53', '2021-12-17 22:35:53'),
(729, 1, 'r7bBnokZAXjBxGS65OkV0oOuh83Gi3V0', '2021-12-17 23:10:10', '2021-12-17 23:10:10'),
(730, 1, 'NWH1E0ZyRtOyZDBqcHh7ccKhJuBFdBJd', '2021-12-18 01:24:20', '2021-12-18 01:24:20'),
(731, 1, 'UptVMKs52SkRrs78k25HRrl8zHlaRG8V', '2021-12-18 01:40:03', '2021-12-18 01:40:03'),
(732, 1, 'KNwdMAbwMK2vGQnEpI8BINZ5w2jReljg', '2021-12-18 02:37:48', '2021-12-18 02:37:48'),
(733, 1, 'IYaSlSrdYJo3aAwe52kmHKZ7fpi81Hl4', '2021-12-18 04:37:49', '2021-12-18 04:37:49'),
(734, 1, 'otkfJfizlpMyeqge3IYLsRobibDUE00k', '2021-12-18 11:04:30', '2021-12-18 11:04:30'),
(735, 1, 'dU60CHAUM2NtXhN29QOjDdhYU2zcNWRQ', '2021-12-18 12:39:25', '2021-12-18 12:39:25'),
(736, 1, 'mQXvWIcPHJZytUiXcxCShKxutFWB3oZM', '2021-12-18 13:11:51', '2021-12-18 13:11:51'),
(737, 1, 'DspFhZTM52zQr41TLdBVoVo2CeSW99bf', '2021-12-18 16:35:41', '2021-12-18 16:35:41'),
(739, 1, 'SuhBUx1i8S1TzdHAaF9UkJNLzIvL5ykv', '2021-12-19 03:07:44', '2021-12-19 03:07:44'),
(740, 1, 'VEJtw2lqnlSYSWN1IBUmBAXhwsp7WTrp', '2021-12-19 03:13:47', '2021-12-19 03:13:47'),
(742, 1, 'ncAWkMi8Ft5RbaopFv0lYpbZtY7VE2Rk', '2021-12-19 05:41:24', '2021-12-19 05:41:24'),
(743, 1, 'cfiGYA64wMoX2siHyqdUcPbI0fxED0tv', '2021-12-19 14:29:15', '2021-12-19 14:29:15'),
(744, 1, 'MyaO9XQM7sV6P9eObFWBRLBRHiTkCDtL', '2021-12-19 18:21:54', '2021-12-19 18:21:54'),
(745, 1, 'AMMnLAE5dlMMXwceJAOAwS8GLAvvODEZ', '2021-12-19 21:09:31', '2021-12-19 21:09:31'),
(746, 1, 'uboo5gYa1ovvORjwVDXp4UmOwlrR9qTL', '2021-12-19 21:34:06', '2021-12-19 21:34:06'),
(747, 1, 'sgGZve1otLk2CmTXnEbMe1yBtSDQC3Pc', '2021-12-20 02:16:28', '2021-12-20 02:16:28'),
(749, 1, 'JUWQYy1gks8AxFuRXfJGaAVjWhz02UZI', '2021-12-20 09:17:25', '2021-12-20 09:17:25'),
(750, 1, 'n1uxuuydU7XJxiZSx1G0AY4PTE8u5xmY', '2021-12-20 10:56:09', '2021-12-20 10:56:09'),
(751, 1, 'RykTugqZfdM6oST5wZTlzmWnLg0aRbAB', '2021-12-20 10:56:16', '2021-12-20 10:56:16'),
(752, 1, 'Dk3Y0yOFa9vTeyIWwU3NhthbbjHEAjdm', '2021-12-20 16:45:28', '2021-12-20 16:45:28'),
(753, 1, 'GxBDFgbIV06fI1OWbE7rb5WErZwa0UQI', '2021-12-20 17:04:52', '2021-12-20 17:04:52'),
(754, 1, 'RseFUTh8xKUWtm9TdDKXgYWZNdXUFlBp', '2021-12-20 20:49:22', '2021-12-20 20:49:22'),
(755, 1, 'yZxHXthOStIHco7Nxy9g1ttOmaKWjqIk', '2021-12-20 22:40:18', '2021-12-20 22:40:18'),
(756, 1, 'gbKk1PbjdtWG2RGZwNtIa7VGQ0DGa3kB', '2021-12-20 23:36:03', '2021-12-20 23:36:03'),
(757, 1, '5mSpsJFBHfCRztNSefQNtdGRbcbAfJtz', '2021-12-21 02:10:14', '2021-12-21 02:10:14'),
(758, 1, 'O6agXEZiXlHrtDZ78fn9Yj5flZJGKvOB', '2021-12-21 10:09:20', '2021-12-21 10:09:20'),
(759, 1, 'CxKeOHTVV5yKvKPHXb7E9qM2sgJH8x3M', '2021-12-21 12:28:21', '2021-12-21 12:28:21'),
(760, 1, 'D9D1zNMW9pRBHVeC5cveribekImiZuXL', '2021-12-21 13:49:20', '2021-12-21 13:49:20'),
(761, 1, 'yBjgAVj52G6PsUKYczV2MC5Fgfbnqedm', '2021-12-21 15:23:07', '2021-12-21 15:23:07'),
(762, 1, 'tq2xlyYbi2gq3sfyjlnWijK4INXtVl7a', '2021-12-21 16:35:41', '2021-12-21 16:35:41'),
(763, 1, 'evR9gpcCVZhIycLDZ8rCEZO1TMIQkN4a', '2021-12-21 17:27:17', '2021-12-21 17:27:17'),
(764, 1, 'eHc2dylu9zJDmiHURd5NeAT7KNpzmTcd', '2021-12-21 17:59:20', '2021-12-21 17:59:20'),
(765, 1, 'QZ4H70Ihkwg3b5s9Yi2UMB8J4Qs66LQM', '2021-12-21 19:46:22', '2021-12-21 19:46:22'),
(766, 1, 'H4pQucp07tbio0ftSLl8KaYkvaEm2q8w', '2021-12-21 21:34:39', '2021-12-21 21:34:39'),
(767, 1, '0QUH3CgDMi4Okf46twx6zPM1jTPzieEw', '2021-12-21 23:54:01', '2021-12-21 23:54:01'),
(768, 1, '2MLufth6wiFrD5XCKQ0RCskci6eph4OE', '2021-12-22 13:46:08', '2021-12-22 13:46:08'),
(769, 1, 'etb9otAUFNAcd578ilJjhk7JKIyOHCA7', '2021-12-22 16:20:59', '2021-12-22 16:20:59'),
(770, 1, '7mTh4o0ySTDTQRPVgBByiIhW4gpr845P', '2021-12-22 19:06:03', '2021-12-22 19:06:03'),
(771, 1, 'inIOAduRuMwH5C8YGXuHBuWFjGdvvnqc', '2021-12-22 19:32:03', '2021-12-22 19:32:03'),
(772, 1, 'r3Ov8NG5XpCFnoVmMe3lr3QTH0R5DHmg', '2021-12-22 22:27:12', '2021-12-22 22:27:12'),
(774, 1, '3hyNwzwJ8mYSKiRhSJQc3LQYeDnNA6fL', '2021-12-22 23:01:33', '2021-12-22 23:01:33'),
(775, 1, 'FA4cUf90QQghT1vIOm6u8t7Bf7Q8MIzr', '2021-12-23 06:55:44', '2021-12-23 06:55:44'),
(776, 1, '7EnfpwL1ZpG1oLMoKkSUtUk3WNyQQcVa', '2021-12-23 09:00:06', '2021-12-23 09:00:06'),
(777, 1, 'bxsQN77gYNjDzUeX2F4bckMBqUQr7N7o', '2021-12-23 12:03:00', '2021-12-23 12:03:00'),
(778, 1, 'wUHR4kpMaF923fU19Wyy4H65zrt23Kpx', '2021-12-23 14:22:23', '2021-12-23 14:22:23'),
(779, 1, 'Kwa9irjtGOKoyp2egB6qLQxJgMyJYdLi', '2021-12-23 14:24:07', '2021-12-23 14:24:07'),
(780, 1, 'slWiKhyUUdXyZvBW8IlQZK76DK2twram', '2021-12-23 15:08:37', '2021-12-23 15:08:37'),
(781, 1, 'QgH0WnvbQG1kjYiZ3TC5I8vJyENjopgd', '2021-12-23 18:10:51', '2021-12-23 18:10:51'),
(782, 1, 'By7VbwGhDmoRP1WSYEVgAgdj1QqcnPEA', '2021-12-23 20:07:51', '2021-12-23 20:07:51'),
(783, 1, 'eedX7Lv7lm4A7ysNrSpcZpljwAHGfHOc', '2021-12-24 00:47:48', '2021-12-24 00:47:48'),
(784, 1, 'RHXRMWVbLNPKJq6wRYCzS33RjWIJfThN', '2021-12-24 00:56:30', '2021-12-24 00:56:30'),
(785, 1, 'G7aTfKlKkfhPs8jxY11YbQJCfVrDhoka', '2021-12-24 02:10:12', '2021-12-24 02:10:12'),
(786, 1, 'L2mL5RHfLc5rCmkSr2CLXMJtJigFlB6Y', '2021-12-24 03:01:23', '2021-12-24 03:01:23'),
(787, 1, 'ZGZLHrtnx8xGaFENW3tqqrMkIXPLJ1EU', '2021-12-24 18:23:36', '2021-12-24 18:23:36'),
(788, 1, 'RGd7uJdub6mqc0YlMV7f78y0ZunUy0YN', '2021-12-24 20:16:50', '2021-12-24 20:16:50'),
(789, 1, '8NKxTD6JKcr0XFr8DvxsY3iy9LPxbelb', '2021-12-24 21:38:58', '2021-12-24 21:38:58'),
(790, 1, 'lRL2gQMJTd6zsX1utfDpVk3ZoXf9kGSC', '2021-12-24 21:46:50', '2021-12-24 21:46:50'),
(791, 1, '55I5KjMcdymvkWHVODtVs62i3QXVMAuO', '2021-12-24 22:07:19', '2021-12-24 22:07:19'),
(792, 1, 'CFTs58lFJZDsnIwEsPE0RvGRE9NLCGoJ', '2021-12-24 22:49:48', '2021-12-24 22:49:48'),
(793, 1, 'aWKVy9wUx8s1OJg3X1AxN84L9caXRloK', '2021-12-25 04:17:43', '2021-12-25 04:17:43'),
(795, 1, 'J6geny0KvHZNXkUkbdk3LOMEfldsPnon', '2021-12-25 09:26:51', '2021-12-25 09:26:51'),
(796, 1, 'kW0CKqYLxRuYJKtdCtYfLxmOYVPAJtAl', '2021-12-25 14:28:05', '2021-12-25 14:28:05'),
(797, 1, 'WZ5eHv8yWvaFy6MHby3YU1m2bgnM6MnA', '2021-12-25 18:34:59', '2021-12-25 18:34:59'),
(798, 1, 'qQgMOUuC4e7MGpvQzFBEq8xO2hDWDFGJ', '2021-12-25 20:39:32', '2021-12-25 20:39:32'),
(799, 1, 'TpfX3UMyOlvo3hQ4AzXviClRA3CAWKqC', '2021-12-26 02:45:07', '2021-12-26 02:45:07'),
(800, 1, 'KzCLa2z9SxK0rWZDF47BOuX4LqoA2P4z', '2021-12-26 12:13:57', '2021-12-26 12:13:57'),
(801, 1, 'jnXmLu2QUhpdHACbfeQPvkpvZAGsXz8G', '2021-12-26 16:37:16', '2021-12-26 16:37:16'),
(802, 1, '8kmDlEuXKFsOeY1V4TS9C17ZgCUKbOCN', '2021-12-26 18:52:14', '2021-12-26 18:52:14'),
(803, 1, 'ZLklwXl8mAPupqlC5D2cmBTsJt6q2XAp', '2021-12-26 18:54:49', '2021-12-26 18:54:49'),
(804, 1, 'QWz5smSjhkNDEWbq1N36J7dl2IlKjPuc', '2021-12-26 21:22:49', '2021-12-26 21:22:49'),
(806, 1, 'cRTk7dYFkHB2ZP8DQQ2geavDIbUPe9XL', '2021-12-27 02:06:25', '2021-12-27 02:06:25'),
(807, 1, 'BNC2dSrsbjUCRKh4qSog4mFiRLmaS0AQ', '2021-12-27 02:15:23', '2021-12-27 02:15:23'),
(808, 1, 'YrtMh5shpQga8ttPEBiHbhaGgpPum4jx', '2021-12-27 02:50:38', '2021-12-27 02:50:38'),
(809, 1, 'W3EmMATfVKDL1NXOUQIzRmROmeRrZpLa', '2021-12-27 05:51:05', '2021-12-27 05:51:05'),
(810, 1, '28vwe7liGBklELYEhK4D4WxIoJV1kP91', '2021-12-27 07:23:52', '2021-12-27 07:23:52'),
(811, 1, 'PsvTTygiD8fS4qoepPv7dra5RqgY0Sgi', '2021-12-27 08:04:57', '2021-12-27 08:04:57'),
(812, 1, 'gMyuo0YnmBS0ZFH0DkdWDSV6pgEL69VR', '2021-12-27 11:25:24', '2021-12-27 11:25:24'),
(813, 1, 'cJaCHVA4j4cp76biW8VYsLotjDdcmwCR', '2021-12-27 12:25:30', '2021-12-27 12:25:30'),
(814, 1, 'LvvjENVvU06Uq088wbNRzTExvllb3uOS', '2021-12-27 12:28:52', '2021-12-27 12:28:52'),
(815, 1, 'tVDSdjm28WSaR8yARY5H3UffkSqFauEY', '2021-12-27 12:28:53', '2021-12-27 12:28:53'),
(816, 1, 'HB4rdWrj57f0PMnH9jfa5sonR2WIF6n9', '2021-12-27 14:56:58', '2021-12-27 14:56:58'),
(817, 1, 'Zy9Hm5KqdSfK1BzwWxOO6cHdnjTY016a', '2021-12-27 15:49:34', '2021-12-27 15:49:34'),
(818, 1, 'X6ygt62Xrj2hTlKAvISGzZ5QuG00S46I', '2021-12-27 16:12:22', '2021-12-27 16:12:22'),
(819, 1, 'qaufh3Nfhlw6kQAdD3fm1nnab1R8OSG8', '2021-12-27 17:48:23', '2021-12-27 17:48:23'),
(820, 1, 'FJ6bh64S1AuuUGNHFXvOcGrU3yxBPOXV', '2021-12-27 22:43:25', '2021-12-27 22:43:25'),
(821, 1, 'Pq9ujGxI93gaVC3beFNlQDnGZeNoOjUn', '2021-12-28 05:18:10', '2021-12-28 05:18:10'),
(822, 1, 'SVnT3W3GdDV2HLDUmd7USZPUJXFezP2w', '2021-12-28 07:04:53', '2021-12-28 07:04:53'),
(823, 1, 'mYvsfY9uP0riycoH9fvt9m79I7TTTfso', '2021-12-28 08:40:32', '2021-12-28 08:40:32'),
(824, 1, 'ZpsnKJKM5J6gYXIPBO5VWRshmY7J4AsG', '2021-12-28 18:05:58', '2021-12-28 18:05:58'),
(825, 1, 'iPtYwXK1LCSrPyC9d0WTERfYS59jevf1', '2021-12-28 18:28:09', '2021-12-28 18:28:09'),
(826, 1, '9pOM3I42g4TkHuMviLpyRrhPeInLyNwA', '2021-12-28 18:32:27', '2021-12-28 18:32:27'),
(827, 1, 'vmBQe5PqdZiuwcttjobTWL0IZYgBSkUh', '2021-12-28 20:01:33', '2021-12-28 20:01:33'),
(828, 1, 'DWjmXQPu3jZxYSsi1jtlo1GgRQovMFsn', '2021-12-28 20:39:37', '2021-12-28 20:39:37'),
(829, 1, 'PDxj0GdDwHFNC1LjuBcTDXEvzzugC7AW', '2021-12-29 00:00:58', '2021-12-29 00:00:58'),
(830, 1, 'nd8s58vBDvfJv0fg8SdSkgIgaOK5JxAh', '2021-12-29 01:35:02', '2021-12-29 01:35:02'),
(831, 1, 'geASvDoHtYqdtpk8Fszm04h28thyINnq', '2021-12-29 01:58:43', '2021-12-29 01:58:43'),
(832, 1, 'D5X8OXIAj0Sm5XZ22P1D2iycXMWMUaMM', '2021-12-29 12:55:38', '2021-12-29 12:55:38'),
(833, 1, 'GnCPj4XmE9kCKAMmdMc6NxAeqkSFKAE3', '2021-12-29 15:02:03', '2021-12-29 15:02:03'),
(834, 1, 'S6jCmdOKT9g75wDnhyqtat418NLAm2Tt', '2021-12-29 15:10:34', '2021-12-29 15:10:34'),
(835, 1, 'd0egOlfhI0xZaq7WEQXMfuY3hMz7Tcnh', '2021-12-29 18:41:05', '2021-12-29 18:41:05'),
(836, 1, 'ZrKGtSQhD1MGBHQZdA4drNwyjJL25zIi', '2021-12-29 19:06:31', '2021-12-29 19:06:31'),
(837, 1, 'ieMokHiGq8RisIuHm7ttKoVmQD4TUI1X', '2021-12-29 20:26:36', '2021-12-29 20:26:36'),
(838, 1, 'WR5KeSzUyJftDp83ddZhJfofFoIP15ON', '2021-12-29 20:28:32', '2021-12-29 20:28:32'),
(839, 1, 'Ubz3Qc2sxuYp8sxozHcUvPGd6J0u3dt5', '2021-12-30 00:38:25', '2021-12-30 00:38:25'),
(841, 1, 'mZMUluq63FHhdfymXgjpl2jeYvpKbAFa', '2021-12-30 13:00:30', '2021-12-30 13:00:30'),
(842, 1, 'lIYCmgo2nRYBqk56kHOLMf8b2A6k6isf', '2021-12-30 13:49:53', '2021-12-30 13:49:53'),
(843, 1, 'iROXWR6ttOOqXAOfJKf4FJZEsFkUBmMG', '2021-12-30 14:23:10', '2021-12-30 14:23:10'),
(844, 1, 'LSKBALwTIrifnYJQXtGnT19Tfs12mBCb', '2021-12-30 15:01:00', '2021-12-30 15:01:00'),
(845, 1, 'MyMl7R1ybFU0Ly0XVI0srxcHxRGg9ZO4', '2021-12-30 17:42:43', '2021-12-30 17:42:43'),
(846, 1, 'IIdnHROJlzl7UO27xaA0R3WHxM6o8URf', '2021-12-31 00:48:52', '2021-12-31 00:48:52'),
(847, 1, 'PIRGJ8JTKeVmSsagfl6T4kv2uQtpDjrs', '2021-12-31 04:21:29', '2021-12-31 04:21:29'),
(848, 1, '2oeYTepwpZ93Srgo32twxmDRPla07vTo', '2021-12-31 04:54:36', '2021-12-31 04:54:36'),
(849, 1, 'IYQZpoEWewFuDt7oUETghUjFOONoNgNV', '2021-12-31 09:28:59', '2021-12-31 09:28:59'),
(850, 1, '7cFRyJZxndOkni2K6pvuxRcjdnlhtZyT', '2021-12-31 10:39:01', '2021-12-31 10:39:01'),
(851, 1, 'SLsGwUqdvlEKNFrjVsTnyLSvgBgntQp1', '2021-12-31 10:43:09', '2021-12-31 10:43:09'),
(852, 1, 'NXz9LYyUcoOEg5LQ8Fg9erWQUxL6SGOl', '2021-12-31 10:57:22', '2021-12-31 10:57:22'),
(853, 1, 'cNbXTeRXSCpoRghUw384RUCRyhf1kxim', '2021-12-31 12:43:26', '2021-12-31 12:43:26'),
(854, 1, 'C26oSsT7LNc6QmiZmO9DipTrWr8UOocL', '2021-12-31 17:10:16', '2021-12-31 17:10:16'),
(855, 1, 'SLtLrGV7pxnGFngT6eQDHsLQjMQaLPN6', '2021-12-31 19:03:07', '2021-12-31 19:03:07'),
(856, 1, 'qfz4KalP5piNRAc72zJZ2Nue8ftGs8NU', '2021-12-31 19:20:03', '2021-12-31 19:20:03'),
(857, 1, 'vkeZG7AWr78n7aEzAIm1buGsBEvrtcrr', '2021-12-31 23:44:44', '2021-12-31 23:44:44'),
(858, 1, '4xyf020wemigdUU8HjUMSPZnj97liwDL', '2022-01-01 00:08:29', '2022-01-01 00:08:29'),
(859, 1, 'lthFbasbswayJokCqXKfa5Piw41b7RjF', '2022-01-01 02:43:51', '2022-01-01 02:43:51'),
(860, 1, 'xA3GYssUzBtjM0amU7xS05fUexrYflYw', '2022-01-01 17:10:30', '2022-01-01 17:10:30'),
(861, 1, 'tCf8gYBL7MZPoD78y33grFxYl4M079cP', '2022-01-01 18:29:54', '2022-01-01 18:29:54'),
(862, 1, 'FQK2en4O8LvnDjVzmIDtNZHCjaZo88Gr', '2022-01-01 19:28:23', '2022-01-01 19:28:23'),
(863, 1, 'HB3Se21RTNrQXPPqXRlvuGd1Vg5IauBY', '2022-01-02 01:49:12', '2022-01-02 01:49:12'),
(864, 1, 'wCZSxYaMxTFpSkLVwsyHNlptyNRQ6wOZ', '2022-01-02 03:53:46', '2022-01-02 03:53:46'),
(865, 1, 'w6oWu2tq6bM5P8pkAxiHUkoOGdhlUYK7', '2022-01-02 13:46:56', '2022-01-02 13:46:56'),
(866, 1, 'TsuAcN8GHp8huPlT9aVoJBsriAz7P3ms', '2022-01-02 15:32:56', '2022-01-02 15:32:56'),
(867, 1, 'sdIaN1dl8adduct0RrAlgPz22H1LqA0y', '2022-01-02 18:10:38', '2022-01-02 18:10:38'),
(868, 1, 'IW7IqFcpDOlYVZAkAxxXGuYHCGm4YckE', '2022-01-02 21:01:00', '2022-01-02 21:01:00'),
(869, 1, 'fngxuAfnMyNtvANCrVCLjiZAuGqcwKq8', '2022-01-02 21:17:50', '2022-01-02 21:17:50'),
(870, 1, 'xjsEaHy7ae73QxmgoS4oTAxkMfvqkEfs', '2022-01-02 22:07:11', '2022-01-02 22:07:11'),
(871, 1, 'uL6jpDxOAQ8fgSTdnEP82jtFarVmvAJ5', '2022-01-03 04:09:21', '2022-01-03 04:09:21'),
(872, 1, 'JykVTZCL9lswAjzUdqABHxB3b5ZhSNwl', '2022-01-03 08:14:09', '2022-01-03 08:14:09'),
(873, 1, 'JJBhyeqcYTXpqFQZzHeSWbswJx2WgBjl', '2022-01-03 12:37:50', '2022-01-03 12:37:50'),
(874, 1, 'S3gjHiKuZQLM2RoOws9KT33QKo5ca9vT', '2022-01-03 13:02:22', '2022-01-03 13:02:22'),
(876, 1, 'wC8Zh2So0tDWUhaer0hcgmygVmFUFECz', '2022-01-03 18:47:44', '2022-01-03 18:47:44'),
(877, 1, 'zUEUegu5olZnFcihYyiJBh0KhJZ1saVm', '2022-01-03 22:30:12', '2022-01-03 22:30:12'),
(878, 1, 'F5adgzUfbCi44OnsbIlYE1xAUsWAVF82', '2022-01-04 01:00:00', '2022-01-04 01:00:00'),
(879, 1, 'fcjFOrLuMfo7qIu74e8SeBQ3cDd5r2Qx', '2022-01-04 02:50:19', '2022-01-04 02:50:19'),
(880, 1, 'NiyFNhNptSSXULqGBSZ6h4GNoDBUPBVx', '2022-01-04 08:33:30', '2022-01-04 08:33:30'),
(881, 1, '7PlGkBIutHlIGPo7pCqtQGbVI4Fi7S8T', '2022-01-04 12:59:12', '2022-01-04 12:59:12'),
(882, 1, '7Y6WfI61RD4mcDPYdUghZnzpE4ouHafH', '2022-01-04 13:55:43', '2022-01-04 13:55:43'),
(883, 1, '621YAATwUDKCwpl1Rr7h7MeRsdzHiCyB', '2022-01-04 14:29:06', '2022-01-04 14:29:06'),
(884, 1, '1Ustuigm8wuPLuNi3cYidvXpamn2GJCE', '2022-01-04 15:15:43', '2022-01-04 15:15:43'),
(885, 1, 'DqPQ3uUhlYKgetkZek17SER0T5Htos1n', '2022-01-04 18:13:31', '2022-01-04 18:13:31'),
(886, 1, 'vgUtn6gsytGoBFGk089PhzbKUxPk8H8W', '2022-01-04 18:47:18', '2022-01-04 18:47:18'),
(887, 1, '9Ky6jDMr8O75YDeLhKLQWFWSMVgZRULi', '2022-01-04 21:06:11', '2022-01-04 21:06:11'),
(888, 1, 'mAH72tDlAm5lbbvxlr1pSRPTBrUgW07L', '2022-01-04 21:12:25', '2022-01-04 21:12:25'),
(889, 1, 'pY8dl8ZBm8Z0EhOKBpsOrKJsxATlWrLN', '2022-01-04 21:35:37', '2022-01-04 21:35:37'),
(890, 1, 'soPHejs1BO60N4y2Ti8mOQDcDRk5fjBu', '2022-01-05 03:13:14', '2022-01-05 03:13:14'),
(891, 1, 'NSqQGJtSJVMmBuaZMjqfO240LAsKSN1u', '2022-01-05 13:21:30', '2022-01-05 13:21:30'),
(892, 1, 'DbKHiEbD5WDXoFi7MbimHrdEuV64ur8k', '2022-01-05 14:20:44', '2022-01-05 14:20:44'),
(893, 1, 'hPLqiSbcXOc8JPvvraRxHXVrCv8fq2HG', '2022-01-05 19:17:30', '2022-01-05 19:17:30'),
(894, 1, 'NG9la6zOHDZrFHP84T9RtoZHSTYj09Zt', '2022-01-05 23:43:01', '2022-01-05 23:43:01'),
(895, 1, 'MaByNBoL8QzwjhkQWUuHe6pshg1xAVKq', '2022-01-06 01:41:53', '2022-01-06 01:41:53'),
(896, 1, '1lO0xJEkDHRDjqZi5uMl6TbGhfPE5z4U', '2022-01-06 01:41:54', '2022-01-06 01:41:54'),
(897, 1, 'b4zmXTrstlEkUmFp1ZGa1vxpNxvRuYgK', '2022-01-06 01:49:23', '2022-01-06 01:49:23'),
(898, 1, 'inZTGs4pMzeFSe7BOfLUwoiXwc3kLUQb', '2022-01-06 02:28:26', '2022-01-06 02:28:26'),
(899, 1, 'mjPYsAGXmaYRirFQMz98kuqnXVP4gIaf', '2022-01-06 06:18:39', '2022-01-06 06:18:39'),
(900, 1, 'KygzZlIFDrYy7k76zKKqS2xiAZFG9W5E', '2022-01-06 06:45:07', '2022-01-06 06:45:07'),
(901, 1, 'UR4MaBCiReOV44uLFzrhzYFGfVKSel1u', '2022-01-06 07:10:24', '2022-01-06 07:10:24'),
(902, 1, '6orF6Gav25lc3W2rirsstPwjGZnMVNWX', '2022-01-06 10:52:57', '2022-01-06 10:52:57'),
(903, 1, 'YpwTkL1aXfBoH8Hx03BBjpx5dbllBM7R', '2022-01-06 16:36:45', '2022-01-06 16:36:45'),
(904, 1, 'eBN81gcAEuG4NdI63khhGDYBM8F1pJbN', '2022-01-06 17:14:07', '2022-01-06 17:14:07'),
(905, 1, 'TOptJk1cAuYydq77WnZUIfgzo54InlGh', '2022-01-06 17:19:00', '2022-01-06 17:19:00'),
(906, 1, '2gDbM1i76UWHdprZqvNNyCuYLp5EEqBK', '2022-01-06 17:19:16', '2022-01-06 17:19:16'),
(907, 1, 'NmRfH02M2AEV9dbS38TGOnsP8kkwgfgK', '2022-01-06 19:35:10', '2022-01-06 19:35:10'),
(908, 1, 'NMq4BG3KSzgsJQCM0StUst2nSGk8bCdr', '2022-01-06 22:48:47', '2022-01-06 22:48:47'),
(909, 1, 'BRDKA0JStE1ugTeqOdd0ALFcFiN3Re5N', '2022-01-07 00:15:18', '2022-01-07 00:15:18'),
(910, 1, 'BFTEf2x9QlP5HigVo9y7JP6W3over6D5', '2022-01-07 00:52:20', '2022-01-07 00:52:20'),
(911, 1, 'Vc9fUL9dLu18k9YmPOITM2E2Qcg9JtnW', '2022-01-07 10:32:25', '2022-01-07 10:32:25'),
(912, 1, 'UZKhpqkYHG98w0PdpqvzvoDqEccGzygg', '2022-01-07 20:58:48', '2022-01-07 20:58:48'),
(913, 1, '0Sz6kl1Pu6G1SBfBoDWaRvoyZw53yp4C', '2022-01-08 04:58:46', '2022-01-08 04:58:46'),
(914, 1, 'ZQWQveiXICUsh0NuJwLEBkYJFRHaC3hS', '2022-01-08 09:52:54', '2022-01-08 09:52:54'),
(915, 1, 'CswYjACynCbTcAFcesQGLe9wjgusioK6', '2022-01-08 12:44:21', '2022-01-08 12:44:21'),
(916, 1, 'CORRciEY8hyPR78A5Oq1IdRRvYQnKBRG', '2022-01-08 12:44:23', '2022-01-08 12:44:23'),
(917, 1, 'pbze8tjC9wCgSVqGmAkjyD3MMuqxQQOB', '2022-01-08 16:36:55', '2022-01-08 16:36:55'),
(918, 1, 'CgaknOFRj5Vz6t9UtGl6R3cwMNCxpoOb', '2022-01-08 19:19:38', '2022-01-08 19:19:38'),
(919, 1, '45atK5ya6HBz3MMZvec2vNdcp7OZ7jmK', '2022-01-08 20:38:34', '2022-01-08 20:38:34'),
(920, 1, 'hba1An6nbTTsjtzdICZG5eG5NOmzM4G2', '2022-01-09 02:57:13', '2022-01-09 02:57:13'),
(921, 1, 'yOwOu5L6F7DrhCdV1u1jLGgVUf1FdDq2', '2022-01-09 08:25:48', '2022-01-09 08:25:48'),
(922, 1, 'nYFrQgQNfgX3ILsqV5ajrNfLENZNzQMX', '2022-01-09 08:55:57', '2022-01-09 08:55:57'),
(923, 1, 'KPdNt5GFLiNstC6aOAj7gDvSistW4Y27', '2022-01-09 13:02:12', '2022-01-09 13:02:12'),
(924, 1, 'UFTWEINakJvLBr2ugjWicOVOa00Yiuhd', '2022-01-09 13:13:16', '2022-01-09 13:13:16'),
(925, 1, 'Hg0aDOOySXCHLUc9DDyCcekQ08dVkdtp', '2022-01-09 14:27:09', '2022-01-09 14:27:09'),
(926, 1, 'VTZ15Gg8FJiycSXtV0LwTfOrxvwyeIo8', '2022-01-09 20:19:57', '2022-01-09 20:19:57'),
(927, 1, 'lA72rnpLUU2yS65GBdIOQZGLh1ShtiPs', '2022-01-09 23:17:20', '2022-01-09 23:17:20'),
(928, 1, '2ZwSZejKCDMqamxxwA8tvA7rY3w9ZIrp', '2022-01-10 00:24:54', '2022-01-10 00:24:54'),
(929, 1, 'p17OXLNkKggS1hcBsPyAgdmZpP3grVe8', '2022-01-10 07:08:53', '2022-01-10 07:08:53'),
(930, 1, 'LUUE81o6di8XgRurnhGse48JtUQKu2so', '2022-01-10 11:45:58', '2022-01-10 11:45:58'),
(931, 1, '5nAdlwKu8QXICAIUvbqgi3EPITjsvcN6', '2022-01-10 16:52:07', '2022-01-10 16:52:07'),
(932, 1, 'KcnXokn2J8JHpjcZQeZt2ubcv77wt2m7', '2022-01-10 17:08:26', '2022-01-10 17:08:26'),
(933, 1, 'd68QjPgdB7hYgu3iuj9qLTdwVesjyOvB', '2022-01-10 19:43:22', '2022-01-10 19:43:22'),
(934, 1, 'HenCAwzIgTAwKeMi2wZnhMNjTQQbVagP', '2022-01-10 19:47:44', '2022-01-10 19:47:44'),
(935, 1, 'xlFX1iTpXnoUh3HE1UKsVRHA5ASZFw4v', '2022-01-10 21:17:48', '2022-01-10 21:17:48'),
(936, 1, 'cPTSxoCoAbajAexrqHzJL9vOWkMhRtVg', '2022-01-10 21:58:37', '2022-01-10 21:58:37'),
(937, 1, 'jBG2FHaEWbJIrGEIb97Jn7Jk4XQYpo3H', '2022-01-11 03:09:16', '2022-01-11 03:09:16'),
(938, 1, 'jjDFYVEa0OuswdOjwZPzUu3T4xhuGQx4', '2022-01-11 03:38:03', '2022-01-11 03:38:03'),
(939, 1, 'NTmjO6OijaB5Qz71amoCKR7I87ANTZRY', '2022-01-11 03:38:15', '2022-01-11 03:38:15'),
(940, 1, '6J58S6LuZmwsZrVQW4ixWx5RHHsziKmX', '2022-01-11 08:23:55', '2022-01-11 08:23:55'),
(941, 1, 'yUFOz37sUbgvBMcUdIQVBppslvLgFTCL', '2022-01-11 09:35:16', '2022-01-11 09:35:16'),
(942, 1, 'cEUSHdG5tQEY1mKJblkuDuVGAVVp0H8E', '2022-01-11 11:10:55', '2022-01-11 11:10:55'),
(943, 1, 'SYj28uMJrJD5WtN2uZo3JUrbTH6vgOLr', '2022-01-11 11:21:35', '2022-01-11 11:21:35'),
(944, 1, '2GQWRxQ0SG525lx62RLl3LyUjlRYgdAu', '2022-01-11 12:42:17', '2022-01-11 12:42:17'),
(945, 1, 'Yen5ckO4BaihBxxxglzY3SqpuQ3X8NBH', '2022-01-11 13:44:10', '2022-01-11 13:44:10'),
(946, 1, '2KKr34kWOd3U3xSaJMCBJJo7qB95Ei8L', '2022-01-11 13:44:11', '2022-01-11 13:44:11'),
(947, 1, 'RZ4AsEX95ByzKz2ikXhWAXywHfpozLEl', '2022-01-11 17:14:43', '2022-01-11 17:14:43'),
(949, 1, '0tcPKQckrjFVBRRgtSr25uDssJu92EbA', '2022-01-11 18:49:58', '2022-01-11 18:49:58'),
(950, 1, 'nif4pXD9AWcex6bpzDKU5jiXwMDpWNYX', '2022-01-11 20:27:46', '2022-01-11 20:27:46'),
(951, 1, 'vJ1PwzPH9dXQ1PkSjf8DYwKmxxajjsh8', '2022-01-12 00:05:06', '2022-01-12 00:05:06'),
(952, 1, 'VHN8cCysnZpkmxQkc9ZoYo9IBfyxJxUY', '2022-01-12 02:03:23', '2022-01-12 02:03:23'),
(953, 1, 'ZRXdMVwByACeCBKx1FUdBteSKP1kyRoA', '2022-01-12 02:09:00', '2022-01-12 02:09:00'),
(954, 1, 'got3bRPRoEHijB6GAASXcqaU9iVO9TMv', '2022-01-12 02:40:53', '2022-01-12 02:40:53'),
(955, 1, '4Fck0RfWe3Ugdo0DMYZfkQFN60MRFXQ0', '2022-01-12 04:09:46', '2022-01-12 04:09:46'),
(956, 1, 'vYuoxGEL2jqBO6HxVe0tip9YKHnEf3NI', '2022-01-12 06:07:06', '2022-01-12 06:07:06'),
(957, 1, 'FlST4IF7eScXliAI30V5xW6doqVycfp4', '2022-01-12 06:24:37', '2022-01-12 06:24:37'),
(958, 1, '3QSwlX6DbaJk1x3b6otfvV5oYnLvoON9', '2022-01-12 13:45:55', '2022-01-12 13:45:55'),
(959, 1, 'oXDBDMmANI585ZwdQUBrxXxY1rlQRGDD', '2022-01-12 15:36:14', '2022-01-12 15:36:14'),
(960, 1, 'vf0bu8GSpR50DfhgLK7vkimE9sL44607', '2022-01-12 21:17:23', '2022-01-12 21:17:23'),
(961, 1, 'iM3BpJ6ZdggcNO7dAfvtAkI4KjlBaZ7f', '2022-01-12 21:27:09', '2022-01-12 21:27:09'),
(962, 1, 'Gc9QtHX8HUxP0PSCf5awB2hMxmL0HMJa', '2022-01-12 21:56:15', '2022-01-12 21:56:15'),
(965, 1, 'WAM75o7fR1DgmkxpusxR9JQVpZJ4S2uQ', '2022-01-13 01:16:15', '2022-01-13 01:16:15'),
(966, 1, 'x30hefXa41tk6eQvJMUE0GI73wfLadmE', '2022-01-13 03:42:40', '2022-01-13 03:42:40'),
(967, 1, 'Au5Umr459VYMZZTgJqcwmrnaq5mmp7Sg', '2022-01-13 05:45:31', '2022-01-13 05:45:31'),
(968, 1, '3jDnl7B60yUF7LAQ7A3EbCf6Q78nHoW4', '2022-01-13 07:10:54', '2022-01-13 07:10:54'),
(969, 1, '7h0xQ9j48fgOZpZuKd6qit1WunBYcSmK', '2022-01-13 12:51:17', '2022-01-13 12:51:17'),
(970, 1, 'xv7C2STxKp1xqk3xH4XK1UOAgL8ganuJ', '2022-01-13 13:46:24', '2022-01-13 13:46:24'),
(971, 1, 'i4A7dYoJ1NxqpDdUMFUiNkCyXkur1xRe', '2022-01-13 15:33:23', '2022-01-13 15:33:23'),
(972, 1, 'y6n0NVAAr8NRQNBRjvEne2K82ZvesRMb', '2022-01-13 15:42:28', '2022-01-13 15:42:28'),
(973, 1, 'y5N7PR26PrWv0Kgv3sQCKogNDhcZ71FW', '2022-01-13 16:00:45', '2022-01-13 16:00:45'),
(974, 1, 'GTgi0QW7iBx66s9VSqKwTJFJXGVaUvbp', '2022-01-13 17:15:21', '2022-01-13 17:15:21'),
(975, 1, 'u1pstedRzaA1MlCe2iMIs90ElMwtKGzs', '2022-01-13 18:08:27', '2022-01-13 18:08:27'),
(976, 1, 'KjdCWAHHAy39O8fyx2GunRu1CnZRqUNn', '2022-01-13 23:40:25', '2022-01-13 23:40:25'),
(977, 1, 'Kty0iWueyrFmPQQy0CteOjRbNAHqZS5Q', '2022-01-14 00:38:31', '2022-01-14 00:38:31'),
(978, 1, 'fImEM6LCQNYYI4S2NXdrvaRZYInwJV6P', '2022-01-14 01:04:04', '2022-01-14 01:04:04'),
(979, 1, 'LtkfCSOJ9KmlquNWNBqRJYVSrwI1CRI8', '2022-01-14 05:06:06', '2022-01-14 05:06:06'),
(980, 1, '0RHDUi3vVQhafpud4KbIM4HOamv4YsWS', '2022-01-14 07:14:41', '2022-01-14 07:14:41'),
(981, 1, 'F1kAdyShfVGUl9EbuwKe9gk4C4i0gQ0A', '2022-01-14 09:14:08', '2022-01-14 09:14:08'),
(982, 1, 'rQTTeFpbgRgKRlkgLsyqkjIZS9Jq6JAT', '2022-01-14 14:32:11', '2022-01-14 14:32:11'),
(983, 1, 'qOhMeaGRa90O4nFnJMAYkKBfR1wY1jzH', '2022-01-14 14:45:37', '2022-01-14 14:45:37'),
(984, 1, 'v0xbvHXhMZ3OqztnRqyfcLMyi6Slw0fj', '2022-01-14 19:06:43', '2022-01-14 19:06:43'),
(985, 1, 'CPp36g2QYaK6sUxiNNdWOY07GQabcAJ4', '2022-01-14 19:21:44', '2022-01-14 19:21:44'),
(986, 1, 'Erx7ktFQal5hhPVK4kdhf822wXIF5Shl', '2022-01-14 21:15:42', '2022-01-14 21:15:42'),
(987, 1, 'RQ67Q2jsstLd1BHA3kjYD25fMgSzMtEE', '2022-01-14 22:34:03', '2022-01-14 22:34:03'),
(988, 1, 'WPwBz7LIEedweQA5MC5tYzZ2p44l4o3z', '2022-01-14 22:37:30', '2022-01-14 22:37:30'),
(989, 1, '5YPyu66qyDbT7lEl6UPHhabX1M3HmjWp', '2022-01-14 23:11:32', '2022-01-14 23:11:32'),
(990, 1, 'bjX1KdQ3Zvv27XXaZD9LXn9jeXbuTLdw', '2022-01-14 23:55:16', '2022-01-14 23:55:16'),
(991, 1, 'Dzbqay0PaIAQMm12pfAdMdlLHgXsNzZC', '2022-01-15 07:46:54', '2022-01-15 07:46:54'),
(992, 1, '7rzD3rtt5mFstLvq6zSYKD1VrXdRbFF1', '2022-01-15 10:00:22', '2022-01-15 10:00:22'),
(993, 1, 'Wax2rfyGk0G1PuClbS6sgdMNR2u0l5cQ', '2022-01-15 15:49:40', '2022-01-15 15:49:40'),
(994, 1, 'O16g3UNXuI10fov4mWD4p4TvQyLQEKg5', '2022-01-15 18:58:54', '2022-01-15 18:58:54'),
(995, 1, '3ghwtjjadi5AvgeHBNRRFmvDQ8lDZuYZ', '2022-01-15 19:58:17', '2022-01-15 19:58:17'),
(996, 1, 'ojgeYTKKa1fhh5xjsM7IgtMA4lLN5lwo', '2022-01-15 23:05:37', '2022-01-15 23:05:37'),
(997, 1, 'YvfvVVLcjexNjqiKLmPguRlUbMhsrbzJ', '2022-01-16 02:07:35', '2022-01-16 02:07:35'),
(998, 1, 'IF9xCJtBuDa074aB761LjSa6zyDgREqP', '2022-01-16 10:40:14', '2022-01-16 10:40:14'),
(999, 1, 'fFxGekHJaeukKo8Jf6gV2zAiCNQy2Xc9', '2022-01-16 16:18:47', '2022-01-16 16:18:47'),
(1000, 1, 'tXGja6LO2aeY8rZ9LSFDdq6BDYIDxxzO', '2022-01-16 17:05:39', '2022-01-16 17:05:39'),
(1001, 1, 'dcJJtYY3e6LzF4LT9NLeIId5vx2SfJhL', '2022-01-16 21:36:25', '2022-01-16 21:36:25'),
(1005, 1, 'lwMR08eIOn4llCP8rje8X4e8FiTcl6lX', '2022-01-17 04:08:50', '2022-01-17 04:08:50'),
(1006, 1, 'PNuwKLErnQHdvjsqWYX8JB30hw8RwNzD', '2022-01-17 04:10:44', '2022-01-17 04:10:44'),
(1007, 1, 'pfdTiYoYweKdLklA9aagnyRdISohNln4', '2022-01-17 07:38:15', '2022-01-17 07:38:15'),
(1008, 1, 'BeUfDb0QerSu8EBg1gnA3w5uOZK6nQfu', '2022-01-17 10:53:18', '2022-01-17 10:53:18'),
(1009, 1, 'es2GLAR7MZcwzUStUdY2RcrE9yPJyXmg', '2022-01-17 10:54:45', '2022-01-17 10:54:45'),
(1010, 1, '2Zke2d64B92Yq1eGGbBEpQUk4kQIgvJi', '2022-01-17 13:36:40', '2022-01-17 13:36:40'),
(1011, 1, 'Y4SyLPc8b0ZfYYOaoq8BU2fDFT31EWWj', '2022-01-17 13:38:52', '2022-01-17 13:38:52'),
(1012, 1, 'CtMAcln43a4BgZNuCcZwN4uaE1sq8SbV', '2022-01-17 16:38:26', '2022-01-17 16:38:26'),
(1013, 1, 'PtOeJKpeEIgBi5Esfdbh50vhWhQCVggg', '2022-01-17 19:54:17', '2022-01-17 19:54:17'),
(1014, 1, 'QzW8ilWH2VjX3uQ4jOwrqbPg0Bb7nCXZ', '2022-01-17 21:56:35', '2022-01-17 21:56:35'),
(1015, 1, '8Es0ci33LYUCVsSweCSsouN0USwPfHhF', '2022-01-17 22:35:31', '2022-01-17 22:35:31'),
(1016, 1, '8Fj2umg8j6tupiqRNAtVV9aFYtjvHFrI', '2022-01-18 01:01:51', '2022-01-18 01:01:51'),
(1017, 1, 'sKXiqzLdjRyITWQrzaYYjvEQP5TpXjQd', '2022-01-18 11:07:25', '2022-01-18 11:07:25'),
(1018, 1, 'DmIRaHwW5IxioTjAIibriwIKSKN1PEP8', '2022-01-18 14:51:07', '2022-01-18 14:51:07'),
(1019, 1, 'iE1Uz34Yu2GJQnf7C1TzubzxUqeN2ifA', '2022-01-18 17:42:10', '2022-01-18 17:42:10'),
(1020, 1, 'Gl0BCEwBEM2JLGXunySOQjrWDZCtybRE', '2022-01-18 18:03:51', '2022-01-18 18:03:51'),
(1021, 1, 'QCSydroeUs439cSCkw1JX8lSSeXqiady', '2022-01-18 19:06:43', '2022-01-18 19:06:43'),
(1022, 1, 'csIJWdo2PaLe3yroAbvtAeewCpc0l2Vs', '2022-01-18 21:51:15', '2022-01-18 21:51:15'),
(1023, 1, 'Luf1AKocD7xzfkV1WYYsGBYpcclDCI0f', '2022-01-19 01:04:36', '2022-01-19 01:04:36'),
(1024, 1, 'PXTTPeTyWbyF7tkwFBnKcbtHwB5wYWMV', '2022-01-19 04:48:01', '2022-01-19 04:48:01'),
(1025, 1, 'PJjT8yHzeM6rQbKtaULKXIKRwof66ekw', '2022-01-19 11:58:17', '2022-01-19 11:58:17'),
(1026, 1, 'AXXHkD75f0wGUoLDovhgn9usm7I4wmSB', '2022-01-19 13:31:01', '2022-01-19 13:31:01'),
(1027, 1, 'sX8U4MYyDBXbNjBvWdTjHginMN8Wgf07', '2022-01-19 16:04:43', '2022-01-19 16:04:43'),
(1029, 1, 'DF4ppdEJu3dZ0IgT0NDXvk44paSmILg3', '2022-01-19 18:15:42', '2022-01-19 18:15:42'),
(1030, 1, 't3DHy3MNqDMiCmY6bH1OTLNFjE3iUVss', '2022-01-19 19:17:39', '2022-01-19 19:17:39'),
(1031, 1, 'NaxldfunPkzIyAKr6fo4kGvY4lsA4B6W', '2022-01-19 22:30:37', '2022-01-19 22:30:37'),
(1032, 1, 'aLZa5jqXbiH1Wn64VAcUSG3y8lINXx4A', '2022-01-20 02:08:56', '2022-01-20 02:08:56'),
(1033, 1, 'qDoSLBDVkSzrLkxtr7EdQ3qwbjUceG9G', '2022-01-20 05:54:14', '2022-01-20 05:54:14'),
(1034, 1, 'E8bJTcn5EImYPQgvyQO7LONNmQx9uNzS', '2022-01-20 09:54:49', '2022-01-20 09:54:49'),
(1035, 1, 'RLKclZKiqHxxQHR1up9YB3pA7ibHPvvN', '2022-01-20 12:04:13', '2022-01-20 12:04:13'),
(1036, 1, 'zpDPMgNVa3xvCRnVfrqEqbNnHBn6ekaK', '2022-01-20 21:47:47', '2022-01-20 21:47:47'),
(1037, 1, 'LIPb1JjdmaSxQW7smlgmiaBHWBCRXXtH', '2022-01-20 23:57:20', '2022-01-20 23:57:20'),
(1038, 1, 'QY03Kz9zdBnd4gtZmNJDcGN0V3S48g4F', '2022-01-21 00:52:09', '2022-01-21 00:52:09'),
(1039, 1, 'x12TxIlYa9XEcoXDt070X4xykiEljE1N', '2022-01-21 01:23:02', '2022-01-21 01:23:02'),
(1040, 1, 'Cp1Cp0Jmz057jPfqqnA0J01KafzJW3uh', '2022-01-21 07:58:39', '2022-01-21 07:58:39'),
(1041, 1, 'sVzem5aoiv2HuAvgHFApzvumapPYAhZL', '2022-01-21 09:07:23', '2022-01-21 09:07:23'),
(1042, 1, 'DKRBAA6kvzNvY2LsFx1ss5oeD0rSciJj', '2022-01-21 14:07:36', '2022-01-21 14:07:36'),
(1043, 1, 'Zc6eGBTBKTqlGJceTYDZGoe3GuXs252p', '2022-01-21 15:41:32', '2022-01-21 15:41:32'),
(1044, 1, 'jW8DgcG5q2yfQMUJobATg50FxPsiWB7c', '2022-01-21 16:53:42', '2022-01-21 16:53:42'),
(1045, 1, '1GSf97a8ttet123lgCW69iRebjOm0ZRl', '2022-01-21 20:59:07', '2022-01-21 20:59:07'),
(1046, 1, 'PagfaM467i6qg9AmL55RcyeAbaGXBdQI', '2022-01-21 21:10:15', '2022-01-21 21:10:15'),
(1047, 1, 'sljYzn4a4yIL4aGHnO6X5xkHq2veiX4P', '2022-01-21 21:36:40', '2022-01-21 21:36:40'),
(1048, 1, 'ZINkF8rNZKIyecXiAeIlXkdQGTdbRGiY', '2022-01-21 22:10:53', '2022-01-21 22:10:53'),
(1049, 1, 'nvVkB9M5nLRVZke320WIJgHycaoN8cgH', '2022-01-21 22:29:26', '2022-01-21 22:29:26'),
(1050, 1, 'aHLkgI4BDg9cm2DAYAPPpoSLcjoU0KUt', '2022-01-21 23:46:30', '2022-01-21 23:46:30'),
(1051, 1, 'BYPuuETP33m54axPr33Tkl4anIkjAJ85', '2022-01-21 23:50:14', '2022-01-21 23:50:14'),
(1052, 1, '3pHbVpm4KhoHfYUEW6Svu9XWAJnmGeig', '2022-01-22 00:59:59', '2022-01-22 00:59:59'),
(1053, 1, 'Bkq9MHzYQb7rHbXdm1Fez3VzpIuqnFsr', '2022-01-22 05:45:10', '2022-01-22 05:45:10'),
(1054, 1, 'W4aMehXBz45XOPbR4w5oGRi7OqmQTG3j', '2022-01-22 06:46:46', '2022-01-22 06:46:46'),
(1055, 1, '2RsWL3bAud1GFIp1qGxpbrmSE1qcZnm6', '2022-01-22 17:53:15', '2022-01-22 17:53:15'),
(1056, 1, 'Ab6rubwB9UMdymifLVZ7jVf6zQjBpacy', '2022-01-22 19:20:52', '2022-01-22 19:20:52'),
(1057, 1, 'X0nsYJkQWrLfLDgl0QJGLi406UXb2w1j', '2022-01-22 21:02:06', '2022-01-22 21:02:06'),
(1058, 1, 'RL3KTCmIr2py1GiNlgvN1YQibzDCneDx', '2022-01-22 23:22:54', '2022-01-22 23:22:54'),
(1059, 1, 'vXHtTNBn7Si8sLMMgctP0ezWP8ZHLB31', '2022-01-23 01:06:14', '2022-01-23 01:06:14'),
(1060, 1, '2Sff8l0HMHwHolRRkArFrwddjcApey0U', '2022-01-23 01:18:39', '2022-01-23 01:18:39'),
(1061, 1, 'pceRAFn7AWSg5N9q1n811vfwu6RhHRYb', '2022-01-23 02:39:06', '2022-01-23 02:39:06'),
(1062, 1, 'vlcxm1VkLkfc8GjQBnGhdELX0OY0xSpp', '2022-01-23 07:28:23', '2022-01-23 07:28:23'),
(1064, 1, 'LLDeKSVxFKFwNW1ce1fFsFUui31MXQML', '2022-01-23 11:54:31', '2022-01-23 11:54:31'),
(1065, 1, 'roMyhDoj4mjWI43hlpurwsjRdtvhwJsc', '2022-01-23 21:37:54', '2022-01-23 21:37:54'),
(1066, 1, 'yhlm4YBP1Iz5VINpsl1eYPEE2PYz4dmM', '2022-01-23 23:54:35', '2022-01-23 23:54:35'),
(1067, 1, 'LYnmL2PoaZmxcOwsgB4d9vVDJ4jiRcBP', '2022-01-24 10:05:20', '2022-01-24 10:05:20'),
(1068, 1, 'qqnqDoM8TTLGQqUTzBHTs7sRyxG4s4c9', '2022-01-24 13:10:25', '2022-01-24 13:10:25'),
(1069, 1, 'h2Vms5OOpiFfQpsmpIx4ByF2pbirsoBp', '2022-01-24 14:56:37', '2022-01-24 14:56:37'),
(1070, 1, 'PF2TAA22EsC47y76hhiknqhU4EXAmMZL', '2022-01-24 15:18:18', '2022-01-24 15:18:18'),
(1071, 1, 'E0JlZEhTGe55SzGQChowMgIS8ICqjPwj', '2022-01-24 17:00:07', '2022-01-24 17:00:07'),
(1072, 1, 'W34bPH269ZyW0tMr1jyoY2jp6bveLL1N', '2022-01-24 19:18:42', '2022-01-24 19:18:42'),
(1074, 1, 'suWVyJkyI2DQ7UdGEwfhFPb1Hxhb96Wo', '2022-01-25 02:23:38', '2022-01-25 02:23:38'),
(1075, 1, 'hvXxycSPvaq2Z1mI39gBW8kIqEcnq1BW', '2022-01-25 12:07:56', '2022-01-25 12:07:56'),
(1076, 1, 'PQgHrXSfwEia4ZZaShbb3XEvRR1GReZM', '2022-01-25 14:55:09', '2022-01-25 14:55:09'),
(1077, 1, 'T8iDJHQttfmJzwCfqchFdsFSBM5eg1y7', '2022-01-26 01:22:13', '2022-01-26 01:22:13'),
(1078, 1, 'G9tyuFZXsUlGUngMlsdqV9pwV1vGG0Wr', '2022-01-26 03:08:55', '2022-01-26 03:08:55'),
(1079, 1, 'iyeYscOelHmqDXnckNcR3AwAptyUZ4Kt', '2022-01-26 05:46:48', '2022-01-26 05:46:48'),
(1080, 1, 'hptkQC7EQRhoMP7m11qLoK7qu2tUSRCH', '2022-01-26 11:19:11', '2022-01-26 11:19:11'),
(1081, 1, 'bNV2ktLWvho36LeQVlarPLFFfmDDyEB9', '2022-01-26 13:23:25', '2022-01-26 13:23:25'),
(1083, 1, 'SZWsOwr0Jnr921ktdL0pcq8CvgQSLDUP', '2022-01-26 13:31:36', '2022-01-26 13:31:36'),
(1084, 1, 'zckEG0JIQRdQO3vNu7ELyaYMfY73ELrN', '2022-01-26 13:56:42', '2022-01-26 13:56:42'),
(1085, 1, 'xT30loZebCRAdUg0GsYBYC2gLfaMWMDN', '2022-01-26 19:17:59', '2022-01-26 19:17:59'),
(1086, 1, '7KUCNNMJ1pnscYMrGL6XVpByPyB9pGrr', '2022-01-26 23:41:57', '2022-01-26 23:41:57'),
(1089, 1, '5NLbrwqCQBOsSJX3rech2wNdBFG5n7uf', '2022-01-27 11:59:25', '2022-01-27 11:59:25'),
(1090, 1, 'szkwkYBsUszmjnNWCpOQzd8En806nH7l', '2022-01-27 14:40:19', '2022-01-27 14:40:19'),
(1091, 1, 'anprnDEfrmHvSVZjJVpNOsDoXfbtLCNP', '2022-01-27 15:01:03', '2022-01-27 15:01:03'),
(1092, 1, 'Gja2Bxb3zsX5lDuyZWyOaTl4BHQ02aZ7', '2022-01-27 15:16:34', '2022-01-27 15:16:34'),
(1093, 1, 'VG4E4hknZjGDZwhLGi1q1cf8leM8syZQ', '2022-01-27 15:55:00', '2022-01-27 15:55:00'),
(1094, 1, 'keBCLPolg2jJb4VmMII65vZ8KC8AEJ9i', '2022-01-27 17:45:08', '2022-01-27 17:45:08'),
(1096, 1, 'cr2sex3960nC75zdOTmZE2OK3B17NSH8', '2022-01-28 04:50:08', '2022-01-28 04:50:08'),
(1097, 60, '2B7FpwbahPnQJLY83Sb4qZl02jea78V7', '2022-01-28 04:57:00', '2022-01-28 04:57:00'),
(1098, 1, '3QSfPFu0ZburAFmkJqOWQ6QDw7CKqXoL', '2022-01-28 10:48:53', '2022-01-28 10:48:53'),
(1100, 1, 'AgdQQHbyfdlr9Scs1uK29hG4Jz2k0YqH', '2022-01-28 13:09:29', '2022-01-28 13:09:29'),
(1101, 1, 'XzCeHLmCTLOMeyzugVoTZ8knmHUE9ea0', '2022-01-28 14:55:07', '2022-01-28 14:55:07'),
(1102, 1, 'qnSJF2ghA21VuQ3WgTE7ugxaT24FKyK2', '2022-01-28 14:56:11', '2022-01-28 14:56:11'),
(1103, 1, 'NOQACVFVdfXxfjNzmKtZzdgCG7QHqF43', '2022-01-28 20:08:47', '2022-01-28 20:08:47'),
(1105, 1, 'sbWvReNAQJIc4uwIt7l5UIVEv9VpIKub', '2022-01-28 22:03:23', '2022-01-28 22:03:23'),
(1106, 1, 'XwNZsa4om5PWSmt54Bu1WRmC2mwtYvS6', '2022-01-28 22:10:56', '2022-01-28 22:10:56'),
(1107, 1, '29hDMzfe0PYsxyJtCJXjcoyTfb1TqgPT', '2022-01-28 22:31:06', '2022-01-28 22:31:06'),
(1108, 1, 'QrpPgMKybkKQ5xxE20zHXg4L8h72swBI', '2022-01-28 22:36:37', '2022-01-28 22:36:37'),
(1109, 1, 'n92Ofq1UzfXsR1KR0mIFztF2pA4kQewM', '2022-01-28 22:43:44', '2022-01-28 22:43:44'),
(1110, 1, 'E6WEW04Pm6mAfnPkHwFD24bbW49jeS4r', '2022-01-28 22:46:40', '2022-01-28 22:46:40'),
(1111, 1, 'oyUQfYJSI7PZ0fxCTXl1Pk7sVQ953mOT', '2022-01-29 10:45:39', '2022-01-29 10:45:39'),
(1112, 1, 'Ps5QIAP5ZqYLJBncHaClK4WaNW8yckpn', '2022-01-29 11:07:52', '2022-01-29 11:07:52'),
(1113, 1, '2eVBKfiGcMgOmwsjArsPzuNWuYUp6Mnn', '2022-01-29 11:58:20', '2022-01-29 11:58:20'),
(1114, 1, 'eWZPcbPSOqHEUbcupSkooPqCgrPr06Ms', '2022-01-29 14:21:10', '2022-01-29 14:21:10'),
(1115, 1, 'RQ9leprTdJEEgJ2PEnYsSb3xNCLocpMb', '2022-01-29 15:37:47', '2022-01-29 15:37:47'),
(1116, 1, 'GHKoN5sCMC54sGKYY4b7YbmUmKEdRHwI', '2022-01-29 16:28:20', '2022-01-29 16:28:20'),
(1117, 1, 'v47PR5g19InbWQ14hhm8oXPgjHKWAIUE', '2022-01-29 18:15:24', '2022-01-29 18:15:24'),
(1118, 1, 'umQMHtKKbXueaxUQVUkU5MKQ3SHvx0vm', '2022-01-29 18:28:20', '2022-01-29 18:28:20'),
(1119, 1, 'OyHqwCwzRrmKu4Y8sVi6Ci1j9TjoytKK', '2022-01-29 21:16:23', '2022-01-29 21:16:23'),
(1120, 1, '1pqUnixJTKJQVeAlplhpc0CQYEEhcBH6', '2022-01-29 23:15:29', '2022-01-29 23:15:29'),
(1121, 1, 'sZmwvPDWXbPiIRDjAcAqmdpBOypEbNjf', '2022-01-30 03:47:21', '2022-01-30 03:47:21'),
(1122, 1, 'jLKJPL4TzjfSzHDd0VfMrRqlM2tCIKWd', '2022-01-30 10:04:24', '2022-01-30 10:04:24'),
(1123, 1, '9bHlZTHOk3gZIlGt2QzdvCUZJqiGpFeJ', '2022-01-30 11:59:46', '2022-01-30 11:59:46'),
(1124, 1, 'zfltA6ZmKoV5rez38RATscdds95lpoVe', '2022-01-30 16:16:59', '2022-01-30 16:16:59'),
(1125, 1, 'eVH0wBWoffdjWJP0MmP4TQXFewpnsnDr', '2022-01-30 16:22:11', '2022-01-30 16:22:11'),
(1126, 1, 'gTdKiPkDMF32aBTA90fijafhgT2HXit2', '2022-01-30 17:34:46', '2022-01-30 17:34:46'),
(1127, 1, 'RohvA1AUGYaAPlaYMyQvtLFcuDqX0HDv', '2022-01-30 18:11:20', '2022-01-30 18:11:20'),
(1128, 1, 'H0O24UC6nohpikbRx2ryO3hzncIM2yvh', '2022-01-30 19:02:15', '2022-01-30 19:02:15'),
(1129, 1, 'zZ5niIxOYtfqX9g1NbCc4xo0hI4z3avY', '2022-01-30 22:33:55', '2022-01-30 22:33:55'),
(1130, 1, 'Ve82XooFVzZX0ghDyCLKvXUpXzvKPrb4', '2022-01-31 12:12:33', '2022-01-31 12:12:33'),
(1131, 1, 'oCLCAUD4bT9H8AQE5Wk6EjkNLCKUujib', '2022-01-31 12:50:54', '2022-01-31 12:50:54'),
(1132, 1, 'ldX9iybfrHVJ2ARKIevGUz7BcTVT2WbT', '2022-01-31 16:43:51', '2022-01-31 16:43:51'),
(1133, 1, 'ZbQBy7d3EddFf0p217CsrvBUtBr8usQs', '2022-01-31 17:16:02', '2022-01-31 17:16:02'),
(1134, 1, 'g7BSEn1LoJCyKQsFMlTtOrX7jFHCR8dz', '2022-01-31 17:30:24', '2022-01-31 17:30:24'),
(1136, 1, 've3wBqB8A5mNIpPZAnlEeThNeEW0n7pm', '2022-01-31 20:11:29', '2022-01-31 20:11:29'),
(1137, 1, 'WfE3y9XkLFEtjEhwmszmi33xb2N8hJmM', '2022-02-01 09:55:47', '2022-02-01 09:55:47'),
(1138, 1, 'qb1mDYwjdNWoNDvdBngQAYro3NMRgNYA', '2022-02-01 10:48:34', '2022-02-01 10:48:34'),
(1139, 1, '3Hl4125JNqLdjGBB9NeCKZpUzsf8axff', '2022-02-01 12:12:10', '2022-02-01 12:12:10'),
(1140, 1, '9pEQr1HS9Pl78ZgIeqGisS1Dx5Af0HNh', '2022-02-01 12:20:57', '2022-02-01 12:20:57'),
(1141, 1, 'iTDX8TOwn0AsUWGZtfvHBI7BVKx6tvBv', '2022-02-01 13:14:10', '2022-02-01 13:14:10'),
(1143, 1, 'cAuo3VImaxuqQStnlnj5xHeXXrwGUWWI', '2022-02-01 18:39:52', '2022-02-01 18:39:52'),
(1144, 1, 'tCmcVzFpNDURQL3wo6PFPBVOFCdUFdfP', '2022-02-01 21:06:24', '2022-02-01 21:06:24'),
(1145, 1, '6dmFB2kaFMPZ9l1QnJy3xBbFfNFd6uOH', '2022-02-02 02:16:43', '2022-02-02 02:16:43'),
(1146, 1, 'TAMJlC6qdDOeA54hyDGkcJLtOCCTO8w9', '2022-02-02 02:36:40', '2022-02-02 02:36:40'),
(1147, 1, 'RNP0KnDu9utpnE9vzArf4PY9phBKAx1P', '2022-02-02 10:10:19', '2022-02-02 10:10:19'),
(1148, 1, 'z26aIW4lRJaZ5w9Olo0ZT0J6p0JkGigS', '2022-02-02 10:12:59', '2022-02-02 10:12:59'),
(1149, 1, 'ty8BZgLLej0fK3CvcCj8eoOs2cMOU0rB', '2022-02-02 10:54:57', '2022-02-02 10:54:57'),
(1150, 1, 'Yv2Zz8zjAEWHJ9kXUhmeCUr0j3ffnteG', '2022-02-02 12:57:05', '2022-02-02 12:57:05'),
(1151, 1, 't2YPqi6HlhgUb1z0uTEEyuPCPKkqyjE2', '2022-02-02 14:27:57', '2022-02-02 14:27:57'),
(1152, 1, 'ZLPt9qwwGnFhnZBa0EwH0u1dBx9WypE4', '2022-02-02 14:56:23', '2022-02-02 14:56:23'),
(1155, 1, 'ZUg7JUWfjXk5ffd8QGDryRN37H7p82BD', '2022-02-02 23:32:23', '2022-02-02 23:32:23'),
(1156, 1, '50jOAgiQSO2aWiIQyb7e6ZXmsnGzoIoJ', '2022-02-02 23:44:01', '2022-02-02 23:44:01'),
(1157, 1, 'dK8FyQqbVpHmTH5hYUvnOLqZzHhFiKUN', '2022-02-03 10:10:10', '2022-02-03 10:10:10'),
(1158, 1, '43xTabMj71NRT8RXT6dgCCXxd4bAWncC', '2022-02-03 11:25:28', '2022-02-03 11:25:28'),
(1159, 1, 'jNG1E2BTgHTfwRYIJmdYj573h1GhRNgm', '2022-02-03 11:50:44', '2022-02-03 11:50:44'),
(1160, 1, '4jmShbTCiOoGwuRo6wOlqgRPmRQEh2o9', '2022-02-03 16:25:37', '2022-02-03 16:25:37'),
(1162, 1, '9Qra5sMzD6gRQSBnSZGWWk6OI5usRtwe', '2022-02-03 18:50:15', '2022-02-03 18:50:15'),
(1163, 1, 'MTSMwy4E0SNC2AnGcM0MQrCxd58oBdVu', '2022-02-03 21:06:08', '2022-02-03 21:06:08'),
(1164, 1, 'mOdD8Gazq8h5njAm7Q5fAkABLX9dXt9l', '2022-02-03 22:10:07', '2022-02-03 22:10:07'),
(1165, 1, 'aNtxn5wT8pwo3Dwxod5lCmQm1WRWPCDy', '2022-02-04 12:50:19', '2022-02-04 12:50:19'),
(1166, 1, 'aEDt2Ugi5mdsoQHlZQvIGVRqZsVPQVNy', '2022-02-04 16:27:45', '2022-02-04 16:27:45'),
(1167, 1, 'IeknwoeroDj3aUnIqJ59Urnj6bcjWzLP', '2022-02-04 17:40:36', '2022-02-04 17:40:36'),
(1168, 1, 'tVKFcTbpcHv8LuTq3AihVMnu7y11BHyR', '2022-02-04 20:05:15', '2022-02-04 20:05:15'),
(1169, 1, 'R3NbZReV7jkJ2tmxDLMwMfHtqXIl37tw', '2022-02-04 20:38:22', '2022-02-04 20:38:22'),
(1171, 1, 'tqrBe62s6ZfTMYeejCnVfGUJpyZvuzCg', '2022-02-04 21:55:20', '2022-02-04 21:55:20'),
(1172, 1, 'zS3iSGBr5ey4aq77dS3vhH8KTWupiau2', '2022-02-04 21:58:49', '2022-02-04 21:58:49'),
(1173, 1, 'YVUrtWRMEkn6IazCT5X0zOyI1kyGYfUV', '2022-02-04 22:37:35', '2022-02-04 22:37:35'),
(1174, 1, 'JJujRkoJr2Z3XvnE0xojdqKJXo70zBFM', '2022-02-04 23:23:17', '2022-02-04 23:23:17'),
(1175, 1, 'rXtPA9WvK84rsQo8HPcFLP7YnQbWBJUV', '2022-02-05 00:28:31', '2022-02-05 00:28:31'),
(1176, 1, 'B2M90snoHp5CToDFdudBIKs5RKzYuMEp', '2022-02-05 12:04:38', '2022-02-05 12:04:38'),
(1177, 1, 'ZlZ46TEAfA51pW56gmAaurO9Ck079l8u', '2022-02-05 15:50:49', '2022-02-05 15:50:49'),
(1178, 1, 'fRsyiGfk3U8e5nlTLihQY52ZnS2phSiN', '2022-02-05 17:38:34', '2022-02-05 17:38:34'),
(1179, 1, '6y6HJqotiVYcPCwRvG8EkjnT8LQrsyXN', '2022-02-05 19:51:49', '2022-02-05 19:51:49'),
(1180, 1, 'R1j29RcZerMSJXcGtEPa2oaDUoxdFV0E', '2022-02-05 23:24:11', '2022-02-05 23:24:11'),
(1181, 1, 'lhnjwxaWPpWu16j4jUU0AW9pqf4mp2UW', '2022-02-06 02:48:11', '2022-02-06 02:48:11');
INSERT INTO `persistences` (`id`, `user_id`, `code`, `created_at`, `updated_at`) VALUES
(1182, 1, 'EyJpVJX0ef5o2kWn0RShQimZMyvLzkvD', '2022-02-06 03:09:45', '2022-02-06 03:09:45'),
(1183, 1, 'IpZt5LnIOOb8TVY9IflEPMdCAoJRkDvk', '2022-02-06 07:52:51', '2022-02-06 07:52:51'),
(1184, 1, 'Ai022svCIb1hCmK5RI8Xk7g0GgULoJ8g', '2022-02-06 12:48:46', '2022-02-06 12:48:46'),
(1185, 1, 'ipVPlT8Os8tVP6HlLtg3oqwgu7nyMXK1', '2022-02-06 14:19:51', '2022-02-06 14:19:51'),
(1186, 1, 'fmNNz55Q5fRVTrsg9ExozslxRluOYsbs', '2022-02-06 16:52:36', '2022-02-06 16:52:36'),
(1187, 1, '8Wzv6smgsDF6g0s6imQlxcaiqxWV1UI1', '2022-02-06 20:51:40', '2022-02-06 20:51:40'),
(1188, 1, 'DfjTcXdI2gvRePoCQBE4Qrodugooj78f', '2022-02-06 23:43:44', '2022-02-06 23:43:44'),
(1189, 1, 'z4T6NPMnvT3N9cbXz46C3KgFx1TqhjEp', '2022-02-07 07:58:07', '2022-02-07 07:58:07'),
(1190, 1, 'riroLupq3tEHWrllZoX70uf1xY79jdBE', '2022-02-07 09:58:49', '2022-02-07 09:58:49'),
(1191, 1, 'SzWripoCGMmD9TTAujiqCamZnnMntgTD', '2022-02-07 10:56:30', '2022-02-07 10:56:30'),
(1192, 1, '83gbIDN3v0Aw1mNvzK7E7DAY8HjBmNTk', '2022-02-07 11:05:51', '2022-02-07 11:05:51'),
(1193, 1, 'i0u4hwtFYUboFXsb58PtycIKCYf0sKe7', '2022-02-07 11:26:31', '2022-02-07 11:26:31'),
(1194, 1, 'tSYVArpdJ5oikePXZbqqsrA1c0fDSyQi', '2022-02-07 11:44:46', '2022-02-07 11:44:46'),
(1195, 1, 'fA9YZH14F04XNbxIKHA1MbPnwgbSK5Is', '2022-02-07 16:06:56', '2022-02-07 16:06:56'),
(1196, 1, '4HIImOe0epxjVs5nJWMvtTlEPXLmXY7x', '2022-02-07 16:20:42', '2022-02-07 16:20:42'),
(1197, 1, 'QiuG8CpTrLURws611oI1Xjcivyn7ECo4', '2022-02-07 17:11:25', '2022-02-07 17:11:25'),
(1198, 1, 'OZFMWjRqRKtolO73FiCfRZfjY3neg8Jz', '2022-02-07 17:40:15', '2022-02-07 17:40:15'),
(1199, 1, 'LGLx7bDzearCHrQiyYn1VAG8A3Pnb8le', '2022-02-07 20:30:34', '2022-02-07 20:30:34'),
(1200, 1, '3g7tJGXqbzjHtYRJcEqNwkIlUzEmZYLM', '2022-02-07 21:07:34', '2022-02-07 21:07:34'),
(1202, 1, 'OoiRDlPnb5MebvZS21YR3fQBgrkAzVpc', '2022-02-08 15:31:47', '2022-02-08 15:31:47'),
(1203, 1, '0TIhMiSMa6MkF5M6XDF6CnXwUETnL4QZ', '2022-02-08 17:16:30', '2022-02-08 17:16:30'),
(1204, 1, 'F4zyVD5C6416X0lCCyCWLFBYsh7PhZMz', '2022-02-08 18:36:19', '2022-02-08 18:36:19'),
(1205, 1, 'QIj7lL2gJ21BhGQ8L8MC2U25rBF4kxsg', '2022-02-08 18:54:37', '2022-02-08 18:54:37'),
(1206, 1, '8xD7Dt7SmfxP27ZjKcs83KWerQP9Plql', '2022-02-08 22:22:11', '2022-02-08 22:22:11'),
(1207, 1, 'MyMmSNhJXtyczm3wFBZu45yT7K6e1teE', '2022-02-09 00:20:44', '2022-02-09 00:20:44'),
(1208, 1, 'bCWTIthoRxEjyGfSNl6Gz1jC5f6kw9rL', '2022-02-09 00:54:40', '2022-02-09 00:54:40'),
(1209, 1, 'zK4wiuqiQVlYxSLL1DfsS8gzKKD8q9x7', '2022-02-09 09:30:34', '2022-02-09 09:30:34'),
(1211, 1, 'xOROtQqvs6cCtRqSQBG2OfNnvFNCts9T', '2022-02-09 14:37:37', '2022-02-09 14:37:37'),
(1212, 1, 'YiYVxwL2uWYpfscATOeUiXu6GzxzQOXA', '2022-02-09 15:44:45', '2022-02-09 15:44:45'),
(1213, 1, 'qCaj9luVkbajtphCliYZuUHETz8KLU14', '2022-02-09 16:59:48', '2022-02-09 16:59:48'),
(1214, 1, 'WSQID4Z8qV5qDbRYh1k6YuAmOjDYDFqT', '2022-02-09 21:50:12', '2022-02-09 21:50:12'),
(1215, 1, '3KsRGJVHDSFxVuW7PvicOUBycqyA4AMP', '2022-02-10 01:33:38', '2022-02-10 01:33:38'),
(1216, 1, 'CbT7tglK5izcJJwznswn10sfm9qKQS5b', '2022-02-10 02:38:53', '2022-02-10 02:38:53'),
(1217, 1, '0rzuz3mhstOTmBLrx3HQErHc03r8jQ65', '2022-02-10 09:41:49', '2022-02-10 09:41:49'),
(1218, 1, 'dweiQbKtI4nmebiIwEmLgTuPnZ744MYs', '2022-02-10 10:11:10', '2022-02-10 10:11:10'),
(1219, 1, 'wKCsQNd68BYzVvLf62fjpuevVh5JCsnl', '2022-02-10 11:22:22', '2022-02-10 11:22:22'),
(1220, 1, 'PGkB8MW6euEBMbq717aQFAPOSU8LrN6R', '2022-02-10 12:00:20', '2022-02-10 12:00:20'),
(1221, 1, 'TYV06mnL8crNyu2j9TCa0Cqw2OJGoQgD', '2022-02-10 15:53:22', '2022-02-10 15:53:22'),
(1222, 1, 'XWF4stdQy4An21n0qt5VyqujYveVfn8r', '2022-02-10 17:09:38', '2022-02-10 17:09:38'),
(1223, 1, 'lwpWaJ82FLC6bLAj47yRDckpI5AeJPpH', '2022-02-10 17:45:28', '2022-02-10 17:45:28'),
(1224, 1, 'WcREKOmOHblReb1mWLj7PtKgErPILpIX', '2022-02-10 18:45:11', '2022-02-10 18:45:11'),
(1227, 1, 'QthNaSySvJgGq3R3ctHDzKgi2InYppCH', '2022-02-10 22:51:27', '2022-02-10 22:51:27'),
(1228, 1, 'G3sjEX53ASNzeadSG83dyvZt40rABAIw', '2022-02-11 00:10:33', '2022-02-11 00:10:33'),
(1229, 1, '7W49CUX6IOYrTiuYM3drRRAcGOkiCAH4', '2022-02-11 04:22:08', '2022-02-11 04:22:08'),
(1230, 1, 'hkx4S7pPinrlBsMnT2TGMOUPw8MobAVV', '2022-02-11 15:28:29', '2022-02-11 15:28:29'),
(1231, 1, 'htRGaYLOAZulWOZdjVJk6EmxVrPimt2M', '2022-02-11 15:54:10', '2022-02-11 15:54:10'),
(1232, 1, 'WYwpgTgiBgnZTWSRUeg0LoLsUZGznNZc', '2022-02-11 16:06:11', '2022-02-11 16:06:11'),
(1233, 1, 'Ctzq2vpqBm8eFcgu0ho5Gn6hdLHSTGtI', '2022-02-12 01:02:06', '2022-02-12 01:02:06'),
(1234, 1, 'hRPIea3N4hLIJ1XylCFA6WhooKTWQOmj', '2022-02-12 02:31:59', '2022-02-12 02:31:59'),
(1235, 1, 'FMoS8XNTgXZAAT2MdiOeHsT0cBBFyfxU', '2022-02-12 04:08:37', '2022-02-12 04:08:37'),
(1236, 1, 'ncVMT1AGDsyozTJde1yivIl9oZp9yicz', '2022-02-12 11:48:41', '2022-02-12 11:48:41'),
(1237, 1, 'HJz5gNpza2UMBkCwgRms7XpO1m7En0AN', '2022-02-12 18:20:47', '2022-02-12 18:20:47'),
(1238, 1, 'UIDLUnEPA68oyfLhC3hKyZThFTKJxINe', '2022-02-12 20:15:48', '2022-02-12 20:15:48'),
(1240, 1, 'bPLK993A913sKxfKc80N95bxrASquaAw', '2022-02-12 23:06:28', '2022-02-12 23:06:28'),
(1241, 1, 'ZD5Ul2Ubc4LOTrQCJHmMb73ZjLv0rn5Q', '2022-02-12 23:58:58', '2022-02-12 23:58:58'),
(1242, 1, 'pRGsdTZKUvKOyXy72L5o1POcrHKPlvEc', '2022-02-13 00:13:48', '2022-02-13 00:13:48'),
(1243, 1, 'hkSjuPXAuD8T30RDeWzIBCG595si17IA', '2022-02-13 02:21:59', '2022-02-13 02:21:59'),
(1244, 1, 'g9mqhSLGhsPDAT4UgTBRScllhkltIlam', '2022-02-13 15:52:17', '2022-02-13 15:52:17'),
(1245, 1, 'DEK89brNXdlLucH7qeLJF8DXYUeO5RBn', '2022-02-13 16:51:07', '2022-02-13 16:51:07'),
(1246, 1, 'ds3SpOP0kNRQMclbTV2kvnauDv22km3A', '2022-02-13 21:07:11', '2022-02-13 21:07:11'),
(1247, 1, 'MyDRz7qeBLE3Xxrly3uiI3PTBM0rGwev', '2022-02-13 23:34:45', '2022-02-13 23:34:45'),
(1248, 1, 'LHq5UdfExs6rJIiZICmejUPIOZKUhfPR', '2022-02-14 00:04:48', '2022-02-14 00:04:48'),
(1249, 1, 'mUUocKMKDRRQaZcgYxfYCC1su8SSDPwr', '2022-02-14 13:07:46', '2022-02-14 13:07:46'),
(1250, 1, 'v837LkeidbYiNpBswhWdCg88WUOcVAOB', '2022-02-14 18:26:15', '2022-02-14 18:26:15'),
(1251, 1, '3rMe4R2FbMeXbbzGMAc4vGxZFe4ZKs91', '2022-02-14 20:04:26', '2022-02-14 20:04:26'),
(1252, 1, '7g7K25p0stg2RrWyuzb9Jr4L1L9VNfRQ', '2022-02-14 21:30:49', '2022-02-14 21:30:49'),
(1253, 1, 'X6KeETLxRzSuxqVMm6nEdBN6fsuQj3Um', '2022-02-14 22:01:51', '2022-02-14 22:01:51'),
(1254, 1, '23MWXSc0vapP5hNV0HiwBOf8X9054bBl', '2022-02-14 22:59:17', '2022-02-14 22:59:17'),
(1255, 1, 'elgKfViUDm7lL4vpww8xz6NBYlKYAGgE', '2022-02-15 03:51:26', '2022-02-15 03:51:26'),
(1256, 1, '8FRpP6CU05P6GS26LLojfbE3itLNxPog', '2022-02-15 05:53:33', '2022-02-15 05:53:33'),
(1257, 1, 'mdPFCRwGkzF9SS3ViNWqK6d42kxouYbf', '2022-02-15 10:19:37', '2022-02-15 10:19:37'),
(1258, 1, 'tLJ1sXzXS4vAYZwTNbIHGZRFtmsBoGVH', '2022-02-15 10:52:57', '2022-02-15 10:52:57'),
(1259, 1, 'YNcMrurX6geAjWIlNoyj5HxLZmTV0bzK', '2022-02-15 11:53:47', '2022-02-15 11:53:47'),
(1260, 1, 'niROQqtdYxazTnv6MRL4pofs6MUyNG7S', '2022-02-15 14:56:33', '2022-02-15 14:56:33'),
(1261, 1, 'Ej8OtENTKBMw4hGD0UsEUGFwd9SxQKT3', '2022-02-15 15:41:16', '2022-02-15 15:41:16'),
(1262, 1, 'gCZK851ZclzIVrcv54q9SaCCn3nXBug7', '2022-02-15 17:13:55', '2022-02-15 17:13:55'),
(1263, 1, 'QrPLrEcfyt2pGyr4MTW9UdFKTXCkdAlZ', '2022-02-15 17:44:50', '2022-02-15 17:44:50'),
(1264, 1, 'pZny8RAc5OrlpvO2MRmphrfK9W2K0jyN', '2022-02-16 01:44:59', '2022-02-16 01:44:59'),
(1265, 1, 'HLWnbGw52SdnDgREp8UfxnWD4LXDv2G6', '2022-02-16 01:50:34', '2022-02-16 01:50:34'),
(1266, 1, 'NDL3xQRWYAROCersnYxdI3Et7ptDtXxT', '2022-02-16 04:53:13', '2022-02-16 04:53:13'),
(1267, 1, 'UwIMKr0v564ItL4VzymuVZ2J5zaHssTV', '2022-02-16 06:03:06', '2022-02-16 06:03:06'),
(1268, 1, '7ovGeMh2QVlcq04HyJEKYSR4JF21VCwk', '2022-02-16 07:51:58', '2022-02-16 07:51:58'),
(1269, 1, 'oGXRobCdCbx94pesPde1Qub4dsqL8htz', '2022-02-16 09:52:49', '2022-02-16 09:52:49'),
(1270, 1, 'LqzR4l8aCaLEz0Kk3iFva4J87PTFTgMD', '2022-02-16 11:23:31', '2022-02-16 11:23:31'),
(1271, 1, 'f0DcwP9RjXyRMANib3jauq1gzfjv2LcL', '2022-02-16 12:48:12', '2022-02-16 12:48:12'),
(1272, 1, '3ZBVPLosv8luP75NCo57aeEaenBa2gaO', '2022-02-16 17:22:25', '2022-02-16 17:22:25'),
(1273, 1, '7qGYGxwR83iEsdWZ9izzeoAnTi1t6QtJ', '2022-02-16 19:12:59', '2022-02-16 19:12:59'),
(1274, 1, 'cblT6Iqvr8miGryNV2xEcNJqMhDtLBQF', '2022-02-16 19:25:10', '2022-02-16 19:25:10'),
(1275, 1, '7KIcmyUVZOTKAjueOYg4yIDdM43C9Qr1', '2022-02-16 19:39:00', '2022-02-16 19:39:00'),
(1276, 1, '5t2ixXppqlheWALLverdMyfIj1RTdjzC', '2022-02-16 21:26:43', '2022-02-16 21:26:43'),
(1277, 1, 'lSvsznrZzMjHBEMxMl2hVZgGBqpF4jN6', '2022-02-16 23:48:04', '2022-02-16 23:48:04'),
(1278, 1, 'YQ0mkqn855wmNzNhPXx0V8gct9zVFj8V', '2022-02-17 01:14:23', '2022-02-17 01:14:23'),
(1279, 1, 'Knin90niC2qNF4zP4Ylt9ZfuH1XEezff', '2022-02-17 11:45:41', '2022-02-17 11:45:41'),
(1280, 1, 'DbRkju1gg99terkYtAuTUIO3Cn6ch3Fz', '2022-02-17 16:44:37', '2022-02-17 16:44:37'),
(1281, 1, 'OuWoBoabtBrAETt7lWhlHOvK88aicOEV', '2022-02-17 16:55:23', '2022-02-17 16:55:23'),
(1282, 1, 'ucGjAUzhQ3wvguWzRrxWLAqHTxOilybh', '2022-02-17 18:08:18', '2022-02-17 18:08:18'),
(1283, 1, 'Mb8pEMVsbxynuzkiN3zwVQIAoWEuXaIP', '2022-02-17 20:47:01', '2022-02-17 20:47:01'),
(1284, 1, 'CLJQiA1L7Tt6bvsHzOQnNRlkfBUe33Kw', '2022-02-17 22:51:06', '2022-02-17 22:51:06'),
(1285, 1, 'xVqovBeMWunJrYEXzX3LtVKJyVdFH9uO', '2022-02-18 10:23:50', '2022-02-18 10:23:50'),
(1286, 1, '4MllpW3XBEqm55VoSDQ6LOhOcZBKy59W', '2022-02-18 17:17:50', '2022-02-18 17:17:50'),
(1287, 1, '1Y2Mzi9S4uoKZf8eOtq5Mj8ydVptsjST', '2022-02-18 18:43:41', '2022-02-18 18:43:41'),
(1288, 1, 'zMzdzGN8A25LL8TsEueShEO79ZWHRyxb', '2022-02-18 20:29:59', '2022-02-18 20:29:59'),
(1289, 1, 'Yi3iJWfQiDhUBJcuBGikTJEXq75naMZr', '2022-02-18 20:46:50', '2022-02-18 20:46:50'),
(1290, 1, 'S1b75alHcY4ZlWllIqpCjeUwitcQJJk5', '2022-02-18 23:34:46', '2022-02-18 23:34:46'),
(1291, 1, 'Y1N0NHiFYFRRW3gQew1m1ieT2xgfXA3q', '2022-02-19 03:00:04', '2022-02-19 03:00:04'),
(1292, 1, 'B41VRP5adAxrHZ2DUyrCQEdr2WjLIk5p', '2022-02-19 03:35:15', '2022-02-19 03:35:15'),
(1293, 1, 'HsHwvgGV1h3ZfVe7KF7vmCqYxmgtZDjf', '2022-02-19 03:52:46', '2022-02-19 03:52:46'),
(1294, 1, 'mgM4NyH8V3CNdo385P526QN6KZtBbM34', '2022-02-19 12:35:57', '2022-02-19 12:35:57'),
(1295, 1, 'qGhs3rYQNiGvV8QBUtTrns9vf3lVkYng', '2022-02-19 16:50:06', '2022-02-19 16:50:06'),
(1298, 1, '9XnNcLlwsTUAFb1ZyYyE2K1S6eKjoSaN', '2022-02-19 22:44:37', '2022-02-19 22:44:37'),
(1300, 1, 'BKreTYJDUJGrlr2hGVXUFcLXBJJTUOgV', '2022-02-20 00:32:29', '2022-02-20 00:32:29'),
(1301, 1, 'lDtHdtBfIf54tqvoFVEQi9miRWYcNe0p', '2022-02-20 01:08:52', '2022-02-20 01:08:52'),
(1302, 1, 'wjKxQOOQXbR1nnvY8qmB4JSZ5dNt9o3C', '2022-02-20 07:55:23', '2022-02-20 07:55:23'),
(1303, 1, 'JGSE00DLeQC1TCuEbRHfGbFci2JZlPyu', '2022-02-20 11:34:26', '2022-02-20 11:34:26'),
(1304, 1, 'kK4HaI4wdypJ7MTVcUvBMiNyxD1iuqbt', '2022-02-20 13:42:22', '2022-02-20 13:42:22'),
(1305, 1, 'M6oBD0YoMgeD1x65akqBFz7mUwzlGzDy', '2022-02-20 18:33:10', '2022-02-20 18:33:10'),
(1306, 1, '6lhD6L8fWsqg0tXcOpjO0KyztdIOngSV', '2022-02-20 18:37:48', '2022-02-20 18:37:48'),
(1307, 1, '2u7afOn5KEennxJPaYUnActMBRaMNNTO', '2022-02-20 19:14:42', '2022-02-20 19:14:42'),
(1308, 1, 'llqKgzvPdeX095YjB7eOT3UMKDegUFJT', '2022-02-20 21:28:48', '2022-02-20 21:28:48'),
(1309, 1, 'NIOCYFporab36LytEGKeB9KptDw98oRp', '2022-02-21 01:49:22', '2022-02-21 01:49:22'),
(1310, 1, 'zfyjeZPKev04qBO5k8rrAvjZOqbwWQlF', '2022-02-21 06:22:22', '2022-02-21 06:22:22'),
(1311, 1, 'tpvtq6SMnZpSOAsFouISN1iVNQAJFuG4', '2022-02-21 06:36:35', '2022-02-21 06:36:35'),
(1312, 1, 'OuxMtvrDcvlWNzd5WMvrmVwGlLzUFSOe', '2022-02-21 11:00:14', '2022-02-21 11:00:14'),
(1313, 1, 'OKrIjRmdQmcHGGOSv7Jhqo1JplTpMzdx', '2022-02-21 11:01:51', '2022-02-21 11:01:51'),
(1314, 1, 'ft0fa0YzqPtqHZqtXpUHRpiTGhBiENoQ', '2022-02-21 11:07:28', '2022-02-21 11:07:28'),
(1315, 1, 'Od4gwXg4qCzU7Z8uLhoMO0kM38TJDg6Y', '2022-02-21 19:28:21', '2022-02-21 19:28:21'),
(1316, 1, 'jaAVXvtpH3N6K0drkiV17coGSDc2BoVE', '2022-02-21 19:53:47', '2022-02-21 19:53:47'),
(1317, 1, 'nhpFpWiTK6yBmEswUFloOAbW3OQcON3o', '2022-02-21 20:47:37', '2022-02-21 20:47:37'),
(1318, 1, 'LMFu2qdLYtfWi0sbHTaKCeq3TiBOsOkf', '2022-02-21 21:16:01', '2022-02-21 21:16:01'),
(1319, 1, '3h00RmLXiiJp46UJkB5XsY3psMqINHym', '2022-02-22 00:05:59', '2022-02-22 00:05:59'),
(1320, 1, 'Z8FxrTT4SFiUOUbVENOUUoC7QJo5dO1T', '2022-02-22 00:23:35', '2022-02-22 00:23:35'),
(1321, 1, 'ZxrnxUo2kr7Kpomy1o2LbMKhGp4OucaL', '2022-02-22 01:59:18', '2022-02-22 01:59:18'),
(1322, 1, 'kIEmyoNyiEIPkqlC52obLjWaxwk6ffIx', '2022-02-22 06:16:23', '2022-02-22 06:16:23'),
(1323, 1, 'osngs1sei5hmmzTTfroowLNf7UHkyzGA', '2022-02-22 06:31:05', '2022-02-22 06:31:05'),
(1324, 1, 'h4ARANeKvidMagzpXiDpMNIlsVA15Tus', '2022-02-22 08:04:38', '2022-02-22 08:04:38'),
(1325, 1, '5IThmLvv6pXuhafknB4OrCR2VdQ0jWd2', '2022-02-22 08:29:12', '2022-02-22 08:29:12'),
(1326, 1, 'Ok4lXgQ2gcpAQtazIRL4Xuo7E7fLiiWp', '2022-02-22 11:54:32', '2022-02-22 11:54:32'),
(1327, 1, 'gPVlb15B7ukUhMOiKUGPyniljF7oQbeZ', '2022-02-22 14:08:53', '2022-02-22 14:08:53'),
(1328, 1, 'LYdzUViX8MpdZTDDZ4YQoxTEtOuI61ZK', '2022-02-22 14:23:04', '2022-02-22 14:23:04'),
(1329, 1, 'xAsqLZe69V5PUjoSGBgVT7oWXkscE6dD', '2022-02-22 15:38:05', '2022-02-22 15:38:05'),
(1330, 1, 'iY1P6yTLurfVHi4sNHMw15lG9tC0lBMV', '2022-02-22 17:32:10', '2022-02-22 17:32:10'),
(1331, 1, '7d0PX96ZPlTGHJGKU1M5PyYpYHTyRZ75', '2022-02-22 17:43:24', '2022-02-22 17:43:24'),
(1332, 1, 'gaBh2QnPDv4Xz2bGKD7gDME0fFw65aRh', '2022-02-22 18:02:33', '2022-02-22 18:02:33'),
(1333, 1, '8ApmUeDm2bdWMNIKnvIzKf8oODBi2Ymx', '2022-02-22 18:21:40', '2022-02-22 18:21:40'),
(1334, 1, 'AXfOr2nuF2vXnfpwGl05LTAmQsKHrDXw', '2022-02-22 18:25:33', '2022-02-22 18:25:33'),
(1335, 1, 'HFuWkTetqr0NhbCCdsEcSe2Xap5aEBtI', '2022-02-22 21:16:49', '2022-02-22 21:16:49'),
(1336, 1, 'eihFNWOF3V5H7LiZiMTRMkntHCTjFF0y', '2022-02-22 23:51:47', '2022-02-22 23:51:47'),
(1340, 1, 'bXhxEYWuvAGqKZO1Lfo5AajBn44DUvxd', '2022-02-23 02:25:01', '2022-02-23 02:25:01'),
(1341, 1, 'OWPMc7QiJqd0aNq6ovQ378EaDW2cdvla', '2022-02-23 02:50:09', '2022-02-23 02:50:09'),
(1342, 1, 'eQ69jtBTWHtWO5r2FpFokUAyuC5BBMbB', '2022-02-23 04:55:10', '2022-02-23 04:55:10'),
(1343, 1, 'gMEjct1gmqu41uf0Z4mRTgNtSG1qN9Qw', '2022-02-23 12:23:53', '2022-02-23 12:23:53'),
(1344, 1, '6hNFDbMGCa3JSJ44NVDJN7NFxmVtJv3I', '2022-02-23 14:09:30', '2022-02-23 14:09:30'),
(1346, 1, 'YUtRTsa5TaLCmNXWrhpDqmM6B68PXJT6', '2022-02-23 14:54:51', '2022-02-23 14:54:51'),
(1347, 1, 'le9FlnE6yJz1fgEZjlWYkVU4khtnd0cf', '2022-02-23 16:15:58', '2022-02-23 16:15:58'),
(1348, 1, 'HPwYXFaApV064gJ9wVmbmyCHRqp0p57k', '2022-02-23 22:24:27', '2022-02-23 22:24:27'),
(1349, 1, 'gPlYpmzUBmBX9vmPk4UFkDY6JEsqjPNg', '2022-02-24 02:31:07', '2022-02-24 02:31:07'),
(1350, 1, 'F8UI7wrxiEoq2xNdA87gNgsOOoOSHQWD', '2022-02-24 06:00:58', '2022-02-24 06:00:58'),
(1351, 1, 'ihQbZ6eyRQkGEQV39Ec4Nv5XpcGRiU3x', '2022-02-24 08:14:19', '2022-02-24 08:14:19'),
(1352, 1, '1Gma5Fety2TlVc2LdOktONqMrb2Q6yGi', '2022-02-24 12:34:41', '2022-02-24 12:34:41'),
(1353, 1, 'mHXZaRvHnTkjpWi1k9Z6ohX9dC152oz7', '2022-02-24 14:12:38', '2022-02-24 14:12:38'),
(1354, 1, 'jI8l2XX9m2iHYJT1kYNm8GK61HBBKNzo', '2022-02-24 16:22:53', '2022-02-24 16:22:53'),
(1355, 1, '027dWNFOBMrKbx30lBLA9m8IenZNEF6i', '2022-02-24 16:46:06', '2022-02-24 16:46:06'),
(1356, 1, 'XuNiH1zMNpmbaPGRp3BYAo7DxzDbgMMs', '2022-02-24 17:16:24', '2022-02-24 17:16:24'),
(1357, 1, 'i8Npo0uE7zAgPryD7LTJKBS5BI1aJ7kR', '2022-02-24 18:08:41', '2022-02-24 18:08:41'),
(1359, 1, 'atoNuQgzfSpm4InD9YVob0UL7Oaugkd6', '2022-02-24 21:37:01', '2022-02-24 21:37:01'),
(1360, 1, 'uFMCIgIcmgvHmqZ8OpYP1CRi9ri57LIf', '2022-02-24 23:41:55', '2022-02-24 23:41:55'),
(1361, 1, 'aV2q3jql2jgf3zkYo7NEewPzVZOF643z', '2022-02-25 00:51:07', '2022-02-25 00:51:07'),
(1362, 73, 'xNsK2P68RVzXj4AoTGCvXZhFTnt2qA6d', '2022-02-25 01:32:14', '2022-02-25 01:32:14'),
(1363, 1, 'vxM4qYx93O7wxS2je4BHBKHUZnuCptnx', '2022-02-25 04:22:30', '2022-02-25 04:22:30'),
(1365, 1, 'PFXQ9W7aTEBbLQvxsbim8t0dchWPCqGy', '2022-02-25 13:12:43', '2022-02-25 13:12:43'),
(1366, 1, 'Z7NEVknhlkHPdIYQC50VDGp4TuZGMe0G', '2022-02-25 13:41:53', '2022-02-25 13:41:53'),
(1367, 1, '80JbiEepvKsm5iTMHWjhvsXL2Atz8Rvn', '2022-02-25 13:41:54', '2022-02-25 13:41:54'),
(1368, 1, 'UbYJp5jnlYoGBWzWIrCviXYEqoh4Z8pS', '2022-02-26 06:00:56', '2022-02-26 06:00:56'),
(1369, 1, 'iJRQtzLChZLFp9wIsCQsLTEqOs22q8Ys', '2022-02-26 12:14:57', '2022-02-26 12:14:57'),
(1370, 1, 'q8oDvWm4aIfWjgLdJsEM4H77I8IQ60XN', '2022-02-26 12:16:41', '2022-02-26 12:16:41'),
(1371, 1, 'FGmrYYpCK1tCcVfIOhb7817RTkoSUDdz', '2022-02-26 17:33:48', '2022-02-26 17:33:48'),
(1372, 1, 'NNULqePITR6k2EjN1ztomeQQ7aWiIq3X', '2022-02-26 17:48:33', '2022-02-26 17:48:33'),
(1373, 1, 'oiQ1cVZ3yOAyJP3NNByftf0N1yNa050J', '2022-02-26 17:58:53', '2022-02-26 17:58:53'),
(1374, 1, 'TysN1bvphrDRaDU6RwMeUHOaNUHgGPnr', '2022-02-26 20:29:53', '2022-02-26 20:29:53'),
(1375, 1, 'DXsf4bdHLLNPH8om794mLXKK3K3oxfnz', '2022-02-26 21:38:03', '2022-02-26 21:38:03'),
(1376, 1, 'uSVqQdEfTfxCkCSxzPr9LFMCpJTYoDtP', '2022-02-26 22:57:53', '2022-02-26 22:57:53'),
(1377, 1, 'mIVk7YOdqqq3zM1kNYRCo6X1W7ATngAU', '2022-02-27 07:28:36', '2022-02-27 07:28:36'),
(1378, 1, 'JU0dwt7IimgwozKqeF5E2XyXfTqvQlpI', '2022-02-27 17:47:45', '2022-02-27 17:47:45'),
(1379, 1, 'JbSJFoJIXqrPCJE13XJiPafNwe059PKs', '2022-02-27 18:11:20', '2022-02-27 18:11:20'),
(1381, 1, 'hdTqWbZHuFSkriC42uLKy6dWciNUahek', '2022-02-27 21:49:59', '2022-02-27 21:49:59'),
(1382, 1, 'crNuSLOzRIZyaF5oedh5aWcNc6hrHCfN', '2022-02-28 01:45:10', '2022-02-28 01:45:10'),
(1383, 1, '2vnT2jVnwoDspprtP5A1cxEAZMnttnPZ', '2022-02-28 04:06:44', '2022-02-28 04:06:44'),
(1384, 1, '7svPHPO4sb6vU9aqRML2X1isuAD6NQEO', '2022-02-28 05:58:12', '2022-02-28 05:58:12'),
(1385, 1, '68dwrG3xFumocbV6t1oyvxuFE3u76FRx', '2022-02-28 06:20:04', '2022-02-28 06:20:04'),
(1386, 1, 'MiQRxr7Svuk80YtFs6rozg2nnEPGxDPH', '2022-02-28 09:35:40', '2022-02-28 09:35:40'),
(1387, 1, 'lHq69SjY0fnEk05apHV26uFX8ptEkS9r', '2022-02-28 10:47:26', '2022-02-28 10:47:26'),
(1388, 1, 'kpTvIbX8gCu2QrYjXYFV89i2n57pY0YH', '2022-02-28 10:49:36', '2022-02-28 10:49:36'),
(1389, 1, 'dGujTxGZIp7jcTUbR76becPytwExjxfk', '2022-02-28 12:11:15', '2022-02-28 12:11:15'),
(1390, 1, 'XdhwJrRGt9Xk22W8flFZv1xI2lu4gFDd', '2022-02-28 14:00:25', '2022-02-28 14:00:25'),
(1391, 1, 'mKQY5KvW6ldowNi8obULaPlDNB4Hb4MK', '2022-02-28 16:38:48', '2022-02-28 16:38:48'),
(1392, 1, 'sOE0kMhLtHphfHnAgbAsXFSJLjRxUklK', '2022-02-28 18:59:41', '2022-02-28 18:59:41'),
(1393, 1, '5ao2tanBR0RPGnqrWh1Zvvm5bqPDp4zV', '2022-02-28 19:12:10', '2022-02-28 19:12:10'),
(1394, 1, '9p3GBjSW7JcS3GDFh2BzZpGOJCEr97cy', '2022-02-28 19:24:57', '2022-02-28 19:24:57'),
(1395, 1, 'oXbpc43vap3wRJBjUPjkVumFAkGDnr5i', '2022-02-28 19:33:21', '2022-02-28 19:33:21'),
(1396, 1, 'lXgXuI0epgVBQmiaClAKy71V1s3i2ZbB', '2022-02-28 19:37:03', '2022-02-28 19:37:03'),
(1397, 1, '9i4oXWKXq9Eujop4gZcq1nEsBW3GLczd', '2022-02-28 19:37:15', '2022-02-28 19:37:15'),
(1398, 1, 'UoC4Gw5pxrkn5JzaLw3uXAZwb1FQ1TmS', '2022-02-28 21:06:13', '2022-02-28 21:06:13'),
(1399, 1, 'Rl5X9ikg2J5iJqW2WoyMcOTvUCHluDNh', '2022-03-01 00:57:12', '2022-03-01 00:57:12'),
(1400, 1, '7J1byvjturNzqvXArNtUG6igHA861Xmm', '2022-03-01 03:11:37', '2022-03-01 03:11:37'),
(1401, 1, 'rqASjAInmBG4cakSrxEkutpm0oHc4tYE', '2022-03-01 04:07:37', '2022-03-01 04:07:37'),
(1402, 1, 't9wCz9bMjofTiKaX4LwuayAPJuRKuaeP', '2022-03-01 06:31:33', '2022-03-01 06:31:33'),
(1403, 1, 't1aPA8AB11s6AbKNN7k2IOnUkvq8khQT', '2022-03-01 08:54:36', '2022-03-01 08:54:36'),
(1404, 1, 'f0zb0UN253XKmgUojXljo3NLjJeCE0Jz', '2022-03-01 09:11:55', '2022-03-01 09:11:55'),
(1406, 1, 'z6KMMl7S9D3Oad7mprDShrloT9V2CjR0', '2022-03-01 14:18:50', '2022-03-01 14:18:50'),
(1407, 1, 'nlZlGxAgJVwRoGsZxKxGaGLIUkDmqHLd', '2022-03-01 15:25:39', '2022-03-01 15:25:39'),
(1408, 1, 'LOUp3rKzaIS4VOMarLdWtmOzcrizVI64', '2022-03-01 16:54:45', '2022-03-01 16:54:45'),
(1409, 1, 'zBqc290ZMAMnPm5EDZbKU9LFALsLEwjj', '2022-03-01 18:28:04', '2022-03-01 18:28:04'),
(1410, 1, 'lDKEdg2uC589yRaP9eXGdW5PWeXQ05HK', '2022-03-01 18:28:43', '2022-03-01 18:28:43'),
(1411, 1, 'Gcnw9KumBfksCmpRRORRuH3oeu5ozqyV', '2022-03-01 18:42:24', '2022-03-01 18:42:24'),
(1412, 1, 'yiTbzbQvQ4DZxivwbTgw9SoYk5G9Lm7U', '2022-03-01 20:08:30', '2022-03-01 20:08:30'),
(1413, 1, 'EpVpdh8libeV3w5RSEIX2lIP8FIwhJbc', '2022-03-01 21:45:23', '2022-03-01 21:45:23'),
(1415, 1, '1S8pfCq7ZmE4XR6MwNW9buOzXs5KElay', '2022-03-02 01:25:21', '2022-03-02 01:25:21'),
(1416, 1, 'VzWXs5WX3oxCukIhmKGEJDL8iUlTuvG9', '2022-03-02 02:06:43', '2022-03-02 02:06:43'),
(1417, 1, '5DvTjqreih0dm3kuCxeBmBt33rJGyO60', '2022-03-02 06:57:10', '2022-03-02 06:57:10'),
(1418, 1, 'kjihVvBLA5lXkKl7m3ZgRXqwnYJCryrc', '2022-03-02 11:33:59', '2022-03-02 11:33:59'),
(1419, 1, '4wWn8GZqhNb8eZEekxCg537QTcmTm7FX', '2022-03-02 15:06:21', '2022-03-02 15:06:21'),
(1420, 1, 'W3ks6zpnCCxvLTb0pEHEGeQgspjWs4f0', '2022-03-02 18:12:08', '2022-03-02 18:12:08'),
(1421, 1, 'DkhnYyBpLvIu0O5olhUeSzXDwmriHyLf', '2022-03-02 23:44:23', '2022-03-02 23:44:23'),
(1422, 1, 'Ku64aKSt5cZioywcZHwTmR4xxvVQoOrk', '2022-03-02 23:52:00', '2022-03-02 23:52:00'),
(1423, 1, 'DKglhiab8nnkhDjul4otrW6tg76zWKNF', '2022-03-03 00:43:41', '2022-03-03 00:43:41'),
(1424, 1, 'yK1D1fPBxflGirPARmuF1zHamJiZe1Ke', '2022-03-03 01:16:06', '2022-03-03 01:16:06'),
(1425, 1, 'r0UaKx4NYNrLWSlusUfGUjdrmrNsOe3T', '2022-03-03 02:14:46', '2022-03-03 02:14:46'),
(1426, 1, 'lBRb8z32oA6Cb2ij9KnPqr6SQHNjTNrN', '2022-03-03 11:24:37', '2022-03-03 11:24:37'),
(1427, 1, 'AnbzrgL3Q6aEMYVOWtvoPwws6LIRMM6Q', '2022-03-03 13:47:41', '2022-03-03 13:47:41'),
(1428, 1, 'JzrQv5ADGtoDnzdI6cXUOv9M9AoDskSk', '2022-03-03 14:18:43', '2022-03-03 14:18:43'),
(1429, 1, 'B0aphz7lWA1Lz89gYrNg9clx218NKSXE', '2022-03-03 18:04:23', '2022-03-03 18:04:23'),
(1430, 1, 'Nk84FsxQ5RxUGOWTxmlhDbsSQ6Q3pkyK', '2022-03-03 19:40:38', '2022-03-03 19:40:38'),
(1431, 1, 'GLvxKliia57B9aKocHXhGCEid4gonJ2T', '2022-03-03 21:59:07', '2022-03-03 21:59:07'),
(1432, 1, '1mESJdm0eEbg2p63C8FvCxwWGHoxVfnf', '2022-03-03 23:37:04', '2022-03-03 23:37:04'),
(1433, 1, 'OS9Aixt491dZ4G4ZoqwCYARxczRs9Dah', '2022-03-03 23:39:57', '2022-03-03 23:39:57'),
(1435, 1, 'VSM9IBmyP9Sg2VEU3vQreGHm93CTXdEv', '2022-03-03 23:55:14', '2022-03-03 23:55:14'),
(1436, 1, 'WoMqMpri9RcX5uIQnOvP4RLRkAA9jn4O', '2022-03-04 03:25:07', '2022-03-04 03:25:07'),
(1437, 1, 'Ew2PXltl9hLKvDWnzyGdpdCvFJhXvjUP', '2022-03-04 08:20:04', '2022-03-04 08:20:04'),
(1438, 1, 'CrpSDI6scT8MmY4gUp630oVVFvq8We39', '2022-03-04 08:36:54', '2022-03-04 08:36:54'),
(1439, 1, 'xMtocXO62PdS6ErumvXAdusXBhUFqGzE', '2022-03-04 16:32:52', '2022-03-04 16:32:52'),
(1440, 1, 'ewr23fVPaYafGPyjafe2XQEZujqnMghJ', '2022-03-04 21:50:33', '2022-03-04 21:50:33'),
(1442, 1, 'hdc66FO09cOar26DYtJAAeUfqMUI1lEw', '2022-03-05 03:40:00', '2022-03-05 03:40:00'),
(1443, 1, 'gJW6tQBspKDdztYYxPIr78AzsyFqRlFR', '2022-03-05 03:47:00', '2022-03-05 03:47:00'),
(1444, 1, 'UQBZoSdYlMC50KdaU3xwqiG8xroyptoi', '2022-03-05 03:47:00', '2022-03-05 03:47:00'),
(1445, 1, 'tZlqMy3nz7z3LffFPkpftnvYMpMvGG3z', '2022-03-05 03:47:00', '2022-03-05 03:47:00'),
(1446, 1, 'XJdCOBiJydtTvj77pcFrnmvS5Qgu6U8Z', '2022-03-05 03:57:06', '2022-03-05 03:57:06'),
(1447, 1, 'EWCNn26N855wUl3eibNAMDBZ3ZlMgN1e', '2022-03-05 07:55:30', '2022-03-05 07:55:30'),
(1448, 1, 'NIg2fE0F1OekyGUPKwlefKJjdne0H1kz', '2022-03-05 08:43:41', '2022-03-05 08:43:41'),
(1449, 1, 'CCYGGRlzRoaI8n8ICYtoGY7qhR0h5482', '2022-03-05 16:32:41', '2022-03-05 16:32:41'),
(1450, 1, 'Xq1xTiP9oYvR28PwLysMnuR28wQydY5N', '2022-03-06 00:59:05', '2022-03-06 00:59:05'),
(1451, 1, 'hi4pNofaLHVMhr3I0exjIy9ZqVFbysiX', '2022-03-06 12:54:32', '2022-03-06 12:54:32'),
(1452, 1, 'c4cw2JOgsMry6AtVIcvPzWSy5ss1FO3n', '2022-03-06 16:24:29', '2022-03-06 16:24:29'),
(1453, 1, 'jq43LENJIZOj4vrpcpLrPprVsqiwAszN', '2022-03-06 17:23:50', '2022-03-06 17:23:50'),
(1454, 1, 'oEcUfHwx4VBpJyia7jShKnuWud5P26wc', '2022-03-07 00:01:09', '2022-03-07 00:01:09'),
(1456, 2, 'oiwvDf71H5EAB8QNa7XWpFC0qzARbtEC', '2022-03-07 01:07:53', '2022-03-07 01:07:53'),
(1457, 1, '5HiLoe9Igo6jEqgZNUML3iSm5FZtkEO1', '2022-03-07 01:13:44', '2022-03-07 01:13:44'),
(1458, 1, '5jft8QyENFrytB9nJfcjdLkOgatpfYy3', '2022-03-07 03:28:53', '2022-03-07 03:28:53'),
(1459, 1, 'xnl9xVWHXFus5kTLowF8pO6MSAT4S4zk', '2022-03-07 06:34:14', '2022-03-07 06:34:14'),
(1460, 1, 'u3WApvGhTAKyqTALE1HrLK1DTISBfIMh', '2022-03-07 09:50:24', '2022-03-07 09:50:24'),
(1461, 1, 'oEbNckWRHyvU9sfc1JoIcCpDfP1x9pK4', '2022-03-07 10:48:43', '2022-03-07 10:48:43'),
(1462, 1, 'X4XHYQkngT6TbWc8GWjNmzKWKxsGcvOJ', '2022-03-07 10:56:23', '2022-03-07 10:56:23'),
(1463, 1, 'oR9Tj7lD6UrMfMVc7RsXA5NHCtRHglCE', '2022-03-07 12:42:09', '2022-03-07 12:42:09'),
(1464, 1, '4KCmDOrVlZflHjPkmb8JjH6iDRpzNvDM', '2022-03-07 16:06:43', '2022-03-07 16:06:43'),
(1465, 1, '3kxLhN1w6h9abuDxgKi1MMC3X9k2XH88', '2022-03-07 16:24:49', '2022-03-07 16:24:49'),
(1466, 1, 'vbeshjbOmZ9Ku2tzjwVdWELLNvcjCbWx', '2022-03-07 17:30:49', '2022-03-07 17:30:49'),
(1467, 1, 'oTTmTaDXcc75kmrgbIRWKrEtzrqz02T9', '2022-03-07 17:47:09', '2022-03-07 17:47:09'),
(1468, 1, 'eoGG4EHGqqEcXPuYZkp34MLxGVNUsZpl', '2022-03-07 18:47:19', '2022-03-07 18:47:19'),
(1469, 1, 'tV4wIZmrJKyN3ujlb9HuIttnJOLLBGXn', '2022-03-07 20:30:15', '2022-03-07 20:30:15'),
(1470, 1, 'WoMDmVdYO7auJxTVqh9YYd50OfSgU3Sr', '2022-03-07 21:13:44', '2022-03-07 21:13:44'),
(1471, 1, 'bVjjzYbdxIDrx37yZhKj8VE4ML1Fn9VB', '2022-03-08 01:22:17', '2022-03-08 01:22:17'),
(1472, 1, 'wv6VxYLqT1sBYNR650gIaHsSCDj1uM8v', '2022-03-08 04:27:18', '2022-03-08 04:27:18'),
(1473, 1, 'xToPwoc5nYPrG2HkBt8jBj5iB23kV2b1', '2022-03-08 06:42:58', '2022-03-08 06:42:58'),
(1474, 1, 'HbO3nu4uDTIK1zwIFTWDnxo0wFaZswx4', '2022-03-08 09:24:19', '2022-03-08 09:24:19'),
(1476, 1, 'pDkV6gSZx7Ulyga0EG7S4vC8eesIZGnW', '2022-03-08 12:05:34', '2022-03-08 12:05:34'),
(1477, 1, 'E9xls8vCv4bi4ZHGeuQuWlmd16fbjDGi', '2022-03-08 12:28:58', '2022-03-08 12:28:58'),
(1478, 1, 'PZXSugFAgTNdEeCWkxFsSLcui370HjqI', '2022-03-08 14:13:39', '2022-03-08 14:13:39'),
(1479, 1, 'wYXGTkxarOaG8lgt29XeS9xGbEn5XA81', '2022-03-08 14:49:07', '2022-03-08 14:49:07'),
(1480, 1, 'Ht6vZewN3t9gOTjVO1GdyRoGAd1YVOEE', '2022-03-08 14:57:36', '2022-03-08 14:57:36'),
(1481, 1, 's8CXx9grOFAOHEAmqeNCEEV5uYURYb1X', '2022-03-08 15:03:49', '2022-03-08 15:03:49'),
(1482, 1, 'FDLwbUIg7OGZ45B9KfjHt7B2OWv3fPql', '2022-03-08 15:08:36', '2022-03-08 15:08:36'),
(1483, 1, 'ut9jUIy1zcVqroiCutmrAHkga1tFyLHD', '2022-03-08 15:28:07', '2022-03-08 15:28:07'),
(1485, 1, 'YbZVoC69EfnTmr1y0391IYrq70FpzpFu', '2022-03-08 16:01:39', '2022-03-08 16:01:39'),
(1486, 1, 'DrGD6NDWzkuK4EHdAU0FX8B2ImLTGksM', '2022-03-08 16:23:23', '2022-03-08 16:23:23'),
(1488, 1, '6dNP5Iqaba3Sy9G9iESfCqgMg4BJixLy', '2022-03-08 16:44:29', '2022-03-08 16:44:29'),
(1489, 1, 'GxFV5uO3316sDySCwMox57ueRW9ZuYJw', '2022-03-08 16:55:10', '2022-03-08 16:55:10'),
(1490, 1, 'iau0NCxv57SWBqyp4s1to6S0ftmcMYAg', '2022-03-08 16:59:53', '2022-03-08 16:59:53'),
(1491, 1, '9o0ZuorGq8GnnOETuee4jSU9MJfSTLHq', '2022-03-08 17:17:10', '2022-03-08 17:17:10'),
(1492, 1, 'QroUJSgesZrFoiDCuAu7jeVvn18rva6L', '2022-03-08 17:22:45', '2022-03-08 17:22:45'),
(1493, 1, 'rhb23qaVZBgMveH7QvqC6YO6jwgVW3eh', '2022-03-08 17:24:25', '2022-03-08 17:24:25'),
(1495, 1, 'E45B3uwW3AwtXhMMO5JoqGCsjjGqSvwS', '2022-03-08 17:28:06', '2022-03-08 17:28:06'),
(1496, 1, 'sLeiEjFHq4qYrd2Gn4tZSnPRxMq4cewi', '2022-03-08 17:50:00', '2022-03-08 17:50:00'),
(1497, 1, '1t95qTtW55BMO49rPpYNlD4tLQvCdVJk', '2022-03-08 17:54:43', '2022-03-08 17:54:43'),
(1498, 1, 'OO8AFlvneNjd2pCTuQFTuO9Um1yVNFyl', '2022-03-08 18:16:18', '2022-03-08 18:16:18'),
(1499, 1, '6uLXKRiSOR4Av4LKi5bohSufkAfJDRLl', '2022-03-08 18:19:18', '2022-03-08 18:19:18'),
(1500, 1, 'm7WygOtOWbPVfJ9hywJWXQk9HFVCjkrR', '2022-03-08 18:22:24', '2022-03-08 18:22:24'),
(1501, 1, '1igpCcLcZnEPtKnzoxJOtYDjmzRcHN6L', '2022-03-08 18:34:06', '2022-03-08 18:34:06'),
(1502, 1, 'jsd3IcmENYahAFacNQwvp2xR5TbAMzAI', '2022-03-08 18:58:32', '2022-03-08 18:58:32'),
(1503, 1, 'QxFDYZgfiGkbfMejHWLhCttR6M5Vu7Zx', '2022-03-08 18:59:40', '2022-03-08 18:59:40'),
(1504, 1, 'a44r6bhHgWisJSwoiS6G1hPacmbvV6UT', '2022-03-08 19:03:17', '2022-03-08 19:03:17'),
(1505, 1, 'KpvisUB3X1rgKVNLj5kezQTk1Rvi3v76', '2022-03-08 19:06:29', '2022-03-08 19:06:29'),
(1506, 1, 'laT9gxXGvz1nec2vu9s7H0M4ICqvlucl', '2022-03-08 19:08:17', '2022-03-08 19:08:17'),
(1507, 1, 'fuGwAY01506JX5zNy5YvB8ygPhZ5otjZ', '2022-03-08 19:17:06', '2022-03-08 19:17:06'),
(1508, 1, 'xn7Q0WVj7OkvRb8aUoN5o9iCE0XxBxK0', '2022-03-08 19:17:39', '2022-03-08 19:17:39'),
(1509, 1, 'CbgDp9WQhXUV98uoPhdrWJG9SQs6CZaH', '2022-03-08 19:23:41', '2022-03-08 19:23:41'),
(1510, 1, 'IX44sNJirsAffJ92AIFVeYOc4XavNrGW', '2022-03-08 19:30:48', '2022-03-08 19:30:48'),
(1511, 1, 'd2gCks4HMMUyW3Bto0nHOwPEZGUe7usf', '2022-03-08 19:31:51', '2022-03-08 19:31:51'),
(1512, 1, 'To6wWmTNf6If9iRpUvuswhBKEvQHwabZ', '2022-03-08 19:37:55', '2022-03-08 19:37:55'),
(1513, 1, 'ZxyJpMRMiwPE0mwqKOrbyzGGedn69Bmy', '2022-03-08 19:41:29', '2022-03-08 19:41:29'),
(1514, 1, 'R4O4aGim2wFjKB4rcgY4qu8MGcXudNRe', '2022-03-08 19:48:50', '2022-03-08 19:48:50'),
(1515, 1, 'IsRqPxNv64wcV38H2Nk775GcHXLDWjIu', '2022-03-08 19:52:11', '2022-03-08 19:52:11'),
(1516, 1, '6Vijn1gUUUmgJzPMu4d55LOI9nGnCV1h', '2022-03-08 20:38:02', '2022-03-08 20:38:02'),
(1517, 1, 'whX7Hxsb2qpskvC9HXXK20PGGPKvbD05', '2022-03-08 20:41:40', '2022-03-08 20:41:40'),
(1518, 1, 'KgdW17IbiWcBzaGFh7K8UKPBZy0rXOKZ', '2022-03-08 20:48:47', '2022-03-08 20:48:47'),
(1519, 1, 'QdDwarkrse1garXEGzDUHpQEyacBEVJK', '2022-03-08 20:53:47', '2022-03-08 20:53:47'),
(1520, 1, '9yYMkt4UvJrQ9sbw67wdYjktNpPyVZWj', '2022-03-08 20:57:18', '2022-03-08 20:57:18'),
(1521, 1, 'esYkHAEfeMYnaD9KNHMkEmqYqqgNydw0', '2022-03-08 21:00:45', '2022-03-08 21:00:45'),
(1522, 1, 'VktjbCCXBFzs57jznsOduGvpthqSaHml', '2022-03-08 21:02:24', '2022-03-08 21:02:24'),
(1523, 1, 'DbCdgcATmkhIH8axjxh0qkCGCZ5hfgFV', '2022-03-08 21:07:35', '2022-03-08 21:07:35'),
(1524, 1, 'S7yMuF6snWZzGOkIp2Hvx5582WMzWeWY', '2022-03-08 21:18:55', '2022-03-08 21:18:55'),
(1525, 1, 'G36IZqTPXspSjGPCYcbCJ0xykBwjtvCp', '2022-03-08 21:28:44', '2022-03-08 21:28:44'),
(1526, 1, 'mSPi2Bpu5VUzhwSsooGcnRgRmYBwOwJx', '2022-03-08 21:50:46', '2022-03-08 21:50:46'),
(1527, 1, 'qZ29YzGDHq7t4gLBmH34lcpESRvnayLU', '2022-03-08 21:57:00', '2022-03-08 21:57:00'),
(1528, 1, 'tzQKpZqB25yLUY3TQ1tCqZiINLAHRfwn', '2022-03-08 21:59:03', '2022-03-08 21:59:03'),
(1529, 1, '0w1cw26v4VdYglYvxVMAu6FxcuHxwYmC', '2022-03-08 22:27:26', '2022-03-08 22:27:26'),
(1530, 1, 'TP53ZLt9H0ZiMhMvxtnEUk3coE9o2TNw', '2022-03-08 22:31:52', '2022-03-08 22:31:52'),
(1531, 1, 'kaw9iE7IhMGW5KEMH4k2ZWEiIQJpjBk4', '2022-03-08 22:32:56', '2022-03-08 22:32:56'),
(1532, 1, 'sz1Q60sayZyj6fxfpYAeTcrZE2fZrJGX', '2022-03-08 22:33:40', '2022-03-08 22:33:40'),
(1533, 1, 'hhJXHcq8upc6njCi4QnisM4wx5qRgVKP', '2022-03-08 22:40:04', '2022-03-08 22:40:04'),
(1534, 1, 'ch5j2dRT5YCxyqMI40jW4gxGJrkYUyaF', '2022-03-08 22:51:20', '2022-03-08 22:51:20'),
(1535, 1, 'J0pqS5mDIWSY2tJ59wmnPeaReLZu4IIg', '2022-03-08 22:57:03', '2022-03-08 22:57:03'),
(1536, 1, '9h3hA32IAWMq6EkIkCPbOD5yhZg8FUim', '2022-03-08 23:02:32', '2022-03-08 23:02:32'),
(1537, 1, 'H0UzathWTvxRkzHiEWvtsVCqUT18mMYb', '2022-03-08 23:11:11', '2022-03-08 23:11:11'),
(1538, 1, 'GswDvstWficTmtAkaGQPU6EhvjOmkEz4', '2022-03-08 23:43:05', '2022-03-08 23:43:05'),
(1539, 1, 'xQhcpiuiWe4Rw3dLX6grOnViB6mXyx4s', '2022-03-08 23:59:43', '2022-03-08 23:59:43'),
(1540, 1, 'Kvl9BpzoEEu0ymzDaZuoDIODAZKY60RG', '2022-03-09 00:19:40', '2022-03-09 00:19:40'),
(1541, 1, 'dkga9sTxeIbkuqb4DWE5pIMHoDC0vM0U', '2022-03-09 00:28:56', '2022-03-09 00:28:56'),
(1542, 1, 'tXuxRIZkNGzCakbAdNMuoca5bWZ4Wxy5', '2022-03-09 00:33:24', '2022-03-09 00:33:24'),
(1543, 1, 'KHjAGu38nThTjK2Mq5hHn74j9Zn68WI3', '2022-03-09 00:34:09', '2022-03-09 00:34:09'),
(1544, 1, 'w0rtCxRPyehlrClgVeptcnimbHcHpznP', '2022-03-09 00:44:06', '2022-03-09 00:44:06'),
(1545, 1, 'Sg7JJyeiE0apGR8HANiDAEKNUb9E3i8B', '2022-03-09 01:06:15', '2022-03-09 01:06:15'),
(1546, 1, '5UzoNgDaN2Hk7zly5jWrgPwhRt2wNe65', '2022-03-09 01:14:32', '2022-03-09 01:14:32'),
(1547, 1, 'bwX0ItKAr4SZHW8NWPB4fNOw41qY6BJu', '2022-03-09 01:36:26', '2022-03-09 01:36:26'),
(1548, 1, 'mEtREDvWOBLA9zweX5Nf9bGy0vddZ2f7', '2022-03-09 01:38:47', '2022-03-09 01:38:47'),
(1549, 1, 'e7TCXHpLn9zDpAcrqt7LAxT23XwE3n5b', '2022-03-09 02:15:50', '2022-03-09 02:15:50'),
(1550, 1, 'aN7Zt3a3ddgc7sd8HiNX38qb7xQPOjcg', '2022-03-09 02:35:21', '2022-03-09 02:35:21'),
(1551, 1, 'ye9hDLfZNmakzXdXwnR3JLPwQ8G01Qvp', '2022-03-09 02:40:45', '2022-03-09 02:40:45'),
(1553, 1, 'EUP47hje6FrI96xQyMiUiB7n5pivk7ai', '2022-03-09 03:14:59', '2022-03-09 03:14:59'),
(1554, 1, 'PD03aktsCszzWEfKH1wWIXjBHpHnlrOy', '2022-03-09 03:15:07', '2022-03-09 03:15:07'),
(1555, 1, '2PyqWbVzQNglXXIeTfDYPXUXV4lXDlo2', '2022-03-09 03:15:10', '2022-03-09 03:15:10'),
(1556, 1, 'YzQxcaay9GIwTeeVZiStY4q7xggmOyWU', '2022-03-09 04:01:03', '2022-03-09 04:01:03'),
(1557, 1, 'URscWPl7wxa4mDcvf3jBCE73pwFxOoU8', '2022-03-09 04:17:10', '2022-03-09 04:17:10'),
(1558, 1, 'vSwFGS2BSrZzWigUUrSd0H8Okf3Hm2id', '2022-03-09 04:18:49', '2022-03-09 04:18:49'),
(1559, 1, 'wCfDUmh5lUJ4BcsmMra6GOPJfvvUyIXi', '2022-03-09 04:23:03', '2022-03-09 04:23:03'),
(1560, 1, 'QvbXsrXYxj9CZ3dWeydJz1LMcpFvj3QO', '2022-03-09 04:29:57', '2022-03-09 04:29:57'),
(1561, 1, 'zh42svGt3Iw6LqSRv7IB1evX69ihKYcE', '2022-03-09 04:31:21', '2022-03-09 04:31:21'),
(1562, 1, 'eZvibnvMHZPNyc99j6oeFsaeiA9osAod', '2022-03-09 04:48:47', '2022-03-09 04:48:47'),
(1563, 1, '04WhPGpWPicgfK6OvOcBniScZkZu3mSo', '2022-03-09 05:29:09', '2022-03-09 05:29:09'),
(1564, 1, 'yOwnU4EnHnT4o8BGDzWnfv2KzlD2ASie', '2022-03-09 06:50:20', '2022-03-09 06:50:20'),
(1565, 1, 'XKRLqAHwQYo8AnMeieM8HC5VAzjHzLsE', '2022-03-09 06:50:49', '2022-03-09 06:50:49'),
(1566, 1, 'u1Ln8IowMt142jCGf9pAUcfzXlcZgPAJ', '2022-03-09 07:21:59', '2022-03-09 07:21:59'),
(1567, 1, 'NA32oYZk3ModuLd5haPLYM0VhUwMrAcJ', '2022-03-09 07:28:20', '2022-03-09 07:28:20'),
(1568, 1, 'EFCRMvhlaaZBObFClKAryziuZEhu4J1q', '2022-03-09 07:52:37', '2022-03-09 07:52:37'),
(1569, 1, 'O8EqTXeRMGyABYuTnEqHCmoRRk6sNqHT', '2022-03-09 08:28:45', '2022-03-09 08:28:45'),
(1570, 1, 'oylTaKxP8ZivSUDk50yJ58HpXncSmOVK', '2022-03-09 08:29:44', '2022-03-09 08:29:44'),
(1571, 1, 'dupVJYiy1lT4BcJGDrgoEoreg7gFXB3u', '2022-03-09 08:31:33', '2022-03-09 08:31:33'),
(1572, 1, 'OxuO9WCYw74WhkTVZeiwdGo54xLhwayg', '2022-03-09 09:11:43', '2022-03-09 09:11:43'),
(1573, 1, 'b5sDiXYWtMCxVf3aPgf4IIGV7tgoCEPs', '2022-03-09 10:03:13', '2022-03-09 10:03:13'),
(1574, 1, 'fJcB3AMbjawpcxrj3UC1mUV5VYxAGBno', '2022-03-09 11:00:42', '2022-03-09 11:00:42'),
(1575, 1, '97elkvtWZskKkv8AEZ6ZvIKVzopAbM3t', '2022-03-09 11:03:43', '2022-03-09 11:03:43'),
(1576, 1, 'UXNl1Junl3S28bc7B8edu4fvI7IDRHKT', '2022-03-09 11:08:27', '2022-03-09 11:08:27'),
(1577, 1, 'nNT91LpemZnVP5wlhTVm0NH6Y0UA0BFi', '2022-03-09 11:12:25', '2022-03-09 11:12:25'),
(1578, 1, 'DhWuzSyOeYQGzUKAqCwfcLvAFIeMNx87', '2022-03-09 11:47:06', '2022-03-09 11:47:06'),
(1580, 1, '248feOc6N5WxQ1v3Pt1MMhAlRot6znsS', '2022-03-09 11:52:11', '2022-03-09 11:52:11'),
(1581, 1, 'W0FdRDpgXz2SQ9fhGUTP24ZjCWnHTRC3', '2022-03-09 11:58:31', '2022-03-09 11:58:31'),
(1582, 1, 'PgTT2QHrY7Q7JEKnqIWPCGHzK1VGsDec', '2022-03-09 11:59:08', '2022-03-09 11:59:08'),
(1583, 1, 'zFlWEpazLKQHGi5CCIPy1CcJOcwqrTC8', '2022-03-09 12:20:54', '2022-03-09 12:20:54'),
(1584, 1, 'k8R77btS1QA5MyQ8Z2Inkl15YFlwWz5q', '2022-03-09 12:23:15', '2022-03-09 12:23:15'),
(1585, 1, 'pBahllqoNbqtUo63cSthxbb35EVH4E2g', '2022-03-09 12:32:46', '2022-03-09 12:32:46'),
(1586, 1, 'moO05uo5mEMsHOHbnHwAXUSG3StyTnyP', '2022-03-09 12:44:31', '2022-03-09 12:44:31'),
(1587, 1, 'nqF4bqjtX1ku9jgJpAPSyxjGVzpeAfB5', '2022-03-09 13:08:34', '2022-03-09 13:08:34'),
(1588, 1, 'hmm94DWMjoVog3IMQOUYlV8rJs7Xdje4', '2022-03-09 13:10:26', '2022-03-09 13:10:26'),
(1589, 1, 'eQ6tHGk7x3an0jYFGETBLyAI4lEtHOLs', '2022-03-09 13:33:22', '2022-03-09 13:33:22'),
(1590, 1, 'AQqMFu7xSDqCEVJnFkIluISut8ItaO2d', '2022-03-09 13:43:42', '2022-03-09 13:43:42'),
(1591, 1, 'Ciu3RRxBECeBTOLSbWGWruYgSPlh37wl', '2022-03-09 13:48:25', '2022-03-09 13:48:25'),
(1592, 1, 'uyehh65gpziDPuTiVFi0KIQmUHz7lDOt', '2022-03-09 14:21:50', '2022-03-09 14:21:50'),
(1593, 1, 'rQOuZiGbsJxEry0Ro53KQfmaafR3sFRW', '2022-03-09 14:39:54', '2022-03-09 14:39:54'),
(1594, 1, 'Jv7WhFoaTmEf23qnY8hK1UPzm57n6ei9', '2022-03-09 14:42:59', '2022-03-09 14:42:59'),
(1595, 1, 'qPhBekv7MeSj3ptVO9NBIbOwCB1uNXjM', '2022-03-09 15:51:42', '2022-03-09 15:51:42'),
(1596, 1, 'TpMVT2c8zY9RM80m1arWtNNteS3J3WCT', '2022-03-09 16:04:02', '2022-03-09 16:04:02'),
(1597, 1, 'OYuKFcH99qIKIA5ZZHue1cgMDoXuywfG', '2022-03-09 16:25:39', '2022-03-09 16:25:39'),
(1598, 1, 'xbs6Zuy0PvLnoigNnxlSQ2wDFITUBI9j', '2022-03-09 17:18:20', '2022-03-09 17:18:20'),
(1599, 1, 'aXKAbUfSepShO2WbyuwTDZsLFGh8ydup', '2022-03-09 17:25:08', '2022-03-09 17:25:08'),
(1600, 1, 'AmoxietBhnqGMLkTJi3nHHfjjD0AejJ0', '2022-03-09 18:03:48', '2022-03-09 18:03:48'),
(1601, 1, 'hiePUTzICF25sJZcuTVYxQVzH5xgmSE2', '2022-03-09 18:30:41', '2022-03-09 18:30:41'),
(1602, 1, 'KaiVRoPX0mjUtwSZJvevyk4R4pu9WEtq', '2022-03-09 19:35:25', '2022-03-09 19:35:25'),
(1603, 1, 'SMZhRO7rmS1W4u66Y6ldcnQS2L4Ydrvm', '2022-03-09 20:05:25', '2022-03-09 20:05:25'),
(1604, 1, 'bgECFn539weKd3u5hMSQYxWomdYOSNrJ', '2022-03-09 20:27:54', '2022-03-09 20:27:54'),
(1605, 1, 'r3FGTpbBYoSiWn0GHRrOSDN9DOUnVW3m', '2022-03-09 20:49:42', '2022-03-09 20:49:42'),
(1606, 1, '5JrHFlYai64ZVvSVLRDAQp9364XEwOuN', '2022-03-09 20:53:54', '2022-03-09 20:53:54'),
(1607, 1, 'AJpBqjondQiSfZy1Xul4kn9wvfxz2YrJ', '2022-03-09 20:56:48', '2022-03-09 20:56:48'),
(1608, 1, 's8kzhualciK3PUz7xtIjbjqE6sQYof2d', '2022-03-09 21:04:25', '2022-03-09 21:04:25'),
(1609, 1, 'yA6UrYteXFaJ0gM5be3FGFXzvWI21yOD', '2022-03-09 21:29:02', '2022-03-09 21:29:02'),
(1610, 1, 'M7ftcQ7ZdG4Vt3Eq5EJUFKu264AD0E5e', '2022-03-09 21:39:38', '2022-03-09 21:39:38'),
(1611, 1, 'x0yUelW1dPVgdXyy9L5HgIS2L5v62srd', '2022-03-09 21:44:47', '2022-03-09 21:44:47'),
(1612, 1, 'ZtI2O1GEQ8c5LOpjaKgZgNiIMDxPNosm', '2022-03-09 22:02:32', '2022-03-09 22:02:32'),
(1613, 1, 'gRNdkIYwfbInrJj7zcq9ehPh1TpzbK46', '2022-03-09 22:13:38', '2022-03-09 22:13:38'),
(1614, 1, 'g6CKKggpEmTKBcRdzMwHnc6w4KkBnb4g', '2022-03-09 22:38:10', '2022-03-09 22:38:10'),
(1615, 1, 'ISE2ChbU6vqps3y5bPbn2KfQDgVKARGi', '2022-03-09 22:39:14', '2022-03-09 22:39:14'),
(1617, 1, 'sLSInblQLQPGJyVFp8nvj5nRcEFE5r3t', '2022-03-09 23:20:17', '2022-03-09 23:20:17'),
(1618, 1, 'uUNwHp4krKml2xd2pldRmdXfOlGy9fCc', '2022-03-09 23:20:54', '2022-03-09 23:20:54'),
(1619, 1, '4vlsrqTHoGpFykF4XDDM4gS2heCiR3kx', '2022-03-09 23:41:45', '2022-03-09 23:41:45'),
(1620, 1, 'LnHJeejfY2B4TR54NcTSako0pvZFEoFE', '2022-03-10 00:22:53', '2022-03-10 00:22:53'),
(1621, 1, 'gIiF0dZJ0JkbegNwiAFdwT1YChoG07gP', '2022-03-10 01:08:20', '2022-03-10 01:08:20'),
(1622, 1, 'zDXurT9WCha3W5c7whaz1sU6QRCRjyRo', '2022-03-10 01:17:45', '2022-03-10 01:17:45'),
(1623, 1, 'CNeVyxJWVZpzkA57ab6ah1AG34MtoU1w', '2022-03-10 02:01:27', '2022-03-10 02:01:27'),
(1624, 1, '7ipgLZD1yxiwfy6jUmCkKgd5o9C6S4y9', '2022-03-10 03:52:57', '2022-03-10 03:52:57'),
(1625, 1, 'e54VBnI1k9aVvmfnziohEHCEDrTkYjMj', '2022-03-10 05:09:35', '2022-03-10 05:09:35'),
(1626, 2, 'KLS3xbHLyrLNEGdWFMdc1dAO4GZsxSmB', '2022-03-10 06:35:25', '2022-03-10 06:35:25'),
(1627, 1, 'gJNR8m5qG79fCjZ0MV11mw9mBYkKctG1', '2022-03-10 08:29:29', '2022-03-10 08:29:29'),
(1628, 1, 'j5hijUXKwFmgradQbCqJwfQlYVbjvJNd', '2022-03-10 10:27:32', '2022-03-10 10:27:32'),
(1629, 1, '37B3HZh7shWuWGUitEQZxffTDAdNkBPa', '2022-03-10 11:22:32', '2022-03-10 11:22:32'),
(1630, 1, 'tVFenvTw7Qkv0yBRR7fEE1kQhS2HPmcp', '2022-03-10 11:38:16', '2022-03-10 11:38:16'),
(1631, 1, 'oK7PEjW0jjeceqDiNoecbLsvFFEKuiSO', '2022-03-10 11:40:29', '2022-03-10 11:40:29'),
(1632, 1, 'AosEMY81I2pLcJkaZvUNVJ9lkLqxXWnB', '2022-03-10 12:26:22', '2022-03-10 12:26:22'),
(1633, 1, 'ly0JKUshHbwEiw8uhv2CCMlRryZzrUlO', '2022-03-10 12:55:37', '2022-03-10 12:55:37'),
(1634, 1, 'Ner90OfsA6gcJZXvQQ0k0WYTp1GuwHNu', '2022-03-10 13:23:07', '2022-03-10 13:23:07'),
(1635, 1, 'ZqoAAtUSgVY64jyAp4BsM3lXk4BCJTvQ', '2022-03-10 13:46:53', '2022-03-10 13:46:53'),
(1636, 1, 'C5mgmpW8J7fgufGaModj9i0fni8He8OU', '2022-03-10 14:01:26', '2022-03-10 14:01:26'),
(1637, 1, 'nyp6OWhqoOWy4YQnbFN0wYzo0l4OkwNJ', '2022-03-10 14:08:05', '2022-03-10 14:08:05'),
(1639, 1, 'drHxiETmvGIoVtOB6E79170WDfWCJsZZ', '2022-03-10 14:21:35', '2022-03-10 14:21:35'),
(1640, 1, 'EwU0tN04UumSN8BjXDNkmpb3RujTWfTD', '2022-03-10 14:49:03', '2022-03-10 14:49:03'),
(1641, 1, 'SEFCmjzLnDJFNWXUxRc1V6UnHHgmz2V6', '2022-03-10 15:27:43', '2022-03-10 15:27:43'),
(1642, 1, '2H18WTxwr2QTjjSP3BfWSVqMsvNeZCXD', '2022-03-10 15:55:56', '2022-03-10 15:55:56'),
(1643, 1, 'b2OtRnUBAALURfYwaFZGuLPwLVhcGZn6', '2022-03-10 16:29:02', '2022-03-10 16:29:02'),
(1644, 1, 'RLoqj1PNbQMEsMTM6UYVHitcf2iyax4B', '2022-03-10 16:55:05', '2022-03-10 16:55:05'),
(1645, 1, 'cze1O1ahXX7Zr8e00FkDI1j6H7VTnkGy', '2022-03-10 17:23:37', '2022-03-10 17:23:37'),
(1646, 1, 'Qa6y6jVgbRq2jiFMgwRNu5aKAjSEB9c1', '2022-03-10 17:38:12', '2022-03-10 17:38:12'),
(1647, 1, 'tpTKFQw8M7Bm8it0mZlRNmYzmXfaSLgD', '2022-03-10 17:42:34', '2022-03-10 17:42:34'),
(1648, 1, '1O5D8EX0M60SEQZTzz6bvniotx3N24Ks', '2022-03-10 19:36:59', '2022-03-10 19:36:59'),
(1649, 1, 'NlGt9efCEfPgnHcvzeyGRPWtVsshArAZ', '2022-03-10 19:53:34', '2022-03-10 19:53:34'),
(1650, 1, 'ZcYXyYDshPu4twEYeOgLhgK318VB9Gh7', '2022-03-10 20:18:25', '2022-03-10 20:18:25'),
(1651, 1, 'mWml8POamBg6u03l3cfxV8rLsMubmTsK', '2022-03-10 22:55:39', '2022-03-10 22:55:39'),
(1652, 1, 'NfItP6ayX07WtVyE8gdz82ekaoDI3czO', '2022-03-10 22:57:39', '2022-03-10 22:57:39'),
(1653, 1, '4ery0XOIVrd1T5U1Ro4ZlmdvhPD9UItl', '2022-03-10 22:57:54', '2022-03-10 22:57:54'),
(1654, 1, 'VBWvd7UD3qdbCjijdFjWut1CrLUsN11W', '2022-03-10 23:22:51', '2022-03-10 23:22:51'),
(1655, 1, 'Ld0OpXOhL4eY3JpxHIDp9wMywq2syDnm', '2022-03-11 01:38:03', '2022-03-11 01:38:03'),
(1656, 1, '8cz5xkUsQxYNvqeSYAb4w45O6ypZTuug', '2022-03-11 03:33:17', '2022-03-11 03:33:17'),
(1657, 1, 'UpmYrWoD761uwkP432zO4r1luDh4Pkuw', '2022-03-11 11:09:48', '2022-03-11 11:09:48'),
(1658, 1, 'Jgp8e8fNCEPMsJF2T7JPh6L21QeJYc4S', '2022-03-11 11:30:46', '2022-03-11 11:30:46'),
(1659, 1, 'aDUuvh9c5BAegQexaLGH1Su1MKh3BALt', '2022-03-11 12:42:54', '2022-03-11 12:42:54'),
(1660, 1, '8L1RhVu02FkDcvtVMQYNCQTMnOC6vX2S', '2022-03-11 13:37:23', '2022-03-11 13:37:23'),
(1661, 1, 'sSQ6bMBz05opfciFjIPORUCdLMmpRLvV', '2022-03-11 13:37:34', '2022-03-11 13:37:34'),
(1662, 1, 'IMCTEpXmDtuJd9dVD3cnnDOUuUcnxQuT', '2022-03-11 14:31:06', '2022-03-11 14:31:06'),
(1663, 1, 'YllLiXez8NOyoQM3ubvv3P6gecfJNaXw', '2022-03-11 15:36:07', '2022-03-11 15:36:07'),
(1664, 1, '08PIr1GpzcQWO4lRlrhvwlBPPodFIaWd', '2022-03-11 16:48:06', '2022-03-11 16:48:06'),
(1665, 1, 'o67B2ojTlXIj3yiey0czjpDWAum2U86m', '2022-03-11 16:49:25', '2022-03-11 16:49:25'),
(1667, 1, 'uAqe2gMf37KpBV7exWv8d00JkYxek0tV', '2022-03-11 17:22:29', '2022-03-11 17:22:29'),
(1668, 1, 'lL0IfN2uE7EOwxnYlyfQ1lUizNeJBJVa', '2022-03-11 17:28:29', '2022-03-11 17:28:29'),
(1669, 1, 'ZBGzmTszro8WvgDdX5bmcTigfrbkjiis', '2022-03-11 17:39:57', '2022-03-11 17:39:57'),
(1670, 1, 'WmYRwtiMhCgV4TgULLXvsKikHDPMh3wl', '2022-03-11 19:02:43', '2022-03-11 19:02:43'),
(1671, 1, 'JRdB5IU2V6JjjZSv3qoXzFtGedJYAYYt', '2022-03-11 19:59:13', '2022-03-11 19:59:13'),
(1672, 1, 'mzOz2gISHHpkyk3KJunVLeTIOUuV6kDT', '2022-03-11 20:12:01', '2022-03-11 20:12:01'),
(1673, 1, 'vvm6fyMjs0UhBn5Z1N4q2hLg9DBvdUHX', '2022-03-11 20:25:23', '2022-03-11 20:25:23'),
(1674, 1, 'ejP1LK4WMNqzg3yoq0v3NGtU2yJ1Oex6', '2022-03-11 21:28:41', '2022-03-11 21:28:41'),
(1675, 1, '5XsjHKbV9UUboHVMthDNip3CcuSVFwKG', '2022-03-11 23:35:34', '2022-03-11 23:35:34'),
(1676, 1, 'ZsQDd0jzE5TJj9mJ24Wsk89s3kCg0mkw', '2022-03-11 23:43:50', '2022-03-11 23:43:50'),
(1677, 1, 'TBgKoig7l0QqV3l9IcqgkELeoLOHsETQ', '2022-03-12 00:33:02', '2022-03-12 00:33:02'),
(1679, 1, 'kTcc9r4bgPNRtVxMswMjhtCKFzS6d6fE', '2022-03-12 01:43:30', '2022-03-12 01:43:30'),
(1680, 1, 'nmCqEY2ZcWDPhYIJNJ5FHyA2EajTVFG7', '2022-03-12 02:10:32', '2022-03-12 02:10:32'),
(1681, 1, 'sJDBKxVHsLejdB3YvKO54RxFTqr50D6g', '2022-03-12 03:31:36', '2022-03-12 03:31:36'),
(1682, 1, '1YuKsC8Chkpfe7OIUUWygTGGDgj6qmwj', '2022-03-12 05:51:16', '2022-03-12 05:51:16'),
(1683, 1, 'pQrVw7Hhix4qxBY6hZaQP4u23N9ZVLF3', '2022-03-12 06:52:11', '2022-03-12 06:52:11'),
(1684, 1, 'HeFQOuDqwtMaHlYT3O7ThLHrGMANrJJs', '2022-03-12 08:36:29', '2022-03-12 08:36:29'),
(1686, 1, 'KTjEv6drezyyyPzVoDsOcYR0V1qTUAAQ', '2022-03-12 10:50:24', '2022-03-12 10:50:24'),
(1687, 1, 'QZnSfUOHi4ml3Av2lzef9fUXDtRXwZhr', '2022-03-12 11:17:10', '2022-03-12 11:17:10'),
(1688, 1, 'Z7CX7r94H60YhYQL6TNbBqV919UcKO9m', '2022-03-12 12:11:03', '2022-03-12 12:11:03'),
(1689, 1, 'ycIpB8qrvA3bteM7yYM1MkgH3xrtTwDR', '2022-03-12 12:23:57', '2022-03-12 12:23:57'),
(1690, 1, '7zfI5PlPHMnVGQ3zGISx3NaiuqMiQk9m', '2022-03-12 15:05:25', '2022-03-12 15:05:25'),
(1691, 1, 'IkxjOeS2T1RxdBXI3hwWRLdVKxgYTSBL', '2022-03-12 16:56:26', '2022-03-12 16:56:26'),
(1692, 1, 'DjGYrCaShEjswjkEEXxjFkPTJHgkg0xW', '2022-03-12 17:23:59', '2022-03-12 17:23:59'),
(1693, 1, 'nNSfQI20CqIvUscJTn4EhZQs9DugSXME', '2022-03-12 18:25:03', '2022-03-12 18:25:03'),
(1694, 1, 'gllxGnsMT0XHC0pqxSdejE9e6kqmXnjU', '2022-03-12 18:45:11', '2022-03-12 18:45:11'),
(1695, 1, 'iXTH76Ajb0M9YYv5zGsVD4d90JKuCGFp', '2022-03-12 18:51:12', '2022-03-12 18:51:12'),
(1696, 1, 'VPjdm4dD4bFCnK445KGcJPYRGadcRcYB', '2022-03-12 19:30:17', '2022-03-12 19:30:17'),
(1697, 1, 'S25dECo9vN0fMx8eSyyybqrFcFlj0850', '2022-03-12 21:09:52', '2022-03-12 21:09:52'),
(1698, 1, 'VmHPvHMSBg5yJkozqET931pYuRNDl7tr', '2022-03-12 21:24:36', '2022-03-12 21:24:36'),
(1699, 1, '420qYfbYvzjxz8qOaIK1WCIjVWlWieO3', '2022-03-12 22:02:11', '2022-03-12 22:02:11'),
(1700, 1, 'SR07R6a7nnhgPRfhMf5sv0o4yBTdcB8P', '2022-03-12 22:41:06', '2022-03-12 22:41:06'),
(1701, 1, 'IiflvSfjAffUlX1LkK7t7XLUUr5OX4fu', '2022-03-12 23:11:46', '2022-03-12 23:11:46'),
(1702, 1, '2jH8shJV0Ge6deAn1T6mScDjtSWXKRNK', '2022-03-13 00:54:24', '2022-03-13 00:54:24'),
(1703, 1, 'xXGHFmFLiciOFtrD9jcLFl2yRcYiWm7u', '2022-03-13 00:59:06', '2022-03-13 00:59:06'),
(1704, 1, 'F9NkKVJXHW4Cltcv0NvRT0Y952tula40', '2022-03-13 02:09:04', '2022-03-13 02:09:04'),
(1705, 1, 'l3BzSVg5vGUBmD7tPmeiKRK3I87RHmQU', '2022-03-13 03:21:36', '2022-03-13 03:21:36'),
(1706, 1, '4Mjs5w4TKIgNl9b3zJ4ixGoQZl5aiuKc', '2022-03-13 03:57:17', '2022-03-13 03:57:17'),
(1707, 1, '1pPF15dONrwOqKbYe1s9NYUa9RIB7073', '2022-03-13 04:22:49', '2022-03-13 04:22:49'),
(1708, 1, 'PsEnnwh9FR0odT1JvSS6RXiLNmHv8EWE', '2022-03-13 05:47:34', '2022-03-13 05:47:34'),
(1709, 1, 'UoMAS8ld2nsprGyaYJCcznNxQNxBa7Gb', '2022-03-13 07:22:17', '2022-03-13 07:22:17'),
(1710, 1, 'SububTDgwPJC9r6Imj3Eaz3sVxgQTemt', '2022-03-13 08:24:11', '2022-03-13 08:24:11'),
(1711, 1, 'TSi58j8LdO9AHWoGMwuyCcMpMQUrzcgI', '2022-03-13 09:25:16', '2022-03-13 09:25:16'),
(1713, 1, 'VDTIrgSTd1yFclYi3h3FBAEFlE4VULSU', '2022-03-13 11:05:35', '2022-03-13 11:05:35'),
(1714, 1, 'FloSTWYLYGOjjM375xerLhITHWbNSJ6K', '2022-03-13 11:34:15', '2022-03-13 11:34:15'),
(1716, 1, 'VHWjmkZKfRyPof6BeTpmInCI6GTZhPI9', '2022-03-13 12:37:18', '2022-03-13 12:37:18'),
(1717, 1, 'tXAfPFgwx9Y4Cj6O5ZnrfK0Oz4DRzBYH', '2022-03-13 14:03:26', '2022-03-13 14:03:26'),
(1718, 1, 'kJgvr77zNuy9NAyTMpTIann8JDv2qDoc', '2022-03-13 15:10:52', '2022-03-13 15:10:52'),
(1720, 1, 'oCpE9h7NIrikVsJs30ac6R1WhTO6nqC7', '2022-03-13 17:18:18', '2022-03-13 17:18:18'),
(1721, 1, 'grTiTKvObt39HFHf5QtzrECaHV4wrQ7p', '2022-03-13 19:17:08', '2022-03-13 19:17:08'),
(1723, 1, 'TAfwHOd9arqkWG3NNcnnYW8YNLb36A4C', '2022-03-14 00:44:14', '2022-03-14 00:44:14'),
(1724, 1, '9ZFCdIzbNWiHF8zf7yw7LajHFkEXS9F4', '2022-03-14 03:10:57', '2022-03-14 03:10:57'),
(1725, 1, 'gJ1f014OH7pA9lnPBrojl55tdDHRRdyn', '2022-03-14 03:29:50', '2022-03-14 03:29:50'),
(1726, 1, 'ESoIfECCyXREH8RsQul6o0JspOAW9OVQ', '2022-03-14 04:49:19', '2022-03-14 04:49:19'),
(1727, 1, 'PqrsAOE0amsV6xW95PiCdK3eF1SPVv6t', '2022-03-14 07:50:47', '2022-03-14 07:50:47'),
(1728, 1, 'JIDmlFYq6POk9QCBc8zHAMVpLMQUp8uF', '2022-03-14 08:55:02', '2022-03-14 08:55:02'),
(1729, 1, 'qCGklF3Zqba9qeq483W8INU4fa4XbQtS', '2022-03-14 09:46:41', '2022-03-14 09:46:41'),
(1731, 1, 'mSvNTyc2a0WZE7zonS6ieBnZjPmHkCv0', '2022-03-14 12:10:42', '2022-03-14 12:10:42'),
(1732, 1, 'NBbmrd0fJu4mUDE2GhWSk7vkJc5s3xNx', '2022-03-14 14:16:39', '2022-03-14 14:16:39'),
(1733, 1, 'mimbyGltAKu3oQZ4xc0RC3uVkCLzDRy1', '2022-03-14 14:20:27', '2022-03-14 14:20:27'),
(1734, 1, 'WHiRA8aoCwMz3JTOeaToYOpiVclJD2cl', '2022-03-14 14:33:29', '2022-03-14 14:33:29'),
(1735, 1, 'tKq1icN08wPgNODSd0ICLouV7CT7WWKS', '2022-03-14 15:58:19', '2022-03-14 15:58:19'),
(1736, 1, '99rUckPsWwzcqnYBmA1xpe0FcGy3Ifne', '2022-03-14 16:53:18', '2022-03-14 16:53:18'),
(1738, 1, 'wBfhcSF9d1kEe7z3RmrPo9XzxWB1wZPu', '2022-03-14 18:16:06', '2022-03-14 18:16:06'),
(1739, 1, 'lNpKo66uYJXUNtQEDgynCoi8IAT1VxFx', '2022-03-14 18:21:26', '2022-03-14 18:21:26'),
(1740, 1, 'HrJxEEYB8gaepaltHjyBTxE0TQeCRk2p', '2022-03-14 18:28:00', '2022-03-14 18:28:00'),
(1741, 1, 'uGs6r99sizZBPtlQdf4lBp57bTVetw4Q', '2022-03-14 19:25:45', '2022-03-14 19:25:45'),
(1743, 1, 'bHXxaKfjYdn86s9MvUwxSPFESOLAI3X5', '2022-03-14 21:15:12', '2022-03-14 21:15:12'),
(1744, 1, '6OpH8sFvJUmhKMJKuCileYeD0jHQY47d', '2022-03-14 22:09:10', '2022-03-14 22:09:10'),
(1745, 1, 'aiIIFenf3yt9FscAspn8DH8mjR94DCzu', '2022-03-14 22:12:36', '2022-03-14 22:12:36'),
(1746, 1, '3seAhPP3KkrojgCu8VGvfCJXHDsureel', '2022-03-15 00:20:25', '2022-03-15 00:20:25'),
(1747, 1, 'uJaplzp1Z7o5gjhdu1RLO6kJ2jwm3nl3', '2022-03-15 01:40:45', '2022-03-15 01:40:45'),
(1748, 1, '3vtGceHXFdnZGjncnfiSN2DLLR8nTquV', '2022-03-15 04:13:58', '2022-03-15 04:13:58'),
(1749, 1, 'qsIP4XvJx8LZZCEt4EQS767r55PB9Q2N', '2022-03-15 05:15:34', '2022-03-15 05:15:34'),
(1750, 1, 'KNDUE7h4zlGRaplGXY1AKoUU3g7zCyc9', '2022-03-15 11:38:27', '2022-03-15 11:38:27'),
(1751, 1, 'RwhvVtRIqJA5PCECsTZ0eOBAJGXxfU07', '2022-03-15 11:51:16', '2022-03-15 11:51:16'),
(1752, 1, 'ZWNnD3xS8aZxPfjoYDrM7CuFbYN4HDPI', '2022-03-15 11:57:09', '2022-03-15 11:57:09'),
(1754, 1, 'xflYuG4BYqZ0iCVfFuLf0GzdImMipCBd', '2022-03-15 12:35:11', '2022-03-15 12:35:11'),
(1755, 1, 'KAbj7jUj8xuTCq9TMinaCbQg4VAy2JYr', '2022-03-15 12:36:43', '2022-03-15 12:36:43'),
(1756, 1, 'QZC4xrRQgfUij71dhZoqbbAZWZC0Lm0g', '2022-03-15 13:23:08', '2022-03-15 13:23:08'),
(1757, 1, 'Pg7IKLwG9nbB4LNcjFYrZh19dgkBePWw', '2022-03-15 15:50:00', '2022-03-15 15:50:00'),
(1758, 1, 'O6qeKqpaDi9ihwkFDP5XQ0ds9Wqxt86f', '2022-03-15 17:33:18', '2022-03-15 17:33:18'),
(1759, 1, 'jJVDMfp6MMKoE3oE5auagIUKmLHSGYyn', '2022-03-15 19:54:24', '2022-03-15 19:54:24'),
(1760, 1, '1yISWPmvjUDv2T1YF8dyYA9JXssCGLfn', '2022-03-15 22:31:02', '2022-03-15 22:31:02'),
(1761, 1, '2eu9iTrOqPMAxLKpRM8VsxhgsPSTine1', '2022-03-15 22:36:41', '2022-03-15 22:36:41'),
(1762, 1, 'XrdIfdzG9KBfRESgdflefpK9Dfqrz4gV', '2022-03-15 23:09:33', '2022-03-15 23:09:33'),
(1763, 1, 'RFdxgHplWcq3n4TzTH86UMSun1Y4PoRT', '2022-03-15 23:16:57', '2022-03-15 23:16:57'),
(1764, 1, 'LdmAeV5q4fB886cNZy250tEB8izcQmNS', '2022-03-15 23:22:06', '2022-03-15 23:22:06'),
(1765, 1, 'Cs8VMlUiwZMHpW5a9nIF4qKyZH1WNDCf', '2022-03-16 03:57:51', '2022-03-16 03:57:51'),
(1766, 1, 'rZwWC0Wd1ZucndGxTFnZ0w1JZqBuPZ4a', '2022-03-16 04:20:31', '2022-03-16 04:20:31'),
(1767, 1, 'grQ24BOfOtvxQBbZ3EJkNrWVHGvXe2Nj', '2022-03-16 04:47:15', '2022-03-16 04:47:15'),
(1768, 1, 'FREsK060Cixxpq7ItidbMZB4w7TLf72d', '2022-03-16 05:53:06', '2022-03-16 05:53:06');
INSERT INTO `persistences` (`id`, `user_id`, `code`, `created_at`, `updated_at`) VALUES
(1769, 1, 'jQrLEkD9quUloEJV7miDYr5QKd9EOoQK', '2022-03-16 06:14:36', '2022-03-16 06:14:36'),
(1770, 1, 'PHzFpcF3eAHyFChc97zYsadhB2X38LUh', '2022-03-16 09:29:48', '2022-03-16 09:29:48'),
(1772, 1, 'HiZoMoGabpU33bOZID7H7OtlKVA8EhnA', '2022-03-16 12:32:04', '2022-03-16 12:32:04'),
(1773, 1, 'uZphOnFXuOaEdGk1VoNDQpxCUXeSyBmA', '2022-03-16 13:45:45', '2022-03-16 13:45:45'),
(1774, 1, 'IXQICrWzfYaxlSNbSyaocSenKu0YWuD7', '2022-03-16 14:12:00', '2022-03-16 14:12:00'),
(1775, 1, 'eTEg7KKTtaiB5yTVaWSVHWpbsVjR1r9w', '2022-03-16 14:25:04', '2022-03-16 14:25:04'),
(1776, 1, 'NSEmgwV9HjTxEIZA1Hyw1tMdaxyPPAZ4', '2022-03-16 15:10:25', '2022-03-16 15:10:25'),
(1777, 1, '4xGSb1sHx3UUtG0JOYtwOZvUusyUHJTE', '2022-03-16 15:36:16', '2022-03-16 15:36:16'),
(1778, 1, 'S7v6yuKXWMc0144WbmpAe8yKqaVMtxfI', '2022-03-16 16:43:09', '2022-03-16 16:43:09'),
(1779, 1, 'gmdtJ2kQgNJn9Yd3QIKLt4ND0Oamdqdi', '2022-03-16 17:13:09', '2022-03-16 17:13:09'),
(1780, 1, '4xdVJwysLDYWjtQF11Tof5k5Km4miEfo', '2022-03-16 19:44:34', '2022-03-16 19:44:34'),
(1781, 1, 'flWsVmNFLeFkUwrDfCRlRNUTSV4vTYLP', '2022-03-16 19:46:14', '2022-03-16 19:46:14'),
(1782, 1, 'o3xjhoQLM6v0iJj8tmaF32MieRSw8GwP', '2022-03-16 20:18:15', '2022-03-16 20:18:15'),
(1783, 1, 'DE8rOJd1J5DVWtf4d43zS3JenbYdyt5T', '2022-03-16 21:03:32', '2022-03-16 21:03:32'),
(1784, 1, 'zP8CV9TgHAwLXDwhZvOD2k3zw0V3fA7K', '2022-03-17 01:12:04', '2022-03-17 01:12:04'),
(1785, 1, '811XtWstkNSxwp9gsLJodpfGZdIxoZi8', '2022-03-17 14:19:07', '2022-03-17 14:19:07'),
(1787, 1, '9ylEgQMuUMdQF00msrbTG7qBBEGSwLtN', '2022-03-17 17:52:59', '2022-03-17 17:52:59'),
(1788, 1, 'wJK6d6i6c9j2XXP2mTslRyb3lV0FMJDC', '2022-03-17 18:06:46', '2022-03-17 18:06:46'),
(1789, 1, 'LyTYrD6PwAS3eQ9qJYCaF4HPdto15Mh2', '2022-03-17 18:59:24', '2022-03-17 18:59:24'),
(1790, 1, 'BngikionF1QFyLGymhNi5rFXJLJ9J8x1', '2022-03-17 20:34:42', '2022-03-17 20:34:42'),
(1791, 1, 'AW443S2JrYZ2lAyq8UdqnPD7MPQaZqfX', '2022-03-17 21:07:46', '2022-03-17 21:07:46'),
(1792, 1, 'lOuhcjKR5YrEkdXfSPTJN2j1NEgHygwg', '2022-03-17 23:56:08', '2022-03-17 23:56:08'),
(1793, 1, 'nR4ANUPPe6ciMHqDHjrpw5I55KYxvW8y', '2022-03-18 00:09:14', '2022-03-18 00:09:14'),
(1794, 1, 'INCIEzjETi9kcgECPtZtGOXoeyTsEynG', '2022-03-18 01:01:49', '2022-03-18 01:01:49'),
(1795, 1, 'phQkCRzhw4eG0PCUMA4lHsaCWCYYWe59', '2022-03-18 08:03:06', '2022-03-18 08:03:06'),
(1796, 1, '7TyaT2LbBMdszlL7D5VjXjsmZjyFBQaZ', '2022-03-18 13:54:09', '2022-03-18 13:54:09'),
(1797, 1, 'xyMGx8JxLi2z0q7YtVPdbdrkfNOqBR43', '2022-03-18 18:28:13', '2022-03-18 18:28:13'),
(1798, 1, '3pLX2vDodWWYpt9m8exaZ1BZedJvLbV4', '2022-03-18 19:08:47', '2022-03-18 19:08:47'),
(1799, 1, 'fQISa2gYKAxQzkrj6isWjSU3LlMHwYNQ', '2022-03-18 20:09:06', '2022-03-18 20:09:06'),
(1800, 1, 'MSVeXeS279ZcuwaBXRMKqRMkjte3Fo3F', '2022-03-18 20:18:03', '2022-03-18 20:18:03'),
(1801, 1, 'zr0exlCLjsaFLMTYkdVbQNq5Kns6R51W', '2022-03-18 21:17:55', '2022-03-18 21:17:55'),
(1802, 1, '3XriFltQN8waOBb84LrqjPdyzdKuJKZx', '2022-03-18 21:21:56', '2022-03-18 21:21:56'),
(1803, 1, 'PsYWckxNLveNZXR3znQ3XstxR4P5ZvPi', '2022-03-19 00:34:42', '2022-03-19 00:34:42'),
(1804, 1, 'jMTrmxoLTTvJ1bXY8iQSZwVLmuh0mROH', '2022-03-19 00:39:01', '2022-03-19 00:39:01'),
(1806, 1, 'QLkHf7zzap4RmXObgLfKxAiMPfjsFvIT', '2022-03-19 03:34:41', '2022-03-19 03:34:41'),
(1807, 1, 'udJBrMYc3rCpDUDJnLaNAm14rxyinkvf', '2022-03-19 09:42:24', '2022-03-19 09:42:24'),
(1808, 1, 'bK0qUXSwXf3Kn8p3WmeCpnAyJyHFgaGU', '2022-03-19 10:09:44', '2022-03-19 10:09:44'),
(1809, 1, 'kGSRmYnYH0ycS7xzhAmU1RgQyRvpmZCL', '2022-03-19 10:12:42', '2022-03-19 10:12:42'),
(1810, 1, 'vrTIUEwpi2JKC8BZqhoGxiDbOVml35rb', '2022-03-19 12:31:52', '2022-03-19 12:31:52'),
(1811, 1, 'rH5tZ3ljRRLYnUTcDzucv6etcCMNBXNw', '2022-03-19 14:46:08', '2022-03-19 14:46:08'),
(1812, 1, 'StVsT0UAhvxSrq7Vn2INLGs1Xi0dMyb0', '2022-03-19 15:02:55', '2022-03-19 15:02:55'),
(1814, 2, 'StDeeOxAfQglx1zsbwNWvEPg7fCYpdxS', '2022-03-19 16:31:54', '2022-03-19 16:31:54'),
(1815, 1, 'dt73Cl8CfITvy0ttqO0u8GOSNGIfLydP', '2022-03-19 19:39:13', '2022-03-19 19:39:13'),
(1816, 1, 'WlF5BD03tpcBG5YMFHr1wrUeyK3NeuMg', '2022-03-20 00:52:35', '2022-03-20 00:52:35'),
(1817, 1, 'WiMsNiyNAVY9bcO6Usdjo0fHKbNrFxkb', '2022-03-20 02:56:10', '2022-03-20 02:56:10'),
(1818, 1, 'IUWoOMPv1xj0waPo9Xtxc15pRfhZ4H77', '2022-03-20 03:29:11', '2022-03-20 03:29:11'),
(1819, 1, '2MHFmZH3OIFW8rfFrc0s6eq53JyGBfzu', '2022-03-20 15:21:04', '2022-03-20 15:21:04'),
(1820, 1, 'pHaV8t6I6feZPLi8g1uEZzNSAZP05fil', '2022-03-20 16:54:41', '2022-03-20 16:54:41'),
(1821, 1, 'DccpNlvTMwfbrktpDEDADjRpHdDRBLQi', '2022-03-20 17:24:02', '2022-03-20 17:24:02'),
(1822, 1, 'mfv8cajbxTfw6naMjNAgO0LxCShAfGel', '2022-03-20 22:49:04', '2022-03-20 22:49:04'),
(1824, 1, 'bh4VlOoqFN2Jz0ZldU63MYi2c1EUjYca', '2022-03-21 03:27:41', '2022-03-21 03:27:41'),
(1825, 1, 'TEPI62eZxGCVHfASmmI9rBaO3y22FZ71', '2022-03-21 12:44:07', '2022-03-21 12:44:07'),
(1826, 1, 'XKBQS4oaRckVTEzQ3nOYvSKVOlpxQTlB', '2022-03-21 14:18:22', '2022-03-21 14:18:22'),
(1827, 1, 'j30Iy0MeLNt3RM0DYly4BAR51Lk4FqBB', '2022-03-21 15:20:02', '2022-03-21 15:20:02'),
(1828, 1, 'TeTmGbgAGaxvMvX0r4miBmtoCd5Bugt1', '2022-03-21 15:56:11', '2022-03-21 15:56:11'),
(1829, 1, 'LetbME4TOV6o6za25i06xGMUX521pSqv', '2022-03-21 15:57:30', '2022-03-21 15:57:30'),
(1830, 1, '3UJjYj2jy2jbX8yq7rTJ8BVl2yFuXdek', '2022-03-21 17:58:25', '2022-03-21 17:58:25'),
(1831, 1, 'EN8VusKOWMJg4GqVDcOKLjXK7K4DSF9A', '2022-03-21 18:53:44', '2022-03-21 18:53:44'),
(1832, 1, '7aQ4pcfGa3Km4udNrC4Spruu8BTpL6ik', '2022-03-21 18:55:17', '2022-03-21 18:55:17'),
(1833, 1, 'xIsxnJFP4FTv2MjM7rAERQ8RuO1oUo5l', '2022-03-21 19:20:17', '2022-03-21 19:20:17'),
(1834, 1, 'kxCpgl8kIvnjOX4EkSf19HnyVTudnAXd', '2022-03-21 19:49:47', '2022-03-21 19:49:47'),
(1835, 1, 'z1ikyfqCM5XbJFmhMpV2nMlPuM9CABcK', '2022-03-21 20:07:42', '2022-03-21 20:07:42'),
(1836, 1, 'hcRUbJIyvPWD4C73jITcjfVqyud6YL5g', '2022-03-21 21:58:06', '2022-03-21 21:58:06'),
(1837, 1, 'klflkpE5GNGDpk1gEsNGAne2epbwSwME', '2022-03-22 01:47:19', '2022-03-22 01:47:19'),
(1838, 1, 'wp7tHIYngRilUK2QYdivUMcRYum8YglC', '2022-03-22 03:35:09', '2022-03-22 03:35:09'),
(1839, 1, 'JS3pRgmUqExNpIIb9EyFYxT35c4MCmeK', '2022-03-22 03:53:25', '2022-03-22 03:53:25'),
(1840, 1, 'LfxuT7g8JOweJviiyWUK3xFfLklyvam9', '2022-03-22 12:55:22', '2022-03-22 12:55:22'),
(1841, 1, 'hyzi4tQByMnNXReOvvPZLSbmmen86xg9', '2022-03-22 13:47:21', '2022-03-22 13:47:21'),
(1842, 1, 'aC8rKelBSyUBTA8E5a8bunanc86JSHIk', '2022-03-22 17:30:41', '2022-03-22 17:30:41'),
(1843, 1, 'YM0zBuDPjQSIBKkTEPlCofCR1HeGOkLv', '2022-03-22 17:44:43', '2022-03-22 17:44:43'),
(1844, 1, 'zoCNZHRTVdBQO0ZJYD09OAMk3PVxRXPL', '2022-03-22 17:44:44', '2022-03-22 17:44:44'),
(1845, 1, 'tqQ08mh5Vhwl3sR5nLjLyLbHf0TXpkLr', '2022-03-22 18:20:11', '2022-03-22 18:20:11'),
(1846, 1, '0YTMdE1x1RI2EREEalDYvIHBlyD0DfpJ', '2022-03-22 21:47:43', '2022-03-22 21:47:43'),
(1847, 1, 'Pbc2UBX90UW4HqixivoTDCEqAYuEgG4W', '2022-03-23 00:14:56', '2022-03-23 00:14:56'),
(1848, 1, 'coM5YHV65m6QqirJx5cYYtVm5MGj69u7', '2022-03-23 09:09:08', '2022-03-23 09:09:08'),
(1849, 1, 'fIglPXz5TPbsnNzMLOJyfSlAIeZVXj22', '2022-03-23 11:11:45', '2022-03-23 11:11:45'),
(1850, 1, 'FEpRydrETDbHYglkNEP9W96sKZXtbIiv', '2022-03-23 11:36:54', '2022-03-23 11:36:54'),
(1851, 1, 'zauMpmx5szgDRj65mlYWhxstPTT5Zmzs', '2022-03-23 13:19:06', '2022-03-23 13:19:06'),
(1852, 1, 'Wk9v3SmnpQreXE5xo0wTAQ0hk5KZ0vQO', '2022-03-23 14:35:15', '2022-03-23 14:35:15'),
(1853, 1, 'Bb4wxcDHDmlYcSUvGIpFeosiSEUZAchG', '2022-03-23 14:48:32', '2022-03-23 14:48:32'),
(1854, 1, '2ZNbF1bO3hxVuo3VWOJYbOD58pzbCVjB', '2022-03-23 14:59:16', '2022-03-23 14:59:16'),
(1855, 1, 'T5xZYscA7Q2aHGWFv2yunZq6W2VnhVRp', '2022-03-23 15:09:29', '2022-03-23 15:09:29'),
(1856, 1, 'Sgct27d2Wspcl8jTjVzb9rG9XiVgzye2', '2022-03-23 16:03:17', '2022-03-23 16:03:17'),
(1857, 1, '6dWitRHatqcmqY35ckYbgpO1aYXXPUrW', '2022-03-23 17:27:48', '2022-03-23 17:27:48'),
(1858, 1, 'yVHZZvEH89NRLQ05kvQzneMFHbkI2ToU', '2022-03-23 17:30:43', '2022-03-23 17:30:43'),
(1859, 1, '8rLOkHUlhumJXu1xc4qaEH2yiaavLd5t', '2022-03-23 18:34:17', '2022-03-23 18:34:17'),
(1860, 1, 'iLjGW1wS5xMEznUWblCdYrVCL93SkLJR', '2022-03-23 20:06:09', '2022-03-23 20:06:09'),
(1861, 1, 'JJfhDZpJgfdYHeHHUugwOSXY0js8CSYV', '2022-03-23 20:06:56', '2022-03-23 20:06:56'),
(1862, 1, 'oeJZ8ZDtDv4ENfjPFngiZ4YMWY3jdv0f', '2022-03-23 21:54:29', '2022-03-23 21:54:29'),
(1863, 1, 'iwrEAVL4eCcB3Ei3aN9rxIgMAuZNSxKz', '2022-03-23 21:56:31', '2022-03-23 21:56:31'),
(1864, 1, 'epkbyD0SWyBSsyOJqt4vAYwWUPJYAKCW', '2022-03-24 12:57:48', '2022-03-24 12:57:48'),
(1865, 1, '39RoxSfq8FAJZ0jzp2S6zFMKXqUxuMAv', '2022-03-24 15:57:07', '2022-03-24 15:57:07'),
(1866, 1, 'f5HchJQUjEnUABWbE2EUafyoggMEMFMi', '2022-03-24 16:06:39', '2022-03-24 16:06:39'),
(1867, 1, 'Umy5gIXMuMGeIVpf641ZqeY6QZwmOmXG', '2022-03-24 20:17:58', '2022-03-24 20:17:58'),
(1868, 1, 'V0bq5LmQMCbYy4kswMC0fYZafvrVmfzg', '2022-03-24 20:31:04', '2022-03-24 20:31:04'),
(1869, 1, 'mElP3LBDfSdBuFM9VFXFRWQXQzfXeTgd', '2022-03-24 21:29:29', '2022-03-24 21:29:29'),
(1870, 1, 'QKotNq2zCWgHP0W2ZI0SDVl2Iz9uqXt4', '2022-03-24 23:04:08', '2022-03-24 23:04:08'),
(1871, 1, 'MMwYd5irTcM7iPtrj6o2YUEYmlNiaPlP', '2022-03-25 00:59:40', '2022-03-25 00:59:40'),
(1873, 1, 'hnyJa5hhHtq89Lv8A6BWeYe7ZBjCekhW', '2022-03-25 05:21:34', '2022-03-25 05:21:34'),
(1874, 1, 'tbDEcv9p1Q8tdGVFgFb2vd69XjepGPio', '2022-03-25 11:25:09', '2022-03-25 11:25:09'),
(1875, 1, '3Rx7GrJQe8esJTfDN5ZZzTRgjpJ0Aubl', '2022-03-25 11:25:49', '2022-03-25 11:25:49'),
(1877, 1, '0L159Ns8ictaiJ46oSIILKnY5oLitmn0', '2022-03-25 16:34:23', '2022-03-25 16:34:23'),
(1878, 1, 'qtOFGtCLbwz3J6cuJVrF4Pd3skhxJNKS', '2022-03-25 17:17:26', '2022-03-25 17:17:26'),
(1879, 1, 'YIOH0Q1jZQjuvWCKiXCICuJiw5l3iMWV', '2022-03-25 17:53:36', '2022-03-25 17:53:36'),
(1880, 1, 'bheVYMTg027FZFk2qO9X3J2hlhOq4IV8', '2022-03-25 18:19:14', '2022-03-25 18:19:14'),
(1881, 1, 'SK94lWRERB0IvDhWNHIbNuEWEwTO4yyp', '2022-03-25 18:40:51', '2022-03-25 18:40:51'),
(1882, 1, 'erohls7uQwxav2cBXltGgjRV4lsTOvff', '2022-03-25 18:54:33', '2022-03-25 18:54:33'),
(1883, 1, 'RHur7XwE785iQvGbKW0U1yEMd3dyNuzK', '2022-03-25 19:02:27', '2022-03-25 19:02:27'),
(1884, 1, 'umSTwER2GdFn4u1JREyuUOfzKAtxstil', '2022-03-25 20:00:04', '2022-03-25 20:00:04'),
(1885, 1, 'mRszyGlpLk1fXwVmCsRgwooPbSqQF0Ej', '2022-03-26 04:31:35', '2022-03-26 04:31:35'),
(1887, 1, 'Wgedo1dsVUp06H6c9b13MXYXYuCl3Rf0', '2022-03-26 08:33:45', '2022-03-26 08:33:45'),
(1888, 1, 'w0ATUgekZzkDpI7K3cJA7zvsnQ5Ej6AE', '2022-03-26 10:22:07', '2022-03-26 10:22:07'),
(1889, 1, '5fMAN33ecYes8ZBEgKUEpT6225jrfBWZ', '2022-03-26 10:58:54', '2022-03-26 10:58:54'),
(1890, 1, 'Xi92kfcKOva9uvklwcZ65ETdrzYJGU8g', '2022-03-26 14:18:01', '2022-03-26 14:18:01'),
(1891, 1, '8f3TIRJjJkUMwxgI99Z2cN6alqv58Z9P', '2022-03-26 15:28:53', '2022-03-26 15:28:53'),
(1892, 1, 'aA3t2hiwqv3FOSF3fzdqFXTcy3IVQyzH', '2022-03-26 16:06:26', '2022-03-26 16:06:26'),
(1893, 1, 'TujaoOjrRv7DgdiEs6zpkNtCNQhlf9Ff', '2022-03-26 17:17:59', '2022-03-26 17:17:59'),
(1894, 1, 'EAEElfqUPkqbN7WL9xRgzFQOzNiHxqP5', '2022-03-26 17:29:04', '2022-03-26 17:29:04'),
(1895, 1, 'fukQrssFcRXyLwBbUS8nAfDpo1V7Jfja', '2022-03-26 21:37:17', '2022-03-26 21:37:17'),
(1896, 1, 'wsKVeczOW2FblajqAhjWfADHcBEEqJ8H', '2022-03-26 22:18:43', '2022-03-26 22:18:43'),
(1898, 1, 'SEvqQZtMFiv5KkSXQKTbzu3FbNsFKeJB', '2022-03-27 08:12:00', '2022-03-27 08:12:00'),
(1899, 1, 'my2e2CP9zZO1kyRXd23Dl1bdOXFc8lqo', '2022-03-27 09:04:33', '2022-03-27 09:04:33'),
(1901, 1, '8fRB7N075r8sSjV5Lc4qryHKqRyWqytA', '2022-03-27 13:41:52', '2022-03-27 13:41:52'),
(1902, 1, 'vBfRoSdoIDmx9vJYbCqZCuQD2HCQ5OMd', '2022-03-27 14:04:42', '2022-03-27 14:04:42'),
(1903, 1, '9E0L4lX4sCBmcwmpI4uWwJfXovov3kJ9', '2022-03-27 17:31:35', '2022-03-27 17:31:35'),
(1904, 1, 'OoulGSiNlrkgR8iRbn7q7dMBMjr9girV', '2022-03-27 18:26:44', '2022-03-27 18:26:44'),
(1905, 1, 'Dgi2L3SsRMRevnBgryqQlLPCSb9KEqlC', '2022-03-27 19:31:17', '2022-03-27 19:31:17'),
(1906, 1, 'glXF72uTaTfaFYMIDRW97zIKutykU4ZP', '2022-03-27 20:32:19', '2022-03-27 20:32:19'),
(1907, 1, 'YU4nqEIQwf0LS6OWo200rxaFhTz23zED', '2022-03-27 22:42:32', '2022-03-27 22:42:32'),
(1908, 1, 'aLSC8OQR7yLyClaUuREdLcXNIquMblpF', '2022-03-27 22:59:56', '2022-03-27 22:59:56'),
(1909, 1, 'tuT4w1zkniuE7Cr3CLBzDU5WidbdMbck', '2022-03-28 00:49:46', '2022-03-28 00:49:46'),
(1910, 1, 'BTgRp3vPgfc32Wi8eZhaOulCFcpVTzZy', '2022-03-28 01:12:49', '2022-03-28 01:12:49'),
(1911, 1, '9GA25AFvbnjkl3ShoF46bNAOYL64sfPr', '2022-03-28 05:50:25', '2022-03-28 05:50:25'),
(1912, 1, 'q24R2JaFPlxz6vhaFdu5mYcYR8Z9gPlT', '2022-03-28 11:08:06', '2022-03-28 11:08:06'),
(1914, 1, 'xGrdwQlBgf2ur2CgFsTu1DYqahOJhjpu', '2022-03-28 11:53:27', '2022-03-28 11:53:27'),
(1915, 1, 'sP6MGyGQjybPpKz0T0VvPMnMUry5mvOO', '2022-03-28 11:53:47', '2022-03-28 11:53:47'),
(1916, 1, 'zT0nD0mqpA09c0PU7fzJ0nUbAtWha4nA', '2022-03-28 12:30:08', '2022-03-28 12:30:08'),
(1917, 1, 'MdlhEtGIZiMTmqiniTMru220oWlrAPrt', '2022-03-28 12:41:05', '2022-03-28 12:41:05'),
(1918, 1, 'FSymjFEP6Ma9YDeyGcoPLBEZG91jtVjO', '2022-03-28 16:55:37', '2022-03-28 16:55:37'),
(1920, 1, 'iyNfQEwBKQuryJfwiNIien26rdyooVTY', '2022-03-28 21:25:53', '2022-03-28 21:25:53'),
(1921, 1, 'EfvRWjT107Ul8z29dQBZkWmGMN0NnFpi', '2022-03-28 21:53:55', '2022-03-28 21:53:55'),
(1922, 1, 'T2HNuFPyq27SPkH7OT4sLAQj2FtsbLdM', '2022-03-28 22:55:49', '2022-03-28 22:55:49'),
(1923, 1, 'fXVO4eiKY13kVfoMnBlwsC8GhbiXvr59', '2022-03-28 23:52:05', '2022-03-28 23:52:05'),
(1924, 1, 'plmPuLPktGHyMJ0Lw028i87HWss7HQlg', '2022-03-29 00:27:21', '2022-03-29 00:27:21'),
(1925, 1, 'jMgh0h0zrxJEesWcaI1ODPKWLG7zFz9N', '2022-03-29 01:57:28', '2022-03-29 01:57:28'),
(1926, 1, '6qODKH8k0KjPiNh5fyHlDz7NmeOyV1CY', '2022-03-29 02:53:00', '2022-03-29 02:53:00'),
(1927, 1, 'bRtkA44q7J0Jq2elfn9Cir27sVa7w8cA', '2022-03-29 05:04:36', '2022-03-29 05:04:36'),
(1929, 1, '37bBWHzUE48gTmceGnFrMPZ92eEUnuAV', '2022-03-29 07:37:44', '2022-03-29 07:37:44'),
(1930, 1, 'YMS3CnlMipHUE0gQM6wSTQNi1Lb0QWON', '2022-03-29 09:42:23', '2022-03-29 09:42:23'),
(1931, 1, 'Bvzegxn2DxhwuFU14FdCBjsX7xY41R2j', '2022-03-29 10:03:31', '2022-03-29 10:03:31'),
(1932, 1, 'TI5PdE22tJYKQ5z2L9q2URNXbCuvNuWw', '2022-03-29 12:52:10', '2022-03-29 12:52:10'),
(1933, 2, 'DnUYDhFsxgOgRHJu2sS5cxkFKlmmX2kU', '2022-03-29 13:04:57', '2022-03-29 13:04:57'),
(1934, 1, 'cMomQLYeG7FN3NWUf5v8XjLH3ZOr4ph7', '2022-03-29 14:34:31', '2022-03-29 14:34:31'),
(1935, 1, '5jSBfIqzv6rsGWHXgf8DfOSiITUaObGO', '2022-03-29 15:50:49', '2022-03-29 15:50:49'),
(1936, 1, 'RutKllT6oxSrBNcfVFC0qrsWylvIEV1Z', '2022-03-29 16:02:12', '2022-03-29 16:02:12'),
(1937, 1, '3stMm1XmpBfXrAYhiHHfUHMAh6KyWMoC', '2022-03-29 16:15:42', '2022-03-29 16:15:42'),
(1938, 1, 'JT0aauU39QK6RomeWztsSvObnUyIkTYn', '2022-03-29 16:31:53', '2022-03-29 16:31:53'),
(1940, 1, 'fwUavlRQhO0mHByW9w6cNzA4epDJVTCa', '2022-03-29 18:25:22', '2022-03-29 18:25:22'),
(1941, 1, 'MOtFH2FSjOnYWoCXDC4YRJOPLQEKzSYo', '2022-03-30 01:51:11', '2022-03-30 01:51:11'),
(1942, 1, 'OkA6023YDc2dc0IjSqmz8lMXoJ2oXMR8', '2022-03-30 08:58:48', '2022-03-30 08:58:48'),
(1943, 1, 'TbVqIgbCx8xQgfbttwGuKr4UTizykTcx', '2022-03-30 09:18:32', '2022-03-30 09:18:32'),
(1944, 1, 'BEDG7e9lH7A11RxLESWCKC5md7U4pDl8', '2022-03-30 10:02:39', '2022-03-30 10:02:39'),
(1945, 1, '5eRaUvP9HTIca2n2rwA7Piw7dXWt8NV4', '2022-03-30 11:04:19', '2022-03-30 11:04:19'),
(1946, 1, 'XtK92VpMWlEjDIBmIHZKW7JCJ9LQ0miK', '2022-03-30 11:07:37', '2022-03-30 11:07:37'),
(1947, 1, 'FyKdltyJaw9amMuG7ciBmNfDSAWH3Rc6', '2022-03-30 11:14:45', '2022-03-30 11:14:45'),
(1948, 1, 'ZM3ynLzXAFDO5mUJMbNMXY5yldEJGqht', '2022-03-30 12:42:36', '2022-03-30 12:42:36'),
(1949, 1, '8lridf70vGajB8wcomttmNyCzBf8DNPs', '2022-03-30 13:23:58', '2022-03-30 13:23:58'),
(1950, 1, 'cCyUnSZi3fkQQrl3I3Rdta39RHaj9RiK', '2022-03-30 13:36:01', '2022-03-30 13:36:01'),
(1951, 1, 'W0E3iTbUMMUkJ4hYoT1NhSv1fL4RSP14', '2022-03-30 20:49:24', '2022-03-30 20:49:24'),
(1952, 1, 'N9rtUpmh3oBbxS8haaJqT63lJiJCUgUH', '2022-03-30 23:06:48', '2022-03-30 23:06:48'),
(1953, 1, 'up7PmMRjtfu03ScWTIIje9uDIyIHIb5T', '2022-03-30 23:16:22', '2022-03-30 23:16:22'),
(1955, 1, 'QaoEb05zuGGsD1Jg1hsU16v33djj8UBW', '2022-03-31 06:31:56', '2022-03-31 06:31:56'),
(1956, 1, 'UJpuubHSHowVhIBS5leq5kr46QIaYlVo', '2022-03-31 07:58:40', '2022-03-31 07:58:40'),
(1957, 1, 'YovN3nLUKWNviEK5UluN23m6VGjRRemH', '2022-03-31 08:01:41', '2022-03-31 08:01:41'),
(1958, 1, 'yjXOVi4GSqyKmihDeDdBVTQE4d0CeR9U', '2022-03-31 09:01:12', '2022-03-31 09:01:12'),
(1959, 1, 'IdSj6YE42CxVgV4hOGDMhCMu3F2JDOaQ', '2022-03-31 14:47:26', '2022-03-31 14:47:26'),
(1960, 1, 'oY6etENGULmvBY8tmAoyTYMe5fD7ikON', '2022-03-31 14:47:55', '2022-03-31 14:47:55'),
(1962, 1, '6e3L2YeQgkiTwRPjeYbHLOzs6fejHiMe', '2022-03-31 20:43:35', '2022-03-31 20:43:35'),
(1963, 1, 'vIkPKEdYudyZhpCVN4leaWfU7MdBUSZs', '2022-03-31 20:48:18', '2022-03-31 20:48:18'),
(1964, 1, 'bC02UgtivldwY4NF9yVSCAFBWVnzzUfE', '2022-03-31 21:07:47', '2022-03-31 21:07:47'),
(1965, 1, 'atqkEmtyxILsgc2J87l6AIE44u1W5D5a', '2022-03-31 22:39:15', '2022-03-31 22:39:15'),
(1966, 1, 'n9x7knsv9qWHBvdY3OZ68lyJ2IPBUtn4', '2022-03-31 23:03:25', '2022-03-31 23:03:25'),
(1967, 1, 'TnlOP3Qdq3FZ65M441rW9CmU3VbsVSJL', '2022-04-01 07:08:11', '2022-04-01 07:08:11'),
(1968, 1, 'rhTCQMFa4Jiw2feB0r8y30xU6IYJG3de', '2022-04-01 10:02:00', '2022-04-01 10:02:00'),
(1969, 1, 'FxOERpZXG6AqkBqv7URoXEgz0pz0JAOm', '2022-04-01 14:00:59', '2022-04-01 14:00:59'),
(1970, 1, 'znAuW0pZfRQk3cndqDl7NJlnIRARecOc', '2022-04-01 18:07:45', '2022-04-01 18:07:45'),
(1971, 1, '6egRPmAbpQKuIf8RhK0Bw07Spq4nP7iZ', '2022-04-01 20:14:32', '2022-04-01 20:14:32'),
(1972, 1, 'gxer3WbL9mRqC5msahW3xwXfE5soiGPY', '2022-04-01 20:35:17', '2022-04-01 20:35:17'),
(1973, 1, 'FDxzmDAHY7CT76Z4NjZ0MTiiWLzYnm5r', '2022-04-01 22:43:21', '2022-04-01 22:43:21'),
(1974, 1, 'E8MMKs9061icnd8uddVZP9ry5l1LJqcq', '2022-04-01 23:37:38', '2022-04-01 23:37:38'),
(1975, 1, 'Dyw5EVyalnsxp2nsyaitifwtvQg2dY1A', '2022-04-01 23:44:51', '2022-04-01 23:44:51'),
(1976, 1, 'niC3zjyx3pNiaoA2QxLClwi9xsoDTV77', '2022-04-02 03:35:10', '2022-04-02 03:35:10'),
(1978, 1, 'qF7pozQTO3Vn0SRnjF1VCylsPgHwcVgC', '2022-04-02 03:55:40', '2022-04-02 03:55:40'),
(1979, 1, 'nxquQnk5BuyvKnL1u7mrAjjpnSB6vwFK', '2022-04-02 05:31:17', '2022-04-02 05:31:17'),
(1981, 1, 'cThQ9hLZiXOmDJXXmFOR4thakaR19CJj', '2022-04-02 10:28:16', '2022-04-02 10:28:16'),
(1982, 1, '8nj3wejrfom7XrvJg8vxMh4vDs0bdhgA', '2022-04-02 11:51:34', '2022-04-02 11:51:34'),
(1983, 1, 'H6HtUqO368j479tPKYEtxe9YEKqJ7D8V', '2022-04-02 14:13:52', '2022-04-02 14:13:52'),
(1984, 1, '8nwPcJLJ6NEWtQn2eqpmgjNd07e15tT6', '2022-04-02 19:24:47', '2022-04-02 19:24:47'),
(1985, 1, 'KPDQGqLt4rdCIRDZcmrCYt7k2PmlwR6N', '2022-04-02 20:46:00', '2022-04-02 20:46:00'),
(1986, 1, 'xcuPVw3t8gmniOukewNLBFiBPz0P8low', '2022-04-02 23:04:01', '2022-04-02 23:04:01'),
(1987, 1, 'AYbNJPDzJhLb2MpD6PrA7qWM3Q25AaMm', '2022-04-02 23:09:23', '2022-04-02 23:09:23'),
(1988, 1, 'NMQGuhRzMO9XKZZ3hn9UTlJ1Fqjjr7Fb', '2022-04-03 00:25:42', '2022-04-03 00:25:42'),
(1989, 1, 'uQw4CddnT5QQ9nL7mlyckZ1S0sYhLrEP', '2022-04-03 02:15:15', '2022-04-03 02:15:15'),
(1990, 1, '2hb3onsOIqpkaPk6rER5K7UWs8JjQNOv', '2022-04-03 04:03:58', '2022-04-03 04:03:58'),
(1991, 1, 'iBia6SW8ekvbQXSoOZn1mZ5fZaArveN6', '2022-04-03 09:21:58', '2022-04-03 09:21:58'),
(1992, 1, '9lwwkcztE64rBQwfqXoMKmHLPBGP36a9', '2022-04-03 16:58:33', '2022-04-03 16:58:33'),
(1993, 1, 'ap1ytx5iRT7H2qaJXezyNXozZrQmqmAi', '2022-04-03 19:49:23', '2022-04-03 19:49:23'),
(1994, 1, 'H90jkQhgfg6rx3McwOMNbtgUDKeV4hlo', '2022-04-03 21:47:09', '2022-04-03 21:47:09'),
(1995, 1, 'MRsIOJfBhO1P49yB0f8BCZe19RncIvgn', '2022-04-03 22:24:49', '2022-04-03 22:24:49'),
(1996, 1, 'S2iX2DrvUL3O8O9SKJuWMw0yemSj6JQP', '2022-04-03 22:47:20', '2022-04-03 22:47:20'),
(1997, 1, 'YwYO03M0gtx2eRaKU1BgsKfDREL3lBap', '2022-04-03 23:03:17', '2022-04-03 23:03:17'),
(1998, 1, 'XaNtMjvBe6PROt9CVjFkmplsm1kwvMXq', '2022-04-03 23:48:22', '2022-04-03 23:48:22'),
(1999, 1, 'mQsVERscQoMjfifWBKGkBWwBm8vNvXc9', '2022-04-03 23:50:41', '2022-04-03 23:50:41'),
(2000, 1, 'tV6Tvvg24VkFNE7dog4kzzQrJDdGGDRJ', '2022-04-04 02:24:19', '2022-04-04 02:24:19'),
(2001, 1, 'btKSs5hniF9tSlewKqRTeYnTGY6291Ln', '2022-04-04 04:26:50', '2022-04-04 04:26:50'),
(2002, 1, 'nZM4dZK0QqVrmm5qEf1UoNq5GRPACpgN', '2022-04-04 04:55:25', '2022-04-04 04:55:25'),
(2003, 1, 'BSQY9OLxZclGO890nVkbZEH3BOAYxFfP', '2022-04-04 06:24:03', '2022-04-04 06:24:03'),
(2005, 1, '4cYVLafP1W3bJXX6N4SuKfJ7ETuKrHH7', '2022-04-04 08:24:05', '2022-04-04 08:24:05'),
(2006, 1, 'ywoiilEWfnXOIerHE1beJ1asdpfSNeet', '2022-04-04 09:18:14', '2022-04-04 09:18:14'),
(2007, 1, 'qOmqUUJbh4zLF3Fsydk4wBjthw3Er50y', '2022-04-04 12:21:54', '2022-04-04 12:21:54'),
(2008, 1, 'sHgmXD3Mtacx9ONPeS7WdkDLaGRUQIUS', '2022-04-04 12:28:51', '2022-04-04 12:28:51'),
(2009, 1, 'cd3K096fInugVBQL46DP4yeBTSqu6u3K', '2022-04-04 12:34:51', '2022-04-04 12:34:51'),
(2011, 1, 'cKPRGxz5V0j1k0BynrKFQReFsBExE7RT', '2022-04-04 15:26:14', '2022-04-04 15:26:14'),
(2012, 1, 'gtUUm5IRtwy5RHOnorDatjWvucKBP73A', '2022-04-04 15:48:50', '2022-04-04 15:48:50'),
(2013, 1, 'ItS2XaHSoaFYNuUhkzh02iYsqk9KEcOy', '2022-04-04 18:09:14', '2022-04-04 18:09:14'),
(2014, 1, 'y381rGYs40f4zUuloMPAGUS94uNxtezA', '2022-04-05 00:15:14', '2022-04-05 00:15:14'),
(2015, 1, 'N0084ZsGA6ITFHQ0HPr917A24QkaHdF2', '2022-04-05 05:20:40', '2022-04-05 05:20:40'),
(2016, 1, '3vmFf3dpoU3igNGXhp0APvZ53yCVsKJR', '2022-04-05 05:53:03', '2022-04-05 05:53:03'),
(2017, 1, 'lTQpXaNosF5W6GOTxAdBpmh5mHHiZEjB', '2022-04-05 06:05:40', '2022-04-05 06:05:40'),
(2018, 1, 'DNfLwh5HpteGsi1PCaTIUThssLkUVaqq', '2022-04-05 08:42:15', '2022-04-05 08:42:15'),
(2019, 1, 'HvibtfDotHb0VaxXQbzmQXYF19yFUTWI', '2022-04-05 09:52:03', '2022-04-05 09:52:03'),
(2020, 1, 'En08xFCUYIY9hYU9s9CCVK1ALvjSnnzc', '2022-04-05 11:18:01', '2022-04-05 11:18:01'),
(2022, 1, 'p836hsDfvxKEvKH40yV2wMlf5RTyWzKs', '2022-04-05 14:43:56', '2022-04-05 14:43:56'),
(2023, 1, 'dgCzRR0CZOvHG4sjEGgx3gsFIvvTumGD', '2022-04-05 15:44:12', '2022-04-05 15:44:12'),
(2024, 1, '4lQcH2YW5OitOCQNbxGXGr9cTTPNuTi8', '2022-04-05 17:19:25', '2022-04-05 17:19:25'),
(2025, 1, 'SM3wuQWonqGlBWLjNm5xpcYEIS9v6NPK', '2022-04-05 20:00:42', '2022-04-05 20:00:42'),
(2026, 1, 'O3TDkIaDJAVzGTkpJnrvYUPpoOR3dC8t', '2022-04-05 22:30:34', '2022-04-05 22:30:34'),
(2027, 1, 'fMqo1B2dz74YgAbJ971phMyvRrpDvHdH', '2022-04-05 22:50:26', '2022-04-05 22:50:26'),
(2028, 1, '7ge4qJxiQQz1jTDZD8zBXfl6QKBFBqUP', '2022-04-05 23:40:01', '2022-04-05 23:40:01'),
(2029, 1, 'ebY6IrQAbORHftueQS1onZIc0OzPQ2q6', '2022-04-05 23:45:19', '2022-04-05 23:45:19'),
(2030, 1, '5WTy67M7etfm4xRLgyT5ewQjIr03mtoA', '2022-04-06 00:53:15', '2022-04-06 00:53:15'),
(2031, 1, '1KVNR8Cdn2A61ktkVAAQen1xu6UQ8FoT', '2022-04-06 02:48:42', '2022-04-06 02:48:42'),
(2032, 1, 'G667bvnLAQQiYvZ6YMJgKjtGFqCOvNy5', '2022-04-06 06:26:27', '2022-04-06 06:26:27'),
(2033, 1, 'BSb5yWnKuvJCd0IXPrY5AQtsgnJXZTHs', '2022-04-06 14:47:15', '2022-04-06 14:47:15'),
(2034, 1, 'mkW0sSgj6x9XCoknprrDrKmGkFaeqnqn', '2022-04-06 15:17:22', '2022-04-06 15:17:22'),
(2035, 1, 'OPxIUEzwSa58xCazX8IxBX65izfwaVCF', '2022-04-06 16:17:46', '2022-04-06 16:17:46'),
(2037, 1, 'OEN84W2JHVX1F0Kw7yBEeYF1QXEaENWs', '2022-04-06 21:41:41', '2022-04-06 21:41:41'),
(2038, 1, 'eD91DUaXHaKuPTqvrTcI7asjzEv5CH1h', '2022-04-06 21:50:18', '2022-04-06 21:50:18'),
(2039, 1, 'Aza5w4pdHfmPJM65q7FTPS4peGgJqZt9', '2022-04-06 22:27:12', '2022-04-06 22:27:12'),
(2040, 1, 'OwkiDz4YrPSsgDN04kck9nFowGIvCrWe', '2022-04-06 22:31:38', '2022-04-06 22:31:38'),
(2041, 1, 'lCw8jPddbVcNez2kAW8RRMID7X0s7BSx', '2022-04-06 22:55:17', '2022-04-06 22:55:17'),
(2042, 1, 'gW5TV3BiH6TROlO1bxcOayGxpYiOzjXF', '2022-04-07 00:49:15', '2022-04-07 00:49:15'),
(2043, 1, 'lU4XR73BzskqOejIVyDEN4LQBA88twRV', '2022-04-07 03:22:26', '2022-04-07 03:22:26'),
(2044, 1, 'sFx0Tu0NGE69fUjK28FMOmf7JhDj1jng', '2022-04-07 03:57:42', '2022-04-07 03:57:42'),
(2045, 1, 'BYLe1o2b02Pt5iYl6uThxSZgrS08S86C', '2022-04-07 04:23:00', '2022-04-07 04:23:00'),
(2046, 1, 'Lvte2zKiehttvJf5sDAmE4duspluVcBI', '2022-04-07 08:13:07', '2022-04-07 08:13:07'),
(2047, 1, 'KodTa9VZGDaAgwtdam1FGSbUCpO7f7X8', '2022-04-07 11:12:30', '2022-04-07 11:12:30'),
(2048, 1, 'KVqsJ6aW2KSj1RGEZWSq2C8VA8sizeP5', '2022-04-07 14:44:40', '2022-04-07 14:44:40'),
(2049, 1, 'SwwRrAEXxwvoVaFClujtoxNd0OqyMzQe', '2022-04-07 16:53:15', '2022-04-07 16:53:15'),
(2050, 1, 'KObbXqn7sL9XXIlCIkiPdSHDxF7CJwvB', '2022-04-07 18:50:17', '2022-04-07 18:50:17'),
(2051, 1, 'Ks0elPNbPzSvzRpLv8riRs3O0USRx0Ez', '2022-04-07 20:20:08', '2022-04-07 20:20:08'),
(2052, 1, '3NsSY92N8MHDmvQ0FnFYMcwtnY5ukRIh', '2022-04-07 20:35:17', '2022-04-07 20:35:17'),
(2053, 1, 'xNpVtUpJ5JplXc0RxNrB1OVYzjBe6rUw', '2022-04-07 21:56:12', '2022-04-07 21:56:12'),
(2054, 1, 'oXC9dicjgsF6ns74Ea7jdUvlng0KFCpV', '2022-04-08 01:41:06', '2022-04-08 01:41:06'),
(2056, 1, 'yo26GaYmoLRSdWhMGpDPHrPGbZsjYfmN', '2022-04-08 06:21:49', '2022-04-08 06:21:49'),
(2057, 1, '9FbPHV1m2AuJLjFJVbrztOH2o4RaXuhJ', '2022-04-08 10:02:00', '2022-04-08 10:02:00'),
(2058, 1, 'syyuLiPdJvw7afCCrcn4CjylwmRYNYnP', '2022-04-08 11:00:21', '2022-04-08 11:00:21'),
(2059, 1, 'NfWCPKhiMK7lSyfdy8aGI2NTa50KvIxK', '2022-04-08 14:19:42', '2022-04-08 14:19:42'),
(2061, 1, 'tob6P4yUaZv9vjKMC4qPQD6h6TwbB1cf', '2022-04-08 15:55:03', '2022-04-08 15:55:03'),
(2063, 1, 'bLzavED31N4gysDTRxpivCGdcOmv98gt', '2022-04-08 16:12:57', '2022-04-08 16:12:57'),
(2064, 1, '499vUcIdBmZG06N4qbxBihRrboxrDrS4', '2022-04-08 16:39:16', '2022-04-08 16:39:16'),
(2065, 1, '3upfWkaGPXF9Y86Jrka1n6xHNmNmDzpj', '2022-04-08 18:03:01', '2022-04-08 18:03:01'),
(2066, 1, 'BkCzNImPJTDAbTBm9D0Suu8R6svB4M6W', '2022-04-09 00:37:21', '2022-04-09 00:37:21'),
(2067, 1, '76Tq4XUgzWQAY10yzf0i1d8OKr2QGAzP', '2022-04-09 01:56:45', '2022-04-09 01:56:45'),
(2068, 1, '5CxuhT5HrmNjorLoVuyWW5Z1OHNUpHNb', '2022-04-09 03:08:27', '2022-04-09 03:08:27'),
(2069, 1, 'sNJCJlsD7AJhpnewsSo70AgnZVhAxrZN', '2022-04-09 07:11:50', '2022-04-09 07:11:50'),
(2070, 1, 'SpaMXVv3UJM9OuGhkef9g5JXcacqpk8g', '2022-04-09 08:20:19', '2022-04-09 08:20:19'),
(2071, 1, 'jLUVBZq2YMDLtLGSSSdD45LzxgE15fLp', '2022-04-09 13:13:55', '2022-04-09 13:13:55'),
(2072, 1, 'ryyK7qy3UZ2v76HvPTy7QpvaTZAURYoM', '2022-04-09 13:22:36', '2022-04-09 13:22:36'),
(2073, 1, 'xnodviTXedbVtR26o1m1idKkYoNl2eFt', '2022-04-09 14:08:33', '2022-04-09 14:08:33'),
(2074, 1, 'ftrm6y2VeX7rtUso9tV7oSTbkStfFc59', '2022-04-09 14:21:31', '2022-04-09 14:21:31'),
(2076, 1, 'SH0tJmwuJT3egq61sC3euLpGtaBRbErD', '2022-04-09 17:07:44', '2022-04-09 17:07:44'),
(2077, 1, 'I3DBzBqsPeU9MDQ7lBJ8VPDp2zcBL7SR', '2022-04-09 22:05:51', '2022-04-09 22:05:51'),
(2078, 1, 'yBQeFcFmueApp3cLZIxAMx7Zehd0o9eR', '2022-04-09 22:05:52', '2022-04-09 22:05:52'),
(2079, 1, 'mz0gtScNezBOcrscOrf46fjOs0vegHpE', '2022-04-10 03:34:43', '2022-04-10 03:34:43'),
(2080, 1, 'RNOb0GPFfA3FU3mGtIyLKK4VT47vDzVg', '2022-04-10 04:50:38', '2022-04-10 04:50:38'),
(2081, 1, 'KIINcAkpW9YDxjn0ljLdslPETHY55Mak', '2022-04-10 10:45:27', '2022-04-10 10:45:27'),
(2082, 1, 'ek8lkjdsMTPe6zCW7yneJUPRpzdJ9GIz', '2022-04-10 12:38:45', '2022-04-10 12:38:45'),
(2083, 1, 'gh8vDudSU5xHbflr56NbnowVtSZ2Rqab', '2022-04-10 13:55:10', '2022-04-10 13:55:10'),
(2084, 1, 'Y2G9Vm8JFQx3uzZT43uldcIonL0sP3wn', '2022-04-10 15:36:22', '2022-04-10 15:36:22'),
(2085, 1, 'x3zO2MCYZ2EA9gWYguyWAX66PzI0FF16', '2022-04-10 16:16:03', '2022-04-10 16:16:03'),
(2086, 1, 'pNpxNgNSHMtVdtD4RBU8SdZhgIcs3fiC', '2022-04-10 16:23:55', '2022-04-10 16:23:55'),
(2087, 1, 'qPoqpAmrgDwr7qNRVtGDPLddyFAT10u9', '2022-04-10 16:45:20', '2022-04-10 16:45:20'),
(2088, 1, 'c1N7pYFECY1NP3d6V5wMZeMPush0iL1e', '2022-04-10 17:34:11', '2022-04-10 17:34:11'),
(2089, 1, '8U3Z6akgDGPzDrXP4LZSfTaLDuHw5Ks8', '2022-04-10 17:48:02', '2022-04-10 17:48:02'),
(2090, 1, 'zbA4I6sozsy5PBHGpH99oPpf3ZPcYohH', '2022-04-10 18:59:24', '2022-04-10 18:59:24'),
(2091, 1, 'f59vznEPXQYn2PLW5S5stNoz6iVein5R', '2022-04-10 20:51:20', '2022-04-10 20:51:20'),
(2092, 1, 'ssjVTsD0oF6A2Tya3S0VJJ6Sjypy1HlT', '2022-04-11 00:36:26', '2022-04-11 00:36:26'),
(2093, 1, 'EZJlJwHdeDDK0c1DU3n6DmfNSNEi6JNy', '2022-04-11 01:25:42', '2022-04-11 01:25:42'),
(2094, 1, 'XiKm9iUT1VzCHcrXbwfYjHqwHH9amiPP', '2022-04-11 04:29:31', '2022-04-11 04:29:31'),
(2095, 1, 'emxxZg4KNPuK2KoFXpxgmVcxVwMBXERA', '2022-04-11 13:03:12', '2022-04-11 13:03:12'),
(2096, 1, 'LdACQz2y1DCk1Yo3O7gur9u67e0E2fcl', '2022-04-11 16:13:04', '2022-04-11 16:13:04'),
(2097, 1, 'xV0RUfXCQp3g3U5vArgpoNvs1HDYdpDP', '2022-04-11 16:37:22', '2022-04-11 16:37:22'),
(2098, 1, 'h3RyuBAUVL6qV9C7tLvGtZQlFvekisOB', '2022-04-11 16:47:36', '2022-04-11 16:47:36'),
(2099, 1, 'Zp3AAkiakBIrjwoiSzW8KMZtE8Y61ilw', '2022-04-11 17:28:14', '2022-04-11 17:28:14'),
(2100, 1, '78u0ndBtu11nJXS41sHnkT4HXnaZ09ZI', '2022-04-11 19:47:22', '2022-04-11 19:47:22'),
(2101, 1, 'aMZ1P6ln260q1e1r9KOIiu4WSk6MHG7g', '2022-04-11 20:28:53', '2022-04-11 20:28:53'),
(2102, 1, 'N7g637F0eKydCzpHxPWqoGCrwdD6eZ0c', '2022-04-12 02:34:02', '2022-04-12 02:34:02'),
(2103, 1, 'e7xCz9M17jRUJbKsLoSCKFq2Xn7BPlDv', '2022-04-12 11:54:45', '2022-04-12 11:54:45'),
(2104, 1, 'W9QPirPKtb2YaYvPPTZwNWccio5bVfLa', '2022-04-12 12:35:29', '2022-04-12 12:35:29'),
(2105, 1, '8Y0ypmHCFPtJUOqBgmvEs3LIymqAho7x', '2022-04-12 12:41:40', '2022-04-12 12:41:40'),
(2106, 1, '75T07QROG0UnWoXgmy6EapcFHgG8Qd3F', '2022-04-12 17:28:29', '2022-04-12 17:28:29'),
(2107, 1, 'HyTFIpnnwaUDZZ7odTttGcqMBCIPHeV3', '2022-04-12 21:03:21', '2022-04-12 21:03:21'),
(2108, 1, 'onuxGPritpkz7qGXPuKRiqS78lfgqF3a', '2022-04-12 21:03:21', '2022-04-12 21:03:21'),
(2109, 1, '37zIafcdZrg2E0MzHl9We1Fo00ZISpro', '2022-04-12 22:24:55', '2022-04-12 22:24:55'),
(2110, 1, 'sqrnEk9SCyQ65zfqEf1m1QNNZXTYzz48', '2022-04-13 00:49:21', '2022-04-13 00:49:21'),
(2111, 1, 'Lb9J3vxl0GQbhNs8SX54eXs8hnezhIAQ', '2022-04-13 01:12:21', '2022-04-13 01:12:21'),
(2112, 1, '79oGfiJk1kvTBfRBKgNZ6C7VZNOOSXOD', '2022-04-13 02:52:17', '2022-04-13 02:52:17'),
(2113, 1, '7lR6flPTod4ZOvvJENGLyhb57JAB8ODL', '2022-04-13 06:50:39', '2022-04-13 06:50:39'),
(2114, 1, 'sYvFMrnKcBq34shsZdP1THUze7LMsbbe', '2022-04-13 13:29:09', '2022-04-13 13:29:09'),
(2115, 1, 'eIcZII8zOLaAsR1QdODIWpARozTiXXIR', '2022-04-13 14:16:54', '2022-04-13 14:16:54'),
(2116, 1, 'lymhTW6VIYywCON5DBziIT9Oy1OQwewc', '2022-04-13 15:04:52', '2022-04-13 15:04:52'),
(2117, 1, 'bo2HDLUSiI7lbGLmkoGnUpr8MghZtf68', '2022-04-13 16:00:51', '2022-04-13 16:00:51'),
(2118, 1, 'KNNqBtcyepOXjzpI4rir4F4HjwUvHEV2', '2022-04-13 16:01:51', '2022-04-13 16:01:51'),
(2119, 1, '7bKMi1fq8nBF9dXTjeo1eiRv8uq6Xwpn', '2022-04-13 16:08:58', '2022-04-13 16:08:58'),
(2120, 1, 'yGzkwNUarIqGzMrW3zOivQ8mtTGffD6j', '2022-04-13 18:12:09', '2022-04-13 18:12:09'),
(2121, 1, 'LPHZXGrgseTd9rI2OpQPjaUC0phRneu1', '2022-04-13 18:48:34', '2022-04-13 18:48:34'),
(2122, 1, 'N8vAfZChAIuwhWWsGkSfFdaf2CtP575B', '2022-04-13 20:21:26', '2022-04-13 20:21:26'),
(2123, 1, 'RciqGvHtmMn3QtIZqpdlV889Rr7KjLUq', '2022-04-13 22:08:33', '2022-04-13 22:08:33'),
(2124, 1, '7iZVZjldR5f7kiiyI3KGkJPfMWTLZeKs', '2022-04-13 22:25:37', '2022-04-13 22:25:37'),
(2125, 1, '0lzd1ZzfoaiuFtP7Q8IX3RfjbxnpAe5N', '2022-04-14 01:25:30', '2022-04-14 01:25:30'),
(2126, 1, 'gPvlxBL3zl6Kfjwpti4ipaNPeTjNjpdB', '2022-04-14 02:02:35', '2022-04-14 02:02:35'),
(2127, 1, '2WlGxz2ZsQ2gslkLcZZ00mf9VsPAkNSz', '2022-04-14 05:18:58', '2022-04-14 05:18:58'),
(2129, 1, '2UosX4QBgYmuZgFNEi0JcAP3QCyb2UKm', '2022-04-14 12:54:59', '2022-04-14 12:54:59'),
(2131, 1, 'G2C1Xr0NPwk9ZDGqM1onnhMjBcj14WDU', '2022-04-15 00:44:48', '2022-04-15 00:44:48'),
(2132, 1, 'yyA91Pd4bmGpkc3XOaxA614OzZagQhy7', '2022-04-15 01:52:49', '2022-04-15 01:52:49'),
(2133, 1, 'xj1i04UYDFRtyz7jTZoJNKZ6s11hK9V0', '2022-04-15 07:00:31', '2022-04-15 07:00:31'),
(2134, 1, 'qChl7AShi2paeAinqhh8ATjnRztOAU60', '2022-04-15 08:27:11', '2022-04-15 08:27:11'),
(2135, 1, '0b4WukdGggufhaBa04v3XtYUDBeuzQnY', '2022-04-15 11:30:24', '2022-04-15 11:30:24'),
(2137, 1, 'qI0iF9BqXIGlxMRgD4S0GszSZvVIVRdm', '2022-04-15 12:37:16', '2022-04-15 12:37:16'),
(2138, 1, 'vHAgihI1nEcsjjAFmvIfq8tS9dvu01hC', '2022-04-15 16:11:17', '2022-04-15 16:11:17'),
(2139, 1, 'MGaU7jnbz4nAEnUgZsTJJnqP3dHsPthC', '2022-04-15 16:12:24', '2022-04-15 16:12:24'),
(2140, 1, 'NxqZo50QUkmnTzxowJ1vYHvwy96NyfPP', '2022-04-15 19:37:09', '2022-04-15 19:37:09'),
(2141, 1, 'RPbepE5s2ImzQrQgpWyuVbpStzFgrpqB', '2022-04-15 20:23:01', '2022-04-15 20:23:01'),
(2142, 1, 'W0oB7awoVj1mV0pM0tA4gpdga9CykRDY', '2022-04-16 00:49:21', '2022-04-16 00:49:21'),
(2143, 1, 'sfROW64cp9oHOaGhbl5U8cyClGl0kcOS', '2022-04-16 01:18:50', '2022-04-16 01:18:50'),
(2144, 1, 'lfLNo2RU7zqGT0wQz7E0PNAoaEBvKpV2', '2022-04-16 01:39:23', '2022-04-16 01:39:23'),
(2145, 1, 'sJyMcNeVr4q3BEn4UqmxtyFBgbgbjf1X', '2022-04-16 03:25:13', '2022-04-16 03:25:13'),
(2146, 1, 'erSTWsBF9Mboi6TMQ0DeWaGEiDWZePD9', '2022-04-16 04:09:56', '2022-04-16 04:09:56'),
(2147, 1, 'ro2I4T1TMt5HyFtKIUiwYseQzY8ULGSI', '2022-04-16 08:12:52', '2022-04-16 08:12:52'),
(2148, 1, 'vCTHzI34siKY7mCztbDFfOENbBVoA2Z4', '2022-04-16 10:03:22', '2022-04-16 10:03:22'),
(2149, 1, 'F4UJGQiliO1S6HObfxdlQmW2P98alyn7', '2022-04-16 12:56:28', '2022-04-16 12:56:28'),
(2150, 1, 'X4Wo1H2V3pJgKMFMXAsa6MUnPA02C9T6', '2022-04-16 14:30:11', '2022-04-16 14:30:11'),
(2151, 1, 'kVOYC9ofDFqMuyCn6PMylWlvfp6a0M4A', '2022-04-16 14:46:09', '2022-04-16 14:46:09'),
(2152, 1, 'blRlnzyId26D8Z2q7KYHeJ4tMH1xBqMk', '2022-04-16 16:23:55', '2022-04-16 16:23:55'),
(2153, 1, 'HdySEQuSv2p6uVuz1XLYxYf8gtoqM6ZX', '2022-04-16 18:38:09', '2022-04-16 18:38:09'),
(2154, 1, 'UXHGxJREXzKs2lzv3BeJ4NpuuCME2wQJ', '2022-04-16 20:32:55', '2022-04-16 20:32:55'),
(2155, 1, 'KjLS2lzTIcUM1p5mN79EJcUzg3tC1fzO', '2022-04-17 04:02:14', '2022-04-17 04:02:14'),
(2156, 1, 'OC7WlKuBpdxXtP4Qc8edalZi4cqWLbzf', '2022-04-17 05:41:00', '2022-04-17 05:41:00'),
(2157, 1, 'WEz4F36mMlCWQuGA0SFgxU3V6a3vptqq', '2022-04-17 06:55:59', '2022-04-17 06:55:59'),
(2158, 1, 'FaKqcUoQwunQUY98UftnCzGIJjbA5hpY', '2022-04-17 08:07:49', '2022-04-17 08:07:49'),
(2159, 1, 'nmSkt8NUwlr8XGkPJBlryWJr7iFvnVEf', '2022-04-17 09:43:43', '2022-04-17 09:43:43'),
(2160, 1, 'zyHouhpdpP2tjJkTkFKjLm7W5TtliwiX', '2022-04-17 14:26:59', '2022-04-17 14:26:59'),
(2161, 1, 'Jxh3OLUMh9MLK6b4maztz78uKl0RxwvW', '2022-04-17 14:52:05', '2022-04-17 14:52:05'),
(2162, 1, 'QM4nGPJ9coKMuB6MCjqPMF06QrXpk6mq', '2022-04-17 14:52:06', '2022-04-17 14:52:06'),
(2163, 1, 'mcxMYkJKetZ9wYznQPld6Cvc0gSPQa8c', '2022-04-17 16:08:21', '2022-04-17 16:08:21'),
(2164, 1, 'TyMpJrd3QsPCgGl4O5w98OKNSUKjq0zW', '2022-04-17 17:06:00', '2022-04-17 17:06:00'),
(2165, 1, '2IGtSc5ccTafI0ief7j2h4yfpOBmDzPC', '2022-04-17 18:02:07', '2022-04-17 18:02:07'),
(2166, 1, '81VicszSV2J2JQd8HJjxzfyhrtsSJoVO', '2022-04-17 19:40:03', '2022-04-17 19:40:03'),
(2167, 1, 'ZKVIJOkMxEF0nwE5HNtmX4vtkLSvTZL1', '2022-04-17 19:46:46', '2022-04-17 19:46:46'),
(2168, 1, 'nFiUQFPnLKz8IUPVnZuIOlSPdbgrQKZo', '2022-04-17 21:11:58', '2022-04-17 21:11:58'),
(2169, 1, 'zOGR6Y1Nc6gafWsyiKJjsd9S0GxLk8wL', '2022-04-17 21:30:32', '2022-04-17 21:30:32'),
(2170, 1, 'VZVQc3ds2YzbxtTyCb5SCGE2igcbU4Z0', '2022-04-17 22:12:36', '2022-04-17 22:12:36'),
(2172, 1, '1aqZFWeBBoBtyWhvJZkN3eypyTS8DhzG', '2022-04-18 03:04:52', '2022-04-18 03:04:52'),
(2173, 1, 'OI34xL8tUWehrxwNommBr0dcQdrBe5Hg', '2022-04-18 04:00:55', '2022-04-18 04:00:55'),
(2174, 1, '8ixR70q8tpt35j75tW4Xyuz0rHRilLWX', '2022-04-18 05:33:18', '2022-04-18 05:33:18'),
(2175, 1, 'o4LzCBFIxnaxnPYPBUZ2MxLcTTvJxanS', '2022-04-18 09:06:19', '2022-04-18 09:06:19'),
(2176, 1, 'f9wRJMdQ1Cnm7KggYJks3UWyYrSQFX0N', '2022-04-18 09:37:43', '2022-04-18 09:37:43'),
(2177, 1, '5il3HX7gn8Yq2ueDyX41VQh8l2WFzbIx', '2022-04-18 10:18:57', '2022-04-18 10:18:57'),
(2178, 1, 'r6L9Zc4B1avnaL5Ha0tMB0eWKGZyjceB', '2022-04-18 13:48:04', '2022-04-18 13:48:04'),
(2179, 1, 'yeea7lFVIONPbYET6O3RVMLpT0gwULUG', '2022-04-18 14:10:25', '2022-04-18 14:10:25'),
(2180, 1, 'AYCbxmUHnhafYDIWgCCx4TZOXSJyVC09', '2022-04-18 14:35:06', '2022-04-18 14:35:06'),
(2181, 1, '4uxYeco3QrrWW2XARsmlLmxSPxgkW639', '2022-04-18 15:27:43', '2022-04-18 15:27:43'),
(2182, 1, '2L0r6QWPAvJG8g2ArNCgws1j2oEkP2nL', '2022-04-18 16:12:50', '2022-04-18 16:12:50'),
(2183, 1, 'ASEDqI1J09GA0Lwjqj4aNPVBQfJUe6xx', '2022-04-18 16:59:53', '2022-04-18 16:59:53'),
(2184, 1, 'eJC3bx5iKcTRe96XexO4XZky1BGM3Jvp', '2022-04-18 17:36:08', '2022-04-18 17:36:08'),
(2185, 1, 'RQCpMTJKqT17XwEilzUD3Muh8bozGcsG', '2022-04-19 06:13:33', '2022-04-19 06:13:33'),
(2186, 1, '2zCGH7IpPMRBcW76nnFjH6AUKxfVIN7J', '2022-04-19 08:43:36', '2022-04-19 08:43:36'),
(2187, 1, 'TuKRCpAnjmhCzMiih3iF7RIc0rWCZ3Sp', '2022-04-19 11:15:06', '2022-04-19 11:15:06'),
(2188, 1, 'v8QTBQkFeydJkfNUs7P8Pn7ArHofpxhM', '2022-04-19 11:19:33', '2022-04-19 11:19:33'),
(2189, 1, '5FKcIKZKHEimnKn5FmiaeM3XiooMvPyL', '2022-04-19 12:52:33', '2022-04-19 12:52:33'),
(2191, 1, 'yWIsY70ecdPPVMXRTC8IugXOjCubFGPv', '2022-04-19 13:52:15', '2022-04-19 13:52:15'),
(2192, 1, 'VRSw0Q49pvJngVPaCjilwIIG8PEmuydz', '2022-04-19 14:13:57', '2022-04-19 14:13:57'),
(2193, 1, 'uXb7yBkZGeUF8rpRFeNarhLNwJRDHhmU', '2022-04-19 14:28:23', '2022-04-19 14:28:23'),
(2194, 1, 'VHJzLyW9zv97NJ5Za3nXGHNUDoirH1d4', '2022-04-19 18:12:19', '2022-04-19 18:12:19'),
(2195, 1, 'jLJiVVqLeOPIZ8kzN9ehX6e5emO1bA4r', '2022-04-19 20:19:16', '2022-04-19 20:19:16'),
(2196, 1, '1B4LU7gmTvtbAD4QXwUuSjs88eBGwjqm', '2022-04-19 20:25:07', '2022-04-19 20:25:07'),
(2197, 1, 'zsmsKfczdZThjofSPUGsH7LjgBGZCZaU', '2022-04-19 22:04:57', '2022-04-19 22:04:57'),
(2198, 1, 'nLAPdxG9PvxKls2Mgy85rzg5f5KaAClX', '2022-04-19 22:22:49', '2022-04-19 22:22:49'),
(2199, 1, 'XHUouKoszchEHxvNUaaxDXOjIMMdVcam', '2022-04-19 23:01:39', '2022-04-19 23:01:39'),
(2201, 1, 'SQpyT8xwX79p3EBHGN8Ew589rVNHQ6tu', '2022-04-20 01:44:00', '2022-04-20 01:44:00'),
(2202, 1, 'Ik2t32SzoXnkRvCMbvRKYv4FeuQIr2Yx', '2022-04-20 01:54:14', '2022-04-20 01:54:14'),
(2203, 1, '718IpFyaHzwvD0bYPmRgwoAVrCnR69is', '2022-04-20 04:21:16', '2022-04-20 04:21:16'),
(2204, 1, '50r9Fdmh8Rnf9IqHYvurJdbES08cFjqd', '2022-04-20 05:22:03', '2022-04-20 05:22:03'),
(2205, 1, 'NJhPIp3qgvGGM5tej3X7kpm9h6IPMYIh', '2022-04-20 07:16:35', '2022-04-20 07:16:35'),
(2206, 1, '3aSU9jOKxRzmgfPaRg7nK9ahmDt81xvy', '2022-04-20 08:14:32', '2022-04-20 08:14:32'),
(2207, 2, '115vffGtOdUFqlaeYcqPcpncBcBxb2MC', '2022-04-20 08:27:18', '2022-04-20 08:27:18'),
(2208, 1, 'JW6s87RUOqREMagSyNLzCWO1u8XmQiE7', '2022-04-20 08:41:52', '2022-04-20 08:41:52'),
(2209, 1, 'TiH5k0Wvt30zEuUsP7XX5su5OhjEYC8d', '2022-04-20 08:54:33', '2022-04-20 08:54:33'),
(2210, 1, 'QCrDI544yn9Hnt2BFpS4zPtRW8nG0PHJ', '2022-04-20 10:34:17', '2022-04-20 10:34:17'),
(2211, 1, 'BV68ETVqr14UrNj5cciMdAT4rUua66tQ', '2022-04-20 15:37:10', '2022-04-20 15:37:10'),
(2212, 1, 'cFqsMJjKxkDwX6H3gkqNJhSCjyO1XIsm', '2022-04-20 17:59:07', '2022-04-20 17:59:07'),
(2213, 1, 'JhEQFWZriYfQu6YF2guLParDIdO35Ev9', '2022-04-20 19:07:03', '2022-04-20 19:07:03'),
(2214, 1, 'Uu2TE9mPAggEvjAuoqQe64aTLnXTdS2k', '2022-04-20 23:27:07', '2022-04-20 23:27:07'),
(2215, 2, '9CeEz3xw69P9DJOSfIKFtbesoUhBqGHn', '2022-04-21 00:51:59', '2022-04-21 00:51:59'),
(2216, 1, 'u8n4NooGYpZesIhy10NyiSpC5SqYjHTf', '2022-04-21 01:46:40', '2022-04-21 01:46:40'),
(2217, 1, 'SHmawSc6SbcCPdzsJlVTr4i5hdSQPh45', '2022-04-21 01:48:17', '2022-04-21 01:48:17'),
(2218, 1, 'uzSZqzUbQfac8aTZhErBrO5xi9ZcLCQ3', '2022-04-21 03:12:52', '2022-04-21 03:12:52'),
(2219, 1, 'hYWBWNep6IHoL7pSY3ui7v5V3QULevbU', '2022-04-21 04:27:56', '2022-04-21 04:27:56'),
(2221, 1, 'tTAAuHOGoXAHSPelCq2g62FVKEP2k9O3', '2022-04-21 07:09:01', '2022-04-21 07:09:01'),
(2222, 1, 'h9zyw9XP0rQKsSHeUc4nowkaOdue5s4q', '2022-04-21 10:20:54', '2022-04-21 10:20:54'),
(2223, 1, '1hSmQ0B0JIDBKH5GbB0ayRXd3iRxJRdM', '2022-04-21 10:21:41', '2022-04-21 10:21:41'),
(2224, 1, 'uyq2mXwOXDyQflrBoctnwRpjPK6u3BcR', '2022-04-21 10:29:57', '2022-04-21 10:29:57'),
(2225, 1, 'qiRpdLXQDzPXpY6BM0OWrLKBFql1MAU5', '2022-04-21 11:29:17', '2022-04-21 11:29:17'),
(2226, 1, 'mqJqkIzyayTARsxyNcHK0FTx6QMWagl9', '2022-04-21 14:02:31', '2022-04-21 14:02:31'),
(2227, 1, 'icenhIJr4iLOkKuZoSPb4phnLNxdmK3H', '2022-04-21 15:34:31', '2022-04-21 15:34:31'),
(2229, 1, 'uv5hJShTh8JOnO0bC7IWhxno6hEzayCU', '2022-04-21 17:44:39', '2022-04-21 17:44:39'),
(2230, 1, 'ap8dfcveIP0iGorvrRfrwKDX15JIsW6V', '2022-04-21 17:51:22', '2022-04-21 17:51:22'),
(2231, 1, 'D6sSrYXesMrHirvDcIGlL1DaaOVTL8YK', '2022-04-21 18:57:57', '2022-04-21 18:57:57'),
(2232, 1, 'CFKn8QNCM1RrYoIyQHcnmSmNcRGH84Yn', '2022-04-21 23:11:44', '2022-04-21 23:11:44'),
(2233, 1, 'ZsUWuNKaLRxWrysj2vGIhNTlffOQeHb6', '2022-04-22 00:03:33', '2022-04-22 00:03:33'),
(2234, 1, '8VPwPK330eusq6Tae2OVJNuqzmPeevhf', '2022-04-22 02:48:58', '2022-04-22 02:48:58'),
(2235, 1, 'jmZrx7ggsYxddvKz5gyX5UK1z4oEn46N', '2022-04-22 05:03:43', '2022-04-22 05:03:43'),
(2236, 1, 'lp1w3ZstVvBilbTrMFHjT9UHucsy5YiR', '2022-04-22 11:08:10', '2022-04-22 11:08:10'),
(2237, 1, 'MscIayRa2FluV0nJjgz0IkQcdot3DZ3u', '2022-04-22 13:45:31', '2022-04-22 13:45:31'),
(2238, 1, 'YSr7VdGjlfsuWIfOLO3XQWJnMSzhLKJB', '2022-04-22 14:46:56', '2022-04-22 14:46:56'),
(2239, 1, 'RDny8i4qu8pDijwTOlNZuqvHSBywA0fc', '2022-04-22 14:47:20', '2022-04-22 14:47:20'),
(2240, 1, 'iYT55sK2mDIqAKy2UNFcWmrK1Q5Fupez', '2022-04-22 16:23:37', '2022-04-22 16:23:37'),
(2241, 1, 'JgsBi77OnHRXnlYy7riLOqmRondeA7p9', '2022-04-22 16:25:03', '2022-04-22 16:25:03'),
(2242, 1, 'xcxcFT3U0PRmllybYiiytytyrLd2Jrcf', '2022-04-22 16:32:36', '2022-04-22 16:32:36'),
(2243, 1, '0uUKSsausBMTZVidXKzWqk9GaovN66wq', '2022-04-22 19:51:40', '2022-04-22 19:51:40'),
(2246, 1, 'iMB69dctUfN4uAOKtc1oSSPo96glpXg0', '2022-04-22 19:54:19', '2022-04-22 19:54:19'),
(2247, 100, 'pCGEHYXgg8oj13ANreAFda5TilskB7WC', '2022-04-25 12:24:06', '2022-04-25 12:24:06'),
(2248, 2, 'sMOiPLE3gJRRSWbhsmGMOanthvwMFGr0', '2022-04-25 15:28:49', '2022-04-25 15:28:49'),
(2249, 1, 'LKAVVaMId0PgNFJXmvq3c8NZc8mISZ2S', '2022-04-26 05:17:28', '2022-04-26 05:17:28'),
(2250, 2, 'UzqP2DypGZZYr34fUzvwqlk3nqG2oHwF', '2022-04-26 17:57:28', '2022-04-26 17:57:28'),
(2251, 1, 'L0gKz1NeqsvEZfOdD9JvsKjegdfFuSFM', '2022-05-09 23:36:49', '2022-05-09 23:36:49'),
(2252, 1, 'GCHH0K8zZwVP7hDkHam7tuOIZJZQLF0h', '2022-05-12 13:07:53', '2022-05-12 13:07:53'),
(2253, 1, 'OhKjy6SYv1AyVSRxwBZOn0mEIvcSGkrE', '2022-05-12 13:45:27', '2022-05-12 13:45:27'),
(2254, 1, 'blWK6B5lgvFJpIjJ20AmiNRhvwx0N3t3', '2022-05-12 18:39:02', '2022-05-12 18:39:02'),
(2255, 1, 'FZI8QOLV7c3pbFKHVKXfmO6OheprKH0R', '2022-05-12 20:37:09', '2022-05-12 20:37:09'),
(2256, 1, 'dxhkHx35BWn3xUaa3DF0fzlT84ot3niN', '2022-05-12 21:41:05', '2022-05-12 21:41:05'),
(2257, 1, 'QxT78ZBOgJgWWldYNUP7YExh1Qv4N0tG', '2022-05-13 06:38:01', '2022-05-13 06:38:01'),
(2258, 1, 'nJe5WOWYjMQFHiRBbjryqTtr0AYRFqHn', '2022-05-13 10:16:45', '2022-05-13 10:16:45'),
(2259, 1, 'dNXiY80HixmtDRNjmnntg2eAyMnkHhLb', '2022-05-13 11:43:34', '2022-05-13 11:43:34'),
(2260, 1, 'A9Zl7ky6n3lF7MecswZQk8vaz3oxiX21', '2022-05-13 12:52:56', '2022-05-13 12:52:56'),
(2261, 1, 'aOxVG1pPoPMx2Zv1Wb5ff23QZESBCDgg', '2022-05-14 00:33:24', '2022-05-14 00:33:24'),
(2262, 1, 'sVQCQAlKI3b6qdgvBRlOWzRKuE3fvPTl', '2022-05-14 01:30:22', '2022-05-14 01:30:22'),
(2263, 1, 'xc6T0Yz0wYn42kdhklDDegLrLGA9rMZX', '2022-05-14 01:47:10', '2022-05-14 01:47:10'),
(2264, 1, 'GqAwGFCPvMFA37hOYGX1xbECYtyO5PSt', '2022-05-14 03:04:05', '2022-05-14 03:04:05'),
(2265, 1, 'JmjLgAWwnFkG0q0rpyQxlr0BAaPaYZeQ', '2022-05-14 05:19:11', '2022-05-14 05:19:11'),
(2266, 1, 'PIZ43URqtoXLOxAtTQIpJIAr8Gtj1xVu', '2022-05-14 12:58:05', '2022-05-14 12:58:05'),
(2267, 1, '02IjF09XD0bZFn8O87C3kSfJE8LTGhBg', '2022-05-14 15:20:01', '2022-05-14 15:20:01'),
(2268, 1, 'MLKrb9HzgrfUaLOJ6mhz7AlNePTwcZ2v', '2022-05-14 16:57:26', '2022-05-14 16:57:26'),
(2270, 1, 'iyLrGCiHThuUDuVBNEdvprL9bO3AEIFj', '2022-05-15 05:02:54', '2022-05-15 05:02:54'),
(2271, 1, 'tduqFsce9LYjjLITTbvkCsamQJddbeVH', '2022-05-15 09:02:40', '2022-05-15 09:02:40'),
(2272, 1, '3rnzlzEW2CI2D3YSttmGetZojCiAehU5', '2022-05-15 12:45:48', '2022-05-15 12:45:48'),
(2273, 1, '7SuFzPY3NgNXUmEECKQSBfbOtPXme1bn', '2022-05-15 21:40:57', '2022-05-15 21:40:57'),
(2274, 1, '5SsDEFH64fx5eIxUqrPSeKIx3kUyFh3w', '2022-05-16 02:38:18', '2022-05-16 02:38:18'),
(2275, 1, 'Dpf9zfLtv1nfAfAbVemxG7s2o6czNV3x', '2022-05-16 02:46:28', '2022-05-16 02:46:28'),
(2276, 1, 'f229kWXKNzTKWnnMbFvv7wetAby6thPQ', '2022-05-16 12:28:35', '2022-05-16 12:28:35'),
(2277, 1, 'ThriFuzYwwPt83PBqkLDtBxmyqy6vPsy', '2022-05-16 12:36:54', '2022-05-16 12:36:54'),
(2278, 1, '66Iv5WR15N2W3ovI90CXAIhmtPhC4ylU', '2022-05-16 14:57:19', '2022-05-16 14:57:19'),
(2279, 1, 'NAtleyPaGKM6aJz6citgygrOZpkJijfR', '2022-05-16 18:41:08', '2022-05-16 18:41:08'),
(2280, 1, '7H1XbHLTXv7GQdBhg09m5rYTsfR7TShs', '2022-05-16 19:15:50', '2022-05-16 19:15:50'),
(2281, 1, '5tNm4DF3u5htbfTx5YaKqdUVyWCCV9Px', '2022-05-16 21:23:37', '2022-05-16 21:23:37'),
(2282, 1, 'o0mSHMroPffi4Z07boWkINkM40vaPx53', '2022-05-16 23:48:36', '2022-05-16 23:48:36'),
(2283, 1, '3E9Hr2ppWNoR0QTu6etfWQqdUCFYLA0D', '2022-05-17 01:41:26', '2022-05-17 01:41:26'),
(2284, 1, 'usGq4QZklZJMveDkxrsyK9K3JOBBLLWU', '2022-05-17 11:12:53', '2022-05-17 11:12:53'),
(2285, 1, '6yQCrFpodoluZ3JXEyvPk9aSvq9DY2Pe', '2022-05-17 12:02:43', '2022-05-17 12:02:43'),
(2286, 1, 'tOJflsVxSLPGmjdrEjPwFXpLEzc7BBs8', '2022-05-17 12:24:54', '2022-05-17 12:24:54'),
(2287, 1, 'YcszsVrPPV7jbgtKaTzERa0kr0vLbOGG', '2022-05-17 14:14:43', '2022-05-17 14:14:43'),
(2288, 1, '5a7Hnotdz7aQfZ9Ve4yMto28S21mg3L1', '2022-05-17 16:44:38', '2022-05-17 16:44:38'),
(2289, 1, 'vZJkAkeeBLyk7B4HI7MHMZxWD75MMWJF', '2022-05-17 19:24:02', '2022-05-17 19:24:02'),
(2290, 1, 'ZCg8jHcMCFjRnpZYzaZJgN6RhRVQQNfH', '2022-05-17 23:39:40', '2022-05-17 23:39:40'),
(2291, 1, 'kRkuOdL2evzsi4Wz4G8K8bQUqrI0Kiss', '2022-05-18 03:09:58', '2022-05-18 03:09:58'),
(2292, 1, 'LUXjNQAv3K1fniz6t9VBoOZCmCl8Kv2U', '2022-05-18 12:45:35', '2022-05-18 12:45:35'),
(2293, 1, 'TE42c6BXsrVDZGNa8ABYa79L97Fw9JVr', '2022-05-18 13:34:56', '2022-05-18 13:34:56'),
(2294, 1, 'RBdSj2HHzp1hmYRoOHWjpA2KNfTYA2zk', '2022-05-18 14:05:56', '2022-05-18 14:05:56'),
(2295, 1, 'oQsTtP0fyfCuOchKaQKD448ic8qUki7H', '2022-05-18 16:50:08', '2022-05-18 16:50:08'),
(2296, 1, 'wFxEO4Q92Pet5tat2zmwtQ8BcARYUcMX', '2022-05-18 16:50:13', '2022-05-18 16:50:13'),
(2297, 1, '5WV84KYYvQhXCGlKDsgWEkH72ssVWFqd', '2022-05-18 18:44:37', '2022-05-18 18:44:37'),
(2298, 1, 'BBh047KWnb2wBbIuKeNPF6aHnIQAaIM5', '2022-05-18 19:13:36', '2022-05-18 19:13:36'),
(2299, 1, 'Lqe1VSnhJXpXnL9nFV9gd6058MxKB7Ej', '2022-05-18 20:51:30', '2022-05-18 20:51:30'),
(2300, 1, 'dChZAeTslflBkSdXbSLIEj2N1Oxg2oc3', '2022-05-18 21:20:05', '2022-05-18 21:20:05'),
(2301, 1, '25cU7dy49R1GREkT7fkMVKzCokPbiFTw', '2022-05-18 21:20:05', '2022-05-18 21:20:05'),
(2302, 1, 'mtaaiaOBrUT1A0WslnHYHyIejQ5cnDPA', '2022-05-18 21:31:52', '2022-05-18 21:31:52'),
(2303, 1, 'df7DWZxa0qW9E3vkNkX6vSOMHEuOLl1s', '2022-05-18 21:33:39', '2022-05-18 21:33:39'),
(2304, 1, 'rdvuHKMjCBMla2LUnhx43m4HCBZJlQ3z', '2022-05-18 21:54:49', '2022-05-18 21:54:49'),
(2305, 1, 'rWr8HDebwnamEegDFZjy8FxHq0btzRCW', '2022-05-19 01:03:01', '2022-05-19 01:03:01'),
(2306, 1, '5QBIztUtS3aMxAgmPEOo8nr2nDKomK1e', '2022-05-19 08:16:33', '2022-05-19 08:16:33'),
(2307, 1, 'jpni8ZEdJF3LEVC3HI27WiGCrgRwrlrd', '2022-05-19 09:10:13', '2022-05-19 09:10:13'),
(2308, 1, 'lZFiqemr8Up6pfQryopw4whD2al5Sfwe', '2022-05-19 10:39:44', '2022-05-19 10:39:44'),
(2309, 1, 'ypuA8excDWRqSd29HohjaoGhXk1cNVOv', '2022-05-19 16:03:38', '2022-05-19 16:03:38'),
(2310, 1, 'phF1h6tAn8tJhBrth19a9EbYPxj1r9FQ', '2022-05-19 16:33:58', '2022-05-19 16:33:58'),
(2311, 1, 'lKSzqBqhrgHVrJy7tIJdvxidM6UYKNAB', '2022-05-19 17:03:25', '2022-05-19 17:03:25'),
(2313, 1, 'vQczK753hE8y0rNsC8ZNc8oPc4vj2yD5', '2022-05-19 19:41:57', '2022-05-19 19:41:57'),
(2314, 1, 'QgfNkDs8cIi2BXo3I3TLpiGia8aRsJF9', '2022-05-19 21:43:30', '2022-05-19 21:43:30'),
(2315, 1, 'LDZ8JL4x1EDZhBtK9tIvUz9ipEqa4JFX', '2022-05-19 22:19:42', '2022-05-19 22:19:42'),
(2316, 1, 'fM1M7PhWbg1ZUQFsRAOiPtDvToZI1MVt', '2022-05-20 09:55:31', '2022-05-20 09:55:31'),
(2317, 1, 'eeysgtOfbZRojiNctvqiKqMmV1mCJHxd', '2022-05-20 11:25:46', '2022-05-20 11:25:46'),
(2318, 1, 'QvX2dCRlQ54UdkMOYcyZoDqYrURBkYh3', '2022-05-20 12:26:58', '2022-05-20 12:26:58'),
(2319, 1, 'dScAZHT9UB7wzUtsSrX6qVmZlTNxNHiK', '2022-05-20 13:33:49', '2022-05-20 13:33:49'),
(2320, 1, 'RucPWRcKvTGHCyleq9NmCBzZMwHSY5Yp', '2022-05-20 19:07:22', '2022-05-20 19:07:22'),
(2321, 1, 'O7p9jHL7m2RDICep8WjDwTpyHj2PgFMY', '2022-05-21 04:05:34', '2022-05-21 04:05:34'),
(2322, 1, 'DhRq0bajo4P3QthKAdAGU1tmwQ2mBukU', '2022-05-21 04:56:39', '2022-05-21 04:56:39'),
(2323, 1, 'sQCtdclXKOykMoboa4Sh0cpREV1sEfdm', '2022-05-21 16:09:02', '2022-05-21 16:09:02'),
(2324, 1, 'yIuexqyTFk7ODyv1Y2hDV96mrzGlZrVp', '2022-05-21 22:00:14', '2022-05-21 22:00:14'),
(2325, 1, 'TNgkjAIsavmb5D5qBP23O5DwgWwDzGCp', '2022-05-22 04:07:42', '2022-05-22 04:07:42'),
(2326, 1, 'r6m1vJWbkHoBQahOtJrUDTldaHIXUc5A', '2022-05-22 20:01:59', '2022-05-22 20:01:59'),
(2327, 1, 'BL03Kh9zPznbl8km8myYFipseTqeY1RL', '2022-05-22 22:15:25', '2022-05-22 22:15:25'),
(2329, 1, 'IJCVXD4emPkcynOWcwt3AkeDRcu0VLlU', '2022-05-23 12:06:58', '2022-05-23 12:06:58'),
(2331, 1, 'Zaf9GRDQmSCsiL7KnQPQfmy8PgvMgDTc', '2022-05-23 14:31:36', '2022-05-23 14:31:36'),
(2332, 1, 'NmcR6zhSY0akJq9ostVFyGDkS4eOgSA8', '2022-05-23 14:40:24', '2022-05-23 14:40:24'),
(2333, 1, 'BnZmtpgzdpIegUPAZcM2hgpxDO4a2d0a', '2022-05-23 14:49:04', '2022-05-23 14:49:04'),
(2334, 1, 'vhSZDE7BQqYafUvijYTxjgSmnqE6Djbm', '2022-05-23 15:31:48', '2022-05-23 15:31:48'),
(2335, 1, '35SJzXqTImjDNtZCQ6TXlZa0jD0ohwRh', '2022-05-23 16:15:39', '2022-05-23 16:15:39'),
(2336, 1, 'U7k4J4YUkDCm9gMXSmOMTDjcVKVJqtCM', '2022-05-23 17:30:12', '2022-05-23 17:30:12'),
(2337, 1, 'gqu8zI8Bx07AoHnWmx1ZJdvZQT2Tfvb2', '2022-05-23 19:11:12', '2022-05-23 19:11:12'),
(2338, 1, 'XYJnmvVXjf72qIcCAZ7uiEfHYn0dQPdk', '2022-05-23 19:25:56', '2022-05-23 19:25:56'),
(2339, 1, 'TqZcEGsz9fXUtXrBd5trhkIR267xhIAg', '2022-05-23 20:25:28', '2022-05-23 20:25:28'),
(2341, 1, 'Yw2hfauoGHYaStpKrwhNW2545k06q5Sa', '2022-05-24 03:07:00', '2022-05-24 03:07:00'),
(2342, 1, 'L9dBqTsosDv7kodfYsP1AWtrXYYAYAIp', '2022-05-24 12:55:12', '2022-05-24 12:55:12'),
(2343, 1, '5cGg6niz3fDFvzPIhmBDMpoQyiOcCrS7', '2022-05-24 13:06:59', '2022-05-24 13:06:59'),
(2345, 1, 'ExasYDL77KPoFbTkQ8mlgsk4YpHfO2sm', '2022-05-24 18:23:53', '2022-05-24 18:23:53'),
(2347, 1, 'BZzhaouBfUzc6323iB85CqJVh1IzATZ8', '2022-05-24 22:42:38', '2022-05-24 22:42:38'),
(2348, 1, 'gG08gDjjfFBwZe1pDaYCYAmhz123JgNC', '2022-05-25 07:39:43', '2022-05-25 07:39:43'),
(2349, 1, 'ijMvtyPmudqX5Rgu2ASszZDY1AYLFRR4', '2022-05-25 11:15:27', '2022-05-25 11:15:27'),
(2350, 1, 'UR7SdcRaKiaUibX9YVG456UQWkdlPlKV', '2022-05-25 21:51:54', '2022-05-25 21:51:54'),
(2351, 1, '7uZ97NY2tNUhNfOzaHU07QwGiHSpZfbi', '2022-05-26 01:40:51', '2022-05-26 01:40:51'),
(2352, 1, 'o207UeepYfqgxFAMxCp4tqLQKK4nZTrd', '2022-05-26 03:49:29', '2022-05-26 03:49:29'),
(2353, 1, 'AQfr03ajMhOMFW4TWG1Ny0xadp4WCLPr', '2022-05-26 05:19:09', '2022-05-26 05:19:09'),
(2354, 1, 'mJIOaB6J9GL4EvezT1SYqPaUfRGL6mTU', '2022-05-26 08:13:10', '2022-05-26 08:13:10'),
(2355, 110, 'W8kdnRSWypcMrHxiDMTd2fRoEZMQJxOe', '2022-05-26 09:55:17', '2022-05-26 09:55:17'),
(2356, 1, 'qPwTZMc9Z2emvsnhFyGclHGq3rWKPm5P', '2022-05-26 11:20:53', '2022-05-26 11:20:53'),
(2357, 1, 'wUxqanP5SIblW9Tn53yTaaPC0t9KB8hS', '2022-05-26 11:32:46', '2022-05-26 11:32:46'),
(2358, 1, 'YrlsHi7bgQcAGvLWbkXQY1QR6Pa3Ci6d', '2022-05-26 18:09:08', '2022-05-26 18:09:08'),
(2359, 1, 'QPuDqcApiK1iBG6TtlIkLospquRRyw2T', '2022-05-26 18:52:37', '2022-05-26 18:52:37');
INSERT INTO `persistences` (`id`, `user_id`, `code`, `created_at`, `updated_at`) VALUES
(2360, 1, 'rIc03dy2XJh5FHSu7FJd3OQPcYoFsewt', '2022-05-26 20:03:57', '2022-05-26 20:03:57'),
(2361, 1, 'ZmivD9Mod8s2qNFNKPr6qx0M08TVSJrf', '2022-05-26 23:34:27', '2022-05-26 23:34:27'),
(2362, 1, 'QUpeeBX3A4onZeQdkIJxLkMEE2f9CGwZ', '2022-05-27 01:42:17', '2022-05-27 01:42:17'),
(2363, 1, 'M5XWUvTxGt9gnxhoXEPpSrxtQ5gaR9GK', '2022-05-27 04:05:38', '2022-05-27 04:05:38'),
(2364, 1, 'P9kM6GGFBjOeD4gTW1P7BTaob9ieOmIa', '2022-05-27 07:46:07', '2022-05-27 07:46:07'),
(2365, 1, 'brlx4g8RQa5cVVyR2TD5fhv4tQHPa7Gm', '2022-05-27 08:13:51', '2022-05-27 08:13:51'),
(2366, 1, 'plfgaWFuWHZzxwqdjeRb4lQm7vwpAixq', '2022-05-27 14:04:25', '2022-05-27 14:04:25'),
(2367, 1, 'AlQSm2IXj316GhAnsVaDblObPhpEHBsh', '2022-05-27 16:23:33', '2022-05-27 16:23:33'),
(2368, 1, 'Cyc65pnNQ1KVsAkVNzCdoMSKsPZIcKmQ', '2022-05-27 18:48:01', '2022-05-27 18:48:01'),
(2369, 1, 'yOl8qp6sqM5AsDcyAXWPSJ4BMOkJT10s', '2022-05-27 19:08:34', '2022-05-27 19:08:34'),
(2370, 1, 'TiOmucDNReHJpLmrRRfU00ih45ZtCPjZ', '2022-05-27 19:08:59', '2022-05-27 19:08:59'),
(2371, 1, 'Wuwjq18deqfGrlVLOTuv7r0ORLBwuj5w', '2022-05-27 21:21:59', '2022-05-27 21:21:59'),
(2372, 1, 'SFwd7fzVRYvmWjq6nJQbRbbwAVYXv2Ty', '2022-05-27 21:39:41', '2022-05-27 21:39:41'),
(2373, 1, 'M11oC9BjC7vtzAjLkP8sivTDDKMszAlL', '2022-05-27 22:03:54', '2022-05-27 22:03:54'),
(2374, 1, 'OWZSIWsQExT8lGKyHisNEw2IuAErd3BV', '2022-05-27 22:31:44', '2022-05-27 22:31:44'),
(2375, 1, '4745gkUWwKDEkPP8uxkIDiCVbcB8TcqF', '2022-05-27 23:21:51', '2022-05-27 23:21:51'),
(2376, 1, 'M7DXqHxWcM2EaVxWrx6yuaqbgaaMdXnt', '2022-05-28 00:14:27', '2022-05-28 00:14:27'),
(2377, 1, 'dEexLZOksGwF2y7Rn5NJXeA2IKCNHODc', '2022-05-28 01:13:24', '2022-05-28 01:13:24'),
(2378, 1, 'VOVXzAvqvETkNeiPh2khW8n9b5piSY4I', '2022-05-28 02:43:58', '2022-05-28 02:43:58'),
(2379, 1, 'n6xx5anpxOqIyZdpOLAzHaZP7Qm2TyPl', '2022-05-28 03:53:12', '2022-05-28 03:53:12'),
(2380, 1, 'JgiKiWlV4y32gfQLlmmNTocxDIoXUr4x', '2022-05-28 04:16:00', '2022-05-28 04:16:00'),
(2381, 1, 'w7bxxMLOwTHudG4CgrYDW6GVEjBgsfIX', '2022-05-28 09:21:52', '2022-05-28 09:21:52'),
(2382, 1, 'IwOM33bKDMTussdZNI9swLHPAQ0njkXI', '2022-05-28 09:58:58', '2022-05-28 09:58:58'),
(2383, 1, 'LQSIQdrr8euFbSNIIhaRbGKfNkinN4uJ', '2022-05-28 11:24:09', '2022-05-28 11:24:09'),
(2384, 1, 'XzRn3CKvYgMQSG7Ow5LIV7nfedrG0LrR', '2022-05-28 12:37:59', '2022-05-28 12:37:59'),
(2385, 1, '3GYCPUK9jQjjBGSoh4TpPS3FhWscsl7r', '2022-05-28 16:17:59', '2022-05-28 16:17:59'),
(2386, 1, 'Ccvy9586OV3aTkCny9HfHQnsE1QEZK5q', '2022-05-28 17:19:04', '2022-05-28 17:19:04'),
(2387, 1, 'WY53BlQeodp8pRHeS5lsuRgrPgYKxh11', '2022-05-28 19:00:03', '2022-05-28 19:00:03'),
(2388, 1, 'PwEFPnfklzGiqZnqNidrfeLQFvXBk0GQ', '2022-05-28 19:11:53', '2022-05-28 19:11:53'),
(2389, 1, 'tT3dTHb9QBHJcpUX4mlWkImehdKPxEsJ', '2022-05-28 19:11:54', '2022-05-28 19:11:54'),
(2390, 1, 'dlAO2Rs5F54Gxpj7TUtKIyZ9CukBVHtb', '2022-05-28 21:11:45', '2022-05-28 21:11:45'),
(2391, 1, 'rA5jwOXmLYHZ8l6Fne53e6XkyKOt4US9', '2022-05-28 21:19:01', '2022-05-28 21:19:01'),
(2392, 1, '7Ugt4OfDLp1SzI6zZOzhAl15C8bzEo72', '2022-05-28 21:22:53', '2022-05-28 21:22:53'),
(2393, 1, 'MvB8wZrj6RtOEcaWJb4ltisEANWkAZNY', '2022-05-28 22:50:53', '2022-05-28 22:50:53'),
(2394, 2, 'P4nN6ogXIt5z22KJkJS1qwDM9Dfl7M79', '2022-05-29 04:48:56', '2022-05-29 04:48:56'),
(2395, 1, 'gpdoOCVMh6R8dUAysnrdp143XXGjeoEk', '2022-05-29 05:08:02', '2022-05-29 05:08:02'),
(2396, 1, 'iI87HuoH6G3cOhHkpQrhIRbFNE2btEJA', '2022-05-29 05:32:11', '2022-05-29 05:32:11'),
(2397, 1, 'Cvc1c467aMGmhvVzHoDBHH2MUfaVUcNn', '2022-05-29 07:05:26', '2022-05-29 07:05:26'),
(2398, 1, 'fgsOmqr1h2USDSBOT25URWZZUfrvSi4u', '2022-05-29 14:30:54', '2022-05-29 14:30:54'),
(2399, 1, 'xzpDkt0rZQqU6Nj8kYZR2YnnDd34lCLx', '2022-05-29 15:26:42', '2022-05-29 15:26:42'),
(2400, 1, 'XAfaw3f831b2OD8jzY3byeO7lyw5V6hf', '2022-05-29 17:03:33', '2022-05-29 17:03:33'),
(2401, 1, 'En6pPRN2l3GDTJ1S4ssXAPgpswAzG23i', '2022-05-29 19:22:40', '2022-05-29 19:22:40'),
(2402, 1, 'VY7F6RaDGouR1A04xSqdIkKOt06iydum', '2022-05-29 20:09:56', '2022-05-29 20:09:56'),
(2403, 1, 'vEVO3jo3lLQRF2xNukrU2gBeg1FtMA5W', '2022-05-29 21:48:56', '2022-05-29 21:48:56'),
(2404, 1, 'psLBo3jCbqzdSiiAnNKcNXGxVQt7Jk02', '2022-05-30 01:27:38', '2022-05-30 01:27:38'),
(2405, 1, 'TibCJWTGmJPnyQqEW5rlDJgkgjAVAOHo', '2022-05-30 03:25:20', '2022-05-30 03:25:20'),
(2406, 1, 'kqrqJgMEZLH2PDWwHVY9UCOU5jC1h7GA', '2022-05-30 04:14:11', '2022-05-30 04:14:11'),
(2407, 1, 'GA8t3fAmemyKSdXWPFToLt6WU5h1OPhy', '2022-05-30 05:47:32', '2022-05-30 05:47:32'),
(2408, 1, 'lYkQ3t7Jqq1z7fobFFwzf8pmjSmLgwp0', '2022-05-30 07:04:36', '2022-05-30 07:04:36'),
(2409, 1, 'TlgjhdVKpR6jRs7MATSVte8rpttU3yHr', '2022-05-30 07:04:38', '2022-05-30 07:04:38'),
(2410, 1, 'BDjnEdr8wFPcpQfIHtxy6NxMV9tzrZBc', '2022-05-30 10:46:04', '2022-05-30 10:46:04'),
(2411, 1, 'ynbZPdzbLgZJ33waXZC8q7O0Gn0M09dl', '2022-05-30 14:39:37', '2022-05-30 14:39:37'),
(2412, 1, '65MINHyTuA2Nm7o1gOW2Khx2PHzAorGE', '2022-05-30 15:35:07', '2022-05-30 15:35:07'),
(2413, 1, 'FLMgRy2rbtxRMgd7RYcCSSfJCCx1gYGt', '2022-05-30 17:02:15', '2022-05-30 17:02:15'),
(2414, 1, 'hN99U1x5RIjp095HUoV7aerWDYzMrxFl', '2022-05-30 17:52:30', '2022-05-30 17:52:30'),
(2415, 1, 'q0nj4dkAdn3KolGKbP98dOISsZ8hccgm', '2022-05-30 23:31:47', '2022-05-30 23:31:47'),
(2416, 1, 'rjh4c7ROP5n0FT9jWs1KVzSHRCgYHpRg', '2022-05-31 04:05:47', '2022-05-31 04:05:47'),
(2417, 1, 'BzeO6NMvgMkkj7QrQ5ZdQmtGiUr9YgdM', '2022-05-31 07:53:22', '2022-05-31 07:53:22'),
(2418, 1, 'SvjmD0mcA0KW3jk2Z8crfaR0mzcSkuSy', '2022-05-31 08:39:21', '2022-05-31 08:39:21'),
(2419, 1, '5TmARJXLQIKDOmdhSOD0aJWRrORjRC74', '2022-05-31 09:21:58', '2022-05-31 09:21:58'),
(2420, 1, 'D5pN8CTsYc3Dx9e26aYe8heS1Vopw8xe', '2022-06-01 00:28:41', '2022-06-01 00:28:41'),
(2421, 1, 'c5UGmSZndOMDIqDkCF1JExPCCOzNuMpa', '2022-06-01 02:20:39', '2022-06-01 02:20:39'),
(2422, 1, 'hkIsHTxg8HQZ4SujevmKq8yAj1Eelyzm', '2022-06-01 03:24:00', '2022-06-01 03:24:00'),
(2423, 1, 'UW0eUtRAH7iSiM0NntuOLtK1UTn9q97R', '2022-06-01 04:42:42', '2022-06-01 04:42:42'),
(2425, 1, 'LKQWB3q70VClOIeXyyHTJ0y3dRI6pqIt', '2022-06-01 15:29:05', '2022-06-01 15:29:05'),
(2426, 1, 'Bb2rgJYK9tKaF4uzZ3kWGhWE91BOOrcA', '2022-06-01 17:11:05', '2022-06-01 17:11:05'),
(2427, 1, 'oS1GIy1SmH6UpM1Fa0OLEjeMcgvv5fdn', '2022-06-01 18:38:28', '2022-06-01 18:38:28'),
(2428, 1, 'JREdYeMqwv6mD3zqnz1DRjN4PLaCXGo3', '2022-06-01 20:25:48', '2022-06-01 20:25:48'),
(2429, 1, 'miFfzR7O9jczDkV0xpMcwtBCFgmCkN08', '2022-06-01 21:05:29', '2022-06-01 21:05:29'),
(2430, 1, 'eRSuuJNDdiYnFbSHhBsIW9ZDKZ4ZvVdy', '2022-06-01 23:04:03', '2022-06-01 23:04:03'),
(2431, 1, 'SsavNv2JtUJsQcd3W005ZqhfFLJeKIEt', '2022-06-02 01:59:12', '2022-06-02 01:59:12'),
(2432, 1, 'w0VnqG9BrBrJCPYsjBTDNLNl58FabTAY', '2022-06-02 03:23:55', '2022-06-02 03:23:55'),
(2433, 1, 'FvBgZxg3Hjnm2kpO7w3w36Unpjgeaaw6', '2022-06-02 04:28:01', '2022-06-02 04:28:01'),
(2434, 1, 'eaqb2wuUCa6Jq5oWucLlU18u83rXALu8', '2022-06-02 07:44:15', '2022-06-02 07:44:15'),
(2435, 1, 'ixrsieWvD6BkvBemowQt5PxUBC5cBXyI', '2022-06-02 11:21:25', '2022-06-02 11:21:25'),
(2436, 1, 'Aa7nxGQSXDVDyuneGV4boXvfyxAQJu6Q', '2022-06-02 13:13:24', '2022-06-02 13:13:24'),
(2437, 1, 'jz0O086OpmWlsQ5jkPqMRPCdyNDlW0CG', '2022-06-02 14:17:57', '2022-06-02 14:17:57'),
(2438, 1, 'U1adBVTD5xkEZ4AXwngVEo9uY4M8UXsD', '2022-06-02 16:24:06', '2022-06-02 16:24:06'),
(2439, 1, 'Dc6Q9QHxGZFFsJLegZoxXYSLZ0qnDwOn', '2022-06-02 17:41:12', '2022-06-02 17:41:12'),
(2440, 1, 'HkDfWHq6ng9m6werx9BdLKVmOeQ4sVu2', '2022-06-02 23:31:57', '2022-06-02 23:31:57'),
(2441, 1, 'IfPph9ALAcIWwiPV1T14q7Q1pfdQeoRN', '2022-06-03 00:07:46', '2022-06-03 00:07:46'),
(2442, 1, '2sbf1d1bmgyceNQDZVuxw63Hg53n2pyM', '2022-06-03 05:16:56', '2022-06-03 05:16:56'),
(2443, 1, 'QufQUKDBqNuVRfyER8PCEeWSvj3FBT2a', '2022-06-03 06:07:48', '2022-06-03 06:07:48'),
(2444, 1, 'g2Kj7hJL23cagUO8uv1re2HEi5GFiV6E', '2022-06-03 06:32:51', '2022-06-03 06:32:51'),
(2445, 1, 'hIk4XkWvxyGSwsIaZegIuOjhB2EKVOgX', '2022-06-03 08:47:58', '2022-06-03 08:47:58'),
(2447, 1, 'xfLT8NCyjZJfEHzB0rPmWTHR3mOgyzc2', '2022-06-03 10:44:00', '2022-06-03 10:44:00'),
(2448, 1, '51bWuLbimWxW5L7zRchqCNKzUJmHe2eD', '2022-06-03 12:33:41', '2022-06-03 12:33:41'),
(2449, 1, 'YRFYMeN4M2aRListnv82COMKXz8uxU8y', '2022-06-03 14:01:07', '2022-06-03 14:01:07'),
(2450, 1, 'QGvpTexYxeiFcT2fNIe3FcdZPvtXYMaO', '2022-06-03 16:00:58', '2022-06-03 16:00:58'),
(2451, 1, '2lmybWTmVrOaI7ubCdncuiaFGekbDdWU', '2022-06-03 17:34:08', '2022-06-03 17:34:08'),
(2452, 1, 'hwRWKDYTioNfM1uCuIfFnqgHqgBJ4aR4', '2022-06-03 17:39:19', '2022-06-03 17:39:19'),
(2453, 1, 'xoM6irJ1jcbodd9rlMj7UWjpZF08k67J', '2022-06-03 17:43:48', '2022-06-03 17:43:48'),
(2454, 1, 'tDUClxaG8TDzgO865n3rtAmB5yfcmaw1', '2022-06-03 19:06:30', '2022-06-03 19:06:30'),
(2455, 1, 'pmKsGVOuWdZob5siewnrbVkUcLWPi2g3', '2022-06-03 19:40:39', '2022-06-03 19:40:39'),
(2456, 1, 'rXfMxw6AH3gMdh73pvFsUKea7bNQ9aXk', '2022-06-03 20:26:09', '2022-06-03 20:26:09'),
(2457, 1, 'ceO7RwepIegrrOFaMfPZbcouM2tJEVOj', '2022-06-03 21:31:39', '2022-06-03 21:31:39'),
(2458, 1, 'sWbV4AbBSUi4U4HHge07qdq81uGi99Cw', '2022-06-03 21:32:13', '2022-06-03 21:32:13'),
(2459, 1, 'LR4v7yHmROOJ4xAluHMLnwq35UisMJ6D', '2022-06-03 21:58:02', '2022-06-03 21:58:02'),
(2460, 1, 'jNhoj5cyxqAXjqHaki0GGyb6E2BMVI9d', '2022-06-03 23:00:59', '2022-06-03 23:00:59'),
(2461, 1, 'jLHcWFDYqR79swKxalqMNfntMd0Rvk3g', '2022-06-04 02:48:01', '2022-06-04 02:48:01'),
(2462, 1, '2sxAfzXRPESngyxvQ5scGnfxaVLxRpCq', '2022-06-04 06:27:16', '2022-06-04 06:27:16'),
(2463, 1, 'C3Wpgz6NC3X4vkaxtkOFGYdDgnHiYsr2', '2022-06-04 13:05:47', '2022-06-04 13:05:47'),
(2464, 1, 'Xp0HcUOE5nxLTHmQOYL3cz2F7nSiw3Vb', '2022-06-04 17:24:00', '2022-06-04 17:24:00'),
(2465, 1, 'UtG4ofUfOlEGlN1gxf04vvRU7CrGLmZR', '2022-06-04 22:35:14', '2022-06-04 22:35:14'),
(2466, 1, '1brVlQkMoveq2sSS76W2cqZCMgwbjHjf', '2022-06-05 15:00:00', '2022-06-05 15:00:00'),
(2467, 1, 'LngubygNoZTrZFQwZ6FrRcLUP1VeOnho', '2022-06-05 19:01:14', '2022-06-05 19:01:14'),
(2468, 1, 'wZtAFwp5GFXL5fu8heMUcdEHMyerfImL', '2022-06-06 00:37:26', '2022-06-06 00:37:26'),
(2469, 1, 'RvZNv593aAqvF9GqmPM6a402IBxnebZY', '2022-06-06 02:57:43', '2022-06-06 02:57:43'),
(2470, 1, '5Caa41Ck8U1G7ukF9orflSEHxusTVnAH', '2022-06-06 04:30:56', '2022-06-06 04:30:56'),
(2471, 1, 'BW74PaCBIMNyhXCMXHayJ2X3bkjDQjwE', '2022-06-06 06:54:23', '2022-06-06 06:54:23'),
(2472, 1, 'yE7i4tjPOWTvGVQLQetg1U2qXGwfgB8z', '2022-06-06 10:19:59', '2022-06-06 10:19:59'),
(2473, 1, 'e3eE2Iga9XrET8DTCTgTXAFV3m9MSrYq', '2022-06-06 14:18:34', '2022-06-06 14:18:34'),
(2474, 1, 'DRpG2teexbnaq6yWN47agghmnFj5PjtZ', '2022-06-06 16:02:21', '2022-06-06 16:02:21'),
(2475, 1, '7BzQ7j1LurTnlDlhKItbz70M3JOui1vN', '2022-06-06 18:39:30', '2022-06-06 18:39:30'),
(2476, 1, 'CVSEmXnaorXW6OT3faSG08DuG2D06ZHO', '2022-06-06 18:41:36', '2022-06-06 18:41:36'),
(2477, 1, 'vrryCO0Tqkshpa2BGvnaux7tN6v5VQ51', '2022-06-06 20:09:45', '2022-06-06 20:09:45'),
(2478, 1, 'uvg8VHfulAGmxb9oILsKpUgYWEhRPt8c', '2022-06-06 20:15:23', '2022-06-06 20:15:23'),
(2479, 1, 'BtfDRsNcU7OiqIjmpRigxQawTJ01dnXr', '2022-06-07 02:13:02', '2022-06-07 02:13:02'),
(2480, 1, 'wqFxvubmKY8THFxsCm6PvX6NdZfg2HI3', '2022-06-07 06:06:28', '2022-06-07 06:06:28'),
(2481, 1, 'PCO8QjeljyfhCxdPJo7K5dCoyyDkqb6C', '2022-06-07 08:30:47', '2022-06-07 08:30:47'),
(2482, 1, 'DCzFijQY4wptDrmhAox9W3yCTMcl8IgC', '2022-06-07 15:21:32', '2022-06-07 15:21:32'),
(2483, 1, '1J84Ods6xCtWPVxlWffcVKpKDviTzot6', '2022-06-07 16:19:34', '2022-06-07 16:19:34'),
(2484, 1, 'qbKc6X8mREQLOtccXVk44UhPl8GeOPIo', '2022-06-07 17:21:30', '2022-06-07 17:21:30'),
(2485, 1, 'Vt1kn06Ad0BiIRRDqyoUDTVaSA6wpqEm', '2022-06-07 23:54:35', '2022-06-07 23:54:35'),
(2486, 1, 'BhVGuEi8P01Azbrpw2xOkxDh9REgmU8y', '2022-06-08 02:04:19', '2022-06-08 02:04:19'),
(2487, 1, 'C2BA9iYV6Ack4Dfo70eQX0GsWupbFHGv', '2022-06-08 03:40:28', '2022-06-08 03:40:28'),
(2488, 1, 'z47b9gqz1IXiNSiiZIY8mkdaw7mVTAFO', '2022-06-08 03:42:53', '2022-06-08 03:42:53'),
(2489, 1, 'CVmA2oTmRJ5fC6kBTFnEFcRZN6PDQkNJ', '2022-06-08 05:07:27', '2022-06-08 05:07:27'),
(2490, 1, 'N7pR4fEIA7K0OpYpQDA0RJJAwLnaVuwl', '2022-06-08 12:25:20', '2022-06-08 12:25:20'),
(2491, 1, '97wpl1JwelvVljjXKcMbCsBl9ryF8aV2', '2022-06-08 13:54:39', '2022-06-08 13:54:39'),
(2492, 1, '5TtD4B2WrLLYvmfPGZi95Q1bp0iVXxcB', '2022-06-08 15:53:40', '2022-06-08 15:53:40'),
(2493, 1, 'VxI4RlFJIn5eIiQEGpHE9FZQRNz1SpeB', '2022-06-08 16:53:50', '2022-06-08 16:53:50'),
(2494, 1, 'bX2YjEJ1ioJPwwHUAD5gOkXcilhwRQ96', '2022-06-08 17:23:51', '2022-06-08 17:23:51'),
(2495, 1, 'dbDEgicHVaRAzsKuKfPv0wjE4TBIAhNQ', '2022-06-08 18:44:15', '2022-06-08 18:44:15'),
(2496, 1, 'PVWBfHa3VoaigcSE3UM8s5tSyaymSCew', '2022-06-08 19:39:29', '2022-06-08 19:39:29'),
(2497, 1, 'Xm5CPVNhXHglIOGZQE9owQIvW53EdeC1', '2022-06-08 19:40:38', '2022-06-08 19:40:38'),
(2498, 1, 'MiEvvH1SgkeNCtgmg1At8ZOBe2LWGVPv', '2022-06-08 20:19:45', '2022-06-08 20:19:45'),
(2499, 1, 'qjGzYyL2oNFCeESRsN3HMSWCkc8GwL9n', '2022-06-08 22:33:46', '2022-06-08 22:33:46'),
(2500, 1, 'DWXgTWFGvFXXJC9PXcppmzvZqm1gN9ux', '2022-06-08 22:44:40', '2022-06-08 22:44:40'),
(2501, 1, 'f4TlVARdPbzT0WL2oc6awt9nlEU0Ssg7', '2022-06-08 23:20:10', '2022-06-08 23:20:10'),
(2502, 1, 'KrQoLwMJBJzWZhjx60fAdLic6Ig0kdya', '2022-06-09 03:01:42', '2022-06-09 03:01:42'),
(2503, 1, '6ZCI8ocKgeRJWQKplg7FYGP91prWPd9X', '2022-06-09 06:46:42', '2022-06-09 06:46:42'),
(2504, 1, 'G7lsoZndM4znVoj6K4RGNXdN7cvIl00g', '2022-06-09 07:29:00', '2022-06-09 07:29:00'),
(2505, 1, '1yeRKsvNDL5pv2PiERZOfKTN9hXPzMzY', '2022-06-09 08:34:42', '2022-06-09 08:34:42'),
(2506, 1, 'a7IQ4VI4jZEWwcBIaDczwYnuCEhYq6rk', '2022-06-09 09:41:33', '2022-06-09 09:41:33'),
(2507, 1, 'AsH3nGHHIMpk76WemZXyPxNyHbB5TNsX', '2022-06-09 10:43:59', '2022-06-09 10:43:59'),
(2508, 1, 'Y8iGvaEClRsjLUniFj92hDJ7QKAKu3ru', '2022-06-09 11:48:00', '2022-06-09 11:48:00'),
(2509, 1, 'fJ5Iz7F2MUfoafqK9Unyuzk9mH2UY6km', '2022-06-09 13:16:39', '2022-06-09 13:16:39'),
(2510, 1, '5v8iGvMkd3GP2UecWlVL6CVYAKDJQBtr', '2022-06-09 18:51:59', '2022-06-09 18:51:59'),
(2511, 1, 'HlI5DHhxhkJWQ0r4BrOdzZsF3R9w1Xtq', '2022-06-09 19:12:05', '2022-06-09 19:12:05'),
(2512, 1, 'zy5acykQkHPZKs9uwP1bJNo90h0qaIxt', '2022-06-09 21:50:10', '2022-06-09 21:50:10'),
(2514, 1, 'ypqjgSSbOBuYrvBYJtxKTjwqKH6GQ1AB', '2022-06-10 02:42:31', '2022-06-10 02:42:31'),
(2516, 1, 'pYZ7mg9QsULn3CMwuOK0hbVJt4wYETaL', '2022-06-10 09:37:54', '2022-06-10 09:37:54'),
(2517, 1, 'tLXu6ZMfvoWM2YJaObRlIBWyVm1deG4u', '2022-06-10 11:52:52', '2022-06-10 11:52:52'),
(2518, 1, 'iEL1tob4z4oWf47JUfpGnRYe3Pioxi2y', '2022-06-10 11:52:58', '2022-06-10 11:52:58'),
(2519, 1, 'ex1GifmjpVL94FAAinpWv2Fb82lMg5Ek', '2022-06-10 12:37:27', '2022-06-10 12:37:27'),
(2520, 1, 'A66VrbRRkGkXVDfuJIECHoNKo8g5xDyK', '2022-06-10 13:19:24', '2022-06-10 13:19:24'),
(2521, 1, 'kfgZUflqNN9i19HDMk8xBy2DvbTcfrgl', '2022-06-10 13:20:17', '2022-06-10 13:20:17'),
(2522, 1, '8iK8HyHxprFP25ErdVG8DA6BuWKiDCjp', '2022-06-10 14:31:37', '2022-06-10 14:31:37'),
(2523, 1, 'ILkz8LQXmldBJRSitF6GUyPOkjtrGKHG', '2022-06-10 14:43:26', '2022-06-10 14:43:26'),
(2524, 1, 'NPYxZdYE86NXZTFJUZs9vFyVOiAsjAWN', '2022-06-10 15:44:26', '2022-06-10 15:44:26'),
(2525, 1, 'oISgZKKDtN52RCZJtHMR44d5TJdXEIPy', '2022-06-10 18:23:42', '2022-06-10 18:23:42'),
(2526, 1, '7kh6bMhYm0XPNasuO0QwLPcTodPaD9KP', '2022-06-10 20:57:51', '2022-06-10 20:57:51'),
(2527, 1, 'W68tXjhedhAZlCVPol9DrZDx0rhhnsjA', '2022-06-10 22:20:25', '2022-06-10 22:20:25'),
(2528, 1, 'cdMUNgZ8z1tnK2WmVD9xk7TNiAeLbje7', '2022-06-11 00:56:10', '2022-06-11 00:56:10'),
(2529, 1, 'k34wuULQLsmXIVUa4MzR712PsCWxOPPV', '2022-06-11 04:34:11', '2022-06-11 04:34:11'),
(2531, 1, 'uWjqbrSB8KcV8CJwF6MSEAOpm6AN15eg', '2022-06-11 14:20:52', '2022-06-11 14:20:52'),
(2532, 1, 'qv8W0bk1Smlrw8bjuQojdoEBpEIVZiPH', '2022-06-11 14:27:05', '2022-06-11 14:27:05'),
(2533, 1, 'CuwVPdjl8E1cKL069zvidgQ2RNWAtxUA', '2022-06-11 14:27:59', '2022-06-11 14:27:59'),
(2534, 1, 'PubvQXQ5xaCMMbpTPv4AXtIfI4X8HRJA', '2022-06-11 14:35:15', '2022-06-11 14:35:15'),
(2535, 1, 'BOGwA83HCMtAJ5aXNBsyTwhn1jBEk2r3', '2022-06-11 18:37:33', '2022-06-11 18:37:33'),
(2536, 1, 'CQbNmUgFgiawZL5aJhSFGLMtlDCFb7S5', '2022-06-11 22:52:13', '2022-06-11 22:52:13'),
(2537, 1, 'XTeSLIQGTwAqer8G3yhxCkBRi5ESWZiR', '2022-06-12 06:21:36', '2022-06-12 06:21:36'),
(2538, 1, 'LPLQS7XlLDCA8O9b1smgafCXvYSpJqjy', '2022-06-12 09:40:08', '2022-06-12 09:40:08'),
(2539, 1, 'RFt70ijnaaLesv7pnP2s7BONNGCqZMbD', '2022-06-12 10:17:06', '2022-06-12 10:17:06'),
(2540, 1, 'gG1SHerCiOhciUujtREuQIjLEbcprI9g', '2022-06-12 10:34:07', '2022-06-12 10:34:07'),
(2541, 1, 'dXpqmCacX2qYz0Y0GbMyw7pgNAAZFnDO', '2022-06-12 13:31:38', '2022-06-12 13:31:38'),
(2542, 1, 'o45k0B0DT9ljhreTuminJH8qNbRQzNYK', '2022-06-12 13:36:24', '2022-06-12 13:36:24'),
(2545, 1, 'LNitZt6LzBNodMQjAD5u3WqMdVd10JsF', '2022-06-12 18:19:14', '2022-06-12 18:19:14'),
(2546, 1, '3ogbYWEzuptteCA4JLQFHNwhc5d9pAz4', '2022-06-12 21:43:13', '2022-06-12 21:43:13'),
(2547, 1, 'Ehsy2NsN3mF6QfNLlQMzSLokUfscCAP7', '2022-06-12 21:54:30', '2022-06-12 21:54:30'),
(2548, 1, '2H5AdcWWwzwrEnzXzgfnrL01GxaqAbPH', '2022-06-13 06:21:39', '2022-06-13 06:21:39'),
(2549, 1, 'GDXLc3Q0DubAGhpXCEFR097HhjpeTMIL', '2022-06-13 11:30:48', '2022-06-13 11:30:48'),
(2550, 1, 'q4Of6gebF33u51MSZvvLpxg0VkaarL2T', '2022-06-13 18:42:20', '2022-06-13 18:42:20'),
(2551, 1, 'e1Q18OItEFzBqZgXeZy3ObHTNqPWJBUh', '2022-06-13 20:36:00', '2022-06-13 20:36:00'),
(2552, 1, 'kE9DLv7nJjsLvVUClItSRDAVRiR4fWH9', '2022-06-13 21:34:19', '2022-06-13 21:34:19'),
(2553, 1, 'NZ8VmRfNpNy9PRXDlMnBbA6VeXXwcM2n', '2022-06-13 22:16:57', '2022-06-13 22:16:57'),
(2554, 1, '9GFTyAtiEohu67jmC9xg5VT7eyEbpITY', '2022-06-13 22:30:13', '2022-06-13 22:30:13'),
(2555, 1, 'sKKaOyUY1sMRtptrjstSGlCMUiGR4qzV', '2022-06-13 22:45:24', '2022-06-13 22:45:24'),
(2556, 1, 'CFMi5eZzrlcubu914dDQu6AmsmYfueqU', '2022-06-14 02:15:52', '2022-06-14 02:15:52'),
(2557, 1, 'XL31cNE3Xz56H6kAyS3r5NASAoDqoGLv', '2022-06-14 13:55:54', '2022-06-14 13:55:54'),
(2558, 1, 'iMUrQfMECv5dtNlL74G9t3QZhdtIuK9l', '2022-06-14 14:29:25', '2022-06-14 14:29:25'),
(2559, 1, 'OyXG9Y79DSask9vL7HUtZJQeAXG3QWEY', '2022-06-14 15:56:13', '2022-06-14 15:56:13'),
(2560, 1, 'X4O1Wd17ckej7fbifjiXAvtcgyFxVvit', '2022-06-14 16:15:32', '2022-06-14 16:15:32'),
(2561, 1, 'lLhWhMDWMeW7xj8Atwd7Ho8lLt4CQgyb', '2022-06-14 16:19:17', '2022-06-14 16:19:17'),
(2562, 1, 'mUhWyyrKER7L485uyZdGMWSlnR9cmaoL', '2022-06-14 18:28:13', '2022-06-14 18:28:13'),
(2563, 1, '81fALpSUIznFqS0PSBw2iPqpqY3nj8qt', '2022-06-14 18:30:30', '2022-06-14 18:30:30'),
(2564, 1, 'FbUvuBeQ7hDDpnjs2jE6A5PbUB5EGukV', '2022-06-14 23:18:05', '2022-06-14 23:18:05'),
(2565, 1, '02uxzKOT37ww5XXeoJIqJeIxsyl5CEMX', '2022-06-15 04:11:58', '2022-06-15 04:11:58'),
(2566, 1, 'tLBBGNhDmcdVBS2PqyaJFe2GnByDyVyt', '2022-06-15 04:46:20', '2022-06-15 04:46:20'),
(2567, 1, 'ufc7mzwkTlTCfzW7px1nUdP6E186umMG', '2022-06-15 06:35:00', '2022-06-15 06:35:00'),
(2568, 1, 'QX8bOQ7MQZK6pGCXt7Mfod2Wyhrq59no', '2022-06-15 15:06:59', '2022-06-15 15:06:59'),
(2569, 1, 'Xl7YNSlD81Q3SIui3un4AqLGeW4gbkFc', '2022-06-15 16:21:55', '2022-06-15 16:21:55'),
(2570, 1, 'gR0Al633KRsRPXygxfsagSjaGrg5dBUz', '2022-06-15 16:56:15', '2022-06-15 16:56:15'),
(2572, 1, 'BMF8DsM6R1eUO1PkpSLHuBx53GLeBWSA', '2022-06-15 18:26:38', '2022-06-15 18:26:38'),
(2573, 1, '1byXKw6NkRN9uIpvFocGkweZBqhNsd0F', '2022-06-15 19:18:40', '2022-06-15 19:18:40'),
(2574, 1, 'hteHsMqHEtuw7gYf3sSuNinycCICX4kX', '2022-06-15 21:42:58', '2022-06-15 21:42:58'),
(2575, 1, 'ElqCoKU5BaEVhOO5s9c9RixYcu0WrXTM', '2022-06-15 21:53:00', '2022-06-15 21:53:00'),
(2576, 1, 'PK7nJkSLariKyWmxdnBbd9KDMpCcQJDM', '2022-06-15 22:42:24', '2022-06-15 22:42:24'),
(2577, 1, 'SnAzHFezi0UEPid89UuD7osi9rjNo4o5', '2022-06-15 23:38:34', '2022-06-15 23:38:34'),
(2578, 1, 'l6MYuExHSAk8xZk2mcZpNC3nvzIMXPfG', '2022-06-16 00:58:26', '2022-06-16 00:58:26'),
(2579, 1, 'x8hGbzsdJBFtkp3CQH1DBXTbfhMMKE9x', '2022-06-16 03:36:38', '2022-06-16 03:36:38'),
(2580, 1, 'UWJBsHPzsnnrVPf4Bz5Bdpobr4yRcO4H', '2022-06-16 09:54:11', '2022-06-16 09:54:11'),
(2581, 1, 'lb7SURO2uxSj6mgXIIugCnsa5lnH5dWX', '2022-06-16 10:20:27', '2022-06-16 10:20:27'),
(2582, 1, 'I7DYFyFei2RCargh7tdNUwfqU91rLxwW', '2022-06-16 10:46:36', '2022-06-16 10:46:36'),
(2583, 1, 'XAHqmsFtbtHriZqBTwcPaS4OcyL5WiFO', '2022-06-16 13:38:33', '2022-06-16 13:38:33'),
(2584, 1, 'CNkJb3689gS5AS2KuGI3hrXXoNP6FSKb', '2022-06-16 17:25:33', '2022-06-16 17:25:33'),
(2585, 1, 'ShfyYLDhrXhSrCF6Cdbg5s6JIVPsZVe6', '2022-06-16 19:30:39', '2022-06-16 19:30:39'),
(2586, 1, 'FEplux0ctDqfhqeUx4G8nP8kKJ2cork3', '2022-06-16 20:12:56', '2022-06-16 20:12:56'),
(2587, 1, 'yLsNliSovFq3xHAGx4T39ns3D7SbpsWB', '2022-06-16 20:24:02', '2022-06-16 20:24:02'),
(2588, 1, 'xZnMwUrNjuO6mq7pkzjaEllP5Kjibmct', '2022-06-16 22:56:26', '2022-06-16 22:56:26'),
(2589, 1, 'dddTxxakNFLn6zyIQRyjmBMBP5hELfgb', '2022-06-17 04:06:56', '2022-06-17 04:06:56'),
(2590, 1, 'sX1vaYoJ8Q1Xu6W2S2tTJO5j8Tg1Bb4O', '2022-06-17 04:09:19', '2022-06-17 04:09:19'),
(2591, 1, 'wEuWsUrBzn9p62ZXG3NeEd2D0ohWCTNf', '2022-06-17 04:51:29', '2022-06-17 04:51:29'),
(2592, 1, 'H9tXQpSpjK4F3LIEpEXKiPg5pdSHwJfR', '2022-06-17 07:00:47', '2022-06-17 07:00:47'),
(2593, 1, 'gqxy1oxEvLsIkyd8kt9H7lkKohLbqpTP', '2022-06-17 08:19:31', '2022-06-17 08:19:31'),
(2594, 1, '9l7N3SrQOCQba5qxFs5qKAr3C0gqY8Js', '2022-06-17 09:40:37', '2022-06-17 09:40:37'),
(2595, 1, 'R2csqnWxooxVViGorLQ9VxarpS6CrZak', '2022-06-17 17:56:18', '2022-06-17 17:56:18'),
(2596, 1, 'h2pd2BvXFyyPEi1f9eKdHXyh0BfxLcLr', '2022-06-17 18:43:47', '2022-06-17 18:43:47'),
(2597, 1, 'HRNU5YzFQ4Jt7L2Uqd2uE60vwWmNNnTE', '2022-06-18 15:16:48', '2022-06-18 15:16:48'),
(2598, 1, 'brc0CAqv7B8emUvZrwCy38e04ZxDFmb2', '2022-06-18 21:15:27', '2022-06-18 21:15:27'),
(2599, 1, 'g4dD5x6PCA7gn3bcW3lw59SxJ70VCXii', '2022-06-18 22:13:03', '2022-06-18 22:13:03'),
(2600, 1, '2gVgay6lG4uavPRlPLisV7lvpQtSk501', '2022-06-19 01:26:41', '2022-06-19 01:26:41'),
(2601, 1, 'ydpX3Wl7Bx05Nv77xPwmfc4zkW7R7fLI', '2022-06-19 06:34:57', '2022-06-19 06:34:57'),
(2602, 1, 'YAXutT2cgs5aB11dsiz4I15K2RW9kGXO', '2022-06-19 07:49:24', '2022-06-19 07:49:24'),
(2603, 1, 'SPmQtfvfPghxspNzOHnm27979CBmiRWD', '2022-06-19 12:12:38', '2022-06-19 12:12:38'),
(2604, 1, '9v5pED7IRNK7hWZSq7ooTtdxK8pTHRZ0', '2022-06-19 12:51:02', '2022-06-19 12:51:02'),
(2605, 1, 'VUBAI4AM2TULATqFhD6koSBD6azUI99A', '2022-06-19 13:20:37', '2022-06-19 13:20:37'),
(2606, 1, 'R5Fwc4pjZcGEyO5VtGkpEPkEOhevZsyt', '2022-06-19 14:18:12', '2022-06-19 14:18:12'),
(2607, 1, 'oco0zRKQYZqsuu1q4HfuSq6oF03NmTyN', '2022-06-19 16:57:41', '2022-06-19 16:57:41'),
(2608, 1, 'K83fQ8KWDtJSHfF5RHHUGCE7kbAb2CRH', '2022-06-19 18:01:47', '2022-06-19 18:01:47'),
(2609, 1, 'E9B7Ua5q8xUPun1PU8iSI18MzSOxKhA0', '2022-06-19 18:04:47', '2022-06-19 18:04:47'),
(2610, 1, 'pyrgijYq3Z57qavyU1TFSPwUepwJ14yD', '2022-06-19 23:31:59', '2022-06-19 23:31:59'),
(2611, 1, 'vKWNWmgjYAEROkkjIUL4iLoapu0BWSYB', '2022-06-20 01:43:17', '2022-06-20 01:43:17'),
(2612, 1, 'hfRZFRdcoSbNWHtOM4B1dpgoQjyYy5wH', '2022-06-20 02:02:12', '2022-06-20 02:02:12'),
(2613, 1, 'FQ3UuPeukt6ppwY2u4NWjXDGw0s6Nx0Q', '2022-06-20 05:19:38', '2022-06-20 05:19:38'),
(2614, 1, 'n5MAmDshsNkcZ1ImmLOrchAqa2qnyEbi', '2022-06-20 06:06:52', '2022-06-20 06:06:52'),
(2615, 1, 'vbjoGtHG1laFRHvb92kVvUCzXBhEuQN3', '2022-06-20 08:02:18', '2022-06-20 08:02:18'),
(2616, 1, 'PgcAqJiWtVbT5LDd2LH0RjIXAJMK5Ccj', '2022-06-20 09:29:18', '2022-06-20 09:29:18'),
(2617, 1, 'h2tziOSt6D5Dld9xuMTf8K3APBXX2G01', '2022-06-20 12:18:09', '2022-06-20 12:18:09'),
(2618, 1, 'sQ8hndJYNFiV5Df1Dh22w8lLie2lmmP5', '2022-06-20 12:23:55', '2022-06-20 12:23:55'),
(2619, 1, 'h6glc3YyzXU1zxSegPPnCeco3ErL7ti3', '2022-06-20 15:22:40', '2022-06-20 15:22:40'),
(2620, 1, 'pfkYE0pVKy5NWjB1Mwt6MY3YQgW55zv7', '2022-06-20 18:47:11', '2022-06-20 18:47:11'),
(2621, 1, 'vngWjCDgUoZcGj9sVwneIvGyv6OorpTH', '2022-06-20 20:26:44', '2022-06-20 20:26:44'),
(2622, 1, 'Dov3zxc4iNbsXJGJmDWobxmtJ3WfY32z', '2022-06-20 22:17:08', '2022-06-20 22:17:08'),
(2623, 1, 'mXjKSfeMUzrZHo8pmxJpyxGJGN4M6NQI', '2022-06-21 01:03:36', '2022-06-21 01:03:36'),
(2624, 1, 'wBf9Pxdop3AlkoGjk7QCHDpqxbq45r4I', '2022-06-21 01:44:22', '2022-06-21 01:44:22'),
(2625, 1, 'CiMLzCoKdyJCzLFaEw7733aFMBW4dtkm', '2022-06-21 03:24:20', '2022-06-21 03:24:20'),
(2626, 1, 'wAWrYOBnphTi4U697fQdWzlRqwWyeRsQ', '2022-06-21 05:13:40', '2022-06-21 05:13:40'),
(2627, 1, '6ghLn4oHtj9t9xSsqUySd16V7OsoT69d', '2022-06-21 05:23:50', '2022-06-21 05:23:50'),
(2628, 1, 'nSPGH5nmH6EZuXjX30dQ2if1UbAFONtm', '2022-06-21 06:54:01', '2022-06-21 06:54:01'),
(2629, 1, 'MyjXraCOC6pnsKs97CF7ia7hrKolcIqm', '2022-06-21 08:18:13', '2022-06-21 08:18:13'),
(2630, 1, 'tUyHClpuRnA01dHhVmAczRKg9CHLIS0K', '2022-06-21 11:21:50', '2022-06-21 11:21:50'),
(2631, 1, '9Oaejr6YqdENQOQlfYGjXm0j6DAOvWei', '2022-06-21 13:06:00', '2022-06-21 13:06:00'),
(2632, 1, 'jlJo8f6IX2vK3HBBya7vfcYR5xyGWV2q', '2022-06-21 13:37:44', '2022-06-21 13:37:44'),
(2633, 1, 'nXbvwfc2go6Hg7uIkHO2pYuCkdwVDpVK', '2022-06-21 14:27:20', '2022-06-21 14:27:20'),
(2634, 1, 'Gy7tmRqtuSdwiqd5CAOZwgTSdFD5B0we', '2022-06-21 14:36:25', '2022-06-21 14:36:25'),
(2635, 1, 'skiHItoPnwcUv0hcQ70MeuvMxgPfGxuM', '2022-06-21 14:44:57', '2022-06-21 14:44:57'),
(2636, 1, 'buvKv70k3mUx9fb6YZA3FpTjetU0hnoe', '2022-06-21 19:13:39', '2022-06-21 19:13:39'),
(2637, 1, 'CcJ1ByhGRFkK1Vhc8snjQPi411QzVMts', '2022-06-21 20:35:47', '2022-06-21 20:35:47'),
(2638, 1, 'si5rxMVpb3SMjb9YOUuThDQ8JoT2FN7n', '2022-06-21 20:56:45', '2022-06-21 20:56:45'),
(2639, 1, 'x1FyrIoiNgWDi8N7h9la0jD1W9TgA1p9', '2022-06-22 05:52:06', '2022-06-22 05:52:06'),
(2640, 1, 'J2qrCWxouid5iwTsfa2btM7CCvsb9P6O', '2022-06-22 10:25:14', '2022-06-22 10:25:14'),
(2641, 1, 'pA2uR9Gj7OtvdBWBHoj8ZztC7MQbVg1w', '2022-06-22 10:47:46', '2022-06-22 10:47:46'),
(2642, 1, 'tMCBID1S2gp5ghhrnj8X2wtpEeTceXi5', '2022-06-22 13:06:33', '2022-06-22 13:06:33'),
(2643, 1, 'dm0wx0Rwawtdjqohi0YrhQuSYpZ39Gyl', '2022-06-22 15:02:33', '2022-06-22 15:02:33'),
(2644, 1, 'hCsmdQFQtRb0E8i0DsXQxIYRxe9MFLPk', '2022-06-22 16:14:45', '2022-06-22 16:14:45'),
(2645, 1, 'uyFrnqDeYIrGGIB5kfwC3hz7CvZHAd2V', '2022-06-22 16:37:51', '2022-06-22 16:37:51'),
(2646, 1, 'mE0z7ykA4YDirNXjgBRZ0FhXl4MFa4Ne', '2022-06-22 21:33:58', '2022-06-22 21:33:58'),
(2647, 1, 'VyNwo1DyQpzqou1iXP3fqHjDrvxh7rpA', '2022-06-22 21:41:36', '2022-06-22 21:41:36'),
(2648, 1, 'tG4qs6bgfPEnKd8vi5mSOrtr4i2AX4oM', '2022-06-22 22:40:56', '2022-06-22 22:40:56'),
(2649, 1, 'YdRaDU0DHYRjBhwBzlKQCt2PUhDkypxd', '2022-06-22 23:25:30', '2022-06-22 23:25:30'),
(2650, 1, 'o7v63wMhzT1mHJD0kD3VQ5ZTAchVodLF', '2022-06-23 00:04:22', '2022-06-23 00:04:22'),
(2651, 1, 'WNHn1wXTuZ7EG33cGdzn85hmO3XMgSKC', '2022-06-23 01:31:49', '2022-06-23 01:31:49'),
(2652, 1, 'oq8UQLAoFzYNXHhLhF4Rsr4cpyI7QZXL', '2022-06-23 06:31:56', '2022-06-23 06:31:56'),
(2653, 1, 'NCFJXP5uDdUgP7G49tj5b0V7nFeF4Q6s', '2022-06-23 10:46:41', '2022-06-23 10:46:41'),
(2654, 1, 'QyobQfqBtZ0wAedNGyyhUNIa1bSMy6yZ', '2022-06-23 12:36:44', '2022-06-23 12:36:44'),
(2655, 1, 'Qv8gjgnnpgpJR8TrJSH9j3C23cY6wUAP', '2022-06-23 13:53:03', '2022-06-23 13:53:03'),
(2656, 1, 'DAZiExNMlo5kYGtczxOFNL4Y49uklPsT', '2022-06-23 17:25:25', '2022-06-23 17:25:25'),
(2657, 1, 'M8Wvf8StYzzYkyguZFmLHpccvxIsENwq', '2022-06-23 18:34:35', '2022-06-23 18:34:35'),
(2658, 1, 'AAEw1P11SanzgtecMgOyRFHosJ99Me6Y', '2022-06-23 18:48:51', '2022-06-23 18:48:51'),
(2659, 1, 'q0Dmf1HgDPzDLo6gnSE3h45gESIpwDAJ', '2022-06-24 00:04:56', '2022-06-24 00:04:56'),
(2660, 1, 'Lbn8fYKFSW9QKWxfWXTW3Ib4UnKjGY3y', '2022-06-24 00:05:47', '2022-06-24 00:05:47'),
(2661, 1, 'qwiD3BkyuhK44NlWVJy6Hx75usZXp2lF', '2022-06-24 01:34:50', '2022-06-24 01:34:50'),
(2662, 1, 'JzWehQ9m7jvc8N5Cbou2lwSX3F7kjJK8', '2022-06-24 04:15:11', '2022-06-24 04:15:11'),
(2663, 1, 'tnHs2lusIuqqILpGMSaQNUK0IGvNVsXR', '2022-06-24 06:43:41', '2022-06-24 06:43:41'),
(2664, 1, 'M4rowSNXI74jBaKiNCePIV0nrF3pgflX', '2022-06-24 08:06:00', '2022-06-24 08:06:00'),
(2665, 1, 'gsnEXIcFKRz3JxrVqJdPhIq5tatjXT8r', '2022-06-24 14:52:36', '2022-06-24 14:52:36'),
(2666, 1, 'EvOG0GkFI1gG2AyMWXodfRVHfxTVz1p9', '2022-06-24 16:49:35', '2022-06-24 16:49:35'),
(2667, 1, 'O9WKAQqKw5tnSPhW0PEyLlcLZxV1oHtD', '2022-06-24 18:54:23', '2022-06-24 18:54:23'),
(2668, 1, '0sxHifKFXdGRjWtsZKqD3zX9ANcwCtXK', '2022-06-24 20:09:21', '2022-06-24 20:09:21'),
(2669, 1, 'w2OTFqCOAEPI4wkMvffepshqQQAkoFPI', '2022-06-25 03:44:55', '2022-06-25 03:44:55'),
(2670, 1, 'X1ireOroU6CsRrPFoviJ24V9VagCdsav', '2022-06-25 13:13:21', '2022-06-25 13:13:21'),
(2671, 1, 'DwNUuQlYZXnb5nqeTMplGyQMSwDGYa6P', '2022-06-25 16:05:41', '2022-06-25 16:05:41'),
(2672, 1, 'lLg83gIVd2Mvih4DcxeU1fOxOkwzYzh7', '2022-06-25 18:38:36', '2022-06-25 18:38:36'),
(2673, 1, 'FF9D5BY54gYDMVEeSaPE4S6yuNDebDE5', '2022-06-25 19:39:46', '2022-06-25 19:39:46'),
(2674, 1, 'H4HfZbHm20sPlLoHMS20AOiGtQ7gZ46j', '2022-06-25 23:32:22', '2022-06-25 23:32:22'),
(2675, 1, '8v0m3Pd9A4DpAAAbpzPaBDUdtWXN7LIk', '2022-06-26 02:39:38', '2022-06-26 02:39:38'),
(2676, 1, 'N8dk91ziYtAXiZXWZvGGZ2g5BOsah5WT', '2022-06-26 09:46:04', '2022-06-26 09:46:04'),
(2677, 1, 'mY5V9SQ1VxUbkFrRxFgS9B19hZYDMNTs', '2022-06-26 12:18:19', '2022-06-26 12:18:19'),
(2678, 1, 'VRRIwDODlm9I3Xpx2vBzqMenJ98VRbeP', '2022-06-26 16:52:10', '2022-06-26 16:52:10'),
(2679, 1, 'NVTkkQZhSWOw1WMtkrsii3guHciIw4fT', '2022-06-26 18:27:21', '2022-06-26 18:27:21'),
(2680, 1, 'iYIJu30CVA8abd6YilEnF4M3o2qVKMQI', '2022-06-26 19:38:15', '2022-06-26 19:38:15'),
(2681, 1, 'CQhIFcdsNvVhwyLMXlX8eN6jxheeIDRZ', '2022-06-26 23:56:55', '2022-06-26 23:56:55'),
(2682, 1, 'qXGwSqGSctLqTMz4eL2eEnSXsN2o8x4v', '2022-06-27 07:50:11', '2022-06-27 07:50:11'),
(2683, 1, 'WnhNgTQxZOFNH14SAKyiiVanhf4znk4U', '2022-06-27 11:46:05', '2022-06-27 11:46:05'),
(2684, 1, '1XNbleIWgM0XGIZuZ2xNN5Mnhgt3iPt0', '2022-06-27 11:47:51', '2022-06-27 11:47:51'),
(2685, 1, 'KaXob7dUxpAxWVJFlNoNbq5xc6LmNhcP', '2022-06-27 12:10:04', '2022-06-27 12:10:04'),
(2686, 1, 'bVOWDGbpLEZyjIO4Re7EYtUcS3Hw4A2p', '2022-06-27 13:44:55', '2022-06-27 13:44:55'),
(2687, 1, 'Shp2XpM2erDQUH0JaEQUizyTs8NDybOC', '2022-06-27 15:44:09', '2022-06-27 15:44:09'),
(2688, 1, 'dsH4YO1z7a8VLwbbKdRLKrGgZjUKenkx', '2022-06-27 16:44:52', '2022-06-27 16:44:52'),
(2689, 1, 'bQ0DzttGgX3KReXLurkSiYegtMVBLoWQ', '2022-06-27 17:18:35', '2022-06-27 17:18:35'),
(2690, 1, '0pRbssyZYHVKEbffZzdGeJOUuiGlUhm6', '2022-06-27 17:30:10', '2022-06-27 17:30:10'),
(2691, 1, 'UTUI6Ct3YpcGpImC5sWC5U2rBZkN10J9', '2022-06-27 19:20:06', '2022-06-27 19:20:06'),
(2692, 1, 'ZOb3Rdww9F99gXREvKMyDfsjBC1f4Hwg', '2022-06-27 21:59:55', '2022-06-27 21:59:55'),
(2693, 1, 'Nh9ZORaYrh7J5LRLQZCZQvGuN0VENFGo', '2022-06-27 22:45:29', '2022-06-27 22:45:29'),
(2694, 1, 'HhELPXwooYMqx3SPTxWyo0BoRmfL0Htv', '2022-06-27 23:26:15', '2022-06-27 23:26:15'),
(2695, 1, '5qr0sp8Cu7QOPvZjMaGCejm4Dsg7qN7J', '2022-06-28 00:43:34', '2022-06-28 00:43:34'),
(2696, 1, 'KQmywO9KNVUqK38gnj2K1IsOThh03BE5', '2022-06-28 00:46:27', '2022-06-28 00:46:27'),
(2697, 1, 'JkMgK2atWI9pIlaQvv4V92gFUwVE8Xhv', '2022-06-28 05:07:10', '2022-06-28 05:07:10'),
(2698, 1, 'cWkwf3ymNGjFE17uJTkNWgmpx0Cc7fUK', '2022-06-28 13:17:56', '2022-06-28 13:17:56'),
(2699, 1, '46DAWZ08ECyKZYooPhStddo52ROmfQhr', '2022-06-28 17:01:59', '2022-06-28 17:01:59'),
(2700, 1, 'qWFsT9mjC6DgE2p8Dy2id6KurUhsUVW5', '2022-06-28 17:46:17', '2022-06-28 17:46:17'),
(2701, 1, 'TBA8Z55D8ahPpwOrwZunbSKwR1GHHTkX', '2022-06-28 20:25:50', '2022-06-28 20:25:50'),
(2702, 1, 'wma58EgCM00j9u6hosh2kwICutnPHJdA', '2022-06-29 05:47:40', '2022-06-29 05:47:40'),
(2703, 1, 'Cq2c0e6TYL9MhFYTR5nAmKM8fYNhFW6C', '2022-06-29 10:33:13', '2022-06-29 10:33:13'),
(2704, 1, 'BROkVbyVoxVWBhCGDAn7TRyo3lVUGkCl', '2022-06-29 12:23:26', '2022-06-29 12:23:26'),
(2705, 1, 'j9wAoQAclIoWSNCzYha9fyDQrPMQinEd', '2022-06-29 17:44:56', '2022-06-29 17:44:56'),
(2706, 1, 'SXS5gxNuQZ7YbhrMHRkM2AxXKfPuoTCx', '2022-06-30 00:06:34', '2022-06-30 00:06:34'),
(2708, 1, 'P93BLsYZawmEzOxOzoCTuXTpwGi3kHHx', '2022-06-30 15:19:54', '2022-06-30 15:19:54'),
(2709, 1, 'VNRQLttyQl9y8BinHuOc7fkLJRTabgMB', '2022-06-30 17:07:03', '2022-06-30 17:07:03'),
(2710, 1, 'a9o8mUKrY2XPA6y2AkEvpRfC51dMrnRN', '2022-06-30 17:28:15', '2022-06-30 17:28:15'),
(2711, 1, '8lHordf6QoOgdUm6wUAtJGZMInjYnGn2', '2022-06-30 18:46:36', '2022-06-30 18:46:36'),
(2712, 1, 'zQFdAMoanHMzuEk1E9IhsGjSq64Qe2gJ', '2022-06-30 19:20:36', '2022-06-30 19:20:36'),
(2713, 1, 'mfuRfcTtpW6eZ899Z5FTjnmtPP5wNnTr', '2022-06-30 21:08:48', '2022-06-30 21:08:48'),
(2714, 1, 'BLSEqzvkZD30byPLSmSx0ULVdVStj3Jn', '2022-06-30 21:35:21', '2022-06-30 21:35:21'),
(2715, 1, 'TaU7D9X4j41m1Id0LdDjQ3NDfppHQESH', '2022-06-30 22:59:25', '2022-06-30 22:59:25'),
(2716, 1, 'dXKh4l1aOEwQeNzb8TZr2PUnzY6ZMcKP', '2022-07-01 03:59:55', '2022-07-01 03:59:55'),
(2717, 1, 'PF4JxE3tkZBBgjfhnCHqNqA9LHZ2yof9', '2022-07-01 06:40:07', '2022-07-01 06:40:07'),
(2718, 1, '9KPRGNY1gmG3MONy0gAFg7s0COSMLhkt', '2022-07-01 10:33:41', '2022-07-01 10:33:41'),
(2719, 1, 'oSdTdq7CJKTy8cwaU67YJ5CxOJLggnRv', '2022-07-01 14:49:55', '2022-07-01 14:49:55'),
(2720, 1, 'sIy1zDH0dw248F5bZUusXPzHKB8L5XP6', '2022-07-01 15:43:38', '2022-07-01 15:43:38'),
(2721, 1, 'YxjWKcBNATAVjVeCArWHVUPJsdvUHGkW', '2022-07-01 19:34:45', '2022-07-01 19:34:45'),
(2722, 1, 'jbimVWFUjic63cxd5VVr9K4WKyWFP5Pg', '2022-07-01 19:35:11', '2022-07-01 19:35:11'),
(2723, 1, 'WEqvhl6fO8VPmzLA9WWiuHIGzio1eZQu', '2022-07-01 21:29:13', '2022-07-01 21:29:13'),
(2724, 1, 'hECWPzUgqQRE4hzo010RmqNvs9B5S6ym', '2022-07-02 08:01:02', '2022-07-02 08:01:02'),
(2725, 1, 'vOoBY2gbcalkCfDBDZjRkQWiqmd4tW26', '2022-07-02 08:03:57', '2022-07-02 08:03:57'),
(2726, 1, 'CQ7f10qkyDDwzlE82ZEnsT1ERoLkO6rQ', '2022-07-02 16:09:49', '2022-07-02 16:09:49'),
(2727, 1, 'pppApRGReSX81NuYTeWa1aQIJcSTovph', '2022-07-02 20:05:44', '2022-07-02 20:05:44'),
(2728, 1, 'k9iJd4T9gtEV541Cuaa1hPdYOvcIVISc', '2022-07-03 01:50:24', '2022-07-03 01:50:24'),
(2729, 1, 'vvEvrzqU6Sqg21l6FbKXgm8sJwKe4UhT', '2022-07-03 05:12:11', '2022-07-03 05:12:11'),
(2731, 1, '7A5YtopXNXO6bJmNdnAsshnySgD6tocN', '2022-07-03 14:25:09', '2022-07-03 14:25:09'),
(2732, 1, '7LVfkyqMpVrgBOPoXD2To08CYReWZl1s', '2022-07-03 14:41:39', '2022-07-03 14:41:39'),
(2733, 1, 'X7ZWpicGEwUk2qHbz5i6MfWVhvIddsnG', '2022-07-03 15:36:46', '2022-07-03 15:36:46'),
(2734, 1, 'iNKb8ZmnEG1ibn0ZtCGwpkusuzVbx7jw', '2022-07-03 15:57:04', '2022-07-03 15:57:04'),
(2735, 1, 'h4h2WWR6kfa6cG8A7BBQZJLV7ZEU24Ui', '2022-07-03 17:22:57', '2022-07-03 17:22:57'),
(2736, 1, 'ASp6ES4na8oY31dJLHjzb9Cyv4sEfmvZ', '2022-07-03 19:14:23', '2022-07-03 19:14:23'),
(2737, 1, '4pjPPZrb9UUbKwjrCgFRh0NClmABelL0', '2022-07-03 20:04:26', '2022-07-03 20:04:26'),
(2738, 1, 'fxp1nhOfc19VzJS7So29AuEijs8z8Agk', '2022-07-03 20:30:08', '2022-07-03 20:30:08'),
(2739, 1, 'jT9uHEh9prlJuCZWoouyUqXCk8KaZuqc', '2022-07-03 22:13:55', '2022-07-03 22:13:55'),
(2740, 1, 'gFcBsSC6wDywfaGcMlmuUgQJBtkebGzB', '2022-07-04 11:11:35', '2022-07-04 11:11:35'),
(2741, 1, 'YNiD2auXlFk7VjEXB8NWbpl9cIZFiwkI', '2022-07-04 12:06:58', '2022-07-04 12:06:58'),
(2742, 1, '4eh6zzGOI8eXPcybCV3tV8DSo3GDrPkc', '2022-07-04 14:39:03', '2022-07-04 14:39:03'),
(2743, 1, 'QBvB3MWgl09IAwfqiTsO3ayKV7ARAMTi', '2022-07-04 16:02:17', '2022-07-04 16:02:17'),
(2744, 1, 'Y8BHFgjubw3BlDBqTdNOFqmyojDFzRRT', '2022-10-22 18:29:05', '2022-10-22 18:29:05');

-- --------------------------------------------------------

--
-- Table structure for table `polls`
--

CREATE TABLE `polls` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `question` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `start_date` timestamp NULL DEFAULT NULL,
  `end_date` timestamp NULL DEFAULT NULL,
  `auth_required` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `polls`
--

INSERT INTO `polls` (`id`, `question`, `start_date`, `end_date`, `auth_required`, `status`, `created_at`, `updated_at`) VALUES
(1, 'How are you?', '2021-09-04 22:34:39', '2021-09-09 22:34:39', '0', '1', '2021-09-04 22:34:39', '2021-09-04 22:34:39');

-- --------------------------------------------------------

--
-- Table structure for table `poll_options`
--

CREATE TABLE `poll_options` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `poll_id` bigint(20) UNSIGNED DEFAULT NULL,
  `option` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` tinyint(4) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `poll_options`
--

INSERT INTO `poll_options` (`id`, `poll_id`, `option`, `order`, `created_at`, `updated_at`) VALUES
(1, 1, 'Fine', 0, '2021-09-04 22:34:39', '2021-09-04 22:34:39'),
(2, 1, 'Bad', 1, '2021-09-04 22:34:39', '2021-09-04 22:34:39');

-- --------------------------------------------------------

--
-- Table structure for table `poll_results`
--

CREATE TABLE `poll_results` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `poll_id` bigint(20) DEFAULT NULL,
  `poll_option_id` bigint(20) UNSIGNED DEFAULT NULL,
  `browser_details` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `language` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `category_id` bigint(20) UNSIGNED DEFAULT NULL,
  `sub_category_id` bigint(20) UNSIGNED DEFAULT NULL,
  `post_type` enum('article','video','audio','trivia-quiz','personality-quiz') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `submitted` tinyint(1) NOT NULL DEFAULT 0 COMMENT '0 Non Submitted, 1 submitted',
  `image_id` bigint(20) UNSIGNED DEFAULT NULL,
  `visibility` tinyint(1) NOT NULL DEFAULT 0,
  `auth_required` tinyint(1) NOT NULL DEFAULT 0,
  `slider` tinyint(1) NOT NULL DEFAULT 0,
  `slider_order` int(11) NOT NULL DEFAULT 0,
  `featured` tinyint(1) NOT NULL DEFAULT 0,
  `featured_order` int(11) NOT NULL DEFAULT 0,
  `breaking` tinyint(1) NOT NULL DEFAULT 0,
  `breaking_order` int(11) NOT NULL DEFAULT 0,
  `recommended` tinyint(1) NOT NULL DEFAULT 0,
  `recommended_order` int(11) NOT NULL DEFAULT 0,
  `editor_picks` tinyint(1) NOT NULL DEFAULT 0,
  `editor_picks_order` int(11) NOT NULL DEFAULT 0,
  `scheduled` tinyint(1) NOT NULL DEFAULT 0,
  `meta_title` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_keywords` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tags` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scheduled_date` timestamp NULL DEFAULT NULL,
  `layout` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'default',
  `video_id` bigint(20) UNSIGNED DEFAULT NULL,
  `video_url_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `video_url` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `video_thumbnail_id` bigint(20) UNSIGNED DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `total_hit` bigint(20) NOT NULL DEFAULT 0,
  `contents` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'extra content',
  `read_more_link` text COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'rss post actual link',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `quiz_answers`
--

CREATE TABLE `quiz_answers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `quiz_question_id` bigint(20) UNSIGNED DEFAULT NULL,
  `image_id` bigint(20) UNSIGNED DEFAULT NULL,
  `answer_text` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_correct` tinyint(4) NOT NULL DEFAULT 0,
  `result_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `quiz_questions`
--

CREATE TABLE `quiz_questions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED DEFAULT NULL,
  `question` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_id` bigint(20) UNSIGNED DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT 1,
  `answer_format` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `quiz_results`
--

CREATE TABLE `quiz_results` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED DEFAULT NULL,
  `image_id` bigint(20) UNSIGNED DEFAULT NULL,
  `result_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `min_correct` int(11) DEFAULT NULL,
  `max_correct` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `reactions`
--

CREATE TABLE `reactions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `data_reaction` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `reminders`
--

CREATE TABLE `reminders` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `completed` tinyint(1) NOT NULL DEFAULT 0,
  `completed_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `permissions` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `slug`, `name`, `permissions`, `created_at`, `updated_at`) VALUES
(1, 'superadmin', 'Superadmin', '{\"users_read\":true,\"users_write\":true,\"users_delete\":true,\"settings_read\":true,\"settings_write\":true,\"settings_delete\":true,\"role_read\":true,\"role_write\":true,\"role_delete\":true,\"permission_read\":true,\"permission_write\":true,\"permission_delete\":true,\"language_settings_read\":true,\"language_settings_write\":true,\"language_settings_delete\":true,\"pages_read\":true,\"pages_write\":true,\"pages_delete\":true,\"menu_read\":true,\"menu_write\":true,\"menu_delete\":true,\"menu_item_read\":true,\"menu_item_write\":true,\"menu_item_delete\":true,\"post_read\":true,\"post_write\":true,\"post_delete\":true,\"category_read\":true,\"category_write\":true,\"category_delete\":true,\"sub_category_read\":true,\"sub_category_write\":true,\"sub_category_delete\":true,\"widget_read\":true,\"widget_write\":true,\"widget_delete\":true,\"newsletter_read\":true,\"newsletter_write\":true,\"newsletter_delete\":true,\"notification_read\":true,\"notification_write\":true,\"notification_delete\":true,\"contact_message_read\":true,\"contact_message_write\":true,\"contact_message_delete\":true,\"ads_read\":true,\"ads_write\":true,\"ads_delete\":true,\"theme_section_read\":true,\"theme_section_write\":true,\"theme_section_delete\":true,\"polls_read\":true,\"polls_write\":true,\"polls_delete\":true,\"socials_read\":true,\"socials_write\":true,\"socials_delete\":true,\"comments_read\":true,\"comments_write\":true,\"comments_delete\":true,\"album_read\":true,\"album_write\":true,\"album_delete\":true,\"rss_read\":true,\"rss_write\":true,\"rss_delete\":true,\"api_read\":true,\"api_write\":true,\"api_delete\":true}', '2021-09-04 22:34:38', '2021-09-04 22:34:38'),
(2, 'admin', 'Admin', '{\"users_read\":true,\"users_write\":true,\"settings_read\":true,\"settings_write\":true,\"role_read\":true,\"role_write\":true,\"permission_read\":true,\"permission_write\":true,\"language_settings_read\":true,\"language_settings_write\":true,\"pages_read\":true,\"pages_write\":true,\"menu_read\":true,\"menu_write\":true,\"menu_item_read\":true,\"menu_item_write\":true,\"post_read\":true,\"post_write\":true,\"category_read\":true,\"category_write\":true,\"sub_category_read\":true,\"sub_category_write\":true,\"widget_read\":true,\"widget_write\":true,\"newsletter_read\":true,\"newsletter_write\":true,\"notification_read\":true,\"notification_write\":true,\"contact_message_read\":true,\"contact_message_write\":true,\"ads_read\":true,\"ads_write\":true,\"theme_section_read\":true,\"theme_section_write\":true,\"polls_read\":true,\"polls_write\":true,\"socials_read\":true,\"socials_write\":true,\"comments_read\":true,\"comments_write\":true,\"album_read\":true,\"album_write\":true,\"rss_read\":true,\"rss_write\":true}', '2021-09-04 22:34:38', '2021-09-04 22:34:38'),
(3, 'editor', 'Editor', '{\"pages_read\":true,\"pages_write\":true,\"menu_read\":true,\"menu_write\":true,\"menu_item_read\":true,\"menu_item_write\":true,\"post_read\":true,\"post_write\":true,\"category_read\":true,\"category_write\":true,\"sub_category_read\":true,\"sub_category_write\":true,\"widget_read\":true,\"widget_write\":true,\"newsletter_read\":true,\"newsletter_write\":true,\"notification_read\":true,\"notification_write\":true,\"contact_message_read\":true,\"contact_message_write\":true,\"ads_read\":true,\"ads_write\":true,\"polls_read\":true,\"polls_write\":true}', '2021-09-04 22:34:38', '2021-09-04 22:34:38'),
(4, 'user', 'User', NULL, '2021-09-04 22:34:38', '2021-09-04 22:34:38'),
(5, 'subscriber', 'Subscriber', NULL, '2021-09-04 22:34:38', '2021-09-04 22:34:38');

-- --------------------------------------------------------

--
-- Table structure for table `role_users`
--

CREATE TABLE `role_users` (
  `user_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_users`
--

INSERT INTO `role_users` (`user_id`, `role_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2021-09-04 22:34:39', '2021-09-04 22:34:39'),
(2, 2, '2021-09-04 22:34:39', '2021-09-04 22:34:39'),
(3, 4, '2021-10-01 10:54:40', '2021-10-01 10:54:40'),
(4, 4, '2021-10-01 10:55:30', '2021-10-01 10:55:30'),
(5, 4, '2021-10-05 01:53:56', '2021-10-05 01:53:56'),
(6, 4, '2021-10-08 22:08:43', '2021-10-08 22:08:43'),
(7, 4, '2021-10-16 20:17:43', '2021-10-16 20:17:43'),
(8, 4, '2021-10-18 00:56:59', '2021-10-18 00:56:59'),
(9, 4, '2021-10-19 20:33:06', '2021-10-19 20:33:06'),
(10, 4, '2021-10-19 20:33:22', '2021-10-19 20:33:22'),
(11, 4, '2021-10-25 20:57:51', '2021-10-25 20:57:51'),
(12, 4, '2021-10-29 22:01:51', '2021-10-29 22:01:51'),
(13, 4, '2021-11-02 09:44:39', '2021-11-02 09:44:39'),
(14, 4, '2021-11-04 00:47:10', '2021-11-04 00:47:10'),
(15, 4, '2021-11-04 00:47:32', '2021-11-04 00:47:32'),
(16, 4, '2021-11-06 17:28:13', '2021-11-06 17:28:13'),
(17, 4, '2021-11-06 17:28:40', '2021-11-06 17:28:40'),
(18, 5, '2021-11-08 11:02:06', '2021-11-08 11:02:06'),
(19, 4, '2021-11-09 11:49:42', '2021-11-09 11:49:42'),
(20, 4, '2021-11-09 11:49:59', '2021-11-09 11:49:59'),
(21, 4, '2021-11-09 11:50:57', '2021-11-09 11:50:57'),
(22, 4, '2021-11-10 14:14:57', '2021-11-10 14:14:57'),
(23, 4, '2021-11-10 14:34:16', '2021-11-10 14:34:16'),
(24, 4, '2021-11-12 18:38:56', '2021-11-12 18:38:56'),
(25, 4, '2021-11-13 12:03:40', '2021-11-13 12:03:40'),
(26, 4, '2021-11-13 12:25:33', '2021-11-13 12:25:33'),
(27, 4, '2021-11-13 12:27:07', '2021-11-13 12:27:07'),
(28, 4, '2021-11-13 12:27:44', '2021-11-13 12:27:44'),
(29, 5, '2021-11-18 03:17:23', '2021-11-18 03:17:23'),
(30, 4, '2021-11-23 04:17:57', '2021-11-23 04:17:57'),
(31, 4, '2021-11-27 14:52:30', '2021-11-27 14:52:30'),
(32, 4, '2021-11-27 15:04:16', '2021-11-27 15:04:16'),
(33, 4, '2021-12-07 13:14:54', '2021-12-07 13:14:54'),
(34, 4, '2021-12-08 12:48:10', '2021-12-08 12:48:10'),
(35, 4, '2021-12-10 23:45:26', '2021-12-10 23:45:26'),
(36, 4, '2021-12-10 23:47:54', '2021-12-10 23:47:54'),
(37, 4, '2021-12-10 23:48:23', '2021-12-10 23:48:23'),
(38, 4, '2021-12-15 12:45:57', '2021-12-15 12:45:57'),
(39, 4, '2021-12-18 05:36:08', '2021-12-18 05:36:08'),
(40, 4, '2021-12-19 05:37:51', '2021-12-19 05:37:51'),
(41, 4, '2021-12-19 05:39:37', '2021-12-19 05:39:37'),
(42, 4, '2021-12-21 01:06:42', '2021-12-21 01:06:42'),
(43, 4, '2021-12-21 01:08:21', '2021-12-21 01:08:21'),
(44, 5, '2021-12-21 05:30:42', '2021-12-21 05:30:42'),
(45, 4, '2021-12-22 22:59:47', '2021-12-22 22:59:47'),
(46, 4, '2021-12-29 22:19:56', '2021-12-29 22:19:56'),
(47, 4, '2021-12-30 12:59:54', '2021-12-30 12:59:54'),
(48, 5, '2022-01-02 13:46:23', '2022-01-02 13:46:23'),
(49, 4, '2022-01-07 15:49:17', '2022-01-07 15:49:17'),
(50, 4, '2022-01-07 21:57:27', '2022-01-07 21:57:27'),
(51, 4, '2022-01-08 09:52:33', '2022-01-08 09:52:33'),
(52, 4, '2022-01-10 12:46:25', '2022-01-10 12:46:25'),
(53, 5, '2022-01-13 16:07:04', '2022-01-13 16:07:04'),
(54, 4, '2022-01-20 09:11:25', '2022-01-20 09:11:25'),
(55, 4, '2022-01-20 09:54:17', '2022-01-20 09:54:17'),
(56, 5, '2022-01-22 16:25:02', '2022-01-22 16:25:02'),
(57, 4, '2022-01-24 23:03:57', '2022-01-24 23:03:57'),
(58, 4, '2022-01-26 13:57:21', '2022-01-26 13:57:21'),
(59, 4, '2022-01-27 11:28:16', '2022-01-27 11:28:16'),
(60, 4, '2022-01-28 04:57:00', '2022-01-28 04:57:00'),
(61, 4, '2022-01-28 20:15:13', '2022-01-28 20:15:13'),
(62, 4, '2022-02-02 12:07:51', '2022-02-02 12:07:51'),
(63, 4, '2022-02-04 16:07:21', '2022-02-04 16:07:21'),
(64, 4, '2022-02-09 00:52:42', '2022-02-09 00:52:42'),
(65, 4, '2022-02-10 21:03:28', '2022-02-10 21:03:28'),
(66, 4, '2022-02-10 23:27:54', '2022-02-10 23:27:54'),
(67, 4, '2022-02-14 13:04:41', '2022-02-14 13:04:41'),
(68, 4, '2022-02-15 14:47:59', '2022-02-15 14:47:59'),
(69, 4, '2022-02-17 16:53:45', '2022-02-17 16:53:45'),
(70, 5, '2022-02-23 01:46:32', '2022-02-23 01:46:32'),
(71, 4, '2022-02-25 01:27:18', '2022-02-25 01:27:18'),
(72, 4, '2022-02-25 01:30:05', '2022-02-25 01:30:05'),
(73, 4, '2022-02-25 01:32:14', '2022-02-25 01:32:14'),
(74, 5, '2022-03-04 03:32:24', '2022-03-04 03:32:24'),
(75, 4, '2022-03-05 07:31:57', '2022-03-05 07:31:57'),
(76, 4, '2022-03-07 08:58:47', '2022-03-07 08:58:47'),
(77, 4, '2022-03-08 03:07:38', '2022-03-08 03:07:38'),
(78, 4, '2022-03-09 23:59:21', '2022-03-09 23:59:21'),
(79, 4, '2022-03-14 00:34:36', '2022-03-14 00:34:36'),
(80, 4, '2022-03-14 15:30:04', '2022-03-14 15:30:04'),
(81, 4, '2022-03-17 12:21:38', '2022-03-17 12:21:38'),
(82, 5, '2022-03-18 21:51:42', '2022-03-18 21:51:42'),
(83, 4, '2022-03-24 14:26:50', '2022-03-24 14:26:50'),
(84, 4, '2022-03-25 16:33:50', '2022-03-25 16:33:50'),
(85, 4, '2022-03-25 16:34:16', '2022-03-25 16:34:16'),
(86, 4, '2022-03-29 02:43:43', '2022-03-29 02:43:43'),
(87, 4, '2022-03-30 22:24:20', '2022-03-30 22:24:20'),
(88, 4, '2022-03-31 19:48:49', '2022-03-31 19:48:49'),
(89, 4, '2022-04-03 08:16:30', '2022-04-03 08:16:30'),
(90, 5, '2022-04-07 15:15:18', '2022-04-07 15:15:18'),
(91, 4, '2022-04-07 21:52:21', '2022-04-07 21:52:21'),
(92, 4, '2022-04-08 16:42:28', '2022-04-08 16:42:28'),
(93, 4, '2022-04-12 18:48:31', '2022-04-12 18:48:31'),
(94, 4, '2022-04-12 18:49:14', '2022-04-12 18:49:14'),
(95, 4, '2022-04-13 20:07:33', '2022-04-13 20:07:33'),
(96, 4, '2022-04-17 20:54:47', '2022-04-17 20:54:47'),
(97, 4, '2022-04-22 21:12:09', '2022-04-22 21:12:09'),
(98, 4, '2022-04-23 01:44:13', '2022-04-23 01:44:13'),
(99, 4, '2022-04-23 07:38:05', '2022-04-23 07:38:05'),
(100, 4, '2022-04-25 12:24:06', '2022-04-25 12:24:06'),
(101, 5, '2022-04-25 23:19:36', '2022-04-25 23:19:36'),
(102, 4, '2022-04-28 17:50:28', '2022-04-28 17:50:28'),
(103, 4, '2022-05-01 20:27:01', '2022-05-01 20:27:01'),
(104, 5, '2022-05-04 12:50:32', '2022-05-04 12:50:32'),
(105, 4, '2022-05-07 09:24:55', '2022-05-07 09:24:55'),
(106, 4, '2022-05-09 00:20:49', '2022-05-09 00:20:49'),
(107, 4, '2022-05-09 13:28:48', '2022-05-09 13:28:48'),
(108, 4, '2022-05-11 00:43:08', '2022-05-11 00:43:08'),
(109, 4, '2022-05-18 13:32:38', '2022-05-18 13:32:38'),
(110, 4, '2022-05-26 09:55:17', '2022-05-26 09:55:17'),
(111, 4, '2022-06-05 21:41:13', '2022-06-05 21:41:13'),
(112, 4, '2022-06-07 16:17:34', '2022-06-07 16:17:34'),
(113, 4, '2022-06-07 16:18:21', '2022-06-07 16:18:21'),
(114, 4, '2022-06-11 14:07:36', '2022-06-11 14:07:36'),
(115, 4, '2022-06-21 05:34:18', '2022-06-21 05:34:18'),
(116, 4, '2022-06-23 21:03:16', '2022-06-23 21:03:16'),
(117, 4, '2022-07-02 21:48:05', '2022-07-02 21:48:05'),
(118, 4, '2022-07-02 21:49:35', '2022-07-02 21:49:35');

-- --------------------------------------------------------

--
-- Table structure for table `rss_feeds`
--

CREATE TABLE `rss_feeds` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `feed_url` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `language` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` bigint(20) UNSIGNED DEFAULT NULL,
  `sub_category_id` bigint(20) UNSIGNED DEFAULT NULL,
  `post_limit` smallint(6) NOT NULL,
  `auto_update` tinyint(1) NOT NULL DEFAULT 0,
  `show_read_more` tinyint(1) NOT NULL DEFAULT 0,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `keep_date` tinyint(1) NOT NULL DEFAULT 0,
  `meta_keywords` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tags` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scheduled_date` timestamp NULL DEFAULT NULL,
  `layout` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'default',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lang` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT 'en',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `title`, `value`, `lang`, `created_at`, `updated_at`) VALUES
(1, 'facebook_client_id', '813336819462746', 'en', NULL, '2022-10-22 18:29:21'),
(2, 'facebook_client_secretkey', '1127148cc38028e49041f0398d62be5f', 'en', NULL, '2022-10-22 18:29:21'),
(3, 'facebook_visibility', '1', 'en', NULL, '2022-10-22 18:29:21'),
(4, 'facebook_callback_url', 'http://localhost/laravel/newsportal/login/facebook/callback', 'en', NULL, '2022-10-22 18:29:21'),
(5, 'google_client_id', '933979913722-0ltkl07s2b30nrrna0spd4v6en5rmjqc.apps.googleusercontent.com', 'en', NULL, '2022-10-22 18:29:21'),
(6, 'google_client_secretkey', 'KrsXKJSRFaj5rb5uZegkpsrE', 'en', NULL, '2022-10-22 18:29:21'),
(7, 'google_visibility', '1', 'en', NULL, '2022-10-22 18:29:21'),
(8, 'google_callback_url', 'https://demo.newsportal.lab/login/google/callback', 'en', NULL, '2022-10-22 18:29:21'),
(9, 'preloader_option', '0', 'en', NULL, '2022-10-22 18:29:21'),
(10, 'submit_news_status', '1', 'en', NULL, '2022-10-22 18:29:21'),
(11, 'version', '131', 'en', NULL, '2022-10-22 18:29:21'),
(12, 'api_key_for_app', 'Yu%(iz3x8tt@U9!FuppgUJjwYdJI04G5', 'en', NULL, '2022-10-22 18:29:21'),
(13, 'latest_apk_version', '', 'en', NULL, '2022-10-22 18:29:21'),
(14, 'latest_apk_code', '', 'en', NULL, '2022-10-22 18:29:21'),
(15, 'apk_file_url', '', 'en', NULL, '2022-10-22 18:29:21'),
(16, 'whats_new_on_latest_apk', '', 'en', NULL, '2022-10-22 18:29:21'),
(17, 'apk_update_skipable_status', 'false', 'en', NULL, '2022-10-22 18:29:21'),
(18, 'latest_ipa_version', '', 'en', NULL, '2022-10-22 18:29:21'),
(19, 'latest_ipa_code', '', 'en', NULL, '2022-10-22 18:29:21'),
(20, 'ipa_file_url', '', 'en', NULL, '2022-10-22 18:29:21'),
(21, 'whats_new_on_latest_ipa', '', 'en', NULL, '2022-10-22 18:29:21'),
(22, 'ios_update_skipable_status', '', 'en', NULL, '2022-10-22 18:29:21'),
(23, 'mandatory_login', 'false', 'en', NULL, '2022-10-22 18:29:21'),
(24, 'intro_skippable', 'false', 'en', NULL, '2022-10-22 18:29:21'),
(25, 'privacy_policy_url', '', 'en', NULL, '2022-10-22 18:29:21'),
(26, 'terms_n_condition_url', '', 'en', NULL, '2022-10-22 18:29:21'),
(27, 'support_url', '', 'en', NULL, '2022-10-22 18:29:21'),
(28, 'ads_enable', 'false', 'en', NULL, '2022-10-22 18:29:21'),
(29, 'mobile_ads_network', '', 'en', NULL, '2022-10-22 18:29:21'),
(30, 'admob_app_id', '', 'en', NULL, '2022-10-22 18:29:21'),
(31, 'admob_banner_ads_id', '', 'en', NULL, '2022-10-22 18:29:21'),
(32, 'admob_interstitial_ads_id', '', 'en', NULL, '2022-10-22 18:29:21'),
(33, 'admob_native_ads_id', '', 'en', NULL, '2022-10-22 18:29:21'),
(34, 'fan_native_ads_placement_id', '', 'en', NULL, '2022-10-22 18:29:21'),
(35, 'fan_banner_ads_placement_id', '', 'en', NULL, '2022-10-22 18:29:21'),
(36, 'fan_interstitial_ads_placement_id', '', 'en', NULL, '2022-10-22 18:29:21'),
(37, 'startapp_app_id', '', 'en', NULL, '2022-10-22 18:29:21'),
(38, 'default_language', 'en', 'en', '2021-09-04 22:34:39', '2022-10-22 18:29:21'),
(39, 'timezone', 'Asia/Dhaka', 'en', '2021-09-04 22:34:39', '2022-10-22 18:29:21'),
(40, 'application_name', 'ONNO', 'en', '2021-09-04 22:34:39', '2021-09-04 22:34:39'),
(41, 'mail_driver', 'smtp', 'en', '2021-09-04 22:34:39', '2022-10-22 18:29:21'),
(42, 'mail_host', 'smtp.gmail.com', 'en', '2021-09-04 22:34:39', '2022-10-22 18:29:21'),
(43, 'sendmail_path', '/usr/bin/sendmail -bs', 'en', '2021-09-04 22:34:39', '2022-10-22 18:29:21'),
(44, 'mail_port', '465', 'en', '2021-09-04 22:34:39', '2022-10-22 18:29:21'),
(45, 'mail_address', 'ovoocms@gmail.com', 'en', '2021-09-04 22:34:39', '2022-10-22 18:29:21'),
(46, 'mail_name', 'ONNO News and Magazine', 'en', '2021-09-04 22:34:39', '2022-10-22 18:29:21'),
(47, 'mail_username', 'ovoocms@gmail.com', 'en', '2021-09-04 22:34:39', '2022-10-22 18:29:21'),
(48, 'mail_password', 'Bangla@2019', 'en', '2021-09-04 22:34:39', '2022-10-22 18:29:21'),
(49, 'mail_encryption', 'ssl', 'en', '2021-09-04 22:34:39', '2022-10-22 18:29:21'),
(50, 'default_storage', 'local', 'en', '2021-09-04 22:34:39', '2022-10-22 18:29:21'),
(51, 'aws_access_key_id', 'AKIAVYWNX47HQQEHWEQO', 'en', '2021-09-04 22:34:39', '2022-10-22 18:29:21'),
(52, 'aws_secret_access_key', '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', 'en', '2021-09-04 22:34:39', '2022-10-22 18:29:21'),
(53, 'aws_default_region', 'ap-south-1', 'en', '2021-09-04 22:34:39', '2022-10-22 18:29:21'),
(54, 'aws_bucket', 'demo11223', 'en', '2021-09-04 22:34:39', '2022-10-22 18:29:21'),
(55, 'logo', 'images/logo.png', 'en', '2021-09-04 22:34:39', '2022-10-22 18:29:21'),
(56, 'favicon', 'images/favicon.png', 'en', '2021-09-04 22:34:39', '2022-10-22 18:29:21'),
(57, 'onesignal_api_key', 'Yjg2M2Q2ZjItZGQ1Zi00YzM5LWI5MTgtNWYzMzY4YzEwMzdk', 'en', '2021-09-04 22:34:39', '2022-10-22 18:29:21'),
(58, 'onesignal_app_id', '116388f4-7f86-4bb4-8d3a-a112ee25c09c', 'en', '2021-09-04 22:34:39', '2022-10-22 18:29:21'),
(59, 'onesignal_action_message', 'We\'d like to show you notifications for the latest updates.', 'en', '2021-09-04 22:34:39', '2021-09-04 22:34:39'),
(60, 'onesignal_accept_button', 'ALLOW', 'en', '2021-09-04 22:34:39', '2021-09-04 22:34:39'),
(61, 'onesignal_cancel_button', 'NO THANKS', 'en', '2021-09-04 22:34:39', '2021-09-04 22:34:39'),
(62, 'notification_status', '0', 'en', '2021-09-04 22:34:39', '2022-10-22 18:29:21'),
(63, 'seo_title', 'ONNO News and Magazine', 'en', '2021-09-04 22:34:39', '2021-09-04 22:34:39'),
(64, 'seo_keywords', '', 'en', '2021-09-04 22:34:39', '2021-09-04 22:34:39'),
(65, 'seo_meta_description', '', 'en', '2021-09-04 22:34:39', '2021-09-04 22:34:39'),
(66, 'author_name', 'Byterays', 'en', '2021-09-04 22:34:39', '2021-09-04 22:34:39'),
(67, 'og_title', 'Your Website Title', 'en', '2021-09-04 22:34:39', '2021-09-04 22:34:39'),
(68, 'og_description', '', 'en', '2021-09-04 22:34:39', '2021-09-04 22:34:39'),
(69, 'og_image', 'images/20201018123322_og_image_49.png', 'en', '2021-09-04 22:34:39', '2022-10-22 18:29:21'),
(70, 'google_analytics_id', 'UA-xxxxxxxx-1', 'en', '2021-09-04 22:34:39', '2022-10-22 18:29:21'),
(71, 'page_detail_prefix', 'page', 'en', '2021-09-04 22:34:39', '2022-10-22 18:29:21'),
(72, 'article_detail_prefix', 'story', 'en', '2021-09-04 22:34:39', '2022-10-22 18:29:21'),
(73, 'url', 'http://127.0.0.1:8000', 'en', '2021-09-04 22:34:39', '2022-10-22 18:29:21'),
(74, 'address', 'khilkhet', 'en', '2021-09-04 22:34:39', '2021-09-04 22:34:39'),
(75, 'email', 'info@bytreays.com', 'en', '2021-09-04 22:34:39', '2022-10-22 18:29:21'),
(76, 'phone', '01400620055', 'en', '2021-09-04 22:34:39', '2021-09-04 22:34:39'),
(77, 'zip_code', '1207', 'en', '2021-09-04 22:34:39', '2021-09-04 22:34:39'),
(78, 'city', 'Dhaka', 'en', '2021-09-04 22:34:39', '2021-09-04 22:34:39'),
(79, 'state', 'Dhaka', 'en', '2021-09-04 22:34:39', '2021-09-04 22:34:39'),
(80, 'country', 'Country', 'en', '2021-09-04 22:34:39', '2021-09-04 22:34:39'),
(81, 'website', 'byterays.com', 'en', '2021-09-04 22:34:39', '2021-09-04 22:34:39'),
(82, 'company_registration', '123456789', 'en', '2021-09-04 22:34:39', '2021-09-04 22:34:39'),
(83, 'tax_number', '123456789', 'en', '2021-09-04 22:34:39', '2021-09-04 22:34:39'),
(84, 'about_us_description', 'Mock Turtle persisted. \'How COULD he turn them out of sight, they were getting extremely small for a little recovered from the roof. There were doors all round her at the mushroom for a long way. So they got their tails in their paws. \'And how do you know about it, even if my head would go round.', 'en', '2021-09-04 22:34:39', '2021-09-04 22:34:39'),
(85, 'captcha_secret', '6LdttdYZAAAAAMSCPpKUW1rxlLjbkL6fyceDUGSm', 'en', '2021-09-04 22:34:39', '2022-10-22 18:29:21'),
(86, 'captcha_sitekey', '6LdttdYZAAAAADzhva8gaxrwpyOGAgdlhm8VZbil', 'en', '2021-09-04 22:34:39', '2022-10-22 18:29:21'),
(87, 'captcha_visibility', '', 'en', '2021-09-04 22:34:39', '2022-10-22 18:29:21'),
(88, 'copyright_text', 'Copyright © 2020 ONNO News and Magazine - All Rights Reserved.', 'en', '2021-09-04 22:34:39', '2021-09-04 22:34:39'),
(89, 'signature', 'Best Regards', 'en', '2021-09-04 22:34:39', '2021-09-04 22:34:39'),
(90, 'addthis_public_id', 'PHNjcmlwdCB0eXBlPSJ0ZXh0L2phdmFzY3JpcHQiIHNyYz0iLy9zNy5hZGR0aGlzLmNvbS9qcy8zMDAvYWRkdGhpc193aWRnZXQuanMjcHViaWQ9cmEtNWY4YmU4NGQ1NGQxZjRmYyI+PC9zY3JpcHQ+', 'en', '2021-09-04 22:34:39', '2022-10-22 18:29:21'),
(91, 'addthis_toolbox', 'PGRpdiBjbGFzcz0iYWRkdGhpc19pbmxpbmVfc2hhcmVfdG9vbGJveCI+PC9kaXY+', 'en', '2021-09-04 22:34:39', '2022-10-22 18:29:21'),
(92, 'adthis_option', '1', 'en', '2021-09-04 22:34:39', '2022-10-22 18:29:21'),
(93, 'inbuild_comment', '1', 'en', '2021-09-04 22:34:39', '2022-10-22 18:29:21'),
(94, 'disqus_comment', '0', 'en', '2021-09-04 22:34:39', '2022-10-22 18:29:21'),
(95, 'disqus_short_name', 'onno', 'en', '2021-09-04 22:34:39', '2022-10-22 18:29:21'),
(96, 'facebook_comment', '1', 'en', '2021-09-04 22:34:39', '2022-10-22 18:29:21'),
(97, 'facebook_app_id', '326170828658639', 'en', '2021-09-04 22:34:39', '2022-10-22 18:29:21'),
(98, 'predefined_header', NULL, 'en', '2021-09-04 22:34:39', '2022-10-22 18:29:21'),
(99, 'custom_header_style', NULL, 'en', '2021-09-04 22:34:39', '2022-10-22 18:29:21'),
(100, 'custom_footer_js', NULL, 'en', '2021-09-04 22:34:39', '2022-10-22 18:29:21'),
(101, 'ffmpeg_status', '1', 'en', '2021-09-04 22:34:39', '2022-10-22 18:29:21'),
(111, 'tax_number', '123456789', 'en', '2021-09-04 22:34:39', '2021-09-04 22:34:39'),
(120, 'status', NULL, 'en', '2021-09-29 12:18:29', '2022-10-22 18:29:21');

-- --------------------------------------------------------

--
-- Table structure for table `social_media`
--

CREATE TABLE `social_media` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon_bg_color` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `text_bg_color` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `social_media`
--

INSERT INTO `social_media` (`id`, `name`, `url`, `icon_bg_color`, `text_bg_color`, `icon`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Facebook', '#', '#0061C2', '#056ED8', 'fa fa-facebook', 1, '2021-09-05 08:34:31', '2021-09-05 08:34:31'),
(2, 'Youtube', '#', '#FE031C', '#E50017', 'fa fa-youtube-play', 1, '2021-09-05 08:34:31', '2021-09-05 08:34:31'),
(3, 'Twitter', '#', '#2391FF', '#349AFF', 'fa fa-twitter', 1, '2021-09-05 08:34:31', '2021-09-05 08:34:31'),
(4, 'Linkedin', '#', '#349AFF', '#349affd9', 'fa fa-linkedin', 1, '2021-09-05 08:34:31', '2021-09-05 08:34:31'),
(5, 'Skype', '#', '#4ba3fcd9', '#4BA3FC', 'fa fa-skype', 1, '2021-09-05 08:34:31', '2021-09-05 08:34:31'),
(6, 'Pinterest', '#', '#C2000D', '#c2000dd9', 'fa fa-pinterest-square', 1, '2021-09-05 08:34:31', '2021-09-05 08:34:31');

-- --------------------------------------------------------

--
-- Table structure for table `sub_categories`
--

CREATE TABLE `sub_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `sub_category_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `language` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_keywords` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sub_categories`
--

INSERT INTO `sub_categories` (`id`, `sub_category_name`, `slug`, `category_id`, `language`, `meta_description`, `meta_keywords`, `created_at`, `updated_at`) VALUES
(1, 'Bangladesh', 'politics', 1, 'en', NULL, NULL, '2021-09-04 22:34:39', '2021-09-04 22:34:39'),
(2, 'Computer Science', 'computer-science', 2, 'en', NULL, NULL, '2021-09-04 22:34:39', '2021-09-04 22:34:39'),
(3, 'Life Style', 'life-style', 3, 'en', NULL, NULL, '2021-09-04 22:34:39', '2021-09-04 22:34:39'),
(4, 'Nasa', 'nasa', 4, 'en', NULL, NULL, '2021-09-04 22:34:39', '2021-09-04 22:34:39'),
(5, 'Wired', 'wired', 4, 'en', NULL, NULL, '2021-09-04 22:34:39', '2021-09-04 22:34:39'),
(6, 'ABC News', 'abc-news', 4, 'en', NULL, NULL, '2021-09-04 22:34:39', '2021-09-04 22:34:39');

-- --------------------------------------------------------

--
-- Table structure for table `tags`
--

CREATE TABLE `tags` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_hit` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tags`
--

INSERT INTO `tags` (`id`, `title`, `total_hit`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Sports', 10, 1, '2021-09-04 22:34:39', '2021-09-04 22:34:39'),
(2, 'Football', 12, 1, '2021-09-04 22:34:39', '2021-09-04 22:34:39'),
(3, 'Cricket', 10, 1, '2021-09-04 22:34:39', '2021-09-04 22:34:39'),
(4, 'Education', 10, 1, '2021-09-04 22:34:39', '2021-09-04 22:34:39'),
(5, 'Business', 10, 1, '2021-09-04 22:34:39', '2021-09-04 22:34:39'),
(6, 'Technology', 10, 1, '2021-09-04 22:34:39', '2021-09-04 22:34:39'),
(7, 'Science', 10, 1, '2021-09-04 22:34:39', '2021-09-04 22:34:39'),
(8, 'Bangladesh', 2, 1, '2021-09-04 22:34:39', '2021-09-04 22:34:39'),
(9, 'World Cup', 10, 1, '2021-09-04 22:34:39', '2021-09-04 22:34:39'),
(10, 'Politics', 6, 1, '2021-09-04 22:34:39', '2021-09-04 22:34:39'),
(11, 'Computer', 2, 1, '2021-09-04 22:34:39', '2021-09-04 22:34:39'),
(12, 'Apple', 3, 1, '2021-09-04 22:34:39', '2021-09-04 22:34:39'),
(13, 'Microsoft', 3, 1, '2021-09-04 22:34:39', '2021-09-04 22:34:39'),
(14, 'Google', 4, 1, '2021-09-04 22:34:39', '2021-09-04 22:34:39'),
(15, 'Travel', 10, 1, '2021-09-04 22:34:39', '2021-09-04 22:34:39'),
(16, 'Virus', 10, 1, '2021-09-04 22:34:39', '2021-09-04 22:34:39'),
(17, 'Culture', 10, 1, '2021-09-04 22:34:39', '2021-09-04 22:34:39'),
(18, 'Culture', 10, 1, '2021-09-04 22:34:39', '2021-09-04 22:34:39'),
(19, 'Health', 10, 1, '2021-09-04 22:34:39', '2021-09-04 22:34:39'),
(20, 'Tree', 5, 1, '2021-09-04 22:34:39', '2021-09-04 22:34:39'),
(21, 'Environment', 8, 1, '2021-09-04 22:34:39', '2021-09-04 22:34:39'),
(22, 'Pollution', 6, 1, '2021-09-04 22:34:39', '2021-09-04 22:34:39');

-- --------------------------------------------------------

--
-- Table structure for table `themes`
--

CREATE TABLE `themes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `options` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 2 COMMENT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `themes`
--

INSERT INTO `themes` (`id`, `name`, `slug`, `options`, `status`, `created_at`, `updated_at`) VALUES
(1, 'theme_one', NULL, '{\"header_style\":\"header_1\",\"footer_style\":\"footer_1\",\"primary_color\":\"#000000\",\"fonts\":\"Noto+Sans+JP\",\"mode\":\"\"}', 1, '2021-09-04 22:34:40', '2021-09-08 09:44:18');

-- --------------------------------------------------------

--
-- Table structure for table `theme_sections`
--

CREATE TABLE `theme_sections` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `theme_id` bigint(20) NOT NULL,
  `type` tinyint(4) NOT NULL DEFAULT 0,
  `label` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int(11) NOT NULL DEFAULT 0,
  `category_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ad_id` bigint(20) UNSIGNED DEFAULT NULL,
  `post_amount` bigint(20) UNSIGNED DEFAULT NULL,
  `section_style` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_primary` tinyint(4) NOT NULL DEFAULT 0,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `language` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `theme_sections`
--

INSERT INTO `theme_sections` (`id`, `theme_id`, `type`, `label`, `order`, `category_id`, `ad_id`, `post_amount`, `section_style`, `is_primary`, `status`, `language`, `created_at`, `updated_at`) VALUES
(1, 1, 0, 'Primary Section', 1, NULL, NULL, 1, 'style_1', 1, 1, NULL, '2021-09-04 22:34:40', '2021-09-04 22:34:40'),
(2, 1, 1, 'World', 1, 1, NULL, NULL, 'style_1', 0, 1, 'en', '2021-09-04 22:34:40', '2021-09-04 22:34:40'),
(3, 1, 1, 'Science', 2, 2, 1, NULL, 'style_2', 0, 1, 'en', '2021-09-04 22:34:40', '2021-09-04 22:34:40'),
(4, 1, 1, 'RSS News', 3, 4, 1, NULL, 'style_3', 0, 1, 'en', '2021-09-04 22:34:40', '2021-09-04 22:34:40'),
(5, 1, 1, 'Life Style', 4, 3, 1, NULL, 'style_4', 0, 1, 'en', '2021-09-04 22:34:40', '2021-09-04 22:34:40'),
(6, 1, 2, 'videos', 5, NULL, NULL, NULL, 'style_1', 0, 1, NULL, '2021-09-04 22:34:40', '2021-09-04 22:34:40'),
(7, 1, 3, 'latest_post', 6, NULL, NULL, NULL, NULL, 0, 1, NULL, '2021-09-04 22:34:40', '2021-09-04 22:34:40');

-- --------------------------------------------------------

--
-- Table structure for table `throttle`
--

CREATE TABLE `throttle` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ip` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `throttle`
--

INSERT INTO `throttle` (`id`, `user_id`, `type`, `ip`, `created_at`, `updated_at`) VALUES
(1, NULL, 'global', NULL, '2021-10-09 13:44:11', '2021-10-09 13:44:11'),
(2, NULL, 'ip', '77.4.27.31', '2021-10-09 13:44:11', '2021-10-09 13:44:11'),
(3, NULL, 'global', NULL, '2021-10-11 18:33:45', '2021-10-11 18:33:45'),
(4, NULL, 'ip', '117.222.162.48', '2021-10-11 18:33:45', '2021-10-11 18:33:45'),
(5, NULL, 'global', NULL, '2021-10-15 02:01:09', '2021-10-15 02:01:09'),
(6, NULL, 'ip', '94.25.168.141', '2021-10-15 02:01:09', '2021-10-15 02:01:09'),
(7, NULL, 'global', NULL, '2021-10-23 04:49:11', '2021-10-23 04:49:11'),
(8, NULL, 'ip', '119.148.38.246', '2021-10-23 04:49:11', '2021-10-23 04:49:11'),
(9, NULL, 'global', NULL, '2021-10-25 10:44:00', '2021-10-25 10:44:00'),
(10, NULL, 'ip', '47.11.97.89', '2021-10-25 10:44:00', '2021-10-25 10:44:00'),
(11, NULL, 'global', NULL, '2021-10-25 10:44:01', '2021-10-25 10:44:01'),
(12, NULL, 'ip', '47.11.97.89', '2021-10-25 10:44:01', '2021-10-25 10:44:01'),
(13, NULL, 'global', NULL, '2021-10-25 21:00:47', '2021-10-25 21:00:47'),
(14, NULL, 'ip', '157.45.43.176', '2021-10-25 21:00:47', '2021-10-25 21:00:47'),
(15, NULL, 'global', NULL, '2021-10-25 22:33:45', '2021-10-25 22:33:45'),
(16, NULL, 'ip', '47.247.219.13', '2021-10-25 22:33:45', '2021-10-25 22:33:45'),
(17, NULL, 'global', NULL, '2021-10-27 17:59:01', '2021-10-27 17:59:01'),
(18, NULL, 'ip', '197.157.211.190', '2021-10-27 17:59:01', '2021-10-27 17:59:01'),
(19, NULL, 'global', NULL, '2021-10-28 00:34:22', '2021-10-28 00:34:22'),
(20, NULL, 'ip', '186.251.108.24', '2021-10-28 00:34:22', '2021-10-28 00:34:22'),
(21, NULL, 'global', NULL, '2021-10-30 13:57:52', '2021-10-30 13:57:52'),
(22, NULL, 'ip', '49.34.47.167', '2021-10-30 13:57:52', '2021-10-30 13:57:52'),
(23, NULL, 'global', NULL, '2021-10-30 14:11:06', '2021-10-30 14:11:06'),
(24, NULL, 'ip', '150.129.104.110', '2021-10-30 14:11:06', '2021-10-30 14:11:06'),
(25, NULL, 'global', NULL, '2021-11-02 09:11:08', '2021-11-02 09:11:08'),
(26, NULL, 'ip', '157.34.138.47', '2021-11-02 09:11:08', '2021-11-02 09:11:08'),
(27, NULL, 'global', NULL, '2021-11-03 07:55:29', '2021-11-03 07:55:29'),
(28, NULL, 'ip', '157.45.55.33', '2021-11-03 07:55:29', '2021-11-03 07:55:29'),
(29, NULL, 'global', NULL, '2021-11-07 00:13:25', '2021-11-07 00:13:25'),
(30, NULL, 'ip', '49.33.200.239', '2021-11-07 00:13:25', '2021-11-07 00:13:25'),
(31, NULL, 'global', NULL, '2021-11-08 04:24:51', '2021-11-08 04:24:51'),
(32, NULL, 'ip', '156.217.152.20', '2021-11-08 04:24:51', '2021-11-08 04:24:51'),
(33, NULL, 'global', NULL, '2021-11-10 15:26:50', '2021-11-10 15:26:50'),
(34, NULL, 'ip', '103.251.245.251', '2021-11-10 15:26:50', '2021-11-10 15:26:50'),
(35, 23, 'user', NULL, '2021-11-10 15:26:50', '2021-11-10 15:26:50'),
(36, NULL, 'global', NULL, '2021-11-10 15:30:37', '2021-11-10 15:30:37'),
(37, NULL, 'ip', '103.251.245.251', '2021-11-10 15:30:37', '2021-11-10 15:30:37'),
(38, 23, 'user', NULL, '2021-11-10 15:30:37', '2021-11-10 15:30:37'),
(39, NULL, 'global', NULL, '2021-11-13 12:28:26', '2021-11-13 12:28:26'),
(40, NULL, 'ip', '103.251.245.251', '2021-11-13 12:28:26', '2021-11-13 12:28:26'),
(41, NULL, 'global', NULL, '2021-11-13 17:02:08', '2021-11-13 17:02:08'),
(42, NULL, 'ip', '103.251.245.251', '2021-11-13 17:02:08', '2021-11-13 17:02:08'),
(43, NULL, 'global', NULL, '2021-11-13 17:02:42', '2021-11-13 17:02:42'),
(44, NULL, 'ip', '103.251.245.251', '2021-11-13 17:02:42', '2021-11-13 17:02:42'),
(45, NULL, 'global', NULL, '2021-11-13 17:02:53', '2021-11-13 17:02:53'),
(46, NULL, 'ip', '103.251.245.251', '2021-11-13 17:02:54', '2021-11-13 17:02:54'),
(47, NULL, 'global', NULL, '2021-11-13 17:02:56', '2021-11-13 17:02:56'),
(48, NULL, 'ip', '103.251.245.251', '2021-11-13 17:02:56', '2021-11-13 17:02:56'),
(49, NULL, 'global', NULL, '2021-11-13 17:05:43', '2021-11-13 17:05:43'),
(50, NULL, 'ip', '103.251.245.251', '2021-11-13 17:05:43', '2021-11-13 17:05:43'),
(51, NULL, 'global', NULL, '2021-11-13 17:37:25', '2021-11-13 17:37:25'),
(52, NULL, 'ip', '103.251.245.251', '2021-11-13 17:37:25', '2021-11-13 17:37:25'),
(53, NULL, 'global', NULL, '2021-11-13 17:37:25', '2021-11-13 17:37:25'),
(54, NULL, 'ip', '103.251.245.251', '2021-11-13 17:37:25', '2021-11-13 17:37:25'),
(55, NULL, 'global', NULL, '2021-11-13 18:03:24', '2021-11-13 18:03:24'),
(56, NULL, 'ip', '103.251.245.251', '2021-11-13 18:03:24', '2021-11-13 18:03:24'),
(57, 23, 'user', NULL, '2021-11-13 18:03:24', '2021-11-13 18:03:24'),
(58, NULL, 'global', NULL, '2021-11-13 18:03:44', '2021-11-13 18:03:44'),
(59, NULL, 'ip', '103.251.245.251', '2021-11-13 18:03:44', '2021-11-13 18:03:44'),
(60, 23, 'user', NULL, '2021-11-13 18:03:44', '2021-11-13 18:03:44'),
(61, NULL, 'global', NULL, '2021-11-13 18:04:32', '2021-11-13 18:04:32'),
(62, NULL, 'ip', '103.251.245.251', '2021-11-13 18:04:32', '2021-11-13 18:04:32'),
(63, 23, 'user', NULL, '2021-11-13 18:04:32', '2021-11-13 18:04:32'),
(64, NULL, 'global', NULL, '2021-11-13 18:05:24', '2021-11-13 18:05:24'),
(65, NULL, 'ip', '103.251.245.251', '2021-11-13 18:05:24', '2021-11-13 18:05:24'),
(66, 23, 'user', NULL, '2021-11-13 18:05:24', '2021-11-13 18:05:24'),
(67, NULL, 'global', NULL, '2021-11-13 18:09:29', '2021-11-13 18:09:29'),
(68, NULL, 'ip', '103.251.245.251', '2021-11-13 18:09:29', '2021-11-13 18:09:29'),
(69, 23, 'user', NULL, '2021-11-13 18:09:29', '2021-11-13 18:09:29'),
(70, NULL, 'global', NULL, '2021-11-14 09:17:02', '2021-11-14 09:17:02'),
(71, NULL, 'ip', '103.251.245.251', '2021-11-14 09:17:02', '2021-11-14 09:17:02'),
(72, NULL, 'global', NULL, '2021-11-14 10:54:34', '2021-11-14 10:54:34'),
(73, NULL, 'ip', '103.251.245.251', '2021-11-14 10:54:34', '2021-11-14 10:54:34'),
(74, 23, 'user', NULL, '2021-11-14 10:54:34', '2021-11-14 10:54:34'),
(75, NULL, 'global', NULL, '2021-11-14 10:56:23', '2021-11-14 10:56:23'),
(76, NULL, 'ip', '103.251.245.251', '2021-11-14 10:56:23', '2021-11-14 10:56:23'),
(77, 23, 'user', NULL, '2021-11-14 10:56:23', '2021-11-14 10:56:23'),
(78, NULL, 'global', NULL, '2021-11-14 14:28:28', '2021-11-14 14:28:28'),
(79, NULL, 'ip', '103.251.245.251', '2021-11-14 14:28:28', '2021-11-14 14:28:28'),
(80, 23, 'user', NULL, '2021-11-14 14:28:28', '2021-11-14 14:28:28'),
(81, NULL, 'global', NULL, '2021-11-14 14:28:35', '2021-11-14 14:28:35'),
(82, NULL, 'ip', '103.251.245.251', '2021-11-14 14:28:35', '2021-11-14 14:28:35'),
(83, 23, 'user', NULL, '2021-11-14 14:28:35', '2021-11-14 14:28:35'),
(84, NULL, 'global', NULL, '2021-11-14 14:29:53', '2021-11-14 14:29:53'),
(85, NULL, 'ip', '103.251.245.251', '2021-11-14 14:29:53', '2021-11-14 14:29:53'),
(86, NULL, 'global', NULL, '2021-11-25 17:52:02', '2021-11-25 17:52:02'),
(87, NULL, 'ip', '41.66.228.222', '2021-11-25 17:52:02', '2021-11-25 17:52:02'),
(88, NULL, 'global', NULL, '2021-12-06 19:40:58', '2021-12-06 19:40:58'),
(89, NULL, 'ip', '170.150.146.215', '2021-12-06 19:40:58', '2021-12-06 19:40:58'),
(90, NULL, 'global', NULL, '2021-12-07 12:23:47', '2021-12-07 12:23:47'),
(91, NULL, 'ip', '193.106.49.89', '2021-12-07 12:23:47', '2021-12-07 12:23:47'),
(92, NULL, 'global', NULL, '2021-12-07 12:23:48', '2021-12-07 12:23:48'),
(93, NULL, 'ip', '193.106.49.89', '2021-12-07 12:23:48', '2021-12-07 12:23:48'),
(94, NULL, 'global', NULL, '2021-12-07 13:25:32', '2021-12-07 13:25:32'),
(95, NULL, 'ip', '1.55.167.216', '2021-12-07 13:25:32', '2021-12-07 13:25:32'),
(96, NULL, 'global', NULL, '2021-12-08 12:48:57', '2021-12-08 12:48:57'),
(97, NULL, 'ip', '112.134.129.156', '2021-12-08 12:48:57', '2021-12-08 12:48:57'),
(98, NULL, 'global', NULL, '2021-12-10 13:27:56', '2021-12-10 13:27:56'),
(99, NULL, 'ip', '112.134.131.122', '2021-12-10 13:27:56', '2021-12-10 13:27:56'),
(100, NULL, 'global', NULL, '2021-12-10 13:31:41', '2021-12-10 13:31:41'),
(101, NULL, 'ip', '112.134.131.122', '2021-12-10 13:31:41', '2021-12-10 13:31:41'),
(102, NULL, 'global', NULL, '2021-12-10 13:32:20', '2021-12-10 13:32:20'),
(103, NULL, 'ip', '112.134.131.122', '2021-12-10 13:32:20', '2021-12-10 13:32:20'),
(104, NULL, 'global', NULL, '2021-12-11 02:29:46', '2021-12-11 02:29:46'),
(105, NULL, 'ip', '112.134.130.134', '2021-12-11 02:29:46', '2021-12-11 02:29:46'),
(106, NULL, 'global', NULL, '2021-12-17 06:44:37', '2021-12-17 06:44:37'),
(107, NULL, 'ip', '223.39.242.56', '2021-12-17 06:44:37', '2021-12-17 06:44:37'),
(108, NULL, 'global', NULL, '2021-12-20 17:05:53', '2021-12-20 17:05:53'),
(109, NULL, 'ip', '157.37.132.23', '2021-12-20 17:05:53', '2021-12-20 17:05:53'),
(110, NULL, 'global', NULL, '2021-12-22 12:15:40', '2021-12-22 12:15:40'),
(111, NULL, 'ip', '103.217.234.94', '2021-12-22 12:15:40', '2021-12-22 12:15:40'),
(112, NULL, 'global', NULL, '2021-12-25 18:32:18', '2021-12-25 18:32:18'),
(113, NULL, 'ip', '188.71.238.246', '2021-12-25 18:32:18', '2021-12-25 18:32:18'),
(114, NULL, 'global', NULL, '2021-12-29 11:39:03', '2021-12-29 11:39:03'),
(115, NULL, 'ip', '197.200.74.93', '2021-12-29 11:39:03', '2021-12-29 11:39:03'),
(116, NULL, 'global', NULL, '2021-12-29 11:39:34', '2021-12-29 11:39:34'),
(117, NULL, 'ip', '197.200.74.93', '2021-12-29 11:39:34', '2021-12-29 11:39:34'),
(118, NULL, 'global', NULL, '2021-12-29 11:39:35', '2021-12-29 11:39:35'),
(119, NULL, 'ip', '197.200.74.93', '2021-12-29 11:39:35', '2021-12-29 11:39:35'),
(120, NULL, 'global', NULL, '2021-12-30 13:32:23', '2021-12-30 13:32:23'),
(121, NULL, 'ip', '103.219.206.19', '2021-12-30 13:32:23', '2021-12-30 13:32:23'),
(122, NULL, 'global', NULL, '2022-01-02 08:11:21', '2022-01-02 08:11:21'),
(123, NULL, 'ip', '210.23.88.100', '2022-01-02 08:11:21', '2022-01-02 08:11:21'),
(124, NULL, 'global', NULL, '2022-01-02 08:13:41', '2022-01-02 08:13:41'),
(125, NULL, 'ip', '210.23.88.100', '2022-01-02 08:13:41', '2022-01-02 08:13:41'),
(126, NULL, 'global', NULL, '2022-01-13 03:57:32', '2022-01-13 03:57:32'),
(127, NULL, 'ip', '82.66.87.231', '2022-01-13 03:57:32', '2022-01-13 03:57:32'),
(128, NULL, 'global', NULL, '2022-01-14 21:27:23', '2022-01-14 21:27:23'),
(129, NULL, 'ip', '101.100.179.4', '2022-01-14 21:27:23', '2022-01-14 21:27:23'),
(130, NULL, 'global', NULL, '2022-01-21 20:10:13', '2022-01-21 20:10:13'),
(131, NULL, 'ip', '49.206.119.159', '2022-01-21 20:10:13', '2022-01-21 20:10:13'),
(132, NULL, 'global', NULL, '2022-01-24 04:57:09', '2022-01-24 04:57:09'),
(133, NULL, 'ip', '27.6.149.200', '2022-01-24 04:57:09', '2022-01-24 04:57:09'),
(134, NULL, 'global', NULL, '2022-01-24 23:02:56', '2022-01-24 23:02:56'),
(135, NULL, 'ip', '157.48.129.109', '2022-01-24 23:02:56', '2022-01-24 23:02:56'),
(136, NULL, 'global', NULL, '2022-01-24 23:03:26', '2022-01-24 23:03:26'),
(137, NULL, 'ip', '157.48.129.109', '2022-01-24 23:03:26', '2022-01-24 23:03:26'),
(138, NULL, 'global', NULL, '2022-01-26 02:13:30', '2022-01-26 02:13:30'),
(139, NULL, 'ip', '119.40.97.198', '2022-01-26 02:13:30', '2022-01-26 02:13:30'),
(140, NULL, 'global', NULL, '2022-01-26 03:49:06', '2022-01-26 03:49:06'),
(141, NULL, 'ip', '49.37.191.150', '2022-01-26 03:49:06', '2022-01-26 03:49:06'),
(142, NULL, 'global', NULL, '2022-01-26 16:18:27', '2022-01-26 16:18:27'),
(143, NULL, 'ip', '1.225.35.100', '2022-01-26 16:18:27', '2022-01-26 16:18:27'),
(144, NULL, 'global', NULL, '2022-01-28 04:57:01', '2022-01-28 04:57:01'),
(145, NULL, 'ip', '78.173.17.22', '2022-01-28 04:57:01', '2022-01-28 04:57:01'),
(146, NULL, 'global', NULL, '2022-01-28 10:18:36', '2022-01-28 10:18:36'),
(147, NULL, 'ip', '106.211.230.245', '2022-01-28 10:18:36', '2022-01-28 10:18:36'),
(148, NULL, 'global', NULL, '2022-01-29 21:10:13', '2022-01-29 21:10:13'),
(149, NULL, 'ip', '41.182.36.143', '2022-01-29 21:10:13', '2022-01-29 21:10:13'),
(150, NULL, 'global', NULL, '2022-02-07 12:47:23', '2022-02-07 12:47:23'),
(151, NULL, 'ip', '157.48.80.237', '2022-02-07 12:47:23', '2022-02-07 12:47:23'),
(152, NULL, 'global', NULL, '2022-02-09 00:50:33', '2022-02-09 00:50:33'),
(153, NULL, 'ip', '103.36.82.82', '2022-02-09 00:50:33', '2022-02-09 00:50:33'),
(154, 6, 'user', NULL, '2022-02-09 00:50:34', '2022-02-09 00:50:34'),
(155, NULL, 'global', NULL, '2022-02-09 00:50:40', '2022-02-09 00:50:40'),
(156, NULL, 'ip', '103.36.82.82', '2022-02-09 00:50:40', '2022-02-09 00:50:40'),
(157, 6, 'user', NULL, '2022-02-09 00:50:40', '2022-02-09 00:50:40'),
(158, NULL, 'global', NULL, '2022-02-13 21:15:32', '2022-02-13 21:15:32'),
(159, NULL, 'ip', '41.140.77.236', '2022-02-13 21:15:32', '2022-02-13 21:15:32'),
(160, NULL, 'global', NULL, '2022-02-20 17:52:11', '2022-02-20 17:52:11'),
(161, NULL, 'ip', '103.87.12.80', '2022-02-20 17:52:11', '2022-02-20 17:52:11'),
(162, NULL, 'global', NULL, '2022-02-28 16:59:30', '2022-02-28 16:59:30'),
(163, NULL, 'ip', '79.201.42.107', '2022-02-28 16:59:30', '2022-02-28 16:59:30'),
(164, NULL, 'global', NULL, '2022-03-07 11:43:22', '2022-03-07 11:43:22'),
(165, NULL, 'ip', '106.195.13.35', '2022-03-07 11:43:22', '2022-03-07 11:43:22'),
(166, NULL, 'global', NULL, '2022-03-08 17:24:53', '2022-03-08 17:24:53'),
(167, NULL, 'ip', '110.227.22.200', '2022-03-08 17:24:53', '2022-03-08 17:24:53'),
(168, NULL, 'global', NULL, '2022-03-09 15:56:15', '2022-03-09 15:56:15'),
(169, NULL, 'ip', '160.238.92.233', '2022-03-09 15:56:15', '2022-03-09 15:56:15'),
(170, NULL, 'global', NULL, '2022-03-10 00:00:47', '2022-03-10 00:00:47'),
(171, NULL, 'ip', '5.77.77.27', '2022-03-10 00:00:47', '2022-03-10 00:00:47'),
(172, NULL, 'global', NULL, '2022-03-11 15:08:52', '2022-03-11 15:08:52'),
(173, NULL, 'ip', '196.216.200.60', '2022-03-11 15:08:52', '2022-03-11 15:08:52'),
(174, 1, 'user', NULL, '2022-03-11 15:08:52', '2022-03-11 15:08:52'),
(175, NULL, 'global', NULL, '2022-03-11 22:48:05', '2022-03-11 22:48:05'),
(176, NULL, 'ip', '176.190.194.121', '2022-03-11 22:48:05', '2022-03-11 22:48:05'),
(177, NULL, 'global', NULL, '2022-03-13 01:06:16', '2022-03-13 01:06:16'),
(178, NULL, 'ip', '103.151.236.50', '2022-03-13 01:06:16', '2022-03-13 01:06:16'),
(179, NULL, 'global', NULL, '2022-03-16 13:20:10', '2022-03-16 13:20:10'),
(180, NULL, 'ip', '103.151.189.148', '2022-03-16 13:20:10', '2022-03-16 13:20:10'),
(181, NULL, 'global', NULL, '2022-03-17 01:00:58', '2022-03-17 01:00:58'),
(182, NULL, 'ip', '47.31.229.171', '2022-03-17 01:00:58', '2022-03-17 01:00:58'),
(183, NULL, 'global', NULL, '2022-03-21 12:14:02', '2022-03-21 12:14:02'),
(184, NULL, 'ip', '37.99.44.203', '2022-03-21 12:14:02', '2022-03-21 12:14:02'),
(185, NULL, 'global', NULL, '2022-03-21 12:14:03', '2022-03-21 12:14:03'),
(186, NULL, 'ip', '37.99.44.203', '2022-03-21 12:14:03', '2022-03-21 12:14:03'),
(187, NULL, 'global', NULL, '2022-03-21 18:15:54', '2022-03-21 18:15:54'),
(188, NULL, 'ip', '103.42.125.192', '2022-03-21 18:15:54', '2022-03-21 18:15:54'),
(189, NULL, 'global', NULL, '2022-03-28 01:34:06', '2022-03-28 01:34:06'),
(190, NULL, 'ip', '37.111.232.148', '2022-03-28 01:34:06', '2022-03-28 01:34:06'),
(191, NULL, 'global', NULL, '2022-03-31 02:52:05', '2022-03-31 02:52:05'),
(192, NULL, 'ip', '103.76.241.218', '2022-03-31 02:52:05', '2022-03-31 02:52:05'),
(193, NULL, 'global', NULL, '2022-03-31 09:07:48', '2022-03-31 09:07:48'),
(194, NULL, 'ip', '223.185.88.15', '2022-03-31 09:07:48', '2022-03-31 09:07:48'),
(195, NULL, 'global', NULL, '2022-03-31 20:43:51', '2022-03-31 20:43:51'),
(196, NULL, 'ip', '210.139.253.37', '2022-03-31 20:43:51', '2022-03-31 20:43:51'),
(197, NULL, 'global', NULL, '2022-04-02 15:07:11', '2022-04-02 15:07:11'),
(198, NULL, 'ip', '197.232.51.246', '2022-04-02 15:07:11', '2022-04-02 15:07:11'),
(199, NULL, 'global', NULL, '2022-04-03 08:19:30', '2022-04-03 08:19:30'),
(200, NULL, 'ip', '180.60.164.5', '2022-04-03 08:19:30', '2022-04-03 08:19:30'),
(201, NULL, 'global', NULL, '2022-04-09 01:04:13', '2022-04-09 01:04:13'),
(202, NULL, 'ip', '105.163.34.249', '2022-04-09 01:04:13', '2022-04-09 01:04:13'),
(203, NULL, 'global', NULL, '2022-04-09 02:37:40', '2022-04-09 02:37:40'),
(204, NULL, 'ip', '102.109.120.229', '2022-04-09 02:37:41', '2022-04-09 02:37:41'),
(205, NULL, 'global', NULL, '2022-04-09 18:52:14', '2022-04-09 18:52:14'),
(206, NULL, 'ip', '197.210.28.44', '2022-04-09 18:52:14', '2022-04-09 18:52:14'),
(207, NULL, 'global', NULL, '2022-04-11 20:23:25', '2022-04-11 20:23:25'),
(208, NULL, 'ip', '27.59.161.42', '2022-04-11 20:23:25', '2022-04-11 20:23:25'),
(209, NULL, 'global', NULL, '2022-04-13 20:10:29', '2022-04-13 20:10:29'),
(210, NULL, 'ip', '2.247.242.22', '2022-04-13 20:10:29', '2022-04-13 20:10:29'),
(211, NULL, 'global', NULL, '2022-04-16 22:02:10', '2022-04-16 22:02:10'),
(212, NULL, 'ip', '197.53.125.13', '2022-04-16 22:02:10', '2022-04-16 22:02:10'),
(213, NULL, 'global', NULL, '2022-04-17 03:59:36', '2022-04-17 03:59:36'),
(214, NULL, 'ip', '110.137.82.20', '2022-04-17 03:59:36', '2022-04-17 03:59:36'),
(215, NULL, 'global', NULL, '2022-04-21 02:05:43', '2022-04-21 02:05:43'),
(216, NULL, 'ip', '42.115.201.147', '2022-04-21 02:05:43', '2022-04-21 02:05:43'),
(217, NULL, 'global', NULL, '2022-04-21 02:20:25', '2022-04-21 02:20:25'),
(218, NULL, 'ip', '77.223.237.135', '2022-04-21 02:20:25', '2022-04-21 02:20:25'),
(219, NULL, 'global', NULL, '2022-04-23 07:58:20', '2022-04-23 07:58:20'),
(220, NULL, 'ip', '47.11.211.25', '2022-04-23 07:58:20', '2022-04-23 07:58:20'),
(221, NULL, 'global', NULL, '2022-04-29 20:14:22', '2022-04-29 20:14:22'),
(222, NULL, 'ip', '157.34.206.57', '2022-04-29 20:14:22', '2022-04-29 20:14:22'),
(223, NULL, 'global', NULL, '2022-05-05 14:12:49', '2022-05-05 14:12:49'),
(224, NULL, 'ip', '49.35.146.48', '2022-05-05 14:12:49', '2022-05-05 14:12:49'),
(225, NULL, 'global', NULL, '2022-05-05 14:12:52', '2022-05-05 14:12:52'),
(226, NULL, 'ip', '49.35.146.48', '2022-05-05 14:12:52', '2022-05-05 14:12:52'),
(227, NULL, 'global', NULL, '2022-05-08 02:58:07', '2022-05-08 02:58:07'),
(228, NULL, 'ip', '77.223.237.135', '2022-05-08 02:58:07', '2022-05-08 02:58:07'),
(229, NULL, 'global', NULL, '2022-05-09 00:21:39', '2022-05-09 00:21:39'),
(230, NULL, 'ip', '197.54.213.34', '2022-05-09 00:21:39', '2022-05-09 00:21:39'),
(231, NULL, 'global', NULL, '2022-05-09 16:07:03', '2022-05-09 16:07:03'),
(232, NULL, 'ip', '84.241.199.171', '2022-05-09 16:07:03', '2022-05-09 16:07:03'),
(233, NULL, 'global', NULL, '2022-05-12 23:38:27', '2022-05-12 23:38:27'),
(234, NULL, 'ip', '73.250.48.129', '2022-05-12 23:38:27', '2022-05-12 23:38:27'),
(235, NULL, 'global', NULL, '2022-05-19 22:04:12', '2022-05-19 22:04:12'),
(236, NULL, 'ip', '178.176.76.190', '2022-05-19 22:04:12', '2022-05-19 22:04:12'),
(237, NULL, 'global', NULL, '2022-05-23 19:19:59', '2022-05-23 19:19:59'),
(238, NULL, 'ip', '37.130.81.146', '2022-05-23 19:19:59', '2022-05-23 19:19:59'),
(239, NULL, 'global', NULL, '2022-05-23 19:19:59', '2022-05-23 19:19:59'),
(240, NULL, 'ip', '37.130.81.146', '2022-05-23 19:19:59', '2022-05-23 19:19:59'),
(241, NULL, 'global', NULL, '2022-05-28 15:04:29', '2022-05-28 15:04:29'),
(242, NULL, 'ip', '102.89.2.123', '2022-05-28 15:04:29', '2022-05-28 15:04:29'),
(243, NULL, 'global', NULL, '2022-06-10 03:00:51', '2022-06-10 03:00:51'),
(244, NULL, 'ip', '102.89.33.35', '2022-06-10 03:00:51', '2022-06-10 03:00:51'),
(245, NULL, 'global', NULL, '2022-06-15 21:45:52', '2022-06-15 21:45:52'),
(246, NULL, 'ip', '103.69.21.70', '2022-06-15 21:45:52', '2022-06-15 21:45:52'),
(247, NULL, 'global', NULL, '2022-06-22 14:44:03', '2022-06-22 14:44:03'),
(248, NULL, 'ip', '182.69.77.240', '2022-06-22 14:44:03', '2022-06-22 14:44:03'),
(249, NULL, 'global', NULL, '2022-06-30 21:32:45', '2022-06-30 21:32:45'),
(250, NULL, 'ip', '94.235.231.94', '2022-06-30 21:32:45', '2022-06-30 21:32:45'),
(251, NULL, 'global', NULL, '2022-07-02 22:25:53', '2022-07-02 22:25:53'),
(252, NULL, 'ip', '46.114.174.28', '2022-07-02 22:25:53', '2022-07-02 22:25:53'),
(253, 118, 'user', NULL, '2022-07-02 22:25:53', '2022-07-02 22:25:53'),
(254, NULL, 'global', NULL, '2022-07-02 22:26:08', '2022-07-02 22:26:08'),
(255, NULL, 'ip', '46.114.174.28', '2022-07-02 22:26:08', '2022-07-02 22:26:08'),
(256, 118, 'user', NULL, '2022-07-02 22:26:08', '2022-07-02 22:26:08');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dob` date NOT NULL COMMENT 'date of birth',
  `gender` tinyint(1) NOT NULL COMMENT '1 male, 2 female, 3 others',
  `password` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `permissions` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'it will be array data',
  `last_login` timestamp NULL DEFAULT NULL,
  `first_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `profile_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_id` bigint(20) UNSIGNED DEFAULT NULL,
  `newsletter_enable` tinyint(1) NOT NULL DEFAULT 1,
  `is_user_banned` tinyint(1) NOT NULL DEFAULT 1 COMMENT '0 banned, 1 unbanned',
  `is_password_set` tinyint(1) NOT NULL DEFAULT 0 COMMENT '0 not set, 1 set',
  `user_banned_reason` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_subscribe_banned` tinyint(1) NOT NULL DEFAULT 1 COMMENT '0 banned, 1 unbanned',
  `subscribe_banned_reason` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `about_us` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `social_media` longtext COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'it will be array data',
  `is_active` tinyint(1) NOT NULL DEFAULT 1 COMMENT '0 inactive user, 1 active user',
  `deactivate_reason` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `firebase_auth_id` int(10) UNSIGNED DEFAULT NULL COMMENT 'this is for mobile app.',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `phone`, `dob`, `gender`, `password`, `permissions`, `last_login`, `first_name`, `last_name`, `profile_image`, `image_id`, `newsletter_enable`, `is_user_banned`, `is_password_set`, `user_banned_reason`, `is_subscribe_banned`, `subscribe_banned_reason`, `about_us`, `social_media`, `is_active`, `deactivate_reason`, `firebase_auth_id`, `created_at`, `updated_at`) VALUES
(1, 'admin@newsportal.lab', '', '', 1, '$2y$10$mWgM1sGexmvh42LL8X1TROeCg2svfLkNHcLnQpsoYxo7uSE4GB3fG', '{\"email_show\":\"0\",\"author_show\":\"0\"}', '2022-10-22 18:29:05', 'Admin', 'User', NULL, NULL, 1, 1, 0, NULL, 1, NULL, NULL, '', 1, NULL, NULL, '2021-09-04 22:34:39', '2022-10-22 18:29:05');
-- --------------------------------------------------------

--
-- Table structure for table `videos`
--

CREATE TABLE `videos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `video_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `video_thumbnail` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `disk` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `original` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `v_144p` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `v_240p` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `v_360p` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `v_480p` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `v_720p` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `v_1080p` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `video_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `visitor_trackers`
--

CREATE TABLE `visitor_trackers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `page_type` tinyint(1) DEFAULT NULL COMMENT '1, home page, 2 post details, 3 page detail',
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `source_url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ip` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `agent_browser` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date` date DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `visitor_trackers`
--

INSERT INTO `visitor_trackers` (`id`, `page_type`, `slug`, `url`, `source_url`, `ip`, `agent_browser`, `date`, `created_at`, `updated_at`) VALUES
(1, 1, NULL, 'https://currentnews.com.bd/en', 'https://currentnews.com.bd/en/login', '220.247.128.165', 'Google Chrome', NULL, '2022-10-22 18:28:55', '2022-10-22 18:28:55'),
(2, 1, NULL, 'https://currentnews.com.bd/en', 'https://currentnews.com.bd/en/login', '220.247.128.165', 'Google Chrome', NULL, '2022-10-22 18:29:06', '2022-10-22 18:29:06'),
(3, 1, NULL, 'http://www.currentnews.com.bd', 'http://www.currentnews.com.bd', '185.191.171.21', '', NULL, '2022-10-22 18:29:19', '2022-10-22 18:29:19'),
(4, 6, NULL, 'https://www.currentnews.com.bd/sub-category/abc-news', 'https://www.currentnews.com.bd', '66.249.79.83', 'Google Chrome', NULL, '2022-10-22 18:29:26', '2022-10-22 18:29:26'),
(5, 1, NULL, 'http://www.currentnews.com.bd', 'http://www.currentnews.com.bd', '185.191.171.20', '', NULL, '2022-10-22 18:29:45', '2022-10-22 18:29:45'),
(6, 1, NULL, 'http://www.currentnews.com.bd', 'http://www.currentnews.com.bd', '185.191.171.10', '', NULL, '2022-10-22 18:30:07', '2022-10-22 18:30:07'),
(7, 1, NULL, 'http://www.currentnews.com.bd', 'http://www.currentnews.com.bd', '185.191.171.16', '', NULL, '2022-10-22 18:30:09', '2022-10-22 18:30:09'),
(8, 1, NULL, 'https://currentnews.com.bd', 'https://currentnews.com.bd/en/login', '220.247.128.165', 'Google Chrome', NULL, '2022-10-22 18:30:18', '2022-10-22 18:30:18');

-- --------------------------------------------------------

--
-- Table structure for table `votes`
--

CREATE TABLE `votes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `poll_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `answer` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `widgets`
--

CREATE TABLE `widgets` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `language` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'en',
  `content` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `short_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` int(10) UNSIGNED NOT NULL DEFAULT 1,
  `location` int(11) NOT NULL DEFAULT 1,
  `content_type` int(11) NOT NULL DEFAULT 1,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `is_custom` tinyint(1) NOT NULL DEFAULT 1,
  `ad_id` bigint(20) UNSIGNED DEFAULT NULL,
  `poll_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `widgets`
--

INSERT INTO `widgets` (`id`, `title`, `language`, `content`, `short_code`, `order`, `location`, `content_type`, `status`, `is_custom`, `ad_id`, `poll_id`, `created_at`, `updated_at`) VALUES
(1, 'Popular Posts', 'en', NULL, 'popular_posts', 1, 1, 1, 1, 1, NULL, NULL, '2021-09-04 22:34:40', '2021-09-04 22:34:40'),
(2, 'Follow Us', 'en', NULL, 'follow_us', 2, 1, 5, 1, 1, NULL, NULL, '2021-09-04 22:34:40', '2021-09-04 22:34:40'),
(3, 'Newsletter', 'en', NULL, 'newletter', 3, 1, 4, 1, 1, NULL, NULL, '2021-09-04 22:34:40', '2021-09-04 22:34:40'),
(4, 'Recent Posts', 'en', NULL, 'recent_posts', 4, 1, 6, 1, 1, NULL, NULL, '2021-09-04 22:34:40', '2021-09-04 22:34:40'),
(5, 'Categories', 'en', NULL, 'categories', 5, 1, 11, 1, 1, NULL, NULL, '2021-09-04 22:34:40', '2021-09-04 22:34:40'),
(6, 'Recommended Posts', 'en', NULL, 'recommended_posts', 6, 1, 7, 1, 1, NULL, NULL, '2021-09-04 22:34:40', '2021-09-04 22:34:40'),
(7, 'Tags', 'en', 'politics,world', 'tags', 7, 1, 2, 1, 1, NULL, NULL, '2021-09-04 22:34:40', '2021-09-04 22:34:40'),
(8, 'Featured Posts', 'en', NULL, 'featured_posts', 8, 1, 13, 1, 1, NULL, NULL, '2021-09-04 22:34:40', '2021-09-04 22:34:40'),
(9, 'Popular Posts', 'en', NULL, NULL, 1, 2, 1, 1, 1, NULL, NULL, '2021-09-04 22:34:40', '2021-09-04 22:34:40'),
(10, 'Editor Picks', 'en', NULL, NULL, 2, 2, 12, 1, 1, NULL, NULL, '2021-09-04 22:34:40', '2021-09-04 22:34:40'),
(11, 'Newsletter', 'en', NULL, NULL, 3, 2, 4, 1, 1, NULL, NULL, '2021-09-04 22:34:40', '2021-09-04 22:34:40'),
(12, 'Buy now', 'en', NULL, NULL, 3, 3, 9, 1, 1, 1, NULL, '2021-09-04 22:34:40', '2021-09-04 22:34:40'),
(13, 'Buy now', 'en', NULL, NULL, 3, 2, 9, 1, 1, 1, NULL, '2021-09-04 22:34:40', '2021-09-04 22:34:40'),
(14, 'Poll', 'en', NULL, NULL, 3, 1, 8, 1, 1, NULL, NULL, '2021-09-04 22:34:40', '2021-09-04 22:34:40');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `activations`
--
ALTER TABLE `activations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `activations_user_id_foreign` (`user_id`);

--
-- Indexes for table `ads`
--
ALTER TABLE `ads`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ads_ad_image_id_foreign` (`ad_image_id`);

--
-- Indexes for table `ad_locations`
--
ALTER TABLE `ad_locations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `ad_locations_unique_name_unique` (`unique_name`),
  ADD KEY `ad_locations_ad_id_foreign` (`ad_id`);

--
-- Indexes for table `albums`
--
ALTER TABLE `albums`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `albums_slug_unique` (`slug`);

--
-- Indexes for table `app_intros`
--
ALTER TABLE `app_intros`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `audio`
--
ALTER TABLE `audio`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `audio_post`
--
ALTER TABLE `audio_post`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `comments_user_id_foreign` (`user_id`),
  ADD KEY `comments_post_id_foreign` (`post_id`),
  ADD KEY `comments_comment_id_foreign` (`comment_id`);

--
-- Indexes for table `contact_messages`
--
ALTER TABLE `contact_messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `crons`
--
ALTER TABLE `crons`
  ADD PRIMARY KEY (`id`),
  ADD KEY `crons_video_id_foreign` (`video_id`);

--
-- Indexes for table `email_templates`
--
ALTER TABLE `email_templates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `flag_icons`
--
ALTER TABLE `flag_icons`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gallery_images`
--
ALTER TABLE `gallery_images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `gallery_images_album_id_foreign` (`album_id`);

--
-- Indexes for table `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `language_configs`
--
ALTER TABLE `language_configs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ltm_translations`
--
ALTER TABLE `ltm_translations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menu_item`
--
ALTER TABLE `menu_item`
  ADD PRIMARY KEY (`id`),
  ADD KEY `menu_item_parent_foreign` (`parent`),
  ADD KEY `menu_item_menu_id_foreign` (`menu_id`),
  ADD KEY `menu_item_category_id_foreign` (`category_id`),
  ADD KEY `menu_item_page_id_foreign` (`page_id`),
  ADD KEY `menu_item_post_id_foreign` (`post_id`),
  ADD KEY `menu_item_sub_category_id_foreign` (`sub_category_id`);

--
-- Indexes for table `menu_locations`
--
ALTER TABLE `menu_locations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `menu_locations_unique_name_unique` (`unique_name`),
  ADD KEY `menu_locations_menu_id_foreign` (`menu_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `pages_slug_unique` (`slug`),
  ADD KEY `pages_image_id_foreign` (`image_id`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `persistences`
--
ALTER TABLE `persistences`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `persistences_code_unique` (`code`),
  ADD KEY `persistences_user_id_foreign` (`user_id`);

--
-- Indexes for table `polls`
--
ALTER TABLE `polls`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `poll_options`
--
ALTER TABLE `poll_options`
  ADD PRIMARY KEY (`id`),
  ADD KEY `poll_options_poll_id_foreign` (`poll_id`);

--
-- Indexes for table `poll_results`
--
ALTER TABLE `poll_results`
  ADD PRIMARY KEY (`id`),
  ADD KEY `poll_results_poll_option_id_foreign` (`poll_option_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `posts_slug_unique` (`slug`),
  ADD KEY `posts_category_id_foreign` (`category_id`),
  ADD KEY `posts_image_id_foreign` (`image_id`),
  ADD KEY `posts_video_thumbnail_id_foreign` (`video_thumbnail_id`),
  ADD KEY `posts_video_id_foreign` (`video_id`),
  ADD KEY `posts_visibility_status_slider_language_auth_required_index` (`visibility`,`status`,`slider`,`language`,`auth_required`),
  ADD KEY `posts_featured_breaking_recommended_editor_picks_tags_index` (`featured`,`breaking`,`recommended`,`editor_picks`,`tags`),
  ADD KEY `posts_recommended_order_featured_order_id_index` (`recommended_order`,`featured_order`,`id`),
  ADD KEY `posts_post_type_video_url_type_total_hit_index` (`post_type`,`video_url_type`,`total_hit`),
  ADD KEY `posts_created_at_updated_at_index` (`created_at`,`updated_at`),
  ADD KEY `posts_user_id_category_id_index` (`user_id`,`category_id`),
  ADD KEY `posts_sub_category_id_video_thumbnail_id_index` (`sub_category_id`,`video_thumbnail_id`);

--
-- Indexes for table `quiz_answers`
--
ALTER TABLE `quiz_answers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `quiz_answers_quiz_question_id_foreign` (`quiz_question_id`),
  ADD KEY `quiz_answers_image_id_foreign` (`image_id`);

--
-- Indexes for table `quiz_questions`
--
ALTER TABLE `quiz_questions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `quiz_questions_post_id_foreign` (`post_id`),
  ADD KEY `quiz_questions_image_id_foreign` (`image_id`);

--
-- Indexes for table `quiz_results`
--
ALTER TABLE `quiz_results`
  ADD PRIMARY KEY (`id`),
  ADD KEY `quiz_results_post_id_foreign` (`post_id`),
  ADD KEY `quiz_results_image_id_foreign` (`image_id`);

--
-- Indexes for table `reactions`
--
ALTER TABLE `reactions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `reactions_post_id_foreign` (`post_id`);

--
-- Indexes for table `reminders`
--
ALTER TABLE `reminders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `reminders_user_id_foreign` (`user_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_slug_unique` (`slug`);

--
-- Indexes for table `role_users`
--
ALTER TABLE `role_users`
  ADD PRIMARY KEY (`user_id`,`role_id`),
  ADD KEY `role_users_role_id_foreign` (`role_id`);

--
-- Indexes for table `rss_feeds`
--
ALTER TABLE `rss_feeds`
  ADD PRIMARY KEY (`id`),
  ADD KEY `rss_feeds_category_id_foreign` (`category_id`),
  ADD KEY `rss_feeds_sub_category_id_foreign` (`sub_category_id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `social_media`
--
ALTER TABLE `social_media`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sub_categories`
--
ALTER TABLE `sub_categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `sub_categories_slug_unique` (`slug`),
  ADD KEY `sub_categories_category_id_foreign` (`category_id`);

--
-- Indexes for table `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `themes`
--
ALTER TABLE `themes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `themes_name_index` (`name`);

--
-- Indexes for table `theme_sections`
--
ALTER TABLE `theme_sections`
  ADD PRIMARY KEY (`id`),
  ADD KEY `theme_sections_ad_id_foreign` (`ad_id`),
  ADD KEY `theme_sections_category_id_foreign` (`category_id`);

--
-- Indexes for table `throttle`
--
ALTER TABLE `throttle`
  ADD PRIMARY KEY (`id`),
  ADD KEY `throttle_user_id_index` (`user_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_image_id_foreign` (`image_id`);

--
-- Indexes for table `videos`
--
ALTER TABLE `videos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `visitor_trackers`
--
ALTER TABLE `visitor_trackers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `votes`
--
ALTER TABLE `votes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `votes_poll_id_foreign` (`poll_id`),
  ADD KEY `votes_user_id_foreign` (`user_id`);

--
-- Indexes for table `widgets`
--
ALTER TABLE `widgets`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `widgets_short_code_unique` (`short_code`),
  ADD KEY `widgets_ad_id_foreign` (`ad_id`),
  ADD KEY `widgets_poll_id_foreign` (`poll_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `activations`
--
ALTER TABLE `activations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT for table `ads`
--
ALTER TABLE `ads`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ad_locations`
--
ALTER TABLE `ad_locations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `albums`
--
ALTER TABLE `albums`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `app_intros`
--
ALTER TABLE `app_intros`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `audio`
--
ALTER TABLE `audio`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `audio_post`
--
ALTER TABLE `audio_post`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `contact_messages`
--
ALTER TABLE `contact_messages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `crons`
--
ALTER TABLE `crons`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `email_templates`
--
ALTER TABLE `email_templates`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `flag_icons`
--
ALTER TABLE `flag_icons`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=250;

--
-- AUTO_INCREMENT for table `gallery_images`
--
ALTER TABLE `gallery_images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `images`
--
ALTER TABLE `images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `languages`
--
ALTER TABLE `languages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `language_configs`
--
ALTER TABLE `language_configs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `ltm_translations`
--
ALTER TABLE `ltm_translations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1632;

--
-- AUTO_INCREMENT for table `menu`
--
ALTER TABLE `menu`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `menu_item`
--
ALTER TABLE `menu_item`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `menu_locations`
--
ALTER TABLE `menu_locations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;

--
-- AUTO_INCREMENT for table `persistences`
--
ALTER TABLE `persistences`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2745;

--
-- AUTO_INCREMENT for table `polls`
--
ALTER TABLE `polls`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `poll_options`
--
ALTER TABLE `poll_options`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `poll_results`
--
ALTER TABLE `poll_results`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `quiz_answers`
--
ALTER TABLE `quiz_answers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `quiz_questions`
--
ALTER TABLE `quiz_questions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `quiz_results`
--
ALTER TABLE `quiz_results`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `reactions`
--
ALTER TABLE `reactions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `reminders`
--
ALTER TABLE `reminders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `rss_feeds`
--
ALTER TABLE `rss_feeds`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=125;

--
-- AUTO_INCREMENT for table `social_media`
--
ALTER TABLE `social_media`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `sub_categories`
--
ALTER TABLE `sub_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tags`
--
ALTER TABLE `tags`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `themes`
--
ALTER TABLE `themes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `theme_sections`
--
ALTER TABLE `theme_sections`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `throttle`
--
ALTER TABLE `throttle`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=257;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=119;

--
-- AUTO_INCREMENT for table `videos`
--
ALTER TABLE `videos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `visitor_trackers`
--
ALTER TABLE `visitor_trackers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `votes`
--
ALTER TABLE `votes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `widgets`
--
ALTER TABLE `widgets`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- Constraints for dumped tables
--
SET FOREIGN_KEY_CHECKS = 0;
--
-- Constraints for table `activations`
--
ALTER TABLE `activations`
  ADD CONSTRAINT `activations_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `ads`
--
ALTER TABLE `ads`
  ADD CONSTRAINT `ads_ad_image_id_foreign` FOREIGN KEY (`ad_image_id`) REFERENCES `images` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `ad_locations`
--
ALTER TABLE `ad_locations`
  ADD CONSTRAINT `ad_locations_ad_id_foreign` FOREIGN KEY (`ad_id`) REFERENCES `ads` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_comment_id_foreign` FOREIGN KEY (`comment_id`) REFERENCES `comments` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `comments_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `comments_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `crons`
--
ALTER TABLE `crons`
  ADD CONSTRAINT `crons_video_id_foreign` FOREIGN KEY (`video_id`) REFERENCES `videos` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `gallery_images`
--
ALTER TABLE `gallery_images`
  ADD CONSTRAINT `gallery_images_album_id_foreign` FOREIGN KEY (`album_id`) REFERENCES `albums` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `menu_item`
--
ALTER TABLE `menu_item`
  ADD CONSTRAINT `menu_item_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `menu_item_menu_id_foreign` FOREIGN KEY (`menu_id`) REFERENCES `menu` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `menu_item_page_id_foreign` FOREIGN KEY (`page_id`) REFERENCES `pages` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `menu_item_parent_foreign` FOREIGN KEY (`parent`) REFERENCES `menu_item` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `menu_item_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `menu_item_sub_category_id_foreign` FOREIGN KEY (`sub_category_id`) REFERENCES `sub_categories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `menu_locations`
--
ALTER TABLE `menu_locations`
  ADD CONSTRAINT `menu_locations_menu_id_foreign` FOREIGN KEY (`menu_id`) REFERENCES `menu` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `pages`
--
ALTER TABLE `pages`
  ADD CONSTRAINT `pages_image_id_foreign` FOREIGN KEY (`image_id`) REFERENCES `images` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `persistences`
--
ALTER TABLE `persistences`
  ADD CONSTRAINT `persistences_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `poll_options`
--
ALTER TABLE `poll_options`
  ADD CONSTRAINT `poll_options_poll_id_foreign` FOREIGN KEY (`poll_id`) REFERENCES `polls` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `poll_results`
--
ALTER TABLE `poll_results`
  ADD CONSTRAINT `poll_results_poll_option_id_foreign` FOREIGN KEY (`poll_option_id`) REFERENCES `poll_options` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `posts_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `posts_image_id_foreign` FOREIGN KEY (`image_id`) REFERENCES `images` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `posts_sub_category_id_foreign` FOREIGN KEY (`sub_category_id`) REFERENCES `sub_categories` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `posts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `posts_video_id_foreign` FOREIGN KEY (`video_id`) REFERENCES `videos` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `posts_video_thumbnail_id_foreign` FOREIGN KEY (`video_thumbnail_id`) REFERENCES `images` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `quiz_answers`
--
ALTER TABLE `quiz_answers`
  ADD CONSTRAINT `quiz_answers_image_id_foreign` FOREIGN KEY (`image_id`) REFERENCES `images` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `quiz_answers_quiz_question_id_foreign` FOREIGN KEY (`quiz_question_id`) REFERENCES `quiz_questions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `quiz_questions`
--
ALTER TABLE `quiz_questions`
  ADD CONSTRAINT `quiz_questions_image_id_foreign` FOREIGN KEY (`image_id`) REFERENCES `images` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `quiz_questions_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `quiz_results`
--
ALTER TABLE `quiz_results`
  ADD CONSTRAINT `quiz_results_image_id_foreign` FOREIGN KEY (`image_id`) REFERENCES `images` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `quiz_results_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `reactions`
--
ALTER TABLE `reactions`
  ADD CONSTRAINT `reactions_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `reminders`
--
ALTER TABLE `reminders`
  ADD CONSTRAINT `reminders_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `role_users`
--
ALTER TABLE `role_users`
  ADD CONSTRAINT `role_users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `role_users_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `rss_feeds`
--
ALTER TABLE `rss_feeds`
  ADD CONSTRAINT `rss_feeds_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `rss_feeds_sub_category_id_foreign` FOREIGN KEY (`sub_category_id`) REFERENCES `sub_categories` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `sub_categories`
--
ALTER TABLE `sub_categories`
  ADD CONSTRAINT `sub_categories_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `theme_sections`
--
ALTER TABLE `theme_sections`
  ADD CONSTRAINT `theme_sections_ad_id_foreign` FOREIGN KEY (`ad_id`) REFERENCES `ads` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `theme_sections_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_image_id_foreign` FOREIGN KEY (`image_id`) REFERENCES `images` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `votes`
--
ALTER TABLE `votes`
  ADD CONSTRAINT `votes_poll_id_foreign` FOREIGN KEY (`poll_id`) REFERENCES `polls` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `votes_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `widgets`
--
ALTER TABLE `widgets`
  ADD CONSTRAINT `widgets_ad_id_foreign` FOREIGN KEY (`ad_id`) REFERENCES `ads` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `widgets_poll_id_foreign` FOREIGN KEY (`poll_id`) REFERENCES `polls` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
SET FOREIGN_KEY_CHECKS = 1;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
