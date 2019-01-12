-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jan 02, 2019 at 10:20 PM
-- Server version: 10.1.19-MariaDB
-- PHP Version: 5.6.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravel_nucleuspos`
--

-- --------------------------------------------------------

--
-- Table structure for table `lsp_activities`
--

CREATE TABLE `lsp_activities` (
  `id` int(10) UNSIGNED NOT NULL,
  `activity_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `activity` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `store_id` int(11) NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `lsp_assign_user_roles`
--

CREATE TABLE `lsp_assign_user_roles` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_by` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `lsp_authorize_net_payments`
--

CREATE TABLE `lsp_authorize_net_payments` (
  `id` int(10) UNSIGNED NOT NULL,
  `api_login_id` text COLLATE utf8mb4_unicode_ci,
  `transaction_key` text COLLATE utf8mb4_unicode_ci,
  `active_module_for_email_invoice` int(1) DEFAULT '0',
  `store_id` int(11) DEFAULT '0',
  `created_by` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_by` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `lsp_authorize_net_payments`
--

INSERT INTO `lsp_authorize_net_payments` (`id`, `api_login_id`, `transaction_key`, `active_module_for_email_invoice`, `store_id`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, '2a7Yx36V9W', '6bS9C28V2sU753rY', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2018-06-09 14:53:29', '2018-06-29 15:13:43');

-- --------------------------------------------------------

--
-- Table structure for table `lsp_authorize_net_payment_histories`
--

CREATE TABLE `lsp_authorize_net_payment_histories` (
  `id` int(10) UNSIGNED NOT NULL,
  `invoice_id` int(11) DEFAULT '0',
  `paid_amount` float(10,2) NOT NULL DEFAULT '0.00',
  `card_number` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT '0',
  `card_holder_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT '0',
  `card_expire_date` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT '0',
  `card_cvc` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT '0',
  `authCode` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT '0',
  `transactionID` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT '0',
  `refTransID` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `CardType` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT '0',
  `transactionHash` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT '0',
  `message` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'Successful',
  `refund_status` int(1) NOT NULL DEFAULT '1',
  `store_id` int(11) NOT NULL DEFAULT '0',
  `created_by` int(11) NOT NULL DEFAULT '0',
  `updated_by` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `lsp_authorize_net_payment_histories`
--

INSERT INTO `lsp_authorize_net_payment_histories` (`id`, `invoice_id`, `paid_amount`, `card_number`, `card_holder_name`, `card_expire_date`, `card_cvc`, `authCode`, `transactionID`, `refTransID`, `CardType`, `transactionHash`, `message`, `refund_status`, `store_id`, `created_by`, `updated_by`, `created_at`, `updated_at`, `deleted_at`) VALUES
(2, 1528486146, 156.40, '4105202006351041', 'MD MAHAMUDUR', '2018-11', '879', '000000', '0', '', 'Visa', 'BB0BE5CFD0F36F5D210F109213735B82', 'This transaction has been approved.', 1, 1, 1, 0, '2018-06-08 14:40:24', '2018-06-08 14:40:24', NULL),
(3, 1528486146, 156.40, '4105202006351041', 'MD MAHAMUDUR', '2018-11', '879', '000000', '0', '', 'Visa', '28309B2501EFE1852A415E9EE14501FD', 'This transaction has been approved.', 2, 1, 1, 0, '2018-06-08 14:43:46', '2018-06-08 14:43:46', NULL),
(4, 1528495888, 19.60, '4105202006351041', 'MD MAHAMUDUR', '2018-11', '897', '000000', '0', '', 'Visa', 'E6CAAC57158CBD689F110C35A8B9DDF4', 'This transaction has been approved.', 1, 1, 1, 0, '2018-06-08 16:12:37', '2018-06-08 16:12:37', NULL),
(5, 1528576083, 19.60, '4105202006351041', 'MD MAHAMUDUR', '2018-11', '879', '000000', '0', '', 'Visa', 'E6CAAC57158CBD689F110C35A8B9DDF4', 'This transaction has been approved.', 1, 1, 1, 0, '2018-06-09 15:12:26', '2018-06-09 15:12:26', NULL),
(6, 1530281657, 663.46, '4105202006351041', 'MD MAHAMUDUR', '2018-11', '879', '000000', '0', '', 'Visa', 'AF3B99BAD81575EA3FE58BA8086C8303', 'This transaction has been approved.', 1, 1, 1, 0, '2018-06-29 08:56:45', '2018-06-29 08:56:45', NULL),
(7, 1530281657, 663.46, '4105202006351041', 'MD MAHAMUDUR', '2018-11', '879', '000000', '0', '', 'Visa', 'AF3B99BAD81575EA3FE58BA8086C8303', 'This transaction has been approved.', 1, 1, 1, 0, '2018-06-29 09:14:47', '2018-06-29 09:14:47', NULL),
(8, 1530281657, 663.46, '4105202006351041', 'MD MAHAMUDUR', '2018-11', '879', '000000', '0', '', 'Visa', 'AF3B99BAD81575EA3FE58BA8086C8303', 'This transaction has been approved.', 1, 1, 1, 0, '2018-06-29 09:16:06', '2018-06-29 09:16:06', NULL),
(9, 1530281657, 663.46, '4105202006351041', 'MD MAHAMUDUR', '2018-11', '879', '000000', '0', '', 'Visa', 'AF3B99BAD81575EA3FE58BA8086C8303', 'This transaction has been approved.', 1, 1, 1, 0, '2018-06-29 09:18:02', '2018-06-29 09:18:02', NULL),
(10, 1530281657, 663.46, '4105202006351041', 'MD MAHAMUDUR', '2018-11', '879', '000000', '0', '', 'Visa', 'AF3B99BAD81575EA3FE58BA8086C8303', 'This transaction has been approved.', 1, 1, 1, 0, '2018-06-29 09:18:42', '2018-06-29 09:18:42', NULL),
(11, 1530281657, 663.46, '4105202006351041', 'MD MAHAMUDUR', '2018-11', '879', '000000', '0', '', 'Visa', 'AF3B99BAD81575EA3FE58BA8086C8303', 'This transaction has been approved.', 1, 1, 1, 0, '2018-06-29 09:19:24', '2018-06-29 09:19:24', NULL),
(12, 1530281657, 663.46, '4105202006351041', 'MD MAHAMUDUR', '2018-11', '879', '000000', '0', '', 'Visa', 'AF3B99BAD81575EA3FE58BA8086C8303', 'This transaction has been approved.', 1, 1, 1, 0, '2018-06-29 09:23:59', '2018-06-29 09:23:59', NULL),
(13, 1530281657, 663.46, '4105202006351041', 'MD MAHAMUDUR', '2018-11', '879', '000000', '0', '', 'Visa', 'AF3B99BAD81575EA3FE58BA8086C8303', 'This transaction has been approved.', 1, 1, 1, 0, '2018-06-29 09:42:08', '2018-06-29 09:42:08', NULL),
(14, 1530281657, 663.46, '4105202006351041', 'MD MAHAMUDUR', '2018-11', '879', '000000', '0', '', 'Visa', 'AF3B99BAD81575EA3FE58BA8086C8303', 'This transaction has been approved.', 1, 1, 1, 0, '2018-06-29 09:43:10', '2018-06-29 09:43:10', NULL),
(15, 1530287318, 19.60, '4105202006351041', 'MD MAHAMUDUR', '2018-11', '879', '000000', '0', '', 'Visa', 'E6CAAC57158CBD689F110C35A8B9DDF4', 'This transaction has been approved.', 1, 1, 1, 0, '2018-06-29 10:25:05', '2018-06-29 10:25:05', NULL),
(16, 1530287318, 19.60, '4105202006351041', 'MD MAHAMUDUR', '2018-11', '879', '000000', '0', '', 'Visa', 'E6CAAC57158CBD689F110C35A8B9DDF4', 'This transaction has been approved.', 1, 1, 1, 0, '2018-06-29 11:58:49', '2018-06-29 11:58:49', NULL),
(17, 1530295427, 49.00, '4105202006351041', 'MD MAHAMUDUR', '2018-11', '879', '000000', '0', '', 'Visa', '563FB1B3AAFB043070528D226F1F1DE8', 'This transaction has been approved.', 1, 1, 1, 0, '2018-06-29 12:08:00', '2018-06-29 12:08:00', NULL),
(18, 1530295474, 663.46, '4105202006351041', 'MD MAHAMUDUR', '2018-11', '879', '000000', '0', '', 'Visa', 'AF3B99BAD81575EA3FE58BA8086C8303', 'This transaction has been approved.', 1, 1, 1, 0, '2018-06-29 12:34:08', '2018-06-29 12:34:08', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `lsp_buybacks`
--

CREATE TABLE `lsp_buybacks` (
  `id` int(10) UNSIGNED NOT NULL,
  `customer_id` int(11) NOT NULL DEFAULT '0',
  `customer_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `carrier` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `imei` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type_and_color` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `memory` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `keep_this_on` enum('Parts','Sale') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Parts',
  `condition` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` float(10,2) DEFAULT '0.00',
  `payment_method_id` int(11) NOT NULL DEFAULT '0',
  `payment_method_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `buyback_status_id` int(2) NOT NULL DEFAULT '1',
  `buyback_status_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'New',
  `store_id` int(11) NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `lsp_buybacks`
--

INSERT INTO `lsp_buybacks` (`id`, `customer_id`, `customer_name`, `model`, `carrier`, `imei`, `type_and_color`, `memory`, `keep_this_on`, `condition`, `price`, `payment_method_id`, `payment_method_name`, `buyback_status_id`, `buyback_status_name`, `store_id`, `created_by`, `updated_by`, `created_at`, `updated_at`, `deleted_at`) VALUES
(7, 29, 'Fahad Bhuyian', 'Iphone 66', 'AT & T', '1234', 'Metalic Silver', '64GB', 'Sale', 'Good', 600.00, 8, 'Card Payment', 6, 'Waiting on Customer', 1, 1, 1, '2018-11-29 00:30:48', '2018-11-29 00:30:48', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `lsp_card_infos`
--

CREATE TABLE `lsp_card_infos` (
  `id` int(10) UNSIGNED NOT NULL,
  `card_info` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `card_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `card_number` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expriy_date` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pin_number` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `store_id` int(11) NOT NULL DEFAULT '0',
  `created_by` int(11) NOT NULL DEFAULT '0',
  `updated_by` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `lsp_card_infos`
--

INSERT INTO `lsp_card_infos` (`id`, `card_info`, `card_name`, `card_number`, `expriy_date`, `pin_number`, `store_id`, `created_by`, `updated_by`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Visa', 'MD MAHAMUDUR', '4105202006351041', '2018-11', '879', 1, 1, 0, '2018-06-08 14:26:24', '2018-06-08 14:26:24', NULL),
(2, 'Visa', 'MD MAHAMUDUR', '4105202006351041', '2018-11', '879', 1, 1, 0, '2018-06-08 14:40:24', '2018-06-08 14:40:24', NULL),
(3, 'Visa', 'MD MAHAMUDUR', '4105202006351041', '2018-11', '879', 1, 1, 0, '2018-06-08 14:43:46', '2018-06-08 14:43:46', NULL),
(4, 'Visa', 'MD MAHAMUDUR', '4105202006351041', '2018-11', '897', 1, 1, 0, '2018-06-08 16:12:37', '2018-06-08 16:12:37', NULL),
(5, 'Visa', 'MD MAHAMUDUR', '4105202006351041', '2018-11', '879', 1, 1, 0, '2018-06-09 15:12:26', '2018-06-09 15:12:26', NULL),
(6, 'Visa', 'MD MAHAMUDUR', '4105202006351041', '2018-11', '879', 1, 1, 0, '2018-06-29 08:56:45', '2018-06-29 08:56:45', NULL),
(7, 'Visa', 'MD MAHAMUDUR', '4105202006351041', '2018-11', '879', 1, 1, 0, '2018-06-29 09:14:47', '2018-06-29 09:14:47', NULL),
(8, 'Visa', 'MD MAHAMUDUR', '4105202006351041', '2018-11', '879', 1, 1, 0, '2018-06-29 09:16:05', '2018-06-29 09:16:05', NULL),
(9, 'Visa', 'MD MAHAMUDUR', '4105202006351041', '2018-11', '879', 1, 1, 0, '2018-06-29 09:18:02', '2018-06-29 09:18:02', NULL),
(10, 'Visa', 'MD MAHAMUDUR', '4105202006351041', '2018-11', '879', 1, 1, 0, '2018-06-29 09:18:42', '2018-06-29 09:18:42', NULL),
(11, 'Visa', 'MD MAHAMUDUR', '4105202006351041', '2018-11', '879', 1, 1, 0, '2018-06-29 09:19:24', '2018-06-29 09:19:24', NULL),
(12, 'Visa', 'MD MAHAMUDUR', '4105202006351041', '2018-11', '879', 1, 1, 0, '2018-06-29 09:23:59', '2018-06-29 09:23:59', NULL),
(13, 'Visa', 'MD MAHAMUDUR', '4105202006351041', '2018-11', '879', 1, 1, 0, '2018-06-29 09:42:08', '2018-06-29 09:42:08', NULL),
(14, 'Visa', 'MD MAHAMUDUR', '4105202006351041', '2018-11', '879', 1, 1, 0, '2018-06-29 09:43:10', '2018-06-29 09:43:10', NULL),
(15, 'Visa', 'MD MAHAMUDUR', '4105202006351041', '2018-11', '879', 1, 1, 0, '2018-06-29 10:25:05', '2018-06-29 10:25:05', NULL),
(16, 'Visa', 'MD MAHAMUDUR', '4105202006351041', '2018-11', '879', 1, 1, 0, '2018-06-29 11:58:49', '2018-06-29 11:58:49', NULL),
(17, 'Visa', 'MD MAHAMUDUR', '4105202006351041', '2018-11', '879', 1, 1, 0, '2018-06-29 12:08:00', '2018-06-29 12:08:00', NULL),
(18, 'Visa', 'MD MAHAMUDUR', '4105202006351041', '2018-11', '879', 1, 1, 0, '2018-06-29 12:34:08', '2018-06-29 12:34:08', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `lsp_cashier_punches`
--

CREATE TABLE `lsp_cashier_punches` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_type` int(11) NOT NULL,
  `in_date` date NOT NULL,
  `in_time` time NOT NULL,
  `out_date` date NOT NULL,
  `out_time` time NOT NULL,
  `store_id` int(11) NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `lsp_cashier_punches`
--

INSERT INTO `lsp_cashier_punches` (`id`, `user_id`, `name`, `user_type`, `in_date`, `in_time`, `out_date`, `out_time`, `store_id`, `created_by`, `updated_by`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 'Md Fahad Bhuyian', 0, '2018-04-13', '20:03:45', '2018-04-13', '22:59:44', 1, 0, 0, '2018-04-13 14:03:45', '2018-04-13 16:59:44', NULL),
(2, 1, 'Md Fahad Bhuyian', 0, '2018-04-14', '10:18:14', '2018-04-14', '18:19:03', 1, 0, 0, '2018-04-14 04:18:15', '2018-04-14 12:19:03', NULL),
(3, 1, 'Md Fahad Bhuyian', 0, '2018-04-16', '19:16:34', '2018-04-16', '21:38:34', 1, 0, 0, '2018-04-16 13:16:34', '2018-04-16 15:38:34', NULL),
(4, 1, 'Md Fahad Bhuyian', 0, '2018-04-17', '16:03:51', '0000-00-00', '00:00:00', 1, 0, 0, '2018-04-17 10:03:51', '2018-04-17 10:03:51', NULL),
(5, 1, 'Md Fahad Bhuyian', 0, '2018-04-29', '15:56:19', '2018-04-29', '20:16:20', 1, 0, 0, '2018-04-29 09:56:19', '2018-04-29 14:16:20', NULL),
(6, 1, 'Md Fahad Bhuyian', 0, '2018-04-30', '08:05:28', '2018-04-30', '22:39:51', 1, 0, 0, '2018-04-30 02:05:28', '2018-04-30 16:39:51', NULL),
(7, 1, 'Md Fahad Bhuyian', 0, '2018-05-01', '14:38:05', '2018-05-01', '22:33:32', 1, 0, 0, '2018-05-01 08:38:05', '2018-05-01 16:33:33', NULL),
(8, 1, 'Md Fahad Bhuyian', 0, '2018-05-02', '18:10:34', '2018-05-02', '19:23:39', 1, 0, 0, '2018-05-02 12:10:34', '2018-05-02 13:23:39', NULL),
(9, 1, 'Md Fahad Bhuyian', 0, '2018-05-03', '18:03:24', '2018-05-03', '19:40:24', 1, 0, 0, '2018-05-03 12:03:24', '2018-05-03 13:40:24', NULL),
(10, 1, 'Md Fahad Bhuyian', 0, '2018-05-04', '07:53:26', '2018-05-04', '18:36:16', 1, 0, 0, '2018-05-04 01:53:27', '2018-05-04 12:36:16', NULL),
(11, 1, 'Md Fahad Bhuyian', 0, '2018-05-05', '08:45:56', '2018-05-05', '17:18:45', 1, 0, 0, '2018-05-05 02:45:56', '2018-05-05 11:18:46', NULL),
(12, 1, 'Md Fahad Bhuyian', 0, '2018-05-10', '18:58:21', '0000-00-00', '00:00:00', 1, 0, 0, '2018-05-10 12:58:22', '2018-05-10 12:58:22', NULL),
(13, 1, 'Md Fahad Bhuyian', 0, '2018-05-11', '12:26:48', '0000-00-00', '00:00:00', 1, 0, 0, '2018-05-11 06:26:49', '2018-05-11 06:26:49', NULL),
(14, 1, 'Md Fahad Bhuyian', 0, '2018-05-15', '21:05:11', '0000-00-00', '00:00:00', 1, 0, 0, '2018-05-15 15:05:12', '2018-05-15 15:05:12', NULL),
(15, 1, 'Md Fahad Bhuyian', 0, '2018-05-16', '16:43:31', '0000-00-00', '00:00:00', 1, 0, 0, '2018-05-16 10:43:32', '2018-05-16 10:43:32', NULL),
(16, 1, 'Md Fahad Bhuyian', 0, '2018-05-18', '13:25:18', '2018-05-18', '16:52:49', 1, 0, 0, '2018-05-18 07:25:18', '2018-05-18 10:52:49', NULL),
(17, 4, 'Serajum Monira', 0, '2018-05-18', '17:50:10', '0000-00-00', '00:00:00', 0, 0, 0, '2018-05-18 11:50:10', '2018-05-18 11:50:10', NULL),
(18, 1, 'Md Fahad Bhuyian', 0, '2018-06-01', '08:50:17', '2018-06-01', '23:09:07', 1, 0, 0, '2018-06-01 02:50:18', '2018-06-01 17:09:07', NULL),
(19, 1, 'Md Fahad Bhuyian', 0, '2018-06-02', '15:02:32', '2018-06-02', '17:45:21', 1, 0, 0, '2018-06-02 09:02:32', '2018-06-02 11:45:21', NULL),
(20, 1, 'Md Fahad Bhuyian', 0, '2018-06-04', '20:38:37', '2018-06-04', '20:40:11', 1, 0, 0, '2018-06-04 14:38:37', '2018-06-04 14:40:11', NULL),
(21, 1, 'Md Fahad Bhuyian', 0, '2018-06-05', '05:44:16', '2018-06-05', '16:23:24', 1, 0, 0, '2018-06-04 23:44:16', '2018-06-05 10:23:24', NULL),
(22, 1, 'Md Fahad Bhuyian', 0, '2018-06-07', '18:26:08', '0000-00-00', '00:00:00', 1, 0, 0, '2018-06-07 12:26:09', '2018-06-07 12:26:09', NULL),
(23, 1, 'Md Fahad Bhuyian', 0, '2018-06-08', '09:02:21', '2018-06-08', '18:24:18', 1, 0, 0, '2018-06-08 03:02:21', '2018-06-08 12:24:18', NULL),
(24, 1, 'Md Fahad Bhuyian', 0, '2018-06-09', '20:28:02', '0000-00-00', '00:00:00', 1, 0, 0, '2018-06-09 14:28:02', '2018-06-09 14:28:02', NULL),
(25, 1, 'Md Fahad Bhuyian', 0, '2018-06-22', '15:11:39', '0000-00-00', '00:00:00', 1, 0, 0, '2018-06-22 09:11:39', '2018-06-22 09:11:39', NULL),
(26, 1, 'Md Fahad Bhuyian', 0, '2018-06-27', '18:55:58', '0000-00-00', '00:00:00', 1, 0, 0, '2018-06-27 12:55:59', '2018-06-27 12:55:59', NULL),
(27, 1, 'Md Fahad Bhuyian', 0, '2018-06-28', '19:44:51', '0000-00-00', '00:00:00', 1, 0, 0, '2018-06-28 13:44:51', '2018-06-28 13:44:51', NULL),
(28, 1, 'Md Fahad Bhuyian', 0, '2018-06-29', '08:16:17', '2018-06-29', '21:14:15', 1, 0, 0, '2018-06-29 02:16:17', '2018-06-29 15:14:15', NULL),
(29, 1, 'Md Fahad Bhuyian', 0, '2018-07-02', '19:04:21', '0000-00-00', '00:00:00', 1, 0, 0, '2018-07-02 13:04:21', '2018-07-02 13:04:21', NULL),
(30, 1, 'Md Fahad Bhuyian', 0, '2018-07-03', '19:19:41', '0000-00-00', '00:00:00', 1, 0, 0, '2018-07-03 13:19:41', '2018-07-03 13:19:41', NULL),
(31, 1, 'Md Fahad Bhuyian', 0, '2018-07-05', '20:18:38', '2018-07-05', '21:21:28', 1, 0, 0, '2018-07-05 14:18:39', '2018-07-05 15:21:28', NULL),
(32, 1, 'Md Fahad Bhuyian', 0, '2018-07-06', '08:48:23', '2018-07-06', '23:49:20', 1, 0, 0, '2018-07-06 02:48:23', '2018-07-06 17:49:20', NULL),
(33, 1, 'Md Fahad Bhuyian', 0, '2018-07-07', '20:10:08', '0000-00-00', '00:00:00', 1, 0, 0, '2018-07-07 14:10:09', '2018-07-07 14:10:09', NULL),
(34, 1, 'Md Fahad Bhuyian', 0, '2018-07-09', '20:24:39', '0000-00-00', '00:00:00', 1, 0, 0, '2018-07-09 14:24:39', '2018-07-09 14:24:39', NULL),
(35, 1, 'Md Fahad Bhuyian', 0, '2018-07-10', '18:05:37', '2018-07-10', '19:14:18', 1, 0, 0, '2018-07-10 12:05:37', '2018-07-10 13:14:18', NULL),
(36, 1, 'Md Fahad Bhuyian', 0, '2018-07-12', '19:27:35', '0000-00-00', '00:00:00', 1, 0, 0, '2018-07-12 13:27:35', '2018-07-12 13:27:35', NULL),
(37, 1, 'Md Fahad Bhuyian', 0, '2018-07-15', '19:49:43', '0000-00-00', '00:00:00', 1, 0, 0, '2018-07-15 13:49:43', '2018-07-15 13:49:43', NULL),
(38, 1, 'Md Fahad Bhuyian', 0, '2018-07-16', '18:43:40', '2018-07-16', '20:55:40', 1, 0, 0, '2018-07-16 12:43:40', '2018-07-16 14:55:41', NULL),
(39, 1, 'Md Fahad Bhuyian', 0, '2018-07-18', '20:50:49', '0000-00-00', '00:00:00', 1, 0, 0, '2018-07-18 14:50:50', '2018-07-18 14:50:50', NULL),
(40, 1, 'Md Fahad Bhuyian', 0, '2018-07-20', '22:10:59', '0000-00-00', '00:00:00', 1, 0, 0, '2018-07-20 16:10:59', '2018-07-20 16:10:59', NULL),
(41, 1, 'Md Fahad Bhuyian', 0, '2018-07-21', '14:53:51', '2018-07-21', '19:26:09', 1, 0, 0, '2018-07-21 08:53:51', '2018-07-21 13:26:09', NULL),
(42, 1, 'Md Fahad Bhuyian', 0, '2018-07-25', '20:07:42', '2018-07-25', '20:46:46', 1, 0, 0, '2018-07-25 14:07:43', '2018-07-25 14:46:46', NULL),
(43, 1, 'Md Fahad Bhuyian', 0, '2018-07-26', '19:41:57', '2018-07-26', '21:44:58', 1, 0, 0, '2018-07-26 13:41:57', '2018-07-26 15:44:58', NULL),
(44, 1, 'Md Fahad Bhuyian', 0, '2018-07-27', '09:32:15', '2018-07-27', '21:25:06', 1, 0, 0, '2018-07-27 03:32:15', '2018-07-27 15:25:06', NULL),
(45, 1, 'Md Fahad Bhuyian', 0, '2018-07-28', '08:59:24', '0000-00-00', '00:00:00', 1, 0, 0, '2018-07-28 02:59:24', '2018-07-28 02:59:24', NULL),
(46, 1, 'Md Fahad Bhuyian', 0, '2018-08-03', '19:30:57', '2018-08-03', '20:32:28', 1, 0, 0, '2018-08-03 13:30:57', '2018-08-03 14:32:28', NULL),
(47, 1, 'Md Fahad Bhuyian', 0, '2018-08-04', '08:20:43', '2018-08-04', '21:05:38', 1, 0, 0, '2018-08-04 02:20:43', '2018-08-04 15:05:38', NULL),
(48, 1, 'Md Fahad Bhuyian', 0, '2018-08-08', '19:11:19', '2018-08-08', '20:14:14', 1, 0, 0, '2018-08-08 13:11:20', '2018-08-08 14:14:14', NULL),
(49, 1, 'Md Fahad Bhuyian', 0, '2018-08-11', '19:15:05', '2018-08-11', '20:09:53', 1, 0, 0, '2018-08-11 13:15:05', '2018-08-11 14:09:54', NULL),
(50, 1, 'Md Fahad Bhuyian', 0, '2018-08-12', '09:57:27', '2018-08-12', '20:14:58', 1, 0, 0, '2018-08-12 03:57:27', '2018-08-12 14:14:58', NULL),
(51, 1, 'Md Fahad Bhuyian', 0, '2018-08-13', '09:50:33', '2018-08-13', '20:10:03', 1, 0, 0, '2018-08-13 03:50:33', '2018-08-13 14:10:03', NULL),
(52, 1, 'Md Fahad Bhuyian', 0, '2018-08-14', '20:24:35', '0000-00-00', '00:00:00', 1, 0, 0, '2018-08-14 14:24:35', '2018-08-14 14:24:35', NULL),
(53, 1, 'Md Fahad Bhuyian', 0, '2018-08-15', '08:13:10', '2018-08-15', '18:50:41', 1, 0, 0, '2018-08-15 02:13:10', '2018-08-15 12:50:42', NULL),
(54, 1, 'Md Fahad Bhuyian', 0, '2018-08-16', '19:46:48', '2018-08-16', '21:50:29', 1, 0, 0, '2018-08-16 13:46:49', '2018-08-16 15:50:29', NULL),
(55, 1, 'Md Fahad Bhuyian', 0, '2018-08-17', '08:25:11', '2018-08-17', '11:15:18', 1, 0, 0, '2018-08-17 02:25:11', '2018-08-17 05:15:18', NULL),
(56, 1, 'Md Fahad Bhuyian', 0, '2018-08-20', '19:37:04', '0000-00-00', '00:00:00', 1, 0, 0, '2018-08-20 13:37:04', '2018-08-20 13:37:04', NULL),
(57, 1, 'Md Fahad Bhuyian', 0, '2018-08-26', '18:59:14', '0000-00-00', '00:00:00', 1, 0, 0, '2018-08-26 12:59:14', '2018-08-26 12:59:14', NULL),
(58, 1, 'Md Fahad Bhuyian', 0, '2018-08-27', '07:37:28', '2018-08-27', '19:50:37', 1, 0, 0, '2018-08-27 01:37:28', '2018-08-27 13:50:38', NULL),
(59, 1, 'Md Fahad Bhuyian', 0, '2018-08-28', '07:40:28', '2018-08-28', '20:46:48', 1, 0, 0, '2018-08-28 01:40:29', '2018-08-28 14:46:49', NULL),
(60, 1, 'Md Fahad Bhuyian', 0, '2018-08-29', '19:53:54', '2018-08-29', '20:23:06', 1, 0, 0, '2018-08-29 13:53:54', '2018-08-29 14:23:07', NULL),
(61, 1, 'Md Fahad Bhuyian', 0, '2018-08-30', '06:11:38', '2018-08-30', '22:15:43', 1, 0, 0, '2018-08-30 00:11:38', '2018-08-30 16:15:43', NULL),
(62, 5, 'Fakhrul Islam', 3, '2018-08-30', '21:35:51', '2018-08-30', '21:36:15', 1, 0, 0, '2018-08-30 15:35:51', '2018-08-30 15:36:15', NULL),
(63, 1, 'Md Fahad Bhuyian', 1, '2018-08-31', '06:59:00', '2018-08-31', '19:08:10', 1, 0, 0, '2018-08-31 00:59:00', '2018-08-31 13:08:10', NULL),
(64, 6, 'Monmon', 32, '2018-08-31', '15:43:30', '2018-08-31', '15:47:42', 31, 0, 0, '2018-08-31 09:43:30', '2018-08-31 09:47:43', NULL),
(65, 7, 'Fakhrul Islam Talukder', 31, '2018-08-31', '15:46:04', '2018-08-31', '16:35:39', 31, 0, 0, '2018-08-31 09:46:04', '2018-08-31 10:35:39', NULL),
(66, 1, 'Md Fahad Bhuyian', 1, '2018-09-01', '18:40:28', '2018-09-01', '20:55:18', 1, 0, 0, '2018-09-01 12:40:29', '2018-09-01 14:55:18', NULL),
(67, 8, 'Test User', 2, '2018-09-01', '20:04:09', '2018-09-01', '20:53:45', 71, 0, 0, '2018-09-01 14:04:09', '2018-09-01 14:53:45', NULL),
(68, 1, 'Md Fahad Bhuyian', 1, '2018-09-02', '09:38:18', '2018-09-02', '20:53:57', 1, 0, 0, '2018-09-02 03:38:18', '2018-09-02 14:53:57', NULL),
(69, 2, 'Fakhrul', 2, '2018-09-02', '20:02:52', '0000-00-00', '00:00:00', 31, 0, 0, '2018-09-02 14:02:52', '2018-09-02 14:02:52', NULL),
(70, 1, 'Md Fahad Bhuyian', 1, '2018-09-03', '08:42:55', '2018-09-03', '18:55:46', 1, 0, 0, '2018-09-03 02:42:55', '2018-09-03 12:55:46', NULL),
(71, 2, 'Fakhrul', 2, '2018-09-03', '08:56:07', '2018-09-03', '18:59:51', 31, 0, 0, '2018-09-03 02:56:07', '2018-09-03 12:59:51', NULL),
(72, 1, 'Md Fahad Bhuyian', 1, '2018-09-04', '06:49:23', '2018-09-04', '19:59:12', 1, 0, 0, '2018-09-04 00:49:24', '2018-09-04 13:59:13', NULL),
(73, 2, 'Fakhrul', 2, '2018-09-04', '12:04:45', '2018-09-04', '20:25:43', 31, 0, 0, '2018-09-04 06:04:45', '2018-09-04 14:25:43', NULL),
(74, 1, 'Md Fahad Bhuyian', 1, '2018-09-05', '20:36:33', '0000-00-00', '00:00:00', 1, 0, 0, '2018-09-05 14:36:34', '2018-09-05 14:36:34', NULL),
(75, 1, 'Md Fahad Bhuyian', 1, '2018-09-06', '11:59:19', '2018-09-06', '21:04:44', 1, 0, 0, '2018-09-06 05:59:19', '2018-09-06 15:04:44', NULL),
(76, 2, 'Fakhrul', 2, '2018-09-06', '21:04:57', '0000-00-00', '00:00:00', 31, 0, 0, '2018-09-06 15:04:57', '2018-09-06 15:04:57', NULL),
(77, 1, 'Md Fahad Bhuyian', 1, '2018-09-07', '06:49:18', '2018-09-07', '13:49:11', 1, 0, 0, '2018-09-07 00:49:18', '2018-09-07 07:49:11', NULL),
(78, 1, 'Md Fahad Bhuyian', 1, '2018-09-08', '17:39:25', '2018-09-08', '18:00:09', 1, 0, 0, '2018-09-08 11:39:26', '2018-09-08 12:00:09', NULL),
(79, 1, 'Md Fahad Bhuyian', 1, '2018-09-14', '12:41:19', '2018-09-14', '21:08:52', 1, 0, 0, '2018-09-14 06:41:20', '2018-09-14 15:08:52', NULL),
(80, 1, 'Md Fahad Bhuyian', 1, '2018-09-17', '19:31:38', '2018-09-17', '19:33:09', 1, 0, 0, '2018-09-17 13:31:38', '2018-09-17 13:33:09', NULL),
(81, 1, 'Md Fahad Bhuyian', 1, '2018-09-18', '20:45:47', '2018-09-18', '20:57:51', 1, 0, 0, '2018-09-18 14:45:48', '2018-09-18 14:57:51', NULL),
(82, 1, 'Md Fahad Bhuyian', 1, '2018-09-19', '19:20:24', '2018-09-19', '19:28:14', 1, 0, 0, '2018-09-19 13:20:24', '2018-09-19 13:28:15', NULL),
(83, 1, 'Md Fahad Bhuyian', 1, '2018-09-20', '18:49:19', '2018-09-20', '22:07:13', 1, 0, 1, '2018-09-20 12:49:19', '2018-09-20 16:07:13', NULL),
(84, 1, 'Md Fahad Bhuyian', 1, '2018-09-20', '19:35:17', '2018-09-20', '23:00:00', 1, 1, 1, '2018-09-20 13:35:21', '2018-09-20 15:59:39', NULL),
(85, 1, 'Md Fahad Bhuyian', 1, '2018-09-20', '19:36:44', '2018-09-20', '20:27:35', 1, 1, 1, '2018-09-20 13:36:49', '2018-09-20 14:27:37', NULL),
(86, 2, 'Fakhrul', 2, '2018-09-20', '20:59:22', '2018-09-20', '20:59:22', 31, 1, 1, '2018-09-20 14:59:47', '2018-09-20 15:26:08', NULL),
(87, 1, 'Md Fahad Bhuyian', 1, '2018-09-25', '20:37:48', '0000-00-00', '00:00:00', 1, 1, 0, '2018-09-25 14:38:41', '2018-09-25 14:38:41', NULL),
(88, 1, 'Md Fahad Bhuyian', 1, '2018-10-15', '19:28:17', '2018-10-15', '19:32:51', 1, 0, 0, '2018-10-15 13:28:17', '2018-10-15 13:32:51', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `lsp_categories`
--

CREATE TABLE `lsp_categories` (
  `id` int(10) NOT NULL,
  `name` text COLLATE utf8mb4_unicode_ci,
  `product` int(11) NOT NULL DEFAULT '0',
  `store_id` int(11) NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `lsp_categories`
--

INSERT INTO `lsp_categories` (`id`, `name`, `product`, `store_id`, `created_by`, `updated_by`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'General', 1, 1, 1, 0, '2018-09-29 14:18:18', '2018-09-29 15:03:19', NULL),
(2, 'Device Parts', 0, 1, 1, 0, '2018-09-29 14:18:38', '2018-09-29 14:18:38', NULL),
(3, 'Iphone', 1, 1, 1, 0, '2018-09-29 14:18:46', '2018-11-30 16:55:51', NULL),
(4, 'Samsung', 0, 1, 1, 1, '2018-09-29 14:18:54', '2018-09-29 14:22:49', NULL),
(5, 'Repair', 0, 1, 1, 0, '2018-12-06 01:20:43', '2018-12-06 01:20:43', NULL),
(12, 'Repair', 0, 81, 1, 0, '2018-12-07 16:14:46', '2018-12-07 16:14:46', NULL),
(13, 'Ticket', 0, 1, 1, 0, '2018-12-23 21:31:56', '2018-12-23 21:31:56', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `lsp_close_drawers`
--

CREATE TABLE `lsp_close_drawers` (
  `id` int(10) NOT NULL,
  `opeing_time` datetime NOT NULL,
  `closing_time` datetime DEFAULT NULL,
  `opening_amount` float(10,2) DEFAULT '0.00',
  `closing_amount` float(10,2) DEFAULT '0.00',
  `store_id` int(11) NOT NULL DEFAULT '0',
  `created_by` int(11) NOT NULL DEFAULT '0',
  `updated_by` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `lsp_color_plates`
--

CREATE TABLE `lsp_color_plates` (
  `id` int(10) UNSIGNED NOT NULL,
  `color_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `color_value` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `lsp_color_plates`
--

INSERT INTO `lsp_color_plates` (`id`, `color_name`, `color_value`, `created_at`, `updated_at`) VALUES
(1, 'Primary Lighten 1', 'bg-primary bg-lighten-1', '2018-03-28 14:33:44', '2018-03-28 14:33:44'),
(2, 'Primary Lighten 2', 'bg-primary bg-lighten-2', '2018-03-28 14:33:44', '2018-03-28 14:33:44'),
(3, 'Primary Lighten 3', 'bg-primary bg-lighten-3', '2018-03-28 14:33:44', '2018-03-28 14:33:44'),
(4, 'Primary Lighten 4', 'bg-primary bg-lighten-4', '2018-03-28 14:33:44', '2018-03-28 14:33:44'),
(5, 'Primary Darken 1', 'bg-primary bg-darken-1', '2018-03-28 14:36:01', '2018-03-28 14:36:01'),
(6, 'Primary Darken 2', 'bg-primary bg-darken-2', '2018-03-28 14:36:01', '2018-03-28 14:36:01'),
(7, 'Primary Darken 3', 'bg-primary bg-darken-3', '2018-03-28 14:36:01', '2018-03-28 14:36:01'),
(8, 'Primary Darken 4', 'bg-primary bg-darken-4', '2018-03-28 14:36:01', '2018-03-28 14:36:01'),
(9, 'Primary Accent 1', 'bg-primary bg-accent-1', '2018-03-28 14:36:41', '2018-03-28 14:36:41'),
(10, 'Primary Accent 2', 'bg-primary bg-accent-2', '2018-03-28 14:36:41', '2018-03-28 14:36:41'),
(11, 'Primary Accent 3', 'bg-primary bg-accent-3', '2018-03-28 14:36:41', '2018-03-28 14:36:41'),
(12, 'Primary Accent 4', 'bg-primary bg-accent-4', '2018-03-28 14:36:41', '2018-03-28 14:36:41'),
(13, 'Purple Lighten 1', 'bg-purple bg-lighten-1', '2018-03-28 14:38:20', '2018-03-28 14:38:20'),
(14, 'Purple Lighten 2', 'bg-purple bg-lighten-2', '2018-03-28 14:38:20', '2018-03-28 14:38:20'),
(15, 'Purple Lighten 3', 'bg-purple bg-lighten-3', '2018-03-28 14:38:21', '2018-03-28 14:38:21'),
(16, 'Purple Lighten 4', 'bg-purple bg-lighten-4', '2018-03-28 14:38:21', '2018-03-28 14:38:21'),
(17, 'Purple Darken 1', 'bg-purple bg-darken-1', '2018-03-28 14:38:54', '2018-03-28 14:38:54'),
(18, 'Purple Darken 2', 'bg-purple bg-darken-2', '2018-03-28 14:38:55', '2018-03-28 14:38:55'),
(19, 'Purple Darken 3', 'bg-purple bg-darken-3', '2018-03-28 14:38:55', '2018-03-28 14:38:55'),
(20, 'Purple Darken 4', 'bg-purple bg-darken-4', '2018-03-28 14:38:55', '2018-03-28 14:38:55'),
(21, 'Purple Accent 1', 'bg-purple bg-accent-1', '2018-03-28 14:39:30', '2018-03-28 14:39:30'),
(22, 'Purple Accent 2', 'bg-purple bg-accent-2', '2018-03-28 14:39:30', '2018-03-28 14:39:30'),
(23, 'Purple Accent 3', 'bg-purple bg-accent-3', '2018-03-28 14:39:30', '2018-03-28 14:39:30'),
(24, 'Purple Accent 4', 'bg-purple bg-accent-4', '2018-03-28 14:39:30', '2018-03-28 14:39:30'),
(25, 'Deep Purple Lighten 1', 'bg-deep-purple bg-lighten-1', '2018-03-28 14:40:58', '2018-03-28 14:40:58'),
(26, 'Deep Purple Lighten 2', 'bg-deep-purple bg-lighten-2', '2018-03-28 14:40:58', '2018-03-28 14:40:58'),
(27, 'Deep Purple Lighten 3', 'bg-deep-purple bg-lighten-3', '2018-03-28 14:40:58', '2018-03-28 14:40:58'),
(28, 'Deep Purple Lighten 4', 'bg-deep-purple bg-lighten-4', '2018-03-28 14:40:58', '2018-03-28 14:40:58'),
(29, 'Deep Purple Darken 1', 'bg-deep-purple bg-darken-1', '2018-03-28 14:41:53', '2018-03-28 14:41:53'),
(30, 'Deep Purple Darken 2', 'bg-deep-purple bg-darken-2', '2018-03-28 14:41:53', '2018-03-28 14:41:53'),
(31, 'Deep Purple Darken 3', 'bg-deep-purple bg-darken-3', '2018-03-28 14:41:54', '2018-03-28 14:41:54'),
(32, 'Deep Purple Darken 4', 'bg-deep-purple bg-darken-4', '2018-03-28 14:41:54', '2018-03-28 14:41:54'),
(33, 'Deep Purple Accent 1', 'bg-deep-purple bg-accent-1', '2018-03-28 14:42:28', '2018-03-28 14:42:28'),
(34, 'Deep Purple Accent 2', 'bg-deep-purple bg-accent-2', '2018-03-28 14:42:28', '2018-03-28 14:42:28'),
(35, 'Deep Purple Accent 3', 'bg-deep-purple bg-accent-3', '2018-03-28 14:42:28', '2018-03-28 14:42:28'),
(36, 'Deep Purple Accent 4', 'bg-deep-purple bg-accent-4', '2018-03-28 14:42:29', '2018-03-28 14:42:29'),
(37, 'Red Lighten 1', 'bg-red bg-lighten-1', '2018-03-28 14:43:10', '2018-03-28 14:43:10'),
(38, 'Red Lighten 2', 'bg-red bg-lighten-2', '2018-03-28 14:43:10', '2018-03-28 14:43:10'),
(39, 'Red Lighten 3', 'bg-red bg-lighten-3', '2018-03-28 14:43:10', '2018-03-28 14:43:10'),
(40, 'Red Lighten 4', 'bg-red bg-lighten-4', '2018-03-28 14:43:10', '2018-03-28 14:43:10'),
(41, 'Red Darken 1', 'bg-red bg-darken-1', '2018-03-28 14:43:36', '2018-03-28 14:43:36'),
(42, 'Red Darken 2', 'bg-red bg-darken-2', '2018-03-28 14:43:36', '2018-03-28 14:43:36'),
(43, 'Red Darken 3', 'bg-red bg-darken-3', '2018-03-28 14:43:36', '2018-03-28 14:43:36'),
(44, 'Red Darken 4', 'bg-red bg-darken-4', '2018-03-28 14:43:36', '2018-03-28 14:43:36'),
(45, 'Red Accent 1', 'bg-red bg-accent-1', '2018-03-28 14:44:07', '2018-03-28 14:44:07'),
(46, 'Red Accent 2', 'bg-red bg-accent-2', '2018-03-28 14:44:07', '2018-03-28 14:44:07'),
(47, 'Red Accent 3', 'bg-red bg-accent-3', '2018-03-28 14:44:07', '2018-03-28 14:44:07'),
(48, 'Red Accent 4', 'bg-red bg-accent-4', '2018-03-28 14:44:07', '2018-03-28 14:44:07'),
(49, 'Pink Lighten 1', 'bg-pink bg-lighten-1', '2018-03-28 14:45:09', '2018-03-28 14:45:09'),
(50, 'Pink Lighten 2', 'bg-pink bg-lighten-2', '2018-03-28 14:45:09', '2018-03-28 14:45:09'),
(51, 'Pink Lighten 3', 'bg-pink bg-lighten-3', '2018-03-28 14:45:09', '2018-03-28 14:45:09'),
(52, 'Pink Lighten 4', 'bg-pink bg-lighten-4', '2018-03-28 14:45:09', '2018-03-28 14:45:09'),
(53, 'Pink Darken 1', 'bg-pink bg-darken-1', '2018-03-28 14:45:32', '2018-03-28 14:45:32'),
(54, 'Pink Darken 2', 'bg-pink bg-darken-2', '2018-03-28 14:45:32', '2018-03-28 14:45:32'),
(55, 'Pink Darken 3', 'bg-pink bg-darken-3', '2018-03-28 14:45:32', '2018-03-28 14:45:32'),
(56, 'Pink Darken 4', 'bg-pink bg-darken-4', '2018-03-28 14:45:32', '2018-03-28 14:45:32'),
(57, 'Pink Accent 1', 'bg-pink bg-accent-1', '2018-03-28 14:46:05', '2018-03-28 14:46:05'),
(58, 'Pink Accent 2', 'bg-pink bg-accent-2', '2018-03-28 14:46:05', '2018-03-28 14:46:05'),
(59, 'Pink Accent 3', 'bg-pink bg-accent-3', '2018-03-28 14:46:05', '2018-03-28 14:46:05'),
(60, 'Pink Accent 4', 'bg-pink bg-accent-4', '2018-03-28 14:46:05', '2018-03-28 14:46:05'),
(61, 'Orange Lighten 1', 'bg-orange bg-lighten-1', '2018-03-28 14:47:19', '2018-03-28 14:47:19'),
(62, 'Orange Lighten 2', 'bg-orange bg-lighten-2', '2018-03-28 14:47:19', '2018-03-28 14:47:19'),
(63, 'Orange Lighten 3', 'bg-orange bg-lighten-3', '2018-03-28 14:47:19', '2018-03-28 14:47:19'),
(64, 'Orange Lighten 4', 'bg-orange bg-lighten-4', '2018-03-28 14:47:19', '2018-03-28 14:47:19'),
(65, 'Orange Darken 1', 'bg-orange bg-darken-1', '2018-03-28 14:47:50', '2018-03-28 14:47:50'),
(66, 'Orange Darken 2', 'bg-orange bg-darken-2', '2018-03-28 14:47:50', '2018-03-28 14:47:50'),
(67, 'Orange Darken 3', 'bg-orange bg-darken-3', '2018-03-28 14:47:50', '2018-03-28 14:47:50'),
(68, 'Orange Darken 4', 'bg-orange bg-darken-4', '2018-03-28 14:47:50', '2018-03-28 14:47:50'),
(69, 'Orange Accent 1', 'bg-orange bg-accent-1', '2018-03-28 14:48:21', '2018-03-28 14:48:21'),
(70, 'Orange Accent 2', 'bg-orange bg-accent-2', '2018-03-28 14:48:21', '2018-03-28 14:48:21'),
(71, 'Orange Accent 3', 'bg-orange bg-accent-3', '2018-03-28 14:48:21', '2018-03-28 14:48:21'),
(72, 'Orange Accent 4', 'bg-orange bg-accent-4', '2018-03-28 14:48:21', '2018-03-28 14:48:21'),
(73, 'Deep Orange Lighten 1', 'bg-deep-orange bg-lighten-1', '2018-03-28 14:48:45', '2018-03-28 14:48:45'),
(74, 'Deep Orange Lighten 2', 'bg-deep-orange bg-lighten-2', '2018-03-28 14:48:46', '2018-03-28 14:48:46'),
(75, 'Deep Orange Lighten 3', 'bg-deep-orange bg-lighten-3', '2018-03-28 14:48:46', '2018-03-28 14:48:46'),
(76, 'Deep Orange Lighten 4', 'bg-deep-orange bg-lighten-4', '2018-03-28 14:48:46', '2018-03-28 14:48:46'),
(77, 'Deep Orange Darken 1', 'bg-deep-orange bg-darken-1', '2018-03-28 14:49:43', '2018-03-28 14:49:43'),
(78, 'Deep Orange Darken 2', 'bg-deep-orange bg-darken-2', '2018-03-28 14:49:43', '2018-03-28 14:49:43'),
(79, 'Deep Orange Darken 3', 'bg-deep-orange bg-darken-3', '2018-03-28 14:49:43', '2018-03-28 14:49:43'),
(80, 'Deep Orange Darken 4', 'bg-deep-orange bg-darken-4', '2018-03-28 14:49:43', '2018-03-28 14:49:43'),
(81, 'Deep Orange Accent 1', 'bg-deep-orange bg-accent-1', '2018-03-28 14:51:07', '2018-03-28 14:51:07'),
(82, 'Deep Orange Accent 2', 'bg-deep-orange bg-accent-2', '2018-03-28 14:51:07', '2018-03-28 14:51:07'),
(83, 'Deep Orange Accent 3', 'bg-deep-orange bg-accent-3', '2018-03-28 14:51:07', '2018-03-28 14:51:07'),
(84, 'Deep Orange Accent 4', 'bg-deep-orange bg-accent-4', '2018-03-28 14:51:07', '2018-03-28 14:51:07'),
(85, 'Danger Lighten 1', 'bg-danger bg-lighten-1', '2018-03-28 14:52:37', '2018-03-28 14:52:37'),
(86, 'Danger Lighten 2', 'bg-danger bg-lighten-2', '2018-03-28 14:52:37', '2018-03-28 14:52:37'),
(87, 'Danger Lighten 3', 'bg-danger bg-lighten-3', '2018-03-28 14:52:37', '2018-03-28 14:52:37'),
(88, 'Danger Lighten 4', 'bg-danger bg-lighten-4', '2018-03-28 14:52:37', '2018-03-28 14:52:37'),
(89, 'Danger Darken 1', 'bg-danger bg-darken-1', '2018-03-28 14:53:30', '2018-03-28 14:53:30'),
(90, 'Danger Darken 2', 'bg-danger bg-darken-2', '2018-03-28 14:53:30', '2018-03-28 14:53:30'),
(91, 'Danger Darken 3', 'bg-danger bg-darken-3', '2018-03-28 14:53:30', '2018-03-28 14:53:30'),
(92, 'Danger Darken 4', 'bg-danger bg-darken-4', '2018-03-28 14:53:30', '2018-03-28 14:53:30'),
(93, 'Danger Accent 1', 'bg-danger bg-accent-1', '2018-03-28 14:54:30', '2018-03-28 14:54:30'),
(94, 'Danger Accent 2', 'bg-danger bg-accent-2', '2018-03-28 14:54:30', '2018-03-28 14:54:30'),
(95, 'Danger Accent 3', 'bg-danger bg-accent-3', '2018-03-28 14:54:30', '2018-03-28 14:54:30'),
(96, 'Danger Accent 4', 'bg-danger bg-accent-4', '2018-03-28 14:54:30', '2018-03-28 14:54:30'),
(97, 'Default Lighten 1', 'bg-info bg-lighten-1', '2018-04-10 15:32:04', '2018-04-10 15:32:04'),
(98, 'Default Lighten 2', 'bg-info bg-lighten-2', '2018-04-10 15:32:04', '2018-04-10 15:32:04'),
(99, 'Default Lighten 3', 'bg-info bg-lighten-3', '2018-04-10 15:32:04', '2018-04-10 15:32:04'),
(100, 'Default Lighten 4', 'bg-info bg-lighten-4', '2018-04-10 15:32:04', '2018-04-10 15:32:04'),
(101, 'Default Darken 1', 'bg-info bg-darken-1', '2018-04-10 15:32:54', '2018-04-10 15:32:54'),
(102, 'Default Darken 2', 'bg-info bg-darken-2', '2018-04-10 15:32:54', '2018-04-10 15:32:54'),
(103, 'Default Darken 3', 'bg-info bg-darken-3', '2018-04-10 15:32:54', '2018-04-10 15:32:54'),
(104, 'Default Darken 4', 'bg-info bg-darken-4', '2018-04-10 15:32:54', '2018-04-10 15:32:54'),
(105, 'Default Accent 1', 'bg-info bg-accent-1', '2018-04-10 15:33:41', '2018-04-10 15:33:41'),
(106, 'Default Accent 2', 'bg-info bg-accent-2', '2018-04-10 15:33:41', '2018-04-10 15:33:41'),
(107, 'Default Accent 3', 'bg-info bg-accent-3', '2018-04-10 15:33:41', '2018-04-10 15:33:41'),
(108, 'Default Accent 4', 'bg-info bg-accent-4', '2018-04-10 15:33:41', '2018-04-10 15:33:41');

-- --------------------------------------------------------

--
-- Table structure for table `lsp_counter_displays`
--

CREATE TABLE `lsp_counter_displays` (
  `id` int(10) UNSIGNED NOT NULL,
  `session_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `user_id` int(10) DEFAULT '0',
  `counter_status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0=Offline, 1 =online',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `lsp_counter_displays`
--

INSERT INTO `lsp_counter_displays` (`id`, `session_id`, `user_id`, `counter_status`, `created_at`, `updated_at`) VALUES
(1, 'szfwHcNu5yQoDiUpSqU8M0iOx2eebiKa7L6D2rnp', 1, 1, '2018-04-06 19:46:51', '2019-01-02 12:28:07'),
(2, '1UiNgHRNWfSGNjCFjqrZ2wrQyaf3xnxUbNsdML3J', 5, 0, '2018-08-30 15:35:52', '2018-08-30 15:35:52'),
(3, 'ZAGbJqdgavHJo7ZPS4bEFQOGjx69QtgL9z1rrnzI', 6, 0, '2018-08-31 09:43:30', '2018-08-31 09:47:30'),
(4, 'zD048zOnbwNR2W8MumVmU5uwTqKZ7jivI5gLHZTQ', 7, 0, '2018-08-31 09:46:04', '2018-08-31 10:17:05'),
(5, 'vosY8QzZEcAQIQEFsbRLIyjNZumYB3YyVdvPJ0B4', 8, 0, '2018-09-01 14:04:09', '2018-09-01 14:04:09'),
(6, 'ofYywRxijiQHf70LgGiDn4d8N3ryOKwetB8yYOqa', 2, 0, '2018-09-02 14:02:53', '2018-09-06 15:04:58'),
(7, '6mWJQIHxKo97Y9H7iifTwZpW9TaRLDG4c6B6wXkJ', 9, 0, '2018-12-07 11:44:18', '2018-12-07 11:44:18');

-- --------------------------------------------------------

--
-- Table structure for table `lsp_counter_display_authorized_p_cs`
--

CREATE TABLE `lsp_counter_display_authorized_p_cs` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `user_pc_ip` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_pc_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `store_id` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `lsp_counter_display_authorized_p_cs`
--

INSERT INTO `lsp_counter_display_authorized_p_cs` (`id`, `user_id`, `user_pc_ip`, `user_pc_name`, `store_id`, `created_by`, `updated_by`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, '192.168.0.5', '1', 13, 1, 1, '2018-04-07 10:25:03', '2018-04-07 10:27:59', NULL),
(2, 1, '192.168.0.136', '2', 13, 1, NULL, '2018-04-07 11:26:18', '2018-04-07 11:26:18', NULL),
(3, 1, '192.168.0.3', '1', 13, 1, 1, '2018-04-10 13:08:17', '2018-04-10 13:08:34', NULL),
(4, 1, '::1', '1', 13, 1, NULL, '2018-04-12 18:27:10', '2018-04-12 18:27:10', NULL),
(5, 1, '123', 'sadas', 1, 1, NULL, '2018-08-31 12:57:54', '2018-08-31 12:57:54', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `lsp_customers`
--

CREATE TABLE `lsp_customers` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_invoice_no` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `lsp_customers`
--

INSERT INTO `lsp_customers` (`id`, `name`, `address`, `phone`, `email`, `last_invoice_no`, `store_id`, `created_by`, `updated_by`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Rakib', '', '', '', 0, 0, 0, 0, '2018-02-14 13:33:32', '2018-02-14 13:33:32', NULL),
(2, 'Brand Custom-S', 'Brand Custom-S', 'Brand Custom-S', 'Brand Custom-S', 0, 0, 0, 0, '2018-02-14 13:39:26', '2018-02-14 13:39:26', NULL),
(3, 'Brand Custom-S', 'asdas', '01860748020', 'f.bhuyian@gmail.com', 0, 0, 0, 0, '2018-02-14 13:42:17', '2018-02-14 13:42:17', NULL),
(4, 'Fahad Bhuyian', 'asdas', '01860748020', 'mdmahamodurzaman@gmail.com', 0, 13, 1, 1, '2018-02-14 14:05:02', '2018-02-14 15:57:29', '2018-02-14 15:57:29'),
(5, 'Brand Custom-S', 'asdas', '01860748020', 'fakhrul@gmail.com', 1523310292, 13, 1, 1, '2018-02-14 14:32:57', '2018-04-09 16:35:44', NULL),
(6, 'Wireless Geeks', '15011 E. 8 Mile Rd', '5863334005', 'na@na', 1523303303, 13, 1, 0, '2018-02-15 14:26:49', '2018-04-09 15:44:51', NULL),
(7, 'Wireless Geeks', '15011 E. 8 Mile Rd', '5863334405', 'quote@geekbuyback.com', 1523387430, 13, 1, 0, '2018-02-15 14:27:38', '2018-04-10 14:37:25', NULL),
(8, 'iGeek Eastpointe', '15011 E. 8 Mile Rd', '111111111', 'sales@igeekrepaircenter.com', 1523220876, 13, 1, 0, '2018-02-15 14:29:49', '2018-04-08 15:04:56', NULL),
(9, 'Rami Sprint', '29920 Southfield Rd.', '2485359679', 'pcs727@mypcsexperts.com', 1521756122, 13, 1, 0, '2018-02-15 14:31:22', '2018-03-22 16:23:29', NULL),
(10, 'iGeek Southfield', '28935 Southfield Rd.', '5867468101', 'none@none.com', 1520279304, 13, 1, 0, '2018-02-15 14:32:16', '2018-03-05 13:48:24', NULL),
(11, 'iGeek Toledo', '123 Street', '11111', 'Na@Na.com', 0, 13, 1, 0, '2018-02-15 14:34:17', '2018-02-15 14:34:17', NULL),
(12, 'Marlon B. JR', '16810 Steel St. Detroit, Mi 48235', '2485250011', 'itechheroesllc@gmail.com', 0, 13, 1, 0, '2018-02-15 14:35:36', '2018-02-15 14:35:36', NULL),
(13, 'Eddie Abro', '7 Van Dyke', '2485613838', 'metropcs@gmail.com', 1520278896, 13, 1, 0, '2018-02-15 15:23:43', '2018-03-05 13:41:37', NULL),
(14, 'Marcella Zoma', '123 Street', '11111111', 'Na@Na', 0, 13, 1, 0, '2018-02-15 15:29:16', '2018-02-15 15:29:16', NULL),
(15, 'Mazba', '123 Street', '111111111', 'Na@na', 1520278925, 13, 1, 0, '2018-02-15 15:30:04', '2018-03-05 13:42:05', NULL),
(16, 'Platinum Wireless', '13 and hoover', '1111', 'na@na', 0, 13, 1, 0, '2018-02-15 15:31:02', '2018-02-15 15:31:02', NULL),
(17, 'Platinum Wireless', 'na', '111111', 'Na@Na', 0, 13, 1, 0, '2018-02-15 15:32:03', '2018-02-15 15:32:03', NULL),
(18, 'Laith Metro PCS', '8000 w outer dr', '5867473930', 'Laith@na.com', 1520263716, 13, 1, 0, '2018-02-15 15:33:00', '2018-03-05 09:28:36', NULL),
(19, 'Brian Phone Resque', 'Na', '11111', 'na@na', 0, 13, 1, 0, '2018-02-15 15:34:11', '2018-02-15 15:34:11', NULL),
(20, 'Mazba', 'Na', '23454345345', 'na@na', 0, 13, 1, 0, '2018-02-15 15:35:25', '2018-02-15 15:35:25', NULL),
(21, 'Geek BuyBack', '1820 E 11 Mile Rd', '2488407003', 'quote@geekbuyback.com', 0, 13, 1, 0, '2018-02-15 15:36:45', '2018-02-15 15:36:45', NULL),
(22, 'Geek BuyBack', 'Na', '1111111', 'na@na', 0, 13, 1, 0, '2018-02-15 15:37:50', '2018-02-15 15:37:50', NULL),
(23, 'Laith Metro-PCS', '8000 w outer dr', '2484167746', 'metropcs@gmail.com', 0, 13, 1, 0, '2018-02-15 15:38:50', '2018-02-15 15:38:50', NULL),
(24, 'Brand Custom-S', 'asdas', '01860748020', 'f.bhuyian@gmail.com', 0, 13, 1, 0, '2018-03-03 13:09:34', '2018-03-03 13:09:52', '2018-03-03 13:09:52'),
(25, 'simpleretailpos', 'asdas', '01860748020', 'mdmahamodurzaman@gmail.com', 0, 13, 1, 0, '2018-03-04 15:20:39', '2018-03-04 15:20:39', NULL),
(26, 'simpleretailpo1s', 'asdas', '01860748020', 'fahad@gmail.com', 0, 13, 1, 0, '2018-03-05 14:42:35', '2018-03-05 14:42:35', NULL),
(27, 'CHEF’S SPECIAL DISHES', 'Test Address', '01860748020', 'f.bhuyian@gmail.com', 1545944137, 1, 1, 0, '2018-04-13 16:41:52', '2018-12-27 14:56:27', NULL),
(28, 'MD MAHAMUDUR Zaman Bhuyan', '3A, 20/2, Shorno Kunzo, LTD 1, Mohammadpur', '01860748020', 'f.bhuyian@gmail.com', 1546462596, 1, 1, 0, '2018-04-30 18:36:58', '2019-01-02 14:58:16', NULL),
(29, 'MD MAHAMUDUR Zaman Bhuyan', '3A, 20/2, Shorno Kunzo, LTD 1, Mohammadpur', '01860748020', 'f.bhuyian@gmail.com', 1546462247, 1, 1, 0, '2018-04-30 18:40:29', '2019-01-02 14:51:59', NULL),
(30, 'MD MAHAMUDUR Zaman Bhuyan', '3A, 20/2, Shorno Kunzo, LTD 1, Mohammadpur', '01860748020', 'f.bhuyian@gmail.com', 1532725259, 1, 1, 0, '2018-04-30 18:41:16', '2018-07-27 15:07:55', NULL),
(31, 'MD MAHAMUDUR Zaman Bhuyan', '3A, 20/2, Shorno Kunzo, LTD 1, Mohammadpur', '01860748020', 'f.bhuyian@gmail.com', 0, 1, 1, 0, '2018-04-30 18:42:55', '2018-04-30 18:42:55', NULL),
(32, 'MD MAHAMUDUR Zaman Bhuyan', '3A, 20/2, Shorno Kunzo, LTD 1, Mohammadpur', '01860748020', 'f.bhuyian@gmail.com', 0, 1, 1, 0, '2018-04-30 18:43:27', '2018-04-30 18:43:27', NULL),
(33, 'MD MAHAMUDUR Zaman Bhuyan', '3A, 20/2, Shorno Kunzo, LTD 1, Mohammadpur', '01860748020', 'f.bhuyian@gmail.com', 1536959333, 1, 1, 0, '2018-04-30 19:07:34', '2018-09-14 15:09:25', NULL),
(34, 'MD MAHAMUDUR Zaman Bhuyan', '3A, 20/2, Shorno Kunzo, LTD 1, Mohammadpur', '01860748020', 'f.bhuyian@gmail.com', 0, 1, 1, 0, '2018-04-30 19:08:51', '2018-04-30 19:08:51', NULL),
(35, 'MD MAHAMUDUR Zaman Bhuyan', '3A, 20/2, Shorno Kunzo, LTD 1, Mohammadpur', '01860748020', 'f.bhuyian@gmail.com', 0, 1, 1, 0, '2018-04-30 19:10:17', '2018-04-30 19:10:17', NULL),
(36, 'MD MAHAMUDUR Zaman Bhuyan', '3A, 20/2, Shorno Kunzo, LTD 1, Mohammadpur', '01860748020', 'f.bhuyian@gmail.com', 1532724288, 1, 1, 0, '2018-04-30 19:11:33', '2018-07-27 14:59:03', NULL),
(41, 'Demo Name 1', 'Demo Address', '555-555-555', 'info@company.com', 1530306106, 1, 1, 0, '2018-05-01 17:05:29', '2018-06-29 15:01:58', NULL),
(42, 'Demo Name 2', 'Demo Address', '555-555-555', 'info@company.com', 0, 1, 1, 0, '2018-05-01 17:05:29', '2018-05-01 17:05:29', NULL),
(43, 'Demo Name 3', 'Demo Address', '555-555-555', 'info@company.com', 1530287318, 1, 1, 0, '2018-05-01 17:05:29', '2018-06-29 09:48:49', NULL),
(44, 'Demo Name 4', 'Demo Address', '555-555-555', 'info@company.com', 0, 1, 1, 0, '2018-05-01 17:05:29', '2018-05-01 17:05:29', NULL),
(45, 'Demo Name 1', 'Demo Address', '555-555-555', 'info@company.com', 0, 1, 1, 0, '2018-05-01 17:06:19', '2018-05-01 17:06:19', NULL),
(46, 'Demo Name 2', 'Demo Address', '555-555-555', 'info@company.com', 0, 1, 1, 0, '2018-05-01 17:06:19', '2018-05-01 17:06:19', NULL),
(47, 'Demo Name 3', 'Demo Address', '555-555-555', 'info@company.com', 0, 1, 1, 0, '2018-05-01 17:06:19', '2018-05-01 17:06:19', NULL),
(48, 'Demo Name 4', 'Demo Address', '555-555-555', 'info@company.com', 0, 1, 1, 0, '2018-05-01 17:06:19', '2018-05-01 17:06:19', NULL),
(49, 'Test Customer 1', '1', '01860748020', 'f.bhuyian@gmail.com', 0, 1, 1, 0, '2018-05-01 17:21:40', '2018-05-01 17:21:40', NULL),
(50, 'Test Customer 1000', '1', '01860748020', 'f.bhuyian@gmail.com', 1536954202, 1, 1, 0, '2018-05-01 17:28:23', '2018-09-14 13:43:44', NULL),
(51, 'Test Customer 2000', '1', '01860748020', 'f.bhuyian@gmail.com', 0, 1, 1, 0, '2018-05-01 17:32:13', '2018-05-01 17:32:13', NULL),
(52, 'Test Customer 2003', '1', '01860748020', 'f.bhuyian@gmail.com', 0, 1, 1, 0, '2018-05-01 17:35:20', '2018-05-01 17:35:20', NULL),
(53, 'dasd', 'sadsad', 'sadsad', 'sadsad', 1535730471, 31, 7, 0, '2018-08-31 09:46:56', '2018-08-31 09:48:05', NULL),
(54, 'Test Lead Cus', 'Test Lead Cus', '01860748020', 'f.bhuyian@gmail.com', 0, 1, 1, 0, '2018-09-28 16:46:34', '2018-09-28 16:46:34', NULL),
(55, 'MD MAHAMUDUR Zaman Bhuyan', '3A, 20/2, Shorno Kunzo, LTD 1, Mohammadpur', '1860748020', 'f.bhuyian@gmail.com', 0, 0, 0, 0, '2019-01-01 05:23:51', '2019-01-01 05:23:51', NULL),
(56, 'MD MAHAMUDUR Zaman Bhuyan', '3A, 20/2, Shorno Kunzo, LTD 1, Mohammadpur', '1860748020', 'f.bhuyian@gmail.com', 0, 0, 0, 0, '2019-01-01 05:24:10', '2019-01-01 05:24:10', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `lsp_customer_invoice_emails`
--

CREATE TABLE `lsp_customer_invoice_emails` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `invoice_id` int(11) NOT NULL,
  `invoice_send` tinyint(1) NOT NULL DEFAULT '0',
  `store_id` int(11) NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `lsp_customer_invoice_emails`
--

INSERT INTO `lsp_customer_invoice_emails` (`id`, `name`, `email`, `invoice_id`, `invoice_send`, `store_id`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'MURGH MASALLA', 'mdmahamodurzaman@gmail.com', 1523303303, 0, 13, 1, 0, '2018-04-09 15:29:04', '2018-04-09 15:29:04'),
(2, 'MURGH MASALLA', 'f.bhuyian@gmail.com', 1523303303, 0, 13, 1, 0, '2018-04-09 15:44:26', '2018-04-09 15:44:26'),
(3, 'MURGH MASALLA', 'f.bhuyian@gmail.com', 1523310292, 0, 13, 1, 0, '2018-04-09 15:59:26', '2018-04-09 15:59:26');

-- --------------------------------------------------------

--
-- Table structure for table `lsp_customer_leads`
--

CREATE TABLE `lsp_customer_leads` (
  `id` int(10) UNSIGNED NOT NULL,
  `customer_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lead_info` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `store_id` int(11) NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `lsp_customer_leads`
--

INSERT INTO `lsp_customer_leads` (`id`, `customer_id`, `name`, `address`, `phone`, `email`, `lead_info`, `store_id`, `created_by`, `updated_by`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 54, 'Test Lead Cus', 'Test Lead Cus', '01860748020', 'f.bhuyian@gmail.com', 'Test Lead', 1, 1, 1, '2018-09-28 16:46:34', '2018-09-28 16:55:28', '2018-09-28 16:55:28');

-- --------------------------------------------------------

--
-- Table structure for table `lsp_departments`
--

CREATE TABLE `lsp_departments` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `store_id` int(11) NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_by` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `lsp_departments`
--

INSERT INTO `lsp_departments` (`id`, `name`, `store_id`, `created_by`, `updated_by`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Customer Service', 1, 1, 0, '2018-09-02 05:07:57', '2018-09-02 05:07:57', '0000-00-00 00:00:00'),
(2, 'Sales', 1, 1, 1, '2018-09-02 11:08:56', '2018-09-02 05:08:08', '0000-00-00 00:00:00'),
(3, 'Technial Support', 1, 1, 0, '2018-09-02 05:08:14', '2018-09-02 05:08:14', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `lsp_event_calenders`
--

CREATE TABLE `lsp_event_calenders` (
  `id` int(10) UNSIGNED NOT NULL,
  `event_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `event_url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `event_start_date` date DEFAULT NULL,
  `event_start_time` time DEFAULT NULL,
  `event_end_date` date DEFAULT NULL,
  `event_end_time` time DEFAULT NULL,
  `store_id` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `lsp_event_calenders`
--

INSERT INTO `lsp_event_calenders` (`id`, `event_name`, `event_url`, `event_start_date`, `event_start_time`, `event_end_date`, `event_end_time`, `store_id`, `created_by`, `updated_by`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Bridal Perfects', 'http://localhost/simplepos/public/event/calender/create', '2012-05-18', '12:12:00', '2012-05-18', '14:12:00', 0, NULL, NULL, '2018-05-18 13:40:02', '2018-05-18 15:52:30', NULL),
(2, 'Bridal', 'http://localhost/simplepos/public/event/calender/create', '2012-05-18', '12:12:00', '2012-05-18', '14:12:00', 0, NULL, NULL, '2018-05-18 13:42:19', '2018-05-18 14:54:17', '2018-05-18 14:54:17'),
(3, 'Bridal', 'http://localhost/simplepos/public/event/calender/create', '2012-05-18', '12:12:00', '2012-05-18', '14:12:00', 0, NULL, NULL, '2018-05-18 13:44:45', '2018-05-18 14:54:28', '2018-05-18 14:54:28'),
(4, 'Birthday party2', 'http://localhost/simplepos/public/event/calender/create', '2012-05-18', '12:12:00', '2012-05-18', '14:12:00', 0, NULL, NULL, '2018-05-18 13:46:04', '2018-05-18 15:54:23', '2018-05-18 15:54:23'),
(5, 'Bridal Mony', 'http://localhost/simplepos/public/event/calender/create', '2018-05-17', '12:12:00', '2018-05-19', '14:12:00', 0, NULL, 4, '2018-05-18 15:50:57', '2018-05-18 16:06:43', NULL),
(6, 'Birthday party', NULL, '2018-05-18', NULL, '2018-05-19', NULL, 0, NULL, NULL, '2018-05-18 16:04:47', '2018-05-18 16:04:47', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `lsp_expenses`
--

CREATE TABLE `lsp_expenses` (
  `id` int(10) NOT NULL,
  `expense_id` int(11) DEFAULT '0',
  `expense_name` text COLLATE utf8mb4_unicode_ci,
  `expense_description` text COLLATE utf8mb4_unicode_ci,
  `expense_date` date DEFAULT NULL,
  `expense_amount` float(10,2) DEFAULT '0.00',
  `store_id` int(11) NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `lsp_expenses`
--

INSERT INTO `lsp_expenses` (`id`, `expense_id`, `expense_name`, `expense_description`, `expense_date`, `expense_amount`, `store_id`, `created_by`, `updated_by`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 'Office Expense', 'Office Misilineous Purchase', '2018-07-16', 100.00, 1, 1, 0, '2018-07-16 13:57:30', '2018-07-16 13:57:30', NULL),
(2, 2, 'Pen Puchase', 'Office Misilineous Purchase', '2018-07-16', 120.00, 1, 1, 0, '2018-07-16 13:58:27', '2018-07-16 13:58:27', NULL),
(3, 1, 'Office Expense', 'Office Misilineous Purchase 2', '2018-07-16', 12.00, 1, 1, 0, '2018-07-16 13:58:49', '2018-07-16 13:58:49', NULL),
(4, 1, 'Office Expense', ';', '2019-01-01', 50.00, 1, 1, 0, '2019-01-01 03:27:11', '2019-01-01 03:27:11', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `lsp_expense_heads`
--

CREATE TABLE `lsp_expense_heads` (
  `id` int(10) NOT NULL,
  `name` text COLLATE utf8mb4_unicode_ci,
  `store_id` int(11) NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `lsp_expense_heads`
--

INSERT INTO `lsp_expense_heads` (`id`, `name`, `store_id`, `created_by`, `updated_by`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Office Expense', 1, 1, 0, '2018-07-16 13:57:30', '2018-07-16 13:57:30', NULL),
(2, 'Pen Puchase', 1, 1, 0, '2018-07-16 13:58:27', '2018-07-16 13:58:27', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `lsp_invoices`
--

CREATE TABLE `lsp_invoices` (
  `id` int(10) UNSIGNED NOT NULL,
  `invoice_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `tender_id` int(11) NOT NULL,
  `tender_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `invoice_status` enum('Due','Partial','Paid') COLLATE utf8mb4_unicode_ci DEFAULT 'Due',
  `tax_rate` float(10,2) NOT NULL DEFAULT '0.00',
  `total_tax` float(10,2) NOT NULL DEFAULT '0.00',
  `total_amount` float(10,2) NOT NULL,
  `discount_type` int(1) NOT NULL DEFAULT '0',
  `sales_discount` float(10,2) NOT NULL,
  `discount_total` float(10,2) NOT NULL,
  `total_cost` float(10,2) NOT NULL,
  `total_profit` float(10,2) NOT NULL,
  `sales_return` int(2) NOT NULL DEFAULT '0',
  `store_id` int(11) NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `lsp_invoices`
--

INSERT INTO `lsp_invoices` (`id`, `invoice_id`, `customer_id`, `tender_id`, `tender_name`, `invoice_status`, `tax_rate`, `total_tax`, `total_amount`, `discount_type`, `sales_discount`, `discount_total`, `total_cost`, `total_profit`, `sales_return`, `store_id`, `created_by`, `updated_by`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1520032834, 9, 6, '', 'Due', 0.00, 0.00, 68.00, 0, 0.00, 0.00, 46.50, 21.50, 0, 13, 1, 1, '2018-03-02 17:20:34', '2018-03-03 12:44:31', '2018-03-03 12:44:31'),
(2, 1520033838, 5, 5, '', 'Due', 0.00, 0.00, 9.76, 0, 0.00, 0.00, 8.00, 1.76, 0, 13, 1, 0, '2018-03-02 17:37:18', '2018-03-03 12:44:33', '2018-03-03 12:44:33'),
(3, 1520097022, 6, 6, '', 'Due', 0.00, 0.00, 200.00, 0, 0.00, 0.00, 100.00, 100.00, 0, 13, 1, 1, '2018-03-03 11:10:22', '2018-03-03 11:12:31', '2018-03-03 11:12:31'),
(4, 1520100588, 7, 6, '', 'Due', 0.00, 0.00, 200.00, 0, 0.00, 0.00, 100.00, 100.00, 0, 13, 1, 0, '2018-03-03 12:09:48', '2018-03-03 12:44:35', '2018-03-03 12:44:35'),
(5, 1520100695, 7, 6, '', 'Due', 0.00, 0.00, 200.00, 0, 0.00, 0.00, 100.00, 100.00, 0, 13, 1, 0, '2018-03-03 12:11:35', '2018-03-03 12:44:38', '2018-03-03 12:44:38'),
(6, 1520100742, 7, 6, '', 'Due', 0.00, 0.00, 200.00, 0, 0.00, 0.00, 100.00, 100.00, 0, 13, 1, 0, '2018-03-03 12:12:22', '2018-03-03 12:44:40', '2018-03-03 12:44:40'),
(7, 1520100765, 7, 6, '', 'Due', 0.00, 0.00, 200.00, 0, 0.00, 0.00, 100.00, 100.00, 0, 13, 1, 0, '2018-03-03 12:12:45', '2018-03-03 12:43:09', '2018-03-03 12:43:09'),
(8, 1520100935, 10, 6, '', 'Due', 0.00, 0.00, 300.00, 0, 0.00, 0.00, 150.00, 150.00, 0, 13, 1, 0, '2018-03-03 12:15:35', '2018-03-03 12:42:15', '2018-03-03 12:42:15'),
(9, 1520106771, 6, 4, '', 'Due', 0.00, 0.00, 38.00, 0, 0.00, 0.00, 33.00, 5.00, 0, 13, 1, 1, '2018-03-03 13:52:51', '2018-03-03 14:55:56', NULL),
(10, 1520110590, 7, 5, '', 'Due', 0.00, 0.00, 15.00, 0, 0.00, 0.00, 11.25, 3.75, 0, 13, 1, 0, '2018-03-03 14:56:30', '2018-03-03 14:56:30', NULL),
(11, 1520110610, 5, 6, '', 'Due', 0.00, 0.00, 15.00, 0, 0.00, 0.00, 11.25, 3.75, 0, 13, 1, 0, '2018-03-03 14:56:50', '2018-03-03 14:56:50', NULL),
(12, 1520111396, 6, 6, '', 'Due', 0.00, 0.00, 1.22, 0, 0.00, 0.00, 1.00, 0.22, 0, 13, 1, 0, '2018-03-03 15:09:57', '2018-03-03 15:09:57', NULL),
(13, 1520193239, 13, 6, '', 'Due', 0.00, 0.00, 19.00, 0, 0.00, 0.00, 12.00, 7.00, 0, 13, 1, 0, '2018-03-04 13:53:59', '2018-03-04 13:53:59', NULL),
(14, 1520195841, 8, 6, '', 'Due', 0.00, 0.00, 15.00, 0, 0.00, 0.00, 11.25, 3.75, 0, 13, 1, 0, '2018-03-04 14:37:21', '2018-03-04 14:37:21', NULL),
(15, 1520195926, 8, 6, '', 'Due', 0.00, 0.00, 15.00, 0, 0.00, 0.00, 11.25, 3.75, 0, 13, 1, 0, '2018-03-04 14:38:46', '2018-03-04 14:38:46', NULL),
(16, 1520196081, 8, 6, '', 'Due', 0.00, 0.00, 15.00, 0, 0.00, 0.00, 11.25, 3.75, 0, 13, 1, 0, '2018-03-04 14:41:21', '2018-03-04 14:41:21', NULL),
(17, 1520196254, 8, 6, '', 'Due', 0.00, 0.00, 15.00, 0, 0.00, 0.00, 11.25, 3.75, 0, 13, 1, 0, '2018-03-04 14:44:14', '2018-03-04 14:44:14', NULL),
(18, 1520196360, 8, 6, '', 'Due', 0.00, 0.00, 15.00, 0, 0.00, 0.00, 11.25, 3.75, 0, 13, 1, 0, '2018-03-04 14:46:00', '2018-03-04 14:46:00', NULL),
(19, 1520196477, 8, 6, '', 'Due', 0.00, 0.00, 15.00, 0, 0.00, 0.00, 11.25, 3.75, 0, 13, 1, 0, '2018-03-04 14:47:57', '2018-03-04 14:47:57', NULL),
(20, 1520196670, 8, 6, '', 'Due', 0.00, 0.00, 15.00, 0, 0.00, 0.00, 11.25, 3.75, 0, 13, 1, 0, '2018-03-04 14:51:10', '2018-03-04 14:51:10', NULL),
(21, 1520196981, 8, 6, '', 'Due', 0.00, 0.00, 15.00, 0, 0.00, 0.00, 11.25, 3.75, 0, 13, 1, 0, '2018-03-04 14:56:22', '2018-03-04 14:56:22', NULL),
(22, 1520197040, 8, 6, '', 'Due', 0.00, 0.00, 1.22, 0, 0.00, 0.00, 1.00, 0.22, 0, 13, 1, 0, '2018-03-04 14:57:20', '2018-03-04 14:57:20', NULL),
(23, 1520197136, 10, 6, '', 'Due', 0.00, 0.00, 100.00, 0, 0.00, 0.00, 50.00, 50.00, 0, 13, 1, 0, '2018-03-04 14:58:57', '2018-03-04 14:58:57', NULL),
(24, 1520197790, 10, 6, '', 'Due', 0.00, 0.00, 19.00, 0, 0.00, 0.00, 12.00, 7.00, 0, 13, 1, 0, '2018-03-04 15:09:50', '2018-03-04 15:09:50', NULL),
(25, 1520263465, 13, 6, '', 'Due', 0.00, 0.00, 15.00, 0, 0.00, 0.00, 11.25, 3.75, 0, 13, 1, 0, '2018-03-05 09:24:26', '2018-03-05 09:24:26', NULL),
(26, 1520263716, 18, 6, '', 'Due', 0.00, 0.00, 1.22, 0, 0.00, 0.00, 1.00, 0.22, 0, 13, 1, 0, '2018-03-05 09:28:36', '2018-03-05 09:28:36', NULL),
(27, 1520277669, 13, 6, '', 'Due', 0.00, 0.00, 1.22, 0, 0.00, 0.00, 1.00, 0.22, 0, 13, 1, 0, '2018-03-05 13:21:10', '2018-03-05 13:21:10', NULL),
(28, 1520277721, 13, 6, '', 'Due', 0.00, 0.00, 1.22, 0, 0.00, 0.00, 1.00, 0.22, 0, 13, 1, 0, '2018-03-05 13:22:01', '2018-03-05 13:22:01', NULL),
(29, 1520278896, 13, 6, '', 'Due', 0.00, 0.00, 1.22, 0, 0.00, 0.00, 1.00, 0.22, 0, 13, 1, 0, '2018-03-05 13:41:36', '2018-03-05 13:41:36', NULL),
(30, 1520278925, 15, 6, '', 'Due', 0.00, 0.00, 200.00, 0, 0.00, 0.00, 100.00, 100.00, 0, 13, 1, 1, '2018-03-05 13:42:05', '2018-03-05 13:44:05', '2018-03-05 13:44:05'),
(31, 1520279304, 10, 6, '', 'Due', 0.00, 0.00, 45.00, 0, 0.00, 0.00, 33.75, 11.25, 0, 13, 1, 0, '2018-03-05 13:48:24', '2018-03-05 13:48:24', NULL),
(32, 1521483238, 7, 6, '', 'Due', 0.00, 0.00, 158.00, 0, 0.00, 0.00, 138.00, 20.00, 0, 13, 1, 0, '2018-03-19 12:13:59', '2018-03-19 12:13:59', NULL),
(33, 1521483651, 7, 6, '', 'Due', 0.00, 0.00, 158.00, 0, 0.00, 0.00, 138.00, 20.00, 0, 13, 1, 0, '2018-03-19 12:20:53', '2018-03-19 12:20:53', NULL),
(34, 1521483704, 7, 6, '', 'Due', 0.00, 0.00, 158.00, 0, 0.00, 0.00, 138.00, 20.00, 0, 13, 1, 0, '2018-03-19 12:21:45', '2018-03-19 12:21:45', NULL),
(35, 1521483752, 7, 6, '', 'Due', 0.00, 0.00, 158.00, 0, 0.00, 0.00, 138.00, 20.00, 0, 13, 1, 0, '2018-03-19 12:22:34', '2018-03-19 12:22:34', NULL),
(36, 1521483800, 7, 6, '', 'Due', 0.00, 0.00, 158.00, 0, 0.00, 0.00, 138.00, 20.00, 0, 13, 1, 0, '2018-03-19 12:23:21', '2018-03-19 12:23:21', NULL),
(37, 1521484527, 7, 6, '', 'Due', 0.00, 4.08, 162.08, 0, 0.00, 0.00, 138.00, 20.00, 0, 13, 1, 0, '2018-03-19 12:35:28', '2018-03-19 12:35:28', NULL),
(38, 1521485131, 7, 6, '', 'Due', 0.00, 4.08, 162.74, 0, 0.00, 0.00, 138.00, 20.00, 0, 13, 1, 0, '2018-03-19 12:45:32', '2018-03-19 12:45:32', NULL),
(39, 1521485168, 7, 6, '', 'Due', 0.00, 4.74, 162.74, 0, 0.00, 0.00, 138.00, 20.00, 0, 13, 1, 0, '2018-03-19 12:46:09', '2018-03-19 12:46:09', NULL),
(40, 1521485361, 7, 6, '', 'Due', 0.00, 4.74, 162.74, 0, 0.00, 0.00, 138.00, 20.00, 0, 13, 1, 0, '2018-03-19 12:49:23', '2018-03-19 12:49:23', NULL),
(41, 1521487602, 7, 6, '', 'Due', 0.00, 4.74, 162.74, 0, 0.00, 0.00, 138.00, 20.00, 0, 13, 1, 0, '2018-03-19 13:26:43', '2018-03-19 13:26:43', NULL),
(42, 1521487925, 7, 6, '', 'Due', 0.00, 4.74, 162.74, 0, 0.00, 0.00, 138.00, 20.00, 0, 13, 1, 0, '2018-03-19 13:32:07', '2018-03-19 13:32:07', NULL),
(43, 1521488142, 7, 6, '', 'Due', 0.00, 4.74, 162.74, 0, 0.00, 0.00, 138.00, 20.00, 0, 13, 1, 0, '2018-03-19 13:35:43', '2018-03-19 13:35:43', NULL),
(44, 1521488164, 7, 6, '', 'Due', 0.00, 4.74, 162.74, 0, 0.00, 0.00, 138.00, 20.00, 0, 13, 1, 0, '2018-03-19 13:36:05', '2018-03-19 13:36:05', NULL),
(45, 1521488285, 7, 6, '', 'Due', 0.00, 4.74, 162.74, 0, 0.00, 0.00, 138.00, 20.00, 0, 13, 1, 0, '2018-03-19 13:38:06', '2018-03-19 13:38:06', NULL),
(46, 1521488357, 7, 6, '', 'Due', 0.00, 4.74, 162.74, 0, 0.00, 0.00, 138.00, 20.00, 0, 13, 1, 0, '2018-03-19 13:39:18', '2018-03-19 13:39:18', NULL),
(47, 1521488527, 7, 6, '', 'Due', 0.00, 4.74, 162.74, 0, 0.00, 0.00, 138.00, 20.00, 0, 13, 1, 0, '2018-03-19 13:42:08', '2018-03-19 13:42:08', NULL),
(48, 1521488551, 7, 6, '', 'Due', 0.00, 4.74, 162.74, 0, 0.00, 0.00, 138.00, 20.00, 0, 13, 1, 0, '2018-03-19 13:42:32', '2018-03-19 13:42:32', NULL),
(49, 1521489171, 7, 6, '', 'Due', 0.00, 4.74, 162.74, 0, 0.00, 0.00, 138.00, 20.00, 0, 13, 1, 0, '2018-03-19 13:52:53', '2018-03-19 13:52:53', NULL),
(50, 1521489281, 7, 6, '', 'Due', 0.00, 4.74, 162.74, 0, 0.00, 0.00, 138.00, 20.00, 0, 13, 1, 0, '2018-03-19 13:54:42', '2018-03-19 13:54:42', NULL),
(51, 1521490160, 7, 6, '', 'Due', 0.00, 6.07, 208.51, 0, 0.00, 0.00, 102.00, 100.44, 0, 13, 1, 0, '2018-03-19 15:13:24', '2018-03-19 15:13:24', NULL),
(52, 1521490160, 7, 6, '', 'Due', 0.00, 6.07, 208.51, 0, 0.00, 0.00, 102.00, 100.44, 0, 13, 1, 0, '2018-03-19 15:13:33', '2018-03-19 15:13:33', NULL),
(53, 1521490160, 7, 6, '', 'Due', 0.00, 6.07, 208.51, 0, 0.00, 0.00, 102.00, 100.44, 0, 13, 1, 0, '2018-03-19 15:14:03', '2018-03-19 15:14:03', NULL),
(54, 1521494043, 5, 6, '', 'Due', 0.00, 1.68, 57.68, 0, 0.00, 0.00, 56.00, 0.00, 0, 13, 1, 0, '2018-03-19 15:14:54', '2018-03-19 15:14:54', NULL),
(55, 1521494094, 7, 6, '', 'Due', 0.00, 43.41, 1490.51, 0, 0.00, 0.00, 1144.50, 302.60, 0, 13, 1, 0, '2018-03-19 15:17:35', '2018-03-19 15:17:35', NULL),
(56, 1521566125, 8, 6, '', 'Due', 0.00, 3.21, 110.21, 0, 0.00, 0.00, 107.00, 0.00, 0, 13, 1, 0, '2018-03-20 11:15:29', '2018-03-20 11:15:29', NULL),
(57, 1521566130, 8, 6, '', 'Due', 3.00, 11.37, 390.37, 0, 0.00, 0.00, 349.00, 30.00, 0, 13, 1, 0, '2018-03-20 11:27:09', '2018-03-20 11:27:09', NULL),
(58, 1521752981, 6, 6, '', 'Due', 3.00, 5.22, 179.07, 2, 5.00, 9.15, 183.00, 0.00, 0, 13, 1, 0, '2018-03-22 16:02:01', '2018-03-22 16:02:01', NULL),
(59, 1521756122, 9, 6, '', 'Due', 3.00, 2.88, 94.08, 2, 5.00, 4.80, 81.00, 15.00, 0, 13, 1, 1, '2018-03-22 16:23:29', '2018-03-23 12:19:26', NULL),
(60, 1521757410, 5, 6, '', 'Due', 3.00, 4.22, 144.82, 2, 5.00, 7.40, 148.00, 0.00, 0, 13, 1, 0, '2018-03-22 16:25:42', '2018-03-22 16:25:42', NULL),
(61, 1521759827, 6, 6, '', 'Due', 0.00, 0.00, 38.00, 0, 0.00, 0.00, 24.00, 14.00, 0, 13, 1, 0, '2018-03-22 17:03:47', '2018-03-22 17:03:47', NULL),
(62, 1521846193, 5, 6, '', 'Due', 3.00, 4.44, 145.04, 2, 5.00, 7.40, 148.00, 0.00, 0, 13, 1, 0, '2018-03-23 17:03:13', '2018-03-23 17:03:13', NULL),
(63, 1523220777, 6, 6, '', 'Due', 3.00, 3.51, 114.66, 2, 5.00, 5.85, 117.00, 0.00, 0, 13, 1, 0, '2018-04-08 14:54:21', '2018-04-08 14:54:21', NULL),
(64, 1523220876, 8, 6, '', 'Due', 3.00, 1.02, 33.32, 2, 5.00, 1.70, 34.00, 0.00, 0, 13, 1, 0, '2018-04-08 15:04:56', '2018-04-08 15:04:56', NULL),
(65, 1523221497, 7, 6, '', 'Due', 3.00, 3.21, 104.86, 2, 5.00, 5.35, 107.00, 0.00, 0, 13, 1, 0, '2018-04-08 16:04:09', '2018-04-08 16:04:09', NULL),
(66, 1523225050, 5, 6, '', 'Due', 3.00, 1.53, 49.98, 2, 5.00, 2.55, 31.00, 20.00, 0, 13, 1, 0, '2018-04-08 16:13:07', '2018-04-08 16:13:07', NULL),
(67, 1523294846, 7, 6, '', 'Due', 3.00, 3.51, 114.66, 2, 5.00, 5.85, 117.00, 0.00, 0, 13, 1, 0, '2018-04-09 13:48:22', '2018-04-09 13:48:22', NULL),
(68, 1523303303, 6, 6, '', 'Due', 3.00, 1.68, 54.88, 2, 5.00, 2.80, 56.00, 0.00, 0, 13, 1, 0, '2018-04-09 15:44:51', '2018-04-09 15:44:51', NULL),
(69, 1523310292, 5, 6, '', 'Due', 3.00, 0.66, 21.56, 2, 5.00, 1.10, 26.00, -4.00, 0, 13, 1, 0, '2018-04-09 16:35:44', '2018-04-09 16:35:44', NULL),
(70, 1523387430, 7, 6, '', 'Due', 3.00, 1.68, 54.88, 2, 5.00, 2.80, 56.00, 0.00, 0, 13, 1, 0, '2018-04-10 14:37:25', '2018-04-10 14:37:25', NULL),
(71, 1525017380, 27, 7, '', 'Due', 3.00, 0.30, 9.80, 2, 5.00, 0.50, 20.00, -10.00, 1, 1, 1, 0, '2018-04-29 09:58:04', '2018-05-16 13:23:31', NULL),
(72, 1525373162, 28, 7, '', 'Due', 3.00, 51.00, 1666.00, 2, 5.00, 85.00, 1300.00, 400.00, 1, 1, 1, 0, '2018-05-03 12:46:53', '2018-05-16 13:28:02', NULL),
(73, 1525978703, 28, 7, '', 'Due', 3.00, 1.80, 58.80, 2, 5.00, 3.00, 30.00, 30.00, 0, 1, 1, 0, '2018-05-10 20:08:21', '2018-05-10 20:08:21', NULL),
(74, 1526041609, 29, 7, '', 'Due', 3.00, 1.20, 39.20, 2, 5.00, 2.00, 20.00, 20.00, 0, 1, 1, 0, '2018-05-11 06:27:32', '2018-05-11 06:27:32', NULL),
(75, 1526042681, 27, 7, '', 'Due', 3.00, 1.50, 49.00, 2, 5.00, 2.50, 40.00, 10.00, 0, 1, 1, 0, '2018-05-11 16:39:56', '2018-05-11 16:39:56', NULL),
(76, 1526078547, 28, 7, '', 'Due', 3.00, 0.60, 19.60, 2, 5.00, 1.00, 10.00, 10.00, 0, 1, 1, 0, '2018-05-11 16:43:21', '2018-05-11 16:43:21', NULL),
(77, 1526078602, 28, 7, '', 'Due', 3.00, 31.65, 1033.90, 2, 5.00, 52.75, 843.00, 212.00, 0, 1, 1, 0, '2018-05-11 16:43:50', '2018-05-11 16:43:50', NULL),
(78, 1526078652, 27, 7, '', 'Due', 3.00, 1.50, 49.00, 2, 5.00, 2.50, 22.00, 28.00, 0, 1, 1, 0, '2018-05-11 16:46:41', '2018-05-11 16:46:41', NULL),
(79, 1526078809, 28, 7, '', 'Due', 3.00, 31.50, 1029.00, 2, 5.00, 52.50, 822.00, 228.00, 0, 1, 1, 0, '2018-05-11 16:47:19', '2018-05-11 16:47:19', NULL),
(80, 1526078840, 28, 7, '', 'Due', 3.00, 1.50, 49.00, 2, 5.00, 2.50, 40.00, 10.00, 0, 1, 1, 0, '2018-05-11 16:47:38', '2018-05-11 16:47:38', NULL),
(81, 1526078859, 28, 7, '', 'Due', 3.00, 1.50, 49.00, 2, 5.00, 2.50, 40.00, 10.00, 0, 1, 1, 0, '2018-05-11 17:08:20', '2018-05-11 17:08:20', NULL),
(82, 1528482259, 28, 8, '', 'Due', 3.00, 1.26, 41.16, 2, 5.00, 2.10, 21.00, 21.00, 0, 1, 1, 0, '2018-06-08 12:36:13', '2018-06-08 12:36:13', NULL),
(83, 1528482259, 28, 8, '', 'Due', 3.00, 1.26, 41.16, 2, 5.00, 2.10, 21.00, 21.00, 0, 1, 1, 0, '2018-06-08 12:36:22', '2018-06-08 12:36:22', NULL),
(84, 1528482259, 28, 8, '', 'Due', 3.00, 1.26, 41.16, 2, 5.00, 2.10, 21.00, 21.00, 0, 1, 1, 0, '2018-06-08 12:36:34', '2018-06-08 12:36:34', NULL),
(85, 1528482259, 28, 8, '', 'Due', 3.00, 1.26, 41.16, 2, 5.00, 2.10, 21.00, 21.00, 0, 1, 1, 0, '2018-06-08 12:37:11', '2018-06-08 12:37:11', NULL),
(86, 1528482259, 28, 8, '', 'Due', 3.00, 1.26, 41.16, 2, 5.00, 2.10, 21.00, 21.00, 0, 1, 1, 0, '2018-06-08 12:42:26', '2018-06-08 12:42:26', NULL),
(87, 1528483432, 28, 8, '', 'Due', 3.00, 2.40, 78.40, 2, 5.00, 4.00, 40.00, 40.00, 0, 1, 1, 0, '2018-06-08 12:44:48', '2018-06-08 12:44:48', NULL),
(88, 1528483490, 28, 8, '', 'Due', 3.00, 1.20, 39.20, 2, 5.00, 2.00, 20.00, 20.00, 0, 1, 1, 0, '2018-06-08 12:58:00', '2018-06-08 12:58:00', NULL),
(89, 1528484281, 28, 8, '', 'Due', 3.00, 2.76, 90.16, 2, 5.00, 4.60, 38.00, 54.00, 0, 1, 1, 0, '2018-06-08 13:29:05', '2018-06-08 13:29:05', NULL),
(90, 1528486146, 29, 8, '', 'Due', 3.00, 2.40, 78.40, 2, 5.00, 4.00, 40.00, 40.00, 0, 1, 1, 0, '2018-06-08 16:11:27', '2018-06-08 16:11:27', NULL),
(91, 1530264400, 28, 7, '', 'Due', 3.00, 49.20, 1607.20, 2, 5.00, 82.00, 1270.00, 370.00, 0, 1, 1, 0, '2018-06-29 03:27:08', '2018-06-29 03:27:08', NULL),
(92, 1530280686, 28, 0, '', 'Due', 3.00, 20.31, 663.46, 2, 5.00, 33.85, 483.00, 194.00, 0, 1, 1, 0, '2018-06-29 08:14:17', '2018-06-29 08:14:17', NULL),
(93, 1530281657, 28, 8, '', 'Due', 3.00, 1.80, 58.80, 2, 5.00, 3.00, 30.00, 30.00, 0, 1, 1, 0, '2018-06-29 09:46:00', '2018-06-29 09:46:00', NULL),
(94, 1530287318, 43, 8, '', 'Due', 3.00, 0.60, 19.60, 2, 5.00, 1.00, 10.00, 10.00, 0, 1, 1, 0, '2018-06-29 09:48:49', '2018-06-29 11:58:49', NULL),
(95, 1530295427, 29, 8, '', 'Due', 3.00, 1.50, 49.00, 2, 5.00, 2.50, 20.00, 30.00, 0, 1, 1, 0, '2018-06-29 12:04:33', '2018-06-29 12:08:00', NULL),
(96, 1530295474, 33, 8, '', 'Due', 3.00, 20.31, 663.46, 2, 5.00, 33.85, 483.00, 194.00, 0, 1, 1, 0, '2018-06-29 12:32:34', '2018-06-29 12:34:08', NULL),
(97, 1530306106, 41, 0, '', 'Due', 3.00, 1.20, 39.20, 2, 5.00, 2.00, 20.00, 20.00, 0, 1, 1, 0, '2018-06-29 15:01:58', '2018-06-29 15:01:58', NULL),
(98, 1530646269, 36, 7, 'Bhuna', 'Paid', 3.00, 2.40, 78.40, 2, 5.00, 4.00, 40.00, 40.00, 0, 1, 1, 0, '2018-07-03 14:05:52', '2018-07-03 14:05:52', NULL),
(99, 1531167881, 28, 9, 'Paypal', 'Paid', 3.00, 1.80, 58.80, 2, 5.00, 3.00, 30.00, 28.80, 0, 1, 1, 0, '2018-07-09 14:42:05', '2018-07-10 13:13:12', NULL),
(100, 1531245939, 30, 9, 'Paypal', 'Paid', 3.00, 1.20, 39.20, 2, 5.00, 2.00, 20.00, 19.20, 0, 1, 1, 0, '2018-07-10 12:07:39', '2018-07-10 13:10:57', NULL),
(101, 1531250059, 33, 9, 'Paypal', 'Paid', 3.00, 1.80, 58.80, 2, 5.00, 3.00, 30.00, 28.80, 0, 1, 1, 0, '2018-07-10 13:14:35', '2018-07-10 13:16:30', NULL),
(102, 1532201170, 29, 9, 'Paypal', 'Paid', 3.00, 1.80, 58.80, 2, 5.00, 3.00, 30.00, 28.80, 0, 1, 1, 0, '2018-07-21 14:25:01', '2018-07-21 14:29:56', NULL),
(103, 1532201170, 29, 0, '', 'Due', 3.00, 1.80, 58.80, 2, 5.00, 3.00, 30.00, 30.00, 0, 1, 1, 0, '2018-07-21 14:26:48', '2018-07-21 14:26:48', NULL),
(104, 1532204996, 33, 9, 'Paypal', 'Paid', 3.00, 1.20, 39.20, 2, 5.00, 2.00, 20.00, 19.20, 0, 1, 1, 0, '2018-07-21 14:30:36', '2018-07-21 14:31:08', NULL),
(105, 1532205069, 28, 9, 'Paypal', 'Paid', 3.00, 0.60, 19.60, 2, 5.00, 1.00, 10.00, 9.60, 0, 1, 1, 0, '2018-07-21 14:31:24', '2018-07-21 14:31:51', NULL),
(106, 1532205112, 30, 9, 'Paypal', 'Paid', 3.00, 0.60, 19.60, 2, 5.00, 1.00, 10.00, 9.60, 0, 1, 1, 0, '2018-07-21 14:32:27', '2018-07-21 14:32:55', NULL),
(107, 1532717608, 29, 10, 'Cash', 'Due', 3.00, 0.15, 4.90, 2, 5.00, 0.25, 3.00, 2.00, 0, 1, 1, 0, '2018-07-27 14:44:47', '2018-07-27 14:44:47', NULL),
(108, 1532724288, 36, 9, 'Paypal', 'Paid', 3.00, 0.81, 26.46, 2, 5.00, 1.35, 14.00, 12.46, 0, 1, 1, 0, '2018-07-27 14:59:03', '2018-07-27 15:00:58', NULL),
(109, 1532725259, 30, 10, 'Cash', 'Paid', 3.00, 1.80, 58.80, 2, 5.00, 3.00, 30.00, 30.00, 1, 1, 1, 0, '2018-07-27 15:07:55', '2018-08-20 13:38:07', NULL),
(110, 1535730471, 53, 11, 'Cash', 'Paid', 3.00, 0.03, 0.98, 2, 5.00, 0.05, 1.00, 0.00, 0, 31, 7, 0, '2018-08-31 09:48:05', '2018-08-31 09:48:05', NULL),
(111, 1536928881, 28, 9, 'Paypal', 'Paid', 3.00, 3.90, 127.40, 2, 5.00, 6.50, 60.00, 67.40, 0, 1, 1, 0, '2018-09-14 11:36:19', '2018-09-14 11:37:58', NULL),
(112, 1536928881, 28, 0, '', 'Due', 3.00, 3.90, 127.40, 2, 5.00, 6.50, 60.00, 70.00, 0, 1, 1, 0, '2018-09-14 12:05:08', '2018-09-14 12:05:08', NULL),
(113, 1536928881, 28, 0, '', 'Due', 3.00, 3.90, 127.40, 2, 5.00, 6.50, 60.00, 70.00, 0, 1, 1, 0, '2018-09-14 12:45:19', '2018-09-14 12:45:19', NULL),
(114, 1536928881, 28, 0, '', 'Due', 3.00, 3.90, 127.40, 2, 5.00, 6.50, 60.00, 70.00, 0, 1, 1, 0, '2018-09-14 12:47:31', '2018-09-14 12:47:31', NULL),
(115, 1536928881, 28, 0, '', 'Due', 3.00, 3.90, 127.40, 2, 5.00, 6.50, 60.00, 70.00, 0, 1, 1, 0, '2018-09-14 13:00:55', '2018-09-14 13:00:55', NULL),
(116, 1536928881, 28, 0, '', 'Due', 3.00, 3.90, 127.40, 2, 5.00, 6.50, 60.00, 70.00, 0, 1, 1, 0, '2018-09-14 13:02:26', '2018-09-14 13:02:26', NULL),
(117, 1536951799, 28, 9, 'Paypal', 'Paid', 3.00, 1.80, 58.80, 2, 5.00, 3.00, 30.00, 28.80, 0, 1, 1, 0, '2018-09-14 13:14:10', '2018-09-14 13:14:43', NULL),
(118, 1536951799, 28, 0, '', 'Due', 3.00, 1.80, 58.80, 2, 5.00, 3.00, 30.00, 30.00, 0, 1, 1, 0, '2018-09-14 13:24:34', '2018-09-14 13:24:34', NULL),
(119, 1536953075, 0, 9, 'Paypal', 'Paid', 3.00, 2.40, 78.40, 2, 5.00, 4.00, 40.00, 38.40, 0, 1, 1, 0, '2018-09-14 13:24:46', '2018-09-14 13:28:51', NULL),
(120, 1536953075, 0, 0, '', 'Due', 3.00, 2.40, 78.40, 2, 5.00, 4.00, 40.00, 40.00, 0, 1, 1, 0, '2018-09-14 13:24:53', '2018-09-14 13:24:53', NULL),
(121, 1536953075, 0, 0, '', 'Due', 3.00, 2.40, 78.40, 2, 5.00, 4.00, 40.00, 40.00, 0, 1, 1, 0, '2018-09-14 13:25:01', '2018-09-14 13:25:01', NULL),
(122, 1536953075, 29, 0, '', 'Due', 3.00, 2.40, 78.40, 2, 5.00, 4.00, 40.00, 40.00, 0, 1, 1, 0, '2018-09-14 13:28:17', '2018-09-14 13:28:17', NULL),
(123, 1536953075, 29, 0, '', 'Due', 3.00, 2.40, 78.40, 2, 5.00, 4.00, 40.00, 40.00, 0, 1, 1, 0, '2018-09-14 13:29:37', '2018-09-14 13:29:37', NULL),
(124, 1536953075, 29, 0, '', 'Due', 3.00, 2.40, 78.40, 2, 5.00, 4.00, 40.00, 40.00, 0, 1, 1, 0, '2018-09-14 13:32:09', '2018-09-14 13:32:09', NULL),
(125, 1536953075, 29, 0, '', 'Due', 3.00, 2.40, 78.40, 2, 5.00, 4.00, 40.00, 40.00, 0, 1, 1, 0, '2018-09-14 13:33:21', '2018-09-14 13:33:21', NULL),
(126, 1536953075, 29, 0, '', 'Due', 3.00, 2.40, 78.40, 2, 5.00, 4.00, 40.00, 40.00, 0, 1, 1, 0, '2018-09-14 13:34:38', '2018-09-14 13:34:38', NULL),
(127, 1536953075, 29, 0, '', 'Due', 3.00, 2.40, 78.40, 2, 5.00, 4.00, 40.00, 40.00, 0, 1, 1, 0, '2018-09-14 13:35:37', '2018-09-14 13:35:37', NULL),
(128, 1536953075, 29, 0, '', 'Due', 3.00, 2.40, 78.40, 2, 5.00, 4.00, 40.00, 40.00, 0, 1, 1, 0, '2018-09-14 13:36:27', '2018-09-14 13:36:27', NULL),
(129, 1536953075, 29, 0, '', 'Due', 3.00, 2.40, 78.40, 2, 5.00, 4.00, 40.00, 40.00, 0, 1, 1, 0, '2018-09-14 13:37:33', '2018-09-14 13:37:33', NULL),
(130, 1536953075, 33, 0, '', 'Due', 3.00, 2.40, 78.40, 2, 5.00, 4.00, 40.00, 40.00, 0, 1, 1, 0, '2018-09-14 13:39:26', '2018-09-14 13:39:26', NULL),
(131, 1536953075, 33, 0, '', 'Due', 3.00, 2.40, 78.40, 2, 5.00, 4.00, 40.00, 40.00, 0, 1, 1, 0, '2018-09-14 13:40:20', '2018-09-14 13:40:20', NULL),
(132, 1536953075, 33, 9, 'Paypal', 'Paid', 3.00, 2.40, 78.40, 2, 5.00, 4.00, 40.00, 38.40, 0, 1, 1, 0, '2018-09-14 13:42:28', '2018-09-14 13:42:59', NULL),
(133, 1536953075, 33, 0, '', 'Due', 3.00, 2.40, 78.40, 2, 5.00, 4.00, 40.00, 40.00, 0, 1, 1, 0, '2018-09-14 13:43:21', '2018-09-14 13:43:21', NULL),
(134, 1536954202, 50, 0, '', 'Due', 3.00, 1.20, 39.20, 2, 5.00, 2.00, 20.00, 20.00, 0, 1, 1, 0, '2018-09-14 13:43:44', '2018-09-14 13:43:44', NULL),
(135, 1536954202, 50, 9, 'Paypal', 'Paid', 3.00, 1.20, 39.20, 2, 5.00, 2.00, 20.00, 19.20, 0, 1, 1, 0, '2018-09-14 13:44:27', '2018-09-14 13:44:59', NULL),
(136, 1536954202, 50, 0, '', 'Due', 3.00, 1.20, 39.20, 2, 5.00, 2.00, 20.00, 20.00, 0, 1, 1, 0, '2018-09-14 13:45:20', '2018-09-14 13:45:20', NULL),
(137, 1536954321, 28, 9, 'Paypal', 'Paid', 3.00, 0.60, 19.60, 2, 5.00, 1.00, 10.00, 9.60, 0, 1, 1, 0, '2018-09-14 13:46:03', '2018-09-14 13:46:29', NULL),
(138, 1536954321, 28, 0, '', 'Due', 3.00, 0.60, 19.60, 2, 5.00, 1.00, 10.00, 10.00, 0, 1, 1, 0, '2018-09-14 13:51:23', '2018-09-14 13:51:23', NULL),
(139, 1536954684, 33, 9, 'Paypal', 'Paid', 3.00, 1.80, 58.80, 2, 5.00, 3.00, 30.00, 28.80, 0, 1, 1, 0, '2018-09-14 13:54:05', '2018-09-14 13:54:34', NULL),
(140, 1536954684, 33, 0, '', 'Due', 3.00, 1.80, 58.80, 2, 5.00, 3.00, 30.00, 30.00, 0, 1, 1, 0, '2018-09-14 13:54:45', '2018-09-14 13:54:45', NULL),
(141, 1536959333, 33, 10, '', 'Due', 3.00, 1.80, 58.80, 2, 5.00, 3.00, 30.00, 30.00, 0, 1, 1, 1, '2018-09-14 15:09:25', '2018-09-18 15:31:12', NULL),
(142, 1537908295, 29, 7, 'Bhuna', 'Paid', 0.00, 0.00, 10.00, 0, 0.00, 0.00, 20.00, -10.00, 0, 1, 1, 0, '2018-09-25 14:44:55', '2018-09-25 14:44:55', NULL),
(143, 1539801642, 27, 10, 'Cash', 'Paid', 3.00, 2.04, 66.64, 2, 5.00, 3.40, 22.00, 46.00, 0, 1, 1, 0, '2018-10-17 13:53:27', '2018-10-17 13:53:27', NULL),
(144, 1539900283, 28, 10, 'Cash', 'Paid', 3.00, 0.06, 1.96, 2, 5.00, 0.10, 2.00, 0.00, 0, 1, 1, 0, '2018-10-18 16:11:59', '2018-10-18 16:11:59', NULL),
(145, 1539962528, 28, 10, 'Cash', 'Paid', 3.00, 0.36, 11.76, 2, 5.00, 0.60, 6.00, 6.00, 0, 1, 1, 1, '2018-10-19 15:23:30', '2018-11-02 15:51:55', NULL),
(146, 1545905398, 28, 10, 'Cash', 'Paid', 3.00, 0.99, 32.34, 2, 5.00, 1.65, 22.00, 11.00, 0, 1, 1, 0, '2018-12-27 05:25:31', '2018-12-27 05:25:31', NULL),
(147, 1545909932, 28, 10, 'Cash', 'Paid', 3.00, 0.90, 29.40, 2, 5.00, 1.50, 25.00, 5.00, 0, 1, 1, 0, '2018-12-27 05:47:57', '2018-12-27 05:47:57', NULL),
(148, 1545941247, 28, 10, 'Cash', 'Paid', 3.00, 0.60, 19.60, 2, 5.00, 1.00, 12.00, 8.00, 0, 1, 1, 0, '2018-12-27 14:55:36', '2018-12-27 14:55:36', NULL),
(149, 1545944137, 27, 10, 'Cash', 'Paid', 3.00, 0.30, 9.80, 2, 5.00, 0.50, 15.00, -5.00, 0, 1, 1, 0, '2018-12-27 14:56:27', '2018-12-27 14:56:27', NULL),
(150, 1546159770, 28, 10, 'Cash', 'Partial', 1.60, 0.03, 1.93, 2, 5.00, 0.10, 2.00, 0.00, 0, 1, 1, 0, '2018-12-30 05:39:01', '2018-12-30 05:39:01', NULL),
(151, 1546169942, 28, 10, 'Cash', 'Paid', 1.60, 0.16, 9.66, 2, 5.00, 0.50, 15.00, -5.00, 1, 1, 1, 0, '2018-12-30 05:41:05', '2019-01-01 03:28:37', NULL),
(152, 1546334482, 29, 10, 'Cash', 'Paid', 1.60, 0.02, 0.97, 2, 5.00, 0.05, 1.00, 0.00, 1, 1, 1, 1, '2019-01-01 03:32:15', '2019-01-01 03:33:17', NULL),
(153, 1546462247, 29, 10, 'Cash', 'Paid', 3.00, 0.60, 19.60, 2, 5.00, 1.00, 15.00, 5.00, 0, 1, 1, 0, '2019-01-02 14:51:59', '2019-01-02 14:51:59', NULL),
(154, 1546462321, 28, 10, 'Cash', 'Paid', 3.00, 0.60, 19.60, 2, 5.00, 1.00, 15.00, 5.00, 0, 1, 1, 0, '2019-01-02 14:56:36', '2019-01-02 14:56:36', NULL),
(155, 1546462596, 28, 10, 'Cash', 'Paid', 3.00, 0.60, 19.60, 2, 5.00, 1.00, 15.00, 5.00, 0, 1, 1, 0, '2019-01-02 14:58:16', '2019-01-02 14:58:16', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `lsp_invoice_email_teamplates`
--

CREATE TABLE `lsp_invoice_email_teamplates` (
  `id` int(10) UNSIGNED NOT NULL,
  `company_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `terms_title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `terms_text` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_time` int(1) NOT NULL DEFAULT '1',
  `bcc` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `store_id` int(11) NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `lsp_invoice_email_teamplates`
--

INSERT INTO `lsp_invoice_email_teamplates` (`id`, `company_name`, `city`, `address`, `phone`, `terms_title`, `terms_text`, `email_time`, `bcc`, `store_id`, `created_by`, `updated_by`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Simple Retail POS', 'Starling Heights', '14 Block A, New Test Road. USA', '555-555******', 'Terms & Condition', 'Some text here some text here some text here some text here some text here some text here some text here some text here some text here some text here some text here some text here some text h', 1, NULL, 1, 1, 0, '2018-06-08 12:42:08', '2018-06-08 12:42:08', NULL),
(2, 'Simple Retail POS', 'Starling Heights', '14 Block A, New Test Road. USA', '555-555******', 'Terms & Condition', 'Some text here some text here some text here some text here some text here some text here some text here some text here some text here some text here some text here some text here some text h', 1, NULL, 31, 7, 0, '2018-08-31 09:48:05', '2018-08-31 09:48:05', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `lsp_invoice_layout_ones`
--

CREATE TABLE `lsp_invoice_layout_ones` (
  `id` int(10) UNSIGNED NOT NULL,
  `company_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'WIRELESS GEEKS WHOLESALE',
  `company_thank_you_message` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Thank You for your Business',
  `company_services` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Wireless Geeks - LCD Refurbishing | Apple Parts | Samsung Parts | LCD Buyback | Wholesale Repairs',
  `logo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1525475961.png',
  `mm_one` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'We Buy Broken LCD’s | We Refurbish Your LCD’s | We Sell Parts!',
  `mm_two` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '7 Years of Experience!',
  `mm_three` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Visit our Local Warehouse today at:',
  `mm_four` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1820 E. 11 Mile Rd. Madison Heights MI 48071',
  `fotter_company_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Wireless Geeks Inc.',
  `logo_fotter` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '1525475961f.png',
  `c_one` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Tel (586)333-4005',
  `c_two` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1820 E. 11 Mile Rd. Madison Heights MI 48071',
  `c_three` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Visit our Sites Below!',
  `c_four` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'http://nucleuspos.com',
  `c_five` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'http://wirelessgeekswholesale.com',
  `c_six` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'http://geekunlocks.com',
  `terms` text COLLATE utf8mb4_unicode_ci,
  `store_id` int(11) NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `lsp_invoice_layout_ones`
--

INSERT INTO `lsp_invoice_layout_ones` (`id`, `company_name`, `company_thank_you_message`, `company_services`, `logo`, `mm_one`, `mm_two`, `mm_three`, `mm_four`, `fotter_company_name`, `logo_fotter`, `c_one`, `c_two`, `c_three`, `c_four`, `c_five`, `c_six`, `terms`, `store_id`, `created_by`, `updated_by`, `created_at`, `updated_at`, `deleted_at`) VALUES
(3, 'WIRELESS GEEKS WHOLESALE', 'Thank You for your Business', 'Wireless Geeks - LCD Refurbishing | Apple Parts | Samsung Parts | LCD Buyback | Wholesale Repairs', '1539023033.png', 'We Buy Broken LCD’s | We Refurbish Your LCD’s | We Sell Parts!', '7 Years of Experience!', 'Visit our Local Warehouse today at:', '1820 E. 11 Mile Rd. Madison Heights MI 48071', 'WIRELESS GEEKS INC', '1539023033f.png', 'Tel (586)333-4005', '1820 E. 11 Mile Rd. Madison Heights MI 48071', 'Visit our Sites Below!', 'http://nucleuspos.com', 'http://wirelessgeekswholesale.com', 'http://geekunlocks.com', 'DEMO REPAIR, is always proud to repair your device under a limited 90-day part(s) and labor warranty. We are only responsible for parts that the customer requests to be repaired. Warranty does NOT cover issues that do not pertain to the repair applied to the device. Any part(s) that the customer supplies we are always proud to fix or replace WITHOUT warranty on the part since the part does not come out of our inventory. We are NOT responsible for the loss of data as our job is to only fix your device as you request without interfering with your device data. Part(s) are only returned and replaced under the limited 90-day warranty if the part is defective. Unfortunately, if we replace an LCD and you break it, whether it is physical or water damage, our 90-day limited warranty does NOT cover the part, therefore we would have to repair the part which renews your 90-day limited warranty.', 1, 0, 0, '2018-05-04 17:22:54', '2018-10-08 12:23:53', NULL),
(4, 'WIRELESS GEEKS WHOLESALE', 'Thank You for your Business', 'Wireless Geeks - LCD Refurbishing | Apple Parts | Samsung Parts | LCD Buyback | Wholesale Repairs', '1525475961.png', 'We Buy Broken LCD’s | We Refurbish Your LCD’s | We Sell Parts!', '7 Years of Experience!', 'Visit our Local Warehouse today at:', '1820 E. 11 Mile Rd. Madison Heights MI 48071', 'Wireless Geeks Inc.', '1525475961f.png', 'Tel (586)333-4005', '1820 E. 11 Mile Rd. Madison Heights MI 48071', 'Visit our Sites Below!', 'http://nucleuspos.com', 'http://wirelessgeekswholesale.com', 'http://geekunlocks.com', NULL, 31, 0, 0, '2018-08-31 09:48:12', '2018-08-31 09:48:12', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `lsp_invoice_layout_twos`
--

CREATE TABLE `lsp_invoice_layout_twos` (
  `id` int(10) UNSIGNED NOT NULL,
  `company_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'WIRELESS GEEKS WHOLESALE',
  `company_thank_you_message` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'Thank You For Being With us.',
  `c_one` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Tel (586)333-4005',
  `address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '4025 Oak Avenue,',
  `city` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Melbourne,',
  `state` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Florida 32940,',
  `country` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'USA',
  `logo` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'logo.png',
  `mm_one` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'We Buy Broken LCD’s | We Refurbish Your LCD’s | We Sell Parts!',
  `mm_two` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '7 Years of Experience!',
  `mm_three` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Visit our Local Warehouse today at:',
  `mm_four` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1820 E. 11 Mile Rd. Madison Heights MI 48071',
  `terms` text COLLATE utf8mb4_unicode_ci,
  `store_id` int(11) NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `lsp_invoice_layout_twos`
--

INSERT INTO `lsp_invoice_layout_twos` (`id`, `company_name`, `company_thank_you_message`, `c_one`, `address`, `city`, `state`, `country`, `logo`, `mm_one`, `mm_two`, `mm_three`, `mm_four`, `terms`, `store_id`, `created_by`, `updated_by`, `created_at`, `updated_at`, `deleted_at`) VALUES
(3, 'WIRELESS GEEKS WHOLESALE', 'Thank You For Being With us.', 'Tel (586)333-4005', '4025 Oak Avenue,', 'Melbourne,', 'Florida 32940,', 'USA', 'logo.png', 'We Buy Broken LCD’s | We Refurbish Your LCD’s | We Sell Parts!', '7 Years of Experience!', 'Visit our Local Warehouse today at:', '1820 E. 11 Mile Rd. Madison Heights MI 48071', 'DEMO REPAIR, is always proud to repair your device under a limited 90-day part(s) and labor warranty. We are only responsible for parts that the customer requests to be repaired. Warranty does NOT cover issues that do not pertain to the repair applied to the device. Any part(s) that the customer supplies we are always proud to fix or replace WITHOUT warranty on the part since the part does not come out of our inventory. We are NOT responsible for the loss of data as our job is to only fix your device as you request without interfering with your device data. Part(s) are only returned and replaced under the limited 90-day warranty if the part is defective. Unfortunately, if we replace an LCD and you break it, whether it is physical or water damage, our 90-day limited warranty does NOT cover the part, therefore we would have to repair the part which renews your 90-day limited warranty.', 1, 0, 0, '2018-05-05 15:22:36', '2018-05-11 13:47:07', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `lsp_invoice_payments`
--

CREATE TABLE `lsp_invoice_payments` (
  `id` int(10) UNSIGNED NOT NULL,
  `invoice_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `customer_name` text COLLATE utf8mb4_unicode_ci,
  `tender_id` int(11) NOT NULL,
  `tender_name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `total_amount` double(8,2) NOT NULL,
  `paid_amount` double(8,2) NOT NULL,
  `store_id` int(11) NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `lsp_invoice_payments`
--

INSERT INTO `lsp_invoice_payments` (`id`, `invoice_id`, `customer_id`, `customer_name`, `tender_id`, `tender_name`, `total_amount`, `paid_amount`, `store_id`, `created_by`, `updated_by`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1521566131, 8, NULL, 6, NULL, 110.21, 110.21, 13, 1, 0, '2018-03-20 11:15:29', '2018-03-20 11:15:29', NULL),
(2, 1521566130, 8, NULL, 6, NULL, 390.37, 390.37, 13, 1, 0, '2018-03-20 11:27:09', '2018-03-20 11:27:09', NULL),
(3, 1521752981, 6, NULL, 6, NULL, 179.07, 179.34, 13, 1, 0, '2018-03-22 16:02:01', '2018-03-22 16:02:01', NULL),
(4, 1521756122, 9, NULL, 6, NULL, 93.94, 94.08, 13, 1, 0, '2018-03-22 16:23:29', '2018-03-22 16:23:29', NULL),
(5, 1521757410, 5, NULL, 6, NULL, 144.82, 145.04, 13, 1, 0, '2018-03-22 16:25:42', '2018-03-22 16:25:42', NULL),
(6, 1521846193, 5, 'Brand Custom-S', 6, 'Cash', 145.04, 145.04, 13, 1, 0, '2018-03-23 17:03:13', '2018-03-23 17:03:13', NULL),
(7, 1523220777, 6, 'Wireless Geeks', 6, 'Cash', 114.66, 114.66, 13, 1, 0, '2018-04-08 14:54:21', '2018-04-08 14:54:21', NULL),
(8, 1523220876, 8, 'iGeek Eastpointe', 6, 'Cash', 33.32, 33.32, 13, 1, 0, '2018-04-08 15:04:56', '2018-04-08 15:04:56', NULL),
(9, 1523221497, 7, 'Wireless Geeks', 6, 'Cash', 104.86, 104.86, 13, 1, 0, '2018-04-08 16:04:09', '2018-04-08 16:04:09', NULL),
(10, 1523225050, 5, 'Brand Custom-S', 6, 'Cash', 49.98, 49.98, 13, 1, 0, '2018-04-08 16:13:07', '2018-04-08 16:13:07', NULL),
(11, 1523294846, 7, 'Wireless Geeks', 6, 'Cash', 114.66, 114.66, 13, 1, 0, '2018-04-09 13:48:23', '2018-04-09 13:48:23', NULL),
(12, 1523303303, 6, 'Wireless Geeks', 6, 'Cash', 54.88, 54.88, 13, 1, 0, '2018-04-09 15:44:51', '2018-04-09 15:44:51', NULL),
(13, 1523310292, 5, 'Brand Custom-S', 6, 'Cash', 21.56, 21.56, 13, 1, 0, '2018-04-09 16:35:44', '2018-04-09 16:35:44', NULL),
(14, 1523387430, 7, 'Wireless Geeks', 6, 'Cash', 54.88, 54.88, 13, 1, 0, '2018-04-10 14:37:25', '2018-04-10 14:37:25', NULL),
(15, 1525017380, 27, 'CHEF’S SPECIAL DISHES', 7, 'Bhuna', 9.80, 9.80, 1, 1, 0, '2018-04-29 09:58:04', '2018-04-29 09:58:04', NULL),
(16, 1525373162, 28, 'MD MAHAMUDUR Zaman Bhuyan', 7, 'Bhuna', 1666.00, 1666.00, 1, 1, 0, '2018-05-03 12:46:53', '2018-05-03 12:46:53', NULL),
(17, 1525978703, 28, 'MD MAHAMUDUR Zaman Bhuyan', 7, 'Bhuna', 58.80, 58.80, 1, 1, 0, '2018-05-10 20:08:21', '2018-05-10 20:08:21', NULL),
(18, 1526041609, 29, 'MD MAHAMUDUR Zaman Bhuyan', 7, 'Bhuna', 39.20, 39.20, 1, 1, 0, '2018-05-11 06:27:33', '2018-05-11 06:27:33', NULL),
(19, 1526042681, 27, 'CHEF’S SPECIAL DISHES', 7, 'Bhuna', 49.00, 49.00, 1, 1, 0, '2018-05-11 16:39:56', '2018-05-11 16:39:56', NULL),
(20, 1526078547, 28, 'MD MAHAMUDUR Zaman Bhuyan', 7, 'Bhuna', 19.60, 19.60, 1, 1, 0, '2018-05-11 16:43:22', '2018-05-11 16:43:22', NULL),
(21, 1526078602, 28, 'MD MAHAMUDUR Zaman Bhuyan', 7, 'Bhuna', 1033.90, 1033.90, 1, 1, 0, '2018-05-11 16:43:50', '2018-05-11 16:43:50', NULL),
(22, 1526078652, 27, 'CHEF’S SPECIAL DISHES', 7, 'Bhuna', 49.00, 49.00, 1, 1, 0, '2018-05-11 16:46:41', '2018-05-11 16:46:41', NULL),
(23, 1526078809, 28, 'MD MAHAMUDUR Zaman Bhuyan', 7, 'Bhuna', 1029.00, 1029.00, 1, 1, 0, '2018-05-11 16:47:19', '2018-05-11 16:47:19', NULL),
(24, 1526078840, 28, 'MD MAHAMUDUR Zaman Bhuyan', 7, 'Bhuna', 49.00, 49.00, 1, 1, 0, '2018-05-11 16:47:38', '2018-05-11 16:47:38', NULL),
(25, 1526078859, 28, 'MD MAHAMUDUR Zaman Bhuyan', 7, 'Bhuna', 49.00, 49.00, 1, 1, 0, '2018-05-11 17:08:20', '2018-05-11 17:08:20', NULL),
(26, 1528482259, 28, 'MD MAHAMUDUR Zaman Bhuyan', 8, 'Card Payment', 41.16, 41.16, 1, 1, 0, '2018-06-08 12:36:13', '2018-06-08 12:36:13', NULL),
(27, 1528482259, 28, 'MD MAHAMUDUR Zaman Bhuyan', 8, 'Card Payment', 41.16, 41.16, 1, 1, 0, '2018-06-08 12:36:22', '2018-06-08 12:36:22', NULL),
(28, 1528482259, 28, 'MD MAHAMUDUR Zaman Bhuyan', 8, 'Card Payment', 41.16, 41.16, 1, 1, 0, '2018-06-08 12:36:34', '2018-06-08 12:36:34', NULL),
(29, 1528482259, 28, 'MD MAHAMUDUR Zaman Bhuyan', 8, 'Card Payment', 41.16, 41.16, 1, 1, 0, '2018-06-08 12:37:11', '2018-06-08 12:37:11', NULL),
(30, 1528482259, 28, 'MD MAHAMUDUR Zaman Bhuyan', 8, 'Card Payment', 41.16, 41.16, 1, 1, 0, '2018-06-08 12:42:26', '2018-06-08 12:42:26', NULL),
(31, 1528483432, 28, 'MD MAHAMUDUR Zaman Bhuyan', 8, 'Card Payment', 78.40, 78.40, 1, 1, 0, '2018-06-08 12:44:49', '2018-06-08 12:44:49', NULL),
(32, 1528483490, 28, 'MD MAHAMUDUR Zaman Bhuyan', 8, 'Card Payment', 39.20, 39.20, 1, 1, 0, '2018-06-08 12:58:00', '2018-06-08 12:58:00', NULL),
(33, 1528484281, 28, 'MD MAHAMUDUR Zaman Bhuyan', 8, 'Card Payment', 90.16, 90.16, 1, 1, 0, '2018-06-08 13:29:05', '2018-06-08 13:29:05', NULL),
(34, 1528486146, 29, 'MD MAHAMUDUR Zaman Bhuyan', 8, 'Card Payment', 78.40, 256.40, 1, 1, 0, '2018-06-08 16:11:27', '2018-06-08 16:11:27', NULL),
(35, 1530264400, 28, 'MD MAHAMUDUR Zaman Bhuyan', 7, 'Bhuna', 1607.20, 1607.20, 1, 1, 0, '2018-06-29 03:27:08', '2018-06-29 03:27:08', NULL),
(36, 1530280686, 28, 'MD MAHAMUDUR Zaman Bhuyan', 0, '', 663.46, 0.00, 1, 1, 0, '2018-06-29 08:14:17', '2018-06-29 08:14:17', NULL),
(37, 1530281657, 28, 'MD MAHAMUDUR Zaman Bhuyan', 8, 'Card Payment', 58.80, 663.46, 1, 1, 0, '2018-06-29 09:46:00', '2018-06-29 09:46:00', NULL),
(38, 1530287318, 43, 'Demo Name 3', 8, 'Card Payment', 19.60, 19.60, 1, 1, 0, '2018-06-29 09:48:49', '2018-06-29 11:58:49', NULL),
(39, 1530295427, 29, 'MD MAHAMUDUR Zaman Bhuyan', 8, 'Card Payment', 49.00, 49.00, 1, 1, 0, '2018-06-29 12:04:33', '2018-06-29 12:08:00', NULL),
(40, 1530295474, 33, 'MD MAHAMUDUR Zaman Bhuyan', 8, 'Card Payment', 663.46, 663.46, 1, 1, 0, '2018-06-29 12:32:34', '2018-06-29 12:34:08', NULL),
(41, 1530306106, 41, 'Demo Name 1', 0, '', 39.20, 0.00, 1, 1, 0, '2018-06-29 15:01:58', '2018-06-29 15:01:58', NULL),
(42, 1530646269, 36, 'MD MAHAMUDUR Zaman Bhuyan', 7, 'Bhuna', 78.40, 78.40, 1, 1, 0, '2018-07-03 14:05:52', '2018-07-03 14:05:52', NULL),
(43, 1531167881, 28, 'MD MAHAMUDUR Zaman Bhuyan', 0, '', 58.80, 0.00, 1, 1, 0, '2018-07-09 14:42:05', '2018-07-09 14:42:05', NULL),
(44, 1531245939, 30, 'MD MAHAMUDUR Zaman Bhuyan', 0, '', 39.20, 0.00, 1, 1, 0, '2018-07-10 12:07:39', '2018-07-10 12:07:39', NULL),
(45, 1531245939, 30, 'MD MAHAMUDUR Zaman Bhuyan', 9, 'Paypal', 39.20, 39.20, 1, 1, 0, '2018-07-10 13:10:57', '2018-07-10 13:10:57', NULL),
(46, 1531167881, 28, 'MD MAHAMUDUR Zaman Bhuyan', 9, 'Paypal', 58.80, 58.80, 1, 1, 0, '2018-07-10 13:13:12', '2018-07-10 13:13:12', NULL),
(47, 1531250059, 33, 'MD MAHAMUDUR Zaman Bhuyan', 0, '', 58.80, 0.00, 1, 1, 0, '2018-07-10 13:14:35', '2018-07-10 13:14:35', NULL),
(48, 1531250059, 33, 'MD MAHAMUDUR Zaman Bhuyan', 9, 'Paypal', 58.80, 58.80, 1, 1, 0, '2018-07-10 13:16:30', '2018-07-10 13:16:30', NULL),
(49, 1532201170, 29, 'MD MAHAMUDUR Zaman Bhuyan', 9, 'Paypal', 58.80, 58.80, 1, 1, 0, '2018-07-21 14:29:56', '2018-07-21 14:29:56', NULL),
(50, 1532204996, 33, 'MD MAHAMUDUR Zaman Bhuyan', 9, 'Paypal', 39.20, 39.20, 1, 1, 0, '2018-07-21 14:31:08', '2018-07-21 14:31:08', NULL),
(51, 1532205069, 28, 'MD MAHAMUDUR Zaman Bhuyan', 9, 'Paypal', 19.60, 19.60, 1, 1, 0, '2018-07-21 14:31:51', '2018-07-21 14:31:51', NULL),
(52, 1532205112, 30, 'MD MAHAMUDUR Zaman Bhuyan', 9, 'Paypal', 19.60, 19.60, 1, 1, 0, '2018-07-21 14:32:55', '2018-07-21 14:32:55', NULL),
(53, 1532717608, 29, 'MD MAHAMUDUR Zaman Bhuyan', 0, '', 4.90, 0.00, 1, 1, 0, '2018-07-27 14:44:47', '2018-07-27 14:44:47', NULL),
(54, 1532724288, 36, 'MD MAHAMUDUR Zaman Bhuyan', 9, 'Paypal', 26.46, 26.46, 1, 1, 0, '2018-07-27 15:00:58', '2018-07-27 15:00:58', NULL),
(55, 1532725259, 30, 'MD MAHAMUDUR Zaman Bhuyan', 10, 'Cash', 58.80, 58.80, 1, 1, 0, '2018-07-27 15:07:55', '2018-07-27 15:07:55', NULL),
(56, 1535730471, 53, 'dasd', 11, 'Cash', 0.98, 0.98, 31, 7, 0, '2018-08-31 09:48:05', '2018-08-31 09:48:05', NULL),
(57, 1536928881, 28, 'MD MAHAMUDUR Zaman Bhuyan', 9, 'Paypal', 127.40, 127.40, 1, 1, 0, '2018-09-14 11:37:58', '2018-09-14 11:37:58', NULL),
(58, 1536928881, 28, 'MD MAHAMUDUR Zaman Bhuyan', 9, 'Paypal', 127.40, 127.40, 1, 1, 0, '2018-09-14 12:07:21', '2018-09-14 12:07:21', NULL),
(59, 1536928881, 28, 'MD MAHAMUDUR Zaman Bhuyan', 9, 'Paypal', 127.40, 127.40, 1, 1, 0, '2018-09-14 12:45:57', '2018-09-14 12:45:57', NULL),
(60, 1536928881, 28, 'MD MAHAMUDUR Zaman Bhuyan', 9, 'Paypal', 127.40, 127.40, 1, 1, 0, '2018-09-14 12:47:59', '2018-09-14 12:47:59', NULL),
(61, 1536928881, 28, 'MD MAHAMUDUR Zaman Bhuyan', 9, 'Paypal', 127.40, 127.40, 1, 1, 0, '2018-09-14 13:01:31', '2018-09-14 13:01:31', NULL),
(62, 1536928881, 28, 'MD MAHAMUDUR Zaman Bhuyan', 9, 'Paypal', 127.40, 127.40, 1, 1, 0, '2018-09-14 13:02:56', '2018-09-14 13:02:56', NULL),
(63, 1536951799, 28, 'MD MAHAMUDUR Zaman Bhuyan', 9, 'Paypal', 58.80, 58.80, 1, 1, 0, '2018-09-14 13:14:43', '2018-09-14 13:14:43', NULL),
(64, 1536951799, 28, 'MD MAHAMUDUR Zaman Bhuyan', 0, '', 58.80, 58.80, 1, 1, 0, '2018-09-14 13:24:34', '2018-09-14 13:24:34', NULL),
(65, 1536953075, 33, 'MD MAHAMUDUR Zaman Bhuyan', 9, 'Paypal', 78.40, 78.40, 1, 1, 0, '2018-09-14 13:43:00', '2018-09-14 13:43:00', NULL),
(66, 1536953075, 33, 'MD MAHAMUDUR Zaman Bhuyan', 0, '', 78.40, 78.40, 1, 1, 0, '2018-09-14 13:43:21', '2018-09-14 13:43:21', NULL),
(67, 1536954202, 50, 'Test Customer 1000', 9, 'Paypal', 39.20, 39.20, 1, 1, 0, '2018-09-14 13:45:00', '2018-09-14 13:45:00', NULL),
(68, 1536954202, 50, 'Test Customer 1000', 0, '', 39.20, 39.20, 1, 1, 0, '2018-09-14 13:45:20', '2018-09-14 13:45:20', NULL),
(69, 1536954321, 28, 'MD MAHAMUDUR Zaman Bhuyan', 9, 'Paypal', 19.60, 19.60, 1, 1, 0, '2018-09-14 13:46:29', '2018-09-14 13:46:29', NULL),
(70, 1536954321, 28, 'MD MAHAMUDUR Zaman Bhuyan', 0, '', 19.60, 19.60, 1, 1, 0, '2018-09-14 13:51:23', '2018-09-14 13:51:23', NULL),
(71, 1536954684, 33, 'MD MAHAMUDUR Zaman Bhuyan', 9, 'Paypal', 58.80, 58.80, 1, 1, 0, '2018-09-14 13:54:34', '2018-09-14 13:54:34', NULL),
(72, 1536954684, 33, 'MD MAHAMUDUR Zaman Bhuyan', 0, '', 58.80, 58.80, 1, 1, 0, '2018-09-14 13:54:45', '2018-09-14 13:54:45', NULL),
(73, 1539801642, 27, 'CHEF’S SPECIAL DISHES', 10, 'Cash', 66.64, 66.64, 1, 1, 0, '2018-10-17 13:53:27', '2018-10-17 13:53:27', NULL),
(74, 1539900283, 28, 'MD MAHAMUDUR Zaman Bhuyan', 10, 'Cash', 1.96, 1.96, 1, 1, 0, '2018-10-18 16:11:59', '2018-10-18 16:11:59', NULL),
(75, 1539962528, 28, 'MD MAHAMUDUR Zaman Bhuyan', 10, 'Cash', 9.80, 9.80, 1, 1, 0, '2018-10-19 15:23:30', '2018-10-19 15:23:30', NULL),
(76, 1545905398, 28, 'MD MAHAMUDUR Zaman Bhuyan', 10, 'Cash', 32.34, 32.34, 1, 1, 0, '2018-12-27 05:25:31', '2018-12-27 05:25:31', NULL),
(77, 1545909932, 28, 'MD MAHAMUDUR Zaman Bhuyan', 10, 'Cash', 29.40, 29.40, 1, 1, 0, '2018-12-27 05:47:58', '2018-12-27 05:47:58', NULL),
(78, 1545941247, 28, 'MD MAHAMUDUR Zaman Bhuyan', 10, 'Cash', 19.60, 19.60, 1, 1, 0, '2018-12-27 14:55:36', '2018-12-27 14:55:36', NULL),
(79, 1545944137, 27, 'CHEF’S SPECIAL DISHES', 10, 'Cash', 9.80, 9.80, 1, 1, 0, '2018-12-27 14:56:27', '2018-12-27 14:56:27', NULL),
(80, 1546159770, 28, 'MD MAHAMUDUR Zaman Bhuyan', 10, 'Cash', 1.93, 1.93, 1, 1, 0, '2018-12-30 05:39:01', '2018-12-30 05:39:01', NULL),
(81, 1546169942, 28, 'MD MAHAMUDUR Zaman Bhuyan', 10, 'Cash', 9.66, 9.66, 1, 1, 0, '2018-12-30 05:41:05', '2018-12-30 05:41:05', NULL),
(82, 1546334482, 29, 'MD MAHAMUDUR Zaman Bhuyan', 10, 'Cash', 8.69, 8.82, 1, 1, 0, '2019-01-01 03:32:15', '2019-01-01 03:32:15', NULL),
(83, 1546462247, 29, 'MD MAHAMUDUR Zaman Bhuyan', 10, 'Cash', 19.60, 19.60, 1, 1, 0, '2019-01-02 14:51:59', '2019-01-02 14:51:59', NULL),
(84, 1546462321, 28, 'MD MAHAMUDUR Zaman Bhuyan', 10, 'Cash', 19.60, 19.60, 1, 1, 0, '2019-01-02 14:56:36', '2019-01-02 14:56:36', NULL),
(85, 1546462596, 28, 'MD MAHAMUDUR Zaman Bhuyan', 10, 'Cash', 19.60, 19.60, 1, 1, 0, '2019-01-02 14:58:16', '2019-01-02 14:58:16', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `lsp_invoice_products`
--

CREATE TABLE `lsp_invoice_products` (
  `id` int(10) UNSIGNED NOT NULL,
  `invoice_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` double(8,2) NOT NULL,
  `cost` double(8,2) NOT NULL,
  `tax_percent` double(8,2) NOT NULL,
  `tax_amount` double(8,2) NOT NULL,
  `discount_percent` double(8,2) NOT NULL,
  `discount_amount` double(8,2) NOT NULL,
  `cupon_amount` double(8,2) NOT NULL,
  `total_price` double(8,2) NOT NULL,
  `total_cost` double(8,2) NOT NULL,
  `store_id` int(11) NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `lsp_invoice_products`
--

INSERT INTO `lsp_invoice_products` (`id`, `invoice_id`, `product_id`, `quantity`, `price`, `cost`, `tax_percent`, `tax_amount`, `discount_percent`, `discount_amount`, `cupon_amount`, `total_price`, `total_cost`, `store_id`, `created_by`, `updated_by`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1518802273, 22, 4, 14.00, 9.00, 0.00, 0.00, 0.00, 0.00, 0.00, 56.00, 36.00, 13, 1, 0, '2018-02-16 11:31:13', '2018-02-16 12:51:18', '2018-02-16 12:51:18'),
(2, 1518802273, 28, 4, 47.00, 42.00, 0.00, 0.00, 0.00, 0.00, 0.00, 188.00, 168.00, 13, 1, 0, '2018-02-16 11:31:13', '2018-02-16 12:51:18', '2018-02-16 12:51:18'),
(3, 1518802273, 25, 4, 45.00, 40.00, 0.00, 0.00, 0.00, 0.00, 0.00, 180.00, 160.00, 13, 1, 0, '2018-02-16 11:31:13', '2018-02-16 12:51:18', '2018-02-16 12:51:18'),
(4, 1518806346, 8, 1, 14.00, 9.00, 0.00, 0.00, 0.00, 0.00, 0.00, 14.00, 9.00, 13, 1, 0, '2018-02-16 12:39:06', '2018-02-16 12:51:37', '2018-02-16 12:51:37'),
(5, 1518806346, 15, 1, 22.00, 22.00, 0.00, 0.00, 0.00, 0.00, 0.00, 22.00, 22.00, 13, 1, 0, '2018-02-16 12:39:06', '2018-02-16 12:51:37', '2018-02-16 12:51:37'),
(6, 1518806346, 27, 1, 47.00, 42.00, 0.00, 0.00, 0.00, 0.00, 0.00, 47.00, 42.00, 13, 1, 0, '2018-02-16 12:39:06', '2018-02-16 12:51:37', '2018-02-16 12:51:37'),
(7, 1518806346, 27, 1, 47.00, 42.00, 0.00, 0.00, 0.00, 0.00, 0.00, 47.00, 42.00, 13, 1, 0, '2018-02-16 12:39:06', '2018-02-16 12:51:37', '2018-02-16 12:51:37'),
(8, 1518807226, 7, 1, 12.00, 10.00, 0.00, 0.00, 0.00, 0.00, 0.00, 12.00, 10.00, 13, 1, 0, '2018-02-16 12:53:46', '2018-02-16 16:11:44', '2018-02-16 16:11:44'),
(9, 1518807226, 6, 1, 15.00, 11.25, 0.00, 0.00, 0.00, 0.00, 0.00, 15.00, 11.25, 13, 1, 0, '2018-02-16 12:53:47', '2018-02-16 16:11:44', '2018-02-16 16:11:44'),
(10, 1518807226, 12, 1, 19.00, 12.00, 0.00, 0.00, 0.00, 0.00, 0.00, 19.00, 12.00, 13, 1, 0, '2018-02-16 12:53:47', '2018-02-16 16:11:44', '2018-02-16 16:11:44'),
(11, 1518807226, 7, 1, 12.00, 10.00, 0.00, 0.00, 0.00, 0.00, 0.00, 12.00, 10.00, 13, 1, 0, '2018-02-16 16:11:44', '2018-02-16 16:13:54', '2018-02-16 16:13:54'),
(12, 1518807226, 6, 1, 15.00, 11.25, 0.00, 0.00, 0.00, 0.00, 0.00, 15.00, 11.25, 13, 1, 0, '2018-02-16 16:11:44', '2018-02-16 16:13:54', '2018-02-16 16:13:54'),
(13, 1518807226, 12, 1, 19.00, 12.00, 0.00, 0.00, 0.00, 0.00, 0.00, 19.00, 12.00, 13, 1, 0, '2018-02-16 16:11:44', '2018-02-16 16:13:54', '2018-02-16 16:13:54'),
(14, 1518807226, 7, 1, 12.00, 10.00, 0.00, 0.00, 0.00, 0.00, 0.00, 12.00, 10.00, 13, 1, 0, '2018-02-16 16:13:54', '2018-03-01 13:59:58', '2018-03-01 13:59:58'),
(15, 1518807226, 6, 1, 15.00, 11.25, 0.00, 0.00, 0.00, 0.00, 0.00, 15.00, 11.25, 13, 1, 0, '2018-02-16 16:13:54', '2018-03-01 13:59:58', '2018-03-01 13:59:58'),
(16, 1518807226, 12, 1, 19.00, 12.00, 0.00, 0.00, 0.00, 0.00, 0.00, 19.00, 12.00, 13, 1, 0, '2018-02-16 16:13:54', '2018-03-01 13:59:58', '2018-03-01 13:59:58'),
(17, 1518819408, 6, 1, 15.00, 11.25, 0.00, 0.00, 0.00, 0.00, 0.00, 15.00, 11.25, 13, 1, 0, '2018-02-16 16:16:48', '2018-02-16 16:16:48', NULL),
(18, 1518807226, 7, 2, 12.00, 10.00, 0.00, 0.00, 0.00, 0.00, 0.00, 24.00, 20.00, 13, 1, 1, '2018-03-01 13:59:58', '2018-03-01 13:59:58', NULL),
(19, 1518807226, 6, 1, 15.00, 11.25, 0.00, 0.00, 0.00, 0.00, 0.00, 15.00, 11.25, 13, 1, 1, '2018-03-01 13:59:58', '2018-03-01 13:59:58', NULL),
(20, 1518807226, 12, 1, 19.00, 12.00, 0.00, 0.00, 0.00, 0.00, 0.00, 19.00, 12.00, 13, 1, 1, '2018-03-01 13:59:59', '2018-03-01 13:59:59', NULL),
(21, 1519989038, 4, 4, 19.00, 12.00, 0.00, 0.00, 0.00, 0.00, 0.00, 76.00, 48.00, 13, 1, 0, '2018-03-02 05:10:38', '2018-03-02 05:10:38', NULL),
(22, 1519989038, 6, 1, 15.00, 11.25, 0.00, 0.00, 0.00, 0.00, 0.00, 15.00, 11.25, 13, 1, 0, '2018-03-02 05:10:38', '2018-03-02 05:10:38', NULL),
(23, 1519989038, 14, 7, 22.00, 22.00, 0.00, 0.00, 0.00, 0.00, 0.00, 154.00, 154.00, 13, 1, 0, '2018-03-02 05:10:38', '2018-03-02 05:10:38', NULL),
(24, 1519989038, 24, 9, 165.00, 155.00, 0.00, 0.00, 0.00, 0.00, 0.00, 1485.00, 1395.00, 13, 1, 0, '2018-03-02 05:10:38', '2018-03-02 05:10:38', NULL),
(25, 1520032834, 4, 1, 19.00, 12.00, 0.00, 0.00, 0.00, 0.00, 0.00, 19.00, 12.00, 13, 1, 0, '2018-03-02 17:20:34', '2018-03-02 17:35:21', '2018-03-02 17:35:21'),
(26, 1520032834, 6, 2, 15.00, 11.25, 0.00, 0.00, 0.00, 0.00, 0.00, 30.00, 22.50, 13, 1, 0, '2018-03-02 17:20:34', '2018-03-02 17:35:21', '2018-03-02 17:35:21'),
(27, 1520032834, 4, 1, 19.00, 12.00, 0.00, 0.00, 0.00, 0.00, 0.00, 19.00, 12.00, 13, 1, 1, '2018-03-02 17:35:21', '2018-03-02 17:35:41', '2018-03-02 17:35:41'),
(28, 1520032834, 6, 2, 15.00, 11.25, 0.00, 0.00, 0.00, 0.00, 0.00, 30.00, 22.50, 13, 1, 1, '2018-03-02 17:35:21', '2018-03-02 17:35:41', '2018-03-02 17:35:41'),
(29, 1520032834, 4, 2, 19.00, 12.00, 0.00, 0.00, 0.00, 0.00, 0.00, 38.00, 24.00, 13, 1, 1, '2018-03-02 17:35:41', '2018-03-03 12:44:31', '2018-03-03 12:44:31'),
(30, 1520032834, 6, 2, 15.00, 11.25, 0.00, 0.00, 0.00, 0.00, 0.00, 30.00, 22.50, 13, 1, 1, '2018-03-02 17:35:42', '2018-03-03 12:44:31', '2018-03-03 12:44:31'),
(31, 1520033838, 1, 8, 1.22, 1.00, 0.00, 0.00, 0.00, 0.00, 0.00, 9.76, 8.00, 13, 1, 0, '2018-03-02 17:37:18', '2018-03-03 12:44:33', '2018-03-03 12:44:33'),
(32, 1520097022, 3, 2, 100.00, 50.00, 0.00, 0.00, 0.00, 0.00, 0.00, 200.00, 100.00, 13, 1, 0, '2018-03-03 11:10:22', '2018-03-03 11:12:20', '2018-03-03 11:12:20'),
(33, 1520097022, 3, 2, 100.00, 50.00, 0.00, 0.00, 0.00, 0.00, 0.00, 200.00, 100.00, 13, 1, 1, '2018-03-03 11:12:20', '2018-03-03 11:12:31', '2018-03-03 11:12:31'),
(34, 1520100588, 3, 2, 100.00, 50.00, 0.00, 0.00, 0.00, 0.00, 0.00, 200.00, 100.00, 13, 1, 0, '2018-03-03 12:09:48', '2018-03-03 12:44:35', '2018-03-03 12:44:35'),
(35, 1520100695, 3, 2, 100.00, 50.00, 0.00, 0.00, 0.00, 0.00, 0.00, 200.00, 100.00, 13, 1, 0, '2018-03-03 12:11:35', '2018-03-03 12:44:38', '2018-03-03 12:44:38'),
(36, 1520100742, 3, 2, 100.00, 50.00, 0.00, 0.00, 0.00, 0.00, 0.00, 200.00, 100.00, 13, 1, 0, '2018-03-03 12:12:22', '2018-03-03 12:44:40', '2018-03-03 12:44:40'),
(37, 1520100765, 3, 2, 100.00, 50.00, 0.00, 0.00, 0.00, 0.00, 0.00, 200.00, 100.00, 13, 1, 0, '2018-03-03 12:12:45', '2018-03-03 12:43:09', '2018-03-03 12:43:09'),
(38, 1520100935, 3, 3, 100.00, 50.00, 0.00, 0.00, 0.00, 0.00, 0.00, 300.00, 150.00, 13, 1, 0, '2018-03-03 12:15:35', '2018-03-03 12:42:15', '2018-03-03 12:42:15'),
(39, 1520106771, 5, 1, 38.00, 33.00, 0.00, 0.00, 0.00, 0.00, 0.00, 38.00, 33.00, 13, 1, 0, '2018-03-03 13:52:51', '2018-03-03 14:55:56', '2018-03-03 14:55:56'),
(40, 1520106771, 5, 1, 38.00, 33.00, 0.00, 0.00, 0.00, 0.00, 0.00, 38.00, 33.00, 13, 1, 1, '2018-03-03 14:55:56', '2018-03-03 14:55:56', NULL),
(41, 1520110590, 6, 1, 15.00, 11.25, 0.00, 0.00, 0.00, 0.00, 0.00, 15.00, 11.25, 13, 1, 0, '2018-03-03 14:56:30', '2018-03-03 14:56:30', NULL),
(42, 1520110610, 6, 1, 15.00, 11.25, 0.00, 0.00, 0.00, 0.00, 0.00, 15.00, 11.25, 13, 1, 0, '2018-03-03 14:56:50', '2018-03-03 14:56:50', NULL),
(43, 1520111396, 1, 1, 1.22, 1.00, 0.00, 0.00, 0.00, 0.00, 0.00, 1.22, 1.00, 13, 1, 0, '2018-03-03 15:09:56', '2018-03-03 15:09:56', NULL),
(44, 1520193239, 4, 1, 19.00, 12.00, 0.00, 0.00, 0.00, 0.00, 0.00, 19.00, 12.00, 13, 1, 0, '2018-03-04 13:53:59', '2018-03-04 13:53:59', NULL),
(45, 1520195841, 6, 1, 15.00, 11.25, 0.00, 0.00, 0.00, 0.00, 0.00, 15.00, 11.25, 13, 1, 0, '2018-03-04 14:37:21', '2018-03-04 14:37:21', NULL),
(46, 1520195926, 6, 1, 15.00, 11.25, 0.00, 0.00, 0.00, 0.00, 0.00, 15.00, 11.25, 13, 1, 0, '2018-03-04 14:38:46', '2018-03-04 14:38:46', NULL),
(47, 1520196081, 6, 1, 15.00, 11.25, 0.00, 0.00, 0.00, 0.00, 0.00, 15.00, 11.25, 13, 1, 0, '2018-03-04 14:41:21', '2018-03-04 14:41:21', NULL),
(48, 1520196254, 6, 1, 15.00, 11.25, 0.00, 0.00, 0.00, 0.00, 0.00, 15.00, 11.25, 13, 1, 0, '2018-03-04 14:44:14', '2018-03-04 14:44:14', NULL),
(49, 1520196360, 6, 1, 15.00, 11.25, 0.00, 0.00, 0.00, 0.00, 0.00, 15.00, 11.25, 13, 1, 0, '2018-03-04 14:46:00', '2018-03-04 14:46:00', NULL),
(50, 1520196477, 6, 1, 15.00, 11.25, 0.00, 0.00, 0.00, 0.00, 0.00, 15.00, 11.25, 13, 1, 0, '2018-03-04 14:47:57', '2018-03-04 14:47:57', NULL),
(51, 1520196670, 6, 1, 15.00, 11.25, 0.00, 0.00, 0.00, 0.00, 0.00, 15.00, 11.25, 13, 1, 0, '2018-03-04 14:51:10', '2018-03-04 14:51:10', NULL),
(52, 1520196981, 6, 1, 15.00, 11.25, 0.00, 0.00, 0.00, 0.00, 0.00, 15.00, 11.25, 13, 1, 0, '2018-03-04 14:56:21', '2018-03-04 14:56:21', NULL),
(53, 1520197040, 1, 1, 1.22, 1.00, 0.00, 0.00, 0.00, 0.00, 0.00, 1.22, 1.00, 13, 1, 0, '2018-03-04 14:57:20', '2018-03-04 14:57:20', NULL),
(54, 1520197136, 3, 1, 100.00, 50.00, 0.00, 0.00, 0.00, 0.00, 0.00, 100.00, 50.00, 13, 1, 0, '2018-03-04 14:58:56', '2018-03-04 14:58:56', NULL),
(55, 1520197790, 4, 1, 19.00, 12.00, 0.00, 0.00, 0.00, 0.00, 0.00, 19.00, 12.00, 13, 1, 0, '2018-03-04 15:09:50', '2018-03-04 15:09:50', NULL),
(56, 1520263465, 6, 1, 15.00, 11.25, 0.00, 0.00, 0.00, 0.00, 0.00, 15.00, 11.25, 13, 1, 0, '2018-03-05 09:24:25', '2018-03-05 09:24:25', NULL),
(57, 1520263716, 1, 1, 1.22, 1.00, 0.00, 0.00, 0.00, 0.00, 0.00, 1.22, 1.00, 13, 1, 0, '2018-03-05 09:28:36', '2018-03-05 09:28:36', NULL),
(58, 1520277669, 1, 1, 1.22, 1.00, 0.00, 0.00, 0.00, 0.00, 0.00, 1.22, 1.00, 13, 1, 0, '2018-03-05 13:21:09', '2018-03-05 13:21:09', NULL),
(59, 1520277721, 1, 1, 1.22, 1.00, 0.00, 0.00, 0.00, 0.00, 0.00, 1.22, 1.00, 13, 1, 0, '2018-03-05 13:22:01', '2018-03-05 13:22:01', NULL),
(60, 1520278896, 1, 1, 1.22, 1.00, 0.00, 0.00, 0.00, 0.00, 0.00, 1.22, 1.00, 13, 1, 0, '2018-03-05 13:41:36', '2018-03-05 13:41:36', NULL),
(61, 1520278925, 3, 2, 100.00, 50.00, 0.00, 0.00, 0.00, 0.00, 0.00, 200.00, 100.00, 13, 1, 0, '2018-03-05 13:42:05', '2018-03-05 13:42:45', '2018-03-05 13:42:45'),
(62, 1520278925, 3, 2, 100.00, 50.00, 0.00, 0.00, 0.00, 0.00, 0.00, 200.00, 100.00, 13, 1, 1, '2018-03-05 13:42:45', '2018-03-05 13:44:05', '2018-03-05 13:44:05'),
(63, 1520279304, 6, 3, 15.00, 11.25, 0.00, 0.00, 0.00, 0.00, 0.00, 45.00, 33.75, 13, 1, 0, '2018-03-05 13:48:24', '2018-03-05 13:48:24', NULL),
(64, 1521482939, 44, 1, 22.00, 22.00, 0.00, 0.00, 0.00, 0.00, 0.00, 22.00, 22.00, 13, 1, 0, '2018-03-19 12:08:59', '2018-03-19 12:08:59', NULL),
(65, 1521482939, 43, 1, 20.00, 20.00, 0.00, 0.00, 0.00, 0.00, 0.00, 20.00, 20.00, 13, 1, 0, '2018-03-19 12:08:59', '2018-03-19 12:08:59', NULL),
(66, 1521482939, 42, 1, 10.00, 10.00, 0.00, 0.00, 0.00, 0.00, 0.00, 10.00, 10.00, 13, 1, 0, '2018-03-19 12:09:00', '2018-03-19 12:09:00', NULL),
(67, 1521482939, 41, 1, 4.00, 4.00, 0.00, 0.00, 0.00, 0.00, 0.00, 4.00, 4.00, 13, 1, 0, '2018-03-19 12:09:00', '2018-03-19 12:09:00', NULL),
(68, 1521482939, 40, 1, 20.00, 20.00, 0.00, 0.00, 0.00, 0.00, 0.00, 20.00, 20.00, 13, 1, 0, '2018-03-19 12:09:00', '2018-03-19 12:09:00', NULL),
(69, 1521482939, 39, 1, 11.00, 11.00, 0.00, 0.00, 0.00, 0.00, 0.00, 11.00, 11.00, 13, 1, 0, '2018-03-19 12:09:00', '2018-03-19 12:09:00', NULL),
(70, 1521482939, 38, 1, 10.00, 10.00, 0.00, 0.00, 0.00, 0.00, 0.00, 10.00, 10.00, 13, 1, 0, '2018-03-19 12:09:00', '2018-03-19 12:09:00', NULL),
(71, 1521482939, 37, 1, 10.00, 10.00, 0.00, 0.00, 0.00, 0.00, 0.00, 10.00, 10.00, 13, 1, 0, '2018-03-19 12:09:00', '2018-03-19 12:09:00', NULL),
(72, 1521482939, 36, 1, 11.00, 11.00, 0.00, 0.00, 0.00, 0.00, 0.00, 11.00, 11.00, 13, 1, 0, '2018-03-19 12:09:00', '2018-03-19 12:09:00', NULL),
(73, 1521482939, 35, 1, 10.00, 5.00, 0.00, 0.00, 0.00, 0.00, 0.00, 10.00, 5.00, 13, 1, 0, '2018-03-19 12:09:00', '2018-03-19 12:09:00', NULL),
(74, 1521482939, 34, 1, 10.00, 5.00, 0.00, 0.00, 0.00, 0.00, 0.00, 10.00, 5.00, 13, 1, 0, '2018-03-19 12:09:01', '2018-03-19 12:09:01', NULL),
(75, 1521482939, 33, 1, 20.00, 10.00, 0.00, 0.00, 0.00, 0.00, 0.00, 20.00, 10.00, 13, 1, 0, '2018-03-19 12:09:01', '2018-03-19 12:09:01', NULL),
(76, 1521483238, 44, 1, 22.00, 22.00, 0.00, 0.00, 0.00, 0.00, 0.00, 22.00, 22.00, 13, 1, 0, '2018-03-19 12:13:58', '2018-03-19 12:13:58', NULL),
(77, 1521483238, 43, 1, 20.00, 20.00, 0.00, 0.00, 0.00, 0.00, 0.00, 20.00, 20.00, 13, 1, 0, '2018-03-19 12:13:58', '2018-03-19 12:13:58', NULL),
(78, 1521483238, 42, 1, 10.00, 10.00, 0.00, 0.00, 0.00, 0.00, 0.00, 10.00, 10.00, 13, 1, 0, '2018-03-19 12:13:58', '2018-03-19 12:13:58', NULL),
(79, 1521483238, 41, 1, 4.00, 4.00, 0.00, 0.00, 0.00, 0.00, 0.00, 4.00, 4.00, 13, 1, 0, '2018-03-19 12:13:58', '2018-03-19 12:13:58', NULL),
(80, 1521483238, 40, 1, 20.00, 20.00, 0.00, 0.00, 0.00, 0.00, 0.00, 20.00, 20.00, 13, 1, 0, '2018-03-19 12:13:58', '2018-03-19 12:13:58', NULL),
(81, 1521483238, 39, 1, 11.00, 11.00, 0.00, 0.00, 0.00, 0.00, 0.00, 11.00, 11.00, 13, 1, 0, '2018-03-19 12:13:58', '2018-03-19 12:13:58', NULL),
(82, 1521483238, 38, 1, 10.00, 10.00, 0.00, 0.00, 0.00, 0.00, 0.00, 10.00, 10.00, 13, 1, 0, '2018-03-19 12:13:58', '2018-03-19 12:13:58', NULL),
(83, 1521483238, 37, 1, 10.00, 10.00, 0.00, 0.00, 0.00, 0.00, 0.00, 10.00, 10.00, 13, 1, 0, '2018-03-19 12:13:59', '2018-03-19 12:13:59', NULL),
(84, 1521483238, 36, 1, 11.00, 11.00, 0.00, 0.00, 0.00, 0.00, 0.00, 11.00, 11.00, 13, 1, 0, '2018-03-19 12:13:59', '2018-03-19 12:13:59', NULL),
(85, 1521483238, 35, 1, 10.00, 5.00, 0.00, 0.00, 0.00, 0.00, 0.00, 10.00, 5.00, 13, 1, 0, '2018-03-19 12:13:59', '2018-03-19 12:13:59', NULL),
(86, 1521483238, 34, 1, 10.00, 5.00, 0.00, 0.00, 0.00, 0.00, 0.00, 10.00, 5.00, 13, 1, 0, '2018-03-19 12:13:59', '2018-03-19 12:13:59', NULL),
(87, 1521483238, 33, 1, 20.00, 10.00, 0.00, 0.00, 0.00, 0.00, 0.00, 20.00, 10.00, 13, 1, 0, '2018-03-19 12:13:59', '2018-03-19 12:13:59', NULL),
(88, 1521483437, 44, 1, 22.00, 22.00, 0.00, 0.00, 0.00, 0.00, 0.00, 22.00, 22.00, 13, 1, 0, '2018-03-19 12:17:17', '2018-03-19 12:17:17', NULL),
(89, 1521483437, 43, 1, 20.00, 20.00, 0.00, 0.00, 0.00, 0.00, 0.00, 20.00, 20.00, 13, 1, 0, '2018-03-19 12:17:17', '2018-03-19 12:17:17', NULL),
(90, 1521483437, 42, 1, 10.00, 10.00, 0.00, 0.00, 0.00, 0.00, 0.00, 10.00, 10.00, 13, 1, 0, '2018-03-19 12:17:18', '2018-03-19 12:17:18', NULL),
(91, 1521483437, 41, 1, 4.00, 4.00, 0.00, 0.00, 0.00, 0.00, 0.00, 4.00, 4.00, 13, 1, 0, '2018-03-19 12:17:18', '2018-03-19 12:17:18', NULL),
(92, 1521483437, 40, 1, 20.00, 20.00, 0.00, 0.00, 0.00, 0.00, 0.00, 20.00, 20.00, 13, 1, 0, '2018-03-19 12:17:18', '2018-03-19 12:17:18', NULL),
(93, 1521483437, 39, 1, 11.00, 11.00, 0.00, 0.00, 0.00, 0.00, 0.00, 11.00, 11.00, 13, 1, 0, '2018-03-19 12:17:18', '2018-03-19 12:17:18', NULL),
(94, 1521483437, 38, 1, 10.00, 10.00, 0.00, 0.00, 0.00, 0.00, 0.00, 10.00, 10.00, 13, 1, 0, '2018-03-19 12:17:18', '2018-03-19 12:17:18', NULL),
(95, 1521483437, 37, 1, 10.00, 10.00, 0.00, 0.00, 0.00, 0.00, 0.00, 10.00, 10.00, 13, 1, 0, '2018-03-19 12:17:18', '2018-03-19 12:17:18', NULL),
(96, 1521483437, 36, 1, 11.00, 11.00, 0.00, 0.00, 0.00, 0.00, 0.00, 11.00, 11.00, 13, 1, 0, '2018-03-19 12:17:19', '2018-03-19 12:17:19', NULL),
(97, 1521483437, 35, 1, 10.00, 5.00, 0.00, 0.00, 0.00, 0.00, 0.00, 10.00, 5.00, 13, 1, 0, '2018-03-19 12:17:19', '2018-03-19 12:17:19', NULL),
(98, 1521483437, 34, 1, 10.00, 5.00, 0.00, 0.00, 0.00, 0.00, 0.00, 10.00, 5.00, 13, 1, 0, '2018-03-19 12:17:19', '2018-03-19 12:17:19', NULL),
(99, 1521483437, 33, 1, 20.00, 10.00, 0.00, 0.00, 0.00, 0.00, 0.00, 20.00, 10.00, 13, 1, 0, '2018-03-19 12:17:19', '2018-03-19 12:17:19', NULL),
(100, 1521483532, 44, 1, 22.00, 22.00, 0.00, 0.00, 0.00, 0.00, 0.00, 22.00, 22.00, 13, 1, 0, '2018-03-19 12:18:52', '2018-03-19 12:18:52', NULL),
(101, 1521483532, 43, 1, 20.00, 20.00, 0.00, 0.00, 0.00, 0.00, 0.00, 20.00, 20.00, 13, 1, 0, '2018-03-19 12:18:52', '2018-03-19 12:18:52', NULL),
(102, 1521483532, 42, 1, 10.00, 10.00, 0.00, 0.00, 0.00, 0.00, 0.00, 10.00, 10.00, 13, 1, 0, '2018-03-19 12:18:52', '2018-03-19 12:18:52', NULL),
(103, 1521483532, 41, 1, 4.00, 4.00, 0.00, 0.00, 0.00, 0.00, 0.00, 4.00, 4.00, 13, 1, 0, '2018-03-19 12:18:52', '2018-03-19 12:18:52', NULL),
(104, 1521483532, 40, 1, 20.00, 20.00, 0.00, 0.00, 0.00, 0.00, 0.00, 20.00, 20.00, 13, 1, 0, '2018-03-19 12:18:52', '2018-03-19 12:18:52', NULL),
(105, 1521483532, 39, 1, 11.00, 11.00, 0.00, 0.00, 0.00, 0.00, 0.00, 11.00, 11.00, 13, 1, 0, '2018-03-19 12:18:53', '2018-03-19 12:18:53', NULL),
(106, 1521483532, 38, 1, 10.00, 10.00, 0.00, 0.00, 0.00, 0.00, 0.00, 10.00, 10.00, 13, 1, 0, '2018-03-19 12:18:53', '2018-03-19 12:18:53', NULL),
(107, 1521483532, 37, 1, 10.00, 10.00, 0.00, 0.00, 0.00, 0.00, 0.00, 10.00, 10.00, 13, 1, 0, '2018-03-19 12:18:53', '2018-03-19 12:18:53', NULL),
(108, 1521483532, 36, 1, 11.00, 11.00, 0.00, 0.00, 0.00, 0.00, 0.00, 11.00, 11.00, 13, 1, 0, '2018-03-19 12:18:53', '2018-03-19 12:18:53', NULL),
(109, 1521483532, 35, 1, 10.00, 5.00, 0.00, 0.00, 0.00, 0.00, 0.00, 10.00, 5.00, 13, 1, 0, '2018-03-19 12:18:53', '2018-03-19 12:18:53', NULL),
(110, 1521483532, 34, 1, 10.00, 5.00, 0.00, 0.00, 0.00, 0.00, 0.00, 10.00, 5.00, 13, 1, 0, '2018-03-19 12:18:53', '2018-03-19 12:18:53', NULL),
(111, 1521483532, 33, 1, 20.00, 10.00, 0.00, 0.00, 0.00, 0.00, 0.00, 20.00, 10.00, 13, 1, 0, '2018-03-19 12:18:53', '2018-03-19 12:18:53', NULL),
(112, 1521483547, 44, 1, 22.00, 22.00, 0.00, 0.00, 0.00, 0.00, 0.00, 22.00, 22.00, 13, 1, 0, '2018-03-19 12:19:07', '2018-03-19 12:19:07', NULL),
(113, 1521483547, 43, 1, 20.00, 20.00, 0.00, 0.00, 0.00, 0.00, 0.00, 20.00, 20.00, 13, 1, 0, '2018-03-19 12:19:07', '2018-03-19 12:19:07', NULL),
(114, 1521483547, 42, 1, 10.00, 10.00, 0.00, 0.00, 0.00, 0.00, 0.00, 10.00, 10.00, 13, 1, 0, '2018-03-19 12:19:07', '2018-03-19 12:19:07', NULL),
(115, 1521483547, 41, 1, 4.00, 4.00, 0.00, 0.00, 0.00, 0.00, 0.00, 4.00, 4.00, 13, 1, 0, '2018-03-19 12:19:07', '2018-03-19 12:19:07', NULL),
(116, 1521483547, 40, 1, 20.00, 20.00, 0.00, 0.00, 0.00, 0.00, 0.00, 20.00, 20.00, 13, 1, 0, '2018-03-19 12:19:08', '2018-03-19 12:19:08', NULL),
(117, 1521483547, 39, 1, 11.00, 11.00, 0.00, 0.00, 0.00, 0.00, 0.00, 11.00, 11.00, 13, 1, 0, '2018-03-19 12:19:08', '2018-03-19 12:19:08', NULL),
(118, 1521483547, 38, 1, 10.00, 10.00, 0.00, 0.00, 0.00, 0.00, 0.00, 10.00, 10.00, 13, 1, 0, '2018-03-19 12:19:08', '2018-03-19 12:19:08', NULL),
(119, 1521483547, 37, 1, 10.00, 10.00, 0.00, 0.00, 0.00, 0.00, 0.00, 10.00, 10.00, 13, 1, 0, '2018-03-19 12:19:08', '2018-03-19 12:19:08', NULL),
(120, 1521483547, 36, 1, 11.00, 11.00, 0.00, 0.00, 0.00, 0.00, 0.00, 11.00, 11.00, 13, 1, 0, '2018-03-19 12:19:08', '2018-03-19 12:19:08', NULL),
(121, 1521483547, 35, 1, 10.00, 5.00, 0.00, 0.00, 0.00, 0.00, 0.00, 10.00, 5.00, 13, 1, 0, '2018-03-19 12:19:08', '2018-03-19 12:19:08', NULL),
(122, 1521483547, 34, 1, 10.00, 5.00, 0.00, 0.00, 0.00, 0.00, 0.00, 10.00, 5.00, 13, 1, 0, '2018-03-19 12:19:09', '2018-03-19 12:19:09', NULL),
(123, 1521483547, 33, 1, 20.00, 10.00, 0.00, 0.00, 0.00, 0.00, 0.00, 20.00, 10.00, 13, 1, 0, '2018-03-19 12:19:09', '2018-03-19 12:19:09', NULL),
(124, 1521483651, 44, 1, 22.00, 22.00, 0.00, 0.00, 0.00, 0.00, 0.00, 22.00, 22.00, 13, 1, 0, '2018-03-19 12:20:51', '2018-03-19 12:20:51', NULL),
(125, 1521483651, 43, 1, 20.00, 20.00, 0.00, 0.00, 0.00, 0.00, 0.00, 20.00, 20.00, 13, 1, 0, '2018-03-19 12:20:51', '2018-03-19 12:20:51', NULL),
(126, 1521483651, 42, 1, 10.00, 10.00, 0.00, 0.00, 0.00, 0.00, 0.00, 10.00, 10.00, 13, 1, 0, '2018-03-19 12:20:51', '2018-03-19 12:20:51', NULL),
(127, 1521483651, 41, 1, 4.00, 4.00, 0.00, 0.00, 0.00, 0.00, 0.00, 4.00, 4.00, 13, 1, 0, '2018-03-19 12:20:51', '2018-03-19 12:20:51', NULL),
(128, 1521483651, 40, 1, 20.00, 20.00, 0.00, 0.00, 0.00, 0.00, 0.00, 20.00, 20.00, 13, 1, 0, '2018-03-19 12:20:51', '2018-03-19 12:20:51', NULL),
(129, 1521483651, 39, 1, 11.00, 11.00, 0.00, 0.00, 0.00, 0.00, 0.00, 11.00, 11.00, 13, 1, 0, '2018-03-19 12:20:51', '2018-03-19 12:20:51', NULL),
(130, 1521483651, 38, 1, 10.00, 10.00, 0.00, 0.00, 0.00, 0.00, 0.00, 10.00, 10.00, 13, 1, 0, '2018-03-19 12:20:51', '2018-03-19 12:20:51', NULL),
(131, 1521483651, 37, 1, 10.00, 10.00, 0.00, 0.00, 0.00, 0.00, 0.00, 10.00, 10.00, 13, 1, 0, '2018-03-19 12:20:52', '2018-03-19 12:20:52', NULL),
(132, 1521483651, 36, 1, 11.00, 11.00, 0.00, 0.00, 0.00, 0.00, 0.00, 11.00, 11.00, 13, 1, 0, '2018-03-19 12:20:52', '2018-03-19 12:20:52', NULL),
(133, 1521483651, 35, 1, 10.00, 5.00, 0.00, 0.00, 0.00, 0.00, 0.00, 10.00, 5.00, 13, 1, 0, '2018-03-19 12:20:52', '2018-03-19 12:20:52', NULL),
(134, 1521483651, 34, 1, 10.00, 5.00, 0.00, 0.00, 0.00, 0.00, 0.00, 10.00, 5.00, 13, 1, 0, '2018-03-19 12:20:52', '2018-03-19 12:20:52', NULL),
(135, 1521483651, 33, 1, 20.00, 10.00, 0.00, 0.00, 0.00, 0.00, 0.00, 20.00, 10.00, 13, 1, 0, '2018-03-19 12:20:52', '2018-03-19 12:20:52', NULL),
(136, 1521483704, 44, 1, 22.00, 22.00, 0.00, 0.00, 0.00, 0.00, 0.00, 22.00, 22.00, 13, 1, 0, '2018-03-19 12:21:44', '2018-03-19 12:21:44', NULL),
(137, 1521483704, 43, 1, 20.00, 20.00, 0.00, 0.00, 0.00, 0.00, 0.00, 20.00, 20.00, 13, 1, 0, '2018-03-19 12:21:44', '2018-03-19 12:21:44', NULL),
(138, 1521483704, 42, 1, 10.00, 10.00, 0.00, 0.00, 0.00, 0.00, 0.00, 10.00, 10.00, 13, 1, 0, '2018-03-19 12:21:44', '2018-03-19 12:21:44', NULL),
(139, 1521483704, 41, 1, 4.00, 4.00, 0.00, 0.00, 0.00, 0.00, 0.00, 4.00, 4.00, 13, 1, 0, '2018-03-19 12:21:44', '2018-03-19 12:21:44', NULL),
(140, 1521483704, 40, 1, 20.00, 20.00, 0.00, 0.00, 0.00, 0.00, 0.00, 20.00, 20.00, 13, 1, 0, '2018-03-19 12:21:44', '2018-03-19 12:21:44', NULL),
(141, 1521483704, 39, 1, 11.00, 11.00, 0.00, 0.00, 0.00, 0.00, 0.00, 11.00, 11.00, 13, 1, 0, '2018-03-19 12:21:44', '2018-03-19 12:21:44', NULL),
(142, 1521483704, 38, 1, 10.00, 10.00, 0.00, 0.00, 0.00, 0.00, 0.00, 10.00, 10.00, 13, 1, 0, '2018-03-19 12:21:44', '2018-03-19 12:21:44', NULL),
(143, 1521483704, 37, 1, 10.00, 10.00, 0.00, 0.00, 0.00, 0.00, 0.00, 10.00, 10.00, 13, 1, 0, '2018-03-19 12:21:45', '2018-03-19 12:21:45', NULL),
(144, 1521483704, 36, 1, 11.00, 11.00, 0.00, 0.00, 0.00, 0.00, 0.00, 11.00, 11.00, 13, 1, 0, '2018-03-19 12:21:45', '2018-03-19 12:21:45', NULL),
(145, 1521483704, 35, 1, 10.00, 5.00, 0.00, 0.00, 0.00, 0.00, 0.00, 10.00, 5.00, 13, 1, 0, '2018-03-19 12:21:45', '2018-03-19 12:21:45', NULL),
(146, 1521483704, 34, 1, 10.00, 5.00, 0.00, 0.00, 0.00, 0.00, 0.00, 10.00, 5.00, 13, 1, 0, '2018-03-19 12:21:45', '2018-03-19 12:21:45', NULL),
(147, 1521483704, 33, 1, 20.00, 10.00, 0.00, 0.00, 0.00, 0.00, 0.00, 20.00, 10.00, 13, 1, 0, '2018-03-19 12:21:45', '2018-03-19 12:21:45', NULL),
(148, 1521483752, 44, 1, 22.00, 22.00, 0.00, 0.00, 0.00, 0.00, 0.00, 22.00, 22.00, 13, 1, 0, '2018-03-19 12:22:32', '2018-03-19 12:22:32', NULL),
(149, 1521483752, 43, 1, 20.00, 20.00, 0.00, 0.00, 0.00, 0.00, 0.00, 20.00, 20.00, 13, 1, 0, '2018-03-19 12:22:32', '2018-03-19 12:22:32', NULL),
(150, 1521483752, 42, 1, 10.00, 10.00, 0.00, 0.00, 0.00, 0.00, 0.00, 10.00, 10.00, 13, 1, 0, '2018-03-19 12:22:32', '2018-03-19 12:22:32', NULL),
(151, 1521483752, 41, 1, 4.00, 4.00, 0.00, 0.00, 0.00, 0.00, 0.00, 4.00, 4.00, 13, 1, 0, '2018-03-19 12:22:32', '2018-03-19 12:22:32', NULL),
(152, 1521483752, 40, 1, 20.00, 20.00, 0.00, 0.00, 0.00, 0.00, 0.00, 20.00, 20.00, 13, 1, 0, '2018-03-19 12:22:33', '2018-03-19 12:22:33', NULL),
(153, 1521483752, 39, 1, 11.00, 11.00, 0.00, 0.00, 0.00, 0.00, 0.00, 11.00, 11.00, 13, 1, 0, '2018-03-19 12:22:33', '2018-03-19 12:22:33', NULL),
(154, 1521483752, 38, 1, 10.00, 10.00, 0.00, 0.00, 0.00, 0.00, 0.00, 10.00, 10.00, 13, 1, 0, '2018-03-19 12:22:33', '2018-03-19 12:22:33', NULL),
(155, 1521483752, 37, 1, 10.00, 10.00, 0.00, 0.00, 0.00, 0.00, 0.00, 10.00, 10.00, 13, 1, 0, '2018-03-19 12:22:33', '2018-03-19 12:22:33', NULL),
(156, 1521483752, 36, 1, 11.00, 11.00, 0.00, 0.00, 0.00, 0.00, 0.00, 11.00, 11.00, 13, 1, 0, '2018-03-19 12:22:33', '2018-03-19 12:22:33', NULL),
(157, 1521483752, 35, 1, 10.00, 5.00, 0.00, 0.00, 0.00, 0.00, 0.00, 10.00, 5.00, 13, 1, 0, '2018-03-19 12:22:33', '2018-03-19 12:22:33', NULL),
(158, 1521483752, 34, 1, 10.00, 5.00, 0.00, 0.00, 0.00, 0.00, 0.00, 10.00, 5.00, 13, 1, 0, '2018-03-19 12:22:33', '2018-03-19 12:22:33', NULL),
(159, 1521483752, 33, 1, 20.00, 10.00, 0.00, 0.00, 0.00, 0.00, 0.00, 20.00, 10.00, 13, 1, 0, '2018-03-19 12:22:34', '2018-03-19 12:22:34', NULL),
(160, 1521483800, 44, 1, 22.00, 22.00, 0.00, 0.00, 0.00, 0.00, 0.00, 22.00, 22.00, 13, 1, 0, '2018-03-19 12:23:20', '2018-03-19 12:23:20', NULL),
(161, 1521483800, 43, 1, 20.00, 20.00, 0.00, 0.00, 0.00, 0.00, 0.00, 20.00, 20.00, 13, 1, 0, '2018-03-19 12:23:20', '2018-03-19 12:23:20', NULL),
(162, 1521483800, 42, 1, 10.00, 10.00, 0.00, 0.00, 0.00, 0.00, 0.00, 10.00, 10.00, 13, 1, 0, '2018-03-19 12:23:20', '2018-03-19 12:23:20', NULL),
(163, 1521483800, 41, 1, 4.00, 4.00, 0.00, 0.00, 0.00, 0.00, 0.00, 4.00, 4.00, 13, 1, 0, '2018-03-19 12:23:20', '2018-03-19 12:23:20', NULL),
(164, 1521483800, 40, 1, 20.00, 20.00, 0.00, 0.00, 0.00, 0.00, 0.00, 20.00, 20.00, 13, 1, 0, '2018-03-19 12:23:20', '2018-03-19 12:23:20', NULL),
(165, 1521483800, 39, 1, 11.00, 11.00, 0.00, 0.00, 0.00, 0.00, 0.00, 11.00, 11.00, 13, 1, 0, '2018-03-19 12:23:20', '2018-03-19 12:23:20', NULL),
(166, 1521483800, 38, 1, 10.00, 10.00, 0.00, 0.00, 0.00, 0.00, 0.00, 10.00, 10.00, 13, 1, 0, '2018-03-19 12:23:21', '2018-03-19 12:23:21', NULL),
(167, 1521483800, 37, 1, 10.00, 10.00, 0.00, 0.00, 0.00, 0.00, 0.00, 10.00, 10.00, 13, 1, 0, '2018-03-19 12:23:21', '2018-03-19 12:23:21', NULL),
(168, 1521483800, 36, 1, 11.00, 11.00, 0.00, 0.00, 0.00, 0.00, 0.00, 11.00, 11.00, 13, 1, 0, '2018-03-19 12:23:21', '2018-03-19 12:23:21', NULL),
(169, 1521483800, 35, 1, 10.00, 5.00, 0.00, 0.00, 0.00, 0.00, 0.00, 10.00, 5.00, 13, 1, 0, '2018-03-19 12:23:21', '2018-03-19 12:23:21', NULL),
(170, 1521483800, 34, 1, 10.00, 5.00, 0.00, 0.00, 0.00, 0.00, 0.00, 10.00, 5.00, 13, 1, 0, '2018-03-19 12:23:21', '2018-03-19 12:23:21', NULL),
(171, 1521483800, 33, 1, 20.00, 10.00, 0.00, 0.00, 0.00, 0.00, 0.00, 20.00, 10.00, 13, 1, 0, '2018-03-19 12:23:21', '2018-03-19 12:23:21', NULL),
(172, 1521484527, 44, 1, 22.00, 22.00, 3.00, 0.00, 0.00, 0.00, 0.00, 22.00, 22.00, 13, 1, 0, '2018-03-19 12:35:27', '2018-03-19 12:35:27', NULL),
(173, 1521484527, 43, 1, 20.00, 20.00, 3.00, 0.60, 0.00, 0.00, 0.00, 20.00, 20.00, 13, 1, 0, '2018-03-19 12:35:27', '2018-03-19 12:35:27', NULL),
(174, 1521484527, 42, 1, 10.00, 10.00, 3.00, 0.30, 0.00, 0.00, 0.00, 10.00, 10.00, 13, 1, 0, '2018-03-19 12:35:27', '2018-03-19 12:35:27', NULL),
(175, 1521484527, 41, 1, 4.00, 4.00, 3.00, 0.12, 0.00, 0.00, 0.00, 4.00, 4.00, 13, 1, 0, '2018-03-19 12:35:27', '2018-03-19 12:35:27', NULL),
(176, 1521484527, 40, 1, 20.00, 20.00, 3.00, 0.60, 0.00, 0.00, 0.00, 20.00, 20.00, 13, 1, 0, '2018-03-19 12:35:27', '2018-03-19 12:35:27', NULL),
(177, 1521484527, 39, 1, 11.00, 11.00, 3.00, 0.33, 0.00, 0.00, 0.00, 11.00, 11.00, 13, 1, 0, '2018-03-19 12:35:27', '2018-03-19 12:35:27', NULL),
(178, 1521484527, 38, 1, 10.00, 10.00, 3.00, 0.30, 0.00, 0.00, 0.00, 10.00, 10.00, 13, 1, 0, '2018-03-19 12:35:27', '2018-03-19 12:35:27', NULL),
(179, 1521484527, 37, 1, 10.00, 10.00, 3.00, 0.30, 0.00, 0.00, 0.00, 10.00, 10.00, 13, 1, 0, '2018-03-19 12:35:28', '2018-03-19 12:35:28', NULL),
(180, 1521484527, 36, 1, 11.00, 11.00, 3.00, 0.33, 0.00, 0.00, 0.00, 11.00, 11.00, 13, 1, 0, '2018-03-19 12:35:28', '2018-03-19 12:35:28', NULL),
(181, 1521484527, 35, 1, 10.00, 5.00, 3.00, 0.30, 0.00, 0.00, 0.00, 10.00, 5.00, 13, 1, 0, '2018-03-19 12:35:28', '2018-03-19 12:35:28', NULL),
(182, 1521484527, 34, 1, 10.00, 5.00, 3.00, 0.30, 0.00, 0.00, 0.00, 10.00, 5.00, 13, 1, 0, '2018-03-19 12:35:28', '2018-03-19 12:35:28', NULL),
(183, 1521484527, 33, 1, 20.00, 10.00, 3.00, 0.60, 0.00, 0.00, 0.00, 20.00, 10.00, 13, 1, 0, '2018-03-19 12:35:28', '2018-03-19 12:35:28', NULL),
(184, 1521485088, 44, 1, 22.00, 22.00, 3.00, 0.00, 0.00, 0.00, 0.00, 22.00, 22.00, 13, 1, 0, '2018-03-19 12:44:48', '2018-03-19 12:44:48', NULL),
(185, 1521485088, 43, 1, 20.00, 20.00, 3.00, 0.60, 0.00, 0.00, 0.00, 20.00, 20.00, 13, 1, 0, '2018-03-19 12:44:49', '2018-03-19 12:44:49', NULL),
(186, 1521485088, 42, 1, 10.00, 10.00, 3.00, 0.30, 0.00, 0.00, 0.00, 10.00, 10.00, 13, 1, 0, '2018-03-19 12:44:49', '2018-03-19 12:44:49', NULL),
(187, 1521485088, 41, 1, 4.00, 4.00, 3.00, 0.12, 0.00, 0.00, 0.00, 4.00, 4.00, 13, 1, 0, '2018-03-19 12:44:49', '2018-03-19 12:44:49', NULL),
(188, 1521485088, 40, 1, 20.00, 20.00, 3.00, 0.60, 0.00, 0.00, 0.00, 20.00, 20.00, 13, 1, 0, '2018-03-19 12:44:49', '2018-03-19 12:44:49', NULL),
(189, 1521485088, 39, 1, 11.00, 11.00, 3.00, 0.33, 0.00, 0.00, 0.00, 11.00, 11.00, 13, 1, 0, '2018-03-19 12:44:49', '2018-03-19 12:44:49', NULL),
(190, 1521485088, 38, 1, 10.00, 10.00, 3.00, 0.30, 0.00, 0.00, 0.00, 10.00, 10.00, 13, 1, 0, '2018-03-19 12:44:49', '2018-03-19 12:44:49', NULL),
(191, 1521485088, 37, 1, 10.00, 10.00, 3.00, 0.30, 0.00, 0.00, 0.00, 10.00, 10.00, 13, 1, 0, '2018-03-19 12:44:49', '2018-03-19 12:44:49', NULL),
(192, 1521485088, 36, 1, 11.00, 11.00, 3.00, 0.33, 0.00, 0.00, 0.00, 11.00, 11.00, 13, 1, 0, '2018-03-19 12:44:50', '2018-03-19 12:44:50', NULL),
(193, 1521485088, 35, 1, 10.00, 5.00, 3.00, 0.30, 0.00, 0.00, 0.00, 10.00, 5.00, 13, 1, 0, '2018-03-19 12:44:50', '2018-03-19 12:44:50', NULL),
(194, 1521485088, 34, 1, 10.00, 5.00, 3.00, 0.30, 0.00, 0.00, 0.00, 10.00, 5.00, 13, 1, 0, '2018-03-19 12:44:50', '2018-03-19 12:44:50', NULL),
(195, 1521485088, 33, 1, 20.00, 10.00, 3.00, 0.60, 0.00, 0.00, 0.00, 20.00, 10.00, 13, 1, 0, '2018-03-19 12:44:50', '2018-03-19 12:44:50', NULL),
(196, 1521485131, 44, 1, 22.00, 22.00, 3.00, 0.00, 0.00, 0.00, 0.00, 22.00, 22.00, 13, 1, 0, '2018-03-19 12:45:31', '2018-03-19 12:45:31', NULL),
(197, 1521485131, 43, 1, 20.00, 20.00, 3.00, 0.60, 0.00, 0.00, 0.00, 20.00, 20.00, 13, 1, 0, '2018-03-19 12:45:31', '2018-03-19 12:45:31', NULL),
(198, 1521485131, 42, 1, 10.00, 10.00, 3.00, 0.30, 0.00, 0.00, 0.00, 10.00, 10.00, 13, 1, 0, '2018-03-19 12:45:31', '2018-03-19 12:45:31', NULL),
(199, 1521485131, 41, 1, 4.00, 4.00, 3.00, 0.12, 0.00, 0.00, 0.00, 4.00, 4.00, 13, 1, 0, '2018-03-19 12:45:31', '2018-03-19 12:45:31', NULL),
(200, 1521485131, 40, 1, 20.00, 20.00, 3.00, 0.60, 0.00, 0.00, 0.00, 20.00, 20.00, 13, 1, 0, '2018-03-19 12:45:31', '2018-03-19 12:45:31', NULL),
(201, 1521485131, 39, 1, 11.00, 11.00, 3.00, 0.33, 0.00, 0.00, 0.00, 11.00, 11.00, 13, 1, 0, '2018-03-19 12:45:31', '2018-03-19 12:45:31', NULL),
(202, 1521485131, 38, 1, 10.00, 10.00, 3.00, 0.30, 0.00, 0.00, 0.00, 10.00, 10.00, 13, 1, 0, '2018-03-19 12:45:31', '2018-03-19 12:45:31', NULL),
(203, 1521485131, 37, 1, 10.00, 10.00, 3.00, 0.30, 0.00, 0.00, 0.00, 10.00, 10.00, 13, 1, 0, '2018-03-19 12:45:31', '2018-03-19 12:45:31', NULL),
(204, 1521485131, 36, 1, 11.00, 11.00, 3.00, 0.33, 0.00, 0.00, 0.00, 11.00, 11.00, 13, 1, 0, '2018-03-19 12:45:31', '2018-03-19 12:45:31', NULL),
(205, 1521485131, 35, 1, 10.00, 5.00, 3.00, 0.30, 0.00, 0.00, 0.00, 10.00, 5.00, 13, 1, 0, '2018-03-19 12:45:31', '2018-03-19 12:45:31', NULL),
(206, 1521485131, 34, 1, 10.00, 5.00, 3.00, 0.30, 0.00, 0.00, 0.00, 10.00, 5.00, 13, 1, 0, '2018-03-19 12:45:32', '2018-03-19 12:45:32', NULL),
(207, 1521485131, 33, 1, 20.00, 10.00, 3.00, 0.60, 0.00, 0.00, 0.00, 20.00, 10.00, 13, 1, 0, '2018-03-19 12:45:32', '2018-03-19 12:45:32', NULL),
(208, 1521485168, 44, 1, 22.00, 22.00, 3.00, 0.00, 0.00, 0.00, 0.00, 22.00, 22.00, 13, 1, 0, '2018-03-19 12:46:08', '2018-03-19 12:46:08', NULL),
(209, 1521485168, 43, 1, 20.00, 20.00, 3.00, 0.60, 0.00, 0.00, 0.00, 20.00, 20.00, 13, 1, 0, '2018-03-19 12:46:08', '2018-03-19 12:46:08', NULL),
(210, 1521485168, 42, 1, 10.00, 10.00, 3.00, 0.30, 0.00, 0.00, 0.00, 10.00, 10.00, 13, 1, 0, '2018-03-19 12:46:08', '2018-03-19 12:46:08', NULL),
(211, 1521485168, 41, 1, 4.00, 4.00, 3.00, 0.12, 0.00, 0.00, 0.00, 4.00, 4.00, 13, 1, 0, '2018-03-19 12:46:08', '2018-03-19 12:46:08', NULL),
(212, 1521485168, 40, 1, 20.00, 20.00, 3.00, 0.60, 0.00, 0.00, 0.00, 20.00, 20.00, 13, 1, 0, '2018-03-19 12:46:08', '2018-03-19 12:46:08', NULL),
(213, 1521485168, 39, 1, 11.00, 11.00, 3.00, 0.33, 0.00, 0.00, 0.00, 11.00, 11.00, 13, 1, 0, '2018-03-19 12:46:08', '2018-03-19 12:46:08', NULL),
(214, 1521485168, 38, 1, 10.00, 10.00, 3.00, 0.30, 0.00, 0.00, 0.00, 10.00, 10.00, 13, 1, 0, '2018-03-19 12:46:09', '2018-03-19 12:46:09', NULL),
(215, 1521485168, 37, 1, 10.00, 10.00, 3.00, 0.30, 0.00, 0.00, 0.00, 10.00, 10.00, 13, 1, 0, '2018-03-19 12:46:09', '2018-03-19 12:46:09', NULL),
(216, 1521485168, 36, 1, 11.00, 11.00, 3.00, 0.33, 0.00, 0.00, 0.00, 11.00, 11.00, 13, 1, 0, '2018-03-19 12:46:09', '2018-03-19 12:46:09', NULL),
(217, 1521485168, 35, 1, 10.00, 5.00, 3.00, 0.30, 0.00, 0.00, 0.00, 10.00, 5.00, 13, 1, 0, '2018-03-19 12:46:09', '2018-03-19 12:46:09', NULL),
(218, 1521485168, 34, 1, 10.00, 5.00, 3.00, 0.30, 0.00, 0.00, 0.00, 10.00, 5.00, 13, 1, 0, '2018-03-19 12:46:09', '2018-03-19 12:46:09', NULL),
(219, 1521485168, 33, 1, 20.00, 10.00, 3.00, 0.60, 0.00, 0.00, 0.00, 20.00, 10.00, 13, 1, 0, '2018-03-19 12:46:09', '2018-03-19 12:46:09', NULL),
(220, 1521485361, 44, 1, 22.00, 22.00, 3.00, 0.00, 0.00, 0.00, 0.00, 22.00, 22.00, 13, 1, 0, '2018-03-19 12:49:21', '2018-03-19 12:49:21', NULL),
(221, 1521485361, 43, 1, 20.00, 20.00, 3.00, 0.60, 0.00, 0.00, 0.00, 20.00, 20.00, 13, 1, 0, '2018-03-19 12:49:22', '2018-03-19 12:49:22', NULL),
(222, 1521485361, 42, 1, 10.00, 10.00, 3.00, 0.30, 0.00, 0.00, 0.00, 10.00, 10.00, 13, 1, 0, '2018-03-19 12:49:22', '2018-03-19 12:49:22', NULL),
(223, 1521485361, 41, 1, 4.00, 4.00, 3.00, 0.12, 0.00, 0.00, 0.00, 4.00, 4.00, 13, 1, 0, '2018-03-19 12:49:22', '2018-03-19 12:49:22', NULL),
(224, 1521485361, 40, 1, 20.00, 20.00, 3.00, 0.60, 0.00, 0.00, 0.00, 20.00, 20.00, 13, 1, 0, '2018-03-19 12:49:22', '2018-03-19 12:49:22', NULL),
(225, 1521485361, 39, 1, 11.00, 11.00, 3.00, 0.33, 0.00, 0.00, 0.00, 11.00, 11.00, 13, 1, 0, '2018-03-19 12:49:22', '2018-03-19 12:49:22', NULL),
(226, 1521485361, 38, 1, 10.00, 10.00, 3.00, 0.30, 0.00, 0.00, 0.00, 10.00, 10.00, 13, 1, 0, '2018-03-19 12:49:22', '2018-03-19 12:49:22', NULL),
(227, 1521485361, 37, 1, 10.00, 10.00, 3.00, 0.30, 0.00, 0.00, 0.00, 10.00, 10.00, 13, 1, 0, '2018-03-19 12:49:22', '2018-03-19 12:49:22', NULL),
(228, 1521485361, 36, 1, 11.00, 11.00, 3.00, 0.33, 0.00, 0.00, 0.00, 11.00, 11.00, 13, 1, 0, '2018-03-19 12:49:22', '2018-03-19 12:49:22', NULL),
(229, 1521485361, 35, 1, 10.00, 5.00, 3.00, 0.30, 0.00, 0.00, 0.00, 10.00, 5.00, 13, 1, 0, '2018-03-19 12:49:23', '2018-03-19 12:49:23', NULL),
(230, 1521485361, 34, 1, 10.00, 5.00, 3.00, 0.30, 0.00, 0.00, 0.00, 10.00, 5.00, 13, 1, 0, '2018-03-19 12:49:23', '2018-03-19 12:49:23', NULL),
(231, 1521485361, 33, 1, 20.00, 10.00, 3.00, 0.60, 0.00, 0.00, 0.00, 20.00, 10.00, 13, 1, 0, '2018-03-19 12:49:23', '2018-03-19 12:49:23', NULL),
(232, 1521487602, 44, 1, 22.00, 22.00, 3.00, 0.66, 0.00, 0.00, 0.00, 22.00, 22.00, 13, 1, 0, '2018-03-19 13:26:42', '2018-03-19 13:26:42', NULL),
(233, 1521487602, 43, 1, 20.00, 20.00, 3.00, 0.60, 0.00, 0.00, 0.00, 20.00, 20.00, 13, 1, 0, '2018-03-19 13:26:42', '2018-03-19 13:26:42', NULL),
(234, 1521487602, 42, 1, 10.00, 10.00, 3.00, 0.30, 0.00, 0.00, 0.00, 10.00, 10.00, 13, 1, 0, '2018-03-19 13:26:42', '2018-03-19 13:26:42', NULL),
(235, 1521487602, 41, 1, 4.00, 4.00, 3.00, 0.12, 0.00, 0.00, 0.00, 4.00, 4.00, 13, 1, 0, '2018-03-19 13:26:42', '2018-03-19 13:26:42', NULL),
(236, 1521487602, 40, 1, 20.00, 20.00, 3.00, 0.60, 0.00, 0.00, 0.00, 20.00, 20.00, 13, 1, 0, '2018-03-19 13:26:42', '2018-03-19 13:26:42', NULL),
(237, 1521487602, 39, 1, 11.00, 11.00, 3.00, 0.33, 0.00, 0.00, 0.00, 11.00, 11.00, 13, 1, 0, '2018-03-19 13:26:42', '2018-03-19 13:26:42', NULL),
(238, 1521487602, 38, 1, 10.00, 10.00, 3.00, 0.30, 0.00, 0.00, 0.00, 10.00, 10.00, 13, 1, 0, '2018-03-19 13:26:43', '2018-03-19 13:26:43', NULL),
(239, 1521487602, 37, 1, 10.00, 10.00, 3.00, 0.30, 0.00, 0.00, 0.00, 10.00, 10.00, 13, 1, 0, '2018-03-19 13:26:43', '2018-03-19 13:26:43', NULL),
(240, 1521487602, 36, 1, 11.00, 11.00, 3.00, 0.33, 0.00, 0.00, 0.00, 11.00, 11.00, 13, 1, 0, '2018-03-19 13:26:43', '2018-03-19 13:26:43', NULL),
(241, 1521487602, 35, 1, 10.00, 5.00, 3.00, 0.30, 0.00, 0.00, 0.00, 10.00, 5.00, 13, 1, 0, '2018-03-19 13:26:43', '2018-03-19 13:26:43', NULL),
(242, 1521487602, 34, 1, 10.00, 5.00, 3.00, 0.30, 0.00, 0.00, 0.00, 10.00, 5.00, 13, 1, 0, '2018-03-19 13:26:43', '2018-03-19 13:26:43', NULL),
(243, 1521487602, 33, 1, 20.00, 10.00, 3.00, 0.60, 0.00, 0.00, 0.00, 20.00, 10.00, 13, 1, 0, '2018-03-19 13:26:43', '2018-03-19 13:26:43', NULL),
(244, 1521487925, 44, 1, 22.00, 22.00, 3.00, 0.66, 0.00, 0.00, 0.00, 22.00, 22.00, 13, 1, 0, '2018-03-19 13:32:05', '2018-03-19 13:32:05', NULL),
(245, 1521487925, 43, 1, 20.00, 20.00, 3.00, 0.60, 0.00, 0.00, 0.00, 20.00, 20.00, 13, 1, 0, '2018-03-19 13:32:05', '2018-03-19 13:32:05', NULL),
(246, 1521487925, 42, 1, 10.00, 10.00, 3.00, 0.30, 0.00, 0.00, 0.00, 10.00, 10.00, 13, 1, 0, '2018-03-19 13:32:06', '2018-03-19 13:32:06', NULL),
(247, 1521487925, 41, 1, 4.00, 4.00, 3.00, 0.12, 0.00, 0.00, 0.00, 4.00, 4.00, 13, 1, 0, '2018-03-19 13:32:06', '2018-03-19 13:32:06', NULL),
(248, 1521487925, 40, 1, 20.00, 20.00, 3.00, 0.60, 0.00, 0.00, 0.00, 20.00, 20.00, 13, 1, 0, '2018-03-19 13:32:06', '2018-03-19 13:32:06', NULL),
(249, 1521487925, 39, 1, 11.00, 11.00, 3.00, 0.33, 0.00, 0.00, 0.00, 11.00, 11.00, 13, 1, 0, '2018-03-19 13:32:06', '2018-03-19 13:32:06', NULL),
(250, 1521487925, 38, 1, 10.00, 10.00, 3.00, 0.30, 0.00, 0.00, 0.00, 10.00, 10.00, 13, 1, 0, '2018-03-19 13:32:06', '2018-03-19 13:32:06', NULL),
(251, 1521487925, 37, 1, 10.00, 10.00, 3.00, 0.30, 0.00, 0.00, 0.00, 10.00, 10.00, 13, 1, 0, '2018-03-19 13:32:06', '2018-03-19 13:32:06', NULL),
(252, 1521487925, 36, 1, 11.00, 11.00, 3.00, 0.33, 0.00, 0.00, 0.00, 11.00, 11.00, 13, 1, 0, '2018-03-19 13:32:06', '2018-03-19 13:32:06', NULL),
(253, 1521487925, 35, 1, 10.00, 5.00, 3.00, 0.30, 0.00, 0.00, 0.00, 10.00, 5.00, 13, 1, 0, '2018-03-19 13:32:06', '2018-03-19 13:32:06', NULL),
(254, 1521487925, 34, 1, 10.00, 5.00, 3.00, 0.30, 0.00, 0.00, 0.00, 10.00, 5.00, 13, 1, 0, '2018-03-19 13:32:07', '2018-03-19 13:32:07', NULL),
(255, 1521487925, 33, 1, 20.00, 10.00, 3.00, 0.60, 0.00, 0.00, 0.00, 20.00, 10.00, 13, 1, 0, '2018-03-19 13:32:07', '2018-03-19 13:32:07', NULL),
(256, 1521488142, 44, 1, 22.00, 22.00, 3.00, 0.66, 0.00, 0.00, 0.00, 22.00, 22.00, 13, 1, 0, '2018-03-19 13:35:42', '2018-03-19 13:35:42', NULL),
(257, 1521488142, 43, 1, 20.00, 20.00, 3.00, 0.60, 0.00, 0.00, 0.00, 20.00, 20.00, 13, 1, 0, '2018-03-19 13:35:42', '2018-03-19 13:35:42', NULL),
(258, 1521488142, 42, 1, 10.00, 10.00, 3.00, 0.30, 0.00, 0.00, 0.00, 10.00, 10.00, 13, 1, 0, '2018-03-19 13:35:42', '2018-03-19 13:35:42', NULL),
(259, 1521488142, 41, 1, 4.00, 4.00, 3.00, 0.12, 0.00, 0.00, 0.00, 4.00, 4.00, 13, 1, 0, '2018-03-19 13:35:42', '2018-03-19 13:35:42', NULL),
(260, 1521488142, 40, 1, 20.00, 20.00, 3.00, 0.60, 0.00, 0.00, 0.00, 20.00, 20.00, 13, 1, 0, '2018-03-19 13:35:42', '2018-03-19 13:35:42', NULL),
(261, 1521488142, 39, 1, 11.00, 11.00, 3.00, 0.33, 0.00, 0.00, 0.00, 11.00, 11.00, 13, 1, 0, '2018-03-19 13:35:43', '2018-03-19 13:35:43', NULL),
(262, 1521488142, 38, 1, 10.00, 10.00, 3.00, 0.30, 0.00, 0.00, 0.00, 10.00, 10.00, 13, 1, 0, '2018-03-19 13:35:43', '2018-03-19 13:35:43', NULL),
(263, 1521488142, 37, 1, 10.00, 10.00, 3.00, 0.30, 0.00, 0.00, 0.00, 10.00, 10.00, 13, 1, 0, '2018-03-19 13:35:43', '2018-03-19 13:35:43', NULL),
(264, 1521488142, 36, 1, 11.00, 11.00, 3.00, 0.33, 0.00, 0.00, 0.00, 11.00, 11.00, 13, 1, 0, '2018-03-19 13:35:43', '2018-03-19 13:35:43', NULL),
(265, 1521488142, 35, 1, 10.00, 5.00, 3.00, 0.30, 0.00, 0.00, 0.00, 10.00, 5.00, 13, 1, 0, '2018-03-19 13:35:43', '2018-03-19 13:35:43', NULL),
(266, 1521488142, 34, 1, 10.00, 5.00, 3.00, 0.30, 0.00, 0.00, 0.00, 10.00, 5.00, 13, 1, 0, '2018-03-19 13:35:43', '2018-03-19 13:35:43', NULL),
(267, 1521488142, 33, 1, 20.00, 10.00, 3.00, 0.60, 0.00, 0.00, 0.00, 20.00, 10.00, 13, 1, 0, '2018-03-19 13:35:43', '2018-03-19 13:35:43', NULL),
(268, 1521488164, 44, 1, 22.00, 22.00, 3.00, 0.66, 0.00, 0.00, 0.00, 22.00, 22.00, 13, 1, 0, '2018-03-19 13:36:04', '2018-03-19 13:36:04', NULL),
(269, 1521488164, 43, 1, 20.00, 20.00, 3.00, 0.60, 0.00, 0.00, 0.00, 20.00, 20.00, 13, 1, 0, '2018-03-19 13:36:04', '2018-03-19 13:36:04', NULL),
(270, 1521488164, 42, 1, 10.00, 10.00, 3.00, 0.30, 0.00, 0.00, 0.00, 10.00, 10.00, 13, 1, 0, '2018-03-19 13:36:04', '2018-03-19 13:36:04', NULL),
(271, 1521488164, 41, 1, 4.00, 4.00, 3.00, 0.12, 0.00, 0.00, 0.00, 4.00, 4.00, 13, 1, 0, '2018-03-19 13:36:04', '2018-03-19 13:36:04', NULL),
(272, 1521488164, 40, 1, 20.00, 20.00, 3.00, 0.60, 0.00, 0.00, 0.00, 20.00, 20.00, 13, 1, 0, '2018-03-19 13:36:04', '2018-03-19 13:36:04', NULL),
(273, 1521488164, 39, 1, 11.00, 11.00, 3.00, 0.33, 0.00, 0.00, 0.00, 11.00, 11.00, 13, 1, 0, '2018-03-19 13:36:05', '2018-03-19 13:36:05', NULL),
(274, 1521488164, 38, 1, 10.00, 10.00, 3.00, 0.30, 0.00, 0.00, 0.00, 10.00, 10.00, 13, 1, 0, '2018-03-19 13:36:05', '2018-03-19 13:36:05', NULL),
(275, 1521488164, 37, 1, 10.00, 10.00, 3.00, 0.30, 0.00, 0.00, 0.00, 10.00, 10.00, 13, 1, 0, '2018-03-19 13:36:05', '2018-03-19 13:36:05', NULL),
(276, 1521488164, 36, 1, 11.00, 11.00, 3.00, 0.33, 0.00, 0.00, 0.00, 11.00, 11.00, 13, 1, 0, '2018-03-19 13:36:05', '2018-03-19 13:36:05', NULL),
(277, 1521488164, 35, 1, 10.00, 5.00, 3.00, 0.30, 0.00, 0.00, 0.00, 10.00, 5.00, 13, 1, 0, '2018-03-19 13:36:05', '2018-03-19 13:36:05', NULL),
(278, 1521488164, 34, 1, 10.00, 5.00, 3.00, 0.30, 0.00, 0.00, 0.00, 10.00, 5.00, 13, 1, 0, '2018-03-19 13:36:05', '2018-03-19 13:36:05', NULL),
(279, 1521488164, 33, 1, 20.00, 10.00, 3.00, 0.60, 0.00, 0.00, 0.00, 20.00, 10.00, 13, 1, 0, '2018-03-19 13:36:05', '2018-03-19 13:36:05', NULL),
(280, 1521488285, 44, 1, 22.00, 22.00, 3.00, 0.66, 0.00, 0.00, 0.00, 22.00, 22.00, 13, 1, 0, '2018-03-19 13:38:05', '2018-03-19 13:38:05', NULL),
(281, 1521488285, 43, 1, 20.00, 20.00, 3.00, 0.60, 0.00, 0.00, 0.00, 20.00, 20.00, 13, 1, 0, '2018-03-19 13:38:05', '2018-03-19 13:38:05', NULL),
(282, 1521488285, 42, 1, 10.00, 10.00, 3.00, 0.30, 0.00, 0.00, 0.00, 10.00, 10.00, 13, 1, 0, '2018-03-19 13:38:05', '2018-03-19 13:38:05', NULL),
(283, 1521488285, 41, 1, 4.00, 4.00, 3.00, 0.12, 0.00, 0.00, 0.00, 4.00, 4.00, 13, 1, 0, '2018-03-19 13:38:05', '2018-03-19 13:38:05', NULL),
(284, 1521488285, 40, 1, 20.00, 20.00, 3.00, 0.60, 0.00, 0.00, 0.00, 20.00, 20.00, 13, 1, 0, '2018-03-19 13:38:05', '2018-03-19 13:38:05', NULL),
(285, 1521488285, 39, 1, 11.00, 11.00, 3.00, 0.33, 0.00, 0.00, 0.00, 11.00, 11.00, 13, 1, 0, '2018-03-19 13:38:05', '2018-03-19 13:38:05', NULL),
(286, 1521488285, 38, 1, 10.00, 10.00, 3.00, 0.30, 0.00, 0.00, 0.00, 10.00, 10.00, 13, 1, 0, '2018-03-19 13:38:06', '2018-03-19 13:38:06', NULL),
(287, 1521488285, 37, 1, 10.00, 10.00, 3.00, 0.30, 0.00, 0.00, 0.00, 10.00, 10.00, 13, 1, 0, '2018-03-19 13:38:06', '2018-03-19 13:38:06', NULL),
(288, 1521488285, 36, 1, 11.00, 11.00, 3.00, 0.33, 0.00, 0.00, 0.00, 11.00, 11.00, 13, 1, 0, '2018-03-19 13:38:06', '2018-03-19 13:38:06', NULL),
(289, 1521488285, 35, 1, 10.00, 5.00, 3.00, 0.30, 0.00, 0.00, 0.00, 10.00, 5.00, 13, 1, 0, '2018-03-19 13:38:06', '2018-03-19 13:38:06', NULL),
(290, 1521488285, 34, 1, 10.00, 5.00, 3.00, 0.30, 0.00, 0.00, 0.00, 10.00, 5.00, 13, 1, 0, '2018-03-19 13:38:06', '2018-03-19 13:38:06', NULL),
(291, 1521488285, 33, 1, 20.00, 10.00, 3.00, 0.60, 0.00, 0.00, 0.00, 20.00, 10.00, 13, 1, 0, '2018-03-19 13:38:06', '2018-03-19 13:38:06', NULL),
(292, 1521488357, 44, 1, 22.00, 22.00, 3.00, 0.66, 0.00, 0.00, 0.00, 22.00, 22.00, 13, 1, 0, '2018-03-19 13:39:17', '2018-03-19 13:39:17', NULL),
(293, 1521488357, 43, 1, 20.00, 20.00, 3.00, 0.60, 0.00, 0.00, 0.00, 20.00, 20.00, 13, 1, 0, '2018-03-19 13:39:17', '2018-03-19 13:39:17', NULL),
(294, 1521488357, 42, 1, 10.00, 10.00, 3.00, 0.30, 0.00, 0.00, 0.00, 10.00, 10.00, 13, 1, 0, '2018-03-19 13:39:17', '2018-03-19 13:39:17', NULL),
(295, 1521488357, 41, 1, 4.00, 4.00, 3.00, 0.12, 0.00, 0.00, 0.00, 4.00, 4.00, 13, 1, 0, '2018-03-19 13:39:17', '2018-03-19 13:39:17', NULL),
(296, 1521488357, 40, 1, 20.00, 20.00, 3.00, 0.60, 0.00, 0.00, 0.00, 20.00, 20.00, 13, 1, 0, '2018-03-19 13:39:17', '2018-03-19 13:39:17', NULL),
(297, 1521488357, 39, 1, 11.00, 11.00, 3.00, 0.33, 0.00, 0.00, 0.00, 11.00, 11.00, 13, 1, 0, '2018-03-19 13:39:17', '2018-03-19 13:39:17', NULL),
(298, 1521488357, 38, 1, 10.00, 10.00, 3.00, 0.30, 0.00, 0.00, 0.00, 10.00, 10.00, 13, 1, 0, '2018-03-19 13:39:17', '2018-03-19 13:39:17', NULL),
(299, 1521488357, 37, 1, 10.00, 10.00, 3.00, 0.30, 0.00, 0.00, 0.00, 10.00, 10.00, 13, 1, 0, '2018-03-19 13:39:18', '2018-03-19 13:39:18', NULL),
(300, 1521488357, 36, 1, 11.00, 11.00, 3.00, 0.33, 0.00, 0.00, 0.00, 11.00, 11.00, 13, 1, 0, '2018-03-19 13:39:18', '2018-03-19 13:39:18', NULL),
(301, 1521488357, 35, 1, 10.00, 5.00, 3.00, 0.30, 0.00, 0.00, 0.00, 10.00, 5.00, 13, 1, 0, '2018-03-19 13:39:18', '2018-03-19 13:39:18', NULL),
(302, 1521488357, 34, 1, 10.00, 5.00, 3.00, 0.30, 0.00, 0.00, 0.00, 10.00, 5.00, 13, 1, 0, '2018-03-19 13:39:18', '2018-03-19 13:39:18', NULL),
(303, 1521488357, 33, 1, 20.00, 10.00, 3.00, 0.60, 0.00, 0.00, 0.00, 20.00, 10.00, 13, 1, 0, '2018-03-19 13:39:18', '2018-03-19 13:39:18', NULL),
(304, 1521488527, 44, 1, 22.00, 22.00, 3.00, 0.66, 0.00, 0.00, 0.00, 22.00, 22.00, 13, 1, 0, '2018-03-19 13:42:07', '2018-03-19 13:42:07', NULL),
(305, 1521488527, 43, 1, 20.00, 20.00, 3.00, 0.60, 0.00, 0.00, 0.00, 20.00, 20.00, 13, 1, 0, '2018-03-19 13:42:07', '2018-03-19 13:42:07', NULL),
(306, 1521488527, 42, 1, 10.00, 10.00, 3.00, 0.30, 0.00, 0.00, 0.00, 10.00, 10.00, 13, 1, 0, '2018-03-19 13:42:07', '2018-03-19 13:42:07', NULL),
(307, 1521488527, 41, 1, 4.00, 4.00, 3.00, 0.12, 0.00, 0.00, 0.00, 4.00, 4.00, 13, 1, 0, '2018-03-19 13:42:07', '2018-03-19 13:42:07', NULL),
(308, 1521488527, 40, 1, 20.00, 20.00, 3.00, 0.60, 0.00, 0.00, 0.00, 20.00, 20.00, 13, 1, 0, '2018-03-19 13:42:07', '2018-03-19 13:42:07', NULL),
(309, 1521488527, 39, 1, 11.00, 11.00, 3.00, 0.33, 0.00, 0.00, 0.00, 11.00, 11.00, 13, 1, 0, '2018-03-19 13:42:08', '2018-03-19 13:42:08', NULL),
(310, 1521488527, 38, 1, 10.00, 10.00, 3.00, 0.30, 0.00, 0.00, 0.00, 10.00, 10.00, 13, 1, 0, '2018-03-19 13:42:08', '2018-03-19 13:42:08', NULL),
(311, 1521488527, 37, 1, 10.00, 10.00, 3.00, 0.30, 0.00, 0.00, 0.00, 10.00, 10.00, 13, 1, 0, '2018-03-19 13:42:08', '2018-03-19 13:42:08', NULL),
(312, 1521488527, 36, 1, 11.00, 11.00, 3.00, 0.33, 0.00, 0.00, 0.00, 11.00, 11.00, 13, 1, 0, '2018-03-19 13:42:08', '2018-03-19 13:42:08', NULL),
(313, 1521488527, 35, 1, 10.00, 5.00, 3.00, 0.30, 0.00, 0.00, 0.00, 10.00, 5.00, 13, 1, 0, '2018-03-19 13:42:08', '2018-03-19 13:42:08', NULL),
(314, 1521488527, 34, 1, 10.00, 5.00, 3.00, 0.30, 0.00, 0.00, 0.00, 10.00, 5.00, 13, 1, 0, '2018-03-19 13:42:08', '2018-03-19 13:42:08', NULL),
(315, 1521488527, 33, 1, 20.00, 10.00, 3.00, 0.60, 0.00, 0.00, 0.00, 20.00, 10.00, 13, 1, 0, '2018-03-19 13:42:08', '2018-03-19 13:42:08', NULL),
(316, 1521488551, 44, 1, 22.00, 22.00, 3.00, 0.66, 0.00, 0.00, 0.00, 22.00, 22.00, 13, 1, 0, '2018-03-19 13:42:31', '2018-03-19 13:42:31', NULL),
(317, 1521488551, 43, 1, 20.00, 20.00, 3.00, 0.60, 0.00, 0.00, 0.00, 20.00, 20.00, 13, 1, 0, '2018-03-19 13:42:31', '2018-03-19 13:42:31', NULL),
(318, 1521488551, 42, 1, 10.00, 10.00, 3.00, 0.30, 0.00, 0.00, 0.00, 10.00, 10.00, 13, 1, 0, '2018-03-19 13:42:31', '2018-03-19 13:42:31', NULL),
(319, 1521488551, 41, 1, 4.00, 4.00, 3.00, 0.12, 0.00, 0.00, 0.00, 4.00, 4.00, 13, 1, 0, '2018-03-19 13:42:31', '2018-03-19 13:42:31', NULL),
(320, 1521488551, 40, 1, 20.00, 20.00, 3.00, 0.60, 0.00, 0.00, 0.00, 20.00, 20.00, 13, 1, 0, '2018-03-19 13:42:31', '2018-03-19 13:42:31', NULL),
(321, 1521488551, 39, 1, 11.00, 11.00, 3.00, 0.33, 0.00, 0.00, 0.00, 11.00, 11.00, 13, 1, 0, '2018-03-19 13:42:31', '2018-03-19 13:42:31', NULL),
(322, 1521488551, 38, 1, 10.00, 10.00, 3.00, 0.30, 0.00, 0.00, 0.00, 10.00, 10.00, 13, 1, 0, '2018-03-19 13:42:32', '2018-03-19 13:42:32', NULL),
(323, 1521488551, 37, 1, 10.00, 10.00, 3.00, 0.30, 0.00, 0.00, 0.00, 10.00, 10.00, 13, 1, 0, '2018-03-19 13:42:32', '2018-03-19 13:42:32', NULL),
(324, 1521488551, 36, 1, 11.00, 11.00, 3.00, 0.33, 0.00, 0.00, 0.00, 11.00, 11.00, 13, 1, 0, '2018-03-19 13:42:32', '2018-03-19 13:42:32', NULL),
(325, 1521488551, 35, 1, 10.00, 5.00, 3.00, 0.30, 0.00, 0.00, 0.00, 10.00, 5.00, 13, 1, 0, '2018-03-19 13:42:32', '2018-03-19 13:42:32', NULL),
(326, 1521488551, 34, 1, 10.00, 5.00, 3.00, 0.30, 0.00, 0.00, 0.00, 10.00, 5.00, 13, 1, 0, '2018-03-19 13:42:32', '2018-03-19 13:42:32', NULL),
(327, 1521488551, 33, 1, 20.00, 10.00, 3.00, 0.60, 0.00, 0.00, 0.00, 20.00, 10.00, 13, 1, 0, '2018-03-19 13:42:32', '2018-03-19 13:42:32', NULL),
(328, 1521489171, 44, 1, 22.00, 22.00, 3.00, 0.66, 0.00, 0.00, 0.00, 22.00, 22.00, 13, 1, 0, '2018-03-19 13:52:51', '2018-03-19 13:52:51', NULL),
(329, 1521489171, 43, 1, 20.00, 20.00, 3.00, 0.60, 0.00, 0.00, 0.00, 20.00, 20.00, 13, 1, 0, '2018-03-19 13:52:51', '2018-03-19 13:52:51', NULL),
(330, 1521489171, 42, 1, 10.00, 10.00, 3.00, 0.30, 0.00, 0.00, 0.00, 10.00, 10.00, 13, 1, 0, '2018-03-19 13:52:51', '2018-03-19 13:52:51', NULL),
(331, 1521489171, 41, 1, 4.00, 4.00, 3.00, 0.12, 0.00, 0.00, 0.00, 4.00, 4.00, 13, 1, 0, '2018-03-19 13:52:52', '2018-03-19 13:52:52', NULL),
(332, 1521489171, 40, 1, 20.00, 20.00, 3.00, 0.60, 0.00, 0.00, 0.00, 20.00, 20.00, 13, 1, 0, '2018-03-19 13:52:52', '2018-03-19 13:52:52', NULL),
(333, 1521489171, 39, 1, 11.00, 11.00, 3.00, 0.33, 0.00, 0.00, 0.00, 11.00, 11.00, 13, 1, 0, '2018-03-19 13:52:52', '2018-03-19 13:52:52', NULL),
(334, 1521489171, 38, 1, 10.00, 10.00, 3.00, 0.30, 0.00, 0.00, 0.00, 10.00, 10.00, 13, 1, 0, '2018-03-19 13:52:52', '2018-03-19 13:52:52', NULL),
(335, 1521489171, 37, 1, 10.00, 10.00, 3.00, 0.30, 0.00, 0.00, 0.00, 10.00, 10.00, 13, 1, 0, '2018-03-19 13:52:52', '2018-03-19 13:52:52', NULL),
(336, 1521489171, 36, 1, 11.00, 11.00, 3.00, 0.33, 0.00, 0.00, 0.00, 11.00, 11.00, 13, 1, 0, '2018-03-19 13:52:53', '2018-03-19 13:52:53', NULL),
(337, 1521489171, 35, 1, 10.00, 5.00, 3.00, 0.30, 0.00, 0.00, 0.00, 10.00, 5.00, 13, 1, 0, '2018-03-19 13:52:53', '2018-03-19 13:52:53', NULL),
(338, 1521489171, 34, 1, 10.00, 5.00, 3.00, 0.30, 0.00, 0.00, 0.00, 10.00, 5.00, 13, 1, 0, '2018-03-19 13:52:53', '2018-03-19 13:52:53', NULL),
(339, 1521489171, 33, 1, 20.00, 10.00, 3.00, 0.60, 0.00, 0.00, 0.00, 20.00, 10.00, 13, 1, 0, '2018-03-19 13:52:53', '2018-03-19 13:52:53', NULL),
(340, 1521489281, 44, 1, 22.00, 22.00, 3.00, 0.66, 0.00, 0.00, 0.00, 22.00, 22.00, 13, 1, 0, '2018-03-19 13:54:41', '2018-03-19 13:54:41', NULL),
(341, 1521489281, 43, 1, 20.00, 20.00, 3.00, 0.60, 0.00, 0.00, 0.00, 20.00, 20.00, 13, 1, 0, '2018-03-19 13:54:41', '2018-03-19 13:54:41', NULL),
(342, 1521489281, 42, 1, 10.00, 10.00, 3.00, 0.30, 0.00, 0.00, 0.00, 10.00, 10.00, 13, 1, 0, '2018-03-19 13:54:41', '2018-03-19 13:54:41', NULL),
(343, 1521489281, 41, 1, 4.00, 4.00, 3.00, 0.12, 0.00, 0.00, 0.00, 4.00, 4.00, 13, 1, 0, '2018-03-19 13:54:41', '2018-03-19 13:54:41', NULL);
INSERT INTO `lsp_invoice_products` (`id`, `invoice_id`, `product_id`, `quantity`, `price`, `cost`, `tax_percent`, `tax_amount`, `discount_percent`, `discount_amount`, `cupon_amount`, `total_price`, `total_cost`, `store_id`, `created_by`, `updated_by`, `created_at`, `updated_at`, `deleted_at`) VALUES
(344, 1521489281, 40, 1, 20.00, 20.00, 3.00, 0.60, 0.00, 0.00, 0.00, 20.00, 20.00, 13, 1, 0, '2018-03-19 13:54:41', '2018-03-19 13:54:41', NULL),
(345, 1521489281, 39, 1, 11.00, 11.00, 3.00, 0.33, 0.00, 0.00, 0.00, 11.00, 11.00, 13, 1, 0, '2018-03-19 13:54:41', '2018-03-19 13:54:41', NULL),
(346, 1521489281, 38, 1, 10.00, 10.00, 3.00, 0.30, 0.00, 0.00, 0.00, 10.00, 10.00, 13, 1, 0, '2018-03-19 13:54:41', '2018-03-19 13:54:41', NULL),
(347, 1521489281, 37, 1, 10.00, 10.00, 3.00, 0.30, 0.00, 0.00, 0.00, 10.00, 10.00, 13, 1, 0, '2018-03-19 13:54:41', '2018-03-19 13:54:41', NULL),
(348, 1521489281, 36, 1, 11.00, 11.00, 3.00, 0.33, 0.00, 0.00, 0.00, 11.00, 11.00, 13, 1, 0, '2018-03-19 13:54:42', '2018-03-19 13:54:42', NULL),
(349, 1521489281, 35, 1, 10.00, 5.00, 3.00, 0.30, 0.00, 0.00, 0.00, 10.00, 5.00, 13, 1, 0, '2018-03-19 13:54:42', '2018-03-19 13:54:42', NULL),
(350, 1521489281, 34, 1, 10.00, 5.00, 3.00, 0.30, 0.00, 0.00, 0.00, 10.00, 5.00, 13, 1, 0, '2018-03-19 13:54:42', '2018-03-19 13:54:42', NULL),
(351, 1521489281, 33, 1, 20.00, 10.00, 3.00, 0.60, 0.00, 0.00, 0.00, 20.00, 10.00, 13, 1, 0, '2018-03-19 13:54:42', '2018-03-19 13:54:42', NULL),
(352, 1521490160, 1, 2, 1.22, 1.00, 3.00, 0.07, 0.00, 0.00, 0.00, 2.44, 2.00, 13, 1, 0, '2018-03-19 15:13:24', '2018-03-19 15:13:24', NULL),
(353, 1521490160, 3, 2, 100.00, 50.00, 3.00, 6.00, 0.00, 0.00, 0.00, 200.00, 100.00, 13, 1, 0, '2018-03-19 15:13:24', '2018-03-19 15:13:24', NULL),
(354, 1521490160, 1, 2, 1.22, 1.00, 3.00, 0.07, 0.00, 0.00, 0.00, 2.44, 2.00, 13, 1, 0, '2018-03-19 15:13:33', '2018-03-19 15:13:33', NULL),
(355, 1521490160, 3, 2, 100.00, 50.00, 3.00, 6.00, 0.00, 0.00, 0.00, 200.00, 100.00, 13, 1, 0, '2018-03-19 15:13:33', '2018-03-19 15:13:33', NULL),
(356, 1521490160, 1, 2, 1.22, 1.00, 3.00, 0.07, 0.00, 0.00, 0.00, 2.44, 2.00, 13, 1, 0, '2018-03-19 15:14:02', '2018-03-19 15:14:02', NULL),
(357, 1521490160, 3, 2, 100.00, 50.00, 3.00, 6.00, 0.00, 0.00, 0.00, 200.00, 100.00, 13, 1, 0, '2018-03-19 15:14:03', '2018-03-19 15:14:03', NULL),
(358, 1521494043, 44, 1, 22.00, 22.00, 3.00, 0.66, 0.00, 0.00, 0.00, 22.00, 22.00, 13, 1, 0, '2018-03-19 15:14:53', '2018-03-19 15:14:53', NULL),
(359, 1521494043, 43, 1, 20.00, 20.00, 3.00, 0.60, 0.00, 0.00, 0.00, 20.00, 20.00, 13, 1, 0, '2018-03-19 15:14:54', '2018-03-19 15:14:54', NULL),
(360, 1521494043, 42, 1, 10.00, 10.00, 3.00, 0.30, 0.00, 0.00, 0.00, 10.00, 10.00, 13, 1, 0, '2018-03-19 15:14:54', '2018-03-19 15:14:54', NULL),
(361, 1521494043, 41, 1, 4.00, 4.00, 3.00, 0.12, 0.00, 0.00, 0.00, 4.00, 4.00, 13, 1, 0, '2018-03-19 15:14:54', '2018-03-19 15:14:54', NULL),
(362, 1521494094, 44, 3, 22.00, 22.00, 3.00, 1.98, 0.00, 0.00, 0.00, 66.00, 66.00, 13, 1, 0, '2018-03-19 15:17:32', '2018-03-19 15:17:32', NULL),
(363, 1521494094, 34, 1, 10.00, 5.00, 3.00, 0.30, 0.00, 0.00, 0.00, 10.00, 5.00, 13, 1, 0, '2018-03-19 15:17:33', '2018-03-19 15:17:33', NULL),
(364, 1521494094, 39, 8, 11.00, 11.00, 3.00, 2.64, 0.00, 0.00, 0.00, 88.00, 88.00, 13, 1, 0, '2018-03-19 15:17:33', '2018-03-19 15:17:33', NULL),
(365, 1521494094, 37, 2, 10.00, 10.00, 3.00, 0.60, 0.00, 0.00, 0.00, 20.00, 20.00, 13, 1, 0, '2018-03-19 15:17:33', '2018-03-19 15:17:33', NULL),
(366, 1521494094, 30, 6, 2.00, 1.00, 3.00, 0.36, 0.00, 0.00, 0.00, 12.00, 6.00, 13, 1, 0, '2018-03-19 15:17:33', '2018-03-19 15:17:33', NULL),
(367, 1521494094, 32, 4, 10.00, 5.00, 3.00, 1.20, 0.00, 0.00, 0.00, 40.00, 20.00, 13, 1, 0, '2018-03-19 15:17:33', '2018-03-19 15:17:33', NULL),
(368, 1521494094, 41, 3, 4.00, 4.00, 3.00, 0.36, 0.00, 0.00, 0.00, 12.00, 12.00, 13, 1, 0, '2018-03-19 15:17:33', '2018-03-19 15:17:33', NULL),
(369, 1521494094, 27, 2, 47.00, 42.00, 3.00, 2.82, 0.00, 0.00, 0.00, 94.00, 84.00, 13, 1, 0, '2018-03-19 15:17:33', '2018-03-19 15:17:33', NULL),
(370, 1521494094, 22, 4, 14.00, 9.00, 3.00, 1.68, 0.00, 0.00, 0.00, 56.00, 36.00, 13, 1, 0, '2018-03-19 15:17:34', '2018-03-19 15:17:34', NULL),
(371, 1521494094, 18, 2, 26.00, 21.00, 3.00, 1.56, 0.00, 0.00, 0.00, 52.00, 42.00, 13, 1, 0, '2018-03-19 15:17:34', '2018-03-19 15:17:34', NULL),
(372, 1521494094, 14, 2, 22.00, 22.00, 3.00, 1.32, 0.00, 0.00, 0.00, 44.00, 44.00, 13, 1, 0, '2018-03-19 15:17:34', '2018-03-19 15:17:34', NULL),
(373, 1521494094, 25, 2, 45.00, 40.00, 3.00, 2.70, 0.00, 0.00, 0.00, 90.00, 80.00, 13, 1, 0, '2018-03-19 15:17:34', '2018-03-19 15:17:34', NULL),
(374, 1521494094, 4, 5, 19.00, 12.00, 3.00, 2.85, 0.00, 0.00, 0.00, 95.00, 60.00, 13, 1, 0, '2018-03-19 15:17:34', '2018-03-19 15:17:34', NULL),
(375, 1521494094, 1, 5, 1.22, 1.00, 3.00, 0.18, 0.00, 0.00, 0.00, 6.10, 5.00, 13, 1, 0, '2018-03-19 15:17:34', '2018-03-19 15:17:34', NULL),
(376, 1521494094, 7, 4, 12.00, 10.00, 3.00, 1.44, 0.00, 0.00, 0.00, 48.00, 40.00, 13, 1, 0, '2018-03-19 15:17:34', '2018-03-19 15:17:34', NULL),
(377, 1521494094, 11, 4, 32.00, 27.00, 3.00, 3.84, 0.00, 0.00, 0.00, 128.00, 108.00, 13, 1, 0, '2018-03-19 15:17:34', '2018-03-19 15:17:34', NULL),
(378, 1521494094, 10, 4, 32.00, 27.00, 3.00, 3.84, 0.00, 0.00, 0.00, 128.00, 108.00, 13, 1, 0, '2018-03-19 15:17:35', '2018-03-19 15:17:35', NULL),
(379, 1521494094, 9, 4, 38.00, 33.00, 3.00, 4.56, 0.00, 0.00, 0.00, 152.00, 132.00, 13, 1, 0, '2018-03-19 15:17:35', '2018-03-19 15:17:35', NULL),
(380, 1521494094, 3, 2, 100.00, 50.00, 3.00, 6.00, 0.00, 0.00, 0.00, 200.00, 100.00, 13, 1, 0, '2018-03-19 15:17:35', '2018-03-19 15:17:35', NULL),
(381, 1521494094, 6, 2, 15.00, 11.25, 3.00, 0.90, 0.00, 0.00, 0.00, 30.00, 22.50, 13, 1, 0, '2018-03-19 15:17:35', '2018-03-19 15:17:35', NULL),
(382, 1521494094, 5, 2, 38.00, 33.00, 3.00, 2.28, 0.00, 0.00, 0.00, 76.00, 66.00, 13, 1, 0, '2018-03-19 15:17:35', '2018-03-19 15:17:35', NULL),
(383, 1521566125, 44, 1, 22.00, 22.00, 3.00, 0.66, 0.00, 0.00, 0.00, 22.00, 22.00, 13, 1, 0, '2018-03-20 11:15:28', '2018-03-20 11:15:28', NULL),
(384, 1521566125, 43, 1, 20.00, 20.00, 3.00, 0.60, 0.00, 0.00, 0.00, 20.00, 20.00, 13, 1, 0, '2018-03-20 11:15:29', '2018-03-20 11:15:29', NULL),
(385, 1521566125, 42, 1, 10.00, 10.00, 3.00, 0.30, 0.00, 0.00, 0.00, 10.00, 10.00, 13, 1, 0, '2018-03-20 11:15:29', '2018-03-20 11:15:29', NULL),
(386, 1521566125, 41, 1, 4.00, 4.00, 3.00, 0.12, 0.00, 0.00, 0.00, 4.00, 4.00, 13, 1, 0, '2018-03-20 11:15:29', '2018-03-20 11:15:29', NULL),
(387, 1521566125, 40, 1, 20.00, 20.00, 3.00, 0.60, 0.00, 0.00, 0.00, 20.00, 20.00, 13, 1, 0, '2018-03-20 11:15:29', '2018-03-20 11:15:29', NULL),
(388, 1521566125, 39, 1, 11.00, 11.00, 3.00, 0.33, 0.00, 0.00, 0.00, 11.00, 11.00, 13, 1, 0, '2018-03-20 11:15:29', '2018-03-20 11:15:29', NULL),
(389, 1521566125, 38, 1, 10.00, 10.00, 3.00, 0.30, 0.00, 0.00, 0.00, 10.00, 10.00, 13, 1, 0, '2018-03-20 11:15:29', '2018-03-20 11:15:29', NULL),
(390, 1521566125, 37, 1, 10.00, 10.00, 3.00, 0.30, 0.00, 0.00, 0.00, 10.00, 10.00, 13, 1, 0, '2018-03-20 11:15:29', '2018-03-20 11:15:29', NULL),
(391, 1521566130, 28, 1, 47.00, 42.00, 3.00, 1.41, 0.00, 0.00, 0.00, 47.00, 42.00, 13, 1, 0, '2018-03-20 11:27:08', '2018-03-20 11:27:08', NULL),
(392, 1521566130, 27, 1, 47.00, 42.00, 3.00, 1.41, 0.00, 0.00, 0.00, 47.00, 42.00, 13, 1, 0, '2018-03-20 11:27:08', '2018-03-20 11:27:08', NULL),
(393, 1521566130, 26, 1, 45.00, 40.00, 3.00, 1.35, 0.00, 0.00, 0.00, 45.00, 40.00, 13, 1, 0, '2018-03-20 11:27:08', '2018-03-20 11:27:08', NULL),
(394, 1521566130, 25, 1, 45.00, 40.00, 3.00, 1.35, 0.00, 0.00, 0.00, 45.00, 40.00, 13, 1, 0, '2018-03-20 11:27:08', '2018-03-20 11:27:08', NULL),
(395, 1521566130, 24, 1, 165.00, 155.00, 3.00, 4.95, 0.00, 0.00, 0.00, 165.00, 155.00, 13, 1, 0, '2018-03-20 11:27:08', '2018-03-20 11:27:08', NULL),
(396, 1521566130, 23, 1, 30.00, 30.00, 3.00, 0.90, 0.00, 0.00, 0.00, 30.00, 30.00, 13, 1, 0, '2018-03-20 11:27:08', '2018-03-20 11:27:08', NULL),
(397, 1521752981, 44, 4, 22.00, 22.00, 3.00, 2.64, 0.00, 0.00, 0.00, 88.00, 88.00, 13, 1, 0, '2018-03-22 15:58:43', '2018-03-22 15:58:43', NULL),
(398, 1521752981, 43, 1, 20.00, 20.00, 3.00, 0.60, 0.00, 0.00, 0.00, 20.00, 20.00, 13, 1, 0, '2018-03-22 15:58:43', '2018-03-22 15:58:43', NULL),
(399, 1521752981, 42, 2, 10.00, 10.00, 3.00, 0.60, 0.00, 0.00, 0.00, 20.00, 20.00, 13, 1, 0, '2018-03-22 15:58:44', '2018-03-22 15:58:44', NULL),
(400, 1521752981, 41, 1, 4.00, 4.00, 3.00, 0.12, 0.00, 0.00, 0.00, 4.00, 4.00, 13, 1, 0, '2018-03-22 15:58:44', '2018-03-22 15:58:44', NULL),
(401, 1521752981, 40, 1, 20.00, 20.00, 3.00, 0.60, 0.00, 0.00, 0.00, 20.00, 20.00, 13, 1, 0, '2018-03-22 15:58:44', '2018-03-22 15:58:44', NULL),
(402, 1521752981, 39, 1, 11.00, 11.00, 3.00, 0.33, 0.00, 0.00, 0.00, 11.00, 11.00, 13, 1, 0, '2018-03-22 15:58:44', '2018-03-22 15:58:44', NULL),
(403, 1521752981, 38, 1, 10.00, 10.00, 3.00, 0.30, 0.00, 0.00, 0.00, 10.00, 10.00, 13, 1, 0, '2018-03-22 15:58:44', '2018-03-22 15:58:44', NULL),
(404, 1521752981, 37, 1, 10.00, 10.00, 3.00, 0.30, 0.00, 0.00, 0.00, 10.00, 10.00, 13, 1, 0, '2018-03-22 15:58:45', '2018-03-22 15:58:45', NULL),
(405, 1521752981, 44, 4, 22.00, 22.00, 3.00, 2.64, 0.00, 0.00, 0.00, 88.00, 88.00, 13, 1, 0, '2018-03-22 15:59:11', '2018-03-22 15:59:11', NULL),
(406, 1521752981, 43, 1, 20.00, 20.00, 3.00, 0.60, 0.00, 0.00, 0.00, 20.00, 20.00, 13, 1, 0, '2018-03-22 15:59:11', '2018-03-22 15:59:11', NULL),
(407, 1521752981, 42, 2, 10.00, 10.00, 3.00, 0.60, 0.00, 0.00, 0.00, 20.00, 20.00, 13, 1, 0, '2018-03-22 15:59:11', '2018-03-22 15:59:11', NULL),
(408, 1521752981, 41, 1, 4.00, 4.00, 3.00, 0.12, 0.00, 0.00, 0.00, 4.00, 4.00, 13, 1, 0, '2018-03-22 15:59:11', '2018-03-22 15:59:11', NULL),
(409, 1521752981, 40, 1, 20.00, 20.00, 3.00, 0.60, 0.00, 0.00, 0.00, 20.00, 20.00, 13, 1, 0, '2018-03-22 15:59:12', '2018-03-22 15:59:12', NULL),
(410, 1521752981, 39, 1, 11.00, 11.00, 3.00, 0.33, 0.00, 0.00, 0.00, 11.00, 11.00, 13, 1, 0, '2018-03-22 15:59:12', '2018-03-22 15:59:12', NULL),
(411, 1521752981, 38, 1, 10.00, 10.00, 3.00, 0.30, 0.00, 0.00, 0.00, 10.00, 10.00, 13, 1, 0, '2018-03-22 15:59:12', '2018-03-22 15:59:12', NULL),
(412, 1521752981, 37, 1, 10.00, 10.00, 3.00, 0.30, 0.00, 0.00, 0.00, 10.00, 10.00, 13, 1, 0, '2018-03-22 15:59:12', '2018-03-22 15:59:12', NULL),
(413, 1521752981, 44, 4, 22.00, 22.00, 3.00, 2.64, 0.00, 0.00, 0.00, 88.00, 88.00, 13, 1, 0, '2018-03-22 16:01:59', '2018-03-22 16:01:59', NULL),
(414, 1521752981, 43, 1, 20.00, 20.00, 3.00, 0.60, 0.00, 0.00, 0.00, 20.00, 20.00, 13, 1, 0, '2018-03-22 16:01:59', '2018-03-22 16:01:59', NULL),
(415, 1521752981, 42, 2, 10.00, 10.00, 3.00, 0.60, 0.00, 0.00, 0.00, 20.00, 20.00, 13, 1, 0, '2018-03-22 16:02:00', '2018-03-22 16:02:00', NULL),
(416, 1521752981, 41, 1, 4.00, 4.00, 3.00, 0.12, 0.00, 0.00, 0.00, 4.00, 4.00, 13, 1, 0, '2018-03-22 16:02:00', '2018-03-22 16:02:00', NULL),
(417, 1521752981, 40, 1, 20.00, 20.00, 3.00, 0.60, 0.00, 0.00, 0.00, 20.00, 20.00, 13, 1, 0, '2018-03-22 16:02:00', '2018-03-22 16:02:00', NULL),
(418, 1521752981, 39, 1, 11.00, 11.00, 3.00, 0.33, 0.00, 0.00, 0.00, 11.00, 11.00, 13, 1, 0, '2018-03-22 16:02:00', '2018-03-22 16:02:00', NULL),
(419, 1521752981, 38, 1, 10.00, 10.00, 3.00, 0.30, 0.00, 0.00, 0.00, 10.00, 10.00, 13, 1, 0, '2018-03-22 16:02:01', '2018-03-22 16:02:01', NULL),
(420, 1521752981, 37, 1, 10.00, 10.00, 3.00, 0.30, 0.00, 0.00, 0.00, 10.00, 10.00, 13, 1, 0, '2018-03-22 16:02:01', '2018-03-22 16:02:01', NULL),
(421, 1521756122, 44, 3, 22.00, 22.00, 3.00, 1.98, 0.00, 0.00, 0.00, 66.00, 66.00, 13, 1, 0, '2018-03-22 16:23:29', '2018-03-23 12:19:25', '2018-03-23 12:19:25'),
(422, 1521756122, 35, 3, 10.00, 5.00, 3.00, 0.90, 0.00, 0.00, 0.00, 30.00, 15.00, 13, 1, 0, '2018-03-22 16:23:29', '2018-03-23 12:19:25', '2018-03-23 12:19:25'),
(423, 1521757410, 44, 4, 22.00, 22.00, 3.00, 2.64, 0.00, 0.00, 0.00, 88.00, 88.00, 13, 1, 0, '2018-03-22 16:25:42', '2018-03-22 16:25:42', NULL),
(424, 1521757410, 43, 3, 20.00, 20.00, 3.00, 1.80, 0.00, 0.00, 0.00, 60.00, 60.00, 13, 1, 0, '2018-03-22 16:25:42', '2018-03-22 16:25:42', NULL),
(425, 1521759827, 4, 1, 19.00, 12.00, 0.00, 0.00, 0.00, 0.00, 0.00, 19.00, 12.00, 13, 1, 0, '2018-03-22 17:03:47', '2018-03-22 17:03:47', NULL),
(426, 1521759827, 4, 1, 19.00, 12.00, 0.00, 0.00, 0.00, 0.00, 0.00, 19.00, 12.00, 13, 1, 0, '2018-03-22 17:03:47', '2018-03-22 17:03:47', NULL),
(427, 1521756122, 44, 3, 22.00, 22.00, 0.00, 0.00, 0.00, 0.00, 0.00, 66.00, 66.00, 13, 1, 1, '2018-03-23 12:19:25', '2018-03-23 12:19:25', NULL),
(428, 1521756122, 35, 3, 10.00, 5.00, 0.00, 0.00, 0.00, 0.00, 0.00, 30.00, 15.00, 13, 1, 1, '2018-03-23 12:19:26', '2018-03-23 12:19:26', NULL),
(429, 1521846193, 44, 4, 22.00, 22.00, 3.00, 2.64, 0.00, 0.00, 0.00, 88.00, 88.00, 13, 1, 0, '2018-03-23 17:03:13', '2018-03-23 17:03:13', NULL),
(430, 1521846193, 40, 3, 20.00, 20.00, 3.00, 1.80, 0.00, 0.00, 0.00, 60.00, 60.00, 13, 1, 0, '2018-03-23 17:03:13', '2018-03-23 17:03:13', NULL),
(431, 1523220777, 44, 1, 22.00, 22.00, 3.00, 0.66, 0.00, 0.00, 0.00, 22.00, 22.00, 13, 1, 0, '2018-04-08 14:54:20', '2018-04-08 14:54:20', NULL),
(432, 1523220777, 43, 1, 20.00, 20.00, 3.00, 0.60, 0.00, 0.00, 0.00, 20.00, 20.00, 13, 1, 0, '2018-04-08 14:54:20', '2018-04-08 14:54:20', NULL),
(433, 1523220777, 42, 1, 10.00, 10.00, 3.00, 0.30, 0.00, 0.00, 0.00, 10.00, 10.00, 13, 1, 0, '2018-04-08 14:54:20', '2018-04-08 14:54:20', NULL),
(434, 1523220777, 41, 1, 4.00, 4.00, 3.00, 0.12, 0.00, 0.00, 0.00, 4.00, 4.00, 13, 1, 0, '2018-04-08 14:54:21', '2018-04-08 14:54:21', NULL),
(435, 1523220777, 40, 1, 20.00, 20.00, 3.00, 0.60, 0.00, 0.00, 0.00, 20.00, 20.00, 13, 1, 0, '2018-04-08 14:54:21', '2018-04-08 14:54:21', NULL),
(436, 1523220777, 39, 1, 11.00, 11.00, 3.00, 0.33, 0.00, 0.00, 0.00, 11.00, 11.00, 13, 1, 0, '2018-04-08 14:54:21', '2018-04-08 14:54:21', NULL),
(437, 1523220777, 38, 1, 10.00, 10.00, 3.00, 0.30, 0.00, 0.00, 0.00, 10.00, 10.00, 13, 1, 0, '2018-04-08 14:54:21', '2018-04-08 14:54:21', NULL),
(438, 1523220777, 37, 2, 10.00, 10.00, 3.00, 0.60, 0.00, 0.00, 0.00, 20.00, 20.00, 13, 1, 0, '2018-04-08 14:54:21', '2018-04-08 14:54:21', NULL),
(439, 1523220876, 43, 1, 20.00, 20.00, 3.00, 0.60, 0.00, 0.00, 0.00, 20.00, 20.00, 13, 1, 0, '2018-04-08 15:04:56', '2018-04-08 15:04:56', NULL),
(440, 1523220876, 42, 1, 10.00, 10.00, 3.00, 0.30, 0.00, 0.00, 0.00, 10.00, 10.00, 13, 1, 0, '2018-04-08 15:04:56', '2018-04-08 15:04:56', NULL),
(441, 1523220876, 41, 1, 4.00, 4.00, 3.00, 0.12, 0.00, 0.00, 0.00, 4.00, 4.00, 13, 1, 0, '2018-04-08 15:04:56', '2018-04-08 15:04:56', NULL),
(442, 1523221497, 44, 1, 22.00, 22.00, 3.00, 0.66, 0.00, 0.00, 0.00, 22.00, 22.00, 13, 1, 0, '2018-04-08 16:04:08', '2018-04-08 16:04:08', NULL),
(443, 1523221497, 43, 1, 20.00, 20.00, 3.00, 0.60, 0.00, 0.00, 0.00, 20.00, 20.00, 13, 1, 0, '2018-04-08 16:04:08', '2018-04-08 16:04:08', NULL),
(444, 1523221497, 42, 1, 10.00, 10.00, 3.00, 0.30, 0.00, 0.00, 0.00, 10.00, 10.00, 13, 1, 0, '2018-04-08 16:04:09', '2018-04-08 16:04:09', NULL),
(445, 1523221497, 41, 1, 4.00, 4.00, 3.00, 0.12, 0.00, 0.00, 0.00, 4.00, 4.00, 13, 1, 0, '2018-04-08 16:04:09', '2018-04-08 16:04:09', NULL),
(446, 1523221497, 37, 1, 10.00, 10.00, 3.00, 0.30, 0.00, 0.00, 0.00, 10.00, 10.00, 13, 1, 0, '2018-04-08 16:04:09', '2018-04-08 16:04:09', NULL),
(447, 1523221497, 38, 1, 10.00, 10.00, 3.00, 0.30, 0.00, 0.00, 0.00, 10.00, 10.00, 13, 1, 0, '2018-04-08 16:04:09', '2018-04-08 16:04:09', NULL),
(448, 1523221497, 39, 1, 11.00, 11.00, 3.00, 0.33, 0.00, 0.00, 0.00, 11.00, 11.00, 13, 1, 0, '2018-04-08 16:04:09', '2018-04-08 16:04:09', NULL),
(449, 1523221497, 40, 1, 20.00, 20.00, 3.00, 0.60, 0.00, 0.00, 0.00, 20.00, 20.00, 13, 1, 0, '2018-04-08 16:04:09', '2018-04-08 16:04:09', NULL),
(450, 1523225050, 36, 1, 11.00, 11.00, 3.00, 0.33, 0.00, 0.00, 0.00, 11.00, 11.00, 13, 1, 0, '2018-04-08 16:13:07', '2018-04-08 16:13:07', NULL),
(451, 1523225050, 35, 1, 10.00, 5.00, 3.00, 0.30, 0.00, 0.00, 0.00, 10.00, 5.00, 13, 1, 0, '2018-04-08 16:13:07', '2018-04-08 16:13:07', NULL),
(452, 1523225050, 34, 1, 10.00, 5.00, 3.00, 0.30, 0.00, 0.00, 0.00, 10.00, 5.00, 13, 1, 0, '2018-04-08 16:13:07', '2018-04-08 16:13:07', NULL),
(453, 1523225050, 33, 1, 20.00, 10.00, 3.00, 0.60, 0.00, 0.00, 0.00, 20.00, 10.00, 13, 1, 0, '2018-04-08 16:13:07', '2018-04-08 16:13:07', NULL),
(454, 1523294846, 44, 1, 22.00, 22.00, 3.00, 0.66, 0.00, 0.00, 0.00, 22.00, 22.00, 13, 1, 0, '2018-04-09 13:48:21', '2018-04-09 13:48:21', NULL),
(455, 1523294846, 43, 1, 20.00, 20.00, 3.00, 0.60, 0.00, 0.00, 0.00, 20.00, 20.00, 13, 1, 0, '2018-04-09 13:48:22', '2018-04-09 13:48:22', NULL),
(456, 1523294846, 42, 2, 10.00, 10.00, 3.00, 0.60, 0.00, 0.00, 0.00, 20.00, 20.00, 13, 1, 0, '2018-04-09 13:48:22', '2018-04-09 13:48:22', NULL),
(457, 1523294846, 41, 1, 4.00, 4.00, 3.00, 0.12, 0.00, 0.00, 0.00, 4.00, 4.00, 13, 1, 0, '2018-04-09 13:48:22', '2018-04-09 13:48:22', NULL),
(458, 1523294846, 37, 1, 10.00, 10.00, 3.00, 0.30, 0.00, 0.00, 0.00, 10.00, 10.00, 13, 1, 0, '2018-04-09 13:48:22', '2018-04-09 13:48:22', NULL),
(459, 1523294846, 38, 1, 10.00, 10.00, 3.00, 0.30, 0.00, 0.00, 0.00, 10.00, 10.00, 13, 1, 0, '2018-04-09 13:48:22', '2018-04-09 13:48:22', NULL),
(460, 1523294846, 39, 1, 11.00, 11.00, 3.00, 0.33, 0.00, 0.00, 0.00, 11.00, 11.00, 13, 1, 0, '2018-04-09 13:48:22', '2018-04-09 13:48:22', NULL),
(461, 1523294846, 40, 1, 20.00, 20.00, 3.00, 0.60, 0.00, 0.00, 0.00, 20.00, 20.00, 13, 1, 0, '2018-04-09 13:48:22', '2018-04-09 13:48:22', NULL),
(462, 1523303303, 44, 1, 22.00, 22.00, 3.00, 0.66, 0.00, 0.00, 0.00, 22.00, 22.00, 13, 1, 0, '2018-04-09 15:44:51', '2018-04-09 15:44:51', NULL),
(463, 1523303303, 43, 1, 20.00, 20.00, 3.00, 0.60, 0.00, 0.00, 0.00, 20.00, 20.00, 13, 1, 0, '2018-04-09 15:44:51', '2018-04-09 15:44:51', NULL),
(464, 1523303303, 42, 1, 10.00, 10.00, 3.00, 0.30, 0.00, 0.00, 0.00, 10.00, 10.00, 13, 1, 0, '2018-04-09 15:44:51', '2018-04-09 15:44:51', NULL),
(465, 1523303303, 41, 1, 4.00, 4.00, 3.00, 0.12, 0.00, 0.00, 0.00, 4.00, 4.00, 13, 1, 0, '2018-04-09 15:44:51', '2018-04-09 15:44:51', NULL),
(466, 1523310292, 32, 1, 10.00, 5.00, 3.00, 0.30, 0.00, 0.00, 0.00, 10.00, 5.00, 13, 1, 0, '2018-04-09 16:35:43', '2018-04-09 16:35:43', NULL),
(467, 1523310292, 31, 1, 10.00, 20.00, 3.00, 0.30, 0.00, 0.00, 0.00, 10.00, 20.00, 13, 1, 0, '2018-04-09 16:35:44', '2018-04-09 16:35:44', NULL),
(468, 1523310292, 30, 1, 2.00, 1.00, 3.00, 0.06, 0.00, 0.00, 0.00, 2.00, 1.00, 13, 1, 0, '2018-04-09 16:35:44', '2018-04-09 16:35:44', NULL),
(469, 1523387430, 44, 1, 22.00, 22.00, 3.00, 0.66, 0.00, 0.00, 0.00, 22.00, 22.00, 13, 1, 0, '2018-04-10 14:37:24', '2018-04-10 14:37:24', NULL),
(470, 1523387430, 43, 1, 20.00, 20.00, 3.00, 0.60, 0.00, 0.00, 0.00, 20.00, 20.00, 13, 1, 0, '2018-04-10 14:37:24', '2018-04-10 14:37:24', NULL),
(471, 1523387430, 42, 1, 10.00, 10.00, 3.00, 0.30, 0.00, 0.00, 0.00, 10.00, 10.00, 13, 1, 0, '2018-04-10 14:37:25', '2018-04-10 14:37:25', NULL),
(472, 1523387430, 41, 1, 4.00, 4.00, 3.00, 0.12, 0.00, 0.00, 0.00, 4.00, 4.00, 13, 1, 0, '2018-04-10 14:37:25', '2018-04-10 14:37:25', NULL),
(473, 1525017380, 45, 1, 10.00, 20.00, 3.00, 0.30, 0.00, 0.00, 0.00, 10.00, 20.00, 1, 1, 0, '2018-04-29 09:58:04', '2018-04-29 09:58:04', NULL),
(474, 1525373162, 58, 1, 20.00, 10.00, 3.00, 0.60, 0.00, 0.00, 0.00, 20.00, 10.00, 1, 1, 0, '2018-05-03 12:46:52', '2018-05-03 12:46:52', NULL),
(475, 1525373162, 57, 1, 20.00, 10.00, 3.00, 0.60, 0.00, 0.00, 0.00, 20.00, 10.00, 1, 1, 0, '2018-05-03 12:46:52', '2018-05-03 12:46:52', NULL),
(476, 1525373162, 56, 1, 20.00, 10.00, 3.00, 0.60, 0.00, 0.00, 0.00, 20.00, 10.00, 1, 1, 0, '2018-05-03 12:46:52', '2018-05-03 12:46:52', NULL),
(477, 1525373162, 55, 1, 20.00, 10.00, 3.00, 0.60, 0.00, 0.00, 0.00, 20.00, 10.00, 1, 1, 0, '2018-05-03 12:46:52', '2018-05-03 12:46:52', NULL),
(478, 1525373162, 54, 1, 20.00, 10.00, 3.00, 0.60, 0.00, 0.00, 0.00, 20.00, 10.00, 1, 1, 0, '2018-05-03 12:46:53', '2018-05-03 12:46:53', NULL),
(479, 1525373162, 53, 1, 1000.00, 800.00, 3.00, 30.00, 0.00, 0.00, 0.00, 1000.00, 800.00, 1, 1, 0, '2018-05-03 12:46:53', '2018-05-03 12:46:53', NULL),
(480, 1525373162, 52, 1, 500.00, 400.00, 3.00, 15.00, 0.00, 0.00, 0.00, 500.00, 400.00, 1, 1, 0, '2018-05-03 12:46:53', '2018-05-03 12:46:53', NULL),
(481, 1525373162, 51, 1, 100.00, 50.00, 3.00, 3.00, 0.00, 0.00, 0.00, 100.00, 50.00, 1, 1, 0, '2018-05-03 12:46:53', '2018-05-03 12:46:53', NULL),
(482, 1525978703, 58, 2, 20.00, 10.00, 3.00, 1.20, 0.00, 0.00, 0.00, 40.00, 20.00, 1, 1, 0, '2018-05-10 20:08:20', '2018-05-10 20:08:20', NULL),
(483, 1525978703, 57, 1, 20.00, 10.00, 3.00, 0.60, 0.00, 0.00, 0.00, 20.00, 10.00, 1, 1, 0, '2018-05-10 20:08:21', '2018-05-10 20:08:21', NULL),
(484, 1526041609, 58, 1, 20.00, 10.00, 3.00, 0.60, 0.00, 0.00, 0.00, 20.00, 10.00, 1, 1, 0, '2018-05-11 06:27:32', '2018-05-11 06:27:32', NULL),
(485, 1526041609, 54, 1, 20.00, 10.00, 3.00, 0.60, 0.00, 0.00, 0.00, 20.00, 10.00, 1, 1, 0, '2018-05-11 06:27:32', '2018-05-11 06:27:32', NULL),
(486, 1526042681, 58, 1, 20.00, 10.00, 3.00, 0.60, 0.00, 0.00, 0.00, 20.00, 10.00, 1, 1, 0, '2018-05-11 16:39:55', '2018-05-11 16:39:55', NULL),
(487, 1526042681, 54, 1, 20.00, 10.00, 3.00, 0.60, 0.00, 0.00, 0.00, 20.00, 10.00, 1, 1, 0, '2018-05-11 16:39:55', '2018-05-11 16:39:55', NULL),
(488, 1526042681, 45, 1, 10.00, 20.00, 3.00, 0.30, 0.00, 0.00, 0.00, 10.00, 20.00, 1, 1, 0, '2018-05-11 16:39:56', '2018-05-11 16:39:56', NULL),
(489, 1526078547, 58, 1, 20.00, 10.00, 3.00, 0.60, 0.00, 0.00, 0.00, 20.00, 10.00, 1, 1, 0, '2018-05-11 16:43:21', '2018-05-11 16:43:21', NULL),
(490, 1526078602, 54, 1, 20.00, 10.00, 3.00, 0.60, 0.00, 0.00, 0.00, 20.00, 10.00, 1, 1, 0, '2018-05-11 16:43:49', '2018-05-11 16:43:49', NULL),
(491, 1526078602, 45, 1, 10.00, 20.00, 3.00, 0.30, 0.00, 0.00, 0.00, 10.00, 20.00, 1, 1, 0, '2018-05-11 16:43:49', '2018-05-11 16:43:49', NULL),
(492, 1526078602, 50, 1, 5.00, 3.00, 3.00, 0.15, 0.00, 0.00, 0.00, 5.00, 3.00, 1, 1, 0, '2018-05-11 16:43:49', '2018-05-11 16:43:49', NULL),
(493, 1526078602, 53, 1, 1000.00, 800.00, 3.00, 30.00, 0.00, 0.00, 0.00, 1000.00, 800.00, 1, 1, 0, '2018-05-11 16:43:49', '2018-05-11 16:43:49', NULL),
(494, 1526078602, 58, 1, 20.00, 10.00, 3.00, 0.60, 0.00, 0.00, 0.00, 20.00, 10.00, 1, 1, 0, '2018-05-11 16:43:49', '2018-05-11 16:43:49', NULL),
(495, 1526078652, 58, 1, 20.00, 10.00, 3.00, 0.60, 0.00, 0.00, 0.00, 20.00, 10.00, 1, 1, 0, '2018-05-11 16:46:40', '2018-05-11 16:46:40', NULL),
(496, 1526078652, 54, 1, 20.00, 10.00, 3.00, 0.60, 0.00, 0.00, 0.00, 20.00, 10.00, 1, 1, 0, '2018-05-11 16:46:41', '2018-05-11 16:46:41', NULL),
(497, 1526078652, 49, 1, 10.00, 2.00, 3.00, 0.30, 0.00, 0.00, 0.00, 10.00, 2.00, 1, 1, 0, '2018-05-11 16:46:41', '2018-05-11 16:46:41', NULL),
(498, 1526078809, 58, 1, 20.00, 10.00, 3.00, 0.60, 0.00, 0.00, 0.00, 20.00, 10.00, 1, 1, 0, '2018-05-11 16:47:18', '2018-05-11 16:47:18', NULL),
(499, 1526078809, 54, 1, 20.00, 10.00, 3.00, 0.60, 0.00, 0.00, 0.00, 20.00, 10.00, 1, 1, 0, '2018-05-11 16:47:18', '2018-05-11 16:47:18', NULL),
(500, 1526078809, 53, 1, 1000.00, 800.00, 3.00, 30.00, 0.00, 0.00, 0.00, 1000.00, 800.00, 1, 1, 0, '2018-05-11 16:47:19', '2018-05-11 16:47:19', NULL),
(501, 1526078809, 49, 1, 10.00, 2.00, 3.00, 0.30, 0.00, 0.00, 0.00, 10.00, 2.00, 1, 1, 0, '2018-05-11 16:47:19', '2018-05-11 16:47:19', NULL),
(502, 1526078840, 58, 1, 20.00, 10.00, 3.00, 0.60, 0.00, 0.00, 0.00, 20.00, 10.00, 1, 1, 0, '2018-05-11 16:47:38', '2018-05-11 16:47:38', NULL),
(503, 1526078840, 54, 1, 20.00, 10.00, 3.00, 0.60, 0.00, 0.00, 0.00, 20.00, 10.00, 1, 1, 0, '2018-05-11 16:47:38', '2018-05-11 16:47:38', NULL),
(504, 1526078840, 45, 1, 10.00, 20.00, 3.00, 0.30, 0.00, 0.00, 0.00, 10.00, 20.00, 1, 1, 0, '2018-05-11 16:47:38', '2018-05-11 16:47:38', NULL),
(505, 1526078859, 58, 1, 20.00, 10.00, 3.00, 0.60, 0.00, 0.00, 0.00, 20.00, 10.00, 1, 1, 0, '2018-05-11 17:08:19', '2018-05-11 17:08:19', NULL),
(506, 1526078859, 54, 1, 20.00, 10.00, 3.00, 0.60, 0.00, 0.00, 0.00, 20.00, 10.00, 1, 1, 0, '2018-05-11 17:08:20', '2018-05-11 17:08:20', NULL),
(507, 1526078859, 45, 1, 10.00, 20.00, 3.00, 0.30, 0.00, 0.00, 0.00, 10.00, 20.00, 1, 1, 0, '2018-05-11 17:08:20', '2018-05-11 17:08:20', NULL),
(508, 1528482259, 58, 1, 20.00, 10.00, 3.00, 0.60, 0.00, 0.00, 0.00, 20.00, 10.00, 1, 1, 0, '2018-06-08 12:36:13', '2018-06-08 12:36:13', NULL),
(509, 1528482259, 48, 1, 22.00, 11.00, 3.00, 0.66, 0.00, 0.00, 0.00, 22.00, 11.00, 1, 1, 0, '2018-06-08 12:36:13', '2018-06-08 12:36:13', NULL),
(510, 1528482259, 58, 1, 20.00, 10.00, 3.00, 0.60, 0.00, 0.00, 0.00, 20.00, 10.00, 1, 1, 0, '2018-06-08 12:36:22', '2018-06-08 12:36:22', NULL),
(511, 1528482259, 48, 1, 22.00, 11.00, 3.00, 0.66, 0.00, 0.00, 0.00, 22.00, 11.00, 1, 1, 0, '2018-06-08 12:36:22', '2018-06-08 12:36:22', NULL),
(512, 1528482259, 58, 1, 20.00, 10.00, 3.00, 0.60, 0.00, 0.00, 0.00, 20.00, 10.00, 1, 1, 0, '2018-06-08 12:36:34', '2018-06-08 12:36:34', NULL),
(513, 1528482259, 48, 1, 22.00, 11.00, 3.00, 0.66, 0.00, 0.00, 0.00, 22.00, 11.00, 1, 1, 0, '2018-06-08 12:36:34', '2018-06-08 12:36:34', NULL),
(514, 1528482259, 58, 1, 20.00, 10.00, 3.00, 0.60, 0.00, 0.00, 0.00, 20.00, 10.00, 1, 1, 0, '2018-06-08 12:37:11', '2018-06-08 12:37:11', NULL),
(515, 1528482259, 48, 1, 22.00, 11.00, 3.00, 0.66, 0.00, 0.00, 0.00, 22.00, 11.00, 1, 1, 0, '2018-06-08 12:37:11', '2018-06-08 12:37:11', NULL),
(516, 1528482259, 58, 1, 20.00, 10.00, 3.00, 0.60, 0.00, 0.00, 0.00, 20.00, 10.00, 1, 1, 0, '2018-06-08 12:42:26', '2018-06-08 12:42:26', NULL),
(517, 1528482259, 48, 1, 22.00, 11.00, 3.00, 0.66, 0.00, 0.00, 0.00, 22.00, 11.00, 1, 1, 0, '2018-06-08 12:42:26', '2018-06-08 12:42:26', NULL),
(518, 1528483432, 58, 1, 20.00, 10.00, 3.00, 0.60, 0.00, 0.00, 0.00, 20.00, 10.00, 1, 1, 0, '2018-06-08 12:44:48', '2018-06-08 12:44:48', NULL),
(519, 1528483432, 57, 1, 20.00, 10.00, 3.00, 0.60, 0.00, 0.00, 0.00, 20.00, 10.00, 1, 1, 0, '2018-06-08 12:44:48', '2018-06-08 12:44:48', NULL),
(520, 1528483432, 56, 1, 20.00, 10.00, 3.00, 0.60, 0.00, 0.00, 0.00, 20.00, 10.00, 1, 1, 0, '2018-06-08 12:44:48', '2018-06-08 12:44:48', NULL),
(521, 1528483432, 55, 1, 20.00, 10.00, 3.00, 0.60, 0.00, 0.00, 0.00, 20.00, 10.00, 1, 1, 0, '2018-06-08 12:44:48', '2018-06-08 12:44:48', NULL),
(522, 1528483490, 58, 1, 20.00, 10.00, 3.00, 0.60, 0.00, 0.00, 0.00, 20.00, 10.00, 1, 1, 0, '2018-06-08 12:58:00', '2018-06-08 12:58:00', NULL),
(523, 1528483490, 57, 1, 20.00, 10.00, 3.00, 0.60, 0.00, 0.00, 0.00, 20.00, 10.00, 1, 1, 0, '2018-06-08 12:58:00', '2018-06-08 12:58:00', NULL),
(524, 1528484281, 50, 1, 5.00, 3.00, 3.00, 0.15, 0.00, 0.00, 0.00, 5.00, 3.00, 1, 1, 0, '2018-06-08 13:29:05', '2018-06-08 13:29:05', NULL),
(525, 1528484281, 49, 1, 10.00, 2.00, 3.00, 0.30, 0.00, 0.00, 0.00, 10.00, 2.00, 1, 1, 0, '2018-06-08 13:29:05', '2018-06-08 13:29:05', NULL),
(526, 1528484281, 48, 1, 22.00, 11.00, 3.00, 0.66, 0.00, 0.00, 0.00, 22.00, 11.00, 1, 1, 0, '2018-06-08 13:29:05', '2018-06-08 13:29:05', NULL),
(527, 1528484281, 47, 1, 55.00, 22.00, 3.00, 1.65, 0.00, 0.00, 0.00, 55.00, 22.00, 1, 1, 0, '2018-06-08 13:29:05', '2018-06-08 13:29:05', NULL),
(528, 1528486146, 58, 1, 20.00, 10.00, 3.00, 0.60, 0.00, 0.00, 0.00, 20.00, 10.00, 1, 1, 0, '2018-06-08 16:11:26', '2018-06-08 16:11:26', NULL),
(529, 1528486146, 57, 1, 20.00, 10.00, 3.00, 0.60, 0.00, 0.00, 0.00, 20.00, 10.00, 1, 1, 0, '2018-06-08 16:11:27', '2018-06-08 16:11:27', NULL),
(530, 1528486146, 56, 1, 20.00, 10.00, 3.00, 0.60, 0.00, 0.00, 0.00, 20.00, 10.00, 1, 1, 0, '2018-06-08 16:11:27', '2018-06-08 16:11:27', NULL),
(531, 1528486146, 55, 1, 20.00, 10.00, 3.00, 0.60, 0.00, 0.00, 0.00, 20.00, 10.00, 1, 1, 0, '2018-06-08 16:11:27', '2018-06-08 16:11:27', NULL),
(532, 1530264400, 56, 1, 20.00, 10.00, 3.00, 0.60, 0.00, 0.00, 0.00, 20.00, 10.00, 1, 1, 0, '2018-06-29 03:27:07', '2018-06-29 03:27:07', NULL),
(533, 1530264400, 55, 1, 20.00, 10.00, 3.00, 0.60, 0.00, 0.00, 0.00, 20.00, 10.00, 1, 1, 0, '2018-06-29 03:27:07', '2018-06-29 03:27:07', NULL),
(534, 1530264400, 51, 1, 100.00, 50.00, 3.00, 3.00, 0.00, 0.00, 0.00, 100.00, 50.00, 1, 1, 0, '2018-06-29 03:27:08', '2018-06-29 03:27:08', NULL),
(535, 1530264400, 52, 1, 500.00, 400.00, 3.00, 15.00, 0.00, 0.00, 0.00, 500.00, 400.00, 1, 1, 0, '2018-06-29 03:27:08', '2018-06-29 03:27:08', NULL),
(536, 1530264400, 53, 1, 1000.00, 800.00, 3.00, 30.00, 0.00, 0.00, 0.00, 1000.00, 800.00, 1, 1, 0, '2018-06-29 03:27:08', '2018-06-29 03:27:08', NULL),
(537, 1530280686, 52, 1, 500.00, 400.00, 3.00, 15.00, 0.00, 0.00, 0.00, 500.00, 400.00, 1, 1, 0, '2018-06-29 08:14:16', '2018-06-29 08:14:16', NULL),
(538, 1530280686, 51, 1, 100.00, 50.00, 3.00, 3.00, 0.00, 0.00, 0.00, 100.00, 50.00, 1, 1, 0, '2018-06-29 08:14:16', '2018-06-29 08:14:16', NULL),
(539, 1530280686, 47, 1, 55.00, 22.00, 3.00, 1.65, 0.00, 0.00, 0.00, 55.00, 22.00, 1, 1, 0, '2018-06-29 08:14:17', '2018-06-29 08:14:17', NULL),
(540, 1530280686, 48, 1, 22.00, 11.00, 3.00, 0.66, 0.00, 0.00, 0.00, 22.00, 11.00, 1, 1, 0, '2018-06-29 08:14:17', '2018-06-29 08:14:17', NULL),
(541, 1530281657, 57, 1, 20.00, 10.00, 3.00, 0.60, 0.00, 0.00, 0.00, 20.00, 10.00, 1, 1, 0, '2018-06-29 09:46:00', '2018-06-29 09:46:00', NULL),
(542, 1530281657, 56, 1, 20.00, 10.00, 3.00, 0.60, 0.00, 0.00, 0.00, 20.00, 10.00, 1, 1, 0, '2018-06-29 09:46:00', '2018-06-29 09:46:00', NULL),
(543, 1530281657, 55, 1, 20.00, 10.00, 3.00, 0.60, 0.00, 0.00, 0.00, 20.00, 10.00, 1, 1, 0, '2018-06-29 09:46:00', '2018-06-29 09:46:00', NULL),
(544, 1530287318, 56, 1, 20.00, 10.00, 3.00, 0.60, 0.00, 0.00, 0.00, 20.00, 10.00, 1, 1, 0, '2018-06-29 09:48:49', '2018-06-29 09:48:49', NULL),
(545, 1530295427, 46, 1, 50.00, 20.00, 3.00, 1.50, 0.00, 0.00, 0.00, 50.00, 20.00, 1, 1, 0, '2018-06-29 12:04:33', '2018-06-29 12:04:33', NULL),
(546, 1530295474, 47, 1, 55.00, 22.00, 3.00, 1.65, 0.00, 0.00, 0.00, 55.00, 22.00, 1, 1, 0, '2018-06-29 12:32:33', '2018-06-29 12:32:33', NULL),
(547, 1530295474, 48, 1, 22.00, 11.00, 3.00, 0.66, 0.00, 0.00, 0.00, 22.00, 11.00, 1, 1, 0, '2018-06-29 12:32:33', '2018-06-29 12:32:33', NULL),
(548, 1530295474, 51, 1, 100.00, 50.00, 3.00, 3.00, 0.00, 0.00, 0.00, 100.00, 50.00, 1, 1, 0, '2018-06-29 12:32:34', '2018-06-29 12:32:34', NULL),
(549, 1530295474, 52, 1, 500.00, 400.00, 3.00, 15.00, 0.00, 0.00, 0.00, 500.00, 400.00, 1, 1, 0, '2018-06-29 12:32:34', '2018-06-29 12:32:34', NULL),
(550, 1530306106, 56, 1, 20.00, 10.00, 3.00, 0.60, 0.00, 0.00, 0.00, 20.00, 10.00, 1, 1, 0, '2018-06-29 15:01:58', '2018-06-29 15:01:58', NULL),
(551, 1530306106, 55, 1, 20.00, 10.00, 3.00, 0.60, 0.00, 0.00, 0.00, 20.00, 10.00, 1, 1, 0, '2018-06-29 15:01:58', '2018-06-29 15:01:58', NULL),
(552, 1530646269, 58, 1, 20.00, 10.00, 3.00, 0.60, 0.00, 0.00, 0.00, 20.00, 10.00, 1, 1, 0, '2018-07-03 14:05:51', '2018-07-03 14:05:51', NULL),
(553, 1530646269, 57, 1, 20.00, 10.00, 3.00, 0.60, 0.00, 0.00, 0.00, 20.00, 10.00, 1, 1, 0, '2018-07-03 14:05:52', '2018-07-03 14:05:52', NULL),
(554, 1530646269, 56, 1, 20.00, 10.00, 3.00, 0.60, 0.00, 0.00, 0.00, 20.00, 10.00, 1, 1, 0, '2018-07-03 14:05:52', '2018-07-03 14:05:52', NULL),
(555, 1530646269, 55, 1, 20.00, 10.00, 3.00, 0.60, 0.00, 0.00, 0.00, 20.00, 10.00, 1, 1, 0, '2018-07-03 14:05:52', '2018-07-03 14:05:52', NULL),
(556, 1531167881, 58, 1, 20.00, 10.00, 3.00, 0.60, 0.00, 0.00, 0.00, 20.00, 10.00, 1, 1, 0, '2018-07-09 14:42:05', '2018-07-09 14:42:05', NULL),
(557, 1531167881, 57, 1, 20.00, 10.00, 3.00, 0.60, 0.00, 0.00, 0.00, 20.00, 10.00, 1, 1, 0, '2018-07-09 14:42:05', '2018-07-09 14:42:05', NULL),
(558, 1531167881, 55, 1, 20.00, 10.00, 3.00, 0.60, 0.00, 0.00, 0.00, 20.00, 10.00, 1, 1, 0, '2018-07-09 14:42:05', '2018-07-09 14:42:05', NULL),
(559, 1531245939, 56, 1, 20.00, 10.00, 3.00, 0.60, 0.00, 0.00, 0.00, 20.00, 10.00, 1, 1, 0, '2018-07-10 12:07:39', '2018-07-10 12:07:39', NULL),
(560, 1531245939, 55, 1, 20.00, 10.00, 3.00, 0.60, 0.00, 0.00, 0.00, 20.00, 10.00, 1, 1, 0, '2018-07-10 12:07:39', '2018-07-10 12:07:39', NULL),
(561, 1531250059, 57, 1, 20.00, 10.00, 3.00, 0.60, 0.00, 0.00, 0.00, 20.00, 10.00, 1, 1, 0, '2018-07-10 13:14:34', '2018-07-10 13:14:34', NULL),
(562, 1531250059, 56, 1, 20.00, 10.00, 3.00, 0.60, 0.00, 0.00, 0.00, 20.00, 10.00, 1, 1, 0, '2018-07-10 13:14:34', '2018-07-10 13:14:34', NULL),
(563, 1531250059, 55, 1, 20.00, 10.00, 3.00, 0.60, 0.00, 0.00, 0.00, 20.00, 10.00, 1, 1, 0, '2018-07-10 13:14:34', '2018-07-10 13:14:34', NULL),
(564, 1532201170, 58, 1, 20.00, 10.00, 3.00, 0.60, 0.00, 0.00, 0.00, 20.00, 10.00, 1, 1, 0, '2018-07-21 14:25:00', '2018-07-21 14:25:00', NULL),
(565, 1532201170, 57, 1, 20.00, 10.00, 3.00, 0.60, 0.00, 0.00, 0.00, 20.00, 10.00, 1, 1, 0, '2018-07-21 14:25:00', '2018-07-21 14:25:00', NULL),
(566, 1532201170, 56, 1, 20.00, 10.00, 3.00, 0.60, 0.00, 0.00, 0.00, 20.00, 10.00, 1, 1, 0, '2018-07-21 14:25:01', '2018-07-21 14:25:01', NULL),
(567, 1532201170, 58, 1, 20.00, 10.00, 3.00, 0.60, 0.00, 0.00, 0.00, 20.00, 10.00, 1, 1, 0, '2018-07-21 14:26:48', '2018-07-21 14:26:48', NULL),
(568, 1532201170, 57, 1, 20.00, 10.00, 3.00, 0.60, 0.00, 0.00, 0.00, 20.00, 10.00, 1, 1, 0, '2018-07-21 14:26:48', '2018-07-21 14:26:48', NULL),
(569, 1532201170, 56, 1, 20.00, 10.00, 3.00, 0.60, 0.00, 0.00, 0.00, 20.00, 10.00, 1, 1, 0, '2018-07-21 14:26:48', '2018-07-21 14:26:48', NULL),
(570, 1532204996, 57, 1, 20.00, 10.00, 3.00, 0.60, 0.00, 0.00, 0.00, 20.00, 10.00, 1, 1, 0, '2018-07-21 14:30:36', '2018-07-21 14:30:36', NULL),
(571, 1532204996, 56, 1, 20.00, 10.00, 3.00, 0.60, 0.00, 0.00, 0.00, 20.00, 10.00, 1, 1, 0, '2018-07-21 14:30:36', '2018-07-21 14:30:36', NULL),
(572, 1532205069, 57, 1, 20.00, 10.00, 3.00, 0.60, 0.00, 0.00, 0.00, 20.00, 10.00, 1, 1, 0, '2018-07-21 14:31:24', '2018-07-21 14:31:24', NULL),
(573, 1532205112, 57, 1, 20.00, 10.00, 3.00, 0.60, 0.00, 0.00, 0.00, 20.00, 10.00, 1, 1, 0, '2018-07-21 14:32:27', '2018-07-21 14:32:27', NULL),
(574, 1532717608, 50, 1, 5.00, 3.00, 3.00, 0.15, 0.00, 0.00, 0.00, 5.00, 3.00, 1, 1, 0, '2018-07-27 14:44:46', '2018-07-27 14:44:46', NULL),
(575, 1532724288, 50, 1, 5.00, 3.00, 3.00, 0.15, 0.00, 0.00, 0.00, 5.00, 3.00, 1, 1, 0, '2018-07-27 14:59:03', '2018-07-27 14:59:03', NULL),
(576, 1532724288, 48, 1, 22.00, 11.00, 3.00, 0.66, 0.00, 0.00, 0.00, 22.00, 11.00, 1, 1, 0, '2018-07-27 14:59:03', '2018-07-27 14:59:03', NULL),
(577, 1532725259, 57, 1, 20.00, 10.00, 3.00, 0.60, 0.00, 0.00, 0.00, 20.00, 10.00, 1, 1, 0, '2018-07-27 15:07:55', '2018-07-27 15:07:55', NULL),
(578, 1532725259, 56, 1, 20.00, 10.00, 3.00, 0.60, 0.00, 0.00, 0.00, 20.00, 10.00, 1, 1, 0, '2018-07-27 15:07:55', '2018-07-27 15:07:55', NULL),
(579, 1532725259, 55, 1, 20.00, 10.00, 3.00, 0.60, 0.00, 0.00, 0.00, 20.00, 10.00, 1, 1, 0, '2018-07-27 15:07:55', '2018-07-27 15:07:55', NULL),
(580, 1535730471, 61, 1, 1.00, 1.00, 3.00, 0.03, 0.00, 0.00, 0.00, 1.00, 1.00, 31, 7, 0, '2018-08-31 09:48:05', '2018-08-31 09:48:05', NULL),
(581, 1536928881, 58, 1, 20.00, 10.00, 3.00, 0.60, 0.00, 0.00, 0.00, 20.00, 10.00, 1, 1, 0, '2018-09-14 11:36:18', '2018-09-14 11:36:18', NULL),
(582, 1536928881, 57, 1, 20.00, 10.00, 3.00, 0.60, 0.00, 0.00, 0.00, 20.00, 10.00, 1, 1, 0, '2018-09-14 11:36:18', '2018-09-14 11:36:18', NULL),
(583, 1536928881, 56, 1, 20.00, 10.00, 3.00, 0.60, 0.00, 0.00, 0.00, 20.00, 10.00, 1, 1, 0, '2018-09-14 11:36:18', '2018-09-14 11:36:18', NULL),
(584, 1536928881, 55, 1, 20.00, 10.00, 3.00, 0.60, 0.00, 0.00, 0.00, 20.00, 10.00, 1, 1, 0, '2018-09-14 11:36:19', '2018-09-14 11:36:19', NULL),
(585, 1536928881, 46, 1, 50.00, 20.00, 3.00, 1.50, 0.00, 0.00, 0.00, 50.00, 20.00, 1, 1, 0, '2018-09-14 11:36:19', '2018-09-14 11:36:19', NULL),
(586, 1536928881, 58, 1, 20.00, 10.00, 3.00, 0.60, 0.00, 0.00, 0.00, 20.00, 10.00, 1, 1, 0, '2018-09-14 12:05:08', '2018-09-14 12:05:08', NULL),
(587, 1536928881, 57, 1, 20.00, 10.00, 3.00, 0.60, 0.00, 0.00, 0.00, 20.00, 10.00, 1, 1, 0, '2018-09-14 12:05:08', '2018-09-14 12:05:08', NULL),
(588, 1536928881, 56, 1, 20.00, 10.00, 3.00, 0.60, 0.00, 0.00, 0.00, 20.00, 10.00, 1, 1, 0, '2018-09-14 12:05:08', '2018-09-14 12:05:08', NULL),
(589, 1536928881, 55, 1, 20.00, 10.00, 3.00, 0.60, 0.00, 0.00, 0.00, 20.00, 10.00, 1, 1, 0, '2018-09-14 12:05:08', '2018-09-14 12:05:08', NULL),
(590, 1536928881, 46, 1, 50.00, 20.00, 3.00, 1.50, 0.00, 0.00, 0.00, 50.00, 20.00, 1, 1, 0, '2018-09-14 12:05:08', '2018-09-14 12:05:08', NULL),
(591, 1536928881, 58, 1, 20.00, 10.00, 3.00, 0.60, 0.00, 0.00, 0.00, 20.00, 10.00, 1, 1, 0, '2018-09-14 12:45:18', '2018-09-14 12:45:18', NULL),
(592, 1536928881, 57, 1, 20.00, 10.00, 3.00, 0.60, 0.00, 0.00, 0.00, 20.00, 10.00, 1, 1, 0, '2018-09-14 12:45:18', '2018-09-14 12:45:18', NULL),
(593, 1536928881, 56, 1, 20.00, 10.00, 3.00, 0.60, 0.00, 0.00, 0.00, 20.00, 10.00, 1, 1, 0, '2018-09-14 12:45:19', '2018-09-14 12:45:19', NULL),
(594, 1536928881, 55, 1, 20.00, 10.00, 3.00, 0.60, 0.00, 0.00, 0.00, 20.00, 10.00, 1, 1, 0, '2018-09-14 12:45:19', '2018-09-14 12:45:19', NULL),
(595, 1536928881, 46, 1, 50.00, 20.00, 3.00, 1.50, 0.00, 0.00, 0.00, 50.00, 20.00, 1, 1, 0, '2018-09-14 12:45:19', '2018-09-14 12:45:19', NULL),
(596, 1536928881, 58, 1, 20.00, 10.00, 3.00, 0.60, 0.00, 0.00, 0.00, 20.00, 10.00, 1, 1, 0, '2018-09-14 12:47:30', '2018-09-14 12:47:30', NULL),
(597, 1536928881, 57, 1, 20.00, 10.00, 3.00, 0.60, 0.00, 0.00, 0.00, 20.00, 10.00, 1, 1, 0, '2018-09-14 12:47:30', '2018-09-14 12:47:30', NULL),
(598, 1536928881, 56, 1, 20.00, 10.00, 3.00, 0.60, 0.00, 0.00, 0.00, 20.00, 10.00, 1, 1, 0, '2018-09-14 12:47:30', '2018-09-14 12:47:30', NULL),
(599, 1536928881, 55, 1, 20.00, 10.00, 3.00, 0.60, 0.00, 0.00, 0.00, 20.00, 10.00, 1, 1, 0, '2018-09-14 12:47:31', '2018-09-14 12:47:31', NULL),
(600, 1536928881, 46, 1, 50.00, 20.00, 3.00, 1.50, 0.00, 0.00, 0.00, 50.00, 20.00, 1, 1, 0, '2018-09-14 12:47:31', '2018-09-14 12:47:31', NULL),
(601, 1536928881, 58, 1, 20.00, 10.00, 3.00, 0.60, 0.00, 0.00, 0.00, 20.00, 10.00, 1, 1, 0, '2018-09-14 13:00:54', '2018-09-14 13:00:54', NULL),
(602, 1536928881, 57, 1, 20.00, 10.00, 3.00, 0.60, 0.00, 0.00, 0.00, 20.00, 10.00, 1, 1, 0, '2018-09-14 13:00:54', '2018-09-14 13:00:54', NULL),
(603, 1536928881, 56, 1, 20.00, 10.00, 3.00, 0.60, 0.00, 0.00, 0.00, 20.00, 10.00, 1, 1, 0, '2018-09-14 13:00:55', '2018-09-14 13:00:55', NULL),
(604, 1536928881, 55, 1, 20.00, 10.00, 3.00, 0.60, 0.00, 0.00, 0.00, 20.00, 10.00, 1, 1, 0, '2018-09-14 13:00:55', '2018-09-14 13:00:55', NULL),
(605, 1536928881, 46, 1, 50.00, 20.00, 3.00, 1.50, 0.00, 0.00, 0.00, 50.00, 20.00, 1, 1, 0, '2018-09-14 13:00:55', '2018-09-14 13:00:55', NULL),
(606, 1536928881, 58, 1, 20.00, 10.00, 3.00, 0.60, 0.00, 0.00, 0.00, 20.00, 10.00, 1, 1, 0, '2018-09-14 13:02:26', '2018-09-14 13:02:26', NULL),
(607, 1536928881, 57, 1, 20.00, 10.00, 3.00, 0.60, 0.00, 0.00, 0.00, 20.00, 10.00, 1, 1, 0, '2018-09-14 13:02:26', '2018-09-14 13:02:26', NULL),
(608, 1536928881, 56, 1, 20.00, 10.00, 3.00, 0.60, 0.00, 0.00, 0.00, 20.00, 10.00, 1, 1, 0, '2018-09-14 13:02:26', '2018-09-14 13:02:26', NULL),
(609, 1536928881, 55, 1, 20.00, 10.00, 3.00, 0.60, 0.00, 0.00, 0.00, 20.00, 10.00, 1, 1, 0, '2018-09-14 13:02:26', '2018-09-14 13:02:26', NULL),
(610, 1536928881, 46, 1, 50.00, 20.00, 3.00, 1.50, 0.00, 0.00, 0.00, 50.00, 20.00, 1, 1, 0, '2018-09-14 13:02:26', '2018-09-14 13:02:26', NULL),
(611, 1536951799, 57, 1, 20.00, 10.00, 3.00, 0.60, 0.00, 0.00, 0.00, 20.00, 10.00, 1, 1, 0, '2018-09-14 13:14:09', '2018-09-14 13:14:09', NULL),
(612, 1536951799, 56, 1, 20.00, 10.00, 3.00, 0.60, 0.00, 0.00, 0.00, 20.00, 10.00, 1, 1, 0, '2018-09-14 13:14:09', '2018-09-14 13:14:09', NULL),
(613, 1536951799, 55, 1, 20.00, 10.00, 3.00, 0.60, 0.00, 0.00, 0.00, 20.00, 10.00, 1, 1, 0, '2018-09-14 13:14:09', '2018-09-14 13:14:09', NULL),
(614, 1536951799, 57, 1, 20.00, 10.00, 3.00, 0.60, 0.00, 0.00, 0.00, 20.00, 10.00, 1, 1, 0, '2018-09-14 13:24:33', '2018-09-14 13:24:33', NULL),
(615, 1536951799, 56, 1, 20.00, 10.00, 3.00, 0.60, 0.00, 0.00, 0.00, 20.00, 10.00, 1, 1, 0, '2018-09-14 13:24:34', '2018-09-14 13:24:34', NULL),
(616, 1536951799, 55, 1, 20.00, 10.00, 3.00, 0.60, 0.00, 0.00, 0.00, 20.00, 10.00, 1, 1, 0, '2018-09-14 13:24:34', '2018-09-14 13:24:34', NULL),
(617, 1536953075, 58, 1, 20.00, 10.00, 3.00, 0.60, 0.00, 0.00, 0.00, 20.00, 10.00, 1, 1, 0, '2018-09-14 13:24:45', '2018-09-14 13:24:45', NULL),
(618, 1536953075, 57, 1, 20.00, 10.00, 3.00, 0.60, 0.00, 0.00, 0.00, 20.00, 10.00, 1, 1, 0, '2018-09-14 13:24:45', '2018-09-14 13:24:45', NULL),
(619, 1536953075, 56, 1, 20.00, 10.00, 3.00, 0.60, 0.00, 0.00, 0.00, 20.00, 10.00, 1, 1, 0, '2018-09-14 13:24:45', '2018-09-14 13:24:45', NULL),
(620, 1536953075, 55, 1, 20.00, 10.00, 3.00, 0.60, 0.00, 0.00, 0.00, 20.00, 10.00, 1, 1, 0, '2018-09-14 13:24:46', '2018-09-14 13:24:46', NULL),
(621, 1536953075, 58, 1, 20.00, 10.00, 3.00, 0.60, 0.00, 0.00, 0.00, 20.00, 10.00, 1, 1, 0, '2018-09-14 13:24:53', '2018-09-14 13:24:53', NULL),
(622, 1536953075, 57, 1, 20.00, 10.00, 3.00, 0.60, 0.00, 0.00, 0.00, 20.00, 10.00, 1, 1, 0, '2018-09-14 13:24:53', '2018-09-14 13:24:53', NULL),
(623, 1536953075, 56, 1, 20.00, 10.00, 3.00, 0.60, 0.00, 0.00, 0.00, 20.00, 10.00, 1, 1, 0, '2018-09-14 13:24:53', '2018-09-14 13:24:53', NULL),
(624, 1536953075, 55, 1, 20.00, 10.00, 3.00, 0.60, 0.00, 0.00, 0.00, 20.00, 10.00, 1, 1, 0, '2018-09-14 13:24:53', '2018-09-14 13:24:53', NULL),
(625, 1536953075, 58, 1, 20.00, 10.00, 3.00, 0.60, 0.00, 0.00, 0.00, 20.00, 10.00, 1, 1, 0, '2018-09-14 13:25:00', '2018-09-14 13:25:00', NULL),
(626, 1536953075, 57, 1, 20.00, 10.00, 3.00, 0.60, 0.00, 0.00, 0.00, 20.00, 10.00, 1, 1, 0, '2018-09-14 13:25:00', '2018-09-14 13:25:00', NULL),
(627, 1536953075, 56, 1, 20.00, 10.00, 3.00, 0.60, 0.00, 0.00, 0.00, 20.00, 10.00, 1, 1, 0, '2018-09-14 13:25:01', '2018-09-14 13:25:01', NULL),
(628, 1536953075, 55, 1, 20.00, 10.00, 3.00, 0.60, 0.00, 0.00, 0.00, 20.00, 10.00, 1, 1, 0, '2018-09-14 13:25:01', '2018-09-14 13:25:01', NULL),
(629, 1536953075, 58, 1, 20.00, 10.00, 3.00, 0.60, 0.00, 0.00, 0.00, 20.00, 10.00, 1, 1, 0, '2018-09-14 13:28:17', '2018-09-14 13:28:17', NULL),
(630, 1536953075, 57, 1, 20.00, 10.00, 3.00, 0.60, 0.00, 0.00, 0.00, 20.00, 10.00, 1, 1, 0, '2018-09-14 13:28:17', '2018-09-14 13:28:17', NULL),
(631, 1536953075, 56, 1, 20.00, 10.00, 3.00, 0.60, 0.00, 0.00, 0.00, 20.00, 10.00, 1, 1, 0, '2018-09-14 13:28:17', '2018-09-14 13:28:17', NULL),
(632, 1536953075, 55, 1, 20.00, 10.00, 3.00, 0.60, 0.00, 0.00, 0.00, 20.00, 10.00, 1, 1, 0, '2018-09-14 13:28:17', '2018-09-14 13:28:17', NULL),
(633, 1536953075, 58, 1, 20.00, 10.00, 3.00, 0.60, 0.00, 0.00, 0.00, 20.00, 10.00, 1, 1, 0, '2018-09-14 13:29:37', '2018-09-14 13:29:37', NULL),
(634, 1536953075, 57, 1, 20.00, 10.00, 3.00, 0.60, 0.00, 0.00, 0.00, 20.00, 10.00, 1, 1, 0, '2018-09-14 13:29:37', '2018-09-14 13:29:37', NULL),
(635, 1536953075, 56, 1, 20.00, 10.00, 3.00, 0.60, 0.00, 0.00, 0.00, 20.00, 10.00, 1, 1, 0, '2018-09-14 13:29:37', '2018-09-14 13:29:37', NULL),
(636, 1536953075, 55, 1, 20.00, 10.00, 3.00, 0.60, 0.00, 0.00, 0.00, 20.00, 10.00, 1, 1, 0, '2018-09-14 13:29:37', '2018-09-14 13:29:37', NULL),
(637, 1536953075, 58, 1, 20.00, 10.00, 3.00, 0.60, 0.00, 0.00, 0.00, 20.00, 10.00, 1, 1, 0, '2018-09-14 13:32:09', '2018-09-14 13:32:09', NULL),
(638, 1536953075, 57, 1, 20.00, 10.00, 3.00, 0.60, 0.00, 0.00, 0.00, 20.00, 10.00, 1, 1, 0, '2018-09-14 13:32:09', '2018-09-14 13:32:09', NULL),
(639, 1536953075, 56, 1, 20.00, 10.00, 3.00, 0.60, 0.00, 0.00, 0.00, 20.00, 10.00, 1, 1, 0, '2018-09-14 13:32:09', '2018-09-14 13:32:09', NULL),
(640, 1536953075, 55, 1, 20.00, 10.00, 3.00, 0.60, 0.00, 0.00, 0.00, 20.00, 10.00, 1, 1, 0, '2018-09-14 13:32:09', '2018-09-14 13:32:09', NULL),
(641, 1536953075, 58, 1, 20.00, 10.00, 3.00, 0.60, 0.00, 0.00, 0.00, 20.00, 10.00, 1, 1, 0, '2018-09-14 13:33:20', '2018-09-14 13:33:20', NULL),
(642, 1536953075, 57, 1, 20.00, 10.00, 3.00, 0.60, 0.00, 0.00, 0.00, 20.00, 10.00, 1, 1, 0, '2018-09-14 13:33:20', '2018-09-14 13:33:20', NULL),
(643, 1536953075, 56, 1, 20.00, 10.00, 3.00, 0.60, 0.00, 0.00, 0.00, 20.00, 10.00, 1, 1, 0, '2018-09-14 13:33:20', '2018-09-14 13:33:20', NULL),
(644, 1536953075, 55, 1, 20.00, 10.00, 3.00, 0.60, 0.00, 0.00, 0.00, 20.00, 10.00, 1, 1, 0, '2018-09-14 13:33:20', '2018-09-14 13:33:20', NULL),
(645, 1536953075, 58, 1, 20.00, 10.00, 3.00, 0.60, 0.00, 0.00, 0.00, 20.00, 10.00, 1, 1, 0, '2018-09-14 13:34:37', '2018-09-14 13:34:37', NULL),
(646, 1536953075, 57, 1, 20.00, 10.00, 3.00, 0.60, 0.00, 0.00, 0.00, 20.00, 10.00, 1, 1, 0, '2018-09-14 13:34:37', '2018-09-14 13:34:37', NULL),
(647, 1536953075, 56, 1, 20.00, 10.00, 3.00, 0.60, 0.00, 0.00, 0.00, 20.00, 10.00, 1, 1, 0, '2018-09-14 13:34:37', '2018-09-14 13:34:37', NULL),
(648, 1536953075, 55, 1, 20.00, 10.00, 3.00, 0.60, 0.00, 0.00, 0.00, 20.00, 10.00, 1, 1, 0, '2018-09-14 13:34:37', '2018-09-14 13:34:37', NULL),
(649, 1536953075, 58, 1, 20.00, 10.00, 3.00, 0.60, 0.00, 0.00, 0.00, 20.00, 10.00, 1, 1, 0, '2018-09-14 13:35:36', '2018-09-14 13:35:36', NULL),
(650, 1536953075, 57, 1, 20.00, 10.00, 3.00, 0.60, 0.00, 0.00, 0.00, 20.00, 10.00, 1, 1, 0, '2018-09-14 13:35:36', '2018-09-14 13:35:36', NULL),
(651, 1536953075, 56, 1, 20.00, 10.00, 3.00, 0.60, 0.00, 0.00, 0.00, 20.00, 10.00, 1, 1, 0, '2018-09-14 13:35:36', '2018-09-14 13:35:36', NULL),
(652, 1536953075, 55, 1, 20.00, 10.00, 3.00, 0.60, 0.00, 0.00, 0.00, 20.00, 10.00, 1, 1, 0, '2018-09-14 13:35:36', '2018-09-14 13:35:36', NULL),
(653, 1536953075, 58, 1, 20.00, 10.00, 3.00, 0.60, 0.00, 0.00, 0.00, 20.00, 10.00, 1, 1, 0, '2018-09-14 13:36:27', '2018-09-14 13:36:27', NULL),
(654, 1536953075, 57, 1, 20.00, 10.00, 3.00, 0.60, 0.00, 0.00, 0.00, 20.00, 10.00, 1, 1, 0, '2018-09-14 13:36:27', '2018-09-14 13:36:27', NULL),
(655, 1536953075, 56, 1, 20.00, 10.00, 3.00, 0.60, 0.00, 0.00, 0.00, 20.00, 10.00, 1, 1, 0, '2018-09-14 13:36:27', '2018-09-14 13:36:27', NULL),
(656, 1536953075, 55, 1, 20.00, 10.00, 3.00, 0.60, 0.00, 0.00, 0.00, 20.00, 10.00, 1, 1, 0, '2018-09-14 13:36:27', '2018-09-14 13:36:27', NULL),
(657, 1536953075, 58, 1, 20.00, 10.00, 3.00, 0.60, 0.00, 0.00, 0.00, 20.00, 10.00, 1, 1, 0, '2018-09-14 13:37:33', '2018-09-14 13:37:33', NULL),
(658, 1536953075, 57, 1, 20.00, 10.00, 3.00, 0.60, 0.00, 0.00, 0.00, 20.00, 10.00, 1, 1, 0, '2018-09-14 13:37:33', '2018-09-14 13:37:33', NULL),
(659, 1536953075, 56, 1, 20.00, 10.00, 3.00, 0.60, 0.00, 0.00, 0.00, 20.00, 10.00, 1, 1, 0, '2018-09-14 13:37:33', '2018-09-14 13:37:33', NULL),
(660, 1536953075, 55, 1, 20.00, 10.00, 3.00, 0.60, 0.00, 0.00, 0.00, 20.00, 10.00, 1, 1, 0, '2018-09-14 13:37:33', '2018-09-14 13:37:33', NULL),
(661, 1536953075, 58, 1, 20.00, 10.00, 3.00, 0.60, 0.00, 0.00, 0.00, 20.00, 10.00, 1, 1, 0, '2018-09-14 13:39:25', '2018-09-14 13:39:25', NULL),
(662, 1536953075, 57, 1, 20.00, 10.00, 3.00, 0.60, 0.00, 0.00, 0.00, 20.00, 10.00, 1, 1, 0, '2018-09-14 13:39:25', '2018-09-14 13:39:25', NULL),
(663, 1536953075, 56, 1, 20.00, 10.00, 3.00, 0.60, 0.00, 0.00, 0.00, 20.00, 10.00, 1, 1, 0, '2018-09-14 13:39:26', '2018-09-14 13:39:26', NULL),
(664, 1536953075, 55, 1, 20.00, 10.00, 3.00, 0.60, 0.00, 0.00, 0.00, 20.00, 10.00, 1, 1, 0, '2018-09-14 13:39:26', '2018-09-14 13:39:26', NULL),
(665, 1536953075, 58, 1, 20.00, 10.00, 3.00, 0.60, 0.00, 0.00, 0.00, 20.00, 10.00, 1, 1, 0, '2018-09-14 13:40:19', '2018-09-14 13:40:19', NULL),
(666, 1536953075, 57, 1, 20.00, 10.00, 3.00, 0.60, 0.00, 0.00, 0.00, 20.00, 10.00, 1, 1, 0, '2018-09-14 13:40:19', '2018-09-14 13:40:19', NULL),
(667, 1536953075, 56, 1, 20.00, 10.00, 3.00, 0.60, 0.00, 0.00, 0.00, 20.00, 10.00, 1, 1, 0, '2018-09-14 13:40:19', '2018-09-14 13:40:19', NULL),
(668, 1536953075, 55, 1, 20.00, 10.00, 3.00, 0.60, 0.00, 0.00, 0.00, 20.00, 10.00, 1, 1, 0, '2018-09-14 13:40:19', '2018-09-14 13:40:19', NULL),
(669, 1536953075, 58, 1, 20.00, 10.00, 3.00, 0.60, 0.00, 0.00, 0.00, 20.00, 10.00, 1, 1, 0, '2018-09-14 13:42:28', '2018-09-14 13:42:28', NULL),
(670, 1536953075, 57, 1, 20.00, 10.00, 3.00, 0.60, 0.00, 0.00, 0.00, 20.00, 10.00, 1, 1, 0, '2018-09-14 13:42:28', '2018-09-14 13:42:28', NULL),
(671, 1536953075, 56, 1, 20.00, 10.00, 3.00, 0.60, 0.00, 0.00, 0.00, 20.00, 10.00, 1, 1, 0, '2018-09-14 13:42:28', '2018-09-14 13:42:28', NULL),
(672, 1536953075, 55, 1, 20.00, 10.00, 3.00, 0.60, 0.00, 0.00, 0.00, 20.00, 10.00, 1, 1, 0, '2018-09-14 13:42:28', '2018-09-14 13:42:28', NULL),
(673, 1536953075, 58, 1, 20.00, 10.00, 3.00, 0.60, 0.00, 0.00, 0.00, 20.00, 10.00, 1, 1, 0, '2018-09-14 13:43:21', '2018-09-14 13:43:21', NULL),
(674, 1536953075, 57, 1, 20.00, 10.00, 3.00, 0.60, 0.00, 0.00, 0.00, 20.00, 10.00, 1, 1, 0, '2018-09-14 13:43:21', '2018-09-14 13:43:21', NULL),
(675, 1536953075, 56, 1, 20.00, 10.00, 3.00, 0.60, 0.00, 0.00, 0.00, 20.00, 10.00, 1, 1, 0, '2018-09-14 13:43:21', '2018-09-14 13:43:21', NULL),
(676, 1536953075, 55, 1, 20.00, 10.00, 3.00, 0.60, 0.00, 0.00, 0.00, 20.00, 10.00, 1, 1, 0, '2018-09-14 13:43:21', '2018-09-14 13:43:21', NULL),
(677, 1536954202, 58, 1, 20.00, 10.00, 3.00, 0.60, 0.00, 0.00, 0.00, 20.00, 10.00, 1, 1, 0, '2018-09-14 13:43:44', '2018-09-14 13:43:44', NULL),
(678, 1536954202, 57, 1, 20.00, 10.00, 3.00, 0.60, 0.00, 0.00, 0.00, 20.00, 10.00, 1, 1, 0, '2018-09-14 13:43:44', '2018-09-14 13:43:44', NULL),
(679, 1536954202, 58, 1, 20.00, 10.00, 3.00, 0.60, 0.00, 0.00, 0.00, 20.00, 10.00, 1, 1, 0, '2018-09-14 13:44:27', '2018-09-14 13:44:27', NULL),
(680, 1536954202, 57, 1, 20.00, 10.00, 3.00, 0.60, 0.00, 0.00, 0.00, 20.00, 10.00, 1, 1, 0, '2018-09-14 13:44:27', '2018-09-14 13:44:27', NULL),
(681, 1536954202, 58, 1, 20.00, 10.00, 3.00, 0.60, 0.00, 0.00, 0.00, 20.00, 10.00, 1, 1, 0, '2018-09-14 13:45:20', '2018-09-14 13:45:20', NULL),
(682, 1536954202, 57, 1, 20.00, 10.00, 3.00, 0.60, 0.00, 0.00, 0.00, 20.00, 10.00, 1, 1, 0, '2018-09-14 13:45:20', '2018-09-14 13:45:20', NULL),
(683, 1536954321, 57, 1, 20.00, 10.00, 3.00, 0.60, 0.00, 0.00, 0.00, 20.00, 10.00, 1, 1, 0, '2018-09-14 13:46:03', '2018-09-14 13:46:03', NULL),
(684, 1536954321, 57, 1, 20.00, 10.00, 3.00, 0.60, 0.00, 0.00, 0.00, 20.00, 10.00, 1, 1, 0, '2018-09-14 13:51:23', '2018-09-14 13:51:23', NULL),
(685, 1536954684, 58, 1, 20.00, 10.00, 3.00, 0.60, 0.00, 0.00, 0.00, 20.00, 10.00, 1, 1, 0, '2018-09-14 13:54:05', '2018-09-14 13:54:05', NULL),
(686, 1536954684, 57, 1, 20.00, 10.00, 3.00, 0.60, 0.00, 0.00, 0.00, 20.00, 10.00, 1, 1, 0, '2018-09-14 13:54:05', '2018-09-14 13:54:05', NULL),
(687, 1536954684, 56, 1, 20.00, 10.00, 3.00, 0.60, 0.00, 0.00, 0.00, 20.00, 10.00, 1, 1, 0, '2018-09-14 13:54:05', '2018-09-14 13:54:05', NULL),
(688, 1536954684, 58, 1, 20.00, 10.00, 3.00, 0.60, 0.00, 0.00, 0.00, 20.00, 10.00, 1, 1, 0, '2018-09-14 13:54:44', '2018-09-14 13:54:44', NULL),
(689, 1536954684, 57, 1, 20.00, 10.00, 3.00, 0.60, 0.00, 0.00, 0.00, 20.00, 10.00, 1, 1, 0, '2018-09-14 13:54:44', '2018-09-14 13:54:44', NULL);
INSERT INTO `lsp_invoice_products` (`id`, `invoice_id`, `product_id`, `quantity`, `price`, `cost`, `tax_percent`, `tax_amount`, `discount_percent`, `discount_amount`, `cupon_amount`, `total_price`, `total_cost`, `store_id`, `created_by`, `updated_by`, `created_at`, `updated_at`, `deleted_at`) VALUES
(690, 1536954684, 56, 1, 20.00, 10.00, 3.00, 0.60, 0.00, 0.00, 0.00, 20.00, 10.00, 1, 1, 0, '2018-09-14 13:54:44', '2018-09-14 13:54:44', NULL),
(691, 1536959333, 58, 1, 20.00, 10.00, 3.00, 0.60, 0.00, 0.00, 0.00, 20.00, 10.00, 1, 1, 0, '2018-09-14 15:09:25', '2018-09-18 15:31:12', '2018-09-18 15:31:12'),
(692, 1536959333, 57, 1, 20.00, 10.00, 3.00, 0.60, 0.00, 0.00, 0.00, 20.00, 10.00, 1, 1, 0, '2018-09-14 15:09:25', '2018-09-18 15:31:12', '2018-09-18 15:31:12'),
(693, 1536959333, 56, 1, 20.00, 10.00, 3.00, 0.60, 0.00, 0.00, 0.00, 20.00, 10.00, 1, 1, 0, '2018-09-14 15:09:25', '2018-09-18 15:31:12', '2018-09-18 15:31:12'),
(694, 1536959333, 58, 1, 20.00, 10.00, 0.00, 0.00, 0.00, 0.00, 0.00, 20.00, 10.00, 1, 1, 1, '2018-09-18 15:31:12', '2018-09-18 15:31:12', NULL),
(695, 1536959333, 57, 1, 20.00, 10.00, 0.00, 0.00, 0.00, 0.00, 0.00, 20.00, 10.00, 1, 1, 1, '2018-09-18 15:31:12', '2018-09-18 15:31:12', NULL),
(696, 1536959333, 56, 1, 20.00, 10.00, 0.00, 0.00, 0.00, 0.00, 0.00, 20.00, 10.00, 1, 1, 1, '2018-09-18 15:31:12', '2018-09-18 15:31:12', NULL),
(697, 1537908295, 45, 1, 10.00, 20.00, 0.00, 0.00, 0.00, 0.00, 0.00, 10.00, 20.00, 1, 1, 0, '2018-09-25 14:44:55', '2018-09-25 14:44:55', NULL),
(698, 1539801642, 63, 2, 20.00, 1.00, 3.00, 1.20, 0.00, 0.00, 0.00, 40.00, 2.00, 1, 1, 0, '2018-10-17 13:53:26', '2018-10-17 13:53:26', NULL),
(699, 1539801642, 82, 1, 10.00, 8.00, 3.00, 0.30, 0.00, 0.00, 0.00, 10.00, 8.00, 1, 1, 0, '2018-10-17 13:53:26', '2018-10-17 13:53:26', NULL),
(700, 1539801642, 84, 1, 18.00, 12.00, 3.00, 0.54, 0.00, 0.00, 0.00, 18.00, 12.00, 1, 1, 0, '2018-10-17 13:53:26', '2018-10-17 13:53:26', NULL),
(701, 1539900283, 63, 2, 1.00, 1.00, 3.00, 0.06, 0.00, 0.00, 0.00, 2.00, 2.00, 1, 1, 0, '2018-10-18 16:11:59', '2018-10-18 16:11:59', NULL),
(702, 1539962528, 63, 5, 2.00, 1.00, 3.00, 0.30, 0.00, 0.00, 0.00, 10.00, 5.00, 1, 1, 0, '2018-10-19 15:23:30', '2018-11-02 15:51:37', '2018-11-02 15:51:37'),
(703, 1539962528, 63, 4, 3.00, 1.00, 0.00, 0.00, 0.00, 0.00, 0.00, 12.00, 4.00, 1, 1, 1, '2018-11-02 15:51:37', '2018-11-02 15:51:55', '2018-11-02 15:51:55'),
(704, 1539962528, 63, 4, 3.00, 1.50, 0.00, 0.00, 0.00, 0.00, 0.00, 12.00, 6.00, 1, 1, 1, '2018-11-02 15:51:55', '2018-11-02 15:51:55', NULL),
(705, 1545896183, 103, 1, 10.00, 10.00, 3.00, 0.30, 0.00, 0.00, 0.00, 10.00, 10.00, 1, 1, 0, '2018-12-27 02:04:55', '2018-12-27 02:04:55', NULL),
(706, 1545905398, 109, 1, 33.00, 22.00, 3.00, 0.99, 0.00, 0.00, 0.00, 33.00, 22.00, 1, 1, 0, '2018-12-27 05:25:30', '2018-12-27 05:25:30', NULL),
(707, 1545909932, 93, 1, 10.00, 15.00, 3.00, 0.30, 0.00, 0.00, 0.00, 10.00, 15.00, 1, 1, 0, '2018-12-27 05:47:57', '2018-12-27 05:47:57', NULL),
(708, 1545909932, 110, 1, 20.00, 10.00, 3.00, 0.60, 0.00, 0.00, 0.00, 20.00, 10.00, 1, 1, 0, '2018-12-27 05:47:57', '2018-12-27 05:47:57', NULL),
(709, 1545941247, 111, 1, 20.00, 12.00, 3.00, 0.60, 0.00, 0.00, 0.00, 20.00, 12.00, 1, 1, 0, '2018-12-27 14:55:36', '2018-12-27 14:55:36', NULL),
(710, 1545944137, 93, 1, 10.00, 15.00, 3.00, 0.30, 0.00, 0.00, 0.00, 10.00, 15.00, 1, 1, 0, '2018-12-27 14:56:27', '2018-12-27 14:56:27', NULL),
(711, 1546159770, 63, 2, 1.00, 1.00, 1.60, 0.03, 0.00, 0.00, 0.00, 2.00, 2.00, 1, 1, 0, '2018-12-30 05:39:01', '2018-12-30 05:39:01', NULL),
(712, 1546169942, 93, 1, 10.00, 15.00, 1.60, 0.16, 0.00, 0.00, 0.00, 10.00, 15.00, 1, 1, 0, '2018-12-30 05:41:05', '2018-12-30 05:41:05', NULL),
(713, 1546334482, 63, 1, 1.00, 1.00, 1.60, 0.02, 0.00, 0.00, 0.00, 1.00, 1.00, 1, 1, 0, '2019-01-01 03:32:14', '2019-01-01 03:32:55', '2019-01-01 03:32:55'),
(714, 1546334482, 93, 1, 8.00, 15.00, 1.60, 0.13, 0.00, 0.00, 0.00, 8.00, 15.00, 1, 1, 0, '2019-01-01 03:32:14', '2019-01-01 03:32:55', '2019-01-01 03:32:55'),
(715, 1546334482, 63, 1, 1.00, 1.00, 0.00, 0.00, 0.00, 0.00, 0.00, 1.00, 1.00, 1, 1, 1, '2019-01-01 03:32:55', '2019-01-01 03:32:55', NULL),
(716, 1546462247, 93, 1, 20.00, 15.00, 3.00, 0.60, 0.00, 0.00, 0.00, 20.00, 15.00, 1, 1, 0, '2019-01-02 14:51:59', '2019-01-02 14:51:59', NULL),
(717, 1546462321, 93, 1, 20.00, 15.00, 3.00, 0.60, 0.00, 0.00, 0.00, 20.00, 15.00, 1, 1, 0, '2019-01-02 14:56:36', '2019-01-02 14:56:36', NULL),
(718, 1546462596, 93, 1, 20.00, 15.00, 3.00, 0.60, 0.00, 0.00, 0.00, 20.00, 15.00, 1, 1, 0, '2019-01-02 14:58:16', '2019-01-02 14:58:16', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `lsp_invoice_profits`
--

CREATE TABLE `lsp_invoice_profits` (
  `id` int(10) UNSIGNED NOT NULL,
  `invoice_id` int(11) NOT NULL,
  `invoice_datetime` datetime NOT NULL,
  `customer_id` int(11) NOT NULL,
  `customer_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `invoice_total_amount` double(8,2) NOT NULL,
  `invoice_cost_total_amount` double(8,2) NOT NULL,
  `profit` double(8,2) NOT NULL,
  `store_id` int(11) NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `lsp_in_store_repairs`
--

CREATE TABLE `lsp_in_store_repairs` (
  `id` int(10) UNSIGNED NOT NULL,
  `customer_id` int(11) DEFAULT '0',
  `customer_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `device_id` int(11) DEFAULT '0',
  `device_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `model_id` int(11) DEFAULT '0',
  `model_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `problem_id` int(11) DEFAULT '0',
  `problem_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `invoice_id` int(11) DEFAULT '0',
  `product_id` int(11) DEFAULT '0',
  `product_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `our_cost` float(10,2) NOT NULL DEFAULT '0.00',
  `price` float(10,2) DEFAULT '0.00',
  `repair_price` float(10,2) DEFAULT '0.00',
  `override_repair_price` float(10,2) DEFAULT '0.00',
  `password` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `imei` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tested_before_by` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tested_after_by` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tech_notes` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `how_did_you_hear_about_us` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `start_time` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `end_time` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `salvage_part` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `repair_json` text COLLATE utf8mb4_unicode_ci,
  `repair_status` enum('Pending','Complete') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Pending',
  `lcd_status` enum('Good','Bad') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Good',
  `diagnostic` enum('Yes','No') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'No',
  `warranty_length` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '90',
  `payment_status` enum('Pending','Paid') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Pending',
  `store_id` int(11) NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `lsp_in_store_repairs`
--

INSERT INTO `lsp_in_store_repairs` (`id`, `customer_id`, `customer_name`, `device_id`, `device_name`, `model_id`, `model_name`, `problem_id`, `problem_name`, `invoice_id`, `product_id`, `product_name`, `our_cost`, `price`, `repair_price`, `override_repair_price`, `password`, `imei`, `tested_before_by`, `tested_after_by`, `tech_notes`, `how_did_you_hear_about_us`, `start_time`, `end_time`, `salvage_part`, `repair_json`, `repair_status`, `lcd_status`, `diagnostic`, `warranty_length`, `payment_status`, `store_id`, `created_by`, `updated_by`, `created_at`, `updated_at`, `deleted_at`) VALUES
(2, 27, 'CHEF’S SPECIAL DISHES', 1, 'Iphone', 1, 'Iphone X', 1, 'Speaker', 1545944137, 93, 'Iphone, Iphone X - Speaker', 0.00, 10.00, 10.00, 0.00, 'dfsdfdsf', 'hhhh', 'sdfds', 'jjjj', 'sdfsdfsd', 'jjjj', 'dfsdfsdf', 'jjj', 'on', '{"repair_everbeenwet":"on","repair_isworkapprovedtoproceed":"on","repair_iphoneiphonexspeaker":"on","repair_cash":"on","repair_cashs1":"on","repair_cashs2":"on"}', 'Pending', 'Good', 'No', '90', 'Pending', 1, 1, 0, '2018-12-27 14:56:27', '2019-01-01 14:45:13', '2019-01-01 14:45:13'),
(3, 28, 'MD MAHAMUDUR Zaman Bhuyan', 1, 'Iphone', 1, 'Iphone X', 1, 'Speaker', 1546169942, 93, 'Iphone, Iphone X - Speaker', 15.00, 10.00, 10.00, 0.00, 'dfsdfdsf', 'sdfsdfsd', 'sdfds', 'dfsdfsdf', 'sdfsdfsd', 'sdfsdf', 'dfsdfsdf', 'sdfsdfsd', 'on', '{"repair_everbeenwet":"on","repair_isworkapprovedtoproceed":"on","repair_iphoneiphonexspeaker":"on"}', 'Pending', 'Good', 'No', '90', 'Paid', 1, 1, 0, '2018-12-30 05:41:05', '2018-12-30 05:41:05', NULL),
(4, 29, 'MD MAHAMUDUR Zaman Bhuyan', 1, 'Iphone', 1, 'Iphone X', 1, 'Speaker', 1546334482, 93, 'Iphone, Iphone X - Speaker', 15.00, 10.00, 10.00, 0.00, 'dfsdfdsf', 'xzXzX', 'sdfds', 'dfsdfsdf', 'sdfsdfsd', 'sdfsdf', 'dfsdfsdf', 'sdfsdfsd', 'on', '[]', 'Pending', 'Good', 'No', '90', 'Paid', 1, 1, 0, '2019-01-01 03:32:14', '2019-01-01 03:32:14', NULL),
(5, 56, 'MD MAHAMUDUR Zaman Bhuyan', 1, 'Iphone', 1, 'Iphone X', 1, 'Speaker', 0, 93, 'Iphone, Iphone X - Speaker', 15.00, 10.00, 10.00, 0.00, 'dfsdfdsf', 'sdfsdfsd', 'sdfds', 'dfsdfsdf', 'sdfsdfsd', 'sdfsdf', 'dfsdfsdf', 'sdfsdfsd', 'on', '{"_token":"IOcAPpL40R09HZx5WiHDAE4lnyoEwEpKYn6GIgLr","repair_everbeenwet":"on","repair_isworkapprovedtoproceed":"on","repair_iphoneiphonexspeaker":"on","repair_cash":"on","repair_cashs2":"on"}', 'Pending', 'Good', 'No', '90', 'Pending', 1, 1, 0, '2019-01-01 05:24:10', '2019-01-01 05:24:10', NULL),
(6, 27, 'Md Mahamudur Zaman', 1, 'Iphone', 1, 'Iphone X', 1, 'Speaker', 1546462596, 93, 'Iphone, Iphone X - Speaker', 15.00, 20.00, 10.00, 20.00, 'asd123', 'sdfsdfsd', 'gg', 'zXzX', 'sdfsdfsd', 'sdfsdf', 'dfsdfsdf', 'zXzXzX', 'on', '{"_token":"IOcAPpL40R09HZx5WiHDAE4lnyoEwEpKYn6GIgLr","repairPage":"1","repair_everbeenwet":"on","repair_iphoneiphonexspeaker":"on","repair_cashs1":"on","repair_cashs2":"on"}', 'Complete', 'Bad', 'Yes', '86', 'Paid', 1, 1, 1, '2019-01-01 05:34:15', '2019-01-01 05:34:15', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `lsp_in_store_repair_devices`
--

CREATE TABLE `lsp_in_store_repair_devices` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `used_type` enum('Store','Clone','Master') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Store',
  `store_id` int(11) NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `lsp_in_store_repair_devices`
--

INSERT INTO `lsp_in_store_repair_devices` (`id`, `name`, `used_type`, `store_id`, `created_by`, `updated_by`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Iphone', 'Master', 1, 1, 0, '2018-12-07 12:54:51', '2018-12-07 12:54:51', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `lsp_in_store_repair_models`
--

CREATE TABLE `lsp_in_store_repair_models` (
  `id` int(10) UNSIGNED NOT NULL,
  `device_id` int(11) NOT NULL,
  `device_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `used_type` enum('Store','Clone','Master') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Store',
  `store_id` int(11) NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `lsp_in_store_repair_models`
--

INSERT INTO `lsp_in_store_repair_models` (`id`, `device_id`, `device_name`, `name`, `used_type`, `store_id`, `created_by`, `updated_by`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 'Iphone', 'Iphone X', 'Master', 1, 1, 0, '2018-12-07 12:54:51', '2018-12-07 12:54:51', NULL),
(2, 1, 'Iphone', 'Iphone 8S', 'Master', 1, 1, 0, '2018-12-07 12:55:38', '2018-12-07 12:55:38', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `lsp_in_store_repair_prices`
--

CREATE TABLE `lsp_in_store_repair_prices` (
  `id` int(10) UNSIGNED NOT NULL,
  `device_id` int(11) NOT NULL,
  `device_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` int(11) NOT NULL,
  `model_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `problem_id` int(11) NOT NULL,
  `problem_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` float(10,2) DEFAULT NULL,
  `used_type` enum('Store','Clone','Master') COLLATE utf8mb4_unicode_ci DEFAULT 'Store',
  `store_id` int(11) NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `lsp_in_store_repair_prices`
--

INSERT INTO `lsp_in_store_repair_prices` (`id`, `device_id`, `device_name`, `model_id`, `model_name`, `problem_id`, `problem_name`, `price`, `used_type`, `store_id`, `created_by`, `updated_by`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 'Iphone', 1, 'Iphone X', 1, 'Speaker', 10.00, 'Master', 1, 1, 0, '2018-12-07 12:54:51', '2018-12-07 12:54:51', NULL),
(2, 1, 'Iphone', 2, 'Iphone 8S', 2, 'Water Drop', 20.00, 'Master', 1, 1, 0, '2018-12-07 12:55:38', '2018-12-07 12:55:38', NULL),
(3, 1, 'Iphone', 1, 'Iphone X', 2, 'Water Drop', 10.00, 'Master', 1, 1, 0, '2018-12-07 13:00:22', '2018-12-07 13:00:22', NULL),
(4, 1, 'Iphone', 1, 'Iphone X', 3, 'Test', 10.00, 'Master', 1, 1, 0, '2018-12-23 12:16:11', '2018-12-23 12:16:11', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `lsp_in_store_repair_problems`
--

CREATE TABLE `lsp_in_store_repair_problems` (
  `id` int(10) UNSIGNED NOT NULL,
  `device_id` int(11) NOT NULL,
  `device_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` int(11) NOT NULL,
  `model_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `used_type` enum('Store','Clone','Master') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Store',
  `store_id` int(11) NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `lsp_in_store_repair_problems`
--

INSERT INTO `lsp_in_store_repair_problems` (`id`, `device_id`, `device_name`, `model_id`, `model_name`, `name`, `used_type`, `store_id`, `created_by`, `updated_by`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 0, '', 0, '', 'Speaker', 'Master', 1, 1, 0, '2018-12-07 12:54:51', '2018-12-07 12:54:51', NULL),
(2, 0, '', 0, '', 'Water Drop', 'Master', 1, 1, 0, '2018-12-07 12:55:38', '2018-12-07 12:55:38', NULL),
(3, 0, '', 0, '', 'Test', 'Master', 1, 1, 0, '2018-12-23 12:16:11', '2018-12-23 12:16:11', NULL),
(4, 0, '', 0, '', 'Test 2', 'Store', 1, 1, 0, '2018-12-27 04:47:15', '2018-12-27 04:47:15', NULL),
(5, 0, '', 0, '', 'Test 2', 'Store', 1, 1, 0, '2018-12-27 04:47:58', '2018-12-27 04:47:58', NULL),
(6, 0, '', 0, '', 'Test 3', 'Store', 1, 1, 0, '2018-12-30 23:10:41', '2018-12-30 23:10:41', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `lsp_in_store_repair_products`
--

CREATE TABLE `lsp_in_store_repair_products` (
  `id` int(10) UNSIGNED NOT NULL,
  `device_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `device_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` int(11) NOT NULL,
  `model_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `problem_id` int(11) NOT NULL,
  `problem_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `barcode` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` float(10,2) DEFAULT NULL,
  `cost` float(10,2) DEFAULT NULL,
  `quantity` int(11) NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `used_type` enum('Store','Clone','Master') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Store',
  `store_id` int(11) NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `lsp_in_store_repair_products`
--

INSERT INTO `lsp_in_store_repair_products` (`id`, `device_id`, `product_id`, `device_name`, `model_id`, `model_name`, `problem_id`, `problem_name`, `barcode`, `name`, `price`, `cost`, `quantity`, `description`, `used_type`, `store_id`, `created_by`, `updated_by`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 93, 'Iphone', 1, 'Iphone X', 1, 'Speaker', '1544208855', 'Iphone, Iphone X - Speaker', 10.00, 15.00, 1, 'Iphone, Iphone X - Speaker', 'Master', 1, 1, 0, '2018-12-07 12:54:51', '2018-12-07 12:54:51', NULL),
(2, 1, 94, 'Iphone', 2, 'Iphone 8S', 2, 'Water Drop', '1544208892', 'Iphone, Iphone 8S - Water Drop', 20.00, 25.00, 1, 'Iphone, Iphone 8S - Water Drop', 'Master', 1, 1, 0, '2018-12-07 12:55:38', '2018-12-07 12:55:38', NULL),
(3, 1, 95, 'Iphone', 1, 'Iphone X', 2, 'Water Drop', '1544209121', 'Iphone, Iphone X, Water Drop', 10.00, 10.00, 1, 'Iphone, Iphone X, Water Drop', 'Master', 1, 1, 0, '2018-12-07 13:00:22', '2018-12-07 13:00:22', NULL),
(4, 1, 103, 'Iphone', 1, 'Iphone X', 3, 'Test', '1545588952', 'Iphone, Iphone X - Test', 10.00, 10.00, 1, 'Iphone, Iphone X - Test', 'Master', 1, 1, 0, '2018-12-23 12:16:11', '2018-12-23 12:16:11', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `lsp_in_store_tickets`
--

CREATE TABLE `lsp_in_store_tickets` (
  `id` int(10) UNSIGNED NOT NULL,
  `customer_id` int(11) DEFAULT '0',
  `customer_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ticket_id` int(11) DEFAULT '0',
  `device_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `problem_id` int(11) DEFAULT '0',
  `problem_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_status` enum('Pending','Paid') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Pending',
  `ticket_status` enum('Pending','Complete') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Pending',
  `our_cost` float(10,2) DEFAULT '0.00',
  `retail_price` float(10,2) DEFAULT '0.00',
  `invoice_id` int(11) DEFAULT '0',
  `product_id` int(11) DEFAULT '0',
  `product_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type_n_color` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `carrier` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `imei` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `how_did_you_hear_about_us` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `isdropoff` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tested_before_by` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tested_after_by` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tech_notes` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ticket_json` text COLLATE utf8mb4_unicode_ci,
  `diagnostic` enum('Yes','No') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'No',
  `warranty_length` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '90',
  `invoiced` enum('Yes','No') COLLATE utf8mb4_unicode_ci DEFAULT 'No',
  `store_id` int(11) NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `lsp_in_store_tickets`
--

INSERT INTO `lsp_in_store_tickets` (`id`, `customer_id`, `customer_name`, `ticket_id`, `device_type`, `problem_id`, `problem_name`, `payment_status`, `ticket_status`, `our_cost`, `retail_price`, `invoice_id`, `product_id`, `product_name`, `password`, `type_n_color`, `carrier`, `imei`, `how_did_you_hear_about_us`, `isdropoff`, `tested_before_by`, `tested_after_by`, `tech_notes`, `ticket_json`, `diagnostic`, `warranty_length`, `invoiced`, `store_id`, `created_by`, `updated_by`, `created_at`, `updated_at`, `deleted_at`) VALUES
(2, 28, '0', 2147483647, 'test', 1, 'Speaker', 'Pending', 'Pending', 12.00, 20.00, 1545941247, 111, 'test - 1545943388720', 'gghg', 'hhhh', 'gggg', 'cccccc', 'xccc', 'Yes', 'hhhh', 'hhhhh', NULL, '{"ticket_everbeenwet":"on","ticket_isworkapprovedtoproceed":"on","ticket_iphoneiphonexspeaker":"on","ticket_cash":"on","ticket_cashs1":"on","ticket_cashs2":"on"}', 'No', '90', 'No', 1, 1, 0, '2018-12-27 14:55:36', '2018-12-27 14:55:36', NULL),
(3, 28, 'MD MAHAMUDUR Zaman Bhuyan', 1546197458, 'Test 2', 1, 'Speaker', 'Pending', 'Pending', 20.00, 30.00, 0, 113, 'Test 2 - 1546197458', 'zXzX', 'zXzczX', 'zXzXz', 'zXzXzx', 'zXzXz', 'Yes', 'zXzX', 'zXzXz', 'xzXzX', '{"attributes":{},"request":{},"query":{},"server":{},"files":{},"cookies":{},"headers":{}}', 'No', '90', 'No', 1, 1, 0, '2018-12-30 13:17:38', '2018-12-30 13:17:38', NULL),
(4, 28, 'MD MAHAMUDUR Zaman Bhuyan', 1546198876, 'Test 2', 1, 'Speaker', 'Pending', 'Pending', 20.00, 30.00, 0, 138, 'Test 2 - 1546198876', 'zXzX', 'zXzczX', 'zXzXz', 'zXzXzx', 'zXzXz', 'Yes', 'zXzX', 'zXzXz', 'xzXzX', '{"ticket_customer_id":"28","ticket_everbeenwet":"on","ticket_isworkapprovedtoproceed":"on","ticket_iphoneiphonexspeaker":"on","ticket_cash":"on","ticket_cashs1":"on","ticket_cashs2":"on"}', 'No', '90', 'No', 1, 1, 0, '2018-12-30 13:41:16', '2018-12-30 13:41:16', NULL),
(5, 28, 'MD MAHAMUDUR Zaman Bhuyan', 1546198939, 'Test 2', 1, 'Speaker', 'Pending', 'Pending', 20.00, 30.00, 0, 139, 'Test 2 - 1546198939', 'zXzX', 'zXzczX', 'zXzXz', 'zXzXzx', 'zXzXz', 'Yes', 'zXzX', 'zXzXz', 'xzXzX', '{"ticket_everbeenwet":"on","ticket_isworkapprovedtoproceed":"on","ticket_iphoneiphonexspeaker":"on","ticket_cash":"on","ticket_cashs1":"on","ticket_cashs2":"on"}', 'No', '90', 'No', 1, 1, 0, '2018-12-30 13:42:19', '2018-12-30 13:42:19', NULL),
(6, 28, 'MD MAHAMUDUR Zaman Bhuyan', 1546199537, 'Test 2', 1, 'Speaker', 'Pending', 'Complete', 20.00, 30.00, 0, 140, 'Test 2 - 1546199537', 'zXzX', 'zXzczX', 'zXzXz', 'zXzXzx', 'zXzXz', 'No', 'zXzX', 'zXzXz', 'xzXzX', '{"ticket_everbeenwet":"on","ticket_isworkapprovedtoproceed":"on","ticket_iphoneiphonexspeaker":"on","ticket_cash":"on","ticket_cashs1":"on","ticket_cashs2":"on"}', 'No', '83', 'Yes', 1, 1, 1, '2018-12-30 13:52:17', '2018-12-30 13:52:17', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `lsp_login_activities`
--

CREATE TABLE `lsp_login_activities` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `store_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `activity_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `user_agent` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `activity` text COLLATE utf8mb4_unicode_ci,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `lsp_menu_pages`
--

CREATE TABLE `lsp_menu_pages` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `is_parent` int(11) NOT NULL DEFAULT '0',
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `store_id` int(11) NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_by` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `lsp_menu_pages`
--

INSERT INTO `lsp_menu_pages` (`id`, `name`, `url`, `is_parent`, `parent_id`, `store_id`, `created_by`, `updated_by`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Dashboard', 'dashboard', 1, 0, 1, 1, 0, '2018-08-27 13:51:39', '2018-08-27 13:51:39', '0000-00-00 00:00:00'),
(2, 'Cash Register', 'pos', 1, 0, 1, 1, 0, '2018-08-27 13:54:47', '2018-08-27 13:54:47', '0000-00-00 00:00:00'),
(3, 'Customer', 'customermain', 1, 0, 1, 1, 1, '2018-08-28 19:46:33', '2018-08-27 13:55:27', '0000-00-00 00:00:00'),
(4, 'Add new customer', 'customer', 0, 3, 1, 1, 0, '2018-08-27 13:56:14', '2018-08-27 13:56:14', '0000-00-00 00:00:00'),
(5, 'Import Customer', 'customer/import', 0, 3, 1, 1, 0, '2018-08-27 13:56:59', '2018-08-27 13:56:59', '0000-00-00 00:00:00'),
(7, 'Customer List', 'customer/list', 0, 3, 1, 1, 0, '2018-08-28 13:11:16', '2018-08-28 13:11:16', '0000-00-00 00:00:00'),
(8, 'Inventory', 'inventory', 1, 0, 1, 1, 0, '2018-08-28 13:12:54', '2018-08-28 13:12:54', '0000-00-00 00:00:00'),
(9, 'Add New Product', 'product', 0, 8, 1, 1, 0, '2018-08-28 13:13:54', '2018-08-28 13:13:54', '0000-00-00 00:00:00'),
(10, 'Product List', 'product/list', 0, 8, 1, 1, 0, '2018-08-28 13:16:15', '2018-08-28 13:16:15', '0000-00-00 00:00:00'),
(11, 'Add New Stock', 'product/stock/in', 0, 8, 1, 1, 0, '2018-08-28 13:18:58', '2018-08-28 13:18:58', '0000-00-00 00:00:00'),
(12, 'Stock In Order List', 'product/stock/in/list', 0, 8, 1, 1, 0, '2018-08-28 13:19:28', '2018-08-28 13:19:28', '0000-00-00 00:00:00'),
(13, 'Add Vendor', 'vendor/create', 0, 8, 1, 1, 0, '2018-08-28 13:19:50', '2018-08-28 13:19:50', '0000-00-00 00:00:00'),
(14, 'Vendor List', 'vendor/list', 0, 8, 1, 1, 0, '2018-08-28 13:20:07', '2018-08-28 13:20:07', '0000-00-00 00:00:00'),
(15, 'Import Product', 'product/import', 0, 8, 1, 1, 0, '2018-08-28 13:20:30', '2018-08-28 13:20:30', '0000-00-00 00:00:00'),
(16, 'Warranty', 'warranty', 1, 0, 1, 1, 0, '2018-08-28 13:26:25', '2018-08-28 13:26:25', '0000-00-00 00:00:00'),
(17, 'Create New Warranty', 'warranty', 0, 16, 1, 1, 0, '2018-08-28 13:27:06', '2018-08-28 13:27:06', '0000-00-00 00:00:00'),
(18, 'Warranty Inventory', 'warranty/batch-out', 0, 16, 1, 1, 0, '2018-08-28 13:28:24', '2018-08-28 13:28:24', '0000-00-00 00:00:00'),
(19, 'Warranty Batch Out Report', 'warranty/report', 0, 16, 1, 1, 0, '2018-08-28 13:28:59', '2018-08-28 13:28:59', '0000-00-00 00:00:00'),
(20, 'Variance', 'variance', 1, 0, 1, 1, 0, '2018-08-28 13:29:25', '2018-08-28 13:29:25', '0000-00-00 00:00:00'),
(21, 'Add New Variance', 'variance/create', 0, 8, 1, 1, 1, '2018-09-26 20:06:24', '2018-08-28 13:29:51', '0000-00-00 00:00:00'),
(22, 'Variance Report', 'variance/report', 0, 8, 1, 1, 1, '2018-09-26 20:05:46', '2018-08-28 13:30:18', '0000-00-00 00:00:00'),
(23, 'Sales Return', 'sales-return', 1, 0, 1, 1, 0, '2018-08-28 13:30:56', '2018-08-28 13:30:56', '0000-00-00 00:00:00'),
(24, 'Add New Sales Return', 'sales/return/create', 0, 23, 1, 1, 0, '2018-08-28 13:31:55', '2018-08-28 13:31:55', '0000-00-00 00:00:00'),
(25, 'Sales Return List', 'sales/return/list', 0, 23, 1, 1, 0, '2018-08-28 13:32:27', '2018-08-28 13:32:27', '0000-00-00 00:00:00'),
(26, 'Expense Voucher', 'expense/voucher', 1, 0, 1, 1, 0, '2018-08-28 13:32:48', '2018-08-28 13:32:48', '0000-00-00 00:00:00'),
(27, 'Reports', 'reports', 1, 0, 1, 1, 0, '2018-08-28 13:33:53', '2018-08-28 13:33:53', '0000-00-00 00:00:00'),
(28, 'Authorize Payment Card History', 'authorize/net/payment/history', 0, 27, 1, 1, 0, '2018-08-28 13:34:15', '2018-08-28 13:34:15', '0000-00-00 00:00:00'),
(29, 'Expense Voucher Report', 'expense/voucher/report', 0, 27, 1, 1, 0, '2018-08-28 13:34:59', '2018-08-28 13:34:59', '0000-00-00 00:00:00'),
(30, 'Profit Report', 'profit/report', 0, 27, 1, 1, 0, '2018-08-28 13:35:27', '2018-08-28 13:35:27', '0000-00-00 00:00:00'),
(31, 'Product Wise Profit Report', 'product/profit/report', 0, 27, 1, 1, 0, '2018-08-28 13:35:51', '2018-08-28 13:35:51', '0000-00-00 00:00:00'),
(32, 'Payment Report', 'payment/report', 0, 27, 1, 1, 0, '2018-08-28 13:36:16', '2018-08-28 13:36:16', '0000-00-00 00:00:00'),
(33, 'Product Status Report', 'product/report', 0, 27, 1, 1, 0, '2018-08-28 13:36:41', '2018-08-28 13:36:41', '0000-00-00 00:00:00'),
(34, 'Paypal Payment History Report', 'paypal/payment/report', 0, 27, 1, 1, 0, '2018-08-28 13:37:05', '2018-08-28 13:37:05', '0000-00-00 00:00:00'),
(35, 'Stock Received Report', 'product/stock/in/report', 0, 27, 1, 1, 0, '2018-08-28 13:38:11', '2018-08-28 13:38:11', '0000-00-00 00:00:00'),
(36, 'Sales Report', 'sales/report', 0, 27, 1, 1, 0, '2018-08-28 13:38:33', '2018-08-28 13:38:33', '0000-00-00 00:00:00'),
(37, 'System Setting', 'system-setting', 1, 0, 1, 1, 0, '2018-08-28 13:45:55', '2018-08-28 13:45:55', '0000-00-00 00:00:00'),
(38, 'Add New Tender', 'tender', 0, 37, 1, 1, 0, '2018-08-28 13:46:27', '2018-08-28 13:46:27', '0000-00-00 00:00:00'),
(39, 'AuthorizeNet Account', 'authorize/net/payment/setting', 0, 37, 1, 1, 0, '2018-08-28 13:46:57', '2018-08-28 13:46:57', '0000-00-00 00:00:00'),
(40, 'Counter Display Add/Remove', 'counter/display/add', 0, 37, 1, 1, 0, '2018-08-28 13:47:23', '2018-08-28 13:47:23', '0000-00-00 00:00:00'),
(41, 'Invoice email template', 'settings/invoice/email', 0, 37, 1, 1, 0, '2018-08-28 13:47:47', '2018-08-28 13:47:47', '0000-00-00 00:00:00'),
(42, 'Navigation Setting', 'site/navigation', 0, 37, 1, 1, 0, '2018-08-28 13:49:22', '2018-08-28 13:49:22', '0000-00-00 00:00:00'),
(43, 'POS Setting', 'pos/settings', 0, 37, 1, 1, 0, '2018-08-28 13:49:48', '2018-08-28 13:49:48', '0000-00-00 00:00:00'),
(44, 'Printer Paper Size', 'setting/printer/print-paper/size', 0, 37, 1, 1, 0, '2018-08-28 13:50:14', '2018-08-28 13:50:14', '0000-00-00 00:00:00'),
(45, 'Role Setting', 'role', 0, 37, 1, 1, 0, '2018-08-28 13:50:40', '2018-08-28 13:50:40', '0000-00-00 00:00:00'),
(46, 'Menu-Item Setting', 'menu-item', 0, 37, 1, 1, 0, '2018-08-28 13:51:06', '2018-08-28 13:51:06', '0000-00-00 00:00:00'),
(47, 'Role Wise Menu Setting', 'RoleWiseMenu', 0, 37, 1, 1, 0, '2018-08-28 13:51:36', '2018-08-28 13:51:36', '0000-00-00 00:00:00'),
(48, 'User Access Setting', 'useraccesssetting', 1, 0, 1, 1, 0, '2018-08-30 16:12:40', '2018-08-30 16:12:40', '0000-00-00 00:00:00'),
(49, 'Add New User', 'user', 0, 48, 1, 1, 0, '2018-08-30 16:13:47', '2018-08-30 16:13:47', '0000-00-00 00:00:00'),
(50, 'User List', 'user/list', 0, 48, 1, 1, 0, '2018-08-30 16:14:21', '2018-08-30 16:14:21', '0000-00-00 00:00:00'),
(51, 'Store Settings', 'storesettings', 1, 0, 1, 1, 0, '2018-08-31 02:47:39', '2018-08-31 02:47:39', '0000-00-00 00:00:00'),
(52, 'Add New Store', 'store-shop', 0, 51, 1, 1, 0, '2018-08-31 03:15:10', '2018-08-31 03:15:10', '0000-00-00 00:00:00'),
(53, 'Store List', 'store-shop/list', 0, 51, 1, 1, 0, '2018-08-31 03:17:53', '2018-08-31 03:17:53', '0000-00-00 00:00:00'),
(54, 'Other report tab', 'dashboard_other_report', 0, 1, 1, 1, 1, '2018-08-31 16:12:57', '2018-08-31 10:12:14', '0000-00-00 00:00:00'),
(55, 'Today Cashier Punch Log', 'dashboard_today_cashier_punch_log', 0, 1, 1, 1, 0, '2018-08-31 10:13:41', '2018-08-31 10:13:41', '0000-00-00 00:00:00'),
(56, 'Recent System Access Log', 'dashboard_recent_system_access_log', 0, 1, 1, 1, 0, '2018-08-31 10:14:41', '2018-08-31 10:14:41', '0000-00-00 00:00:00'),
(57, 'Customer List Report', 'list_customer_report', 0, 3, 1, 1, 0, '2018-08-31 12:21:27', '2018-08-31 12:21:27', '0000-00-00 00:00:00'),
(58, 'Customer List Report -> View Invoice', 'Customer_List_Report_View_Invoice', 0, 3, 1, 1, 0, '2018-08-31 12:23:45', '2018-08-31 12:23:45', '0000-00-00 00:00:00'),
(59, 'Customer List Report -> Delete Invoice', 'Customer_List_Report_Delete_Invoice', 0, 3, 1, 1, 0, '2018-08-31 12:25:09', '2018-08-31 12:25:09', '0000-00-00 00:00:00'),
(60, 'Product List -> Edit', 'Product_List_Edit', 0, 8, 1, 1, 0, '2018-08-31 12:31:03', '2018-08-31 12:31:03', '0000-00-00 00:00:00'),
(61, 'Product List -> Delete', 'Product_List_Delete', 0, 8, 1, 1, 0, '2018-08-31 12:31:26', '2018-08-31 12:31:26', '0000-00-00 00:00:00'),
(62, 'Stock In Order List -> Single Order View', 'Stock_In_Order_List_Single_Order_View', 0, 8, 1, 1, 0, '2018-08-31 12:33:41', '2018-08-31 12:33:41', '0000-00-00 00:00:00'),
(63, 'Stock In Order List -> edit', 'Stock_In_Order_List_Single_Order_edit', 0, 8, 1, 1, 0, '2018-08-31 12:35:39', '2018-08-31 12:35:39', '0000-00-00 00:00:00'),
(64, 'Stock In Order List -> Delete', 'Stock_In_Order_List_Single_Order_Delete', 0, 8, 1, 1, 0, '2018-08-31 12:37:02', '2018-08-31 12:37:02', '0000-00-00 00:00:00'),
(65, 'Vendor List -> Edit', 'Vendor_List_Edit', 0, 8, 1, 1, 0, '2018-08-31 12:38:25', '2018-08-31 12:38:25', '0000-00-00 00:00:00'),
(66, 'Vendor List -> Delete', 'Vendor_List_Delete', 0, 8, 1, 1, 0, '2018-08-31 12:38:39', '2018-08-31 12:38:39', '0000-00-00 00:00:00'),
(67, 'Variance List -> View Detail', 'Variance_List_View_Detail', 0, 8, 1, 1, 1, '2018-09-26 20:05:01', '2018-08-31 12:41:22', '0000-00-00 00:00:00'),
(68, 'Variance List -> Edit', 'Variance_List_View_Edit', 0, 8, 1, 1, 1, '2018-09-26 20:04:43', '2018-08-31 12:41:46', '0000-00-00 00:00:00'),
(69, 'Variance List -> Delete', 'Variance_List_View_Delete', 0, 8, 1, 1, 1, '2018-09-26 20:04:28', '2018-08-31 12:43:07', '0000-00-00 00:00:00'),
(70, 'Tender List -> Edit', 'Tender_list_Edit', 0, 37, 1, 1, 0, '2018-08-31 12:55:29', '2018-08-31 12:55:29', '0000-00-00 00:00:00'),
(71, 'Tender List -> Delete', 'Tender_list_Delete', 0, 37, 1, 1, 0, '2018-08-31 12:56:29', '2018-08-31 12:56:29', '0000-00-00 00:00:00'),
(72, 'Counter Display Info List -> Edit', 'Counter_Display_Info_List_Edit', 0, 37, 1, 1, 0, '2018-08-31 12:59:25', '2018-08-31 12:59:25', '0000-00-00 00:00:00'),
(73, 'Counter Display Info List -> Delete', 'Counter_Display_Info_List_Delete', 0, 37, 1, 1, 0, '2018-08-31 12:59:46', '2018-08-31 12:59:46', '0000-00-00 00:00:00'),
(74, 'User List -> Edit', 'User_List_Edit', 0, 48, 1, 1, 0, '2018-08-31 13:02:47', '2018-08-31 13:02:47', '0000-00-00 00:00:00'),
(75, 'User List -> Delete', 'User_List_Delete', 0, 48, 1, 1, 0, '2018-08-31 13:03:13', '2018-08-31 13:03:13', '0000-00-00 00:00:00'),
(76, 'Add Manual Attendance', 'attendance/punch/manual', 0, 51, 1, 1, 0, '2018-09-20 15:02:41', '2018-09-20 15:02:41', '0000-00-00 00:00:00'),
(77, 'Attendance Punch Report', 'attendance/punch/report', 0, 27, 1, 1, 0, '2018-09-20 16:06:50', '2018-09-20 16:06:50', '0000-00-00 00:00:00'),
(78, 'Add New Lead', 'customer/lead/new', 0, 3, 1, 1, 0, '2018-09-28 00:32:20', '2018-09-28 00:32:20', '0000-00-00 00:00:00'),
(79, 'Lead List', 'customer/lead/list', 0, 3, 1, 1, 0, '2018-09-28 00:32:45', '2018-09-28 00:32:45', '0000-00-00 00:00:00'),
(80, 'Category', 'category', 0, 37, 1, 1, 0, '2018-09-29 13:11:32', '2018-09-29 13:11:32', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `lsp_migrations`
--

CREATE TABLE `lsp_migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `lsp_migrations`
--

INSERT INTO `lsp_migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(14, '2018_02_14_165142_create_customers_table', 2),
(15, '2018_02_14_165308_create_products_table', 2),
(16, '2018_02_14_165452_create_product_stockins_table', 2),
(17, '2018_02_14_165515_create_invoices_table', 2),
(18, '2018_02_14_165549_create_invoice_products_table', 2),
(19, '2018_02_14_165610_create_invoice_payments_table', 2),
(20, '2018_02_14_165638_create_product_variances_table', 2),
(21, '2018_02_14_165731_create_product_profits_table', 2),
(22, '2018_02_14_165826_create_product_variance_datas_table', 2),
(23, '2018_02_14_165848_create_tenders_table', 2),
(24, '2018_02_14_172725_create_activities_table', 2),
(25, '2018_02_14_184104_create_invoice_profits_table', 2),
(26, '2018_02_17_182452_create_product_stockin_invoices_table', 3),
(27, '2018_02_25_204411_create_warranties_table', 4),
(28, '2018_02_28_182342_create_warranty_products_table', 4),
(29, '2018_03_02_234443_create_retail_pos_summaries_table', 5),
(30, '2018_03_04_201055_create_retail_pos_summary_date_wises_table', 6),
(31, '2018_03_16_170216_create_pos_settings_table', 7),
(32, '2018_03_26_190331_create_site_settings_table', 8),
(33, '2018_03_28_175615_create_color_plates_table', 9),
(34, '2018_04_05_185149_create_counter_displays_table', 10),
(35, '2018_04_06_171645_create_sessions_table', 10),
(36, '2018_04_07_154508_create_counter_display_authorized_p_cs_table', 11),
(37, '2018_04_09_204533_create_customer_invoice_emails_table', 12),
(38, '2018_04_13_180514_create_login_activities_table', 13),
(39, '2018_04_13_193050_create_cashier_punches_table', 14),
(40, '2018_04_30_122335_create_report_settings_table', 15),
(41, '2018_05_04_202916_create_invoice_layout_ones_table', 16),
(42, '2018_05_05_172535_create_invoice_layout_twos_table', 17),
(43, '2018_05_10_234805_create_printer_print_sizes_table', 18),
(44, '2018_05_16_184041_create_sales_returns_table', 19),
(45, '2018_05_18_135417_create_event_calenders_table', 20),
(46, '2018_05_19_195935_create_vendors_table', 21),
(47, '2018_05_23_161709_create_invoice_email_teamplates_table', 21),
(48, '2018_05_26_110539_create_send_test_mails_table', 21),
(49, '2018_05_26_182109_create_send_sales_emails_table', 21),
(50, '2018_06_01_092441_create_card_infos_table', 22),
(51, '2018_06_04_204124_create_authorize_net_payments_table', 23),
(52, '2018_06_07_222755_create_authorize_net_payment_histories_table', 23);

-- --------------------------------------------------------

--
-- Table structure for table `lsp_open_drawers`
--

CREATE TABLE `lsp_open_drawers` (
  `id` int(10) NOT NULL,
  `opening_amount` float(10,2) DEFAULT '0.00',
  `store_status` enum('Open','Close') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Open',
  `store_closing_id` int(10) NOT NULL DEFAULT '0',
  `store_id` int(11) NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `lsp_open_drawers`
--

INSERT INTO `lsp_open_drawers` (`id`, `opening_amount`, `store_status`, `store_closing_id`, `store_id`, `created_by`, `updated_by`, `created_at`, `updated_at`, `deleted_at`) VALUES
(3, 100.00, 'Close', 5, 1, 1, 0, '2018-07-27 09:49:23', '2018-07-28 06:21:26', NULL),
(4, 10.00, 'Close', 6, 1, 1, 0, '2018-07-28 06:21:37', '2018-07-28 06:24:59', NULL),
(5, 10.00, 'Close', 7, 1, 1, 0, '2018-07-28 06:25:04', '2018-07-28 06:26:47', NULL),
(6, 15.00, 'Close', 8, 1, 1, 0, '2018-07-28 06:26:53', '2018-07-28 06:28:06', NULL),
(7, 0.00, 'Close', 9, 1, 1, 0, '2018-07-28 06:28:09', '2018-07-28 06:28:46', NULL),
(8, 0.00, 'Close', 10, 1, 1, 0, '2018-07-28 06:28:49', '2018-07-28 06:28:58', NULL),
(9, 10.00, 'Close', 11, 1, 1, 0, '2018-07-28 06:29:35', '2018-07-28 06:29:38', NULL),
(10, 0.00, 'Close', 12, 1, 1, 0, '2018-07-28 06:30:00', '2018-07-28 06:30:03', NULL),
(11, 0.00, 'Close', 13, 1, 1, 0, '2018-07-28 06:31:00', '2018-07-28 06:36:04', NULL),
(12, 100.00, 'Close', 14, 1, 1, 0, '2018-07-28 06:36:09', '2018-07-28 06:36:22', NULL),
(13, 0.00, 'Close', 15, 1, 1, 0, '2018-07-28 06:36:51', '2018-07-28 06:36:54', NULL),
(14, 0.00, 'Close', 16, 1, 1, 0, '2018-07-28 06:36:57', '2018-07-28 06:37:00', NULL),
(15, 0.00, 'Close', 17, 1, 1, 0, '2018-07-28 06:37:11', '2018-07-28 06:52:54', NULL),
(16, 0.00, 'Close', 18, 1, 1, 0, '2018-07-28 06:53:02', '2018-07-28 06:53:17', NULL),
(17, 0.00, 'Close', 19, 1, 1, 0, '2018-07-28 06:53:27', '2018-07-28 06:53:38', NULL),
(18, 0.00, 'Close', 20, 1, 1, 0, '2018-08-16 13:47:17', '2018-08-27 11:18:29', NULL),
(19, 0.00, 'Open', 0, 31, 7, 0, '2018-08-31 09:47:04', '2018-08-31 09:47:04', NULL),
(20, 0.00, 'Close', 21, 1, 1, 0, '2018-09-14 07:49:52', '2018-10-02 14:26:15', NULL),
(21, 0.00, 'Close', 22, 1, 1, 0, '2018-10-02 14:26:23', '2019-01-01 03:20:44', NULL),
(22, 100.00, 'Open', 0, 1, 1, 0, '2019-01-01 03:32:02', '2019-01-01 03:32:02', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `lsp_password_resets`
--

CREATE TABLE `lsp_password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `lsp_payouts`
--

CREATE TABLE `lsp_payouts` (
  `id` int(10) NOT NULL,
  `amount` float(10,2) DEFAULT '0.00',
  `negative_amount` float(10,2) DEFAULT '0.00',
  `reason` text COLLATE utf8mb4_unicode_ci,
  `store_id` int(11) NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `lsp_payouts`
--

INSERT INTO `lsp_payouts` (`id`, `amount`, `negative_amount`, `reason`, `store_id`, `created_by`, `updated_by`, `created_at`, `updated_at`, `deleted_at`) VALUES
(4, 10.00, 0.00, 'Payout', 1, 1, 0, '2018-08-17 04:05:18', '2018-08-17 04:05:18', NULL),
(5, 0.00, 20.00, 'Payout', 1, 1, 0, '2018-08-17 04:05:35', '2018-08-17 04:05:35', NULL),
(6, 10.00, 0.00, NULL, 1, 1, 0, '2018-08-17 04:21:28', '2018-08-17 04:21:28', NULL),
(7, 0.00, 30.00, 'werwr', 1, 1, 0, '2018-08-17 04:54:06', '2018-08-17 04:54:06', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `lsp_pos_settings`
--

CREATE TABLE `lsp_pos_settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `invoice_layout` int(1) NOT NULL DEFAULT '1',
  `pos_item` int(11) NOT NULL DEFAULT '16',
  `sales_tax` decimal(5,2) NOT NULL,
  `sales_part_tax` float(10,2) NOT NULL DEFAULT '0.00',
  `sales_discount` decimal(5,2) NOT NULL,
  `discount_type` int(1) NOT NULL DEFAULT '1',
  `store_id` int(11) NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `lsp_pos_settings`
--

INSERT INTO `lsp_pos_settings` (`id`, `invoice_layout`, `pos_item`, `sales_tax`, `sales_part_tax`, `sales_discount`, `discount_type`, `store_id`, `created_by`, `updated_by`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 2, 16, '3.00', 0.00, '5.00', 2, 1, 1, 1, '2018-03-16 14:19:45', '2018-05-05 15:04:23', NULL),
(2, 1, 16, '3.00', 1.60, '5.00', 2, 1, 1, 1, '2018-05-05 14:42:37', '2018-12-29 13:44:15', NULL),
(3, 0, 0, '0.00', 0.00, '0.00', 0, 0, 4, 0, '2018-05-18 13:25:13', '2018-05-18 13:25:13', NULL),
(4, 1, 16, '3.00', 0.00, '5.00', 2, 31, 7, 0, '2018-08-31 09:48:12', '2018-08-31 09:48:12', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `lsp_printer_print_sizes`
--

CREATE TABLE `lsp_printer_print_sizes` (
  `id` int(10) UNSIGNED NOT NULL,
  `pos_width` int(11) NOT NULL DEFAULT '595',
  `pos_height` int(11) NOT NULL DEFAULT '842',
  `thermal_width` int(11) NOT NULL DEFAULT '70',
  `thermal_height` int(11) NOT NULL DEFAULT '130',
  `barcode_width` int(11) NOT NULL DEFAULT '58',
  `barcode_height` int(11) NOT NULL DEFAULT '240',
  `store_id` int(11) NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `lsp_printer_print_sizes`
--

INSERT INTO `lsp_printer_print_sizes` (`id`, `pos_width`, `pos_height`, `thermal_width`, `thermal_height`, `barcode_width`, `barcode_height`, `store_id`, `created_by`, `updated_by`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 595, 842, 70, 130, 58, 160, 1, 1, 1, '2018-05-10 18:37:40', '2018-05-10 18:45:37', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `lsp_products`
--

CREATE TABLE `lsp_products` (
  `id` int(10) UNSIGNED NOT NULL,
  `category_id` int(11) NOT NULL DEFAULT '0',
  `category_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `barcode` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '0',
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `detail` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` double(8,2) NOT NULL,
  `cost` double(8,2) NOT NULL,
  `general_sale` tinyint(2) NOT NULL DEFAULT '0',
  `sold_times` int(11) NOT NULL,
  `used_type` enum('Store','Clone','Master') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Store',
  `store_id` int(11) NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `lsp_products`
--

INSERT INTO `lsp_products` (`id`, `category_id`, `category_name`, `barcode`, `name`, `detail`, `quantity`, `price`, `cost`, `general_sale`, `sold_times`, `used_type`, `store_id`, `created_by`, `updated_by`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 0, NULL, '0', 'Brand Custom-S', '', -12, 1.22, 1.00, 0, 10, 'Store', 13, 1, 1, '2018-02-14 16:38:59', '2018-03-19 15:17:34', NULL),
(2, 0, NULL, '0', 'Amit 2.5 GB', '', 2, 2.45, 1.25, 0, 0, 'Store', 13, 1, 0, '2018-02-14 16:41:07', '2018-02-14 16:43:19', '2018-02-14 16:43:19'),
(3, 0, NULL, '0', 'Glassware', '', 8, 100.00, 50.00, 0, 5, 'Store', 13, 1, 0, '2018-02-14 16:41:50', '2018-03-19 15:17:35', NULL),
(4, 0, NULL, '0', 'iPhone 5 LCD White - Premium', '', 32, 19.00, 12.00, 0, 5, 'Store', 13, 1, 0, '2018-02-15 13:26:40', '2018-03-22 17:03:47', NULL),
(5, 0, NULL, '0', 'iPhone 6S Plus LCD Black - Premium', '', 217, 38.00, 33.00, 0, 1, 'Store', 13, 1, 0, '2018-02-15 13:28:39', '2018-03-19 15:17:35', NULL),
(6, 0, NULL, '0', 'Small Parts', '', -7, 15.00, 11.25, 0, 13, 'Store', 13, 1, 0, '2018-02-15 13:30:13', '2018-03-19 15:17:35', NULL),
(7, 0, NULL, '0', 'Battery', '', -4, 12.00, 10.00, 0, 1, 'Store', 13, 1, 0, '2018-02-15 13:40:44', '2018-03-19 15:17:34', NULL),
(8, 0, NULL, '0', 'iPad 2 Digi', '', 11, 14.00, 9.00, 0, 0, 'Store', 13, 1, 0, '2018-02-15 13:41:38', '2018-03-02 15:20:58', '2018-03-02 15:20:58'),
(9, 0, NULL, '0', 'iPhone 6S Plus LCD White - Premium', '', 308, 38.00, 33.00, 0, 1, 'Store', 13, 1, 0, '2018-02-15 13:42:48', '2018-03-19 15:17:35', NULL),
(10, 0, NULL, '0', 'iPhone 6S LCD White - Premium', '', 410, 32.00, 27.00, 0, 1, 'Store', 13, 1, 0, '2018-02-15 13:44:11', '2018-03-19 15:17:35', NULL),
(11, 0, NULL, '0', 'iPhone 6S LCD Black - Premium', '', 336, 32.00, 27.00, 0, 1, 'Store', 13, 1, 0, '2018-02-15 13:48:46', '2018-03-19 15:17:34', NULL),
(12, 0, NULL, '0', 'Phone 5 LCD Black - Premium', '', 29, 19.00, 12.00, 0, 0, 'Store', 13, 1, 0, '2018-02-15 13:50:07', '2018-02-15 13:50:07', NULL),
(13, 0, NULL, '0', 'iPhone 5C LCD Black - Premium', '', 101, 19.00, 12.00, 0, 0, 'Store', 13, 1, 0, '2018-02-15 13:52:01', '2018-02-15 13:52:01', NULL),
(14, 0, NULL, '0', 'iPhone 5SE LCD White - Premium', '', 169, 22.00, 22.00, 0, 1, 'Store', 13, 1, 0, '2018-02-15 13:53:48', '2018-03-19 15:17:34', NULL),
(15, 0, NULL, '0', 'iPhone 5SE LCD Black - Premium', '', 164, 22.00, 22.00, 0, 0, 'Store', 13, 1, 0, '2018-02-15 13:55:26', '2018-02-15 13:55:26', NULL),
(16, 0, NULL, '0', 'iPhone 6 LCD White - Premium', '', 510, 23.00, 18.00, 0, 0, 'Store', 13, 1, 0, '2018-02-15 13:56:59', '2018-02-15 13:56:59', NULL),
(17, 0, NULL, '0', 'iPhone 6 LCD Black - Premium', '', 478, 23.00, 18.00, 0, 0, 'Store', 13, 1, 0, '2018-02-15 13:58:07', '2018-02-15 13:58:07', NULL),
(18, 0, NULL, '0', 'iPhone 6 Plus LCD Black - Premium', '', 204, 26.00, 21.00, 0, 1, 'Store', 13, 1, 0, '2018-02-15 13:59:25', '2018-03-19 15:17:34', NULL),
(19, 0, NULL, '0', 'iPhone 6 Plus LCD White - Premium', '', 223, 26.00, 21.00, 0, 0, 'Store', 13, 1, 0, '2018-02-15 14:01:25', '2018-02-15 14:01:25', NULL),
(20, 0, NULL, '0', 'iPad Air Digi', '', 8, 19.00, 14.00, 0, 0, 'Store', 13, 1, 0, '2018-02-15 14:02:40', '2018-02-15 14:02:40', NULL),
(21, 0, NULL, '0', 'iPad Mini 1 Digi', '', 5, 26.00, 21.00, 0, 0, 'Store', 13, 1, 0, '2018-02-15 14:03:54', '2018-02-15 14:03:54', NULL),
(22, 0, NULL, '0', 'iPad 3 Digi', '', 0, 14.00, 9.00, 0, 1, 'Store', 13, 1, 0, '2018-02-15 14:04:56', '2018-03-19 15:17:34', NULL),
(23, 0, NULL, '0', 'Overnight Shipping - Under Minimum Order', '', 4, 30.00, 30.00, 0, 1, 'Store', 13, 1, 0, '2018-02-15 14:05:59', '2018-03-20 11:27:08', NULL),
(24, 0, NULL, '0', 'Note 4 LCD', '', -1, 165.00, 155.00, 0, 1, 'Store', 13, 1, 0, '2018-02-15 14:07:02', '2018-03-20 11:27:08', NULL),
(25, 0, NULL, '0', 'iPhone 8 LCD Black - Premium', '', -2, 45.00, 40.00, 0, 2, 'Store', 13, 1, 0, '2018-02-15 14:08:01', '2018-03-20 11:27:08', NULL),
(26, 0, NULL, '0', 'iPhone 8 LCD White - Premium', '', 0, 45.00, 40.00, 0, 1, 'Store', 13, 1, 0, '2018-02-15 14:09:29', '2018-03-20 11:27:08', NULL),
(27, 0, NULL, '0', 'iPhone 8 Plus LCD Black - Premium', '', -2, 47.00, 42.00, 0, 2, 'Store', 13, 1, 0, '2018-02-15 14:23:00', '2018-03-20 11:27:08', NULL),
(28, 0, NULL, '0', 'iPhone 8 Plus LCD White - Premium', '', 0, 47.00, 42.00, 0, 1, 'Store', 13, 1, 0, '2018-02-15 14:24:16', '2018-03-20 11:27:08', NULL),
(29, 0, NULL, '0', 'Other', '', 1, 88.00, 95.00, 0, 0, 'Store', 13, 1, 0, '2018-02-15 14:25:08', '2018-02-15 14:25:08', NULL),
(30, 0, NULL, '0', 'Brand Custom-SS', '', -2, 2.00, 1.00, 0, 2, 'Store', 13, 1, 0, '2018-03-03 13:20:31', '2018-04-09 16:35:44', NULL),
(31, 0, NULL, '0', 'Brand Custom-SSS', '', 6, 10.00, 20.00, 0, 1, 'Store', 13, 1, 0, '2018-03-03 13:22:08', '2018-04-09 16:35:44', NULL),
(32, 0, NULL, '0', 'Glassware-Custom', '', 0, 10.00, 5.00, 0, 2, 'Store', 13, 1, 0, '2018-03-03 13:23:47', '2018-04-09 16:35:44', NULL),
(33, 0, NULL, '0', 'simpleretailpos', '', -18, 20.00, 10.00, 0, 25, 'Store', 13, 1, 0, '2018-03-03 13:24:18', '2018-04-08 16:13:07', NULL),
(34, 0, NULL, '0', 'Tableware w', '', -24, 10.00, 5.00, 0, 26, 'Store', 13, 1, 0, '2018-03-05 14:28:46', '2018-04-08 16:13:07', NULL),
(35, 0, NULL, '0', 'Glassware l', '', -8, 10.00, 5.00, 0, 20, 'Store', 13, 1, 0, '2018-03-05 14:29:36', '2018-04-08 16:13:07', NULL),
(36, 0, NULL, '0', 'aaaaa', '', -24, 11.00, 11.00, 0, 25, 'Store', 13, 1, 0, '2018-03-17 14:52:35', '2018-04-08 16:13:07', NULL),
(37, 0, NULL, '0', 'Test Ajax 1', '', -33, 10.00, 10.00, 0, 32, 'Store', 13, 1, 0, '2018-03-17 14:54:06', '2018-04-09 13:48:22', NULL),
(38, 0, NULL, '0', 'Test Ajax 1', '', -30, 10.00, 10.00, 0, 31, 'Store', 13, 1, 0, '2018-03-17 14:56:02', '2018-04-09 13:48:22', NULL),
(39, 0, NULL, '0', 'Test Ajax 2', '', -38, 11.00, 11.00, 0, 32, 'Store', 13, 1, 0, '2018-03-17 14:58:49', '2018-04-09 13:48:22', NULL),
(40, 0, NULL, '0', 'Test Ajax 3', '', -33, 20.00, 20.00, 0, 32, 'Store', 13, 1, 0, '2018-03-17 15:02:51', '2018-04-09 13:48:22', NULL),
(41, 0, NULL, '0', 'Test Ajax 4', '', -37, 4.00, 4.00, 0, 36, 'Store', 13, 1, 0, '2018-03-17 15:08:52', '2018-04-10 14:37:25', NULL),
(42, 0, NULL, '0', 'Test Ajax 1', '', -38, 10.00, 10.00, 0, 35, 'Store', 13, 1, 0, '2018-03-18 11:30:06', '2018-04-10 14:37:25', NULL),
(43, 0, NULL, '0', 'asdsad', '', -37, 20.00, 20.00, 0, 36, 'Store', 13, 1, 0, '2018-03-18 11:43:53', '2018-04-10 14:37:24', NULL),
(44, 0, NULL, '0', 'Test Ajax 5', 'General Sales : sdsdsadsad sa dsa dsad', -38, 22.00, 22.00, 0, 32, 'Store', 13, 1, 0, '2018-03-18 11:46:20', '2018-04-10 14:37:24', NULL),
(45, 0, NULL, '0', 'CHEF’S SPECIAL DISHES', '', 12, 10.00, 20.00, 0, 6, 'Store', 1, 1, 0, '2018-04-14 12:31:30', '2018-09-25 14:44:55', NULL),
(46, 0, NULL, '0', 'Small merchant', '', -4, 50.00, 20.00, 0, 7, 'Store', 1, 1, 0, '2018-05-01 15:23:06', '2018-09-14 13:02:26', NULL),
(47, 0, NULL, '0', 'About BRAC Bank', '', 35, 55.00, 22.00, 0, 3, 'Store', 1, 1, 0, '2018-05-01 15:23:24', '2018-08-03 13:57:50', NULL),
(48, 0, NULL, '0', 'Divergent', '', 212, 22.00, 11.00, 0, 9, 'Store', 1, 1, 0, '2018-05-01 15:23:38', '2018-09-25 14:27:26', NULL),
(49, 0, NULL, '0', 'MAHAMUDUR', '', 37, 10.00, 2.00, 0, 3, 'Store', 1, 1, 0, '2018-05-01 15:25:35', '2018-07-05 15:20:32', NULL),
(50, 0, NULL, '0', 'color pen', '', 13, 5.00, 3.00, 0, 4, 'Store', 1, 1, 0, '2018-05-01 15:25:58', '2018-07-27 14:59:03', NULL),
(51, 0, NULL, '0', 'pen', '', 35, 100.00, 50.00, 0, 4, 'Store', 1, 1, 0, '2018-05-01 15:26:21', '2018-06-29 12:32:34', NULL),
(52, 0, NULL, '0', 'laptop', '', 9, 500.00, 400.00, 0, 4, 'Store', 1, 1, 0, '2018-05-01 15:26:37', '2018-08-04 15:02:42', NULL),
(53, 0, NULL, '0', 'DESKTOP-PHFRTLE', '', 22, 1000.00, 800.00, 0, 4, 'Store', 1, 1, 0, '2018-05-01 15:26:54', '2018-06-29 03:27:08', NULL),
(54, 0, NULL, '0', 'Product Special One with Light', '', 24, 20.00, 10.00, 0, 8, 'Store', 1, 1, 0, '2018-05-01 17:16:14', '2018-07-05 15:20:32', NULL),
(55, 0, NULL, '0', 'Demo 2', '', -33, 20.00, 10.00, 0, 34, 'Store', 1, 1, 0, '2018-05-01 17:16:14', '2018-09-14 13:43:21', NULL),
(56, 0, NULL, '0', 'Demo 3', '', -39, 20.00, 10.00, 0, 40, 'Store', 1, 1, 0, '2018-05-01 17:16:14', '2018-09-18 15:31:12', NULL),
(57, 0, NULL, '0', 'Demo 4', '', -44, 20.00, 10.00, 0, 46, 'Store', 1, 1, 0, '2018-05-01 17:16:14', '2018-09-18 15:31:12', NULL),
(58, 0, NULL, '0', 'Demo product one with 5 gb', '', 51, 20.00, 10.00, 0, 49, 'Store', 1, 1, 0, '2018-05-01 17:16:14', '2018-09-18 15:31:12', NULL),
(59, 0, NULL, '0', 'Agent', '', 1, 1.00, 1.00, 0, 0, 'Store', 0, 4, 0, '2018-05-18 15:49:23', '2018-05-18 15:49:23', NULL),
(60, 0, NULL, '0', 'Test General Sale', 'General Sales : sadsadas', 1, 10.00, 5.00, 1, 0, 'Store', 1, 1, 0, '2018-08-16 14:18:04', '2018-08-16 14:18:04', NULL),
(61, 0, NULL, '0', 'sdaasdsa', '', 0, 1.00, 1.00, 0, 1, 'Store', 31, 7, 0, '2018-08-31 09:46:45', '2018-08-31 09:48:05', NULL),
(62, 0, NULL, '0', 'Test Product', '', 1, 1.00, 2.00, 0, 0, 'Store', 71, 8, 0, '2018-09-01 14:05:00', '2018-09-01 14:05:00', NULL),
(63, 1, 'General', '0', 'Test With Category', '', -10, 1.00, 1.00, 0, 5, 'Store', 1, 1, 1, '2018-09-29 14:49:57', '2019-01-01 03:32:55', NULL),
(64, 0, NULL, '0', 'wqeqe', 'General Sales : sadsad', 1, 222.00, 22.00, 1, 0, 'Store', 1, 1, 0, '2018-10-03 13:45:47', '2018-10-03 13:45:47', NULL),
(65, 0, NULL, '0', 'sdas', 'General Sales : 22', 1, 22.00, 22.00, 1, 0, 'Store', 1, 1, 0, '2018-10-03 13:46:06', '2018-10-03 13:46:06', NULL),
(66, 0, NULL, '0', 'sdas', 'General Sales : 22', 1, 22.00, 22.00, 1, 0, 'Store', 1, 1, 0, '2018-10-03 13:46:10', '2018-10-03 13:46:10', NULL),
(67, 0, NULL, '0', 'sdas2', 'General Sales : 22', 1, 22.00, 22.00, 1, 0, 'Store', 1, 1, 0, '2018-10-03 13:46:15', '2018-10-03 13:46:15', NULL),
(68, 0, NULL, '0', 'sdas22', 'General Sales : 22', 1, 22.00, 22.00, 1, 0, 'Store', 1, 1, 0, '2018-10-03 13:46:18', '2018-10-03 13:46:18', NULL),
(69, 0, NULL, '0', 'sdas222', 'General Sales : 22', 1, 22.00, 22.00, 1, 0, 'Store', 1, 1, 0, '2018-10-03 13:46:21', '2018-10-03 13:46:21', NULL),
(70, 0, NULL, '0', 'sdas2222', 'General Sales : 22', 1, 22.00, 22.00, 1, 0, 'Store', 1, 1, 0, '2018-10-03 13:46:25', '2018-10-03 13:46:25', NULL),
(71, 0, NULL, '0', 'sdas22222', 'General Sales : 22', 1, 22.00, 22.00, 1, 0, 'Store', 1, 1, 0, '2018-10-03 13:46:28', '2018-10-03 13:46:28', NULL),
(72, 0, NULL, '0', '2s22222', 'General Sales : 22', 1, 22.00, 22.00, 1, 0, 'Store', 1, 1, 0, '2018-10-03 13:46:32', '2018-10-03 13:46:32', NULL),
(73, 0, NULL, '0', '122222', 'General Sales : 22', 1, 22.00, 22.00, 1, 0, 'Store', 1, 1, 0, '2018-10-03 13:46:37', '2018-10-03 13:46:37', NULL),
(74, 0, NULL, '0', '12222', 'General Sales : 22', 1, 22.00, 22.00, 1, 0, 'Store', 1, 1, 0, '2018-10-03 13:46:41', '2018-10-03 13:46:41', NULL),
(75, 0, NULL, '0', '12224', 'General Sales : 22', 1, 22.00, 22.00, 1, 0, 'Store', 1, 1, 0, '2018-10-03 13:46:46', '2018-10-03 13:46:46', NULL),
(76, 0, NULL, '0', '1222a', 'General Sales : 22', 1, 22.00, 22.00, 1, 0, 'Store', 1, 1, 0, '2018-10-03 13:46:51', '2018-10-03 13:46:51', NULL),
(77, 0, NULL, '0', '1222aa', 'General Sales : 22', 1, 22.00, 22.00, 1, 0, 'Store', 1, 1, 0, '2018-10-03 13:46:56', '2018-10-03 13:46:56', NULL),
(78, 0, NULL, '0', '1222aff', 'General Sales : 22', 1, 22.00, 22.00, 1, 0, 'Store', 1, 1, 0, '2018-10-03 13:47:00', '2018-10-03 13:47:00', NULL),
(79, 0, NULL, '0', '1222agg', 'General Sales : 22', 1, 22.00, 22.00, 1, 0, 'Store', 1, 1, 0, '2018-10-03 13:47:04', '2018-10-03 13:47:04', NULL),
(80, 0, NULL, '0', '1222ahh', 'General Sales : 22', 1, 22.00, 22.00, 1, 0, 'Store', 1, 1, 0, '2018-10-03 13:47:08', '2018-10-03 13:47:08', NULL),
(81, 0, NULL, '0', '1222j', 'General Sales : 22', 1, 22.00, 22.00, 1, 0, 'Store', 1, 1, 0, '2018-10-03 13:47:13', '2018-10-03 13:47:13', NULL),
(82, 0, NULL, '0', 'Test 2', 'General Sales : Test', 0, 10.00, 8.00, 1, 1, 'Store', 1, 1, 0, '2018-10-17 13:31:30', '2018-10-17 13:53:26', NULL),
(83, 0, NULL, '0', 'Test 3', 'General Sales : dd', 1, 15.00, 10.00, 1, 0, 'Store', 1, 1, 0, '2018-10-17 13:39:44', '2018-10-17 13:39:44', NULL),
(84, 0, NULL, '0', 'Test 4', 'General Sales : gg', 0, 17.00, 12.00, 1, 1, 'Store', 1, 1, 0, '2018-10-17 13:41:17', '2018-10-17 13:53:26', NULL),
(85, 3, 'Iphone', '1234', 'Pro 1', '', 2, 12.00, 27.00, 0, 0, 'Store', 1, 1, 1, '2018-11-30 16:51:26', '2018-11-30 16:55:52', NULL),
(93, 5, 'Repair', '1544208855', 'Iphone, Iphone X - Speaker', '', -6, 10.00, 15.00, 0, 7, 'Master', 1, 1, 0, '2018-12-07 12:54:51', '2019-01-02 14:58:16', NULL),
(94, 5, 'Repair', '1544208892', 'Iphone, Iphone 8S - Water Drop', '', 1, 20.00, 25.00, 0, 0, 'Master', 1, 1, 0, '2018-12-07 12:55:38', '2018-12-07 12:55:38', NULL),
(95, 5, 'Repair', '1544209121', 'Iphone, Iphone X, Water Drop', '', 1, 10.00, 10.00, 0, 0, 'Master', 1, 1, 0, '2018-12-07 13:00:22', '2018-12-07 13:00:22', NULL),
(100, 12, 'Repair', '1544208855', 'Iphone, Iphone X - Speaker', '', 1, 10.00, 15.00, 0, 0, 'Clone', 81, 1, 0, '2018-12-07 16:14:46', '2018-12-07 16:14:46', NULL),
(101, 12, 'Repair', '1544208892', 'Iphone, Iphone 8S - Water Drop', '', 1, 20.00, 25.00, 0, 0, 'Clone', 81, 1, 0, '2018-12-07 16:14:46', '2018-12-07 16:14:46', NULL),
(102, 12, 'Repair', '1544209121', 'Iphone, Iphone X, Water Drop', '', 1, 10.00, 10.00, 0, 0, 'Clone', 81, 1, 0, '2018-12-07 16:14:46', '2018-12-07 16:14:46', NULL),
(103, 5, 'Repair', '1545588952', 'Iphone, Iphone X - Test', '', 0, 10.00, 10.00, 0, 1, 'Master', 1, 1, 0, '2018-12-23 12:16:11', '2018-12-27 02:04:55', NULL),
(104, 0, NULL, '0', 'test - 1545662892699', 'test - 1545662892699', 1, 15.00, 10.00, 1, 0, 'Store', 1, 1, 0, '2018-12-24 08:48:51', '2018-12-24 08:48:51', NULL),
(105, 0, NULL, '0', 'Test - 1545766288741', 'Test - 1545766288741', 1, 12.00, 10.00, 1, 0, 'Store', 1, 1, 0, '2018-12-25 13:32:19', '2018-12-25 13:32:19', NULL),
(106, 13, 'Ticket', '0', 'Test 2 - 1545769284418', 'Test 2 - 1545769284418', 1, 12.00, 10.00, 1, 0, 'Store', 1, 1, 0, '2018-12-25 14:21:58', '2018-12-25 14:21:58', NULL),
(107, 13, 'Ticket', '0', 'asdfg - 1545855258100', 'asdfg - 1545855258100', 1, 56.00, 12.00, 1, 0, 'Store', 1, 1, 0, '2018-12-26 14:16:25', '2018-12-26 14:16:25', NULL),
(108, 13, 'Ticket', '0', 'Test 4 - 1545896188746', 'Test 4 - 1545896188746', 1, 15.00, 10.00, 1, 0, 'Store', 1, 1, 0, '2018-12-27 02:00:16', '2018-12-27 02:00:16', NULL),
(109, 13, 'Ticket', '0', 'sdfsdfsd - 1545905401843', 'sdfsdfsd - 1545905401843', 0, 33.00, 22.00, 1, 1, 'Store', 1, 1, 0, '2018-12-27 04:10:35', '2018-12-27 05:25:30', NULL),
(110, 13, 'Ticket', '0', 'Test Ticket - 1545909933173', 'Test Ticket - 1545909933173', 0, 20.00, 10.00, 1, 1, 'Store', 1, 1, 0, '2018-12-27 05:47:30', '2018-12-27 05:47:57', NULL),
(111, 13, 'Ticket', '0', 'test - 1545943388720', 'test - 1545943388720', 0, 20.00, 12.00, 1, 1, 'Store', 1, 1, 0, '2018-12-27 14:43:44', '2018-12-27 14:55:36', NULL),
(112, 13, 'Ticket', '0', 'Test 2 - 1546197025', 'Test 2 - 1546197025', 1, 30.00, 20.00, 1, 0, 'Store', 1, 1, 0, '2018-12-30 13:10:26', '2018-12-30 13:10:26', NULL),
(113, 13, 'Ticket', '0', 'Test 2 - 1546197458', 'Test 2 - 1546197458', 1, 30.00, 20.00, 1, 0, 'Store', 1, 1, 0, '2018-12-30 13:17:38', '2018-12-30 13:17:38', NULL),
(114, 13, 'Ticket', '0', 'Test 2 - 1546197832', 'Test 2 - 1546197832', 1, 30.00, 20.00, 1, 0, 'Store', 1, 1, 0, '2018-12-30 13:23:52', '2018-12-30 13:23:52', NULL),
(115, 13, 'Ticket', '0', 'Test 2 - 1546197848', 'Test 2 - 1546197848', 1, 30.00, 20.00, 1, 0, 'Store', 1, 1, 0, '2018-12-30 13:24:08', '2018-12-30 13:24:08', NULL),
(116, 13, 'Ticket', '0', 'Test 2 - 1546197874', 'Test 2 - 1546197874', 1, 30.00, 20.00, 1, 0, 'Store', 1, 1, 0, '2018-12-30 13:24:34', '2018-12-30 13:24:34', NULL),
(117, 13, 'Ticket', '0', 'Test 2 - 1546197888', 'Test 2 - 1546197888', 1, 30.00, 20.00, 1, 0, 'Store', 1, 1, 0, '2018-12-30 13:24:48', '2018-12-30 13:24:48', NULL),
(118, 13, 'Ticket', '0', 'Test 2 - 1546197902', 'Test 2 - 1546197902', 1, 30.00, 20.00, 1, 0, 'Store', 1, 1, 0, '2018-12-30 13:25:02', '2018-12-30 13:25:02', NULL),
(119, 13, 'Ticket', '0', 'Test 2 - 1546197952', 'Test 2 - 1546197952', 1, 30.00, 20.00, 1, 0, 'Store', 1, 1, 0, '2018-12-30 13:25:52', '2018-12-30 13:25:52', NULL),
(120, 13, 'Ticket', '0', 'Test 2 - 1546197991', 'Test 2 - 1546197991', 1, 30.00, 20.00, 1, 0, 'Store', 1, 1, 0, '2018-12-30 13:26:31', '2018-12-30 13:26:31', NULL),
(121, 13, 'Ticket', '0', 'Test 2 - 1546198096', 'Test 2 - 1546198096', 1, 30.00, 20.00, 1, 0, 'Store', 1, 1, 0, '2018-12-30 13:28:16', '2018-12-30 13:28:16', NULL),
(122, 13, 'Ticket', '0', 'Test 2 - 1546198111', 'Test 2 - 1546198111', 1, 30.00, 20.00, 1, 0, 'Store', 1, 1, 0, '2018-12-30 13:28:31', '2018-12-30 13:28:31', NULL),
(123, 13, 'Ticket', '0', 'Test 2 - 1546198126', 'Test 2 - 1546198126', 1, 30.00, 20.00, 1, 0, 'Store', 1, 1, 0, '2018-12-30 13:28:46', '2018-12-30 13:28:46', NULL),
(124, 13, 'Ticket', '0', 'Test 2 - 1546198140', 'Test 2 - 1546198140', 1, 30.00, 20.00, 1, 0, 'Store', 1, 1, 0, '2018-12-30 13:29:00', '2018-12-30 13:29:00', NULL),
(125, 13, 'Ticket', '0', 'Test 2 - 1546198190', 'Test 2 - 1546198190', 1, 30.00, 20.00, 1, 0, 'Store', 1, 1, 0, '2018-12-30 13:29:50', '2018-12-30 13:29:50', NULL),
(126, 13, 'Ticket', '0', 'Test 2 - 1546198235', 'Test 2 - 1546198235', 1, 30.00, 20.00, 1, 0, 'Store', 1, 1, 0, '2018-12-30 13:30:35', '2018-12-30 13:30:35', NULL),
(127, 13, 'Ticket', '0', 'Test 2 - 1546198283', 'Test 2 - 1546198283', 1, 30.00, 20.00, 1, 0, 'Store', 1, 1, 0, '2018-12-30 13:31:23', '2018-12-30 13:31:23', NULL),
(128, 13, 'Ticket', '0', 'Test 2 - 1546198309', 'Test 2 - 1546198309', 1, 30.00, 20.00, 1, 0, 'Store', 1, 1, 0, '2018-12-30 13:31:49', '2018-12-30 13:31:49', NULL),
(129, 13, 'Ticket', '0', 'Test 2 - 1546198397', 'Test 2 - 1546198397', 1, 30.00, 20.00, 1, 0, 'Store', 1, 1, 0, '2018-12-30 13:33:17', '2018-12-30 13:33:17', NULL),
(130, 13, 'Ticket', '0', 'Test 2 - 1546198452', 'Test 2 - 1546198452', 1, 30.00, 20.00, 1, 0, 'Store', 1, 1, 0, '2018-12-30 13:34:12', '2018-12-30 13:34:12', NULL),
(131, 13, 'Ticket', '0', 'Test 2 - 1546198476', 'Test 2 - 1546198476', 1, 30.00, 20.00, 1, 0, 'Store', 1, 1, 0, '2018-12-30 13:34:36', '2018-12-30 13:34:36', NULL),
(132, 13, 'Ticket', '0', 'Test 2 - 1546198489', 'Test 2 - 1546198489', 1, 30.00, 20.00, 1, 0, 'Store', 1, 1, 0, '2018-12-30 13:34:49', '2018-12-30 13:34:49', NULL),
(133, 13, 'Ticket', '0', 'Test 2 - 1546198502', 'Test 2 - 1546198502', 1, 30.00, 20.00, 1, 0, 'Store', 1, 1, 0, '2018-12-30 13:35:02', '2018-12-30 13:35:02', NULL),
(134, 13, 'Ticket', '0', 'Test 2 - 1546198521', 'Test 2 - 1546198521', 1, 30.00, 20.00, 1, 0, 'Store', 1, 1, 0, '2018-12-30 13:35:21', '2018-12-30 13:35:21', NULL),
(135, 13, 'Ticket', '0', 'Test 2 - 1546198549', 'Test 2 - 1546198549', 1, 30.00, 20.00, 1, 0, 'Store', 1, 1, 0, '2018-12-30 13:35:49', '2018-12-30 13:35:49', NULL),
(136, 13, 'Ticket', '0', 'Test 2 - 1546198611', 'Test 2 - 1546198611', 1, 30.00, 20.00, 1, 0, 'Store', 1, 1, 0, '2018-12-30 13:36:51', '2018-12-30 13:36:51', NULL),
(137, 13, 'Ticket', '0', 'Test 2 - 1546198823', 'Test 2 - 1546198823', 1, 30.00, 20.00, 1, 0, 'Store', 1, 1, 0, '2018-12-30 13:40:23', '2018-12-30 13:40:23', NULL),
(138, 13, 'Ticket', '0', 'Test 2 - 1546198876', 'Test 2 - 1546198876', 1, 30.00, 20.00, 1, 0, 'Store', 1, 1, 0, '2018-12-30 13:41:16', '2018-12-30 13:41:16', NULL),
(139, 13, 'Ticket', '0', 'Test 2 - 1546198939', 'Test 2 - 1546198939', 1, 30.00, 20.00, 1, 0, 'Store', 1, 1, 0, '2018-12-30 13:42:19', '2018-12-30 13:42:19', NULL),
(140, 13, 'Ticket', '0', 'Test 2 - 1546199537', 'Test 2 - 1546199537', 1, 30.00, 20.00, 1, 0, 'Store', 1, 1, 0, '2018-12-30 13:52:17', '2018-12-30 13:52:17', NULL),
(141, 13, 'Ticket', '0', ' - 1546233041', ' - 1546233041', 1, 30.00, 20.00, 1, 0, 'Store', 1, 1, 0, '2018-12-30 23:10:41', '2018-12-30 23:10:41', NULL),
(142, 5, 'Repair', '0', 'Iphone, Iphone X - Water Drop', 'Iphone, Iphone X - Water Drop', 1, 20.00, 20.00, 0, 0, 'Store', 1, 1, 0, '2019-01-01 05:25:48', '2019-01-01 05:25:48', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `lsp_product_profits`
--

CREATE TABLE `lsp_product_profits` (
  `id` int(10) UNSIGNED NOT NULL,
  `product_id` int(11) NOT NULL,
  `invoice_datetime` datetime NOT NULL,
  `customer_id` int(11) NOT NULL,
  `customer_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_total_quantity` int(11) NOT NULL,
  `product_total_amount` double(8,2) NOT NULL,
  `product_cost_total_amount` double(8,2) NOT NULL,
  `profit` double(8,2) NOT NULL,
  `store_id` int(11) NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `lsp_product_stockins`
--

CREATE TABLE `lsp_product_stockins` (
  `id` int(10) UNSIGNED NOT NULL,
  `order_tracking_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` double(8,2) NOT NULL,
  `cost` double(8,2) NOT NULL,
  `used_type` enum('Store','Clone','Master') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Store',
  `store_id` int(11) NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `lsp_product_stockins`
--

INSERT INTO `lsp_product_stockins` (`id`, `order_tracking_id`, `product_id`, `quantity`, `price`, `cost`, `used_type`, `store_id`, `created_by`, `updated_by`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, '1520091605', 3, 1, 100.00, 50.00, 'Store', 13, 1, 0, '2018-03-03 09:40:05', '2018-03-03 09:40:17', '2018-03-03 09:40:17'),
(2, '1520091723', 3, 2, 100.00, 50.00, 'Store', 13, 1, 0, '2018-03-03 09:42:03', '2018-03-03 11:09:39', '2018-03-03 11:09:39'),
(3, '1520091723', 3, 2, 100.00, 50.00, 'Store', 13, 1, 1, '2018-03-03 11:09:39', '2018-03-03 11:09:55', '2018-03-03 11:09:55'),
(4, '1520103655', 3, 5, 100.00, 50.00, 'Store', 13, 1, 0, '2018-03-03 13:00:55', '2018-03-03 13:02:06', '2018-03-03 13:02:06'),
(5, '1520103655', 3, 5, 100.00, 50.00, 'Store', 13, 1, 0, '2018-03-03 13:00:55', '2018-03-03 13:02:06', '2018-03-03 13:02:06'),
(6, '1520103679', 3, 5, 100.00, 50.00, 'Store', 13, 1, 0, '2018-03-03 13:01:19', '2018-03-03 13:01:56', '2018-03-03 13:01:56'),
(7, '1520103679', 3, 5, 100.00, 50.00, 'Store', 13, 1, 0, '2018-03-03 13:01:19', '2018-03-03 13:01:56', '2018-03-03 13:01:56'),
(8, '1520103781', 3, 5, 100.00, 50.00, 'Store', 13, 1, 0, '2018-03-03 13:03:01', '2018-03-03 13:03:31', '2018-03-03 13:03:31'),
(9, '1520103781', 3, 5, 100.00, 50.00, 'Store', 13, 1, 0, '2018-03-03 13:03:01', '2018-03-03 13:03:31', '2018-03-03 13:03:31'),
(10, '1520103781', 3, 5, 100.00, 50.00, 'Store', 13, 1, 1, '2018-03-03 13:03:31', '2018-03-03 13:31:34', '2018-03-03 13:31:34'),
(11, '1520103781', 3, 3, 100.00, 50.00, 'Store', 13, 1, 1, '2018-03-03 13:03:32', '2018-03-03 13:31:34', '2018-03-03 13:31:34'),
(12, '0', 32, 5, 10.00, 5.00, 'Store', 13, 1, 0, '2018-03-03 13:23:47', '2018-03-03 13:23:47', NULL),
(13, '0', 33, 7, 20.00, 10.00, 'Store', 13, 1, 0, '2018-03-03 13:24:18', '2018-03-03 13:24:18', NULL),
(14, '1520103781', 3, 5, 100.00, 50.00, 'Store', 13, 1, 1, '2018-03-03 13:31:34', '2018-03-03 13:34:09', '2018-03-03 13:34:09'),
(15, '1520103781', 3, 3, 100.00, 50.00, 'Store', 13, 1, 1, '2018-03-03 13:31:34', '2018-03-03 13:34:09', '2018-03-03 13:34:09'),
(16, '1520103781', 3, 5, 100.00, 50.00, 'Store', 13, 1, 1, '2018-03-03 13:34:09', '2018-03-03 13:34:09', NULL),
(17, '1520103781', 3, 3, 100.00, 50.00, 'Store', 13, 1, 1, '2018-03-03 13:34:09', '2018-03-03 13:34:09', NULL),
(18, '1520105672', 3, 1, 100.00, 50.00, 'Store', 13, 1, 0, '2018-03-03 13:34:32', '2018-03-03 13:34:32', NULL),
(19, '0', 34, 2, 10.00, 5.00, 'Store', 13, 1, 0, '2018-03-05 14:28:47', '2018-03-05 14:28:47', NULL),
(20, '0', 35, 2, 10.00, 5.00, 'Store', 13, 1, 0, '2018-03-05 14:29:37', '2018-03-05 14:29:37', NULL),
(21, '1520282214', 4, 4, 19.00, 12.00, 'Store', 13, 1, 0, '2018-03-05 14:36:54', '2018-03-05 14:36:54', NULL),
(22, '0', 36, 1, 11.00, 11.00, 'Store', 13, 1, 0, '2018-03-17 14:52:35', '2018-03-17 14:52:35', NULL),
(23, '0', 37, 1, 10.00, 10.00, 'Store', 13, 1, 0, '2018-03-17 14:54:06', '2018-03-17 14:54:06', NULL),
(24, '0', 38, 1, 10.00, 10.00, 'Store', 13, 1, 0, '2018-03-17 14:56:02', '2018-03-17 14:56:02', NULL),
(25, '0', 45, 1, 10.00, 20.00, 'Store', 1, 1, 0, '2018-04-14 12:31:30', '2018-04-14 12:31:30', NULL),
(26, '0', 46, 3, 50.00, 20.00, 'Store', 1, 1, 0, '2018-05-01 15:23:06', '2018-05-01 15:23:06', NULL),
(27, '0', 47, 11, 55.00, 22.00, 'Store', 1, 1, 0, '2018-05-01 15:23:24', '2018-05-01 15:23:24', NULL),
(28, '0', 48, 15, 22.00, 11.00, 'Store', 1, 1, 0, '2018-05-01 15:23:38', '2018-05-01 15:23:38', NULL),
(29, '0', 49, 22, 10.00, 2.00, 'Store', 1, 1, 0, '2018-05-01 15:25:35', '2018-05-01 15:25:35', NULL),
(30, '0', 50, 17, 5.00, 3.00, 'Store', 1, 1, 0, '2018-05-01 15:25:58', '2018-05-01 15:25:58', NULL),
(31, '0', 51, 39, 100.00, 50.00, 'Store', 1, 1, 0, '2018-05-01 15:26:21', '2018-05-01 15:26:21', NULL),
(32, '0', 52, 15, 500.00, 400.00, 'Store', 1, 1, 0, '2018-05-01 15:26:37', '2018-05-01 15:26:37', NULL),
(33, '0', 53, 26, 1000.00, 800.00, 'Store', 1, 1, 0, '2018-05-01 15:26:54', '2018-05-01 15:26:54', NULL),
(34, '0', 59, 1, 1.00, 1.00, 'Store', 0, 4, 0, '2018-05-18 15:49:23', '2018-05-18 15:49:23', NULL),
(35, '1530825129', 46, 1, 50.00, 20.00, 'Store', 1, 1, 0, '2018-07-05 15:12:09', '2018-07-05 15:12:09', NULL),
(36, '1530825129', 48, 5, 22.00, 11.00, 'Store', 1, 1, 0, '2018-07-05 15:12:09', '2018-07-05 15:12:09', NULL),
(37, '1530825343', 46, 1, 50.00, 20.00, 'Store', 1, 1, 0, '2018-07-05 15:15:43', '2018-07-05 15:15:43', NULL),
(38, '1530825343', 48, 5, 22.00, 11.00, 'Store', 1, 1, 0, '2018-07-05 15:15:43', '2018-07-05 15:15:43', NULL),
(39, '1530825632', 47, 19, 55.00, 22.00, 'Store', 1, 1, 0, '2018-07-05 15:20:32', '2018-07-05 15:20:32', NULL),
(40, '1530825632', 49, 18, 10.00, 2.00, 'Store', 1, 1, 0, '2018-07-05 15:20:32', '2018-07-05 15:20:32', NULL),
(41, '1530825632', 54, 31, 20.00, 10.00, 'Store', 1, 1, 0, '2018-07-05 15:20:32', '2018-07-05 15:20:32', NULL),
(42, '1530825674', 57, 1, 20.00, 10.00, 'Store', 1, 1, 0, '2018-07-05 15:21:14', '2018-07-05 15:21:14', NULL),
(43, '1530825674', 58, 100, 20.00, 10.00, 'Store', 1, 1, 0, '2018-07-05 15:21:14', '2018-07-05 15:21:14', NULL),
(44, '1530825674', 48, 200, 22.00, 11.00, 'Store', 1, 1, 0, '2018-07-05 15:21:14', '2018-07-05 15:21:14', NULL),
(45, '1530825781', 47, 10, 55.00, 22.00, 'Store', 1, 1, 0, '2018-07-05 15:23:01', '2018-07-05 15:23:01', NULL),
(46, '1530825781', 45, 19, 10.00, 20.00, 'Store', 1, 1, 0, '2018-07-05 15:23:01', '2018-07-05 15:23:01', NULL),
(47, '0', 61, 1, 1.00, 1.00, 'Store', 31, 7, 0, '2018-08-31 09:46:45', '2018-08-31 09:46:45', NULL),
(48, '0', 62, 1, 1.00, 2.00, 'Store', 71, 8, 0, '2018-09-01 14:05:00', '2018-09-01 14:05:00', NULL),
(49, '0', 63, 1, 1.00, 1.00, 'Store', 1, 1, 0, '2018-09-29 14:49:57', '2018-09-29 14:49:57', NULL),
(50, '0', 63, 1, 1.00, 1.00, 'Store', 0, 0, 1, '2018-09-29 15:03:20', '2018-09-29 15:03:20', NULL),
(51, '0', 85, 2, 12.00, 27.00, 'Store', 1, 1, 0, '2018-11-30 16:51:26', '2018-11-30 16:51:26', NULL),
(52, '0', 85, 2, 12.00, 27.00, 'Store', 0, 0, 1, '2018-11-30 16:55:52', '2018-11-30 16:55:52', NULL),
(54, '0', 87, 1, 10.00, 10.00, 'Store', 1, 1, 0, '2018-12-06 01:22:13', '2018-12-06 01:22:13', NULL),
(55, '0', 88, 1, 10.00, 10.00, 'Store', 1, 1, 0, '2018-12-06 01:34:43', '2018-12-06 01:34:43', NULL),
(56, '0', 89, 1, 12.00, 12.00, 'Store', 1, 1, 0, '2018-12-06 02:04:26', '2018-12-06 02:04:26', NULL),
(57, '0', 91, 1, 100.00, 100.00, 'Master', 1, 1, 0, '2018-12-06 15:15:22', '2018-12-06 15:15:22', NULL),
(58, '0', 92, 1, 10.00, 10.00, 'Master', 1, 1, 0, '2018-12-06 15:17:31', '2018-12-06 15:17:31', NULL),
(59, '0', 93, 1, 10.00, 15.00, 'Master', 1, 1, 0, '2018-12-07 12:54:51', '2018-12-07 12:54:51', NULL),
(60, '0', 94, 1, 20.00, 25.00, 'Master', 1, 1, 0, '2018-12-07 12:55:38', '2018-12-07 12:55:38', NULL),
(61, '0', 95, 1, 10.00, 10.00, 'Master', 1, 1, 0, '2018-12-07 13:00:22', '2018-12-07 13:00:22', NULL),
(65, '0', 100, 1, 10.00, 15.00, 'Clone', 81, 1, 0, '2018-12-07 16:14:46', '2018-12-07 16:14:46', NULL),
(66, '0', 101, 1, 20.00, 25.00, 'Clone', 81, 1, 0, '2018-12-07 16:14:46', '2018-12-07 16:14:46', NULL),
(67, '0', 102, 1, 10.00, 10.00, 'Clone', 81, 1, 0, '2018-12-07 16:14:46', '2018-12-07 16:14:46', NULL),
(68, '0', 103, 1, 10.00, 10.00, 'Master', 1, 1, 0, '2018-12-23 12:16:11', '2018-12-23 12:16:11', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `lsp_product_stockin_invoices`
--

CREATE TABLE `lsp_product_stockin_invoices` (
  `id` int(10) UNSIGNED NOT NULL,
  `order_tracking_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `vendor_id` int(10) NOT NULL DEFAULT '0',
  `order_date` date NOT NULL,
  `order_no` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_quantity` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `lsp_product_stockin_invoices`
--

INSERT INTO `lsp_product_stockin_invoices` (`id`, `order_tracking_id`, `vendor_id`, `order_date`, `order_no`, `total_quantity`, `store_id`, `created_by`, `updated_by`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, '1520091605', 2, '2018-03-03', '1', 1, 13, 1, 0, '2018-03-03 09:40:05', '2018-03-03 09:40:18', '2018-03-03 09:40:18'),
(2, '1520091723', 1, '2018-03-03', '2', 2, 13, 1, 1, '2018-03-03 09:42:03', '2018-03-03 11:09:55', '2018-03-03 11:09:55'),
(3, '1520103655', 3, '2018-03-04', '3', 10, 13, 1, 0, '2018-03-03 13:00:55', '2018-03-03 13:02:06', '2018-03-03 13:02:06'),
(4, '1520103679', 2, '2018-03-04', '4', 10, 13, 1, 0, '2018-03-03 13:01:19', '2018-03-03 13:01:56', '2018-03-03 13:01:56'),
(5, '1520103781', 1, '2018-03-04', '5', 8, 13, 1, 1, '2018-03-03 13:03:01', '2018-03-03 13:03:32', NULL),
(6, '1520105672', 3, '2018-03-04', '18', 1, 13, 1, 0, '2018-03-03 13:34:32', '2018-03-03 13:34:32', NULL),
(7, '1520282214', 1, '2018-03-06', '21', 4, 13, 1, 0, '2018-03-05 14:36:54', '2018-03-05 14:36:54', NULL),
(8, '1530825343', 1, '2018-07-06', '35', 6, 1, 1, 0, '2018-07-05 15:15:43', '2018-07-05 15:15:43', NULL),
(9, '1530825632', 2, '2018-07-06', '39', 68, 1, 1, 0, '2018-07-05 15:20:32', '2018-07-05 15:20:32', NULL),
(10, '1530825674', 3, '2018-07-06', '42', 301, 1, 1, 0, '2018-07-05 15:21:14', '2018-07-05 15:21:14', NULL),
(11, '1530825781', 1, '2018-07-06', '45', 29, 1, 1, 0, '2018-07-05 15:23:01', '2018-07-05 15:23:01', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `lsp_product_variances`
--

CREATE TABLE `lsp_product_variances` (
  `id` int(10) UNSIGNED NOT NULL,
  `variance_id` int(11) NOT NULL,
  `total_variance_quantity` int(11) NOT NULL DEFAULT '0',
  `store_id` int(11) NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `lsp_product_variances`
--

INSERT INTO `lsp_product_variances` (`id`, `variance_id`, `total_variance_quantity`, `store_id`, `created_by`, `updated_by`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1519073836, 5, 13, 1, 0, '2018-02-19 14:57:16', '2018-02-19 14:57:16', NULL),
(2, 1519584479, 12, 13, 1, 0, '2018-02-25 12:47:59', '2018-02-25 12:47:59', NULL),
(3, 1519584535, 14, 13, 1, 0, '2018-02-25 12:48:55', '2018-02-25 12:51:07', '2018-02-25 12:51:07'),
(4, 1519584479, 12, 13, 1, 0, '2018-02-25 14:08:15', '2018-02-25 14:10:57', '2018-02-25 14:10:57'),
(5, 1519584479, 17, 13, 1, 1, '2018-02-25 14:08:26', '2018-02-25 14:10:48', '2018-02-25 14:10:48'),
(6, 1519589526, 9, 13, 1, 1, '2018-02-25 14:12:06', '2018-02-25 14:12:37', NULL),
(7, 1519589647, 18, 13, 1, 1, '2018-02-25 14:14:07', '2018-02-25 14:16:34', NULL),
(8, 1519943495, 60, 13, 1, 0, '2018-03-01 16:31:35', '2018-03-01 16:31:35', NULL),
(9, 1519943578, 30, 13, 1, 0, '2018-03-01 16:32:58', '2018-03-01 16:32:58', NULL),
(10, 1519974898, 40, 13, 1, 0, '2018-03-02 01:14:59', '2018-03-02 01:14:59', NULL),
(11, 1519974978, 70, 13, 1, 0, '2018-03-02 01:16:18', '2018-03-02 01:16:18', NULL),
(12, 1520108795, 5, 13, 1, 0, '2018-03-03 14:26:35', '2018-03-03 14:26:35', NULL),
(13, 1535740789, 10, 1, 1, 0, '2018-08-31 12:39:50', '2018-08-31 12:39:50', NULL),
(14, 1537907312, 2, 1, 1, 0, '2018-09-25 14:28:32', '2018-09-25 14:28:32', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `lsp_product_variance_datas`
--

CREATE TABLE `lsp_product_variance_datas` (
  `id` int(10) UNSIGNED NOT NULL,
  `variance_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity_in_system` int(11) NOT NULL,
  `quantity_in_hand` int(11) NOT NULL,
  `variance_quanity` int(11) NOT NULL DEFAULT '0',
  `cost` double(8,2) NOT NULL,
  `variance_cost` double(8,2) NOT NULL,
  `store_id` int(11) NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `lsp_product_variance_datas`
--

INSERT INTO `lsp_product_variance_datas` (`id`, `variance_id`, `product_id`, `quantity_in_system`, `quantity_in_hand`, `variance_quanity`, `cost`, `variance_cost`, `store_id`, `created_by`, `updated_by`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1519073836, 3, 10, 2, 8, 50.00, 100.00, 13, 1, 0, '2018-02-19 14:57:16', '2018-02-25 14:11:32', '2018-02-25 14:11:32'),
(2, 1519073836, 6, 9, 2, 7, 11.25, 22.50, 13, 1, 0, '2018-02-19 14:57:16', '2018-02-25 14:11:32', '2018-02-25 14:11:32'),
(3, 1519073836, 8, 11, 1, 10, 9.00, 9.00, 13, 1, 0, '2018-02-19 14:57:16', '2018-02-25 14:11:32', '2018-02-25 14:11:32'),
(4, 1519584479, 5, 220, 5, 215, 33.00, 165.00, 13, 1, 0, '2018-02-25 12:47:59', '2018-02-25 14:08:15', '2018-02-25 14:08:15'),
(5, 1519584479, 8, 11, 2, 9, 9.00, 18.00, 13, 1, 0, '2018-02-25 12:47:59', '2018-02-25 14:08:15', '2018-02-25 14:08:15'),
(6, 1519584479, 12, 29, 5, 24, 12.00, 60.00, 13, 1, 0, '2018-02-25 12:47:59', '2018-02-25 14:08:15', '2018-02-25 14:08:15'),
(7, 1519584535, 6, 9, 2, 7, 11.25, 22.50, 13, 1, 0, '2018-02-25 12:48:55', '2018-02-25 12:51:07', '2018-02-25 12:51:07'),
(8, 1519584535, 9, 312, 6, 306, 33.00, 198.00, 13, 1, 0, '2018-02-25 12:48:55', '2018-02-25 12:51:07', '2018-02-25 12:51:07'),
(9, 1519584535, 15, 164, 6, 158, 22.00, 132.00, 13, 1, 0, '2018-02-25 12:48:55', '2018-02-25 12:51:07', '2018-02-25 12:51:07'),
(10, 1519584479, 4, 37, 5, 32, 12.00, 60.00, 13, 1, 0, '2018-02-25 14:08:15', '2018-02-25 14:08:25', '2018-02-25 14:08:25'),
(11, 1519584479, 5, 220, 2, 218, 33.00, 66.00, 13, 1, 0, '2018-02-25 14:08:15', '2018-02-25 14:08:25', '2018-02-25 14:08:25'),
(12, 1519584479, 6, 9, 5, 4, 11.25, 56.25, 13, 1, 0, '2018-02-25 14:08:15', '2018-02-25 14:08:25', '2018-02-25 14:08:25'),
(13, 1519584479, 10, 414, 5, 409, 27.00, 135.00, 13, 1, 0, '2018-02-25 14:08:26', '2018-02-25 14:10:37', '2018-02-25 14:10:37'),
(14, 1519584479, 11, 340, 6, 334, 27.00, 162.00, 13, 1, 0, '2018-02-25 14:08:26', '2018-02-25 14:10:37', '2018-02-25 14:10:37'),
(15, 1519584479, 12, 29, 5, 24, 12.00, 60.00, 13, 1, 0, '2018-02-25 14:08:26', '2018-02-25 14:10:37', '2018-02-25 14:10:37'),
(16, 1519584479, 13, 101, 5, 96, 12.00, 60.00, 13, 1, 0, '2018-02-25 14:10:38', '2018-02-25 14:10:48', '2018-02-25 14:10:48'),
(17, 1519584479, 14, 171, 7, 164, 22.00, 154.00, 13, 1, 0, '2018-02-25 14:10:38', '2018-02-25 14:10:48', '2018-02-25 14:10:48'),
(18, 1519584479, 15, 164, 5, 159, 22.00, 110.00, 13, 1, 0, '2018-02-25 14:10:38', '2018-02-25 14:10:48', '2018-02-25 14:10:48'),
(19, 1519073836, 1, 5, 2, 3, 1.00, 2.00, 13, 1, 0, '2018-02-25 14:11:32', '2018-02-25 14:11:32', NULL),
(20, 1519589526, 7, 141, 1, 140, 10.00, 10.00, 13, 1, 0, '2018-02-25 14:12:06', '2018-02-25 14:12:25', '2018-02-25 14:12:25'),
(21, 1519589526, 14, 171, 4, 167, 22.00, 88.00, 13, 1, 0, '2018-02-25 14:12:06', '2018-02-25 14:12:25', '2018-02-25 14:12:25'),
(22, 1519589526, 22, 4, 2, 2, 9.00, 18.00, 13, 1, 0, '2018-02-25 14:12:06', '2018-02-25 14:12:25', '2018-02-25 14:12:25'),
(23, 1519589526, 29, 1, 1, 0, 95.00, 95.00, 13, 1, 0, '2018-02-25 14:12:06', '2018-02-25 14:12:25', '2018-02-25 14:12:25'),
(24, 1519589526, 20, 8, 1, 7, 14.00, 14.00, 13, 1, 0, '2018-02-25 14:12:26', '2018-02-25 14:12:37', '2018-02-25 14:12:37'),
(25, 1519589526, 21, 5, 4, 1, 21.00, 84.00, 13, 1, 0, '2018-02-25 14:12:26', '2018-02-25 14:12:37', '2018-02-25 14:12:37'),
(26, 1519589526, 22, 4, 2, 2, 9.00, 18.00, 13, 1, 0, '2018-02-25 14:12:26', '2018-02-25 14:12:37', '2018-02-25 14:12:37'),
(27, 1519589526, 23, 5, 1, 4, 30.00, 30.00, 13, 1, 0, '2018-02-25 14:12:26', '2018-02-25 14:12:37', '2018-02-25 14:12:37'),
(28, 1519589526, 24, 0, 1, -1, 155.00, 155.00, 13, 1, 0, '2018-02-25 14:12:37', '2018-02-25 14:12:37', NULL),
(29, 1519589526, 25, 1, 4, -3, 40.00, 160.00, 13, 1, 0, '2018-02-25 14:12:37', '2018-02-25 14:12:37', NULL),
(30, 1519589526, 26, 1, 2, -1, 40.00, 80.00, 13, 1, 0, '2018-02-25 14:12:37', '2018-02-25 14:12:37', NULL),
(31, 1519589526, 27, 1, 2, -1, 42.00, 84.00, 13, 1, 0, '2018-02-25 14:12:37', '2018-02-25 14:12:37', NULL),
(32, 1519589647, 6, 9, 5, 4, 11.25, 56.25, 13, 1, 0, '2018-02-25 14:14:07', '2018-02-25 14:16:34', '2018-02-25 14:16:34'),
(33, 1519589647, 20, 8, 9, -1, 14.00, 126.00, 13, 1, 0, '2018-02-25 14:14:07', '2018-02-25 14:16:34', '2018-02-25 14:16:34'),
(34, 1519589647, 29, 1, 2, -1, 95.00, 190.00, 13, 1, 0, '2018-02-25 14:14:07', '2018-02-25 14:16:34', '2018-02-25 14:16:34'),
(35, 1519589647, 6, 9, 5, 4, 11.25, 56.25, 13, 1, 0, '2018-02-25 14:16:34', '2018-02-25 14:19:16', '2018-02-25 14:19:16'),
(36, 1519589647, 20, 8, 9, -1, 14.00, 126.00, 13, 1, 0, '2018-02-25 14:16:34', '2018-02-25 14:19:16', '2018-02-25 14:19:16'),
(37, 1519589647, 29, 1, 4, -3, 95.00, 380.00, 13, 1, 0, '2018-02-25 14:16:34', '2018-02-25 14:19:16', '2018-02-25 14:19:16'),
(38, 1519589647, 6, 9, 5, 4, 11.25, 56.25, 13, 1, 0, '2018-02-25 14:19:16', '2018-02-25 14:19:16', NULL),
(39, 1519589647, 20, 8, 9, -1, 14.00, 126.00, 13, 1, 0, '2018-02-25 14:19:16', '2018-02-25 14:19:16', NULL),
(40, 1519589647, 29, 1, 4, -3, 95.00, 380.00, 13, 1, 0, '2018-02-25 14:19:16', '2018-02-25 14:19:16', NULL),
(41, 1519943495, 1, 5, 20, -15, 1.00, 20.00, 13, 1, 0, '2018-03-01 16:31:35', '2018-03-01 16:31:35', NULL),
(42, 1519943495, 3, 10, 20, -10, 50.00, 1000.00, 13, 1, 0, '2018-03-01 16:31:35', '2018-03-01 16:31:35', NULL),
(43, 1519943495, 4, 37, 20, 17, 12.00, 240.00, 13, 1, 0, '2018-03-01 16:31:35', '2018-03-01 16:31:35', NULL),
(44, 1519943578, 1, 5, 10, -5, 1.00, 10.00, 13, 1, 0, '2018-03-01 16:32:58', '2018-03-01 16:32:58', NULL),
(45, 1519943578, 3, 10, 10, 0, 50.00, 500.00, 13, 1, 0, '2018-03-01 16:32:58', '2018-03-01 16:32:58', NULL),
(46, 1519943578, 4, 37, 10, 27, 12.00, 120.00, 13, 1, 0, '2018-03-01 16:32:58', '2018-03-01 16:32:58', NULL),
(47, 1519974898, 1, 5, 10, -5, 1.00, -5.00, 13, 1, 0, '2018-03-02 01:14:58', '2018-03-02 01:14:58', NULL),
(48, 1519974898, 3, 10, 10, 0, 50.00, 0.00, 13, 1, 0, '2018-03-02 01:14:58', '2018-03-02 01:14:58', NULL),
(49, 1519974898, 4, 37, 10, 27, 12.00, 324.00, 13, 1, 0, '2018-03-02 01:14:58', '2018-03-02 01:14:58', NULL),
(50, 1519974898, 5, 220, 10, 210, 33.00, 6930.00, 13, 1, 0, '2018-03-02 01:14:59', '2018-03-02 01:14:59', NULL),
(51, 1519974978, 1, 5, 10, -5, 1.00, -5.00, 13, 1, 0, '2018-03-02 01:16:18', '2018-03-02 01:16:18', NULL),
(52, 1519974978, 3, 10, 20, -10, 50.00, -500.00, 13, 1, 0, '2018-03-02 01:16:18', '2018-03-02 01:16:18', NULL),
(53, 1519974978, 4, 37, 20, 17, 12.00, 204.00, 13, 1, 0, '2018-03-02 01:16:18', '2018-03-02 01:16:18', NULL),
(54, 1519974978, 5, 220, 20, 200, 33.00, 6600.00, 13, 1, 0, '2018-03-02 01:16:18', '2018-03-02 01:16:18', NULL),
(55, 1520108795, 1, 5, 5, 0, 1.00, 0.00, 13, 1, 0, '2018-03-03 14:26:35', '2018-03-03 14:26:35', NULL),
(56, 1535740789, 45, 14, 2, 12, 20.00, 240.00, 1, 1, 0, '2018-08-31 12:39:49', '2018-08-31 12:39:49', NULL),
(57, 1535740789, 46, 2, 2, 0, 20.00, 0.00, 1, 1, 0, '2018-08-31 12:39:50', '2018-08-31 12:39:50', NULL),
(58, 1535740789, 47, 35, 2, 33, 22.00, 726.00, 1, 1, 0, '2018-08-31 12:39:50', '2018-08-31 12:39:50', NULL),
(59, 1535740789, 48, 213, 2, 211, 11.00, 2321.00, 1, 1, 0, '2018-08-31 12:39:50', '2018-08-31 12:39:50', NULL),
(60, 1535740789, 50, 13, 2, 11, 3.00, 33.00, 1, 1, 0, '2018-08-31 12:39:50', '2018-08-31 12:39:50', NULL),
(61, 1537907312, 45, 13, 2, 11, 20.00, 220.00, 1, 1, 0, '2018-09-25 14:28:32', '2018-09-25 14:28:32', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `lsp_repair_ticket_assets`
--

CREATE TABLE `lsp_repair_ticket_assets` (
  `id` int(11) NOT NULL,
  `asset_type` enum('repair','ticket') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'repair',
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `store_id` int(11) NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_by` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `lsp_repair_ticket_assets`
--

INSERT INTO `lsp_repair_ticket_assets` (`id`, `asset_type`, `name`, `store_id`, `created_by`, `updated_by`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'repair', 'Ever Been Wet', 1, 1, 0, '2018-12-22 17:08:22', '2018-12-18 16:23:01', '0000-00-00 00:00:00'),
(3, 'repair', 'Is work approved to proceed?', 1, 1, 0, '2018-12-22 11:07:43', '2018-12-22 11:07:43', '0000-00-00 00:00:00'),
(4, 'repair', 'Iphone, Iphone - X - Speaker', 1, 1, 0, '2018-12-23 23:58:58', '2018-12-23 23:58:58', '0000-00-00 00:00:00'),
(5, 'repair', 'Cash', 1, 1, 0, '2018-12-23 23:59:03', '2018-12-23 23:59:03', '0000-00-00 00:00:00'),
(6, 'repair', 'Cashs 1', 1, 1, 0, '2018-12-23 23:59:09', '2018-12-23 23:59:09', '0000-00-00 00:00:00'),
(7, 'repair', 'Cashs 2', 1, 1, 0, '2018-12-23 23:59:14', '2018-12-23 23:59:14', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `lsp_report_settings`
--

CREATE TABLE `lsp_report_settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `company_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `disclaimer` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `signature` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `tax_id` int(11) NOT NULL,
  `logo` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `store_id` int(11) NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `lsp_report_settings`
--

INSERT INTO `lsp_report_settings` (`id`, `company_name`, `phone`, `email`, `address`, `disclaimer`, `signature`, `tax_id`, `logo`, `store_id`, `created_by`, `updated_by`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'iDoctor', '4254184891', 'info@idoctorls.com', '960 South 24th Street West Suite B Billings, MT 59102', 'Thank you for choosing iDoctor, we are glad to help you with all your tech needs!', 'Thank you', 22, '1525103081.jpg', 1, 1, 1, '2018-04-30 09:12:14', '2018-04-30 09:44:41', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `lsp_retail_pos_summaries`
--

CREATE TABLE `lsp_retail_pos_summaries` (
  `id` int(10) UNSIGNED NOT NULL,
  `sales_invoice_quantity` int(11) NOT NULL,
  `sales_quantity` int(11) NOT NULL,
  `sales_amount` double(8,2) NOT NULL,
  `sales_cost` double(10,2) NOT NULL,
  `sales_profit` double(8,2) NOT NULL,
  `product_item_quantity` int(11) NOT NULL,
  `product_quantity` int(11) NOT NULL,
  `stockin_invoice_quantity` int(11) NOT NULL,
  `stockin_product_quantity` int(11) NOT NULL,
  `customer_quantity` int(11) NOT NULL,
  `variance_quantity` int(11) NOT NULL,
  `warranty_invoice_quantity` int(11) NOT NULL,
  `warranty_product_quantity` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `lsp_retail_pos_summaries`
--

INSERT INTO `lsp_retail_pos_summaries` (`id`, `sales_invoice_quantity`, `sales_quantity`, `sales_amount`, `sales_cost`, `sales_profit`, `product_item_quantity`, `product_quantity`, `stockin_invoice_quantity`, `stockin_product_quantity`, `customer_quantity`, `variance_quantity`, `warranty_invoice_quantity`, `warranty_product_quantity`, `store_id`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 139, 617, 17236.89, 12660.50, 4615.74, 33, -28, 7, 591, 3, 17, 7, 14, 0, 0, 0, NULL, '2019-01-02 14:58:16');

-- --------------------------------------------------------

--
-- Table structure for table `lsp_retail_pos_summary_date_wises`
--

CREATE TABLE `lsp_retail_pos_summary_date_wises` (
  `id` int(10) UNSIGNED NOT NULL,
  `sales_invoice_quantity` int(11) NOT NULL,
  `sales_quantity` int(11) NOT NULL,
  `sales_amount` double(8,2) NOT NULL,
  `sales_cost` double(8,2) NOT NULL,
  `sales_profit` double(8,2) NOT NULL,
  `product_item_quantity` int(11) NOT NULL,
  `product_quantity` int(11) NOT NULL,
  `stockin_invoice_quantity` int(11) NOT NULL,
  `stockin_product_quantity` int(11) NOT NULL,
  `customer_quantity` int(11) NOT NULL,
  `variance_quantity` int(11) NOT NULL,
  `warranty_invoice_quantity` int(11) NOT NULL,
  `warranty_product_quantity` int(11) NOT NULL,
  `report_date` date NOT NULL,
  `store_id` int(11) NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `lsp_retail_pos_summary_date_wises`
--

INSERT INTO `lsp_retail_pos_summary_date_wises` (`id`, `sales_invoice_quantity`, `sales_quantity`, `sales_amount`, `sales_cost`, `sales_profit`, `product_item_quantity`, `product_quantity`, `stockin_invoice_quantity`, `stockin_product_quantity`, `customer_quantity`, `variance_quantity`, `warranty_invoice_quantity`, `warranty_product_quantity`, `report_date`, `store_id`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(7, 1, 3, 45.00, 33.75, 11.25, 1, 6, 1, 6, 1, 0, 1, 1, '2018-03-05', 0, 0, 0, NULL, '2018-03-05 14:49:14'),
(8, 0, 0, 0.00, 0.00, 0.00, 0, 0, 0, 0, 0, 0, 0, 0, '2018-03-06', 0, 0, 0, NULL, NULL),
(9, 0, 0, 0.00, 0.00, 0.00, 0, 0, 0, 0, 0, 0, 0, 0, '2018-03-08', 0, 0, 0, NULL, NULL),
(10, 0, 0, 0.00, 0.00, 0.00, 0, 0, 0, 0, 0, 0, 0, 0, '2018-03-09', 0, 0, 0, NULL, NULL),
(11, 0, 0, 0.00, 0.00, 0.00, 0, 0, 0, 0, 0, 0, 0, 0, '2018-03-10', 0, 0, 0, NULL, NULL),
(12, 0, 0, 0.00, 0.00, 0.00, 0, 0, 0, 0, 0, 0, 0, 0, '2018-03-11', 0, 0, 0, NULL, NULL),
(13, 0, 0, 0.00, 0.00, 0.00, 0, 0, 0, 0, 0, 0, 0, 0, '2018-03-13', 0, 0, 0, NULL, NULL),
(14, 0, 0, 0.00, 0.00, 0.00, 0, 0, 0, 0, 0, 0, 0, 0, '2018-03-16', 0, 0, 0, NULL, NULL),
(15, 0, 0, 0.00, 0.00, 0.00, 0, 0, 0, 0, 0, 0, 0, 0, '2018-03-18', 0, 0, 0, NULL, NULL),
(16, 20, 267, 4609.42, 3576.50, 903.92, 0, 0, 0, 0, 0, 0, 0, 0, '2018-03-19', 0, 0, 0, NULL, '2018-03-19 15:17:35'),
(17, 2, 14, 500.58, 456.00, 30.00, 0, 0, 0, 0, 0, 0, 0, 0, '2018-03-20', 0, 0, 0, NULL, '2018-03-20 11:27:09'),
(18, 0, 0, 0.00, 0.00, 0.00, 0, 0, 0, 0, 0, 0, 0, 0, '2018-03-21', 0, 0, 0, NULL, NULL),
(19, 4, 27, 455.83, 436.00, 29.00, 0, 0, 0, 0, 0, 0, 0, 0, '2018-03-22', 0, 0, 0, NULL, '2018-03-22 17:03:48'),
(20, 2, 13, 239.12, 229.00, 15.00, 0, 6, 0, 0, 0, 0, 0, 0, '2018-03-23', 0, 0, 0, NULL, '2018-03-23 17:03:14'),
(21, 0, 0, 0.00, 0.00, 0.00, 0, 0, 0, 0, 0, 0, 0, 0, '2018-03-24', 0, 0, 0, NULL, NULL),
(22, 0, 0, 0.00, 0.00, 0.00, 0, 0, 0, 0, 0, 0, 0, 0, '2018-03-26', 0, 0, 0, NULL, NULL),
(23, 0, 0, 0.00, 0.00, 0.00, 0, 0, 0, 0, 0, 0, 0, 0, '2018-03-27', 0, 0, 0, NULL, NULL),
(24, 0, 0, 0.00, 0.00, 0.00, 0, 0, 0, 0, 0, 0, 0, 0, '2018-03-30', 0, 0, 0, NULL, NULL),
(25, 0, 0, 0.00, 0.00, 0.00, 0, 0, 0, 0, 0, 0, 0, 0, '2018-04-05', 0, 0, 0, NULL, NULL),
(26, 0, 0, 0.00, 0.00, 0.00, 0, 0, 0, 0, 0, 0, 0, 0, '2018-04-06', 0, 0, 0, NULL, NULL),
(27, 0, 0, 0.00, 0.00, 0.00, 0, 0, 0, 0, 0, 0, 0, 0, '2018-04-07', 0, 0, 0, NULL, NULL),
(28, 4, 24, 302.82, 289.00, 20.00, 0, 0, 0, 0, 0, 0, 0, 0, '2018-04-08', 0, 0, 0, NULL, '2018-04-08 16:13:08'),
(29, 3, 16, 191.10, 199.00, -4.00, 0, 0, 0, 0, 0, 0, 0, 0, '2018-04-09', 0, 0, 0, NULL, '2018-04-09 16:35:44'),
(30, 1, 4, 54.88, 56.00, 0.00, 0, 0, 0, 0, 0, 0, 0, 0, '2018-04-10', 0, 0, 0, NULL, '2018-04-10 14:37:25'),
(31, 0, 0, 0.00, 0.00, 0.00, 0, 0, 0, 0, 0, 0, 0, 0, '2018-04-12', 0, 0, 0, NULL, NULL),
(32, 0, 0, 0.00, 0.00, 0.00, 0, 0, 0, 0, 1, 0, 0, 0, '2018-04-13', 0, 0, 0, NULL, '2018-04-13 16:41:52'),
(33, 0, 0, 0.00, 0.00, 0.00, 1, 1, 0, 1, 0, 0, 0, 0, '2018-04-14', 0, 0, 0, NULL, '2018-04-14 12:31:31'),
(34, 0, 0, 0.00, 0.00, 0.00, 0, 0, 0, 0, 0, 0, 0, 0, '2018-04-16', 0, 0, 0, NULL, NULL),
(35, 1, 1, 9.80, 20.00, -10.00, 0, 0, 0, 0, 0, 0, 0, 0, '2018-04-29', 0, 0, 0, NULL, NULL),
(36, 0, 0, 0.00, 0.00, 0.00, 0, 0, 0, 0, 0, 0, 0, 0, '2018-04-30', 0, 0, 0, NULL, NULL),
(37, 0, 0, 0.00, 0.00, 0.00, 8, 148, 0, 148, 0, 0, 0, 0, '2018-05-01', 0, 0, 0, NULL, '2018-05-01 15:26:54'),
(38, 0, 0, 0.00, 0.00, 0.00, 0, 0, 0, 0, 0, 0, 0, 0, '2018-05-02', 0, 0, 0, NULL, NULL),
(39, 1, 8, 1666.00, 1300.00, 400.00, 0, 0, 0, 0, 0, 0, 0, 0, '2018-05-03', 0, 0, 0, NULL, NULL),
(40, 0, 0, 0.00, 0.00, 0.00, 0, 0, 0, 0, 0, 0, 0, 0, '2018-05-10', 0, 0, 0, NULL, NULL),
(41, 9, 27, 2376.50, 1867.00, 558.00, 0, 0, 0, 0, 0, 0, 0, 0, '2018-05-11', 0, 0, 0, NULL, '2018-05-11 17:08:21'),
(42, 0, 0, 0.00, 0.00, 0.00, 1, 1, 0, 1, 0, 0, 0, 0, '2018-05-18', 0, 0, 0, NULL, '2018-05-18 15:49:23'),
(43, 0, 0, 0.00, 0.00, 0.00, 0, 0, 0, 0, 0, 0, 0, 0, '2018-06-01', 0, 0, 0, NULL, NULL),
(44, 0, 0, 0.00, 0.00, 0.00, 0, 0, 0, 0, 0, 0, 0, 0, '2018-06-04', 0, 0, 0, NULL, NULL),
(45, 0, 0, 0.00, 0.00, 0.00, 0, 0, 0, 0, 0, 0, 0, 0, '2018-06-05', 0, 0, 0, NULL, NULL),
(46, 0, 0, 0.00, 0.00, 0.00, 0, 0, 0, 0, 0, 0, 0, 0, '2018-06-07', 0, 0, 0, NULL, NULL),
(47, 9, 24, 491.96, 243.00, 259.00, 0, 0, 0, 0, 0, 0, 0, 0, '2018-06-08', 0, 0, 0, NULL, '2018-06-08 16:11:27'),
(48, 0, 0, 0.00, 0.00, 0.00, 0, 0, 0, 0, 0, 0, 0, 0, '2018-06-09', 0, 0, 0, NULL, NULL),
(49, 0, 0, 0.00, 0.00, 0.00, 0, 0, 0, 0, 0, 0, 0, 0, '2018-06-22', 0, 0, 0, NULL, NULL),
(50, 0, 0, 0.00, 0.00, 0.00, 0, 0, 0, 0, 0, 0, 0, 0, '2018-06-28', 0, 0, 0, NULL, NULL),
(51, 7, 20, 3100.72, 2316.00, 848.00, 0, 0, 0, 0, 0, 0, 0, 0, '2018-06-29', 0, 0, 0, NULL, '2018-06-29 15:01:58'),
(52, 0, 0, 0.00, 0.00, 0.00, 0, 0, 0, 0, 0, 0, 0, 0, '2018-07-02', 0, 0, 0, NULL, NULL),
(53, 1, 4, 78.40, 40.00, 40.00, 0, 0, 0, 0, 0, 0, 0, 0, '2018-07-03', 0, 0, 0, NULL, '2018-07-03 14:05:52'),
(54, 0, 0, 0.00, 0.00, 0.00, 0, 404, 4, 404, 0, 0, 0, 0, '2018-07-05', 0, 0, 0, NULL, '2018-07-05 15:23:01'),
(55, 0, 0, 0.00, 0.00, 0.00, 0, 0, 0, 0, 0, 0, 0, 0, '2018-07-06', 0, 0, 0, NULL, NULL),
(56, 1, 3, 58.80, 30.00, 30.00, 0, 0, 0, 0, 0, 0, 0, 0, '2018-07-09', 0, 0, 0, NULL, '2018-07-09 14:42:05'),
(57, 2, 5, 98.00, 50.00, 50.00, 0, 0, 0, 0, 0, 0, 0, 0, '2018-07-10', 0, 0, 0, NULL, '2018-07-10 13:14:35'),
(58, 0, 0, 0.00, 0.00, 0.00, 0, 0, 0, 0, 0, 0, 0, 0, '2018-07-12', 0, 0, 0, NULL, NULL),
(59, 0, 0, 0.00, 0.00, 0.00, 0, 0, 0, 0, 0, 0, 0, 0, '2018-07-18', 0, 0, 0, NULL, NULL),
(60, 5, 10, 196.00, 100.00, 100.00, 0, 0, 0, 0, 0, 0, 0, 0, '2018-07-21', 0, 0, 0, NULL, '2018-07-21 14:32:27'),
(61, 0, 0, 0.00, 0.00, 0.00, 0, 0, 0, 0, 0, 0, 0, 0, '2018-07-25', 0, 0, 0, NULL, NULL),
(62, 3, 6, 90.16, 47.00, 45.00, 0, 0, 0, 0, 0, 0, 0, 0, '2018-07-27', 0, 0, 0, NULL, '2018-07-27 15:07:56'),
(63, 0, 0, 0.00, 0.00, 0.00, 0, 0, 0, 0, 0, 0, 1, 1, '2018-07-28', 0, 0, 0, NULL, NULL),
(64, 0, 0, 0.00, 0.00, 0.00, 0, 0, 0, 0, 0, 0, 1, 3, '2018-08-03', 0, 0, 0, NULL, NULL),
(65, 0, 0, 0.00, 0.00, 0.00, 0, 0, 0, 0, 0, 0, 2, 6, '2018-08-04', 0, 0, 0, NULL, '2018-08-04 15:02:42'),
(66, 0, 0, 0.00, 0.00, 0.00, 0, 0, 0, 0, 0, 0, 0, 0, '2018-08-27', 0, 0, 0, NULL, NULL),
(67, 0, 0, 0.00, 0.00, 0.00, 0, 0, 0, 0, 0, 0, 0, 0, '2018-08-30', 0, 0, 0, NULL, NULL),
(68, 1, 1, 0.98, 1.00, 0.00, 1, 1, 0, 1, 0, 0, 0, 0, '2018-08-31', 0, 0, 0, NULL, '2018-08-31 09:48:05'),
(69, 0, 0, 0.00, 0.00, 0.00, 1, 1, 0, 1, 0, 0, 0, 0, '2018-09-01', 0, 0, 0, NULL, NULL),
(70, 0, 0, 0.00, 0.00, 0.00, 0, 0, 0, 0, 0, 0, 0, 0, '2018-09-02', 0, 0, 0, NULL, NULL),
(71, 0, 0, 0.00, 0.00, 0.00, 0, 0, 0, 0, 0, 0, 0, 0, '2018-09-06', 0, 0, 0, NULL, NULL),
(72, 28, 101, 2156.00, 1070.00, 1130.00, 0, 0, 0, 0, 0, 0, 0, 0, '2018-09-14', 0, 0, 0, NULL, '2018-09-14 15:09:26'),
(73, 0, 0, 0.00, 0.00, 0.00, 0, 0, 0, 0, 0, 0, 0, 0, '2018-09-17', 0, 0, 0, NULL, NULL),
(74, 1, 3, 58.80, 30.00, 30.00, 0, 3, 0, 0, 0, 0, 0, 0, '2018-09-18', 0, 0, 0, NULL, NULL),
(75, 0, 0, 0.00, 0.00, 0.00, 0, 0, 0, 0, 0, 0, 0, 0, '2018-09-23', 0, 0, 0, NULL, NULL),
(76, 0, 0, 0.00, 0.00, 0.00, 0, 0, 0, 0, 0, 0, 0, 0, '2018-09-24', 0, 0, 0, NULL, NULL),
(77, 1, 1, 10.00, 20.00, -10.00, 0, 0, 0, 0, 0, 0, 1, 2, '2018-09-25', 0, 0, 0, NULL, '2018-09-25 14:44:56'),
(78, 0, 0, 0.00, 0.00, 0.00, 0, 0, 0, 0, 0, 0, 0, 0, '2018-09-26', 0, 0, 0, NULL, NULL),
(79, 0, 0, 0.00, 0.00, 0.00, 0, 0, 0, 0, 0, 0, 0, 0, '2018-09-28', 0, 0, 0, NULL, NULL),
(80, 0, 0, 0.00, 0.00, 0.00, 1, 1, 0, 1, 0, 0, 0, 0, '2018-09-29', 0, 0, 0, NULL, '2018-09-29 15:03:20'),
(81, 0, 0, 0.00, 0.00, 0.00, 0, 0, 0, 0, 0, 0, 0, 0, '2018-10-01', 0, 0, 0, NULL, NULL),
(82, 0, 0, 0.00, 0.00, 0.00, 0, 0, 0, 0, 0, 0, 0, 0, '2018-10-02', 0, 0, 0, NULL, NULL),
(83, 0, 0, 0.00, 0.00, 0.00, 0, 0, 0, 0, 0, 0, 0, 0, '2018-10-03', 0, 0, 0, NULL, NULL),
(84, 0, 0, 0.00, 0.00, 0.00, 0, 0, 0, 0, 0, 0, 0, 0, '2018-10-06', 0, 0, 0, NULL, NULL),
(85, 0, 0, 0.00, 0.00, 0.00, 0, 0, 0, 0, 0, 0, 0, 0, '2018-10-08', 0, 0, 0, NULL, NULL),
(86, 0, 0, 0.00, 0.00, 0.00, 0, 0, 0, 0, 0, 0, 0, 0, '2018-10-13', 0, 0, 0, NULL, NULL),
(87, 0, 0, 0.00, 0.00, 0.00, 0, 0, 0, 0, 0, 0, 0, 0, '2018-10-15', 0, 0, 0, NULL, NULL),
(88, 0, 0, 0.00, 0.00, 0.00, 0, 0, 0, 0, 0, 0, 0, 0, '2018-10-16', 0, 0, 0, NULL, NULL),
(89, 1, 4, 66.64, 22.00, 46.00, 0, 0, 0, 0, 0, 0, 0, 0, '2018-10-17', 0, 0, 0, NULL, '2018-10-17 13:53:27'),
(90, 1, 2, 1.96, 2.00, 0.00, 0, 0, 0, 0, 0, 0, 0, 0, '2018-10-18', 0, 0, 0, NULL, '2018-10-18 16:11:59'),
(91, 1, 5, 9.80, 5.00, 5.00, 0, 0, 0, 0, 0, 0, 0, 0, '2018-10-19', 0, 0, 0, NULL, NULL),
(92, 2, 8, 23.52, 10.00, 14.00, 0, 0, 0, 0, 0, 0, 0, 0, '2018-11-02', 0, 0, 0, NULL, '2018-11-02 15:51:55'),
(93, 0, 0, 0.00, 0.00, 0.00, 0, 0, 0, 0, 0, 0, 0, 0, '2018-11-03', 0, 0, 0, NULL, NULL),
(94, 0, 0, 0.00, 0.00, 0.00, 0, 0, 0, 0, 0, 0, 0, 0, '2018-11-06', 0, 0, 0, NULL, NULL),
(95, 0, 0, 0.00, 0.00, 0.00, 0, 0, 0, 0, 0, 0, 0, 0, '2018-11-09', 0, 0, 0, NULL, NULL),
(96, 0, 0, 0.00, 0.00, 0.00, 0, 0, 0, 0, 0, 0, 0, 0, '2018-11-10', 0, 0, 0, NULL, NULL),
(97, 0, 0, 0.00, 0.00, 0.00, 0, 0, 0, 0, 0, 0, 0, 0, '2018-11-12', 0, 0, 0, NULL, NULL),
(98, 0, 0, 0.00, 0.00, 0.00, 0, 0, 0, 0, 0, 0, 0, 0, '2018-11-16', 0, 0, 0, NULL, NULL),
(99, 0, 0, 0.00, 0.00, 0.00, 0, 0, 0, 0, 0, 0, 0, 0, '2018-11-20', 0, 0, 0, NULL, NULL),
(100, 0, 0, 0.00, 0.00, 0.00, 0, 0, 0, 0, 0, 0, 0, 0, '2018-11-21', 0, 0, 0, NULL, NULL),
(101, 0, 0, 0.00, 0.00, 0.00, 0, 0, 0, 0, 0, 0, 0, 0, '2018-11-23', 0, 0, 0, NULL, NULL),
(102, 0, 0, 0.00, 0.00, 0.00, 0, 0, 0, 0, 0, 0, 0, 0, '2018-11-24', 0, 0, 0, NULL, NULL),
(103, 0, 0, 0.00, 0.00, 0.00, 0, 0, 0, 0, 0, 0, 0, 0, '2018-11-27', 0, 0, 0, NULL, NULL),
(104, 0, 0, 0.00, 0.00, 0.00, 0, 0, 0, 0, 0, 0, 0, 0, '2018-11-29', 0, 0, 0, NULL, NULL),
(105, 0, 0, 0.00, 0.00, 0.00, 1, 2, 0, 2, 0, 0, 0, 0, '2018-11-30', 0, 0, 0, NULL, '2018-11-30 16:55:52'),
(106, 0, 0, 0.00, 0.00, 0.00, 0, 0, 0, 0, 0, 0, 0, 0, '2018-12-04', 0, 0, 0, NULL, NULL),
(108, 0, 0, 0.00, 0.00, 0.00, 5, 5, 0, 5, 0, 0, 0, 0, '2018-12-06', 0, 0, 0, NULL, '2018-12-06 15:17:31'),
(109, 0, 0, 0.00, 0.00, 0.00, 9, 9, 0, 9, 0, 0, 0, 0, '2018-12-07', 0, 0, 0, NULL, '2018-12-07 16:14:46'),
(110, 0, 0, 0.00, 0.00, 0.00, 1, 1, 0, 1, 0, 0, 0, 0, '2018-12-23', 0, 0, 0, NULL, '2018-12-23 12:16:11'),
(111, 4, 5, 91.14, 74.00, 19.00, 0, 0, 0, 0, 0, 0, 0, 0, '2018-12-27', 0, 0, 0, NULL, '2018-12-27 14:56:27'),
(112, 0, 0, 0.00, 0.00, 0.00, 0, 0, 0, 0, 0, 0, 0, 0, '2018-12-28', 0, 0, 0, NULL, NULL),
(113, 0, 0, 0.00, 0.00, 0.00, 0, 0, 0, 0, 0, 0, 0, 0, '2018-12-29', 0, 0, 0, NULL, NULL),
(114, 2, 3, 11.59, 17.00, -5.00, 0, 0, 0, 0, 0, 0, 0, 0, '2018-12-30', 0, 0, 0, NULL, '2018-12-30 05:41:05'),
(115, 0, 0, 0.00, 0.00, 0.00, 0, 0, 0, 0, 0, 0, 0, 0, '2018-12-31', 0, 0, 0, NULL, NULL),
(116, 1, 2, 8.69, 16.00, -7.00, 0, 0, 0, 0, 0, 0, 0, 0, '2019-01-01', 0, 0, 0, NULL, '2019-01-01 03:32:55'),
(117, 3, 3, 58.80, 45.00, 15.00, 0, 0, 0, 0, 0, 0, 0, 0, '2019-01-02', 0, 0, 0, NULL, '2019-01-02 14:58:17');

-- --------------------------------------------------------

--
-- Table structure for table `lsp_roles`
--

CREATE TABLE `lsp_roles` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `store_id` int(11) NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_by` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `lsp_roles`
--

INSERT INTO `lsp_roles` (`id`, `name`, `store_id`, `created_by`, `updated_by`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Super Admin', 1, 1, 0, '2018-09-01 13:15:52', '2018-09-01 13:15:52', '0000-00-00 00:00:00'),
(2, 'Shop Admin', 1, 1, 0, '2018-09-01 13:16:07', '2018-09-01 13:16:07', '0000-00-00 00:00:00'),
(3, 'Store Manager', 1, 1, 0, '2018-09-01 13:16:14', '2018-09-01 13:16:14', '0000-00-00 00:00:00'),
(4, 'Cashier', 1, 1, 0, '2018-09-01 13:16:20', '2018-09-01 13:16:20', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `lsp_role_wise_menus`
--

CREATE TABLE `lsp_role_wise_menus` (
  `id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_by` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `lsp_role_wise_menus`
--

INSERT INTO `lsp_role_wise_menus` (`id`, `role_id`, `menu_id`, `store_id`, `created_by`, `updated_by`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 2, 1, 1, 1, 0, '2018-09-01 13:28:31', '2018-09-01 13:28:31', '0000-00-00 00:00:00'),
(2, 2, 54, 1, 1, 0, '2018-09-01 13:28:31', '2018-09-01 13:28:31', '0000-00-00 00:00:00'),
(3, 2, 55, 1, 1, 0, '2018-09-01 13:28:31', '2018-09-01 13:28:31', '0000-00-00 00:00:00'),
(4, 2, 56, 1, 1, 0, '2018-09-01 13:28:32', '2018-09-01 13:28:32', '0000-00-00 00:00:00'),
(5, 2, 2, 1, 1, 0, '2018-09-01 13:28:32', '2018-09-01 13:28:32', '0000-00-00 00:00:00'),
(6, 2, 3, 1, 1, 0, '2018-09-01 13:28:32', '2018-09-01 13:28:32', '0000-00-00 00:00:00'),
(7, 2, 4, 1, 1, 0, '2018-09-01 13:28:32', '2018-09-01 13:28:32', '0000-00-00 00:00:00'),
(8, 2, 5, 1, 1, 0, '2018-09-01 13:28:32', '2018-09-01 13:28:32', '0000-00-00 00:00:00'),
(9, 2, 7, 1, 1, 0, '2018-09-01 13:28:32', '2018-09-01 13:28:32', '0000-00-00 00:00:00'),
(10, 2, 57, 1, 1, 0, '2018-09-01 13:28:32', '2018-09-01 13:28:32', '0000-00-00 00:00:00'),
(11, 2, 58, 1, 1, 0, '2018-09-01 13:28:32', '2018-09-01 13:28:32', '0000-00-00 00:00:00'),
(12, 2, 59, 1, 1, 0, '2018-09-01 13:28:32', '2018-09-01 13:28:32', '0000-00-00 00:00:00'),
(13, 2, 8, 1, 1, 0, '2018-09-01 13:28:32', '2018-09-01 13:28:32', '0000-00-00 00:00:00'),
(14, 2, 9, 1, 1, 0, '2018-09-01 13:28:32', '2018-09-01 13:28:32', '0000-00-00 00:00:00'),
(15, 2, 10, 1, 1, 0, '2018-09-01 13:28:32', '2018-09-01 13:28:32', '0000-00-00 00:00:00'),
(16, 2, 11, 1, 1, 0, '2018-09-01 13:28:32', '2018-09-01 13:28:32', '0000-00-00 00:00:00'),
(17, 2, 12, 1, 1, 0, '2018-09-01 13:28:32', '2018-09-01 13:28:32', '0000-00-00 00:00:00'),
(18, 2, 13, 1, 1, 0, '2018-09-01 13:28:32', '2018-09-01 13:28:32', '0000-00-00 00:00:00'),
(19, 2, 14, 1, 1, 0, '2018-09-01 13:28:32', '2018-09-01 13:28:32', '0000-00-00 00:00:00'),
(20, 2, 15, 1, 1, 0, '2018-09-01 13:28:32', '2018-09-01 13:28:32', '0000-00-00 00:00:00'),
(21, 2, 60, 1, 1, 0, '2018-09-01 13:28:32', '2018-09-01 13:28:32', '0000-00-00 00:00:00'),
(22, 2, 61, 1, 1, 0, '2018-09-01 13:28:33', '2018-09-01 13:28:33', '0000-00-00 00:00:00'),
(23, 2, 62, 1, 1, 0, '2018-09-01 13:28:33', '2018-09-01 13:28:33', '0000-00-00 00:00:00'),
(24, 2, 63, 1, 1, 0, '2018-09-01 13:28:33', '2018-09-01 13:28:33', '0000-00-00 00:00:00'),
(25, 2, 64, 1, 1, 0, '2018-09-01 13:28:33', '2018-09-01 13:28:33', '0000-00-00 00:00:00'),
(26, 2, 65, 1, 1, 0, '2018-09-01 13:28:33', '2018-09-01 13:28:33', '0000-00-00 00:00:00'),
(27, 2, 66, 1, 1, 0, '2018-09-01 13:28:33', '2018-09-01 13:28:33', '0000-00-00 00:00:00'),
(28, 2, 16, 1, 1, 0, '2018-09-01 13:28:33', '2018-09-01 13:28:33', '0000-00-00 00:00:00'),
(29, 2, 17, 1, 1, 0, '2018-09-01 13:28:33', '2018-09-01 13:28:33', '0000-00-00 00:00:00'),
(30, 2, 18, 1, 1, 0, '2018-09-01 13:28:33', '2018-09-01 13:28:33', '0000-00-00 00:00:00'),
(31, 2, 19, 1, 1, 0, '2018-09-01 13:28:33', '2018-09-01 13:28:33', '0000-00-00 00:00:00'),
(32, 2, 20, 1, 1, 0, '2018-09-01 13:28:33', '2018-09-01 13:28:33', '0000-00-00 00:00:00'),
(33, 2, 21, 1, 1, 0, '2018-09-01 13:28:33', '2018-09-01 13:28:33', '0000-00-00 00:00:00'),
(34, 2, 22, 1, 1, 0, '2018-09-01 13:28:33', '2018-09-01 13:28:33', '0000-00-00 00:00:00'),
(35, 2, 67, 1, 1, 0, '2018-09-01 13:28:33', '2018-09-01 13:28:33', '0000-00-00 00:00:00'),
(36, 2, 68, 1, 1, 0, '2018-09-01 13:28:33', '2018-09-01 13:28:33', '0000-00-00 00:00:00'),
(37, 2, 69, 1, 1, 0, '2018-09-01 13:28:33', '2018-09-01 13:28:33', '0000-00-00 00:00:00'),
(38, 2, 23, 1, 1, 0, '2018-09-01 13:28:33', '2018-09-01 13:28:33', '0000-00-00 00:00:00'),
(39, 2, 24, 1, 1, 0, '2018-09-01 13:28:34', '2018-09-01 13:28:34', '0000-00-00 00:00:00'),
(40, 2, 25, 1, 1, 0, '2018-09-01 13:28:34', '2018-09-01 13:28:34', '0000-00-00 00:00:00'),
(41, 2, 26, 1, 1, 0, '2018-09-01 13:28:34', '2018-09-01 13:28:34', '0000-00-00 00:00:00'),
(42, 2, 27, 1, 1, 0, '2018-09-01 13:28:34', '2018-09-01 13:28:34', '0000-00-00 00:00:00'),
(43, 2, 28, 1, 1, 0, '2018-09-01 13:28:34', '2018-09-01 13:28:34', '0000-00-00 00:00:00'),
(44, 2, 29, 1, 1, 0, '2018-09-01 13:28:34', '2018-09-01 13:28:34', '0000-00-00 00:00:00'),
(45, 2, 30, 1, 1, 0, '2018-09-01 13:28:34', '2018-09-01 13:28:34', '0000-00-00 00:00:00'),
(46, 2, 31, 1, 1, 0, '2018-09-01 13:28:34', '2018-09-01 13:28:34', '0000-00-00 00:00:00'),
(47, 2, 32, 1, 1, 0, '2018-09-01 13:28:34', '2018-09-01 13:28:34', '0000-00-00 00:00:00'),
(48, 2, 33, 1, 1, 0, '2018-09-01 13:28:34', '2018-09-01 13:28:34', '0000-00-00 00:00:00'),
(49, 2, 34, 1, 1, 0, '2018-09-01 13:28:34', '2018-09-01 13:28:34', '0000-00-00 00:00:00'),
(50, 2, 35, 1, 1, 0, '2018-09-01 13:28:34', '2018-09-01 13:28:34', '0000-00-00 00:00:00'),
(51, 2, 36, 1, 1, 0, '2018-09-01 13:28:34', '2018-09-01 13:28:34', '0000-00-00 00:00:00'),
(52, 2, 37, 1, 1, 0, '2018-09-01 13:28:34', '2018-09-01 13:28:34', '0000-00-00 00:00:00'),
(53, 2, 38, 1, 1, 0, '2018-09-01 13:28:34', '2018-09-01 13:28:34', '0000-00-00 00:00:00'),
(54, 2, 39, 1, 1, 0, '2018-09-01 13:28:34', '2018-09-01 13:28:34', '0000-00-00 00:00:00'),
(55, 2, 40, 1, 1, 0, '2018-09-01 13:28:34', '2018-09-01 13:28:34', '0000-00-00 00:00:00'),
(56, 2, 41, 1, 1, 0, '2018-09-01 13:28:34', '2018-09-01 13:28:34', '0000-00-00 00:00:00'),
(57, 2, 43, 1, 1, 0, '2018-09-01 13:28:35', '2018-09-01 13:28:35', '0000-00-00 00:00:00'),
(58, 2, 44, 1, 1, 0, '2018-09-01 13:28:35', '2018-09-01 13:28:35', '0000-00-00 00:00:00'),
(59, 2, 70, 1, 1, 0, '2018-09-01 13:28:35', '2018-09-01 13:28:35', '0000-00-00 00:00:00'),
(60, 2, 71, 1, 1, 0, '2018-09-01 13:28:35', '2018-09-01 13:28:35', '0000-00-00 00:00:00'),
(61, 2, 72, 1, 1, 0, '2018-09-01 13:28:35', '2018-09-01 13:28:35', '0000-00-00 00:00:00'),
(62, 2, 73, 1, 1, 0, '2018-09-01 13:28:35', '2018-09-01 13:28:35', '0000-00-00 00:00:00'),
(63, 2, 48, 1, 1, 0, '2018-09-01 13:28:35', '2018-09-01 13:28:35', '0000-00-00 00:00:00'),
(64, 2, 49, 1, 1, 0, '2018-09-01 13:28:35', '2018-09-01 13:28:35', '0000-00-00 00:00:00'),
(65, 2, 50, 1, 1, 0, '2018-09-01 13:28:35', '2018-09-01 13:28:35', '0000-00-00 00:00:00'),
(66, 2, 74, 1, 1, 0, '2018-09-01 13:28:35', '2018-09-01 13:28:35', '0000-00-00 00:00:00'),
(67, 2, 75, 1, 1, 0, '2018-09-01 13:28:35', '2018-09-01 13:28:35', '0000-00-00 00:00:00'),
(68, 3, 1, 1, 1, 0, '2018-09-01 13:31:43', '2018-09-01 13:31:43', '0000-00-00 00:00:00'),
(69, 3, 56, 1, 1, 0, '2018-09-01 13:31:43', '2018-09-01 13:31:43', '0000-00-00 00:00:00'),
(70, 3, 2, 1, 1, 0, '2018-09-01 13:31:43', '2018-09-01 13:31:43', '0000-00-00 00:00:00'),
(71, 3, 3, 1, 1, 0, '2018-09-01 13:31:43', '2018-09-01 13:31:43', '0000-00-00 00:00:00'),
(72, 3, 4, 1, 1, 0, '2018-09-01 13:31:43', '2018-09-01 13:31:43', '0000-00-00 00:00:00'),
(73, 3, 5, 1, 1, 0, '2018-09-01 13:31:43', '2018-09-01 13:31:43', '0000-00-00 00:00:00'),
(74, 3, 7, 1, 1, 0, '2018-09-01 13:31:43', '2018-09-01 13:31:43', '0000-00-00 00:00:00'),
(75, 3, 57, 1, 1, 0, '2018-09-01 13:31:43', '2018-09-01 13:31:43', '0000-00-00 00:00:00'),
(76, 3, 58, 1, 1, 0, '2018-09-01 13:31:44', '2018-09-01 13:31:44', '0000-00-00 00:00:00'),
(77, 3, 59, 1, 1, 0, '2018-09-01 13:31:44', '2018-09-01 13:31:44', '0000-00-00 00:00:00'),
(78, 3, 8, 1, 1, 0, '2018-09-01 13:31:44', '2018-09-01 13:31:44', '0000-00-00 00:00:00'),
(79, 3, 9, 1, 1, 0, '2018-09-01 13:31:44', '2018-09-01 13:31:44', '0000-00-00 00:00:00'),
(80, 3, 10, 1, 1, 0, '2018-09-01 13:31:44', '2018-09-01 13:31:44', '0000-00-00 00:00:00'),
(81, 3, 11, 1, 1, 0, '2018-09-01 13:31:44', '2018-09-01 13:31:44', '0000-00-00 00:00:00'),
(82, 3, 12, 1, 1, 0, '2018-09-01 13:31:44', '2018-09-01 13:31:44', '0000-00-00 00:00:00'),
(83, 3, 13, 1, 1, 0, '2018-09-01 13:31:44', '2018-09-01 13:31:44', '0000-00-00 00:00:00'),
(84, 3, 14, 1, 1, 0, '2018-09-01 13:31:44', '2018-09-01 13:31:44', '0000-00-00 00:00:00'),
(85, 3, 15, 1, 1, 0, '2018-09-01 13:31:44', '2018-09-01 13:31:44', '0000-00-00 00:00:00'),
(86, 3, 60, 1, 1, 0, '2018-09-01 13:31:44', '2018-09-01 13:31:44', '0000-00-00 00:00:00'),
(87, 3, 61, 1, 1, 0, '2018-09-01 13:31:44', '2018-09-01 13:31:44', '0000-00-00 00:00:00'),
(88, 3, 62, 1, 1, 0, '2018-09-01 13:31:44', '2018-09-01 13:31:44', '0000-00-00 00:00:00'),
(89, 3, 63, 1, 1, 0, '2018-09-01 13:31:45', '2018-09-01 13:31:45', '0000-00-00 00:00:00'),
(90, 3, 64, 1, 1, 0, '2018-09-01 13:31:45', '2018-09-01 13:31:45', '0000-00-00 00:00:00'),
(91, 3, 65, 1, 1, 0, '2018-09-01 13:31:45', '2018-09-01 13:31:45', '0000-00-00 00:00:00'),
(92, 3, 66, 1, 1, 0, '2018-09-01 13:31:45', '2018-09-01 13:31:45', '0000-00-00 00:00:00'),
(93, 3, 16, 1, 1, 0, '2018-09-01 13:31:45', '2018-09-01 13:31:45', '0000-00-00 00:00:00'),
(94, 3, 17, 1, 1, 0, '2018-09-01 13:31:45', '2018-09-01 13:31:45', '0000-00-00 00:00:00'),
(95, 3, 18, 1, 1, 0, '2018-09-01 13:31:45', '2018-09-01 13:31:45', '0000-00-00 00:00:00'),
(96, 3, 19, 1, 1, 0, '2018-09-01 13:31:45', '2018-09-01 13:31:45', '0000-00-00 00:00:00'),
(97, 3, 20, 1, 1, 0, '2018-09-01 13:31:45', '2018-09-01 13:31:45', '0000-00-00 00:00:00'),
(98, 3, 21, 1, 1, 0, '2018-09-01 13:31:45', '2018-09-01 13:31:45', '0000-00-00 00:00:00'),
(99, 3, 22, 1, 1, 0, '2018-09-01 13:31:45', '2018-09-01 13:31:45', '0000-00-00 00:00:00'),
(100, 3, 67, 1, 1, 0, '2018-09-01 13:31:45', '2018-09-01 13:31:45', '0000-00-00 00:00:00'),
(101, 3, 68, 1, 1, 0, '2018-09-01 13:31:45', '2018-09-01 13:31:45', '0000-00-00 00:00:00'),
(102, 3, 69, 1, 1, 0, '2018-09-01 13:31:45', '2018-09-01 13:31:45', '0000-00-00 00:00:00'),
(103, 3, 23, 1, 1, 0, '2018-09-01 13:31:45', '2018-09-01 13:31:45', '0000-00-00 00:00:00'),
(104, 3, 24, 1, 1, 0, '2018-09-01 13:31:45', '2018-09-01 13:31:45', '0000-00-00 00:00:00'),
(105, 3, 25, 1, 1, 0, '2018-09-01 13:31:45', '2018-09-01 13:31:45', '0000-00-00 00:00:00'),
(106, 3, 26, 1, 1, 0, '2018-09-01 13:31:45', '2018-09-01 13:31:45', '0000-00-00 00:00:00'),
(107, 3, 27, 1, 1, 0, '2018-09-01 13:31:46', '2018-09-01 13:31:46', '0000-00-00 00:00:00'),
(108, 3, 29, 1, 1, 0, '2018-09-01 13:31:46', '2018-09-01 13:31:46', '0000-00-00 00:00:00'),
(109, 3, 30, 1, 1, 0, '2018-09-01 13:31:46', '2018-09-01 13:31:46', '0000-00-00 00:00:00'),
(110, 3, 31, 1, 1, 0, '2018-09-01 13:31:46', '2018-09-01 13:31:46', '0000-00-00 00:00:00'),
(111, 3, 32, 1, 1, 0, '2018-09-01 13:31:46', '2018-09-01 13:31:46', '0000-00-00 00:00:00'),
(112, 3, 33, 1, 1, 0, '2018-09-01 13:31:46', '2018-09-01 13:31:46', '0000-00-00 00:00:00'),
(113, 3, 34, 1, 1, 0, '2018-09-01 13:31:46', '2018-09-01 13:31:46', '0000-00-00 00:00:00'),
(114, 3, 35, 1, 1, 0, '2018-09-01 13:31:46', '2018-09-01 13:31:46', '0000-00-00 00:00:00'),
(115, 3, 36, 1, 1, 0, '2018-09-01 13:31:46', '2018-09-01 13:31:46', '0000-00-00 00:00:00'),
(116, 4, 1, 1, 1, 0, '2018-09-01 13:35:45', '2018-09-01 13:35:45', '0000-00-00 00:00:00'),
(117, 4, 56, 1, 1, 0, '2018-09-01 13:35:45', '2018-09-01 13:35:45', '0000-00-00 00:00:00'),
(118, 4, 2, 1, 1, 0, '2018-09-01 13:35:45', '2018-09-01 13:35:45', '0000-00-00 00:00:00'),
(119, 4, 3, 1, 1, 0, '2018-09-01 13:35:45', '2018-09-01 13:35:45', '0000-00-00 00:00:00'),
(120, 4, 4, 1, 1, 0, '2018-09-01 13:35:45', '2018-09-01 13:35:45', '0000-00-00 00:00:00'),
(121, 4, 7, 1, 1, 0, '2018-09-01 13:35:45', '2018-09-01 13:35:45', '0000-00-00 00:00:00'),
(122, 4, 8, 1, 1, 0, '2018-09-01 13:35:45', '2018-09-01 13:35:45', '0000-00-00 00:00:00'),
(123, 4, 9, 1, 1, 0, '2018-09-01 13:35:45', '2018-09-01 13:35:45', '0000-00-00 00:00:00'),
(124, 4, 10, 1, 1, 0, '2018-09-01 13:35:45', '2018-09-01 13:35:45', '0000-00-00 00:00:00'),
(125, 4, 11, 1, 1, 0, '2018-09-01 13:35:45', '2018-09-01 13:35:45', '0000-00-00 00:00:00'),
(126, 4, 16, 1, 1, 0, '2018-09-01 13:35:45', '2018-09-01 13:35:45', '0000-00-00 00:00:00'),
(127, 4, 17, 1, 1, 0, '2018-09-01 13:35:45', '2018-09-01 13:35:45', '0000-00-00 00:00:00'),
(128, 4, 18, 1, 1, 0, '2018-09-01 13:35:46', '2018-09-01 13:35:46', '0000-00-00 00:00:00'),
(129, 4, 19, 1, 1, 0, '2018-09-01 13:35:46', '2018-09-01 13:35:46', '0000-00-00 00:00:00'),
(130, 4, 26, 1, 1, 0, '2018-09-01 13:35:46', '2018-09-01 13:35:46', '0000-00-00 00:00:00'),
(131, 4, 27, 1, 1, 0, '2018-09-01 13:35:46', '2018-09-01 13:35:46', '0000-00-00 00:00:00'),
(132, 4, 32, 1, 1, 0, '2018-09-01 13:35:46', '2018-09-01 13:35:46', '0000-00-00 00:00:00'),
(133, 4, 36, 1, 1, 0, '2018-09-01 13:35:46', '2018-09-01 13:35:46', '0000-00-00 00:00:00'),
(511, 1, 1, 1, 1, 0, '2018-09-29 13:11:52', '2018-09-29 13:11:52', '0000-00-00 00:00:00'),
(512, 1, 54, 1, 1, 0, '2018-09-29 13:11:52', '2018-09-29 13:11:52', '0000-00-00 00:00:00'),
(513, 1, 55, 1, 1, 0, '2018-09-29 13:11:52', '2018-09-29 13:11:52', '0000-00-00 00:00:00'),
(514, 1, 56, 1, 1, 0, '2018-09-29 13:11:52', '2018-09-29 13:11:52', '0000-00-00 00:00:00'),
(515, 1, 2, 1, 1, 0, '2018-09-29 13:11:52', '2018-09-29 13:11:52', '0000-00-00 00:00:00'),
(516, 1, 3, 1, 1, 0, '2018-09-29 13:11:52', '2018-09-29 13:11:52', '0000-00-00 00:00:00'),
(517, 1, 4, 1, 1, 0, '2018-09-29 13:11:52', '2018-09-29 13:11:52', '0000-00-00 00:00:00'),
(518, 1, 5, 1, 1, 0, '2018-09-29 13:11:52', '2018-09-29 13:11:52', '0000-00-00 00:00:00'),
(519, 1, 7, 1, 1, 0, '2018-09-29 13:11:52', '2018-09-29 13:11:52', '0000-00-00 00:00:00'),
(520, 1, 57, 1, 1, 0, '2018-09-29 13:11:52', '2018-09-29 13:11:52', '0000-00-00 00:00:00'),
(521, 1, 58, 1, 1, 0, '2018-09-29 13:11:53', '2018-09-29 13:11:53', '0000-00-00 00:00:00'),
(522, 1, 59, 1, 1, 0, '2018-09-29 13:11:53', '2018-09-29 13:11:53', '0000-00-00 00:00:00'),
(523, 1, 78, 1, 1, 0, '2018-09-29 13:11:53', '2018-09-29 13:11:53', '0000-00-00 00:00:00'),
(524, 1, 79, 1, 1, 0, '2018-09-29 13:11:53', '2018-09-29 13:11:53', '0000-00-00 00:00:00'),
(525, 1, 8, 1, 1, 0, '2018-09-29 13:11:53', '2018-09-29 13:11:53', '0000-00-00 00:00:00'),
(526, 1, 9, 1, 1, 0, '2018-09-29 13:11:53', '2018-09-29 13:11:53', '0000-00-00 00:00:00'),
(527, 1, 10, 1, 1, 0, '2018-09-29 13:11:53', '2018-09-29 13:11:53', '0000-00-00 00:00:00'),
(528, 1, 11, 1, 1, 0, '2018-09-29 13:11:53', '2018-09-29 13:11:53', '0000-00-00 00:00:00'),
(529, 1, 12, 1, 1, 0, '2018-09-29 13:11:53', '2018-09-29 13:11:53', '0000-00-00 00:00:00'),
(530, 1, 13, 1, 1, 0, '2018-09-29 13:11:53', '2018-09-29 13:11:53', '0000-00-00 00:00:00'),
(531, 1, 14, 1, 1, 0, '2018-09-29 13:11:53', '2018-09-29 13:11:53', '0000-00-00 00:00:00'),
(532, 1, 15, 1, 1, 0, '2018-09-29 13:11:53', '2018-09-29 13:11:53', '0000-00-00 00:00:00'),
(533, 1, 21, 1, 1, 0, '2018-09-29 13:11:53', '2018-09-29 13:11:53', '0000-00-00 00:00:00'),
(534, 1, 22, 1, 1, 0, '2018-09-29 13:11:53', '2018-09-29 13:11:53', '0000-00-00 00:00:00'),
(535, 1, 60, 1, 1, 0, '2018-09-29 13:11:54', '2018-09-29 13:11:54', '0000-00-00 00:00:00'),
(536, 1, 61, 1, 1, 0, '2018-09-29 13:11:54', '2018-09-29 13:11:54', '0000-00-00 00:00:00'),
(537, 1, 62, 1, 1, 0, '2018-09-29 13:11:54', '2018-09-29 13:11:54', '0000-00-00 00:00:00'),
(538, 1, 63, 1, 1, 0, '2018-09-29 13:11:54', '2018-09-29 13:11:54', '0000-00-00 00:00:00'),
(539, 1, 64, 1, 1, 0, '2018-09-29 13:11:54', '2018-09-29 13:11:54', '0000-00-00 00:00:00'),
(540, 1, 65, 1, 1, 0, '2018-09-29 13:11:54', '2018-09-29 13:11:54', '0000-00-00 00:00:00'),
(541, 1, 66, 1, 1, 0, '2018-09-29 13:11:54', '2018-09-29 13:11:54', '0000-00-00 00:00:00'),
(542, 1, 67, 1, 1, 0, '2018-09-29 13:11:54', '2018-09-29 13:11:54', '0000-00-00 00:00:00'),
(543, 1, 68, 1, 1, 0, '2018-09-29 13:11:54', '2018-09-29 13:11:54', '0000-00-00 00:00:00'),
(544, 1, 69, 1, 1, 0, '2018-09-29 13:11:54', '2018-09-29 13:11:54', '0000-00-00 00:00:00'),
(545, 1, 16, 1, 1, 0, '2018-09-29 13:11:54', '2018-09-29 13:11:54', '0000-00-00 00:00:00'),
(546, 1, 17, 1, 1, 0, '2018-09-29 13:11:54', '2018-09-29 13:11:54', '0000-00-00 00:00:00'),
(547, 1, 18, 1, 1, 0, '2018-09-29 13:11:54', '2018-09-29 13:11:54', '0000-00-00 00:00:00'),
(548, 1, 19, 1, 1, 0, '2018-09-29 13:11:54', '2018-09-29 13:11:54', '0000-00-00 00:00:00'),
(549, 1, 20, 1, 1, 0, '2018-09-29 13:11:54', '2018-09-29 13:11:54', '0000-00-00 00:00:00'),
(550, 1, 23, 1, 1, 0, '2018-09-29 13:11:54', '2018-09-29 13:11:54', '0000-00-00 00:00:00'),
(551, 1, 24, 1, 1, 0, '2018-09-29 13:11:55', '2018-09-29 13:11:55', '0000-00-00 00:00:00'),
(552, 1, 25, 1, 1, 0, '2018-09-29 13:11:55', '2018-09-29 13:11:55', '0000-00-00 00:00:00'),
(553, 1, 26, 1, 1, 0, '2018-09-29 13:11:55', '2018-09-29 13:11:55', '0000-00-00 00:00:00'),
(554, 1, 27, 1, 1, 0, '2018-09-29 13:11:55', '2018-09-29 13:11:55', '0000-00-00 00:00:00'),
(555, 1, 28, 1, 1, 0, '2018-09-29 13:11:55', '2018-09-29 13:11:55', '0000-00-00 00:00:00'),
(556, 1, 29, 1, 1, 0, '2018-09-29 13:11:55', '2018-09-29 13:11:55', '0000-00-00 00:00:00'),
(557, 1, 30, 1, 1, 0, '2018-09-29 13:11:55', '2018-09-29 13:11:55', '0000-00-00 00:00:00'),
(558, 1, 31, 1, 1, 0, '2018-09-29 13:11:55', '2018-09-29 13:11:55', '0000-00-00 00:00:00'),
(559, 1, 32, 1, 1, 0, '2018-09-29 13:11:55', '2018-09-29 13:11:55', '0000-00-00 00:00:00'),
(560, 1, 33, 1, 1, 0, '2018-09-29 13:11:55', '2018-09-29 13:11:55', '0000-00-00 00:00:00'),
(561, 1, 34, 1, 1, 0, '2018-09-29 13:11:55', '2018-09-29 13:11:55', '0000-00-00 00:00:00'),
(562, 1, 35, 1, 1, 0, '2018-09-29 13:11:55', '2018-09-29 13:11:55', '0000-00-00 00:00:00'),
(563, 1, 36, 1, 1, 0, '2018-09-29 13:11:55', '2018-09-29 13:11:55', '0000-00-00 00:00:00'),
(564, 1, 77, 1, 1, 0, '2018-09-29 13:11:55', '2018-09-29 13:11:55', '0000-00-00 00:00:00'),
(565, 1, 37, 1, 1, 0, '2018-09-29 13:11:55', '2018-09-29 13:11:55', '0000-00-00 00:00:00'),
(566, 1, 38, 1, 1, 0, '2018-09-29 13:11:55', '2018-09-29 13:11:55', '0000-00-00 00:00:00'),
(567, 1, 39, 1, 1, 0, '2018-09-29 13:11:56', '2018-09-29 13:11:56', '0000-00-00 00:00:00'),
(568, 1, 40, 1, 1, 0, '2018-09-29 13:11:56', '2018-09-29 13:11:56', '0000-00-00 00:00:00'),
(569, 1, 41, 1, 1, 0, '2018-09-29 13:11:56', '2018-09-29 13:11:56', '0000-00-00 00:00:00'),
(570, 1, 42, 1, 1, 0, '2018-09-29 13:11:56', '2018-09-29 13:11:56', '0000-00-00 00:00:00'),
(571, 1, 43, 1, 1, 0, '2018-09-29 13:11:56', '2018-09-29 13:11:56', '0000-00-00 00:00:00'),
(572, 1, 44, 1, 1, 0, '2018-09-29 13:11:56', '2018-09-29 13:11:56', '0000-00-00 00:00:00'),
(573, 1, 45, 1, 1, 0, '2018-09-29 13:11:56', '2018-09-29 13:11:56', '0000-00-00 00:00:00'),
(574, 1, 46, 1, 1, 0, '2018-09-29 13:11:56', '2018-09-29 13:11:56', '0000-00-00 00:00:00'),
(575, 1, 47, 1, 1, 0, '2018-09-29 13:11:56', '2018-09-29 13:11:56', '0000-00-00 00:00:00'),
(576, 1, 70, 1, 1, 0, '2018-09-29 13:11:56', '2018-09-29 13:11:56', '0000-00-00 00:00:00'),
(577, 1, 71, 1, 1, 0, '2018-09-29 13:11:56', '2018-09-29 13:11:56', '0000-00-00 00:00:00'),
(578, 1, 72, 1, 1, 0, '2018-09-29 13:11:56', '2018-09-29 13:11:56', '0000-00-00 00:00:00'),
(579, 1, 73, 1, 1, 0, '2018-09-29 13:11:56', '2018-09-29 13:11:56', '0000-00-00 00:00:00'),
(580, 1, 80, 1, 1, 0, '2018-09-29 13:11:56', '2018-09-29 13:11:56', '0000-00-00 00:00:00'),
(581, 1, 48, 1, 1, 0, '2018-09-29 13:11:56', '2018-09-29 13:11:56', '0000-00-00 00:00:00'),
(582, 1, 49, 1, 1, 0, '2018-09-29 13:11:56', '2018-09-29 13:11:56', '0000-00-00 00:00:00'),
(583, 1, 50, 1, 1, 0, '2018-09-29 13:11:56', '2018-09-29 13:11:56', '0000-00-00 00:00:00'),
(584, 1, 74, 1, 1, 0, '2018-09-29 13:11:56', '2018-09-29 13:11:56', '0000-00-00 00:00:00'),
(585, 1, 75, 1, 1, 0, '2018-09-29 13:11:57', '2018-09-29 13:11:57', '0000-00-00 00:00:00'),
(586, 1, 51, 1, 1, 0, '2018-09-29 13:11:57', '2018-09-29 13:11:57', '0000-00-00 00:00:00'),
(587, 1, 52, 1, 1, 0, '2018-09-29 13:11:57', '2018-09-29 13:11:57', '0000-00-00 00:00:00'),
(588, 1, 53, 1, 1, 0, '2018-09-29 13:11:57', '2018-09-29 13:11:57', '0000-00-00 00:00:00'),
(589, 1, 76, 1, 1, 0, '2018-09-29 13:11:57', '2018-09-29 13:11:57', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `lsp_sales_returns`
--

CREATE TABLE `lsp_sales_returns` (
  `id` int(10) UNSIGNED NOT NULL,
  `invoice_id` int(11) NOT NULL DEFAULT '0',
  `customer_id` int(11) NOT NULL DEFAULT '0',
  `customer_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Not Mention',
  `invoice_total` double(8,2) NOT NULL DEFAULT '0.00',
  `sales_return_amount` double(8,2) NOT NULL DEFAULT '0.00',
  `sales_return_note` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `store_id` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `lsp_sales_returns`
--

INSERT INTO `lsp_sales_returns` (`id`, `invoice_id`, `customer_id`, `customer_name`, `invoice_total`, `sales_return_amount`, `sales_return_note`, `store_id`, `created_by`, `updated_by`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1525017380, 27, 'CHEF’S SPECIAL DISHES', 9.80, 9.80, 'Demo', 1, 1, NULL, '2018-05-16 13:25:13', '2018-05-16 13:25:13', NULL),
(2, 1525373162, 28, 'MD MAHAMUDUR Zaman Bhuyan', 1666.00, 1666.00, 'Test', 1, 1, NULL, '2018-05-16 13:28:02', '2018-05-16 13:28:02', NULL),
(3, 1532725259, 30, 'MD MAHAMUDUR Zaman Bhuyan', 58.80, 55.00, 'null', 1, 1, NULL, '2018-08-20 13:38:07', '2018-08-20 13:38:07', NULL),
(4, 1546169942, 28, 'MD MAHAMUDUR Zaman Bhuyan', 9.66, 9.00, '788', 1, 1, NULL, '2019-01-01 03:28:37', '2019-01-01 03:28:37', NULL),
(5, 1546334482, 29, 'MD MAHAMUDUR Zaman Bhuyan', 0.97, 7.85, '7.85', 1, 1, NULL, '2019-01-01 03:33:17', '2019-01-01 03:33:17', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `lsp_send_sales_emails`
--

CREATE TABLE `lsp_send_sales_emails` (
  `id` int(10) UNSIGNED NOT NULL,
  `invoice_id` int(11) NOT NULL DEFAULT '0',
  `email_address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bcc_email_address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_send_status` enum('Not Send','Send','Failed To Send') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Not Send',
  `note` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_process_type` int(11) NOT NULL DEFAULT '1',
  `store_id` int(11) NOT NULL DEFAULT '0',
  `created_by` int(11) NOT NULL DEFAULT '0',
  `updated_by` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `lsp_send_sales_emails`
--

INSERT INTO `lsp_send_sales_emails` (`id`, `invoice_id`, `email_address`, `bcc_email_address`, `email_send_status`, `note`, `email_process_type`, `store_id`, `created_by`, `updated_by`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1528482259, 'f.bhuyian@gmail.com', '', 'Not Send', NULL, 1, 1, 1, 0, '2018-06-08 12:42:26', '2018-06-08 12:42:26', NULL),
(2, 1528483432, 'f.bhuyian@gmail.com', '', 'Not Send', NULL, 1, 1, 1, 0, '2018-06-08 12:44:49', '2018-06-08 12:44:49', NULL),
(3, 1528483490, 'f.bhuyian@gmail.com', '', 'Not Send', NULL, 1, 1, 1, 0, '2018-06-08 12:58:00', '2018-06-08 12:58:00', NULL),
(4, 1528484281, 'f.bhuyian@gmail.com', '', 'Not Send', NULL, 1, 1, 1, 0, '2018-06-08 13:29:05', '2018-06-08 13:29:05', NULL),
(5, 1528486146, 'f.bhuyian@gmail.com', '', 'Not Send', NULL, 1, 1, 1, 0, '2018-06-08 16:11:27', '2018-06-08 16:11:27', NULL),
(6, 1525017380, 'f.bhuyian@gmail.com', '', 'Send', NULL, 1, 1, 1, 0, '2018-06-27 13:58:45', '2018-06-27 14:26:29', NULL),
(7, 1525017380, 'f.bhuyian@gmail.com', '', 'Send', NULL, 1, 1, 1, 0, '2018-06-27 14:26:21', '2018-06-27 14:26:34', NULL),
(8, 1525017380, 'f.bhuyian@gmail.com', '', 'Send', NULL, 1, 1, 1, 0, '2018-06-27 14:46:59', '2018-06-27 14:47:05', NULL),
(9, 1525017380, 'f.bhuyian@gmail.com', '', 'Send', NULL, 1, 1, 1, 0, '2018-06-28 13:57:53', '2018-06-28 13:58:09', NULL),
(10, 1525017380, 'f.bhuyian@gmail.com', '', 'Send', NULL, 1, 1, 1, 0, '2018-06-28 14:47:18', '2018-06-28 14:51:34', NULL),
(11, 1525017380, 'f.bhuyian@gmail.com', '', 'Send', NULL, 1, 1, 1, 0, '2018-06-28 14:47:19', '2018-06-28 14:51:43', NULL),
(12, 1525017380, 'f.bhuyian@gmail.com', '', 'Send', NULL, 1, 1, 1, 0, '2018-06-28 14:51:24', '2018-06-28 14:51:49', NULL),
(13, 1525017380, 'f.bhuyian@gmail.com', '', 'Failed To Send', NULL, 1, 1, 1, 0, '2018-06-28 16:30:22', '2018-06-28 16:30:27', NULL),
(14, 1525017380, 'f.bhuyian@gmail.com', '', 'Send', NULL, 1, 1, 1, 0, '2018-06-28 16:31:44', '2018-06-28 16:31:51', NULL),
(15, 1525373162, 'f.bhuyian@gmail.com', '', 'Send', NULL, 1, 1, 1, 0, '2018-06-28 16:35:36', '2018-06-28 16:35:46', NULL),
(16, 1525017380, 'f.bhuyian@gmail.com', '', 'Failed To Send', NULL, 1, 1, 1, 0, '2018-06-29 02:25:07', '2018-06-29 02:25:13', NULL),
(17, 1525978703, 'f.bhuyian@gmail.com', '', 'Failed To Send', NULL, 1, 1, 1, 0, '2018-06-29 02:27:52', '2018-06-29 02:27:57', NULL),
(18, 1525017380, 'f.bhuyian@gmail.com', '', 'Send', NULL, 1, 1, 1, 0, '2018-06-29 02:31:48', '2018-06-29 02:31:55', NULL),
(19, 1525978703, 'f.bhuyian@gmail.com', '', 'Failed To Send', NULL, 1, 1, 1, 0, '2018-06-29 02:35:31', '2018-06-29 02:35:36', NULL),
(20, 1525017380, 'f.bhuyian@gmail.com', '', 'Failed To Send', NULL, 1, 1, 1, 0, '2018-06-29 03:03:35', '2018-06-29 03:04:31', NULL),
(21, 1525017380, 'f.bhuyian@gmail.com', '', 'Failed To Send', NULL, 1, 1, 1, 0, '2018-06-29 03:04:18', '2018-06-29 03:04:35', NULL),
(22, 1525017380, 'f.bhuyian@gmail.com', '', 'Failed To Send', NULL, 1, 1, 1, 0, '2018-06-29 03:04:27', '2018-06-29 03:04:39', NULL),
(23, 1525373162, 'f.bhuyian@gmail.com', '', 'Failed To Send', NULL, 1, 1, 1, 0, '2018-06-29 03:05:15', '2018-06-29 03:05:18', NULL),
(24, 1526041609, 'f.bhuyian@gmail.com', '', 'Failed To Send', NULL, 1, 1, 1, 0, '2018-06-29 03:05:37', '2018-06-29 03:05:43', NULL),
(25, 1526078547, 'f.bhuyian@gmail.com', '', 'Failed To Send', NULL, 1, 1, 1, 0, '2018-06-29 03:06:18', '2018-06-29 03:06:22', NULL),
(26, 1525978703, 'f.bhuyian@gmail.com', '', 'Failed To Send', NULL, 1, 1, 1, 0, '2018-06-29 03:06:54', '2018-06-29 03:06:58', NULL),
(27, 1525978703, 'f.bhuyian@gmail.com', '', 'Failed To Send', NULL, 1, 1, 1, 0, '2018-06-29 03:07:51', '2018-06-29 03:07:55', NULL),
(28, 1525978703, 'f.bhuyian@gmail.com', '', 'Failed To Send', NULL, 1, 1, 1, 0, '2018-06-29 03:09:03', '2018-06-29 03:09:07', NULL),
(29, 1525978703, 'f.bhuyian@gmail.com', '', 'Failed To Send', NULL, 1, 1, 1, 0, '2018-06-29 03:10:11', '2018-06-29 03:10:14', NULL),
(30, 1525978703, 'f.bhuyian@gmail.com', '', 'Failed To Send', NULL, 1, 1, 1, 0, '2018-06-29 03:13:14', '2018-06-29 03:13:18', NULL),
(31, 1525978703, 'f.bhuyian@gmail.com', '', 'Failed To Send', NULL, 1, 1, 1, 0, '2018-06-29 03:23:08', '2018-06-29 03:23:14', NULL),
(32, 1525978703, 'f.bhuyian@gmail.com', '', 'Failed To Send', NULL, 1, 1, 1, 0, '2018-06-29 03:24:02', '2018-06-29 03:24:06', NULL),
(33, 1526041609, 'f.fahad.server@gmail.com', '', 'Failed To Send', NULL, 1, 1, 1, 0, '2018-06-29 03:25:37', '2018-06-29 03:25:40', NULL),
(34, 1530264400, 'f.bhuyian@gmail.com', '', 'Failed To Send', NULL, 1, 1, 1, 0, '2018-06-29 03:27:08', '2018-06-29 03:27:30', NULL),
(35, 1530264400, 'f.bhuyian@gmail.com', '', 'Failed To Send', NULL, 1, 1, 1, 0, '2018-06-29 03:27:26', '2018-06-29 03:27:34', NULL),
(36, 1530264400, 'f.bhuyian@gmail.com', '', 'Failed To Send', NULL, 1, 1, 1, 0, '2018-06-29 03:29:25', '2018-06-29 03:29:29', NULL),
(37, 1530264400, 'f.bhuyian@gmail.com', '', 'Failed To Send', NULL, 1, 1, 1, 0, '2018-06-29 03:31:12', '2018-06-29 03:31:19', NULL),
(38, 1525017380, 'f.bhuyian@gmail.com', '', 'Send', NULL, 1, 1, 1, 0, '2018-06-29 03:32:58', '2018-06-29 03:33:03', NULL),
(39, 1525017380, 'f.bhuyian@gmail.com', '', 'Failed To Send', NULL, 1, 1, 1, 0, '2018-06-29 03:36:56', '2018-06-29 03:37:00', NULL),
(40, 1525017380, 'f.bhuyian@gmail.com', '', 'Failed To Send', NULL, 1, 1, 1, 0, '2018-06-29 03:38:33', '2018-06-29 03:38:37', NULL),
(41, 1525017380, 'f.bhuyian@gmail.com', '', 'Failed To Send', NULL, 1, 1, 1, 0, '2018-06-29 03:41:25', '2018-06-29 03:41:30', NULL),
(42, 1530264400, 'f.bhuyian@gmail.com', '', 'Failed To Send', NULL, 1, 1, 1, 0, '2018-06-29 03:41:52', '2018-06-29 03:41:56', NULL),
(43, 1525017380, 'f.bhuyian@gmail.com', '', 'Failed To Send', NULL, 1, 1, 1, 0, '2018-06-29 03:42:16', '2018-06-29 03:42:20', NULL),
(44, 1525017380, 'f.bhuyian@gmail.com', '', 'Failed To Send', NULL, 1, 1, 1, 0, '2018-06-29 03:43:30', '2018-06-29 03:43:34', NULL),
(45, 1525017380, 'f.bhuyian@gmail.com', '', 'Failed To Send', NULL, 1, 1, 1, 0, '2018-06-29 03:43:31', '2018-06-29 03:43:38', NULL),
(46, 1525017380, 'f.bhuyian@gmail.com', '', 'Failed To Send', NULL, 1, 1, 1, 0, '2018-06-29 03:49:34', '2018-06-29 03:49:38', NULL),
(47, 1525017380, 'f.bhuyian@gmail.com', '', 'Send', NULL, 1, 1, 1, 0, '2018-06-29 04:07:46', '2018-06-29 04:07:51', NULL),
(48, 1530280686, 'f.bhuyian@gmail.com', '', 'Not Send', NULL, 1, 1, 1, 0, '2018-06-29 08:14:17', '2018-06-29 08:14:17', NULL),
(49, 1530281657, 'f.bhuyian@gmail.com', '', 'Not Send', NULL, 1, 1, 1, 0, '2018-06-29 09:46:01', '2018-06-29 09:46:01', NULL),
(50, 1530287318, 'info@company.com', '', 'Not Send', NULL, 1, 1, 1, 0, '2018-06-29 09:48:49', '2018-06-29 09:48:49', NULL),
(51, 1530295427, 'f.bhuyian@gmail.com', '', 'Not Send', NULL, 1, 1, 1, 0, '2018-06-29 12:04:33', '2018-06-29 12:04:33', NULL),
(52, 1530295474, 'f.bhuyian@gmail.com', '', 'Not Send', NULL, 1, 1, 1, 0, '2018-06-29 12:32:34', '2018-06-29 12:32:34', NULL),
(53, 1525017380, 'f.bhuyian@gmail.com', '', 'Send', NULL, 1, 1, 1, 0, '2018-06-29 14:57:39', '2018-06-29 14:58:09', NULL),
(54, 1525017380, 'f.bhuyian@gmail.com', '', 'Send', NULL, 1, 1, 1, 0, '2018-06-29 14:58:00', '2018-06-29 14:58:23', NULL),
(55, 1525017380, 'f.bhuyian@gmail.com', '', 'Send', NULL, 1, 1, 1, 0, '2018-06-29 15:01:21', '2018-06-29 15:01:29', NULL),
(56, 1530306106, 'info@company.com', '', 'Send', NULL, 1, 1, 1, 0, '2018-06-29 15:01:58', '2018-06-29 15:02:36', NULL),
(57, 1530306106, 'f.bhuyian@gmail.com', '', 'Send', NULL, 1, 1, 1, 0, '2018-06-29 15:02:26', '2018-06-29 15:02:42', NULL),
(58, 1530646269, 'f.bhuyian@gmail.com', '', 'Send', NULL, 1, 1, 1, 0, '2018-07-03 14:05:53', '2018-07-09 14:40:38', NULL),
(59, 1530646269, 'f.bhuyian@gmail.com', '', 'Send', NULL, 1, 1, 1, 0, '2018-07-09 14:40:31', '2018-07-09 14:40:44', NULL),
(60, 1525017380, 'f.bhuyian@gmail.com', '', 'Send', NULL, 1, 1, 1, 0, '2018-07-09 14:41:06', '2018-07-09 14:41:12', NULL),
(61, 1531167881, 'f.bhuyian@gmail.com', '', 'Send', NULL, 1, 1, 1, 0, '2018-07-09 14:42:05', '2018-07-09 14:42:37', NULL),
(62, 1531167881, 'f.bhuyian@gmail.com', '', 'Send', NULL, 1, 1, 1, 0, '2018-07-09 14:42:31', '2018-07-09 14:42:43', NULL),
(63, 1531245939, 'f.bhuyian@gmail.com', '', 'Send', NULL, 1, 1, 1, 0, '2018-07-10 12:07:40', '2018-07-10 12:08:31', NULL),
(64, 1531245939, 'f.bhuyian@gmail.com', '', 'Send', NULL, 1, 1, 1, 0, '2018-07-10 12:08:22', '2018-07-10 12:08:41', NULL),
(65, 1531167881, 'f.bhuyian@gmail.com', '', 'Send', NULL, 1, 1, 1, 0, '2018-07-10 13:11:33', '2018-07-10 13:11:39', NULL),
(66, 1531250059, 'f.bhuyian@gmail.com', '', 'Send', NULL, 1, 1, 1, 0, '2018-07-10 13:14:35', '2018-07-10 13:15:06', NULL),
(67, 1531250059, 'f.bhuyian@gmail.com', '', 'Send', NULL, 1, 1, 1, 0, '2018-07-10 13:14:59', '2018-07-10 13:15:23', NULL),
(68, 1532201170, 'f.bhuyian@gmail.com', '', 'Not Send', NULL, 1, 1, 1, 0, '2018-07-21 14:25:02', '2018-07-21 14:25:02', NULL),
(69, 1532201170, 'f.bhuyian@gmail.com', '', 'Not Send', NULL, 1, 1, 1, 0, '2018-07-21 14:26:49', '2018-07-21 14:26:49', NULL),
(70, 1532204996, 'f.bhuyian@gmail.com', '', 'Not Send', NULL, 1, 1, 1, 0, '2018-07-21 14:30:37', '2018-07-21 14:30:37', NULL),
(71, 1532205069, 'f.bhuyian@gmail.com', '', 'Not Send', NULL, 1, 1, 1, 0, '2018-07-21 14:31:25', '2018-07-21 14:31:25', NULL),
(72, 1532205112, 'f.bhuyian@gmail.com', '', 'Not Send', NULL, 1, 1, 1, 0, '2018-07-21 14:32:28', '2018-07-21 14:32:28', NULL),
(73, 1532717608, 'f.bhuyian@gmail.com', '', 'Not Send', NULL, 1, 1, 1, 0, '2018-07-27 14:44:48', '2018-07-27 14:44:48', NULL),
(74, 1532724288, 'f.bhuyian@gmail.com', '', 'Not Send', NULL, 1, 1, 1, 0, '2018-07-27 14:59:03', '2018-07-27 14:59:03', NULL),
(75, 1532725259, 'f.bhuyian@gmail.com', '', 'Not Send', NULL, 1, 1, 1, 0, '2018-07-27 15:07:56', '2018-07-27 15:07:56', NULL),
(76, 1535730471, 'sadsad', '', 'Not Send', NULL, 1, 31, 7, 0, '2018-08-31 09:48:05', '2018-08-31 09:48:05', NULL),
(77, 1536928881, 'f.bhuyian@gmail.com', '', 'Not Send', NULL, 1, 1, 1, 0, '2018-09-14 11:36:19', '2018-09-14 11:36:19', NULL),
(78, 1536928881, 'f.bhuyian@gmail.com', '', 'Not Send', NULL, 1, 1, 1, 0, '2018-09-14 12:05:09', '2018-09-14 12:05:09', NULL),
(79, 1536928881, 'f.bhuyian@gmail.com', '', 'Not Send', NULL, 1, 1, 1, 0, '2018-09-14 12:45:20', '2018-09-14 12:45:20', NULL),
(80, 1536928881, 'f.bhuyian@gmail.com', '', 'Not Send', NULL, 1, 1, 1, 0, '2018-09-14 12:47:31', '2018-09-14 12:47:31', NULL),
(81, 1536928881, 'f.bhuyian@gmail.com', '', 'Not Send', NULL, 1, 1, 1, 0, '2018-09-14 13:00:56', '2018-09-14 13:00:56', NULL),
(82, 1536928881, 'f.bhuyian@gmail.com', '', 'Not Send', NULL, 1, 1, 1, 0, '2018-09-14 13:02:27', '2018-09-14 13:02:27', NULL),
(83, 1536951799, 'f.bhuyian@gmail.com', '', 'Not Send', NULL, 1, 1, 1, 0, '2018-09-14 13:14:10', '2018-09-14 13:14:10', NULL),
(84, 1536951799, 'f.bhuyian@gmail.com', '', 'Not Send', NULL, 1, 1, 1, 0, '2018-09-14 13:24:34', '2018-09-14 13:24:34', NULL),
(85, 1536953075, 'f.bhuyian@gmail.com', '', 'Not Send', NULL, 1, 1, 1, 0, '2018-09-14 13:28:18', '2018-09-14 13:28:18', NULL),
(86, 1536953075, 'f.bhuyian@gmail.com', '', 'Not Send', NULL, 1, 1, 1, 0, '2018-09-14 13:29:37', '2018-09-14 13:29:37', NULL),
(87, 1536953075, 'f.bhuyian@gmail.com', '', 'Not Send', NULL, 1, 1, 1, 0, '2018-09-14 13:32:10', '2018-09-14 13:32:10', NULL),
(88, 1536953075, 'f.bhuyian@gmail.com', '', 'Not Send', NULL, 1, 1, 1, 0, '2018-09-14 13:33:21', '2018-09-14 13:33:21', NULL),
(89, 1536953075, 'f.bhuyian@gmail.com', '', 'Not Send', NULL, 1, 1, 1, 0, '2018-09-14 13:34:38', '2018-09-14 13:34:38', NULL),
(90, 1536953075, 'f.bhuyian@gmail.com', '', 'Not Send', NULL, 1, 1, 1, 0, '2018-09-14 13:35:37', '2018-09-14 13:35:37', NULL),
(91, 1536953075, 'f.bhuyian@gmail.com', '', 'Not Send', NULL, 1, 1, 1, 0, '2018-09-14 13:36:27', '2018-09-14 13:36:27', NULL),
(92, 1536953075, 'f.bhuyian@gmail.com', '', 'Not Send', NULL, 1, 1, 1, 0, '2018-09-14 13:37:33', '2018-09-14 13:37:33', NULL),
(93, 1536953075, 'f.bhuyian@gmail.com', '', 'Not Send', NULL, 1, 1, 1, 0, '2018-09-14 13:39:26', '2018-09-14 13:39:26', NULL),
(94, 1536953075, 'f.bhuyian@gmail.com', '', 'Not Send', NULL, 1, 1, 1, 0, '2018-09-14 13:40:20', '2018-09-14 13:40:20', NULL),
(95, 1536953075, 'f.bhuyian@gmail.com', '', 'Not Send', NULL, 1, 1, 1, 0, '2018-09-14 13:42:29', '2018-09-14 13:42:29', NULL),
(96, 1536953075, 'f.bhuyian@gmail.com', '', 'Not Send', NULL, 1, 1, 1, 0, '2018-09-14 13:43:22', '2018-09-14 13:43:22', NULL),
(97, 1536954202, 'f.bhuyian@gmail.com', '', 'Not Send', NULL, 1, 1, 1, 0, '2018-09-14 13:43:44', '2018-09-14 13:43:44', NULL),
(98, 1536954202, 'f.bhuyian@gmail.com', '', 'Not Send', NULL, 1, 1, 1, 0, '2018-09-14 13:44:27', '2018-09-14 13:44:27', NULL),
(99, 1536954202, 'f.bhuyian@gmail.com', '', 'Not Send', NULL, 1, 1, 1, 0, '2018-09-14 13:45:20', '2018-09-14 13:45:20', NULL),
(100, 1536954321, 'f.bhuyian@gmail.com', '', 'Not Send', NULL, 1, 1, 1, 0, '2018-09-14 13:46:03', '2018-09-14 13:46:03', NULL),
(101, 1536954321, 'f.bhuyian@gmail.com', '', 'Not Send', NULL, 1, 1, 1, 0, '2018-09-14 13:51:23', '2018-09-14 13:51:23', NULL),
(102, 1536954684, 'f.bhuyian@gmail.com', '', 'Not Send', NULL, 1, 1, 1, 0, '2018-09-14 13:54:06', '2018-09-14 13:54:06', NULL),
(103, 1536954684, 'f.bhuyian@gmail.com', '', 'Not Send', NULL, 1, 1, 1, 0, '2018-09-14 13:54:45', '2018-09-14 13:54:45', NULL),
(104, 1536959333, 'f.bhuyian@gmail.com', '', 'Not Send', NULL, 1, 1, 1, 0, '2018-09-14 15:09:26', '2018-09-14 15:09:26', NULL),
(105, 1539801642, 'f.bhuyian@gmail.com', '', 'Not Send', NULL, 1, 1, 1, 0, '2018-10-17 13:53:27', '2018-10-17 13:53:27', NULL),
(106, 1539900283, 'f.bhuyian@gmail.com', '', 'Not Send', NULL, 1, 1, 1, 0, '2018-10-18 16:11:59', '2018-10-18 16:11:59', NULL),
(107, 1539962528, 'f.bhuyian@gmail.com', '', 'Failed To Send', NULL, 1, 1, 1, 0, '2018-10-19 15:23:30', '2018-11-03 00:17:03', NULL),
(108, 1539962528, 'f.bhuyian@gmail.com', '', 'Failed To Send', NULL, 1, 1, 1, 0, '2018-11-03 00:16:58', '2018-11-03 00:17:07', NULL),
(109, 1539962528, 'f.bhuyian@gmail.com', '', 'Failed To Send', NULL, 1, 1, 1, 0, '2018-11-03 00:45:54', '2018-11-03 01:00:13', NULL),
(110, 1539962528, 'f.bhuyian@gmail.com', '', 'Failed To Send', NULL, 1, 1, 1, 0, '2018-11-03 00:57:13', '2018-11-03 01:00:17', NULL),
(111, 1539962528, 'f.bhuyian@gmail.com', '', 'Failed To Send', NULL, 1, 1, 1, 0, '2018-11-03 00:59:00', '2018-11-03 01:00:21', NULL),
(112, 1539962528, 'f.bhuyian@gmail.com', '', 'Failed To Send', NULL, 1, 1, 1, 0, '2018-11-03 01:00:09', '2018-11-03 01:00:25', NULL),
(113, 1545905398, 'f.bhuyian@gmail.com', '', 'Not Send', NULL, 1, 1, 1, 0, '2018-12-27 05:25:31', '2018-12-27 05:25:31', NULL),
(114, 1545909932, 'f.bhuyian@gmail.com', '', 'Not Send', NULL, 1, 1, 1, 0, '2018-12-27 05:47:58', '2018-12-27 05:47:58', NULL),
(115, 1545941247, 'f.bhuyian@gmail.com', '', 'Not Send', NULL, 1, 1, 1, 0, '2018-12-27 14:55:36', '2018-12-27 14:55:36', NULL),
(116, 1545944137, 'f.bhuyian@gmail.com', '', 'Not Send', NULL, 1, 1, 1, 0, '2018-12-27 14:56:27', '2018-12-27 14:56:27', NULL),
(117, 1546159770, 'f.bhuyian@gmail.com', '', 'Not Send', NULL, 1, 1, 1, 0, '2018-12-30 05:39:02', '2018-12-30 05:39:02', NULL),
(118, 1546169942, 'f.bhuyian@gmail.com', '', 'Not Send', NULL, 1, 1, 1, 0, '2018-12-30 05:41:06', '2018-12-30 05:41:06', NULL),
(119, 1546334482, 'f.bhuyian@gmail.com', '', 'Not Send', NULL, 1, 1, 1, 0, '2019-01-01 03:32:15', '2019-01-01 03:32:15', NULL),
(120, 1546462247, 'f.bhuyian@gmail.com', '', 'Not Send', NULL, 1, 1, 1, 0, '2019-01-02 14:52:00', '2019-01-02 14:52:00', NULL),
(121, 1546462321, 'f.bhuyian@gmail.com', '', 'Not Send', NULL, 1, 1, 1, 0, '2019-01-02 14:56:36', '2019-01-02 14:56:36', NULL),
(122, 1546462596, 'f.bhuyian@gmail.com', '', 'Not Send', NULL, 1, 1, 1, 0, '2019-01-02 14:58:17', '2019-01-02 14:58:17', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `lsp_send_test_mails`
--

CREATE TABLE `lsp_send_test_mails` (
  `id` int(10) UNSIGNED NOT NULL,
  `email_address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_send_status` enum('Not Send','Send','Failed To Send') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Not Send',
  `store_id` int(11) NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `lsp_send_test_mails`
--

INSERT INTO `lsp_send_test_mails` (`id`, `email_address`, `email_send_status`, `store_id`, `created_by`, `updated_by`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'f.bhuyian@gmail.com', 'Not Send', 1, 1, 0, '2018-06-27 13:59:35', '2018-06-27 13:59:35', NULL),
(2, 'f.bhuyian@gmail.com', 'Send', 1, 1, 0, '2018-06-27 14:16:37', '2018-06-27 14:16:46', NULL),
(3, 'f.bhuyian@gmail.com', 'Failed To Send', 1, 1, 0, '2018-06-29 03:28:00', '2018-06-29 03:28:04', NULL),
(4, 'f.bhuyian@gmail.com', 'Failed To Send', 1, 1, 0, '2018-06-29 03:29:05', '2018-06-29 03:29:08', NULL),
(5, 'f.bhuyian@gmail.com', 'Failed To Send', 1, 1, 0, '2018-06-29 03:50:30', '2018-06-29 03:50:34', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `lsp_sessions`
--

CREATE TABLE `lsp_sessions` (
  `id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `payload` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `lsp_sessions`
--

INSERT INTO `lsp_sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('pgmQpultYRiZD6DrDhgbmcrTow1sWzOHbMzyabLO', NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'YTozOntzOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX1zOjY6Il90b2tlbiI7czo0MDoiQkdKZWlFb1F4U0NRNlFYTHNiczI1Z0hId2dUME1EMllwRkIzV2Z1VSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDc6Imh0dHA6Ly9sb2NhbGhvc3QvbGFyYXZlbC9udWNsZXVzdjQvcHVibGljL2xvZ2luIjt9fQ==', 1546463075),
('RqFCcjFgVg21rasbi5TL84xgkSQrpjw8wgW8oUtL', 1, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'YTo5OntzOjY6Il90b2tlbiI7czo0MDoidWZhVjVOUExKQ0pzcUYwSjViOEZrTXcxbVhwN2hrOW9WT0gzd3lvNiI7czozOiJ1cmwiO2E6MDp7fXM6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjU2OiJodHRwOi8vbG9jYWxob3N0L2xhcmF2ZWwvbnVjbGV1c3Y0L3B1YmxpYy9yZXBhaXIvcHJpbnQvNiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjE7czoxNjoiZGF0YU1lbnVBc3NpZ25lZCI7YTo3OTp7aTowO3M6OToiZGFzaGJvYXJkIjtpOjE7czozOiJwb3MiO2k6MjtzOjEyOiJjdXN0b21lcm1haW4iO2k6MztzOjg6ImN1c3RvbWVyIjtpOjQ7czoxNToiY3VzdG9tZXIvaW1wb3J0IjtpOjU7czoxMzoiY3VzdG9tZXIvbGlzdCI7aTo2O3M6OToiaW52ZW50b3J5IjtpOjc7czo3OiJwcm9kdWN0IjtpOjg7czoxMjoicHJvZHVjdC9saXN0IjtpOjk7czoxNjoicHJvZHVjdC9zdG9jay9pbiI7aToxMDtzOjIxOiJwcm9kdWN0L3N0b2NrL2luL2xpc3QiO2k6MTE7czoxMzoidmVuZG9yL2NyZWF0ZSI7aToxMjtzOjExOiJ2ZW5kb3IvbGlzdCI7aToxMztzOjE0OiJwcm9kdWN0L2ltcG9ydCI7aToxNDtzOjg6IndhcnJhbnR5IjtpOjE1O3M6ODoid2FycmFudHkiO2k6MTY7czoxODoid2FycmFudHkvYmF0Y2gtb3V0IjtpOjE3O3M6MTU6IndhcnJhbnR5L3JlcG9ydCI7aToxODtzOjg6InZhcmlhbmNlIjtpOjE5O3M6MTU6InZhcmlhbmNlL2NyZWF0ZSI7aToyMDtzOjE1OiJ2YXJpYW5jZS9yZXBvcnQiO2k6MjE7czoxMjoic2FsZXMtcmV0dXJuIjtpOjIyO3M6MTk6InNhbGVzL3JldHVybi9jcmVhdGUiO2k6MjM7czoxNzoic2FsZXMvcmV0dXJuL2xpc3QiO2k6MjQ7czoxNToiZXhwZW5zZS92b3VjaGVyIjtpOjI1O3M6NzoicmVwb3J0cyI7aToyNjtzOjI5OiJhdXRob3JpemUvbmV0L3BheW1lbnQvaGlzdG9yeSI7aToyNztzOjIyOiJleHBlbnNlL3ZvdWNoZXIvcmVwb3J0IjtpOjI4O3M6MTM6InByb2ZpdC9yZXBvcnQiO2k6Mjk7czoyMToicHJvZHVjdC9wcm9maXQvcmVwb3J0IjtpOjMwO3M6MTQ6InBheW1lbnQvcmVwb3J0IjtpOjMxO3M6MTQ6InByb2R1Y3QvcmVwb3J0IjtpOjMyO3M6MjE6InBheXBhbC9wYXltZW50L3JlcG9ydCI7aTozMztzOjIzOiJwcm9kdWN0L3N0b2NrL2luL3JlcG9ydCI7aTozNDtzOjEyOiJzYWxlcy9yZXBvcnQiO2k6MzU7czoxNDoic3lzdGVtLXNldHRpbmciO2k6MzY7czo2OiJ0ZW5kZXIiO2k6Mzc7czoyOToiYXV0aG9yaXplL25ldC9wYXltZW50L3NldHRpbmciO2k6Mzg7czoxOToiY291bnRlci9kaXNwbGF5L2FkZCI7aTozOTtzOjIyOiJzZXR0aW5ncy9pbnZvaWNlL2VtYWlsIjtpOjQwO3M6MTU6InNpdGUvbmF2aWdhdGlvbiI7aTo0MTtzOjEyOiJwb3Mvc2V0dGluZ3MiO2k6NDI7czozMjoic2V0dGluZy9wcmludGVyL3ByaW50LXBhcGVyL3NpemUiO2k6NDM7czo0OiJyb2xlIjtpOjQ0O3M6OToibWVudS1pdGVtIjtpOjQ1O3M6MTI6IlJvbGVXaXNlTWVudSI7aTo0NjtzOjE3OiJ1c2VyYWNjZXNzc2V0dGluZyI7aTo0NztzOjQ6InVzZXIiO2k6NDg7czo5OiJ1c2VyL2xpc3QiO2k6NDk7czoxMzoic3RvcmVzZXR0aW5ncyI7aTo1MDtzOjEwOiJzdG9yZS1zaG9wIjtpOjUxO3M6MTU6InN0b3JlLXNob3AvbGlzdCI7aTo1MjtzOjIyOiJkYXNoYm9hcmRfb3RoZXJfcmVwb3J0IjtpOjUzO3M6MzM6ImRhc2hib2FyZF90b2RheV9jYXNoaWVyX3B1bmNoX2xvZyI7aTo1NDtzOjM0OiJkYXNoYm9hcmRfcmVjZW50X3N5c3RlbV9hY2Nlc3NfbG9nIjtpOjU1O3M6MjA6Imxpc3RfY3VzdG9tZXJfcmVwb3J0IjtpOjU2O3M6MzM6IkN1c3RvbWVyX0xpc3RfUmVwb3J0X1ZpZXdfSW52b2ljZSI7aTo1NztzOjM1OiJDdXN0b21lcl9MaXN0X1JlcG9ydF9EZWxldGVfSW52b2ljZSI7aTo1ODtzOjE3OiJQcm9kdWN0X0xpc3RfRWRpdCI7aTo1OTtzOjE5OiJQcm9kdWN0X0xpc3RfRGVsZXRlIjtpOjYwO3M6Mzc6IlN0b2NrX0luX09yZGVyX0xpc3RfU2luZ2xlX09yZGVyX1ZpZXciO2k6NjE7czozNzoiU3RvY2tfSW5fT3JkZXJfTGlzdF9TaW5nbGVfT3JkZXJfZWRpdCI7aTo2MjtzOjM5OiJTdG9ja19Jbl9PcmRlcl9MaXN0X1NpbmdsZV9PcmRlcl9EZWxldGUiO2k6NjM7czoxNjoiVmVuZG9yX0xpc3RfRWRpdCI7aTo2NDtzOjE4OiJWZW5kb3JfTGlzdF9EZWxldGUiO2k6NjU7czoyNToiVmFyaWFuY2VfTGlzdF9WaWV3X0RldGFpbCI7aTo2NjtzOjIzOiJWYXJpYW5jZV9MaXN0X1ZpZXdfRWRpdCI7aTo2NztzOjI1OiJWYXJpYW5jZV9MaXN0X1ZpZXdfRGVsZXRlIjtpOjY4O3M6MTY6IlRlbmRlcl9saXN0X0VkaXQiO2k6Njk7czoxODoiVGVuZGVyX2xpc3RfRGVsZXRlIjtpOjcwO3M6MzA6IkNvdW50ZXJfRGlzcGxheV9JbmZvX0xpc3RfRWRpdCI7aTo3MTtzOjMyOiJDb3VudGVyX0Rpc3BsYXlfSW5mb19MaXN0X0RlbGV0ZSI7aTo3MjtzOjE0OiJVc2VyX0xpc3RfRWRpdCI7aTo3MztzOjE2OiJVc2VyX0xpc3RfRGVsZXRlIjtpOjc0O3M6MjM6ImF0dGVuZGFuY2UvcHVuY2gvbWFudWFsIjtpOjc1O3M6MjM6ImF0dGVuZGFuY2UvcHVuY2gvcmVwb3J0IjtpOjc2O3M6MTc6ImN1c3RvbWVyL2xlYWQvbmV3IjtpOjc3O3M6MTg6ImN1c3RvbWVyL2xlYWQvbGlzdCI7aTo3ODtzOjg6ImNhdGVnb3J5Ijt9czo1OiJzbGlkZSI7aToyO3M6NjoiZmlsdGVyIjtzOjc6ImlkLWRlc2MiO3M6MzoiUG9zIjtPOjc6IkFwcFxQb3MiOjE1OntzOjU6Iml0ZW1zIjtOO3M6ODoidG90YWxRdHkiO2k6MDtzOjk6Imludm9pY2VJRCI7aToxNTQ2NDE1NzM0O3M6ODoic3RvcmVfaWQiO2k6MTtzOjEwOiJ0b3RhbFByaWNlIjtpOjA7czo3OiJUYXhSYXRlIjtpOjA7czo3OiJUYXhUeXBlIjtzOjg6IkZ1bGwgVGF4IjtzOjg6InRvdGFsVGF4IjtpOjA7czo0OiJwYWlkIjtpOjA7czoxMzoiZGlzY291bnRfdHlwZSI7aTowO3M6MTQ6InNhbGVzX2Rpc2NvdW50IjtpOjA7czoxMzoiZGlzY291bnRUb3RhbCI7aTowO3M6MTU6InBheW1lbnRNZXRob2RJRCI7aTowO3M6MTA6ImN1c3RvbWVySUQiO2k6MDtzOjIwOiJBbGxvd0N1c3RvbWVyUGF5QmlsbCI7aTowO319', 1546429882);

-- --------------------------------------------------------

--
-- Table structure for table `lsp_site_settings`
--

CREATE TABLE `lsp_site_settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `nav_class_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'bg-purple bg-darken-1',
  `outline_border_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'border-primary border-lighten-1',
  `store_id` bigint(20) NOT NULL DEFAULT '0',
  `created_by` int(11) NOT NULL DEFAULT '0',
  `updated_by` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `lsp_site_settings`
--

INSERT INTO `lsp_site_settings` (`id`, `nav_class_name`, `outline_border_name`, `store_id`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'bg-info bg-accent-2', 'border-info border-accent-2', 13, 1, 1, '2018-03-26 15:17:52', '2018-04-10 15:38:06');

-- --------------------------------------------------------

--
-- Table structure for table `lsp_special_parts_orders`
--

CREATE TABLE `lsp_special_parts_orders` (
  `id` int(10) UNSIGNED NOT NULL,
  `ticket_id` int(11) NOT NULL DEFAULT '0',
  `ticket_payment_status` enum('Unpaid','Partial','Paid','Cancel') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Unpaid',
  `description` text COLLATE utf8mb4_unicode_ci,
  `part_url` text COLLATE utf8mb4_unicode_ci,
  `quantity` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cost_price` float(10,2) DEFAULT '0.00',
  `sold_price` float(10,2) DEFAULT '0.00',
  `texable` int(2) NOT NULL,
  `texable_status` enum('No','Yes') COLLATE utf8mb4_unicode_ci DEFAULT 'No',
  `trackingnum` text COLLATE utf8mb4_unicode_ci,
  `notes` text COLLATE utf8mb4_unicode_ci,
  `ordered` date DEFAULT NULL,
  `received` date DEFAULT NULL,
  `order_status` enum('Order Placed','Ready for Shipment','On The Way','Received','Return Order','Cancel') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Order Placed',
  `store_id` int(11) NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `lsp_special_parts_orders`
--

INSERT INTO `lsp_special_parts_orders` (`id`, `ticket_id`, `ticket_payment_status`, `description`, `part_url`, `quantity`, `cost_price`, `sold_price`, `texable`, `texable_status`, `trackingnum`, `notes`, `ordered`, `received`, `order_status`, `store_id`, `created_by`, `updated_by`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 45, 'Paid', 'Test', 'http://localhost/laravel/nucleusv4/public/special/parts/create', '10', 10.00, 20.00, 1, 'Yes', '123', 'None', '2018-11-27', '2018-11-27', 'Ready for Shipment', 1, 1, 1, '2018-11-27 04:46:10', '2018-11-27 07:37:07', NULL),
(2, 46, 'Paid', 'Test', 'http://localhost/laravel/nucleusv4/public/special/parts/create', '2', 10.00, 20.00, 1, 'Yes', '123', 'None', '2018-11-28', '2018-11-28', 'Order Placed', 1, 1, 0, '2018-11-28 06:11:05', '2018-11-28 06:16:49', '2018-11-28 06:16:49'),
(3, 46, 'Paid', 'Test', 'http://localhost/laravel/nucleusv4/public/special/parts/create', '10', 10.00, 20.00, 1, 'Yes', '123', 'None', '2018-11-28', '2018-11-28', 'Order Placed', 1, 1, 0, '2018-11-28 06:19:35', '2018-11-28 06:33:20', '2018-11-28 06:33:20');

-- --------------------------------------------------------

--
-- Table structure for table `lsp_stores`
--

CREATE TABLE `lsp_stores` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `address` text COLLATE utf8_unicode_ci NOT NULL,
  `store_id` int(11) NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_by` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `lsp_stores`
--

INSERT INTO `lsp_stores` (`id`, `name`, `email`, `phone`, `address`, `store_id`, `created_by`, `updated_by`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Angel Group', 'fakhrulislamtalukder@gmail.com', '01977136045', '20/2 ltd1 , mdpur', 1535705374, 1, 1, '2018-08-31 08:49:56', '2018-08-31 02:49:56', '0000-00-00 00:00:00'),
(2, 'Fakhrul Islam', 'f.bhuyian@gmail.com', '+88-02-55086145', '20/2 ltd1 , mdpur', 1535707082, 1, 1, '2018-08-31 09:18:24', '2018-08-31 03:18:24', '0000-00-00 00:00:00'),
(6, 'Neutrix.Systems', 'f.fahad.server@gmail.com', '01860748020', 'USA', 1, 1, 0, '2019-01-02 11:26:47', '2018-08-31 06:23:29', '0000-00-00 00:00:00'),
(7, 'Test Store', 'teststore@gmail.com', '01860748020', 'Na', 71, 1, 0, '2018-09-01 14:02:58', '2018-09-01 14:02:58', '0000-00-00 00:00:00'),
(8, 'MD MAHAMUDUR Zaman Bhuyan', 'f.bhuyian@gmail.com', '1860748020', '3A, 20/2, Shorno Kunzo, LTD 1, Mohammadpur', 81, 1, 0, '2018-12-07 11:41:10', '2018-12-07 11:41:10', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `lsp_support_comment`
--

CREATE TABLE `lsp_support_comment` (
  `id` int(11) NOT NULL,
  `sid` int(11) NOT NULL,
  `comment` text COLLATE utf8_unicode_ci NOT NULL,
  `store_id` int(11) NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_by` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `lsp_support_comment`
--

INSERT INTO `lsp_support_comment` (`id`, `sid`, `comment`, `store_id`, `created_by`, `updated_by`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 'sadasdas', 1, 1, 0, '2018-09-04 07:26:05', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 1, 'asdasd', 1, 1, 0, '2018-09-04 07:27:01', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, 1, 'asda', 1, 1, 0, '2018-09-04 07:31:13', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4, 1, 'asdasd', 1, 1, 0, '2018-09-04 11:21:15', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(5, 1, 'asdasddasda', 1, 1, 0, '2018-09-04 11:21:20', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(6, 1, 'sa', 1, 1, 0, '2018-09-04 11:29:40', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(7, 1, 'sdad', 1, 1, 0, '2018-09-04 11:30:38', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(8, 1, 'asda', 1, 1, 0, '2018-09-04 11:32:33', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(9, 1, 'saasdasd', 1, 1, 0, '2018-09-04 11:41:13', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(10, 1, 'das', 1, 1, 0, '2018-09-04 11:41:49', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(11, 1, 'dasda', 1, 1, 0, '2018-09-04 11:42:06', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(12, 1, 'dasda', 1, 1, 0, '2018-09-04 11:44:49', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(13, 1, 'asd', 1, 1, 0, '2018-09-04 11:45:22', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(14, 1, 'asdsad', 1, 1, 0, '2018-09-04 11:45:44', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(15, 1, 'asdsad', 1, 1, 0, '2018-09-04 11:46:13', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(16, 1, 'sadad', 1, 1, 0, '2018-09-04 11:46:49', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(17, 1, 'asdasd', 1, 1, 0, '2018-09-04 11:51:15', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(18, 1, 'sadsad', 1, 1, 0, '2018-09-04 11:51:47', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(19, 1, 'dasdas', 1, 1, 0, '2018-09-04 11:53:57', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(20, 1, 'asdasdsadas', 1, 1, 0, '2018-09-04 11:54:06', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(21, 1, 'sASDadsaDASDAdAASDFSADFASFAS', 1, 1, 0, '2018-09-04 11:54:12', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(22, 1, 'asdasd', 1, 1, 0, '2018-09-04 11:58:01', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(23, 1, 'asdsad', 1, 1, 0, '2018-09-04 12:01:53', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(24, 1, 'asdasdas', 1, 1, 0, '2018-09-04 12:02:56', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(25, 1, 'gfhjf', 1, 1, 0, '2018-09-04 12:04:10', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(26, 1, 'zdcvzx', 1, 1, 0, '2018-09-04 12:04:25', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(27, 2, 'zscfdasf', 31, 2, 0, '2018-09-04 12:04:58', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(28, 1, 'gfhfdgfdg', 1, 1, 0, '2018-09-04 19:00:26', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(29, 1, 'gfhfdgfdgdfgfdgfd', 1, 1, 0, '2018-09-04 19:00:29', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(30, 1, 'ewrwerew', 1, 1, 0, '2018-09-04 19:00:40', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(31, 1, 'xfsdfdsf', 1, 1, 0, '2018-09-04 19:59:16', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(32, 1, 'xfsdfdsfdsfds', 1, 1, 0, '2018-09-04 19:59:19', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(33, 1, 'xfsdfdsfdsfds', 1, 1, 0, '2018-09-04 19:59:55', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(34, 1, 'sasdsadsadsad', 31, 2, 0, '2018-09-04 20:27:37', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(35, 1, 'ddddd', 31, 2, 0, '2018-09-04 20:28:49', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(36, 1, 'vbvcbvcb', 31, 2, 0, '2018-09-04 20:31:35', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(37, 1, 'fahad', 31, 2, 0, '2018-09-04 20:32:10', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(38, 1, 'Fakhrul', 31, 2, 0, '2018-09-04 20:34:38', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(39, 1, 'Faaa', 31, 2, 0, '2018-09-04 20:36:13', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(40, 2, 'tttt', 31, 2, 0, '2018-09-04 20:37:10', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(41, 2, 'ssss', 31, 2, 0, '2018-09-04 20:42:05', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(42, 2, 'assasasa', 31, 2, 0, '2018-09-04 20:49:15', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(43, 2, 'wwww', 31, 2, 0, '2018-09-04 20:49:21', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(44, 3, 'sadas', 31, 2, 0, '2018-09-04 20:54:25', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(45, 3, 'dasdas', 31, 2, 0, '2018-09-04 20:54:29', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(46, 4, 'Test', 1, 1, 0, '2018-09-08 17:58:47', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(47, 6, 'test replied', 1, 1, 0, '2018-09-08 19:14:39', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(48, 1, 'dsfdsfdsf', 1, 1, 0, '2018-09-08 19:15:12', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(49, 8, 'asdsadsa', 1, 1, 0, '2018-09-08 19:27:25', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `lsp_support_tickets`
--

CREATE TABLE `lsp_support_tickets` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `subject` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `related_service_id` int(11) NOT NULL,
  `related_service_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `department_id` int(11) NOT NULL,
  `department_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `priority` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `message` text COLLATE utf8_unicode_ci NOT NULL,
  `attachment` text COLLATE utf8_unicode_ci NOT NULL,
  `last_ticket_action` text COLLATE utf8_unicode_ci NOT NULL,
  `store_id` int(11) NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_by` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `lsp_support_tickets`
--

INSERT INTO `lsp_support_tickets` (`id`, `name`, `email`, `subject`, `related_service_id`, `related_service_name`, `department_id`, `department_name`, `priority`, `message`, `attachment`, `last_ticket_action`, `store_id`, `created_by`, `updated_by`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Md Fahad Bhuyian', 'f.bhuyian@gmail.com', 'as', 2, 'Cash Register', 2, 'Sales', 'High', 'sdasdsa', '1535918485.jpg', 'Super Admin Replied', 1, 1, 0, '2018-09-08 19:15:12', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 'Fakhrul', 'fakhrul@gmail.com', 'ass', 48, 'User Access Setting', 1, 'Customer Service', 'Medium', 'sasa', '1535918601.jpg', '', 31, 2, 0, '2018-09-02 20:03:21', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, 'Fakhrul', 'fakhrul@gmail.com', 'problem', 37, 'System Setting', 3, 'Technial Support', 'High', 'problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem problem', '1536008239.jpg', '', 31, 2, 0, '2018-09-03 20:57:19', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4, 'Md Fahad Bhuyian', 'f.bhuyian@gmail.com', 'Test Ticket', 2, 'Cash Register', 1, 'Customer Service', 'High', 'sdsadsadasdsadsadsa', '1536429467.JPG', 'Super Admin Replied', 1, 1, 0, '2018-09-08 19:02:40', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(5, 'Md Fahad Bhuyian', 'f.bhuyian@gmail.com', 'New Ticket Test', 2, 'Cash Register', 1, 'Customer Service', 'High', 'sadadsa ds adas dsad', '', 'Super Admin Replied', 1, 1, 0, '2018-09-08 19:02:19', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(6, 'Md Fahad Bhuyian', 'f.bhuyian@gmail.com', 'Test Ticket', 2, 'Cash Register', 3, 'Technial Support', 'High', 'dss adas dsadasdsad', '', 'Super Admin Replied', 1, 1, 0, '2018-09-08 19:14:39', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(7, 'Md Fahad Bhuyian', 'f.bhuyian@gmail.com', 'sadasdsa', 2, 'Cash Register', 1, 'Customer Service', 'High', 'sadsadsadsad', '', 'Ticket Created By Super Admin', 1, 1, 0, '2018-09-08 19:25:25', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(8, 'Md Fahad Bhuyian', 'f.bhuyian@gmail.com', 'asda dsadasd', 2, 'Cash Register', 2, 'Sales', 'High', 'sadasd asdsad', '1536434823.jpg', 'Super Admin Replied', 1, 1, 0, '2018-09-08 19:27:25', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `lsp_tenders`
--

CREATE TABLE `lsp_tenders` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `store_id` int(11) NOT NULL,
  `authorizenet` int(1) NOT NULL DEFAULT '0',
  `paypal` int(2) DEFAULT '0',
  `tender_class` text COLLATE utf8mb4_unicode_ci,
  `created_by` int(11) NOT NULL,
  `updated_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `lsp_tenders`
--

INSERT INTO `lsp_tenders` (`id`, `name`, `store_id`, `authorizenet`, `paypal`, `tender_class`, `created_by`, `updated_by`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'pos System', 13, 0, 0, '', 2, 2, '2018-02-15 04:56:59', '2018-02-15 05:00:32', '2018-02-15 05:00:32'),
(2, 'Amit 2.5 GB', 13, 0, 0, '', 2, 0, '2018-02-15 05:00:44', '2018-02-15 07:04:37', '2018-02-15 07:04:37'),
(3, 'Tableware', 13, 0, 0, '', 2, 0, '2018-02-15 05:00:48', '2018-02-15 05:00:48', NULL),
(4, 'simpleretailpos', 13, 0, 0, '', 2, 0, '2018-02-15 05:00:52', '2018-02-15 05:00:52', NULL),
(5, 'Brand Custom-S', 13, 0, 0, '', 2, 0, '2018-02-15 07:04:33', '2018-02-15 07:04:33', NULL),
(6, 'Cash', 13, 0, 0, '', 1, 0, '2018-02-15 11:38:28', '2018-02-15 11:38:28', NULL),
(7, 'Bhuna', 1, 0, 0, '', 1, 0, '2018-04-13 16:53:43', '2018-04-13 16:53:43', NULL),
(8, 'Card Payment', 0, 1, 0, 'authorize_card_payment', 1, 0, '2018-06-05 16:12:18', '2018-06-05 16:12:18', NULL),
(9, 'Paypal', 0, 0, 1, 'Paypal_Pay', 0, 0, NULL, NULL, NULL),
(10, 'Cash', 1, 0, 0, NULL, 1, 0, '2018-07-27 15:07:32', '2018-07-27 15:07:32', NULL),
(11, 'Cash', 31, 0, 0, NULL, 6, 0, '2018-08-31 09:47:38', '2018-08-31 09:47:38', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `lsp_tutorial_video`
--

CREATE TABLE `lsp_tutorial_video` (
  `id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `thumb` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` int(2) NOT NULL DEFAULT '2',
  `store_id` int(11) NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_by` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `lsp_tutorial_video`
--

INSERT INTO `lsp_tutorial_video` (`id`, `title`, `name`, `thumb`, `status`, `store_id`, `created_by`, `updated_by`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Report', '1536237628.mp4', '1536237628.jpg', 1, 1, 1, 0, '2018-09-06 12:40:28', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 'Ticket Repair and Special Orders', '1536238690.mp4', '1536238690.jpg', 1, 1, 1, 0, '2018-09-06 12:58:10', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, 'Warranties', '1536238715.mp4', '1536238715.jpg', 1, 1, 1, 0, '2018-09-06 12:58:35', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4, 'Variance Reports', '1536238739.mp4', '1536238739.jpg', 1, 1, 1, 0, '2018-09-06 12:58:59', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(5, 'POS System', '1536238764.mp4', '1536238764.jpg', 1, 1, 1, 0, '2018-09-06 12:59:24', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(6, 'In-Store Repair', '1536238790.mp4', '1536238790.jpg', 1, 1, 1, 0, '2018-09-06 12:59:50', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(7, 'adad', '1536260547.mp4', '1536260547.jpg', 1, 1, 1, 0, '2018-09-06 19:02:27', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(9, 'Other Inventory', '1536268118.mp4', '1536268118.jpg', 1, 31, 2, 0, '2018-09-06 21:08:38', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(11, 'Reorder', '1536268118.mp4', '1536268118.jpg', 1, 31, 2, 0, '2018-09-06 21:18:26', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `lsp_tutorial_video_comment`
--

CREATE TABLE `lsp_tutorial_video_comment` (
  `id` int(11) NOT NULL,
  `vid` int(11) NOT NULL,
  `comment` text COLLATE utf8_unicode_ci NOT NULL,
  `store_id` int(11) NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_by` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `lsp_tutorial_video_comment`
--

INSERT INTO `lsp_tutorial_video_comment` (`id`, `vid`, `comment`, `store_id`, `created_by`, `updated_by`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 'sdfasda', 1, 1, 0, '2018-09-06 21:04:13', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 1, 'dasdasd', 31, 2, 0, '2018-09-06 21:05:21', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, 0, 'hi', 31, 2, 0, '2018-09-06 21:18:54', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `lsp_users`
--

CREATE TABLE `lsp_users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_type` int(2) NOT NULL DEFAULT '0',
  `store_id` bigint(11) NOT NULL DEFAULT '0',
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `updated_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `lsp_users`
--

INSERT INTO `lsp_users` (`id`, `name`, `user_type`, `store_id`, `email`, `phone`, `address`, `password`, `remember_token`, `created_by`, `updated_by`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Md Fahad Bhuyian', 1, 1, 'f.bhuyian@gmail.com', '01860748020', 'dd', '$2y$10$Dn9ZjChxZZMPi4EkH4UgYew2kqTmAWgqx.t1NiKFc8YUVgU0Y/gA.', '7PLktlCqM4rcwV9nED5F4dAezSAGsoQnGvPiSRdNArYNyOUoU0HPb5psF1bv', 1, 0, '2018-02-11 13:38:38', '2018-08-30 13:40:00', NULL),
(2, 'Fakhrul', 2, 31, 'fakhrul@gmail.com', '01860748020', 'mkk', '$2y$10$2X9VowOBnGLI.T44DFaUJOQSN9./4ePvyu4fHqmMwUxdkiSbVBTNK', 'fvEdiYae3ZKpS2eFSp9mDApnvKn1KKMbDlLXjT1a', 1, 0, '2018-02-12 04:51:03', '2018-09-02 14:02:43', NULL),
(3, 'Fakhrul Islam Talukder', 1, 1, 'fkhrl@gmail.com', '01860748020', 'hh', '$2y$10$Pkn9oKLAeQSulsEmiVKk3Og/VJNid1u69wNeLucbgrJK.BNx7gvgC', '6ufiWM59Afe83YbXoHzTYvG8z7fOiYOiy5Yo1U0E', 1, 0, '2018-02-13 15:15:28', '2018-08-30 13:41:59', '2018-08-30 19:41:59'),
(4, 'Serajum Monira', 0, 0, 'moniradiu@gmail.com', '', '', '$2y$10$APe3iykj1pXBpVLkyK1kT.H/s48LIcAG.9D.NEa617Lnuomt63G86', NULL, 0, 0, '2018-05-18 11:50:09', '2018-08-31 07:36:20', '2018-08-31 13:36:20'),
(5, 'Fakhrul Islam', 3, 1, 'fakhrul606399@gmail.com', '01977136045', '20/2 ltd1 , mdpur', '$2y$10$k7AO.rmLQWjMJ8orZmRhR.vkTTa9z4Dnyf.8CixKMId44A08KpaSu', '17KRxGQpyNHvhoQjZwt1lUyjg2xPELlt1sEwZSIG9GnkrVE2agGvRKBT5Rx7', 1, 0, '2018-08-29 15:09:37', '2018-08-30 15:35:40', NULL),
(6, 'Monmon', 32, 31, 'monmon@gmail.com', '01860748020', 'dd', '$2y$10$Y1zIBH.BXqK2d9PWyL8Feu3MKo6O2GhSpLIoqYEURXEOwadojEB0.', 'S7dXwFw2U626rsPpVeAfKAGuouPupnZJG5bX7ERgv0EdTEqCCd7MotriktLw', 1, 0, '2018-08-31 07:17:12', '2018-08-31 07:17:12', NULL),
(7, 'Fakhrul Islam Talukder', 31, 31, 'fakhruldd@gmail.com', '01860748020', 'sdsadasd', '$2y$10$2zzccDuSkq6LgesZNF/cJ.68ySdRPDtio8rb1kU9bzDv5nrYir2xu', 'tgxnUrxUoD0XMnwNjSmSBl815KaJm3Q1R5n7upQmDEgipVt5tZ8prxqDfrBi', 6, 0, '2018-08-31 09:45:43', '2018-08-31 09:45:43', NULL),
(8, 'Test User', 2, 71, 'test_user@gmail.com', '01860748020', 'sdfdsf', '$2y$10$ViYqWpw1GTv8pH0yDjh.uuPrhFrTX0I9shMWTa4ljUPKyLBSKbQWi', 'lSkh4NFPPsZNcXelm126FSjKiRDvFsh8gfzl22UsyBwVAPHdvHtbzpm4FOfc', 1, 0, '2018-09-01 14:03:40', '2018-09-01 14:03:40', NULL),
(9, 'MD MAHAMUDUR Zaman Bhuyan', 2, 81, 'fahadvampare@gmail.com', '1860748020', '3A, 20/2, Shorno Kunzo, LTD 1, Mohammadpur', '$2y$10$PaVAXyHfRWTeGI5h8GgOIOtzpgnFy5mXV8sP.1O6qd1qwcKIPK0q.', 'elqFmuOJBoDLAsCjxj5tH6cmPTFX5l6ohkhN49QWt0MiSY00WmxwdH6KXfmm', 1, 0, '2018-12-07 11:42:38', '2018-12-07 11:42:38', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `lsp_vendors`
--

CREATE TABLE `lsp_vendors` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` int(11) NOT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `zip` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `website` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notes` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `store_id` int(11) NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `lsp_vendors`
--

INSERT INTO `lsp_vendors` (`id`, `name`, `email`, `phone`, `address`, `city`, `state`, `zip`, `website`, `notes`, `store_id`, `created_by`, `updated_by`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Fakhrul Islam', 'fakhrulislamtalukder@gmail.com', 1977136045, '20/2 ltd1 , mdpur', 'dhaka', 'dhaka', '1209', 'selfcode.space', 'null', 1, 0, 0, '2018-07-05 15:11:41', '2018-07-05 15:11:41', NULL),
(2, 'Rakib', 'rakib@gmail', 1977136045, '20/2 ltd1 , mdpur', 'dhaka', 'dhaka', '1209', 'http://softaidbd.com', 'null', 1, 0, 0, '2018-07-05 15:17:18', '2018-07-05 15:17:18', NULL),
(3, 'Khoka', 'khoka@gmail.com', 1977136045, '20/2 ltd1 , mdpur', 'dhaka', 'dhaka', '1209', 'http://softaidbd.com', 'sajdj', 1, 0, 0, '2018-07-05 15:17:45', '2018-07-05 15:17:45', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `lsp_warranties`
--

CREATE TABLE `lsp_warranties` (
  `id` int(10) UNSIGNED NOT NULL,
  `invoice_id` int(11) NOT NULL,
  `warranty_date` date NOT NULL,
  `warranty_batch_quantity` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `lsp_warranties`
--

INSERT INTO `lsp_warranties` (`id`, `invoice_id`, `warranty_date`, `warranty_batch_quantity`, `store_id`, `created_by`, `updated_by`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1520106771, '2018-03-03', 1, 13, 1, 0, '2018-03-03 13:53:13', '2018-03-03 13:53:35', '2018-03-03 13:53:35'),
(2, 1520106771, '2018-03-03', 1, 13, 1, 0, '2018-03-03 14:06:00', '2018-03-03 14:06:00', NULL),
(3, 1520106771, '2018-03-05', 1, 13, 1, 0, '2018-03-05 14:49:14', '2018-03-05 14:49:14', NULL),
(4, 1532725259, '2018-07-28', 1, 1, 1, 0, '2018-07-28 06:56:20', '2018-07-28 06:56:20', NULL),
(5, 1532725259, '2018-08-03', 3, 1, 1, 0, '2018-08-03 13:57:49', '2018-08-03 13:57:49', NULL),
(6, 1533415990, '2018-08-04', 3, 1, 1, 0, '2018-08-04 14:53:10', '2018-08-04 14:53:10', NULL),
(7, 1533416562, '2018-08-04', 3, 1, 1, 0, '2018-08-04 15:02:42', '2018-08-04 15:02:42', NULL),
(8, 1537907246, '2018-09-25', 2, 1, 1, 0, '2018-09-25 14:27:26', '2018-09-25 14:27:26', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `lsp_warranty_products`
--

CREATE TABLE `lsp_warranty_products` (
  `id` int(10) UNSIGNED NOT NULL,
  `warranty_id` int(11) NOT NULL,
  `invoice_id` int(11) NOT NULL,
  `warranty_date` date NOT NULL,
  `old_product_id` int(11) NOT NULL,
  `new_product_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `lsp_warranty_products`
--

INSERT INTO `lsp_warranty_products` (`id`, `warranty_id`, `invoice_id`, `warranty_date`, `old_product_id`, `new_product_id`, `store_id`, `created_by`, `updated_by`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 1520106771, '2018-03-03', 5, 3, 13, 1, 0, '2018-03-03 13:53:13', '2018-03-03 13:53:35', '2018-03-03 13:53:35'),
(2, 2, 1520106771, '2018-03-03', 5, 3, 13, 1, 0, '2018-03-03 14:06:00', '2018-03-03 14:06:00', NULL),
(3, 3, 1520106771, '2018-03-05', 5, 3, 13, 1, 0, '2018-03-05 14:49:14', '2018-03-05 14:49:14', NULL),
(4, 4, 1532725259, '2018-07-28', 57, 47, 1, 1, 0, '2018-07-28 06:56:20', '2018-07-28 06:56:20', NULL),
(5, 5, 1532725259, '2018-08-03', 57, 45, 1, 1, 0, '2018-08-03 13:57:50', '2018-08-03 13:57:50', NULL),
(6, 5, 1532725259, '2018-08-03', 56, 47, 1, 1, 0, '2018-08-03 13:57:50', '2018-08-03 13:57:50', NULL),
(7, 5, 1532725259, '2018-08-03', 55, 48, 1, 1, 0, '2018-08-03 13:57:50', '2018-08-03 13:57:50', NULL),
(8, 6, 1532724288, '2018-08-04', 50, 46, 1, 1, 0, '2018-08-04 14:53:11', '2018-08-04 14:53:11', NULL),
(9, 6, 1532724288, '2018-08-04', 48, 48, 1, 1, 0, '2018-08-04 14:53:11', '2018-08-04 14:53:11', NULL),
(10, 6, 1532205112, '2018-08-04', 57, 52, 1, 1, 0, '2018-08-04 14:53:11', '2018-08-04 14:53:11', NULL),
(11, 7, 1532724288, '2018-08-04', 50, 46, 1, 1, 0, '2018-08-04 15:02:42', '2018-08-04 15:02:42', NULL),
(12, 7, 1532724288, '2018-08-04', 48, 48, 1, 1, 0, '2018-08-04 15:02:42', '2018-08-04 15:02:42', NULL),
(13, 7, 1532205112, '2018-08-04', 57, 52, 1, 1, 0, '2018-08-04 15:02:42', '2018-08-04 15:02:42', NULL),
(14, 8, 1532725259, '2018-08-28', 57, 48, 1, 1, 0, '2018-09-25 14:27:26', '2018-09-25 14:27:26', NULL),
(15, 8, 1536959333, '2018-09-25', 58, 45, 1, 1, 0, '2018-09-25 14:27:26', '2018-09-25 14:27:26', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `lsp_warrenty_batches`
--

CREATE TABLE `lsp_warrenty_batches` (
  `id` int(10) UNSIGNED NOT NULL,
  `invoice_id` int(20) DEFAULT '0',
  `warranty_date` date NOT NULL,
  `old_product_id` int(11) NOT NULL,
  `new_product_id` int(11) NOT NULL,
  `old_product_html` text COLLATE utf8_unicode_ci,
  `new_product_html` text COLLATE utf8_unicode_ci,
  `store_id` int(11) NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `lsp_warrenty_batches`
--

INSERT INTO `lsp_warrenty_batches` (`id`, `invoice_id`, `warranty_date`, `old_product_id`, `new_product_id`, `old_product_html`, `new_product_html`, `store_id`, `created_by`, `updated_by`, `created_at`, `updated_at`, `deleted_at`) VALUES
(12, 1532724288, '2018-08-04', 50, 46, 'color pen', 'Small merchant', 1, 1, 0, '2018-08-04 14:43:18', '2018-08-04 15:02:43', '2018-08-04 15:02:43'),
(13, 1532724288, '2018-08-04', 48, 48, 'Divergent', 'Divergent', 1, 1, 0, '2018-08-04 14:43:22', '2018-08-04 15:02:43', '2018-08-04 15:02:43'),
(14, 1532205112, '2018-08-04', 57, 52, 'Demo 4', 'laptop', 1, 1, 0, '2018-08-04 14:43:35', '2018-08-04 15:02:43', '2018-08-04 15:02:43'),
(15, 1532725259, '2018-08-28', 57, 48, 'Demo 4', 'Divergent', 1, 1, 0, '2018-08-28 13:27:52', '2018-09-25 14:27:26', '2018-09-25 14:27:26'),
(16, 1536959333, '2018-09-25', 58, 45, 'Demo product one with 5 gb', 'CHEF’S SPECIAL DISHES', 1, 1, 0, '2018-09-25 14:27:20', '2018-09-25 14:27:26', '2018-09-25 14:27:26'),
(17, 1546169942, '2019-01-01', 93, 45, 'Iphone, Iphone X - Speaker', 'CHEF’S SPECIAL DISHES', 1, 1, 0, '2019-01-01 03:26:22', '2019-01-01 03:26:22', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `lsp_activities`
--
ALTER TABLE `lsp_activities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lsp_assign_user_roles`
--
ALTER TABLE `lsp_assign_user_roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lsp_authorize_net_payments`
--
ALTER TABLE `lsp_authorize_net_payments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lsp_authorize_net_payment_histories`
--
ALTER TABLE `lsp_authorize_net_payment_histories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lsp_buybacks`
--
ALTER TABLE `lsp_buybacks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `buybacks_id_index` (`id`),
  ADD KEY `buybacks_customer_id_index` (`customer_id`),
  ADD KEY `buybacks_customer_name_index` (`customer_name`);

--
-- Indexes for table `lsp_card_infos`
--
ALTER TABLE `lsp_card_infos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lsp_cashier_punches`
--
ALTER TABLE `lsp_cashier_punches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lsp_categories`
--
ALTER TABLE `lsp_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lsp_close_drawers`
--
ALTER TABLE `lsp_close_drawers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lsp_color_plates`
--
ALTER TABLE `lsp_color_plates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lsp_counter_displays`
--
ALTER TABLE `lsp_counter_displays`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lsp_counter_display_authorized_p_cs`
--
ALTER TABLE `lsp_counter_display_authorized_p_cs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lsp_customers`
--
ALTER TABLE `lsp_customers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lsp_customer_invoice_emails`
--
ALTER TABLE `lsp_customer_invoice_emails`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lsp_customer_leads`
--
ALTER TABLE `lsp_customer_leads`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lsp_departments`
--
ALTER TABLE `lsp_departments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lsp_event_calenders`
--
ALTER TABLE `lsp_event_calenders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lsp_expenses`
--
ALTER TABLE `lsp_expenses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lsp_expense_heads`
--
ALTER TABLE `lsp_expense_heads`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lsp_invoices`
--
ALTER TABLE `lsp_invoices`
  ADD PRIMARY KEY (`id`),
  ADD KEY `invoices_id_index` (`id`),
  ADD KEY `invoices_invoice_id_index` (`invoice_id`);

--
-- Indexes for table `lsp_invoice_email_teamplates`
--
ALTER TABLE `lsp_invoice_email_teamplates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lsp_invoice_layout_ones`
--
ALTER TABLE `lsp_invoice_layout_ones`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lsp_invoice_layout_twos`
--
ALTER TABLE `lsp_invoice_layout_twos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lsp_invoice_payments`
--
ALTER TABLE `lsp_invoice_payments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lsp_invoice_products`
--
ALTER TABLE `lsp_invoice_products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lsp_invoice_profits`
--
ALTER TABLE `lsp_invoice_profits`
  ADD PRIMARY KEY (`id`),
  ADD KEY `invoice_profits_invoice_id_index` (`invoice_id`),
  ADD KEY `invoice_profits_id_index` (`id`),
  ADD KEY `invoice_profits_invoice_datetime_index` (`invoice_datetime`),
  ADD KEY `invoice_profits_customer_id_index` (`customer_id`);

--
-- Indexes for table `lsp_in_store_repairs`
--
ALTER TABLE `lsp_in_store_repairs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `in_store_repairs_id_index` (`id`);

--
-- Indexes for table `lsp_in_store_repair_devices`
--
ALTER TABLE `lsp_in_store_repair_devices`
  ADD PRIMARY KEY (`id`),
  ADD KEY `in_store_repair_devices_id_index` (`id`),
  ADD KEY `in_store_repair_devices_name_index` (`name`);

--
-- Indexes for table `lsp_in_store_repair_models`
--
ALTER TABLE `lsp_in_store_repair_models`
  ADD PRIMARY KEY (`id`),
  ADD KEY `in_store_repair_models_id_index` (`id`),
  ADD KEY `in_store_repair_models_device_id_index` (`device_id`),
  ADD KEY `in_store_repair_models_device_name_index` (`device_name`),
  ADD KEY `in_store_repair_models_name_index` (`name`);

--
-- Indexes for table `lsp_in_store_repair_prices`
--
ALTER TABLE `lsp_in_store_repair_prices`
  ADD PRIMARY KEY (`id`),
  ADD KEY `in_store_repair_prices_id_index` (`id`),
  ADD KEY `in_store_repair_prices_device_id_index` (`device_id`),
  ADD KEY `in_store_repair_prices_device_name_index` (`device_name`),
  ADD KEY `in_store_repair_prices_model_id_index` (`model_id`),
  ADD KEY `in_store_repair_prices_model_name_index` (`model_name`),
  ADD KEY `in_store_repair_prices_problem_id_index` (`problem_id`),
  ADD KEY `in_store_repair_prices_problem_name_index` (`problem_name`);

--
-- Indexes for table `lsp_in_store_repair_problems`
--
ALTER TABLE `lsp_in_store_repair_problems`
  ADD PRIMARY KEY (`id`),
  ADD KEY `in_store_repair_problems_id_index` (`id`),
  ADD KEY `in_store_repair_problems_device_id_index` (`device_id`),
  ADD KEY `in_store_repair_problems_device_name_index` (`device_name`),
  ADD KEY `in_store_repair_problems_model_id_index` (`model_id`),
  ADD KEY `in_store_repair_problems_model_name_index` (`model_name`),
  ADD KEY `in_store_repair_problems_name_index` (`name`);

--
-- Indexes for table `lsp_in_store_repair_products`
--
ALTER TABLE `lsp_in_store_repair_products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `in_store_repair_products_id_index` (`id`),
  ADD KEY `in_store_repair_products_product_id_index` (`product_id`),
  ADD KEY `in_store_repair_products_device_id_index` (`device_id`),
  ADD KEY `in_store_repair_products_device_name_index` (`device_name`),
  ADD KEY `in_store_repair_products_model_id_index` (`model_id`),
  ADD KEY `in_store_repair_products_model_name_index` (`model_name`),
  ADD KEY `in_store_repair_products_problem_id_index` (`problem_id`),
  ADD KEY `in_store_repair_products_problem_name_index` (`problem_name`),
  ADD KEY `in_store_repair_products_barcode_index` (`barcode`),
  ADD KEY `in_store_repair_products_name_index` (`name`);

--
-- Indexes for table `lsp_in_store_tickets`
--
ALTER TABLE `lsp_in_store_tickets`
  ADD PRIMARY KEY (`id`),
  ADD KEY `in_store_tickets_id_index` (`id`);

--
-- Indexes for table `lsp_login_activities`
--
ALTER TABLE `lsp_login_activities`
  ADD PRIMARY KEY (`id`),
  ADD KEY `login_activities_user_id_index` (`user_id`);

--
-- Indexes for table `lsp_menu_pages`
--
ALTER TABLE `lsp_menu_pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lsp_migrations`
--
ALTER TABLE `lsp_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lsp_open_drawers`
--
ALTER TABLE `lsp_open_drawers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lsp_password_resets`
--
ALTER TABLE `lsp_password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `lsp_payouts`
--
ALTER TABLE `lsp_payouts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lsp_pos_settings`
--
ALTER TABLE `lsp_pos_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lsp_printer_print_sizes`
--
ALTER TABLE `lsp_printer_print_sizes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lsp_products`
--
ALTER TABLE `lsp_products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_id_index` (`id`),
  ADD KEY `products_name_index` (`name`);

--
-- Indexes for table `lsp_product_profits`
--
ALTER TABLE `lsp_product_profits`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lsp_product_stockins`
--
ALTER TABLE `lsp_product_stockins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lsp_product_stockin_invoices`
--
ALTER TABLE `lsp_product_stockin_invoices`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lsp_product_variances`
--
ALTER TABLE `lsp_product_variances`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_variances_variance_id_index` (`variance_id`),
  ADD KEY `product_variances_id_index` (`id`);

--
-- Indexes for table `lsp_product_variance_datas`
--
ALTER TABLE `lsp_product_variance_datas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_variance_datas_variance_id_index` (`variance_id`),
  ADD KEY `product_variance_datas_id_index` (`id`),
  ADD KEY `product_variance_datas_product_id_index` (`product_id`);

--
-- Indexes for table `lsp_repair_ticket_assets`
--
ALTER TABLE `lsp_repair_ticket_assets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lsp_report_settings`
--
ALTER TABLE `lsp_report_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lsp_retail_pos_summaries`
--
ALTER TABLE `lsp_retail_pos_summaries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lsp_retail_pos_summary_date_wises`
--
ALTER TABLE `lsp_retail_pos_summary_date_wises`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lsp_roles`
--
ALTER TABLE `lsp_roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lsp_role_wise_menus`
--
ALTER TABLE `lsp_role_wise_menus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lsp_sales_returns`
--
ALTER TABLE `lsp_sales_returns`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lsp_send_sales_emails`
--
ALTER TABLE `lsp_send_sales_emails`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lsp_send_test_mails`
--
ALTER TABLE `lsp_send_test_mails`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lsp_sessions`
--
ALTER TABLE `lsp_sessions`
  ADD UNIQUE KEY `sessions_id_unique` (`id`);

--
-- Indexes for table `lsp_site_settings`
--
ALTER TABLE `lsp_site_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lsp_special_parts_orders`
--
ALTER TABLE `lsp_special_parts_orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `special_parts_orders_id_index` (`id`),
  ADD KEY `special_parts_orders_ticket_id_index` (`ticket_id`);

--
-- Indexes for table `lsp_stores`
--
ALTER TABLE `lsp_stores`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lsp_support_comment`
--
ALTER TABLE `lsp_support_comment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lsp_support_tickets`
--
ALTER TABLE `lsp_support_tickets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lsp_tenders`
--
ALTER TABLE `lsp_tenders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lsp_tutorial_video`
--
ALTER TABLE `lsp_tutorial_video`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lsp_tutorial_video_comment`
--
ALTER TABLE `lsp_tutorial_video_comment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lsp_users`
--
ALTER TABLE `lsp_users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `lsp_vendors`
--
ALTER TABLE `lsp_vendors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lsp_warranties`
--
ALTER TABLE `lsp_warranties`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lsp_warranty_products`
--
ALTER TABLE `lsp_warranty_products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lsp_warrenty_batches`
--
ALTER TABLE `lsp_warrenty_batches`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `lsp_activities`
--
ALTER TABLE `lsp_activities`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `lsp_assign_user_roles`
--
ALTER TABLE `lsp_assign_user_roles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `lsp_authorize_net_payments`
--
ALTER TABLE `lsp_authorize_net_payments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `lsp_authorize_net_payment_histories`
--
ALTER TABLE `lsp_authorize_net_payment_histories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT for table `lsp_buybacks`
--
ALTER TABLE `lsp_buybacks`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `lsp_card_infos`
--
ALTER TABLE `lsp_card_infos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT for table `lsp_cashier_punches`
--
ALTER TABLE `lsp_cashier_punches`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=89;
--
-- AUTO_INCREMENT for table `lsp_categories`
--
ALTER TABLE `lsp_categories`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `lsp_close_drawers`
--
ALTER TABLE `lsp_close_drawers`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `lsp_color_plates`
--
ALTER TABLE `lsp_color_plates`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=109;
--
-- AUTO_INCREMENT for table `lsp_counter_displays`
--
ALTER TABLE `lsp_counter_displays`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `lsp_counter_display_authorized_p_cs`
--
ALTER TABLE `lsp_counter_display_authorized_p_cs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `lsp_customers`
--
ALTER TABLE `lsp_customers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;
--
-- AUTO_INCREMENT for table `lsp_customer_invoice_emails`
--
ALTER TABLE `lsp_customer_invoice_emails`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `lsp_customer_leads`
--
ALTER TABLE `lsp_customer_leads`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `lsp_departments`
--
ALTER TABLE `lsp_departments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `lsp_event_calenders`
--
ALTER TABLE `lsp_event_calenders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `lsp_expenses`
--
ALTER TABLE `lsp_expenses`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `lsp_expense_heads`
--
ALTER TABLE `lsp_expense_heads`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `lsp_invoices`
--
ALTER TABLE `lsp_invoices`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=156;
--
-- AUTO_INCREMENT for table `lsp_invoice_email_teamplates`
--
ALTER TABLE `lsp_invoice_email_teamplates`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `lsp_invoice_layout_ones`
--
ALTER TABLE `lsp_invoice_layout_ones`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `lsp_invoice_layout_twos`
--
ALTER TABLE `lsp_invoice_layout_twos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `lsp_invoice_payments`
--
ALTER TABLE `lsp_invoice_payments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=86;
--
-- AUTO_INCREMENT for table `lsp_invoice_products`
--
ALTER TABLE `lsp_invoice_products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=719;
--
-- AUTO_INCREMENT for table `lsp_invoice_profits`
--
ALTER TABLE `lsp_invoice_profits`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `lsp_in_store_repairs`
--
ALTER TABLE `lsp_in_store_repairs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `lsp_in_store_repair_devices`
--
ALTER TABLE `lsp_in_store_repair_devices`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `lsp_in_store_repair_models`
--
ALTER TABLE `lsp_in_store_repair_models`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `lsp_in_store_repair_prices`
--
ALTER TABLE `lsp_in_store_repair_prices`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `lsp_in_store_repair_problems`
--
ALTER TABLE `lsp_in_store_repair_problems`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `lsp_in_store_repair_products`
--
ALTER TABLE `lsp_in_store_repair_products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `lsp_in_store_tickets`
--
ALTER TABLE `lsp_in_store_tickets`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `lsp_login_activities`
--
ALTER TABLE `lsp_login_activities`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `lsp_menu_pages`
--
ALTER TABLE `lsp_menu_pages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;
--
-- AUTO_INCREMENT for table `lsp_migrations`
--
ALTER TABLE `lsp_migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;
--
-- AUTO_INCREMENT for table `lsp_open_drawers`
--
ALTER TABLE `lsp_open_drawers`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
--
-- AUTO_INCREMENT for table `lsp_payouts`
--
ALTER TABLE `lsp_payouts`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `lsp_pos_settings`
--
ALTER TABLE `lsp_pos_settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `lsp_printer_print_sizes`
--
ALTER TABLE `lsp_printer_print_sizes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `lsp_products`
--
ALTER TABLE `lsp_products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=143;
--
-- AUTO_INCREMENT for table `lsp_product_profits`
--
ALTER TABLE `lsp_product_profits`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `lsp_product_stockins`
--
ALTER TABLE `lsp_product_stockins`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;
--
-- AUTO_INCREMENT for table `lsp_product_stockin_invoices`
--
ALTER TABLE `lsp_product_stockin_invoices`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `lsp_product_variances`
--
ALTER TABLE `lsp_product_variances`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `lsp_product_variance_datas`
--
ALTER TABLE `lsp_product_variance_datas`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;
--
-- AUTO_INCREMENT for table `lsp_repair_ticket_assets`
--
ALTER TABLE `lsp_repair_ticket_assets`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `lsp_report_settings`
--
ALTER TABLE `lsp_report_settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `lsp_retail_pos_summaries`
--
ALTER TABLE `lsp_retail_pos_summaries`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `lsp_retail_pos_summary_date_wises`
--
ALTER TABLE `lsp_retail_pos_summary_date_wises`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=118;
--
-- AUTO_INCREMENT for table `lsp_roles`
--
ALTER TABLE `lsp_roles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `lsp_role_wise_menus`
--
ALTER TABLE `lsp_role_wise_menus`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=590;
--
-- AUTO_INCREMENT for table `lsp_sales_returns`
--
ALTER TABLE `lsp_sales_returns`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `lsp_send_sales_emails`
--
ALTER TABLE `lsp_send_sales_emails`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=123;
--
-- AUTO_INCREMENT for table `lsp_send_test_mails`
--
ALTER TABLE `lsp_send_test_mails`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `lsp_site_settings`
--
ALTER TABLE `lsp_site_settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `lsp_special_parts_orders`
--
ALTER TABLE `lsp_special_parts_orders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `lsp_stores`
--
ALTER TABLE `lsp_stores`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `lsp_support_comment`
--
ALTER TABLE `lsp_support_comment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;
--
-- AUTO_INCREMENT for table `lsp_support_tickets`
--
ALTER TABLE `lsp_support_tickets`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `lsp_tenders`
--
ALTER TABLE `lsp_tenders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `lsp_tutorial_video`
--
ALTER TABLE `lsp_tutorial_video`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `lsp_tutorial_video_comment`
--
ALTER TABLE `lsp_tutorial_video_comment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `lsp_users`
--
ALTER TABLE `lsp_users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `lsp_vendors`
--
ALTER TABLE `lsp_vendors`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `lsp_warranties`
--
ALTER TABLE `lsp_warranties`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `lsp_warranty_products`
--
ALTER TABLE `lsp_warranty_products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `lsp_warrenty_batches`
--
ALTER TABLE `lsp_warrenty_batches`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `lsp_login_activities`
--
ALTER TABLE `lsp_login_activities`
  ADD CONSTRAINT `login_activities_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `lsp_users` (`id`) ON DELETE SET NULL;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
