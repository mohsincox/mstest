-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 11, 2021 at 02:02 PM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 7.4.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `motorsh_motorsheba`
--

-- --------------------------------------------------------

--
-- Table structure for table `attributes`
--

CREATE TABLE `attributes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `attributes`
--

INSERT INTO `attributes` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Size', '2021-01-25 06:27:06', '2021-01-25 06:27:06'),
(2, 'Color', '2021-01-25 06:27:06', '2021-01-25 06:27:06');

-- --------------------------------------------------------

--
-- Table structure for table `attribute_values`
--

CREATE TABLE `attribute_values` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `attribute_id` bigint(20) UNSIGNED NOT NULL,
  `value` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `attribute_values`
--

INSERT INTO `attribute_values` (`id`, `attribute_id`, `value`, `created_at`, `updated_at`) VALUES
(1, 1, 'Small', '2021-01-25 06:27:40', '2021-01-25 06:27:40'),
(2, 1, 'Medium', '2021-01-25 06:27:40', '2021-01-25 06:27:40'),
(3, 1, 'Large', '2021-01-25 06:28:32', '2021-01-25 06:28:32'),
(4, 2, 'Green', '2021-01-25 06:28:32', '2021-01-25 06:28:32'),
(5, 2, 'Red', '2021-01-25 06:28:32', '2021-01-25 06:28:32'),
(6, 2, 'Yellow', '2021-01-25 03:32:54', '2021-01-25 03:32:54');

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `banner_image` varchar(191) DEFAULT NULL,
  `status` enum('Active','Inactive') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Active',
  `created_by` int(10) UNSIGNED DEFAULT NULL,
  `updated_by` int(10) UNSIGNED DEFAULT NULL,
  `deleted_by` int(10) UNSIGNED DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`id`, `name`, `image`, `banner_image`, `status`, `created_by`, `updated_by`, `deleted_by`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Soft 99', 'brands_2021-09-20_17-08-33_51929.jpg', 'brand-banner-soft99.jpg', 'Active', 1, 1, NULL, NULL, '2021-08-15 23:08:33', '2021-09-20 11:08:33'),
(2, 'AKEBONO', 'brands_2021-09-20_17-08-18_90137.jpg', 'brand-banner-akehsdhga.jpg', 'Active', 1, 1, NULL, NULL, '2021-08-22 05:35:54', '2021-09-20 11:08:18'),
(3, 'DIAX', 'brands_2021-09-20_17-09-00_99660.jpg', 'brand-banner-diax.jpg', 'Active', 1, 1, NULL, NULL, '2021-08-22 05:37:37', '2021-09-20 11:09:00'),
(4, 't 日本 日東工業', 'brands_2021-09-20_17-09-13_70617.jpg', 'brand-banner-t-slkdkanmfkjna.jpg', 'Active', 1, 1, NULL, NULL, '2021-08-22 06:22:09', '2021-09-20 11:09:13'),
(5, 'Showa Denko', 'brands_2021-09-20_17-09-34_65023.jpg', 'brand-banner-showa.jpg', 'Active', 1, 1, NULL, NULL, '2021-08-23 09:42:47', '2021-09-20 11:10:44');

-- --------------------------------------------------------

--
-- Table structure for table `brands_old`
--

CREATE TABLE `brands_old` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `logo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `banner_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('Active','Inactive') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Active',
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `deleted_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(191) DEFAULT NULL,
  `image` varchar(191) DEFAULT NULL,
  `status` enum('Active','Inactive') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Active',
  `in_home_page` tinyint(1) NOT NULL DEFAULT 0,
  `is_featured` tinyint(1) NOT NULL DEFAULT 0,
  `created_by` int(10) UNSIGNED DEFAULT NULL,
  `updated_by` int(10) UNSIGNED DEFAULT NULL,
  `deleted_by` int(10) UNSIGNED DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `icon`, `image`, `status`, `in_home_page`, `is_featured`, `created_by`, `updated_by`, `deleted_by`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Car Exterior', 'category-icon-car-exterior.png', 'category-image-car-exterior.png', 'Active', 0, 0, 1, 1, NULL, NULL, '2021-08-15 23:08:33', '2021-08-22 04:43:03'),
(2, 'Car Interior', 'category-icon-car-interior.png', 'category-image-car-interior.png', 'Active', 0, 0, 1, 1, NULL, NULL, '2021-08-19 10:53:26', '2021-08-22 04:49:04'),
(3, 'Lubricant', 'category-icon-lubrocant.png', 'category-image-lubricant.png', 'Active', 0, 0, 1, NULL, NULL, NULL, '2021-08-22 04:49:34', '2021-08-22 04:49:34'),
(4, 'Oil Filter', 'category-icon-oil-filter.png', 'category-image-oil-filters.png', 'Active', 0, 0, 1, NULL, NULL, NULL, '2021-08-22 04:50:04', '2021-08-22 04:50:04'),
(5, 'Air Filter', 'category-icon-AIR-FILTER.png', 'category-image-air-filter.png', 'Active', 0, 0, 1, NULL, NULL, NULL, '2021-08-22 04:50:19', '2021-08-22 04:50:19'),
(6, 'AC/Cabin Filter', 'category-icon-ac-filter.png', 'category-image-ac-filter.png', 'Active', 0, 0, 1, NULL, NULL, NULL, '2021-08-22 04:51:16', '2021-08-22 04:51:16'),
(7, 'Car Care', 'category-icon-car-care.png', 'category-image-car-care.png', 'Active', 0, 0, 1, NULL, NULL, NULL, '2021-08-22 04:51:30', '2021-08-22 04:51:30'),
(8, 'Body Parts', 'category-icon-body-parts.png', 'category-image-body-parts.png', 'Active', 0, 0, 1, NULL, NULL, NULL, '2021-08-22 04:51:50', '2021-08-22 04:51:50'),
(9, 'Auxiliary Battery', 'category-icon-battery.png', 'category-image-battery.png', 'Active', 0, 0, 1, NULL, NULL, NULL, '2021-08-22 04:52:40', '2021-08-22 04:52:40'),
(10, 'Brake Pads & Shoe', 'category-icon-brake-pad.png', 'category-image-brake-pads.png', 'Active', 0, 0, 1, 1, NULL, NULL, '2021-08-22 09:47:05', '2021-08-26 06:38:14');

-- --------------------------------------------------------

--
-- Table structure for table `categories_old`
--

CREATE TABLE `categories_old` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(10) UNSIGNED DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT 1,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_featured` tinyint(1) NOT NULL DEFAULT 0,
  `in_home_page` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories_old`
--

INSERT INTO `categories_old` (`id`, `parent_id`, `order`, `name`, `slug`, `icon`, `image`, `created_at`, `updated_at`, `is_featured`, `in_home_page`) VALUES
(11, NULL, 1, 'Japanease Parts', 'spare-parts', NULL, NULL, '2021-02-10 22:06:10', '2021-04-01 07:03:35', 0, 0),
(12, NULL, 1, 'Car Accessories', 'car-accessories', NULL, NULL, '2021-02-10 22:06:42', '2021-03-08 03:51:46', 0, 0),
(13, NULL, 1, 'Digital Gadgets', 'digital-gadgets', NULL, NULL, '2021-02-10 22:07:10', '2021-02-10 22:07:10', 0, 0),
(14, NULL, 1, 'Lubricant Oils', 'lubricant-oils', NULL, NULL, '2021-02-10 22:07:27', '2021-02-10 22:07:27', 0, 0),
(15, NULL, 1, 'Car Care Kits', 'car-care-kits', NULL, NULL, '2021-02-10 22:07:43', '2021-02-10 22:07:43', 0, 0),
(16, NULL, 1, 'Lighting', 'lighting', NULL, NULL, '2021-02-10 22:08:02', '2021-02-10 22:08:02', 0, 0),
(17, NULL, 1, 'Security Gadgets', 'security-gadgets', NULL, NULL, '2021-02-10 22:08:21', '2021-02-10 22:08:21', 0, 0),
(32, 13, 2, 'GPS Tracker', 'gps-tracker', NULL, NULL, '2021-02-10 23:10:54', '2021-02-10 23:10:54', 0, 0),
(33, 13, 2, 'Car LCD Monitor', 'car-lcd-monitor', NULL, NULL, '2021-02-10 23:11:11', '2021-02-10 23:11:11', 0, 0),
(34, 13, 2, 'Car Navigator', 'car-navigator', NULL, NULL, '2021-02-10 23:11:33', '2021-02-10 23:11:33', 0, 0),
(35, 13, 2, 'Car TV', 'car-tv', NULL, NULL, '2021-02-10 23:12:31', '2021-02-10 23:12:31', 0, 0),
(37, 13, 2, 'Safety & Security Gadget', 'safety-and-security-gadget', NULL, NULL, '2021-02-10 23:13:33', '2021-02-10 23:13:33', 0, 0),
(38, 13, 2, 'Wireless Car Gadgets', 'wireless-car-gadgets', NULL, NULL, '2021-02-10 23:14:09', '2021-02-10 23:14:09', 0, 0),
(40, 11, 2, 'Air Freshener', 'air-freshener', NULL, 'categories/April2021/WDR8zUtQy18MAMz8YDe7.JPG', '2021-02-10 23:17:10', '2021-04-01 07:04:00', 1, 0),
(41, 15, 2, 'Tire & Wheels Care', 'tire-and-wheels-care', NULL, NULL, '2021-02-10 23:17:44', '2021-02-10 23:17:44', 0, 0),
(42, 15, 2, 'Engine Care', 'engine-care', NULL, NULL, '2021-02-10 23:18:07', '2021-02-10 23:18:07', 0, 0),
(43, 15, 2, 'Batteries', 'batteries', NULL, NULL, '2021-02-10 23:18:57', '2021-02-10 23:18:57', 0, 0),
(44, 16, 2, 'Headlight Kits', 'headlight-kits', NULL, NULL, '2021-02-10 23:20:35', '2021-03-29 05:39:11', 0, 0),
(45, 16, 2, 'Fog Light', 'fog-light', NULL, NULL, '2021-02-10 23:20:56', '2021-03-29 05:38:59', 0, 1),
(47, 14, 2, 'castrol-magnetic', 'Castrol', NULL, 'categories/March2021/Kf6cCUBXIlgzNGF0bw51.png', '2021-02-10 23:21:55', '2021-03-28 10:03:11', 1, 0),
(50, 14, 2, 'Mobil', 'Mobil', NULL, 'categories/March2021/NlgmoFkXpxKd39kmPuAq.png', '2021-02-10 23:23:44', '2021-03-28 11:39:18', 1, 0),
(52, 16, 2, 'Interior/Exterior Lighting', 'DLR lights for toyota C-HR', NULL, 'categories/March2021/aorsgNtp1OrDRqADh9fw.jpg', '2021-02-10 23:26:07', '2021-03-28 10:49:00', 1, 0),
(53, 14, 2, 'Havoline', 'havoline', NULL, 'categories/March2021/bN88L4z0ECOGlZzowGXG.jpg', '2021-02-10 23:26:28', '2021-03-28 09:43:52', 1, 0),
(54, 13, 2, 'Sound System Gadgets', 'NAKAMICHI NBX25L subwoofer', NULL, 'categories/March2021/NsymWAvStCrVk7WWaCE0.png', '2021-02-10 23:26:54', '2021-03-28 11:45:46', 1, 0),
(55, 14, 2, 'Shell', 'shell', NULL, 'categories/March2021/wlQ5A2ul4NGfppLRJOIZ.png', '2021-02-10 23:27:20', '2021-03-28 12:01:46', 1, 0),
(57, 16, 2, 'Tail light', 'tail-light', NULL, NULL, '2021-03-28 11:49:49', '2021-03-28 11:52:37', 0, 0),
(59, 11, 2, 'Brake Pad & Shoe', 'brake-pad', NULL, NULL, '2021-03-29 10:06:06', '2021-04-01 06:45:21', 0, 0),
(60, 11, 2, 'Double side tape', 'double-side-tape', NULL, NULL, '2021-03-29 10:06:38', '2021-04-01 06:45:05', 0, 0),
(61, 11, 2, 'Oil Filter', 'oil-filter', NULL, NULL, '2021-03-29 10:07:02', '2021-04-01 06:44:54', 0, 0),
(62, 11, 2, 'Air Filter', 'air-filter', NULL, NULL, '2021-03-31 06:28:17', '2021-04-01 06:44:44', 0, 0),
(63, 11, 2, 'Cabin Filter', 'cabin-filter', NULL, NULL, '2021-03-31 06:28:44', '2021-04-01 06:44:34', 0, 0),
(64, 11, 2, 'HV Battery Filter', 'hv-battery-filter', NULL, NULL, '2021-03-31 06:29:05', '2021-04-01 06:44:22', 0, 0),
(65, 11, 2, 'Lead Acid Battery', 'lead-acid-battery', NULL, 'categories/April2021/Q7somObN82MSSFpIIv56.JPG', '2021-03-31 06:29:24', '2021-04-05 11:24:25', 1, 0),
(68, 15, 2, 'Cleaning Kits', 'cleaning-kits', NULL, NULL, '2021-04-01 06:53:04', '2021-04-01 06:53:04', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `coupons`
--

CREATE TABLE `coupons` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `coupons`
--

INSERT INTO `coupons` (`id`, `name`, `code`, `type`, `value`, `description`, `created_at`, `updated_at`) VALUES
(1, 'winter discount', 'WT3434', 'discount', '-30.0%', 'This is a winter coupon', '2021-01-24 11:01:09', '2021-01-24 11:01:09');

-- --------------------------------------------------------

--
-- Table structure for table `data_rows`
--

CREATE TABLE `data_rows` (
  `id` int(10) UNSIGNED NOT NULL,
  `data_type_id` int(10) UNSIGNED NOT NULL,
  `field` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT 0,
  `browse` tinyint(1) NOT NULL DEFAULT 1,
  `read` tinyint(1) NOT NULL DEFAULT 1,
  `edit` tinyint(1) NOT NULL DEFAULT 1,
  `add` tinyint(1) NOT NULL DEFAULT 1,
  `delete` tinyint(1) NOT NULL DEFAULT 1,
  `details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `data_rows`
--

INSERT INTO `data_rows` (`id`, `data_type_id`, `field`, `type`, `display_name`, `required`, `browse`, `read`, `edit`, `add`, `delete`, `details`, `order`) VALUES
(1, 1, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, '{}', 1),
(2, 1, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, '{}', 2),
(3, 1, 'email', 'text', 'Email', 1, 1, 1, 1, 1, 1, '{}', 3),
(4, 1, 'password', 'password', 'Password', 1, 0, 0, 1, 1, 0, '{}', 4),
(5, 1, 'remember_token', 'text', 'Remember Token', 0, 0, 0, 0, 0, 0, '{}', 5),
(6, 1, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 0, '{}', 6),
(7, 1, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 7),
(8, 1, 'avatar', 'image', 'Avatar', 0, 1, 1, 1, 1, 1, '{}', 8),
(9, 1, 'user_belongsto_role_relationship', 'relationship', 'Role', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsTo\",\"column\":\"role_id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"roles\",\"pivot\":\"0\",\"taggable\":\"0\"}', 10),
(10, 1, 'user_belongstomany_role_relationship', 'relationship', 'Roles', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsToMany\",\"column\":\"id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"user_roles\",\"pivot\":\"1\",\"taggable\":\"0\"}', 11),
(11, 1, 'settings', 'hidden', 'Settings', 0, 0, 0, 0, 0, 0, '{}', 12),
(12, 2, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(13, 2, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(14, 2, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 3),
(15, 2, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 4),
(16, 3, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(17, 3, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(18, 3, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 3),
(19, 3, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 4),
(20, 3, 'display_name', 'text', 'Display Name', 1, 1, 1, 1, 1, 1, NULL, 5),
(21, 1, 'role_id', 'text', 'Role', 0, 1, 1, 1, 1, 1, '{}', 9),
(22, 4, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, '{}', 1),
(23, 4, 'parent_id', 'select_dropdown', 'Parent', 0, 0, 1, 1, 1, 1, '{\"default\":\"\",\"null\":\"\",\"options\":{\"\":\"-- None --\"},\"relationship\":{\"key\":\"id\",\"label\":\"name\"}}', 2),
(24, 4, 'order', 'text', 'Order', 1, 1, 1, 1, 1, 1, '{\"default\":1}', 3),
(25, 4, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, '{}', 4),
(26, 4, 'slug', 'text', 'Slug', 1, 1, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"name\"}}', 5),
(27, 4, 'created_at', 'timestamp', 'Created At', 0, 0, 1, 0, 0, 0, '{}', 6),
(28, 4, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 7),
(29, 5, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(30, 5, 'author_id', 'text', 'Author', 1, 0, 1, 1, 0, 1, NULL, 2),
(31, 5, 'category_id', 'text', 'Category', 1, 0, 1, 1, 1, 0, NULL, 3),
(32, 5, 'title', 'text', 'Title', 1, 1, 1, 1, 1, 1, NULL, 4),
(33, 5, 'excerpt', 'text_area', 'Excerpt', 1, 0, 1, 1, 1, 1, NULL, 5),
(34, 5, 'body', 'rich_text_box', 'Body', 1, 0, 1, 1, 1, 1, NULL, 6),
(35, 5, 'image', 'image', 'Post Image', 0, 1, 1, 1, 1, 1, '{\"resize\":{\"width\":\"1000\",\"height\":\"null\"},\"quality\":\"70%\",\"upsize\":true,\"thumbnails\":[{\"name\":\"medium\",\"scale\":\"50%\"},{\"name\":\"small\",\"scale\":\"25%\"},{\"name\":\"cropped\",\"crop\":{\"width\":\"300\",\"height\":\"250\"}}]}', 7),
(36, 5, 'slug', 'text', 'Slug', 1, 0, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"title\",\"forceUpdate\":true},\"validation\":{\"rule\":\"unique:posts,slug\"}}', 8),
(37, 5, 'meta_description', 'text_area', 'Meta Description', 1, 0, 1, 1, 1, 1, NULL, 9),
(38, 5, 'meta_keywords', 'text_area', 'Meta Keywords', 1, 0, 1, 1, 1, 1, NULL, 10),
(39, 5, 'status', 'select_dropdown', 'Status', 1, 1, 1, 1, 1, 1, '{\"default\":\"DRAFT\",\"options\":{\"PUBLISHED\":\"published\",\"DRAFT\":\"draft\",\"PENDING\":\"pending\"}}', 11),
(40, 5, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 0, NULL, 12),
(41, 5, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 13),
(42, 5, 'seo_title', 'text', 'SEO Title', 0, 1, 1, 1, 1, 1, NULL, 14),
(43, 5, 'featured', 'checkbox', 'Featured', 1, 1, 1, 1, 1, 1, NULL, 15),
(44, 6, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(45, 6, 'author_id', 'text', 'Author', 1, 0, 0, 0, 0, 0, NULL, 2),
(46, 6, 'title', 'text', 'Title', 1, 1, 1, 1, 1, 1, NULL, 3),
(47, 6, 'excerpt', 'text_area', 'Excerpt', 1, 0, 1, 1, 1, 1, NULL, 4),
(48, 6, 'body', 'rich_text_box', 'Body', 1, 0, 1, 1, 1, 1, NULL, 5),
(49, 6, 'slug', 'text', 'Slug', 1, 0, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"title\"},\"validation\":{\"rule\":\"unique:pages,slug\"}}', 6),
(50, 6, 'meta_description', 'text', 'Meta Description', 1, 0, 1, 1, 1, 1, NULL, 7),
(51, 6, 'meta_keywords', 'text', 'Meta Keywords', 1, 0, 1, 1, 1, 1, NULL, 8),
(52, 6, 'status', 'select_dropdown', 'Status', 1, 1, 1, 1, 1, 1, '{\"default\":\"INACTIVE\",\"options\":{\"INACTIVE\":\"INACTIVE\",\"ACTIVE\":\"ACTIVE\"}}', 9),
(53, 6, 'created_at', 'timestamp', 'Created At', 1, 1, 1, 0, 0, 0, NULL, 10),
(54, 6, 'updated_at', 'timestamp', 'Updated At', 1, 0, 0, 0, 0, 0, NULL, 11),
(55, 6, 'image', 'image', 'Page Image', 0, 1, 1, 1, 1, 1, NULL, 12),
(56, 9, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(57, 9, 'order_number', 'text', 'Order Number', 1, 1, 1, 0, 0, 1, '{}', 3),
(58, 9, 'user_id', 'text', 'User Id', 1, 1, 1, 1, 1, 1, '{}', 2),
(59, 9, 'status', 'select_dropdown', 'Status', 1, 1, 1, 1, 1, 1, '{\"options\":{\"pending\":\"Pending\",\"processing\":\"Processing\",\"completed\":\"Completed\",\"decline\":\"Decline\"}}', 4),
(60, 9, 'grand_total', 'text', 'Grand Total', 1, 1, 1, 1, 1, 1, '{}', 5),
(61, 9, 'item_count', 'text', 'Item Count', 1, 1, 1, 1, 1, 1, '{}', 6),
(62, 9, 'is_paid', 'checkbox', 'Is Paid', 1, 1, 1, 1, 1, 1, '{\"on\":\"Paid\",\"off\":\"Not Paid\",\"checked\":false}', 7),
(63, 9, 'payment_method', 'select_dropdown', 'Payment Method', 1, 1, 1, 1, 1, 1, '{\"options\":{\"cash_on_delivery\":\"Cash_on_delivery\",\"card\":\"Card\",\"bkash\":\"Bkash\"}}', 8),
(64, 9, 'shipping_fullname', 'text', 'Shipping Fullname', 1, 1, 1, 1, 1, 1, '{}', 9),
(65, 9, 'shipping_address', 'text', 'Shipping Address', 1, 1, 1, 1, 1, 1, '{}', 10),
(66, 9, 'shipping_city', 'text', 'Shipping City', 1, 0, 1, 1, 1, 1, '{}', 11),
(67, 9, 'shipping_state', 'text', 'Shipping State', 1, 0, 1, 1, 1, 1, '{}', 12),
(68, 9, 'shipping_zipcode', 'text', 'Shipping Zipcode', 1, 0, 1, 1, 1, 1, '{}', 13),
(69, 9, 'shipping_phone', 'text', 'Shipping Phone', 1, 0, 1, 1, 1, 1, '{}', 14),
(70, 9, 'notes', 'text_area', 'Notes', 0, 0, 1, 1, 1, 1, '{}', 15),
(71, 9, 'billing_fullname', 'text', 'Billing Fullname', 1, 0, 1, 1, 1, 1, '{}', 16),
(72, 9, 'billing_address', 'text', 'Billing Address', 1, 0, 1, 1, 1, 1, '{}', 17),
(73, 9, 'billing_city', 'text', 'Billing City', 1, 0, 1, 1, 1, 1, '{}', 18),
(74, 9, 'billing_state', 'text', 'Billing State', 1, 0, 1, 1, 1, 1, '{}', 19),
(75, 9, 'billing_zipcode', 'text', 'Billing Zipcode', 1, 0, 1, 1, 1, 1, '{}', 20),
(76, 9, 'billing_phone', 'text', 'Billing Phone', 1, 0, 1, 1, 1, 1, '{}', 21),
(77, 9, 'created_at', 'timestamp', 'Created At', 0, 0, 1, 1, 0, 1, '{}', 22),
(78, 9, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 23),
(79, 9, 'order_belongsto_user_relationship', 'relationship', 'users', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\User\",\"table\":\"users\",\"type\":\"belongsTo\",\"column\":\"user_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"categories\",\"pivot\":\"0\",\"taggable\":\"0\"}', 24),
(80, 7, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(81, 7, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, '{}', 3),
(82, 7, 'user_id', 'text', 'User Id', 1, 1, 1, 1, 1, 1, '{}', 2),
(83, 7, 'is_active', 'checkbox', 'Is Active', 1, 1, 1, 1, 1, 1, '{\"off\":\"Inactive\",\"on\":\"Active\",\"checked\":true}', 4),
(84, 7, 'description', 'text_area', 'Description', 0, 1, 1, 1, 1, 1, '{}', 5),
(85, 7, 'rating', 'text', 'Rating', 0, 1, 1, 1, 1, 1, '{}', 6),
(86, 7, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 7),
(87, 7, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 8),
(88, 7, 'shop_belongsto_user_relationship', 'relationship', 'users', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\User\",\"table\":\"users\",\"type\":\"belongsTo\",\"column\":\"user_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"categories\",\"pivot\":\"0\",\"taggable\":\"0\"}', 9),
(99, 10, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(100, 10, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, '{}', 2),
(101, 10, 'code', 'text', 'Code', 1, 1, 1, 1, 1, 1, '{}', 3),
(102, 10, 'type', 'text', 'Type', 1, 1, 1, 1, 1, 1, '{}', 4),
(103, 10, 'value', 'text', 'Value', 1, 1, 1, 1, 1, 1, '{}', 5),
(104, 10, 'description', 'text', 'Description', 0, 1, 1, 1, 1, 1, '{}', 6),
(105, 10, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 7),
(106, 10, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 8),
(107, 11, 'id', 'number', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(108, 11, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, '{}', 2),
(109, 11, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 3),
(110, 11, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 4),
(118, 13, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(119, 13, 'attribute_id', 'text', 'Attribute Id', 1, 1, 1, 1, 1, 1, '{}', 2),
(120, 13, 'value', 'text', 'Value', 1, 1, 1, 1, 1, 1, '{}', 3),
(121, 13, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 4),
(122, 13, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 5),
(123, 13, 'attribute_value_belongsto_attribute_relationship', 'relationship', 'attributes', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Attribute\",\"table\":\"attributes\",\"type\":\"belongsTo\",\"column\":\"attribute_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"attribute_values\",\"pivot\":\"0\",\"taggable\":null}', 6),
(127, 4, 'image', 'image', 'Image', 0, 1, 1, 1, 1, 1, '{}', 6),
(163, 19, 'id', 'number', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(164, 19, 'parent_id', 'select_dropdown', 'Parent Id', 0, 0, 1, 1, 1, 1, '{\"default\":\"\",\"null\":\"\",\"options\":{\"\":\"-- None --\"},\"relationship\":{\"key\":\"id\",\"label\":\"name\"}}', 2),
(165, 19, 'order', 'text', 'Order', 1, 1, 1, 1, 1, 1, '{\"default\":1}', 3),
(166, 19, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, '{}', 4),
(167, 19, 'slug', 'text', 'Slug', 1, 1, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"name\"}}', 5),
(168, 19, 'description', 'rich_text_box', 'Description', 1, 1, 1, 1, 1, 1, '{}', 6),
(169, 19, 'cover_img', 'image', 'Cover Img', 0, 1, 1, 1, 1, 1, '{}', 7),
(170, 19, 'created_at', 'timestamp', 'Created At', 0, 0, 1, 0, 0, 0, '{}', 8),
(171, 19, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 9),
(172, 19, 'price_range', 'text', 'Price Range', 0, 1, 1, 1, 1, 1, '{}', 6),
(173, 20, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(174, 20, 'order_number', 'text', 'Order Number', 1, 1, 1, 0, 0, 1, '{}', 3),
(175, 20, 'status', 'select_dropdown', 'Status', 1, 1, 1, 1, 1, 1, '{\"options\":{\"pending\":\"Pending\",\"processing\":\"Processing\",\"completed\":\"Completed\",\"decline\":\"Decline\"}}', 4),
(176, 20, 'service_id', 'text', 'Service Id', 1, 1, 1, 1, 1, 1, '{}', 2),
(177, 20, 'customer_fullname', 'text', 'Customer Fullname', 1, 1, 1, 1, 1, 1, '{}', 5),
(178, 20, 'customer_phone', 'number', 'Customer Phone', 1, 0, 1, 1, 1, 1, '{}', 6),
(179, 20, 'vahicle_details', 'text', 'Vahicle Details', 1, 0, 1, 1, 1, 1, '{}', 7),
(180, 20, 'customer_division', 'text', 'Customer Division', 1, 0, 1, 1, 1, 1, '{}', 8),
(181, 20, 'customer_city', 'text', 'Customer City', 1, 0, 1, 1, 1, 1, '{}', 9),
(182, 20, 'customer_zipcode', 'text', 'Customer Zipcode', 1, 0, 1, 1, 1, 1, '{}', 10),
(183, 20, 'customer_address', 'text', 'Customer Address', 1, 1, 1, 1, 1, 1, '{}', 11),
(184, 20, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 12),
(185, 20, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 13),
(186, 20, 'service_booking_belongsto_service_relationship', 'relationship', 'services', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Service\",\"table\":\"services\",\"type\":\"belongsTo\",\"column\":\"service_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"attribute_values\",\"pivot\":\"0\",\"taggable\":\"0\"}', 14),
(187, 21, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(188, 21, 'user_id', 'text', 'User Id', 1, 1, 1, 1, 1, 1, '{}', 2),
(189, 21, 'product_id', 'text', 'Product Id', 1, 1, 1, 1, 1, 1, '{}', 3),
(190, 21, 'rating', 'number', 'Rating', 1, 1, 1, 1, 1, 1, '{}', 4),
(191, 21, 'message', 'text', 'Message', 1, 1, 1, 1, 1, 1, '{}', 5),
(192, 21, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 6),
(193, 21, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 7),
(194, 21, 'product_review_belongsto_user_relationship', 'relationship', 'users', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\User\",\"table\":\"users\",\"type\":\"belongsTo\",\"column\":\"user_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"attribute_values\",\"pivot\":\"0\",\"taggable\":null}', 8),
(195, 21, 'product_review_belongsto_product_relationship', 'relationship', 'products', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Product\",\"table\":\"products\",\"type\":\"belongsTo\",\"column\":\"product_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"attribute_values\",\"pivot\":\"0\",\"taggable\":null}', 9),
(196, 4, 'is_featured', 'checkbox', 'Is Featured', 1, 1, 1, 1, 1, 1, '{\"on\":\"Yes\",\"off\":\"No\",\"checked\":true}', 9),
(197, 4, 'in_home_page', 'checkbox', 'In Home Page', 1, 1, 1, 1, 1, 1, '{\"on\":\"Yes\",\"off\":\"No\",\"checked\":true}', 10),
(198, 22, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(199, 22, 'user_id', 'text', 'User Id', 0, 1, 1, 1, 1, 1, '{}', 2),
(200, 22, 'product_id', 'text', 'Product Id', 1, 1, 1, 1, 1, 1, '{}', 3),
(201, 22, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 4),
(202, 22, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 5),
(203, 23, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(204, 23, 'customer_name', 'text', 'Customer Name', 0, 1, 1, 1, 1, 1, '{}', 2),
(205, 23, 'customer_contact', 'number', 'Customer Contact', 0, 1, 1, 1, 1, 1, '{}', 3),
(206, 23, 'manufacturer', 'text', 'Manufacturer', 1, 1, 1, 1, 1, 1, '{}', 4),
(207, 23, 'model', 'text', 'Model', 1, 1, 1, 1, 1, 1, '{}', 5),
(208, 23, 'manufacturing_year', 'text', 'Manufacturing Year', 0, 1, 1, 1, 1, 1, '{}', 6),
(209, 23, 'parts_number', 'text', 'Parts Number', 0, 1, 1, 1, 1, 1, '{}', 7),
(210, 23, 'image', 'image', 'Image', 0, 1, 1, 1, 1, 1, '{}', 8),
(211, 23, 'description', 'text_area', 'Description', 1, 1, 1, 1, 1, 1, '{}', 9),
(212, 23, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 10),
(213, 23, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 11),
(214, 19, 'in_home_page', 'checkbox', 'In Home Page', 1, 1, 1, 1, 1, 1, '{\"on\":\"Yes\",\"off\":\"No\",\"checked\":true}', 9),
(215, 24, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, '{}', 1),
(216, 24, 'name', 'text', 'Maker Name', 1, 1, 1, 1, 1, 1, '{}', 2),
(217, 24, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 3),
(218, 24, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 4),
(219, 24, 'deleted_at', 'timestamp', 'Deleted At', 0, 0, 0, 0, 0, 0, '{}', 5),
(220, 25, 'id', 'number', 'ID', 1, 1, 1, 0, 0, 0, '{}', 1),
(221, 25, 'vehicle_maker_id', 'text', 'Vehicle Maker Id', 1, 1, 1, 1, 1, 1, '{}', 2),
(222, 25, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, '{}', 3),
(223, 25, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 4),
(224, 25, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 5),
(225, 25, 'deleted_at', 'timestamp', 'Deleted At', 0, 0, 0, 0, 0, 0, '{}', 6),
(226, 25, 'vehicle_model_hasone_vehicle_maker_relationship', 'relationship', 'vehicle_makers', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\VehicleMaker\",\"table\":\"vehicle_makers\",\"type\":\"belongsTo\",\"column\":\"vehicle_maker_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"attribute_values\",\"pivot\":\"0\",\"taggable\":\"0\"}', 7),
(227, 26, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(228, 26, 'vehicle_model_id', 'text', 'Vehicle Model', 1, 1, 1, 1, 1, 1, '{}', 2),
(229, 26, 'name', 'text', 'Year', 1, 1, 1, 1, 1, 1, '{}', 3),
(230, 26, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 4),
(231, 26, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 5),
(232, 26, 'deleted_at', 'timestamp', 'Deleted At', 0, 0, 0, 0, 0, 0, '{}', 6),
(233, 26, 'vehicle_manufacturing_year_belongsto_vehicle_model_relationship', 'relationship', 'vehicle_models', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\VehicleModel\",\"table\":\"vehicle_models\",\"type\":\"belongsTo\",\"column\":\"vehicle_model_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"attribute_values\",\"pivot\":\"0\",\"taggable\":\"0\"}', 7),
(243, 27, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(244, 27, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, '{}', 2),
(245, 27, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 3),
(246, 27, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 4),
(249, 7, 'shop_banner_image', 'image', 'Shop Banner Image', 0, 1, 1, 1, 1, 1, '{}', 7),
(250, 7, 'shop_logo', 'image', 'Shop Logo', 0, 1, 1, 1, 1, 1, '{}', 8),
(251, 29, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(252, 29, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, '{}', 2),
(253, 29, 'logo', 'image', 'Logo', 0, 1, 1, 1, 1, 1, '{}', 3),
(254, 29, 'banner_image', 'image', 'Banner Image', 0, 1, 1, 1, 1, 1, '{}', 4),
(255, 29, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 1, '{}', 5),
(256, 29, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 6),
(263, 8, 'id', 'number', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(264, 8, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, '{\"display\":{\"width\":\"6\"},\"validation\":{\"rule\":\"required\"}}', 2),
(265, 8, 'product_number', 'text', 'Product Number', 0, 1, 1, 1, 1, 1, '{\"display\":{\"width\":\"6\"},\"validation\":{\"rule\":\"required\"}}', 3),
(266, 8, 'shop_id', 'text', 'Shop Id', 0, 1, 1, 1, 1, 1, '{\"display\":{\"width\":\"6\"}}', 5),
(267, 8, 'brand_id', 'text', 'Brand Id', 0, 1, 1, 1, 1, 1, '{\"display\":{\"width\":\"6\"}}', 7),
(268, 8, 'description', 'rich_text_box', 'Big Description', 1, 1, 1, 1, 1, 1, '{\"validation\":{\"rule\":\"required\"}}', 15),
(269, 8, 'small_description', 'rich_text_box', 'Small Description', 0, 1, 1, 1, 1, 1, '{}', 14),
(270, 8, 'price', 'number', 'Sale Price', 1, 1, 1, 1, 1, 1, '{\"display\":{\"width\":\"4\"},\"validation\":{\"rule\":\"required\"}}', 10),
(271, 8, 'buy_price', 'number', 'Buy Price', 0, 1, 1, 1, 1, 1, '{\"display\":{\"width\":\"4\"}}', 9),
(272, 8, 'stock', 'number', 'Stock', 1, 1, 1, 1, 1, 1, '{\"display\":{\"width\":\"4\"},\"validation\":{\"rule\":\"required\"}}', 11),
(273, 8, 'cover_img', 'image', 'Cover Img', 0, 1, 1, 1, 1, 1, '{\"display\":{\"width\":\"6\"}}', 17),
(274, 8, 'images', 'multiple_images', 'Images', 0, 1, 1, 1, 1, 1, '{}', 18),
(275, 8, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 27),
(276, 8, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 28),
(277, 8, 'product_attributes', 'text', 'Product Attributes', 0, 0, 0, 0, 0, 0, '{}', 26),
(278, 8, 'is_featured', 'checkbox', 'Featured Products ?', 1, 1, 1, 1, 1, 1, '{\"on\":\"Yes\",\"off\":\"No\",\"checked\":false,\"display\":{\"width\":\"6\"}}', 16),
(279, 8, 'is_sale', 'checkbox', 'Is Discount ?', 1, 1, 1, 1, 1, 1, '{\"on\":\"Yes\",\"off\":\"No\",\"checked\":false,\"display\":{\"width\":\"6\"}}', 12),
(280, 8, 'sale_price', 'number', 'Discount Price', 0, 1, 1, 1, 1, 1, '{\"display\":{\"width\":\"6\"}}', 13),
(281, 8, 'vehicle_maker', 'text', 'Vehicle Manufacturer', 0, 1, 1, 1, 1, 1, '{\"display\":{\"width\":\"6\"}}', 19),
(282, 8, 'vehicle_model', 'text', 'Vehicle Model/Models', 0, 1, 1, 1, 1, 1, '{\"display\":{\"width\":\"6\"}}', 21),
(283, 8, 'vehicle_manufacturing_year', 'text', 'Vehicle Manufacturing Year/Years', 0, 1, 1, 1, 1, 1, '{\"display\":{\"width\":\"6\"}}', 22),
(284, 8, 'product_type', 'text', 'Product Type', 0, 1, 1, 1, 1, 1, '{\"display\":{\"width\":\"6\"}}', 23),
(285, 8, 'is_publish', 'checkbox', 'Publish Product (Yes/No)', 1, 1, 1, 1, 1, 1, '{\"on\":\"Yes\",\"off\":\"No\",\"checked\":false}', 25),
(286, 31, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(287, 31, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, '{}', 2),
(288, 31, 'image_path', 'image', 'Image Path', 1, 1, 1, 1, 1, 1, '{\"validation\":{\"rule\":\"required\"}}', 3),
(289, 31, 'lazy_load_image_path', 'image', 'Lazy Load Image Path', 0, 1, 1, 1, 1, 1, '{}', 4),
(290, 31, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 0, '{}', 5),
(291, 31, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 6),
(292, 31, 'deleted_at', 'timestamp', 'Deleted At', 0, 1, 1, 0, 0, 0, '{}', 7),
(293, 8, 'product_belongsto_brand_relationship', 'relationship', 'Brands', 0, 1, 1, 1, 1, 1, '{\"display\":{\"width\":\"6\"},\"model\":\"App\\\\Brand\",\"table\":\"brands\",\"type\":\"belongsTo\",\"column\":\"brand_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"attribute_values\",\"pivot\":\"0\",\"taggable\":\"0\"}', 8),
(294, 8, 'product_belongsto_shop_relationship', 'relationship', 'Shops', 0, 1, 1, 1, 1, 1, '{\"display\":{\"width\":\"6\"},\"model\":\"App\\\\Shop\",\"table\":\"shops\",\"type\":\"belongsTo\",\"column\":\"shop_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"attribute_values\",\"pivot\":\"0\",\"taggable\":\"0\"}', 6),
(295, 8, 'product_belongstomany_category_relationship', 'relationship', 'Categories', 0, 1, 1, 1, 1, 1, '{\"validation\":{\"rule\":\"required\"},\"model\":\"TCG\\\\Voyager\\\\Models\\\\Category\",\"table\":\"categories\",\"type\":\"belongsToMany\",\"column\":\"id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"product_categories\",\"pivot\":\"1\",\"taggable\":\"on\"}', 4),
(296, 8, 'product_belongsto_vehicle_maker_relationship', 'relationship', 'Vehicle Manufacturer', 0, 1, 1, 1, 1, 1, '{\"display\":{\"width\":\"6\"},\"model\":\"App\\\\VehicleMaker\",\"table\":\"vehicle_makers\",\"type\":\"belongsTo\",\"column\":\"vehicle_maker\",\"key\":\"name\",\"label\":\"name\",\"pivot_table\":\"attribute_values\",\"pivot\":\"0\",\"taggable\":\"0\"}', 20),
(297, 8, 'product_belongsto_product_type_relationship', 'relationship', 'Product Types', 0, 1, 1, 1, 1, 1, '{\"display\":{\"width\":\"6\"},\"model\":\"App\\\\ProductType\",\"table\":\"product_types\",\"type\":\"belongsTo\",\"column\":\"product_type\",\"key\":\"name\",\"label\":\"name\",\"pivot_table\":\"attribute_values\",\"pivot\":\"0\",\"taggable\":\"0\"}', 24),
(298, 1, 'phone_number', 'number', 'Phone Number', 1, 1, 1, 0, 1, 0, '{}', 4),
(299, 1, 'email_verified_at', 'timestamp', 'Email Verified At', 0, 1, 1, 0, 0, 0, '{}', 7),
(300, 1, 'verification_code', 'text', 'Verification Code', 0, 0, 0, 0, 0, 0, '{}', 11),
(301, 1, 'is_verified', 'checkbox', 'Is Verified', 1, 0, 0, 0, 0, 0, '{}', 12);

-- --------------------------------------------------------

--
-- Table structure for table `data_types`
--

CREATE TABLE `data_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_singular` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_plural` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `model_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `policy_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `controller` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `generate_permissions` tinyint(1) NOT NULL DEFAULT 0,
  `server_side` tinyint(4) NOT NULL DEFAULT 0,
  `details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `data_types`
--

INSERT INTO `data_types` (`id`, `name`, `slug`, `display_name_singular`, `display_name_plural`, `icon`, `model_name`, `policy_name`, `controller`, `description`, `generate_permissions`, `server_side`, `details`, `created_at`, `updated_at`) VALUES
(1, 'users', 'users', 'User', 'Users', 'voyager-person', 'TCG\\Voyager\\Models\\User', 'TCG\\Voyager\\Policies\\UserPolicy', 'TCG\\Voyager\\Http\\Controllers\\VoyagerUserController', NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"desc\",\"default_search_key\":null,\"scope\":null}', '2020-11-21 05:29:17', '2021-09-28 00:45:29'),
(2, 'menus', 'menus', 'Menu', 'Menus', 'voyager-list', 'TCG\\Voyager\\Models\\Menu', NULL, '', '', 1, 0, NULL, '2020-11-21 05:29:17', '2020-11-21 05:29:17'),
(3, 'roles', 'roles', 'Role', 'Roles', 'voyager-lock', 'TCG\\Voyager\\Models\\Role', NULL, 'TCG\\Voyager\\Http\\Controllers\\VoyagerRoleController', '', 1, 0, NULL, '2020-11-21 05:29:17', '2020-11-21 05:29:17'),
(4, 'categories', 'categories', 'Category', 'Categories', 'voyager-categories', 'TCG\\Voyager\\Models\\Category', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"desc\",\"default_search_key\":null,\"scope\":null}', '2020-11-21 05:29:21', '2021-03-23 04:03:44'),
(5, 'posts', 'posts', 'Post', 'Posts', 'voyager-news', 'TCG\\Voyager\\Models\\Post', 'TCG\\Voyager\\Policies\\PostPolicy', '', '', 1, 0, NULL, '2020-11-21 05:29:21', '2020-11-21 05:29:21'),
(6, 'pages', 'pages', 'Page', 'Pages', 'voyager-file-text', 'TCG\\Voyager\\Models\\Page', NULL, '', '', 1, 0, NULL, '2020-11-21 05:29:22', '2020-11-21 05:29:22'),
(7, 'shops', 'shops', 'Shop', 'Shops', 'voyager-shop', 'App\\Shop', 'App\\Policies\\ShopPolicy', 'App\\Http\\Controllers\\Admin\\ShopController', NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2020-11-23 04:06:53', '2021-08-18 03:20:11'),
(8, 'products', 'products', 'Product', 'Products', 'voyager-bag', 'App\\Product', NULL, 'App\\Http\\Controllers\\Admin\\ProductController', NULL, 1, 1, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"desc\",\"default_search_key\":\"name\",\"scope\":null}', '2021-08-19 01:15:05', '2021-08-22 05:42:44'),
(9, 'orders', 'orders', 'Order', 'Orders', 'voyager-list', 'App\\Order', NULL, NULL, NULL, 1, 1, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"desc\",\"default_search_key\":\"order_number\",\"scope\":null}', '2020-11-21 05:45:37', '2021-08-21 22:41:35'),
(10, 'coupons', 'coupons', 'Coupon', 'Coupons', 'voyager-gift', 'App\\Coupon', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2021-01-24 05:09:03', '2021-01-24 05:09:03'),
(11, 'attributes', 'attributes', 'Attribute', 'Attributes', 'voyager-tag', 'App\\Attribute', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2021-01-25 00:24:33', '2021-01-25 00:24:33'),
(13, 'attribute_values', 'attribute-values', 'Attribute Value', 'Attribute Values', 'voyager-window-list', 'App\\AttributeValue', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2021-01-25 03:32:03', '2021-01-25 03:32:03'),
(19, 'services', 'services', 'Service', 'Auto Services', 'voyager-plug', 'App\\Service', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2021-03-08 04:53:07', '2021-06-13 04:59:19'),
(20, 'service_bookings', 'service-bookings', 'Service Booking', 'Service Bookings', 'voyager-logbook', 'App\\ServiceBooking', NULL, 'App\\Http\\Controllers\\Admin\\ServiceBookingController', NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2021-03-18 01:54:34', '2021-03-18 06:04:03'),
(21, 'product_reviews', 'product-reviews', 'Product Review', 'Product Reviews', 'voyager-star-two', 'App\\ProductReview', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2021-03-20 00:20:20', '2021-03-20 00:20:20'),
(22, 'top_viewed_products', 'top-viewed-products', 'Top Viewed Product', 'Top Viewed Products', 'voyager-eye', 'App\\TopViewedProduct', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2021-04-05 07:20:57', '2021-04-05 07:20:57'),
(23, 'preorder_queries', 'preorder-queries', 'Preorder Query', 'Preorder Queries', 'voyager-exclamation', 'App\\PreorderQuery', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2021-05-25 08:42:42', '2021-05-25 08:42:42'),
(24, 'vehicle_makers', 'vehicle-makers', 'Vehicle Maker', 'Vehicle Makers', 'voyager-truck', 'App\\VehicleMaker', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2021-07-06 09:10:01', '2021-07-06 09:10:01'),
(25, 'vehicle_models', 'vehicle-models', 'Vehicle Model', 'Vehicle Models', 'voyager-ship', 'App\\VehicleModel', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2021-07-06 09:12:39', '2021-07-06 09:20:14'),
(26, 'vehicle_manufacturing_years', 'vehicle-manufacturing-years', 'Vehicle Manufacturing Year', 'Vehicle Manufacturing Years', 'voyager-calendar', 'App\\VehicleManufacturingYear', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2021-07-06 10:08:06', '2021-07-06 11:00:35'),
(27, 'product_types', 'product-types', 'Product Type', 'Product Types', 'voyager-campfire', 'App\\ProductType', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2021-08-11 00:44:51', '2021-08-11 00:44:51'),
(29, 'brands', 'brands', 'Brand', 'Brands', 'voyager-whale', 'App\\Brand', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2021-08-17 23:54:44', '2021-08-17 23:55:58'),
(31, 'web_banners', 'web-banners', 'Web Banner', 'Web Banners', 'voyager-images', 'App\\WebBanner', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2021-08-19 03:00:04', '2021-09-20 04:12:13');

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
-- Table structure for table `inv_users`
--

CREATE TABLE `inv_users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `role` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'user',
  `vendor_id` int(10) UNSIGNED DEFAULT NULL,
  `secret` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('Active','Inactive') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Active',
  `created_by` int(10) UNSIGNED DEFAULT NULL,
  `updated_by` int(10) UNSIGNED DEFAULT NULL,
  `deleted_by` int(10) UNSIGNED DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `inv_users`
--

INSERT INTO `inv_users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `role`, `vendor_id`, `secret`, `status`, `created_by`, `updated_by`, `deleted_by`, `deleted_at`) VALUES
(1, 'Mohsin', 'mohsin@myolbd.com', NULL, '$2y$10$3UB5Z5iWvLTz5f7nBjVNceKz8bC9r7iG.OYvlMTtym2/VAtx/ViRC', 'UO7ziyNf09Bg9D2EPVzIqLIBp53vwWP3pCo4oeGmF8Vy3qIzjbALfFX1Ln55', '2021-08-08 04:32:26', '2021-08-08 04:32:26', 'admin', NULL, NULL, 'Active', NULL, NULL, NULL, NULL),
(2, 'RTF1', 'rtf1@example.com', NULL, '$2y$10$SrHwqhVn5VrwMsRDWjCPh.NVllWFTUwKsnehOamfbBIu3znM1H3mG', NULL, '2021-09-15 08:51:10', '2021-09-15 08:51:10', 'vendor', 1, 'ODc2NTQzMjE=', 'Active', 1, NULL, NULL, NULL),
(3, 'RTF2', 'rtf2@example.com', NULL, '$2y$10$yXNMzkfJO4Gc4PVsNdM.UOapllBKvVl3z5I9SaLFlJDW30jwE2rQ6', NULL, '2021-09-15 09:07:37', '2021-09-15 09:07:37', 'user', 1, 'ODc2NTQzMjE=', 'Active', 1, NULL, NULL, NULL),
(4, 'Moin', 'moin@myolbd.com', NULL, '$2y$10$kvjqt6FRakUfQV8eWMlm.OJijtVxlfRa/uzSOajqn6AtqGOwGjVri', 'REMWEkRmPPDIZYmMMG9rQuw6JD948XeHqcydUij45dt8XCaDTTqPNrKoqE0S', '2021-09-21 05:01:35', '2021-09-21 05:01:35', 'admin', NULL, NULL, 'Active', 1, NULL, NULL, NULL),
(5, 'test vendor', 'mohsin.cse45@gmail.com', NULL, '$2y$10$FnB7TD4FS2BvSn8KDHZseujWHIFvCPPfagUYPKE3j50LoiYe..y2O', NULL, '2021-09-28 10:25:49', '2021-09-28 10:25:49', 'vendor', 1, 'MTIzNDU2Nzg=', 'Active', 4, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

CREATE TABLE `menus` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menus`
--

INSERT INTO `menus` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'admin', '2020-11-21 05:29:18', '2020-11-21 05:29:18');

-- --------------------------------------------------------

--
-- Table structure for table `menu_items`
--

CREATE TABLE `menu_items` (
  `id` int(10) UNSIGNED NOT NULL,
  `menu_id` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `target` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '_self',
  `icon_class` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `order` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `route` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parameters` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menu_items`
--

INSERT INTO `menu_items` (`id`, `menu_id`, `title`, `url`, `target`, `icon_class`, `color`, `parent_id`, `order`, `created_at`, `updated_at`, `route`, `parameters`) VALUES
(1, 1, 'Dashboard', '', '_self', 'voyager-boat', NULL, NULL, 1, '2020-11-21 05:29:18', '2020-11-21 05:29:18', 'voyager.dashboard', NULL),
(2, 1, 'Media', '', '_self', 'voyager-images', NULL, NULL, 4, '2020-11-21 05:29:18', '2021-07-06 10:59:36', 'voyager.media.index', NULL),
(3, 1, 'Users', '', '_self', 'voyager-person', NULL, NULL, 3, '2020-11-21 05:29:18', '2020-11-21 05:29:18', 'voyager.users.index', NULL),
(4, 1, 'Roles', '', '_self', 'voyager-lock', NULL, NULL, 2, '2020-11-21 05:29:18', '2020-11-21 05:29:18', 'voyager.roles.index', NULL),
(5, 1, 'Tools', '', '_self', 'voyager-tools', NULL, NULL, 8, '2020-11-21 05:29:18', '2021-07-06 10:59:36', NULL, NULL),
(6, 1, 'Menu Builder', '', '_self', 'voyager-list', NULL, 5, 1, '2020-11-21 05:29:18', '2021-07-06 10:59:36', 'voyager.menus.index', NULL),
(7, 1, 'Database', '', '_self', 'voyager-data', NULL, 5, 2, '2020-11-21 05:29:18', '2021-07-06 10:59:36', 'voyager.database.index', NULL),
(8, 1, 'Compass', '', '_self', 'voyager-compass', NULL, 5, 3, '2020-11-21 05:29:18', '2021-07-06 10:59:36', 'voyager.compass.index', NULL),
(9, 1, 'BREAD', '', '_self', 'voyager-bread', NULL, 5, 4, '2020-11-21 05:29:18', '2021-07-06 10:59:36', 'voyager.bread.index', NULL),
(10, 1, 'Settings', '', '_self', 'voyager-settings', NULL, NULL, 9, '2020-11-21 05:29:18', '2021-07-06 10:59:36', 'voyager.settings.index', NULL),
(11, 1, 'Categories', '', '_self', 'voyager-categories', NULL, NULL, 7, '2020-11-21 05:29:21', '2021-07-06 10:59:36', 'voyager.categories.index', NULL),
(12, 1, 'Posts', '', '_self', 'voyager-news', NULL, NULL, 5, '2020-11-21 05:29:22', '2021-07-06 10:59:36', 'voyager.posts.index', NULL),
(13, 1, 'Pages', '', '_self', 'voyager-file-text', NULL, NULL, 6, '2020-11-21 05:29:22', '2021-07-06 10:59:36', 'voyager.pages.index', NULL),
(14, 1, 'Hooks', '', '_self', 'voyager-hook', NULL, 5, 5, '2020-11-21 05:29:23', '2021-07-06 10:59:36', 'voyager.hooks', NULL),
(15, 1, 'Shops', '', '_self', 'voyager-shop', NULL, NULL, 11, '2020-11-23 04:06:53', '2021-07-06 10:59:36', 'voyager.shops.index', NULL),
(16, 1, 'Products List', '', '_self', 'voyager-bag', '#000000', 38, 1, '2021-08-19 01:15:06', '2021-09-22 02:01:07', 'voyager.products.index', 'null'),
(17, 1, 'Orders', '', '_self', 'voyager-list', NULL, NULL, 10, '2020-11-21 05:45:37', '2021-07-06 10:59:36', 'voyager.orders.index', NULL),
(18, 1, 'Coupons', '', '_self', 'voyager-gift', NULL, NULL, 13, '2021-01-24 05:09:04', '2021-09-22 01:59:56', 'voyager.coupons.index', NULL),
(19, 1, 'Attributes', '', '_self', 'voyager-tag', NULL, 38, 5, '2021-01-25 00:24:33', '2021-09-22 01:59:52', 'voyager.attributes.index', NULL),
(21, 1, 'Attribute Values', '', '_self', 'voyager-window-list', NULL, 38, 6, '2021-01-25 03:32:03', '2021-09-22 02:00:35', 'voyager.attribute-values.index', NULL),
(26, 1, 'Auto Services', '', '_self', 'voyager-plug', NULL, NULL, 14, '2021-03-08 04:53:07', '2021-09-22 01:59:56', 'voyager.services.index', NULL),
(27, 1, 'Service Bookings', '', '_self', 'voyager-logbook', NULL, NULL, 15, '2021-03-18 01:54:34', '2021-09-22 01:59:56', 'voyager.service-bookings.index', NULL),
(28, 1, 'Product Reviews', '', '_self', 'voyager-star-two', NULL, 38, 2, '2021-03-20 00:20:21', '2021-09-22 01:59:24', 'voyager.product-reviews.index', NULL),
(29, 1, 'Top Viewed Products', '', '_self', 'voyager-eye', NULL, 38, 4, '2021-04-05 07:20:57', '2021-09-22 01:59:42', 'voyager.top-viewed-products.index', NULL),
(30, 1, 'Preorder Queries', '', '_self', 'voyager-exclamation', '#000000', NULL, 16, '2021-05-25 08:42:43', '2021-09-22 01:59:56', 'voyager.preorder-queries.index', 'null'),
(31, 1, 'Vehicle Makers', '', '_self', 'voyager-truck', NULL, NULL, 17, '2021-07-06 09:10:01', '2021-09-22 01:59:56', 'voyager.vehicle-makers.index', NULL),
(32, 1, 'Vehicle Models', '', '_self', 'voyager-ship', NULL, NULL, 18, '2021-07-06 09:12:39', '2021-09-22 01:59:56', 'voyager.vehicle-models.index', NULL),
(33, 1, 'Vehicle Manufacturing Years', '', '_self', 'voyager-calendar', NULL, NULL, 19, '2021-07-06 10:08:06', '2021-09-22 01:59:56', 'voyager.vehicle-manufacturing-years.index', NULL),
(34, 1, 'Product Types', '', '_self', 'voyager-campfire', NULL, 38, 3, '2021-08-11 00:44:51', '2021-09-22 01:59:36', 'voyager.product-types.index', NULL),
(35, 1, 'Brands', '', '_self', 'voyager-whale', NULL, NULL, 20, '2021-08-17 23:54:45', '2021-09-22 01:59:56', 'voyager.brands.index', NULL),
(37, 1, 'Web Banners', '', '_self', 'voyager-images', '#000000', NULL, 21, '2021-08-19 03:00:04', '2021-09-22 01:59:56', 'voyager.web-banners.index', 'null'),
(38, 1, 'Products Section', '', '_self', 'voyager-logbook', '#000000', NULL, 12, '2021-09-22 01:58:53', '2021-09-22 02:00:55', NULL, '');

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
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2016_01_01_000000_add_voyager_user_fields', 1),
(4, '2016_01_01_000000_create_data_types_table', 1),
(5, '2016_01_01_000000_create_pages_table', 1),
(6, '2016_01_01_000000_create_posts_table', 1),
(7, '2016_02_15_204651_create_categories_table', 1),
(8, '2016_05_19_173453_create_menu_table', 1),
(9, '2016_10_21_190000_create_roles_table', 1),
(10, '2016_10_21_190000_create_settings_table', 1),
(11, '2016_11_30_135954_create_permission_table', 1),
(12, '2016_11_30_141208_create_permission_role_table', 1),
(13, '2016_12_26_201236_data_types__add__server_side', 1),
(14, '2017_01_13_000000_add_route_to_menu_items_table', 1),
(15, '2017_01_14_005015_create_translations_table', 1),
(16, '2017_01_15_000000_make_table_name_nullable_in_permissions_table', 1),
(17, '2017_03_06_000000_add_controller_to_data_types_table', 1),
(18, '2017_04_11_000000_alter_post_nullable_fields_table', 1),
(19, '2017_04_21_000000_add_order_to_data_rows_table', 1),
(20, '2017_07_05_210000_add_policyname_to_data_types_table', 1),
(21, '2017_08_05_000000_add_group_to_settings_table', 1),
(22, '2017_11_26_013050_add_user_role_relationship', 1),
(23, '2017_11_26_015000_create_user_roles_table', 1),
(24, '2018_03_11_000000_add_user_settings', 1),
(25, '2018_03_14_000000_add_details_to_data_types_table', 1),
(26, '2018_03_16_000000_make_settings_value_nullable', 1),
(27, '2019_08_19_000000_create_failed_jobs_table', 1),
(28, '2020_11_18_051140_create_orders_table', 1),
(29, '2020_11_22_064150_create_shops_table', 1),
(30, '2020_11_23_095814_create_products_table', 1),
(31, '2020_11_23_100109_create_order_items_table', 1),
(33, '2020_11_25_072312_create_product_categories_table', 2),
(34, '2021_01_24_105212_create_coupons_table', 3),
(35, '2021_01_25_060539_create_attributes_table', 4),
(36, '2021_01_25_060818_create_attribute_values_table', 4),
(38, '2021_01_25_063719_add_attribute_column_to_products_table', 5),
(42, '2021_01_25_100002_create_contacts_table', 6),
(43, '2021_02_22_090636_add_is_featured_to_products_table', 6),
(44, '2021_02_22_091602_add_on_sale_to_products_table', 6),
(54, '2021_03_08_094239_add_image_to_categories_table', 7),
(56, '2021_03_16_065813_create_services_table', 8),
(57, '2021_03_18_055051_create_service_booking_table', 9),
(59, '2021_03_18_073942_create_service_bookings_table', 10),
(65, '2021_03_20_055240_create_product_reviews_table', 11),
(66, '2021_03_23_043816_add_is_featured_to_categories_table', 12),
(67, '2021_03_23_051811_create_top_viewed_products_table', 13),
(68, '2021_03_23_100217_add_in_home_page_to_categories_table', 14),
(69, '2021_03_25_070618_create_service_reviews_table', 15),
(70, '2021_03_25_084049_add_phone_number_to_users_table', 16),
(71, '2021_05_23_093334_create_preorder_queries_table', 17),
(72, '2021_06_13_105201_add_in_home_page_to_services_table', 17),
(81, '2019_12_14_000001_create_personal_access_tokens_table', 18),
(82, '2021_06_30_065008_create_web_banners_table', 18),
(83, '2021_07_06_142541_create_vehicle_makers_table', 19),
(84, '2021_07_06_142649_create_vehicle_models_table', 19),
(85, '2021_07_06_153307_create_vehicle_manufacturing_years_table', 19),
(86, '2021_07_06_170322_add_vehicle_details_to_products_table', 19),
(87, '2021_08_11_063917_create_product_types_table', 20),
(88, '2021_08_11_065246_add_product_type_to_products_table', 21),
(89, '2021_08_17_052721_add_images_to_shops_table', 22),
(91, '2021_08_18_055152_create_brands_table', 23),
(95, '2021_08_18_092255_add_brand_is_publish_to_products_table', 24),
(97, '2021_09_13_040222_add_icon_to_categories_table', 25),
(100, '2021_09_14_054309_add_new_fields_to_brands_table', 26);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_number` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `status` enum('pending','processing','completed','decline') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `grand_total` double(8,2) NOT NULL,
  `item_count` int(11) NOT NULL,
  `is_paid` tinyint(1) NOT NULL DEFAULT 0,
  `payment_method` enum('cash_on_delivery','card','paypal','stripe') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'cash_on_delivery',
  `shipping_fullname` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shipping_address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shipping_city` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shipping_state` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shipping_zipcode` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shipping_phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notes` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `billing_fullname` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `billing_address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `billing_city` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `billing_state` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `billing_zipcode` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `billing_phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `order_number`, `user_id`, `status`, `grand_total`, `item_count`, `is_paid`, `payment_method`, `shipping_fullname`, `shipping_address`, `shipping_city`, `shipping_state`, `shipping_zipcode`, `shipping_phone`, `notes`, `billing_fullname`, `billing_address`, `billing_city`, `billing_state`, `billing_zipcode`, `billing_phone`, `created_at`, `updated_at`) VALUES
(7, 'MTSB-60ace3fc54afe', 3, 'pending', 490.00, 1, 0, 'cash_on_delivery', 'Ashaduzzaman', 'Lalmatia, Mohammadpur, Dhaka', 'dhaka', 'dhaka', '1207', '01988550920', NULL, 'Ashaduzzaman', 'Lalmatia, Mohammadpur, Dhaka', 'dhaka', 'dhaka', '1207', '01988550920', '2021-05-25 11:48:12', '2021-05-25 11:48:12'),
(9, 'MTSB-61486be8d793a', 3, 'pending', 0.00, 0, 0, 'cash_on_delivery', 'Veronica Crosby', 'Distinctio Similiqu', 'dhaka', 'dhaka', '36937', '01988550920', NULL, 'Veronica Crosby', 'Distinctio Similiqu', 'dhaka', 'dhaka', '36937', '01988550920', '2021-09-20 05:09:28', '2021-09-20 05:09:28'),
(10, 'MTSB-6149a4ea94dd3', 45, 'pending', 5100.00, 1, 0, 'cash_on_delivery', 'Sarder Moin Ud Din', 'House # 37 (Flat-A4), Road # 27, Block # A, Banani Model Town', 'dhaka', 'dhaka', '1213', '01711035587', NULL, 'Sarder Moin Ud Din', 'House # 37 (Flat-A4), Road # 27, Block # A, Banani Model Town', 'dhaka', 'dhaka', '1213', '01711035587', '2021-09-21 03:24:58', '2021-09-21 03:24:58'),
(11, 'MTSB-6149a51cf36fd', 45, 'pending', 5100.00, 1, 0, 'cash_on_delivery', 'Sarder Moin Ud Din', 'House # 37 (Flat-A4), Road # 27, Block # A, Banani Model Town', 'dhaka', 'dhaka', '1213', '01711035587', NULL, 'Sarder Moin Ud Din', 'House # 37 (Flat-A4), Road # 27, Block # A, Banani Model Town', 'dhaka', 'dhaka', '1213', '01711035587', '2021-09-21 03:25:48', '2021-09-21 03:25:48'),
(12, 'MTSB-6149a5a00cc6e', 45, 'pending', 5100.00, 1, 0, 'cash_on_delivery', 'Sarder Moin Ud Din', 'House # 37 (Flat-A4), Road # 27, Block # A, Banani Model Town', 'dhaka', 'dhaka', '1213', '01711035587', NULL, 'Sarder Moin Ud Din', 'House # 37 (Flat-A4), Road # 27, Block # A, Banani Model Town', 'dhaka', 'dhaka', '1213', '01711035587', '2021-09-21 03:28:00', '2021-09-21 03:28:00'),
(13, 'MTSB-6149a8b396c73', 3, 'pending', 5100.00, 1, 0, 'cash_on_delivery', 'Rogan Park', 'Voluptas ea enim mag', 'dhaka', 'dhaka', '99975', '01812312321', NULL, 'Rogan Park', 'Voluptas ea enim mag', 'dhaka', 'dhaka', '99975', '01812312321', '2021-09-21 03:41:07', '2021-09-21 03:41:07'),
(14, 'MTSB-6149afcca0c06', 48, 'pending', 3423.00, 1, 0, 'cash_on_delivery', 'Abid Mahmud', 'Nanani-1216', 'dhaka', 'dhaka', '1216', '01970210303', NULL, 'Abid Mahmud', 'Nanani-1216', 'dhaka', 'dhaka', '1216', '01970210303', '2021-09-21 04:11:24', '2021-09-21 04:11:24'),
(15, 'MTSB-6149b1ad6944c', 48, 'completed', 8523.00, 2, 0, 'cash_on_delivery', 'Abid Mahmud', 'Nanani-1216', 'dhaka', 'dhaka', '1216', '019991234567', NULL, 'Abid Mahmud', 'Nanani-1216', 'dhaka', 'dhaka', '1216', '019991234567', '2021-09-21 04:19:00', '2021-09-21 04:25:25'),
(16, 'MTSB-6149b56158f3f', 48, 'pending', 3423.00, 1, 0, 'cash_on_delivery', 'Abid Mahmud', 'Nanani-1216', 'dhaka', 'dhaka', '1216', '1111111111111111', NULL, 'Abid Mahmud', 'Nanani-1216', 'dhaka', 'dhaka', '1216', '1111111111111111', '2021-09-21 04:35:13', '2021-09-21 04:35:13'),
(17, 'MTSB-6149b99a699b3', 45, 'pending', 5100.00, 1, 0, 'cash_on_delivery', 'Sarder Moin Ud Din', 'House # 37 (Flat-A4), Road # 27, Block # A, Banani Model Town', 'dhaka', 'dhaka', '1213', '01711035587', NULL, 'Sarder Moin Ud Din', 'House # 37 (Flat-A4), Road # 27, Block # A, Banani Model Town', 'dhaka', 'dhaka', '1213', '01711035587', '2021-09-21 04:53:14', '2021-09-21 04:53:14'),
(19, 'MTSB-614b0360b1174', 3, 'pending', 3423.00, 1, 0, 'cash_on_delivery', 'Irma Alford', 'Libero porro suscipi', 'dhaka', 'dhaka', '26156', '01794645821', NULL, 'Irma Alford', 'Libero porro suscipi', 'dhaka', 'dhaka', '26156', '01794645821', '2021-09-22 04:20:16', '2021-09-22 04:20:16'),
(20, 'MTSB-614b076f82998', 3, 'pending', 3423.00, 1, 0, 'cash_on_delivery', 'Aileen Mays', 'Accusamus nihil mole', 'dhaka', 'dhaka', '29735', '01794660613', NULL, 'Aileen Mays', 'Accusamus nihil mole', 'dhaka', 'dhaka', '29735', '01794660613', '2021-09-22 04:37:35', '2021-09-22 04:37:35'),
(21, 'MTSB-614b1308aeb5d', 3, 'pending', 5100.00, 1, 0, 'cash_on_delivery', 'Quintessa Sargent', 'Dolore quos quia per', 'dhaka', 'dhaka', '17178', '5', NULL, 'Quintessa Sargent', 'Dolore quos quia per', 'dhaka', 'dhaka', '17178', '5', '2021-09-22 05:27:04', '2021-09-22 05:27:04'),
(22, 'MTSB-614c4c34417f2', 50, 'pending', 5100.00, 1, 0, 'cash_on_delivery', 'soikot', 'dhaka', 'dhaka', 'dhaka', '5100', '01521302319', NULL, 'soikot', 'dhaka', 'dhaka', 'dhaka', '5100', '01521302319', '2021-09-23 03:43:16', '2021-09-23 03:43:16'),
(23, 'MTSB-615043c875c4c', 50, 'processing', 5100.00, 1, 1, 'cash_on_delivery', 'soikot', 'dhaka', 'dhaka', 'dhaka', '5100', '01521302319', NULL, 'soikot', 'dhaka', 'dhaka', 'dhaka', '5100', '01521302319', '2021-09-26 03:56:00', '2021-09-27 04:38:11'),
(24, 'MTSB-6152e83c556cc', 51, 'completed', 25500.00, 1, 1, 'cash_on_delivery', 'Sarder Moin Ud Din', 'House # 37 (Flat-A4), Road # 27, Block # A, Banani Model Town', 'dhaka', 'dhaka', '1213', '01711035587', NULL, 'Sarder Moin Ud Din', 'House # 37 (Flat-A4), Road # 27, Block # A, Banani Model Town', 'dhaka', 'dhaka', '1213', '01711035587', '2021-09-28 04:02:00', '2021-09-28 04:09:06');

-- --------------------------------------------------------

--
-- Table structure for table `order_items`
--

CREATE TABLE `order_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `price` double(8,2) NOT NULL,
  `quantity` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_items`
--

INSERT INTO `order_items` (`id`, `order_id`, `product_id`, `price`, `quantity`, `created_at`, `updated_at`) VALUES
(8, 7, 143, 490.00, 1, NULL, NULL),
(13, 13, 1, 5100.00, 1, NULL, NULL),
(14, 14, 2, 3423.00, 1, NULL, NULL),
(15, 15, 1, 5100.00, 1, NULL, NULL),
(16, 15, 2, 3423.00, 1, NULL, NULL),
(17, 16, 2, 3423.00, 1, NULL, NULL),
(18, 17, 1, 5100.00, 1, NULL, NULL),
(19, 18, 1, 5100.00, 2, NULL, NULL),
(20, 19, 2, 3423.00, 1, NULL, NULL),
(21, 20, 2, 3423.00, 1, NULL, NULL),
(22, 21, 1, 5100.00, 1, NULL, NULL),
(23, 22, 1, 5100.00, 1, NULL, NULL),
(24, 23, 1, 5100.00, 1, NULL, NULL),
(25, 24, 1, 5100.00, 5, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` int(10) UNSIGNED NOT NULL,
  `author_id` int(11) NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `body` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('ACTIVE','INACTIVE') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'INACTIVE',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `author_id`, `title`, `excerpt`, `body`, `image`, `slug`, `meta_description`, `meta_keywords`, `status`, `created_at`, `updated_at`) VALUES
(1, 0, 'Hello World', 'Hang the jib grog grog blossom grapple dance the hempen jig gangway pressgang bilge rat to go on account lugger. Nelsons folly gabion line draught scallywag fire ship gaff fluke fathom case shot. Sea Legs bilge rat sloop matey gabion long clothes run a shot across the bow Gold Road cog league.', '<p>Hello World. Scallywag grog swab Cat o\'nine tails scuttle rigging hardtack cable nipper Yellow Jack. Handsomely spirits knave lad killick landlubber or just lubber deadlights chantey pinnace crack Jennys tea cup. Provost long clothes black spot Yellow Jack bilged on her anchor league lateen sail case shot lee tackle.</p>\r\n<p>Ballast spirits fluke topmast me quarterdeck schooner landlubber or just lubber gabion belaying pin. Pinnace stern galleon starboard warp carouser to go on account dance the hempen jig jolly boat measured fer yer chains. Man-of-war fire in the hole nipperkin handsomely doubloon barkadeer Brethren of the Coast gibbet driver squiffy.</p>', 'pages/page1.jpg', 'hello-world', 'Yar Meta Description', 'Keyword1, Keyword2', 'ACTIVE', '2020-11-21 05:29:22', '2020-11-21 05:29:22'),
(2, 9, 'ABOUT US', 'Motor Sheba Limited (www.motorsheba.com) is a Joint Venture initiative formed for the purpose of providing an e-commerce service for automotive accessories & vehicle servicing solutions. The company will be offering car interior & exterior accessories & exclusive digital gadgets, providing only authentic Japanese auto parts and offering car servicing packages from renowned workshops of the country. This e-commerce platform will provide the ultimate shopping experience through superior automotive product selection & home service for vehicle maintenance. The company shell partner with the top suppliers in the industry to provide an unparalleled selection of quality name-brand parts, tools and automotive goods.', '<p class=\"MsoNormal\" style=\"text-align: justify;\"><span style=\"font-size: 12.0pt; line-height: 107%; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: Calibri; mso-bidi-theme-font: minor-latin; color: black; mso-themecolor: text1;\">Motor Sheba Limited (</span><a href=\"http://www.motorsheba.com/\"><span style=\"font-size: 12.0pt; line-height: 107%; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: Calibri; mso-bidi-theme-font: minor-latin;\">www.motorsheba.com</span></a><span style=\"font-size: 12.0pt; line-height: 107%; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: Calibri; mso-bidi-theme-font: minor-latin; color: black; mso-themecolor: text1;\">) is a Joint Venture initiative formed for the purpose of providing an e-commerce service for automotive accessories &amp; vehicle servicing solutions. The company will be offering car interior &amp; exterior accessories &amp; exclusive digital gadgets, providing only authentic Japanese auto parts and offering car servicing packages from renowned workshops of the country. This e-commerce platform will </span><span style=\"font-size: 12.0pt; line-height: 107%; mso-bidi-font-family: Calibri; mso-bidi-theme-font: minor-latin; color: black; mso-themecolor: text1;\">provide the ultimate shopping experience through superior automotive product selection &amp; home service for vehicle maintenance. The company shell partner with the top suppliers in the industry to provide an unparalleled selection of quality name-brand parts, tools and automotive goods. <br /><br />Our long-term commitment to exceeding customer expectations is the driving force behind our success. We are a team of professionals who are working hard to provide with the best products at the best prices, delivered to customer&rsquo;s doorstep as soon as possible. <span style=\"mso-spacerun: yes;\">&nbsp;</span>We share the same passion for vehicles as our customers do. Our focus is to provide with the ultimate experience through exceptional service. <br /><br />From basic vehicle repairs &amp; maintenance to performance builds &amp; modifications &ndash; </span><span style=\"font-size: 12.0pt; line-height: 107%; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: Calibri; mso-bidi-theme-font: minor-latin; color: black; mso-themecolor: text1;\">MOTORSHEBA</span><span style=\"font-size: 12.0pt; line-height: 107%; mso-bidi-font-family: Calibri; mso-bidi-theme-font: minor-latin; color: black; mso-themecolor: text1;\"> has the most comprehensive product portfolio and knowledgeable staff to help our customers with all their vehicle needs. Our aim here at </span><span style=\"font-size: 12.0pt; line-height: 107%; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: Calibri; mso-bidi-theme-font: minor-latin; color: black; mso-themecolor: text1;\">MOTORSHEBA</span><span style=\"font-size: 12.0pt; line-height: 107%; mso-bidi-font-family: Calibri; mso-bidi-theme-font: minor-latin; color: black; mso-themecolor: text1;\"> is to bring the best possible service from our vast experience and provide accessories which are tried and proved by ourselves where possible. We carry large stocks from the best performance brands and our staff enthusiasts are here to help our customers to choose the best upgrades for their vehicle.</span></p>', NULL, 'about-us', 'about motorsheba', 'about motorsheba', 'ACTIVE', '2021-04-13 19:15:23', '2021-04-13 19:15:23');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('moin@myolbd.com', '$2y$10$qSpIALvUTJFFY30FzTEZcewmI6zPLuJPaHNAW.627ZodfnY26tpge', '2021-09-21 03:16:52');

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `table_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `key`, `table_name`, `created_at`, `updated_at`) VALUES
(1, 'browse_admin', NULL, '2020-11-21 05:29:18', '2020-11-21 05:29:18'),
(2, 'browse_bread', NULL, '2020-11-21 05:29:18', '2020-11-21 05:29:18'),
(3, 'browse_database', NULL, '2020-11-21 05:29:18', '2020-11-21 05:29:18'),
(4, 'browse_media', NULL, '2020-11-21 05:29:18', '2020-11-21 05:29:18'),
(5, 'browse_compass', NULL, '2020-11-21 05:29:18', '2020-11-21 05:29:18'),
(6, 'browse_menus', 'menus', '2020-11-21 05:29:18', '2020-11-21 05:29:18'),
(7, 'read_menus', 'menus', '2020-11-21 05:29:18', '2020-11-21 05:29:18'),
(8, 'edit_menus', 'menus', '2020-11-21 05:29:18', '2020-11-21 05:29:18'),
(9, 'add_menus', 'menus', '2020-11-21 05:29:18', '2020-11-21 05:29:18'),
(10, 'delete_menus', 'menus', '2020-11-21 05:29:18', '2020-11-21 05:29:18'),
(11, 'browse_roles', 'roles', '2020-11-21 05:29:18', '2020-11-21 05:29:18'),
(12, 'read_roles', 'roles', '2020-11-21 05:29:18', '2020-11-21 05:29:18'),
(13, 'edit_roles', 'roles', '2020-11-21 05:29:18', '2020-11-21 05:29:18'),
(14, 'add_roles', 'roles', '2020-11-21 05:29:18', '2020-11-21 05:29:18'),
(15, 'delete_roles', 'roles', '2020-11-21 05:29:18', '2020-11-21 05:29:18'),
(16, 'browse_users', 'users', '2020-11-21 05:29:18', '2020-11-21 05:29:18'),
(17, 'read_users', 'users', '2020-11-21 05:29:18', '2020-11-21 05:29:18'),
(18, 'edit_users', 'users', '2020-11-21 05:29:18', '2020-11-21 05:29:18'),
(19, 'add_users', 'users', '2020-11-21 05:29:18', '2020-11-21 05:29:18'),
(20, 'delete_users', 'users', '2020-11-21 05:29:18', '2020-11-21 05:29:18'),
(21, 'browse_settings', 'settings', '2020-11-21 05:29:18', '2020-11-21 05:29:18'),
(22, 'read_settings', 'settings', '2020-11-21 05:29:18', '2020-11-21 05:29:18'),
(23, 'edit_settings', 'settings', '2020-11-21 05:29:18', '2020-11-21 05:29:18'),
(24, 'add_settings', 'settings', '2020-11-21 05:29:18', '2020-11-21 05:29:18'),
(25, 'delete_settings', 'settings', '2020-11-21 05:29:18', '2020-11-21 05:29:18'),
(26, 'browse_categories', 'categories', '2020-11-21 05:29:21', '2020-11-21 05:29:21'),
(27, 'read_categories', 'categories', '2020-11-21 05:29:21', '2020-11-21 05:29:21'),
(28, 'edit_categories', 'categories', '2020-11-21 05:29:21', '2020-11-21 05:29:21'),
(29, 'add_categories', 'categories', '2020-11-21 05:29:21', '2020-11-21 05:29:21'),
(30, 'delete_categories', 'categories', '2020-11-21 05:29:21', '2020-11-21 05:29:21'),
(31, 'browse_posts', 'posts', '2020-11-21 05:29:22', '2020-11-21 05:29:22'),
(32, 'read_posts', 'posts', '2020-11-21 05:29:22', '2020-11-21 05:29:22'),
(33, 'edit_posts', 'posts', '2020-11-21 05:29:22', '2020-11-21 05:29:22'),
(34, 'add_posts', 'posts', '2020-11-21 05:29:22', '2020-11-21 05:29:22'),
(35, 'delete_posts', 'posts', '2020-11-21 05:29:22', '2020-11-21 05:29:22'),
(36, 'browse_pages', 'pages', '2020-11-21 05:29:22', '2020-11-21 05:29:22'),
(37, 'read_pages', 'pages', '2020-11-21 05:29:22', '2020-11-21 05:29:22'),
(38, 'edit_pages', 'pages', '2020-11-21 05:29:22', '2020-11-21 05:29:22'),
(39, 'add_pages', 'pages', '2020-11-21 05:29:22', '2020-11-21 05:29:22'),
(40, 'delete_pages', 'pages', '2020-11-21 05:29:22', '2020-11-21 05:29:22'),
(41, 'browse_hooks', NULL, '2020-11-21 05:29:23', '2020-11-21 05:29:23'),
(42, 'browse_orders', 'orders', '2020-11-21 05:45:37', '2020-11-21 05:45:37'),
(43, 'read_orders', 'orders', '2020-11-21 05:45:37', '2020-11-21 05:45:37'),
(44, 'edit_orders', 'orders', '2020-11-21 05:45:37', '2020-11-21 05:45:37'),
(45, 'add_orders', 'orders', '2020-11-21 05:45:37', '2020-11-21 05:45:37'),
(46, 'delete_orders', 'orders', '2020-11-21 05:45:37', '2020-11-21 05:45:37'),
(47, 'browse_shops', 'shops', '2020-11-23 04:06:53', '2020-11-23 04:06:53'),
(48, 'read_shops', 'shops', '2020-11-23 04:06:53', '2020-11-23 04:06:53'),
(49, 'edit_shops', 'shops', '2020-11-23 04:06:53', '2020-11-23 04:06:53'),
(50, 'add_shops', 'shops', '2020-11-23 04:06:53', '2020-11-23 04:06:53'),
(51, 'delete_shops', 'shops', '2020-11-23 04:06:53', '2020-11-23 04:06:53'),
(57, 'browse_coupons', 'coupons', '2021-01-24 05:09:03', '2021-01-24 05:09:03'),
(58, 'read_coupons', 'coupons', '2021-01-24 05:09:03', '2021-01-24 05:09:03'),
(59, 'edit_coupons', 'coupons', '2021-01-24 05:09:03', '2021-01-24 05:09:03'),
(60, 'add_coupons', 'coupons', '2021-01-24 05:09:03', '2021-01-24 05:09:03'),
(61, 'delete_coupons', 'coupons', '2021-01-24 05:09:03', '2021-01-24 05:09:03'),
(62, 'browse_attributes', 'attributes', '2021-01-25 00:24:33', '2021-01-25 00:24:33'),
(63, 'read_attributes', 'attributes', '2021-01-25 00:24:33', '2021-01-25 00:24:33'),
(64, 'edit_attributes', 'attributes', '2021-01-25 00:24:33', '2021-01-25 00:24:33'),
(65, 'add_attributes', 'attributes', '2021-01-25 00:24:33', '2021-01-25 00:24:33'),
(66, 'delete_attributes', 'attributes', '2021-01-25 00:24:33', '2021-01-25 00:24:33'),
(72, 'browse_attribute_values', 'attribute_values', '2021-01-25 03:32:03', '2021-01-25 03:32:03'),
(73, 'read_attribute_values', 'attribute_values', '2021-01-25 03:32:03', '2021-01-25 03:32:03'),
(74, 'edit_attribute_values', 'attribute_values', '2021-01-25 03:32:03', '2021-01-25 03:32:03'),
(75, 'add_attribute_values', 'attribute_values', '2021-01-25 03:32:03', '2021-01-25 03:32:03'),
(76, 'delete_attribute_values', 'attribute_values', '2021-01-25 03:32:03', '2021-01-25 03:32:03'),
(97, 'browse_services', 'services', '2021-03-08 04:53:07', '2021-03-08 04:53:07'),
(98, 'read_services', 'services', '2021-03-08 04:53:07', '2021-03-08 04:53:07'),
(99, 'edit_services', 'services', '2021-03-08 04:53:07', '2021-03-08 04:53:07'),
(100, 'add_services', 'services', '2021-03-08 04:53:07', '2021-03-08 04:53:07'),
(101, 'delete_services', 'services', '2021-03-08 04:53:07', '2021-03-08 04:53:07'),
(102, 'browse_service_bookings', 'service_bookings', '2021-03-18 01:54:34', '2021-03-18 01:54:34'),
(103, 'read_service_bookings', 'service_bookings', '2021-03-18 01:54:34', '2021-03-18 01:54:34'),
(104, 'edit_service_bookings', 'service_bookings', '2021-03-18 01:54:34', '2021-03-18 01:54:34'),
(105, 'add_service_bookings', 'service_bookings', '2021-03-18 01:54:34', '2021-03-18 01:54:34'),
(106, 'delete_service_bookings', 'service_bookings', '2021-03-18 01:54:34', '2021-03-18 01:54:34'),
(107, 'browse_product_reviews', 'product_reviews', '2021-03-20 00:20:21', '2021-03-20 00:20:21'),
(108, 'read_product_reviews', 'product_reviews', '2021-03-20 00:20:21', '2021-03-20 00:20:21'),
(109, 'edit_product_reviews', 'product_reviews', '2021-03-20 00:20:21', '2021-03-20 00:20:21'),
(110, 'add_product_reviews', 'product_reviews', '2021-03-20 00:20:21', '2021-03-20 00:20:21'),
(111, 'delete_product_reviews', 'product_reviews', '2021-03-20 00:20:21', '2021-03-20 00:20:21'),
(112, 'browse_top_viewed_products', 'top_viewed_products', '2021-04-05 07:20:57', '2021-04-05 07:20:57'),
(113, 'read_top_viewed_products', 'top_viewed_products', '2021-04-05 07:20:57', '2021-04-05 07:20:57'),
(114, 'edit_top_viewed_products', 'top_viewed_products', '2021-04-05 07:20:57', '2021-04-05 07:20:57'),
(115, 'add_top_viewed_products', 'top_viewed_products', '2021-04-05 07:20:57', '2021-04-05 07:20:57'),
(116, 'delete_top_viewed_products', 'top_viewed_products', '2021-04-05 07:20:57', '2021-04-05 07:20:57'),
(117, 'browse_preorder_queries', 'preorder_queries', '2021-05-25 08:42:42', '2021-05-25 08:42:42'),
(118, 'read_preorder_queries', 'preorder_queries', '2021-05-25 08:42:42', '2021-05-25 08:42:42'),
(119, 'edit_preorder_queries', 'preorder_queries', '2021-05-25 08:42:42', '2021-05-25 08:42:42'),
(120, 'add_preorder_queries', 'preorder_queries', '2021-05-25 08:42:42', '2021-05-25 08:42:42'),
(121, 'delete_preorder_queries', 'preorder_queries', '2021-05-25 08:42:42', '2021-05-25 08:42:42'),
(122, 'browse_vehicle_makers', 'vehicle_makers', '2021-07-06 09:10:01', '2021-07-06 09:10:01'),
(123, 'read_vehicle_makers', 'vehicle_makers', '2021-07-06 09:10:01', '2021-07-06 09:10:01'),
(124, 'edit_vehicle_makers', 'vehicle_makers', '2021-07-06 09:10:01', '2021-07-06 09:10:01'),
(125, 'add_vehicle_makers', 'vehicle_makers', '2021-07-06 09:10:01', '2021-07-06 09:10:01'),
(126, 'delete_vehicle_makers', 'vehicle_makers', '2021-07-06 09:10:01', '2021-07-06 09:10:01'),
(127, 'browse_vehicle_models', 'vehicle_models', '2021-07-06 09:12:39', '2021-07-06 09:12:39'),
(128, 'read_vehicle_models', 'vehicle_models', '2021-07-06 09:12:39', '2021-07-06 09:12:39'),
(129, 'edit_vehicle_models', 'vehicle_models', '2021-07-06 09:12:39', '2021-07-06 09:12:39'),
(130, 'add_vehicle_models', 'vehicle_models', '2021-07-06 09:12:39', '2021-07-06 09:12:39'),
(131, 'delete_vehicle_models', 'vehicle_models', '2021-07-06 09:12:39', '2021-07-06 09:12:39'),
(132, 'browse_vehicle_manufacturing_years', 'vehicle_manufacturing_years', '2021-07-06 10:08:06', '2021-07-06 10:08:06'),
(133, 'read_vehicle_manufacturing_years', 'vehicle_manufacturing_years', '2021-07-06 10:08:06', '2021-07-06 10:08:06'),
(134, 'edit_vehicle_manufacturing_years', 'vehicle_manufacturing_years', '2021-07-06 10:08:06', '2021-07-06 10:08:06'),
(135, 'add_vehicle_manufacturing_years', 'vehicle_manufacturing_years', '2021-07-06 10:08:06', '2021-07-06 10:08:06'),
(136, 'delete_vehicle_manufacturing_years', 'vehicle_manufacturing_years', '2021-07-06 10:08:06', '2021-07-06 10:08:06'),
(137, 'browse_product_types', 'product_types', '2021-08-11 00:44:51', '2021-08-11 00:44:51'),
(138, 'read_product_types', 'product_types', '2021-08-11 00:44:51', '2021-08-11 00:44:51'),
(139, 'edit_product_types', 'product_types', '2021-08-11 00:44:51', '2021-08-11 00:44:51'),
(140, 'add_product_types', 'product_types', '2021-08-11 00:44:51', '2021-08-11 00:44:51'),
(141, 'delete_product_types', 'product_types', '2021-08-11 00:44:51', '2021-08-11 00:44:51'),
(142, 'browse_brands', 'brands', '2021-08-17 23:54:45', '2021-08-17 23:54:45'),
(143, 'read_brands', 'brands', '2021-08-17 23:54:45', '2021-08-17 23:54:45'),
(144, 'edit_brands', 'brands', '2021-08-17 23:54:45', '2021-08-17 23:54:45'),
(145, 'add_brands', 'brands', '2021-08-17 23:54:45', '2021-08-17 23:54:45'),
(146, 'delete_brands', 'brands', '2021-08-17 23:54:45', '2021-08-17 23:54:45'),
(147, 'browse_products', 'products', '2021-08-19 01:15:06', '2021-08-19 01:15:06'),
(148, 'read_products', 'products', '2021-08-19 01:15:06', '2021-08-19 01:15:06'),
(149, 'edit_products', 'products', '2021-08-19 01:15:06', '2021-08-19 01:15:06'),
(150, 'add_products', 'products', '2021-08-19 01:15:06', '2021-08-19 01:15:06'),
(151, 'delete_products', 'products', '2021-08-19 01:15:06', '2021-08-19 01:15:06'),
(152, 'browse_web_banners', 'web_banners', '2021-08-19 03:00:04', '2021-08-19 03:00:04'),
(153, 'read_web_banners', 'web_banners', '2021-08-19 03:00:04', '2021-08-19 03:00:04'),
(154, 'edit_web_banners', 'web_banners', '2021-08-19 03:00:04', '2021-08-19 03:00:04'),
(155, 'add_web_banners', 'web_banners', '2021-08-19 03:00:04', '2021-08-19 03:00:04'),
(156, 'delete_web_banners', 'web_banners', '2021-08-19 03:00:04', '2021-08-19 03:00:04');

-- --------------------------------------------------------

--
-- Table structure for table `permission_role`
--

CREATE TABLE `permission_role` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permission_role`
--

INSERT INTO `permission_role` (`permission_id`, `role_id`) VALUES
(1, 1),
(1, 3),
(1, 4),
(1, 5),
(2, 1),
(3, 1),
(4, 1),
(4, 5),
(5, 1),
(6, 1),
(6, 3),
(7, 1),
(8, 1),
(9, 1),
(10, 1),
(11, 1),
(12, 1),
(13, 1),
(14, 1),
(15, 1),
(16, 1),
(17, 1),
(18, 1),
(19, 1),
(20, 1),
(21, 1),
(22, 1),
(23, 1),
(24, 1),
(25, 1),
(26, 1),
(26, 5),
(27, 1),
(27, 5),
(28, 1),
(28, 5),
(29, 1),
(29, 5),
(30, 1),
(30, 5),
(31, 1),
(32, 1),
(33, 1),
(34, 1),
(35, 1),
(36, 1),
(37, 1),
(38, 1),
(39, 1),
(40, 1),
(41, 1),
(42, 1),
(42, 3),
(42, 4),
(42, 5),
(43, 1),
(43, 4),
(43, 5),
(44, 1),
(44, 4),
(44, 5),
(45, 1),
(45, 5),
(46, 1),
(46, 5),
(47, 1),
(47, 3),
(48, 1),
(48, 3),
(49, 1),
(49, 3),
(50, 1),
(51, 1),
(57, 1),
(57, 5),
(58, 1),
(58, 5),
(59, 1),
(59, 5),
(60, 1),
(60, 5),
(61, 1),
(61, 5),
(62, 1),
(62, 5),
(63, 1),
(63, 5),
(64, 1),
(64, 5),
(65, 1),
(65, 5),
(66, 1),
(66, 5),
(72, 1),
(72, 5),
(73, 1),
(73, 5),
(74, 1),
(74, 5),
(75, 1),
(75, 5),
(76, 1),
(76, 5),
(97, 1),
(97, 5),
(98, 1),
(98, 5),
(99, 1),
(99, 5),
(100, 1),
(100, 5),
(101, 1),
(101, 5),
(102, 1),
(102, 5),
(103, 1),
(103, 5),
(104, 1),
(104, 5),
(105, 1),
(105, 5),
(106, 1),
(106, 5),
(107, 1),
(107, 5),
(108, 1),
(108, 5),
(109, 1),
(109, 5),
(110, 1),
(110, 5),
(111, 1),
(111, 5),
(112, 1),
(113, 1),
(114, 1),
(115, 1),
(116, 1),
(117, 1),
(117, 4),
(118, 1),
(118, 4),
(119, 1),
(119, 4),
(120, 1),
(120, 4),
(121, 1),
(122, 1),
(123, 1),
(124, 1),
(125, 1),
(126, 1),
(127, 1),
(128, 1),
(129, 1),
(130, 1),
(131, 1),
(132, 1),
(133, 1),
(134, 1),
(135, 1),
(136, 1),
(137, 1),
(138, 1),
(139, 1),
(140, 1),
(141, 1),
(142, 1),
(143, 1),
(144, 1),
(145, 1),
(146, 1),
(147, 1),
(148, 1),
(149, 1),
(150, 1),
(151, 1),
(152, 1),
(153, 1),
(154, 1),
(155, 1),
(156, 1);

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `author_id` int(11) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `seo_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('PUBLISHED','DRAFT','PENDING') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'DRAFT',
  `featured` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `author_id`, `category_id`, `title`, `seo_title`, `excerpt`, `body`, `image`, `slug`, `meta_description`, `meta_keywords`, `status`, `featured`, `created_at`, `updated_at`) VALUES
(1, 0, NULL, 'Lorem Ipsum Post', NULL, 'This is the excerpt for the Lorem Ipsum Post', '<p>This is the body of the lorem ipsum post</p>', 'posts/post1.jpg', 'lorem-ipsum-post', 'This is the meta description', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2020-11-21 05:29:22', '2020-11-21 05:29:22'),
(2, 0, NULL, 'My Sample Post', NULL, 'This is the excerpt for the sample Post', '<p>This is the body for the sample post, which includes the body.</p>\r\n<h2>We can use all kinds of format!</h2>\r\n<p>And include a bunch of other stuff.</p>', 'posts/post2.jpg', 'my-sample-post', 'Meta Description for sample post', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2020-11-21 05:29:22', '2020-11-21 05:29:22'),
(3, 0, NULL, 'Latest Post', NULL, 'This is the excerpt for the latest post', '<p>This is the body for the latest post</p>', 'posts/post3.jpg', 'latest-post', 'This is the meta description', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2020-11-21 05:29:22', '2020-11-21 05:29:22'),
(4, 0, NULL, 'Yarr Post', NULL, 'Reef sails nipperkin bring a spring upon her cable coffer jury mast spike marooned Pieces of Eight poop deck pillage. Clipper driver coxswain galleon hempen halter come about pressgang gangplank boatswain swing the lead. Nipperkin yard skysail swab lanyard Blimey bilge water ho quarter Buccaneer.', '<p>Swab deadlights Buccaneer fire ship square-rigged dance the hempen jig weigh anchor cackle fruit grog furl. Crack Jennys tea cup chase guns pressgang hearties spirits hogshead Gold Road six pounders fathom measured fer yer chains. Main sheet provost come about trysail barkadeer crimp scuttle mizzenmast brig plunder.</p>\r\n<p>Mizzen league keelhaul galleon tender cog chase Barbary Coast doubloon crack Jennys tea cup. Blow the man down lugsail fire ship pinnace cackle fruit line warp Admiral of the Black strike colors doubloon. Tackle Jack Ketch come about crimp rum draft scuppers run a shot across the bow haul wind maroon.</p>\r\n<p>Interloper heave down list driver pressgang holystone scuppers tackle scallywag bilged on her anchor. Jack Tar interloper draught grapple mizzenmast hulk knave cable transom hogshead. Gaff pillage to go on account grog aft chase guns piracy yardarm knave clap of thunder.</p>', 'posts/post4.jpg', 'yarr-post', 'this be a meta descript', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2020-11-21 05:29:22', '2020-11-21 05:29:22');

-- --------------------------------------------------------

--
-- Table structure for table `preorder_queries`
--

CREATE TABLE `preorder_queries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `customer_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_contact` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `manufacturer` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `manufacturing_year` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parts_number` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `preorder_queries`
--

INSERT INTO `preorder_queries` (`id`, `customer_name`, `customer_contact`, `manufacturer`, `model`, `manufacturing_year`, `parts_number`, `image`, `description`, `created_at`, `updated_at`) VALUES
(1, 'abid', '01970210303', 'ToYoTa', '21069', 'Japan', '10', NULL, 'no need', '2021-09-21 04:13:44', '2021-09-21 04:13:44'),
(2, 'Linda Franks', '01988550920', 'Sint sed harum proid', 'Asperiores voluptatu', '1982', '401', 'preorder_queries/September2021/003-car jack.png', 'Nisi saepe doloremqu', '2021-09-22 00:50:11', '2021-09-22 00:50:11');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_code` varchar(255) DEFAULT NULL,
  `quantity` int(10) UNSIGNED DEFAULT 0,
  `vendor_price` double(8,2) DEFAULT NULL,
  `selling_price` double(8,2) DEFAULT NULL,
  `small_description` varchar(255) DEFAULT NULL,
  `detail_description` text DEFAULT NULL,
  `pre_order` varchar(100) DEFAULT NULL,
  `category_id` int(10) UNSIGNED NOT NULL,
  `sub_category_id` int(10) UNSIGNED NOT NULL,
  `vendor_id` int(10) UNSIGNED NOT NULL,
  `product_type_id` int(10) UNSIGNED DEFAULT NULL,
  `product_group_id` int(10) UNSIGNED DEFAULT NULL,
  `brand_id` int(10) UNSIGNED DEFAULT NULL,
  `vehicle_maker_id` int(10) UNSIGNED DEFAULT NULL,
  `applicable_vehicle_models` varchar(255) DEFAULT NULL,
  `start_year` year(4) DEFAULT NULL,
  `end_year` year(4) DEFAULT NULL,
  `published` varchar(100) NOT NULL DEFAULT 'No',
  `cover_img` varchar(255) DEFAULT NULL,
  `images` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('Active','Inactive') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Active',
  `chassis_code` varchar(100) DEFAULT NULL,
  `chassis_type` varchar(100) DEFAULT NULL,
  `is_featured` tinyint(1) NOT NULL DEFAULT 0,
  `is_sale` tinyint(1) NOT NULL DEFAULT 0,
  `sale_price` double(8,2) DEFAULT NULL,
  `stock_in_remarks` varchar(255) DEFAULT NULL,
  `stock_out_remarks` varchar(255) DEFAULT NULL,
  `created_by` int(10) UNSIGNED DEFAULT NULL,
  `updated_by` int(10) UNSIGNED DEFAULT NULL,
  `deleted_by` int(10) UNSIGNED DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `product_code`, `quantity`, `vendor_price`, `selling_price`, `small_description`, `detail_description`, `pre_order`, `category_id`, `sub_category_id`, `vendor_id`, `product_type_id`, `product_group_id`, `brand_id`, `vehicle_maker_id`, `applicable_vehicle_models`, `start_year`, `end_year`, `published`, `cover_img`, `images`, `status`, `chassis_code`, `chassis_type`, `is_featured`, `is_sale`, `sale_price`, `stock_in_remarks`, `stock_out_remarks`, `created_by`, `updated_by`, `deleted_by`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'AN-764K, Brake Pad, AKEBONO', 'AN-764K', 14, 4488.00, 5100.00, 'test small', '<p><strong>Test detail</strong></p>', 'No', 10, 65, 1, 1, 1, 2, 1, '[]', 2011, 2014, 'Yes', 'Product_detail_2021-09-29_17-57-05_92249.png', '[\"Product_detail_2021-09-29_17-57-05_92249.png\",\"Product_detail_2021-09-29_17-57-05_23733.jpg\",\"Product_detail_2021-09-29_17-57-05_20840.jpg\",\"Product_detail_2021-09-29_17-57-05_76279.jpg\"]', 'Active', NULL, NULL, 1, 0, NULL, 'test4', NULL, 1, 1, NULL, NULL, '2021-09-21 08:49:14', '2021-09-30 06:42:59'),
(2, 'dasd', '1231', 5, 2131.00, 3423.00, 'sdsadasd', '<p>sdaD</p>', NULL, 1, 1, 1, 2, NULL, 1, 2, '[]', 1996, 2007, 'Yes', 'Product_detail_2021-09-29_17-57-05_20840.jpg', '[\"Product_detail_2021-09-29_17-57-05_92249.png\",\"Product_detail_2021-09-29_17-57-05_23733.jpg\",\"Product_detail_2021-09-29_17-57-05_20840.jpg\",\"Product_detail_2021-09-29_17-57-05_76279.jpg\"]', 'Active', NULL, NULL, 0, 0, NULL, 'something', NULL, 4, 1, NULL, NULL, '2021-09-21 09:36:13', '2021-09-29 05:50:22'),
(3, 'Cutting Compound 1L', '10360', 5, 1950.00, 2600.00, 'Store below 40℃, out of direct sunlight. Avoid humidity, freezing, and wetting.\r\nUse/release contents completely before disposing according to local regulations.', '<p><strong>Precautions for use</strong></p>\r\n<p>Do not use in direct sunlight or on hot surfaces.</p>\r\n<p>Do not use in sandy, dusty or windy environments. May cause scratches.<br /><br /></p>\r\n<p><strong>Warnings/General Notes</strong></p>\r\n<p>Do not eat or drink. Harmful if swallowed.</p>\r\n<p>As skin irritation may occur, please wear protective gloves. Keep out of reach of children and vulnerable people.</p>', 'No', 7, 42, 1, 4, NULL, 1, NULL, '[]', NULL, NULL, 'No', 'Product_2021-09-30_15-59-36_43771.jpg', '[\"Product_detail_2021-09-30_16-41-27_48506.jpg\"]', 'Active', NULL, NULL, 0, 0, NULL, '5', NULL, 4, 4, NULL, NULL, '2021-09-30 09:59:36', '2021-09-30 10:41:27'),
(4, 'Polishing Compound 1L', '10361', 0, 1950.00, 2600.00, 'STORE BELOW 40℃, OUT OF DIRECT SUNLIGHT. AVOID HUMIDITY, FREEZING, AND WETTING.\r\nUSE/RELEASE CONTENTS COMPLETELY BEFORE DISPOSING ACCORDING TO LOCAL REGULATIONS.', '<p><strong>Precautions for use</strong></p>\r\n<p>DO NOT USE IN DIRECT SUNLIGHT OR ON HOT SURFACES.</p>\r\n<p>DO NOT USE IN SANDY, DUSTY OR WINDY ENVIRONMENTS. MAY CAUSE SCRATCHES.</p>\r\n<p><strong>Warnings/General Notes</strong></p>\r\n<p>DO NOT EAT OR DRINK. HARMFUL IF SWALLOWED.</p>\r\n<p>AS SKIN IRRITATION MAY OCCUR, PLEASE WEAR PROTECTIVE GLOVES. KEEP OUT OF REACH OF CHILDREN AND VULNERABLE PEOPLE.</p>', NULL, 7, 42, 1, 5, NULL, 1, NULL, '[]', NULL, NULL, 'No', 'Product_2021-09-30_17-00-16_64156.jpg', '[\"Product_detail_2021-09-30_17-00-16_74675.jpg\"]', 'Active', NULL, NULL, 0, 0, NULL, NULL, NULL, 4, NULL, NULL, NULL, '2021-09-30 11:00:16', '2021-09-30 11:00:16'),
(5, 'Polishing Compound', '10361', 0, 1950.00, 2600.00, 'STORE BELOW 40℃, OUT OF DIRECT SUNLIGHT. AVOID HUMIDITY, FREEZING, AND WETTING.\r\nUSE/RELEASE CONTENTS COMPLETELY BEFORE DISPOSING ACCORDING TO LOCAL REGULATIONS.', '<p><strong>Precautions for use</strong></p>\r\n<p>DO NOT USE IN DIRECT SUNLIGHT OR ON HOT SURFACES.</p>\r\n<p>DO NOT USE IN SANDY, DUSTY OR WINDY ENVIRONMENTS. MAY CAUSE SCRATCHES.</p>\r\n<p><strong>Warnings/General Notes</strong></p>\r\n<p>DO NOT EAT OR DRINK. HARMFUL IF SWALLOWED.</p>\r\n<p>AS SKIN IRRITATION MAY OCCUR, PLEASE WEAR PROTECTIVE GLOVES. KEEP OUT OF REACH OF CHILDREN AND VULNERABLE PEOPLE.</p>', NULL, 7, 42, 1, 5, NULL, 1, NULL, '[]', NULL, NULL, 'No', 'Product_2021-09-30_17-09-32_45270.png', '[\"Product_detail_2021-09-30_17-19-27_40906.jpg\"]', 'Active', NULL, NULL, 0, 0, NULL, NULL, NULL, 4, 4, NULL, NULL, '2021-09-30 11:09:32', '2021-09-30 11:19:27'),
(6, 'Finishing Compound', '10362', 0, 1950.00, 2600.00, 'STORE BELOW 40℃, OUT OF DIRECT SUNLIGHT. AVOID HUMIDITY, FREEZING, AND WETTING.\r\nUSE/RELEASE CONTENTS COMPLETELY BEFORE DISPOSING ACCORDING TO LOCAL REGULATIONS.', '<p><strong>Precautions for use</strong></p>\r\n<p>DO NOT USE IN DIRECT SUNLIGHT OR ON HOT SURFACES.</p>\r\n<p>DO NOT USE IN SANDY, DUSTY OR WINDY ENVIRONMENTS. MAY CAUSE SCRATCHES.</p>\r\n<p>&nbsp;</p>\r\n<p><strong>Warnings/General Notes</strong></p>\r\n<p>DO NOT EAT OR DRINK. HARMFUL IF SWALLOWED.</p>\r\n<p>AS SKIN IRRITATION MAY OCCUR, PLEASE WEAR PROTECTIVE GLOVES. KEEP OUT OF REACH OF CHILDREN AND VULNERABLE PEOPLE.</p>', NULL, 7, 42, 1, 6, NULL, 1, NULL, '[]', NULL, NULL, 'No', 'Product_2021-09-30_17-26-44_94498.png', '[\"Product_detail_2021-09-30_17-26-44_91128.jpg\"]', 'Active', NULL, NULL, 0, 0, NULL, NULL, NULL, 4, NULL, NULL, NULL, '2021-09-30 11:26:44', '2021-09-30 11:26:44'),
(7, 'Kiwami \" Extreme Gloss\" Shampoo- White', '04290', 0, 1105.00, 1300.00, 'STORE SEALED BELOW 40℃, OUT OF DIRECT SUNLIGHT. AVOID HUMIDITY, FREEZING, AND WETTING.\r\nUSE/RELEASE CONTENTS COMPLETELY BEFORE DISPOSING ACCORDING TO LOCAL REGULATIONS.', '<p><strong>Precautions for use</strong></p>\r\n<p>USE ONLY FOR INTENDED PURPOSE.</p>\r\n<p>USE SPONGE PROVIDED. IF USED WITH OTHER SPONGES, RESULTS MAY VARY.</p>\r\n<p>DO NOT USE IN DIRECT SUNLIGHT OR ON HOT SURFACES. DO NOT LEAVE PRODUCT ON FOR A LONG TIME AS IT WILL CAUSE UNEVENNESS AND STAINS.</p>\r\n<p>DO NOT USE ON REPAINTED CARS OR CARS WITH POOR BODY CONDITION.</p>\r\n<p>IF YOUR CAR HAS A PROFESSIONAL COATING AND/OR WARRANTY, PLEASE CHECK FOR ANY DISCLAIMER AND CARE INSTRUCTIONS BEFORE USING THIS PRODUCT. WASH HANDS WELL WITH SOAP AFTER USE.</p>\r\n<p>&nbsp;</p>\r\n<p><strong>Warnings/General Notes</strong></p>\r\n<p>DO NOT EAT OR DRINK. HARMFUL IF SWALLOWED.</p>\r\n<p>AS SKIN IRRITATION MAY OCCUR, PLEASE WEAR PROTECTIVE GLOVES.</p>\r\n<p>KEEP OUT OF REACH OF CHILDREN AND VULNERABLE PEOPLE.</p>', NULL, 7, 42, 1, 7, NULL, 1, NULL, '[]', NULL, NULL, 'Yes', 'Product_2021-09-30_17-31-37_67758.png', '[\"Product_detail_2021-09-30_17-31-37_59146.jpg\",\"Product_detail_2021-09-30_17-31-37_12997.jpg\",\"Product_detail_2021-09-30_17-31-37_77933.jpg\",\"Product_detail_2021-09-30_17-31-37_17374.jpg\"]', 'Active', NULL, NULL, 0, 0, NULL, NULL, NULL, 4, 4, NULL, NULL, '2021-09-30 11:31:37', '2021-09-30 11:33:04'),
(8, 'Kiwami \" Extreme Gloss\" Shampoo- Silver', '04291', 0, 1105.00, 1300.00, 'STORE SEALED BELOW 40℃, OUT OF DIRECT SUNLIGHT. AVOID HUMIDITY, FREEZING, AND WETTING.\r\nUSE/RELEASE CONTENTS COMPLETELY BEFORE DISPOSING ACCORDING TO LOCAL REGULATIONS.', '<p><strong>Precautions for use</strong></p>\r\n<p>USE ONLY FOR INTENDED PURPOSE.</p>\r\n<p>USE SPONGE PROVIDED. IF USED WITH OTHER SPONGES, RESULTS MAY VARY.</p>\r\n<p>DO NOT USE IN DIRECT SUNLIGHT OR ON HOT SURFACES. DO NOT LEAVE PRODUCT ON FOR A LONG TIME AS IT WILL CAUSE UNEVENNESS AND STAINS.</p>\r\n<p>DO NOT USE ON REPAINTED CARS OR CARS WITH POOR BODY CONDITION.</p>\r\n<p>IF YOUR CAR HAS A PROFESSIONAL COATING AND/OR WARRANTY, PLEASE CHECK FOR ANY DISCLAIMER AND CARE INSTRUCTIONS BEFORE USING THIS PRODUCT. WASH HANDS WELL WITH SOAP AFTER USE.</p>\r\n<p><strong>Warnings/General Notes</strong></p>\r\n<p>&nbsp;</p>\r\n<p>DO NOT EAT OR DRINK. HARMFUL IF SWALLOWED.</p>\r\n<p>AS SKIN IRRITATION MAY OCCUR, PLEASE WEAR PROTECTIVE GLOVES.</p>\r\n<p>KEEP OUT OF REACH OF CHILDREN AND VULNERABLE PEOPLE.</p>', NULL, 7, 42, 1, 7, NULL, 1, NULL, '[]', NULL, NULL, 'No', 'Product_2021-09-30_17-38-35_78025.png', '[\"Product_detail_2021-09-30_17-38-35_64437.jpg\",\"Product_detail_2021-09-30_17-38-35_30300.jpg\",\"Product_detail_2021-09-30_17-38-35_28610.jpg\",\"Product_detail_2021-09-30_17-38-35_35373.jpg\"]', 'Active', NULL, NULL, 0, 0, NULL, NULL, NULL, 4, NULL, NULL, NULL, '2021-09-30 11:38:35', '2021-09-30 11:38:35'),
(9, 'Kiwami \" Extreme Gloss\" Shampoo- Dark', '04292', 0, 1105.00, 1300.00, 'STORE SEALED BELOW 40℃, OUT OF DIRECT SUNLIGHT. AVOID HUMIDITY, FREEZING, AND WETTING.\r\nUSE/RELEASE CONTENTS COMPLETELY BEFORE DISPOSING ACCORDING TO LOCAL REGULATIONS.', '<p><strong>Precautions for use</strong></p>\r\n<p>USE ONLY FOR INTENDED PURPOSE.</p>\r\n<p>USE SPONGE PROVIDED. IF USED WITH OTHER SPONGES, RESULTS MAY VARY.</p>\r\n<p>DO NOT USE IN DIRECT SUNLIGHT OR ON HOT SURFACES. DO NOT LEAVE PRODUCT ON FOR A LONG TIME AS IT WILL CAUSE UNEVENNESS AND STAINS.</p>\r\n<p>DO NOT USE ON REPAINTED CARS OR CARS WITH POOR BODY CONDITION.</p>\r\n<p>IF YOUR CAR HAS A PROFESSIONAL COATING AND/OR WARRANTY, PLEASE CHECK FOR ANY DISCLAIMER AND CARE INSTRUCTIONS BEFORE USING THIS PRODUCT. WASH HANDS WELL WITH SOAP AFTER USE.</p>\r\n<p><strong>Warnings/General Notes</strong></p>\r\n<p>&nbsp;</p>\r\n<p>DO NOT EAT OR DRINK. HARMFUL IF SWALLOWED.</p>\r\n<p>AS SKIN IRRITATION MAY OCCUR, PLEASE WEAR PROTECTIVE GLOVES.</p>\r\n<p>KEEP OUT OF REACH OF CHILDREN AND VULNERABLE PEOPLE.</p>', NULL, 7, 42, 1, 7, NULL, 1, NULL, '[]', NULL, NULL, 'No', 'Product_2021-09-30_17-45-26_82610.png', '[\"Product_detail_2021-09-30_17-45-26_68861.jpg\",\"Product_detail_2021-09-30_17-45-26_53683.jpg\",\"Product_detail_2021-09-30_17-45-26_14132.jpg\",\"Product_detail_2021-09-30_17-45-26_24581.jpg\"]', 'Active', NULL, NULL, 0, 0, NULL, NULL, NULL, 4, NULL, NULL, NULL, '2021-09-30 11:45:26', '2021-09-30 11:45:26'),
(10, 'Water Block Shampoo - White', '04242', 0, 1105.00, 1300.00, 'STORE SEALED BELOW 40℃, OUT OF DIRECT SUNLIGHT. AVOID HUMIDITY, FREEZING, AND WETTING.\r\nUSE/RELEASE CONTENTS COMPLETELY BEFORE DISPOSING ACCORDING TO LOCAL REGULATIONS.', '<p><strong>Precautions for use</strong></p>\r\n<p>ALSO EFFECTIVE ON GLASS SURFACES, HOWEVER THE GLASS MAY BECOME WATER-REPELLENT.</p>\r\n<p>DO NOT USE IN DIRECT SUNLIGHT OR ON HOT SURFACES. DO NOT LEAVE PRODUCT ON FOR A LONG TIME AS IT WILL CAUSE UNEVENNESS AND STAINS.</p>\r\n<p>WASH HANDS WELL WITH SOAP AFTER USE.</p>\r\n<p>USE ONLY FOR INTENDED PURPOSE.</p>\r\n<p><strong>Warnings/General Notes</strong></p>\r\n<p>DO NOT EAT OR DRINK. HARMFUL IF SWALLOWED.</p>\r\n<p>AS SKIN IRRITATION MAY OCCUR, PLEASE WEAR PROTECTIVE GLOVES.</p>\r\n<p>KEEP OUT OF REACH OF CHILDREN AND VULNERABLE PEOPLE.</p>', NULL, 7, 42, 1, 7, NULL, 1, NULL, '[]', NULL, NULL, 'No', 'Product_2021-09-30_17-51-31_33011.png', '[\"Product_detail_2021-09-30_17-51-31_62816.jpg\",\"Product_detail_2021-09-30_17-51-31_32067.jpg\",\"Product_detail_2021-09-30_17-51-31_19762.jpg\"]', 'Active', NULL, NULL, 0, 0, NULL, NULL, NULL, 4, NULL, NULL, NULL, '2021-09-30 11:51:31', '2021-09-30 11:51:31'),
(11, 'Water Block Shampoo - Light & Metallic', '04244', 0, 1105.00, 1300.00, 'STORE SEALED BELOW 40℃, OUT OF DIRECT SUNLIGHT. AVOID HUMIDITY, FREEZING, AND WETTING.\r\nUSE/RELEASE CONTENTS COMPLETELY BEFORE DISPOSING ACCORDING TO LOCAL REGULATIONS.', '<p><strong>Precautions for use</strong></p>\r\n<p>USE ONLY FOR INTENDED PURPOSE.</p>\r\n<p>RESULTS MAY VARY WHEN USED WITH DIFFERENT SPONGES.</p>\r\n<p>DO NOT USE IN DIRECT SUNLIGHT OR ON HOT SURFACES. DO NOT LEAVE PRODUCT ON FOR A LONG TIME AS IT WILL CAUSE UNEVENNESS AND STAINS.</p>\r\n<p>NOT FOR USE ON REPAINTED CARS OR CARS WITH COATINGS. DO NOT USE IF THE CAR BODY CONDITION IS POOR. WASH HANDS WELL WITH SOAP AFTER USE.</p>\r\n<p>&nbsp;</p>\r\n<p><strong>Warnings/General Notes</strong></p>\r\n<p>DO NOT EAT OR DRINK. HARMFUL IF SWALLOWED.</p>\r\n<p>AS SKIN IRRITATION MAY OCCUR, PLEASE WEAR PROTECTIVE GLOVES.</p>\r\n<p>KEEP OUT OF REACH OF CHILDREN AND VULNERABLE PEOPLE.</p>\r\n<p>&nbsp;</p>', NULL, 7, 42, 1, 7, NULL, 1, NULL, '[]', NULL, NULL, 'No', 'Product_2021-09-30_17-56-25_69787.png', '[\"Product_detail_2021-09-30_17-56-25_67069.jpg\",\"Product_detail_2021-09-30_17-56-25_46476.jpg\",\"Product_detail_2021-09-30_17-56-25_88166.jpg\"]', 'Active', NULL, NULL, 0, 0, NULL, NULL, NULL, 4, NULL, NULL, NULL, '2021-09-30 11:56:25', '2021-09-30 11:56:25'),
(12, 'Water Block Shampoo - Dark & Metallic', '04246 W', 0, 1105.00, 1300.00, 'STORE SEALED BELOW 40℃, OUT OF DIRECT SUNLIGHT. AVOID HUMIDITY, FREEZING, AND WETTING.\r\nUSE/RELEASE CONTENTS COMPLETELY BEFORE DISPOSING ACCORDING TO LOCAL REGULATIONS.\r\nFacebook\r\nTwitter', '<p><strong>Precautions for use</strong></p>\r\n<p>USE ONLY FOR INTENDED PURPOSE.</p>\r\n<p>RESULTS MAY VARY WHEN USED WITH DIFFERENT SPONGES.</p>\r\n<p>DO NOT USE IN DIRECT SUNLIGHT OR ON HOT SURFACES. DO NOT LEAVE PRODUCT ON FOR A LONG TIME AS IT WILL CAUSE UNEVENNESS AND STAINS.</p>\r\n<p>NOT FOR USE ON REPAINTED CARS OR CARS WITH COATINGS. DO NOT USE IF THE CAR BODY CONDITION IS POOR. WASH HANDS WELL WITH SOAP AFTER USE.</p>\r\n<p>&nbsp;</p>\r\n<p><strong>Warnings/General Notes</strong></p>\r\n<p>DO NOT EAT OR DRINK. HARMFUL IF SWALLOWED.</p>\r\n<p>AS SKIN IRRITATION MAY OCCUR, PLEASE WEAR PROTECTIVE GLOVES.</p>\r\n<p>KEEP OUT OF REACH OF CHILDREN AND VULNERABLE PEOPLE.</p>', NULL, 7, 42, 1, 7, NULL, 1, NULL, '[]', NULL, NULL, 'No', 'Product_2021-09-30_18-00-07_22215.png', '[\"Product_detail_2021-09-30_18-00-07_15200.jpg\",\"Product_detail_2021-09-30_18-00-07_21703.jpg\",\"Product_detail_2021-09-30_18-00-07_35469.jpg\"]', 'Active', NULL, NULL, 0, 0, NULL, NULL, NULL, 4, NULL, NULL, NULL, '2021-09-30 12:00:07', '2021-09-30 12:00:07'),
(13, 'Super Cleaning Shampoo + Wax - White & Pearl', '04270', 0, 1105.00, 1300.00, 'STORE SEALED BELOW 40℃, OUT OF DIRECT SUNLIGHT. AVOID HUMIDITY, FREEZING, AND WETTING.\r\nWASH SPONGE UNTIL LATHER COMPLETELY DISAPPEARS. DRY AND STORE OUT OF DIRECT SUNLIGHT.\r\nUSE/RELEASE CONTENTS COMPLETELY BEFORE DISPOSING ACCORDING TO LOCAL REGULATIONS.', '<p><strong>Precautions for use</strong></p>\r\n<p>USE ONLY FOR INTENDED PURPOSE.</p>\r\n<p>ALWAYS USE APPROPRIATE COLOR FOR CAR.</p>\r\n<p>USE SPONGE INCLUDED. OTHER SPONGES MAY PRODUCE POOR WATER-REPELLENT EFFECTS.</p>\r\n<p>DO NOT USE IN DIRECT SUNLIGHT OR ON HOT SURFACES. DO NOT LEAVE PRODUCT ON FOR A LONG TIME AS IT WILL CAUSE UNEVENNESS AND STAINS.</p>\r\n<p>NOT FOR USE ON REPAINTED CARS, COATED CARS OR CARS WITH POOR BODY CONDITION.</p>\r\n<p><strong>Warnings/General Notes</strong></p>\r\n<p>&nbsp;</p>\r\n<p>DO NOT EAT OR DRINK. HARMFUL IF SWALLOWED.</p>\r\n<p>AS SKIN IRRITATION MAY OCCUR, PLEASE WEAR PROTECTIVE GLOVES.</p>\r\n<p>KEEP OUT OF REACH OF CHILDREN AND VULNERABLE PEOPLE.</p>', NULL, 7, 42, 1, 7, NULL, 1, NULL, '[]', NULL, NULL, 'No', 'Product_2021-09-30_18-04-25_90264.png', '[\"Product_detail_2021-09-30_18-04-25_56357.jpg\",\"Product_detail_2021-09-30_18-04-25_38294.jpg\",\"Product_detail_2021-09-30_18-04-25_11425.jpg\",\"Product_detail_2021-09-30_18-04-25_61206.jpg\"]', 'Active', NULL, NULL, 0, 0, NULL, NULL, NULL, 4, NULL, NULL, NULL, '2021-09-30 12:04:25', '2021-09-30 12:04:25'),
(14, 'Super Cleaning Shampoo + Wax - Silver & Dark', '04271', 0, 1105.00, 1300.00, 'STORE SEALED BELOW 40℃, OUT OF DIRECT SUNLIGHT. AVOID HUMIDITY, FREEZING, AND WETTING.\r\nWASH SPONGE UNTIL LATHER COMPLETELY DISAPPEARS. DRY AND STORE OUT OF DIRECT SUNLIGHT.\r\nUSE/RELEASE CONTENTS COMPLETELY BEFORE DISPOSING ACCORDING TO LOCAL REGULATIONS.', '<p><strong>Precautions for use</strong></p>\r\n<p>USE ONLY FOR INTENDED PURPOSE.</p>\r\n<p>ALWAYS USE APPROPRIATE COLOR FOR CAR.</p>\r\n<p>USE SPONGE INCLUDED. OTHER SPONGES MAY PRODUCE POOR WATER-REPELLENT EFFECTS.</p>\r\n<p>DO NOT USE IN DIRECT SUNLIGHT OR ON HOT SURFACES. DO NOT LEAVE PRODUCT ON FOR A LONG TIME AS IT WILL CAUSE UNEVENNESS AND STAINS.</p>\r\n<p>NOT FOR USE ON REPAINTED CARS, COATED CARS OR CARS WITH POOR BODY CONDITION.</p>\r\n<p><strong>Warnings/General Notes</strong></p>\r\n<p>&nbsp;</p>\r\n<p>DO NOT EAT OR DRINK. HARMFUL IF SWALLOWED.</p>\r\n<p>AS SKIN IRRITATION MAY OCCUR, PLEASE WEAR PROTECTIVE GLOVES.</p>\r\n<p>KEEP OUT OF REACH OF CHILDREN AND VULNERABLE PEOPLE.</p>', NULL, 7, 42, 1, 7, NULL, 1, NULL, '[]', NULL, NULL, 'No', 'Product_2021-09-30_18-10-41_98031.png', '[\"Product_detail_2021-09-30_18-10-41_54292.jpg\",\"Product_detail_2021-09-30_18-10-41_46273.jpg\",\"Product_detail_2021-09-30_18-10-41_26620.jpg\",\"Product_detail_2021-09-30_18-10-41_62764.jpg\"]', 'Active', NULL, NULL, 0, 0, NULL, NULL, NULL, 4, NULL, NULL, NULL, '2021-09-30 12:10:41', '2021-09-30 12:10:41');

-- --------------------------------------------------------

--
-- Table structure for table `products_bk`
--

CREATE TABLE `products_bk` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_code` varchar(255) DEFAULT NULL,
  `quantity` int(10) UNSIGNED DEFAULT 0,
  `vendor_price` double(8,2) NOT NULL,
  `selling_price` double(8,2) NOT NULL,
  `small_description` varchar(255) DEFAULT NULL,
  `detail_description` text DEFAULT NULL,
  `pre_order` varchar(100) DEFAULT NULL,
  `category_id` int(10) UNSIGNED NOT NULL,
  `sub_category_id` int(10) UNSIGNED NOT NULL,
  `vendor_id` int(10) UNSIGNED NOT NULL,
  `product_type_id` int(10) UNSIGNED DEFAULT NULL,
  `product_group_id` int(10) UNSIGNED DEFAULT NULL,
  `brand_id` int(10) UNSIGNED DEFAULT NULL,
  `vehicle_maker_id` int(10) UNSIGNED DEFAULT NULL,
  `applicable_vehicle_models` varchar(255) DEFAULT NULL,
  `start_year` year(4) DEFAULT NULL,
  `end_year` year(4) DEFAULT NULL,
  `published` varchar(100) NOT NULL DEFAULT 'No',
  `cover_img` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `images` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('Active','Inactive') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Active',
  `chassis_code` varchar(100) DEFAULT NULL,
  `chassis_type` varchar(100) DEFAULT NULL,
  `is_featured` tinyint(1) NOT NULL DEFAULT 0,
  `is_sale` tinyint(1) NOT NULL DEFAULT 0,
  `sale_price` double(8,2) DEFAULT NULL,
  `created_by` int(10) UNSIGNED DEFAULT NULL,
  `updated_by` int(10) UNSIGNED DEFAULT NULL,
  `deleted_by` int(10) UNSIGNED DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `products_bk`
--

INSERT INTO `products_bk` (`id`, `name`, `product_code`, `quantity`, `vendor_price`, `selling_price`, `small_description`, `detail_description`, `pre_order`, `category_id`, `sub_category_id`, `vendor_id`, `product_type_id`, `product_group_id`, `brand_id`, `vehicle_maker_id`, `applicable_vehicle_models`, `start_year`, `end_year`, `published`, `cover_img`, `images`, `status`, `chassis_code`, `chassis_type`, `is_featured`, `is_sale`, `sale_price`, `created_by`, `updated_by`, `deleted_by`, `deleted_at`, `created_at`, `updated_at`) VALUES
(7, 'test', 'ABC 0121', 1, 0.00, 200.00, 'test small description', 'details description', NULL, 1, 1, 1, NULL, NULL, NULL, 1, '[3]', 2011, 2018, 'No', NULL, NULL, 'Active', NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `products_old`
--

CREATE TABLE `products_old` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(300) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_number` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shop_id` bigint(20) UNSIGNED DEFAULT NULL,
  `brand_id` int(11) DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `small_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` double(8,2) NOT NULL,
  `buy_price` double(8,2) DEFAULT NULL,
  `stock` int(11) NOT NULL DEFAULT 0,
  `cover_img` varchar(300) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `images` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `product_attributes` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`product_attributes`)),
  `is_featured` tinyint(1) NOT NULL DEFAULT 0,
  `is_sale` tinyint(1) NOT NULL DEFAULT 0,
  `sale_price` double(8,2) DEFAULT NULL,
  `vehicle_maker` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `vehicle_model` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `vehicle_manufacturing_year` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_publish` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products_old`
--

INSERT INTO `products_old` (`id`, `name`, `product_number`, `shop_id`, `brand_id`, `description`, `small_description`, `price`, `buy_price`, `stock`, `cover_img`, `images`, `created_at`, `updated_at`, `product_attributes`, `is_featured`, `is_sale`, `sale_price`, `vehicle_maker`, `vehicle_model`, `vehicle_manufacturing_year`, `product_type`, `is_publish`) VALUES
(6, 'NAKAMICHI NBX25L subwoofer', NULL, NULL, NULL, '<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; line-height: normal; mso-outline-level: 1; background: white;\"><span style=\"font-size: 15.0pt; font-family: \'Century Gothic\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: \'Times New Roman\'; color: #454545; text-transform: uppercase; letter-spacing: 2.4pt; mso-font-kerning: 18.0pt;\">NAKAMICHI NBX25L</span></p>\r\n<div style=\"mso-element: para-border-div; border: none; border-bottom: solid windowtext 1.0pt; mso-border-bottom-alt: solid windowtext .75pt; padding: 0in 0in 1.0pt 0in;\">\r\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; text-align: center; line-height: normal; border: none; mso-border-bottom-alt: solid windowtext .75pt; padding: 0in; mso-padding-alt: 0in 0in 1.0pt 0in;\" align=\"center\"><span style=\"font-size: 8.0pt; font-family: \'Arial\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\'; display: none; mso-hide: all;\">Top of Form</span></p>\r\n</div>\r\n<div style=\"mso-element: para-border-div; border: none; border-top: solid windowtext 1.0pt; mso-border-top-alt: solid windowtext .75pt; padding: 1.0pt 0in 0in 0in;\">\r\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; text-align: center; line-height: normal; border: none; mso-border-top-alt: solid windowtext .75pt; padding: 0in; mso-padding-alt: 1.0pt 0in 0in 0in;\" align=\"center\"><span style=\"font-size: 8.0pt; font-family: \'Arial\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\'; display: none; mso-hide: all;\">Bottom of Form</span></p>\r\n</div>\r\n<p class=\"MsoNormal\" style=\"line-height: normal; mso-outline-level: 1; background: white; margin: 26.4pt 0in 9.6pt 0in;\"><span style=\"font-size: 16.5pt; font-family: \'Century Gothic\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: \'Times New Roman\'; color: #454545; text-transform: uppercase; letter-spacing: 2.4pt; mso-font-kerning: 18.0pt;\">DESCRIPTION</span></p>\r\n<p class=\"MsoNormal\" style=\"margin-bottom: 19.2pt; line-height: normal; background: white;\"><span style=\"font-size: 10.5pt; font-family: \'Century Gothic\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: \'Times New Roman\'; color: #454545;\">Our Nakamichi NBX25L wedge-shaped active subwoofer box features a 10\" subwoofer driver powered by our built-in amplifier featuring the same technologies as our amplifier line but tuned specifically for the driver.</span></p>\r\n<p class=\"MsoNormal\" style=\"margin-bottom: 19.2pt; line-height: normal; background: white;\"><span style=\"font-size: 10.5pt; font-family: \'Century Gothic\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: \'Times New Roman\'; color: #454545;\">Featuring 100 watts of RMS power, the NBX25L is designed to fit neatly in the boot, just behind the passenger seat, and provide an instant boost to the low frequencies from your original factory source unit or aftermarket units. Also included in the original design is our passive bass port for improved bass response.</span></p>\r\n<p class=\"MsoNormal\" style=\"margin-bottom: 19.2pt; line-height: normal; background: white;\"><span style=\"font-size: 10.5pt; font-family: \'Century Gothic\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: \'Times New Roman\'; color: #454545;\">Save the hassle of building your own subwoofer box with our pre-designed and tuned NBX25L.</span></p>\r\n<p class=\"MsoNormal\" style=\"line-height: normal; mso-outline-level: 1; background: white; margin: 26.4pt 0in 9.6pt 0in;\"><span style=\"font-size: 16.5pt; font-family: \'Century Gothic\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: \'Times New Roman\'; color: #454545; text-transform: uppercase; letter-spacing: 2.4pt; mso-font-kerning: 18.0pt;\">SPECIFICATIONS</span></p>\r\n<p class=\"MsoNormal\" style=\"mso-margin-top-alt: auto; mso-margin-bottom-alt: auto; margin-left: 22.5pt; text-indent: -.25in; line-height: normal; mso-list: l0 level1 lfo1; tab-stops: list .5in; background: white;\"><!-- [if !supportLists]--><span style=\"font-size: 10.0pt; mso-bidi-font-size: 10.5pt; font-family: Symbol; mso-fareast-font-family: Symbol; mso-bidi-font-family: Symbol; color: #454545;\"><span style=\"mso-list: Ignore;\">&middot;<span style=\"font: 7.0pt \'Times New Roman\';\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span></span><!--[endif]--><span style=\"font-size: 10.5pt; font-family: \'Century Gothic\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: \'Times New Roman\'; color: #454545;\">Woofer: 10&rdquo; (256mm)</span></p>\r\n<p class=\"MsoNormal\" style=\"mso-margin-top-alt: auto; mso-margin-bottom-alt: auto; margin-left: 22.5pt; text-indent: -.25in; line-height: normal; mso-list: l0 level1 lfo1; tab-stops: list .5in; background: white;\"><!-- [if !supportLists]--><span style=\"font-size: 10.0pt; mso-bidi-font-size: 10.5pt; font-family: Symbol; mso-fareast-font-family: Symbol; mso-bidi-font-family: Symbol; color: #454545;\"><span style=\"mso-list: Ignore;\">&middot;<span style=\"font: 7.0pt \'Times New Roman\';\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span></span><!--[endif]--><span style=\"font-size: 10.5pt; font-family: \'Century Gothic\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: \'Times New Roman\'; color: #454545;\">N-Power: 100W</span></p>\r\n<p class=\"MsoNormal\" style=\"mso-margin-top-alt: auto; mso-margin-bottom-alt: auto; margin-left: 22.5pt; text-indent: -.25in; line-height: normal; mso-list: l0 level1 lfo1; tab-stops: list .5in; background: white;\"><!-- [if !supportLists]--><span style=\"font-size: 10.0pt; mso-bidi-font-size: 10.5pt; font-family: Symbol; mso-fareast-font-family: Symbol; mso-bidi-font-family: Symbol; color: #454545;\"><span style=\"mso-list: Ignore;\">&middot;<span style=\"font: 7.0pt \'Times New Roman\';\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span></span><!--[endif]--><span style=\"font-size: 10.5pt; font-family: \'Century Gothic\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: \'Times New Roman\'; color: #454545;\">Peak Power: 1000W</span></p>\r\n<p class=\"MsoNormal\" style=\"mso-margin-top-alt: auto; mso-margin-bottom-alt: auto; margin-left: 22.5pt; text-indent: -.25in; line-height: normal; mso-list: l0 level1 lfo1; tab-stops: list .5in; background: white;\"><!-- [if !supportLists]--><span style=\"font-size: 10.0pt; mso-bidi-font-size: 10.5pt; font-family: Symbol; mso-fareast-font-family: Symbol; mso-bidi-font-family: Symbol; color: #454545;\"><span style=\"mso-list: Ignore;\">&middot;<span style=\"font: 7.0pt \'Times New Roman\';\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span></span><!--[endif]--><span style=\"font-size: 10.5pt; font-family: \'Century Gothic\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: \'Times New Roman\'; color: #454545;\">Impedance: 4Ω</span></p>\r\n<p class=\"MsoNormal\" style=\"mso-margin-top-alt: auto; mso-margin-bottom-alt: auto; margin-left: 22.5pt; text-indent: -.25in; line-height: normal; mso-list: l0 level1 lfo1; tab-stops: list .5in; background: white;\"><!-- [if !supportLists]--><span style=\"font-size: 10.0pt; mso-bidi-font-size: 10.5pt; font-family: Symbol; mso-fareast-font-family: Symbol; mso-bidi-font-family: Symbol; color: #454545;\"><span style=\"mso-list: Ignore;\">&middot;<span style=\"font: 7.0pt \'Times New Roman\';\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span></span><!--[endif]--><span style=\"font-size: 10.5pt; font-family: \'Century Gothic\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: \'Times New Roman\'; color: #454545;\">Frequency Response: 45-1.3kHZ</span></p>\r\n<p class=\"MsoNormal\" style=\"mso-margin-top-alt: auto; mso-margin-bottom-alt: auto; margin-left: 22.5pt; text-indent: -.25in; line-height: normal; mso-list: l0 level1 lfo1; tab-stops: list .5in; background: white;\"><!-- [if !supportLists]--><span style=\"font-size: 10.0pt; mso-bidi-font-size: 10.5pt; font-family: Symbol; mso-fareast-font-family: Symbol; mso-bidi-font-family: Symbol; color: #454545;\"><span style=\"mso-list: Ignore;\">&middot;<span style=\"font: 7.0pt \'Times New Roman\';\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span></span><!--[endif]--><span style=\"font-size: 10.5pt; font-family: \'Century Gothic\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: \'Times New Roman\'; color: #454545;\">Sensitivity (dB/W/m): 88 &plusmn;3dB</span></p>\r\n<p class=\"MsoNormal\" style=\"mso-margin-top-alt: auto; mso-margin-bottom-alt: auto; margin-left: 22.5pt; text-indent: -.25in; line-height: normal; mso-list: l0 level1 lfo1; tab-stops: list .5in; background: white;\"><!-- [if !supportLists]--><span style=\"font-size: 10.0pt; mso-bidi-font-size: 10.5pt; font-family: Symbol; mso-fareast-font-family: Symbol; mso-bidi-font-family: Symbol; color: #454545;\"><span style=\"mso-list: Ignore;\">&middot;<span style=\"font: 7.0pt \'Times New Roman\';\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span></span><!--[endif]--><span style=\"font-size: 10.5pt; font-family: \'Century Gothic\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: \'Times New Roman\'; color: #454545;\">Subwoofer Magnet: 120x60x20mm</span></p>\r\n<p class=\"MsoNormal\" style=\"mso-margin-top-alt: auto; mso-margin-bottom-alt: auto; margin-left: 22.5pt; text-indent: -.25in; line-height: normal; mso-list: l0 level1 lfo1; tab-stops: list .5in; background: white;\"><!-- [if !supportLists]--><span style=\"font-size: 10.0pt; mso-bidi-font-size: 10.5pt; font-family: Symbol; mso-fareast-font-family: Symbol; mso-bidi-font-family: Symbol; color: #454545;\"><span style=\"mso-list: Ignore;\">&middot;<span style=\"font: 7.0pt \'Times New Roman\';\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span></span><!--[endif]--><span style=\"font-size: 10.5pt; font-family: \'Century Gothic\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: \'Times New Roman\'; color: #454545;\">Power Requirements: 12DC Car Battery(Negative Ground)</span></p>\r\n<p class=\"MsoNormal\" style=\"mso-margin-top-alt: auto; mso-margin-bottom-alt: auto; margin-left: 22.5pt; text-indent: -.25in; line-height: normal; mso-list: l0 level1 lfo1; tab-stops: list .5in; background: white;\"><!-- [if !supportLists]--><span style=\"font-size: 10.0pt; mso-bidi-font-size: 10.5pt; font-family: Symbol; mso-fareast-font-family: Symbol; mso-bidi-font-family: Symbol; color: #454545;\"><span style=\"mso-list: Ignore;\">&middot;<span style=\"font: 7.0pt \'Times New Roman\';\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span></span><!--[endif]--><span style=\"font-size: 10.5pt; font-family: \'Century Gothic\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: \'Times New Roman\'; color: #454545;\">Power Supply Voltage: 14.4V(10.5V - 16V)</span></p>\r\n<p class=\"MsoNormal\" style=\"mso-margin-top-alt: auto; mso-margin-bottom-alt: auto; margin-left: 22.5pt; text-indent: -.25in; line-height: normal; mso-list: l0 level1 lfo1; tab-stops: list .5in; background: white;\"><!-- [if !supportLists]--><span style=\"font-size: 10.0pt; mso-bidi-font-size: 10.5pt; font-family: Symbol; mso-fareast-font-family: Symbol; mso-bidi-font-family: Symbol; color: #454545;\"><span style=\"mso-list: Ignore;\">&middot;<span style=\"font: 7.0pt \'Times New Roman\';\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span></span><!--[endif]--><span style=\"font-size: 10.5pt; font-family: \'Century Gothic\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: \'Times New Roman\'; color: #454545;\">Unit Dimension: 23.0&rdquo;&times;5.7&rdquo;&nbsp;/ 8.1&rdquo;&times;12.8&rdquo; (585x145 / 205x325mm)</span></p>', NULL, 22000.00, NULL, 0, 'products/March2021/nDinfmShH1rkGZPJF9Sd.png', NULL, '2021-03-28 08:42:00', '2021-03-29 05:44:57', '{\"Size\": null, \"Color\": null}', 1, 0, NULL, NULL, NULL, NULL, NULL, 0),
(7, 'PIONEER AVH-G225BT car multimedia', NULL, NULL, NULL, '<p>&nbsp;</p>\r\n<p class=\"MsoNormal\" style=\"margin-bottom: 3.75pt; line-height: normal; mso-outline-level: 1; background: white;\"><strong><span style=\"font-size: 22.5pt; font-family: \'Times New Roman\',\'serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-font-kerning: 18.0pt;\">AVH-G225BT</span></strong></p>\r\n<p class=\"MsoNormal\" style=\"margin-bottom: 15.0pt; line-height: normal; background: white;\"><span style=\"font-size: 12.0pt; font-family: \'Times New Roman\',\'serif\'; mso-fareast-font-family: \'Times New Roman\';\">&nbsp;</span></p>\r\n<p class=\"MsoNormal\" style=\"margin-bottom: 15.0pt; line-height: normal; background: white;\"><span style=\"font-size: 12.0pt; font-family: \'Times New Roman\',\'serif\'; mso-fareast-font-family: \'Times New Roman\';\">6.2&Prime; Multimedia AV Receiver with Bluetooth, USB &amp; Android Smartphone support.</span></p>\r\n<p class=\"MsoNormal\" style=\"margin-bottom: 15.0pt; line-height: normal; background: white;\"><span style=\"font-size: 12.0pt; font-family: \'Times New Roman\',\'serif\'; mso-fareast-font-family: \'Times New Roman\';\">&bull; Bluetooth<br />&bull; Android smartphone support<br />&bull; USB</span></p>\r\n<p style=\"background: white; margin: 0in 0in 15.0pt 0in;\">&nbsp;</p>\r\n<p style=\"background: white; margin: 0in 0in 15.0pt 0in;\">Enjoy all of your favorite content on the AVH-G225BT&rsquo;s large 6.2&rdquo; clear type resistive touchscreen, right in your car dashboard. Take your music and video collection with you on the road. Whether it is stored on CDs, DVDs, or USB devices the AVH-G225BT plays audio/video from almost any source.</p>\r\n<p style=\"background: white; margin: 0in 0in 15.0pt 0in;\">Additionally, this car AV player includes features like:</p>\r\n<p style=\"background: white; margin: 0in 0in 15.0pt 0in;\">Bluetooth hands-free calling with 3 phone memory and easy switching between handsets. Also including internal mic for easy installation</p>\r\n<p style=\"background: white; margin: 0in 0in 15.0pt 0in;\">Bluetooth audio streaming (AVRCP 1.5) to access your music including the ability to search without cables.</p>\r\n<p style=\"background: white; margin: 0in 0in 15.0pt 0in;\">Compatible with select Android smartphones (MTP mode),</p>\r\n<p style=\"background: white; margin: 0in 0in 15.0pt 0in;\">7 band graphic EQ.</p>\r\n<p class=\"MsoNormal\" style=\"background: white;\"><span style=\"font-size: 12.0pt; line-height: 107%; font-family: \'Times New Roman\',\'serif\'; mso-no-proof: yes;\"><br /><!--[endif]--></span></p>\r\n<h5 style=\"margin-top: 2.4pt; background: white;\"><u><span style=\"font-size: 12.0pt; line-height: 107%; font-family: \'Times New Roman\',\'serif\'; color: windowtext; text-transform: uppercase;\">REVERSE CAMERA-READY</span></u></h5>\r\n<p style=\"background: white; margin: 0in 0in 15.0pt 0in;\">Reversing can be a stressful experience. The reverse camera input allows you to connect an optional camera for improved safety (visibility of hazards) and peace of mind. Particularly when parking your vehicle or towing.</p>\r\n<p class=\"MsoNormal\" style=\"background: white;\"><span style=\"font-size: 12.0pt; line-height: 107%; font-family: \'Times New Roman\',\'serif\'; mso-no-proof: yes;\"><br /><!--[endif]--></span></p>\r\n<h5 style=\"margin-top: 2.4pt; background: white;\"><u><span style=\"font-size: 12.0pt; line-height: 107%; font-family: \'Times New Roman\',\'serif\'; color: windowtext; text-transform: uppercase;\">BLUETOOTH HANDS-FREE CALLING &amp; MUSIC STREAMING</span></u></h5>\r\n<p style=\"background: white; margin: 0in 0in 15.0pt 0in;\">Stay safe and obey local hands-free laws with built-in Bluetooth (HFP). Easily pair Bluetooth-enabled phones without having to go through complicated settings. When a registered Bluetooth device is in close proximity to the receiver, the auto connection function automatically pairs the smartphone.</p>\r\n<p style=\"background: white; margin: 0in 0in 15.0pt 0in;\">From hands-free calling, wireless audio streaming (A2DP) with artist, album, and song search, simple pairing, and control audio (AVRCP), Bluetooth&reg; wireless technology has made life in the vehicle much more convenient.</p>\r\n<h5 style=\"margin-top: 2.4pt; background: white;\"><u><span style=\"font-size: 12.0pt; line-height: 107%; font-family: \'Times New Roman\',\'serif\'; color: windowtext; text-transform: uppercase;\">ANDROID MUSIC SUPPORT</span></u></h5>\r\n<p style=\"background: white; margin: 0in 0in 15.0pt 0in;\">Take advantage of a wired USB connection to the receiver. The sound stays clean and clear, and the song, artist, time, and album details are user-friendly.</p>\r\n<p>&nbsp;</p>\r\n<p class=\"MsoNormal\" style=\"background: white;\"><span style=\"font-size: 12.0pt; line-height: 107%; font-family: \'Times New Roman\',\'serif\'; mso-no-proof: yes;\"><br /><!--[endif]--></span></p>\r\n<h5 style=\"margin-top: 2.4pt; background: white;\"><u><span style=\"font-size: 12.0pt; line-height: 107%; font-family: \'Times New Roman\',\'serif\'; color: windowtext; text-transform: uppercase;\">FRONT USB</span></u></h5>\r\n<p style=\"background: white; margin: 0in 0in 15.0pt 0in;\">USB Input &ndash; connect an Android smartphone or a USB device, directly to the front USB input and enjoy clean, clear sound.</p>\r\n<p style=\"background: white; margin: 0in 0in 15.0pt 0in;\">*not compatible with iPhone/iPod</p>\r\n<p class=\"MsoNormal\"><span style=\"font-size: 12.0pt; line-height: 107%; font-family: \'Times New Roman\',\'serif\';\">&nbsp;</span></p>\r\n<p class=\"MsoNormal\"><span style=\"font-size: 12.0pt; line-height: 107%; font-family: \'Times New Roman\',\'serif\';\">&nbsp;</span></p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>', NULL, 0.00, NULL, 0, 'products/March2021/8eSUUFZQe2TXnogfEQJN.png', NULL, '2021-03-28 08:48:00', '2021-03-29 05:43:31', '{\"Size\": null, \"Color\": null}', 1, 0, NULL, NULL, NULL, NULL, NULL, 0),
(8, 'Nakamichi NBF8 Under seat subwoofer', NULL, NULL, NULL, '<h1><span style=\"color: #333333;\">Nakamichi NBF8.0A 8\" 1100Watts 2 Ohms Active Sub Car Underseat Subwoofer</span></h1>\r\n<h1 style=\"background: white; margin: 26.4pt 0in 9.6pt 0in;\"><span style=\"font-size: 12.0pt; text-transform: uppercase; letter-spacing: 2.4pt; font-weight: normal;\">DESCRIPTION</span></h1>\r\n<p style=\"background: white; margin: 0in 0in 19.2pt 0in;\">Easily compliment your existing sound system with earth shaking bass in your vehicle quickly and easily with the Nakamichi NBF8.1A.<br /><br />With its ultra-slim profile, the Nakamichi NBF8.1A fits under most modern car seats, allowing you to get close to the bass. With its tough, all-aluminum chassis and metal protective grille, the Nakamichi NBF8.1A is well protected against shocks, drops, and heat.<br /><br />Both high and low-level inputs give you plenty of options for installation. You can easily install it with both factory source units as well as aftermarket receivers!<br /><br />With 150 watts of RMS power and 1500 watts of peak power, enjoy improved bass performance without major modifications involved with regular subwoofer upgrades.&nbsp;<br /><br />Other functions include a built-in bass boost, a low pass filter, as well as input gain, allowing you to tune the bass just as you like it. You can also add in a remote to control the bass response in accordance with what\'s playing.</p>\r\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; line-height: normal; background: white;\"><strong><span style=\"font-size: 12.0pt; font-family: \'Times New Roman\',\'serif\'; mso-fareast-font-family: \'Times New Roman\';\">Specifications:</span></strong></p>\r\n<p class=\"MsoNormal\" style=\"text-indent: -.25in; line-height: normal; mso-list: l1 level1 lfo1; tab-stops: list .5in; background: white; margin: 0in 0in .0001pt 15.0pt;\"><!-- [if !supportLists]--><span style=\"font-size: 10.0pt; mso-bidi-font-size: 12.0pt; font-family: Symbol; mso-fareast-font-family: Symbol; mso-bidi-font-family: Symbol;\"><span style=\"mso-list: Ignore;\">&middot;<span style=\"font: 7.0pt \'Times New Roman\';\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span></span><!--[endif]--><span style=\"font-size: 12.0pt; font-family: \'Times New Roman\',\'serif\'; mso-fareast-font-family: \'Times New Roman\';\">N-Power: 100W</span></p>\r\n<p class=\"MsoNormal\" style=\"text-indent: -.25in; line-height: normal; mso-list: l1 level1 lfo1; tab-stops: list .5in; background: white; margin: 0in 0in .0001pt 15.0pt;\"><!-- [if !supportLists]--><span style=\"font-size: 10.0pt; mso-bidi-font-size: 12.0pt; font-family: Symbol; mso-fareast-font-family: Symbol; mso-bidi-font-family: Symbol;\"><span style=\"mso-list: Ignore;\">&middot;<span style=\"font: 7.0pt \'Times New Roman\';\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span></span><!--[endif]--><span style=\"font-size: 12.0pt; font-family: \'Times New Roman\',\'serif\'; mso-fareast-font-family: \'Times New Roman\';\">Peak Power: 1100W</span></p>\r\n<p class=\"MsoNormal\" style=\"text-indent: -.25in; line-height: normal; mso-list: l1 level1 lfo1; tab-stops: list .5in; background: white; margin: 0in 0in .0001pt 15.0pt;\"><!-- [if !supportLists]--><span style=\"font-size: 10.0pt; mso-bidi-font-size: 12.0pt; font-family: Symbol; mso-fareast-font-family: Symbol; mso-bidi-font-family: Symbol;\"><span style=\"mso-list: Ignore;\">&middot;<span style=\"font: 7.0pt \'Times New Roman\';\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span></span><!--[endif]--><span style=\"font-size: 12.0pt; font-family: \'Times New Roman\',\'serif\'; mso-fareast-font-family: \'Times New Roman\';\">THD: &lt;0.2%</span></p>\r\n<p class=\"MsoNormal\" style=\"text-indent: -.25in; line-height: normal; mso-list: l1 level1 lfo1; tab-stops: list .5in; background: white; margin: 0in 0in .0001pt 15.0pt;\"><!-- [if !supportLists]--><span style=\"font-size: 10.0pt; mso-bidi-font-size: 12.0pt; font-family: Symbol; mso-fareast-font-family: Symbol; mso-bidi-font-family: Symbol;\"><span style=\"mso-list: Ignore;\">&middot;<span style=\"font: 7.0pt \'Times New Roman\';\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span></span><!--[endif]--><span style=\"font-size: 12.0pt; font-family: \'Times New Roman\',\'serif\'; mso-fareast-font-family: \'Times New Roman\';\">Signal-to-noise ratio: &gt;90dB</span></p>\r\n<p class=\"MsoNormal\" style=\"text-indent: -.25in; line-height: normal; mso-list: l1 level1 lfo1; tab-stops: list .5in; background: white; margin: 0in 0in .0001pt 15.0pt;\"><!-- [if !supportLists]--><span style=\"font-size: 10.0pt; mso-bidi-font-size: 12.0pt; font-family: Symbol; mso-fareast-font-family: Symbol; mso-bidi-font-family: Symbol;\"><span style=\"mso-list: Ignore;\">&middot;<span style=\"font: 7.0pt \'Times New Roman\';\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span></span><!--[endif]--><span style=\"font-size: 12.0pt; font-family: \'Times New Roman\',\'serif\'; mso-fareast-font-family: \'Times New Roman\';\">Frequency Response: 20Hz -150Hz</span></p>\r\n<p class=\"MsoNormal\" style=\"text-indent: -.25in; line-height: normal; mso-list: l1 level1 lfo1; tab-stops: list .5in; background: white; margin: 0in 0in .0001pt 15.0pt;\"><!-- [if !supportLists]--><span style=\"font-size: 10.0pt; mso-bidi-font-size: 12.0pt; font-family: Symbol; mso-fareast-font-family: Symbol; mso-bidi-font-family: Symbol;\"><span style=\"mso-list: Ignore;\">&middot;<span style=\"font: 7.0pt \'Times New Roman\';\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span></span><!--[endif]--><span style=\"font-size: 12.0pt; font-family: \'Times New Roman\',\'serif\'; mso-fareast-font-family: \'Times New Roman\';\">Input sensitivity, high level: 1.0V</span></p>\r\n<p class=\"MsoNormal\" style=\"text-indent: -.25in; line-height: normal; mso-list: l1 level1 lfo1; tab-stops: list .5in; background: white; margin: 0in 0in .0001pt 15.0pt;\"><!-- [if !supportLists]--><span style=\"font-size: 10.0pt; mso-bidi-font-size: 12.0pt; font-family: Symbol; mso-fareast-font-family: Symbol; mso-bidi-font-family: Symbol;\"><span style=\"mso-list: Ignore;\">&middot;<span style=\"font: 7.0pt \'Times New Roman\';\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span></span><!--[endif]--><span style=\"font-size: 12.0pt; font-family: \'Times New Roman\',\'serif\'; mso-fareast-font-family: \'Times New Roman\';\">Input sensitivity, low level :&nbsp;300mV</span></p>\r\n<p class=\"MsoNormal\" style=\"text-indent: -.25in; line-height: normal; mso-list: l1 level1 lfo1; tab-stops: list .5in; background: white; margin: 0in 0in .0001pt 15.0pt;\"><!-- [if !supportLists]--><span style=\"font-size: 10.0pt; mso-bidi-font-size: 12.0pt; font-family: Symbol; mso-fareast-font-family: Symbol; mso-bidi-font-family: Symbol;\"><span style=\"mso-list: Ignore;\">&middot;<span style=\"font: 7.0pt \'Times New Roman\';\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span></span><!--[endif]--><span style=\"font-size: 12.0pt; font-family: \'Times New Roman\',\'serif\'; mso-fareast-font-family: \'Times New Roman\';\">Low pass filter : 50Hz -150Hz</span></p>\r\n<p class=\"MsoNormal\" style=\"text-indent: -.25in; line-height: normal; mso-list: l1 level1 lfo1; tab-stops: list .5in; background: white; margin: 0in 0in .0001pt 15.0pt;\"><!-- [if !supportLists]--><span style=\"font-size: 10.0pt; mso-bidi-font-size: 12.0pt; font-family: Symbol; mso-fareast-font-family: Symbol; mso-bidi-font-family: Symbol;\"><span style=\"mso-list: Ignore;\">&middot;<span style=\"font: 7.0pt \'Times New Roman\';\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span></span><!--[endif]--><span style=\"font-size: 12.0pt; font-family: \'Times New Roman\',\'serif\'; mso-fareast-font-family: \'Times New Roman\';\">Bass Boost: 0 to 12dB</span></p>\r\n<p class=\"MsoNormal\" style=\"text-indent: -.25in; line-height: normal; mso-list: l1 level1 lfo1; tab-stops: list .5in; background: white; margin: 0in 0in .0001pt 15.0pt;\"><!-- [if !supportLists]--><span style=\"font-size: 10.0pt; mso-bidi-font-size: 12.0pt; font-family: Symbol; mso-fareast-font-family: Symbol; mso-bidi-font-family: Symbol;\"><span style=\"mso-list: Ignore;\">&middot;<span style=\"font: 7.0pt \'Times New Roman\';\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span></span><!--[endif]--><span style=\"font-size: 12.0pt; font-family: \'Times New Roman\',\'serif\'; mso-fareast-font-family: \'Times New Roman\';\">Subsonic Filter: 20Hz(Fixed)</span></p>\r\n<p class=\"MsoNormal\" style=\"text-indent: -.25in; line-height: normal; mso-list: l1 level1 lfo1; tab-stops: list .5in; background: white; margin: 0in 0in .0001pt 15.0pt;\"><!-- [if !supportLists]--><span style=\"font-size: 10.0pt; mso-bidi-font-size: 12.0pt; font-family: Symbol; mso-fareast-font-family: Symbol; mso-bidi-font-family: Symbol;\"><span style=\"mso-list: Ignore;\">&middot;<span style=\"font: 7.0pt \'Times New Roman\';\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span></span><!--[endif]--><span style=\"font-size: 12.0pt; font-family: \'Times New Roman\',\'serif\'; mso-fareast-font-family: \'Times New Roman\';\">Fuse Rating: 20A</span></p>\r\n<p class=\"MsoNormal\" style=\"text-indent: -.25in; line-height: normal; mso-list: l1 level1 lfo1; tab-stops: list .5in; background: white; margin: 0in 0in .0001pt 15.0pt;\"><!-- [if !supportLists]--><span style=\"font-size: 10.0pt; mso-bidi-font-size: 12.0pt; font-family: Symbol; mso-fareast-font-family: Symbol; mso-bidi-font-family: Symbol;\"><span style=\"mso-list: Ignore;\">&middot;<span style=\"font: 7.0pt \'Times New Roman\';\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span></span><!--[endif]--><span style=\"font-size: 12.0pt; font-family: \'Times New Roman\',\'serif\'; mso-fareast-font-family: \'Times New Roman\';\">Subwoofer: 8inch,2ohm</span></p>\r\n<p class=\"MsoNormal\" style=\"text-indent: -.25in; line-height: normal; mso-list: l1 level1 lfo1; tab-stops: list .5in; background: white; margin: 0in 0in .0001pt 15.0pt;\"><!-- [if !supportLists]--><span style=\"font-size: 10.0pt; mso-bidi-font-size: 12.0pt; font-family: Symbol; mso-fareast-font-family: Symbol; mso-bidi-font-family: Symbol;\"><span style=\"mso-list: Ignore;\">&middot;<span style=\"font: 7.0pt \'Times New Roman\';\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span></span><!--[endif]--><span style=\"font-size: 12.0pt; font-family: \'Times New Roman\',\'serif\'; mso-fareast-font-family: \'Times New Roman\';\">Net Weight: 4.4kg</span></p>\r\n<p class=\"MsoNormal\" style=\"text-indent: -.25in; line-height: normal; mso-list: l1 level1 lfo1; tab-stops: list .5in; background: white; margin: 0in 0in .0001pt 15.0pt;\"><!-- [if !supportLists]--><span style=\"font-size: 10.0pt; mso-bidi-font-size: 12.0pt; font-family: Symbol; mso-fareast-font-family: Symbol; mso-bidi-font-family: Symbol;\"><span style=\"mso-list: Ignore;\">&middot;<span style=\"font: 7.0pt \'Times New Roman\';\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span></span><!--[endif]--><span style=\"font-size: 12.0pt; font-family: \'Times New Roman\',\'serif\'; mso-fareast-font-family: \'Times New Roman\';\">Dimensions(LxWxH) mm: 345x250x77mm</span></p>\r\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; line-height: normal; background: white;\"><strong><span style=\"font-size: 12.0pt; font-family: \'Times New Roman\',\'serif\'; mso-fareast-font-family: \'Times New Roman\';\">Content:</span></strong></p>\r\n<p class=\"MsoNormal\" style=\"text-indent: -.25in; line-height: normal; mso-list: l0 level1 lfo2; tab-stops: list .5in; background: white; margin: 0in 0in .0001pt 15.0pt;\"><!-- [if !supportLists]--><span style=\"font-size: 10.0pt; mso-bidi-font-size: 12.0pt; font-family: Symbol; mso-fareast-font-family: Symbol; mso-bidi-font-family: Symbol;\"><span style=\"mso-list: Ignore;\">&middot;<span style=\"font: 7.0pt \'Times New Roman\';\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span></span><!--[endif]--><span style=\"font-size: 12.0pt; font-family: \'Times New Roman\',\'serif\'; mso-fareast-font-family: \'Times New Roman\';\">1 x Underseat Subwoofer</span></p>\r\n<p class=\"MsoNormal\" style=\"text-indent: -.25in; line-height: normal; mso-list: l0 level1 lfo2; tab-stops: list .5in; background: white; margin: 0in 0in .0001pt 15.0pt;\"><!-- [if !supportLists]--><span style=\"font-size: 10.0pt; mso-bidi-font-size: 12.0pt; font-family: Symbol; mso-fareast-font-family: Symbol; mso-bidi-font-family: Symbol;\"><span style=\"mso-list: Ignore;\">&middot;<span style=\"font: 7.0pt \'Times New Roman\';\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span></span><!--[endif]--><span style=\"font-size: 12.0pt; font-family: \'Times New Roman\',\'serif\'; mso-fareast-font-family: \'Times New Roman\';\">1x Remote Control</span></p>\r\n<p class=\"MsoNormal\" style=\"text-indent: -.25in; line-height: normal; mso-list: l0 level1 lfo2; tab-stops: list .5in; background: white; margin: 0in 0in .0001pt 15.0pt;\"><!-- [if !supportLists]--><span style=\"font-size: 10.0pt; mso-bidi-font-size: 12.0pt; font-family: Symbol; mso-fareast-font-family: Symbol; mso-bidi-font-family: Symbol;\"><span style=\"mso-list: Ignore;\">&middot;<span style=\"font: 7.0pt \'Times New Roman\';\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span></span><!--[endif]--><span style=\"font-size: 12.0pt; font-family: \'Times New Roman\',\'serif\'; mso-fareast-font-family: \'Times New Roman\';\">Manual</span></p>\r\n<p class=\"MsoNormal\" style=\"text-indent: -.25in; line-height: normal; mso-list: l0 level1 lfo2; tab-stops: list .5in; background: white; margin: 0in 0in .0001pt 15.0pt;\"><!-- [if !supportLists]--><span style=\"font-size: 10.0pt; mso-bidi-font-size: 12.0pt; font-family: Symbol; mso-fareast-font-family: Symbol; mso-bidi-font-family: Symbol;\"><span style=\"mso-list: Ignore;\">&middot;<span style=\"font: 7.0pt \'Times New Roman\';\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span></span><!--[endif]--><span style=\"font-size: 12.0pt; font-family: \'Times New Roman\',\'serif\'; mso-fareast-font-family: \'Times New Roman\';\">Fitting as per Manufacturer</span></p>', NULL, 0.00, NULL, 0, 'products/March2021/QYpj2LwGcaYo6he8qGl8.jpg', NULL, '2021-03-28 08:57:00', '2021-03-29 05:43:05', '{\"Size\": null, \"Color\": null}', 1, 0, NULL, NULL, NULL, NULL, NULL, 0),
(9, 'Nakamichi NAM5210-A9 android player', NULL, NULL, NULL, '<p class=\"MsoNormal\" style=\"margin-bottom: 0.0001pt; line-height: normal; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"font-size: 15.0pt; font-family: \'Times New Roman\',\'serif\'; mso-fareast-font-family: \'Times New Roman\'; text-transform: uppercase; letter-spacing: 2.4pt; mso-font-kerning: 18.0pt;\">NAKAMICHI NAM5210-A9</span></p>\r\n<div style=\"mso-element: para-border-div; border: none; border-bottom: solid windowtext 1.0pt; mso-border-bottom-alt: solid windowtext .75pt; padding: 0in 0in 1.0pt 0in;\">\r\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; text-align: center; line-height: normal; border: none; mso-border-bottom-alt: solid windowtext .75pt; padding: 0in; mso-padding-alt: 0in 0in 1.0pt 0in;\" align=\"center\"><span style=\"font-size: 8.0pt; font-family: \'Times New Roman\',\'serif\'; mso-fareast-font-family: \'Times New Roman\'; display: none; mso-hide: all;\">Top of Form</span></p>\r\n</div>\r\n<div style=\"mso-element: para-border-div; border: none; border-top: solid windowtext 1.0pt; mso-border-top-alt: solid windowtext .75pt; padding: 1.0pt 0in 0in 0in;\">\r\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; text-align: center; line-height: normal; border: none; mso-border-top-alt: solid windowtext .75pt; padding: 0in; mso-padding-alt: 1.0pt 0in 0in 0in;\" align=\"center\"><span style=\"font-size: 8.0pt; font-family: \'Times New Roman\',\'serif\'; mso-fareast-font-family: \'Times New Roman\'; display: none; mso-hide: all;\">Bottom of Form</span></p>\r\n</div>\r\n<p class=\"MsoNormal\" style=\"margin: 26.4pt 0in 9.6pt; line-height: normal; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"font-size: 16.5pt; font-family: \'Times New Roman\',\'serif\'; mso-fareast-font-family: \'Times New Roman\'; text-transform: uppercase; letter-spacing: 2.4pt; mso-font-kerning: 18.0pt;\">SPECIFICATIONS</span></p>\r\n<p class=\"MsoNormal\" style=\"margin-left: 22.5pt; text-indent: -0.25in; line-height: normal; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><!-- [if !supportLists]--><span style=\"font-size: 10.0pt; mso-bidi-font-size: 10.5pt; font-family: Symbol; mso-fareast-font-family: Symbol; mso-bidi-font-family: Symbol;\">&middot;<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: \'Times New Roman\';\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span><!--[endif]--><span style=\"font-size: 10.5pt; font-family: \'Times New Roman\',\'serif\'; mso-fareast-font-family: \'Times New Roman\';\">9\" Multi-Media Receiver</span></p>\r\n<p class=\"MsoNormal\" style=\"margin-left: 22.5pt; text-indent: -0.25in; line-height: normal; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><!-- [if !supportLists]--><span style=\"font-size: 10.0pt; mso-bidi-font-size: 10.5pt; font-family: Symbol; mso-fareast-font-family: Symbol; mso-bidi-font-family: Symbol;\">&middot;<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: \'Times New Roman\';\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span><!--[endif]--><span style=\"font-size: 10.5pt; font-family: \'Times New Roman\',\'serif\'; mso-fareast-font-family: \'Times New Roman\';\">Android 9.0</span></p>\r\n<p class=\"MsoNormal\" style=\"margin-left: 22.5pt; text-indent: -0.25in; line-height: normal; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><!-- [if !supportLists]--><span style=\"font-size: 10.0pt; mso-bidi-font-size: 10.5pt; font-family: Symbol; mso-fareast-font-family: Symbol; mso-bidi-font-family: Symbol;\">&middot;<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: \'Times New Roman\';\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span><!--[endif]--><span style=\"font-size: 10.5pt; font-family: \'Times New Roman\',\'serif\'; mso-fareast-font-family: \'Times New Roman\';\">Built-in Bluetooth</span></p>\r\n<p class=\"MsoNormal\" style=\"margin-top: 26.4pt; line-height: normal; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"font-size: 16.5pt; font-family: \'Times New Roman\',\'serif\'; mso-fareast-font-family: \'Times New Roman\'; text-transform: uppercase; letter-spacing: 2.4pt; mso-font-kerning: 18.0pt;\">DETAILED SPECIFICATIONS</span></p>\r\n<table class=\"MsoNormalTable\" style=\"width: 456.65pt; border-collapse: collapse; mso-yfti-tbllook: 1184; mso-padding-alt: 0in 0in 0in 0in;\" border=\"0\" width=\"609\" cellspacing=\"0\" cellpadding=\"0\">\r\n<tbody>\r\n<tr style=\"mso-yfti-irow: 0; mso-yfti-firstrow: yes; height: 13.8pt;\">\r\n<td style=\"width: 228.3pt; border: none; border-bottom: solid #E3E3E3 1.0pt; mso-border-bottom-alt: solid #E3E3E3 .75pt; padding: 13.5pt 7.5pt 13.5pt 0in; height: 13.8pt;\" width=\"304\">\r\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; line-height: normal;\"><span style=\"font-size: 9.0pt; font-family: \'Times New Roman\',\'serif\'; mso-fareast-font-family: \'Times New Roman\';\">Screen Size</span></p>\r\n</td>\r\n<td style=\"width: 228.3pt; border: none; border-bottom: solid #E3E3E3 1.0pt; mso-border-bottom-alt: solid #E3E3E3 .75pt; padding: 13.5pt 0in 13.5pt 7.5pt; height: 13.8pt;\" width=\"304\">\r\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; line-height: normal;\"><span style=\"font-size: 9.0pt; font-family: \'Times New Roman\',\'serif\'; mso-fareast-font-family: \'Times New Roman\';\">9\"</span></p>\r\n</td>\r\n</tr>\r\n<tr style=\"mso-yfti-irow: 1; height: 13.8pt;\">\r\n<td style=\"border: none; border-bottom: solid #E3E3E3 1.0pt; mso-border-bottom-alt: solid #E3E3E3 .75pt; padding: 13.5pt 7.5pt 13.5pt 0in; height: 13.8pt;\">\r\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; line-height: normal;\"><span style=\"font-size: 9.0pt; font-family: \'Times New Roman\',\'serif\'; mso-fareast-font-family: \'Times New Roman\';\">FM Frequency Range</span></p>\r\n</td>\r\n<td style=\"border: none; border-bottom: solid #E3E3E3 1.0pt; mso-border-bottom-alt: solid #E3E3E3 .75pt; padding: 13.5pt 0in 13.5pt 7.5pt; height: 13.8pt;\">\r\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; line-height: normal;\"><span style=\"font-size: 9.0pt; font-family: \'Times New Roman\',\'serif\'; mso-fareast-font-family: \'Times New Roman\';\">87.5-108.0MHZ</span></p>\r\n</td>\r\n</tr>\r\n<tr style=\"mso-yfti-irow: 2; height: 13.8pt;\">\r\n<td style=\"border: none; border-bottom: solid #E3E3E3 1.0pt; mso-border-bottom-alt: solid #E3E3E3 .75pt; padding: 13.5pt 7.5pt 13.5pt 0in; height: 13.8pt;\">\r\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; line-height: normal;\"><span style=\"font-size: 9.0pt; font-family: \'Times New Roman\',\'serif\'; mso-fareast-font-family: \'Times New Roman\';\">Max Power</span></p>\r\n</td>\r\n<td style=\"border: none; border-bottom: solid #E3E3E3 1.0pt; mso-border-bottom-alt: solid #E3E3E3 .75pt; padding: 13.5pt 0in 13.5pt 7.5pt; height: 13.8pt;\">\r\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; line-height: normal;\"><span style=\"font-size: 9.0pt; font-family: \'Times New Roman\',\'serif\'; mso-fareast-font-family: \'Times New Roman\';\">4x50W</span></p>\r\n</td>\r\n</tr>\r\n<tr style=\"mso-yfti-irow: 3; mso-yfti-lastrow: yes; height: 13.8pt;\">\r\n<td style=\"border: none; border-bottom: solid #E3E3E3 1.0pt; mso-border-bottom-alt: solid #E3E3E3 .75pt; padding: 13.5pt 7.5pt 13.5pt 0in; height: 13.8pt;\">\r\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; line-height: normal;\"><span style=\"font-size: 9.0pt; font-family: \'Times New Roman\',\'serif\'; mso-fareast-font-family: \'Times New Roman\';\">Net Weight</span></p>\r\n</td>\r\n<td style=\"border: none; border-bottom: solid #E3E3E3 1.0pt; mso-border-bottom-alt: solid #E3E3E3 .75pt; padding: 13.5pt 0in 13.5pt 7.5pt; height: 13.8pt;\">\r\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; line-height: normal;\"><span style=\"font-size: 9.0pt; font-family: \'Times New Roman\',\'serif\'; mso-fareast-font-family: \'Times New Roman\';\">0.75kg</span></p>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p>&nbsp;</p>\r\n<p class=\"MsoNormal\"><span style=\"font-family: \'Times New Roman\',\'serif\';\">&nbsp;</span></p>', NULL, 0.00, NULL, 0, 'products/March2021/zvlhflXoqMEMHeEWWYAa.jpg', NULL, '2021-03-28 08:59:00', '2021-03-29 05:42:44', '{\"Size\": null, \"Color\": null}', 1, 0, NULL, NULL, NULL, NULL, NULL, 0),
(10, 'DLR lights for toyota C-HR', NULL, NULL, NULL, '<p><span style=\"color: #202124; font-family: arial, sans-serif; font-size: 16px;\">A daytime running lamp (</span><strong style=\"color: #202124; font-family: arial, sans-serif; font-size: 16px;\">DRL</strong><span style=\"color: #202124; font-family: arial, sans-serif; font-size: 16px;\">, also daytime running&nbsp;</span><strong style=\"color: #202124; font-family: arial, sans-serif; font-size: 16px;\">light</strong><span style=\"color: #202124; font-family: arial, sans-serif; font-size: 16px;\">) is an automotive lighting and bicycle lighting device on the front of a roadgoing motor&nbsp;</span><strong style=\"color: #202124; font-family: arial, sans-serif; font-size: 16px;\">vehicle</strong><span style=\"color: #202124; font-family: arial, sans-serif; font-size: 16px;\">&nbsp;or bicycle, automatically switched on when the&nbsp;</span><strong style=\"color: #202124; font-family: arial, sans-serif; font-size: 16px;\">vehicle\'s</strong><span style=\"color: #202124; font-family: arial, sans-serif; font-size: 16px;\">&nbsp;handbrake has been pulled down or engaged in-gear, emitting white, yellow, or amber&nbsp;</span><strong style=\"color: #202124; font-family: arial, sans-serif; font-size: 16px;\">light</strong><span style=\"color: #202124; font-family: arial, sans-serif; font-size: 16px;\">.</span></p>', NULL, 0.00, NULL, 0, 'products/March2021/ahgqHK8BeOTWZPvGpAF2.jpg', NULL, '2021-03-28 09:05:00', '2021-03-28 10:49:56', '{\"Size\": null, \"Color\": null}', 1, 0, NULL, NULL, NULL, NULL, NULL, 0),
(11, 'castrol-magnetic', NULL, NULL, NULL, '<p>&nbsp;</p>\r\n<p class=\"MsoNormal\"><strong><span style=\"font-size: 16.0pt; mso-bidi-font-size: 12.0pt; line-height: 107%; font-family: \'Times New Roman\',\'serif\';\">CASTROL MAGNATEC 10W40 4 LITERS</span></strong></p>\r\n<p class=\"MsoNormal\"><span style=\"font-size: 12.0pt; line-height: 107%; font-family: \'Times New Roman\',\'serif\';\">&nbsp;</span></p>\r\n<p class=\"MsoNormal\"><strong><span style=\"font-size: 16.0pt; mso-bidi-font-size: 12.0pt; line-height: 107%; font-family: \'Times New Roman\',\'serif\';\">Product Description</span></strong></p>\r\n<p class=\"MsoNormal\"><span style=\"font-size: 12.0pt; line-height: 107%; font-family: \'Times New Roman\',\'serif\';\">&nbsp;</span></p>\r\n<p class=\"MsoNormal\"><strong><span style=\"font-size: 12.0pt; line-height: 107%; font-family: \'Times New Roman\',\'serif\';\">MANUFACTURER</span></strong></p>\r\n<p class=\"MsoNormal\"><span style=\"font-size: 12.0pt; line-height: 107%; font-family: \'Times New Roman\',\'serif\';\">&nbsp;</span></p>\r\n<p class=\"MsoNormal\"><span style=\"font-size: 12.0pt; line-height: 107%; font-family: \'Times New Roman\',\'serif\';\">Castrol</span></p>\r\n<p class=\"MsoNormal\"><span style=\"font-size: 12.0pt; line-height: 107%; font-family: \'Times New Roman\',\'serif\';\">&nbsp;</span></p>\r\n<p class=\"MsoNormal\"><strong><span style=\"font-size: 12.0pt; line-height: 107%; font-family: \'Times New Roman\',\'serif\';\">PRODUCT DIMENSIONS</span></strong></p>\r\n<p class=\"MsoNormal\"><span style=\"font-size: 12.0pt; line-height: 107%; font-family: \'Times New Roman\',\'serif\';\">&nbsp;</span></p>\r\n<p class=\"MsoNormal\"><span style=\"font-size: 12.0pt; line-height: 107%; font-family: \'Times New Roman\',\'serif\';\">26 x 9 x 26 cm; 4.2 Kilograms</span></p>\r\n<p class=\"MsoNormal\"><span style=\"font-size: 12.0pt; line-height: 107%; font-family: \'Times New Roman\',\'serif\';\">&nbsp;</span></p>\r\n<p class=\"MsoNormal\"><strong><span style=\"font-size: 12.0pt; line-height: 107%; font-family: \'Times New Roman\',\'serif\';\">MANUFACTURER REFERENCE</span></strong></p>\r\n<p class=\"MsoNormal\"><span style=\"font-size: 12.0pt; line-height: 107%; font-family: \'Times New Roman\',\'serif\';\">&nbsp;</span></p>\r\n<p class=\"MsoNormal\"><span style=\"font-size: 12.0pt; line-height: 107%; font-family: \'Times New Roman\',\'serif\';\">10W40</span></p>\r\n<p class=\"MsoNormal\"><span style=\"font-size: 12.0pt; line-height: 107%; font-family: \'Times New Roman\',\'serif\';\">&nbsp;</span></p>\r\n<p class=\"MsoNormal\"><strong><span style=\"font-size: 12.0pt; line-height: 107%; font-family: \'Times New Roman\',\'serif\';\">ITEM WEIGHT</span></strong></p>\r\n<p class=\"MsoNormal\"><span style=\"font-size: 12.0pt; line-height: 107%; font-family: \'Times New Roman\',\'serif\';\">4.2 kg</span></p>\r\n<table class=\"MsoNormalTable\" style=\"border-collapse: collapse; mso-yfti-tbllook: 1184;\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\r\n<tbody>\r\n<tr>\r\n<td style=\"padding: 7.5pt 7.5pt 7.5pt 7.5pt;\">&nbsp;</td>\r\n<td style=\"padding: 0in 0in 0in 0in;\">&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td style=\"padding: 7.5pt 7.5pt 7.5pt 7.5pt;\">&nbsp;</td>\r\n<td style=\"padding: 0in 0in 0in 0in;\">&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td style=\"padding: 7.5pt 7.5pt 7.5pt 7.5pt;\">&nbsp;</td>\r\n<td style=\"padding: 0in 0in 0in 0in;\">&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td style=\"padding: 7.5pt 7.5pt 7.5pt 7.5pt;\">&nbsp;</td>\r\n</tr>\r\n</tbody>\r\n</table>', NULL, 0.00, NULL, 0, 'products/March2021/tO8Z4qvidWpdQ1fOomPG.png', NULL, '2021-03-28 09:08:00', '2021-03-29 09:45:35', '{\"Size\": null, \"Color\": null}', 1, 0, NULL, NULL, NULL, NULL, NULL, 0);
INSERT INTO `products_old` (`id`, `name`, `product_number`, `shop_id`, `brand_id`, `description`, `small_description`, `price`, `buy_price`, `stock`, `cover_img`, `images`, `created_at`, `updated_at`, `product_attributes`, `is_featured`, `is_sale`, `sale_price`, `vehicle_maker`, `vehicle_model`, `vehicle_manufacturing_year`, `product_type`, `is_publish`) VALUES
(12, 'CITGARD_700_Synthetic-Blend_EngineOils', NULL, 4, NULL, '<p style=\"margin-top: 0in; mso-line-height-alt: 21.0pt; mso-outline-level: 2; background: #EEEEEE;\"><span style=\"font-size: 24.0pt; font-family: \'Arial\',\'sans-serif\'; text-transform: uppercase; mso-font-kerning: 18.0pt;\">CITGARD 700 SYNTHETIC BLEND ENGINE OILS</span></p>\r\n<p style=\"margin-top: 0in; line-height: 21.0pt; background: #EEEEEE;\"><span style=\"font-size: 11.5pt; font-family: \'Helvetica\',\'sans-serif\'; color: #333333;\">CITGO CITGARD 700 Synthetic Blend Engine Oils deliver the performance needed for newer engine designs while improving performance in older engines. Engineered with a proprietary additive technology that protects engines running at higher operating temperatures and fuel injection pressures, while meeting tighter wear limits and lower emission requirements. SAE 10W-30 viscosity grade assists in attaining the new Phase II fuel efficiency standards by improving fuel economy, increasing cold start-up lubrication, and providing superior engine durability.</span></p>\r\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; line-height: normal; background: #EEEEEE;\"><strong><span style=\"font-size: 11.5pt; font-family: \'Helvetica\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\'; color: black;\">Packaging Size</span></strong></p>\r\n<p class=\"MsoNormal\" style=\"mso-margin-top-alt: auto; margin-bottom: 3.75pt; margin-left: 0in; text-indent: -.25in; line-height: normal; mso-list: l0 level1 lfo1; tab-stops: list .5in; background: #EEEEEE;\"><!-- [if !supportLists]--><span style=\"font-size: 10.0pt; mso-bidi-font-size: 11.5pt; font-family: Symbol; mso-fareast-font-family: Symbol; mso-bidi-font-family: Symbol; color: #333333;\"><span style=\"mso-list: Ignore;\">&middot;<span style=\"font: 7.0pt \'Times New Roman\';\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span></span><!--[endif]--><span style=\"font-size: 11.5pt; font-family: \'Helvetica\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\'; color: #333333;\">* 12/1 Quart OS</span></p>\r\n<p class=\"MsoNormal\" style=\"mso-margin-top-alt: auto; margin-bottom: 3.75pt; margin-left: 0in; text-indent: -.25in; line-height: normal; mso-list: l0 level1 lfo1; tab-stops: list .5in; background: #EEEEEE;\"><!-- [if !supportLists]--><span style=\"font-size: 10.0pt; mso-bidi-font-size: 11.5pt; font-family: Symbol; mso-fareast-font-family: Symbol; mso-bidi-font-family: Symbol; color: #333333;\"><span style=\"mso-list: Ignore;\">&middot;<span style=\"font: 7.0pt \'Times New Roman\';\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span></span><!--[endif]--><span style=\"font-size: 11.5pt; font-family: \'Helvetica\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\'; color: #333333;\">* 330 Gallon OWCB Tote</span></p>\r\n<p class=\"MsoNormal\" style=\"mso-margin-top-alt: auto; margin-bottom: 3.75pt; margin-left: 0in; text-indent: -.25in; line-height: normal; mso-list: l0 level1 lfo1; tab-stops: list .5in; background: #EEEEEE;\"><!-- [if !supportLists]--><span style=\"font-size: 10.0pt; mso-bidi-font-size: 11.5pt; font-family: Symbol; mso-fareast-font-family: Symbol; mso-bidi-font-family: Symbol; color: #333333;\"><span style=\"mso-list: Ignore;\">&middot;<span style=\"font: 7.0pt \'Times New Roman\';\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span></span><!--[endif]--><span style=\"font-size: 11.5pt; font-family: \'Helvetica\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\'; color: #333333;\">* 4/1 DH Gallon</span></p>\r\n<p class=\"MsoNormal\" style=\"mso-margin-top-alt: auto; margin-bottom: 3.75pt; margin-left: 0in; text-indent: -.25in; line-height: normal; mso-list: l0 level1 lfo1; tab-stops: list .5in; background: #EEEEEE;\"><!-- [if !supportLists]--><span style=\"font-size: 10.0pt; mso-bidi-font-size: 11.5pt; font-family: Symbol; mso-fareast-font-family: Symbol; mso-bidi-font-family: Symbol; color: #333333;\"><span style=\"mso-list: Ignore;\">&middot;<span style=\"font: 7.0pt \'Times New Roman\';\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span></span><!--[endif]--><span style=\"font-size: 11.5pt; font-family: \'Helvetica\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\'; color: #333333;\">* 5 Gallon Plastic Pail</span></p>\r\n<p class=\"MsoNormal\" style=\"mso-margin-top-alt: auto; margin-bottom: 3.75pt; margin-left: 0in; text-indent: -.25in; line-height: normal; mso-list: l0 level1 lfo1; tab-stops: list .5in; background: #EEEEEE;\"><!-- [if !supportLists]--><span style=\"font-size: 10.0pt; mso-bidi-font-size: 11.5pt; font-family: Symbol; mso-fareast-font-family: Symbol; mso-bidi-font-family: Symbol; color: #333333;\"><span style=\"mso-list: Ignore;\">&middot;<span style=\"font: 7.0pt \'Times New Roman\';\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span></span><!--[endif]--><span style=\"font-size: 11.5pt; font-family: \'Helvetica\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\'; color: #333333;\">* 55 Gallon New Drum</span></p>\r\n<p class=\"MsoNormal\" style=\"mso-margin-top-alt: auto; margin-bottom: 3.75pt; margin-left: 0in; text-indent: -.25in; line-height: normal; mso-list: l0 level1 lfo1; tab-stops: list .5in; background: #EEEEEE;\"><!-- [if !supportLists]--><span style=\"font-size: 10.0pt; mso-bidi-font-size: 11.5pt; font-family: Symbol; mso-fareast-font-family: Symbol; mso-bidi-font-family: Symbol; color: #333333;\"><span style=\"mso-list: Ignore;\">&middot;<span style=\"font: 7.0pt \'Times New Roman\';\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span></span><!--[endif]--><span style=\"font-size: 11.5pt; font-family: \'Helvetica\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\'; color: #333333;\">* Tank Truck</span></p>\r\n<p class=\"MsoNormal\">&nbsp;</p>', NULL, 0.00, NULL, 0, 'products/March2021/jbmMtElTBOEdM4HF0b4w.png', NULL, '2021-03-28 09:14:00', '2021-08-17 00:37:30', '{\"Size\": null, \"Color\": null}', 1, 0, NULL, NULL, NULL, NULL, NULL, 0),
(13, 'Havoline 5w-40', NULL, NULL, NULL, '<p class=\"MsoNormal\" style=\"margin-bottom: 11.25pt; line-height: normal; mso-outline-level: 1; background: white;\"><span style=\"font-size: 24pt; font-family: \'Times New Roman\', serif; text-transform: uppercase; color: #000000;\">HAVOLINE PRO DS FULLY SYNTHETIC SAE 5W40 4L</span></p>\r\n<p class=\"MsoNormal\" style=\"margin-bottom: 7.5pt; mso-line-height-alt: 18.0pt; background: white;\"><span style=\"color: #000000;\"><span style=\"font-size: 21.0pt; font-family: \'Times New Roman\',\'serif\'; mso-fareast-font-family: \'Times New Roman\';\">Tk. 3,500</span></span></p>\r\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; line-height: normal; background: white;\"><span style=\"font-size: 10.5pt; font-family: \'Times New Roman\', serif; color: #000000;\">&nbsp;</span></p>\r\n<p class=\"MsoNormal\" style=\"line-height: normal; background: white;\"><span style=\"font-size: 10.5pt; font-family: \'Times New Roman\', serif; color: #000000;\">Product Code:&nbsp;Havoline Pro DS Fully Synthetic SAE 5w40 4L</span></p>\r\n<h3 style=\"background: white; margin: 0in 0in 11.25pt 0in;\"><span style=\"font-family: \'Times New Roman\', serif; color: #000000;\">Product Description</span></h3>\r\n<p class=\"MsoNormal\" style=\"background: white;\"><span style=\"font-size: 10.5pt; line-height: 107%; font-family: \'Times New Roman\', serif; color: #000000;\">Product details of Havoline 5w40 API/SN Havoline&reg; ProDS Fully Synthetic LE SAE 5W-40 is a premium performance, multigrade motor oil formulated from selected synthetic base fluids and matching additive technology for use in passenger car and light truck gasoline and diesel engines operating in all conditions.&nbsp;</span></p>', NULL, 0.00, NULL, 0, 'products/March2021/QxE1LKCr7JkLBewxnq5S.jpg', NULL, '2021-03-28 09:16:38', '2021-03-28 09:16:38', '{\"Size\": null, \"Color\": null}', 1, 0, NULL, NULL, NULL, NULL, NULL, 0),
(14, 'Mobil -1-5w-50', NULL, NULL, NULL, '<p class=\"MsoNormal\" style=\"margin-bottom: 11.25pt; line-height: normal; mso-outline-level: 1; background: white;\"><span style=\"font-size: 24pt; font-family: \'Times New Roman\', serif; text-transform: uppercase; color: #000000;\">MOBIL EXCELLENT WEAR PROTECTION 5W-50</span></p>\r\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; line-height: 12.0pt; background: white; vertical-align: top;\"><span style=\"color: #000000;\"><span style=\"font-size: 1.0pt; font-family: \'Times New Roman\',\'serif\'; mso-fareast-font-family: \'Times New Roman\';\">&nbsp;&nbsp;&nbsp;&nbsp;</span></span></p>\r\n<p class=\"MsoNormal\" style=\"margin-bottom: 7.5pt; mso-line-height-alt: 18.0pt; background: white;\"><span style=\"color: #000000;\"><span style=\"font-size: 21.0pt; font-family: \'Times New Roman\',\'serif\'; mso-fareast-font-family: \'Times New Roman\';\">Tk. 4,450</span></span></p>\r\n<p class=\"MsoNormal\" style=\"line-height: normal; background: white;\"><span style=\"font-size: 10.5pt; font-family: \'Times New Roman\', serif; color: #000000;\">Product Code:&nbsp;Mobil Excellent Wear Protection 5w-50</span></p>\r\n<h3 style=\"background: white; margin: 0in 0in 11.25pt 0in;\"><span style=\"font-family: \'Times New Roman\', serif; color: #000000;\">Product Description</span></h3>\r\n<p class=\"MsoNormal\" style=\"background: white;\"><span style=\"font-size: 10.5pt; line-height: 107%; font-family: \'Times New Roman\', serif; color: #000000;\">Description: Racing or normal driving, Mobil 1 5W-50 (Rally Formula) helps to provide heavy-duty engine performance and protection for an outstanding driving experience.Mobil 1 5W-50 Advanced Full Synthetic Motor Oil is our tried and trusted formulation delivering great all-around performance. Mobil 1 5W-50 keeps your engine performing like new. This race-proven technology is suited for extreme driving conditions and motorsport applications</span></p>', NULL, 0.00, NULL, 0, 'products/March2021/8Orq3LlfaUjs0cjGTQft.png', NULL, '2021-03-28 09:18:00', '2021-03-28 11:41:22', '{\"Size\": null, \"Color\": null}', 1, 0, NULL, NULL, NULL, NULL, NULL, 0),
(15, 'Mobil-1-0w-40-', NULL, NULL, NULL, '<p class=\"MsoNormal\" style=\"margin-bottom: 11.25pt; line-height: normal; mso-outline-level: 1; background: white;\"><span style=\"font-size: 24.0pt; font-family: \'Times New Roman\',\'serif\'; mso-fareast-font-family: \'Times New Roman\'; text-transform: uppercase; mso-font-kerning: 18.0pt;\">MOBIL 1 ULTIMATE 0W-40 SYNTHETIC 4L</span><span style=\"font-family: \'Times New Roman\', serif; font-size: 1pt;\">&nbsp; &nbsp;</span></p>\r\n<p class=\"MsoNormal\" style=\"margin-bottom: 7.5pt; mso-line-height-alt: 18.0pt; background: white;\"><span style=\"font-size: 21.0pt; font-family: \'Times New Roman\',\'serif\'; mso-fareast-font-family: \'Times New Roman\';\">Tk. 4,500</span></p>\r\n<p class=\"MsoNormal\" style=\"line-height: normal; background: white;\"><span style=\"font-size: 10.5pt; font-family: \'Times New Roman\',\'serif\'; mso-fareast-font-family: \'Times New Roman\';\">Product Code: Mobil 1 Ultimate 0w-40 Synthetic 4L</span><span style=\"font-family: \'Times New Roman\', serif; font-size: 10.5pt;\">&nbsp;</span></p>\r\n<p class=\"MsoNormal\"><span style=\"font-size: 10.5pt; line-height: 107%; font-family: \'Times New Roman\',\'serif\'; background: white;\">\"Product details of OW-40 Fully Synthetic Oil for Cars - 4 Litre Ultimate Engine Performance And Wear Protection Enhanced Frictional Properties, Aids Fuel Economy. Improves engine protection during the critical start-up period Excellent low-temperature Rapid Protection at Start-Up Keeps your Engine Performing Like New\"&nbsp;</span></p>', NULL, 0.00, NULL, 0, 'products/March2021/4qU4OYXNWZzpAEDzv0bd.jpg', NULL, '2021-03-28 09:21:00', '2021-03-28 11:41:08', '{\"Size\": null, \"Color\": null}', 1, 0, NULL, NULL, NULL, NULL, NULL, 0),
(16, 'MOBIL-1-0W-20', NULL, NULL, NULL, '<p class=\"MsoNormal\" style=\"margin-bottom: 11.25pt; line-height: normal; mso-outline-level: 1; background: white;\"><span style=\"font-size: 24pt; font-family: \'Times New Roman\', serif; text-transform: uppercase; color: #000000;\">MOBIL 1 0W-20 ADVANCED FUEL ECONOMY ENGINE OIL</span></p>\r\n<p class=\"MsoNormal\"><span style=\"font-size: 10.5pt; line-height: 107%; font-family: \'Times New Roman\', serif; background: white; color: #000000;\">&nbsp;</span></p>\r\n<p class=\"MsoNormal\"><span style=\"font-size: 10.5pt; line-height: 107%; font-family: \'Times New Roman\', serif; background: white; color: #000000;\">Mobil 1&trade; 0W-20 is an advanced full synthetic engine oil designed to help deliver outstanding engine protection and enhanced fuel economy. Mobil 1 0W-20 meets or exceeds the requirements of various vehicle manufacturers and industry standards and outperforms conventional oils. Mobil 1 0W-20 is recommended for SAE 0W-20 and 5W-20 applications.</span></p>\r\n<p class=\"MsoNormal\"><span style=\"font-size: 10.5pt; line-height: 107%; font-family: \'Times New Roman\', serif; background: white; color: #000000;\">&nbsp;</span></p>\r\n<p class=\"MsoNormal\" style=\"margin-bottom: 7.5pt; mso-line-height-alt: 18.0pt; background: white;\"><span style=\"color: #000000;\"><span style=\"font-size: 21.0pt; font-family: \'Times New Roman\',\'serif\'; mso-fareast-font-family: \'Times New Roman\';\">Tk. 4,500</span></span></p>\r\n<p class=\"MsoNormal\" style=\"line-height: normal; background: white;\"><span style=\"font-size: 10.5pt; font-family: \'Times New Roman\', serif; color: #000000;\">Product Code:&nbsp;Mobil 1 0W-20 Advanced Fuel Economy Engine Oil</span></p>\r\n<p class=\"MsoNormal\"><span style=\"font-family: \'Times New Roman\', serif; color: #000000;\">&nbsp;</span></p>', NULL, 0.00, NULL, 0, 'products/March2021/Du6AxhFYqh5LAQ3umLgp.jpg', NULL, '2021-03-28 09:22:00', '2021-03-28 11:40:53', '{\"Size\": null, \"Color\": null}', 1, 0, NULL, NULL, NULL, NULL, NULL, 0),
(17, 'Mobil-1-Extended-Performance-0w20', NULL, NULL, NULL, '<p class=\"MsoNormal\" style=\"margin-bottom: 11.25pt; line-height: normal; mso-outline-level: 1; background: white;\"><span style=\"font-size: 24pt; font-family: \'Times New Roman\', serif; text-transform: uppercase; color: #000000;\">MOBIL 1 EXTENDED PERFORMANCE 0W20 SN 4L USA</span></p>\r\n<p class=\"MsoNormal\" style=\"margin-bottom: 7.5pt; mso-line-height-alt: 18.0pt; background: white;\"><span style=\"color: #000000;\"><span style=\"font-size: 21.0pt; font-family: \'Times New Roman\',\'serif\'; mso-fareast-font-family: \'Times New Roman\';\">Tk. 4,500</span></span></p>\r\n<p class=\"MsoNormal\" style=\"line-height: normal; background: white;\"><span style=\"font-size: 10.5pt; font-family: \'Times New Roman\', serif; color: #000000;\">Product Code:&nbsp;Mobil 1 Extended Performance 0w20 SN 4L USA</span></p>\r\n<h3 style=\"background: white; margin: 0in 0in 11.25pt 0in;\"><span style=\"font-family: \'Times New Roman\', serif; color: #000000;\">Product Description</span></h3>\r\n<p class=\"MsoNormal\" style=\"background: white;\"><span style=\"color: #000000;\"><span style=\"font-size: 10.5pt; line-height: 107%; font-family: \'Times New Roman\',\'serif\';\">Mobil 1 Extended Performance is a synthetic oil designed to keep your engine running like new even during today&rsquo;s longer service intervals. With Mobil 1 Extended Performance synthetic motor oil, you get proven protection up to 15,000 miles, guaranteed. It&rsquo;s an advanced full synthetic formulation and offers outstanding all</span><span style=\"font-size: 10.5pt; line-height: 107%; font-family: \'Cambria Math\',\'serif\'; mso-bidi-font-family: \'Cambria Math\';\">‐</span><span style=\"font-size: 10.5pt; line-height: 107%; font-family: \'Times New Roman\',\'serif\';\">around protection that outperforms our synthetic blends and many of our regular full synthetic motor oils.&nbsp;&nbsp;&nbsp;</span></span></p>\r\n<p class=\"MsoNormal\"><span style=\"font-family: \'Times New Roman\', serif; color: #000000;\">&nbsp;</span></p>', NULL, 0.00, NULL, 0, 'products/March2021/vRRYcSZQ94VZdXBqLE56.jpg', NULL, '2021-03-28 09:24:00', '2021-03-28 11:40:38', '{\"Size\": null, \"Color\": null}', 1, 0, NULL, NULL, NULL, NULL, NULL, 0),
(18, 'shell 5w 40', NULL, NULL, NULL, '<p class=\"MsoNormal\" style=\"margin-bottom: 11.25pt; line-height: normal; mso-outline-level: 1; background: white;\"><span style=\"font-size: 24.0pt; font-family: \'Times New Roman\',\'serif\'; mso-fareast-font-family: \'Times New Roman\'; text-transform: uppercase; mso-font-kerning: 18.0pt;\">SHELL HELIX HX8 5W40 FULL SYNTHETIC 4 LITTERS</span></p>\r\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; line-height: 12.0pt; background: white; vertical-align: top;\"><span style=\"font-size: 1.0pt; font-family: \'Times New Roman\',\'serif\'; mso-fareast-font-family: \'Times New Roman\';\">&nbsp;&nbsp;&nbsp;&nbsp;</span></p>\r\n<p class=\"MsoNormal\" style=\"margin-bottom: 7.5pt; mso-line-height-alt: 18.0pt; background: white;\"><span style=\"font-size: 21.0pt; font-family: \'Times New Roman\',\'serif\'; mso-fareast-font-family: \'Times New Roman\';\">Tk. 3,400</span></p>\r\n<p class=\"MsoNormal\" style=\"line-height: normal; background: white;\"><span style=\"font-size: 10.5pt; font-family: \'Times New Roman\',\'serif\'; mso-fareast-font-family: \'Times New Roman\';\">Product Code:&nbsp;Shell Helix HX8 5W40 Full Synthetic 4 Litters</span></p>\r\n<h3 style=\"background: white; margin: 0in 0in 11.25pt 0in;\"><span style=\"font-family: \'Times New Roman\',\'serif\'; color: windowtext;\">Product Description</span></h3>\r\n<p class=\"MsoNormal\" style=\"mso-margin-top-alt: auto; mso-margin-bottom-alt: auto; margin-left: 0in; text-indent: -.25in; line-height: normal; mso-list: l0 level1 lfo1; tab-stops: list .5in; background: white;\"><!-- [if !supportLists]--><span style=\"font-size: 10.0pt; mso-bidi-font-size: 10.5pt; font-family: Symbol; mso-fareast-font-family: Symbol; mso-bidi-font-family: Symbol;\"><span style=\"mso-list: Ignore;\">&middot;<span style=\"font: 7.0pt \'Times New Roman\';\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span></span><!--[endif]--><span style=\"font-size: 10.5pt; font-family: \'Times New Roman\',\'serif\';\">Fully Synthetic with Shell PurePlus Technology</span></p>\r\n<p class=\"MsoNormal\" style=\"mso-margin-top-alt: auto; mso-margin-bottom-alt: auto; margin-left: 0in; text-indent: -.25in; line-height: normal; mso-list: l0 level1 lfo1; tab-stops: list .5in; background: white;\"><!-- [if !supportLists]--><span style=\"font-size: 10.0pt; mso-bidi-font-size: 10.5pt; font-family: Symbol; mso-fareast-font-family: Symbol; mso-bidi-font-family: Symbol;\"><span style=\"mso-list: Ignore;\">&middot;<span style=\"font: 7.0pt \'Times New Roman\';\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span></span><!--[endif]--><span style=\"font-size: 10.5pt; font-family: \'Times New Roman\',\'serif\';\">5W-40 For Diesel and Gasoline Engines</span></p>\r\n<p class=\"MsoNormal\" style=\"mso-margin-top-alt: auto; mso-margin-bottom-alt: auto; margin-left: 0in; text-indent: -.25in; line-height: normal; mso-list: l0 level1 lfo1; tab-stops: list .5in; background: white;\"><!-- [if !supportLists]--><span style=\"font-size: 10.0pt; mso-bidi-font-size: 10.5pt; font-family: Symbol; mso-fareast-font-family: Symbol; mso-bidi-font-family: Symbol;\"><span style=\"mso-list: Ignore;\">&middot;<span style=\"font: 7.0pt \'Times New Roman\';\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span></span><!--[endif]--><span style=\"font-size: 10.5pt; font-family: \'Times New Roman\',\'serif\';\">Specifications: API SN/CF; ACEA A3/B3, A3/B4; BMW LL-01; MBapproval 229.5, 226.5; VW 502.00/505.00; Porsche A40; RenaultRN0700, RN0710.</span></p>\r\n<p class=\"MsoNormal\" style=\"mso-margin-top-alt: auto; mso-margin-bottom-alt: auto; margin-left: 0in; text-indent: -.25in; line-height: normal; mso-list: l0 level1 lfo1; tab-stops: list .5in; background: white;\"><!-- [if !supportLists]--><span style=\"font-size: 10.0pt; mso-bidi-font-size: 10.5pt; font-family: Symbol; mso-fareast-font-family: Symbol; mso-bidi-font-family: Symbol;\"><span style=\"mso-list: Ignore;\">&middot;<span style=\"font: 7.0pt \'Times New Roman\';\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span></span><!--[endif]--><span style=\"font-size: 10.5pt; font-family: \'Times New Roman\',\'serif\';\">Meets the requirements ofFiat 9.55535-Z2 and Chrysler MS-10725</span></p>\r\n<p class=\"MsoNormal\" style=\"mso-margin-top-alt: auto; mso-margin-bottom-alt: auto; margin-left: 0in; text-indent: -.25in; line-height: normal; mso-list: l0 level1 lfo1; tab-stops: list .5in; background: white;\"><!-- [if !supportLists]--><span style=\"font-size: 10.0pt; mso-bidi-font-size: 10.5pt; font-family: Symbol; mso-fareast-font-family: Symbol; mso-bidi-font-family: Symbol;\"><span style=\"mso-list: Ignore;\">&middot;<span style=\"font: 7.0pt \'Times New Roman\';\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span></span><!--[endif]--><span style=\"font-size: 10.5pt; font-family: \'Times New Roman\',\'serif\';\">Comes with a seal, serial number, and SMS verification code for genuinity.</span></p>', NULL, 0.00, NULL, 0, 'products/March2021/gCXYT0H2WmfFWlm3zRAW.png', NULL, '2021-03-28 10:28:00', '2021-03-28 10:30:03', '{\"Size\": null, \"Color\": null}', 1, 0, NULL, NULL, NULL, NULL, NULL, 0),
(19, 'BRAKE PADS AKEBONO AN-337K', NULL, NULL, NULL, '<p class=\"MsoNormal\" style=\"mso-margin-top-alt: auto; mso-margin-bottom-alt: auto; line-height: normal;\"><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\'; color: #444444;\">BRAKE PADS AKEBONO AN-337K</span></p>\r\n<p class=\"MsoNormal\" style=\"mso-margin-top-alt: auto; mso-margin-bottom-alt: auto; line-height: normal;\"><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\'; color: #444444;\">&nbsp;</span></p>\r\n<p class=\"MsoNormal\" style=\"mso-margin-top-alt: auto; mso-margin-bottom-alt: auto; line-height: normal;\"><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\'; color: #444444;\">Location Rear Axle Brake</span></p>\r\n<p class=\"MsoNormal\" style=\"mso-margin-top-alt: auto; mso-margin-bottom-alt: auto; line-height: normal;\"><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\'; color: #444444;\">&nbsp;</span></p>\r\n<p class=\"MsoNormal\" style=\"mso-margin-top-alt: auto; mso-margin-bottom-alt: auto; line-height: normal;\"><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\'; color: #444444;\">Supported Models:</span></p>\r\n<p class=\"MsoNormal\" style=\"mso-margin-top-alt: auto; mso-margin-bottom-alt: auto; line-height: normal;\"><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\'; color: #444444;\">&nbsp;</span></p>\r\n<p class=\"MsoNormal\" style=\"mso-margin-top-alt: auto; mso-margin-bottom-alt: auto; line-height: normal;\"><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\'; color: #444444;\">JMC</span></p>\r\n<p class=\"MsoNormal\" style=\"mso-margin-top-alt: auto; mso-margin-bottom-alt: auto; line-height: normal;\"><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\'; color: #444444;\">Landwind X5</span></p>\r\n<p class=\"MsoNormal\" style=\"mso-margin-top-alt: auto; mso-margin-bottom-alt: auto; line-height: normal;\"><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\'; color: #444444;\">LEXUS</span></p>\r\n<p class=\"MsoNormal\" style=\"mso-margin-top-alt: auto; mso-margin-bottom-alt: auto; line-height: normal;\"><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\'; color: #444444;\">GX460</span></p>\r\n<p class=\"MsoNormal\" style=\"mso-margin-top-alt: auto; mso-margin-bottom-alt: auto; line-height: normal;\"><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\'; color: #444444;\">LEXUS</span></p>\r\n<p class=\"MsoNormal\" style=\"mso-margin-top-alt: auto; mso-margin-bottom-alt: auto; line-height: normal;\"><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\'; color: #444444;\">GX470</span></p>\r\n<p class=\"MsoNormal\" style=\"mso-margin-top-alt: auto; mso-margin-bottom-alt: auto; line-height: normal;\"><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\'; color: #444444;\">LEXUS</span></p>\r\n<p class=\"MsoNormal\" style=\"mso-margin-top-alt: auto; mso-margin-bottom-alt: auto; line-height: normal;\"><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\'; color: #444444;\">LX450</span></p>\r\n<p class=\"MsoNormal\" style=\"mso-margin-top-alt: auto; mso-margin-bottom-alt: auto; line-height: normal;\"><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\'; color: #444444;\">MITSUBISHI</span></p>\r\n<p class=\"MsoNormal\" style=\"mso-margin-top-alt: auto; mso-margin-bottom-alt: auto; line-height: normal;\"><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\'; color: #444444;\">Pajero</span></p>\r\n<p class=\"MsoNormal\" style=\"mso-margin-top-alt: auto; mso-margin-bottom-alt: auto; line-height: normal;\"><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\'; color: #444444;\">MITSUBISHI</span></p>\r\n<p class=\"MsoNormal\" style=\"mso-margin-top-alt: auto; mso-margin-bottom-alt: auto; line-height: normal;\"><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\'; color: #444444;\">Pajero / Montero</span></p>\r\n<p class=\"MsoNormal\" style=\"mso-margin-top-alt: auto; mso-margin-bottom-alt: auto; line-height: normal;\"><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\'; color: #444444;\">SAIC</span></p>\r\n<p class=\"MsoNormal\" style=\"mso-margin-top-alt: auto; mso-margin-bottom-alt: auto; line-height: normal;\"><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\'; color: #444444;\">Maxus EV80</span></p>\r\n<p class=\"MsoNormal\" style=\"mso-margin-top-alt: auto; mso-margin-bottom-alt: auto; line-height: normal;\"><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\'; color: #444444;\">TOYOTA</span></p>\r\n<p class=\"MsoNormal\" style=\"mso-margin-top-alt: auto; mso-margin-bottom-alt: auto; line-height: normal;\"><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\'; color: #444444;\">4 Runner</span></p>\r\n<p class=\"MsoNormal\" style=\"mso-margin-top-alt: auto; mso-margin-bottom-alt: auto; line-height: normal;\"><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\'; color: #444444;\">TOYOTA</span></p>\r\n<p class=\"MsoNormal\" style=\"mso-margin-top-alt: auto; mso-margin-bottom-alt: auto; line-height: normal;\"><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\'; color: #444444;\">FJ Cruiser</span></p>\r\n<p class=\"MsoNormal\" style=\"mso-margin-top-alt: auto; mso-margin-bottom-alt: auto; line-height: normal;\"><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\'; color: #444444;\">TOYOTA</span></p>\r\n<p class=\"MsoNormal\" style=\"mso-margin-top-alt: auto; mso-margin-bottom-alt: auto; line-height: normal;\"><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\'; color: #444444;\">Fortuner</span></p>\r\n<p class=\"MsoNormal\" style=\"mso-margin-top-alt: auto; mso-margin-bottom-alt: auto; line-height: normal;\"><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\'; color: #444444;\">TOYOTA</span></p>\r\n<p class=\"MsoNormal\" style=\"mso-margin-top-alt: auto; mso-margin-bottom-alt: auto; line-height: normal;\"><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\'; color: #444444;\">Hilux Surf</span></p>\r\n<p class=\"MsoNormal\" style=\"mso-margin-top-alt: auto; mso-margin-bottom-alt: auto; line-height: normal;\"><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\'; color: #444444;\">TOYOTA</span></p>\r\n<p class=\"MsoNormal\" style=\"mso-margin-top-alt: auto; mso-margin-bottom-alt: auto; line-height: normal;\"><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\'; color: #444444;\">Land Cruiser</span></p>\r\n<p class=\"MsoNormal\" style=\"mso-margin-top-alt: auto; mso-margin-bottom-alt: auto; line-height: normal;\"><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\'; color: #444444;\">TOYOTA</span></p>\r\n<p class=\"MsoNormal\" style=\"mso-margin-top-alt: auto; mso-margin-bottom-alt: auto; line-height: normal;\"><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\'; color: #444444;\">Land Cruiser 100</span></p>\r\n<p class=\"MsoNormal\" style=\"mso-margin-top-alt: auto; mso-margin-bottom-alt: auto; line-height: normal;\"><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\'; color: #444444;\">TOYOTA</span></p>\r\n<p class=\"MsoNormal\" style=\"mso-margin-top-alt: auto; mso-margin-bottom-alt: auto; line-height: normal;\"><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\'; color: #444444;\">Land Cruiser Prado</span></p>\r\n<p class=\"MsoNormal\" style=\"mso-margin-top-alt: auto; mso-margin-bottom-alt: auto; line-height: normal;\"><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\'; color: #444444;\">TOYOTA</span></p>\r\n<p class=\"MsoNormal\" style=\"mso-margin-top-alt: auto; mso-margin-bottom-alt: auto; line-height: normal;\"><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\'; color: #444444;\">Land Cruiser Prado 120</span></p>\r\n<p class=\"MsoNormal\" style=\"mso-margin-top-alt: auto; mso-margin-bottom-alt: auto; line-height: normal;\"><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\'; color: #444444;\">TOYOTA</span></p>\r\n<p class=\"MsoNormal\" style=\"mso-margin-top-alt: auto; mso-margin-bottom-alt: auto; line-height: normal;\"><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\'; color: #444444;\">Land Cruiser Prado 150</span></p>\r\n<p class=\"MsoNormal\" style=\"mso-margin-top-alt: auto; mso-margin-bottom-alt: auto; line-height: normal;\"><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\'; color: #444444;\">TOYOTA</span></p>\r\n<p class=\"MsoNormal\" style=\"mso-margin-top-alt: auto; mso-margin-bottom-alt: auto; line-height: normal;\"><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\'; color: #444444;\">Sequoia (USA)</span></p>\r\n<p class=\"MsoNormal\" style=\"mso-margin-top-alt: auto; mso-margin-bottom-alt: auto; line-height: normal;\"><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\'; color: #444444;\">&nbsp;</span></p>\r\n<p class=\"MsoNormal\" style=\"mso-margin-top-alt: auto; mso-margin-bottom-alt: auto; line-height: normal;\"><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\'; color: #444444;\">HITACHI</span></p>\r\n<p class=\"MsoNormal\" style=\"mso-margin-top-alt: auto; mso-margin-bottom-alt: auto; line-height: normal;\"><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\'; color: #444444;\">NDP199</span></p>\r\n<p class=\"MsoNormal\" style=\"mso-margin-top-alt: auto; mso-margin-bottom-alt: auto; line-height: normal;\"><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\'; color: #444444;\">MAXUS</span></p>\r\n<p class=\"MsoNormal\" style=\"mso-margin-top-alt: auto; mso-margin-bottom-alt: auto; line-height: normal;\"><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\'; color: #444444;\">C00013531</span></p>\r\n<p class=\"MsoNormal\" style=\"mso-margin-top-alt: auto; mso-margin-bottom-alt: auto; line-height: normal;\"><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\'; color: #444444;\">MAZDA</span></p>\r\n<p class=\"MsoNormal\" style=\"mso-margin-top-alt: auto; mso-margin-bottom-alt: auto; line-height: normal;\"><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\'; color: #444444;\">1Y04-26-48Z</span></p>\r\n<p class=\"MsoNormal\" style=\"mso-margin-top-alt: auto; mso-margin-bottom-alt: auto; line-height: normal;\"><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\'; color: #444444;\">MITSUBISHI</span></p>\r\n<p class=\"MsoNormal\" style=\"mso-margin-top-alt: auto; mso-margin-bottom-alt: auto; line-height: normal;\"><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\'; color: #444444;\">4605A389</span></p>\r\n<p class=\"MsoNormal\" style=\"mso-margin-top-alt: auto; mso-margin-bottom-alt: auto; line-height: normal;\"><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\'; color: #444444;\">MITSUBISHI</span></p>\r\n<p class=\"MsoNormal\" style=\"mso-margin-top-alt: auto; mso-margin-bottom-alt: auto; line-height: normal;\"><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\'; color: #444444;\">4605A458</span></p>\r\n<p class=\"MsoNormal\" style=\"mso-margin-top-alt: auto; mso-margin-bottom-alt: auto; line-height: normal;\"><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\'; color: #444444;\">TOYOTA</span></p>\r\n<p class=\"MsoNormal\" style=\"mso-margin-top-alt: auto; mso-margin-bottom-alt: auto; line-height: normal;\"><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\'; color: #444444;\">04465-60010</span></p>\r\n<p class=\"MsoNormal\" style=\"mso-margin-top-alt: auto; mso-margin-bottom-alt: auto; line-height: normal;\"><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\'; color: #444444;\">TOYOTA</span></p>\r\n<p class=\"MsoNormal\" style=\"mso-margin-top-alt: auto; mso-margin-bottom-alt: auto; line-height: normal;\"><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\'; color: #444444;\">04466-60010</span></p>\r\n<p class=\"MsoNormal\" style=\"mso-margin-top-alt: auto; mso-margin-bottom-alt: auto; line-height: normal;\"><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\'; color: #444444;\">TOYOTA</span></p>\r\n<p class=\"MsoNormal\" style=\"mso-margin-top-alt: auto; mso-margin-bottom-alt: auto; line-height: normal;\"><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\'; color: #444444;\">04466-60020</span></p>\r\n<p class=\"MsoNormal\" style=\"mso-margin-top-alt: auto; mso-margin-bottom-alt: auto; line-height: normal;\"><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\'; color: #444444;\">TOYOTA</span></p>\r\n<p class=\"MsoNormal\" style=\"mso-margin-top-alt: auto; mso-margin-bottom-alt: auto; line-height: normal;\"><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\'; color: #444444;\">04466-60040</span></p>\r\n<p class=\"MsoNormal\" style=\"mso-margin-top-alt: auto; mso-margin-bottom-alt: auto; line-height: normal;\"><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\'; color: #444444;\">TOYOTA</span></p>\r\n<p class=\"MsoNormal\" style=\"mso-margin-top-alt: auto; mso-margin-bottom-alt: auto; line-height: normal;\"><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\'; color: #444444;\">04466-60050</span></p>\r\n<p class=\"MsoNormal\" style=\"mso-margin-top-alt: auto; mso-margin-bottom-alt: auto; line-height: normal;\"><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\'; color: #444444;\">TOYOTA</span></p>\r\n<p class=\"MsoNormal\" style=\"mso-margin-top-alt: auto; mso-margin-bottom-alt: auto; line-height: normal;\"><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\'; color: #444444;\">04466-60060</span></p>\r\n<p class=\"MsoNormal\" style=\"mso-margin-top-alt: auto; mso-margin-bottom-alt: auto; line-height: normal;\"><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\'; color: #444444;\">TOYOTA</span></p>\r\n<p class=\"MsoNormal\" style=\"mso-margin-top-alt: auto; mso-margin-bottom-alt: auto; line-height: normal;\"><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\'; color: #444444;\">04466-60080</span></p>\r\n<p class=\"MsoNormal\" style=\"mso-margin-top-alt: auto; mso-margin-bottom-alt: auto; line-height: normal;\"><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\'; color: #444444;\">TOYOTA</span></p>\r\n<p class=\"MsoNormal\" style=\"mso-margin-top-alt: auto; mso-margin-bottom-alt: auto; line-height: normal;\"><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\'; color: #444444;\">04466-60090</span></p>\r\n<p class=\"MsoNormal\" style=\"mso-margin-top-alt: auto; mso-margin-bottom-alt: auto; line-height: normal;\"><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\'; color: #444444;\">TOYOTA</span></p>\r\n<p class=\"MsoNormal\" style=\"mso-margin-top-alt: auto; mso-margin-bottom-alt: auto; line-height: normal;\"><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\'; color: #444444;\">04466-60140</span></p>\r\n<p class=\"MsoNormal\" style=\"mso-margin-top-alt: auto; mso-margin-bottom-alt: auto; line-height: normal;\"><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\'; color: #444444;\">TOYOTA</span></p>\r\n<p class=\"MsoNormal\" style=\"mso-margin-top-alt: auto; mso-margin-bottom-alt: auto; line-height: normal;\"><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\'; color: #444444;\">04466YZZAM</span></p>\r\n<p class=\"MsoNormal\" style=\"mso-margin-top-alt: auto; mso-margin-bottom-alt: auto; line-height: normal;\"><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\'; color: #444444;\">TOYOTA</span></p>\r\n<p class=\"MsoNormal\" style=\"mso-margin-top-alt: auto; mso-margin-bottom-alt: auto; line-height: normal;\"><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\'; color: #444444;\">04492-60010</span></p>\r\n<p class=\"MsoNormal\" style=\"mso-margin-top-alt: auto; mso-margin-bottom-alt: auto; line-height: normal;\"><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\'; color: #444444;\">TOYOTA</span></p>\r\n<p class=\"MsoNormal\" style=\"mso-margin-top-alt: auto; mso-margin-bottom-alt: auto; line-height: normal;\"><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\'; color: #444444;\">04492-60020</span></p>\r\n<p class=\"MsoNormal\" style=\"mso-margin-top-alt: auto; mso-margin-bottom-alt: auto; line-height: normal;\"><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\'; color: #444444;\">TOYOTA</span></p>\r\n<p class=\"MsoNormal\" style=\"mso-margin-top-alt: auto; mso-margin-bottom-alt: auto; line-height: normal;\"><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\'; color: #444444;\">AY060-TY006</span></p>\r\n<p class=\"MsoNormal\" style=\"mso-margin-top-alt: auto; mso-margin-bottom-alt: auto; line-height: normal;\"><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\'; color: #444444;\">TOYOTA</span></p>\r\n<p class=\"MsoNormal\" style=\"mso-margin-top-alt: auto; mso-margin-bottom-alt: auto; line-height: normal;\"><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\'; color: #444444;\">V9118-2011</span></p>\r\n<p class=\"MsoNormal\" style=\"mso-margin-top-alt: auto; mso-margin-bottom-alt: auto; line-height: normal;\"><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\'; color: #444444;\">TOYOTA</span></p>\r\n<p class=\"MsoNormal\" style=\"mso-margin-top-alt: auto; mso-margin-bottom-alt: auto; line-height: normal;\"><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\'; color: #444444;\">V9118-B011</span></p>', NULL, 4800.00, NULL, 0, 'products/March2021/fgalO7dImM6Sve3e5UQ8.jpg', NULL, '2021-03-31 04:46:00', '2021-04-12 08:00:32', '{\"Size\": null, \"Color\": null}', 1, 0, NULL, NULL, NULL, NULL, NULL, 0);
INSERT INTO `products_old` (`id`, `name`, `product_number`, `shop_id`, `brand_id`, `description`, `small_description`, `price`, `buy_price`, `stock`, `cover_img`, `images`, `created_at`, `updated_at`, `product_attributes`, `is_featured`, `is_sale`, `sale_price`, `vehicle_maker`, `vehicle_model`, `vehicle_manufacturing_year`, `product_type`, `is_publish`) VALUES
(20, 'BRAKE PADS AKEBONO AN-636K', NULL, NULL, NULL, '<p class=\"MsoNormal\" style=\"mso-margin-top-alt: auto; mso-margin-bottom-alt: auto; line-height: normal;\"><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\'; color: #444444;\">&nbsp;</span></p>\r\n<p class=\"MsoNormal\" style=\"mso-margin-top-alt: auto; mso-margin-bottom-alt: auto; line-height: normal;\"><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\'; color: #444444;\">BRAKE PADS AKEBONO AN-636K</span></p>\r\n<p class=\"MsoNormal\" style=\"mso-margin-top-alt: auto; mso-margin-bottom-alt: auto; line-height: normal;\"><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\'; color: #444444;\">&nbsp;</span></p>\r\n<p class=\"MsoNormal\" style=\"mso-margin-top-alt: auto; mso-margin-bottom-alt: auto; line-height: normal;\"><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\'; color: #444444;\">Front Brake Pad&nbsp;</span></p>\r\n<p class=\"MsoNormal\" style=\"mso-margin-top-alt: auto; mso-margin-bottom-alt: auto; line-height: normal;\"><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\'; color: #444444;\">&nbsp;</span></p>\r\n<p class=\"MsoNormal\" style=\"mso-margin-top-alt: auto; mso-margin-bottom-alt: auto; line-height: normal;\"><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\'; color: #444444;\">Supported Models:</span></p>\r\n<p class=\"MsoNormal\" style=\"mso-margin-top-alt: auto; mso-margin-bottom-alt: auto; line-height: normal;\"><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\'; color: #444444;\">&nbsp;</span></p>\r\n<p class=\"MsoNormal\" style=\"mso-margin-top-alt: auto; mso-margin-bottom-alt: auto; line-height: normal;\"><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\'; color: #444444;\">LEXUS</span></p>\r\n<p class=\"MsoNormal\" style=\"mso-margin-top-alt: auto; mso-margin-bottom-alt: auto; line-height: normal;\"><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\'; color: #444444;\">IS250</span></p>\r\n<p class=\"MsoNormal\" style=\"mso-margin-top-alt: auto; mso-margin-bottom-alt: auto; line-height: normal;\"><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\'; color: #444444;\">LEXUS</span></p>\r\n<p class=\"MsoNormal\" style=\"mso-margin-top-alt: auto; mso-margin-bottom-alt: auto; line-height: normal;\"><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\'; color: #444444;\">IS300H</span></p>\r\n<p class=\"MsoNormal\" style=\"mso-margin-top-alt: auto; mso-margin-bottom-alt: auto; line-height: normal;\"><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\'; color: #444444;\">TOYOTA</span></p>\r\n<p class=\"MsoNormal\" style=\"mso-margin-top-alt: auto; mso-margin-bottom-alt: auto; line-height: normal;\"><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\'; color: #444444;\">Altezza</span></p>\r\n<p class=\"MsoNormal\" style=\"mso-margin-top-alt: auto; mso-margin-bottom-alt: auto; line-height: normal;\"><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\'; color: #444444;\">TOYOTA</span></p>\r\n<p class=\"MsoNormal\" style=\"mso-margin-top-alt: auto; mso-margin-bottom-alt: auto; line-height: normal;\"><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\'; color: #444444;\">Brevis</span></p>\r\n<p class=\"MsoNormal\" style=\"mso-margin-top-alt: auto; mso-margin-bottom-alt: auto; line-height: normal;\"><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\'; color: #444444;\">TOYOTA</span></p>\r\n<p class=\"MsoNormal\" style=\"mso-margin-top-alt: auto; mso-margin-bottom-alt: auto; line-height: normal;\"><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\'; color: #444444;\">Crown</span></p>\r\n<p class=\"MsoNormal\" style=\"mso-margin-top-alt: auto; mso-margin-bottom-alt: auto; line-height: normal;\"><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\'; color: #444444;\">TOYOTA</span></p>\r\n<p class=\"MsoNormal\" style=\"mso-margin-top-alt: auto; mso-margin-bottom-alt: auto; line-height: normal;\"><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\'; color: #444444;\">Crown Athlete</span></p>\r\n<p class=\"MsoNormal\" style=\"mso-margin-top-alt: auto; mso-margin-bottom-alt: auto; line-height: normal;\"><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\'; color: #444444;\">TOYOTA</span></p>\r\n<p class=\"MsoNormal\" style=\"mso-margin-top-alt: auto; mso-margin-bottom-alt: auto; line-height: normal;\"><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\'; color: #444444;\">Crown Estate</span></p>\r\n<p class=\"MsoNormal\" style=\"mso-margin-top-alt: auto; mso-margin-bottom-alt: auto; line-height: normal;\"><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\'; color: #444444;\">TOYOTA</span></p>\r\n<p class=\"MsoNormal\" style=\"mso-margin-top-alt: auto; mso-margin-bottom-alt: auto; line-height: normal;\"><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\'; color: #444444;\">Crown Majesta</span></p>\r\n<p class=\"MsoNormal\" style=\"mso-margin-top-alt: auto; mso-margin-bottom-alt: auto; line-height: normal;\"><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\'; color: #444444;\">TOYOTA</span></p>\r\n<p class=\"MsoNormal\" style=\"mso-margin-top-alt: auto; mso-margin-bottom-alt: auto; line-height: normal;\"><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\'; color: #444444;\">Crown Royal Saloon</span></p>\r\n<p class=\"MsoNormal\" style=\"mso-margin-top-alt: auto; mso-margin-bottom-alt: auto; line-height: normal;\"><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\'; color: #444444;\">TOYOTA</span></p>\r\n<p class=\"MsoNormal\" style=\"mso-margin-top-alt: auto; mso-margin-bottom-alt: auto; line-height: normal;\"><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\'; color: #444444;\">Mark II</span></p>\r\n<p class=\"MsoNormal\" style=\"mso-margin-top-alt: auto; mso-margin-bottom-alt: auto; line-height: normal;\"><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\'; color: #444444;\">TOYOTA</span></p>\r\n<p class=\"MsoNormal\" style=\"mso-margin-top-alt: auto; mso-margin-bottom-alt: auto; line-height: normal;\"><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\'; color: #444444;\">Mark II Wagon Blit</span></p>\r\n<p class=\"MsoNormal\" style=\"mso-margin-top-alt: auto; mso-margin-bottom-alt: auto; line-height: normal;\"><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\'; color: #444444;\">TOYOTA</span></p>\r\n<p class=\"MsoNormal\" style=\"mso-margin-top-alt: auto; mso-margin-bottom-alt: auto; line-height: normal;\"><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\'; color: #444444;\">Mark X</span></p>\r\n<p class=\"MsoNormal\" style=\"mso-margin-top-alt: auto; mso-margin-bottom-alt: auto; line-height: normal;\"><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\'; color: #444444;\">TOYOTA</span></p>\r\n<p class=\"MsoNormal\" style=\"mso-margin-top-alt: auto; mso-margin-bottom-alt: auto; line-height: normal;\"><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\'; color: #444444;\">Progres</span></p>\r\n<p class=\"MsoNormal\" style=\"mso-margin-top-alt: auto; mso-margin-bottom-alt: auto; line-height: normal;\"><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\'; color: #444444;\">TOYOTA</span></p>\r\n<p class=\"MsoNormal\" style=\"mso-margin-top-alt: auto; mso-margin-bottom-alt: auto; line-height: normal;\"><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\'; color: #444444;\">Verossa</span></p>\r\n<p class=\"MsoNormal\" style=\"mso-margin-top-alt: auto; mso-margin-bottom-alt: auto; line-height: normal;\"><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\'; color: #444444;\">&nbsp;</span></p>\r\n<p class=\"MsoNormal\" style=\"mso-margin-top-alt: auto; mso-margin-bottom-alt: auto; line-height: normal;\"><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\'; color: #444444;\">TOYOTA</span></p>\r\n<p class=\"MsoNormal\" style=\"mso-margin-top-alt: auto; mso-margin-bottom-alt: auto; line-height: normal;\"><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\'; color: #444444;\">04465-30280</span></p>\r\n<p class=\"MsoNormal\" style=\"mso-margin-top-alt: auto; mso-margin-bottom-alt: auto; line-height: normal;\"><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\'; color: #444444;\">TOYOTA</span></p>\r\n<p class=\"MsoNormal\" style=\"mso-margin-top-alt: auto; mso-margin-bottom-alt: auto; line-height: normal;\"><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\'; color: #444444;\">04465-30300</span></p>\r\n<p class=\"MsoNormal\" style=\"mso-margin-top-alt: auto; mso-margin-bottom-alt: auto; line-height: normal;\"><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\'; color: #444444;\">TOYOTA</span></p>\r\n<p class=\"MsoNormal\" style=\"mso-margin-top-alt: auto; mso-margin-bottom-alt: auto; line-height: normal;\"><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\'; color: #444444;\">04465-30330</span></p>\r\n<p class=\"MsoNormal\" style=\"mso-margin-top-alt: auto; mso-margin-bottom-alt: auto; line-height: normal;\"><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\'; color: #444444;\">TOYOTA</span></p>\r\n<p class=\"MsoNormal\" style=\"mso-margin-top-alt: auto; mso-margin-bottom-alt: auto; line-height: normal;\"><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\'; color: #444444;\">04465-30480</span></p>\r\n<p class=\"MsoNormal\" style=\"mso-margin-top-alt: auto; mso-margin-bottom-alt: auto; line-height: normal;\"><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\'; color: #444444;\">&nbsp;</span></p>\r\n<p class=\"MsoNormal\" style=\"mso-margin-top-alt: auto; mso-margin-bottom-alt: auto; line-height: normal;\"><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\'; color: #444444;\">&nbsp;</span></p>\r\n<p class=\"MsoNormal\" style=\"mso-margin-top-alt: auto; mso-margin-bottom-alt: auto; line-height: normal;\"><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\'; color: #444444;\">&nbsp;</span></p>\r\n<p class=\"MsoNormal\" style=\"mso-margin-top-alt: auto; mso-margin-bottom-alt: auto; line-height: normal;\"><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\'; color: #444444;\">&nbsp;</span></p>', NULL, 5900.00, NULL, 0, 'products/March2021/c70ekQKPdcsn5HdGm5zy.jpg', NULL, '2021-03-31 04:52:00', '2021-04-12 08:01:36', '{\"Size\": null, \"Color\": null}', 1, 0, NULL, NULL, NULL, NULL, NULL, 0),
(21, 'BRAKE PADS AKEBONO AN-690WK', NULL, NULL, NULL, '<p><span style=\"font-size: 10.5pt; font-family: Arial, sans-serif;\">BRAKE PADS AKEBONO AN-690WK</span></p>\r\n<p><span><span style=\"font-size: 10.5pt; font-family: Arial, sans-serif;\">&nbsp;</span></span></p>\r\n<p><span><span style=\"font-size: 10.5pt; font-family: Arial, sans-serif;\">&nbsp;Location Front Axle Brake</span></span></p>\r\n<p><span><span style=\"font-size: 10.5pt; font-family: Arial, sans-serif;\">&nbsp;</span></span></p>\r\n<p><span><span style=\"font-size: 10.5pt; font-family: Arial, sans-serif;\">&nbsp;</span></span></p>\r\n<p><span><span style=\"font-size: 10.5pt; font-family: Arial, sans-serif;\">LEXUS</span></span></p>\r\n<p><span><span style=\"font-size: 10.5pt; font-family: Arial, sans-serif;\">GX460</span></span></p>\r\n<p><span><span style=\"font-size: 10.5pt; font-family: Arial, sans-serif;\">LEXUS</span></span></p>\r\n<p><span><span style=\"font-size: 10.5pt; font-family: Arial, sans-serif;\">GX470</span></span></p>\r\n<p><span><span style=\"font-size: 10.5pt; font-family: Arial, sans-serif;\">MITSUBISHI</span></span></p>\r\n<p><span><span style=\"font-size: 10.5pt; font-family: Arial, sans-serif;\">Pajero</span></span></p>\r\n<p><span><span style=\"font-size: 10.5pt; font-family: Arial, sans-serif;\">MITSUBISHI</span></span></p>\r\n<p><span><span style=\"font-size: 10.5pt; font-family: Arial, sans-serif;\">Pajero / Montero</span></span></p>\r\n<p><span><span style=\"font-size: 10.5pt; font-family: Arial, sans-serif;\">TOYOTA</span></span></p>\r\n<p><span><span style=\"font-size: 10.5pt; font-family: Arial, sans-serif;\">4 Runner</span></span></p>\r\n<p><span><span style=\"font-size: 10.5pt; font-family: Arial, sans-serif;\">TOYOTA</span></span></p>\r\n<p><span><span style=\"font-size: 10.5pt; font-family: Arial, sans-serif;\">FJ Cruiser</span></span></p>\r\n<p><span><span style=\"font-size: 10.5pt; font-family: Arial, sans-serif;\">TOYOTA</span></span></p>\r\n<p><span><span style=\"font-size: 10.5pt; font-family: Arial, sans-serif;\">Fortuner</span></span></p>\r\n<p><span><span style=\"font-size: 10.5pt; font-family: Arial, sans-serif;\">TOYOTA</span></span></p>\r\n<p><span><span style=\"font-size: 10.5pt; font-family: Arial, sans-serif;\">Hilux</span></span></p>\r\n<p><span><span style=\"font-size: 10.5pt; font-family: Arial, sans-serif;\">TOYOTA</span></span></p>\r\n<p><span><span style=\"font-size: 10.5pt; font-family: Arial, sans-serif;\">Hilux Surf</span></span></p>\r\n<p><span><span style=\"font-size: 10.5pt; font-family: Arial, sans-serif;\">TOYOTA</span></span></p>\r\n<p><span><span style=\"font-size: 10.5pt; font-family: Arial, sans-serif;\">Land Cruiser Prado 120</span></span></p>\r\n<p><span><span style=\"font-size: 10.5pt; font-family: Arial, sans-serif;\">TOYOTA</span></span></p>\r\n<p><span><span style=\"font-size: 10.5pt; font-family: Arial, sans-serif;\">Land Cruiser Prado 150</span></span></p>\r\n<p><span><span style=\"font-size: 10.5pt; font-family: Arial, sans-serif;\">TOYOTA</span></span></p>\r\n<p><span><span style=\"font-size: 10.5pt; font-family: Arial, sans-serif;\">Sequoia (USA)</span></span></p>\r\n<p><span><span style=\"font-size: 10.5pt; font-family: Arial, sans-serif;\">TOYOTA</span></span></p>\r\n<p><span><span style=\"font-size: 10.5pt; font-family: Arial, sans-serif;\">Tacoma (USA)</span></span></p>\r\n<p><span><span style=\"font-size: 10.5pt; font-family: Arial, sans-serif;\">TOYOTA</span></span></p>\r\n<p><span><span style=\"font-size: 10.5pt; font-family: Arial, sans-serif;\">Tundra</span></span></p>\r\n<p><span><span style=\"font-size: 10.5pt; font-family: Arial, sans-serif;\">&nbsp;</span></span></p>\r\n<p><span><span style=\"font-size: 10.5pt; font-family: Arial, sans-serif;\">HITACHI</span></span></p>\r\n<p><span><span style=\"font-size: 10.5pt; font-family: Arial, sans-serif;\">NDP411C</span></span></p>\r\n<p><span><span style=\"font-size: 10.5pt; font-family: Arial, sans-serif;\">MITSUBISHI</span></span></p>\r\n<p><span><span style=\"font-size: 10.5pt; font-family: Arial, sans-serif;\">4605A472</span></span></p>\r\n<p><span><span style=\"font-size: 10.5pt; font-family: Arial, sans-serif;\">MITSUBISHI</span></span></p>\r\n<p><span><span style=\"font-size: 10.5pt; font-family: Arial, sans-serif;\">4605A481</span></span></p>\r\n<p><span><span style=\"font-size: 10.5pt; font-family: Arial, sans-serif;\">TOYOTA</span></span></p>\r\n<p><span><span style=\"font-size: 10.5pt; font-family: Arial, sans-serif;\">04465-04070</span></span></p>\r\n<p><span><span style=\"font-size: 10.5pt; font-family: Arial, sans-serif;\">TOYOTA</span></span></p>\r\n<p><span><span style=\"font-size: 10.5pt; font-family: Arial, sans-serif;\">04465-04090</span></span></p>\r\n<p><span><span style=\"font-size: 10.5pt; font-family: Arial, sans-serif;\">TOYOTA</span></span></p>\r\n<p><span><span style=\"font-size: 10.5pt; font-family: Arial, sans-serif;\">04465-0K090</span></span></p>\r\n<p><span><span style=\"font-size: 10.5pt; font-family: Arial, sans-serif;\">TOYOTA</span></span></p>\r\n<p><span><span style=\"font-size: 10.5pt; font-family: Arial, sans-serif;\">04465-0K280</span></span></p>\r\n<p><span><span style=\"font-size: 10.5pt; font-family: Arial, sans-serif;\">TOYOTA</span></span></p>\r\n<p><span><span style=\"font-size: 10.5pt; font-family: Arial, sans-serif;\">04465-0K360</span></span></p>\r\n<p><span><span style=\"font-size: 10.5pt; font-family: Arial, sans-serif;\">TOYOTA</span></span></p>\r\n<p><span><span style=\"font-size: 10.5pt; font-family: Arial, sans-serif;\">04465-0K370</span></span></p>\r\n<p><span><span style=\"font-size: 10.5pt; font-family: Arial, sans-serif;\">TOYOTA</span></span></p>\r\n<p><span><span style=\"font-size: 10.5pt; font-family: Arial, sans-serif;\">04465-0K400</span></span></p>\r\n<p><span><span style=\"font-size: 10.5pt; font-family: Arial, sans-serif;\">TOYOTA</span></span></p>\r\n<p><span><span style=\"font-size: 10.5pt; font-family: Arial, sans-serif;\">04465-0K401</span></span></p>\r\n<p><span><span style=\"font-size: 10.5pt; font-family: Arial, sans-serif;\">TOYOTA</span></span></p>\r\n<p><span><span style=\"font-size: 10.5pt; font-family: Arial, sans-serif;\">04465-35250</span></span></p>\r\n<p><span><span style=\"font-size: 10.5pt; font-family: Arial, sans-serif;\">TOYOTA</span></span></p>\r\n<p><span><span style=\"font-size: 10.5pt; font-family: Arial, sans-serif;\">04465-35290</span></span></p>\r\n<p><span><span style=\"font-size: 10.5pt; font-family: Arial, sans-serif;\">TOYOTA</span></span></p>\r\n<p><span><span style=\"font-size: 10.5pt; font-family: Arial, sans-serif;\">04465-60270</span></span></p>\r\n<p><span><span style=\"font-size: 10.5pt; font-family: Arial, sans-serif;\">TOYOTA</span></span></p>\r\n<p><span><span style=\"font-size: 10.5pt; font-family: Arial, sans-serif;\">04465-60320</span></span></p>\r\n<p><span><span style=\"font-size: 10.5pt; font-family: Arial, sans-serif;\">TOYOTA</span></span></p>\r\n<p><span><span style=\"font-size: 10.5pt; font-family: Arial, sans-serif;\">04465-60330</span></span></p>\r\n<p><span><span style=\"font-size: 10.5pt; font-family: Arial, sans-serif;\">TOYOTA</span></span></p>\r\n<p><span><span style=\"font-size: 10.5pt; font-family: Arial, sans-serif;\">04465-YZZE1</span></span></p>\r\n<p><span><span style=\"font-size: 10.5pt; font-family: Arial, sans-serif;\">TOYOTA</span></span></p>\r\n<p><span><span style=\"font-size: 10.5pt; font-family: Arial, sans-serif;\">044650K390</span></span></p>\r\n<p><span><span style=\"font-size: 10.5pt; font-family: Arial, sans-serif;\">TOYOTA</span></span></p>\r\n<p><span><span style=\"font-size: 10.5pt; font-family: Arial, sans-serif;\">04465AZ001TM</span></span></p>\r\n<p><span><span style=\"font-size: 10.5pt; font-family: Arial, sans-serif;\">TOYOTA</span></span></p>\r\n<p><span><span style=\"font-size: 10.5pt; font-family: Arial, sans-serif;\">04465YZZQ7</span></span></p>\r\n<p><span><span style=\"font-size: 10.5pt; font-family: Arial, sans-serif;\">TOYOTA</span></span></p>\r\n<p>&nbsp;</p>\r\n<p style=\"font-variant-ligatures: normal; font-variant-caps: normal; orphans: 2; text-align: start; widows: 2; -webkit-text-stroke-width: 0px; text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial; word-spacing: 0px;\"><span><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\'; color: #444444;\">V9118-A092</span></span></p>', NULL, 6800.00, NULL, 0, 'products/March2021/Z9bmWOV9J5UYUCWvJvc7.jpg', NULL, '2021-03-31 04:54:00', '2021-04-12 08:03:01', '{\"Size\": null, \"Color\": null}', 1, 0, NULL, NULL, NULL, NULL, NULL, 0),
(22, 'BRAKE PADS AKEBONO AN-696WK', NULL, NULL, NULL, '<p><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\';\">BRAKE PADS AKEBONO AN-696WK</span></p>\r\n<p><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\';\">&nbsp;</span></p>\r\n<p><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\';\"><span style=\"mso-spacerun: yes;\">&nbsp;</span>Location: Rear Axle Brake</span></p>\r\n<p><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\';\">&nbsp;</span></p>\r\n<p><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\';\">&nbsp;</span></p>\r\n<p><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\';\">&nbsp;</span></p>\r\n<p><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\';\">SUBARU</span></p>\r\n<p><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\';\">BRZ</span></p>\r\n<p><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\';\">SUBARU</span></p>\r\n<p><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\';\">Exiga</span></p>\r\n<p><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\';\">SUBARU</span></p>\r\n<p><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\';\">Forester</span></p>\r\n<p><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\';\">SUBARU</span></p>\r\n<p><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\';\">Impeza WRX</span></p>\r\n<p><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\';\">SUBARU</span></p>\r\n<p><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\';\">Impreza</span></p>\r\n<p><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\';\">SUBARU</span></p>\r\n<p><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\';\">Legacy</span></p>\r\n<p><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\';\">SUBARU</span></p>\r\n<p><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\';\">Legacy Outback</span></p>\r\n<p><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\';\">SUBARU</span></p>\r\n<p><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\';\">XV</span></p>\r\n<p><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\';\">TOYOTA</span></p>\r\n<p><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\';\">86</span></p>\r\n<p><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\';\">TOYOTA</span></p>\r\n<p><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\';\">Scion FR-S</span></p>\r\n<p><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\';\">&nbsp;</span></p>\r\n<p><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\';\">SUBARU</span></p>\r\n<p><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\';\">26296-AG010</span></p>\r\n<p><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\';\">SUBARU</span></p>\r\n<p><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\';\">26696-AG000</span></p>\r\n<p><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\';\">SUBARU</span></p>\r\n<p><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\';\">26696-AG010</span></p>\r\n<p><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\';\">SUBARU</span></p>\r\n<p><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\';\">26696-AG030</span></p>\r\n<p><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\';\">SUBARU</span></p>\r\n<p><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\';\">26696-AG031</span></p>\r\n<p><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\';\">SUBARU</span></p>\r\n<p><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\';\">26696-AG050</span></p>\r\n<p><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\';\">SUBARU</span></p>\r\n<p><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\';\">26696-AG051</span></p>\r\n<p><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\';\">SUBARU</span></p>\r\n<p><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\';\">26696-FJ000</span></p>\r\n<p><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\';\">SUBARU</span></p>\r\n<p><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\';\">26696AG040</span></p>\r\n<p><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\';\">SUBARU</span></p>\r\n<p><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\';\">8218-D1114</span></p>\r\n<p><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\';\">TOYOTA</span></p>\r\n<p><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\';\">SU003-04096</span></p>\r\n<p><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\';\">TOYOTA</span></p>\r\n<p><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\';\">SU00304097</span></p>', NULL, 6800.00, NULL, 0, 'products/March2021/CRpE82hExNIvTE5JlA3K.jpg', NULL, '2021-03-31 04:56:00', '2021-04-12 07:48:56', '{\"Size\": null, \"Color\": null}', 1, 0, NULL, NULL, NULL, NULL, NULL, 0),
(23, 'BRAKE PADS AKEBONO A-714K', NULL, NULL, NULL, '<p><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\';\">BRAKE PADS AKEBONO A-714K</span></p>\r\n<p><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\';\">&nbsp;</span></p>\r\n<p><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\';\">Location Front Axle Brake</span></p>\r\n<p><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\';\">&nbsp;</span></p>\r\n<p><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\';\">&nbsp;</span></p>\r\n<p><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\';\">&nbsp;</span></p>\r\n<p><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\';\">PERODUA</span></p>\r\n<p><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\';\">Alza</span></p>\r\n<p><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\';\">TOYOTA</span></p>\r\n<p><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\';\">Allion</span></p>\r\n<p><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\';\">TOYOTA</span></p>\r\n<p><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\';\">Belta</span></p>\r\n<p><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\';\">TOYOTA</span></p>\r\n<p><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\';\">Corolla Axio</span></p>\r\n<p><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\';\">TOYOTA</span></p>\r\n<p><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\';\">Passo</span></p>\r\n<p><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\';\">TOYOTA</span></p>\r\n<p><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\';\">Porte/Spade</span></p>\r\n<p><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\';\">TOYOTA</span></p>\r\n<p><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\';\">Probox</span></p>\r\n<p><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\';\">TOYOTA</span></p>\r\n<p><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\';\">Spade</span></p>\r\n<p><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\';\">TOYOTA</span></p>\r\n<p><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\';\">Vios</span></p>\r\n<p><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\';\">TOYOTA</span></p>\r\n<p><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\';\">Vitz</span></p>\r\n<p><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\';\">TOYOTA</span></p>\r\n<p><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\';\">Yaris</span></p>\r\n<p><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\';\">TOYOTA</span></p>\r\n<p><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\';\">Yaris (USA)</span></p>\r\n<p><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\';\">TOYOTA</span></p>\r\n<p><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\';\">Yris/Hybrid</span></p>\r\n<p><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\';\">&nbsp;</span></p>\r\n<p><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\';\">DAIHATSU</span></p>\r\n<p><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\';\">04465-B1350</span></p>\r\n<p><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\';\">HITACHI</span></p>\r\n<p><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\';\">NDP419</span></p>\r\n<p><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\';\">TOYOTA</span></p>\r\n<p><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\';\">04465-0D140</span></p>\r\n<p><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\';\">TOYOTA</span></p>\r\n<p><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\';\">04465-12640</span></p>\r\n<p><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\';\">TOYOTA</span></p>\r\n<p><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\';\">04465-52180</span></p>\r\n<p><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\';\">TOYOTA</span></p>\r\n<p><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\';\">04465-52200</span></p>\r\n<p><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\';\">TOYOTA</span></p>\r\n<p><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\';\">04465-52260</span></p>\r\n<p><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\';\">TOYOTA</span></p>\r\n<p><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\';\">04465-AZ017-TM</span></p>\r\n<p><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\';\">TOYOTA</span></p>\r\n<p><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\';\">04465-B1350</span></p>\r\n<p><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\';\">TOYOTA</span></p>\r\n<p><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\';\">04465-YZZE3</span></p>\r\n<p><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\';\">TOYOTA</span></p>\r\n<p><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\';\">44650W140</span></p>\r\n<p><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\';\">TOYOTA</span></p>\r\n<p><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\';\">AY040-TY078</span></p>\r\n<p><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\';\">TOYOTA</span></p>\r\n<p><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\';\">V9118A104</span></p>\r\n<p><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\';\">&nbsp;</span></p>', NULL, 5700.00, NULL, 0, 'products/March2021/1GXiVcZlc6oLm44zBhSQ.jpg', NULL, '2021-03-31 04:58:00', '2021-04-12 08:07:02', '{\"Size\": null, \"Color\": null}', 1, 0, NULL, NULL, NULL, NULL, NULL, 0),
(24, 'BRAKE PADS AKEBONO AN-715K', NULL, NULL, NULL, '<p style=\"margin-bottom: 12.0pt;\"><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\';\">&nbsp;</span></p>\r\n<p><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\';\">BRAKE PADS AKEBONO AN-715K</span></p>\r\n<p><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\';\">&nbsp;</span></p>\r\n<p><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\';\">It is a non-asbestos brake pad made by Akebono Brake. It is a pad that pursues quality, including OEM supply to automobile manufacturers.</span></p>\r\n<p><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\';\">Supported Models&nbsp;</span></p>\r\n<p><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\';\">DAIHATSU</span></p>\r\n<p><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\';\">Boon Luminas</span></p>\r\n<p><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\';\">SUBARU</span></p>\r\n<p><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\';\">Trezia</span></p>\r\n<p><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\';\">TOYOTA</span></p>\r\n<p><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\';\">Belta</span></p>\r\n<p><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\';\">TOYOTA</span></p>\r\n<p><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\';\">Corolla Axio</span></p>\r\n<p><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\';\">TOYOTA</span></p>\r\n<p><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\';\">Corolla Axio/Fielder</span></p>\r\n<p><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\';\">TOYOTA</span></p>\r\n<p><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\';\">Corolla Fielder</span></p>\r\n<p><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\';\">TOYOTA</span></p>\r\n<p><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\';\">Passo</span></p>\r\n<p><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\';\">TOYOTA</span></p>\r\n<p><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\';\">Porte/Spade</span></p>\r\n<p><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\';\">TOYOTA</span></p>\r\n<p><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\';\">Ractis</span></p>\r\n<p><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\';\">TOYOTA</span></p>\r\n<p><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\';\">Vios</span></p>\r\n<p><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\';\">TOYOTA</span></p>\r\n<p><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\';\">Vitz</span></p>\r\n<p><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\';\">TOYOTA</span></p>\r\n<p><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\';\">Yaris</span></p>\r\n<p><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\';\">TOYOTA</span></p>\r\n<p><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\';\">04465-0D130</span></p>\r\n<p><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\';\">TOYOTA</span></p>\r\n<p><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\';\">04465-12650</span></p>\r\n<p><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\';\">TOYOTA</span></p>\r\n<p><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\';\">04465-52190</span></p>\r\n<p><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\';\">TOYOTA</span></p>\r\n<p><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\';\">04465-52240</span></p>\r\n<p><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\';\">TOYOTA</span></p>\r\n<p><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\';\">04465-52270</span></p>\r\n<p><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\';\">TOYOTA</span></p>\r\n<p><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\';\">04465-52310</span></p>\r\n<p><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\';\">TOYOTA</span></p>\r\n<p><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\';\">04465-B1360</span></p>\r\n<p><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\';\">TOYOTA</span></p>\r\n<p><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\';\">04465-WY010</span></p>\r\n<p><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\';\">TOYOTA</span></p>\r\n<p><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\';\">AY040-TY079</span></p>\r\n<p><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\';\">TOYOTA</span></p>\r\n<p><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\';\">V9118-A100</span></p>\r\n<p><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\';\">TOYOTA</span></p>\r\n<p><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\';\">V9118A101</span></p>\r\n<p><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\';\">&nbsp;</span></p>\r\n<p><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\';\">&nbsp;</span></p>', NULL, 5400.00, NULL, 0, 'products/March2021/osfPdwgPypqxovGgSbPH.jpg', NULL, '2021-03-31 05:00:00', '2021-04-12 08:08:17', '{\"Size\": null, \"Color\": null}', 1, 0, NULL, NULL, NULL, NULL, NULL, 0);
INSERT INTO `products_old` (`id`, `name`, `product_number`, `shop_id`, `brand_id`, `description`, `small_description`, `price`, `buy_price`, `stock`, `cover_img`, `images`, `created_at`, `updated_at`, `product_attributes`, `is_featured`, `is_sale`, `sale_price`, `vehicle_maker`, `vehicle_model`, `vehicle_manufacturing_year`, `product_type`, `is_publish`) VALUES
(25, 'BRAKE PADS AKEBONO AN-716WK', NULL, NULL, NULL, '<p><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\';\">BRAKE PADS AKEBONO AN-716WK</span></p>\r\n<p><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\';\">&nbsp;</span></p>\r\n<p><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\';\">&nbsp; &nbsp; &nbsp; &nbsp;Location: Rear Axle Brake</span></p>\r\n<p><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\';\">&nbsp;</span></p>\r\n<p><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\';\">&nbsp;</span></p>\r\n<p><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\';\">&nbsp;</span></p>\r\n<p><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\';\">CHEVROLET (GM)</span></p>\r\n<p><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\';\">Pontiac Vibe</span></p>\r\n<p><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\';\">Great Wall Motors</span></p>\r\n<p><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\';\">Great Wall Tengyi</span></p>\r\n<p><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\';\">JAC</span></p>\r\n<p><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\';\">Refine</span></p>\r\n<p><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\';\">LEXUS</span></p>\r\n<p><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\';\">CT200h</span></p>\r\n<p><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\';\">MITSUOKA</span></p>\r\n<p><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\';\">NOUERA 6-02</span></p>\r\n<p><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\';\">SUBARU</span></p>\r\n<p><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\';\">Trezia</span></p>\r\n<p><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\';\">TOYOTA</span></p>\r\n<p><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\';\">Auris</span></p>\r\n<p><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\';\">Belta</span></p>\r\n<p><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\';\">Blade</span></p>\r\n<p><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\';\">Corolla</span></p>\r\n<p><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\';\">Corolla Altis</span></p>\r\n<p><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\';\">Corolla Axio</span></p>\r\n<p><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\';\">Corolla Rumion</span></p>\r\n<p><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\';\">iQ</span></p>\r\n<p><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\';\">Ist</span></p>\r\n<p><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\';\">Matrix</span></p>\r\n<p><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\';\">Prius</span></p>\r\n<p><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\';\">Prius PHV</span></p>\r\n<p><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\';\">Ractis</span></p>\r\n<p><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\';\">Raum</span></p>\r\n<p><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\';\">Rumion</span></p>\r\n<p><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\';\">Scion IM</span></p>\r\n<p><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\';\">Scion TC</span></p>\r\n<p><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\';\">Scion XB</span></p>\r\n<p><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\';\">Urban Cruiser</span></p>\r\n<p><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\';\">Verso-S</span></p>\r\n<p><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\';\">Vios</span></p>\r\n<p><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\';\">Vitz</span></p>\r\n<p><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\';\">TOYOTA</span></p>\r\n<p><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\';\">Yaris</span></p>\r\n<p><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\';\">TOYOTA</span></p>\r\n<p><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\';\">Zelas</span></p>\r\n<p><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\';\">&nbsp;</span></p>\r\n<p><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\';\">0446647030</span></p>\r\n<p><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\';\">TOYOTA</span></p>\r\n<p><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\';\">04466-02260</span></p>\r\n<p><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\';\">TOYOTA</span></p>\r\n<p><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\';\">04466-02270</span></p>\r\n<p><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\';\">TOYOTA</span></p>\r\n<p><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\';\">04466-02310</span></p>\r\n<p><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\';\">TOYOTA</span></p>\r\n<p><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\';\">04466-12130</span></p>\r\n<p><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\';\">TOYOTA</span></p>\r\n<p><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\';\">04466-12140</span></p>\r\n<p><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\';\">TOYOTA</span></p>\r\n<p><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\';\">04466-12150</span></p>\r\n<p><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\';\">TOYOTA</span></p>\r\n<p><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\';\">04466-12190</span></p>\r\n<p><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\';\">TOYOTA</span></p>\r\n<p><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\';\">04466-47020</span></p>\r\n<p><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\';\">TOYOTA</span></p>\r\n<p><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\';\">04466-47080</span></p>\r\n<p><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\';\">TOYOTA</span></p>\r\n<p><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\';\">04466-47100</span></p>\r\n<p><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\';\">TOYOTA</span></p>\r\n<p><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\';\">04466-52070</span></p>\r\n<p><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\';\">TOYOTA</span></p>\r\n<p><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\';\">04466-52110</span></p>\r\n<p><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\';\">TOYOTA</span></p>\r\n<p><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\';\">04466-52120</span></p>\r\n<p><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\';\">TOYOTA</span></p>\r\n<p><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\';\">04466-52130</span></p>\r\n<p><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\';\">TOYOTA</span></p>\r\n<p><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\';\">04466-52140</span></p>\r\n<p><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\';\">TOYOTA</span></p>\r\n<p><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\';\">04466-52150</span></p>\r\n<p><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\';\">TOYOTA</span></p>\r\n<p><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\';\">04466-52170</span></p>\r\n<p><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\';\">TOYOTA</span></p>\r\n<p><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\';\">04466-76012</span></p>\r\n<p><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\';\">TOYOTA</span></p>\r\n<p><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\';\">04466-WY010</span></p>\r\n<p><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\';\">TOYOTA</span></p>\r\n<p><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\';\">0446602190</span></p>\r\n<p><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\';\">TOYOTA</span></p>\r\n<p><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\';\">0446602191</span></p>\r\n<p><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\';\">TOYOTA</span></p>\r\n<p><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\';\">0446602210</span></p>\r\n<p><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\';\">TOYOTA</span></p>\r\n<p><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\';\">0446621020</span></p>\r\n<p><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\';\">TOYOTA</span></p>\r\n<p><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\';\">0446647030-79</span></p>\r\n<p><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\';\">TOYOTA</span></p>\r\n<p><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\';\">0446647040</span></p>\r\n<p><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\';\">TOYOTA</span></p>\r\n<p><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\';\">0446647110</span></p>\r\n<p><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\';\">TOYOTA</span></p>\r\n<p><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\';\">0446652121</span></p>\r\n<p><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\';\">TOYOTA</span></p>\r\n<p><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\';\">0446652141</span></p>\r\n<p><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\';\">TOYOTA</span></p>\r\n<p><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\';\">0446652151</span></p>\r\n<p><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\';\">TOYOTA</span></p>\r\n<p><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\';\">0446676010</span></p>\r\n<p><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\';\">TOYOTA</span></p>\r\n<p><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\';\">0446676010-79</span></p>\r\n<p><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\';\">TOYOTA</span></p>\r\n<p><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\';\">0446676011</span></p>\r\n<p><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\';\">TOYOTA</span></p>\r\n<p><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\';\">0446676011-79</span></p>\r\n<p><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\';\">TOYOTA</span></p>\r\n<p><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\';\">AY060-TY027</span></p>\r\n<p><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\';\">TOYOTA</span></p>\r\n<p><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\';\">V9118-B037</span></p>', NULL, 3900.00, NULL, 0, 'products/March2021/dVY3Qh5LJ6ErY14tCkp0.jpg', NULL, '2021-03-31 05:02:00', '2021-04-12 08:06:11', '{\"Size\": null, \"Color\": null}', 1, 0, NULL, NULL, NULL, NULL, NULL, 0),
(26, 'BRAKE PADS AKEBONO AN-732K', NULL, NULL, NULL, '<p><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\';\">BRAKE PADS AKEBONO AN-732K</span></p>\r\n<p><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\';\">&nbsp;</span></p>\r\n<p><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\';\">&nbsp; Location Front Axle Brake</span></p>\r\n<p><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\';\">&nbsp;</span></p>\r\n<p><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\';\">&nbsp;</span></p>\r\n<p><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\';\">CHEVROLET (GM)</span></p>\r\n<p><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\';\">Pontiac Vibe</span></p>\r\n<p><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\';\">TOYOTA</span></p>\r\n<p><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\';\">Auris</span></p>\r\n<p><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\';\">TOYOTA</span></p>\r\n<p><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\';\">Blade</span></p>\r\n<p><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\';\">TOYOTA</span></p>\r\n<p><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\';\">Harrier</span></p>\r\n<p><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\';\">TOYOTA</span></p>\r\n<p><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\';\">Lexus RX (Harrier)</span></p>\r\n<p><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\';\">TOYOTA</span></p>\r\n<p><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\';\">Mark X Zio</span></p>\r\n<p><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\';\">TOYOTA</span></p>\r\n<p><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\';\">Matrix</span></p>\r\n<p><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\';\">TOYOTA</span></p>\r\n<p><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\';\">Mirai</span></p>\r\n<p><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\';\">TOYOTA</span></p>\r\n<p><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\';\">Prius Alpha</span></p>\r\n<p><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\';\">TOYOTA</span></p>\r\n<p><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\';\">Prius V</span></p>\r\n<p><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\';\">TOYOTA</span></p>\r\n<p><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\';\">RAV 4</span></p>\r\n<p><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\';\">TOYOTA</span></p>\r\n<p><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\';\">Scion IM</span></p>\r\n<p><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\';\">TOYOTA</span></p>\r\n<p><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\';\">Scion TC</span></p>\r\n<p><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\';\">TOYOTA</span></p>\r\n<p><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\';\">Vanguard</span></p>\r\n<p><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\';\">TOYOTA</span></p>\r\n<p><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\';\">Zelas</span></p>\r\n<p><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\';\">&nbsp;</span></p>\r\n<p><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\';\">GM</span></p>\r\n<p><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\';\">19169644</span></p>\r\n<p><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\';\">GM</span></p>\r\n<p><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\';\">19184911</span></p>\r\n<p><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\';\">HITACHI</span></p>\r\n<p><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\';\">NDP430</span></p>\r\n<p><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\';\">TOYOTA</span></p>\r\n<p><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\';\">04465-42140</span></p>\r\n<p><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\';\">TOYOTA</span></p>\r\n<p><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\';\">04465-42150</span></p>\r\n<p><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\';\">TOYOTA</span></p>\r\n<p><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\';\">04465-42180</span></p>\r\n<p><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\';\">TOYOTA</span></p>\r\n<p><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\';\">04465-42190</span></p>\r\n<p><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\';\">TOYOTA</span></p>\r\n<p><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\';\">04465-AZ021-TM</span></p>\r\n<p><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\';\">TOYOTA</span></p>\r\n<p><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\';\">0446502230</span></p>\r\n<p><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\';\">TOYOTA</span></p>\r\n<p><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\';\">0446542170</span></p>\r\n<p><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\';\">TOYOTA</span></p>\r\n<p><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\';\">04465YZZDY</span></p>\r\n<p><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\';\">TOYOTA</span></p>\r\n<p><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\';\">04465YZZE8</span></p>\r\n<p><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\';\">TOYOTA</span></p>\r\n<p><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\';\">AY040-TY082</span></p>\r\n<p><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\';\">TOYOTA</span></p>\r\n<p><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\';\">V9118-A103</span></p>\r\n<p><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\';\">&nbsp;</span></p>\r\n<p><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\'; color: #444444;\">&nbsp;</span></p>\r\n<p><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\'; color: #444444;\">&nbsp;</span></p>\r\n<p style=\"font-variant-ligatures: normal; font-variant-caps: normal; orphans: 2; text-align: start; widows: 2; -webkit-text-stroke-width: 0px; text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial; word-spacing: 0px;\"><span><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\'; color: #444444;\">&nbsp;</span></span></p>\r\n<p style=\"font-variant-ligatures: normal; font-variant-caps: normal; orphans: 2; text-align: start; widows: 2; -webkit-text-stroke-width: 0px; text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial; word-spacing: 0px;\"><span><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\'; color: #444444;\">&nbsp;</span></span></p>', NULL, 6900.00, NULL, 0, 'products/March2021/VpgBYOGDiVrWtXBb3j4s.jpg', NULL, '2021-03-31 05:08:00', '2021-04-12 08:05:09', '{\"Size\": null, \"Color\": null}', 1, 0, NULL, NULL, NULL, NULL, NULL, 0),
(27, 'BRAKE PADS AKEBONO AN-733K', NULL, NULL, NULL, '<p><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\';\">BRAKE PADS AKEBONO AN-733K</span></p>\r\n<p><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\';\">&nbsp;</span></p>\r\n<p><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\';\">Location Rear Axle Brake</span></p>\r\n<p><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\';\">&nbsp;</span></p>\r\n<p><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\';\">&nbsp;</span></p>\r\n<p><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\';\">&nbsp;</span></p>\r\n<p><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\';\">DAIHATSU</span></p>\r\n<p><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\';\">Altis</span></p>\r\n<p><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\';\">LEXUS</span></p>\r\n<p><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\';\">ES200</span></p>\r\n<p><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\';\">LEXUS</span></p>\r\n<p><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\';\">ES240</span></p>\r\n<p><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\';\">LEXUS</span></p>\r\n<p><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\';\">ES250</span></p>\r\n<p><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\';\">LEXUS</span></p>\r\n<p><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\';\">ES300H</span></p>\r\n<p><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\';\">LEXUS</span></p>\r\n<p><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\';\">ES350</span></p>\r\n<p><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\';\">LEXUS</span></p>\r\n<p><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\';\">HS250h</span></p>\r\n<p><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\';\">TOYOTA</span></p>\r\n<p><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\';\">Avalon</span></p>\r\n<p><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\';\">TOYOTA</span></p>\r\n<p><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\';\">Camry</span></p>\r\n<p><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\';\">TOYOTA</span></p>\r\n<p><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\';\">Camry/Aurion</span></p>\r\n<p><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\';\">TOYOTA</span></p>\r\n<p><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\';\">Harrier</span></p>\r\n<p><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\';\">TOYOTA</span></p>\r\n<p><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\';\">Lexus RX (Harrier)</span></p>\r\n<p><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\';\">TOYOTA</span></p>\r\n<p><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\';\">Mark X Zio</span></p>\r\n<p><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\';\">TOYOTA</span></p>\r\n<p><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\';\">Matrix</span></p>\r\n<p><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\';\">TOYOTA</span></p>\r\n<p><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\';\">RAV 4</span></p>\r\n<p><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\';\">TOYOTA</span></p>\r\n<p><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\';\">Sai</span></p>\r\n<p><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\';\">TOYOTA</span></p>\r\n<p><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\';\">Vanguard</span></p>\r\n<p><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\';\">&nbsp;</span></p>\r\n<p><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\';\">GM</span></p>\r\n<p><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\';\">19184917</span></p>\r\n<p><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\';\">HITACHI</span></p>\r\n<p><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\';\">NDP434</span></p>\r\n<p><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\';\">TOYOTA</span></p>\r\n<p><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\';\">04466-06070</span></p>\r\n<p><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\';\">TOYOTA</span></p>\r\n<p><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\';\">04466-06090</span></p>\r\n<p><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\';\">TOYOTA</span></p>\r\n<p><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\';\">04466-06100</span></p>\r\n<p><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\';\">TOYOTA</span></p>\r\n<p><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\';\">04466-06200</span></p>\r\n<p><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\';\">TOYOTA</span></p>\r\n<p><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\';\">04466-06210</span></p>\r\n<p><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\';\">TOYOTA</span></p>\r\n<p><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\';\">04466-06220</span></p>\r\n<p><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\';\">TOYOTA</span></p>\r\n<p><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\';\">04466-33160</span></p>\r\n<p><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\';\">TOYOTA</span></p>\r\n<p><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\';\">04466-33180</span></p>\r\n<p><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\';\">TOYOTA</span></p>\r\n<p><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\';\">04466-33200</span></p>\r\n<p><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\';\">TOYOTA</span></p>\r\n<p><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\';\">04466-42060</span></p>\r\n<p><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\';\">TOYOTA</span></p>\r\n<p><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\';\">04466-75010</span></p>\r\n<p><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\';\">TOYOTA</span></p>\r\n<p><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\';\">04466-WY050</span></p>\r\n<p><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\';\">TOYOTA</span></p>\r\n<p><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\';\">0446602220</span></p>\r\n<p><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\';\">TOYOTA</span></p>\r\n<p><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\';\">0446606060</span></p>\r\n<p><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\';\">TOYOTA</span></p>\r\n<p><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\';\">04466YZZAQ</span></p>', NULL, 4500.00, NULL, 0, 'products/March2021/Je5H6aO3qEywhntzhrOq.jpg', NULL, '2021-03-31 05:10:00', '2021-04-12 07:50:15', '{\"Size\": null, \"Color\": null}', 1, 0, NULL, NULL, NULL, NULL, NULL, 0),
(28, 'AKEBONO an-734 K Brake Pads', NULL, NULL, NULL, '<p><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\';\">AKEBONO an-734 K Brake Pads</span></p>\r\n<p><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\';\">It is a non-asbestos brake pad made by Akebono Brake. It is a pad that pursues quality, including OEM supply to automobile manufacturers.</span></p>\r\n<p><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\';\">&bull; Front Axle Brake</span></p>\r\n<p><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\';\">&bull; Thickness [mm]: 17,6</span></p>\r\n<p><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\';\">&bull; Width [mm]: 157,5</span></p>\r\n<p><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\';\">Manufacturer</span></p>\r\n<p><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\';\">Akebono Europe SAS</span></p>\r\n<p><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\';\">Brand</span></p>\r\n<p><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\';\">Akebono</span></p>\r\n<p><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\';\">Product Dimensions</span></p>\r\n<p><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\';\">19.91 x 14.39 x 7.88 cm;</span></p>\r\n<p><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\';\">5.11 Kilograms</span></p>\r\n<p><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\';\">Item model number</span></p>\r\n<p><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\';\">AN-734K</span></p>\r\n<p><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\';\">Manufacturer Part Number</span></p>\r\n<p><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\';\">AN-734K</span></p>\r\n<p><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\';\">OEM Part Number</span></p>\r\n<p><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\';\">TOYOTA 0446533440,</span></p>\r\n<p><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\';\">TOYOTA 0446533450,</span></p>\r\n<p><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\';\">TOYOTA 0446533470</span></p>\r\n<p><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\';\">Item Weight</span></p>\r\n<p><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\';\">5.11 kg</span></p>\r\n<p><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\';\">&nbsp;</span></p>\r\n<p><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\';\">DAIHATSU</span></p>\r\n<p><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\';\">Altis</span></p>\r\n<p><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\';\">LEXUS</span></p>\r\n<p><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\';\">ES200</span></p>\r\n<p><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\';\">LEXUS</span></p>\r\n<p><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\';\">ES240</span></p>\r\n<p><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\';\">LEXUS</span></p>\r\n<p><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\';\">ES250</span></p>\r\n<p><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\';\">LEXUS</span></p>\r\n<p><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\';\">ES300H</span></p>\r\n<p><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\';\">LEXUS</span></p>\r\n<p><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\';\">ES350</span></p>\r\n<p><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\';\">TOYOTA</span></p>\r\n<p><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\';\">Avalon</span></p>\r\n<p><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\';\">TOYOTA</span></p>\r\n<p><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\';\">Camry</span></p>\r\n<p><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\';\">TOYOTA</span></p>\r\n<p><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\';\">Camry/Aurion</span></p>\r\n<p><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\';\">&nbsp;</span></p>\r\n<p><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\';\">&nbsp;</span></p>\r\n<p><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\';\">TOYOTA</span></p>\r\n<p><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\';\">04465-06070</span></p>\r\n<p><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\';\">TOYOTA</span></p>\r\n<p><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\';\">04465-06080</span></p>\r\n<p><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\';\">TOYOTA</span></p>\r\n<p><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\';\">04465-06100</span></p>\r\n<p><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\';\">TOYOTA</span></p>\r\n<p><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\';\">04465-06110</span></p>\r\n<p><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\';\">TOYOTA</span></p>\r\n<p><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\';\">04465-06131</span></p>\r\n<p><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\';\">TOYOTA</span></p>\r\n<p><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\';\">04465-06140</span></p>\r\n<p><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\';\">TOYOTA</span></p>\r\n<p><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\';\">04465-07010</span></p>\r\n<p><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\';\">TOYOTA</span></p>\r\n<p><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\';\">04465-07011</span></p>\r\n<p><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\';\">TOYOTA</span></p>\r\n<p><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\';\">04465-33440</span></p>\r\n<p><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\';\">TOYOTA</span></p>\r\n<p><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\';\">04465-33445</span></p>\r\n<p><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\';\">TOYOTA</span></p>\r\n<p><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\';\">04465-33450</span></p>\r\n<p><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\';\">TOYOTA</span></p>\r\n<p><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\';\">&nbsp;</span></p>\r\n<p><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\';\">04465-33470</span></p>\r\n<p><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\';\">TOYOTA</span></p>\r\n<p><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\';\">04465-33471</span></p>\r\n<p><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\';\">TOYOTA</span></p>\r\n<p><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\';\">04465-AZ020-TM</span></p>\r\n<p><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\';\">TOYOTA</span></p>\r\n<p><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\';\">04465-AZ116</span></p>\r\n<p><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\';\">TOYOTA</span></p>\r\n<p><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\';\">04465YZZEG</span></p>\r\n<p><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\';\">TOYOTA</span></p>\r\n<p><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\';\">446506100</span></p>\r\n<p><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\';\">TOYOTA</span></p>\r\n<p><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\';\">AY040-TY084</span></p>\r\n<p><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\';\">&nbsp;</span></p>', NULL, 6900.00, NULL, 0, 'products/March2021/KG0fqOF9peoFFYKPscQN.jpg', NULL, '2021-03-31 05:11:00', '2021-04-12 07:58:44', '{\"Size\": null, \"Color\": null}', 1, 0, NULL, NULL, NULL, NULL, NULL, 0),
(29, 'Mann Filter ML 1046 Oil Filter', NULL, NULL, NULL, '<p class=\"MsoNormal\" style=\"mso-margin-top-alt: auto; mso-margin-bottom-alt: auto; line-height: normal;\"><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\'; color: #444444;\">Mann Filter ML 1046 Oil Filter</span></p>\r\n<p class=\"MsoNormal\" style=\"mso-margin-top-alt: auto; mso-margin-bottom-alt: auto; line-height: normal;\"><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\'; color: #444444;\">Original equipment number 04152-38020&nbsp;</span></p>\r\n<p class=\"MsoNormal\" style=\"mso-margin-top-alt: auto; margin-bottom: .0001pt; line-height: normal;\"><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\'; color: #444444;\">Efficient separation and high dirt holding capacity with minimal pressure drop</span></p>\r\n<p class=\"MsoNormal\" style=\"mso-margin-top-alt: auto; margin-bottom: .0001pt; line-height: normal;\"><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\'; color: #444444;\">Reliably purify oils from dirt, and carbon deposits, soot</span></p>\r\n<p class=\"MsoNormal\" style=\"mso-margin-top-alt: auto; margin-bottom: .0001pt; line-height: normal;\"><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\'; color: #444444;\">Optimum protection for the engine</span></p>', NULL, 900.00, NULL, 0, 'products/March2021/QKOS19JKxQRDHADisqvP.jpg', NULL, '2021-03-31 06:36:00', '2021-04-12 08:10:25', '{\"Size\": null, \"Color\": null}', 1, 0, NULL, NULL, NULL, NULL, NULL, 0),
(30, 'Mann-Filter 1050 By-pass Oil Filter', NULL, NULL, NULL, '<p class=\"MsoNormal\" style=\"mso-margin-top-alt: auto; mso-margin-bottom-alt: auto; line-height: normal;\"><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\'; color: #444444; mso-bidi-font-weight: bold;\">Mann-Filter 1050 By-pass Oil Filter</span></p>\r\n<p class=\"MsoNormal\" style=\"mso-margin-top-alt: auto; mso-margin-bottom-alt: auto; line-height: normal;\"><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\'; color: #444444;\">Optimum protection for the engine</span></p>\r\n<p class=\"MsoNormal\" style=\"mso-margin-top-alt: auto; mso-margin-bottom-alt: auto; line-height: normal;\"><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\'; color: #444444;\">Housing is pressure-resistant and protected against corrosion</span></p>\r\n<p class=\"MsoNormal\" style=\"mso-margin-top-alt: auto; mso-margin-bottom-alt: auto; line-height: normal;\"><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\'; color: #444444;\">Efficient separation and high dirt holding capacity with minimal pressure drop</span></p>\r\n<p class=\"MsoNormal\" style=\"mso-margin-top-alt: auto; mso-margin-bottom-alt: auto; line-height: normal;\"><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\'; color: #444444;\">Minimal pressure drop</span></p>\r\n<p class=\"MsoNormal\" style=\"mso-margin-top-alt: auto; mso-margin-bottom-alt: auto; line-height: normal;\"><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\'; color: #444444; mso-bidi-font-weight: bold;\">Product description</span></p>\r\n<p class=\"MsoNormal\" style=\"mso-margin-top-alt: auto; mso-margin-bottom-alt: auto; line-height: normal;\"><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\'; color: #444444;\">Oriental element/Toyo element oil filter to &ndash; 1050</span></p>\r\n<p class=\"MsoNormal\" style=\"mso-margin-top-alt: auto; mso-margin-bottom-alt: auto; line-height: normal;\"><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\'; color: #444444;\">Quantity: Pack of 1</span></p>', NULL, 600.00, NULL, 0, 'products/March2021/Vh2lhhcPCPlxOWWBBRCH.jpg', NULL, '2021-03-31 06:38:00', '2021-04-12 08:13:07', '{\"Size\": null, \"Color\": null}', 1, 0, NULL, NULL, NULL, NULL, NULL, 0),
(31, 'Toyo Element TO-1212M Oil Filter', NULL, NULL, NULL, '<p class=\"MsoNormal\" style=\"mso-margin-top-alt: auto; mso-margin-bottom-alt: auto; line-height: normal;\"><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-weight: bold;\">Toyo Element TO-1212M Oil Filter</span></p>\r\n<p class=\"MsoNormal\" style=\"mso-margin-top-alt: auto; mso-margin-bottom-alt: auto; line-height: normal;\"><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\';\">Description: Filter for filter engine oil lubricating automotive engines.</span></p>\r\n<p class=\"MsoNormal\" style=\"mso-margin-top-alt: auto; mso-margin-bottom-alt: auto; line-height: normal;\"><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\';\">&nbsp;</span></p>\r\n<p class=\"MsoNormal\" style=\"mso-margin-top-alt: auto; mso-margin-bottom-alt: auto; line-height: normal;\"><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-weight: bold;\">VARIETY OF EFFECTS:</span><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\';\">&nbsp;Removes debris and abrasions,</span></p>\r\n<p class=\"MsoNormal\" style=\"mso-margin-top-alt: auto; mso-margin-bottom-alt: auto; line-height: normal;\"><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\';\">Metal powders from the engine oil, and filters the</span></p>\r\n<p class=\"MsoNormal\" style=\"mso-margin-top-alt: auto; mso-margin-bottom-alt: auto; line-height: normal;\"><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\';\">Engine oil so it does not interfere with engine lubrication.</span></p>\r\n<p class=\"MsoNormal\" style=\"mso-margin-top-alt: auto; mso-margin-bottom-alt: auto; line-height: normal;\"><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-weight: bold;\">Replacement Guide:</span><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\';\"> We recommend replacing the product according to</span></p>\r\n<p class=\"MsoNormal\" style=\"mso-margin-top-alt: auto; mso-margin-bottom-alt: auto; line-height: normal;\"><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\';\">the manufacturer\'s specified change time or engine oil change.</span></p>\r\n<p class=\"MsoNormal\" style=\"mso-margin-top-alt: auto; mso-margin-bottom-alt: auto; line-height: normal;\"><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-weight: bold;\">Applicable For</span></p>\r\n<p class=\"MsoNormal\" style=\"mso-margin-top-alt: auto; mso-margin-bottom-alt: auto; line-height: normal;\"><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\';\">Allion</span></p>\r\n<p class=\"MsoNormal\" style=\"mso-margin-top-alt: auto; mso-margin-bottom-alt: auto; line-height: normal;\"><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\';\">Aqua</span></p>\r\n<p class=\"MsoNormal\" style=\"mso-margin-top-alt: auto; mso-margin-bottom-alt: auto; line-height: normal;\"><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\';\">Auris</span></p>\r\n<p class=\"MsoNormal\" style=\"mso-margin-top-alt: auto; mso-margin-bottom-alt: auto; line-height: normal;\"><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\';\">Axio</span></p>\r\n<p class=\"MsoNormal\" style=\"mso-margin-top-alt: auto; mso-margin-bottom-alt: auto; line-height: normal;\"><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\';\">Fielder</span></p>\r\n<p class=\"MsoNormal\" style=\"mso-margin-top-alt: auto; mso-margin-bottom-alt: auto; line-height: normal;\"><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\';\">Probox</span></p>\r\n<p class=\"MsoNormal\" style=\"mso-margin-top-alt: auto; mso-margin-bottom-alt: auto; line-height: normal;\"><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\';\">Vitz</span></p>', NULL, 700.00, NULL, 0, 'products/March2021/K8i1zmZUb6kOl4MwZjoy.jpg', NULL, '2021-03-31 06:40:00', '2021-04-12 08:14:28', '{\"Size\": null, \"Color\": null}', 1, 0, NULL, NULL, NULL, NULL, NULL, 0);
INSERT INTO `products_old` (`id`, `name`, `product_number`, `shop_id`, `brand_id`, `description`, `small_description`, `price`, `buy_price`, `stock`, `cover_img`, `images`, `created_at`, `updated_at`, `product_attributes`, `is_featured`, `is_sale`, `sale_price`, `vehicle_maker`, `vehicle_model`, `vehicle_manufacturing_year`, `product_type`, `is_publish`) VALUES
(32, 'Oil Filter to – 2274 m', NULL, NULL, NULL, '<p class=\"MsoNormal\" style=\"mso-margin-top-alt: auto; mso-margin-bottom-alt: auto; line-height: normal; background: white;\"><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\'; color: #444444; mso-bidi-font-weight: bold;\"><br />Oil Filter to &ndash; /2274 m</span></p>\r\n<p class=\"MsoNormal\" style=\"mso-margin-top-alt: auto; mso-margin-bottom-alt: auto; line-height: normal; background: white;\"><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\'; color: #444444;\">Supported OEM Numbers:</span></p>\r\n<p class=\"MsoNormal\" style=\"mso-margin-top-alt: auto; mso-margin-bottom-alt: auto; line-height: normal; background: white;\"><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\'; color: #444444; background: white;\">AY100-NS004</span></p>\r\n<p class=\"MsoNormal\" style=\"mso-margin-top-alt: auto; mso-margin-bottom-alt: auto; line-height: normal; background: white;\"><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\'; color: #444444; background: white;\">1N08-14-302</span></p>\r\n<p class=\"MsoNormal\" style=\"mso-margin-top-alt: auto; mso-margin-bottom-alt: auto; line-height: normal; background: white;\"><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\'; color: #444444; background: white;\">5-86128-860-0</span></p>\r\n<p class=\"MsoNormal\" style=\"mso-margin-top-alt: auto; mso-margin-bottom-alt: auto; line-height: normal; background: white;\"><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\'; color: #444444; background: white;\">MQ700013</span></p>\r\n<p class=\"MsoNormal\" style=\"mso-margin-top-alt: auto; mso-margin-bottom-alt: auto; line-height: normal; background: white;\"><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\'; color: #444444; background: white;\">16510-50Z00</span></p>\r\n<p class=\"MsoNormal\" style=\"mso-margin-top-alt: auto; mso-margin-bottom-alt: auto; line-height: normal; background: white;\"><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\'; color: #444444; background: white;\">1230A105</span></p>\r\n<p class=\"MsoNormal\" style=\"mso-margin-top-alt: auto; margin-bottom: .0001pt; line-height: normal; background: white;\"><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\'; color: #444444; background: white;\">Oriental element/Toyo element oil filter to&nbsp;&ndash;&nbsp;2274&nbsp;m</span><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\'; color: #444444;\"><br /><span style=\"background: white;\">Quantity: Pack of 1</span><br /><span style=\"background: white;\">Cartridge Type: M Type Oil Filters</span></span></p>\r\n<p class=\"MsoNormal\" style=\"mso-margin-top-alt: auto; mso-margin-bottom-alt: auto; line-height: normal; background: white;\"><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\'; color: #444444;\"><br /><br style=\"mso-special-character: line-break;\" /><!-- [if !supportLineBreakNewLine]--><br style=\"mso-special-character: line-break;\" /><!--[endif]--></span></p>\r\n<p class=\"MsoNormal\" style=\"mso-margin-top-alt: auto; mso-margin-bottom-alt: auto; line-height: normal; background: white;\"><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\'; color: #444444;\">&nbsp;</span></p>', NULL, 800.00, NULL, 0, 'products/March2021/H923LbSAC5ikfqGwQ5qU.jpg', NULL, '2021-03-31 06:41:00', '2021-04-12 08:15:42', '{\"Size\": null, \"Color\": null}', 1, 0, NULL, NULL, NULL, NULL, NULL, 0),
(33, 'Oil Filter to – 3240', NULL, NULL, NULL, '<p class=\"MsoNormal\" style=\"mso-margin-top-alt: auto; margin-bottom: .0001pt; line-height: normal; background: white;\"><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\'; color: #0f1111; mso-bidi-font-weight: bold;\">Oil Filter to &ndash; 3240&nbsp;</span></p>\r\n<p class=\"MsoNormal\" style=\"mso-margin-top-alt: auto; margin-bottom: .0001pt; line-height: normal;\"><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\'; color: #444444;\">Vezel&nbsp;&nbsp;</span></p>\r\n<p class=\"MsoNormal\" style=\"mso-margin-top-alt: auto; margin-bottom: .0001pt; line-height: normal;\"><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\'; color: #444444; mso-bidi-font-weight: bold;\">Chassis</span></p>\r\n<p class=\"MsoNormal\" style=\"mso-margin-top-alt: auto; margin-bottom: .0001pt; line-height: normal;\"><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\'; color: #444444;\">DBA-V83W,DBA-V93W&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span></p>\r\n<p class=\"MsoNormal\" style=\"mso-margin-top-alt: auto; margin-bottom: .0001pt; line-height: normal;\"><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\'; color: #444444; mso-bidi-font-weight: bold;\">Manufacture Year</span></p>\r\n<p class=\"MsoNormal\" style=\"mso-margin-top-alt: auto; margin-bottom: .0001pt; line-height: normal;\"><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\'; color: #444444;\">2013/12</span></p>\r\n<p class=\"MsoNormal\" style=\"mso-margin-top-alt: auto; margin-bottom: .0001pt; line-height: normal;\"><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\'; color: #444444;\">CR-V&nbsp;</span></p>\r\n<p class=\"MsoNormal\" style=\"mso-margin-top-alt: auto; margin-bottom: .0001pt; line-height: normal;\"><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\'; color: #444444; mso-bidi-font-weight: bold;\">Chassis&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</span></p>\r\n<p class=\"MsoNormal\" style=\"mso-margin-top-alt: auto; margin-bottom: .0001pt; line-height: normal;\"><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\'; color: #444444;\">DBA-RM1</span></p>\r\n<p class=\"MsoNormal\" style=\"mso-margin-top-alt: auto; margin-bottom: .0001pt; line-height: normal;\"><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\'; color: #444444; mso-bidi-font-weight: bold;\">Manufacture Year</span></p>\r\n<p class=\"MsoNormal\" style=\"mso-margin-top-alt: auto; margin-bottom: .0001pt; line-height: normal;\"><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\'; color: #444444;\">2011/12~2016/18</span></p>\r\n<p class=\"MsoNormal\" style=\"mso-margin-top-alt: auto; mso-margin-bottom-alt: auto; line-height: normal;\"><span style=\"font-size: 10.5pt; font-family: \'Arial\',\'sans-serif\'; mso-fareast-font-family: \'Times New Roman\'; color: #444444;\">&nbsp;</span></p>', NULL, 800.00, NULL, 0, 'products/April2021/zdSWqUgoxLS3dftfRl04.jpg', NULL, '2021-03-31 06:42:00', '2021-04-12 08:16:38', '{\"Size\": null, \"Color\": null}', 1, 0, NULL, NULL, NULL, NULL, NULL, 0),
(34, 'Double Side Tape.', NULL, NULL, NULL, '<table style=\"border-collapse: collapse; width: 65pt;\" border=\"0\" width=\"87\" cellspacing=\"0\" cellpadding=\"0\">\r\n<tbody>\r\n<tr style=\"mso-height-source: userset; height: 15.0pt;\">\r\n<td class=\"xl65\" style=\"height: 15.0pt; width: 65pt;\" width=\"87\" height=\"20\">EMON-1722</td>\r\n</tr>\r\n</tbody>\r\n</table>', NULL, 500.00, NULL, 0, 'products/April2021/RbMpGacxz15IinqBsPoW.jpg', NULL, '2021-03-31 06:46:00', '2021-04-07 05:26:25', '{\"Size\": null, \"Color\": null}', 1, 0, NULL, NULL, NULL, NULL, NULL, 0),
(35, 'Air Filter TO-1924', NULL, NULL, NULL, '<p>Air Filter TO-1924</p>', NULL, 1700.00, NULL, 0, 'products/April2021/z3yc7cL2xd7jnQmNr4Y2.JPG', NULL, '2021-03-31 06:47:00', '2021-04-08 04:43:51', '{\"Size\": null, \"Color\": null}', 1, 0, NULL, NULL, NULL, NULL, NULL, 0),
(36, 'Air Filter TO-1921', NULL, NULL, NULL, '<p>Air Filter TO-1921</p>', NULL, 1700.00, NULL, 0, 'products/April2021/KkKlCFbrEfWud5dnskNB.JPG', NULL, '2021-03-31 06:48:00', '2021-04-08 04:46:29', '{\"Size\": null, \"Color\": null}', 1, 0, NULL, NULL, NULL, NULL, NULL, 0),
(37, 'Air Filter TO-1906F', NULL, NULL, NULL, '<p>Air Filter TO-1906F</p>', NULL, 1700.00, NULL, 0, 'products/April2021/Ue8mHsGLHQXHWSGAZ420.JPG', NULL, '2021-03-31 06:49:00', '2021-04-08 04:47:56', '{\"Size\": null, \"Color\": null}', 1, 0, NULL, NULL, NULL, NULL, NULL, 0),
(38, 'Air Filter TO-1925F', NULL, NULL, NULL, '<p>Air Filter TO-1925F</p>', NULL, 1700.00, NULL, 0, 'products/April2021/j6MMri9K3iy4rz3gMuse.JPG', NULL, '2021-03-31 06:50:00', '2021-04-08 04:49:45', '{\"Size\": null, \"Color\": null}', 1, 0, NULL, NULL, NULL, NULL, NULL, 0),
(39, 'Air Filter TO-2966V', NULL, NULL, NULL, '<p>Air Filter TO-2966V</p>', NULL, 1750.00, NULL, 0, 'products/April2021/XIHQRmhEASH39GRc1EO6.JPG', NULL, '2021-03-31 06:51:00', '2021-04-08 04:51:36', '{\"Size\": null, \"Color\": null}', 1, 0, NULL, NULL, NULL, NULL, NULL, 0),
(40, 'Air Filter TO-3739V', NULL, NULL, NULL, '<p>Air Filter TO-3739V</p>', NULL, 1700.00, NULL, 0, 'products/April2021/kU889amDEwMoiEnOQ9ll.JPG', NULL, '2021-03-31 06:51:00', '2021-04-08 04:53:35', '{\"Size\": null, \"Color\": null}', 1, 0, NULL, NULL, NULL, NULL, NULL, 0),
(41, 'AC/Cabin Filter CT-1008B', NULL, NULL, NULL, '<p>AC/Cabin Filter CT-1008B</p>', NULL, 1700.00, NULL, 0, 'products/April2021/nZ3GrTg46eNeP9LKbEBm.JPG', NULL, '2021-03-31 06:52:00', '2021-04-08 05:05:23', '{\"Size\": null, \"Color\": null}', 1, 0, NULL, NULL, NULL, NULL, NULL, 0),
(42, 'AC/Cabin Filter CT-1012B', NULL, NULL, NULL, '<p>AC/Cabin Filter CT-1012B</p>', NULL, 1700.00, NULL, 0, 'products/April2021/sGfkGTEP0wJbfTDn1Dnc.JPG', NULL, '2021-03-31 06:53:00', '2021-04-08 05:10:27', '{\"Size\": null, \"Color\": null}', 1, 0, NULL, NULL, NULL, NULL, NULL, 0),
(43, 'AC/Cabin Filter CN-2019B', NULL, NULL, NULL, '<p>AC/Cabin Filter CN-2019B</p>', NULL, 1700.00, NULL, 0, 'products/April2021/v8LZbVcAsEhuxscO8oFk.JPG', NULL, '2021-03-31 06:54:00', '2021-04-08 05:28:21', '{\"Size\": null, \"Color\": null}', 1, 0, NULL, NULL, NULL, NULL, NULL, 0),
(44, 'AC/Cabin Filter CH-3008B', NULL, NULL, NULL, '<p>AC/Cabin Filter CH-3008B</p>', NULL, 1700.00, NULL, 0, 'products/April2021/0YaT2zSgcQpuohPS8o5P.JPG', NULL, '2021-03-31 06:55:00', '2021-04-08 05:29:31', '{\"Size\": null, \"Color\": null}', 1, 0, NULL, NULL, NULL, NULL, NULL, 0),
(45, 'AC/Cabin Filter CMA-5009B', NULL, NULL, NULL, '<p>AC/Cabin Filter CMA-5009B</p>', NULL, 2000.00, NULL, 0, 'products/April2021/cAmhvw2rSLbB7eZePXl7.JPG', NULL, '2021-03-31 06:55:00', '2021-04-08 05:31:09', '{\"Size\": null, \"Color\": null}', 1, 0, NULL, NULL, NULL, NULL, NULL, 0),
(46, 'HV Battery Filter / Mesh G92EC-28010', NULL, NULL, NULL, '<p>HV Battery Filter / Mesh G92EC-28010</p>', NULL, 1600.00, NULL, 0, 'products/April2021/5WJWpzsHYWBE2AvDxnib.JPG', NULL, '2021-03-31 06:56:00', '2021-04-08 05:35:54', '{\"Size\": null, \"Color\": null}', 1, 0, NULL, NULL, NULL, NULL, NULL, 0),
(47, 'HV Battery Filter / Mesh G92DH-47070', NULL, NULL, NULL, '<p>HV Battery Filter / Mesh G92DH-47070</p>', NULL, 1400.00, NULL, 0, 'products/April2021/8TlremWM81xHfLY8LY9C.JPG', NULL, '2021-03-31 06:57:00', '2021-04-08 05:37:42', '{\"Size\": null, \"Color\": null}', 1, 0, NULL, NULL, NULL, NULL, NULL, 0),
(48, 'HV Battery Filter / Mesh G923G-52020', NULL, NULL, NULL, '<p>HV Battery Filter / Mesh G923G-52020</p>', NULL, 2300.00, NULL, 0, 'products/April2021/U8nfq5T14sotWqFiuwu7.JPG', NULL, '2021-03-31 06:58:00', '2021-04-08 05:38:58', '{\"Size\": null, \"Color\": null}', 1, 0, NULL, NULL, NULL, NULL, NULL, 0),
(49, 'Auxiliary Battery Lead Acid Battery  JE44B19L', NULL, NULL, NULL, '<p>Auxiliary Battery Lead Acid Battery&nbsp; JE44B19L</p>', NULL, 8900.00, NULL, 0, 'products/April2021/xL7IUqHtqhfvc3HwGRJb.jpg', NULL, '2021-03-31 06:59:00', '2021-04-08 05:44:12', '{\"Size\": null, \"Color\": null}', 1, 0, NULL, NULL, NULL, NULL, NULL, 0),
(50, 'Auxiliary Battery Lead Acid Battery LN3 (TFET75L3)', NULL, NULL, NULL, '<p>Auxiliary Battery Lead Acid Battery LN3 (TFET75L3)</p>', NULL, 19600.00, NULL, 0, 'products/April2021/nYuevTvYiwuvZKyUWsyH.jpg', NULL, '2021-03-31 07:00:00', '2021-04-08 05:45:03', '{\"Size\": null, \"Color\": null}', 1, 0, NULL, NULL, NULL, NULL, NULL, 0),
(51, 'Auxiliary Battery Lead Acid Battery JHS34B20R', NULL, NULL, NULL, '<p>Auxiliary Battery Lead Acid Battery JHS34B20R</p>', NULL, 16000.00, NULL, 0, 'products/April2021/TjhiyrQNUexBso7ZruSy.jpg', NULL, '2021-03-31 07:01:00', '2021-04-08 05:45:37', '{\"Size\": null, \"Color\": null}', 1, 0, NULL, NULL, NULL, NULL, NULL, 0),
(52, 'Auxiliary Battery  Lead Acid Battery LN2', NULL, NULL, NULL, '<p>Auxiliary Battery&nbsp; Lead Acid Battery LN2</p>', NULL, 16600.00, NULL, 0, 'products/April2021/UFJNCExW5pnTjHPgf4Zk.jpg', NULL, '2021-03-31 07:02:00', '2021-04-08 05:43:03', '{\"Size\": null, \"Color\": null}', 1, 0, NULL, NULL, NULL, NULL, NULL, 0),
(53, 'Auxiliary Battery Lead Acid Battery LN1', NULL, NULL, NULL, '<p>Auxiliary Battery Lead Acid Battery LN1</p>', NULL, 13600.00, NULL, 0, 'products/April2021/AUf197iWpMAXMmx2jmQB.jpg', NULL, '2021-03-31 07:04:00', '2021-04-08 05:43:39', '{\"Size\": null, \"Color\": null}', 1, 0, NULL, NULL, NULL, NULL, NULL, 0),
(54, 'Auxiliary Battery Lead Acid Battery JE60B24L', NULL, NULL, NULL, '<p>Auxiliary Battery Lead Acid Battery JE60B24L</p>', NULL, 15000.00, NULL, 0, 'products/April2021/A7QdOknuEla3EE7Kh3I5.jpg', NULL, '2021-03-31 07:05:00', '2021-04-08 05:46:49', '{\"Size\": null, \"Color\": null}', 1, 0, NULL, NULL, NULL, NULL, NULL, 0),
(55, 'Auxiliary Battery Lead Acid Battery Q85', NULL, NULL, NULL, '<p>Auxiliary Battery Lead Acid Battery Q85</p>', NULL, 18600.00, NULL, 0, 'products/April2021/sCP864LK52N1JZ9qAsxx.jpg', NULL, '2021-03-31 07:05:00', '2021-04-08 05:47:29', '{\"Size\": null, \"Color\": null}', 1, 0, NULL, NULL, NULL, NULL, NULL, 0),
(56, 'Gracemate Poppy European Ver. Lavender 8003', NULL, NULL, NULL, '<p>Gracemate Poppy European Ver. Lavender</p>', NULL, 790.00, NULL, 0, 'products/April2021/7FsOIAB76KA7Jk5jpBNW.JPG', NULL, '2021-03-31 09:03:00', '2021-04-08 05:53:36', '{\"Size\": null, \"Color\": null}', 1, 0, NULL, NULL, NULL, NULL, NULL, 0),
(57, 'Gracemate Poppy European Ver. Hibiscus 8004', NULL, NULL, NULL, '<p>Gracemate Poppy European Ver. Hibiscus 8004</p>', NULL, 790.00, NULL, 0, 'products/April2021/0JkdJb4bvzTT2Y55MzO1.JPG', NULL, '2021-03-31 09:04:00', '2021-04-08 05:55:15', '{\"Size\": null, \"Color\": null}', 1, 0, NULL, NULL, NULL, NULL, NULL, 0),
(58, 'Gracemate Poppy European Ver. Jasmin 8005', NULL, NULL, NULL, '<p>Gracemate Poppy European Ver. Jasmin 8005</p>', NULL, 790.00, NULL, 0, 'products/April2021/JUhMj7gxEPH5PukiP2xr.JPG', NULL, '2021-03-31 09:05:00', '2021-04-08 05:56:33', '{\"Size\": null, \"Color\": null}', 1, 0, NULL, NULL, NULL, NULL, NULL, 0),
(59, 'Gracemate Poppy European Ver. Cattleya 8006', NULL, NULL, NULL, '<p>Gracemate Poppy European Ver. Cattleya 8006</p>', NULL, 790.00, NULL, 0, 'products/April2021/XifcxrelOGnKkbTdC5lS.JPG', NULL, '2021-03-31 09:06:00', '2021-04-12 07:38:23', '{\"Size\": null, \"Color\": null}', 1, 0, NULL, NULL, NULL, NULL, NULL, 0),
(60, 'Gracemate Poppy European Ver. Strawberry 8010', NULL, NULL, NULL, '<p>Gracemate Poppy European Ver. Strawberry 8010</p>', NULL, 790.00, NULL, 0, 'products/April2021/VSCgn5KB2P18iDHnxEXT.JPG', NULL, '2021-03-31 09:07:00', '2021-04-08 05:59:55', '{\"Size\": null, \"Color\": null}', 1, 0, NULL, NULL, NULL, NULL, NULL, 0),
(61, 'Gracemate Poppy European Ver. Cherry 8011', NULL, NULL, NULL, '<p>Gracemate Poppy European Ver. Cherry 8011</p>', NULL, 790.00, NULL, 0, 'products/April2021/qvmQTaNjYb701YZzv24T.JPG', NULL, '2021-03-31 09:08:00', '2021-04-08 06:01:15', '{\"Size\": null, \"Color\": null}', 1, 0, NULL, NULL, NULL, NULL, NULL, 0),
(62, 'Gracemate Poppy European Ver. Pine 8012', NULL, NULL, NULL, '<p>Gracemate Poppy European Ver. Pine 8012</p>', NULL, 790.00, NULL, 0, 'products/April2021/dsZDQRjEPqvnsgwlU2Jb.JPG', NULL, '2021-03-31 09:09:00', '2021-04-08 06:09:16', '{\"Size\": null, \"Color\": null}', 1, 0, NULL, NULL, NULL, NULL, NULL, 0),
(63, 'Gracemate Poppy European Ver. Vanilla 8015', NULL, NULL, NULL, '<p>Gracemate Poppy European Ver. Vanilla 8015</p>', NULL, 790.00, NULL, 0, 'products/April2021/3OWGFEk4owTLp80b3HA6.JPG', NULL, '2021-03-31 09:09:00', '2021-04-08 06:11:17', '{\"Size\": null, \"Color\": null}', 1, 0, NULL, NULL, NULL, NULL, NULL, 0),
(64, 'Gracemate Poppy Japanese Ver. Gardenia 2001', NULL, NULL, NULL, '<p>Gracemate Poppy Japanese Ver. Gardenia 2001</p>', NULL, 790.00, NULL, 0, 'products/April2021/eg62YhyU8DyP1gNHp0bO.JPG', NULL, '2021-03-31 09:10:00', '2021-04-08 06:13:14', '{\"Size\": null, \"Color\": null}', 1, 0, NULL, NULL, NULL, NULL, NULL, 0),
(65, 'Gracemate Poppy Japanese Ver. Citrus 2002', NULL, NULL, NULL, '<p>Gracemate Poppy Japanese Ver. Citrus 2002</p>', NULL, 790.00, NULL, 0, 'products/April2021/B2W9JG9lovFBhJcxqMlf.JPG', NULL, '2021-03-31 09:11:00', '2021-04-08 06:17:34', '{\"Size\": null, \"Color\": null}', 1, 0, NULL, NULL, NULL, NULL, NULL, 0),
(66, 'Gracemate Poppy Japanese Ver. Bouquet 2003', NULL, NULL, NULL, '<p>Gracemate Poppy Japanese Ver. Bouquet 2003</p>', NULL, 790.00, NULL, 0, 'products/April2021/NGUAWB5O0TaJzwHHNW9K.JPG', NULL, '2021-03-31 09:11:00', '2021-04-08 06:18:48', '{\"Size\": null, \"Color\": null}', 1, 0, NULL, NULL, NULL, NULL, NULL, 0),
(67, 'Gracemate Poppy Japanese Ver. Freesia 790', NULL, NULL, NULL, '<p>Gracemate Poppy Japanese Ver. Freesia 790</p>', NULL, 790.00, NULL, 0, 'products/April2021/gtt17gNxKl4eSTIr3nLc.JPG', NULL, '2021-03-31 09:12:00', '2021-04-08 11:44:46', '{\"Size\": null, \"Color\": null}', 1, 0, NULL, NULL, NULL, NULL, NULL, 0),
(68, 'Gracemate Poppy Japanese Ver. Fine Squash 2013', NULL, NULL, NULL, '<p>Gracemate Poppy Japanese Ver. Fine Squash 2013</p>', NULL, 790.00, NULL, 0, 'products/April2021/PrKhWHqQ8q4a5TrIiphY.JPG', NULL, '2021-03-31 09:13:00', '2021-04-08 06:20:12', '{\"Size\": null, \"Color\": null}', 1, 0, NULL, NULL, NULL, NULL, NULL, 0),
(69, 'King Size Aquablue Marine Squash 5931', NULL, NULL, NULL, '<p>King Size Aquablue Marine Squash 5931</p>', NULL, 690.00, NULL, 0, 'products/April2021/NB9xDlyYfYF6omVUJALB.JPG', NULL, '2021-03-31 09:13:00', '2021-04-08 06:22:04', '{\"Size\": null, \"Color\": null}', 1, 0, NULL, NULL, NULL, NULL, NULL, 0),
(70, 'King Size Aquablue Fruity Squash 5935', NULL, NULL, NULL, '<p>King Size Aquablue Fruity Squash 5935</p>', NULL, 690.00, NULL, 0, 'products/April2021/ZesmSHzj88rkruqtNILe.JPG', NULL, '2021-03-31 09:14:00', '2021-04-08 06:23:42', '{\"Size\": null, \"Color\": null}', 1, 0, NULL, NULL, NULL, NULL, NULL, 0),
(71, 'King Size Aquablue Light Squash 5936', NULL, NULL, NULL, '<p>King Size Aquablue Light Squash 5936</p>', NULL, 690.00, NULL, 0, 'products/April2021/btHicYS9WWFwHzVusJG0.JPG', NULL, '2021-03-31 09:15:00', '2021-04-08 06:24:47', '{\"Size\": null, \"Color\": null}', 1, 0, NULL, NULL, NULL, NULL, NULL, 0),
(72, 'Light Shower Shampoo 7431', NULL, NULL, NULL, '<p>Light Shower Shampoo 7431</p>', NULL, 490.00, NULL, 0, 'products/April2021/RvWOOAIXtAUKnatPXhf7.JPG', NULL, '2021-03-31 09:16:00', '2021-04-08 06:36:57', '{\"Size\": null, \"Color\": null}', 1, 0, NULL, NULL, NULL, NULL, NULL, 0),
(73, 'Light Shower Light Squash 7432', NULL, NULL, NULL, '<p>Light Shower Light Squash 7432</p>', NULL, 490.00, NULL, 0, 'products/April2021/yDqloWnsgm4bVWzcHIoL.JPG', NULL, '2021-03-31 09:17:00', '2021-04-08 06:38:17', '{\"Size\": null, \"Color\": null}', 1, 0, NULL, NULL, NULL, NULL, NULL, 0),
(74, 'Light Shower White Musk 7433', NULL, NULL, NULL, '<p>Light Shower White Msuk 7433</p>', NULL, 490.00, NULL, 0, 'products/April2021/XsGl2oXBoFvh9avOkLx6.JPG', NULL, '2021-03-31 09:18:00', '2021-04-12 07:33:03', '{\"Size\": null, \"Color\": null}', 1, 0, NULL, NULL, NULL, NULL, NULL, 0),
(75, 'Light Shower Aqua Blue 7435', NULL, NULL, NULL, '<p>Light Shower Aqua Blue 7435</p>', NULL, 490.00, NULL, 0, 'products/April2021/82jAU7Mvb3Flx62LH3HP.JPG', NULL, '2021-03-31 09:18:00', '2021-04-12 07:30:10', '{\"Size\": null, \"Color\": null}', 1, 0, NULL, NULL, NULL, NULL, NULL, 0),
(76, 'Light Shower Sexy Soap 7436', NULL, NULL, NULL, '<p>Light Shower Sexy Soap 7436</p>', NULL, 490.00, NULL, 0, 'products/April2021/OrQXWPA7djCPYeUAawEI.JPG', NULL, '2021-03-31 09:19:00', '2021-04-08 06:44:24', '{\"Size\": null, \"Color\": null}', 1, 0, NULL, NULL, NULL, NULL, NULL, 0),
(77, 'Light Shower Angel Snow  7721', NULL, NULL, NULL, '<p>Light Shower Angel Snow&nbsp; 7721</p>', NULL, 490.00, NULL, 0, 'products/April2021/LuRxGe0FMiPFnU7K2twa.JPG', NULL, '2021-03-31 09:20:00', '2021-04-08 06:46:04', '{\"Size\": null, \"Color\": null}', 1, 0, NULL, NULL, NULL, NULL, NULL, 0),
(78, 'Light Shower Resort Sour 7723', NULL, NULL, NULL, '<p>Light Shower Resort Sour 7723</p>', NULL, 490.00, NULL, 0, 'products/April2021/gwobvN6kg4D0ty8K23Z6.JPG', NULL, '2021-03-31 09:21:00', '2021-04-08 06:47:25', '{\"Size\": null, \"Color\": null}', 1, 0, NULL, NULL, NULL, NULL, NULL, 0),
(79, 'Light Shower Lemon Squash 17733', NULL, NULL, NULL, '<p>Light Shower Lemon Squash 17733</p>', NULL, 490.00, NULL, 0, 'products/April2021/eqCGmTqgYGeHbmaKXwKG.JPG', NULL, '2021-03-31 09:21:00', '2021-04-08 06:48:36', '{\"Size\": null, \"Color\": null}', 1, 0, NULL, NULL, NULL, NULL, NULL, 0),
(80, 'VICCOLOR Shampoo 5404', NULL, NULL, NULL, '<p>VICCOLOR Shampoo 5404</p>', NULL, 490.00, NULL, 0, 'products/April2021/eNE32L6ZegNUWEWGkfZb.JPG', NULL, '2021-03-31 09:22:00', '2021-04-08 06:50:33', '{\"Size\": null, \"Color\": null}', 1, 0, NULL, NULL, NULL, NULL, NULL, 0),
(81, 'VICCOLOR Squash 5406', NULL, NULL, NULL, '<p>VICCOLOR Squash 5406</p>', NULL, 490.00, NULL, 0, 'products/April2021/qzK7MIhL5tZ3XsNWyNm0.JPG', NULL, '2021-03-31 09:23:00', '2021-04-08 06:51:48', '{\"Size\": null, \"Color\": null}', 1, 0, NULL, NULL, NULL, NULL, NULL, 0),
(82, 'VICCOLOR  Peach & Kiss 5408', NULL, NULL, NULL, '<table style=\"border-collapse: collapse; width: 76pt;\" border=\"0\" width=\"101\" cellspacing=\"0\" cellpadding=\"0\">\r\n<tbody>\r\n<tr style=\"mso-height-source: userset; height: 52.5pt;\">\r\n<td class=\"xl69\" style=\"height: 52.5pt; width: 76pt;\" width=\"101\" height=\"70\">5408</td>\r\n</tr>\r\n</tbody>\r\n</table>', NULL, 490.00, NULL, 0, 'products/April2021/GAQIdpyfQ9KGdyjPA4WS.JPG', NULL, '2021-03-31 09:24:00', '2021-04-08 06:54:27', '{\"Size\": null, \"Color\": null}', 1, 0, NULL, NULL, NULL, NULL, NULL, 0),
(83, 'VICCOLOR Blue Water 5531', NULL, NULL, NULL, '<p>VICCOLOR Blue Water 5531</p>', NULL, 490.00, NULL, 0, 'products/April2021/ETdSJV0yz6lR41JBpvN9.JPG', NULL, '2021-03-31 09:25:00', '2021-04-08 06:57:57', '{\"Size\": null, \"Color\": null}', 1, 0, NULL, NULL, NULL, NULL, NULL, 0),
(84, 'VICCOLOR Resort Sour 5536', NULL, NULL, NULL, '<p>VICCOLOR Resort Sour 5536</p>', NULL, 489.00, NULL, 0, 'products/April2021/9iw2XmAv2eQFjSP7ELz5.JPG', NULL, '2021-03-31 09:26:00', '2021-04-08 06:59:10', '{\"Size\": null, \"Color\": null}', 1, 0, NULL, NULL, NULL, NULL, NULL, 0),
(85, 'VICCOLOR White Musk 5537', NULL, NULL, NULL, '<p>VICCOLOR White Musk 5537</p>', NULL, 490.00, NULL, 0, 'products/April2021/J5zKtF5uQxsm3ixRfMwU.JPG', NULL, '2021-03-31 09:26:00', '2021-04-08 07:00:36', '{\"Size\": null, \"Color\": null}', 1, 0, NULL, NULL, NULL, NULL, NULL, 0),
(86, 'VICCOLOR Sweets De Happy 7311', NULL, NULL, NULL, '<p>VICCOLOR Sweets De Happy 7311</p>', NULL, 490.00, NULL, 0, 'products/April2021/kCttRIPrOBT649VsnNrZ.JPG', NULL, '2021-03-31 09:27:00', '2021-04-08 07:02:21', '{\"Size\": null, \"Color\": null}', 1, 0, NULL, NULL, NULL, NULL, NULL, 0),
(87, 'VICCOLOR Angel Snow 7315', NULL, NULL, NULL, '<p>VICCOLOR Angel Snow 7315</p>', NULL, 490.00, NULL, 0, 'products/April2021/n3aOSn1jkz9G7NcFmiyH.JPG', NULL, '2021-03-31 09:28:00', '2021-04-08 07:05:12', '{\"Size\": null, \"Color\": null}', 1, 0, NULL, NULL, NULL, NULL, NULL, 0),
(88, 'VICCOLOR Lemon Squash 17743', NULL, NULL, NULL, '<p>VICCOLOR Lemon Squash 17743</p>', NULL, 490.00, NULL, 0, 'products/April2021/nLCx8Mx16JYl07r1dRKY.JPG', NULL, '2021-03-31 09:29:00', '2021-04-08 07:06:34', '{\"Size\": null, \"Color\": null}', 1, 0, NULL, NULL, NULL, NULL, NULL, 0),
(89, 'Brake Pad AN-742K', NULL, NULL, NULL, '<p>Brake Pad AN-742K</p>', NULL, 6600.00, NULL, 0, 'products/April2021/w8Y4UfhAEyaJgmENyLjw.JPG', NULL, '2021-03-31 09:46:00', '2021-04-07 03:58:08', '{\"Size\": null, \"Color\": null}', 1, 0, NULL, NULL, NULL, NULL, NULL, 0),
(90, 'Brake Pad AN-827K', NULL, NULL, NULL, '<p>Brake Pad AN-827K</p>', NULL, 6300.00, NULL, 0, 'products/April2021/tqCCTNxElXsXVX38fL2x.JPG', NULL, '2021-03-31 09:47:00', '2021-04-07 04:00:41', '{\"Size\": null, \"Color\": null}', 1, 0, NULL, NULL, NULL, NULL, NULL, 0),
(91, 'Brake Pad AN-764K', NULL, NULL, NULL, '<p>Brake Pad AN-764K</p>', NULL, 5100.00, NULL, 0, 'products/April2021/MRz976moe9w6XTgaSahX.JPG', NULL, '2021-03-31 09:48:00', '2021-04-07 04:03:41', '{\"Size\": null, \"Color\": null}', 1, 0, NULL, NULL, NULL, NULL, NULL, 0),
(92, 'Brake Pad AN-824WK', NULL, NULL, NULL, '<table style=\"border-collapse: collapse; width: 65pt;\" border=\"0\" width=\"87\" cellspacing=\"0\" cellpadding=\"0\">\r\n<tbody>\r\n<tr style=\"mso-height-source: userset; height: 14.25pt;\">\r\n<td class=\"xl68\" style=\"height: 14.25pt; width: 65pt;\" width=\"87\" height=\"19\">AN-824WK</td>\r\n</tr>\r\n</tbody>\r\n</table>', NULL, 8300.00, NULL, 0, 'products/April2021/BAgjXRb7IgTZD2RhWr4d.jpg', NULL, '2021-03-31 09:49:00', '2021-04-07 04:14:48', '{\"Size\": null, \"Color\": null}', 1, 0, NULL, NULL, NULL, NULL, NULL, 0),
(93, 'Brake Pad AN-771WK', NULL, NULL, NULL, '<p>Brake Pad AN-771WK</p>', NULL, 8699.00, NULL, 0, 'products/April2021/7vE6gBrHwILO600oCGqT.JPG', NULL, '2021-03-31 09:49:00', '2021-04-07 04:16:38', '{\"Size\": null, \"Color\": null}', 1, 0, NULL, NULL, NULL, NULL, NULL, 0),
(94, 'Brake Pad AN-751WK', NULL, NULL, NULL, '<p>Brake Pad AN-751WK&nbsp;</p>', NULL, 7400.00, NULL, 0, 'products/April2021/5m0wUvnxkKLmIztksaMx.JPG', NULL, '2021-03-31 09:54:00', '2021-04-07 04:41:56', '{\"Size\": null, \"Color\": null}', 1, 0, NULL, NULL, NULL, NULL, NULL, 0),
(95, 'Brake Pad AN-793WK', NULL, NULL, NULL, '<p>Brake Pad AN-793WK</p>', NULL, 6700.00, NULL, 0, 'products/April2021/LqoHAOLP9cbBaYFzIY9c.JPG', NULL, '2021-03-31 09:55:00', '2021-04-07 04:43:30', '{\"Size\": null, \"Color\": null}', 1, 0, NULL, NULL, NULL, NULL, NULL, 0),
(96, 'Brake Pad AN-789WK', NULL, NULL, NULL, '<p>Brake Pad AN-789WK</p>', NULL, 7100.00, NULL, 0, 'products/April2021/07F1oRTqvDTOTBmwwhFP.jpg', NULL, '2021-03-31 09:56:00', '2021-04-07 04:50:18', '{\"Size\": null, \"Color\": null}', 1, 1, NULL, NULL, NULL, NULL, NULL, 0),
(97, 'Brake Pad AN-797K', NULL, NULL, NULL, '<p>Brake Pad AN-797K</p>', NULL, 4600.00, NULL, 0, 'products/April2021/5EWVKjEzWXVy8hsm6aeM.jpg', NULL, '2021-03-31 09:57:00', '2021-04-07 04:53:32', '{\"Size\": null, \"Color\": null}', 1, 0, NULL, NULL, NULL, NULL, NULL, 0),
(98, 'Brake Pad AN-765K', NULL, NULL, NULL, '<p>Brake Pad AN-765K</p>', NULL, 4200.00, NULL, 0, 'products/April2021/SD6hw6wCKTwXPsklM7Gf.JPG', NULL, '2021-03-31 09:58:00', '2021-04-07 04:55:18', '{\"Size\": null, \"Color\": null}', 1, 0, NULL, NULL, NULL, NULL, NULL, 0),
(99, 'Brake Pad AN-825K', NULL, NULL, NULL, '<p>Brake Pad AN-825K</p>', NULL, 3800.00, NULL, 0, 'products/April2021/QMsQ2iyf3ZM6T30kaXTg.JPG', NULL, '2021-03-31 09:58:00', '2021-04-07 04:57:52', '{\"Size\": null, \"Color\": null}', 1, 0, NULL, NULL, NULL, NULL, NULL, 0),
(100, 'Brake Pad AN-807K', NULL, NULL, NULL, '<p>Brake Pad AN-807K</p>', NULL, 3800.00, NULL, 0, 'products/April2021/8gKV5crykKQfwL41Ov2C.JPG', NULL, '2021-03-31 09:59:00', '2021-04-07 04:59:17', '{\"Size\": null, \"Color\": null}', 1, 0, NULL, NULL, NULL, NULL, NULL, 0),
(101, 'Brake Pad AN-745WK', NULL, NULL, NULL, '<p>Brake Pad AN-745WK</p>', NULL, 5500.00, NULL, 0, 'products/April2021/ieJXnHvtfJtP2sy3zYKp.JPG', NULL, '2021-03-31 10:00:00', '2021-04-07 05:00:54', '{\"Size\": null, \"Color\": null}', 1, 0, NULL, NULL, NULL, NULL, NULL, 0),
(102, 'Brake Pad AN-768WK', NULL, NULL, NULL, '<p>Brake Pad AN-768WK</p>', NULL, 5100.00, NULL, 0, 'products/April2021/XAT4K29ddzFCth9fCdLO.jpg', NULL, '2021-03-31 10:01:00', '2021-04-07 05:02:27', '{\"Size\": null, \"Color\": null}', 1, 0, NULL, NULL, NULL, NULL, NULL, 0),
(103, 'Brake Pad AN-802WK', NULL, NULL, NULL, '<p>Brake Pad AN-802WK</p>', NULL, 6898.00, NULL, 0, 'products/April2021/rcu7fMKWbsyCFh1CygPP.jpg', NULL, '2021-03-31 10:01:00', '2021-04-07 05:04:54', '{\"Size\": null, \"Color\": null}', 1, 0, NULL, NULL, NULL, NULL, NULL, 0),
(104, 'Brake Pad AN-815K', NULL, NULL, NULL, '<p>Brake Pad AN-815K</p>', NULL, 7299.00, NULL, 0, 'products/April2021/b2BnuWhJKso6J2z3TxDj.JPG', NULL, '2021-03-31 10:02:00', '2021-04-07 05:06:43', '{\"Size\": null, \"Color\": null}', 1, 0, NULL, NULL, NULL, NULL, NULL, 0),
(105, 'Brake Pad AN-794WK', NULL, NULL, NULL, '<p>Brake Pad AN-794WK</p>', NULL, 7397.00, NULL, 0, 'products/April2021/PB2lbDfVNxGuSYN2ToY4.JPG', NULL, '2021-03-31 10:03:00', '2021-04-07 05:08:23', '{\"Size\": null, \"Color\": null}', 1, 0, NULL, NULL, NULL, NULL, NULL, 0),
(106, 'Brake Shoe NN1088F', NULL, NULL, NULL, '<p>Brake Shoe NN1088F</p>', NULL, 4400.00, NULL, 0, 'products/April2021/9tvoNCtWSZjpBbDGksfA.JPG', NULL, '2021-03-31 10:03:00', '2021-04-07 05:10:38', '{\"Size\": null, \"Color\": null}', 1, 0, NULL, NULL, NULL, NULL, NULL, 0),
(107, 'Brake Shoe NN1088R', NULL, NULL, NULL, '<p>Brake Shoe NN1088R</p>', NULL, 4400.00, NULL, 0, 'products/April2021/KxlyeYgqJWcyyockrkqA.JPG', NULL, '2021-03-31 10:04:00', '2021-04-07 05:12:53', '{\"Size\": null, \"Color\": null}', 1, 0, NULL, NULL, NULL, NULL, NULL, 0),
(108, 'Brake Shoe NN1102F', NULL, NULL, NULL, '<p>Brake Shoe NN1102F</p>', NULL, 4400.00, NULL, 0, 'products/April2021/bfJnOlKJd1DWS8LCI6UG.JPG', NULL, '2021-03-31 10:05:00', '2021-04-07 05:14:37', '{\"Size\": null, \"Color\": null}', 1, 0, NULL, NULL, NULL, NULL, NULL, 0),
(109, 'Brake Shoe NN1102R', NULL, NULL, NULL, '<p>Brake Shoe NN1102R</p>', NULL, 4399.00, NULL, 0, 'products/April2021/FW3sIBWWECHXegzKPeeI.JPG', NULL, '2021-03-31 10:06:00', '2021-04-07 05:15:58', '{\"Size\": null, \"Color\": null}', 1, 0, NULL, NULL, NULL, NULL, NULL, 0),
(110, 'Brake Shoe NN1101F', NULL, NULL, NULL, '<p>Brake Shoe NN1101F&nbsp;</p>', NULL, 3800.00, NULL, 0, 'products/April2021/usi2dbpUvXMx5QvJ4fzt.JPG', NULL, '2021-03-31 10:06:00', '2021-04-07 05:17:41', '{\"Size\": null, \"Color\": null}', 1, 0, NULL, NULL, NULL, NULL, NULL, 0),
(111, 'Brake Shoe NN1101R', NULL, NULL, NULL, '<p>Brake Shoe NN1101R</p>', NULL, 3800.00, NULL, 0, 'products/April2021/j98Qq3WiV8hvyrnAOZ7Q.JPG', NULL, '2021-03-31 10:08:00', '2021-04-07 05:19:27', '{\"Size\": null, \"Color\": null}', 1, 0, NULL, NULL, NULL, NULL, NULL, 0),
(112, 'Brake Shoe NN1103F', NULL, NULL, NULL, '<p>Brake Shoe NN1103F</p>', NULL, 3400.00, NULL, 0, 'products/April2021/m4w2sxPixY1v0QhY61o7.JPG', NULL, '2021-03-31 10:09:00', '2021-04-07 05:22:39', '{\"Size\": null, \"Color\": null}', 1, 0, NULL, NULL, NULL, NULL, NULL, 0),
(113, 'Brake Shoe NN1103R', NULL, NULL, NULL, '<p>Brake Shoe NN1103R</p>', NULL, 3400.00, NULL, 0, 'products/April2021/UlTzd8IxhuXdyT2Sj75K.JPG', NULL, '2021-03-31 10:10:00', '2021-04-07 05:24:19', '{\"Size\": null, \"Color\": null}', 1, 0, NULL, NULL, NULL, NULL, NULL, 0),
(114, 'Oil Filter TO-3240', NULL, NULL, NULL, '<p>Oil Filter TO-3240</p>', NULL, 900.00, NULL, 0, 'products/April2021/W3Y8VxkoTnGQtIG4dax3.JPG', NULL, '2021-03-31 10:12:00', '2021-04-08 04:26:47', '{\"Size\": null, \"Color\": null}', 1, 0, NULL, NULL, NULL, NULL, NULL, 0),
(115, 'Oil Filter DT-01', NULL, NULL, NULL, '<p>Oil Filter DT-01</p>', NULL, 70.00, NULL, 0, 'products/April2021/m4bKjZCVr7OaN5crQBqZ.JPG', NULL, '2021-03-31 10:13:00', '2021-04-08 04:29:42', '{\"Size\": null, \"Color\": null}', 1, 0, NULL, NULL, NULL, NULL, NULL, 0),
(116, 'Oil Filter TO-1049', NULL, NULL, NULL, '<p>Oil Filter TO-1049</p>', NULL, 800.00, NULL, 0, 'products/April2021/EjCjSWIhikIPDq8vS86z.JPG', NULL, '2021-03-31 10:14:00', '2021-04-08 04:32:36', '{\"Size\": null, \"Color\": null}', 1, 0, NULL, NULL, NULL, NULL, NULL, 0),
(117, 'Oil Filter TO-1220', NULL, NULL, NULL, '<p>Oil Filter TO-1220</p>', NULL, 899.00, NULL, 0, 'products/April2021/KsbNpnQy1bEVOXqCKTaG.JPG', NULL, '2021-03-31 10:19:00', '2021-04-08 04:35:57', '{\"Size\": null, \"Color\": null}', 1, 0, NULL, NULL, NULL, NULL, NULL, 0),
(118, 'Oil Filter TO-8203', NULL, NULL, NULL, '<p>Oil Filter TO-8203&nbsp;</p>', NULL, 900.00, NULL, 0, 'products/April2021/yETQ4DIGYq8CUJdCfc9V.JPG', NULL, '2021-03-31 10:20:00', '2021-04-08 04:37:28', '{\"Size\": null, \"Color\": null}', 1, 0, NULL, NULL, NULL, NULL, NULL, 0),
(119, 'Oil Filter TO-1047', NULL, NULL, NULL, '<p>Oil Filter TO-1047</p>', NULL, 500.00, NULL, 0, 'products/April2021/WP7qxyJ8BSsGajqzYDZO.JPG', NULL, '2021-03-31 10:21:00', '2021-04-08 04:38:34', '{\"Size\": null, \"Color\": null}', 1, 0, NULL, NULL, NULL, NULL, NULL, 0),
(120, 'Oil Filter TO-5232M', NULL, NULL, NULL, '<p>Oil Filter TO-5232M</p>', NULL, 800.00, NULL, 0, 'products/April2021/Zo7ELsuFeG30XVEG47ah.JPG', NULL, '2021-03-31 10:22:00', '2021-04-12 08:17:03', '{\"Size\": null, \"Color\": null}', 1, 0, NULL, NULL, NULL, NULL, NULL, 0),
(121, 'VICCOLOR Marine Squash 17744', NULL, NULL, NULL, '<p>VICCOLOR Marine Squash 17744</p>', NULL, 490.00, NULL, 0, 'products/April2021/seVaxyvgJfH8uyvfld89.JPG', NULL, '2021-03-31 10:24:00', '2021-04-08 07:08:04', '{\"Size\": null, \"Color\": null}', 1, 0, NULL, NULL, NULL, NULL, NULL, 0),
(122, 'VICCOLOR Blooming Shower 17746', NULL, NULL, NULL, '<p>VICCOLOR Blooming Shower 17746</p>', NULL, 490.00, NULL, 0, 'products/April2021/Kxy1YnbrOekwVI4gFKes.JPG', NULL, '2021-03-31 10:25:00', '2021-04-08 11:41:06', '{\"Size\": null, \"Color\": null}', 1, 0, NULL, NULL, NULL, NULL, NULL, 0),
(123, 'Fragrance Tank Blue Soda 690', NULL, NULL, NULL, '<p>Fragrance Tank Blue Soda 690</p>', NULL, 690.00, NULL, 0, 'products/April2021/mX3AIzDpBMAOAXdTURoL.JPG', NULL, '2021-03-31 10:26:00', '2021-04-08 11:38:33', '{\"Size\": null, \"Color\": null}', 1, 0, NULL, NULL, NULL, NULL, NULL, 0),
(124, 'Fragrance Tank Peach & Kiss 2592', NULL, NULL, NULL, '<p>Fragrance Tank Peach &amp; Kiss 2592</p>', NULL, 690.00, NULL, 0, 'products/April2021/CDa1eW8k44HdZ4LCi61W.JPG', NULL, '2021-03-31 10:27:00', '2021-04-08 11:37:29', '{\"Size\": null, \"Color\": null}', 1, 0, NULL, NULL, NULL, NULL, NULL, 0),
(125, 'Fragrance Tank Lemon Squash 2593', NULL, NULL, NULL, '<p>Fragrance Tank Lemon Squash 2593</p>', NULL, 690.00, NULL, 0, 'products/April2021/OzLGp2Xtjdh3xifiD6rc.JPG', NULL, '2021-03-31 10:28:00', '2021-04-08 11:36:33', '{\"Size\": null, \"Color\": null}', 1, 0, NULL, NULL, NULL, NULL, NULL, 0),
(126, 'Fragrance Tank White Musk 2594', NULL, NULL, NULL, '<p>Fragrance Tank White Musk 2594</p>', NULL, 690.00, NULL, 0, 'products/April2021/55MZK0R793RaSrFP0STi.JPG', NULL, '2021-03-31 10:28:00', '2021-04-08 11:35:32', '{\"Size\": null, \"Color\": null}', 1, 0, NULL, NULL, NULL, NULL, NULL, 0),
(127, 'Fragrance Tank Sparkling Dry 12596', NULL, NULL, NULL, '<p>Fragrance Tank Sparkling Dry 12596</p>', NULL, 690.00, NULL, 0, 'products/April2021/ZDYEZO8qDdNutr7NyafP.JPG', NULL, '2021-03-31 10:29:00', '2021-04-08 11:33:52', '{\"Size\": null, \"Color\": null}', 1, 0, NULL, NULL, NULL, NULL, NULL, 0),
(128, 'Fragrance Tank Splash Cola 12597', NULL, 4, NULL, '<p>Fragrance Tank Splash Cola 12597</p>', NULL, 690.00, NULL, 0, 'products/April2021/oXkk0yWEyx2W7d6I3Apf.JPG', NULL, '2021-03-31 10:30:00', '2021-08-17 00:36:27', '{\"Size\": null, \"Color\": null}', 1, 0, NULL, NULL, NULL, NULL, NULL, 0),
(129, 'Designer\'s Cologne Tank Cool Sexy 8151', NULL, NULL, NULL, '<p>Designer\'s Cologne Tank Cool Sexy 8151</p>', NULL, 990.00, NULL, 0, 'products/April2021/FZwI7ybWfyS98xVxG57S.JPG', NULL, '2021-03-31 10:31:00', '2021-04-08 11:31:27', '{\"Size\": null, \"Color\": null}', 1, 0, NULL, NULL, NULL, NULL, NULL, 0),
(130, 'Designer\'s Cologne Tank Marine Squash 8153', NULL, NULL, NULL, '<p>Designer\'s Cologne Tank Marine Squash 8153</p>', NULL, 990.00, NULL, 0, 'products/April2021/ZV1gH19u8pUjlLjfBO6F.JPG', NULL, '2021-03-31 10:32:00', '2021-04-08 11:22:12', '{\"Size\": null, \"Color\": null}', 1, 0, NULL, NULL, NULL, NULL, NULL, 0),
(131, 'Designer\'s Cologne Tank Angel Snow 8154', NULL, NULL, NULL, '<p>Designer\'s Cologne Tank Angel Snow 8154</p>', NULL, 990.00, NULL, 0, 'products/April2021/xY7Iqhj7r0qHFERAoJGf.JPG', NULL, '2021-03-31 10:33:00', '2021-04-08 11:23:25', '{\"Size\": null, \"Color\": null}', 1, 0, NULL, NULL, NULL, NULL, NULL, 0),
(132, 'Designer\'s Cologne Tank White Musk V 18156', NULL, NULL, NULL, '<p>Designer\'s Cologne Tank White Musk V 18156</p>', NULL, 990.00, NULL, 0, 'products/April2021/4Iwzq3Pvud27YHVc59M0.JPG', NULL, '2021-03-31 10:34:00', '2021-04-08 11:25:49', '{\"Size\": null, \"Color\": null}', 1, 0, NULL, NULL, NULL, NULL, NULL, 0),
(133, 'Designer\'s Cologne Tank White Musk 8231', NULL, NULL, NULL, '<p>Designer\'s Cologne Tank&nbsp; White Musk 8231</p>', NULL, 990.00, NULL, 0, 'products/April2021/Yzd4vi6tv41jsClJLqPz.JPG', NULL, '2021-03-31 10:35:00', '2021-04-08 11:27:29', '{\"Size\": null, \"Color\": null}', 1, 0, NULL, NULL, NULL, NULL, NULL, 0),
(134, 'Designer\'s Cologne Tank  Marine Squash 8234', NULL, NULL, NULL, '<p>Designer\'s Cologne Tank&nbsp; Marine Squash 8234</p>', NULL, 990.00, NULL, 0, 'products/April2021/CXlqMLk5OEny2hSN7YHd.JPG', NULL, '2021-03-31 10:36:00', '2021-04-12 07:24:45', '{\"Size\": null, \"Color\": null}', 1, 0, NULL, NULL, NULL, NULL, NULL, 0),
(135, 'Designer\'s Cologne Tank Black Wild Sexy Shower 18235', NULL, NULL, NULL, '<p>Designer\'s Cologne Tank Sexy Shower 18235</p>', NULL, 990.00, NULL, 0, 'products/April2021/7ZDBYycVGFzYYBn0YyBW.JPG', NULL, '2021-03-31 10:37:00', '2021-04-12 07:22:30', '{\"Size\": null, \"Color\": null}', 1, 0, NULL, NULL, NULL, NULL, NULL, 0),
(136, 'Designer\'s Cologne Tank Black Wild Healing Blue 18236', NULL, NULL, NULL, '<p>Designer\'s Cologne Tank&nbsp; Healing Blue 18236</p>', NULL, 990.00, NULL, 0, 'products/April2021/pRh51IGDsigvq0YdajT4.JPG', NULL, '2021-03-31 10:38:00', '2021-04-12 07:05:11', '{\"Size\": null, \"Color\": null}', 1, 0, NULL, NULL, NULL, NULL, NULL, 0),
(137, 'Rabbico White Musk 8021', NULL, NULL, NULL, '<p>Rabbico White Musk 8021</p>', NULL, 490.00, NULL, 0, 'products/April2021/T6WrJZVEhscZjwY64hi0.JPG', NULL, '2021-03-31 10:40:00', '2021-04-08 11:05:29', '{\"Size\": null, \"Color\": null}', 1, 0, NULL, NULL, NULL, NULL, NULL, 0),
(138, 'Rabbico Angel Snow 8024', NULL, NULL, NULL, '<p>Rabbico Angel Snow 8024&nbsp;</p>', NULL, 490.00, NULL, 0, 'products/April2021/fiWBuTZdLrjC13eiWihv.JPG', NULL, '2021-03-31 10:41:00', '2021-04-08 11:07:31', '{\"Size\": null, \"Color\": null}', 1, 0, NULL, NULL, NULL, NULL, NULL, 0),
(139, 'Rabbico Marine Squash 18161', NULL, NULL, NULL, '<p>Rabbico Marine Squash 18161</p>', NULL, 490.00, NULL, 0, 'products/April2021/VkIn5ft2Xvv4zvUYnLan.JPG', NULL, '2021-03-31 10:42:00', '2021-04-08 11:08:38', '{\"Size\": null, \"Color\": null}', 1, 0, NULL, NULL, NULL, NULL, NULL, 0),
(140, 'Rabbico Sexy Shower 18162', NULL, NULL, NULL, '<p>Rabbico Sexy Shower 18162</p>', NULL, 490.00, NULL, 0, 'products/April2021/mVMli58yEdH15frE19Q7.JPG', NULL, '2021-03-31 10:42:00', '2021-04-08 11:09:58', '{\"Size\": null, \"Color\": null}', 1, 0, NULL, NULL, NULL, NULL, NULL, 0),
(141, 'Rabbico Sweet Angel Snow 8742', NULL, NULL, NULL, '<p>Rabbico Sweet Angel Snow 8742</p>', NULL, 490.00, NULL, 0, 'products/April2021/3JyKhxsN5IAVFFb6adxF.JPG', NULL, '2021-03-31 10:43:00', '2021-04-08 11:11:16', '{\"Size\": null, \"Color\": null}', 1, 0, NULL, NULL, NULL, NULL, NULL, 0),
(142, 'Rabbico Sweet White Musk 8743', NULL, NULL, NULL, '<p>Rabbico Sweet White Musk 8743</p>', NULL, 490.00, NULL, 0, 'products/April2021/YrGcKFeIMXuF1VDnthaz.JPG', NULL, '2021-03-31 10:44:00', '2021-04-05 11:08:02', '{\"Size\": null, \"Color\": null}', 1, 0, NULL, NULL, NULL, NULL, NULL, 0),
(143, 'Rabbico Sweet Sexy Shower 18746', NULL, NULL, NULL, '<p>Rabbico Sweet Sexy Shower 18746</p>', NULL, 490.00, NULL, 0, 'products/April2021/kChGWNVGcdR5ZQlEMbTa.JPG', NULL, '2021-03-31 10:45:00', '2021-04-05 11:15:53', '{\"Size\": null, \"Color\": null}', 1, 0, NULL, NULL, NULL, NULL, NULL, 0),
(144, 'Rabbico White White Musk 2401', NULL, NULL, NULL, '<p>Rabbico White White Musk 2401</p>', NULL, 490.00, NULL, 0, 'products/April2021/Dgb4gLxSclcji5XD8dxI.JPG', NULL, '2021-03-31 10:46:00', '2021-04-05 10:40:09', '{\"Size\": null, \"Color\": null}', 1, 0, NULL, NULL, NULL, NULL, NULL, 0),
(145, 'Rabbico White Angel Snow 2402', NULL, NULL, NULL, '<p>Rabbico White Angel Snow 2402</p>', NULL, 490.00, NULL, 0, 'products/April2021/hcLadeGyXT8RjfiNNdXd.JPG', NULL, '2021-03-31 11:00:00', '2021-04-05 10:37:39', '{\"Size\": null, \"Color\": null}', 1, 0, NULL, NULL, NULL, NULL, NULL, 0),
(146, 'Rabbico White Princess Apple 2404', NULL, NULL, NULL, '<p>Rabbico White Princess Apple 2404</p>', NULL, 490.00, NULL, 0, 'products/April2021/sYw8apcVrrAlb9nILZhZ.JPG', NULL, '2021-03-31 11:01:00', '2021-04-05 10:59:43', '{\"Size\": null, \"Color\": null}', 0, 0, NULL, NULL, NULL, NULL, NULL, 0),
(147, 'Rabbico White Relax Shower 2405', NULL, NULL, NULL, '<p>Rabbico White Relax Shower 2405</p>', NULL, 490.00, NULL, 0, 'products/April2021/E1hjDlv0b4K60hGrzR74.JPG', NULL, '2021-03-31 11:01:00', '2021-04-05 10:32:12', '{\"Size\": null, \"Color\": null}', 1, 0, NULL, NULL, NULL, NULL, NULL, 0),
(148, 'Rabbico White Lemon Squash 12407', NULL, NULL, NULL, '<p>Rabbico White Lemon Squash 12407</p>', NULL, 490.00, NULL, 0, 'products/April2021/q9InhGYJuxOiRn3mjqRQ.JPG', NULL, '2021-03-31 11:02:00', '2021-04-05 10:26:43', '{\"Size\": null, \"Color\": null}', 1, 0, NULL, NULL, NULL, NULL, NULL, 0),
(149, 'Rabbico White Sexy Shower 12408', NULL, 4, NULL, '<p>Rabbico White Sexy Shower 12408</p>', NULL, 490.00, NULL, 0, 'products/April2021/hsFtflRyNVChEjjw6daC.JPG', NULL, '2021-03-31 11:03:00', '2021-08-17 00:35:31', '{\"Size\": null, \"Color\": null}', 1, 0, NULL, NULL, NULL, NULL, NULL, 0),
(150, '3M BLACK AND SHINE', NULL, NULL, NULL, '<p>Product Description</p>\r\n<p>Specification:</p>\r\n<p>Brand: 3M</p>\r\n<p>Origin: Thailand</p>\r\n<p>Pack Size: 400ml</p>\r\n<p>For: Car</p>\r\n<p>Description:&nbsp;</p>\r\n<p>Deep cleans dirt and grime from all vinyl, leather, rubber and plastic surfaces. Restores a natural satin finish appearance to leather and vinyl. Restores shines and conditions in one step. It wipes away residue and deposits that tarnish the appearance of car seats, armrests, trim and other interior components. Renews the appearance and feel of leather and vinyl. The dual-purpose product cleans and conditions. Lemon scent freshens car interiors.</p>', NULL, 480.00, NULL, 0, 'products/June2021/cDBLsiCzN98mMCViLQOm.jpg', NULL, '2021-06-20 05:51:00', '2021-06-21 05:07:34', '{\"Size\": null, \"Color\": null}', 1, 0, NULL, NULL, NULL, NULL, NULL, 0),
(151, '3M BLACK AND SHINE', NULL, NULL, NULL, '<p>ssss</p>', NULL, 120.00, NULL, 0, 'products\\June2021\\FR96HTdALCbS3UF373On.jpg', NULL, '2021-06-20 23:23:00', '2021-06-26 04:22:09', '{\"Size\": null, \"Color\": null}', 0, 0, NULL, NULL, NULL, NULL, NULL, 0),
(152, 'test', NULL, NULL, 1, '<p>test</p>', NULL, 1233.00, NULL, 0, 'products\\July2021\\bJB4PJQRUJRsP7ETKRhr.jpg', NULL, '2021-07-06 11:46:00', '2021-08-19 03:15:53', '{\"Size\": null, \"Color\": null}', 0, 0, NULL, 'Toyota', 'Premio', '2003', 'Parts', 0);

-- --------------------------------------------------------

--
-- Table structure for table `product_categories`
--

CREATE TABLE `product_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_categories`
--

INSERT INTO `product_categories` (`id`, `product_id`, `category_id`, `created_at`, `updated_at`) VALUES
(12, 3, 15, NULL, NULL),
(13, 3, 39, NULL, NULL),
(14, 4, 15, NULL, NULL),
(15, 4, 39, NULL, NULL),
(16, 5, 15, NULL, NULL),
(17, 5, 39, NULL, NULL),
(18, 6, 13, NULL, NULL),
(20, 7, 13, NULL, NULL),
(22, 8, 13, NULL, NULL),
(24, 9, 13, NULL, NULL),
(26, 10, 16, NULL, NULL),
(28, 11, 14, NULL, NULL),
(30, 12, 14, NULL, NULL),
(32, 13, 14, NULL, NULL),
(33, 13, 53, NULL, NULL),
(34, 14, 14, NULL, NULL),
(36, 15, 14, NULL, NULL),
(38, 16, 14, NULL, NULL),
(40, 17, 14, NULL, NULL),
(42, 18, 14, NULL, NULL),
(43, 18, 55, NULL, NULL),
(44, 10, 52, NULL, NULL),
(45, 17, 50, NULL, NULL),
(46, 16, 50, NULL, NULL),
(47, 15, 50, NULL, NULL),
(48, 14, 50, NULL, NULL),
(49, 11, 47, NULL, NULL),
(54, 6, 54, NULL, NULL),
(55, 9, 54, NULL, NULL),
(56, 8, 54, NULL, NULL),
(57, 7, 54, NULL, NULL),
(58, 19, 11, NULL, NULL),
(59, 19, 59, NULL, NULL),
(60, 20, 11, NULL, NULL),
(61, 20, 59, NULL, NULL),
(62, 21, 11, NULL, NULL),
(63, 21, 59, NULL, NULL),
(64, 22, 11, NULL, NULL),
(65, 22, 59, NULL, NULL),
(66, 23, 11, NULL, NULL),
(67, 23, 59, NULL, NULL),
(68, 25, 11, NULL, NULL),
(69, 25, 59, NULL, NULL),
(70, 26, 11, NULL, NULL),
(71, 26, 59, NULL, NULL),
(72, 27, 11, NULL, NULL),
(73, 27, 59, NULL, NULL),
(74, 28, 11, NULL, NULL),
(75, 28, 59, NULL, NULL),
(76, 24, 11, NULL, NULL),
(77, 24, 59, NULL, NULL),
(78, 29, 11, NULL, NULL),
(79, 29, 61, NULL, NULL),
(80, 30, 11, NULL, NULL),
(81, 30, 61, NULL, NULL),
(82, 31, 11, NULL, NULL),
(83, 31, 61, NULL, NULL),
(84, 32, 11, NULL, NULL),
(85, 32, 61, NULL, NULL),
(86, 33, 11, NULL, NULL),
(87, 33, 61, NULL, NULL),
(88, 34, 11, NULL, NULL),
(89, 34, 60, NULL, NULL),
(90, 35, 11, NULL, NULL),
(91, 35, 62, NULL, NULL),
(92, 36, 11, NULL, NULL),
(93, 36, 62, NULL, NULL),
(94, 37, 11, NULL, NULL),
(95, 37, 62, NULL, NULL),
(96, 38, 11, NULL, NULL),
(97, 38, 62, NULL, NULL),
(98, 39, 11, NULL, NULL),
(99, 39, 62, NULL, NULL),
(100, 40, 11, NULL, NULL),
(101, 40, 62, NULL, NULL),
(102, 41, 11, NULL, NULL),
(103, 41, 63, NULL, NULL),
(104, 42, 11, NULL, NULL),
(105, 42, 63, NULL, NULL),
(106, 43, 11, NULL, NULL),
(107, 43, 63, NULL, NULL),
(108, 44, 11, NULL, NULL),
(109, 44, 63, NULL, NULL),
(110, 45, 11, NULL, NULL),
(111, 45, 63, NULL, NULL),
(112, 46, 11, NULL, NULL),
(113, 46, 64, NULL, NULL),
(114, 47, 11, NULL, NULL),
(115, 47, 64, NULL, NULL),
(116, 48, 11, NULL, NULL),
(117, 48, 64, NULL, NULL),
(118, 49, 11, NULL, NULL),
(119, 49, 65, NULL, NULL),
(120, 50, 11, NULL, NULL),
(121, 50, 65, NULL, NULL),
(122, 51, 11, NULL, NULL),
(123, 51, 65, NULL, NULL),
(124, 52, 11, NULL, NULL),
(125, 52, 65, NULL, NULL),
(126, 53, 11, NULL, NULL),
(127, 53, 65, NULL, NULL),
(128, 54, 11, NULL, NULL),
(129, 54, 65, NULL, NULL),
(130, 55, 11, NULL, NULL),
(131, 55, 65, NULL, NULL),
(132, 56, 11, NULL, NULL),
(133, 56, 40, NULL, NULL),
(134, 57, 11, NULL, NULL),
(135, 57, 40, NULL, NULL),
(136, 58, 11, NULL, NULL),
(137, 58, 40, NULL, NULL),
(138, 59, 11, NULL, NULL),
(139, 59, 40, NULL, NULL),
(140, 60, 11, NULL, NULL),
(141, 60, 40, NULL, NULL),
(142, 61, 11, NULL, NULL),
(143, 61, 40, NULL, NULL),
(144, 62, 11, NULL, NULL),
(145, 62, 40, NULL, NULL),
(146, 63, 11, NULL, NULL),
(147, 63, 40, NULL, NULL),
(148, 64, 11, NULL, NULL),
(149, 64, 40, NULL, NULL),
(150, 65, 11, NULL, NULL),
(151, 65, 40, NULL, NULL),
(152, 66, 11, NULL, NULL),
(153, 66, 40, NULL, NULL),
(154, 68, 11, NULL, NULL),
(155, 68, 40, NULL, NULL),
(156, 69, 11, NULL, NULL),
(157, 69, 40, NULL, NULL),
(158, 70, 11, NULL, NULL),
(159, 70, 40, NULL, NULL),
(160, 71, 11, NULL, NULL),
(161, 71, 40, NULL, NULL),
(162, 72, 11, NULL, NULL),
(163, 72, 40, NULL, NULL),
(164, 73, 11, NULL, NULL),
(165, 73, 40, NULL, NULL),
(166, 74, 11, NULL, NULL),
(167, 74, 40, NULL, NULL),
(168, 75, 11, NULL, NULL),
(169, 75, 40, NULL, NULL),
(170, 76, 11, NULL, NULL),
(171, 76, 40, NULL, NULL),
(172, 77, 11, NULL, NULL),
(173, 77, 40, NULL, NULL),
(174, 78, 11, NULL, NULL),
(175, 78, 40, NULL, NULL),
(176, 79, 11, NULL, NULL),
(177, 79, 40, NULL, NULL),
(178, 80, 11, NULL, NULL),
(179, 80, 40, NULL, NULL),
(180, 81, 11, NULL, NULL),
(181, 81, 40, NULL, NULL),
(182, 82, 11, NULL, NULL),
(183, 82, 40, NULL, NULL),
(184, 83, 11, NULL, NULL),
(185, 83, 40, NULL, NULL),
(186, 84, 11, NULL, NULL),
(187, 84, 40, NULL, NULL),
(188, 85, 11, NULL, NULL),
(189, 85, 40, NULL, NULL),
(190, 86, 11, NULL, NULL),
(191, 86, 40, NULL, NULL),
(192, 87, 11, NULL, NULL),
(193, 87, 40, NULL, NULL),
(194, 88, 11, NULL, NULL),
(195, 88, 40, NULL, NULL),
(196, 89, 11, NULL, NULL),
(197, 89, 59, NULL, NULL),
(198, 90, 11, NULL, NULL),
(199, 90, 59, NULL, NULL),
(200, 91, 11, NULL, NULL),
(201, 91, 59, NULL, NULL),
(202, 92, 11, NULL, NULL),
(203, 92, 59, NULL, NULL),
(204, 93, 11, NULL, NULL),
(205, 93, 59, NULL, NULL),
(206, 94, 11, NULL, NULL),
(207, 94, 59, NULL, NULL),
(208, 95, 11, NULL, NULL),
(209, 95, 59, NULL, NULL),
(210, 96, 11, NULL, NULL),
(211, 96, 59, NULL, NULL),
(212, 97, 11, NULL, NULL),
(213, 97, 59, NULL, NULL),
(214, 98, 11, NULL, NULL),
(215, 98, 59, NULL, NULL),
(216, 99, 11, NULL, NULL),
(217, 99, 59, NULL, NULL),
(218, 100, 11, NULL, NULL),
(219, 100, 59, NULL, NULL),
(220, 101, 11, NULL, NULL),
(221, 101, 59, NULL, NULL),
(222, 102, 11, NULL, NULL),
(223, 102, 59, NULL, NULL),
(224, 103, 11, NULL, NULL),
(225, 103, 59, NULL, NULL),
(226, 104, 11, NULL, NULL),
(227, 104, 59, NULL, NULL),
(228, 105, 11, NULL, NULL),
(229, 105, 59, NULL, NULL),
(230, 106, 11, NULL, NULL),
(231, 106, 59, NULL, NULL),
(232, 107, 11, NULL, NULL),
(233, 107, 59, NULL, NULL),
(234, 108, 11, NULL, NULL),
(235, 108, 59, NULL, NULL),
(236, 109, 11, NULL, NULL),
(237, 109, 59, NULL, NULL),
(238, 110, 11, NULL, NULL),
(239, 110, 59, NULL, NULL),
(240, 111, 11, NULL, NULL),
(241, 111, 59, NULL, NULL),
(242, 112, 11, NULL, NULL),
(243, 112, 59, NULL, NULL),
(244, 113, 11, NULL, NULL),
(245, 113, 59, NULL, NULL),
(246, 115, 11, NULL, NULL),
(248, 116, 11, NULL, NULL),
(250, 117, 11, NULL, NULL),
(252, 118, 11, NULL, NULL),
(254, 119, 11, NULL, NULL),
(256, 120, 11, NULL, NULL),
(258, 121, 11, NULL, NULL),
(259, 121, 40, NULL, NULL),
(260, 122, 11, NULL, NULL),
(262, 123, 11, NULL, NULL),
(264, 124, 11, NULL, NULL),
(266, 125, 11, NULL, NULL),
(268, 126, 11, NULL, NULL),
(270, 127, 11, NULL, NULL),
(272, 128, 11, NULL, NULL),
(274, 129, 11, NULL, NULL),
(276, 130, 11, NULL, NULL),
(278, 131, 11, NULL, NULL),
(280, 132, 11, NULL, NULL),
(282, 133, 11, NULL, NULL),
(284, 134, 11, NULL, NULL),
(286, 135, 11, NULL, NULL),
(288, 136, 11, NULL, NULL),
(290, 137, 11, NULL, NULL),
(291, 137, 40, NULL, NULL),
(292, 138, 11, NULL, NULL),
(293, 138, 40, NULL, NULL),
(294, 139, 11, NULL, NULL),
(295, 139, 40, NULL, NULL),
(296, 140, 11, NULL, NULL),
(297, 140, 40, NULL, NULL),
(298, 141, 11, NULL, NULL),
(299, 141, 40, NULL, NULL),
(300, 142, 11, NULL, NULL),
(301, 142, 40, NULL, NULL),
(302, 143, 11, NULL, NULL),
(303, 143, 40, NULL, NULL),
(304, 144, 11, NULL, NULL),
(305, 144, 40, NULL, NULL),
(306, 145, 11, NULL, NULL),
(307, 145, 40, NULL, NULL),
(308, 146, 11, NULL, NULL),
(309, 146, 40, NULL, NULL),
(310, 147, 11, NULL, NULL),
(311, 147, 40, NULL, NULL),
(312, 148, 11, NULL, NULL),
(313, 148, 40, NULL, NULL),
(314, 149, 11, NULL, NULL),
(315, 149, 40, NULL, NULL),
(316, 136, 40, NULL, NULL),
(317, 130, 40, NULL, NULL),
(318, 131, 40, NULL, NULL),
(319, 132, 40, NULL, NULL),
(320, 133, 40, NULL, NULL),
(321, 134, 40, NULL, NULL),
(322, 135, 40, NULL, NULL),
(323, 120, 61, NULL, NULL),
(324, 114, 11, NULL, NULL),
(325, 114, 61, NULL, NULL),
(326, 115, 61, NULL, NULL),
(327, 116, 61, NULL, NULL),
(328, 117, 61, NULL, NULL),
(329, 118, 61, NULL, NULL),
(330, 119, 61, NULL, NULL),
(331, 129, 40, NULL, NULL),
(332, 128, 40, NULL, NULL),
(333, 127, 40, NULL, NULL),
(334, 126, 40, NULL, NULL),
(335, 125, 40, NULL, NULL),
(336, 124, 40, NULL, NULL),
(337, 123, 40, NULL, NULL),
(338, 122, 40, NULL, NULL),
(339, 67, 11, NULL, NULL),
(340, 67, 40, NULL, NULL),
(341, 150, 15, NULL, NULL),
(342, 151, 15, NULL, NULL),
(343, 152, 11, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `product_groups`
--

CREATE TABLE `product_groups` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('Active','Inactive') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Active',
  `created_by` int(10) UNSIGNED DEFAULT NULL,
  `updated_by` int(10) UNSIGNED DEFAULT NULL,
  `deleted_by` int(10) UNSIGNED DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product_groups`
--

INSERT INTO `product_groups` (`id`, `name`, `status`, `created_by`, `updated_by`, `deleted_by`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Japanese Parts', 'Active', 1, 1, NULL, NULL, '2021-08-15 23:08:33', '2021-08-18 13:05:23'),
(2, 'Others Parts', 'Active', 1, NULL, NULL, NULL, '2021-08-18 13:05:59', '2021-08-18 13:05:59');

-- --------------------------------------------------------

--
-- Table structure for table `product_reviews`
--

CREATE TABLE `product_reviews` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `rating` enum('1','2','3','4','5') COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_reviews`
--

INSERT INTO `product_reviews` (`id`, `user_id`, `product_id`, `rating`, `message`, `created_at`, `updated_at`) VALUES
(1, 3, 148, '5', 'This product is good', '2021-05-25 11:33:17', '2021-05-25 11:33:17'),
(3, 3, 1, '5', 'Greate', '2021-09-21 03:01:52', '2021-09-21 03:01:52'),
(5, 51, 3, '4', 'good', '2021-09-30 04:36:01', '2021-09-30 04:36:01');

-- --------------------------------------------------------

--
-- Table structure for table `product_types`
--

CREATE TABLE `product_types` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('Active','Inactive') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Active',
  `created_by` int(10) UNSIGNED DEFAULT NULL,
  `updated_by` int(10) UNSIGNED DEFAULT NULL,
  `deleted_by` int(10) UNSIGNED DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product_types`
--

INSERT INTO `product_types` (`id`, `name`, `status`, `created_by`, `updated_by`, `deleted_by`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Brake Pad Front', 'Active', 1, 1, NULL, NULL, '2021-08-15 23:08:33', '2021-08-26 10:46:55'),
(2, 'Brake Pad Rare', 'Active', 1, 1, NULL, NULL, '2021-08-18 09:47:39', '2021-08-26 10:48:20'),
(3, 'Brake Shoe', 'Active', 1, NULL, NULL, NULL, '2021-08-26 10:48:48', '2021-08-26 10:48:48'),
(4, 'Cutting Compound', 'Active', 4, NULL, NULL, NULL, '2021-09-23 07:54:14', '2021-09-23 07:54:14'),
(5, 'Polishing Compound', 'Active', 4, NULL, NULL, NULL, '2021-09-23 07:54:49', '2021-09-23 07:54:49'),
(6, 'Finishing Compound', 'Active', 4, NULL, NULL, NULL, '2021-09-23 07:55:03', '2021-09-23 07:55:03'),
(7, 'Shampoo', 'Active', 4, NULL, NULL, NULL, '2021-09-23 07:55:19', '2021-09-23 07:55:19'),
(8, 'Piano Black Restoration Kit', 'Active', 4, NULL, NULL, NULL, '2021-09-23 07:55:47', '2021-09-23 07:55:47'),
(9, 'Coat Mirror Shine', 'Active', 4, NULL, NULL, NULL, '2021-09-23 07:56:49', '2021-09-23 07:56:49');

-- --------------------------------------------------------

--
-- Table structure for table `product_types_old`
--

CREATE TABLE `product_types_old` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_types_old`
--

INSERT INTO `product_types_old` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Parts', '2021-08-11 00:46:41', '2021-08-11 00:46:41'),
(2, 'Accessories', '2021-08-11 00:47:01', '2021-08-11 00:47:01');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `display_name`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'Administrator', '2020-11-21 05:29:18', '2020-11-21 05:29:18'),
(2, 'user', 'Normal User', '2020-11-21 05:29:18', '2020-11-21 05:29:18'),
(3, 'seller', 'Seller', '2020-11-23 04:36:26', '2020-11-23 04:36:26'),
(4, 'agent', 'Agent', '2021-03-18 04:14:50', '2021-03-18 04:14:50'),
(5, 'Super', 'Supervisor', '2021-03-28 04:54:05', '2021-03-28 04:54:05');

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(10) UNSIGNED DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT 1,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price_range` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `cover_img` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `in_home_page` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`id`, `parent_id`, `order`, `name`, `slug`, `price_range`, `description`, `cover_img`, `in_home_page`, `created_at`, `updated_at`) VALUES
(1, NULL, 1, 'Cleaning', 'cleaning', NULL, '<p><span style=\"color: #000000; font-family: \'Open Sans\', Arial, sans-serif; text-align: justify;\">It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</span></p>', 'services\\June2021\\NmINMEQrxB6ACrYRTklP.png', 1, '2021-03-16 01:06:01', '2021-06-13 04:48:59'),
(2, 1, 1, 'Handwashing', 'handwashing', '500 - 600', '<p style=\"padding: 0px; margin: 0px 0px 25px; list-style: none; border: 0px; outline: none; box-sizing: border-box; line-height: 26px; color: #2c2f34; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Oxygen, Oxygen-Sans, Ubuntu, Cantarell, \'Helvetica Neue\', \'Open Sans\', Arial, sans-serif; font-size: 15px;\">All detailing experts will tell you that handwashing is the safest method for washing your vehicle. Several different techniques fall into this category, including the conventional two-bucket wash to newer foam cannons that cover your vehicle in snow foam.&nbsp;<a style=\"padding: 0px; margin: 0px; list-style: none; border: 0px; outline: none; box-sizing: border-box; background-color: transparent; color: #e00000; text-decoration-line: none; transition: all 0.15s ease 0s;\" href=\"https://www.thevehiclelab.com/best-car-wash-soap/\" target=\"_self\" rel=\"follow noopener noreferrer\" data-wpel-link=\"exclude\">The Vehicle Labs says</a>&nbsp;that regardless of the method you go with, all of them involve sudsing car shampoo and washing your vehicle with a microfiber towel or mitt and the&nbsp;<a style=\"padding: 0px; margin: 0px; list-style: none; border: 0px; outline: none; box-sizing: border-box; background-color: transparent; color: #e00000; text-decoration-line: none; transition: all 0.15s ease 0s;\" href=\"https://autocarelabs.com/best-car-wash-brush/\" target=\"_self\" rel=\"follow noopener noreferrer\" data-wpel-link=\"exclude\">best car wash brush</a>.</p>\r\n<p style=\"padding: 0px; margin: 0px 0px 25px; list-style: none; border: 0px; outline: none; box-sizing: border-box; line-height: 26px; color: #2c2f34; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Oxygen, Oxygen-Sans, Ubuntu, Cantarell, \'Helvetica Neue\', \'Open Sans\', Arial, sans-serif; font-size: 15px;\">Handwashing is simply more effective than&nbsp;<a style=\"padding: 0px; margin: 0px; list-style: none; border: 0px; outline: none; box-sizing: border-box; background-color: transparent; color: #e00000; text-decoration-line: none; transition: all 0.15s ease 0s;\" href=\"https://autobeast.net/waterless-car-washes/\" target=\"_self\" rel=\"follow noopener noreferrer\" data-wpel-link=\"exclude\">any other type of car wash</a>. This is because it is successful in removing heavy contamination and while still being very gentle on your vehicle&rsquo;s finish.</p>\r\n<div class=\"stream-item stream-item-in-post stream-item-inline-post alignleft\" style=\"padding: 0px; list-style: none; border: 0px; outline: none; box-sizing: border-box; text-align: center; position: relative; z-index: 2; float: left; color: #2c2f34; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Oxygen, Oxygen-Sans, Ubuntu, Cantarell, \'Helvetica Neue\', \'Open Sans\', Arial, sans-serif; font-size: 15px; margin: 0px !important;\">&nbsp;</div>\r\n<p style=\"padding: 0px; margin: 0px 0px 25px; list-style: none; border: 0px; outline: none; box-sizing: border-box; line-height: 26px; color: #2c2f34; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Oxygen, Oxygen-Sans, Ubuntu, Cantarell, \'Helvetica Neue\', \'Open Sans\', Arial, sans-serif; font-size: 15px;\"><span style=\"padding: 0px; margin: 0px; list-style: none; border: 0px; outline: none; box-sizing: border-box; font-weight: 600;\">The Pros:</span></p>\r\n<ul style=\"padding: 0px 0px 0px 15px; margin: 0px 0px 20px 20px; list-style: none; border: 0px; outline: none; box-sizing: border-box; color: #2c2f34; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Oxygen, Oxygen-Sans, Ubuntu, Cantarell, \'Helvetica Neue\', \'Open Sans\', Arial, sans-serif; font-size: 15px;\">\r\n<li style=\"padding: 0px; margin: 0px 0px 5px; list-style: none disc; border: 0px; outline: none; box-sizing: border-box;\">Able to remove heavy particulates</li>\r\n<li style=\"padding: 0px; margin: 0px 0px 5px; list-style: none disc; border: 0px; outline: none; box-sizing: border-box;\">Reduced scratching</li>\r\n</ul>\r\n<p style=\"padding: 0px; margin: 0px 0px 25px; list-style: none; border: 0px; outline: none; box-sizing: border-box; line-height: 26px; color: #2c2f34; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Oxygen, Oxygen-Sans, Ubuntu, Cantarell, \'Helvetica Neue\', \'Open Sans\', Arial, sans-serif; font-size: 15px;\"><span style=\"padding: 0px; margin: 0px; list-style: none; border: 0px; outline: none; box-sizing: border-box; font-weight: 600;\">The Cons:</span></p>\r\n<ul style=\"padding: 0px 0px 0px 15px; margin: 0px 0px 20px 20px; list-style: none; border: 0px; outline: none; box-sizing: border-box; color: #2c2f34; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Oxygen, Oxygen-Sans, Ubuntu, Cantarell, \'Helvetica Neue\', \'Open Sans\', Arial, sans-serif; font-size: 15px;\">\r\n<li style=\"padding: 0px; margin: 0px 0px 5px; list-style: none disc; border: 0px; outline: none; box-sizing: border-box;\">Costs more than an automatic wash</li>\r\n<li style=\"padding: 0px; margin: 0px 0px 5px; list-style: none disc; border: 0px; outline: none; box-sizing: border-box;\">Takes more time than other techniques</li>\r\n<li style=\"padding: 0px; margin: 0px 0px 5px; list-style: none disc; border: 0px; outline: none; box-sizing: border-box;\">Needs large amounts of water</li>\r\n<li style=\"padding: 0px; margin: 0px 0px 5px; list-style: none disc; border: 0px; outline: none; box-sizing: border-box;\">Hard to accomplish in colder climates</li>\r\n</ul>', 'services\\June2021\\JQwqDaZqrggOjKvxb4K7.png', 1, '2021-03-16 01:07:56', '2021-06-13 04:48:32'),
(3, 1, 1, 'Waterless Car Wash', 'waterless-car-wash', '1000 - 1500', '<p style=\"padding: 0px; margin: 0px 0px 25px; list-style: none; border: 0px; outline: none; box-sizing: border-box; line-height: 26px; color: #2c2f34; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Oxygen, Oxygen-Sans, Ubuntu, Cantarell, \'Helvetica Neue\', \'Open Sans\', Arial, sans-serif; font-size: 15px;\">During a waterless wash, only two things are used. The first is waterless car wash that you apply to your vehicle with a spray bottle applicator, and the second is a handful of microfiber towels that you use to wipe your vehicle down with.</p>\r\n<p style=\"padding: 0px; margin: 0px 0px 25px; list-style: none; border: 0px; outline: none; box-sizing: border-box; line-height: 26px; color: #2c2f34; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Oxygen, Oxygen-Sans, Ubuntu, Cantarell, \'Helvetica Neue\', \'Open Sans\', Arial, sans-serif; font-size: 15px;\">This form of car wash isn&rsquo;t very effective at getting rid of heavy debris and particles, and there is a good possibility of scratching, since you might pick up particles and drag them over the finish.</p>\r\n<p style=\"padding: 0px; margin: 0px 0px 25px; list-style: none; border: 0px; outline: none; box-sizing: border-box; line-height: 26px; color: #2c2f34; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Oxygen, Oxygen-Sans, Ubuntu, Cantarell, \'Helvetica Neue\', \'Open Sans\', Arial, sans-serif; font-size: 15px;\">So, why do people use waterless car wash? Some folks&nbsp;<a style=\"padding: 0px; margin: 0px; list-style: none; border: 0px; outline: none; box-sizing: border-box; background-color: transparent; color: #e00000; text-decoration-line: none; transition: all 0.15s ease 0s;\" href=\"https://www.epa.gov/watersense/state-water-facts\" target=\"_self\" rel=\"follow noopener noreferrer\" data-wpel-link=\"exclude\">aren&rsquo;t allowed to use water</a>&nbsp;where they live. They also might not have enough room for hand-washing and the hardware required to do so.</p>\r\n<p style=\"padding: 0px; margin: 0px 0px 25px; list-style: none; border: 0px; outline: none; box-sizing: border-box; line-height: 26px; color: #2c2f34; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Oxygen, Oxygen-Sans, Ubuntu, Cantarell, \'Helvetica Neue\', \'Open Sans\', Arial, sans-serif; font-size: 15px;\"><span style=\"padding: 0px; margin: 0px; list-style: none; border: 0px; outline: none; box-sizing: border-box; font-weight: 600;\">The Pros:</span></p>\r\n<ul style=\"padding: 0px 0px 0px 15px; margin: 0px 0px 20px 20px; list-style: none; border: 0px; outline: none; box-sizing: border-box; color: #2c2f34; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Oxygen, Oxygen-Sans, Ubuntu, Cantarell, \'Helvetica Neue\', \'Open Sans\', Arial, sans-serif; font-size: 15px;\">\r\n<li style=\"padding: 0px; margin: 0px 0px 5px; list-style: none disc; border: 0px; outline: none; box-sizing: border-box;\">Water isn&rsquo;t necessary</li>\r\n<li style=\"padding: 0px; margin: 0px 0px 5px; list-style: none disc; border: 0px; outline: none; box-sizing: border-box;\">Achievable in a smaller space</li>\r\n<li style=\"padding: 0px; margin: 0px 0px 5px; list-style: none disc; border: 0px; outline: none; box-sizing: border-box;\">Quicker than handwashing</li>\r\n</ul>\r\n<p style=\"padding: 0px; margin: 0px 0px 25px; list-style: none; border: 0px; outline: none; box-sizing: border-box; line-height: 26px; color: #2c2f34; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Oxygen, Oxygen-Sans, Ubuntu, Cantarell, \'Helvetica Neue\', \'Open Sans\', Arial, sans-serif; font-size: 15px;\"><span style=\"padding: 0px; margin: 0px; list-style: none; border: 0px; outline: none; box-sizing: border-box; font-weight: 600;\">The Cons:</span></p>\r\n<ul style=\"padding: 0px 0px 0px 15px; margin: 0px 0px 20px 20px; list-style: none; border: 0px; outline: none; box-sizing: border-box; color: #2c2f34; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Oxygen, Oxygen-Sans, Ubuntu, Cantarell, \'Helvetica Neue\', \'Open Sans\', Arial, sans-serif; font-size: 15px;\">\r\n<li style=\"padding: 0px; margin: 0px 0px 5px; list-style: none disc; border: 0px; outline: none; box-sizing: border-box;\">Unable to get rid of heavy contaminants</li>\r\n<li style=\"padding: 0px; margin: 0px 0px 5px; list-style: none disc; border: 0px; outline: none; box-sizing: border-box;\">Higher odds of scratching</li>\r\n</ul>', 'services\\June2021\\n4nSZipIh2wiM8i6eeVz.png', 1, '2021-03-16 01:11:19', '2021-06-13 04:46:58'),
(4, 1, 1, 'Rinseless Washing', 'rinseless-washing', '1200 - 2000', '<p style=\"padding: 0px; margin: 0px 0px 25px; list-style: none; border: 0px; outline: none; box-sizing: border-box; line-height: 26px; color: #2c2f34; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Oxygen, Oxygen-Sans, Ubuntu, Cantarell, \'Helvetica Neue\', \'Open Sans\', Arial, sans-serif; font-size: 15px;\">Don&rsquo;t confuse rinseless washing with waterless washing. There are similarities to a degree, but this is more of a mix of both waterless washing and handwashing. In this case, you mix a small bit of rinseless wash product into a bucket with water. You don&rsquo;t get any suds in doing this, but that&rsquo;s also why you won&rsquo;t have to rinse. All that you have to do is once you wash any area, wipe it&nbsp;<a style=\"padding: 0px; margin: 0px; list-style: none; border: 0px; outline: none; box-sizing: border-box; background-color: transparent; color: #e00000; text-decoration-line: none; transition: all 0.15s ease 0s;\" href=\"https://flakesfusion.com/best-microfiber-car-drying-towel/\" target=\"_self\" rel=\"follow noopener noreferrer\" data-wpel-link=\"exclude\">dry with either microfiber towels</a>&nbsp;or wash mitts.</p>\r\n<p style=\"padding: 0px; margin: 0px 0px 25px; list-style: none; border: 0px; outline: none; box-sizing: border-box; line-height: 26px; color: #2c2f34; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Oxygen, Oxygen-Sans, Ubuntu, Cantarell, \'Helvetica Neue\', \'Open Sans\', Arial, sans-serif; font-size: 15px;\">Rinseless car washing is a favorite of anyone that doesn&rsquo;t have a lot of space or has to work within water restrictions. It might be a good choice for you if you are worried about scratching up your vehicle. This technique does carry a higher risk of scratching than handwashing does, but it&rsquo;s still safer than waterless washing.</p>\r\n<p style=\"padding: 0px; margin: 0px 0px 25px; list-style: none; border: 0px; outline: none; box-sizing: border-box; line-height: 26px; color: #2c2f34; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Oxygen, Oxygen-Sans, Ubuntu, Cantarell, \'Helvetica Neue\', \'Open Sans\', Arial, sans-serif; font-size: 15px;\"><span style=\"padding: 0px; margin: 0px; list-style: none; border: 0px; outline: none; box-sizing: border-box; font-weight: 600;\">The Pros:</span></p>\r\n<ul style=\"padding: 0px 0px 0px 15px; margin: 0px 0px 20px 20px; list-style: none; border: 0px; outline: none; box-sizing: border-box; color: #2c2f34; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Oxygen, Oxygen-Sans, Ubuntu, Cantarell, \'Helvetica Neue\', \'Open Sans\', Arial, sans-serif; font-size: 15px;\">\r\n<li style=\"padding: 0px; margin: 0px 0px 5px; list-style: none disc; border: 0px; outline: none; box-sizing: border-box;\">Takes less time than handwashing</li>\r\n<li style=\"padding: 0px; margin: 0px 0px 5px; list-style: none disc; border: 0px; outline: none; box-sizing: border-box;\">Lower chances of scratching as compared to waterless washing</li>\r\n<li style=\"padding: 0px; margin: 0px 0px 5px; list-style: none disc; border: 0px; outline: none; box-sizing: border-box;\">Less water necessary than handwashing</li>\r\n<li style=\"padding: 0px; margin: 0px 0px 5px; list-style: none disc; border: 0px; outline: none; box-sizing: border-box;\">Can be done using limited space</li>\r\n</ul>\r\n<p style=\"padding: 0px; margin: 0px 0px 25px; list-style: none; border: 0px; outline: none; box-sizing: border-box; line-height: 26px; color: #2c2f34; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Oxygen, Oxygen-Sans, Ubuntu, Cantarell, \'Helvetica Neue\', \'Open Sans\', Arial, sans-serif; font-size: 15px;\"><span style=\"padding: 0px; margin: 0px; list-style: none; border: 0px; outline: none; box-sizing: border-box; font-weight: 600;\">The Cons:</span></p>\r\n<ul style=\"padding: 0px 0px 0px 15px; margin: 0px 0px 20px 20px; list-style: none; border: 0px; outline: none; box-sizing: border-box; color: #2c2f34; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Oxygen, Oxygen-Sans, Ubuntu, Cantarell, \'Helvetica Neue\', \'Open Sans\', Arial, sans-serif; font-size: 15px;\">\r\n<li style=\"padding: 0px; margin: 0px 0px 5px; list-style: none disc; border: 0px; outline: none; box-sizing: border-box;\">Won&rsquo;t dissipate heavy contaminants</li>\r\n<li style=\"padding: 0px; margin: 0px 0px 5px; list-style: none disc; border: 0px; outline: none; box-sizing: border-box;\">Higher risk of scratching than handwashing</li>\r\n</ul>', 'services\\June2021\\xzrNjczArJtRGjU6PlDL.png', 1, '2021-03-16 01:12:14', '2021-06-13 04:46:03'),
(5, 1, 1, 'Automatic Washing', 'automatic-washing', '1800 - 2000', '<p style=\"padding: 0px; margin: 0px 0px 25px; list-style: none; border: 0px; outline: none; box-sizing: border-box; line-height: 26px; color: #2c2f34; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Oxygen, Oxygen-Sans, Ubuntu, Cantarell, \'Helvetica Neue\', \'Open Sans\', Arial, sans-serif; font-size: 15px;\">You might know automatic washing as &lsquo;tunnel&rsquo; washing. They are often found at some gas stations but there are also independent car washes. Your vehicle goes through a conveyor belt that takes the car through a sequence of both brushes and blowers. These brushes are rough, and they typically contain a certain level of contamination. Over time they pick up abrasive grime from the previous vehicles that can truly mess up your finish. Another thing they use is&nbsp;<a style=\"padding: 0px; margin: 0px; list-style: none; border: 0px; outline: none; box-sizing: border-box; background-color: transparent; color: #e00000; text-decoration-line: none; transition: all 0.15s ease 0s;\" href=\"https://www.cdc.gov/mmwr/preview/mmwrhtml/mm6432a4.htm?s_cid=mm6432a4_e\" target=\"_self\" rel=\"follow noopener noreferrer\" data-wpel-link=\"exclude\">harsh cleaning chemicals</a>&nbsp;which might dry your paint out or strip coatings and waxes. This can fade your color or lead to cracking.</p>\r\n<p style=\"padding: 0px; margin: 0px 0px 25px; list-style: none; border: 0px; outline: none; box-sizing: border-box; line-height: 26px; color: #2c2f34; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Oxygen, Oxygen-Sans, Ubuntu, Cantarell, \'Helvetica Neue\', \'Open Sans\', Arial, sans-serif; font-size: 15px;\">The big advantage to these is how cheap and convenient they are. That alone makes them the most common kind of car wash available.</p>\r\n<p style=\"padding: 0px; margin: 0px 0px 25px; list-style: none; border: 0px; outline: none; box-sizing: border-box; line-height: 26px; color: #2c2f34; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Oxygen, Oxygen-Sans, Ubuntu, Cantarell, \'Helvetica Neue\', \'Open Sans\', Arial, sans-serif; font-size: 15px;\"><span style=\"padding: 0px; margin: 0px; list-style: none; border: 0px; outline: none; box-sizing: border-box; font-weight: 600;\">The Pros:</span></p>\r\n<ul style=\"padding: 0px 0px 0px 15px; margin: 0px 0px 20px 20px; list-style: none; border: 0px; outline: none; box-sizing: border-box; color: #2c2f34; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Oxygen, Oxygen-Sans, Ubuntu, Cantarell, \'Helvetica Neue\', \'Open Sans\', Arial, sans-serif; font-size: 15px;\">\r\n<li style=\"padding: 0px; margin: 0px 0px 5px; list-style: none disc; border: 0px; outline: none; box-sizing: border-box;\">Fast</li>\r\n<li style=\"padding: 0px; margin: 0px 0px 5px; list-style: none disc; border: 0px; outline: none; box-sizing: border-box;\">Cheap</li>\r\n</ul>\r\n<p style=\"padding: 0px; margin: 0px 0px 25px; list-style: none; border: 0px; outline: none; box-sizing: border-box; line-height: 26px; color: #2c2f34; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Oxygen, Oxygen-Sans, Ubuntu, Cantarell, \'Helvetica Neue\', \'Open Sans\', Arial, sans-serif; font-size: 15px;\"><span style=\"padding: 0px; margin: 0px; list-style: none; border: 0px; outline: none; box-sizing: border-box; font-weight: 600;\">The Cons:</span></p>\r\n<ul style=\"padding: 0px 0px 0px 15px; margin: 0px 0px 20px 20px; list-style: none; border: 0px; outline: none; box-sizing: border-box; color: #2c2f34; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, Oxygen, Oxygen-Sans, Ubuntu, Cantarell, \'Helvetica Neue\', \'Open Sans\', Arial, sans-serif; font-size: 15px;\">\r\n<li style=\"padding: 0px; margin: 0px 0px 5px; list-style: none disc; border: 0px; outline: none; box-sizing: border-box;\">Might miss heavy contaminants</li>\r\n<li style=\"padding: 0px; margin: 0px 0px 5px; list-style: none disc; border: 0px; outline: none; box-sizing: border-box;\">Harmful chemicals can hurt your finish</li>\r\n<li style=\"padding: 0px; margin: 0px 0px 5px; list-style: none disc; border: 0px; outline: none; box-sizing: border-box;\">A direct source of heavy scratching</li>\r\n</ul>', 'services\\June2021\\x0KPEBuGiNOnW1pu1rT3.png', 1, '2021-03-16 01:13:01', '2021-06-13 04:45:17'),
(6, NULL, 1, 'Health Check', 'health-check', '1000 - 2000', '<p><span style=\"color: #000000; font-family: \'Open Sans\', Arial, sans-serif; text-align: justify;\">It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</span></p>', 'services\\June2021\\gnZJ1Sp4c9NOZzL0vgWi.png', 1, '2021-03-16 01:14:06', '2021-06-13 04:44:53'),
(7, NULL, 1, 'Repair', 'repair', NULL, '<p><span style=\"color: #000000; font-family: \'Open Sans\', Arial, sans-serif; text-align: justify;\">It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</span></p>', 'services\\June2021\\5e0aJCiZneu0D4ZLqdlG.png', 1, '2021-03-16 01:14:48', '2021-06-13 04:43:53'),
(8, 7, 1, 'Engine Repairing', 'engine-repairing', '5000 - 12000', '<p><span style=\"color: #000000; font-family: \'Open Sans\', Arial, sans-serif; text-align: justify;\">It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</span></p>', 'services\\June2021\\oEAA2x5YN2pcIwpEtiUU.png', 1, '2021-03-16 01:15:25', '2021-06-13 04:43:10'),
(9, NULL, 1, 'Paint and Denting', 'paint-and-denting', NULL, '<p><span style=\"color: #000000; font-family: \'Open Sans\', Arial, sans-serif; text-align: justify;\">It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</span></p>', 'services\\June2021\\cFdTHQJ0sAd3RVbpmyol.png', 1, '2021-03-16 01:16:37', '2021-06-13 04:42:40'),
(10, 9, 1, 'Solid paint', 'solid-paint', '5000 - 15000', '<p style=\"box-sizing: inherit; margin: 16px 0px; order: 3; width: 740px; color: rgba(0, 0, 0, 0.87); font-family: proxima-nova-1, proxima-nova-2, proxima-nova, \'Segoe UI\', Roboto, \'Droid Sans\', \'Helvetica Neue\', Arial, sans-serif; font-size: 18px;\">The vast majority of cars come with a &lsquo;solid&rsquo; paint finish as standard. Most manufacturers offer only a limited selection of solid hues &ndash; typically white, red, blue and black. But even in that range, there&rsquo;s usually a wide variety of shades to choose from. So, whether you want your car to disappear into the background or stand out from the crowd, you should be able to find an appropriate colour without shelling out extra money.</p>\r\n<p style=\"box-sizing: inherit; margin: 16px 0px; order: 3; width: 740px; color: rgba(0, 0, 0, 0.87); font-family: proxima-nova-1, proxima-nova-2, proxima-nova, \'Segoe UI\', Roboto, \'Droid Sans\', \'Helvetica Neue\', Arial, sans-serif; font-size: 18px;\">Solid finishes are free because they&rsquo;re simple to produce. There are usually only three layers: primer, paint and lacquer. Many manufacturers now use a paint known as &lsquo;two-pack&rsquo;, which is simply the paint and lacquer mixed together.</p>\r\n<p style=\"box-sizing: inherit; margin: 16px 0px; order: 3; width: 740px; color: rgba(0, 0, 0, 0.87); font-family: proxima-nova-1, proxima-nova-2, proxima-nova, \'Segoe UI\', Roboto, \'Droid Sans\', \'Helvetica Neue\', Arial, sans-serif; font-size: 18px;\">Repairing solid paint is easy: small stone chips can simply be filled in with a touch-up pen in the appropriate shade. Any car spares shop (Halfords, etc) can supply the right pen for not much money. More significant repairs are comparatively easy, too, as the paint dries out quickly with the aid of a simple heat lamp. You could even do it at home, as the necessary equipment is inexpensive and an even finish is easy to achieve.</p>\r\n<p style=\"box-sizing: inherit; margin: 16px 0px; order: 3; width: 740px; color: rgba(0, 0, 0, 0.87); font-family: proxima-nova-1, proxima-nova-2, proxima-nova, \'Segoe UI\', Roboto, \'Droid Sans\', \'Helvetica Neue\', Arial, sans-serif; font-size: 18px;\">You still need to be careful, though, to avoid the dreaded &lsquo;orange peel&rsquo;. This occurs when the layers separate, usually because moisture got in while they were being applied.</p>\r\n<p style=\"box-sizing: inherit; margin: 16px 0px; order: 3; width: 740px; color: rgba(0, 0, 0, 0.87); font-family: proxima-nova-1, proxima-nova-2, proxima-nova, \'Segoe UI\', Roboto, \'Droid Sans\', \'Helvetica Neue\', Arial, sans-serif; font-size: 18px;\">They may not be the most interesting, but solid paint finishes are certainly the cheapest and easiest to look after.</p>', 'services\\June2021\\Jrfn1nErxRQd42UigXJ6.png', 0, '2021-03-16 01:18:01', '2021-06-13 04:42:12'),
(11, 9, 1, 'Metallic finishes', 'metallic-finishes', '12000 - 25000', '<p style=\"box-sizing: inherit; margin: 16px 0px; order: 3; width: 740px; color: rgba(0, 0, 0, 0.87); font-family: proxima-nova-1, proxima-nova-2, proxima-nova, \'Segoe UI\', Roboto, \'Droid Sans\', \'Helvetica Neue\', Arial, sans-serif; font-size: 18px;\">Metallic paints reflect light for a much brighter shine than solids. They come in a wider variety of colours and add relatively little to the cost of the car &ndash; from around &pound;500 on&nbsp;<a style=\"box-sizing: inherit; background-color: transparent; color: #00a4ff;\" href=\"https://www.carwow.co.uk/small-cars\">small cars</a>.</p>\r\n<p style=\"box-sizing: inherit; margin: 16px 0px; order: 3; width: 740px; color: rgba(0, 0, 0, 0.87); font-family: proxima-nova-1, proxima-nova-2, proxima-nova, \'Segoe UI\', Roboto, \'Droid Sans\', \'Helvetica Neue\', Arial, sans-serif; font-size: 18px;\">The shine comes from a small amount of aluminium powder mixed into the paint. The metal particles pick up and reflect light, hence the shine. Multiple layers of paint and lacquer &ndash; which largely account for the extra cost &ndash; add to the effect.</p>\r\n<p style=\"box-sizing: inherit; margin: 16px 0px; order: 3; width: 740px; color: rgba(0, 0, 0, 0.87); font-family: proxima-nova-1, proxima-nova-2, proxima-nova, \'Segoe UI\', Roboto, \'Droid Sans\', \'Helvetica Neue\', Arial, sans-serif; font-size: 18px;\">Metallics look their best under direct, natural light, but even on a dull day they still shine.</p>\r\n<p style=\"box-sizing: inherit; margin: 16px 0px; order: 3; width: 740px; color: rgba(0, 0, 0, 0.87); font-family: proxima-nova-1, proxima-nova-2, proxima-nova, \'Segoe UI\', Roboto, \'Droid Sans\', \'Helvetica Neue\', Arial, sans-serif; font-size: 18px;\">Dirt shows more obviously on metallic finishes than solids, so you may end up cleaning your car more often. Be careful, though, as the paint marks more easily. Use a proper car shampoo &ndash; washing up liquid contains abrasive salts &ndash; and make sure there&rsquo;s no grit on the sponge. Over-zealous polishing causes swirl marks and car wash brushes can leave marks, too. But any marks can usually be carefully buffed out.</p>\r\n<p style=\"box-sizing: inherit; margin: 16px 0px; order: 3; width: 740px; color: rgba(0, 0, 0, 0.87); font-family: proxima-nova-1, proxima-nova-2, proxima-nova, \'Segoe UI\', Roboto, \'Droid Sans\', \'Helvetica Neue\', Arial, sans-serif; font-size: 18px;\">Metallic paint is more difficult to repair, as achieving an exact match is tricky. Even manufacturer-approved body shops don&rsquo;t make any guarantees.</p>\r\n<p style=\"box-sizing: inherit; margin: 16px 0px; order: 3; width: 740px; color: rgba(0, 0, 0, 0.87); font-family: proxima-nova-1, proxima-nova-2, proxima-nova, \'Segoe UI\', Roboto, \'Droid Sans\', \'Helvetica Neue\', Arial, sans-serif; font-size: 18px;\">They add cost and need more care, but metallic finishes add significantly to the visual appeal of a car and often boost its used value.</p>', 'services\\June2021\\5D91OOqBfwicItN6xTGG.png', 0, '2021-03-16 01:19:08', '2021-06-13 04:41:39'),
(12, 9, 1, 'Pearlescent finishes', 'pearlescent-finishes', '15000 - 18000', '<p style=\"box-sizing: inherit; margin: 16px 0px; order: 3; width: 740px; color: rgba(0, 0, 0, 0.87); font-family: proxima-nova-1, proxima-nova-2, proxima-nova, \'Segoe UI\', Roboto, \'Droid Sans\', \'Helvetica Neue\', Arial, sans-serif; font-size: 18px;\">Pearlescent paints shine even more brightly and deeply than metallics. And cost upwards of &pound;500 too.</p>\r\n<p style=\"box-sizing: inherit; margin: 16px 0px; order: 3; width: 740px; color: rgba(0, 0, 0, 0.87); font-family: proxima-nova-1, proxima-nova-2, proxima-nova, \'Segoe UI\', Roboto, \'Droid Sans\', \'Helvetica Neue\', Arial, sans-serif; font-size: 18px;\">Mainstream manufacturers tend to offer a limited range of pearlescent colours, but high-end brands seem to offer dozens.</p>\r\n<p style=\"box-sizing: inherit; margin: 16px 0px; order: 3; width: 740px; color: rgba(0, 0, 0, 0.87); font-family: proxima-nova-1, proxima-nova-2, proxima-nova, \'Segoe UI\', Roboto, \'Droid Sans\', \'Helvetica Neue\', Arial, sans-serif; font-size: 18px;\">The pearlescent lustre is created by ceramic crystals in the paint that both reflect and refract light. That gives the colour a depth that even metallics simply can&rsquo;t match. And under bright light, lighter shades become iridescent, appearing to be different colours from different angles, sometimes to spectacular effect.</p>\r\n<p style=\"box-sizing: inherit; margin: 16px 0px; order: 3; width: 740px; color: rgba(0, 0, 0, 0.87); font-family: proxima-nova-1, proxima-nova-2, proxima-nova, \'Segoe UI\', Roboto, \'Droid Sans\', \'Helvetica Neue\', Arial, sans-serif; font-size: 18px;\">On the flip side, pearlescent paints are even more susceptible to marks and even more difficult to repair than metallics.</p>\r\n<p style=\"box-sizing: inherit; margin: 16px 0px; order: 3; width: 740px; color: rgba(0, 0, 0, 0.87); font-family: proxima-nova-1, proxima-nova-2, proxima-nova, \'Segoe UI\', Roboto, \'Droid Sans\', \'Helvetica Neue\', Arial, sans-serif; font-size: 18px;\">Keep it mark-free and pearlescent looks absolutely fantastic. Which helps used values.</p>', 'services\\June2021\\tIAVsywBhqBhIYQsOqKZ.png', 0, '2021-03-16 01:21:07', '2021-06-13 04:41:54'),
(13, 9, 1, 'Matte finishes', 'matte-finishes', '4500 - 15000', '<p style=\"box-sizing: inherit; margin: 16px 0px; order: 3; width: 740px; color: rgba(0, 0, 0, 0.87); font-family: proxima-nova-1, proxima-nova-2, proxima-nova, \'Segoe UI\', Roboto, \'Droid Sans\', \'Helvetica Neue\', Arial, sans-serif; font-size: 18px;\">Non-shiny matte finishes aren&rsquo;t a common choice because they tend to only come in shades of silver, grey or black. And because they cost thousands.</p>\r\n<p style=\"box-sizing: inherit; margin: 16px 0px; order: 3; width: 740px; color: rgba(0, 0, 0, 0.87); font-family: proxima-nova-1, proxima-nova-2, proxima-nova, \'Segoe UI\', Roboto, \'Droid Sans\', \'Helvetica Neue\', Arial, sans-serif; font-size: 18px;\">There are various methods for achieving a matte finish: using a primer with a high epoxy content, a high PVC content in the paint itself, or a flattening agent in the lacquer. Whichever method is used, the paint absorbs more light than it reflects, producing a dull sheen with a certain texture to the colour that has an appeal.</p>\r\n<p style=\"box-sizing: inherit; margin: 16px 0px; order: 3; width: 740px; color: rgba(0, 0, 0, 0.87); font-family: proxima-nova-1, proxima-nova-2, proxima-nova, \'Segoe UI\', Roboto, \'Droid Sans\', \'Helvetica Neue\', Arial, sans-serif; font-size: 18px;\">Matte finishes are very high maintenance: they need to be cleaned regularly with specialised shampoos and polishes. Bird droppings need to be cleaned off as soon as possible, as they contain acids that eat through the finish quite quickly. When BMW sold a special edition M3 with matte paint a few years ago, there was a warranty waiver that required the owner to take scrupulous care of it.</p>\r\n<p style=\"box-sizing: inherit; margin: 16px 0px; order: 3; width: 740px; color: rgba(0, 0, 0, 0.87); font-family: proxima-nova-1, proxima-nova-2, proxima-nova, \'Segoe UI\', Roboto, \'Droid Sans\', \'Helvetica Neue\', Arial, sans-serif; font-size: 18px;\">Predictably, matte finishes are very difficult and expensive to repair properly.</p>\r\n<p style=\"box-sizing: inherit; margin: 16px 0px; order: 3; width: 740px; color: rgba(0, 0, 0, 0.87); font-family: proxima-nova-1, proxima-nova-2, proxima-nova, \'Segoe UI\', Roboto, \'Droid Sans\', \'Helvetica Neue\', Arial, sans-serif; font-size: 18px;\">You either love matte finishes or you don&rsquo;t. If you do, you may well feel the extra expense and hassle is worth it. But don&rsquo;t be surprised if your car turns out to be difficult to sell on.</p>', 'services\\June2021\\fo555ziBkfRfV87836TD.png', 0, '2021-03-16 01:21:56', '2021-06-13 04:59:47');

-- --------------------------------------------------------

--
-- Table structure for table `service_bookings`
--

CREATE TABLE `service_bookings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_number` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('pending','processing','completed','decline') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `service_id` int(10) UNSIGNED NOT NULL,
  `customer_fullname` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `vahicle_details` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_division` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_city` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_zipcode` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `service_bookings`
--

INSERT INTO `service_bookings` (`id`, `order_number`, `status`, `service_id`, `customer_fullname`, `customer_phone`, `vahicle_details`, `customer_division`, `customer_city`, `customer_zipcode`, `customer_address`, `created_at`, `updated_at`) VALUES
(1, 'MTSB_SRVC-605304b46165d', 'pending', 10, 'Ashaduzzaman Ovi', '01988550920', 'toyota axio g 2017', 'dhaka', 'dhaka', '1607', 'Lalmatia, Dhaka', '2021-03-18 01:43:48', '2021-03-18 01:43:48'),
(2, 'MTSB_SRVC-60532734f2b0e', 'pending', 6, 'Salam Ahmed', '01988550920', 'toyota corolla x 2003', 'dhaka', 'dhaka', '1607', 'Lalmatia, Dhaka', '2021-03-18 04:11:00', '2021-03-18 04:11:00');

-- --------------------------------------------------------

--
-- Table structure for table `service_reviews`
--

CREATE TABLE `service_reviews` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `service_id` int(10) UNSIGNED NOT NULL,
  `rating` enum('1','2','3','4','5') COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `service_reviews`
--

INSERT INTO `service_reviews` (`id`, `user_id`, `service_id`, `rating`, `message`, `created_at`, `updated_at`) VALUES
(1, 3, 2, '5', 'test', '2021-03-25 01:33:35', '2021-03-25 01:33:35'),
(2, 3, 5, '2', 'Test review for automatic car wash', '2021-03-25 01:41:06', '2021-03-25 01:41:06');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int(11) NOT NULL DEFAULT 1,
  `group` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `key`, `display_name`, `value`, `details`, `type`, `order`, `group`) VALUES
(1, 'site.title', 'Site Title', NULL, '', 'text', 1, 'Site'),
(2, 'site.description', 'Site Description', 'Site Description', '', 'text', 2, 'Site'),
(3, 'site.logo', 'Site Logo', '', '', 'image', 3, 'Site'),
(4, 'site.google_analytics_tracking_id', 'Google Analytics Tracking ID', NULL, '', 'text', 4, 'Site'),
(5, 'admin.bg_image', 'Admin Background Image', 'settings/May2021/xIWkK7rcCq0qfwP4BnDU.jpg', '', 'image', 5, 'Admin'),
(6, 'admin.title', 'Admin Title', 'Motor Sheba', '', 'text', 1, 'Admin'),
(7, 'admin.description', 'Admin Description', 'Welcome to Motor Sheba', '', 'text', 2, 'Admin'),
(8, 'admin.loader', 'Admin Loader', 'settings/September2021/pXPqf5BM6WmchlMdjxjd.png', '', 'image', 3, 'Admin'),
(9, 'admin.icon_image', 'Admin Icon Image', 'settings/May2021/KRWyU5eIAVxWZ4nWnfGx.png', '', 'image', 4, 'Admin'),
(10, 'admin.google_analytics_client_id', 'Google Analytics Client ID (used for admin dashboard)', NULL, '', 'text', 1, 'Admin');

-- --------------------------------------------------------

--
-- Table structure for table `shops`
--

CREATE TABLE `shops` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 0,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rating` double(8,2) DEFAULT NULL,
  `shop_banner_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shop_logo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `shops`
--

INSERT INTO `shops` (`id`, `name`, `user_id`, `is_active`, `description`, `rating`, `shop_banner_image`, `shop_logo`, `created_at`, `updated_at`) VALUES
(2, 'Zihad Shop', 2, 0, 'zihad shop', NULL, NULL, NULL, '2020-11-23 04:36:00', '2021-02-22 03:55:50'),
(3, 'Sumash Tech', 3, 0, 'Sumash tech is an online gadget shop', NULL, NULL, NULL, '2020-11-23 04:39:00', '2021-02-22 03:55:44'),
(4, 'rt fronuse', 1, 1, 'rt fronuse', NULL, NULL, 'shops\\August2021\\gX2tpWQclSI76ONPQwVC.png', '2021-08-16 23:44:00', '2021-08-18 03:19:13');

-- --------------------------------------------------------

--
-- Table structure for table `stock_in_products`
--

CREATE TABLE `stock_in_products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `quantity` int(10) UNSIGNED NOT NULL,
  `remarks` varchar(255) DEFAULT NULL,
  `status` enum('Active','Inactive') NOT NULL DEFAULT 'Active',
  `created_by` int(10) UNSIGNED DEFAULT NULL,
  `updated_by` int(10) UNSIGNED DEFAULT NULL,
  `deleted_by` int(10) UNSIGNED DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `stock_in_products`
--

INSERT INTO `stock_in_products` (`id`, `product_id`, `quantity`, `remarks`, `status`, `created_by`, `updated_by`, `deleted_by`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 1, 10, 'test', 'Active', 1, NULL, NULL, NULL, '2021-09-25 06:20:27', '2021-09-23 06:20:27'),
(2, 2, 5, 'something', 'Active', 2, NULL, NULL, NULL, '2021-09-26 03:27:28', '2021-09-26 03:27:28'),
(3, 1, 3, 'test3', 'Active', 2, NULL, NULL, NULL, '2021-09-26 03:32:14', '2021-09-26 03:32:14'),
(4, 1, 5, 'ttttt', 'Active', 5, NULL, NULL, NULL, '2021-09-28 10:27:35', '2021-09-28 10:27:35'),
(5, 3, 5, '5', 'Active', 4, NULL, NULL, NULL, '2021-09-30 10:39:32', '2021-09-30 10:39:32');

-- --------------------------------------------------------

--
-- Table structure for table `stock_out_products`
--

CREATE TABLE `stock_out_products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `quantity` int(10) UNSIGNED NOT NULL,
  `remarks` varchar(255) DEFAULT NULL,
  `status` enum('Active','Inactive') NOT NULL DEFAULT 'Active',
  `created_by` int(10) UNSIGNED DEFAULT NULL,
  `updated_by` int(10) UNSIGNED DEFAULT NULL,
  `deleted_by` int(10) UNSIGNED DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `stock_out_products`
--

INSERT INTO `stock_out_products` (`id`, `product_id`, `quantity`, `remarks`, `status`, `created_by`, `updated_by`, `deleted_by`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 1, 4, 'test4', 'Active', 1, NULL, NULL, NULL, '2021-09-30 06:42:59', '2021-09-30 06:42:59');

-- --------------------------------------------------------

--
-- Table structure for table `sub_categories`
--

CREATE TABLE `sub_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) DEFAULT NULL,
  `category_id` int(10) UNSIGNED NOT NULL,
  `status` enum('Active','Inactive') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Active',
  `created_by` int(10) UNSIGNED DEFAULT NULL,
  `updated_by` int(10) UNSIGNED DEFAULT NULL,
  `deleted_by` int(10) UNSIGNED DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sub_categories`
--

INSERT INTO `sub_categories` (`id`, `name`, `image`, `category_id`, `status`, `created_by`, `updated_by`, `deleted_by`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Vehicle Cover', NULL, 1, 'Active', 1, 1, NULL, NULL, '2021-08-15 23:08:33', '2021-08-18 06:38:33'),
(2, 'Aero Parts', NULL, 1, 'Active', 1, 1, NULL, NULL, '2021-08-19 10:42:12', '2021-08-22 04:54:14'),
(3, 'Alloy Rim', NULL, 1, 'Active', 1, 1, NULL, NULL, '2021-08-19 10:54:17', '2021-08-22 04:55:15'),
(4, 'Tyre', NULL, 1, 'Active', 1, NULL, NULL, NULL, '2021-08-22 04:56:27', '2021-08-22 04:56:27'),
(5, 'Lightings', NULL, 1, 'Active', 1, 1, NULL, NULL, '2021-08-22 04:57:00', '2021-08-22 04:57:15'),
(6, 'AC/Cabin Filter', NULL, 1, 'Active', 1, 1, NULL, NULL, '2021-08-22 04:58:38', '2021-09-20 10:31:11'),
(7, 'Air Freshener', NULL, 2, 'Active', 1, NULL, NULL, NULL, '2021-08-22 05:00:38', '2021-08-22 05:00:38'),
(8, 'Electrical Decoration', NULL, 2, 'Active', 1, 1, NULL, NULL, '2021-08-22 05:02:04', '2021-09-20 10:34:01'),
(9, 'Floor Mat', NULL, 2, 'Active', 1, 1, NULL, NULL, '2021-08-22 05:02:17', '2021-09-20 10:34:30'),
(10, 'Engine Oil', NULL, 3, 'Active', 1, 1, NULL, NULL, '2021-08-22 09:47:31', '2021-08-26 06:41:59'),
(11, 'Gear Oil', NULL, 3, 'Active', 1, 1, NULL, NULL, '2021-08-26 06:47:31', '2021-09-20 10:36:17'),
(12, 'Brake Fluid', NULL, 3, 'Active', 1, NULL, NULL, NULL, '2021-08-26 06:48:09', '2021-08-26 06:48:09'),
(13, 'Others', NULL, 3, 'Active', 1, NULL, NULL, NULL, '2021-08-26 06:49:04', '2021-08-26 06:49:04'),
(14, 'Toyota', NULL, 4, 'Active', 1, NULL, NULL, NULL, '2021-08-26 06:49:58', '2021-08-26 06:49:58'),
(15, 'Honda', NULL, 4, 'Active', 1, NULL, NULL, NULL, '2021-08-26 06:50:10', '2021-08-26 06:50:10'),
(16, 'Nissan', NULL, 4, 'Active', 1, NULL, NULL, NULL, '2021-08-26 06:50:23', '2021-08-26 06:50:23'),
(17, 'Mutsubishi', NULL, 4, 'Active', 1, NULL, NULL, NULL, '2021-08-26 06:50:46', '2021-08-26 06:50:46'),
(18, 'Mazda', NULL, 4, 'Active', 1, NULL, NULL, NULL, '2021-08-26 06:51:09', '2021-08-26 06:51:09'),
(19, 'Subaru', NULL, 4, 'Active', 1, NULL, NULL, NULL, '2021-08-26 06:51:24', '2021-08-26 06:51:24'),
(20, 'Others', NULL, 4, 'Active', 1, NULL, NULL, NULL, '2021-08-26 06:51:45', '2021-08-26 06:51:45'),
(21, 'Toyota', NULL, 5, 'Active', 1, NULL, NULL, NULL, '2021-08-26 06:52:30', '2021-08-26 06:52:30'),
(22, 'Honda', NULL, 5, 'Active', 1, NULL, NULL, NULL, '2021-08-26 06:52:41', '2021-08-26 06:52:41'),
(23, 'Nissan', NULL, 5, 'Active', 1, NULL, NULL, NULL, '2021-08-26 06:52:57', '2021-08-26 06:52:57'),
(24, 'Mitsubishi', NULL, 5, 'Active', 1, NULL, NULL, NULL, '2021-08-26 06:53:18', '2021-08-26 06:53:18'),
(25, 'Mazda', NULL, 5, 'Active', 1, NULL, NULL, NULL, '2021-08-26 06:53:35', '2021-08-26 06:53:35'),
(26, 'Subaru', NULL, 5, 'Active', 1, NULL, NULL, NULL, '2021-08-26 06:53:48', '2021-08-26 06:53:48'),
(27, 'Others', NULL, 5, 'Active', 1, NULL, NULL, NULL, '2021-08-26 06:53:59', '2021-08-26 06:53:59'),
(28, 'Toyota - Standard', NULL, 6, 'Active', 1, NULL, NULL, NULL, '2021-08-26 08:31:15', '2021-08-26 08:31:15'),
(29, 'Honda - Standard', NULL, 6, 'Active', 1, NULL, NULL, NULL, '2021-08-26 08:31:45', '2021-08-26 08:31:45'),
(30, 'Nissan - Standard', NULL, 6, 'Active', 1, NULL, NULL, NULL, '2021-08-26 08:32:09', '2021-08-26 08:32:09'),
(31, 'Mitsubichi - Standard', NULL, 6, 'Active', 1, NULL, NULL, NULL, '2021-08-26 08:32:46', '2021-08-26 08:32:46'),
(32, 'Mazda - Standard', NULL, 6, 'Active', 1, NULL, NULL, NULL, '2021-08-26 08:33:19', '2021-08-26 08:33:19'),
(33, 'Subaru - Standard', NULL, 6, 'Active', 1, NULL, NULL, NULL, '2021-08-26 08:34:08', '2021-08-26 08:34:08'),
(34, 'Others - Standard', NULL, 6, 'Active', 1, NULL, NULL, NULL, '2021-08-26 08:34:32', '2021-08-26 08:34:32'),
(35, 'Toyota - Charcoal', NULL, 6, 'Active', 1, NULL, NULL, NULL, '2021-08-26 08:35:55', '2021-08-26 08:35:55'),
(36, 'Honda - Charcoal', NULL, 6, 'Active', 1, NULL, NULL, NULL, '2021-08-26 08:36:20', '2021-08-26 08:36:20'),
(37, 'Nissan - Charcoal', NULL, 6, 'Active', 1, NULL, NULL, NULL, '2021-08-26 08:36:41', '2021-08-26 08:36:41'),
(38, 'Mitsubichi - Charcoal', NULL, 6, 'Active', 1, NULL, NULL, NULL, '2021-08-26 08:37:29', '2021-08-26 08:37:29'),
(39, 'Mazda - Charcoal', NULL, 6, 'Active', 1, NULL, NULL, NULL, '2021-08-26 08:38:17', '2021-08-26 08:38:17'),
(40, 'Subaru - Charcoal', NULL, 6, 'Active', 1, NULL, NULL, NULL, '2021-08-26 08:38:47', '2021-08-26 08:38:47'),
(41, 'Others - Charcoal', NULL, 6, 'Active', 1, NULL, NULL, NULL, '2021-08-26 08:39:24', '2021-08-26 08:39:24'),
(42, 'Cleaning', NULL, 7, 'Active', 1, 4, NULL, NULL, '2021-08-26 09:11:28', '2021-09-23 07:42:29'),
(43, 'Coating', NULL, 7, 'Active', 1, 4, NULL, NULL, '2021-08-26 09:12:07', '2021-09-23 07:43:01'),
(44, 'Polish', NULL, 7, 'Inactive', 1, 4, NULL, NULL, '2021-08-26 09:13:15', '2021-09-23 07:46:35'),
(45, 'Water Repellent', NULL, 7, 'Active', 1, NULL, NULL, NULL, '2021-08-26 09:15:04', '2021-08-26 09:15:04'),
(46, 'Others', NULL, 7, 'Active', 1, NULL, NULL, NULL, '2021-08-26 09:15:26', '2021-08-26 09:15:26'),
(47, 'Tool/Engine/Fuel', NULL, 8, 'Active', 1, 1, NULL, NULL, '2021-08-26 09:17:18', '2021-09-20 10:59:31'),
(48, 'Power Train / Chassis', NULL, 8, 'Active', 1, 1, NULL, NULL, '2021-08-26 09:18:34', '2021-09-20 10:59:41'),
(49, 'Body Group', NULL, 8, 'Active', 1, NULL, NULL, NULL, '2021-08-26 09:22:30', '2021-08-26 09:22:30'),
(50, 'Electrical Group', NULL, 8, 'Active', 1, NULL, NULL, NULL, '2021-08-26 09:22:52', '2021-08-26 09:22:52'),
(51, 'Toyota - Hybrid', NULL, 9, 'Active', 1, NULL, NULL, NULL, '2021-08-26 09:24:17', '2021-08-26 09:24:17'),
(52, 'Honda - Hybrid', NULL, 9, 'Active', 1, NULL, NULL, NULL, '2021-08-26 09:24:44', '2021-08-26 09:24:44'),
(53, 'Nissan - Hybrid', NULL, 9, 'Active', 1, NULL, NULL, NULL, '2021-08-26 09:25:38', '2021-08-26 09:25:38'),
(54, 'Mitsubichi - Hybrid', NULL, 9, 'Active', 1, NULL, NULL, NULL, '2021-08-26 09:26:50', '2021-08-26 09:26:50'),
(55, 'Mazda - Hybrid', NULL, 9, 'Active', 1, NULL, NULL, NULL, '2021-08-26 09:27:38', '2021-08-26 09:27:38'),
(56, 'Subaru - Hybrid', NULL, 9, 'Active', 1, NULL, NULL, NULL, '2021-08-26 09:27:57', '2021-08-26 09:27:57'),
(57, 'Others - Hybrid', NULL, 9, 'Active', 1, NULL, NULL, NULL, '2021-08-26 09:28:18', '2021-08-26 09:28:18'),
(58, 'Toyota - Non-Hybrid', NULL, 9, 'Active', 1, NULL, NULL, NULL, '2021-08-26 09:29:09', '2021-08-26 09:29:09'),
(59, 'Honda - Non-Hybrid', NULL, 9, 'Active', 1, NULL, NULL, NULL, '2021-08-26 09:29:29', '2021-08-26 09:29:29'),
(60, 'Nissan - Non-Hybrid', NULL, 9, 'Active', 1, NULL, NULL, NULL, '2021-08-26 09:30:07', '2021-08-26 09:30:07'),
(61, 'Mitsubichi - Non-Hybrid', NULL, 9, 'Active', 1, NULL, NULL, NULL, '2021-08-26 09:30:31', '2021-08-26 09:30:31'),
(62, 'Mazda - Non-Hybrid', NULL, 9, 'Active', 1, NULL, NULL, NULL, '2021-08-26 09:30:59', '2021-08-26 09:30:59'),
(63, 'Subaru - Non-Hybrid', NULL, 9, 'Active', 1, NULL, NULL, NULL, '2021-08-26 09:31:21', '2021-08-26 09:31:21'),
(64, 'Others - Non-Hybrid', NULL, 9, 'Active', 1, NULL, NULL, NULL, '2021-08-26 09:31:38', '2021-08-26 09:31:38'),
(65, 'Toyota', NULL, 10, 'Active', 1, NULL, NULL, NULL, '2021-08-26 09:32:18', '2021-08-26 09:32:18'),
(66, 'Honda', NULL, 10, 'Active', 1, NULL, NULL, NULL, '2021-08-26 09:32:31', '2021-08-26 09:32:31'),
(67, 'Nissan', NULL, 10, 'Active', 1, NULL, NULL, NULL, '2021-08-26 09:32:43', '2021-08-26 09:32:43'),
(68, 'Mitsubishi', NULL, 10, 'Active', 1, NULL, NULL, NULL, '2021-08-26 09:33:29', '2021-08-26 09:33:29'),
(69, 'Mazda', NULL, 10, 'Active', 1, NULL, NULL, NULL, '2021-08-26 09:33:56', '2021-08-26 09:33:56'),
(70, 'Subaru', NULL, 10, 'Active', 1, NULL, NULL, NULL, '2021-08-26 09:34:22', '2021-08-26 09:34:22'),
(71, 'Others', NULL, 10, 'Active', 1, NULL, NULL, NULL, '2021-08-26 09:34:54', '2021-08-26 09:34:54'),
(72, 'Others', NULL, 1, 'Active', 1, NULL, NULL, NULL, '2021-09-20 10:31:28', '2021-09-20 10:31:28'),
(73, 'Cup Holders', NULL, 2, 'Active', 1, NULL, NULL, NULL, '2021-09-20 10:35:02', '2021-09-20 10:35:02'),
(74, 'Others', NULL, 2, 'Active', 1, NULL, NULL, NULL, '2021-09-20 10:35:12', '2021-09-20 10:35:12');

-- --------------------------------------------------------

--
-- Table structure for table `top_viewed_products`
--

CREATE TABLE `top_viewed_products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `top_viewed_products`
--

INSERT INTO `top_viewed_products` (`id`, `user_id`, `product_id`, `created_at`, `updated_at`) VALUES
(3466, NULL, 2, '2021-09-27 01:45:25', '2021-09-27 01:45:25'),
(3467, NULL, 2, '2021-09-27 01:49:07', '2021-09-27 01:49:07'),
(3468, NULL, 1, '2021-09-27 09:12:02', '2021-09-27 09:12:02'),
(3469, NULL, 2, '2021-09-27 09:12:04', '2021-09-27 09:12:04'),
(3470, NULL, 1, '2021-09-27 15:55:58', '2021-09-27 15:55:58'),
(3471, NULL, 2, '2021-09-27 15:56:02', '2021-09-27 15:56:02'),
(3472, NULL, 1, '2021-09-27 21:07:05', '2021-09-27 21:07:05'),
(3473, 3, 1, '2021-09-28 03:08:25', '2021-09-28 03:08:25'),
(3474, 3, 1, '2021-09-28 03:09:45', '2021-09-28 03:09:45'),
(3475, 3, 1, '2021-09-28 03:15:07', '2021-09-28 03:15:07'),
(3476, 3, 1, '2021-09-28 03:16:21', '2021-09-28 03:16:21'),
(3477, 3, 1, '2021-09-28 03:18:36', '2021-09-28 03:18:36'),
(3478, 3, 1, '2021-09-28 03:19:57', '2021-09-28 03:19:57'),
(3479, 51, 1, '2021-09-28 03:45:13', '2021-09-28 03:45:13'),
(3480, 51, 1, '2021-09-28 03:45:16', '2021-09-28 03:45:16'),
(3481, 51, 1, '2021-09-28 03:45:26', '2021-09-28 03:45:26'),
(3482, 51, 1, '2021-09-28 03:45:29', '2021-09-28 03:45:29'),
(3483, NULL, 2, '2021-09-28 03:49:50', '2021-09-28 03:49:50'),
(3484, NULL, 1, '2021-09-28 03:50:52', '2021-09-28 03:50:52'),
(3485, 51, 1, '2021-09-28 04:01:06', '2021-09-28 04:01:06'),
(3486, 51, 1, '2021-09-28 04:01:10', '2021-09-28 04:01:10'),
(3487, 51, 1, '2021-09-28 04:01:15', '2021-09-28 04:01:15'),
(3488, 51, 1, '2021-09-28 04:01:18', '2021-09-28 04:01:18'),
(3489, NULL, 1, '2021-09-28 06:58:14', '2021-09-28 06:58:14'),
(3490, NULL, 2, '2021-09-28 22:02:09', '2021-09-28 22:02:09'),
(3491, NULL, 2, '2021-09-28 22:02:13', '2021-09-28 22:02:13'),
(3492, NULL, 2, '2021-09-28 23:54:20', '2021-09-28 23:54:20'),
(3493, 51, 2, '2021-09-29 00:25:38', '2021-09-29 00:25:38'),
(3494, 51, 2, '2021-09-29 00:25:42', '2021-09-29 00:25:42'),
(3495, 51, 2, '2021-09-29 02:38:22', '2021-09-29 02:38:22'),
(3496, 51, 2, '2021-09-29 02:38:25', '2021-09-29 02:38:25'),
(3497, NULL, 2, '2021-09-29 04:53:27', '2021-09-29 04:53:27'),
(3498, NULL, 2, '2021-09-29 04:53:32', '2021-09-29 04:53:32'),
(3499, NULL, 1, '2021-09-29 05:57:25', '2021-09-29 05:57:25'),
(3500, NULL, 2, '2021-09-29 06:17:38', '2021-09-29 06:17:38'),
(3501, NULL, 2, '2021-09-29 06:20:09', '2021-09-29 06:20:09'),
(3502, NULL, 1, '2021-09-29 06:21:28', '2021-09-29 06:21:28'),
(3503, NULL, 2, '2021-09-29 06:24:28', '2021-09-29 06:24:28'),
(3504, NULL, 1, '2021-09-29 11:27:53', '2021-09-29 11:27:53'),
(3505, NULL, 2, '2021-09-29 11:29:40', '2021-09-29 11:29:40'),
(3506, NULL, 1, '2021-09-29 22:39:39', '2021-09-29 22:39:39'),
(3507, NULL, 1, '2021-09-29 23:29:15', '2021-09-29 23:29:15'),
(3508, NULL, 1, '2021-09-29 23:29:19', '2021-09-29 23:29:19'),
(3509, NULL, 1, '2021-09-30 01:08:52', '2021-09-30 01:08:52'),
(3510, NULL, 1, '2021-09-30 01:09:21', '2021-09-30 01:09:21'),
(3511, NULL, 2, '2021-09-30 03:57:26', '2021-09-30 03:57:26'),
(3512, NULL, 3, '2021-09-30 04:21:32', '2021-09-30 04:21:32'),
(3513, 51, 3, '2021-09-30 04:35:27', '2021-09-30 04:35:27'),
(3514, 51, 3, '2021-09-30 04:36:01', '2021-09-30 04:36:01'),
(3515, 51, 3, '2021-09-30 04:39:38', '2021-09-30 04:39:38'),
(3516, 51, 3, '2021-09-30 04:40:30', '2021-09-30 04:40:30'),
(3517, 51, 3, '2021-09-30 04:41:30', '2021-09-30 04:41:30'),
(3518, NULL, 3, '2021-09-30 04:45:23', '2021-09-30 04:45:23'),
(3519, NULL, 3, '2021-09-30 04:45:26', '2021-09-30 04:45:26'),
(3520, NULL, 3, '2021-09-30 04:46:11', '2021-09-30 04:46:11'),
(3521, NULL, 3, '2021-09-30 04:46:14', '2021-09-30 04:46:14'),
(3522, NULL, 3, '2021-09-30 04:47:58', '2021-09-30 04:47:58'),
(3523, NULL, 3, '2021-09-30 04:48:01', '2021-09-30 04:48:01'),
(3524, 3, 3, '2021-09-30 04:58:37', '2021-09-30 04:58:37'),
(3525, 3, 3, '2021-09-30 04:58:43', '2021-09-30 04:58:43'),
(3526, 3, 3, '2021-09-30 05:00:47', '2021-09-30 05:00:47'),
(3527, 3, 2, '2021-09-30 05:00:59', '2021-09-30 05:00:59'),
(3528, 51, 3, '2021-09-30 05:02:11', '2021-09-30 05:02:11'),
(3529, 51, 2, '2021-09-30 05:02:31', '2021-09-30 05:02:31'),
(3530, NULL, 4, '2021-09-30 05:03:59', '2021-09-30 05:03:59'),
(3531, NULL, 4, '2021-09-30 05:04:02', '2021-09-30 05:04:02'),
(3532, NULL, 2, '2021-09-30 05:04:25', '2021-09-30 05:04:25'),
(3533, NULL, 2, '2021-09-30 05:04:28', '2021-09-30 05:04:28'),
(3534, 51, 5, '2021-09-30 05:10:14', '2021-09-30 05:10:14'),
(3535, NULL, 5, '2021-09-30 05:16:32', '2021-09-30 05:16:32'),
(3536, NULL, 5, '2021-09-30 05:18:22', '2021-09-30 05:18:22'),
(3537, NULL, 5, '2021-09-30 05:19:37', '2021-09-30 05:19:37'),
(3538, 51, 7, '2021-09-30 05:32:26', '2021-09-30 05:32:26'),
(3539, 51, 12, '2021-09-30 06:00:32', '2021-09-30 06:00:32'),
(3540, NULL, 14, '2021-09-30 12:31:37', '2021-09-30 12:31:37'),
(3541, NULL, 14, '2021-09-30 12:31:40', '2021-09-30 12:31:40'),
(3542, NULL, 6, '2021-09-30 13:21:28', '2021-09-30 13:21:28'),
(3543, NULL, 8, '2021-09-30 23:55:24', '2021-09-30 23:55:24'),
(3544, NULL, 14, '2021-10-01 10:35:16', '2021-10-01 10:35:16'),
(3545, NULL, 7, '2021-10-01 21:03:46', '2021-10-01 21:03:46'),
(3546, NULL, 7, '2021-10-01 21:03:50', '2021-10-01 21:03:50'),
(3547, NULL, 3, '2021-10-01 23:54:52', '2021-10-01 23:54:52'),
(3548, NULL, 1, '2021-10-01 23:57:37', '2021-10-01 23:57:37'),
(3549, NULL, 7, '2021-10-01 23:57:47', '2021-10-01 23:57:47'),
(3550, NULL, 3, '2021-10-01 23:58:26', '2021-10-01 23:58:26'),
(3551, NULL, 3, '2021-10-01 23:59:15', '2021-10-01 23:59:15'),
(3552, NULL, 4, '2021-10-01 23:59:22', '2021-10-01 23:59:22'),
(3553, NULL, 5, '2021-10-01 23:59:33', '2021-10-01 23:59:33'),
(3554, NULL, 6, '2021-10-01 23:59:41', '2021-10-01 23:59:41'),
(3555, NULL, 1, '2021-10-02 00:04:33', '2021-10-02 00:04:33'),
(3556, NULL, 1, '2021-10-02 07:17:44', '2021-10-02 07:17:44'),
(3557, 3, 1, '2021-10-04 04:06:33', '2021-10-04 04:06:33'),
(3558, 3, 1, '2021-10-04 04:06:43', '2021-10-04 04:06:43');

-- --------------------------------------------------------

--
-- Table structure for table `translations`
--

CREATE TABLE `translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `table_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `column_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `foreign_key` int(10) UNSIGNED NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone_number` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'users/default.png',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `settings` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `verification_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_verified` int(10) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `role_id`, `name`, `phone_number`, `email`, `avatar`, `email_verified_at`, `password`, `remember_token`, `settings`, `verification_code`, `is_verified`, `created_at`, `updated_at`) VALUES
(1, 1, 'ashaduzzaman', '', 'ashad@myolbd.com', 'users/default.png', NULL, '$2y$10$toXl2Gx60bERD2CyuYz6geSBaum4NuN0Oi.3yTZQkbqJuvJ4f9Or6', 'Yr2TR68n4ecuxSaacr8wAwlV7S5PJQECusjC5rfE4kMOe8kq8V2DfG2tIWGg', NULL, '$2y$10$pP0ZZX0pkPjh1QZptJMPWuiCONjAF8O6yGOH1bIDHXI5GOyHDqqn.', 1, '2020-11-23 04:03:47', '2021-09-22 05:05:58'),
(2, 5, 'zihad hasan', '', 'zihad@myolbd.com', 'users/default.png', NULL, '$2y$10$lcv6s0tsT1kdEGaCxfF9Ruy2cjw/zNShKXmc4nkZy4l0Ku2ELSmXK', NULL, '{\"locale\":\"en\"}', NULL, 0, '2020-11-23 04:26:23', '2021-03-28 06:46:36'),
(3, 1, 'Ashaduzzaman Ovi', '01794660613', 'ashubikt@gmail.com', 'users/March2021/77wO5Vlbyq0xJlUJNTw0.jpg', NULL, '$2y$10$3UB5Z5iWvLTz5f7nBjVNceKz8bC9r7iG.OYvlMTtym2/VAtx/ViRC', 'mzPu7mVuVjCP0WsIYmKAsZP7RFEOE7dHXqa9zTJPqBd9qQhtRUlcMdpAyARU', '{\"locale\":\"en\"}', '$2y$10$T/Cp7DRa2IAifLUnndbQquxUl.Mh/6LQS3cKRxWKw1M4243BpfDWG', 1, '2020-11-23 04:39:03', '2021-09-27 23:49:51'),
(4, 2, 'babul', '', 'babul@gmail.com', 'users/default.png', NULL, '$2y$10$KkzncjEF0nPwyIA7zj08ru4hOmzrmxCPg5ckKFilAo4VTAKoWOT3K', NULL, NULL, NULL, 0, '2021-02-08 02:57:22', '2021-02-08 02:57:22'),
(5, 4, 'Selina Akter', '', 'selina@myolbd.com', 'users/default.png', NULL, '$2y$10$4ckjMERfuBEXTObylFKqFO.cVhmey93fM6DwDK1m5p9z9LgrhXqMC', 'B8Gh8YzfJOZ3rGfA9PgokJtSsgFWEGybNECFrw6Z8260lWl8npSXnNfIRris', '{\"locale\":\"en\"}', NULL, 0, '2021-03-18 04:15:27', '2021-03-18 04:15:27'),
(6, 2, 'ZIhad', '', 'test@test.com', 'users/default.png', NULL, '$2y$10$N0BsEoY1tzeBEDzsZ5kR4uOKa1nfmM386opzuNGsu6z.7F5xL5OqG', NULL, NULL, NULL, 0, '2021-03-28 04:25:19', '2021-03-28 04:25:19'),
(10, 2, 'Ashraful Azim', '', 'publicatedmail@gmail.com', 'users/default.png', NULL, '$2y$10$KaKYVQjvR773y.HJuIMrSu0nLmp76F4hsDGc1QwkfPlBpvFkwMECq', NULL, NULL, NULL, 0, '2021-04-12 16:35:04', '2021-04-12 16:35:04'),
(11, 2, 'malek', '', 'malek@gmail.com', 'users/default.png', NULL, '$2y$10$Ir.5HODh4Mu.ZtmLGMc1Xenb6GI3Qc0RaJTqpJFW2K00tMzGwBkWq', NULL, NULL, '9bf463b90ab8b53bcffc6915ba965bbbe96ca562', 0, '2021-05-27 13:11:46', '2021-05-27 13:11:46'),
(12, 2, 'amin', '', 'amin@gmail.com', 'users/default.png', NULL, '$2y$10$KLUpQL8iHD1B.E0mjG2lPOe8W4Y6UC0p76R4bHBjLBcwDTuwFv0RK', NULL, NULL, '4e5c7da727e9b71dd8b36a20673af8ea101de437', 1, '2021-05-27 13:13:21', '2021-05-27 13:13:37'),
(13, 2, 'abid', '', 'abidmyolbd@gmail.com', 'users/default.png', NULL, '$2y$10$5PP5u7J9wArdBK1XUBBZaOkEJQS6K/oe1MLb2QkZEbUFUDBsxrdFq', NULL, NULL, '6ba4bf702c1100400b9b5a723cfbe5053fcc31d1', 1, '2021-05-27 13:20:47', '2021-05-27 13:21:24'),
(14, 2, 'Jakir Hossain', '', 'jakir@myolbd.com', 'users/default.png', NULL, '$2y$10$RLQX4Nsgq8F2m0dSdZZ3OeVJajAil.1xth1ZJFAos13kmcNdQMgf6', NULL, NULL, '9e479663d4d789a87cdf62318f50d51a5a6344a7', 0, '2021-06-13 00:49:19', '2021-06-13 00:49:19'),
(15, 2, 'Mohsin', '', 'mohsin@myolbd.com', 'users/default.png', NULL, '$2y$10$yXNMzkfJO4Gc4PVsNdM.UOapllBKvVl3z5I9SaLFlJDW30jwE2rQ6', 'vAFUXkGtFFNAF3PowssmYXDvqQ56wTRW9zO1Ev7xqd3TWgPqqtsrHDIo9H8u', NULL, 'f6eff5dbd2f625232642de860c991fea91be77c0', 0, '2021-06-13 00:56:38', '2021-06-20 05:42:56'),
(16, 2, 'Mohsin', '', 'mohsin1@myolbd.com', 'users/default.png', NULL, '$2y$10$Gx.W5KkGAi/36Lmfl2pFFesQt.KK/bDRZwQe0pgJGLcg6VgUIh9xa', NULL, NULL, '797c7788b00ce9d8ffa338e9a2280892501774d4', 0, '2021-06-13 00:57:18', '2021-06-13 00:57:18'),
(17, 2, 'Raymond Steele', '', 'fyvaru@mailinator.com', 'users/default.png', NULL, '$2y$10$Ifw7ehftwQQwozQwJuL1jeeMH.iEdK/pNDPdTmcD7L5muK8RpZy1q', NULL, NULL, '3d4170adec4c82559ed47bc8ac6b4aa7c2c5ae8c', 0, '2021-06-13 00:57:25', '2021-06-13 00:57:25'),
(19, 2, 'Mohsin', '', 'mohsin2@myolbd.com', 'users/default.png', NULL, '$2y$10$zZiuO6vtEhU.0sz9KvA64ejRSqyMT5ILyNQR1HdXhfE0K2xVDwU/K', NULL, NULL, '2a4344130402807ca2910519b2169ba081ff9157', 0, '2021-06-13 00:59:32', '2021-06-13 00:59:32'),
(20, 2, 'Jackson Kennedy', '', 'vifikew@mailinator.com', 'users/default.png', NULL, '$2y$10$sHBUgOH7OJpRs9/DwqQ8fOeG3diGknoRXagvK5EC09lfXEjD8J3JW', NULL, NULL, '78e0e573d97c41aaa1a821fd6a8c8f1258d7f995', 0, '2021-06-13 01:03:36', '2021-06-13 01:03:36'),
(21, 2, 'Forrest Walls', '', 'caxo@mailinator.com', 'users/default.png', NULL, '$2y$10$R6HMGLHmq11dmtjAA/rQGOx3q8SM6EKywqBUBa2KsFdzWTNI.GSPa', NULL, NULL, 'f8cb99d9c975a0c7c8c9bdbf6b64276411164f4a', 0, '2021-06-13 01:05:48', '2021-06-13 01:05:48'),
(23, 2, 'Patricia Reilly', '', 'rodidixuvy@mailinator.com', 'users/default.png', NULL, '$2y$10$E.Se51t5c9ZJtBz9FJ24fuOnCY4vPBjJ4Vl.loe7F0D18RcEFjnr6', NULL, NULL, '5e96fcacc87928a5aae4f85630561bd4ce67ee5b', 0, '2021-06-13 01:06:16', '2021-06-13 01:06:16'),
(24, 2, 'Cade Santana', '', 'hilowuv@mailinator.com', 'users/default.png', NULL, '$2y$10$jAEVH2mpSuEuxTIotzQCAeZ7eIXQdj5kVo9PArK3Cvkfh/l2mztqy', NULL, NULL, '1d7ff2b7c9718a244fb645c62ae88342794e1f40', 0, '2021-06-13 01:06:51', '2021-06-13 01:06:51'),
(25, 2, 'Nerea Finch', '', 'gywajyzymo@mailinator.com', 'users/default.png', NULL, '$2y$10$T.qtW1G/bRcYfKPRhPv1YOdYw6FEeQVGba4OMUehIOfKE9VQtZgcy', NULL, NULL, '76027992400c177e6c32a85ee69602312236456b', 0, '2021-06-13 01:08:18', '2021-06-13 01:08:18'),
(26, 2, 'Gregory Maynard', '', 'dihefona@mailinator.com', 'users/default.png', NULL, '$2y$10$JiF.f0o.AKabOL8R2Kq72eMNOv/Z0vVS0hnwdlOjm2ta5WUQfMD1C', NULL, NULL, '7c74bbb001987eda9d590e195ed1294b746f91ae', 0, '2021-06-13 01:09:07', '2021-06-13 01:09:07'),
(27, 2, 'Scott Leach', '', 'fovypiv@mailinator.com', 'users/default.png', NULL, '$2y$10$laTSxH5dgDx34puDqCKMXOYb1.xcNMpxGZcHMlrAMOU.GGJ.0jZcO', NULL, NULL, '2f279c2fbf32ea4b5f759eb61544f3b1c468545c', 0, '2021-06-13 01:12:15', '2021-06-13 01:12:15'),
(28, 2, 'Hector Mcguire', '', 'dyjo@mailinator.com', 'users/default.png', NULL, '$2y$10$18pW0mL4FXqidSJmrpzarudlT.Tj0Jbz9REu4Cp4W.NmNZTrDoQom', NULL, NULL, '291397024ac2a77e643c94afe60ed1eb16354b85', 0, '2021-06-13 01:12:37', '2021-06-13 01:12:37'),
(29, 2, 'Neve Hoover', '', 'damatobime@mailinator.com', 'users/default.png', NULL, '$2y$10$7R2i8whOrF1S9X86oL4F/.FRrPVdO7kOVWu6w/pD/ljHAhAZmJ0UO', NULL, NULL, 'e7371e914668f7bdf5a07cf2af15920c8c301c39', 0, '2021-06-13 01:13:17', '2021-06-13 01:13:17'),
(30, 2, 'Lee Hensley', '', 'riqa@mailinator.com', 'users/default.png', NULL, '$2y$10$iFvSZfZUZ9/5kTx0fjHOtu6GMbXiT48rgCQaBjFYS1W8ZdULylQaK', NULL, NULL, 'f48969f8eab8888395b7395e16d6f6dbdfbbec87', 0, '2021-06-13 01:17:34', '2021-06-13 01:17:34'),
(31, 2, 'Zeus Nguyen', '', 'xydul@mailinator.com', 'users/default.png', NULL, '$2y$10$xHi3/6kb1p4cJsfTOrZvQuQUWpiy6XTsqr.IYCrIwBolr5a.j.jHa', NULL, NULL, 'bcbe2a4a243d577a2ac0b10115857025d095932e', 0, '2021-06-13 01:56:41', '2021-06-13 01:56:41'),
(32, 2, 'Carl Rodgers', '', 'ralitasapu@mailinator.com', 'users/default.png', NULL, '$2y$10$vxHXKM/E9WIrKlA3BpagGuYqS0M6CUeicXyFvEPM8jJPKC4YD5jiC', NULL, NULL, '871c9050c5bec526252c05656696c5e23ad5ac81', 0, '2021-06-13 02:01:06', '2021-06-13 02:01:06'),
(33, 2, 'Charissa Rivera', '', 'qenytuv@mailinator.com', 'users/default.png', NULL, '$2y$10$AEZRu31V5tzEkAajVADcKu/qi1ZA3cRnLZHtSVkIwDTCbuy0KvVUW', NULL, NULL, '2c22401c7d49bf41649ae5e63f80b1965ffdc7ff', 0, '2021-06-16 06:17:52', '2021-06-16 06:17:52'),
(34, 2, 'Porter Hall', '', 'fuvi@mailinator.com', 'users/default.png', NULL, '$2y$10$xCjUgiKu31z9n6rUvy4bC.Xtn/z1r0b3x7bZKXOeIFTL4hiTckUxq', NULL, NULL, 'c0ca79fc0b2a3dd670bd9bcb419ee78713006135', 0, '2021-06-16 06:20:22', '2021-06-16 06:20:22'),
(35, 2, 'Regina Montoya', '', 'hikusetara@mailinator.com', 'users/default.png', NULL, '$2y$10$BshpD.SSPV.Nng8X5h0RZ.QrZTINUFDlhyEiGQA2VblU1H64FgaHi', NULL, NULL, '332cb8ad1ab52aee250795a1c548d93bfc4c61c3', 0, '2021-06-16 06:22:14', '2021-06-16 06:22:14'),
(36, 2, 'abc', '', 'abc@bbb.sss', 'users/default.png', NULL, '$2y$10$zb2Px8sSMjdo76St8A5BquqWAjFo9V3LUTuGVgDwgch2An675K4Hy', NULL, NULL, NULL, 0, '2021-06-17 06:55:55', '2021-06-17 06:55:55'),
(37, 2, 'Mollie Kirby', '', 'hufecega@mailinator.com', 'users/default.png', NULL, '$2y$10$OtPHVe4Vig5ftEpmYDbwauC0c3tPj6VjZ1G.qGKQdAfMt.PjDygne', NULL, NULL, 'a5f9f9ca83860911d1ff1f5e7954bf046a2e4dd7', 0, '2021-07-11 23:41:55', '2021-07-11 23:41:55'),
(38, 2, 'Laura Silva', '', 'xetytofudo@mailinator.com', 'users/default.png', NULL, '$2y$10$WkSZ2G//UbOuYs0AYJV1DeNbqHwwfxEaVzWPGsEstL6mOUwc3RfvK', NULL, NULL, 'da19227192b943d6ffdef315ba9067b4bd1d31d9', 0, '2021-07-11 23:45:49', '2021-07-11 23:45:50'),
(39, 2, 'Dorian Reynolds', '01988550920', 'putocune@mailinator.com', 'users/default.png', NULL, '$2y$10$ZnStx0DXVIPK3/OXfPU0kePoS7T/40LnPK8zWhgTOmuL3dxpsLhxm', NULL, NULL, 'b31a2e834ec4fffd29e1523bf8607a03b95cc89e', 0, '2021-07-17 09:18:48', '2021-07-17 09:18:48'),
(40, 2, 'Stephanie Perkins', '01988550920', 'tekin@mailinator.com', 'users/default.png', NULL, '$2y$10$0QFsdQnI1OAF.XIX/7YD8uHa5DLjA28dwfFleU9cLrCXzLegQkE6y', NULL, NULL, '870229725c003def4a73d1ca81caa4f81ceb071b', 0, '2021-07-17 09:26:14', '2021-07-17 09:26:14'),
(41, 2, 'Basil Benton', '', 'pece@mailinator.com', 'users/default.png', NULL, '$2y$10$M0pLBc4Oc15yzxc2SrquFul3cs3KXFLkgVxEOLWjJtdEZG9cj4Aeu', NULL, NULL, 'b28a2e953c524c81946a7f0fa776c82fe8fc8792', 0, '2021-07-17 09:35:11', '2021-07-17 09:35:11'),
(42, 2, 'Ifeoma Mcintosh', '', 'bezyrem@mailinator.com', 'users/default.png', NULL, '$2y$10$WEI1chPJ4hflaDiagG6AneYPltC3z4ZPJqnIE6/ZcTWRiYWByfre6', NULL, NULL, 'f908896812ed8a097dd84db443e08d621ac06639', 0, '2021-07-17 09:40:11', '2021-07-17 09:40:11'),
(43, 2, 'Ashaduzzaman', '01988550920', 'ashubikt2@gmail.com', 'users/default.png', NULL, '$2y$10$j6mVntNjGAgrDGzHZVffyOX.qgha3q/cojc/lgJNog1VstliFc10a', 'xnfPClCSWQzpGMkPZ3W5xVVQrUH0mADKtEYOKdFAtyxBuHn3PlbfZ31k9UEg', '{\"locale\":\"en\"}', '$2y$10$33o13uLBj87g49OgJxWJLOZ8LfJkJs.bBSwEqSTScChurLgTAIG2u', 1, '2021-07-18 04:15:05', '2021-09-28 00:45:59'),
(44, 2, 'Isadora Gordon', '01714141414', 'lyrynima@mailinator.com', 'users/default.png', NULL, '$2y$10$pRK6kxVPTETPwFJZ/FwX3uoz4NYkn9LeIbRewo2kGuYZZyTR2BfLq', NULL, NULL, '$2y$10$KA./aa3z/rVyx4VHTyhUB.EdmeFtckSoK3LpJ3q3le3IbUPoZslSa', 0, '2021-09-20 04:16:52', '2021-09-20 04:16:52'),
(48, 2, 'Md. Abid Mahmud', '01970210303', 'abid@myolbd.com', 'users/default.png', NULL, '$2y$10$DcTtWEpw11VObjigFabB.ehz9kt1kY/7qtbdB1Pm4V..RwEmrIIhu', NULL, NULL, '$2y$10$3XTr8e.q7KzMrYyA.bdZSOrkgqygOcq2Js7VG48rSZ.ATSCNiGLXi', 1, '2021-09-21 04:06:28', '2021-09-21 04:06:53'),
(50, 4, 'soikot', '01521302319', 'soikotshahriar1995@gmail.com', 'users/default.png', NULL, '$2y$10$snG9DI8J1pVMZXMSpUeOq.3s3K6GXVCXDyMuQjdTTZcIxrPpyUCPe', '3Y8uEpOyNwbKdNZ3bY2DurUYFpIL1bepnPkeKzI31JMMI4onogvuYcp3CgrW', '{\"locale\":\"en\"}', '$2y$10$WErxseElNwb1biBDjqtaluYbgRIRak6Gnq0qKCaCqm4NXyIeLLlcG', 1, '2021-09-22 23:01:39', '2021-09-28 04:17:05'),
(51, 1, 'Sarder Moin Ud Din', '01711035587', 'bdmoin@gmail.com', 'users/September2021/fYsiXrJ70srEESPNeNGa.jpg', NULL, '$2y$10$mvfoRz3UczMIweiTi7tOS.H6Hvaf5O5RZavFjasW1JV0f2wrs43ze', 'pIoMM4zqXla3sMKaOiURsmQAgyNSMimTvLrxeJFJB9utWlxLyPE9xGRh9o8o', '{\"locale\":\"en\"}', '$2y$10$M88q4.v8v3y6IyU14hi2P.cDr3JvV4ZU5ZlveNHN0p5.trxWtg6B2', 1, '2021-09-27 01:35:57', '2021-09-28 23:45:40');

-- --------------------------------------------------------

--
-- Table structure for table `user_roles`
--

CREATE TABLE `user_roles` (
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `vehicle_makers`
--

CREATE TABLE `vehicle_makers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('Active','Inactive') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Active',
  `created_by` int(10) UNSIGNED DEFAULT NULL,
  `updated_by` int(10) UNSIGNED DEFAULT NULL,
  `deleted_by` int(10) UNSIGNED DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `vehicle_makers`
--

INSERT INTO `vehicle_makers` (`id`, `name`, `status`, `created_by`, `updated_by`, `deleted_by`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Toyota', 'Active', 1, 1, NULL, NULL, '2021-08-31 09:29:56', '2021-08-31 12:52:37'),
(2, 'Honda', 'Active', 1, 1, NULL, NULL, '2021-08-31 09:54:28', '2021-08-31 12:52:29'),
(3, 'Nissan', 'Active', 1, NULL, NULL, NULL, '2021-09-02 06:12:13', '2021-09-02 06:12:13'),
(4, 'Mitsubishi', 'Active', 1, NULL, NULL, NULL, '2021-09-02 06:12:32', '2021-09-02 06:12:32'),
(5, 'Mazda', 'Active', 1, NULL, NULL, NULL, '2021-09-02 06:12:46', '2021-09-02 06:12:46'),
(6, 'Subaru', 'Active', 1, NULL, NULL, NULL, '2021-09-02 06:13:04', '2021-09-02 06:13:04');

-- --------------------------------------------------------

--
-- Table structure for table `vehicle_makers_old`
--

CREATE TABLE `vehicle_makers_old` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `vehicle_makers_old`
--

INSERT INTO `vehicle_makers_old` (`id`, `name`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Toyota', '2021-07-06 11:44:06', '2021-07-06 11:44:06', NULL),
(2, 'Nissan', '2021-08-10 22:04:21', '2021-08-10 22:04:21', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `vehicle_manufacturing_years`
--

CREATE TABLE `vehicle_manufacturing_years` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `vehicle_model_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `vehicle_manufacturing_years`
--

INSERT INTO `vehicle_manufacturing_years` (`id`, `vehicle_model_id`, `name`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, '2003', '2021-07-06 11:44:52', '2021-07-06 11:44:52', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `vehicle_models`
--

CREATE TABLE `vehicle_models` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `vehicle_maker_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('Active','Inactive') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Active',
  `created_by` int(10) UNSIGNED DEFAULT NULL,
  `updated_by` int(10) UNSIGNED DEFAULT NULL,
  `deleted_by` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `vehicle_models`
--

INSERT INTO `vehicle_models` (`id`, `vehicle_maker_id`, `name`, `status`, `created_by`, `updated_by`, `deleted_by`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 'Premio', 'Active', NULL, NULL, NULL, '2021-07-06 11:44:22', '2021-07-06 11:44:22', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `vendors`
--

CREATE TABLE `vendors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile_number` varchar(50) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `status` enum('Active','Inactive') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Active',
  `created_by` int(10) UNSIGNED DEFAULT NULL,
  `updated_by` int(10) UNSIGNED DEFAULT NULL,
  `deleted_by` int(10) UNSIGNED DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `vendors`
--

INSERT INTO `vendors` (`id`, `name`, `mobile_number`, `address`, `status`, `created_by`, `updated_by`, `deleted_by`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'RT-Fronuse', '01784296816', 'Road-25, House- 18, Block-A, Banani, Near Banani Grave Yard. Dhaka', 'Active', 1, 1, NULL, NULL, '2021-08-15 23:08:33', '2021-08-15 23:36:36');

-- --------------------------------------------------------

--
-- Table structure for table `web_banners`
--

CREATE TABLE `web_banners` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image_path` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lazy_load_image_path` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `web_banners`
--

INSERT INTO `web_banners` (`id`, `name`, `image_path`, `lazy_load_image_path`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Slider 1 september', 'web-banners/September2021/ViMxrFJ3g4YCQv33TV0d.jpg', NULL, '2021-09-20 03:53:50', '2021-09-20 03:53:50', NULL),
(3, 'Slider 2', 'web-banners/September2021/yWaf9sqAL2XVW8mWmwZr.jpg', NULL, '2021-09-20 03:58:00', '2021-09-20 03:58:33', NULL),
(4, 'Slider 3 september', 'web-banners/September2021/WAfu3t7V8bUyim1YfnKg.jpg', NULL, '2021-09-20 03:59:48', '2021-09-20 03:59:48', NULL),
(5, 'Slider 4 september', 'web-banners/September2021/Cf7wUwpc40OTpiLHUsna.jpg', NULL, '2021-09-20 04:00:09', '2021-09-20 04:00:09', NULL),
(6, 'Slider 5', 'web-banners/September2021/pK3z1iKnwrDoFN3XBPl6.jpg', NULL, '2021-09-20 04:14:01', '2021-09-20 04:14:01', NULL),
(7, 'Slider 6', 'web-banners/September2021/KgEv6JXnwxhQbuws54Uc.jpg', NULL, '2021-09-20 04:14:17', '2021-09-20 04:14:17', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `attributes`
--
ALTER TABLE `attributes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `attribute_values`
--
ALTER TABLE `attribute_values`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `brands_old`
--
ALTER TABLE `brands_old`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories_old`
--
ALTER TABLE `categories_old`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`),
  ADD KEY `categories_parent_id_foreign` (`parent_id`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `coupons`
--
ALTER TABLE `coupons`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `data_rows`
--
ALTER TABLE `data_rows`
  ADD PRIMARY KEY (`id`),
  ADD KEY `data_rows_data_type_id_foreign` (`data_type_id`);

--
-- Indexes for table `data_types`
--
ALTER TABLE `data_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `data_types_name_unique` (`name`),
  ADD UNIQUE KEY `data_types_slug_unique` (`slug`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `inv_users`
--
ALTER TABLE `inv_users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `menus_name_unique` (`name`);

--
-- Indexes for table `menu_items`
--
ALTER TABLE `menu_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `menu_items_menu_id_foreign` (`menu_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `orders_user_id_foreign` (`user_id`);

--
-- Indexes for table `order_items`
--
ALTER TABLE `order_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_items_product_id_foreign` (`product_id`),
  ADD KEY `order_items_order_id_foreign` (`order_id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `pages_slug_unique` (`slug`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `permissions_key_index` (`key`);

--
-- Indexes for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `permission_role_permission_id_index` (`permission_id`),
  ADD KEY `permission_role_role_id_index` (`role_id`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `posts_slug_unique` (`slug`);

--
-- Indexes for table `preorder_queries`
--
ALTER TABLE `preorder_queries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products_bk`
--
ALTER TABLE `products_bk`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products_old`
--
ALTER TABLE `products_old`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_shop_id_foreign` (`shop_id`);

--
-- Indexes for table `product_categories`
--
ALTER TABLE `product_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_groups`
--
ALTER TABLE `product_groups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_reviews`
--
ALTER TABLE `product_reviews`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_reviews_user_id_foreign` (`user_id`),
  ADD KEY `product_reviews_product_id_foreign` (`product_id`);

--
-- Indexes for table `product_types`
--
ALTER TABLE `product_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_types_old`
--
ALTER TABLE `product_types_old`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_unique` (`name`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `services_slug_unique` (`slug`),
  ADD KEY `services_parent_id_foreign` (`parent_id`);

--
-- Indexes for table `service_bookings`
--
ALTER TABLE `service_bookings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `service_bookings_service_id_foreign` (`service_id`);

--
-- Indexes for table `service_reviews`
--
ALTER TABLE `service_reviews`
  ADD PRIMARY KEY (`id`),
  ADD KEY `service_reviews_user_id_foreign` (`user_id`),
  ADD KEY `service_reviews_service_id_foreign` (`service_id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `settings_key_unique` (`key`);

--
-- Indexes for table `shops`
--
ALTER TABLE `shops`
  ADD PRIMARY KEY (`id`),
  ADD KEY `shops_user_id_foreign` (`user_id`);

--
-- Indexes for table `stock_in_products`
--
ALTER TABLE `stock_in_products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `stock_out_products`
--
ALTER TABLE `stock_out_products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sub_categories`
--
ALTER TABLE `sub_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `top_viewed_products`
--
ALTER TABLE `top_viewed_products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `top_viewed_products_user_id_foreign` (`user_id`),
  ADD KEY `top_viewed_products_product_id_foreign` (`product_id`);

--
-- Indexes for table `translations`
--
ALTER TABLE `translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `translations_table_name_column_name_foreign_key_locale_unique` (`table_name`,`column_name`,`foreign_key`,`locale`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_role_id_foreign` (`role_id`);

--
-- Indexes for table `user_roles`
--
ALTER TABLE `user_roles`
  ADD PRIMARY KEY (`user_id`,`role_id`),
  ADD KEY `user_roles_user_id_index` (`user_id`),
  ADD KEY `user_roles_role_id_index` (`role_id`);

--
-- Indexes for table `vehicle_makers`
--
ALTER TABLE `vehicle_makers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vehicle_makers_old`
--
ALTER TABLE `vehicle_makers_old`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vehicle_manufacturing_years`
--
ALTER TABLE `vehicle_manufacturing_years`
  ADD PRIMARY KEY (`id`),
  ADD KEY `vehicle_manufacturing_years_vehicle_model_id_foreign` (`vehicle_model_id`);

--
-- Indexes for table `vehicle_models`
--
ALTER TABLE `vehicle_models`
  ADD PRIMARY KEY (`id`),
  ADD KEY `vehicle_models_vehicle_maker_id_foreign` (`vehicle_maker_id`);

--
-- Indexes for table `vendors`
--
ALTER TABLE `vendors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `web_banners`
--
ALTER TABLE `web_banners`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `attributes`
--
ALTER TABLE `attributes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `attribute_values`
--
ALTER TABLE `attribute_values`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `brands_old`
--
ALTER TABLE `brands_old`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `categories_old`
--
ALTER TABLE `categories_old`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `coupons`
--
ALTER TABLE `coupons`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `data_rows`
--
ALTER TABLE `data_rows`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=302;

--
-- AUTO_INCREMENT for table `data_types`
--
ALTER TABLE `data_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `inv_users`
--
ALTER TABLE `inv_users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `menu_items`
--
ALTER TABLE `menu_items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `order_items`
--
ALTER TABLE `order_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=157;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `preorder_queries`
--
ALTER TABLE `preorder_queries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `products_bk`
--
ALTER TABLE `products_bk`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `products_old`
--
ALTER TABLE `products_old`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=153;

--
-- AUTO_INCREMENT for table `product_categories`
--
ALTER TABLE `product_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=344;

--
-- AUTO_INCREMENT for table `product_groups`
--
ALTER TABLE `product_groups`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `product_reviews`
--
ALTER TABLE `product_reviews`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `product_types`
--
ALTER TABLE `product_types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `product_types_old`
--
ALTER TABLE `product_types_old`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `service_bookings`
--
ALTER TABLE `service_bookings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `service_reviews`
--
ALTER TABLE `service_reviews`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `shops`
--
ALTER TABLE `shops`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `stock_in_products`
--
ALTER TABLE `stock_in_products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `stock_out_products`
--
ALTER TABLE `stock_out_products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sub_categories`
--
ALTER TABLE `sub_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=75;

--
-- AUTO_INCREMENT for table `top_viewed_products`
--
ALTER TABLE `top_viewed_products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3559;

--
-- AUTO_INCREMENT for table `translations`
--
ALTER TABLE `translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT for table `vehicle_makers`
--
ALTER TABLE `vehicle_makers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `vehicle_makers_old`
--
ALTER TABLE `vehicle_makers_old`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `vehicle_manufacturing_years`
--
ALTER TABLE `vehicle_manufacturing_years`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `vehicle_models`
--
ALTER TABLE `vehicle_models`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `vendors`
--
ALTER TABLE `vendors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `web_banners`
--
ALTER TABLE `web_banners`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `categories_old`
--
ALTER TABLE `categories_old`
  ADD CONSTRAINT `categories_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `categories_old` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `data_rows`
--
ALTER TABLE `data_rows`
  ADD CONSTRAINT `data_rows_data_type_id_foreign` FOREIGN KEY (`data_type_id`) REFERENCES `data_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `menu_items`
--
ALTER TABLE `menu_items`
  ADD CONSTRAINT `menu_items_menu_id_foreign` FOREIGN KEY (`menu_id`) REFERENCES `menus` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
