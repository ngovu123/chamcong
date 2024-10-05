-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Oct 05, 2024 at 03:08 PM
-- Server version: 5.7.40-cll-lve
-- PHP Version: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `yq423bysvapx_lagqua`
--

-- --------------------------------------------------------

--
-- Table structure for table `accounts`
--

CREATE TABLE `accounts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ac_name` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ac_number` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `code` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `branch` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount` double(16,2) NOT NULL DEFAULT '0.00',
  `status_id` bigint(20) UNSIGNED NOT NULL DEFAULT '1',
  `created_by` bigint(20) UNSIGNED NOT NULL DEFAULT '1',
  `updated_by` bigint(20) UNSIGNED NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `company_id` bigint(20) UNSIGNED DEFAULT '1',
  `branch_id` bigint(20) UNSIGNED DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `activity_log`
--

CREATE TABLE `activity_log` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `log_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `subject_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject_id` bigint(20) UNSIGNED DEFAULT NULL,
  `causer_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `causer_id` bigint(20) UNSIGNED DEFAULT NULL,
  `event` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `properties` json DEFAULT NULL,
  `batch_uuid` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ip_address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `company_id` bigint(20) UNSIGNED DEFAULT '1',
  `branch_id` bigint(20) UNSIGNED DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `activity_log`
--

INSERT INTO `activity_log` (`id`, `log_name`, `description`, `subject_type`, `subject_id`, `causer_type`, `causer_id`, `event`, `properties`, `batch_uuid`, `ip_address`, `created_at`, `updated_at`, `company_id`, `branch_id`) VALUES
(1, 'default', 'created', 'App\\Models\\Company\\Company', 1, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-25 06:58:18', '2024-06-25 06:58:18', 1, 1),
(2, 'default', 'created', 'App\\Models\\Hrm\\Shift\\Shift', 1, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-25 06:58:18', '2024-06-25 06:58:18', 1, 1),
(3, 'default', 'created', 'App\\Models\\Hrm\\Shift\\Shift', 2, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-25 06:58:18', '2024-06-25 06:58:18', 1, 1),
(4, 'default', 'created', 'App\\Models\\Hrm\\Shift\\Shift', 3, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-25 06:58:18', '2024-06-25 06:58:18', 1, 1),
(5, 'default', 'created', 'App\\Models\\Role\\Role', 1, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-25 06:58:18', '2024-06-25 06:58:18', 1, 1),
(6, 'default', 'created', 'App\\Models\\Role\\Role', 2, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-25 06:58:18', '2024-06-25 06:58:18', 1, 1),
(7, 'default', 'created', 'App\\Models\\Role\\Role', 3, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-25 06:58:18', '2024-06-25 06:58:18', 1, 1),
(8, 'default', 'created', 'App\\Models\\Role\\Role', 4, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-25 06:58:18', '2024-06-25 06:58:18', 1, 1),
(9, 'default', 'created', 'App\\Models\\User', 1, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-25 06:58:18', '2024-06-25 06:58:18', 1, 1),
(10, 'default', 'created', 'App\\Models\\User', 2, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-25 06:58:18', '2024-06-25 06:58:18', 1, 1),
(11, 'default', 'created', 'App\\Models\\User', 3, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-25 06:58:18', '2024-06-25 06:58:18', 1, 1),
(12, 'default', 'created', 'App\\Models\\coreApp\\Setting\\Setting', 1, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-25 06:58:18', '2024-06-25 06:58:18', 1, 1),
(13, 'default', 'created', 'App\\Models\\coreApp\\Setting\\Setting', 2, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-25 06:58:18', '2024-06-25 06:58:18', 1, 1),
(14, 'default', 'created', 'App\\Models\\coreApp\\Setting\\Setting', 3, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-25 06:58:18', '2024-06-25 06:58:18', 1, 1),
(15, 'default', 'created', 'App\\Models\\coreApp\\Setting\\Setting', 4, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-25 06:58:18', '2024-06-25 06:58:18', 1, 1),
(16, 'default', 'created', 'App\\Models\\coreApp\\Setting\\Setting', 5, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-25 06:58:18', '2024-06-25 06:58:18', 1, 1),
(17, 'default', 'created', 'App\\Models\\coreApp\\Setting\\Setting', 6, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-25 06:58:18', '2024-06-25 06:58:18', 1, 1),
(18, 'default', 'created', 'App\\Models\\coreApp\\Setting\\Setting', 7, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-25 06:58:18', '2024-06-25 06:58:18', 1, 1),
(19, 'default', 'created', 'App\\Models\\coreApp\\Setting\\Setting', 8, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-25 06:58:18', '2024-06-25 06:58:18', 1, 1),
(20, 'default', 'created', 'App\\Models\\coreApp\\Setting\\Setting', 9, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-25 06:58:18', '2024-06-25 06:58:18', 1, 1),
(21, 'default', 'created', 'App\\Models\\coreApp\\Setting\\Setting', 10, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-25 06:58:18', '2024-06-25 06:58:18', 1, 1),
(22, 'default', 'created', 'App\\Models\\coreApp\\Setting\\Setting', 11, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-25 06:58:18', '2024-06-25 06:58:18', 1, 1),
(23, 'default', 'created', 'App\\Models\\coreApp\\Setting\\Setting', 12, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-25 06:58:18', '2024-06-25 06:58:18', 1, 1),
(24, 'default', 'created', 'App\\Models\\coreApp\\Setting\\Setting', 13, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-25 06:58:18', '2024-06-25 06:58:18', 1, 1),
(25, 'default', 'created', 'App\\Models\\coreApp\\Setting\\Setting', 14, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-25 06:58:18', '2024-06-25 06:58:18', 1, 1),
(26, 'default', 'created', 'App\\Models\\coreApp\\Setting\\Setting', 15, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-25 06:58:18', '2024-06-25 06:58:18', 1, 1),
(27, 'default', 'created', 'App\\Models\\coreApp\\Setting\\Setting', 16, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-25 06:58:18', '2024-06-25 06:58:18', 1, 1),
(28, 'default', 'created', 'App\\Models\\coreApp\\Setting\\Setting', 17, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-25 06:58:18', '2024-06-25 06:58:18', 1, 1),
(29, 'default', 'created', 'App\\Models\\coreApp\\Setting\\Setting', 18, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-25 06:58:18', '2024-06-25 06:58:18', 1, 1),
(30, 'default', 'created', 'App\\Models\\coreApp\\Setting\\Setting', 19, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-25 06:58:18', '2024-06-25 06:58:18', 1, 1),
(31, 'default', 'created', 'App\\Models\\coreApp\\Setting\\Setting', 20, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-25 06:58:18', '2024-06-25 06:58:18', 1, 1),
(32, 'default', 'created', 'App\\Models\\coreApp\\Setting\\Setting', 21, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-25 06:58:18', '2024-06-25 06:58:18', 1, 1),
(33, 'default', 'created', 'App\\Models\\coreApp\\Setting\\Setting', 22, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-25 06:58:18', '2024-06-25 06:58:18', 1, 1),
(34, 'default', 'created', 'App\\Models\\coreApp\\Setting\\Setting', 23, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-25 06:58:18', '2024-06-25 06:58:18', 1, 1),
(35, 'default', 'created', 'App\\Models\\coreApp\\Setting\\Setting', 24, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-25 06:58:18', '2024-06-25 06:58:18', 1, 1),
(36, 'default', 'created', 'App\\Models\\coreApp\\Setting\\Setting', 25, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-25 06:58:18', '2024-06-25 06:58:18', 1, 1),
(37, 'default', 'created', 'App\\Models\\coreApp\\Setting\\Setting', 26, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-25 06:58:18', '2024-06-25 06:58:18', 1, 1),
(38, 'default', 'created', 'App\\Models\\coreApp\\Setting\\Setting', 27, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-25 06:58:18', '2024-06-25 06:58:18', 1, 1),
(39, 'default', 'created', 'App\\Models\\coreApp\\Setting\\Setting', 28, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-25 06:58:18', '2024-06-25 06:58:18', 1, 1),
(40, 'default', 'created', 'App\\Models\\coreApp\\Setting\\Setting', 29, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-25 06:58:18', '2024-06-25 06:58:18', 1, 1),
(41, 'default', 'created', 'App\\Models\\coreApp\\Setting\\Setting', 30, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-25 06:58:18', '2024-06-25 06:58:18', 1, 1),
(42, 'default', 'created', 'App\\Models\\coreApp\\Setting\\Setting', 31, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-25 06:58:18', '2024-06-25 06:58:18', 1, 1),
(43, 'default', 'created', 'App\\Models\\coreApp\\Setting\\Setting', 32, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-25 06:58:18', '2024-06-25 06:58:18', 1, 1),
(44, 'default', 'created', 'App\\Models\\coreApp\\Setting\\Setting', 33, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-25 06:58:18', '2024-06-25 06:58:18', 1, 1),
(45, 'default', 'created', 'App\\Models\\coreApp\\Setting\\Setting', 34, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-25 06:58:18', '2024-06-25 06:58:18', 1, 1),
(46, 'default', 'created', 'App\\Models\\coreApp\\Setting\\Setting', 35, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-25 06:58:18', '2024-06-25 06:58:18', 1, 1),
(47, 'default', 'created', 'App\\Models\\coreApp\\Setting\\Setting', 36, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-25 06:58:18', '2024-06-25 06:58:18', 1, 1),
(48, 'default', 'created', 'App\\Models\\Hrm\\Attendance\\DutySchedule', 1, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-25 06:58:19', '2024-06-25 06:58:19', 1, 1),
(49, 'default', 'created', 'App\\Models\\Hrm\\Attendance\\DutySchedule', 2, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-25 06:58:19', '2024-06-25 06:58:19', 1, 1),
(50, 'default', 'created', 'App\\Models\\Hrm\\Attendance\\DutySchedule', 3, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-25 06:58:19', '2024-06-25 06:58:19', 1, 1),
(51, 'default', 'created', 'App\\Models\\Hrm\\Attendance\\Weekend', 1, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-25 06:58:19', '2024-06-25 06:58:19', 1, 1),
(52, 'default', 'created', 'App\\Models\\Hrm\\Attendance\\Weekend', 2, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-25 06:58:19', '2024-06-25 06:58:19', 1, 1),
(53, 'default', 'created', 'App\\Models\\Hrm\\Attendance\\Weekend', 3, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-25 06:58:19', '2024-06-25 06:58:19', 1, 1),
(54, 'default', 'created', 'App\\Models\\Hrm\\Attendance\\Weekend', 4, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-25 06:58:19', '2024-06-25 06:58:19', 1, 1),
(55, 'default', 'created', 'App\\Models\\Hrm\\Attendance\\Weekend', 5, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-25 06:58:19', '2024-06-25 06:58:19', 1, 1),
(56, 'default', 'created', 'App\\Models\\Hrm\\Attendance\\Weekend', 6, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-25 06:58:19', '2024-06-25 06:58:19', 1, 1),
(57, 'default', 'created', 'App\\Models\\Hrm\\Attendance\\Weekend', 7, NULL, NULL, 'created', '[]', NULL, NULL, '2024-06-25 06:58:19', '2024-06-25 06:58:19', 1, 1),
(58, 'default', 'updated', 'App\\Models\\User', 1, 'App\\Models\\User', 1, 'updated', '[]', NULL, NULL, '2024-09-30 08:25:54', '2024-09-30 08:25:54', 1, 1),
(59, 'default', 'updated', 'App\\Models\\User', 1, 'App\\Models\\User', 1, 'updated', '[]', NULL, NULL, '2024-09-30 08:40:38', '2024-09-30 08:40:38', 1, 1),
(60, 'default', 'updated', 'App\\Models\\User', 1, 'App\\Models\\User', 1, 'updated', '[]', NULL, NULL, '2024-09-30 08:41:23', '2024-09-30 08:41:23', 1, 1),
(61, 'default', 'updated', 'App\\Models\\User', 2, 'App\\Models\\User', 2, 'updated', '[]', NULL, NULL, '2024-09-30 08:45:59', '2024-09-30 08:45:59', 1, 1),
(62, 'default', 'updated', 'App\\Models\\User', 2, 'App\\Models\\User', 2, 'updated', '[]', NULL, NULL, '2024-09-30 08:47:37', '2024-09-30 08:47:37', 1, 1),
(63, 'default', 'updated', 'App\\Models\\User', 3, 'App\\Models\\User', 3, 'updated', '[]', NULL, NULL, '2024-09-30 08:47:56', '2024-09-30 08:47:56', 1, 1),
(64, 'default', 'created', 'App\\Models\\Hrm\\Attendance\\Attendance', 1, 'App\\Models\\User', 3, 'created', '[]', NULL, NULL, '2024-09-30 08:50:57', '2024-09-30 08:50:57', 1, 1),
(65, 'default', 'updated', 'App\\Models\\User', 3, 'App\\Models\\User', 3, 'updated', '[]', NULL, NULL, '2024-09-30 08:53:00', '2024-09-30 08:53:00', 1, 1),
(66, 'default', 'updated', 'App\\Models\\User', 1, 'App\\Models\\User', 1, 'updated', '[]', NULL, NULL, '2024-10-02 02:36:45', '2024-10-02 02:36:45', 1, 1),
(67, 'default', 'updated', 'App\\Models\\User', 1, 'App\\Models\\User', 1, 'updated', '[]', NULL, NULL, '2024-10-02 02:37:44', '2024-10-02 02:37:44', 1, 1),
(68, 'default', 'created', 'App\\Models\\coreApp\\Setting\\Setting', 37, 'App\\Models\\User', 1, 'created', '[]', NULL, NULL, '2024-10-02 02:54:59', '2024-10-02 02:54:59', 1, 1),
(69, 'default', 'updated', 'App\\Models\\User', 1, 'App\\Models\\User', 1, 'updated', '[]', NULL, NULL, '2024-10-02 02:55:19', '2024-10-02 02:55:19', 1, 1),
(70, 'default', 'deleted', 'App\\Models\\User', 2, 'App\\Models\\User', 1, 'deleted', '[]', NULL, NULL, '2024-10-02 03:06:18', '2024-10-02 03:06:18', 1, 1),
(71, 'default', 'updated', 'App\\Models\\Role\\Role', 3, 'App\\Models\\User', 1, 'updated', '[]', NULL, NULL, '2024-10-02 03:06:29', '2024-10-02 03:06:29', 1, 1),
(72, 'default', 'updated', 'App\\Models\\Role\\Role', 3, 'App\\Models\\User', 1, 'updated', '[]', NULL, NULL, '2024-10-02 03:06:32', '2024-10-02 03:06:32', 1, 1),
(73, 'default', 'updated', 'App\\Models\\User', 3, 'App\\Models\\User', 1, 'updated', '[]', NULL, NULL, '2024-10-02 03:11:30', '2024-10-02 03:11:30', 1, 1),
(74, 'default', 'updated', 'App\\Models\\User', 3, 'App\\Models\\User', 1, 'updated', '[]', NULL, NULL, '2024-10-02 03:18:24', '2024-10-02 03:18:24', 1, 1),
(75, 'default', 'updated', 'App\\Models\\Hrm\\Attendance\\DutySchedule', 1, 'App\\Models\\User', 1, 'updated', '[]', NULL, NULL, '2024-10-02 03:36:41', '2024-10-02 03:36:41', 1, 1),
(76, 'default', 'updated', 'App\\Models\\Hrm\\Attendance\\DutySchedule', 2, 'App\\Models\\User', 1, 'updated', '[]', NULL, NULL, '2024-10-02 03:37:28', '2024-10-02 03:37:28', 1, 1),
(77, 'default', 'updated', 'App\\Models\\Hrm\\Attendance\\DutySchedule', 3, 'App\\Models\\User', 1, 'updated', '[]', NULL, NULL, '2024-10-02 03:38:02', '2024-10-02 03:38:02', 1, 1),
(78, 'default', 'updated', 'App\\Models\\User', 1, 'App\\Models\\User', 1, 'updated', '[]', NULL, NULL, '2024-10-02 04:58:03', '2024-10-02 04:58:03', 1, 1),
(79, 'default', 'updated', 'App\\Models\\User', 1, 'App\\Models\\User', 1, 'updated', '[]', NULL, NULL, '2024-10-02 03:58:29', '2024-10-02 03:58:29', 1, 1),
(80, 'default', 'updated', 'App\\Models\\User', 1, 'App\\Models\\User', 1, 'updated', '[]', NULL, NULL, '2024-10-02 05:13:40', '2024-10-02 05:13:40', 1, 1),
(81, 'default', 'updated', 'App\\Models\\User', 1, 'App\\Models\\User', 1, 'updated', '[]', NULL, NULL, '2024-10-02 04:13:57', '2024-10-02 04:13:57', 1, 1),
(82, 'default', 'updated', 'App\\Models\\Hrm\\Designation\\Designation', 3, 'App\\Models\\User', 1, 'updated', '[]', NULL, NULL, '2024-10-02 04:17:21', '2024-10-02 04:17:21', 1, 1),
(83, 'default', 'updated', 'App\\Models\\Role\\Role', 3, 'App\\Models\\User', 1, 'updated', '[]', NULL, NULL, '2024-10-02 04:18:01', '2024-10-02 04:18:01', 1, 1),
(84, 'default', 'updated', 'App\\Models\\Role\\Role', 3, 'App\\Models\\User', 1, 'updated', '[]', NULL, NULL, '2024-10-02 04:18:02', '2024-10-02 04:18:02', 1, 1),
(85, 'default', 'updated', 'App\\Models\\Role\\Role', 3, 'App\\Models\\User', 1, 'updated', '[]', NULL, NULL, '2024-10-02 04:18:05', '2024-10-02 04:18:05', 1, 1),
(86, 'default', 'updated', 'App\\Models\\Role\\Role', 3, 'App\\Models\\User', 1, 'updated', '[]', NULL, NULL, '2024-10-02 04:18:05', '2024-10-02 04:18:05', 1, 1),
(87, 'default', 'updated', 'App\\Models\\User', 3, 'App\\Models\\User', 1, 'updated', '[]', NULL, NULL, '2024-10-02 05:19:13', '2024-10-02 05:19:13', 1, 1),
(88, 'default', 'updated', 'App\\Models\\User', 1, 'App\\Models\\User', 1, 'updated', '[]', NULL, NULL, '2024-10-02 05:19:21', '2024-10-02 05:19:21', 1, 1),
(89, 'default', 'updated', 'App\\Models\\User', 3, 'App\\Models\\User', 3, 'updated', '[]', NULL, NULL, '2024-10-02 04:19:29', '2024-10-02 04:19:29', 1, 1),
(90, 'default', 'updated', 'App\\Models\\User', 3, 'App\\Models\\User', 3, 'updated', '[]', NULL, NULL, '2024-10-02 05:20:39', '2024-10-02 05:20:39', 1, 1),
(91, 'default', 'updated', 'App\\Models\\User', 1, 'App\\Models\\User', 1, 'updated', '[]', NULL, NULL, '2024-10-02 04:26:20', '2024-10-02 04:26:20', 1, 1),
(92, 'default', 'updated', 'App\\Models\\User', 1, 'App\\Models\\User', 1, 'updated', '[]', NULL, NULL, '2024-10-02 05:32:20', '2024-10-02 05:32:20', 1, 1),
(93, 'default', 'created', 'App\\Models\\User', 4, 'App\\Models\\User', 1, 'created', '[]', NULL, NULL, '2024-10-02 05:36:55', '2024-10-02 05:36:55', 1, 1),
(94, 'default', 'updated', 'App\\Models\\User', 1, 'App\\Models\\User', 1, 'updated', '[]', NULL, NULL, '2024-10-02 05:40:21', '2024-10-02 05:40:21', 1, 1),
(95, 'default', 'updated', 'App\\Models\\User', 4, 'App\\Models\\User', 4, 'updated', '[]', NULL, NULL, '2024-10-02 04:40:38', '2024-10-02 04:40:38', 1, 1),
(96, 'default', 'updated', 'App\\Models\\User', 4, 'App\\Models\\User', 4, 'updated', '[]', NULL, NULL, '2024-10-02 05:43:18', '2024-10-02 05:43:18', 1, 1),
(97, 'default', 'deleted', 'App\\Models\\User', 3, 'App\\Models\\User', 4, 'deleted', '[]', NULL, NULL, '2024-10-02 05:43:41', '2024-10-02 05:43:41', 1, 1),
(98, 'default', 'updated', 'App\\Models\\User', 4, 'App\\Models\\User', 4, 'updated', '[]', NULL, NULL, '2024-10-02 11:04:18', '2024-10-02 11:04:18', 1, 1),
(99, 'default', 'updated', 'App\\Models\\User', 4, 'App\\Models\\User', 4, 'updated', '[]', NULL, NULL, '2024-10-02 15:08:14', '2024-10-02 15:08:14', 1, 1),
(100, 'default', 'updated', 'App\\Models\\Hrm\\Attendance\\Weekend', 1, 'App\\Models\\User', 4, 'updated', '[]', NULL, NULL, '2024-10-02 14:13:29', '2024-10-02 14:13:29', 1, 1),
(101, 'default', 'updated', 'App\\Models\\Hrm\\Shift\\Shift', 1, 'App\\Models\\User', 4, 'updated', '[]', NULL, NULL, '2024-10-02 14:35:53', '2024-10-02 14:35:53', 1, 1),
(102, 'default', 'updated', 'App\\Models\\Hrm\\Shift\\Shift', 2, 'App\\Models\\User', 4, 'updated', '[]', NULL, NULL, '2024-10-02 14:36:05', '2024-10-02 14:36:05', 1, 1),
(103, 'default', 'updated', 'App\\Models\\Hrm\\Shift\\Shift', 3, 'App\\Models\\User', 4, 'updated', '[]', NULL, NULL, '2024-10-02 14:36:14', '2024-10-02 14:36:14', 1, 1),
(104, 'default', 'updated', 'App\\Models\\User', 4, 'App\\Models\\User', 4, 'updated', '[]', NULL, NULL, '2024-10-02 22:58:27', '2024-10-02 22:58:27', 1, 1),
(105, 'default', 'updated', 'App\\Models\\User', 4, 'App\\Models\\User', 4, 'updated', '[]', NULL, NULL, '2024-10-02 23:17:21', '2024-10-02 23:17:21', 1, 1),
(106, 'default', 'updated', 'App\\Models\\User', 4, 'App\\Models\\User', 4, 'updated', '[]', NULL, NULL, '2024-10-03 00:33:35', '2024-10-03 00:33:35', 1, 1),
(107, 'default', 'updated', 'App\\Models\\User', 4, 'App\\Models\\User', 4, 'updated', '[]', NULL, NULL, '2024-10-03 00:35:35', '2024-10-03 00:35:35', 1, 1),
(108, 'default', 'updated', 'App\\Models\\User', 4, 'App\\Models\\User', 4, 'updated', '[]', NULL, NULL, '2024-10-03 00:38:00', '2024-10-03 00:38:00', 1, 1),
(109, 'default', 'updated', 'App\\Models\\User', 4, 'App\\Models\\User', 4, 'updated', '[]', NULL, NULL, '2024-10-03 00:46:23', '2024-10-03 00:46:23', 1, 1),
(110, 'default', 'created', 'App\\Models\\User', 5, 'App\\Models\\User', 4, 'created', '[]', NULL, NULL, '2024-10-03 02:08:33', '2024-10-03 02:08:33', 1, 1),
(111, 'default', 'updated', 'App\\Models\\Hrm\\Department\\Department', 2, 'App\\Models\\User', 4, 'updated', '[]', NULL, NULL, '2024-10-03 01:09:56', '2024-10-03 01:09:56', 1, 1),
(112, 'default', 'updated', 'App\\Models\\Hrm\\Department\\Department', 3, 'App\\Models\\User', 4, 'updated', '[]', NULL, NULL, '2024-10-03 01:10:06', '2024-10-03 01:10:06', 1, 1),
(113, 'default', 'created', 'App\\Models\\Hrm\\Leave\\AssignLeave', 1, 'App\\Models\\User', 4, 'created', '[]', NULL, NULL, '2024-10-03 01:17:44', '2024-10-03 01:17:44', 1, 1),
(114, 'default', 'updated', 'App\\Models\\User', 5, 'App\\Models\\User', 5, 'updated', '[]', NULL, NULL, '2024-10-03 01:28:08', '2024-10-03 01:28:08', 1, 1),
(115, 'default', 'updated', 'App\\Models\\User', 4, 'App\\Models\\User', 4, 'updated', '[]', NULL, NULL, '2024-10-03 01:30:17', '2024-10-03 01:30:17', 1, 1),
(116, 'default', 'deleted', 'App\\Models\\User', 5, 'App\\Models\\User', 4, 'deleted', '[]', NULL, NULL, '2024-10-03 02:33:36', '2024-10-03 02:33:36', 1, 1),
(117, 'default', 'created', 'App\\Models\\User', 6, 'App\\Models\\User', 4, 'created', '[]', NULL, NULL, '2024-10-03 02:35:03', '2024-10-03 02:35:03', 1, 1),
(118, 'default', 'updated', 'App\\Models\\User', 6, 'App\\Models\\User', 4, 'updated', '[]', NULL, NULL, '2024-10-03 02:36:05', '2024-10-03 02:36:05', 1, 1),
(119, 'default', 'updated', 'App\\Models\\User', 6, 'App\\Models\\User', 6, 'updated', '[]', NULL, NULL, '2024-10-03 01:36:28', '2024-10-03 01:36:28', 1, 1),
(120, 'default', 'updated', 'App\\Models\\User', 4, 'App\\Models\\User', 4, 'updated', '[]', NULL, NULL, '2024-10-03 01:37:19', '2024-10-03 01:37:19', 1, 1),
(121, 'default', 'deleted', 'App\\Models\\User', 6, 'App\\Models\\User', 4, 'deleted', '[]', NULL, NULL, '2024-10-03 02:37:45', '2024-10-03 02:37:45', 1, 1),
(122, 'default', 'created', 'App\\Models\\User', 7, 'App\\Models\\User', 4, 'created', '[]', NULL, NULL, '2024-10-03 02:39:16', '2024-10-03 02:39:16', 1, 1),
(123, 'default', 'updated', 'App\\Models\\User', 7, 'App\\Models\\User', 4, 'updated', '[]', NULL, NULL, '2024-10-03 02:40:31', '2024-10-03 02:40:31', 1, 1),
(124, 'default', 'updated', 'App\\Models\\User', 7, 'App\\Models\\User', 7, 'updated', '[]', NULL, NULL, '2024-10-03 01:41:04', '2024-10-03 01:41:04', 1, 1),
(125, 'default', 'updated', 'App\\Models\\User', 4, 'App\\Models\\User', 4, 'updated', '[]', NULL, NULL, '2024-10-03 01:47:57', '2024-10-03 01:47:57', 1, 1),
(126, 'default', 'updated', 'App\\Models\\User', 4, 'App\\Models\\User', 4, 'updated', '[]', NULL, NULL, '2024-10-03 06:42:01', '2024-10-03 06:42:01', 1, 1),
(127, 'default', 'updated', 'App\\Models\\User', 4, 'App\\Models\\User', 4, 'updated', '[]', NULL, NULL, '2024-10-03 08:02:49', '2024-10-03 08:02:49', 1, 1),
(128, 'default', 'updated', 'App\\Models\\User', 4, 'App\\Models\\User', 4, 'updated', '[]', NULL, NULL, '2024-10-03 08:03:34', '2024-10-03 08:03:34', 1, 1),
(129, 'default', 'updated', 'App\\Models\\User', 4, 'App\\Models\\User', 4, 'updated', '[]', NULL, NULL, '2024-10-03 14:47:54', '2024-10-03 14:47:54', 1, 1),
(130, 'default', 'updated', 'App\\Models\\User', 4, 'App\\Models\\User', 4, 'updated', '[]', NULL, NULL, '2024-10-04 11:28:47', '2024-10-04 11:28:47', 1, 1),
(131, 'default', 'updated', 'App\\Models\\User', 4, 'App\\Models\\User', 4, 'updated', '[]', NULL, NULL, '2024-10-04 11:30:22', '2024-10-04 11:30:22', 1, 1),
(132, 'default', 'updated', 'App\\Models\\User', 4, 'App\\Models\\User', 4, 'updated', '[]', NULL, NULL, '2024-10-04 11:32:46', '2024-10-04 11:32:46', 1, 1),
(133, 'default', 'updated', 'App\\Models\\User', 4, 'App\\Models\\User', 4, 'updated', '[]', NULL, NULL, '2024-10-04 11:33:10', '2024-10-04 11:33:10', 1, 1),
(134, 'default', 'updated', 'App\\Models\\User', 4, 'App\\Models\\User', 4, 'updated', '[]', NULL, NULL, '2024-10-05 04:02:15', '2024-10-05 04:02:15', 1, 1),
(135, 'default', 'updated', 'App\\Models\\User', 4, 'App\\Models\\User', 4, 'updated', '[]', NULL, NULL, '2024-10-05 04:03:05', '2024-10-05 04:03:05', 1, 1),
(136, 'default', 'updated', 'App\\Models\\User', 4, 'App\\Models\\User', 4, 'updated', '[]', NULL, NULL, '2024-10-05 04:07:42', '2024-10-05 04:07:42', 1, 1),
(137, 'default', 'updated', 'App\\Models\\User', 4, 'App\\Models\\User', 4, 'updated', '[]', NULL, NULL, '2024-10-05 04:10:29', '2024-10-05 04:10:29', 1, 1),
(138, 'default', 'updated', 'App\\Models\\User', 4, 'App\\Models\\User', 4, 'updated', '[]', NULL, NULL, '2024-10-05 06:55:45', '2024-10-05 06:55:45', 1, 1),
(139, 'default', 'updated', 'App\\Models\\User', 4, 'App\\Models\\User', 4, 'updated', '[]', NULL, NULL, '2024-10-05 06:56:10', '2024-10-05 06:56:10', 1, 1),
(140, 'default', 'updated', 'App\\Models\\User', 4, 'App\\Models\\User', 4, 'updated', '[]', NULL, NULL, '2024-10-05 06:56:31', '2024-10-05 06:56:31', 1, 1),
(141, 'default', 'updated', 'App\\Models\\User', 4, 'App\\Models\\User', 4, 'updated', '[]', NULL, NULL, '2024-10-05 06:58:28', '2024-10-05 06:58:28', 1, 1),
(142, 'default', 'updated', 'App\\Models\\User', 4, 'App\\Models\\User', 4, 'updated', '[]', NULL, NULL, '2024-10-05 06:59:19', '2024-10-05 06:59:19', 1, 1),
(143, 'default', 'updated', 'App\\Models\\User', 4, 'App\\Models\\User', 4, 'updated', '[]', NULL, NULL, '2024-10-05 07:38:13', '2024-10-05 07:38:13', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `advance_salaries`
--

CREATE TABLE `advance_salaries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `advance_type_id` bigint(20) UNSIGNED NOT NULL DEFAULT '1',
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '1',
  `date` date NOT NULL,
  `amount` double(16,2) DEFAULT NULL,
  `request_amount` double(16,2) NOT NULL DEFAULT '0.00',
  `paid_amount` double(16,2) NOT NULL DEFAULT '0.00',
  `due_amount` double(16,2) NOT NULL DEFAULT '0.00',
  `recovery_mode` tinyint(4) NOT NULL DEFAULT '1' COMMENT '1=Installment, 2=One Time',
  `recovery_cycle` tinyint(4) NOT NULL DEFAULT '1' COMMENT '1=Monthly, 2=Yearly',
  `installment_amount` double(16,2) NOT NULL DEFAULT '0.00',
  `recover_from` date NOT NULL,
  `pay` bigint(20) UNSIGNED NOT NULL DEFAULT '9',
  `status_id` bigint(20) UNSIGNED NOT NULL DEFAULT '2',
  `approver_id` bigint(20) UNSIGNED DEFAULT NULL,
  `remarks` text COLLATE utf8mb4_unicode_ci,
  `return_status` bigint(20) UNSIGNED NOT NULL DEFAULT '22',
  `created_by` bigint(20) UNSIGNED NOT NULL DEFAULT '1',
  `updated_by` bigint(20) UNSIGNED NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `company_id` bigint(20) UNSIGNED DEFAULT '1',
  `branch_id` bigint(20) UNSIGNED DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `advance_salary_logs`
--

CREATE TABLE `advance_salary_logs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `amount` double(16,2) NOT NULL,
  `due_amount` double(16,2) DEFAULT NULL,
  `is_pay` tinyint(4) NOT NULL DEFAULT '0' COMMENT '0=Company Pay, 1= Staff Pay',
  `advance_salary_id` bigint(20) UNSIGNED NOT NULL DEFAULT '1',
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '1',
  `created_by` bigint(20) UNSIGNED NOT NULL DEFAULT '1',
  `updated_by` bigint(20) UNSIGNED NOT NULL DEFAULT '1',
  `payment_note` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `company_id` bigint(20) UNSIGNED DEFAULT '1',
  `branch_id` bigint(20) UNSIGNED DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `advance_types`
--

CREATE TABLE `advance_types` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status_id` bigint(20) UNSIGNED NOT NULL DEFAULT '1',
  `created_by` bigint(20) UNSIGNED DEFAULT '1',
  `updated_by` bigint(20) UNSIGNED DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `company_id` bigint(20) UNSIGNED DEFAULT '1',
  `branch_id` bigint(20) UNSIGNED DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `all_contents`
--

CREATE TABLE `all_contents` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '1',
  `type` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `keywords` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` bigint(20) UNSIGNED DEFAULT '1',
  `updated_by` bigint(20) UNSIGNED DEFAULT '1',
  `status_id` bigint(20) UNSIGNED NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `company_id` bigint(20) UNSIGNED DEFAULT '1',
  `branch_id` bigint(20) UNSIGNED DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `all_contents`
--

INSERT INTO `all_contents` (`id`, `user_id`, `type`, `title`, `slug`, `content`, `meta_title`, `meta_description`, `keywords`, `meta_image`, `created_by`, `updated_by`, `status_id`, `created_at`, `updated_at`, `company_id`, `branch_id`) VALUES
(1, 1, 'page', 'About Us', 'about-us', '<p>Welcome to ONEST HRM! We are a dynamic and forward-thinking company dedicated to Serve best services. Established in 2013, we have been at the forefront of Software for 10+ years, serving all over the world</p>', 'About Us', NULL, 'about, us, about us', NULL, 1, 1, 1, NULL, NULL, 1, 1),
(2, 1, 'page', 'Contact Us', 'contact-us', '<p>We are here to assist you and provide the information you need. Please feel free to reach out to us using the following contact </p>', 'Contact Us', NULL, 'contact, us, contact us', NULL, 1, 1, 1, NULL, NULL, 1, 1),
(3, 1, 'page', 'Privacy Policy', 'privacy-policy', '\n                <section>\n                <h2>Information We Collect</h2>\n                <p>We may collect personal information, usage data, and device details for various purposes.</p>\n            </section>\n\n            <section>\n                <h2>How We Use Your Information</h2>\n                <p>We use the collected information for providing and improving our services, communicating with you, analyzing user trends, and ensuring legal compliance and safety.</p>\n            </section>\n\n            <section>\n                <h2>Sharing Your Information</h2>\n                <p>We may share your data with service providers and for legal compliance.</p>\n            </section>\n\n            <section>\n                <h2>Your Choices</h2>\n                <p>You can opt-out of promotional communications and manage cookies through your browser settings.</p>\n            </section>\n\n            <section>\n                <h2>Security</h2>\n                <p>We take measures to protect your data, but no method is 100% secure.</p>\n            </section>\n\n            <section>\n                <h2>Changes to this Privacy Policy</h2>\n                <p>We may update this policy, and changes will be posted on this page.</p>\n            </section>\n                ', 'Privacy Policy', NULL, 'privacy, policy, privacy policy', NULL, 1, 1, 1, NULL, NULL, 1, 1),
(4, 1, 'page', 'Support 24/7', 'support-24-7', '\n                <section>\n    <h2>Support 24/7</h2>\n    <p>We are here to assist you around the clock. If you have any questions, concerns, or need help with our products or services, please don\'t hesitate to reach out to our support team.</p>\n</section>\n                ', 'Terms of Use', NULL, 'supports, 24, 7, support 24/7', NULL, 1, 1, 1, NULL, NULL, 1, 1),
(5, 1, 'page', 'Terms of Use', 'terms-of-use', '\n                <section>\n                <h2>1. Acceptance of Terms</h2>\n                <p>By using our services, you agree to be bound by these terms.</p>\n            </section>\n\n            <section>\n                <h2>2. Use of Services</h2>\n                <p>You may use our services only in accordance with these terms.</p>\n            </section>\n\n            <section>\n                <h2>3. Intellectual Property</h2>\n                <p>Our content and trademarks are protected by intellectual property laws.</p>\n            </section>\n\n            <section>\n                <h2>4. Privacy Policy</h2>\n                <p>Use of our services is also governed by our Privacy Policy.</p>\n            </section>\n\n            <section>\n                <h2>5. Termination</h2>\n                <p>We reserve the right to terminate or suspend your access to our services for violations of these terms.</p>\n            </section>\n\n            <section>\n                <h2>6. Changes to Terms</h2>\n                <p>We may update these terms, and changes will be posted on this page.</p>\n            </section>\n                ', 'Terms of Use', 'Terms of Use', 'terms, of, use, terms of use', NULL, 1, 1, 1, NULL, NULL, 1, 1),
(6, 1, 'page', 'company Policies', 'company-policies', '\n                <section>\n                <h2>1. Equal Opportunity Policy</h2>\n                <p>Our company is an equal opportunity employer.</p>\n            </section>\n\n            <section>\n                <h2>2. Code of Conduct</h2>\n                <p>We expect all employees to adhere to our code of conduct.</p>\n            </section>\n\n            <section>\n                <h2>3. Anti-Harassment Policy</h2>\n                <p>We have a strict anti-harassment policy in place.</p>\n            </section>\n\n            <section>\n                <h2>4. Data Privacy Policy</h2>\n                <p>Protecting your data is a top priority for us.</p>\n            </section>\n\n            <section>\n                <h2>5. Use of Company Resources</h2>\n                <p>Guidelines for using company resources responsibly.</p>\n            </section>\n\n            <section>\n                <h2>6. Termination and Resignation</h2>\n                <p>Details about the process for termination and resignation.</p>\n            </section>\n                ', 'company-policies', 'Terms of Use', 'company-policies', NULL, 1, 1, 1, NULL, NULL, 1, 1),
(7, 1, 'page', 'Refund Policy', 'refund-policy', '\n\n    <section>\n    <h2>1. Refund Eligibility</h2>\n    <p>We offer refunds under certain conditions. Please review our refund eligibility criteria.</p>\n</section>\n\n<section>\n    <h2>2. Requesting a Refund</h2>\n    <p>Details on how to request a refund, including contact information and required documentation.</p>\n</section>\n\n<section>\n    <h2>3. Refund Processing</h2>\n    <p>Information on the refund processing timeline and method of payment.</p>\n</section>\n\n<section>\n    <h2>4. Non-Refundable Items</h2>\n    <p>A list of items or services that are non-refundable.</p>\n</section>\n\n<section>\n    <h2>5. Contact Us</h2>\n    <p>If you have questions or need assistance with our refund policy, please don\'t hesitate to contact our support team.</p>\n</section>\n                ', 'refund-policy', 'Terms of Use', 'refund-policy', NULL, 1, 1, 1, NULL, NULL, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `api_setups`
--

CREATE TABLE `api_setups` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `secret` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `endpoint` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `docs_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status_id` bigint(20) UNSIGNED NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `company_id` bigint(20) UNSIGNED DEFAULT '1',
  `branch_id` bigint(20) UNSIGNED DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `api_setups`
--

INSERT INTO `api_setups` (`id`, `name`, `key`, `secret`, `endpoint`, `docs_url`, `status_id`, `created_at`, `updated_at`, `company_id`, `branch_id`) VALUES
(1, 'google', NULL, NULL, NULL, NULL, 1, NULL, NULL, 1, 1),
(2, 'barikoi', NULL, NULL, NULL, NULL, 4, NULL, NULL, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `appoinments`
--

CREATE TABLE `appoinments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_by` bigint(20) UNSIGNED NOT NULL,
  `appoinment_with` bigint(20) UNSIGNED NOT NULL,
  `appoinment_start_at` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `appoinment_end_at` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `location` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `date` date DEFAULT NULL,
  `attachment_file_id` bigint(20) UNSIGNED DEFAULT NULL,
  `status_id` bigint(20) UNSIGNED NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `company_id` bigint(20) UNSIGNED DEFAULT '1',
  `branch_id` bigint(20) UNSIGNED DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `appoinment_participants`
--

CREATE TABLE `appoinment_participants` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `participant_id` bigint(20) UNSIGNED NOT NULL,
  `appoinment_id` bigint(20) UNSIGNED NOT NULL,
  `is_agree` tinyint(4) NOT NULL DEFAULT '0' COMMENT '0: Not agree, 1: Agree',
  `is_present` tinyint(4) NOT NULL DEFAULT '0' COMMENT '0: Absent, 1: Present',
  `present_at` datetime DEFAULT NULL,
  `appoinment_started_at` datetime DEFAULT NULL,
  `appoinment_ended_at` datetime DEFAULT NULL,
  `appoinment_duration` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'appoinment duration in minutes',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `company_id` bigint(20) UNSIGNED DEFAULT '1',
  `branch_id` bigint(20) UNSIGNED DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `appraisals`
--

CREATE TABLE `appraisals` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rates` json DEFAULT NULL,
  `rating` double(8,2) DEFAULT '0.00',
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `added_by` bigint(20) UNSIGNED NOT NULL,
  `date` date DEFAULT NULL,
  `remarks` longtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `company_id` bigint(20) UNSIGNED DEFAULT '1',
  `branch_id` bigint(20) UNSIGNED DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `appreciates`
--

CREATE TABLE `appreciates` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `appreciate_by` bigint(20) UNSIGNED NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `company_id` bigint(20) UNSIGNED DEFAULT '1',
  `branch_id` bigint(20) UNSIGNED DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `app_screens`
--

CREATE TABLE `app_screens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `position` int(11) DEFAULT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `company_id` bigint(20) UNSIGNED DEFAULT '1',
  `branch_id` bigint(20) UNSIGNED DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `app_screens`
--

INSERT INTO `app_screens` (`id`, `name`, `slug`, `position`, `icon`, `status_id`, `created_at`, `updated_at`, `company_id`, `branch_id`) VALUES
(1, 'Notice', 'notice', 1, 'assets/appScreenIcons/notice.png', 1, '2024-06-25 06:58:19', '2024-06-25 06:58:19', 1, 1),
(2, 'Expense', 'expense', 2, 'assets/appScreenIcons/expense.png', 1, '2024-06-25 06:58:19', '2024-06-25 06:58:19', 1, 1),
(3, 'Approval', 'approval', 3, 'assets/appScreenIcons/approval.png', 1, '2024-06-25 06:58:19', '2024-06-25 06:58:19', 1, 1),
(4, 'Phonebook', 'phonebook', 4, 'assets/appScreenIcons/phonebook.png', 1, '2024-06-25 06:58:19', '2024-06-25 06:58:19', 1, 1),
(5, 'Break', 'break', 5, 'assets/appScreenIcons/break.png', 1, '2024-06-25 06:58:19', '2024-06-25 06:58:19', 1, 1),
(6, 'Support', 'support', 6, 'assets/appScreenIcons/support.png', 1, '2024-06-25 06:58:19', '2024-06-25 06:58:19', 1, 1),
(7, 'Attendance', 'attendance', 7, 'assets/appScreenIcons/attendance.png', 1, '2024-06-25 06:58:19', '2024-06-25 06:58:19', 1, 1),
(8, 'Task', 'task', 8, 'assets/appScreenIcons/task.png', 1, '2024-06-25 06:58:19', '2024-06-25 06:58:19', 1, 1),
(9, 'Leave', 'leave', 9, 'assets/appScreenIcons/leave.png', 1, '2024-06-25 06:58:19', '2024-06-25 06:58:19', 1, 1),
(10, 'Daily Leave', 'daily_leave', 10, 'assets/appScreenIcons/daily_leave.png', 1, '2024-06-25 06:58:19', '2024-06-25 06:58:19', 1, 1),
(11, 'Payroll', 'payroll', 11, 'assets/appScreenIcons/payroll.png', 1, '2024-06-25 06:58:19', '2024-06-25 06:58:19', 1, 1),
(12, 'Meeting', 'meeting', 12, 'assets/appScreenIcons/meeting.png', 1, '2024-06-25 06:58:19', '2024-06-25 06:58:19', 1, 1),
(13, 'Appointments', 'appointments', 13, 'assets/appScreenIcons/appointments.png', 1, '2024-06-25 06:58:19', '2024-06-25 06:58:19', 1, 1),
(14, 'Visit', 'visit', 14, 'assets/appScreenIcons/visit.png', 1, '2024-06-25 06:58:19', '2024-06-25 06:58:19', 1, 1),
(15, 'Report', 'report', 15, 'assets/appScreenIcons/report.png', 1, '2024-06-25 06:58:19', '2024-06-25 06:58:19', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `assign_leaves`
--

CREATE TABLE `assign_leaves` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `type_id` bigint(20) UNSIGNED NOT NULL,
  `days` int(11) NOT NULL,
  `status_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `department_id` bigint(20) UNSIGNED DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `company_id` bigint(20) UNSIGNED DEFAULT '1',
  `branch_id` bigint(20) UNSIGNED DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `assign_leaves`
--

INSERT INTO `assign_leaves` (`id`, `type_id`, `days`, `status_id`, `created_at`, `updated_at`, `user_id`, `department_id`, `deleted_at`, `company_id`, `branch_id`) VALUES
(1, 1, 3, 1, '2024-10-03 01:17:44', '2024-10-03 01:17:44', NULL, 1, NULL, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `attendances`
--

CREATE TABLE `attendances` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `shift_id` bigint(20) UNSIGNED DEFAULT NULL,
  `date` date DEFAULT NULL,
  `check_in` timestamp NULL DEFAULT NULL,
  `check_out` timestamp NULL DEFAULT NULL,
  `stay_time` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `late_reason` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `late_time` int(11) NOT NULL DEFAULT '0',
  `in_status` enum('OT','L','A') COLLATE utf8mb4_unicode_ci DEFAULT 'OT' COMMENT 'OT=On Time, L=Late, A=Absent',
  `out_status` enum('LT','LE','LL') COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'LT=Left Timely, LE=Left Early, LL = Left Later',
  `checkin_ip` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `checkout_ip` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remote_mode_in` tinyint(1) DEFAULT '0' COMMENT '0 = home , 1 = office',
  `remote_mode_out` tinyint(1) DEFAULT '0' COMMENT '0 = home , 1 = office',
  `check_in_location` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `check_out_location` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `check_in_latitude` double DEFAULT NULL COMMENT 'check in latitude',
  `check_in_longitude` double DEFAULT NULL COMMENT 'check in longitude',
  `check_out_latitude` double DEFAULT NULL COMMENT 'check out latitude',
  `check_out_longitude` double DEFAULT NULL COMMENT 'check out longitude',
  `check_in_city` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'city',
  `check_in_country_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'countryCode',
  `check_in_country` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'Bangladesh' COMMENT 'country',
  `check_out_city` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'city',
  `check_out_country_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'countryCode',
  `check_out_country` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'Bangladesh' COMMENT 'country',
  `status_id` bigint(20) UNSIGNED NOT NULL DEFAULT '1',
  `face_image` bigint(20) UNSIGNED DEFAULT NULL,
  `in_status_approve` enum('OT') COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'OT=On Time',
  `in_status_approve_by` bigint(20) UNSIGNED DEFAULT NULL,
  `out_status_approve` enum('LT') COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'LT=Left Timely',
  `out_status_approve_by` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `company_id` bigint(20) UNSIGNED DEFAULT '1',
  `branch_id` bigint(20) UNSIGNED DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `attendances`
--

INSERT INTO `attendances` (`id`, `user_id`, `shift_id`, `date`, `check_in`, `check_out`, `stay_time`, `late_reason`, `late_time`, `in_status`, `out_status`, `checkin_ip`, `checkout_ip`, `remote_mode_in`, `remote_mode_out`, `check_in_location`, `check_out_location`, `check_in_latitude`, `check_in_longitude`, `check_out_latitude`, `check_out_longitude`, `check_in_city`, `check_in_country_code`, `check_in_country`, `check_out_city`, `check_out_country_code`, `check_out_country`, `status_id`, `face_image`, `in_status_approve`, `in_status_approve_by`, `out_status_approve`, `out_status_approve_by`, `created_at`, `updated_at`, `company_id`, `branch_id`) VALUES
(1, 3, 1, '2024-09-30', '2024-09-30 08:50:57', NULL, NULL, NULL, 350, 'L', NULL, '113.163.104.200', NULL, 1, 0, 'No address found', NULL, 11.091968, 106.5582592, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Bangladesh', 1, NULL, NULL, NULL, NULL, NULL, '2024-09-30 08:50:57', '2024-09-30 08:50:57', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `author_infos`
--

CREATE TABLE `author_infos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `authorable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `authorable_id` bigint(20) UNSIGNED NOT NULL,
  `created_by` bigint(20) UNSIGNED DEFAULT NULL,
  `updated_by` bigint(20) UNSIGNED DEFAULT NULL,
  `approved_by` bigint(20) UNSIGNED DEFAULT NULL,
  `approved_at` timestamp NULL DEFAULT NULL,
  `rejected_by` bigint(20) UNSIGNED DEFAULT NULL,
  `rejected_at` timestamp NULL DEFAULT NULL,
  `cancelled_by` bigint(20) UNSIGNED DEFAULT NULL,
  `cancelled_at` timestamp NULL DEFAULT NULL,
  `published_by` bigint(20) UNSIGNED DEFAULT NULL,
  `published_at` timestamp NULL DEFAULT NULL,
  `unpublished_by` bigint(20) UNSIGNED DEFAULT NULL,
  `unpublished_at` timestamp NULL DEFAULT NULL,
  `deleted_by` bigint(20) UNSIGNED DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `archived_by` bigint(20) UNSIGNED DEFAULT NULL,
  `archived_at` timestamp NULL DEFAULT NULL,
  `restored_by` bigint(20) UNSIGNED DEFAULT NULL,
  `restored_at` timestamp NULL DEFAULT NULL,
  `referred_by` bigint(20) UNSIGNED DEFAULT NULL,
  `referred_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `company_id` bigint(20) UNSIGNED DEFAULT '1',
  `branch_id` bigint(20) UNSIGNED DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `author_infos`
--

INSERT INTO `author_infos` (`id`, `authorable_type`, `authorable_id`, `created_by`, `updated_by`, `approved_by`, `approved_at`, `rejected_by`, `rejected_at`, `cancelled_by`, `cancelled_at`, `published_by`, `published_at`, `unpublished_by`, `unpublished_at`, `deleted_by`, `deleted_at`, `archived_by`, `archived_at`, `restored_by`, `restored_at`, `referred_by`, `referred_at`, `created_at`, `updated_at`, `company_id`, `branch_id`) VALUES
(1, 'App\\Models\\User', 3, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-10-02 03:11:30', '2024-10-02 03:18:24', 1, 1),
(2, 'App\\Models\\Hrm\\Designation\\Designation', 3, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-10-02 04:17:21', '2024-10-02 04:17:21', 1, 1),
(3, 'App\\Models\\User', 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-10-02 05:32:20', '2024-10-02 05:32:20', 1, 1),
(4, 'App\\Models\\User', 4, 4, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-10-02 05:43:18', '2024-10-02 15:08:14', 1, 1),
(5, 'App\\Models\\Hrm\\Shift\\Shift', 1, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-10-02 14:35:53', '2024-10-02 14:35:53', 1, 1),
(6, 'App\\Models\\Hrm\\Shift\\Shift', 2, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-10-02 14:36:05', '2024-10-02 14:36:05', 1, 1),
(7, 'App\\Models\\Hrm\\Shift\\Shift', 3, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-10-02 14:36:14', '2024-10-02 14:36:14', 1, 1),
(8, 'App\\Models\\Hrm\\Department\\Department', 2, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-10-03 01:09:56', '2024-10-03 01:09:56', 1, 1),
(9, 'App\\Models\\Hrm\\Department\\Department', 3, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-10-03 01:10:06', '2024-10-03 01:10:06', 1, 1),
(10, 'App\\Models\\User', 6, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-10-03 02:36:05', '2024-10-03 02:36:05', 1, 1),
(11, 'App\\Models\\User', 7, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-10-03 02:40:31', '2024-10-03 02:40:31', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `awards`
--

CREATE TABLE `awards` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_by` bigint(20) UNSIGNED NOT NULL,
  `award_type_id` bigint(20) UNSIGNED NOT NULL,
  `date` date DEFAULT NULL,
  `gift` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount` double(16,2) DEFAULT NULL,
  `gift_info` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `status_id` bigint(20) UNSIGNED NOT NULL DEFAULT '1',
  `attachment` bigint(20) UNSIGNED DEFAULT NULL,
  `goal_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `company_id` bigint(20) UNSIGNED DEFAULT '1',
  `branch_id` bigint(20) UNSIGNED DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `award_types`
--

CREATE TABLE `award_types` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status_id` bigint(20) UNSIGNED NOT NULL DEFAULT '1',
  `created_by` bigint(20) UNSIGNED DEFAULT '1',
  `updated_by` bigint(20) UNSIGNED DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `company_id` bigint(20) UNSIGNED DEFAULT '1',
  `branch_id` bigint(20) UNSIGNED DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `bank_accounts`
--

CREATE TABLE `bank_accounts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `account_number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Account Number',
  `bank_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Bank Name',
  `branch_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Bank branch name',
  `ifsc_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'IFSC Code',
  `account_type` enum('savings','current') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'savings',
  `account_holder_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `account_holder_mobile` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `account_holder_email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status_id` bigint(20) UNSIGNED DEFAULT NULL,
  `author_info_id` bigint(20) UNSIGNED DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `company_id` bigint(20) UNSIGNED DEFAULT '1',
  `branch_id` bigint(20) UNSIGNED DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `branches`
--

CREATE TABLE `branches` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint(20) NOT NULL,
  `company_id` bigint(20) NOT NULL,
  `status_id` bigint(20) NOT NULL DEFAULT '1' COMMENT '1=active,4=inactive',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `branches`
--

INSERT INTO `branches` (`id`, `name`, `address`, `phone`, `email`, `user_id`, `company_id`, `status_id`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Head Office', 'Texas, USA', '01234567890', 'admin@gmail.com', 1, 1, 1, NULL, '2024-06-25 06:58:18', '2024-06-25 06:58:18');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'name',
  `type` tinyint(4) NOT NULL COMMENT '1=income 2=expense',
  `serial` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'serial',
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'description',
  `status_id` bigint(20) UNSIGNED DEFAULT NULL,
  `author_info_id` bigint(20) UNSIGNED DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `clients`
--

CREATE TABLE `clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `zip` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `website` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date` date DEFAULT NULL,
  `status_id` bigint(20) UNSIGNED NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `company_id` bigint(20) UNSIGNED DEFAULT '1',
  `branch_id` bigint(20) UNSIGNED DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `clients`
--

INSERT INTO `clients` (`id`, `name`, `email`, `phone`, `address`, `city`, `state`, `zip`, `country`, `website`, `date`, `status_id`, `created_at`, `updated_at`, `deleted_at`, `company_id`, `branch_id`) VALUES
(1, 'Kim sang silk', 'quyongtiktok@gmail.com', '0928953139', '633/41, tổ 83, khu phố 9, phường Phú Lợi, TP. Thủ Dầu Một, Bình Dương', 'Thành phố Thủ Dầu Một', 'Bình Dương', '', '78', 'trungtamsottbinhduong.tdmuchatgpt.id.vn', '2024-10-03', 1, '2024-10-03 02:14:21', '2024-10-03 02:14:21', NULL, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `commissions`
--

CREATE TABLE `commissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` tinyint(4) NOT NULL DEFAULT '1' COMMENT '1: addition, 2: deduction',
  `mode` tinyint(4) NOT NULL DEFAULT '1' COMMENT '1: percentage, 2: fixed',
  `amount` double NOT NULL DEFAULT '0',
  `status_id` bigint(20) UNSIGNED NOT NULL DEFAULT '1',
  `created_by` bigint(20) UNSIGNED DEFAULT '1',
  `updated_by` bigint(20) UNSIGNED DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `company_id` bigint(20) UNSIGNED DEFAULT '1',
  `branch_id` bigint(20) UNSIGNED DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `companies`
--

CREATE TABLE `companies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `country_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `total_employee` int(11) DEFAULT NULL,
  `business_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `trade_licence_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subdomain` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `trade_licence_id` bigint(20) UNSIGNED DEFAULT NULL,
  `status_id` bigint(20) UNSIGNED NOT NULL DEFAULT '1',
  `is_main_company` enum('yes','no') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'no',
  `is_subscription` tinyint(4) DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `companies`
--

INSERT INTO `companies` (`id`, `country_id`, `name`, `company_name`, `email`, `phone`, `total_employee`, `business_type`, `trade_licence_number`, `subdomain`, `trade_licence_id`, `status_id`, `is_main_company`, `is_subscription`, `created_at`, `updated_at`) VALUES
(1, 223, 'Admin', 'Main Company', 'demo@onesttech.com', '+8801959335555', 100, 'Service', NULL, NULL, NULL, 1, 'yes', 0, '2024-06-25 06:58:18', '2024-06-25 06:58:18');

-- --------------------------------------------------------

--
-- Table structure for table `company_configs`
--

CREATE TABLE `company_configs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `company_id` bigint(20) UNSIGNED DEFAULT '1',
  `branch_id` bigint(20) UNSIGNED DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `company_configs`
--

INSERT INTO `company_configs` (`id`, `key`, `value`, `created_at`, `updated_at`, `company_id`, `branch_id`) VALUES
(1, 'date_format', 'd-m-Y', '2024-06-25 06:58:18', '2024-06-25 06:58:18', 1, 1),
(2, 'time_format', 'H', '2024-06-25 06:58:18', '2024-10-02 03:35:32', 1, 1),
(3, 'ip_check', '1', '2024-06-25 06:58:18', '2024-10-02 03:35:32', 1, 1),
(4, 'leave_assign', '0', '2024-06-25 06:58:18', '2024-06-25 06:58:18', 1, 1),
(5, 'currency_symbol', '₫', '2024-06-25 06:58:18', '2024-10-02 14:09:08', 1, 1),
(6, 'location_service', '1', '2024-06-25 06:58:18', '2024-10-02 03:35:32', 1, 1),
(7, 'app_sync_time', '', '2024-06-25 06:58:18', '2024-06-25 06:58:18', 1, 1),
(8, 'live_data_store_time', '', '2024-06-25 06:58:18', '2024-06-25 06:58:18', 1, 1),
(9, 'lang', 'vi', '2024-06-25 06:58:18', '2024-09-30 08:38:51', 1, 1),
(10, 'multi_checkin', '1', '2024-06-25 06:58:18', '2024-10-02 03:35:32', 1, 1),
(11, 'currency', '110', '2024-06-25 06:58:18', '2024-10-02 14:09:08', 1, 1),
(12, 'timezone', 'Asia/Ho_Chi_Minh', '2024-06-25 06:58:18', '2024-10-02 03:21:20', 1, 1),
(13, 'currency_code', 'VND', '2024-06-25 06:58:18', '2024-10-02 14:09:08', 1, 1),
(14, 'location_check', '1', '2024-06-25 06:58:18', '2024-10-02 03:35:32', 1, 1),
(15, 'attendance_method', 'N', '2024-06-25 06:58:18', '2024-06-25 06:58:18', 1, 1),
(16, 'google', 'AIzaSyAhwYkkKDRSVRLQyXd2_lSCKWy7E2mEHOQ', '2024-06-25 06:58:18', '2024-10-05 07:05:23', 1, 1),
(17, 'is_employee_passport_required', '1', '2024-06-25 06:58:18', '2024-10-02 23:03:01', 1, 1),
(18, 'is_employee_eid_required', '1', '2024-06-25 06:58:18', '2024-10-02 23:03:01', 1, 1),
(19, 'min_phone_no_digit', '9', '2024-06-25 06:58:18', '2024-10-02 14:09:08', 1, 1),
(20, 'max_phone_no_digit', '10', '2024-06-25 06:58:18', '2024-10-02 14:09:08', 1, 1),
(21, 'leave_carryover', '1', '2024-06-25 06:58:18', '2024-10-02 03:35:32', 1, 1),
(22, 'max_work_hours', '16', '2024-10-02 03:21:20', '2024-10-02 03:21:20', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `competences`
--

CREATE TABLE `competences` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `competence_type_id` bigint(20) UNSIGNED DEFAULT NULL,
  `status_id` bigint(20) UNSIGNED NOT NULL DEFAULT '1',
  `created_by` bigint(20) UNSIGNED DEFAULT '1',
  `updated_by` bigint(20) UNSIGNED DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `company_id` bigint(20) UNSIGNED DEFAULT '1',
  `branch_id` bigint(20) UNSIGNED DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `competence_types`
--

CREATE TABLE `competence_types` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status_id` bigint(20) UNSIGNED NOT NULL DEFAULT '1',
  `created_by` bigint(20) UNSIGNED DEFAULT '1',
  `updated_by` bigint(20) UNSIGNED DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `company_id` bigint(20) UNSIGNED DEFAULT '1',
  `branch_id` bigint(20) UNSIGNED DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_for` int(11) NOT NULL DEFAULT '0' COMMENT '1 for support,0 for query',
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_status` tinyint(4) NOT NULL DEFAULT '0' COMMENT '0 for unread,1 for read',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `company_id` bigint(20) UNSIGNED DEFAULT '1',
  `branch_id` bigint(20) UNSIGNED DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `conversations`
--

CREATE TABLE `conversations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `sender_id` bigint(20) UNSIGNED NOT NULL,
  `receiver_id` bigint(20) UNSIGNED NOT NULL,
  `type` enum('notification','message') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'notification' COMMENT 'notification: notification, message: message',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message` text COLLATE utf8mb4_unicode_ci,
  `read_at` timestamp NULL DEFAULT NULL,
  `image_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `company_id` bigint(20) UNSIGNED DEFAULT '1',
  `branch_id` bigint(20) UNSIGNED DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `country_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `time_zone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `currency_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `currency_symbol` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `currency_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `currency_symbol_placement` enum('before','after') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`id`, `country_code`, `name`, `time_zone`, `currency_code`, `currency_symbol`, `currency_name`, `currency_symbol_placement`, `created_at`, `updated_at`) VALUES
(1, 'AF', 'Afghanistan', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2024-06-25 06:58:18', '2024-06-25 06:58:18'),
(2, 'AL', 'Albania', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2024-06-25 06:58:18', '2024-06-25 06:58:18'),
(3, 'DZ', 'Algeria', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2024-06-25 06:58:18', '2024-06-25 06:58:18'),
(4, 'AD', 'Andorra', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2024-06-25 06:58:18', '2024-06-25 06:58:18'),
(5, 'AO', 'Angola', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2024-06-25 06:58:18', '2024-06-25 06:58:18'),
(6, 'AI', 'Anguilla', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2024-06-25 06:58:18', '2024-06-25 06:58:18'),
(7, 'AQ', 'Antarctica', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2024-06-25 06:58:18', '2024-06-25 06:58:18'),
(8, 'AG', 'Antigua and Barbuda', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2024-06-25 06:58:18', '2024-06-25 06:58:18'),
(9, 'AR', 'Argentina', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2024-06-25 06:58:18', '2024-06-25 06:58:18'),
(10, 'AM', 'Armenia', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2024-06-25 06:58:18', '2024-06-25 06:58:18'),
(11, 'AW', 'Aruba', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2024-06-25 06:58:18', '2024-06-25 06:58:18'),
(12, 'AU', 'Australia', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2024-06-25 06:58:18', '2024-06-25 06:58:18'),
(13, 'AT', 'Austria', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2024-06-25 06:58:18', '2024-06-25 06:58:18'),
(14, 'AZ', 'Azerbaijan', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2024-06-25 06:58:18', '2024-06-25 06:58:18'),
(15, 'BS', 'Bahamas', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2024-06-25 06:58:18', '2024-06-25 06:58:18'),
(16, 'BH', 'Bahrain', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2024-06-25 06:58:18', '2024-06-25 06:58:18'),
(17, 'BD', 'Bangladesh', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2024-06-25 06:58:18', '2024-06-25 06:58:18'),
(18, 'BB', 'Barbados', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2024-06-25 06:58:18', '2024-06-25 06:58:18'),
(19, 'BY', 'Belarus', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2024-06-25 06:58:18', '2024-06-25 06:58:18'),
(20, 'BE', 'Belgium', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2024-06-25 06:58:18', '2024-06-25 06:58:18'),
(21, 'BZ', 'Belize', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2024-06-25 06:58:18', '2024-06-25 06:58:18'),
(22, 'BJ', 'Benin', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2024-06-25 06:58:18', '2024-06-25 06:58:18'),
(23, 'BM', 'Bermuda', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2024-06-25 06:58:18', '2024-06-25 06:58:18'),
(24, 'BT', 'Bhutan', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2024-06-25 06:58:18', '2024-06-25 06:58:18'),
(25, 'BO', 'Bolivia', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2024-06-25 06:58:18', '2024-06-25 06:58:18'),
(26, 'BA', 'Bosnia and Herzegovina', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2024-06-25 06:58:18', '2024-06-25 06:58:18'),
(27, 'BW', 'Botswana', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2024-06-25 06:58:18', '2024-06-25 06:58:18'),
(28, 'BR', 'Brazil', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2024-06-25 06:58:18', '2024-06-25 06:58:18'),
(29, 'IO', 'British Indian Ocean Territory', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2024-06-25 06:58:18', '2024-06-25 06:58:18'),
(30, 'BN', 'Brunei Darussalam', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2024-06-25 06:58:18', '2024-06-25 06:58:18'),
(31, 'BG', 'Bulgaria', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2024-06-25 06:58:18', '2024-06-25 06:58:18'),
(32, 'BF', 'Burkina Faso', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2024-06-25 06:58:18', '2024-06-25 06:58:18'),
(33, 'BI', 'Burundi', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2024-06-25 06:58:18', '2024-06-25 06:58:18'),
(34, 'KH', 'Cambodia', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2024-06-25 06:58:18', '2024-06-25 06:58:18'),
(35, 'CM', 'Cameroon', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2024-06-25 06:58:18', '2024-06-25 06:58:18'),
(36, 'CA', 'Canada', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2024-06-25 06:58:18', '2024-06-25 06:58:18'),
(37, 'CV', 'Cape Verde', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2024-06-25 06:58:18', '2024-06-25 06:58:18'),
(38, 'KY', 'Cayman Islands', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2024-06-25 06:58:18', '2024-06-25 06:58:18'),
(39, 'CF', 'Central African Republic', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2024-06-25 06:58:18', '2024-06-25 06:58:18'),
(40, 'TD', 'Chad', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2024-06-25 06:58:18', '2024-06-25 06:58:18'),
(41, 'CL', 'Chile', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2024-06-25 06:58:18', '2024-06-25 06:58:18'),
(42, 'CN', 'China', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2024-06-25 06:58:18', '2024-06-25 06:58:18'),
(43, 'CX', 'Christmas Island', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2024-06-25 06:58:18', '2024-06-25 06:58:18'),
(44, 'CC', 'Cocos (Keeling) Islands', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2024-06-25 06:58:18', '2024-06-25 06:58:18'),
(45, 'CO', 'Colombia', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2024-06-25 06:58:18', '2024-06-25 06:58:18'),
(46, 'KM', 'Comoros', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2024-06-25 06:58:18', '2024-06-25 06:58:18'),
(47, 'CD', 'Democratic Republic of the Congo', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2024-06-25 06:58:18', '2024-06-25 06:58:18'),
(48, 'CG', 'Republic of Congo', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2024-06-25 06:58:18', '2024-06-25 06:58:18'),
(49, 'CK', 'Cook Islands', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2024-06-25 06:58:18', '2024-06-25 06:58:18'),
(50, 'CR', 'Costa Rica', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2024-06-25 06:58:18', '2024-06-25 06:58:18'),
(51, 'HR', 'Croatia (Hrvatska)', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2024-06-25 06:58:18', '2024-06-25 06:58:18'),
(52, 'CU', 'Cuba', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2024-06-25 06:58:18', '2024-06-25 06:58:18'),
(53, 'CY', 'Cyprus', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2024-06-25 06:58:18', '2024-06-25 06:58:18'),
(54, 'CZ', 'Czech Republic', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2024-06-25 06:58:18', '2024-06-25 06:58:18'),
(55, 'DK', 'Denmark', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2024-06-25 06:58:18', '2024-06-25 06:58:18'),
(56, 'DJ', 'Djibouti', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2024-06-25 06:58:18', '2024-06-25 06:58:18'),
(57, 'DM', 'Dominica', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2024-06-25 06:58:18', '2024-06-25 06:58:18'),
(58, 'DO', 'Dominican Republic', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2024-06-25 06:58:18', '2024-06-25 06:58:18'),
(59, 'EC', 'Ecuador', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2024-06-25 06:58:18', '2024-06-25 06:58:18'),
(60, 'EG', 'Egypt', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2024-06-25 06:58:18', '2024-06-25 06:58:18'),
(61, 'SV', 'El Salvador', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2024-06-25 06:58:18', '2024-06-25 06:58:18'),
(62, 'GQ', 'Equatorial Guinea', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2024-06-25 06:58:18', '2024-06-25 06:58:18'),
(63, 'ER', 'Eritrea', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2024-06-25 06:58:18', '2024-06-25 06:58:18'),
(64, 'EE', 'Estonia', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2024-06-25 06:58:18', '2024-06-25 06:58:18'),
(65, 'ET', 'Ethiopia', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2024-06-25 06:58:18', '2024-06-25 06:58:18'),
(66, 'FK', 'Falkland Islands (Malvinas)', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2024-06-25 06:58:18', '2024-06-25 06:58:18'),
(67, 'FO', 'Faroe Islands', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2024-06-25 06:58:18', '2024-06-25 06:58:18'),
(68, 'FJ', 'Fiji', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2024-06-25 06:58:18', '2024-06-25 06:58:18'),
(69, 'FI', 'Finland', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2024-06-25 06:58:18', '2024-06-25 06:58:18'),
(70, 'FR', 'France', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2024-06-25 06:58:18', '2024-06-25 06:58:18'),
(71, 'GF', 'French Guiana', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2024-06-25 06:58:18', '2024-06-25 06:58:18'),
(72, 'PF', 'French Polynesia', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2024-06-25 06:58:18', '2024-06-25 06:58:18'),
(73, 'TF', 'French Southern Territories', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2024-06-25 06:58:18', '2024-06-25 06:58:18'),
(74, 'GA', 'Gabon', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2024-06-25 06:58:18', '2024-06-25 06:58:18'),
(75, 'GM', 'Gambia', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2024-06-25 06:58:18', '2024-06-25 06:58:18'),
(76, 'GE', 'Georgia', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2024-06-25 06:58:18', '2024-06-25 06:58:18'),
(77, 'DE', 'Germany', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2024-06-25 06:58:18', '2024-06-25 06:58:18'),
(78, 'GH', 'Ghana', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2024-06-25 06:58:18', '2024-06-25 06:58:18'),
(79, 'GI', 'Gibraltar', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2024-06-25 06:58:18', '2024-06-25 06:58:18'),
(80, 'GR', 'Greece', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2024-06-25 06:58:18', '2024-06-25 06:58:18'),
(81, 'GL', 'Greenland', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2024-06-25 06:58:18', '2024-06-25 06:58:18'),
(82, 'GD', 'Grenada', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2024-06-25 06:58:18', '2024-06-25 06:58:18'),
(83, 'GP', 'Guadeloupe', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2024-06-25 06:58:18', '2024-06-25 06:58:18'),
(84, 'GU', 'Guam', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2024-06-25 06:58:18', '2024-06-25 06:58:18'),
(85, 'GT', 'Guatemala', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2024-06-25 06:58:18', '2024-06-25 06:58:18'),
(86, 'GN', 'Guinea', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2024-06-25 06:58:18', '2024-06-25 06:58:18'),
(87, 'GW', 'Guinea-Bissau', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2024-06-25 06:58:18', '2024-06-25 06:58:18'),
(88, 'GY', 'Guyana', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2024-06-25 06:58:18', '2024-06-25 06:58:18'),
(89, 'HT', 'Haiti', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2024-06-25 06:58:18', '2024-06-25 06:58:18'),
(90, 'HN', 'Honduras', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2024-06-25 06:58:18', '2024-06-25 06:58:18'),
(91, 'HK', 'Hong Kong', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2024-06-25 06:58:18', '2024-06-25 06:58:18'),
(92, 'HU', 'Hungary', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2024-06-25 06:58:18', '2024-06-25 06:58:18'),
(93, 'IS', 'Iceland', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2024-06-25 06:58:18', '2024-06-25 06:58:18'),
(94, 'IN', 'India', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2024-06-25 06:58:18', '2024-06-25 06:58:18'),
(95, 'IM', 'Isle of Man', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2024-06-25 06:58:18', '2024-06-25 06:58:18'),
(96, 'ID', 'Indonesia', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2024-06-25 06:58:18', '2024-06-25 06:58:18'),
(97, 'IR', 'Iran (Islamic Republic of)', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2024-06-25 06:58:18', '2024-06-25 06:58:18'),
(98, 'IQ', 'Iraq', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2024-06-25 06:58:18', '2024-06-25 06:58:18'),
(99, 'IE', 'Ireland', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2024-06-25 06:58:18', '2024-06-25 06:58:18'),
(100, 'IL', 'Israel', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2024-06-25 06:58:18', '2024-06-25 06:58:18'),
(101, 'IT', 'Italy', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2024-06-25 06:58:18', '2024-06-25 06:58:18'),
(102, 'CI', 'Ivory Coast', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2024-06-25 06:58:18', '2024-06-25 06:58:18'),
(103, 'JE', 'Jersey', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2024-06-25 06:58:18', '2024-06-25 06:58:18'),
(104, 'JM', 'Jamaica', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2024-06-25 06:58:18', '2024-06-25 06:58:18'),
(105, 'JP', 'Japan', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2024-06-25 06:58:18', '2024-06-25 06:58:18'),
(106, 'JO', 'Jordan', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2024-06-25 06:58:18', '2024-06-25 06:58:18'),
(107, 'KZ', 'Kazakhstan', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2024-06-25 06:58:18', '2024-06-25 06:58:18'),
(108, 'KE', 'Kenya', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2024-06-25 06:58:18', '2024-06-25 06:58:18'),
(109, 'KI', 'Kiribati', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2024-06-25 06:58:18', '2024-06-25 06:58:18'),
(110, 'KP', 'Korea, Democratic People\'s Republic of', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2024-06-25 06:58:18', '2024-06-25 06:58:18'),
(111, 'KR', 'Korea, Republic of', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2024-06-25 06:58:18', '2024-06-25 06:58:18'),
(112, 'XK', 'Kosovo', '', NULL, NULL, NULL, NULL, '2024-06-25 06:58:18', '2024-06-25 06:58:18'),
(113, 'KW', 'Kuwait', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2024-06-25 06:58:18', '2024-06-25 06:58:18'),
(114, 'KG', 'Kyrgyzstan', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2024-06-25 06:58:18', '2024-06-25 06:58:18'),
(115, 'LA', 'Lao People\'s Democratic Republic', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2024-06-25 06:58:18', '2024-06-25 06:58:18'),
(116, 'LV', 'Latvia', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2024-06-25 06:58:18', '2024-06-25 06:58:18'),
(117, 'LB', 'Lebanon', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2024-06-25 06:58:18', '2024-06-25 06:58:18'),
(118, 'LS', 'Lesotho', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2024-06-25 06:58:18', '2024-06-25 06:58:18'),
(119, 'LR', 'Liberia', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2024-06-25 06:58:18', '2024-06-25 06:58:18'),
(120, 'LY', 'Libyan Arab Jamahiriya', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2024-06-25 06:58:18', '2024-06-25 06:58:18'),
(121, 'LI', 'Liechtenstein', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2024-06-25 06:58:18', '2024-06-25 06:58:18'),
(122, 'LT', 'Lithuania', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2024-06-25 06:58:18', '2024-06-25 06:58:18'),
(123, 'LU', 'Luxembourg', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2024-06-25 06:58:18', '2024-06-25 06:58:18'),
(124, 'MO', 'Macau', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2024-06-25 06:58:18', '2024-06-25 06:58:18'),
(125, 'MK', 'North Macedonia', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2024-06-25 06:58:18', '2024-06-25 06:58:18'),
(126, 'MG', 'Madagascar', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2024-06-25 06:58:18', '2024-06-25 06:58:18'),
(127, 'MW', 'Malawi', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2024-06-25 06:58:18', '2024-06-25 06:58:18'),
(128, 'MY', 'Malaysia', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2024-06-25 06:58:18', '2024-06-25 06:58:18'),
(129, 'MV', 'Maldives', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2024-06-25 06:58:18', '2024-06-25 06:58:18'),
(130, 'ML', 'Mali', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2024-06-25 06:58:18', '2024-06-25 06:58:18'),
(131, 'MT', 'Malta', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2024-06-25 06:58:18', '2024-06-25 06:58:18'),
(132, 'MH', 'Marshall Islands', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2024-06-25 06:58:18', '2024-06-25 06:58:18'),
(133, 'MQ', 'Martinique', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2024-06-25 06:58:18', '2024-06-25 06:58:18'),
(134, 'MR', 'Mauritania', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2024-06-25 06:58:18', '2024-06-25 06:58:18'),
(135, 'MU', 'Mauritius', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2024-06-25 06:58:18', '2024-06-25 06:58:18'),
(136, 'MX', 'Mexico', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2024-06-25 06:58:18', '2024-06-25 06:58:18'),
(137, 'FM', 'Micronesia, Federated States of', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2024-06-25 06:58:18', '2024-06-25 06:58:18'),
(138, 'MD', 'Moldova, Republic of', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2024-06-25 06:58:18', '2024-06-25 06:58:18'),
(139, 'MC', 'Monaco', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2024-06-25 06:58:18', '2024-06-25 06:58:18'),
(140, 'MN', 'Mongolia', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2024-06-25 06:58:18', '2024-06-25 06:58:18'),
(141, 'ME', 'Montenegro', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2024-06-25 06:58:18', '2024-06-25 06:58:18'),
(142, 'MS', 'Montserrat', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2024-06-25 06:58:18', '2024-06-25 06:58:18'),
(143, 'MA', 'Morocco', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2024-06-25 06:58:18', '2024-06-25 06:58:18'),
(144, 'MZ', 'Mozambique', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2024-06-25 06:58:18', '2024-06-25 06:58:18'),
(145, 'MM', 'Myanmar', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2024-06-25 06:58:18', '2024-06-25 06:58:18'),
(146, 'NA', 'Namibia', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2024-06-25 06:58:18', '2024-06-25 06:58:18'),
(147, 'NR', 'Nauru', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2024-06-25 06:58:18', '2024-06-25 06:58:18'),
(148, 'NP', 'Nepal', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2024-06-25 06:58:18', '2024-06-25 06:58:18'),
(149, 'NL', 'Netherlands', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2024-06-25 06:58:18', '2024-06-25 06:58:18'),
(150, 'NC', 'New Caledonia', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2024-06-25 06:58:18', '2024-06-25 06:58:18'),
(151, 'NZ', 'New Zealand', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2024-06-25 06:58:18', '2024-06-25 06:58:18'),
(152, 'NI', 'Nicaragua', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2024-06-25 06:58:18', '2024-06-25 06:58:18'),
(153, 'NE', 'Niger', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2024-06-25 06:58:18', '2024-06-25 06:58:18'),
(154, 'NG', 'Nigeria', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2024-06-25 06:58:18', '2024-06-25 06:58:18'),
(155, 'NU', 'Niue', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2024-06-25 06:58:18', '2024-06-25 06:58:18'),
(156, 'NF', 'Norfolk Island', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2024-06-25 06:58:18', '2024-06-25 06:58:18'),
(157, 'MP', 'Northern Mariana Islands', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2024-06-25 06:58:18', '2024-06-25 06:58:18'),
(158, 'NO', 'Norway', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2024-06-25 06:58:18', '2024-06-25 06:58:18'),
(159, 'OM', 'Oman', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2024-06-25 06:58:18', '2024-06-25 06:58:18'),
(160, 'PK', 'Pakistan', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2024-06-25 06:58:18', '2024-06-25 06:58:18'),
(161, 'PW', 'Palau', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2024-06-25 06:58:18', '2024-06-25 06:58:18'),
(162, 'PS', 'Palestine', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2024-06-25 06:58:18', '2024-06-25 06:58:18'),
(163, 'PA', 'Panama', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2024-06-25 06:58:18', '2024-06-25 06:58:18'),
(164, 'PG', 'Papua New Guinea', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2024-06-25 06:58:18', '2024-06-25 06:58:18'),
(165, 'PY', 'Paraguay', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2024-06-25 06:58:18', '2024-06-25 06:58:18'),
(166, 'PE', 'Peru', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2024-06-25 06:58:18', '2024-06-25 06:58:18'),
(167, 'PH', 'Philippines', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2024-06-25 06:58:18', '2024-06-25 06:58:18'),
(168, 'PN', 'Pitcairn', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2024-06-25 06:58:18', '2024-06-25 06:58:18'),
(169, 'PL', 'Poland', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2024-06-25 06:58:18', '2024-06-25 06:58:18'),
(170, 'PT', 'Portugal', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2024-06-25 06:58:18', '2024-06-25 06:58:18'),
(171, 'PR', 'Puerto Rico', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2024-06-25 06:58:18', '2024-06-25 06:58:18'),
(172, 'QA', 'Qatar', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2024-06-25 06:58:18', '2024-06-25 06:58:18'),
(173, 'RE', 'Reunion', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2024-06-25 06:58:18', '2024-06-25 06:58:18'),
(174, 'RO', 'Romania', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2024-06-25 06:58:18', '2024-06-25 06:58:18'),
(175, 'RU', 'Russian Federation', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2024-06-25 06:58:18', '2024-06-25 06:58:18'),
(176, 'RW', 'Rwanda', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2024-06-25 06:58:18', '2024-06-25 06:58:18'),
(177, 'KN', 'Saint Kitts and Nevis', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2024-06-25 06:58:18', '2024-06-25 06:58:18'),
(178, 'LC', 'Saint Lucia', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2024-06-25 06:58:18', '2024-06-25 06:58:18'),
(179, 'VC', 'Saint Vincent and the Grenadines', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2024-06-25 06:58:18', '2024-06-25 06:58:18'),
(180, 'WS', 'Samoa', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2024-06-25 06:58:18', '2024-06-25 06:58:18'),
(181, 'SM', 'San Marino', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2024-06-25 06:58:18', '2024-06-25 06:58:18'),
(182, 'ST', 'Sao Tome and Principe', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2024-06-25 06:58:18', '2024-06-25 06:58:18'),
(183, 'SA', 'Saudi Arabia', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2024-06-25 06:58:18', '2024-06-25 06:58:18'),
(184, 'SN', 'Senegal', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2024-06-25 06:58:18', '2024-06-25 06:58:18'),
(185, 'RS', 'Serbia', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2024-06-25 06:58:18', '2024-06-25 06:58:18'),
(186, 'SC', 'Seychelles', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2024-06-25 06:58:18', '2024-06-25 06:58:18'),
(187, 'SL', 'Sierra Leone', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2024-06-25 06:58:18', '2024-06-25 06:58:18'),
(188, 'SG', 'Singapore', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2024-06-25 06:58:18', '2024-06-25 06:58:18'),
(189, 'SK', 'Slovakia', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2024-06-25 06:58:18', '2024-06-25 06:58:18'),
(190, 'SI', 'Slovenia', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2024-06-25 06:58:18', '2024-06-25 06:58:18'),
(191, 'SB', 'Solomon Islands', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2024-06-25 06:58:18', '2024-06-25 06:58:18'),
(192, 'SO', 'Somalia', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2024-06-25 06:58:18', '2024-06-25 06:58:18'),
(193, 'ZA', 'South Africa', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2024-06-25 06:58:18', '2024-06-25 06:58:18'),
(194, 'SS', 'South Sudan', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2024-06-25 06:58:18', '2024-06-25 06:58:18'),
(195, 'GS', 'South Georgia South Sandwich Islands', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2024-06-25 06:58:18', '2024-06-25 06:58:18'),
(196, 'ES', 'Spain', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2024-06-25 06:58:18', '2024-06-25 06:58:18'),
(197, 'LK', 'Sri Lanka', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2024-06-25 06:58:18', '2024-06-25 06:58:18'),
(198, 'SH', 'St. Helena', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2024-06-25 06:58:18', '2024-06-25 06:58:18'),
(199, 'PM', 'St. Pierre and Miquelon', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2024-06-25 06:58:18', '2024-06-25 06:58:18'),
(200, 'SD', 'Sudan', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2024-06-25 06:58:18', '2024-06-25 06:58:18'),
(201, 'SR', 'Suriname', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2024-06-25 06:58:18', '2024-06-25 06:58:18'),
(202, 'SJ', 'Svalbard and Jan Mayen Islands', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2024-06-25 06:58:18', '2024-06-25 06:58:18'),
(203, 'SZ', 'Swaziland', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2024-06-25 06:58:18', '2024-06-25 06:58:18'),
(204, 'SE', 'Sweden', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2024-06-25 06:58:18', '2024-06-25 06:58:18'),
(205, 'CH', 'Switzerland', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2024-06-25 06:58:18', '2024-06-25 06:58:18'),
(206, 'SY', 'Syrian Arab Republic', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2024-06-25 06:58:18', '2024-06-25 06:58:18'),
(207, 'TW', 'Taiwan', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2024-06-25 06:58:18', '2024-06-25 06:58:18'),
(208, 'TJ', 'Tajikistan', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2024-06-25 06:58:18', '2024-06-25 06:58:18'),
(209, 'TZ', 'Tanzania, United Republic of', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2024-06-25 06:58:18', '2024-06-25 06:58:18'),
(210, 'TH', 'Thailand', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2024-06-25 06:58:18', '2024-06-25 06:58:18'),
(211, 'TG', 'Togo', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2024-06-25 06:58:18', '2024-06-25 06:58:18'),
(212, 'TK', 'Tokelau', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2024-06-25 06:58:18', '2024-06-25 06:58:18'),
(213, 'TO', 'Tonga', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2024-06-25 06:58:18', '2024-06-25 06:58:18'),
(214, 'TT', 'Trinidad and Tobago', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2024-06-25 06:58:18', '2024-06-25 06:58:18'),
(215, 'TN', 'Tunisia', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2024-06-25 06:58:18', '2024-06-25 06:58:18'),
(216, 'TR', 'Turkey', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2024-06-25 06:58:18', '2024-06-25 06:58:18'),
(217, 'TM', 'Turkmenistan', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2024-06-25 06:58:18', '2024-06-25 06:58:18'),
(218, 'TC', 'Turks and Caicos Islands', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2024-06-25 06:58:18', '2024-06-25 06:58:18'),
(219, 'TV', 'Tuvalu', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2024-06-25 06:58:18', '2024-06-25 06:58:18'),
(220, 'UG', 'Uganda', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2024-06-25 06:58:18', '2024-06-25 06:58:18'),
(221, 'UA', 'Ukraine', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2024-06-25 06:58:18', '2024-06-25 06:58:18'),
(222, 'AE', 'United Arab Emirates', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2024-06-25 06:58:18', '2024-06-25 06:58:18'),
(223, 'GB', 'United Kingdom', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2024-06-25 06:58:18', '2024-06-25 06:58:18'),
(224, 'US', 'United States', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2024-06-25 06:58:18', '2024-06-25 06:58:18'),
(225, 'UM', 'United States minor outlying islands', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2024-06-25 06:58:18', '2024-06-25 06:58:18'),
(226, 'UY', 'Uruguay', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2024-06-25 06:58:18', '2024-06-25 06:58:18'),
(227, 'UZ', 'Uzbekistan', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2024-06-25 06:58:18', '2024-06-25 06:58:18'),
(228, 'VU', 'Vanuatu', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2024-06-25 06:58:18', '2024-06-25 06:58:18'),
(229, 'VA', 'Vatican City State', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2024-06-25 06:58:18', '2024-06-25 06:58:18'),
(230, 'VE', 'Venezuela', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2024-06-25 06:58:18', '2024-06-25 06:58:18'),
(231, 'VN', 'Vietnam', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2024-06-25 06:58:18', '2024-06-25 06:58:18'),
(232, 'VG', 'Virgin Islands (British)', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2024-06-25 06:58:18', '2024-06-25 06:58:18'),
(233, 'VI', 'Virgin Islands (U.S.)', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2024-06-25 06:58:18', '2024-06-25 06:58:18'),
(234, 'WF', 'Wallis and Futuna Islands', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2024-06-25 06:58:18', '2024-06-25 06:58:18'),
(235, 'EH', 'Western Sahara', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2024-06-25 06:58:18', '2024-06-25 06:58:18'),
(236, 'YE', 'Yemen', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2024-06-25 06:58:18', '2024-06-25 06:58:18'),
(237, 'ZM', 'Zambia', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2024-06-25 06:58:18', '2024-06-25 06:58:18'),
(238, 'ZW', 'Zimbabwe', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2024-06-25 06:58:18', '2024-06-25 06:58:18');

-- --------------------------------------------------------

--
-- Table structure for table `currencies`
--

CREATE TABLE `currencies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `symbol` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `company_id` bigint(20) UNSIGNED DEFAULT '1',
  `branch_id` bigint(20) UNSIGNED DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `currencies`
--

INSERT INTO `currencies` (`id`, `name`, `code`, `symbol`, `created_at`, `updated_at`, `company_id`, `branch_id`) VALUES
(1, 'Leke', 'ALL', 'Lek', '2024-06-25 06:58:15', '2024-06-25 06:58:15', 1, 1),
(2, 'Dollars', 'USD', '$', '2024-06-25 06:58:15', '2024-06-25 06:58:15', 1, 1),
(3, 'Afghanis', 'AFN', '؋', '2024-06-25 06:58:15', '2024-06-25 06:58:15', 1, 1),
(4, 'Pesos', 'ARS', '$', '2024-06-25 06:58:15', '2024-06-25 06:58:15', 1, 1),
(5, 'Guilders', 'AWG', 'ƒ', '2024-06-25 06:58:15', '2024-06-25 06:58:15', 1, 1),
(6, 'Dollars', 'AUD', '$', '2024-06-25 06:58:15', '2024-06-25 06:58:15', 1, 1),
(7, 'New Manats', 'AZN', 'ман', '2024-06-25 06:58:15', '2024-06-25 06:58:15', 1, 1),
(8, 'Dollars', 'BSD', '$', '2024-06-25 06:58:15', '2024-06-25 06:58:15', 1, 1),
(9, 'Dollars', 'BBD', '$', '2024-06-25 06:58:15', '2024-06-25 06:58:15', 1, 1),
(10, 'Rubles', 'BYR', 'p.', '2024-06-25 06:58:15', '2024-06-25 06:58:15', 1, 1),
(11, 'Euro', 'EUR', '€', '2024-06-25 06:58:15', '2024-06-25 06:58:15', 1, 1),
(12, 'Dollars', 'BZD', 'BZ$', '2024-06-25 06:58:15', '2024-06-25 06:58:15', 1, 1),
(13, 'Dollars', 'BMD', '$', '2024-06-25 06:58:15', '2024-06-25 06:58:15', 1, 1),
(14, 'Bolivianos', 'BOB', '$b', '2024-06-25 06:58:15', '2024-06-25 06:58:15', 1, 1),
(15, 'Convertible Marka', 'BAM', 'KM', '2024-06-25 06:58:15', '2024-06-25 06:58:15', 1, 1),
(16, 'Pula', 'BWP', 'P', '2024-06-25 06:58:15', '2024-06-25 06:58:15', 1, 1),
(17, 'Leva', 'BGN', 'лв', '2024-06-25 06:58:15', '2024-06-25 06:58:15', 1, 1),
(18, 'Reais', 'BRL', 'R$', '2024-06-25 06:58:15', '2024-06-25 06:58:15', 1, 1),
(19, 'Pounds', 'GBP', '£', '2024-06-25 06:58:15', '2024-06-25 06:58:15', 1, 1),
(20, 'Dollars', 'BND', '$', '2024-06-25 06:58:15', '2024-06-25 06:58:15', 1, 1),
(21, 'Riels', 'KHR', '៛', '2024-06-25 06:58:15', '2024-06-25 06:58:15', 1, 1),
(22, 'Dollars', 'CAD', '$', '2024-06-25 06:58:15', '2024-06-25 06:58:15', 1, 1),
(23, 'Dollars', 'KYD', '$', '2024-06-25 06:58:15', '2024-06-25 06:58:15', 1, 1),
(24, 'Pesos', 'CLP', '$', '2024-06-25 06:58:15', '2024-06-25 06:58:15', 1, 1),
(25, 'Yuan Renminbi', 'CNY', '¥', '2024-06-25 06:58:15', '2024-06-25 06:58:15', 1, 1),
(26, 'Pesos', 'COP', '$', '2024-06-25 06:58:15', '2024-06-25 06:58:15', 1, 1),
(27, 'Colón', 'CRC', '₡', '2024-06-25 06:58:15', '2024-06-25 06:58:15', 1, 1),
(28, 'Kuna', 'HRK', 'kn', '2024-06-25 06:58:15', '2024-06-25 06:58:15', 1, 1),
(29, 'Pesos', 'CUP', '₱', '2024-06-25 06:58:15', '2024-06-25 06:58:15', 1, 1),
(30, 'Koruny', 'CZK', 'Kč', '2024-06-25 06:58:15', '2024-06-25 06:58:15', 1, 1),
(31, 'Kroner', 'DKK', 'kr', '2024-06-25 06:58:15', '2024-06-25 06:58:15', 1, 1),
(32, 'Pesos', 'DOP ', 'RD$', '2024-06-25 06:58:15', '2024-06-25 06:58:15', 1, 1),
(33, 'Dollars', 'XCD', '$', '2024-06-25 06:58:15', '2024-06-25 06:58:15', 1, 1),
(34, 'Pounds', 'EGP', '£', '2024-06-25 06:58:15', '2024-06-25 06:58:15', 1, 1),
(35, 'Colones', 'SVC', '$', '2024-06-25 06:58:15', '2024-06-25 06:58:15', 1, 1),
(36, 'Pounds', 'FKP', '£', '2024-06-25 06:58:15', '2024-06-25 06:58:15', 1, 1),
(37, 'Dollars', 'FJD', '$', '2024-06-25 06:58:15', '2024-06-25 06:58:15', 1, 1),
(38, 'Cedis', 'GHC', '¢', '2024-06-25 06:58:15', '2024-06-25 06:58:15', 1, 1),
(39, 'Pounds', 'GIP', '£', '2024-06-25 06:58:15', '2024-06-25 06:58:15', 1, 1),
(40, 'Quetzales', 'GTQ', 'Q', '2024-06-25 06:58:15', '2024-06-25 06:58:15', 1, 1),
(41, 'Pounds', 'GGP', '£', '2024-06-25 06:58:15', '2024-06-25 06:58:15', 1, 1),
(42, 'Dollars', 'GYD', '$', '2024-06-25 06:58:15', '2024-06-25 06:58:15', 1, 1),
(43, 'Lempiras', 'HNL', 'L', '2024-06-25 06:58:15', '2024-06-25 06:58:15', 1, 1),
(44, 'Dollars', 'HKD', '$', '2024-06-25 06:58:15', '2024-06-25 06:58:15', 1, 1),
(45, 'Forint', 'HUF', 'Ft', '2024-06-25 06:58:15', '2024-06-25 06:58:15', 1, 1),
(46, 'Kronur', 'ISK', 'kr', '2024-06-25 06:58:15', '2024-06-25 06:58:15', 1, 1),
(47, 'Rupees', 'INR', '₹', '2024-06-25 06:58:15', '2024-06-25 06:58:15', 1, 1),
(48, 'Rupiahs', 'IDR', 'Rp', '2024-06-25 06:58:15', '2024-06-25 06:58:15', 1, 1),
(49, 'Rials', 'IRR', '﷼', '2024-06-25 06:58:15', '2024-06-25 06:58:15', 1, 1),
(50, 'Pounds', 'IMP', '£', '2024-06-25 06:58:15', '2024-06-25 06:58:15', 1, 1),
(51, 'New Shekels', 'ILS', '₪', '2024-06-25 06:58:15', '2024-06-25 06:58:15', 1, 1),
(52, 'Dollars', 'JMD', 'J$', '2024-06-25 06:58:15', '2024-06-25 06:58:15', 1, 1),
(53, 'Yen', 'JPY', '¥', '2024-06-25 06:58:15', '2024-06-25 06:58:15', 1, 1),
(54, 'Pounds', 'JEP', '£', '2024-06-25 06:58:15', '2024-06-25 06:58:15', 1, 1),
(55, 'Tenge', 'KZT', 'лв', '2024-06-25 06:58:15', '2024-06-25 06:58:15', 1, 1),
(56, 'Won', 'KPW', '₩', '2024-06-25 06:58:15', '2024-06-25 06:58:15', 1, 1),
(57, 'Won', 'KRW', '₩', '2024-06-25 06:58:15', '2024-06-25 06:58:15', 1, 1),
(58, 'Soms', 'KGS', 'лв', '2024-06-25 06:58:15', '2024-06-25 06:58:15', 1, 1),
(59, 'Kips', 'LAK', '₭', '2024-06-25 06:58:15', '2024-06-25 06:58:15', 1, 1),
(60, 'Lati', 'LVL', 'Ls', '2024-06-25 06:58:15', '2024-06-25 06:58:15', 1, 1),
(61, 'Pounds', 'LBP', '£', '2024-06-25 06:58:15', '2024-06-25 06:58:15', 1, 1),
(62, 'Dollars', 'LRD', '$', '2024-06-25 06:58:15', '2024-06-25 06:58:15', 1, 1),
(63, 'Switzerland Francs', 'CHF', 'CHF', '2024-06-25 06:58:15', '2024-06-25 06:58:15', 1, 1),
(64, 'Litai', 'LTL', 'Lt', '2024-06-25 06:58:15', '2024-06-25 06:58:15', 1, 1),
(65, 'Denars', 'MKD', 'ден', '2024-06-25 06:58:15', '2024-06-25 06:58:15', 1, 1),
(66, 'Ringgits', 'MYR', 'RM', '2024-06-25 06:58:15', '2024-06-25 06:58:15', 1, 1),
(67, 'Rupees', 'MUR', '₨', '2024-06-25 06:58:15', '2024-06-25 06:58:15', 1, 1),
(68, 'Pesos', 'MXN', '$', '2024-06-25 06:58:15', '2024-06-25 06:58:15', 1, 1),
(69, 'Tugriks', 'MNT', '₮', '2024-06-25 06:58:15', '2024-06-25 06:58:15', 1, 1),
(70, 'Meticais', 'MZN', 'MT', '2024-06-25 06:58:15', '2024-06-25 06:58:15', 1, 1),
(71, 'Dollars', 'NAD', '$', '2024-06-25 06:58:15', '2024-06-25 06:58:15', 1, 1),
(72, 'Rupees', 'NPR', '₨', '2024-06-25 06:58:15', '2024-06-25 06:58:15', 1, 1),
(73, 'Guilders', 'ANG', 'ƒ', '2024-06-25 06:58:15', '2024-06-25 06:58:15', 1, 1),
(74, 'Dollars', 'NZD', '$', '2024-06-25 06:58:15', '2024-06-25 06:58:15', 1, 1),
(75, 'Cordobas', 'NIO', 'C$', '2024-06-25 06:58:15', '2024-06-25 06:58:15', 1, 1),
(76, 'Nairas', 'NGN', '₦', '2024-06-25 06:58:15', '2024-06-25 06:58:15', 1, 1),
(77, 'Krone', 'NOK', 'kr', '2024-06-25 06:58:15', '2024-06-25 06:58:15', 1, 1),
(78, 'Rials', 'OMR', '﷼', '2024-06-25 06:58:15', '2024-06-25 06:58:15', 1, 1),
(79, 'Rupees', 'PKR', '₨', '2024-06-25 06:58:15', '2024-06-25 06:58:15', 1, 1),
(80, 'Balboa', 'PAB', 'B/.', '2024-06-25 06:58:15', '2024-06-25 06:58:15', 1, 1),
(81, 'Guarani', 'PYG', 'Gs', '2024-06-25 06:58:15', '2024-06-25 06:58:15', 1, 1),
(82, 'Nuevos Soles', 'PEN', 'S/.', '2024-06-25 06:58:15', '2024-06-25 06:58:15', 1, 1),
(83, 'Pesos', 'PHP', 'Php', '2024-06-25 06:58:15', '2024-06-25 06:58:15', 1, 1),
(84, 'Zlotych', 'PLN', 'zł', '2024-06-25 06:58:15', '2024-06-25 06:58:15', 1, 1),
(85, 'Rials', 'QAR', '﷼', '2024-06-25 06:58:15', '2024-06-25 06:58:15', 1, 1),
(86, 'New Lei', 'RON', 'lei', '2024-06-25 06:58:15', '2024-06-25 06:58:15', 1, 1),
(87, 'Rubles', 'RUB', 'руб', '2024-06-25 06:58:15', '2024-06-25 06:58:15', 1, 1),
(88, 'Pounds', 'SHP', '£', '2024-06-25 06:58:15', '2024-06-25 06:58:15', 1, 1),
(89, 'Riyals', 'SAR', '﷼', '2024-06-25 06:58:15', '2024-06-25 06:58:15', 1, 1),
(90, 'Dinars', 'RSD', 'Дин.', '2024-06-25 06:58:15', '2024-06-25 06:58:15', 1, 1),
(91, 'Rupees', 'SCR', '₨', '2024-06-25 06:58:15', '2024-06-25 06:58:15', 1, 1),
(92, 'Dollars', 'SGD', '$', '2024-06-25 06:58:15', '2024-06-25 06:58:15', 1, 1),
(93, 'Dollars', 'SBD', '$', '2024-06-25 06:58:15', '2024-06-25 06:58:15', 1, 1),
(94, 'Shillings', 'SOS', 'S', '2024-06-25 06:58:15', '2024-06-25 06:58:15', 1, 1),
(95, 'Rand', 'ZAR', 'R', '2024-06-25 06:58:15', '2024-06-25 06:58:15', 1, 1),
(96, 'Rupees', 'LKR', '₨', '2024-06-25 06:58:15', '2024-06-25 06:58:15', 1, 1),
(97, 'Kronor', 'SEK', 'kr', '2024-06-25 06:58:15', '2024-06-25 06:58:15', 1, 1),
(98, 'Dollars', 'SRD', '$', '2024-06-25 06:58:15', '2024-06-25 06:58:15', 1, 1),
(99, 'Pounds', 'SYP', '£', '2024-06-25 06:58:15', '2024-06-25 06:58:15', 1, 1),
(100, 'New Dollars', 'TWD', 'NT$', '2024-06-25 06:58:15', '2024-06-25 06:58:15', 1, 1),
(101, 'Baht', 'THB', '฿', '2024-06-25 06:58:15', '2024-06-25 06:58:15', 1, 1),
(102, 'Dollars', 'TTD', 'TT$', '2024-06-25 06:58:15', '2024-06-25 06:58:15', 1, 1),
(103, 'Lira', 'TRY', 'TL', '2024-06-25 06:58:15', '2024-06-25 06:58:15', 1, 1),
(104, 'Liras', 'TRL', '£', '2024-06-25 06:58:15', '2024-06-25 06:58:15', 1, 1),
(105, 'Dollars', 'TVD', '$', '2024-06-25 06:58:15', '2024-06-25 06:58:15', 1, 1),
(106, 'Hryvnia', 'UAH', '₴', '2024-06-25 06:58:15', '2024-06-25 06:58:15', 1, 1),
(107, 'Pesos', 'UYU', '$U', '2024-06-25 06:58:15', '2024-06-25 06:58:15', 1, 1),
(108, 'Sums', 'UZS', 'лв', '2024-06-25 06:58:15', '2024-06-25 06:58:15', 1, 1),
(109, 'Bolivares Fuertes', 'VEF', 'Bs', '2024-06-25 06:58:15', '2024-06-25 06:58:15', 1, 1),
(110, 'Dong', 'VND', '₫', '2024-06-25 06:58:15', '2024-06-25 06:58:15', 1, 1),
(111, 'Rials', 'YER', '﷼', '2024-06-25 06:58:15', '2024-06-25 06:58:15', 1, 1),
(112, 'Taka', 'BDT', '৳', '2024-06-25 06:58:15', '2024-06-25 06:58:15', 1, 1),
(113, 'Zimbabwe Dollars', 'ZWD', 'Z$', '2024-06-25 06:58:15', '2024-06-25 06:58:15', 1, 1),
(114, 'Kenya', 'KES', 'KSh', '2024-06-25 06:58:15', '2024-06-25 06:58:15', 1, 1),
(115, 'Nigeria', 'naira', '₦', '2024-06-25 06:58:15', '2024-06-25 06:58:15', 1, 1),
(116, 'Ghana', 'GHS', 'GH₵', '2024-06-25 06:58:15', '2024-06-25 06:58:15', 1, 1),
(117, 'Ethiopian', 'ETB', 'Br', '2024-06-25 06:58:15', '2024-06-25 06:58:15', 1, 1),
(118, 'Tanzania', 'TZS', 'TSh', '2024-06-25 06:58:15', '2024-06-25 06:58:15', 1, 1),
(119, 'Uganda', 'UGX', 'USh', '2024-06-25 06:58:15', '2024-06-25 06:58:15', 1, 1),
(120, 'Rwandan', 'FRW', 'FRw', '2024-06-25 06:58:15', '2024-06-25 06:58:15', 1, 1),
(121, 'UAE Dirham', 'AED', 'د.إ', '2024-06-25 06:58:15', '2024-06-25 06:58:15', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `daily_leaves`
--

CREATE TABLE `daily_leaves` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `approved_by_tl` bigint(20) UNSIGNED DEFAULT NULL,
  `approved_at_tl` timestamp NULL DEFAULT NULL,
  `approved_by_hr` bigint(20) UNSIGNED DEFAULT NULL,
  `approved_at_hr` timestamp NULL DEFAULT NULL,
  `rejected_by_tl` bigint(20) UNSIGNED DEFAULT NULL,
  `rejected_at_tl` timestamp NULL DEFAULT NULL,
  `rejected_by_hr` bigint(20) UNSIGNED DEFAULT NULL,
  `rejected_at_hr` timestamp NULL DEFAULT NULL,
  `leave_type` enum('early_leave','late_arrive') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date` date DEFAULT NULL,
  `time` time DEFAULT NULL,
  `reason` text COLLATE utf8mb4_unicode_ci,
  `status_id` bigint(20) UNSIGNED NOT NULL DEFAULT '1',
  `author_info_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `company_id` bigint(20) UNSIGNED DEFAULT '1',
  `branch_id` bigint(20) UNSIGNED DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `database_backups`
--

CREATE TABLE `database_backups` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `path` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `company_id` bigint(20) UNSIGNED DEFAULT '1',
  `branch_id` bigint(20) UNSIGNED DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `date_formats`
--

CREATE TABLE `date_formats` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `format` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `normal_view` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `created_by` int(11) DEFAULT '1',
  `updated_by` int(11) DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `company_id` bigint(20) UNSIGNED DEFAULT '1',
  `branch_id` bigint(20) UNSIGNED DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `date_formats`
--

INSERT INTO `date_formats` (`id`, `format`, `normal_view`, `status`, `created_by`, `updated_by`, `created_at`, `updated_at`, `company_id`, `branch_id`) VALUES
(1, 'jS M, Y', '17th May, 2019', 1, 1, 1, '2024-06-25 06:58:15', '2024-06-25 06:58:15', 1, 1),
(2, 'Y-m-d', '2019-05-17', 1, 1, 1, '2024-06-25 06:58:15', '2024-06-25 06:58:15', 1, 1),
(3, 'Y-d-m', '2019-17-05', 1, 1, 1, '2024-06-25 06:58:15', '2024-06-25 06:58:15', 1, 1),
(4, 'd-m-Y', '17-05-2019', 1, 1, 1, '2024-06-25 06:58:15', '2024-06-25 06:58:15', 1, 1),
(5, 'm-d-Y', '05-17-2019', 1, 1, 1, '2024-06-25 06:58:15', '2024-06-25 06:58:15', 1, 1),
(6, 'Y/m/d', '2019/05/17', 1, 1, 1, '2024-06-25 06:58:15', '2024-06-25 06:58:15', 1, 1),
(7, 'Y/d/m', '2019/17/05', 1, 1, 1, '2024-06-25 06:58:15', '2024-06-25 06:58:15', 1, 1),
(8, 'd/m/Y', '17/05/2019', 1, 1, 1, '2024-06-25 06:58:15', '2024-06-25 06:58:15', 1, 1),
(9, 'm/d/Y', '05/17/2019', 1, 1, 1, '2024-06-25 06:58:15', '2024-06-25 06:58:15', 1, 1),
(10, 'l jS \\of F Y', 'Monday 17th of May 2019', 1, 1, 1, '2024-06-25 06:58:15', '2024-06-25 06:58:15', 1, 1),
(11, 'jS \\of F Y', '17th of May 2019', 1, 1, 1, '2024-06-25 06:58:15', '2024-06-25 06:58:15', 1, 1),
(12, 'g:ia \\o\\n l jS F Y', '12:00am on Monday 17th May 2019', 1, 1, 1, '2024-06-25 06:58:15', '2024-06-25 06:58:15', 1, 1),
(13, 'F j, Y, g:i a', 'May 7, 2019, 6:20 pm', 1, 1, 1, '2024-06-25 06:58:15', '2024-06-25 06:58:15', 1, 1),
(14, 'F j, Y', 'May 17, 2019', 1, 1, 1, '2024-06-25 06:58:15', '2024-06-25 06:58:15', 1, 1),
(15, '\\i\\t \\i\\s \\t\\h\\e jS \\d\\a\\y', 'it is the 17th day', 1, 1, 1, '2024-06-25 06:58:15', '2024-06-25 06:58:15', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `departments`
--

CREATE TABLE `departments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `company_id` bigint(20) UNSIGNED DEFAULT '1',
  `branch_id` bigint(20) UNSIGNED DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `departments`
--

INSERT INTO `departments` (`id`, `title`, `status_id`, `created_at`, `updated_at`, `deleted_at`, `company_id`, `branch_id`) VALUES
(1, 'IT', 1, NULL, NULL, NULL, 1, 1),
(2, 'Kỹ thuật', 1, NULL, '2024-10-03 01:09:56', NULL, 1, 1),
(3, 'Kế toán', 1, NULL, '2024-10-03 01:10:06', NULL, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `deposits`
--

CREATE TABLE `deposits` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '1',
  `income_expense_category_id` bigint(20) UNSIGNED NOT NULL,
  `date` date NOT NULL,
  `amount` double(16,2) DEFAULT NULL,
  `request_amount` double(16,2) NOT NULL DEFAULT '0.00',
  `ref` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_method_id` bigint(20) UNSIGNED DEFAULT NULL,
  `transaction_id` bigint(20) UNSIGNED DEFAULT NULL,
  `pay` bigint(20) UNSIGNED NOT NULL DEFAULT '9',
  `status_id` bigint(20) UNSIGNED NOT NULL DEFAULT '2',
  `approver_id` bigint(20) UNSIGNED DEFAULT NULL,
  `remarks` text COLLATE utf8mb4_unicode_ci,
  `created_by` bigint(20) UNSIGNED NOT NULL DEFAULT '1',
  `updated_by` bigint(20) UNSIGNED NOT NULL DEFAULT '1',
  `attachment` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `company_id` bigint(20) UNSIGNED DEFAULT '1',
  `branch_id` bigint(20) UNSIGNED DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `designations`
--

CREATE TABLE `designations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `company_id` bigint(20) UNSIGNED DEFAULT '1',
  `branch_id` bigint(20) UNSIGNED DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `designations`
--

INSERT INTO `designations` (`id`, `title`, `status_id`, `created_at`, `updated_at`, `deleted_at`, `company_id`, `branch_id`) VALUES
(1, 'Admin', 1, NULL, NULL, NULL, 1, 1),
(3, 'Nhân viên', 1, NULL, '2024-10-02 04:17:21', NULL, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `discussions`
--

CREATE TABLE `discussions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `subject` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `project_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `show_to_customer` bigint(20) UNSIGNED NOT NULL DEFAULT '22',
  `status_id` bigint(20) UNSIGNED NOT NULL DEFAULT '1',
  `last_activity` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `company_id` bigint(20) UNSIGNED DEFAULT '1',
  `branch_id` bigint(20) UNSIGNED DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `discussion_comments`
--

CREATE TABLE `discussion_comments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `show_to_customer` tinyint(4) NOT NULL DEFAULT '1' COMMENT '0=no,1=yes',
  `discussion_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `attachment` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `company_id` bigint(20) UNSIGNED DEFAULT '1',
  `branch_id` bigint(20) UNSIGNED DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `discussion_likes`
--

CREATE TABLE `discussion_likes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `discussion_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `like` int(11) DEFAULT '0',
  `dislike` int(11) DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `company_id` bigint(20) UNSIGNED DEFAULT '1',
  `branch_id` bigint(20) UNSIGNED DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `domains`
--

CREATE TABLE `domains` (
  `id` int(10) UNSIGNED NOT NULL,
  `domain` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tenant_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `company_id` bigint(20) UNSIGNED DEFAULT '1',
  `branch_id` bigint(20) UNSIGNED DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `duty_schedules`
--

CREATE TABLE `duty_schedules` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `shift_id` bigint(20) UNSIGNED NOT NULL,
  `start_time` time DEFAULT NULL,
  `end_time` time DEFAULT NULL,
  `consider_time` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '0',
  `hour` int(11) NOT NULL DEFAULT '0',
  `status_id` bigint(20) UNSIGNED NOT NULL,
  `end_on_same_date` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `company_id` bigint(20) UNSIGNED DEFAULT '1',
  `branch_id` bigint(20) UNSIGNED DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `duty_schedules`
--

INSERT INTO `duty_schedules` (`id`, `shift_id`, `start_time`, `end_time`, `consider_time`, `hour`, `status_id`, `end_on_same_date`, `created_at`, `updated_at`, `company_id`, `branch_id`) VALUES
(1, 1, '08:00:00', '11:30:00', '15', 3, 1, 1, '2024-06-25 06:58:19', '2024-10-02 03:36:41', 1, 1),
(2, 2, '13:00:00', '16:30:00', '15', 3, 1, 1, '2024-06-25 06:58:19', '2024-10-02 03:37:28', 1, 1),
(3, 3, '18:00:00', '05:00:00', '15', 13, 1, 1, '2024-06-25 06:58:19', '2024-10-02 03:38:02', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `employee_breaks`
--

CREATE TABLE `employee_breaks` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `date` date NOT NULL,
  `break_time` time DEFAULT NULL,
  `back_time` time DEFAULT NULL,
  `reason` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `company_id` bigint(20) UNSIGNED DEFAULT '1',
  `branch_id` bigint(20) UNSIGNED DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `employee_tasks`
--

CREATE TABLE `employee_tasks` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `assigned_id` bigint(20) UNSIGNED NOT NULL,
  `created_by` bigint(20) UNSIGNED NOT NULL,
  `due_date` date DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `attachment_file_id` bigint(20) UNSIGNED DEFAULT NULL,
  `status_id` bigint(20) UNSIGNED NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `company_id` bigint(20) UNSIGNED DEFAULT '1',
  `branch_id` bigint(20) UNSIGNED DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `expenses`
--

CREATE TABLE `expenses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '1',
  `income_expense_category_id` bigint(20) UNSIGNED NOT NULL,
  `date` date NOT NULL,
  `amount` double(16,2) DEFAULT NULL,
  `request_amount` double(16,2) NOT NULL DEFAULT '0.00',
  `pay` bigint(20) UNSIGNED NOT NULL DEFAULT '9',
  `status_id` bigint(20) UNSIGNED NOT NULL DEFAULT '2',
  `ref` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `transaction_id` bigint(20) UNSIGNED DEFAULT NULL,
  `payment_method_id` bigint(20) UNSIGNED DEFAULT NULL,
  `approver_id` bigint(20) UNSIGNED DEFAULT NULL,
  `remarks` text COLLATE utf8mb4_unicode_ci,
  `created_by` bigint(20) UNSIGNED NOT NULL DEFAULT '1',
  `updated_by` bigint(20) UNSIGNED NOT NULL DEFAULT '1',
  `attachment` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `company_id` bigint(20) UNSIGNED DEFAULT '1',
  `branch_id` bigint(20) UNSIGNED DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `expense_claims`
--

CREATE TABLE `expense_claims` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `invoice_number` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'invoice number',
  `claim_date` date DEFAULT NULL COMMENT 'date of claim',
  `remarks` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'remarks of payment',
  `payable_amount` double(10,2) DEFAULT NULL COMMENT 'amount of payment',
  `due_amount` double(10,2) DEFAULT NULL COMMENT 'due amount of payment',
  `attachment_file_id` bigint(20) UNSIGNED DEFAULT NULL,
  `status_id` bigint(20) UNSIGNED NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `company_id` bigint(20) UNSIGNED DEFAULT '1',
  `branch_id` bigint(20) UNSIGNED DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `expense_claim_details`
--

CREATE TABLE `expense_claim_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `hrm_expense_id` bigint(20) UNSIGNED NOT NULL,
  `expense_claim_id` bigint(20) UNSIGNED NOT NULL,
  `amount` double(15,2) NOT NULL DEFAULT '0.00',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `company_id` bigint(20) UNSIGNED DEFAULT '1',
  `branch_id` bigint(20) UNSIGNED DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `expire_notifications`
--

CREATE TABLE `expire_notifications` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `receiver_id` bigint(20) UNSIGNED NOT NULL COMMENT 'it will come from user table',
  `employee_id` bigint(20) UNSIGNED NOT NULL COMMENT 'it will come from user table',
  `branch_id` bigint(20) UNSIGNED NOT NULL DEFAULT '1',
  `company_id` bigint(20) UNSIGNED NOT NULL DEFAULT '1',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_read` tinyint(4) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `company_id` bigint(20) UNSIGNED DEFAULT '1',
  `branch_id` bigint(20) UNSIGNED DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `features`
--

CREATE TABLE `features` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `type` enum('company_growth','advance_features','awesome_features') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `attachment_file_id` bigint(20) UNSIGNED DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `short_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `long_description` longtext COLLATE utf8mb4_unicode_ci,
  `status_id` bigint(20) UNSIGNED NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `goals`
--

CREATE TABLE `goals` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `subject` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `target` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `goal_type_id` bigint(20) UNSIGNED DEFAULT NULL,
  `progress` int(11) DEFAULT '0',
  `status_id` bigint(20) UNSIGNED NOT NULL DEFAULT '24',
  `description` longtext COLLATE utf8mb4_unicode_ci,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `rating` int(11) DEFAULT '0',
  `created_by` bigint(20) UNSIGNED NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `company_id` bigint(20) UNSIGNED DEFAULT '1',
  `branch_id` bigint(20) UNSIGNED DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `goal_types`
--

CREATE TABLE `goal_types` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status_id` bigint(20) UNSIGNED NOT NULL DEFAULT '1',
  `created_by` bigint(20) UNSIGNED DEFAULT '1',
  `updated_by` bigint(20) UNSIGNED DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `company_id` bigint(20) UNSIGNED DEFAULT '1',
  `branch_id` bigint(20) UNSIGNED DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `holidays`
--

CREATE TABLE `holidays` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `attachment_id` bigint(20) UNSIGNED DEFAULT NULL,
  `status_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `company_id` bigint(20) UNSIGNED DEFAULT '1',
  `branch_id` bigint(20) UNSIGNED DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `home_pages`
--

CREATE TABLE `home_pages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contents` json DEFAULT NULL,
  `status_id` bigint(20) UNSIGNED NOT NULL DEFAULT '1',
  `created_by` bigint(20) UNSIGNED NOT NULL,
  `updated_by` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `company_id` bigint(20) UNSIGNED DEFAULT '1',
  `branch_id` bigint(20) UNSIGNED DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `hrm_expenses`
--

CREATE TABLE `hrm_expenses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `income_expense_category_id` bigint(20) UNSIGNED NOT NULL,
  `date` date DEFAULT NULL COMMENT 'date of expense',
  `remarks` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'remarks of expense',
  `amount` double(10,2) DEFAULT NULL COMMENT 'amount of expense',
  `attachment_file_id` bigint(20) UNSIGNED DEFAULT NULL,
  `status_id` bigint(20) UNSIGNED NOT NULL DEFAULT '1',
  `is_claimed_status_id` bigint(20) UNSIGNED NOT NULL,
  `claimed_approved_status_id` bigint(20) UNSIGNED NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `company_id` bigint(20) UNSIGNED DEFAULT '1',
  `branch_id` bigint(20) UNSIGNED DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `hrm_languages`
--

CREATE TABLE `hrm_languages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `language_id` int(11) NOT NULL,
  `is_default` int(11) NOT NULL DEFAULT '0',
  `status_id` bigint(20) UNSIGNED NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `company_id` bigint(20) UNSIGNED DEFAULT '1',
  `branch_id` bigint(20) UNSIGNED DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `hrm_languages`
--

INSERT INTO `hrm_languages` (`id`, `language_id`, `is_default`, `status_id`, `created_at`, `updated_at`, `company_id`, `branch_id`) VALUES
(1, 19, 1, 1, '2024-06-25 06:58:19', '2024-06-25 06:58:19', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `income_expense_categories`
--

CREATE TABLE `income_expense_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_income` tinyint(4) NOT NULL DEFAULT '0' COMMENT '0=Expense, 1=Income',
  `attachment_file_id` bigint(20) UNSIGNED DEFAULT NULL,
  `status_id` bigint(20) UNSIGNED NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `company_id` bigint(20) UNSIGNED DEFAULT '1',
  `branch_id` bigint(20) UNSIGNED DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `indicators`
--

CREATE TABLE `indicators` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `department_id` bigint(20) UNSIGNED DEFAULT NULL,
  `shift_id` bigint(20) UNSIGNED DEFAULT NULL,
  `designation_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rates` json DEFAULT NULL,
  `rating` double(8,2) DEFAULT NULL,
  `added_by` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `company_id` bigint(20) UNSIGNED DEFAULT '1',
  `branch_id` bigint(20) UNSIGNED DEFAULT '1',
  `status_id` bigint(20) UNSIGNED DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ip_setups`
--

CREATE TABLE `ip_setups` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `location` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ip_address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status_id` bigint(20) UNSIGNED NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `company_id` bigint(20) UNSIGNED DEFAULT '1',
  `branch_id` bigint(20) UNSIGNED DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jitsi_meetings`
--

CREATE TABLE `jitsi_meetings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `meeting_id` text COLLATE utf8mb4_unicode_ci,
  `time_start_before` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `company_id` bigint(20) UNSIGNED DEFAULT '1',
  `branch_id` bigint(20) UNSIGNED DEFAULT '1',
  `status_id` bigint(20) UNSIGNED DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL,
  `company_id` bigint(20) UNSIGNED DEFAULT '1',
  `branch_id` bigint(20) UNSIGNED DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `languages`
--

CREATE TABLE `languages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `native` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rtl` tinyint(4) DEFAULT '0',
  `status` tinyint(4) DEFAULT '1' COMMENT '1=active, 0=inactive',
  `json_exist` tinyint(4) DEFAULT '0',
  `is_default` tinyint(4) DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `company_id` bigint(20) UNSIGNED DEFAULT '1',
  `branch_id` bigint(20) UNSIGNED DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `languages`
--

INSERT INTO `languages` (`id`, `code`, `name`, `native`, `rtl`, `status`, `json_exist`, `is_default`, `created_at`, `updated_at`, `company_id`, `branch_id`) VALUES
(1, 'af', 'Afrikaans', 'Afrikaans', 0, 0, 0, 0, NULL, NULL, 1, 1),
(2, 'am', 'Amharic', 'አማርኛ', 0, 0, 0, 0, NULL, NULL, 1, 1),
(3, 'ar', 'Arabic', 'العربية', 1, 0, 0, 0, NULL, '2024-10-03 01:24:35', 1, 1),
(4, 'ay', 'Aymara', 'Aymar', 0, 0, 0, 0, NULL, NULL, 1, 1),
(5, 'az', 'Azerbaijani', 'Azərbaycanca / آذربايجان', 0, 0, 0, 0, NULL, NULL, 1, 1),
(6, 'be', 'Belarusian', 'Беларуская', 0, 0, 0, 0, NULL, NULL, 1, 1),
(7, 'bg', 'Bulgarian', 'Български', 0, 0, 0, 0, NULL, NULL, 1, 1),
(8, 'bi', 'Bislama', 'Bislama', 0, 0, 0, 0, NULL, NULL, 1, 1),
(9, 'bn', 'Bengali', 'বাংলা', 0, 0, 0, 0, NULL, '2024-10-03 01:24:25', 1, 1),
(10, 'bs', 'Bosnian', 'Bosanski', 0, 0, 0, 0, NULL, NULL, 1, 1),
(11, 'ca', 'Catalan', 'Català', 0, 0, 0, 0, NULL, NULL, 1, 1),
(12, 'ch', 'Chamorro', 'Chamoru', 0, 0, 0, 0, NULL, NULL, 1, 1),
(13, 'cs', 'Czech', 'Česky', 0, 0, 0, 0, NULL, NULL, 1, 1),
(14, 'da', 'Danish', 'Dansk', 0, 0, 0, 0, NULL, NULL, 1, 1),
(15, 'de', 'German', 'Deutsch', 0, 0, 0, 0, NULL, NULL, 1, 1),
(16, 'dv', 'Divehi', 'ދިވެހިބަސް', 1, 0, 0, 0, NULL, NULL, 1, 1),
(17, 'dz', 'Dzongkha', 'ཇོང་ཁ', 0, 0, 0, 0, NULL, NULL, 1, 1),
(18, 'el', 'Greek', 'Ελληνικά', 0, 0, 0, 0, NULL, NULL, 1, 1),
(19, 'en', 'English', 'English', 0, 1, 0, 0, NULL, '2024-09-30 08:38:51', 1, 1),
(20, 'es', 'Spanish', 'Español', 0, 0, 0, 0, NULL, '2024-10-03 01:24:52', 1, 1),
(21, 'et', 'Estonian', 'Eesti', 0, 0, 0, 0, NULL, NULL, 1, 1),
(22, 'eu', 'Basque', 'Euskara', 0, 0, 0, 0, NULL, NULL, 1, 1),
(23, 'fa', 'Persian', 'فارسی', 1, 0, 0, 0, NULL, NULL, 1, 1),
(24, 'ff', 'Peul', 'Fulfulde', 0, 0, 0, 0, NULL, NULL, 1, 1),
(25, 'fi', 'Finnish', 'Suomi', 0, 0, 0, 0, NULL, NULL, 1, 1),
(26, 'fj', 'Fijian', 'Na Vosa Vakaviti', 0, 0, 0, 0, NULL, NULL, 1, 1),
(27, 'fo', 'Faroese', 'Føroyskt', 0, 0, 0, 0, NULL, NULL, 1, 1),
(28, 'fr', 'French', 'Français', 0, 0, 0, 0, NULL, NULL, 1, 1),
(29, 'ga', 'Irish', 'Gaeilge', 0, 0, 0, 0, NULL, NULL, 1, 1),
(30, 'gl', 'Galician', 'Galego', 0, 0, 0, 0, NULL, NULL, 1, 1),
(31, 'gn', 'Guarani', 'Avañe\'ẽ', 0, 0, 0, 0, NULL, NULL, 1, 1),
(32, 'gv', 'Manx', 'Gaelg', 0, 0, 0, 0, NULL, NULL, 1, 1),
(33, 'he', 'Hebrew', 'עברית', 1, 0, 0, 0, NULL, NULL, 1, 1),
(34, 'hi', 'Hindi', 'हिन्दी', 0, 0, 0, 0, NULL, NULL, 1, 1),
(35, 'hr', 'Croatian', 'Hrvatski', 0, 0, 0, 0, NULL, NULL, 1, 1),
(36, 'ht', 'Haitian', 'Krèyol ayisyen', 0, 0, 0, 0, NULL, NULL, 1, 1),
(37, 'hu', 'Hungarian', 'Magyar', 0, 0, 0, 0, NULL, NULL, 1, 1),
(38, 'hy', 'Armenian', 'Հայերեն', 0, 0, 0, 0, NULL, NULL, 1, 1),
(39, 'indo', 'Indonesian', 'Bahasa Indonesia', 0, 0, 0, 0, NULL, NULL, 1, 1),
(40, 'is', 'Icelandic', 'Íslenska', 0, 0, 0, 0, NULL, NULL, 1, 1),
(41, 'it', 'Italian', 'Italiano', 0, 0, 0, 0, NULL, NULL, 1, 1),
(42, 'ja', 'Japanese', '日本語', 0, 0, 0, 0, NULL, NULL, 1, 1),
(43, 'ka', 'Georgian', 'ქართული', 0, 0, 0, 0, NULL, NULL, 1, 1),
(44, 'kg', 'Kongo', 'KiKongo', 0, 0, 0, 0, NULL, NULL, 1, 1),
(45, 'kk', 'Kazakh', 'Қазақша', 0, 0, 0, 0, NULL, NULL, 1, 1),
(46, 'kl', 'Greenlandic', 'Kalaallisut', 0, 0, 0, 0, NULL, NULL, 1, 1),
(47, 'km', 'Cambodian', 'ភាសាខ្មែរ', 0, 0, 0, 0, NULL, NULL, 1, 1),
(48, 'ko', 'Korean', '한국어', 0, 0, 0, 0, NULL, NULL, 1, 1),
(49, 'ku', 'Kurdish', 'Kurdî / كوردی', 1, 0, 0, 0, NULL, NULL, 1, 1),
(50, 'ky', 'Kirghiz', 'Kırgızca / Кыргызча', 0, 0, 0, 0, NULL, NULL, 1, 1),
(51, 'la', 'Latin', 'Latina', 0, 0, 0, 0, NULL, NULL, 1, 1),
(52, 'lb', 'Luxembourgish', 'Lëtzebuergesch', 0, 0, 0, 0, NULL, NULL, 1, 1),
(53, 'ln', 'Lingala', 'Lingála', 0, 0, 0, 0, NULL, NULL, 1, 1),
(54, 'lo', 'Laotian', 'ລາວ / Pha xa lao', 0, 0, 0, 0, NULL, NULL, 1, 1),
(55, 'lt', 'Lithuanian', 'Lietuvių', 0, 0, 0, 0, NULL, NULL, 1, 1),
(56, 'lu', 'Luxembourg', 'Luxembourg', 0, 0, 0, 0, NULL, NULL, 1, 1),
(57, 'lv', 'Latvian', 'Latviešu', 0, 0, 0, 0, NULL, NULL, 1, 1),
(58, 'mg', 'Malagasy', 'Malagasy', 0, 0, 0, 0, NULL, NULL, 1, 1),
(59, 'mh', 'Marshallese', 'Kajin Majel / Ebon', 0, 0, 0, 0, NULL, NULL, 1, 1),
(60, 'mi', 'Maori', 'Māori', 0, 0, 0, 0, NULL, NULL, 1, 1),
(61, 'mk', 'Macedonian', 'Македонски', 0, 0, 0, 0, NULL, NULL, 1, 1),
(62, 'mn', 'Mongolian', 'Монгол', 0, 0, 0, 0, NULL, NULL, 1, 1),
(63, 'ms', 'Malay', 'Bahasa Melayu', 0, 0, 0, 0, NULL, NULL, 1, 1),
(64, 'mt', 'Maltese', 'bil-Malti', 0, 0, 0, 0, NULL, NULL, 1, 1),
(65, 'my', 'Burmese', 'မြန်မာစာ', 0, 0, 0, 0, NULL, NULL, 1, 1),
(66, 'na', 'Nauruan', 'Dorerin Naoero', 0, 0, 0, 0, NULL, NULL, 1, 1),
(67, 'nb', 'Bokmål', 'Bokmål', 0, 0, 0, 0, NULL, NULL, 1, 1),
(68, 'nd', 'North Ndebele', 'Sindebele', 0, 0, 0, 0, NULL, NULL, 1, 1),
(69, 'ne', 'Nepali', 'नेपाली', 0, 0, 0, 0, NULL, NULL, 1, 1),
(70, 'nl', 'Dutch', 'Nederlands', 0, 0, 0, 0, NULL, NULL, 1, 1),
(71, 'nn', 'Norwegian Nynorsk', 'Norsk (nynorsk)', 0, 0, 0, 0, NULL, NULL, 1, 1),
(72, 'no', 'Norwegian', 'Norsk (bokmål / riksmål)', 0, 0, 0, 0, NULL, NULL, 1, 1),
(73, 'nr', 'South Ndebele', 'isiNdebele', 0, 0, 0, 0, NULL, NULL, 1, 1),
(74, 'ny', 'Chichewa', 'Chi-Chewa', 0, 0, 0, 0, NULL, NULL, 1, 1),
(75, 'oc', 'Occitan', 'Occitan', 0, 0, 0, 0, NULL, NULL, 1, 1),
(76, 'pa', 'Panjabi / Punjabi', 'ਪੰਜਾਬੀ / पंजाबी / پنجابي', 0, 0, 0, 0, NULL, NULL, 1, 1),
(77, 'pl', 'Polish', 'Polski', 0, 0, 0, 0, NULL, NULL, 1, 1),
(78, 'ps', 'Pashto', 'پښتو', 1, 0, 0, 0, NULL, NULL, 1, 1),
(79, 'pt', 'Portuguese', 'Português', 0, 0, 0, 0, NULL, NULL, 1, 1),
(80, 'qu', 'Quechua', 'Runa Simi', 0, 0, 0, 0, NULL, NULL, 1, 1),
(81, 'rn', 'Kirundi', 'Kirundi', 0, 0, 0, 0, NULL, NULL, 1, 1),
(82, 'ro', 'Romanian', 'Română', 0, 0, 0, 0, NULL, NULL, 1, 1),
(83, 'ru', 'Russian', 'Русский', 0, 0, 0, 0, NULL, NULL, 1, 1),
(84, 'rw', 'Rwandi', 'Kinyarwandi', 0, 0, 0, 0, NULL, NULL, 1, 1),
(85, 'sg', 'Sango', 'Sängö', 0, 0, 0, 0, NULL, NULL, 1, 1),
(86, 'si', 'Sinhalese', 'සිංහල', 0, 0, 0, 0, NULL, NULL, 1, 1),
(87, 'sk', 'Slovak', 'Slovenčina', 0, 0, 0, 0, NULL, NULL, 1, 1),
(88, 'sl', 'Slovenian', 'Slovenščina', 0, 0, 0, 0, NULL, NULL, 1, 1),
(89, 'sm', 'Samoan', 'Gagana Samoa', 0, 0, 0, 0, NULL, NULL, 1, 1),
(90, 'sn', 'Shona', 'chiShona', 0, 0, 0, 0, NULL, NULL, 1, 1),
(91, 'so', 'Somalia', 'Soomaaliga', 0, 0, 0, 0, NULL, NULL, 1, 1),
(92, 'sq', 'Albanian', 'Shqip', 0, 0, 0, 0, NULL, NULL, 1, 1),
(93, 'sr', 'Serbian', 'Српски', 0, 0, 0, 0, NULL, NULL, 1, 1),
(94, 'ss', 'Swati', 'SiSwati', 0, 0, 0, 0, NULL, NULL, 1, 1),
(95, 'st', 'Southern Sotho', 'Sesotho', 0, 0, 0, 0, NULL, NULL, 1, 1),
(96, 'sv', 'Swedish', 'Svenska', 0, 0, 0, 0, NULL, NULL, 1, 1),
(97, 'sw', 'Swahili', 'Kiswahili', 0, 0, 0, 0, NULL, NULL, 1, 1),
(98, 'ta', 'Tamil', 'தமிழ்', 0, 0, 0, 0, NULL, NULL, 1, 1),
(99, 'tg', 'Tajik', 'Тоҷикӣ', 0, 0, 0, 0, NULL, NULL, 1, 1),
(100, 'th', 'Thai', 'ไทย / Phasa Thai', 0, 0, 0, 0, NULL, NULL, 1, 1),
(101, 'ti', 'Tigrinya', 'ትግርኛ', 0, 0, 0, 0, NULL, NULL, 1, 1),
(102, 'tk', 'Turkmen', 'Туркмен /تركمن ', 0, 0, 0, 0, NULL, NULL, 1, 1),
(103, 'tn', 'Tswana', 'Setswana', 0, 0, 0, 0, NULL, NULL, 1, 1),
(104, 'to', 'Tonga', 'Lea Faka-Tonga', 0, 0, 0, 0, NULL, NULL, 1, 1),
(105, 'tr', 'Turkish', 'Türkçe', 0, 0, 0, 0, NULL, NULL, 1, 1),
(106, 'ts', 'Tsonga', 'Xitsonga', 0, 0, 0, 0, NULL, NULL, 1, 1),
(107, 'uk', 'Ukrainian', 'Українська', 0, 0, 0, 0, NULL, NULL, 1, 1),
(108, 'ur', 'Urdu', 'اردو', 1, 0, 0, 0, NULL, NULL, 1, 1),
(109, 'uz', 'Uzbek', 'Ўзбек', 0, 0, 0, 0, NULL, NULL, 1, 1),
(110, 've', 'Venda', 'Tshivenḓa', 0, 0, 0, 0, NULL, NULL, 1, 1),
(111, 'vi', 'Vietnamese', 'Tiếng Việt', 0, 1, 0, 1, NULL, '2024-09-30 08:40:02', 1, 1),
(112, 'xh', 'Xhosa', 'isiXhosa', 0, 0, 0, 0, NULL, NULL, 1, 1),
(113, 'zh', 'Chinese', '中文', 0, 0, 0, 0, NULL, NULL, 1, 1),
(114, 'zu', 'Zulu', 'isiZulu', 0, 0, 0, 0, NULL, NULL, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `late_in_out_reasons`
--

CREATE TABLE `late_in_out_reasons` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `attendance_id` bigint(20) UNSIGNED NOT NULL,
  `type` enum('in','out') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'in' COMMENT 'in = late in reason out = late out reason',
  `reason` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `company_id` bigint(20) UNSIGNED DEFAULT '1',
  `branch_id` bigint(20) UNSIGNED DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `leave_requests`
--

CREATE TABLE `leave_requests` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `assign_leave_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `apply_date` date NOT NULL,
  `leave_from` date NOT NULL,
  `leave_to` date NOT NULL,
  `days` int(11) NOT NULL,
  `reason` longtext COLLATE utf8mb4_unicode_ci,
  `substitute_id` bigint(20) UNSIGNED DEFAULT NULL,
  `attachment_file_id` bigint(20) UNSIGNED DEFAULT NULL,
  `image_url` text COLLATE utf8mb4_unicode_ci,
  `status_id` bigint(20) UNSIGNED NOT NULL,
  `author_info_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `company_id` bigint(20) UNSIGNED DEFAULT '1',
  `branch_id` bigint(20) UNSIGNED DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `leave_settings`
--

CREATE TABLE `leave_settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `sandwich_leave` tinyint(1) NOT NULL DEFAULT '0',
  `month` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `prorate_leave` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `company_id` bigint(20) UNSIGNED DEFAULT '1',
  `branch_id` bigint(20) UNSIGNED DEFAULT '1',
  `status_id` bigint(20) UNSIGNED DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `leave_types`
--

CREATE TABLE `leave_types` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `company_id` bigint(20) UNSIGNED DEFAULT '1',
  `branch_id` bigint(20) UNSIGNED DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `leave_types`
--

INSERT INTO `leave_types` (`id`, `name`, `status_id`, `created_at`, `updated_at`, `deleted_at`, `company_id`, `branch_id`) VALUES
(1, 'Nghỉ phép thường', 1, '2024-06-25 06:58:18', '2024-10-02 13:14:59', NULL, 1, 1),
(2, 'Nghỉ ốm', 1, '2024-06-25 06:58:18', '2024-10-02 13:14:30', NULL, 1, 1),
(3, 'Nghỉ thai sản', 1, '2024-06-25 06:58:18', '2024-10-02 13:14:20', NULL, 1, 1),
(4, 'Nghỉ phép chăm con', 1, '2024-06-25 06:58:18', '2024-10-02 13:14:11', NULL, 1, 1),
(5, 'Nghỉ việc không lương', 1, '2024-06-25 06:58:18', '2024-10-02 13:14:01', NULL, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `leave_years`
--

CREATE TABLE `leave_years` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `type_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `department_id` bigint(20) UNSIGNED DEFAULT NULL,
  `leave_days` int(11) NOT NULL,
  `leave_available` int(11) NOT NULL,
  `leave_used` int(11) NOT NULL,
  `year` int(11) NOT NULL,
  `status_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `company_id` bigint(20) UNSIGNED DEFAULT '1',
  `branch_id` bigint(20) UNSIGNED DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `leave_years`
--

INSERT INTO `leave_years` (`id`, `type_id`, `user_id`, `department_id`, `leave_days`, `leave_available`, `leave_used`, `year`, `status_id`, `created_at`, `updated_at`, `company_id`, `branch_id`) VALUES
(1, 1, NULL, 1, 3, 3, 0, 2024, 1, '2024-10-03 01:17:44', '2024-10-03 01:17:44', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `location_binds`
--

CREATE TABLE `location_binds` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `latitude` double DEFAULT NULL COMMENT 'latitude',
  `longitude` double DEFAULT NULL COMMENT 'longitude',
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'address',
  `distance` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status_id` bigint(20) UNSIGNED NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `company_id` bigint(20) UNSIGNED DEFAULT '1',
  `branch_id` bigint(20) UNSIGNED DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `location_logs`
--

CREATE TABLE `location_logs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `date` date DEFAULT NULL,
  `time` time DEFAULT NULL,
  `distance` double(10,2) DEFAULT NULL COMMENT 'in km',
  `latitude` double DEFAULT NULL COMMENT 'latitude',
  `longitude` double DEFAULT NULL COMMENT 'longitude',
  `speed` double DEFAULT NULL COMMENT 'speed',
  `heading` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'heading',
  `city` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'city',
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'address',
  `countryCode` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'countryCode',
  `country` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'Bangladesh' COMMENT 'country',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `company_id` bigint(20) UNSIGNED DEFAULT '1',
  `branch_id` bigint(20) UNSIGNED DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `meetings`
--

CREATE TABLE `meetings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `location` text COLLATE utf8mb4_unicode_ci,
  `duration` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date` date DEFAULT NULL,
  `start_at` time DEFAULT NULL,
  `end_at` time DEFAULT NULL,
  `attachment_file_id` bigint(20) UNSIGNED DEFAULT NULL,
  `image_url` text COLLATE utf8mb4_unicode_ci,
  `status_id` bigint(20) UNSIGNED NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `company_id` bigint(20) UNSIGNED DEFAULT '1',
  `branch_id` bigint(20) UNSIGNED DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `meeting_members`
--

CREATE TABLE `meeting_members` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `meeting_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `is_present` tinyint(4) NOT NULL DEFAULT '0',
  `status_id` bigint(20) UNSIGNED NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `company_id` bigint(20) UNSIGNED DEFAULT '1',
  `branch_id` bigint(20) UNSIGNED DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `meeting_participants`
--

CREATE TABLE `meeting_participants` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `participant_id` bigint(20) UNSIGNED NOT NULL,
  `meeting_id` bigint(20) UNSIGNED NOT NULL,
  `is_going` tinyint(4) NOT NULL DEFAULT '0' COMMENT '0: Not going, 1: Going',
  `is_present` tinyint(4) NOT NULL DEFAULT '0' COMMENT '0: Absent, 1: Present',
  `present_at` datetime DEFAULT NULL,
  `meeting_started_at` datetime DEFAULT NULL,
  `meeting_ended_at` datetime DEFAULT NULL,
  `meeting_duration` time DEFAULT NULL COMMENT 'Meeting duration in minutes',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `company_id` bigint(20) UNSIGNED DEFAULT '1',
  `branch_id` bigint(20) UNSIGNED DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `meeting_setups`
--

CREATE TABLE `meeting_setups` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `host_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status_id` bigint(20) UNSIGNED NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `company_id` bigint(20) UNSIGNED DEFAULT '1',
  `branch_id` bigint(20) UNSIGNED DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

CREATE TABLE `menus` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `position` int(11) DEFAULT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `all_content_id` int(11) DEFAULT NULL,
  `type` int(11) NOT NULL DEFAULT '1' COMMENT '1=menu,2=footer',
  `status_id` bigint(20) UNSIGNED NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `company_id` bigint(20) UNSIGNED DEFAULT '1',
  `branch_id` bigint(20) UNSIGNED DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `meta_information`
--

CREATE TABLE `meta_information` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `type` enum('all_shop','all_brand','all_search','login','registration','student_registration','affiliate_registration','be_a_seller','compare_list','add_to_cart','about_us','faqs','contact_us','careers','return_refund','support_policy','privacy_policy','terms_condition') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_keywords` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` bigint(20) UNSIGNED DEFAULT NULL,
  `updated_by` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `company_id` bigint(20) UNSIGNED DEFAULT '1',
  `branch_id` bigint(20) UNSIGNED DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `meta_information`
--

INSERT INTO `meta_information` (`id`, `type`, `meta_title`, `meta_description`, `meta_image`, `meta_keywords`, `created_by`, `updated_by`, `created_at`, `updated_at`, `company_id`, `branch_id`) VALUES
(1, 'all_shop', 'all_shop-title', 'all_shop-description', 'all_shop-image', 'all_shop-keywors', NULL, NULL, '2024-06-25 06:58:15', '2024-06-25 06:58:15', 1, 1),
(2, 'all_brand', 'all_brand-title', 'all_brand-description', 'all_brand-image', 'all_brand-keywors', NULL, NULL, '2024-06-25 06:58:15', '2024-06-25 06:58:15', 1, 1),
(3, 'all_search', 'all_search-title', 'all_search-description', 'all_search-image', 'all_search-keywors', NULL, NULL, '2024-06-25 06:58:15', '2024-06-25 06:58:15', 1, 1),
(4, 'login', 'login-title', 'login-description', 'login-image', 'login-keywors', NULL, NULL, '2024-06-25 06:58:15', '2024-06-25 06:58:15', 1, 1),
(5, 'registration', 'registration-title', 'registration-description', 'registration-image', 'registration-keywors', NULL, NULL, '2024-06-25 06:58:15', '2024-06-25 06:58:15', 1, 1),
(6, 'student_registration', 'student_registration-title', 'student_registration-description', 'student_registration-image', 'student_registration-keywors', NULL, NULL, '2024-06-25 06:58:15', '2024-06-25 06:58:15', 1, 1),
(7, 'affiliate_registration', 'affiliate_registration-title', 'affiliate_registration-description', 'affiliate_registration-image', 'affiliate_registration-keywors', NULL, NULL, '2024-06-25 06:58:15', '2024-06-25 06:58:15', 1, 1),
(8, 'be_a_seller', 'be_a_seller-title', 'be_a_seller-description', 'be_a_seller-image', 'be_a_seller-keywors', NULL, NULL, '2024-06-25 06:58:15', '2024-06-25 06:58:15', 1, 1),
(9, 'compare_list', 'compare_list-title', 'compare_list-description', 'compare_list-image', 'compare_list-keywors', NULL, NULL, '2024-06-25 06:58:15', '2024-06-25 06:58:15', 1, 1),
(10, 'add_to_cart', 'add_to_cart-title', 'add_to_cart-description', 'add_to_cart-image', 'add_to_cart-keywors', NULL, NULL, '2024-06-25 06:58:15', '2024-06-25 06:58:15', 1, 1),
(11, 'about_us', 'about_us-title', 'about_us-description', 'about_us-image', 'about_us-keywors', NULL, NULL, '2024-06-25 06:58:15', '2024-06-25 06:58:15', 1, 1),
(12, 'faqs', 'faqs-title', 'faqs-description', 'faqs-image', 'faqs-keywors', NULL, NULL, '2024-06-25 06:58:15', '2024-06-25 06:58:15', 1, 1),
(13, 'contact_us', 'contact_us-title', 'contact_us-description', 'contact_us-image', 'contact_us-keywors', NULL, NULL, '2024-06-25 06:58:15', '2024-06-25 06:58:15', 1, 1),
(14, 'careers', 'careers-title', 'careers-description', 'careers-image', 'careers-keywors', NULL, NULL, '2024-06-25 06:58:15', '2024-06-25 06:58:15', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2013_10_11_000000_create_countries_table', 1),
(2, '2014_01_11_000000_create_statuses_table', 1),
(3, '2014_10_11_000001_create_activity_log_table', 1),
(4, '2014_10_11_000001_create_branches_table', 1),
(5, '2014_10_11_000002_create_uploads_table', 1),
(6, '2014_10_11_000003_create_companies_table', 1),
(7, '2014_10_11_000004_create_roles_table', 1),
(8, '2014_10_11_000004_create_shifts_table', 1),
(9, '2014_10_11_000005_create_departments_table', 1),
(10, '2014_10_11_000005_create_designations_table', 1),
(11, '2014_10_12_000000_create_users_table', 1),
(12, '2014_10_12_000001_create_author_infos_table', 1),
(13, '2014_10_12_100000_create_password_resets_table', 1),
(14, '2019_08_19_000000_create_failed_jobs_table', 1),
(15, '2019_09_15_000010_create_tenants_table', 1),
(16, '2019_09_15_000020_create_domains_table', 1),
(17, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(18, '2020_05_15_000010_create_tenant_user_impersonation_tokens_table', 1),
(19, '2020_06_01_130821_create_settings_table', 1),
(20, '2020_06_01_130822_create_permissions_table', 1),
(21, '2020_06_01_130824_create_role_users_table', 1),
(22, '2021_09_24_050720_create_bank_accounts_table', 1),
(23, '2021_09_25_070000_create_payment_types_table', 1),
(24, '2021_09_25_080345_create_categories_table', 1),
(25, '2021_10_31_121218_create_translations_table', 1),
(26, '2021_11_03_044301_create_social_identities_table', 1),
(27, '2021_11_14_070513_create_notifications_old_table', 1),
(28, '2021_11_14_070607_create_conversations_table', 1),
(29, '2022_01_05_105820_create_leave_types_table', 1),
(30, '2022_01_05_111318_create_assign_leaves_table', 1),
(31, '2022_01_05_112116_create_leave_requests_table', 1),
(32, '2022_01_23_165353_create_weekends_table', 1),
(33, '2022_01_23_165357_create_holidays_table', 1),
(34, '2022_01_26_104953_create_duty_schedules_table', 1),
(35, '2022_02_07_144952_create_attendances_table', 1),
(36, '2022_02_07_175133_create_leave_settings_table', 1),
(37, '2022_02_10_151245_create_late_in_out_reasons_table', 1),
(38, '2022_03_01_174425_create_company_configs_table', 1),
(39, '2022_03_02_170908_create_ip_setups_table', 1),
(40, '2022_03_05_000002_create_expense_categories_table', 1),
(41, '2022_03_05_050001_create_payment_methods_table', 1),
(42, '2022_03_05_060051_create_accounts_table', 1),
(43, '2022_03_05_060052_create_transactions_table', 1),
(44, '2022_03_05_061025_create_expenses_table', 1),
(45, '2022_03_05_061055_create_deposits_table', 1),
(46, '2022_03_05_100003_create_hrm_expenses_table', 1),
(47, '2022_03_05_100004_create_expense_claims_table', 1),
(48, '2022_03_05_100006_create_expense_claim_details_table', 1),
(49, '2022_03_05_100007_create_payment_histories_table', 1),
(50, '2022_03_05_100008_create_payment_history_details_table', 1),
(51, '2022_03_05_100009_create_payment_history_logs_table', 1),
(52, '2022_03_06_101527_create_visits_table', 1),
(53, '2022_03_06_103136_create_visit_images_table', 1),
(54, '2022_03_06_104118_create_visit_notes_table', 1),
(55, '2022_03_06_104139_create_visit_schedules_table', 1),
(56, '2022_03_09_174416_create_subscription_plans_table', 1),
(57, '2022_03_10_110216_create_app_screens_table', 1),
(58, '2022_03_10_114654_create_support_tickets_table', 1),
(59, '2022_03_10_131726_create_notices_table', 1),
(60, '2022_03_10_132017_create_notice_view_logs_table', 1),
(61, '2022_03_12_114157_create_appreciates_table', 1),
(62, '2022_03_13_104916_create_meetings_table', 1),
(63, '2022_03_13_112149_create_meeting_participants_table', 1),
(64, '2022_03_13_112853_create_appoinments_table', 1),
(65, '2022_03_13_112914_create_appoinment_participants_table', 1),
(66, '2022_03_13_113319_create_employee_tasks_table', 1),
(67, '2022_03_13_123151_create_employee_breaks_table', 1),
(68, '2022_03_15_131235_create_all_contents_table', 1),
(69, '2022_03_16_104248_create_contacts_table', 1),
(70, '2022_03_30_061715_create_features_table', 1),
(71, '2022_03_30_113900_create_testimonials_table', 1),
(72, '2022_03_31_140233_create_teams_table', 1),
(73, '2022_03_31_140552_create_team_members_table', 1),
(74, '2022_04_06_042459_create_sms_logs_table', 1),
(75, '2022_04_07_035721_create_user_devices_table', 1),
(76, '2022_04_07_044946_create_notification_types_table', 1),
(77, '2022_04_12_065957_create_ticket_replies_table', 1),
(78, '2022_05_16_071031_create_notifications_table', 1),
(79, '2022_05_17_062749_create_daily_leaves_table', 1),
(80, '2022_05_19_055538_create_notice_departments_table', 1),
(81, '2022_06_05_101104_create_meta_information_table', 1),
(82, '2022_06_09_093509_create_time_zones_table', 1),
(83, '2022_06_11_075042_create_date_formats_table', 1),
(84, '2022_06_12_080741_create_api_setups_table', 1),
(85, '2022_06_12_100839_create_currencies_table', 1),
(86, '2022_06_15_090457_create_advance_types_table', 1),
(87, '2022_06_15_130017_create_advance_salaries_table', 1),
(88, '2022_06_15_131620_create_advance_salary_logs_table', 1),
(89, '2022_06_16_115529_create_commissions_table', 1),
(90, '2022_06_16_122623_create_salary_setups_table', 1),
(91, '2022_06_16_122641_create_salary_setup_details_table', 1),
(92, '2022_06_16_122709_create_salary_generates_table', 1),
(93, '2022_06_16_122750_create_salary_payment_logs_table', 1),
(94, '2022_06_18_154114_create_languages_table', 1),
(95, '2022_06_18_155339_create_hrm_languages_table', 1),
(96, '2022_06_23_030258_create_location_logs_table', 1),
(97, '2022_06_25_080155_create_database_backups_table', 1),
(98, '2022_06_27_115744_create_meeting_setups_table', 1),
(99, '2022_06_27_121222_create_virtual_meetings_table', 1),
(100, '2022_06_27_121626_create_meeting_members_table', 1),
(101, '2022_06_27_123238_create_jitsi_meetings_table', 1),
(102, '2022_07_21_132450_create_location_binds_table', 1),
(103, '2022_07_25_160849_create_clients_table', 1),
(104, '2022_07_25_160850_create_goal_types_table', 1),
(105, '2022_07_25_160851_create_goals_table', 1),
(106, '2022_07_26_160617_create_projects_table', 1),
(107, '2022_07_26_160618_create_project_membars_table', 1),
(108, '2022_07_26_165806_create_discussions_table', 1),
(109, '2022_07_26_165807_create_discussion_comments_table', 1),
(110, '2022_07_26_165908_create_notes_table', 1),
(111, '2022_07_26_170007_create_project_files_table', 1),
(112, '2022_07_26_170008_create_project_file_comments_table', 1),
(113, '2022_07_26_170031_create_project_activities_table', 1),
(114, '2022_07_26_170205_create_project_payments_table', 1),
(115, '2022_08_01_140657_create_tasks_table', 1),
(116, '2022_08_01_140658_create_task_followers_table', 1),
(117, '2022_08_01_140658_create_task_members_table', 1),
(118, '2022_08_01_141239_create_task_discussions_table', 1),
(119, '2022_08_01_141255_create_task_discussion_comments_table', 1),
(120, '2022_08_01_141323_create_task_notes_table', 1),
(121, '2022_08_01_141341_create_task_files_table', 1),
(122, '2022_08_01_141401_create_task_file_comments_table', 1),
(123, '2022_08_01_142250_create_task_activities_table', 1),
(124, '2022_08_03_130453_create_award_types_table', 1),
(125, '2022_08_03_130519_create_awards_table', 1),
(126, '2022_08_04_101142_create_travel_types_table', 1),
(127, '2022_08_04_101522_create_travel_table', 1),
(128, '2022_08_04_161248_create_competence_types_table', 1),
(129, '2022_08_04_161249_create_competences_table', 1),
(130, '2022_08_04_161325_create_indicators_table', 1),
(131, '2022_08_04_161344_create_appraisals_table', 1),
(132, '2022_09_19_104223_create_services_table', 1),
(133, '2022_09_19_104344_create_portfolios_table', 1),
(134, '2022_09_19_112019_create_menus_table', 1),
(135, '2022_09_19_112527_create_home_pages_table', 1),
(136, '2023_02_23_133359_add_department_id_table_to_salary_generates', 1),
(137, '2023_02_23_181308_create_salary_sheet_reports_table', 1),
(138, '2023_06_06_134120_create_tenant_subscriptions_table', 1),
(139, '2023_06_15_105713_create_discussion_likes_table', 1),
(140, '2023_09_19_111522_create_user_document_requests_table', 1),
(141, '2023_09_20_114428_create_expire_notifications_table', 1),
(142, '2023_09_21_155520_create_jobs_table', 1),
(143, '2024_01_16_173817_create_leave_years_table', 1),
(144, '2024_03_19_100657_add_attendance_method_to_users_table', 1),
(145, '2024_04_24_155221_create_user_shift_assigns_table', 1),
(146, '2024_04_26_153713_add_shift_id_attendance', 1);

-- --------------------------------------------------------

--
-- Table structure for table `notes`
--

CREATE TABLE `notes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `show_to_customer` bigint(20) UNSIGNED NOT NULL DEFAULT '22',
  `project_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `status_id` bigint(20) UNSIGNED NOT NULL DEFAULT '1',
  `last_activity` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `company_id` bigint(20) UNSIGNED DEFAULT '1',
  `branch_id` bigint(20) UNSIGNED DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `notices`
--

CREATE TABLE `notices` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_by` bigint(20) UNSIGNED NOT NULL,
  `department_id` bigint(20) UNSIGNED DEFAULT NULL,
  `attachment_file_id` bigint(20) UNSIGNED DEFAULT NULL,
  `subject` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date` date DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status_id` bigint(20) UNSIGNED NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `company_id` bigint(20) UNSIGNED DEFAULT '1',
  `branch_id` bigint(20) UNSIGNED DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `notice_departments`
--

CREATE TABLE `notice_departments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `department_id` bigint(20) UNSIGNED DEFAULT '1',
  `noticeable_id` bigint(20) UNSIGNED NOT NULL,
  `noticeable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `company_id` bigint(20) UNSIGNED DEFAULT '1',
  `branch_id` bigint(20) UNSIGNED DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `notice_view_logs`
--

CREATE TABLE `notice_view_logs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `notice_id` bigint(20) UNSIGNED NOT NULL,
  `is_view` tinyint(4) DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `company_id` bigint(20) UNSIGNED DEFAULT '1',
  `branch_id` bigint(20) UNSIGNED DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `sender_id` bigint(20) UNSIGNED DEFAULT NULL,
  `receiver_id` bigint(20) UNSIGNED DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `notifiable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_id` bigint(20) UNSIGNED NOT NULL,
  `data` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `notification_for` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id_for` bigint(20) DEFAULT NULL,
  `company_id` bigint(20) UNSIGNED DEFAULT '1',
  `branch_id` bigint(20) UNSIGNED DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`id`, `sender_id`, `receiver_id`, `title`, `message`, `image_id`, `type`, `notifiable_type`, `notifiable_id`, `data`, `read_at`, `created_at`, `updated_at`, `notification_for`, `id_for`, `company_id`, `branch_id`) VALUES
(1, NULL, NULL, NULL, NULL, NULL, 'App\\Notifications\\HrmSystemNotification', 'App\\Models\\User', 5, '{\"id\":null,\"title\":\"New Project Assigned\",\"body\":\"fff\",\"actionText\":\"View\",\"actionURL\":{\"app\":\"\",\"web\":\"\",\"target\":\"_blank\"},\"sender_id\":4}', NULL, '2024-10-03 02:15:12', '2024-10-03 02:15:12', NULL, NULL, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `notifications_old`
--

CREATE TABLE `notifications_old` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `sender_id` bigint(20) UNSIGNED NOT NULL,
  `receiver_id` bigint(20) UNSIGNED DEFAULT NULL,
  `type` enum('notification','message') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'notification' COMMENT 'notification: notification, message: message',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message` text COLLATE utf8mb4_unicode_ci,
  `image_id` bigint(20) UNSIGNED DEFAULT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `company_id` bigint(20) UNSIGNED DEFAULT '1',
  `branch_id` bigint(20) UNSIGNED DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `notification_types`
--

CREATE TABLE `notification_types` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci,
  `status_id` bigint(20) UNSIGNED NOT NULL DEFAULT '1',
  `icon` bigint(20) UNSIGNED DEFAULT NULL,
  `company_id` bigint(20) UNSIGNED DEFAULT '1',
  `branch_id` bigint(20) UNSIGNED DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payment_histories`
--

CREATE TABLE `payment_histories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `expense_claim_id` bigint(20) UNSIGNED NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'invoice number',
  `payment_date` date DEFAULT NULL COMMENT 'date of payment',
  `remarks` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'remarks of payment',
  `payable_amount` double(10,2) DEFAULT NULL COMMENT 'amount of payment',
  `paid_amount` double(10,2) DEFAULT NULL COMMENT 'paid amount of payment',
  `due_amount` double(10,2) DEFAULT NULL COMMENT 'due amount of payment',
  `attachment_file_id` bigint(20) UNSIGNED DEFAULT NULL,
  `payment_status_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `company_id` bigint(20) UNSIGNED DEFAULT '1',
  `branch_id` bigint(20) UNSIGNED DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payment_history_details`
--

CREATE TABLE `payment_history_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `payment_history_id` bigint(20) UNSIGNED NOT NULL,
  `payment_method_id` bigint(20) UNSIGNED NOT NULL,
  `payment_details` longtext COLLATE utf8mb4_unicode_ci COMMENT 'remarks of payment',
  `payment_status_id` bigint(20) UNSIGNED NOT NULL,
  `payment_date` date DEFAULT NULL COMMENT 'date of payment',
  `paid_by_id` bigint(20) UNSIGNED DEFAULT NULL,
  `bank_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'bank name',
  `bank_branch` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'bank branch',
  `bank_account_number` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'bank account number',
  `bank_account_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'bank account name',
  `bank_transaction_number` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'bank transaction number',
  `bank_transaction_date` date DEFAULT NULL COMMENT 'bank transaction date',
  `bank_transaction_ref` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'bank transaction ref',
  `cheque_number` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'cheque number',
  `cheque_date` date DEFAULT NULL COMMENT 'cheque date',
  `cheque_bank_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'cheque bank name',
  `cheque_branch` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'cheque branch',
  `cheque_ref` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'cheque ref',
  `cash_number` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'cash number',
  `cash_date` date DEFAULT NULL COMMENT 'cash date',
  `cash_ref` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'cash ref',
  `paid_amount` double(15,2) NOT NULL DEFAULT '0.00',
  `due_amount` double(15,2) NOT NULL DEFAULT '0.00',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `company_id` bigint(20) UNSIGNED DEFAULT '1',
  `branch_id` bigint(20) UNSIGNED DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payment_history_logs`
--

CREATE TABLE `payment_history_logs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `payment_history_id` bigint(20) UNSIGNED NOT NULL,
  `expense_claim_id` bigint(20) UNSIGNED NOT NULL,
  `payable_amount` double(10,2) DEFAULT NULL COMMENT 'amount of payment',
  `paid_amount` double(10,2) DEFAULT NULL COMMENT 'paid amount of payment',
  `due_amount` double(10,2) DEFAULT NULL COMMENT 'due amount of payment',
  `date` date DEFAULT NULL,
  `paid_by_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `company_id` bigint(20) UNSIGNED DEFAULT '1',
  `branch_id` bigint(20) UNSIGNED DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payment_methods`
--

CREATE TABLE `payment_methods` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `attachment_file_id` bigint(20) UNSIGNED DEFAULT NULL,
  `status_id` bigint(20) UNSIGNED NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `company_id` bigint(20) UNSIGNED DEFAULT '1',
  `branch_id` bigint(20) UNSIGNED DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payment_types`
--

CREATE TABLE `payment_types` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` int(11) NOT NULL DEFAULT '1' COMMENT '1 - cash, 2 - credit card, 3 - debit card, 4 - bank',
  `status_id` bigint(20) UNSIGNED DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `company_id` bigint(20) UNSIGNED DEFAULT '1',
  `branch_id` bigint(20) UNSIGNED DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `attribute` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `keywords` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `attribute`, `keywords`, `created_at`, `updated_at`) VALUES
(1, 'hr_menu', '\"{\\\"menu\\\":\\\"hr_menu\\\"}\"', '2024-06-25 06:58:18', '2024-06-25 06:58:18'),
(2, 'designations', '\"{\\\"read\\\":\\\"designation_read\\\",\\\"create\\\":\\\"designation_create\\\",\\\"update\\\":\\\"designation_update\\\",\\\"delete\\\":\\\"designation_delete\\\"}\"', '2024-06-25 06:58:18', '2024-06-25 06:58:18'),
(3, 'departments', '\"{\\\"read\\\":\\\"department_read\\\",\\\"create\\\":\\\"department_create\\\",\\\"update\\\":\\\"department_update\\\",\\\"delete\\\":\\\"department_delete\\\"}\"', '2024-06-25 06:58:18', '2024-06-25 06:58:18'),
(4, 'users', '\"{\\\"read\\\":\\\"user_read\\\",\\\"profile\\\":\\\"profile_view\\\",\\\"create\\\":\\\"user_create\\\",\\\"edit\\\":\\\"user_edit\\\",\\\"user_permission\\\":\\\"user_permission\\\",\\\"update\\\":\\\"user_update\\\",\\\"delete\\\":\\\"user_delete\\\",\\\"registerFace\\\":\\\"registerFace\\\",\\\"menu\\\":\\\"user_menu\\\",\\\"make_hr\\\":\\\"make_hr\\\",\\\"profile_image_view\\\":\\\"profile_image_view\\\"}\"', '2024-06-25 06:58:18', '2024-06-25 06:58:18'),
(5, 'user_device', '\"{\\\"list\\\":\\\"user_device_list\\\",\\\"reset\\\":\\\"reset_device\\\"}\"', '2024-06-25 06:58:18', '2024-06-25 06:58:18'),
(6, 'profile', '\"{\\\"attendance_profile\\\":\\\"attendance_profile\\\",\\\"contract_profile\\\":\\\"contract_profile\\\",\\\"phonebook_profile\\\":\\\"phonebook_profile\\\",\\\"support_ticket_profile\\\":\\\"support_ticket_profile\\\",\\\"advance_profile\\\":\\\"advance_profile\\\",\\\"commission_profile\\\":\\\"commission_profile\\\",\\\"appointment_profile\\\":\\\"appointment_profile\\\",\\\"visit_profile\\\":\\\"visit_profile\\\",\\\"leave_request_profile\\\":\\\"leave_request_profile\\\",\\\"notice_profile\\\":\\\"notice_profile\\\",\\\"salary_profile\\\":\\\"salary_profile\\\",\\\"project_profile\\\":\\\"project_profile\\\",\\\"task_profile\\\":\\\"task_profile\\\",\\\"award_profile\\\":\\\"award_profile\\\",\\\"travel_profile\\\":\\\"travel_profile\\\"}\"', '2024-06-25 06:58:18', '2024-06-25 06:58:18'),
(7, 'roles', '\"{\\\"read\\\":\\\"role_read\\\",\\\"create\\\":\\\"role_create\\\",\\\"update\\\":\\\"role_update\\\",\\\"delete\\\":\\\"role_delete\\\"}\"', '2024-06-25 06:58:18', '2024-06-25 06:58:18'),
(8, 'branch', '\"{\\\"read\\\":\\\"branch_read\\\",\\\"create\\\":\\\"branch_create\\\",\\\"update\\\":\\\"branch_update\\\",\\\"delete\\\":\\\"branch_delete\\\"}\"', '2024-06-25 06:58:18', '2024-06-25 06:58:18'),
(9, 'leave_type', '\"{\\\"read\\\":\\\"leave_type_read\\\",\\\"create\\\":\\\"leave_type_create\\\",\\\"update\\\":\\\"leave_type_update\\\",\\\"delete\\\":\\\"leave_type_delete\\\",\\\"menu\\\":\\\"leave_menu\\\"}\"', '2024-06-25 06:58:18', '2024-06-25 06:58:18'),
(10, 'leave_assign', '\"{\\\"read\\\":\\\"leave_assign_read\\\",\\\"create\\\":\\\"leave_assign_create\\\",\\\"update\\\":\\\"leave_assign_update\\\",\\\"delete\\\":\\\"leave_assign_delete\\\"}\"', '2024-06-25 06:58:18', '2024-06-25 06:58:18'),
(11, 'daily_leave', '\"{\\\"read\\\":\\\"daily_leave_read\\\"}\"', '2024-06-25 06:58:18', '2024-06-25 06:58:18'),
(12, 'leave_request', '\"{\\\"read\\\":\\\"leave_request_read\\\",\\\"update\\\":\\\"leave_request_update\\\",\\\"store\\\":\\\"leave_request_store\\\",\\\"create\\\":\\\"leave_request_create\\\",\\\"approve\\\":\\\"leave_request_approve\\\",\\\"reject\\\":\\\"leave_request_reject\\\",\\\"delete\\\":\\\"leave_request_delete\\\"}\"', '2024-06-25 06:58:18', '2024-06-25 06:58:18'),
(13, 'weekend', '\"{\\\"read\\\":\\\"weekend_read\\\",\\\"update\\\":\\\"weekend_update\\\"}\"', '2024-06-25 06:58:18', '2024-06-25 06:58:18'),
(14, 'holiday', '\"{\\\"read\\\":\\\"holiday_read\\\",\\\"create\\\":\\\"holiday_create\\\",\\\"update\\\":\\\"holiday_update\\\",\\\"delete\\\":\\\"holiday_delete\\\"}\"', '2024-06-25 06:58:18', '2024-06-25 06:58:18'),
(15, 'schedule', '\"{\\\"read\\\":\\\"schedule_read\\\",\\\"create\\\":\\\"schedule_create\\\",\\\"update\\\":\\\"schedule_update\\\",\\\"delete\\\":\\\"schedule_delete\\\"}\"', '2024-06-25 06:58:18', '2024-06-25 06:58:18'),
(16, 'attendance', '\"{\\\"read\\\":\\\"attendance_read\\\",\\\"create\\\":\\\"attendance_create\\\",\\\"update\\\":\\\"attendance_update\\\",\\\"delete\\\":\\\"attendance_delete\\\",\\\"menu\\\":\\\"attendance_menu\\\"}\"', '2024-06-25 06:58:18', '2024-06-25 06:58:18'),
(17, 'shift', '\"{\\\"read\\\":\\\"shift_read\\\",\\\"create\\\":\\\"shift_create\\\",\\\"update\\\":\\\"shift_update\\\",\\\"delete\\\":\\\"shift_delete\\\",\\\"menu\\\":\\\"shift_menu\\\"}\"', '2024-06-25 06:58:18', '2024-06-25 06:58:18'),
(18, 'payroll', '\"{\\\"menu\\\":\\\"payroll_menu\\\",\\\"payroll_item read\\\":\\\"list_payroll_item\\\",\\\"payroll_item create\\\":\\\"create_payroll_item\\\",\\\"payroll_item store\\\":\\\"store_payroll_item\\\",\\\"payroll_item edit\\\":\\\"edit_payroll_item\\\",\\\"payroll_item update\\\":\\\"update_payroll_item\\\",\\\"payroll_item delete\\\":\\\"delete_payroll_item\\\",\\\"payroll_item view\\\":\\\"view_payroll_item\\\",\\\"payroll_item menu\\\":\\\"payroll_item_menu\\\",\\\"list_payroll_set \\\":\\\"list_payroll_set\\\",\\\"create_payroll_set\\\":\\\"create_payroll_set\\\",\\\"store_payroll_set\\\":\\\"store_payroll_set\\\",\\\"edit_payroll_set\\\":\\\"edit_payroll_set\\\",\\\"update_payroll_set\\\":\\\"update_payroll_set\\\",\\\"delete_payroll_set\\\":\\\"delete_payroll_set\\\",\\\"view_payroll_set\\\":\\\"view_payroll_set\\\",\\\"payroll_set_menu\\\":\\\"payroll_set_menu\\\"}\"', '2024-06-25 06:58:18', '2024-06-25 06:58:18'),
(19, 'payslip', '\"{\\\"menu\\\":\\\"payslip_menu\\\",\\\"salary_generate\\\":\\\"salary_generate\\\",\\\"salary_view\\\":\\\"salary_view\\\",\\\"salary_delete\\\":\\\"salary_delete\\\",\\\"salary_edit\\\":\\\"salary_edit\\\",\\\"salary_update\\\":\\\"salary_update\\\",\\\"salary_payment\\\":\\\"salary_payment\\\",\\\"payslip_list\\\":\\\"payslip_list\\\"}\"', '2024-06-25 06:58:18', '2024-06-25 06:58:18'),
(20, 'announcement', '\"{\\\"menu\\\":\\\"announcement_menu\\\",\\\"notice_menu\\\":\\\"notice_menu\\\",\\\"notice_list\\\":\\\"notice_list\\\",\\\"notice_edit\\\":\\\"notice_edit\\\",\\\"notice_update\\\":\\\"notice_update\\\",\\\"notice_create\\\":\\\"notice_create\\\",\\\"notice_delete\\\":\\\"notice_delete\\\"}\"', '2024-06-25 06:58:18', '2024-06-25 06:58:18'),
(21, 'advance_type', '\"{\\\"menu\\\":\\\"advance_type_menu\\\",\\\"advance_type_create\\\":\\\"advance_type_create\\\",\\\"advance_type_store\\\":\\\"advance_type_store\\\",\\\"advance_type_edit\\\":\\\"advance_type_edit\\\",\\\"advance_type_update\\\":\\\"advance_type_update\\\",\\\"advance_type_delete\\\":\\\"advance_type_delete\\\",\\\"advance_type_view\\\":\\\"advance_type_view\\\",\\\"advance_type_list\\\":\\\"advance_type_list\\\"}\"', '2024-06-25 06:58:18', '2024-06-25 06:58:18'),
(22, 'advance_pay', '\"{\\\"menu\\\":\\\"advance_salaries_menu\\\",\\\"advance_salaries_create\\\":\\\"advance_salaries_create\\\",\\\"advance_salaries_store\\\":\\\"advance_salaries_store\\\",\\\"advance_salaries_edit\\\":\\\"advance_salaries_edit\\\",\\\"advance_salaries_update\\\":\\\"advance_salaries_update\\\",\\\"advance_salaries_delete\\\":\\\"advance_salaries_delete\\\",\\\"advance_salaries_view\\\":\\\"advance_salaries_view\\\",\\\"advance_salaries_approve\\\":\\\"advance_salaries_approve\\\",\\\"advance_salaries_list\\\":\\\"advance_salaries_list\\\",\\\"advance_salaries_pay\\\":\\\"advance_salaries_pay\\\",\\\"advance_salaries_invoice\\\":\\\"advance_salaries_invoice\\\",\\\"advance_salaries_search\\\":\\\"advance_salaries_search\\\"}\"', '2024-06-25 06:58:18', '2024-06-25 06:58:18'),
(23, 'salary', '\"{\\\"menu\\\":\\\"salary_menu\\\",\\\"salary_store\\\":\\\"salary_store\\\",\\\"salary_edit\\\":\\\"salary_edit\\\",\\\"salary_update\\\":\\\"salary_update\\\",\\\"salary_delete\\\":\\\"salary_delete\\\",\\\"salary_view\\\":\\\"salary_view\\\",\\\"salary_list\\\":\\\"salary_list\\\",\\\"salary_pay\\\":\\\"salary_pay\\\",\\\"salary_invoice\\\":\\\"salary_invoice\\\",\\\"salary_approve\\\":\\\"salary_approve\\\",\\\"salary_generate\\\":\\\"salary_generate\\\",\\\"salary_calculate\\\":\\\"salary_calculate\\\",\\\"salary_search\\\":\\\"salary_search\\\"}\"', '2024-06-25 06:58:18', '2024-06-25 06:58:18'),
(24, 'account', '\"{\\\"menu\\\":\\\"account_menu\\\",\\\"account_create\\\":\\\"account_create\\\",\\\"account_store\\\":\\\"account_store\\\",\\\"account_edit\\\":\\\"account_edit\\\",\\\"account_update\\\":\\\"account_update\\\",\\\"account_delete\\\":\\\"account_delete\\\",\\\"account_view\\\":\\\"account_view\\\",\\\"account_list\\\":\\\"account_list\\\",\\\"account_search\\\":\\\"account_search\\\"}\"', '2024-06-25 06:58:18', '2024-06-25 06:58:18'),
(25, 'deposit', '\"{\\\"menu\\\":\\\"deposit_menu\\\",\\\"deposit_create\\\":\\\"deposit_create\\\",\\\"deposit_store\\\":\\\"deposit_store\\\",\\\"deposit_edit\\\":\\\"deposit_edit\\\",\\\"deposit_update\\\":\\\"deposit_update\\\",\\\"deposit_delete\\\":\\\"deposit_delete\\\",\\\"deposit_list\\\":\\\"deposit_list\\\"}\"', '2024-06-25 06:58:18', '2024-06-25 06:58:18'),
(26, 'expense', '\"{\\\"menu\\\":\\\"expense_menu\\\",\\\"expense_create\\\":\\\"expense_create\\\",\\\"expense_store\\\":\\\"expense_store\\\",\\\"expense_edit\\\":\\\"expense_edit\\\",\\\"expense_update\\\":\\\"expense_update\\\",\\\"expense_delete\\\":\\\"expense_delete\\\",\\\"expense_list\\\":\\\"expense_list\\\",\\\"expense_approve\\\":\\\"expense_approve\\\",\\\"expense_invoice\\\":\\\"expense_invoice\\\",\\\"expense_pay\\\":\\\"expense_pay\\\",\\\"expense_view\\\":\\\"expense_view\\\"}\"', '2024-06-25 06:58:18', '2024-06-25 06:58:18'),
(27, 'deposit_category', '\"{\\\"menu\\\":\\\"deposit_category_menu\\\",\\\"deposit_category_create\\\":\\\"deposit_category_create\\\",\\\"deposit_category_store\\\":\\\"deposit_category_store\\\",\\\"deposit_category_edit\\\":\\\"deposit_category_edit\\\",\\\"deposit_category_update\\\":\\\"deposit_category_update\\\",\\\"deposit_category_delete\\\":\\\"deposit_category_delete\\\",\\\"deposit_category_list\\\":\\\"deposit_category_list\\\"}\"', '2024-06-25 06:58:18', '2024-06-25 06:58:18'),
(28, 'payment_method', '\"{\\\"menu\\\":\\\"payment_method_menu\\\",\\\"payment_method_create\\\":\\\"payment_method_create\\\",\\\"payment_method_store\\\":\\\"payment_method_store\\\",\\\"payment_method_edit\\\":\\\"payment_method_edit\\\",\\\"payment_method_update\\\":\\\"payment_method_update\\\",\\\"payment_method_delete\\\":\\\"payment_method_delete\\\",\\\"payment_method_list\\\":\\\"payment_method_list\\\"}\"', '2024-06-25 06:58:18', '2024-06-25 06:58:18'),
(29, 'transaction', '\"{\\\"menu\\\":\\\"transaction_menu\\\",\\\"transaction_create\\\":\\\"transaction_create\\\",\\\"transaction_store\\\":\\\"transaction_store\\\",\\\"transaction_edit\\\":\\\"transaction_edit\\\",\\\"transaction_update\\\":\\\"transaction_update\\\",\\\"transaction_delete\\\":\\\"transaction_delete\\\",\\\"transaction_view\\\":\\\"transaction_view\\\",\\\"transaction_list\\\":\\\"transaction_list\\\"}\"', '2024-06-25 06:58:18', '2024-06-25 06:58:18'),
(30, 'project', '\"{\\\"menu\\\":\\\"project_menu\\\",\\\"project_create\\\":\\\"project_create\\\",\\\"project_store\\\":\\\"project_store\\\",\\\"project_edit\\\":\\\"project_edit\\\",\\\"project_update\\\":\\\"project_update\\\",\\\"project_delete\\\":\\\"project_delete\\\",\\\"project_view\\\":\\\"project_view\\\",\\\"project_list\\\":\\\"project_list\\\",\\\"project_activity_view\\\":\\\"project_activity_view\\\",\\\"project_member_view\\\":\\\"project_member_view\\\",\\\"project_member_delete\\\":\\\"project_member_delete\\\",\\\"project_complete\\\":\\\"project_complete\\\",\\\"project_payment\\\":\\\"project_payment\\\",\\\"project_invoice_view\\\":\\\"project_invoice_view\\\"}\"', '2024-06-25 06:58:18', '2024-06-25 06:58:18'),
(31, 'project_discussion', '\"{\\\"project_discussion_create\\\":\\\"project_discussion_create\\\",\\\"project_discussion_store\\\":\\\"project_discussion_store\\\",\\\"project_discussion_edit\\\":\\\"project_discussion_edit\\\",\\\"project_discussion_update\\\":\\\"project_discussion_update\\\",\\\"project_discussion_delete\\\":\\\"project_discussion_delete\\\",\\\"project_discussion_view\\\":\\\"project_discussion_view\\\",\\\"project_discussion_list\\\":\\\"project_discussion_list\\\",\\\"project_discussion_comment\\\":\\\"project_discussion_comment\\\",\\\"project_discussion_reply\\\":\\\"project_discussion_reply\\\"}\"', '2024-06-25 06:58:18', '2024-06-25 06:58:18'),
(32, 'project_file', '\"{\\\"project_file_create\\\":\\\"project_file_create\\\",\\\"project_file_store\\\":\\\"project_file_store\\\",\\\"project_file_edit\\\":\\\"project_file_edit\\\",\\\"project_file_update\\\":\\\"project_file_update\\\",\\\"project_file_delete\\\":\\\"project_file_delete\\\",\\\"project_file_view\\\":\\\"project_file_view\\\",\\\"project_file_list\\\":\\\"project_file_list\\\",\\\"project_file_download\\\":\\\"project_file_download\\\",\\\"project_file_comment\\\":\\\"project_file_comment\\\",\\\"project_file_reply\\\":\\\"project_file_reply\\\"}\"', '2024-06-25 06:58:18', '2024-06-25 06:58:18'),
(33, 'project_notes', '\"{\\\"project_notes_create\\\":\\\"project_notes_create\\\",\\\"project_notes_store\\\":\\\"project_notes_store\\\",\\\"project_notes_edit\\\":\\\"project_notes_edit\\\",\\\"project_notes_update\\\":\\\"project_notes_update\\\",\\\"project_notes_delete\\\":\\\"project_notes_delete\\\",\\\"project_notes_list\\\":\\\"project_notes_list\\\",\\\"project_files_comment\\\":\\\"project_files_comment\\\"}\"', '2024-06-25 06:58:18', '2024-06-25 06:58:18'),
(34, 'general_settings', '\"{\\\"general_settings_read\\\":\\\"general_settings_read\\\",\\\"general_settings_update\\\":\\\"general_settings_update\\\",\\\"email_settings_update\\\":\\\"email_settings_update\\\",\\\"storage_settings_update\\\":\\\"storage_settings_update\\\"}\"', '2024-06-25 06:58:18', '2024-06-25 06:58:18'),
(35, 'task', '\"{\\\"menu\\\":\\\"task_menu\\\",\\\"task_create\\\":\\\"task_create\\\",\\\"task_store\\\":\\\"task_store\\\",\\\"task_edit\\\":\\\"task_edit\\\",\\\"task_update\\\":\\\"task_update\\\",\\\"task_delete\\\":\\\"task_delete\\\",\\\"task_view\\\":\\\"task_view\\\",\\\"task_list\\\":\\\"task_list\\\",\\\"task_activity_view\\\":\\\"task_activity_view\\\",\\\"task_assign_view\\\":\\\"task_assign_view\\\",\\\"task_assign_delete\\\":\\\"task_assign_delete\\\",\\\"task_complete\\\":\\\"task_complete\\\"}\"', '2024-06-25 06:58:18', '2024-06-25 06:58:18'),
(36, 'client', '\"{\\\"menu\\\":\\\"client_menu\\\",\\\"client_create\\\":\\\"client_create\\\",\\\"client_store\\\":\\\"client_store\\\",\\\"client_edit\\\":\\\"client_edit\\\",\\\"client_update\\\":\\\"client_update\\\",\\\"client_delete\\\":\\\"client_delete\\\",\\\"client_view\\\":\\\"client_view\\\",\\\"client_list\\\":\\\"client_list\\\"}\"', '2024-06-25 06:58:18', '2024-06-25 06:58:18'),
(37, 'task_discussion', '\"{\\\"task_discussion_create\\\":\\\"task_discussion_create\\\",\\\"task_discussion_store\\\":\\\"task_discussion_store\\\",\\\"task_discussion_edit\\\":\\\"task_discussion_edit\\\",\\\"task_discussion_update\\\":\\\"task_discussion_update\\\",\\\"task_discussion_delete\\\":\\\"task_discussion_delete\\\",\\\"task_discussion_view\\\":\\\"task_discussion_view\\\",\\\"task_discussion_list\\\":\\\"task_discussion_list\\\",\\\"task_discussion_comment\\\":\\\"task_discussion_comment\\\",\\\"task_discussion_reply\\\":\\\"task_discussion_reply\\\"}\"', '2024-06-25 06:58:18', '2024-06-25 06:58:18'),
(38, 'task_file', '\"{\\\"task_file_create\\\":\\\"task_file_create\\\",\\\"task_file_store\\\":\\\"task_file_store\\\",\\\"task_file_edit\\\":\\\"task_file_edit\\\",\\\"task_file_update\\\":\\\"task_file_update\\\",\\\"task_file_delete\\\":\\\"task_file_delete\\\",\\\"task_file_view\\\":\\\"task_file_view\\\",\\\"task_file_list\\\":\\\"task_file_list\\\",\\\"task_file_download\\\":\\\"task_file_download\\\",\\\"task_file_comment\\\":\\\"task_file_comment\\\",\\\"task_file_reply\\\":\\\"task_file_reply\\\"}\"', '2024-06-25 06:58:18', '2024-06-25 06:58:18'),
(39, 'task_notes', '\"{\\\"task_notes_create\\\":\\\"task_notes_create\\\",\\\"task_notes_store\\\":\\\"task_notes_store\\\",\\\"task_notes_edit\\\":\\\"task_notes_edit\\\",\\\"task_notes_update\\\":\\\"task_notes_update\\\",\\\"task_notes_delete\\\":\\\"task_notes_delete\\\",\\\"task_notes_list\\\":\\\"task_notes_list\\\",\\\"task_files_comment\\\":\\\"task_files_comment\\\"}\"', '2024-06-25 06:58:18', '2024-06-25 06:58:18'),
(40, 'award_type', '\"{\\\"menu\\\":\\\"award_type_menu\\\",\\\"award_type_create\\\":\\\"award_type_create\\\",\\\"award_type_store\\\":\\\"award_type_store\\\",\\\"award_type_edit\\\":\\\"award_type_edit\\\",\\\"award_type_update\\\":\\\"award_type_update\\\",\\\"award_type_delete\\\":\\\"award_type_delete\\\",\\\"award_type_list\\\":\\\"award_type_list\\\"}\"', '2024-06-25 06:58:18', '2024-06-25 06:58:18'),
(41, 'award', '\"{\\\"menu\\\":\\\"award_menu\\\",\\\"award_create\\\":\\\"award_create\\\",\\\"award_store\\\":\\\"award_store\\\",\\\"award_edit\\\":\\\"award_edit\\\",\\\"award_update\\\":\\\"award_update\\\",\\\"award_delete\\\":\\\"award_delete\\\",\\\"award_view\\\":\\\"award_view\\\",\\\"award_list\\\":\\\"award_list\\\"}\"', '2024-06-25 06:58:18', '2024-06-25 06:58:18'),
(42, 'travel_type', '\"{\\\"menu\\\":\\\"travel_type_menu\\\",\\\"travel_type_create\\\":\\\"travel_type_create\\\",\\\"travel_type_store\\\":\\\"travel_type_store\\\",\\\"travel_type_edit\\\":\\\"travel_type_edit\\\",\\\"travel_type_update\\\":\\\"travel_type_update\\\",\\\"travel_type_delete\\\":\\\"travel_type_delete\\\",\\\"travel_type_list\\\":\\\"travel_type_list\\\"}\"', '2024-06-25 06:58:18', '2024-06-25 06:58:18'),
(43, 'travel', '\"{\\\"menu\\\":\\\"travel_menu\\\",\\\"travel_create\\\":\\\"travel_create\\\",\\\"travel_store\\\":\\\"travel_store\\\",\\\"travel_edit\\\":\\\"travel_edit\\\",\\\"travel_update\\\":\\\"travel_update\\\",\\\"travel_delete\\\":\\\"travel_delete\\\",\\\"travel_view\\\":\\\"travel_view\\\",\\\"travel_list\\\":\\\"travel_list\\\",\\\"travel_approve\\\":\\\"travel_approve\\\",\\\"travel_payment\\\":\\\"travel_payment\\\"}\"', '2024-06-25 06:58:18', '2024-06-25 06:58:18'),
(44, 'meeting', '\"{\\\"menu\\\":\\\"meeting_menu\\\",\\\"meeting_create\\\":\\\"meeting_create\\\",\\\"meeting_store\\\":\\\"meeting_store\\\",\\\"meeting_edit\\\":\\\"meeting_edit\\\",\\\"meeting_update\\\":\\\"meeting_update\\\",\\\"meeting_delete\\\":\\\"meeting_delete\\\",\\\"meeting_view\\\":\\\"meeting_view\\\",\\\"meeting_list\\\":\\\"meeting_list\\\"}\"', '2024-06-25 06:58:18', '2024-06-25 06:58:18'),
(45, 'appointment', '\"{\\\"appointment_menu\\\":\\\"appointment_menu\\\",\\\"appointment_read\\\":\\\"appointment_read\\\",\\\"appointment_create\\\":\\\"appointment_create\\\",\\\"appointment_approve\\\":\\\"appointment_approve\\\",\\\"appointment_reject\\\":\\\"appointment_reject\\\",\\\"appointment_delete\\\":\\\"appointment_delete\\\"}\"', '2024-06-25 06:58:18', '2024-06-25 06:58:18'),
(46, 'performance', '\"{\\\"menu\\\":\\\"performance_menu\\\",\\\"settings\\\":\\\"performance_settings\\\"}\"', '2024-06-25 06:58:18', '2024-06-25 06:58:18'),
(47, 'performance_indicator', '\"{\\\"menu\\\":\\\"performance_indicator_menu\\\",\\\"performance_indicator_create\\\":\\\"performance_indicator_create\\\",\\\"performance_indicator_store\\\":\\\"performance_indicator_store\\\",\\\"performance_indicator_edit\\\":\\\"performance_indicator_edit\\\",\\\"performance_indicator_update\\\":\\\"performance_indicator_update\\\",\\\"performance_indicator_delete\\\":\\\"performance_indicator_delete\\\",\\\"performance_indicator_list\\\":\\\"performance_indicator_list\\\",\\\"performance_indicator_view\\\":\\\"performance_indicator_view\\\"}\"', '2024-06-25 06:58:18', '2024-06-25 06:58:18'),
(48, 'performance_appraisal', '\"{\\\"menu\\\":\\\"performance_appraisal_menu\\\",\\\"performance_appraisal_create\\\":\\\"performance_appraisal_create\\\",\\\"performance_appraisal_store\\\":\\\"performance_appraisal_store\\\",\\\"performance_appraisal_edit\\\":\\\"performance_appraisal_edit\\\",\\\"performance_appraisal_update\\\":\\\"performance_appraisal_update\\\",\\\"performance_appraisal_delete\\\":\\\"performance_appraisal_delete\\\",\\\"performance_appraisal_list\\\":\\\"performance_appraisal_list\\\",\\\"performance_appraisal_view\\\":\\\"performance_appraisal_view\\\"}\"', '2024-06-25 06:58:18', '2024-06-25 06:58:18'),
(49, 'performance_goal_type', '\"{\\\"menu\\\":\\\"performance_goal_type_menu\\\",\\\"performance_goal_type_create\\\":\\\"performance_goal_type_create\\\",\\\"performance_goal_type_store\\\":\\\"performance_goal_type_store\\\",\\\"performance_goal_type_edit\\\":\\\"performance_goal_type_edit\\\",\\\"performance_goal_type_update\\\":\\\"performance_goal_type_update\\\",\\\"performance_goal_type_delete\\\":\\\"performance_goal_type_delete\\\",\\\"performance_goal_type_list\\\":\\\"performance_goal_type_list\\\"}\"', '2024-06-25 06:58:18', '2024-06-25 06:58:18'),
(50, 'performance_goal', '\"{\\\"menu\\\":\\\"performance_goal_menu\\\",\\\"performance_goal_create\\\":\\\"performance_goal_create\\\",\\\"performance_goal_store\\\":\\\"performance_goal_store\\\",\\\"performance_goal_edit\\\":\\\"performance_goal_edit\\\",\\\"performance_goal_update\\\":\\\"performance_goal_update\\\",\\\"performance_goal_delete\\\":\\\"performance_goal_delete\\\",\\\"performance_goal_view\\\":\\\"performance_goal_view\\\",\\\"performance_goal_list\\\":\\\"performance_goal_list\\\"}\"', '2024-06-25 06:58:18', '2024-06-25 06:58:18'),
(51, 'performance_competence_type', '\"{\\\"menu\\\":\\\"performance_competence_type_menu\\\",\\\"performance_competence_type_create\\\":\\\"performance_competence_type_create\\\",\\\"performance_competence_type_store\\\":\\\"performance_competence_type_store\\\",\\\"performance_competence_type_edit\\\":\\\"performance_competence_type_edit\\\",\\\"performance_competence_type_update\\\":\\\"performance_competence_type_update\\\",\\\"performance_competence_type_delete\\\":\\\"performance_competence_type_delete\\\",\\\"performance_competence_type_list\\\":\\\"performance_competence_type_list\\\"}\"', '2024-06-25 06:58:18', '2024-06-25 06:58:18'),
(52, 'performance_competence', '\"{\\\"menu\\\":\\\"performance_competence_menu\\\",\\\"performance_competence_create\\\":\\\"performance_competence_create\\\",\\\"performance_competence_store\\\":\\\"performance_competence_store\\\",\\\"performance_competence_edit\\\":\\\"performance_competence_edit\\\",\\\"performance_competence_update\\\":\\\"performance_competence_update\\\",\\\"performance_competence_delete\\\":\\\"performance_competence_delete\\\",\\\"performance_competence_list\\\":\\\"performance_competence_list\\\"}\"', '2024-06-25 06:58:18', '2024-06-25 06:58:18'),
(53, 'report', '\"{\\\"attendance_report\\\":\\\"attendance_report_read\\\",\\\"live_tracking_read\\\":\\\"live_tracking_read\\\",\\\"menu\\\":\\\"report_menu\\\"}\"', '2024-06-25 06:58:18', '2024-06-25 06:58:18'),
(54, 'leave_settings', '\"{\\\"read\\\":\\\"leave_settings_read\\\",\\\"update\\\":\\\"leave_settings_update\\\"}\"', '2024-06-25 06:58:18', '2024-06-25 06:58:18'),
(55, 'ip', '\"{\\\"read\\\":\\\"ip_read\\\",\\\"create\\\":\\\"ip_create\\\",\\\"update\\\":\\\"ip_update\\\",\\\"delete\\\":\\\"ip_delete\\\"}\"', '2024-06-25 06:58:18', '2024-06-25 06:58:18'),
(56, 'company_setup', '\"{\\\"menu\\\":\\\"company_setup_menu\\\",\\\"activation_read\\\":\\\"company_setup_activation\\\",\\\"activation_update\\\":\\\"company_setup_activation_update\\\",\\\"configuration_read\\\":\\\"company_setup_configuration\\\",\\\"configuration_update\\\":\\\"company_setup_configuration_update\\\",\\\"location_read\\\":\\\"company_setup_location\\\",\\\"company_update\\\":\\\"company_settings_update\\\"}\"', '2024-06-25 06:58:18', '2024-06-25 06:58:18'),
(57, 'location', '\"{\\\"location_create\\\":\\\"location_create\\\",\\\"location_store\\\":\\\"location_store\\\",\\\"location_edit\\\":\\\"location_edit\\\",\\\"location_update\\\":\\\"location_update\\\",\\\"location_delete\\\":\\\"location_delete\\\"}\"', '2024-06-25 06:58:18', '2024-06-25 06:58:18'),
(58, 'api_setup', '\"{\\\"read\\\":\\\"locationApi\\\"}\"', '2024-06-25 06:58:18', '2024-06-25 06:58:18'),
(59, 'claim', '\"{\\\"read\\\":\\\"claim_read\\\",\\\"create\\\":\\\"claim_create\\\",\\\"update\\\":\\\"claim_update\\\",\\\"delete\\\":\\\"claim_delete\\\"}\"', '2024-06-25 06:58:18', '2024-06-25 06:58:18'),
(60, 'payment', '\"{\\\"read\\\":\\\"payment_read\\\",\\\"create\\\":\\\"payment_create\\\",\\\"update\\\":\\\"payment_update\\\",\\\"delete\\\":\\\"payment_delete\\\"}\"', '2024-06-25 06:58:18', '2024-06-25 06:58:18'),
(61, 'visit', '\"{\\\"menu\\\":\\\"visit_menu\\\",\\\"read\\\":\\\"visit_read\\\",\\\"update\\\":\\\"visit_update\\\",\\\"view\\\":\\\"visit_view\\\"}\"', '2024-06-25 06:58:18', '2024-06-25 06:58:18'),
(62, 'app_settings', '\"{\\\"menu\\\":\\\"app_settings_menu\\\",\\\"update\\\":\\\"app_settings_update\\\"}\"', '2024-06-25 06:58:18', '2024-06-25 06:58:18'),
(63, 'web_setup', '\"{\\\"menu\\\":\\\"web_setup_menu\\\"}\"', '2024-06-25 06:58:18', '2024-06-25 06:58:18'),
(64, 'content', '\"{\\\"menu\\\":\\\"content_menu\\\",\\\"read\\\":\\\"content_read\\\",\\\"update\\\":\\\"content_update\\\",\\\"delete\\\":\\\"content_delete\\\"}\"', '2024-06-25 06:58:18', '2024-06-25 06:58:18'),
(65, 'menu', '\"{\\\"menu\\\":\\\"menu\\\",\\\"create\\\":\\\"menu_create\\\",\\\"menu_store\\\":\\\"menu_store\\\",\\\"menu_edit\\\":\\\"menu_edit\\\",\\\"update\\\":\\\"menu_update\\\",\\\"delete\\\":\\\"menu_delete\\\"}\"', '2024-06-25 06:58:18', '2024-06-25 06:58:18'),
(66, 'service', '\"{\\\"menu\\\":\\\"service_menu\\\",\\\"read\\\":\\\"service_read\\\",\\\"create\\\":\\\"service_create\\\",\\\"update\\\":\\\"service_update\\\",\\\"delete\\\":\\\"service_delete\\\"}\"', '2024-06-25 06:58:18', '2024-06-25 06:58:18'),
(67, 'portfolio', '\"{\\\"menu\\\":\\\"portfolio_menu\\\",\\\"create\\\":\\\"portfolio_create\\\",\\\"portfolio_store\\\":\\\"portfolio_store\\\",\\\"edit\\\":\\\"portfolio_edit\\\",\\\"update\\\":\\\"portfolio_update\\\",\\\"delete\\\":\\\"portfolio_delete\\\"}\"', '2024-06-25 06:58:18', '2024-06-25 06:58:18'),
(68, 'contact', '\"{\\\"menu\\\":\\\"contact_menu\\\",\\\"read\\\":\\\"contact_read\\\",\\\"create\\\":\\\"contact_create\\\",\\\"update\\\":\\\"contact_update\\\",\\\"delete\\\":\\\"contact_delete\\\"}\"', '2024-06-25 06:58:18', '2024-06-25 06:58:18'),
(69, 'language', '\"{\\\"menu\\\":\\\"language_menu\\\",\\\"create\\\":\\\"language_create\\\",\\\"edit\\\":\\\"language_edit\\\",\\\"update\\\":\\\"language_update\\\",\\\"delete\\\":\\\"language_delete\\\",\\\"make_default\\\":\\\"make_default\\\",\\\"setup_language\\\":\\\"setup_language\\\"}\"', '2024-06-25 06:58:18', '2024-06-25 06:58:18'),
(70, 'team_member', '\"{\\\"menu\\\":\\\"team_member_menu\\\",\\\"read\\\":\\\"team_member_read\\\",\\\"create\\\":\\\"team_member_create\\\",\\\"team_member_store\\\":\\\"team_member_store\\\",\\\"team_member_edit\\\":\\\"team_member_edit\\\",\\\"update\\\":\\\"team_member_update\\\",\\\"delete\\\":\\\"team_member_delete\\\"}\"', '2024-06-25 06:58:18', '2024-06-25 06:58:18'),
(71, 'support', '\"{\\\"support_menu\\\":\\\"support_menu\\\",\\\"support_read\\\":\\\"support_read\\\",\\\"support_create\\\":\\\"support_create\\\",\\\"support_reply\\\":\\\"support_reply\\\",\\\"support_delete\\\":\\\"support_delete\\\"}\"', '2024-06-25 06:58:18', '2024-06-25 06:58:18'),
(72, 'model', '\"{\\\"read\\\":\\\"model_read\\\",\\\"create\\\":\\\"model_create\\\",\\\"update\\\":\\\"model_update\\\",\\\"delete\\\":\\\"model_delete\\\"}\"', '2024-06-25 06:58:18', '2024-06-25 06:58:18'),
(73, 'brand', '\"{\\\"read\\\":\\\"brand_read\\\",\\\"create\\\":\\\"brand_create\\\",\\\"update\\\":\\\"brand_update\\\",\\\"delete\\\":\\\"brand_delete\\\"}\"', '2024-06-25 06:58:18', '2024-06-25 06:58:18'),
(74, 'machine', '\"{\\\"read\\\":\\\"machine_read\\\",\\\"create\\\":\\\"machine_create\\\",\\\"update\\\":\\\"machine_update\\\",\\\"delete\\\":\\\"machine_delete\\\"}\"', '2024-06-25 06:58:18', '2024-06-25 06:58:18'),
(75, 'package', '\"{\\\"read\\\":\\\"package_read\\\",\\\"create\\\":\\\"package_create\\\",\\\"update\\\":\\\"package_update\\\",\\\"delete\\\":\\\"package_delete\\\"}\"', '2024-06-25 06:58:18', '2024-06-25 06:58:18'),
(76, 'institution', '\"{\\\"read\\\":\\\"institution_read\\\",\\\"create\\\":\\\"institution_create\\\",\\\"update\\\":\\\"institution_update\\\",\\\"delete\\\":\\\"institution_delete\\\"}\"', '2024-06-25 06:58:18', '2024-06-25 06:58:18'),
(77, 'addons_menu', '\"{\\\"menu\\\":\\\"addons_menu\\\"}\"', '2024-06-25 06:58:18', '2024-06-25 06:58:18'),
(78, 'employee_document_type', '\"{\\\"read\\\":\\\"employee_document_type_read\\\",\\\"create\\\":\\\"employee_document_type_create\\\",\\\"update\\\":\\\"employee_document_type_update\\\",\\\"delete\\\":\\\"employee_document_type_delete\\\"}\"', '2024-06-25 06:58:18', '2024-06-25 06:58:18'),
(79, 'employee_document', '\"{\\\"read\\\":\\\"employee_document_read\\\",\\\"create\\\":\\\"employee_document_create\\\",\\\"download\\\":\\\"employee_document_download\\\"}\"', '2024-06-25 06:58:18', '2024-06-25 06:58:18'),
(80, 'subscription', '\"{\\\"read\\\":\\\"subscription_read\\\",\\\"upgrade\\\":\\\"subscription_upgrade\\\",\\\"invoice\\\":\\\"subscription_invoice\\\"}\"', '2024-06-25 06:58:18', '2024-06-25 06:58:18');

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `portfolios`
--

CREATE TABLE `portfolios` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `attachment` bigint(20) UNSIGNED DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `status_id` bigint(20) UNSIGNED NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `company_id` bigint(20) UNSIGNED DEFAULT '1',
  `branch_id` bigint(20) UNSIGNED DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `projects`
--

CREATE TABLE `projects` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `invoice` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `date` date DEFAULT NULL,
  `progress_from_tasks` int(11) DEFAULT '1',
  `progress` int(11) DEFAULT '0',
  `billing_type` enum('hourly','fixed') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `per_rate` double(16,2) DEFAULT NULL,
  `total_rate` double(16,2) DEFAULT NULL,
  `estimated_hour` double(16,2) DEFAULT NULL,
  `status_id` bigint(20) UNSIGNED NOT NULL DEFAULT '24',
  `priority` bigint(20) UNSIGNED NOT NULL DEFAULT '24',
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `payment` bigint(20) UNSIGNED NOT NULL DEFAULT '9',
  `amount` double(16,2) DEFAULT NULL,
  `paid` double(16,2) NOT NULL DEFAULT '0.00',
  `due` double(16,2) NOT NULL DEFAULT '0.00',
  `created_by` bigint(20) UNSIGNED NOT NULL DEFAULT '1',
  `notify_all_users` tinyint(4) NOT NULL DEFAULT '0' COMMENT '0=no,1=yes',
  `notify_all_users_email` tinyint(4) NOT NULL DEFAULT '0' COMMENT '0=no,1=yes',
  `goal_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `company_id` bigint(20) UNSIGNED DEFAULT '1',
  `branch_id` bigint(20) UNSIGNED DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `projects`
--

INSERT INTO `projects` (`id`, `name`, `invoice`, `client_id`, `date`, `progress_from_tasks`, `progress`, `billing_type`, `per_rate`, `total_rate`, `estimated_hour`, `status_id`, `priority`, `description`, `start_date`, `end_date`, `payment`, `amount`, `paid`, `due`, `created_by`, `notify_all_users`, `notify_all_users_email`, `goal_id`, `created_at`, `updated_at`, `company_id`, `branch_id`) VALUES
(1, 'fff', '1', 1, '2024-10-03', 1, 8, 'fixed', 0.00, 23000.00, 4.00, 24, 30, 'ggg', '2024-10-03', '2024-10-03', 9, 23000.00, 0.00, 23000.00, 4, 0, 0, NULL, '2024-10-03 02:15:12', '2024-10-03 02:15:12', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `project_activities`
--

CREATE TABLE `project_activities` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `project_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `last_activity` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `company_id` bigint(20) UNSIGNED DEFAULT '1',
  `branch_id` bigint(20) UNSIGNED DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `project_activities`
--

INSERT INTO `project_activities` (`id`, `description`, `project_id`, `user_id`, `last_activity`, `created_at`, `updated_at`, `company_id`, `branch_id`) VALUES
(1, 'Created the project', 1, 4, NULL, '2024-10-03 02:15:12', '2024-10-03 02:15:12', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `project_files`
--

CREATE TABLE `project_files` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `subject` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `show_to_customer` bigint(20) UNSIGNED NOT NULL DEFAULT '22',
  `project_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `attachment` bigint(20) UNSIGNED DEFAULT NULL,
  `status_id` bigint(20) UNSIGNED NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `last_activity` timestamp NULL DEFAULT NULL,
  `company_id` bigint(20) UNSIGNED DEFAULT '1',
  `branch_id` bigint(20) UNSIGNED DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `project_file_comments`
--

CREATE TABLE `project_file_comments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `show_to_customer` tinyint(4) NOT NULL DEFAULT '1' COMMENT '0=no,1=yes',
  `project_file_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `attachment` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `company_id` bigint(20) UNSIGNED DEFAULT '1',
  `branch_id` bigint(20) UNSIGNED DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `project_membars`
--

CREATE TABLE `project_membars` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `project_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `added_by` bigint(20) UNSIGNED NOT NULL,
  `status_id` bigint(20) UNSIGNED NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `company_id` bigint(20) UNSIGNED DEFAULT '1',
  `branch_id` bigint(20) UNSIGNED DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `project_membars`
--

INSERT INTO `project_membars` (`id`, `project_id`, `user_id`, `added_by`, `status_id`, `created_at`, `updated_at`, `company_id`, `branch_id`) VALUES
(1, 1, 5, 4, 1, '2024-10-03 02:15:12', '2024-10-03 02:15:12', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `project_payments`
--

CREATE TABLE `project_payments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `amount` double(16,2) NOT NULL,
  `due_amount` double(16,2) DEFAULT NULL,
  `project_id` bigint(20) UNSIGNED NOT NULL,
  `transaction_id` bigint(20) UNSIGNED DEFAULT NULL,
  `payment_method_id` bigint(20) UNSIGNED DEFAULT NULL,
  `paid_by` bigint(20) UNSIGNED NOT NULL DEFAULT '1',
  `created_by` bigint(20) UNSIGNED NOT NULL DEFAULT '1',
  `updated_by` bigint(20) UNSIGNED NOT NULL DEFAULT '1',
  `payment_note` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `company_id` bigint(20) UNSIGNED DEFAULT '1',
  `branch_id` bigint(20) UNSIGNED DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `permissions` longtext COLLATE utf8mb4_unicode_ci,
  `upper_roles` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status_id` bigint(20) UNSIGNED NOT NULL,
  `company_id` bigint(20) UNSIGNED DEFAULT '1',
  `branch_id` bigint(20) UNSIGNED DEFAULT '1',
  `app_login` tinyint(1) DEFAULT '1',
  `web_login` tinyint(1) DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `slug`, `permissions`, `upper_roles`, `status_id`, `company_id`, `branch_id`, `app_login`, `web_login`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'superadmin', 'superadmin', '\"[\\\"team_menu\\\",\\\"team_list\\\",\\\"team_create\\\",\\\"team_update\\\",\\\"team_edit\\\",\\\"team_delete\\\",\\\"team_member_view\\\",\\\"team_member_create\\\",\\\"team_member_edit\\\",\\\"team_member_delete\\\",\\\"team_member_assign\\\",\\\"team_member_unassign\\\",\\\"dashboard\\\",\\\"hr_menu\\\",\\\"designation_read\\\",\\\"designation_create\\\",\\\"designation_update\\\",\\\"designation_delete\\\",\\\"shift_read\\\",\\\"shift_create\\\",\\\"shift_update\\\",\\\"shift_delete\\\",\\\"department_read\\\",\\\"department_create\\\",\\\"department_update\\\",\\\"department_delete\\\",\\\"user_menu\\\",\\\"user_read\\\",\\\"profile_view\\\",\\\"user_create\\\",\\\"user_edit\\\",\\\"user_update\\\",\\\"user_delete\\\",\\\"user_banned\\\",\\\"user_unbanned\\\",\\\"make_hr\\\",\\\"user_permission\\\",\\\"profile_image_view\\\",\\\"user_device_list\\\",\\\"reset_device\\\",\\\"phonebook_profile\\\",\\\"support_ticket_profile\\\",\\\"advance_profile\\\",\\\"commission_profile\\\",\\\"salary_profile\\\",\\\"project_profile\\\",\\\"task_profile\\\",\\\"award_profile\\\",\\\"travel_profile\\\",\\\"attendance_profile\\\",\\\"appointment_profile\\\",\\\"visit_profile\\\",\\\"leave_request_profile\\\",\\\"notice_profile\\\",\\\"role_read\\\",\\\"role_create\\\",\\\"role_update\\\",\\\"role_delete\\\",\\\"branch_read\\\",\\\"branch_create\\\",\\\"branch_update\\\",\\\"branch_delete\\\",\\\"leave_menu\\\",\\\"leave_type_read\\\",\\\"leave_type_create\\\",\\\"leave_type_update\\\",\\\"leave_type_delete\\\",\\\"leave_assign_read\\\",\\\"leave_assign_create\\\",\\\"leave_assign_update\\\",\\\"leave_assign_delete\\\",\\\"leave_request_read\\\",\\\"leave_request_create\\\",\\\"leave_request_store\\\",\\\"leave_request_update\\\",\\\"leave_request_approve\\\",\\\"leave_request_reject\\\",\\\"leave_request_delete\\\",\\\"daily_leave_read\\\",\\\"appointment_read\\\",\\\"appointment_menu\\\",\\\"appointment_create\\\",\\\"appointment_approve\\\",\\\"appointment_reject\\\",\\\"appointment_delete\\\",\\\"weekend_read\\\",\\\"weekend_update\\\",\\\"attendance_update\\\",\\\"holiday_read\\\",\\\"holiday_create\\\",\\\"holiday_update\\\",\\\"holiday_delete\\\",\\\"schedule_read\\\",\\\"schedule_create\\\",\\\"schedule_update\\\",\\\"schedule_delete\\\",\\\"attendance_menu\\\",\\\"attendance_read\\\",\\\"attendance_create\\\",\\\"attendance_update\\\",\\\"attendance_delete\\\",\\\"generate_qr_code\\\",\\\"leave_settings_read\\\",\\\"leave_settings_update\\\",\\\"company_settings_read\\\",\\\"company_settings_update\\\",\\\"locationApi\\\",\\\"company_setup_menu\\\",\\\"company_setup_activation\\\",\\\"company_setup_configuration\\\",\\\"company_setup_ip_whitelist\\\",\\\"company_setup_location\\\",\\\"location_create\\\",\\\"location_store\\\",\\\"location_edit\\\",\\\"location_update\\\",\\\"location_delete\\\",\\\"ip_read\\\",\\\"ip_create\\\",\\\"ip_update\\\",\\\"ip_delete\\\",\\\"attendance_report_read\\\",\\\"live_tracking_read\\\",\\\"report_menu\\\",\\\"report\\\",\\\"claim_read\\\",\\\"claim_create\\\",\\\"claim_update\\\",\\\"claim_delete\\\",\\\"payment_read\\\",\\\"payment_create\\\",\\\"payment_update\\\",\\\"payment_delete\\\",\\\"visit_menu\\\",\\\"visit_read\\\",\\\"visit_view\\\",\\\"visit_update\\\",\\\"payroll_menu\\\",\\\"list_payroll_item\\\",\\\"create_payroll_item\\\",\\\"store_payroll_item\\\",\\\"update_payroll_item\\\",\\\"delete_payroll_item\\\",\\\"view_payroll_item\\\",\\\"payroll_item_menu\\\",\\\"list_payroll_set\\\",\\\"create_payroll_set\\\",\\\"store_payroll_set\\\",\\\"update_payroll_set\\\",\\\"delete_payroll_set\\\",\\\"view_payroll_set\\\",\\\"edit_payroll_set\\\",\\\"payroll_set_menu\\\",\\\"advance_salaries_menu\\\",\\\"advance_salaries_create\\\",\\\"advance_salaries_store\\\",\\\"advance_salaries_edit\\\",\\\"advance_salaries_update\\\",\\\"advance_salaries_delete\\\",\\\"advance_salaries_view\\\",\\\"advance_salaries_approve\\\",\\\"advance_salaries_list\\\",\\\"advance_salaries_pay\\\",\\\"advance_salaries_invoice\\\",\\\"advance_salaries_search\\\",\\\"payslip_menu\\\",\\\"salary_generate\\\",\\\"salary_view\\\",\\\"salary_delete\\\",\\\"salary_edit\\\",\\\"salary_update\\\",\\\"salary_payment\\\",\\\"payslip_list\\\",\\\"advance_type_menu\\\",\\\"advance_type_create\\\",\\\"advance_type_store\\\",\\\"advance_type_edit\\\",\\\"advance_type_update\\\",\\\"advance_type_delete\\\",\\\"advance_type_view\\\",\\\"advance_type_list\\\",\\\"salary_menu\\\",\\\"salary_store\\\",\\\"salary_edit\\\",\\\"salary_update\\\",\\\"salary_delete\\\",\\\"salary_view\\\",\\\"salary_list\\\",\\\"salary_search\\\",\\\"salary_pay\\\",\\\"salary_invoice\\\",\\\"salary_approve\\\",\\\"salary_generate\\\",\\\"salary_calculate\\\",\\\"account_menu\\\",\\\"account_create\\\",\\\"account_store\\\",\\\"account_edit\\\",\\\"account_update\\\",\\\"account_delete\\\",\\\"account_view\\\",\\\"account_list\\\",\\\"account_search\\\",\\\"deposit_menu\\\",\\\"deposit_create\\\",\\\"deposit_store\\\",\\\"deposit_edit\\\",\\\"deposit_update\\\",\\\"deposit_delete\\\",\\\"deposit_list\\\",\\\"expense_menu\\\",\\\"expense_create\\\",\\\"expense_store\\\",\\\"expense_edit\\\",\\\"expense_update\\\",\\\"expense_delete\\\",\\\"expense_list\\\",\\\"expense_view\\\",\\\"expense_approve\\\",\\\"expense_invoice\\\",\\\"expense_pay\\\",\\\"transaction_menu\\\",\\\"transaction_create\\\",\\\"transaction_store\\\",\\\"transaction_edit\\\",\\\"transaction_update\\\",\\\"transaction_delete\\\",\\\"transaction_view\\\",\\\"transaction_list\\\",\\\"deposit_category_menu\\\",\\\"deposit_category_create\\\",\\\"deposit_category_store\\\",\\\"deposit_category_edit\\\",\\\"deposit_category_update\\\",\\\"deposit_category_delete\\\",\\\"deposit_category_list\\\",\\\"payment_method_menu\\\",\\\"payment_method_create\\\",\\\"payment_method_store\\\",\\\"payment_method_edit\\\",\\\"payment_method_update\\\",\\\"payment_method_delete\\\",\\\"payment_method_list\\\",\\\"project_menu\\\",\\\"project_create\\\",\\\"project_store\\\",\\\"project_edit\\\",\\\"project_update\\\",\\\"project_delete\\\",\\\"project_view\\\",\\\"project_list\\\",\\\"project_activity_view\\\",\\\"project_member_view\\\",\\\"project_member_delete\\\",\\\"project_complete\\\",\\\"project_payment\\\",\\\"project_invoice_view\\\",\\\"project_discussion_create\\\",\\\"project_discussion_store\\\",\\\"project_discussion_edit\\\",\\\"project_discussion_update\\\",\\\"project_discussion_delete\\\",\\\"project_discussion_view\\\",\\\"project_discussion_list\\\",\\\"project_discussion_comment\\\",\\\"project_discussion_reply\\\",\\\"project_file_create\\\",\\\"project_file_store\\\",\\\"project_file_edit\\\",\\\"project_file_update\\\",\\\"project_file_delete\\\",\\\"project_file_view\\\",\\\"project_file_list\\\",\\\"project_file_download\\\",\\\"project_file_comment\\\",\\\"project_file_reply\\\",\\\"project_notes_create\\\",\\\"project_notes_store\\\",\\\"project_notes_edit\\\",\\\"project_notes_update\\\",\\\"project_notes_delete\\\",\\\"project_notes_list\\\",\\\"client_menu\\\",\\\"client_create\\\",\\\"client_store\\\",\\\"client_edit\\\",\\\"client_update\\\",\\\"client_delete\\\",\\\"client_view\\\",\\\"client_list\\\",\\\"task_menu\\\",\\\"task_create\\\",\\\"task_store\\\",\\\"task_edit\\\",\\\"task_update\\\",\\\"task_delete\\\",\\\"task_view\\\",\\\"task_list\\\",\\\"task_activity_view\\\",\\\"task_assign_view\\\",\\\"task_assign_delete\\\",\\\"task_complete\\\",\\\"task_discussion_create\\\",\\\"task_discussion_store\\\",\\\"task_discussion_edit\\\",\\\"task_discussion_update\\\",\\\"task_discussion_delete\\\",\\\"task_discussion_view\\\",\\\"task_discussion_list\\\",\\\"task_discussion_comment\\\",\\\"task_discussion_reply\\\",\\\"task_file_create\\\",\\\"task_file_store\\\",\\\"task_file_edit\\\",\\\"task_file_update\\\",\\\"task_file_delete\\\",\\\"task_file_view\\\",\\\"task_file_list\\\",\\\"task_file_download\\\",\\\"task_file_comment\\\",\\\"task_file_reply\\\",\\\"task_notes_create\\\",\\\"task_notes_store\\\",\\\"task_notes_edit\\\",\\\"task_notes_update\\\",\\\"task_notes_delete\\\",\\\"task_notes_list\\\",\\\"task_files_comment\\\",\\\"award_type_menu\\\",\\\"award_type_create\\\",\\\"award_type_store\\\",\\\"award_type_edit\\\",\\\"award_type_update\\\",\\\"award_type_delete\\\",\\\"award_type_view\\\",\\\"award_type_list\\\",\\\"award_menu\\\",\\\"award_create\\\",\\\"award_store\\\",\\\"award_edit\\\",\\\"award_update\\\",\\\"award_delete\\\",\\\"award_list\\\",\\\"travel_type_menu\\\",\\\"travel_type_create\\\",\\\"travel_type_store\\\",\\\"travel_type_edit\\\",\\\"travel_type_update\\\",\\\"travel_type_delete\\\",\\\"travel_type_view\\\",\\\"travel_type_list\\\",\\\"travel_menu\\\",\\\"travel_create\\\",\\\"travel_store\\\",\\\"travel_edit\\\",\\\"travel_update\\\",\\\"travel_delete\\\",\\\"travel_list\\\",\\\"travel_approve\\\",\\\"travel_payment\\\",\\\"meeting_menu\\\",\\\"meeting_create\\\",\\\"meeting_store\\\",\\\"meeting_edit\\\",\\\"meeting_update\\\",\\\"meeting_delete\\\",\\\"meeting_list\\\",\\\"performance_menu\\\",\\\"performance_settings\\\",\\\"performance_indicator_menu\\\",\\\"performance_indicator_list\\\",\\\"performance_indicator_create\\\",\\\"performance_indicator_store\\\",\\\"performance_indicator_edit\\\",\\\"performance_indicator_update\\\",\\\"performance_indicator_delete\\\",\\\"performance_appraisal_menu\\\",\\\"performance_appraisal_create\\\",\\\"performance_appraisal_store\\\",\\\"performance_appraisal_edit\\\",\\\"performance_appraisal_update\\\",\\\"performance_appraisal_delete\\\",\\\"performance_appraisal_list\\\",\\\"performance_appraisal_view\\\",\\\"performance_goal_type_menu\\\",\\\"performance_goal_type_create\\\",\\\"performance_goal_type_store\\\",\\\"performance_goal_type_edit\\\",\\\"performance_goal_type_update\\\",\\\"performance_goal_type_delete\\\",\\\"performance_goal_type_list\\\",\\\"performance_goal_menu\\\",\\\"performance_goal_create\\\",\\\"performance_goal_store\\\",\\\"performance_goal_edit\\\",\\\"performance_goal_update\\\",\\\"performance_goal_delete\\\",\\\"performance_goal_view\\\",\\\"performance_goal_list\\\",\\\"performance_competence_type_list\\\",\\\"performance_competence_type_menu\\\",\\\"performance_competence_type_create\\\",\\\"performance_competence_type_store\\\",\\\"performance_competence_type_edit\\\",\\\"performance_competence_type_update\\\",\\\"performance_competence_type_delete\\\",\\\"performance_competence_type_view\\\",\\\"performance_competence_menu\\\",\\\"performance_competence_create\\\",\\\"performance_competence_store\\\",\\\"performance_competence_edit\\\",\\\"performance_competence_update\\\",\\\"performance_competence_delete\\\",\\\"performance_competence_view\\\",\\\"performance_competence_list\\\",\\\"app_settings_menu\\\",\\\"app_settings_update\\\",\\\"language_menu\\\",\\\"make_default\\\",\\\"conference_read\\\",\\\"general_settings_read\\\",\\\"general_settings_update\\\",\\\"email_settings_update\\\",\\\"storage_settings_update\\\",\\\"language_create\\\",\\\"language_store\\\",\\\"language_edit\\\",\\\"language_update\\\",\\\"language_delete\\\",\\\"setup_language\\\",\\\"content_menu\\\",\\\"content_create\\\",\\\"content_store\\\",\\\"content_edit\\\",\\\"content_update\\\",\\\"content_delete\\\",\\\"contact_menu\\\",\\\"contact_create\\\",\\\"contact_store\\\",\\\"contact_edit\\\",\\\"contact_update\\\",\\\"contact_delete\\\",\\\"conference_create\\\",\\\"conference_read\\\",\\\"conference_store\\\",\\\"conference_update\\\",\\\"conference_delete\\\",\\\"conference_join\\\",\\\"model_read\\\",\\\"model_create\\\",\\\"model_update\\\",\\\"model_delete\\\",\\\"brand_read\\\",\\\"brand_create\\\",\\\"brand_update\\\",\\\"brand_delete\\\",\\\"machine_read\\\",\\\"machine_create\\\",\\\"machine_update\\\",\\\"machine_delete\\\",\\\"package_read\\\",\\\"package_create\\\",\\\"package_update\\\",\\\"package_delete\\\",\\\"institution_read\\\",\\\"institution_create\\\",\\\"institution_update\\\",\\\"institution_delete\\\",\\\"addons_menu\\\",\\\"employee_document_type_read\\\",\\\"employee_document_type_create\\\",\\\"employee_document_type_update\\\",\\\"employee_document_type_delete\\\",\\\"employee_document_read\\\",\\\"employee_document_create\\\",\\\"employee_document_download\\\",\\\"announcement_menu\\\",\\\"notice_menu\\\",\\\"notice_list\\\",\\\"notice_create\\\",\\\"notice_update\\\",\\\"notice_edit\\\",\\\"notice_delete\\\",\\\"send_sms_menu\\\",\\\"send_sms_list\\\",\\\"send_sms_create\\\",\\\"send_sms_update\\\",\\\"send_sms_edit\\\",\\\"send_sms_delete\\\",\\\"send_email_menu\\\",\\\"send_email_list\\\",\\\"send_email_create\\\",\\\"send_email_update\\\",\\\"send_email_edit\\\",\\\"send_email_delete\\\",\\\"send_notification_menu\\\",\\\"send_notification_list\\\",\\\"send_notification_create\\\",\\\"send_notification_update\\\",\\\"send_notification_edit\\\",\\\"send_notification_delete\\\",\\\"announcement_menu\\\",\\\"notice_menu\\\",\\\"notice_list\\\",\\\"notice_create\\\",\\\"notice_update\\\",\\\"notice_edit\\\",\\\"notice_delete\\\",\\\"send_sms_menu\\\",\\\"send_sms_list\\\",\\\"send_sms_create\\\",\\\"send_sms_update\\\",\\\"send_sms_edit\\\",\\\"send_sms_delete\\\",\\\"send_email_menu\\\",\\\"send_email_list\\\",\\\"send_email_create\\\",\\\"send_email_update\\\",\\\"send_email_edit\\\",\\\"send_email_delete\\\",\\\"send_notification_menu\\\",\\\"send_notification_list\\\",\\\"send_notification_create\\\",\\\"send_notification_update\\\",\\\"send_notification_edit\\\",\\\"send_notification_delete\\\",\\\"support_menu\\\",\\\"support_read\\\",\\\"support_create\\\",\\\"support_reply\\\",\\\"support_delete\\\"]\"', NULL, 1, 1, 1, 1, 1, '2024-06-25 06:58:18', '2024-10-02 04:18:24', '2024-10-02 04:18:24'),
(2, 'Quản trị vi&ecirc;n', 'admin', '[\"hr_menu\",\"designation_read\",\"designation_create\",\"designation_update\",\"designation_delete\",\"department_read\",\"department_create\",\"department_update\",\"department_delete\",\"user_read\",\"profile_view\",\"user_create\",\"user_edit\",\"user_permission\",\"user_update\",\"user_delete\",\"registerFace\",\"user_menu\",\"make_hr\",\"profile_image_view\",\"user_device_list\",\"reset_device\",\"attendance_profile\",\"contract_profile\",\"phonebook_profile\",\"support_ticket_profile\",\"advance_profile\",\"commission_profile\",\"appointment_profile\",\"visit_profile\",\"leave_request_profile\",\"notice_profile\",\"salary_profile\",\"project_profile\",\"task_profile\",\"award_profile\",\"travel_profile\",\"role_read\",\"role_create\",\"role_update\",\"role_delete\",\"leave_type_read\",\"leave_type_create\",\"leave_type_update\",\"leave_type_delete\",\"leave_menu\",\"leave_assign_read\",\"leave_assign_create\",\"leave_assign_update\",\"leave_assign_delete\",\"daily_leave_read\",\"leave_request_read\",\"leave_request_update\",\"leave_request_store\",\"leave_request_create\",\"leave_request_approve\",\"leave_request_reject\",\"leave_request_delete\",\"weekend_read\",\"weekend_update\",\"holiday_read\",\"holiday_create\",\"holiday_update\",\"holiday_delete\",\"schedule_read\",\"schedule_create\",\"schedule_update\",\"schedule_delete\",\"attendance_read\",\"attendance_create\",\"attendance_update\",\"attendance_delete\",\"attendance_menu\",\"shift_read\",\"shift_create\",\"shift_update\",\"shift_delete\",\"announcement_menu\",\"notice_menu\",\"notice_list\",\"notice_edit\",\"notice_update\",\"notice_create\",\"notice_delete\",\"advance_type_menu\",\"advance_type_create\",\"advance_type_store\",\"advance_type_edit\",\"advance_type_update\",\"advance_type_delete\",\"advance_type_view\",\"advance_type_list\",\"account_menu\",\"account_create\",\"account_store\",\"account_edit\",\"account_update\",\"account_delete\",\"account_view\",\"account_list\",\"account_search\",\"project_menu\",\"project_create\",\"project_store\",\"project_edit\",\"project_update\",\"project_delete\",\"project_view\",\"project_list\",\"project_activity_view\",\"project_member_view\",\"project_member_delete\",\"project_complete\",\"project_payment\",\"project_invoice_view\",\"project_discussion_create\",\"project_discussion_store\",\"project_discussion_edit\",\"project_discussion_update\",\"project_discussion_delete\",\"project_discussion_view\",\"project_discussion_list\",\"project_discussion_comment\",\"project_discussion_reply\",\"project_file_create\",\"project_file_store\",\"project_file_edit\",\"project_file_update\",\"project_file_delete\",\"project_file_view\",\"project_file_list\",\"project_file_download\",\"project_file_comment\",\"project_file_reply\",\"project_notes_create\",\"project_notes_store\",\"project_notes_edit\",\"project_notes_update\",\"project_notes_delete\",\"project_notes_list\",\"general_settings_read\",\"general_settings_update\",\"email_settings_update\",\"storage_settings_update\",\"task_menu\",\"task_create\",\"task_store\",\"task_edit\",\"task_update\",\"task_delete\",\"task_view\",\"task_list\",\"task_activity_view\",\"task_assign_view\",\"task_assign_delete\",\"task_complete\",\"client_menu\",\"client_create\",\"client_store\",\"client_edit\",\"client_update\",\"client_delete\",\"client_view\",\"client_list\",\"task_discussion_create\",\"task_discussion_store\",\"task_discussion_edit\",\"task_discussion_update\",\"task_discussion_delete\",\"task_discussion_view\",\"task_discussion_list\",\"task_discussion_comment\",\"task_discussion_reply\",\"task_file_create\",\"task_file_store\",\"task_file_edit\",\"task_file_update\",\"task_file_delete\",\"task_file_view\",\"task_file_list\",\"task_file_download\",\"task_file_comment\",\"task_file_reply\",\"task_notes_create\",\"task_notes_store\",\"task_notes_edit\",\"task_notes_update\",\"task_notes_delete\",\"task_notes_list\",\"task_files_comment\",\"travel_type_menu\",\"travel_type_create\",\"travel_type_store\",\"travel_type_edit\",\"travel_type_update\",\"travel_type_delete\",\"travel_type_list\",\"travel_menu\",\"travel_create\",\"travel_store\",\"travel_edit\",\"travel_update\",\"travel_delete\",\"travel_view\",\"travel_list\",\"travel_approve\",\"travel_payment\",\"meeting_menu\",\"meeting_create\",\"meeting_store\",\"meeting_edit\",\"meeting_update\",\"meeting_delete\",\"meeting_list\",\"appointment_menu\",\"appointment_read\",\"appointment_create\",\"appointment_approve\",\"appointment_reject\",\"appointment_delete\",\"performance_menu\",\"performance_settings\",\"performance_indicator_menu\",\"performance_indicator_create\",\"performance_indicator_store\",\"performance_indicator_edit\",\"performance_indicator_update\",\"performance_indicator_delete\",\"performance_indicator_list\",\"performance_indicator_view\",\"performance_appraisal_menu\",\"performance_appraisal_create\",\"performance_appraisal_store\",\"performance_appraisal_edit\",\"performance_appraisal_update\",\"performance_appraisal_delete\",\"performance_appraisal_list\",\"performance_appraisal_view\",\"performance_goal_type_menu\",\"performance_goal_type_create\",\"performance_goal_type_store\",\"performance_goal_type_edit\",\"performance_goal_type_update\",\"performance_goal_type_delete\",\"performance_goal_type_list\",\"performance_goal_menu\",\"performance_goal_create\",\"performance_goal_store\",\"performance_goal_edit\",\"performance_goal_update\",\"performance_goal_delete\",\"performance_goal_view\",\"performance_goal_list\",\"performance_competence_type_menu\",\"performance_competence_type_create\",\"performance_competence_type_store\",\"performance_competence_type_edit\",\"performance_competence_type_update\",\"performance_competence_type_delete\",\"performance_competence_type_list\",\"performance_competence_menu\",\"performance_competence_create\",\"performance_competence_store\",\"performance_competence_edit\",\"performance_competence_update\",\"performance_competence_delete\",\"performance_competence_list\",\"attendance_report_read\",\"live_tracking_read\",\"report_menu\",\"leave_settings_read\",\"leave_settings_update\",\"ip_read\",\"ip_create\",\"ip_update\",\"ip_delete\",\"company_setup_menu\",\"company_setup_activation\",\"company_setup_activation_update\",\"company_setup_configuration\",\"company_setup_configuration_update\",\"company_setup_location\",\"company_settings_update\",\"location_create\",\"location_store\",\"location_edit\",\"location_update\",\"location_delete\",\"locationApi\",\"claim_read\",\"claim_create\",\"claim_update\",\"claim_delete\",\"visit_menu\",\"visit_read\",\"visit_update\",\"visit_view\",\"app_settings_menu\",\"app_settings_update\",\"web_setup_menu\",\"content_menu\",\"content_update\",\"content_delete\",\"menu\",\"menu_create\",\"menu_store\",\"menu_edit\",\"menu_update\",\"menu_delete\",\"service_menu\",\"service_read\",\"service_create\",\"service_update\",\"service_delete\",\"portfolio_menu\",\"portfolio_create\",\"portfolio_store\",\"portfolio_edit\",\"portfolio_update\",\"portfolio_delete\",\"contact_menu\",\"contact_create\",\"contact_update\",\"contact_delete\",\"language_menu\",\"language_create\",\"language_edit\",\"language_update\",\"language_delete\",\"make_default\",\"setup_language\",\"team_member_menu\",\"team_member_read\",\"team_member_create\",\"team_member_store\",\"team_member_edit\",\"team_member_update\",\"team_member_delete\",\"support_menu\",\"support_read\",\"support_create\",\"support_reply\",\"support_delete\",\"model_read\",\"model_create\",\"model_update\",\"model_delete\",\"brand_read\",\"brand_create\",\"brand_update\",\"brand_delete\",\"machine_read\",\"machine_create\",\"machine_update\",\"machine_delete\",\"package_read\",\"package_create\",\"package_update\",\"package_delete\",\"institution_read\",\"institution_create\",\"institution_update\",\"institution_delete\",\"addons_menu\",\"employee_document_type_read\",\"employee_document_type_create\",\"employee_document_type_update\",\"employee_document_type_delete\",\"employee_document_read\",\"employee_document_create\",\"employee_document_download\",\"subscription_read\",\"subscription_upgrade\"]', NULL, 1, 1, 1, 1, 1, '2024-06-25 06:58:18', '2024-10-02 04:27:33', NULL),
(3, 'hr', 'hr', '\"[\\\"team_menu\\\",\\\"team_list\\\",\\\"team_create\\\",\\\"team_update\\\",\\\"team_edit\\\",\\\"team_delete\\\",\\\"team_member_view\\\",\\\"team_member_create\\\",\\\"team_member_edit\\\",\\\"team_member_delete\\\",\\\"team_member_assign\\\",\\\"team_member_unassign\\\",\\\"dashboard\\\",\\\"designation_read\\\",\\\"designation_create\\\",\\\"designation_update\\\",\\\"designation_delete\\\",\\\"shift_read\\\",\\\"shift_create\\\",\\\"shift_update\\\",\\\"shift_delete\\\",\\\"department_read\\\",\\\"department_create\\\",\\\"department_update\\\",\\\"department_delete\\\",\\\"user_menu\\\",\\\"user_read\\\",\\\"profile_view\\\",\\\"user_create\\\",\\\"user_edit\\\",\\\"user_update\\\",\\\"user_delete\\\",\\\"user_banned\\\",\\\"user_unbanned\\\",\\\"make_hr\\\",\\\"user_permission\\\",\\\"profile_image_view\\\",\\\"user_device_list\\\",\\\"reset_device\\\",\\\"role_read\\\",\\\"role_create\\\",\\\"role_update\\\",\\\"role_delete\\\",\\\"branch_read\\\",\\\"branch_create\\\",\\\"branch_update\\\",\\\"branch_delete\\\",\\\"leave_menu\\\",\\\"leave_type_read\\\",\\\"leave_type_create\\\",\\\"leave_type_update\\\",\\\"leave_type_delete\\\",\\\"leave_assign_read\\\",\\\"leave_assign_create\\\",\\\"leave_assign_update\\\",\\\"leave_assign_delete\\\",\\\"leave_request_read\\\",\\\"leave_request_create\\\",\\\"leave_request_approve\\\",\\\"leave_request_reject\\\",\\\"leave_request_delete\\\",\\\"appointment_read\\\",\\\"appointment_menu\\\",\\\"appointment_create\\\",\\\"appointment_approve\\\",\\\"appointment_reject\\\",\\\"appointment_delete\\\",\\\"weekend_read\\\",\\\"weekend_update\\\",\\\"attendance_update\\\",\\\"holiday_read\\\",\\\"holiday_create\\\",\\\"holiday_update\\\",\\\"holiday_delete\\\",\\\"schedule_read\\\",\\\"schedule_create\\\",\\\"schedule_update\\\",\\\"schedule_delete\\\",\\\"attendance_menu\\\",\\\"attendance_read\\\",\\\"attendance_create\\\",\\\"attendance_update\\\",\\\"attendance_delete\\\",\\\"leave_settings_read\\\",\\\"leave_settings_update\\\",\\\"company_settings_read\\\",\\\"company_settings_update\\\",\\\"locationApi\\\",\\\"company_setup_menu\\\",\\\"company_setup_activation\\\",\\\"company_setup_configuration\\\",\\\"company_setup_ip_whitelist\\\",\\\"company_setup_location\\\",\\\"ip_read\\\",\\\"ip_create\\\",\\\"ip_update\\\",\\\"ip_delete\\\",\\\"attendance_report_read\\\",\\\"live_tracking_read\\\",\\\"report_menu\\\",\\\"report\\\",\\\"claim_read\\\",\\\"claim_create\\\",\\\"claim_update\\\",\\\"claim_delete\\\",\\\"payment_read\\\",\\\"payment_create\\\",\\\"payment_update\\\",\\\"payment_delete\\\",\\\"visit_menu\\\",\\\"visit_read\\\",\\\"visit_view\\\",\\\"visit_update\\\",\\\"payroll_menu\\\",\\\"list_payroll_item\\\",\\\"create_payroll_item\\\",\\\"store_payroll_item\\\",\\\"update_payroll_item\\\",\\\"delete_payroll_item\\\",\\\"view_payroll_item\\\",\\\"payroll_item_menu\\\",\\\"list_payroll_set\\\",\\\"create_payroll_set\\\",\\\"store_payroll_set\\\",\\\"update_payroll_set\\\",\\\"delete_payroll_set\\\",\\\"view_payroll_set\\\",\\\"edit_payroll_set\\\",\\\"payroll_set_menu\\\",\\\"advance_salaries_menu\\\",\\\"advance_salaries_create\\\",\\\"advance_salaries_store\\\",\\\"advance_salaries_edit\\\",\\\"advance_salaries_update\\\",\\\"advance_salaries_delete\\\",\\\"advance_salaries_view\\\",\\\"advance_salaries_approve\\\",\\\"advance_salaries_list\\\",\\\"advance_salaries_pay\\\",\\\"advance_salaries_invoice\\\",\\\"advance_salaries_search\\\",\\\"payslip_menu\\\",\\\"salary_generate\\\",\\\"salary_view\\\",\\\"salary_delete\\\",\\\"salary_edit\\\",\\\"salary_update\\\",\\\"salary_payment\\\",\\\"payslip_list\\\",\\\"advance_type_menu\\\",\\\"advance_type_create\\\",\\\"advance_type_store\\\",\\\"advance_type_edit\\\",\\\"advance_type_update\\\",\\\"advance_type_delete\\\",\\\"advance_type_view\\\",\\\"advance_type_list\\\",\\\"salary_menu\\\",\\\"salary_store\\\",\\\"salary_edit\\\",\\\"salary_update\\\",\\\"salary_delete\\\",\\\"salary_view\\\",\\\"salary_list\\\",\\\"salary_search\\\",\\\"salary_pay\\\",\\\"salary_invoice\\\",\\\"salary_approve\\\",\\\"salary_generate\\\",\\\"salary_calculate\\\",\\\"account_menu\\\",\\\"account_create\\\",\\\"account_store\\\",\\\"account_edit\\\",\\\"account_update\\\",\\\"account_delete\\\",\\\"account_view\\\",\\\"account_list\\\",\\\"account_search\\\",\\\"deposit_menu\\\",\\\"deposit_create\\\",\\\"deposit_store\\\",\\\"deposit_edit\\\",\\\"deposit_update\\\",\\\"deposit_delete\\\",\\\"deposit_list\\\",\\\"expense_menu\\\",\\\"expense_create\\\",\\\"expense_store\\\",\\\"expense_edit\\\",\\\"expense_update\\\",\\\"expense_delete\\\",\\\"expense_list\\\",\\\"expense_view\\\",\\\"expense_approve\\\",\\\"expense_invoice\\\",\\\"expense_pay\\\",\\\"transaction_menu\\\",\\\"transaction_create\\\",\\\"transaction_store\\\",\\\"transaction_edit\\\",\\\"transaction_update\\\",\\\"transaction_delete\\\",\\\"transaction_view\\\",\\\"transaction_list\\\",\\\"deposit_category_menu\\\",\\\"deposit_category_create\\\",\\\"deposit_category_store\\\",\\\"deposit_category_edit\\\",\\\"deposit_category_update\\\",\\\"deposit_category_delete\\\",\\\"deposit_category_list\\\",\\\"payment_method_menu\\\",\\\"payment_method_create\\\",\\\"payment_method_store\\\",\\\"payment_method_edit\\\",\\\"payment_method_update\\\",\\\"payment_method_delete\\\",\\\"payment_method_list\\\",\\\"travel_menu\\\",\\\"travel_create\\\",\\\"travel_store\\\",\\\"travel_edit\\\",\\\"travel_update\\\",\\\"travel_delete\\\",\\\"travel_list\\\",\\\"travel_view\\\",\\\"travel_approve\\\",\\\"travel_invoice\\\",\\\"travel_pay\\\",\\\"meeting_menu\\\",\\\"meeting_create\\\",\\\"meeting_store\\\",\\\"meeting_edit\\\",\\\"meeting_update\\\",\\\"meeting_delete\\\",\\\"meeting_list\\\",\\\"meeting_view\\\",\\\"task_menu\\\",\\\"task.create\\\",\\\"task.index\\\",\\\"task.view\\\",\\\"task.edit\\\",\\\"conference_create\\\",\\\"conference_read\\\",\\\"conference_store\\\",\\\"conference_update\\\",\\\"conference_delete\\\",\\\"conference_join\\\",\\\"announcement_menu\\\",\\\"notice_menu\\\",\\\"notice_list\\\",\\\"notice_create\\\",\\\"notice_update\\\",\\\"notice_edit\\\",\\\"notice_delete\\\",\\\"send_sms_menu\\\",\\\"send_sms_list\\\",\\\"send_sms_create\\\",\\\"send_sms_update\\\",\\\"send_sms_edit\\\",\\\"send_sms_delete\\\",\\\"send_email_menu\\\",\\\"send_email_list\\\",\\\"send_email_create\\\",\\\"send_email_update\\\",\\\"send_email_edit\\\",\\\"send_email_delete\\\",\\\"send_notification_menu\\\",\\\"send_notification_list\\\",\\\"send_notification_create\\\",\\\"send_notification_update\\\",\\\"send_notification_edit\\\",\\\"send_notification_delete\\\",\\\"announcement_menu\\\",\\\"notice_menu\\\",\\\"notice_list\\\",\\\"notice_create\\\",\\\"notice_update\\\",\\\"notice_edit\\\",\\\"notice_delete\\\",\\\"send_sms_menu\\\",\\\"send_sms_list\\\",\\\"send_sms_create\\\",\\\"send_sms_update\\\",\\\"send_sms_edit\\\",\\\"send_sms_delete\\\",\\\"send_email_menu\\\",\\\"send_email_list\\\",\\\"send_email_create\\\",\\\"send_email_update\\\",\\\"send_email_edit\\\",\\\"send_email_delete\\\",\\\"send_notification_menu\\\",\\\"send_notification_list\\\",\\\"send_notification_create\\\",\\\"send_notification_update\\\",\\\"send_notification_edit\\\",\\\"send_notification_delete\\\",\\\"support_menu\\\",\\\"support_read\\\",\\\"support_create\\\",\\\"support_reply\\\",\\\"support_delete\\\"]\"', NULL, 1, 1, 1, 4, 4, '2024-06-25 06:58:18', '2024-10-02 04:18:15', '2024-10-02 04:18:15'),
(4, 'Nh&acirc;n vi&ecirc;n', 'staff', '[\"designation_read\",\"department_read\",\"user_read\",\"profile_view\",\"user_create\",\"user_edit\",\"user_update\",\"user_menu\",\"profile_image_view\",\"user_device_list\",\"role_read\",\"leave_type_read\",\"leave_menu\",\"leave_assign_read\",\"leave_assign_create\",\"leave_assign_update\",\"leave_assign_delete\",\"daily_leave_read\",\"leave_request_read\",\"leave_request_update\",\"leave_request_create\",\"weekend_read\",\"weekend_update\",\"holiday_read\",\"schedule_read\",\"schedule_create\",\"schedule_update\",\"schedule_delete\",\"attendance_read\",\"attendance_update\",\"attendance_menu\",\"shift_read\",\"account_menu\",\"account_view\",\"account_list\",\"account_search\",\"task_menu\",\"task_create\",\"task_edit\",\"task_update\",\"task_delete\",\"task_list\",\"task_activity_view\",\"task_assign_view\",\"task_complete\",\"client_menu\",\"client_create\",\"client_store\",\"client_edit\",\"client_update\",\"client_delete\",\"client_view\",\"client_list\",\"task_discussion_create\",\"task_discussion_store\",\"task_discussion_edit\",\"task_discussion_update\",\"task_discussion_delete\",\"task_discussion_view\",\"task_discussion_list\",\"task_discussion_comment\",\"task_discussion_reply\",\"task_file_create\",\"task_file_store\",\"task_file_edit\",\"task_file_update\",\"task_file_delete\",\"task_file_view\",\"task_file_list\",\"task_file_download\",\"task_file_comment\",\"task_file_reply\",\"task_notes_create\",\"task_notes_store\",\"task_notes_edit\",\"task_notes_update\",\"task_notes_delete\",\"task_notes_list\",\"task_files_comment\",\"travel_type_menu\",\"travel_type_create\",\"travel_type_store\",\"travel_type_edit\",\"travel_type_update\",\"travel_type_delete\",\"travel_type_list\",\"travel_menu\",\"travel_create\",\"travel_store\",\"travel_edit\",\"travel_update\",\"travel_view\",\"travel_list\",\"travel_approve\",\"meeting_menu\",\"meeting_create\",\"meeting_store\",\"meeting_edit\",\"meeting_update\",\"meeting_view\",\"meeting_list\",\"appointment_menu\",\"appointment_read\",\"appointment_create\",\"performance_menu\",\"performance_settings\",\"attendance_report_read\",\"report_menu\",\"leave_settings_read\",\"ip_read\",\"location_create\",\"location_update\",\"location_delete\",\"claim_read\",\"claim_create\",\"claim_update\",\"claim_delete\",\"visit_menu\",\"visit_read\",\"visit_update\",\"visit_view\",\"team_member_menu\",\"team_member_read\",\"team_member_create\",\"team_member_store\",\"team_member_edit\",\"team_member_update\",\"team_member_delete\"]', NULL, 1, 1, 1, 1, 1, '2024-06-25 06:58:18', '2024-10-03 01:32:56', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `role_users`
--

CREATE TABLE `role_users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `company_id` bigint(20) UNSIGNED DEFAULT '1',
  `branch_id` bigint(20) UNSIGNED DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_users`
--

INSERT INTO `role_users` (`id`, `user_id`, `role_id`, `created_at`, `updated_at`, `company_id`, `branch_id`) VALUES
(1, 4, 2, '2024-10-02 05:36:55', '2024-10-02 05:36:55', 1, 1),
(2, 5, 4, '2024-10-03 02:08:33', '2024-10-03 02:08:33', 1, 1),
(3, 6, 2, '2024-10-03 02:35:03', '2024-10-03 02:35:03', 1, 1),
(4, 7, 4, '2024-10-03 02:39:16', '2024-10-03 02:39:16', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `salary_generates`
--

CREATE TABLE `salary_generates` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '1',
  `date` date NOT NULL,
  `amount` double(16,2) NOT NULL,
  `due_amount` double(16,2) DEFAULT NULL,
  `gross_salary` double(16,2) NOT NULL,
  `status_id` bigint(20) UNSIGNED NOT NULL DEFAULT '9',
  `created_by` bigint(20) UNSIGNED NOT NULL DEFAULT '1',
  `updated_by` bigint(20) UNSIGNED NOT NULL DEFAULT '1',
  `total_working_day` int(11) DEFAULT NULL,
  `present` int(11) DEFAULT NULL,
  `absent` int(11) DEFAULT NULL,
  `late` int(11) DEFAULT NULL,
  `left_early` int(11) DEFAULT NULL,
  `is_calculated` tinyint(4) NOT NULL DEFAULT '0',
  `adjust` double(16,2) DEFAULT NULL,
  `absent_amount` double(16,2) DEFAULT NULL,
  `advance_amount` double(16,2) DEFAULT NULL,
  `advance_details` json DEFAULT NULL,
  `allowance_amount` double(16,2) DEFAULT NULL,
  `allowance_details` json DEFAULT NULL,
  `deduction_amount` double(16,2) DEFAULT NULL,
  `deduction_details` json DEFAULT NULL,
  `net_salary` double(16,2) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `company_id` bigint(20) UNSIGNED DEFAULT '1',
  `branch_id` bigint(20) UNSIGNED DEFAULT '1',
  `department_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `salary_payment_logs`
--

CREATE TABLE `salary_payment_logs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `amount` double(16,2) NOT NULL,
  `due_amount` double(16,2) DEFAULT NULL,
  `salary_generate_id` bigint(20) UNSIGNED DEFAULT NULL,
  `transaction_id` bigint(20) UNSIGNED DEFAULT NULL,
  `payment_method_id` bigint(20) UNSIGNED DEFAULT NULL,
  `paid_by` bigint(20) UNSIGNED NOT NULL DEFAULT '1',
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_by` bigint(20) UNSIGNED NOT NULL DEFAULT '1',
  `updated_by` bigint(20) UNSIGNED NOT NULL DEFAULT '1',
  `payment_note` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `company_id` bigint(20) UNSIGNED DEFAULT '1',
  `branch_id` bigint(20) UNSIGNED DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `salary_setups`
--

CREATE TABLE `salary_setups` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '1',
  `gross_salary` double(16,2) NOT NULL,
  `status_id` bigint(20) UNSIGNED NOT NULL DEFAULT '1',
  `created_by` bigint(20) UNSIGNED NOT NULL DEFAULT '1',
  `updated_by` bigint(20) UNSIGNED NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `company_id` bigint(20) UNSIGNED DEFAULT '1',
  `branch_id` bigint(20) UNSIGNED DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `salary_setup_details`
--

CREATE TABLE `salary_setup_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '1',
  `salary_setup_id` bigint(20) UNSIGNED NOT NULL DEFAULT '1',
  `commission_id` bigint(20) UNSIGNED NOT NULL DEFAULT '1',
  `amount` double(16,2) NOT NULL,
  `amount_type` tinyint(4) NOT NULL DEFAULT '1' COMMENT '1=fixed, 2=percentage',
  `status_id` bigint(20) UNSIGNED NOT NULL DEFAULT '1',
  `created_by` bigint(20) UNSIGNED NOT NULL DEFAULT '1',
  `updated_by` bigint(20) UNSIGNED NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `company_id` bigint(20) UNSIGNED DEFAULT '1',
  `branch_id` bigint(20) UNSIGNED DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `salary_sheet_reports`
--

CREATE TABLE `salary_sheet_reports` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `sl_no` int(11) NOT NULL,
  `name_of_the_employee` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `employee_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `designation` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `w_days` int(11) NOT NULL,
  `present` int(11) NOT NULL,
  `absent` int(11) NOT NULL,
  `tardy` int(11) NOT NULL,
  `tardy_days` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gross_salary` double NOT NULL,
  `basic_50` double NOT NULL,
  `hra_40` double NOT NULL,
  `medical_10` double NOT NULL,
  `performance_incentive` double NOT NULL,
  `absent_amount` double NOT NULL,
  `advance` double NOT NULL,
  `tardy_amount` double NOT NULL,
  `incentive` double NOT NULL,
  `net_salary` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `company_id` bigint(20) UNSIGNED DEFAULT '1',
  `branch_id` bigint(20) UNSIGNED DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `attachment` bigint(20) UNSIGNED DEFAULT NULL,
  `status_id` bigint(20) UNSIGNED NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `company_id` bigint(20) UNSIGNED DEFAULT '1',
  `branch_id` bigint(20) UNSIGNED DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `image_id` bigint(20) DEFAULT NULL,
  `context` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'app',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `company_id` bigint(20) UNSIGNED DEFAULT '1',
  `branch_id` bigint(20) UNSIGNED DEFAULT '1',
  `status_id` bigint(20) UNSIGNED DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `name`, `value`, `image_id`, `context`, `created_at`, `updated_at`, `company_id`, `branch_id`, `status_id`) VALUES
(1, 'company_name', 'Trung tâm chuyển đổi số BD', NULL, 'app', '2024-06-25 06:58:18', '2024-06-25 06:58:18', 1, 1, 1),
(2, 'company_domain', 'hrm.test', NULL, 'app', '2024-06-25 06:58:18', '2024-06-25 06:58:18', 1, 1, 1),
(3, 'company_logo_backend', 'uploads/settings/logo/logo-white.png', NULL, 'app', '2024-06-25 06:58:18', '2024-06-25 06:58:18', 1, 1, 1),
(4, 'company_logo_frontend', '51', NULL, 'app', '2024-06-25 06:58:18', '2024-06-25 06:58:18', 1, 1, 1),
(5, 'company_icon', '52', NULL, 'app', '2024-06-25 06:58:18', '2024-06-25 06:58:18', 1, 1, 1),
(6, 'android_url', '', NULL, 'app', '2024-06-25 06:58:18', '2024-06-25 06:58:18', 1, 1, 1),
(7, 'android_icon', 'assets/favicon.png', NULL, 'app', '2024-06-25 06:58:18', '2024-06-25 06:58:18', 1, 1, 1),
(8, 'ios_url', '', NULL, 'app', '2024-06-25 06:58:18', '2024-06-25 06:58:18', 1, 1, 1),
(9, 'ios_icon', 'assets/favicon.png', NULL, 'app', '2024-06-25 06:58:18', '2024-06-25 06:58:18', 1, 1, 1),
(10, 'language', 'en', NULL, 'app', '2024-06-25 06:58:18', '2024-06-25 06:58:18', 1, 1, 1),
(11, 'site_under_maintenance', '0', NULL, 'app', '2024-06-25 06:58:18', '2024-06-25 06:58:18', 1, 1, 1),
(12, 'company_description', 'Tải app tại đây', NULL, 'app', '2024-06-25 06:58:18', '2024-06-25 06:58:18', 1, 1, 1),
(13, 'default_theme', 'app_theme_1', NULL, 'app', '2024-06-25 06:58:18', '2024-06-25 06:58:18', 1, 1, 1),
(14, 'app_theme_1', 'static/app-screen/screen-1.png', NULL, 'app', '2024-06-25 06:58:18', '2024-06-25 06:58:18', 1, 1, 1),
(15, 'app_theme_2', 'static/app-screen/screen-2.png', NULL, 'app', '2024-06-25 06:58:18', '2024-06-25 06:58:18', 1, 1, 1),
(16, 'app_theme_3', 'static/app-screen/screen-3.png', NULL, 'app', '2024-06-25 06:58:18', '2024-06-25 06:58:18', 1, 1, 1),
(17, 'email', 'info@onesttech.com', NULL, 'app', '2024-06-25 06:58:18', '2024-06-25 06:58:18', 1, 1, 1),
(18, 'phone', '+62 (0) 000 0000 00', NULL, 'app', '2024-06-25 06:58:18', '2024-06-25 06:58:18', 1, 1, 1),
(19, 'address', 'House #148, Road #13/B, Block-E, Banani, Dhaka, Bangladesh', NULL, 'app', '2024-06-25 06:58:18', '2024-06-25 06:58:18', 1, 1, 1),
(20, 'twitter_link', 'https://twitter.com', NULL, 'app', '2024-06-25 06:58:18', '2024-06-25 06:58:18', 1, 1, 1),
(21, 'linkedin_link', 'https://linkedin.com', NULL, 'app', '2024-06-25 06:58:18', '2024-06-25 06:58:18', 1, 1, 1),
(22, 'facebook_link', 'https://facebook.com', NULL, 'app', '2024-06-25 06:58:18', '2024-06-25 06:58:18', 1, 1, 1),
(23, 'instagram_link', 'https://instagram.com', NULL, 'app', '2024-06-25 06:58:18', '2024-06-25 06:58:18', 1, 1, 1),
(24, 'dribbble_link', 'https://dribbble.com', NULL, 'app', '2024-06-25 06:58:18', '2024-06-25 06:58:18', 1, 1, 1),
(25, 'behance_link', 'https://behance.com', NULL, 'app', '2024-06-25 06:58:18', '2024-06-25 06:58:18', 1, 1, 1),
(26, 'pinterest_link', 'https://pinterest.com', NULL, 'app', '2024-06-25 06:58:18', '2024-06-25 06:58:18', 1, 1, 1),
(27, 'contact_title', 'Send A Message To Get Your Free Quote', NULL, 'app', '2024-06-25 06:58:18', '2024-06-25 06:58:18', 1, 1, 1),
(28, 'contact_short_description', 'Lorem Ipsum Dolor Sit Amet Consectetur. Est Commodo Pharetra Ac Netus Enim A Eget. Tristique Malesuada Donec Condimentum Mi Quis Porttitor Non Vitae Ultrices.', NULL, 'app', '2024-06-25 06:58:18', '2024-06-25 06:58:18', 1, 1, 1),
(29, 'mail_mailer', 'smtp', NULL, 'app', '2024-06-25 06:58:18', '2024-10-03 14:53:09', 1, 1, 1),
(30, 'mail_host', 'smtp.gmail.com', NULL, 'app', '2024-06-25 06:58:18', '2024-10-03 14:53:09', 1, 1, 1),
(31, 'mail_port', '587', NULL, 'app', '2024-06-25 06:58:18', '2024-10-03 14:53:09', 1, 1, 1),
(32, 'mail_username', '2024801030014@student.tdmu.edu.vn', NULL, 'app', '2024-06-25 06:58:18', '2024-10-03 14:53:09', 1, 1, 1),
(33, 'mail_password', 'hxco zanp dnsv vpcy', NULL, 'app', '2024-06-25 06:58:18', '2024-10-03 14:53:09', 1, 1, 1),
(34, 'mail_from_address', '2024801030014@student.tdmu.edu.vn', NULL, 'app', '2024-06-25 06:58:18', '2024-10-03 14:53:09', 1, 1, 1),
(35, 'mail_encryption', 'tls', NULL, 'app', '2024-06-25 06:58:18', '2024-10-03 14:53:09', 1, 1, 1),
(36, 'mail_from_name', 'Trung tâm chuyển đổi số Bình Dương', NULL, 'app', '2024-06-25 06:58:18', '2024-10-03 14:53:09', 1, 1, 1),
(37, 'backend_image', '50', NULL, 'app', '2024-10-02 02:54:59', '2024-10-02 02:54:59', 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `shifts`
--

CREATE TABLE `shifts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `company_id` bigint(20) UNSIGNED DEFAULT '1',
  `branch_id` bigint(20) UNSIGNED DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `shifts`
--

INSERT INTO `shifts` (`id`, `name`, `status_id`, `created_at`, `updated_at`, `company_id`, `branch_id`) VALUES
(1, 'Sáng', 1, '2024-06-25 06:58:18', '2024-10-02 14:35:53', 1, 1),
(2, 'Chiều', 1, '2024-06-25 06:58:18', '2024-10-02 14:36:05', 1, 1),
(3, 'Tối', 1, '2024-06-25 06:58:18', '2024-10-02 14:36:14', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `sms_logs`
--

CREATE TABLE `sms_logs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `receiver_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message` longtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `company_id` bigint(20) UNSIGNED DEFAULT '1',
  `branch_id` bigint(20) UNSIGNED DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `social_identities`
--

CREATE TABLE `social_identities` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `provider_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `company_id` bigint(20) UNSIGNED DEFAULT '1',
  `branch_id` bigint(20) UNSIGNED DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `statuses`
--

CREATE TABLE `statuses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'hare name=status situation',
  `class` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'hare class=what type of class name property like success,danger,info,purple',
  `color_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `statuses`
--

INSERT INTO `statuses` (`id`, `name`, `class`, `color_code`, `created_at`, `updated_at`) VALUES
(1, 'Active', 'success', '449d44', NULL, NULL),
(2, 'Pending', 'warning', 'ec971f', NULL, NULL),
(3, 'Suspended', 'danger', 'c9302c', NULL, NULL),
(4, 'Inactive', 'danger', 'c9302c', NULL, NULL),
(5, 'Approve', 'success', '449d44', NULL, NULL),
(6, 'Reject', 'danger', 'c9302c', NULL, NULL),
(7, 'Cancel', 'danger', 'c9302c', NULL, NULL),
(8, 'Paid', 'success', '449d44', NULL, NULL),
(9, 'Unpaid', 'danger', 'c9302c', NULL, NULL),
(10, 'Claimed', 'primary', '337ab7', NULL, NULL),
(11, 'Not Claimed', 'danger', 'c9302c', NULL, NULL),
(12, 'Open', 'danger', 'ffFD815B', NULL, NULL),
(13, 'Close', 'success', '449d44', NULL, NULL),
(14, 'High', 'danger', 'c9302c', NULL, NULL),
(15, 'Medium', 'primary', '337ab7', NULL, NULL),
(16, 'Low', 'warning', 'ec971f', NULL, NULL),
(17, 'Referred', 'warning', 'ec971f', NULL, NULL),
(18, 'Debit', 'danger', 'ffFD815B', NULL, NULL),
(19, 'Credit', 'success', '449d44', NULL, NULL),
(20, 'Partially Paid', 'info', '9DBBCE', NULL, NULL),
(21, 'Partially Returned', 'warning', 'ec971f', NULL, NULL),
(22, 'No', 'danger', 'c9302c', NULL, NULL),
(23, 'Returned', 'success', '449d44', NULL, NULL),
(24, 'Not Started', 'warning', 'ec971f', NULL, NULL),
(25, 'On Hold', 'info', '9DBBCE', NULL, NULL),
(26, 'In Progress', 'main', '7F58FE', NULL, NULL),
(27, 'Completed', 'success', '449d44', NULL, NULL),
(28, 'Cancelled', 'danger', 'c9302c', NULL, NULL),
(29, 'Urgent', 'danger', 'c9302c', NULL, NULL),
(30, 'High', 'danger', 'c9302c', NULL, NULL),
(31, 'Medium', 'primary', '337ab7', NULL, NULL),
(32, 'Low', 'warning', 'ec971f', NULL, NULL),
(33, 'Yes', 'primary', '337ab7', NULL, NULL),
(34, 'Terminated', 'danger', 'c9302c', NULL, NULL),
(35, 'Resign', 'danger', 'c9302c', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `subscription_plans`
--

CREATE TABLE `subscription_plans` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `identifier` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `stripe_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status_id` bigint(20) UNSIGNED NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `support_tickets`
--

CREATE TABLE `support_tickets` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `date` date DEFAULT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `assigned_id` bigint(20) UNSIGNED DEFAULT NULL,
  `attachment_file_id` bigint(20) UNSIGNED DEFAULT NULL,
  `image_url` text COLLATE utf8mb4_unicode_ci,
  `subject` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci,
  `status_id` bigint(20) UNSIGNED NOT NULL DEFAULT '1',
  `type_id` bigint(20) UNSIGNED NOT NULL DEFAULT '12' COMMENT '12 = open , 13 = close',
  `priority_id` bigint(20) UNSIGNED NOT NULL DEFAULT '14' COMMENT '14 = high , 15 = medium , 16 = low',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `company_id` bigint(20) UNSIGNED DEFAULT '1',
  `branch_id` bigint(20) UNSIGNED DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tasks`
--

CREATE TABLE `tasks` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` date DEFAULT NULL,
  `progress` int(11) DEFAULT '0',
  `status_id` bigint(20) UNSIGNED NOT NULL DEFAULT '24',
  `priority` bigint(20) UNSIGNED NOT NULL DEFAULT '24',
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `created_by` bigint(20) UNSIGNED NOT NULL DEFAULT '1',
  `notify_all_users` tinyint(4) NOT NULL DEFAULT '0' COMMENT '0=no,1=yes',
  `notify_all_users_email` tinyint(4) NOT NULL DEFAULT '0' COMMENT '0=no,1=yes',
  `type` tinyint(4) NOT NULL DEFAULT '0' COMMENT '0=Regular , 1= Project',
  `project_id` bigint(20) UNSIGNED DEFAULT NULL,
  `reminder` tinyint(4) NOT NULL DEFAULT '0' COMMENT '0=no,1=yes',
  `goal_id` bigint(20) UNSIGNED DEFAULT NULL,
  `service_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `company_id` bigint(20) UNSIGNED DEFAULT '1',
  `branch_id` bigint(20) UNSIGNED DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `task_activities`
--

CREATE TABLE `task_activities` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `task_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `last_activity` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `company_id` bigint(20) UNSIGNED DEFAULT '1',
  `branch_id` bigint(20) UNSIGNED DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `task_discussions`
--

CREATE TABLE `task_discussions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `subject` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `task_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `show_to_customer` bigint(20) UNSIGNED NOT NULL DEFAULT '22',
  `status_id` bigint(20) UNSIGNED NOT NULL DEFAULT '1',
  `file_id` bigint(20) UNSIGNED DEFAULT NULL COMMENT 'this will be attachment file',
  `last_activity` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `company_id` bigint(20) UNSIGNED DEFAULT '1',
  `branch_id` bigint(20) UNSIGNED DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `task_discussion_comments`
--

CREATE TABLE `task_discussion_comments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `show_to_customer` tinyint(4) NOT NULL DEFAULT '1' COMMENT '0=no,1=yes',
  `task_discussion_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `attachment` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `company_id` bigint(20) UNSIGNED DEFAULT '1',
  `branch_id` bigint(20) UNSIGNED DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `task_files`
--

CREATE TABLE `task_files` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `subject` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `show_to_customer` bigint(20) UNSIGNED NOT NULL DEFAULT '22',
  `task_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `attachment` bigint(20) UNSIGNED DEFAULT NULL,
  `status_id` bigint(20) UNSIGNED NOT NULL DEFAULT '1',
  `last_activity` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `company_id` bigint(20) UNSIGNED DEFAULT '1',
  `branch_id` bigint(20) UNSIGNED DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `task_file_comments`
--

CREATE TABLE `task_file_comments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `show_to_customer` tinyint(4) NOT NULL DEFAULT '1' COMMENT '0=no,1=yes',
  `task_file_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `attachment` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `company_id` bigint(20) UNSIGNED DEFAULT '1',
  `branch_id` bigint(20) UNSIGNED DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `task_followers`
--

CREATE TABLE `task_followers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `task_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `added_by` bigint(20) UNSIGNED NOT NULL,
  `status_id` bigint(20) UNSIGNED NOT NULL DEFAULT '1',
  `is_creator` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `company_id` bigint(20) UNSIGNED DEFAULT '1',
  `branch_id` bigint(20) UNSIGNED DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `task_members`
--

CREATE TABLE `task_members` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `task_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `added_by` bigint(20) UNSIGNED NOT NULL,
  `status_id` bigint(20) UNSIGNED NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `company_id` bigint(20) UNSIGNED DEFAULT '1',
  `branch_id` bigint(20) UNSIGNED DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `task_notes`
--

CREATE TABLE `task_notes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `show_to_customer` bigint(20) UNSIGNED NOT NULL DEFAULT '22',
  `task_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `status_id` bigint(20) UNSIGNED NOT NULL DEFAULT '1',
  `last_activity` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `company_id` bigint(20) UNSIGNED DEFAULT '1',
  `branch_id` bigint(20) UNSIGNED DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `teams`
--

CREATE TABLE `teams` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `attachment_file_id` bigint(20) UNSIGNED DEFAULT NULL,
  `status_id` bigint(20) UNSIGNED NOT NULL DEFAULT '1',
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `team_lead_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `company_id` bigint(20) UNSIGNED DEFAULT '1',
  `branch_id` bigint(20) UNSIGNED DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `team_members`
--

CREATE TABLE `team_members` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `team_id` bigint(20) UNSIGNED DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `expire_date` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `company_id` bigint(20) UNSIGNED DEFAULT '1',
  `branch_id` bigint(20) UNSIGNED DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tenants`
--

CREATE TABLE `tenants` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `data` json DEFAULT NULL,
  `company_id` bigint(20) UNSIGNED DEFAULT '1',
  `branch_id` bigint(20) UNSIGNED DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tenant_subscriptions`
--

CREATE TABLE `tenant_subscriptions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `subscription_id_in_main_company` bigint(20) UNSIGNED DEFAULT NULL,
  `invoice_no` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `plan_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` decimal(8,2) DEFAULT '0.00',
  `payment_gateway` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `trx_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `offline_payment` json DEFAULT NULL,
  `employee_limit` bigint(20) UNSIGNED DEFAULT '0',
  `is_employee_limit` tinyint(4) NOT NULL DEFAULT '1' COMMENT 'if 1 then employee create have some limit which is define in employee_limit column. If 0 then employee create have no limit.',
  `expiry_date` date DEFAULT NULL,
  `features` json NOT NULL,
  `features_key` json NOT NULL,
  `is_demo_checkout` tinyint(4) NOT NULL DEFAULT '0',
  `source` enum('Website','Admin') COLLATE utf8mb4_unicode_ci DEFAULT 'Website',
  `status_id` bigint(20) UNSIGNED NOT NULL DEFAULT '1' COMMENT '1=Active,2=Pending,4=inactive,5=Approve,6=Reject',
  `payment_status_id` bigint(20) UNSIGNED NOT NULL COMMENT '8=Paid,9=Unpaid',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tenant_user_impersonation_tokens`
--

CREATE TABLE `tenant_user_impersonation_tokens` (
  `token` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tenant_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `auth_guard` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `redirect_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `company_id` bigint(20) UNSIGNED DEFAULT '1',
  `branch_id` bigint(20) UNSIGNED DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `testimonials`
--

CREATE TABLE `testimonials` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `message` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status_id` bigint(20) UNSIGNED NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `company_id` bigint(20) UNSIGNED DEFAULT '1',
  `branch_id` bigint(20) UNSIGNED DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ticket_replies`
--

CREATE TABLE `ticket_replies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `support_ticket_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `message` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `company_id` bigint(20) UNSIGNED DEFAULT '1',
  `branch_id` bigint(20) UNSIGNED DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `time_zones`
--

CREATE TABLE `time_zones` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `time_zone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `active_status` tinyint(4) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `time_zones`
--

INSERT INTO `time_zones` (`id`, `code`, `time_zone`, `active_status`, `created_at`, `updated_at`) VALUES
(1, 'AD', 'Europe/Andorra', 1, '2024-06-25 06:58:15', '2024-06-25 06:58:15'),
(2, 'AE', 'Asia/Dubai', 1, '2024-06-25 06:58:15', '2024-06-25 06:58:15'),
(3, 'AF', 'Asia/Kabul', 1, '2024-06-25 06:58:15', '2024-06-25 06:58:15'),
(4, 'AG', 'America/Antigua', 1, '2024-06-25 06:58:15', '2024-06-25 06:58:15'),
(5, 'AI', 'America/Anguilla', 1, '2024-06-25 06:58:15', '2024-06-25 06:58:15'),
(6, 'AL', 'Europe/Tirane', 1, '2024-06-25 06:58:15', '2024-06-25 06:58:15'),
(7, 'AM', 'Asia/Yerevan', 1, '2024-06-25 06:58:15', '2024-06-25 06:58:15'),
(8, 'AO', 'Africa/Luanda', 1, '2024-06-25 06:58:15', '2024-06-25 06:58:15'),
(9, 'AQ', 'Antarctica/McMurdo', 1, '2024-06-25 06:58:15', '2024-06-25 06:58:15'),
(10, 'AQ', 'Antarctica/Casey', 1, '2024-06-25 06:58:15', '2024-06-25 06:58:15'),
(11, 'AQ', 'Antarctica/Davis', 1, '2024-06-25 06:58:15', '2024-06-25 06:58:15'),
(12, 'AQ', 'Antarctica/DumontDUrville', 1, '2024-06-25 06:58:15', '2024-06-25 06:58:15'),
(13, 'AQ', 'Antarctica/Mawson', 1, '2024-06-25 06:58:15', '2024-06-25 06:58:15'),
(14, 'AQ', 'Antarctica/Palmer', 1, '2024-06-25 06:58:15', '2024-06-25 06:58:15'),
(15, 'AQ', 'Antarctica/Rothera', 1, '2024-06-25 06:58:15', '2024-06-25 06:58:15'),
(16, 'AQ', 'Antarctica/Syowa', 1, '2024-06-25 06:58:15', '2024-06-25 06:58:15'),
(17, 'AQ', 'Antarctica/Troll', 1, '2024-06-25 06:58:15', '2024-06-25 06:58:15'),
(18, 'AQ', 'Antarctica/Vostok', 1, '2024-06-25 06:58:15', '2024-06-25 06:58:15'),
(19, 'AR', 'America/Argentina/Buenos_Aires', 1, '2024-06-25 06:58:15', '2024-06-25 06:58:15'),
(20, 'AR', 'America/Argentina/Cordoba', 1, '2024-06-25 06:58:15', '2024-06-25 06:58:15'),
(21, 'AR', 'America/Argentina/Salta', 1, '2024-06-25 06:58:15', '2024-06-25 06:58:15'),
(22, 'AR', 'America/Argentina/Jujuy', 1, '2024-06-25 06:58:15', '2024-06-25 06:58:15'),
(23, 'AR', 'America/Argentina/Tucuman', 1, '2024-06-25 06:58:15', '2024-06-25 06:58:15'),
(24, 'AR', 'America/Argentina/Catamarca', 1, '2024-06-25 06:58:15', '2024-06-25 06:58:15'),
(25, 'AR', 'America/Argentina/La_Rioja', 1, '2024-06-25 06:58:15', '2024-06-25 06:58:15'),
(26, 'AR', 'America/Argentina/San_Juan', 1, '2024-06-25 06:58:15', '2024-06-25 06:58:15'),
(27, 'AR', 'America/Argentina/Mendoza', 1, '2024-06-25 06:58:15', '2024-06-25 06:58:15'),
(28, 'AR', 'America/Argentina/San_Luis', 1, '2024-06-25 06:58:15', '2024-06-25 06:58:15'),
(29, 'AR', 'America/Argentina/Rio_Gallegos', 1, '2024-06-25 06:58:15', '2024-06-25 06:58:15'),
(30, 'AR', 'America/Argentina/Ushuaia', 1, '2024-06-25 06:58:15', '2024-06-25 06:58:15'),
(31, 'AS', 'Pacific/Pago_Pago', 1, '2024-06-25 06:58:15', '2024-06-25 06:58:15'),
(32, 'AT', 'Europe/Vienna', 1, '2024-06-25 06:58:15', '2024-06-25 06:58:15'),
(33, 'AU', 'Australia/Lord_Howe', 1, '2024-06-25 06:58:15', '2024-06-25 06:58:15'),
(34, 'AU', 'Antarctica/Macquarie', 1, '2024-06-25 06:58:15', '2024-06-25 06:58:15'),
(35, 'AU', 'Australia/Hobart', 1, '2024-06-25 06:58:15', '2024-06-25 06:58:15'),
(36, 'AU', 'Australia/Currie', 1, '2024-06-25 06:58:15', '2024-06-25 06:58:15'),
(37, 'AU', 'Australia/Melbourne', 1, '2024-06-25 06:58:15', '2024-06-25 06:58:15'),
(38, 'AU', 'Australia/Sydney', 1, '2024-06-25 06:58:15', '2024-06-25 06:58:15'),
(39, 'AU', 'Australia/Broken_Hill', 1, '2024-06-25 06:58:15', '2024-06-25 06:58:15'),
(40, 'AU', 'Australia/Brisbane', 1, '2024-06-25 06:58:15', '2024-06-25 06:58:15'),
(41, 'AU', 'Australia/Lindeman', 1, '2024-06-25 06:58:15', '2024-06-25 06:58:15'),
(42, 'AU', 'Australia/Adelaide', 1, '2024-06-25 06:58:15', '2024-06-25 06:58:15'),
(43, 'AU', 'Australia/Darwin', 1, '2024-06-25 06:58:15', '2024-06-25 06:58:15'),
(44, 'AU', 'Australia/Perth', 1, '2024-06-25 06:58:15', '2024-06-25 06:58:15'),
(45, 'AU', 'Australia/Eucla', 1, '2024-06-25 06:58:15', '2024-06-25 06:58:15'),
(46, 'AW', 'America/Aruba', 1, '2024-06-25 06:58:15', '2024-06-25 06:58:15'),
(47, 'AX', 'Europe/Mariehamn', 1, '2024-06-25 06:58:15', '2024-06-25 06:58:15'),
(48, 'AZ', 'Asia/Baku', 1, '2024-06-25 06:58:15', '2024-06-25 06:58:15'),
(49, 'BA', 'Europe/Sarajevo', 1, '2024-06-25 06:58:15', '2024-06-25 06:58:15'),
(50, 'BB', 'America/Barbados', 1, '2024-06-25 06:58:15', '2024-06-25 06:58:15'),
(51, 'BD', 'Asia/Dhaka', 1, '2024-06-25 06:58:15', '2024-06-25 06:58:15'),
(52, 'BE', 'Europe/Brussels', 1, '2024-06-25 06:58:15', '2024-06-25 06:58:15'),
(53, 'BF', 'Africa/Ouagadougou', 1, '2024-06-25 06:58:15', '2024-06-25 06:58:15'),
(54, 'BG', 'Europe/Sofia', 1, '2024-06-25 06:58:15', '2024-06-25 06:58:15'),
(55, 'BH', 'Asia/Bahrain', 1, '2024-06-25 06:58:15', '2024-06-25 06:58:15'),
(56, 'BI', 'Africa/Bujumbura', 1, '2024-06-25 06:58:15', '2024-06-25 06:58:15'),
(57, 'BJ', 'Africa/Porto-Novo', 1, '2024-06-25 06:58:15', '2024-06-25 06:58:15'),
(58, 'BL', 'America/St_Barthelemy', 1, '2024-06-25 06:58:15', '2024-06-25 06:58:15'),
(59, 'BM', 'Atlantic/Bermuda', 1, '2024-06-25 06:58:15', '2024-06-25 06:58:15'),
(60, 'BN', 'Asia/Brunei', 1, '2024-06-25 06:58:15', '2024-06-25 06:58:15'),
(61, 'BO', 'America/La_Paz', 1, '2024-06-25 06:58:15', '2024-06-25 06:58:15'),
(62, 'BQ', 'America/Kralendijk', 1, '2024-06-25 06:58:15', '2024-06-25 06:58:15'),
(63, 'BR', 'America/Noronha', 1, '2024-06-25 06:58:15', '2024-06-25 06:58:15'),
(64, 'BR', 'America/Belem', 1, '2024-06-25 06:58:15', '2024-06-25 06:58:15'),
(65, 'BR', 'America/Fortaleza', 1, '2024-06-25 06:58:15', '2024-06-25 06:58:15'),
(66, 'BR', 'America/Recife', 1, '2024-06-25 06:58:15', '2024-06-25 06:58:15'),
(67, 'BR', 'America/Araguaina', 1, '2024-06-25 06:58:15', '2024-06-25 06:58:15'),
(68, 'BR', 'America/Maceio', 1, '2024-06-25 06:58:15', '2024-06-25 06:58:15'),
(69, 'BR', 'America/Bahia', 1, '2024-06-25 06:58:15', '2024-06-25 06:58:15'),
(70, 'BR', 'America/Sao_Paulo', 1, '2024-06-25 06:58:15', '2024-06-25 06:58:15'),
(71, 'BR', 'America/Campo_Grande', 1, '2024-06-25 06:58:15', '2024-06-25 06:58:15'),
(72, 'BR', 'America/Cuiaba', 1, '2024-06-25 06:58:15', '2024-06-25 06:58:15'),
(73, 'BR', 'America/Santarem', 1, '2024-06-25 06:58:15', '2024-06-25 06:58:15'),
(74, 'BR', 'America/Porto_Velho', 1, '2024-06-25 06:58:15', '2024-06-25 06:58:15'),
(75, 'BR', 'America/Boa_Vista', 1, '2024-06-25 06:58:15', '2024-06-25 06:58:15'),
(76, 'BR', 'America/Manaus', 1, '2024-06-25 06:58:15', '2024-06-25 06:58:15'),
(77, 'BR', 'America/Eirunepe', 1, '2024-06-25 06:58:15', '2024-06-25 06:58:15'),
(78, 'BR', 'America/Rio_Branco', 1, '2024-06-25 06:58:15', '2024-06-25 06:58:15'),
(79, 'BS', 'America/Nassau', 1, '2024-06-25 06:58:15', '2024-06-25 06:58:15'),
(80, 'BT', 'Asia/Thimphu', 1, '2024-06-25 06:58:15', '2024-06-25 06:58:15'),
(81, 'BW', 'Africa/Gaborone', 1, '2024-06-25 06:58:15', '2024-06-25 06:58:15'),
(82, 'BY', 'Europe/Minsk', 1, '2024-06-25 06:58:15', '2024-06-25 06:58:15'),
(83, 'BZ', 'America/Belize', 1, '2024-06-25 06:58:15', '2024-06-25 06:58:15'),
(84, 'CA', 'America/St_Johns', 1, '2024-06-25 06:58:15', '2024-06-25 06:58:15'),
(85, 'CA', 'America/Halifax', 1, '2024-06-25 06:58:15', '2024-06-25 06:58:15'),
(86, 'CA', 'America/Glace_Bay', 1, '2024-06-25 06:58:15', '2024-06-25 06:58:15'),
(87, 'CA', 'America/Moncton', 1, '2024-06-25 06:58:15', '2024-06-25 06:58:15'),
(88, 'CA', 'America/Goose_Bay', 1, '2024-06-25 06:58:15', '2024-06-25 06:58:15'),
(89, 'CA', 'America/Blanc-Sablon', 1, '2024-06-25 06:58:15', '2024-06-25 06:58:15'),
(90, 'CA', 'America/Toronto', 1, '2024-06-25 06:58:15', '2024-06-25 06:58:15'),
(91, 'CA', 'America/Nipigon', 1, '2024-06-25 06:58:15', '2024-06-25 06:58:15'),
(92, 'CA', 'America/Thunder_Bay', 1, '2024-06-25 06:58:15', '2024-06-25 06:58:15'),
(93, 'CA', 'America/Iqaluit', 1, '2024-06-25 06:58:15', '2024-06-25 06:58:15'),
(94, 'CA', 'America/Pangnirtung', 1, '2024-06-25 06:58:15', '2024-06-25 06:58:15'),
(95, 'CA', 'America/Atikokan', 1, '2024-06-25 06:58:15', '2024-06-25 06:58:15'),
(96, 'CA', 'America/Winnipeg', 1, '2024-06-25 06:58:15', '2024-06-25 06:58:15'),
(97, 'CA', 'America/Rainy_River', 1, '2024-06-25 06:58:15', '2024-06-25 06:58:15'),
(98, 'CA', 'America/Resolute', 1, '2024-06-25 06:58:15', '2024-06-25 06:58:15'),
(99, 'CA', 'America/Rankin_Inlet', 1, '2024-06-25 06:58:15', '2024-06-25 06:58:15'),
(100, 'CA', 'America/Regina', 1, '2024-06-25 06:58:15', '2024-06-25 06:58:15'),
(101, 'CA', 'America/Swift_Current', 1, '2024-06-25 06:58:15', '2024-06-25 06:58:15'),
(102, 'CA', 'America/Edmonton', 1, '2024-06-25 06:58:15', '2024-06-25 06:58:15'),
(103, 'CA', 'America/Cambridge_Bay', 1, '2024-06-25 06:58:15', '2024-06-25 06:58:15'),
(104, 'CA', 'America/Yellowknife', 1, '2024-06-25 06:58:15', '2024-06-25 06:58:15'),
(105, 'CA', 'America/Inuvik', 1, '2024-06-25 06:58:15', '2024-06-25 06:58:15'),
(106, 'CA', 'America/Creston', 1, '2024-06-25 06:58:15', '2024-06-25 06:58:15'),
(107, 'CA', 'America/Dawson_Creek', 1, '2024-06-25 06:58:15', '2024-06-25 06:58:15'),
(108, 'CA', 'America/Fort_Nelson', 1, '2024-06-25 06:58:15', '2024-06-25 06:58:15'),
(109, 'CA', 'America/Vancouver', 1, '2024-06-25 06:58:15', '2024-06-25 06:58:15'),
(110, 'CA', 'America/Whitehorse', 1, '2024-06-25 06:58:15', '2024-06-25 06:58:15'),
(111, 'CA', 'America/Dawson', 1, '2024-06-25 06:58:15', '2024-06-25 06:58:15'),
(112, 'CC', 'Indian/Cocos', 1, '2024-06-25 06:58:15', '2024-06-25 06:58:15'),
(113, 'CD', 'Africa/Kinshasa', 1, '2024-06-25 06:58:15', '2024-06-25 06:58:15'),
(114, 'CD', 'Africa/Lubumbashi', 1, '2024-06-25 06:58:15', '2024-06-25 06:58:15'),
(115, 'CF', 'Africa/Bangui', 1, '2024-06-25 06:58:15', '2024-06-25 06:58:15'),
(116, 'CG', 'Africa/Brazzaville', 1, '2024-06-25 06:58:15', '2024-06-25 06:58:15'),
(117, 'CH', 'Europe/Zurich', 1, '2024-06-25 06:58:15', '2024-06-25 06:58:15'),
(118, 'CI', 'Africa/Abidjan', 1, '2024-06-25 06:58:15', '2024-06-25 06:58:15'),
(119, 'CK', 'Pacific/Rarotonga', 1, '2024-06-25 06:58:15', '2024-06-25 06:58:15'),
(120, 'CL', 'America/Santiago', 1, '2024-06-25 06:58:15', '2024-06-25 06:58:15'),
(121, 'CL', 'America/Punta_Arenas', 1, '2024-06-25 06:58:15', '2024-06-25 06:58:15'),
(122, 'CL', 'Pacific/Easter', 1, '2024-06-25 06:58:15', '2024-06-25 06:58:15'),
(123, 'CM', 'Africa/Douala', 1, '2024-06-25 06:58:15', '2024-06-25 06:58:15'),
(124, 'CN', 'Asia/Shanghai', 1, '2024-06-25 06:58:15', '2024-06-25 06:58:15'),
(125, 'CN', 'Asia/Urumqi', 1, '2024-06-25 06:58:15', '2024-06-25 06:58:15'),
(126, 'CO', 'America/Bogota', 1, '2024-06-25 06:58:15', '2024-06-25 06:58:15'),
(127, 'CR', 'America/Costa_Rica', 1, '2024-06-25 06:58:15', '2024-06-25 06:58:15'),
(128, 'CU', 'America/Havana', 1, '2024-06-25 06:58:15', '2024-06-25 06:58:15'),
(129, 'CV', 'Atlantic/Cape_Verde', 1, '2024-06-25 06:58:15', '2024-06-25 06:58:15'),
(130, 'CW', 'America/Curacao', 1, '2024-06-25 06:58:15', '2024-06-25 06:58:15'),
(131, 'CX', 'Indian/Christmas', 1, '2024-06-25 06:58:15', '2024-06-25 06:58:15'),
(132, 'CY', 'Asia/Nicosia', 1, '2024-06-25 06:58:15', '2024-06-25 06:58:15'),
(133, 'CY', 'Asia/Famagusta', 1, '2024-06-25 06:58:15', '2024-06-25 06:58:15'),
(134, 'CZ', 'Europe/Prague', 1, '2024-06-25 06:58:15', '2024-06-25 06:58:15'),
(135, 'DE', 'Europe/Berlin', 1, '2024-06-25 06:58:15', '2024-06-25 06:58:15'),
(136, 'DE', 'Europe/Busingen', 1, '2024-06-25 06:58:15', '2024-06-25 06:58:15'),
(137, 'DJ', 'Africa/Djibouti', 1, '2024-06-25 06:58:15', '2024-06-25 06:58:15'),
(138, 'DK', 'Europe/Copenhagen', 1, '2024-06-25 06:58:15', '2024-06-25 06:58:15'),
(139, 'DM', 'America/Dominica', 1, '2024-06-25 06:58:15', '2024-06-25 06:58:15'),
(140, 'DO', 'America/Santo_Domingo', 1, '2024-06-25 06:58:15', '2024-06-25 06:58:15'),
(141, 'DZ', 'Africa/Algiers', 1, '2024-06-25 06:58:15', '2024-06-25 06:58:15'),
(142, 'EC', 'America/Guayaquil', 1, '2024-06-25 06:58:15', '2024-06-25 06:58:15'),
(143, 'EC', 'Pacific/Galapagos', 1, '2024-06-25 06:58:15', '2024-06-25 06:58:15'),
(144, 'EE', 'Europe/Tallinn', 1, '2024-06-25 06:58:15', '2024-06-25 06:58:15'),
(145, 'EG', 'Africa/Cairo', 1, '2024-06-25 06:58:15', '2024-06-25 06:58:15'),
(146, 'EH', 'Africa/El_Aaiun', 1, '2024-06-25 06:58:15', '2024-06-25 06:58:15'),
(147, 'ER', 'Africa/Asmara', 1, '2024-06-25 06:58:15', '2024-06-25 06:58:15'),
(148, 'ES', 'Europe/Madrid', 1, '2024-06-25 06:58:15', '2024-06-25 06:58:15'),
(149, 'ES', 'Africa/Ceuta', 1, '2024-06-25 06:58:15', '2024-06-25 06:58:15'),
(150, 'ES', 'Atlantic/Canary', 1, '2024-06-25 06:58:15', '2024-06-25 06:58:15'),
(151, 'ET', 'Africa/Addis_Ababa', 1, '2024-06-25 06:58:15', '2024-06-25 06:58:15'),
(152, 'FI', 'Europe/Helsinki', 1, '2024-06-25 06:58:15', '2024-06-25 06:58:15'),
(153, 'FJ', 'Pacific/Fiji', 1, '2024-06-25 06:58:15', '2024-06-25 06:58:15'),
(154, 'FK', 'Atlantic/Stanley', 1, '2024-06-25 06:58:15', '2024-06-25 06:58:15'),
(155, 'FM', 'Pacific/Chuuk', 1, '2024-06-25 06:58:15', '2024-06-25 06:58:15'),
(156, 'FM', 'Pacific/Pohnpei', 1, '2024-06-25 06:58:15', '2024-06-25 06:58:15'),
(157, 'FM', 'Pacific/Kosrae', 1, '2024-06-25 06:58:15', '2024-06-25 06:58:15'),
(158, 'FO', 'Atlantic/Faroe', 1, '2024-06-25 06:58:15', '2024-06-25 06:58:15'),
(159, 'FR', 'Europe/Paris', 1, '2024-06-25 06:58:15', '2024-06-25 06:58:15'),
(160, 'GA', 'Africa/Libreville', 1, '2024-06-25 06:58:15', '2024-06-25 06:58:15'),
(161, 'GB', 'Europe/London', 1, '2024-06-25 06:58:15', '2024-06-25 06:58:15'),
(162, 'GD', 'America/Grenada', 1, '2024-06-25 06:58:15', '2024-06-25 06:58:15'),
(163, 'GE', 'Asia/Tbilisi', 1, '2024-06-25 06:58:15', '2024-06-25 06:58:15'),
(164, 'GF', 'America/Cayenne', 1, '2024-06-25 06:58:15', '2024-06-25 06:58:15'),
(165, 'GG', 'Europe/Guernsey', 1, '2024-06-25 06:58:15', '2024-06-25 06:58:15'),
(166, 'GH', 'Africa/Accra', 1, '2024-06-25 06:58:15', '2024-06-25 06:58:15'),
(167, 'GI', 'Europe/Gibraltar', 1, '2024-06-25 06:58:15', '2024-06-25 06:58:15'),
(168, 'GL', 'America/Godthab', 1, '2024-06-25 06:58:15', '2024-06-25 06:58:15'),
(169, 'GL', 'America/Danmarkshavn', 1, '2024-06-25 06:58:15', '2024-06-25 06:58:15'),
(170, 'GL', 'America/Scoresbysund', 1, '2024-06-25 06:58:15', '2024-06-25 06:58:15'),
(171, 'GL', 'America/Thule', 1, '2024-06-25 06:58:15', '2024-06-25 06:58:15'),
(172, 'GM', 'Africa/Banjul', 1, '2024-06-25 06:58:15', '2024-06-25 06:58:15'),
(173, 'GN', 'Africa/Conakry', 1, '2024-06-25 06:58:15', '2024-06-25 06:58:15'),
(174, 'GP', 'America/Guadeloupe', 1, '2024-06-25 06:58:15', '2024-06-25 06:58:15'),
(175, 'GQ', 'Africa/Malabo', 1, '2024-06-25 06:58:15', '2024-06-25 06:58:15'),
(176, 'GR', 'Europe/Athens', 1, '2024-06-25 06:58:15', '2024-06-25 06:58:15'),
(177, 'GS', 'Atlantic/South_Georgia', 1, '2024-06-25 06:58:15', '2024-06-25 06:58:15'),
(178, 'GT', 'America/Guatemala', 1, '2024-06-25 06:58:15', '2024-06-25 06:58:15'),
(179, 'GU', 'Pacific/Guam', 1, '2024-06-25 06:58:15', '2024-06-25 06:58:15'),
(180, 'GW', 'Africa/Bissau', 1, '2024-06-25 06:58:15', '2024-06-25 06:58:15'),
(181, 'GY', 'America/Guyana', 1, '2024-06-25 06:58:15', '2024-06-25 06:58:15'),
(182, 'HK', 'Asia/Hong_Kong', 1, '2024-06-25 06:58:15', '2024-06-25 06:58:15'),
(183, 'HN', 'America/Tegucigalpa', 1, '2024-06-25 06:58:15', '2024-06-25 06:58:15'),
(184, 'HR', 'Europe/Zagreb', 1, '2024-06-25 06:58:15', '2024-06-25 06:58:15'),
(185, 'HT', 'America/Port-au-Prince', 1, '2024-06-25 06:58:15', '2024-06-25 06:58:15'),
(186, 'HU', 'Europe/Budapest', 1, '2024-06-25 06:58:15', '2024-06-25 06:58:15'),
(187, 'ID', 'Asia/Jakarta', 1, '2024-06-25 06:58:15', '2024-06-25 06:58:15'),
(188, 'ID', 'Asia/Pontianak', 1, '2024-06-25 06:58:15', '2024-06-25 06:58:15'),
(189, 'ID', 'Asia/Makassar', 1, '2024-06-25 06:58:15', '2024-06-25 06:58:15'),
(190, 'ID', 'Asia/Jayapura', 1, '2024-06-25 06:58:15', '2024-06-25 06:58:15'),
(191, 'IE', 'Europe/Dublin', 1, '2024-06-25 06:58:15', '2024-06-25 06:58:15'),
(192, 'IL', 'Asia/Jerusalem', 1, '2024-06-25 06:58:15', '2024-06-25 06:58:15'),
(193, 'IM', 'Europe/Isle_of_Man', 1, '2024-06-25 06:58:15', '2024-06-25 06:58:15'),
(194, 'IN', 'Asia/Kolkata', 1, '2024-06-25 06:58:15', '2024-06-25 06:58:15'),
(195, 'IO', 'Indian/Chagos', 1, '2024-06-25 06:58:15', '2024-06-25 06:58:15'),
(196, 'IQ', 'Asia/Baghdad', 1, '2024-06-25 06:58:15', '2024-06-25 06:58:15'),
(197, 'IR', 'Asia/Tehran', 1, '2024-06-25 06:58:15', '2024-06-25 06:58:15'),
(198, 'IS', 'Atlantic/Reykjavik', 1, '2024-06-25 06:58:15', '2024-06-25 06:58:15'),
(199, 'IT', 'Europe/Rome', 1, '2024-06-25 06:58:15', '2024-06-25 06:58:15'),
(200, 'JE', 'Europe/Jersey', 1, '2024-06-25 06:58:15', '2024-06-25 06:58:15'),
(201, 'JM', 'America/Jamaica', 1, '2024-06-25 06:58:15', '2024-06-25 06:58:15'),
(202, 'JO', 'Asia/Amman', 1, '2024-06-25 06:58:15', '2024-06-25 06:58:15'),
(203, 'JP', 'Asia/Tokyo', 1, '2024-06-25 06:58:15', '2024-06-25 06:58:15'),
(204, 'KE', 'Africa/Nairobi', 1, '2024-06-25 06:58:15', '2024-06-25 06:58:15'),
(205, 'KG', 'Asia/Bishkek', 1, '2024-06-25 06:58:15', '2024-06-25 06:58:15'),
(206, 'KH', 'Asia/Phnom_Penh', 1, '2024-06-25 06:58:15', '2024-06-25 06:58:15'),
(207, 'KI', 'Pacific/Tarawa', 1, '2024-06-25 06:58:15', '2024-06-25 06:58:15'),
(208, 'KI', 'Pacific/Enderbury', 1, '2024-06-25 06:58:15', '2024-06-25 06:58:15'),
(209, 'KI', 'Pacific/Kiritimati', 1, '2024-06-25 06:58:15', '2024-06-25 06:58:15'),
(210, 'KM', 'Indian/Comoro', 1, '2024-06-25 06:58:15', '2024-06-25 06:58:15'),
(211, 'KN', 'America/St_Kitts', 1, '2024-06-25 06:58:15', '2024-06-25 06:58:15'),
(212, 'KP', 'Asia/Pyongyang', 1, '2024-06-25 06:58:15', '2024-06-25 06:58:15'),
(213, 'KR', 'Asia/Seoul', 1, '2024-06-25 06:58:15', '2024-06-25 06:58:15'),
(214, 'KW', 'Asia/Kuwait', 1, '2024-06-25 06:58:15', '2024-06-25 06:58:15'),
(215, 'KY', 'America/Cayman', 1, '2024-06-25 06:58:15', '2024-06-25 06:58:15'),
(216, 'KZ', 'Asia/Almaty', 1, '2024-06-25 06:58:15', '2024-06-25 06:58:15'),
(217, 'KZ', 'Asia/Qyzylorda', 1, '2024-06-25 06:58:15', '2024-06-25 06:58:15'),
(218, 'KZ', 'Asia/Aqtobe', 1, '2024-06-25 06:58:15', '2024-06-25 06:58:15'),
(219, 'KZ', 'Asia/Aqtau', 1, '2024-06-25 06:58:15', '2024-06-25 06:58:15'),
(220, 'KZ', 'Asia/Atyrau', 1, '2024-06-25 06:58:15', '2024-06-25 06:58:15'),
(221, 'KZ', 'Asia/Oral', 1, '2024-06-25 06:58:15', '2024-06-25 06:58:15'),
(222, 'LA', 'Asia/Vientiane', 1, '2024-06-25 06:58:15', '2024-06-25 06:58:15'),
(223, 'LB', 'Asia/Beirut', 1, '2024-06-25 06:58:15', '2024-06-25 06:58:15'),
(224, 'LC', 'America/St_Lucia', 1, '2024-06-25 06:58:15', '2024-06-25 06:58:15'),
(225, 'LI', 'Europe/Vaduz', 1, '2024-06-25 06:58:15', '2024-06-25 06:58:15'),
(226, 'LK', 'Asia/Colombo', 1, '2024-06-25 06:58:15', '2024-06-25 06:58:15'),
(227, 'LR', 'Africa/Monrovia', 1, '2024-06-25 06:58:15', '2024-06-25 06:58:15'),
(228, 'LS', 'Africa/Maseru', 1, '2024-06-25 06:58:15', '2024-06-25 06:58:15'),
(229, 'LT', 'Europe/Vilnius', 1, '2024-06-25 06:58:15', '2024-06-25 06:58:15'),
(230, 'LU', 'Europe/Luxembourg', 1, '2024-06-25 06:58:15', '2024-06-25 06:58:15'),
(231, 'LV', 'Europe/Riga', 1, '2024-06-25 06:58:15', '2024-06-25 06:58:15'),
(232, 'LY', 'Africa/Tripoli', 1, '2024-06-25 06:58:15', '2024-06-25 06:58:15'),
(233, 'MA', 'Africa/Casablanca', 1, '2024-06-25 06:58:15', '2024-06-25 06:58:15'),
(234, 'MC', 'Europe/Monaco', 1, '2024-06-25 06:58:15', '2024-06-25 06:58:15'),
(235, 'MD', 'Europe/Chisinau', 1, '2024-06-25 06:58:15', '2024-06-25 06:58:15'),
(236, 'ME', 'Europe/Podgorica', 1, '2024-06-25 06:58:15', '2024-06-25 06:58:15'),
(237, 'MF', 'America/Marigot', 1, '2024-06-25 06:58:15', '2024-06-25 06:58:15'),
(238, 'MG', 'Indian/Antananarivo', 1, '2024-06-25 06:58:15', '2024-06-25 06:58:15'),
(239, 'MH', 'Pacific/Majuro', 1, '2024-06-25 06:58:15', '2024-06-25 06:58:15'),
(240, 'MH', 'Pacific/Kwajalein', 1, '2024-06-25 06:58:15', '2024-06-25 06:58:15'),
(241, 'MK', 'Europe/Skopje', 1, '2024-06-25 06:58:15', '2024-06-25 06:58:15'),
(242, 'ML', 'Africa/Bamako', 1, '2024-06-25 06:58:15', '2024-06-25 06:58:15'),
(243, 'MM', 'Asia/Yangon', 1, '2024-06-25 06:58:15', '2024-06-25 06:58:15'),
(244, 'MN', 'Asia/Ulaanbaatar', 1, '2024-06-25 06:58:15', '2024-06-25 06:58:15'),
(245, 'MN', 'Asia/Hovd', 1, '2024-06-25 06:58:15', '2024-06-25 06:58:15'),
(246, 'MN', 'Asia/Choibalsan', 1, '2024-06-25 06:58:15', '2024-06-25 06:58:15'),
(247, 'MO', 'Asia/Macau', 1, '2024-06-25 06:58:15', '2024-06-25 06:58:15'),
(248, 'MP', 'Pacific/Saipan', 1, '2024-06-25 06:58:15', '2024-06-25 06:58:15'),
(249, 'MQ', 'America/Martinique', 1, '2024-06-25 06:58:15', '2024-06-25 06:58:15'),
(250, 'MR', 'Africa/Nouakchott', 1, '2024-06-25 06:58:15', '2024-06-25 06:58:15'),
(251, 'MS', 'America/Montserrat', 1, '2024-06-25 06:58:15', '2024-06-25 06:58:15'),
(252, 'MT', 'Europe/Malta', 1, '2024-06-25 06:58:15', '2024-06-25 06:58:15'),
(253, 'MU', 'Indian/Mauritius', 1, '2024-06-25 06:58:15', '2024-06-25 06:58:15'),
(254, 'MV', 'Indian/Maldives', 1, '2024-06-25 06:58:15', '2024-06-25 06:58:15'),
(255, 'MW', 'Africa/Blantyre', 1, '2024-06-25 06:58:15', '2024-06-25 06:58:15'),
(256, 'MX', 'America/Mexico_City', 1, '2024-06-25 06:58:15', '2024-06-25 06:58:15'),
(257, 'MX', 'America/Cancun', 1, '2024-06-25 06:58:15', '2024-06-25 06:58:15'),
(258, 'MX', 'America/Merida', 1, '2024-06-25 06:58:15', '2024-06-25 06:58:15'),
(259, 'MX', 'America/Monterrey', 1, '2024-06-25 06:58:15', '2024-06-25 06:58:15'),
(260, 'MX', 'America/Matamoros', 1, '2024-06-25 06:58:15', '2024-06-25 06:58:15'),
(261, 'MX', 'America/Mazatlan', 1, '2024-06-25 06:58:15', '2024-06-25 06:58:15'),
(262, 'MX', 'America/Chihuahua', 1, '2024-06-25 06:58:15', '2024-06-25 06:58:15'),
(263, 'MX', 'America/Ojinaga', 1, '2024-06-25 06:58:15', '2024-06-25 06:58:15'),
(264, 'MX', 'America/Hermosillo', 1, '2024-06-25 06:58:15', '2024-06-25 06:58:15'),
(265, 'MX', 'America/Tijuana', 1, '2024-06-25 06:58:15', '2024-06-25 06:58:15'),
(266, 'MX', 'America/Bahia_Banderas', 1, '2024-06-25 06:58:15', '2024-06-25 06:58:15'),
(267, 'MY', 'Asia/Kuala_Lumpur', 1, '2024-06-25 06:58:15', '2024-06-25 06:58:15'),
(268, 'MY', 'Asia/Kuching', 1, '2024-06-25 06:58:15', '2024-06-25 06:58:15'),
(269, 'MZ', 'Africa/Maputo', 1, '2024-06-25 06:58:15', '2024-06-25 06:58:15'),
(270, 'NA', 'Africa/Windhoek', 1, '2024-06-25 06:58:15', '2024-06-25 06:58:15'),
(271, 'NC', 'Pacific/Noumea', 1, '2024-06-25 06:58:15', '2024-06-25 06:58:15'),
(272, 'NE', 'Africa/Niamey', 1, '2024-06-25 06:58:15', '2024-06-25 06:58:15'),
(273, 'NF', 'Pacific/Norfolk', 1, '2024-06-25 06:58:15', '2024-06-25 06:58:15'),
(274, 'NG', 'Africa/Lagos', 1, '2024-06-25 06:58:15', '2024-06-25 06:58:15'),
(275, 'NI', 'America/Managua', 1, '2024-06-25 06:58:15', '2024-06-25 06:58:15'),
(276, 'NL', 'Europe/Amsterdam', 1, '2024-06-25 06:58:15', '2024-06-25 06:58:15'),
(277, 'NO', 'Europe/Oslo', 1, '2024-06-25 06:58:15', '2024-06-25 06:58:15'),
(278, 'NP', 'Asia/Kathmandu', 1, '2024-06-25 06:58:15', '2024-06-25 06:58:15'),
(279, 'NR', 'Pacific/Nauru', 1, '2024-06-25 06:58:15', '2024-06-25 06:58:15'),
(280, 'NU', 'Pacific/Niue', 1, '2024-06-25 06:58:15', '2024-06-25 06:58:15'),
(281, 'NZ', 'Pacific/Auckland', 1, '2024-06-25 06:58:15', '2024-06-25 06:58:15'),
(282, 'NZ', 'Pacific/Chatham', 1, '2024-06-25 06:58:15', '2024-06-25 06:58:15'),
(283, 'OM', 'Asia/Muscat', 1, '2024-06-25 06:58:15', '2024-06-25 06:58:15'),
(284, 'PA', 'America/Panama', 1, '2024-06-25 06:58:15', '2024-06-25 06:58:15'),
(285, 'PE', 'America/Lima', 1, '2024-06-25 06:58:15', '2024-06-25 06:58:15'),
(286, 'PF', 'Pacific/Tahiti', 1, '2024-06-25 06:58:15', '2024-06-25 06:58:15'),
(287, 'PF', 'Pacific/Marquesas', 1, '2024-06-25 06:58:15', '2024-06-25 06:58:15'),
(288, 'PF', 'Pacific/Gambier', 1, '2024-06-25 06:58:15', '2024-06-25 06:58:15'),
(289, 'PG', 'Pacific/Port_Moresby', 1, '2024-06-25 06:58:15', '2024-06-25 06:58:15'),
(290, 'PG', 'Pacific/Bougainville', 1, '2024-06-25 06:58:15', '2024-06-25 06:58:15'),
(291, 'PH', 'Asia/Manila', 1, '2024-06-25 06:58:15', '2024-06-25 06:58:15'),
(292, 'PK', 'Asia/Karachi', 1, '2024-06-25 06:58:15', '2024-06-25 06:58:15'),
(293, 'PL', 'Europe/Warsaw', 1, '2024-06-25 06:58:15', '2024-06-25 06:58:15'),
(294, 'PM', 'America/Miquelon', 1, '2024-06-25 06:58:15', '2024-06-25 06:58:15'),
(295, 'PN', 'Pacific/Pitcairn', 1, '2024-06-25 06:58:15', '2024-06-25 06:58:15'),
(296, 'PR', 'America/Puerto_Rico', 1, '2024-06-25 06:58:15', '2024-06-25 06:58:15'),
(297, 'PS', 'Asia/Gaza', 1, '2024-06-25 06:58:15', '2024-06-25 06:58:15'),
(298, 'PS', 'Asia/Hebron', 1, '2024-06-25 06:58:15', '2024-06-25 06:58:15'),
(299, 'PT', 'Europe/Lisbon', 1, '2024-06-25 06:58:15', '2024-06-25 06:58:15'),
(300, 'PT', 'Atlantic/Madeira', 1, '2024-06-25 06:58:15', '2024-06-25 06:58:15'),
(301, 'PT', 'Atlantic/Azores', 1, '2024-06-25 06:58:15', '2024-06-25 06:58:15'),
(302, 'PW', 'Pacific/Palau', 1, '2024-06-25 06:58:15', '2024-06-25 06:58:15'),
(303, 'PY', 'America/Asuncion', 1, '2024-06-25 06:58:15', '2024-06-25 06:58:15'),
(304, 'QA', 'Asia/Qatar', 1, '2024-06-25 06:58:15', '2024-06-25 06:58:15'),
(305, 'RE', 'Indian/Reunion', 1, '2024-06-25 06:58:15', '2024-06-25 06:58:15'),
(306, 'RO', 'Europe/Bucharest', 1, '2024-06-25 06:58:15', '2024-06-25 06:58:15'),
(307, 'RS', 'Europe/Belgrade', 1, '2024-06-25 06:58:15', '2024-06-25 06:58:15'),
(308, 'RU', 'Europe/Kaliningrad', 1, '2024-06-25 06:58:15', '2024-06-25 06:58:15'),
(309, 'RU', 'Europe/Moscow', 1, '2024-06-25 06:58:15', '2024-06-25 06:58:15'),
(310, 'RU', 'Europe/Simferopol', 1, '2024-06-25 06:58:15', '2024-06-25 06:58:15'),
(311, 'RU', 'Europe/Volgograd', 1, '2024-06-25 06:58:15', '2024-06-25 06:58:15'),
(312, 'RU', 'Europe/Kirov', 1, '2024-06-25 06:58:15', '2024-06-25 06:58:15'),
(313, 'RU', 'Europe/Astrakhan', 1, '2024-06-25 06:58:15', '2024-06-25 06:58:15'),
(314, 'RU', 'Europe/Saratov', 1, '2024-06-25 06:58:15', '2024-06-25 06:58:15'),
(315, 'RU', 'Europe/Ulyanovsk', 1, '2024-06-25 06:58:15', '2024-06-25 06:58:15'),
(316, 'RU', 'Europe/Samara', 1, '2024-06-25 06:58:15', '2024-06-25 06:58:15'),
(317, 'RU', 'Asia/Yekaterinburg', 1, '2024-06-25 06:58:15', '2024-06-25 06:58:15'),
(318, 'RU', 'Asia/Omsk', 1, '2024-06-25 06:58:15', '2024-06-25 06:58:15'),
(319, 'RU', 'Asia/Novosibirsk', 1, '2024-06-25 06:58:15', '2024-06-25 06:58:15'),
(320, 'RU', 'Asia/Barnaul', 1, '2024-06-25 06:58:15', '2024-06-25 06:58:15'),
(321, 'RU', 'Asia/Tomsk', 1, '2024-06-25 06:58:15', '2024-06-25 06:58:15'),
(322, 'RU', 'Asia/Novokuznetsk', 1, '2024-06-25 06:58:15', '2024-06-25 06:58:15'),
(323, 'RU', 'Asia/Krasnoyarsk', 1, '2024-06-25 06:58:15', '2024-06-25 06:58:15'),
(324, 'RU', 'Asia/Irkutsk', 1, '2024-06-25 06:58:15', '2024-06-25 06:58:15'),
(325, 'RU', 'Asia/Chita', 1, '2024-06-25 06:58:15', '2024-06-25 06:58:15'),
(326, 'RU', 'Asia/Yakutsk', 1, '2024-06-25 06:58:15', '2024-06-25 06:58:15'),
(327, 'RU', 'Asia/Khandyga', 1, '2024-06-25 06:58:15', '2024-06-25 06:58:15'),
(328, 'RU', 'Asia/Vladivostok', 1, '2024-06-25 06:58:15', '2024-06-25 06:58:15'),
(329, 'RU', 'Asia/Ust-Nera', 1, '2024-06-25 06:58:15', '2024-06-25 06:58:15'),
(330, 'RU', 'Asia/Magadan', 1, '2024-06-25 06:58:15', '2024-06-25 06:58:15'),
(331, 'RU', 'Asia/Sakhalin', 1, '2024-06-25 06:58:15', '2024-06-25 06:58:15'),
(332, 'RU', 'Asia/Srednekolymsk', 1, '2024-06-25 06:58:15', '2024-06-25 06:58:15'),
(333, 'RU', 'Asia/Kamchatka', 1, '2024-06-25 06:58:15', '2024-06-25 06:58:15'),
(334, 'RU', 'Asia/Anadyr', 1, '2024-06-25 06:58:15', '2024-06-25 06:58:15'),
(335, 'RW', 'Africa/Kigali', 1, '2024-06-25 06:58:15', '2024-06-25 06:58:15'),
(336, 'SA', 'Asia/Riyadh', 1, '2024-06-25 06:58:15', '2024-06-25 06:58:15'),
(337, 'SB', 'Pacific/Guadalcanal', 1, '2024-06-25 06:58:15', '2024-06-25 06:58:15'),
(338, 'SC', 'Indian/Mahe', 1, '2024-06-25 06:58:15', '2024-06-25 06:58:15'),
(339, 'SD', 'Africa/Khartoum', 1, '2024-06-25 06:58:15', '2024-06-25 06:58:15'),
(340, 'SE', 'Europe/Stockholm', 1, '2024-06-25 06:58:15', '2024-06-25 06:58:15'),
(341, 'SG', 'Asia/Singapore', 1, '2024-06-25 06:58:15', '2024-06-25 06:58:15'),
(342, 'SH', 'Atlantic/St_Helena', 1, '2024-06-25 06:58:15', '2024-06-25 06:58:15'),
(343, 'SI', 'Europe/Ljubljana', 1, '2024-06-25 06:58:15', '2024-06-25 06:58:15'),
(344, 'SJ', 'Arctic/Longyearbyen', 1, '2024-06-25 06:58:15', '2024-06-25 06:58:15'),
(345, 'SK', 'Europe/Bratislava', 1, '2024-06-25 06:58:15', '2024-06-25 06:58:15'),
(346, 'SL', 'Africa/Freetown', 1, '2024-06-25 06:58:15', '2024-06-25 06:58:15'),
(347, 'SM', 'Europe/San_Marino', 1, '2024-06-25 06:58:15', '2024-06-25 06:58:15'),
(348, 'SN', 'Africa/Dakar', 1, '2024-06-25 06:58:15', '2024-06-25 06:58:15'),
(349, 'SO', 'Africa/Mogadishu', 1, '2024-06-25 06:58:15', '2024-06-25 06:58:15'),
(350, 'SR', 'America/Paramaribo', 1, '2024-06-25 06:58:15', '2024-06-25 06:58:15'),
(351, 'SS', 'Africa/Juba', 1, '2024-06-25 06:58:15', '2024-06-25 06:58:15'),
(352, 'ST', 'Africa/Sao_Tome', 1, '2024-06-25 06:58:15', '2024-06-25 06:58:15'),
(353, 'SV', 'America/El_Salvador', 1, '2024-06-25 06:58:15', '2024-06-25 06:58:15'),
(354, 'SX', 'America/Lower_Princes', 1, '2024-06-25 06:58:15', '2024-06-25 06:58:15'),
(355, 'SY', 'Asia/Damascus', 1, '2024-06-25 06:58:15', '2024-06-25 06:58:15'),
(356, 'SZ', 'Africa/Mbabane', 1, '2024-06-25 06:58:15', '2024-06-25 06:58:15'),
(357, 'TC', 'America/Grand_Turk', 1, '2024-06-25 06:58:15', '2024-06-25 06:58:15'),
(358, 'TD', 'Africa/Ndjamena', 1, '2024-06-25 06:58:15', '2024-06-25 06:58:15'),
(359, 'TF', 'Indian/Kerguelen', 1, '2024-06-25 06:58:15', '2024-06-25 06:58:15'),
(360, 'TG', 'Africa/Lome', 1, '2024-06-25 06:58:15', '2024-06-25 06:58:15'),
(361, 'TH', 'Asia/Bangkok', 1, '2024-06-25 06:58:15', '2024-06-25 06:58:15'),
(362, 'TJ', 'Asia/Dushanbe', 1, '2024-06-25 06:58:15', '2024-06-25 06:58:15'),
(363, 'TK', 'Pacific/Fakaofo', 1, '2024-06-25 06:58:15', '2024-06-25 06:58:15'),
(364, 'TL', 'Asia/Dili', 1, '2024-06-25 06:58:15', '2024-06-25 06:58:15'),
(365, 'TM', 'Asia/Ashgabat', 1, '2024-06-25 06:58:15', '2024-06-25 06:58:15'),
(366, 'TN', 'Africa/Tunis', 1, '2024-06-25 06:58:15', '2024-06-25 06:58:15'),
(367, 'TO', 'Pacific/Tongatapu', 1, '2024-06-25 06:58:15', '2024-06-25 06:58:15'),
(368, 'TR', 'Europe/Istanbul', 1, '2024-06-25 06:58:15', '2024-06-25 06:58:15'),
(369, 'TT', 'America/Port_of_Spain', 1, '2024-06-25 06:58:15', '2024-06-25 06:58:15'),
(370, 'TV', 'Pacific/Funafuti', 1, '2024-06-25 06:58:15', '2024-06-25 06:58:15'),
(371, 'TW', 'Asia/Taipei', 1, '2024-06-25 06:58:15', '2024-06-25 06:58:15'),
(372, 'TZ', 'Africa/Dar_es_Salaam', 1, '2024-06-25 06:58:15', '2024-06-25 06:58:15'),
(373, 'UA', 'Europe/Kiev', 1, '2024-06-25 06:58:15', '2024-06-25 06:58:15'),
(374, 'UA', 'Europe/Uzhgorod', 1, '2024-06-25 06:58:15', '2024-06-25 06:58:15'),
(375, 'UA', 'Europe/Zaporozhye', 1, '2024-06-25 06:58:15', '2024-06-25 06:58:15'),
(376, 'UG', 'Africa/Kampala', 1, '2024-06-25 06:58:15', '2024-06-25 06:58:15'),
(377, 'UM', 'Pacific/Midway', 1, '2024-06-25 06:58:15', '2024-06-25 06:58:15'),
(378, 'UM', 'Pacific/Wake', 1, '2024-06-25 06:58:15', '2024-06-25 06:58:15'),
(379, 'US', 'America/New_York', 1, '2024-06-25 06:58:15', '2024-06-25 06:58:15'),
(380, 'US', 'America/Detroit', 1, '2024-06-25 06:58:15', '2024-06-25 06:58:15'),
(381, 'US', 'America/Kentucky/Louisville', 1, '2024-06-25 06:58:15', '2024-06-25 06:58:15'),
(382, 'US', 'America/Kentucky/Monticello', 1, '2024-06-25 06:58:15', '2024-06-25 06:58:15'),
(383, 'US', 'America/Indiana/Indianapolis', 1, '2024-06-25 06:58:15', '2024-06-25 06:58:15'),
(384, 'US', 'America/Indiana/Vincennes', 1, '2024-06-25 06:58:15', '2024-06-25 06:58:15'),
(385, 'US', 'America/Indiana/Winamac', 1, '2024-06-25 06:58:15', '2024-06-25 06:58:15'),
(386, 'US', 'America/Indiana/Marengo', 1, '2024-06-25 06:58:15', '2024-06-25 06:58:15'),
(387, 'US', 'America/Indiana/Petersburg', 1, '2024-06-25 06:58:15', '2024-06-25 06:58:15'),
(388, 'US', 'America/Indiana/Vevay', 1, '2024-06-25 06:58:15', '2024-06-25 06:58:15'),
(389, 'US', 'America/Chicago', 1, '2024-06-25 06:58:15', '2024-06-25 06:58:15'),
(390, 'US', 'America/Indiana/Tell_City', 1, '2024-06-25 06:58:15', '2024-06-25 06:58:15'),
(391, 'US', 'America/Indiana/Knox', 1, '2024-06-25 06:58:15', '2024-06-25 06:58:15'),
(392, 'US', 'America/Menominee', 1, '2024-06-25 06:58:15', '2024-06-25 06:58:15'),
(393, 'US', 'America/North_Dakota/Center', 1, '2024-06-25 06:58:15', '2024-06-25 06:58:15'),
(394, 'US', 'America/North_Dakota/New_Salem', 1, '2024-06-25 06:58:15', '2024-06-25 06:58:15'),
(395, 'US', 'America/North_Dakota/Beulah', 1, '2024-06-25 06:58:15', '2024-06-25 06:58:15'),
(396, 'US', 'America/Denver', 1, '2024-06-25 06:58:15', '2024-06-25 06:58:15'),
(397, 'US', 'America/Boise', 1, '2024-06-25 06:58:15', '2024-06-25 06:58:15'),
(398, 'US', 'America/Phoenix', 1, '2024-06-25 06:58:15', '2024-06-25 06:58:15'),
(399, 'US', 'America/Los_Angeles', 1, '2024-06-25 06:58:15', '2024-06-25 06:58:15'),
(400, 'US', 'America/Anchorage', 1, '2024-06-25 06:58:15', '2024-06-25 06:58:15'),
(401, 'US', 'America/Juneau', 1, '2024-06-25 06:58:15', '2024-06-25 06:58:15'),
(402, 'US', 'America/Sitka', 1, '2024-06-25 06:58:15', '2024-06-25 06:58:15'),
(403, 'US', 'America/Metlakatla', 1, '2024-06-25 06:58:15', '2024-06-25 06:58:15'),
(404, 'US', 'America/Yakutat', 1, '2024-06-25 06:58:15', '2024-06-25 06:58:15'),
(405, 'US', 'America/Nome', 1, '2024-06-25 06:58:15', '2024-06-25 06:58:15'),
(406, 'US', 'America/Adak', 1, '2024-06-25 06:58:15', '2024-06-25 06:58:15'),
(407, 'US', 'Pacific/Honolulu', 1, '2024-06-25 06:58:15', '2024-06-25 06:58:15'),
(408, 'UY', 'America/Montevideo', 1, '2024-06-25 06:58:15', '2024-06-25 06:58:15'),
(409, 'UZ', 'Asia/Samarkand', 1, '2024-06-25 06:58:15', '2024-06-25 06:58:15'),
(410, 'UZ', 'Asia/Tashkent', 1, '2024-06-25 06:58:15', '2024-06-25 06:58:15'),
(411, 'VA', 'Europe/Vatican', 1, '2024-06-25 06:58:15', '2024-06-25 06:58:15'),
(412, 'VC', 'America/St_Vincent', 1, '2024-06-25 06:58:15', '2024-06-25 06:58:15'),
(413, 'VE', 'America/Caracas', 1, '2024-06-25 06:58:15', '2024-06-25 06:58:15'),
(414, 'VG', 'America/Tortola', 1, '2024-06-25 06:58:15', '2024-06-25 06:58:15'),
(415, 'VI', 'America/St_Thomas', 1, '2024-06-25 06:58:15', '2024-06-25 06:58:15'),
(416, 'VN', 'Asia/Ho_Chi_Minh', 1, '2024-06-25 06:58:15', '2024-06-25 06:58:15'),
(417, 'VU', 'Pacific/Efate', 1, '2024-06-25 06:58:15', '2024-06-25 06:58:15'),
(418, 'WF', 'Pacific/Wallis', 1, '2024-06-25 06:58:15', '2024-06-25 06:58:15'),
(419, 'WS', 'Pacific/Apia', 1, '2024-06-25 06:58:15', '2024-06-25 06:58:15'),
(420, 'YE', 'Asia/Aden', 1, '2024-06-25 06:58:15', '2024-06-25 06:58:15'),
(421, 'YT', 'Indian/Mayotte', 1, '2024-06-25 06:58:15', '2024-06-25 06:58:15'),
(422, 'ZA', 'Africa/Johannesburg', 1, '2024-06-25 06:58:15', '2024-06-25 06:58:15'),
(423, 'ZM', 'Africa/Lusaka', 1, '2024-06-25 06:58:15', '2024-06-25 06:58:15'),
(424, 'ZW', 'Africa/Harare', 1, '2024-06-25 06:58:15', '2024-06-25 06:58:15');

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `account_id` bigint(20) UNSIGNED NOT NULL,
  `date` date DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount` double(16,2) NOT NULL DEFAULT '0.00',
  `transaction_type` bigint(20) UNSIGNED NOT NULL DEFAULT '18',
  `status_id` bigint(20) UNSIGNED NOT NULL DEFAULT '9',
  `created_by` bigint(20) UNSIGNED NOT NULL DEFAULT '1',
  `updated_by` bigint(20) UNSIGNED NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `company_id` bigint(20) UNSIGNED DEFAULT '1',
  `branch_id` bigint(20) UNSIGNED DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `translations`
--

CREATE TABLE `translations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `default` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `en` longtext COLLATE utf8mb4_unicode_ci,
  `bn` longtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `company_id` bigint(20) UNSIGNED DEFAULT '1',
  `branch_id` bigint(20) UNSIGNED DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `travel`
--

CREATE TABLE `travel` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_by` bigint(20) UNSIGNED NOT NULL,
  `travel_type_id` bigint(20) UNSIGNED NOT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `status_id` bigint(20) UNSIGNED NOT NULL DEFAULT '1',
  `expect_amount` double(16,2) DEFAULT NULL,
  `amount` double(16,2) DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attachment` bigint(20) UNSIGNED DEFAULT NULL,
  `purpose` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `place` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mode` enum('bus','train','plane') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `goal_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `company_id` bigint(20) UNSIGNED DEFAULT '1',
  `branch_id` bigint(20) UNSIGNED DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `travel_types`
--

CREATE TABLE `travel_types` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status_id` bigint(20) UNSIGNED NOT NULL DEFAULT '1',
  `created_by` bigint(20) UNSIGNED DEFAULT '1',
  `updated_by` bigint(20) UNSIGNED DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `company_id` bigint(20) UNSIGNED DEFAULT '1',
  `branch_id` bigint(20) UNSIGNED DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `uploads`
--

CREATE TABLE `uploads` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `file_original_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `img_path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `big_path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '1920 x 1080',
  `small_path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '300 x 300',
  `thumbnail_path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '500 x 400',
  `extension` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file_size` int(11) DEFAULT NULL,
  `width` int(11) DEFAULT NULL,
  `height` int(11) DEFAULT NULL,
  `status_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `company_id` bigint(20) UNSIGNED DEFAULT '1',
  `branch_id` bigint(20) UNSIGNED DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `uploads`
--

INSERT INTO `uploads` (`id`, `user_id`, `file_original_name`, `file_name`, `img_path`, `big_path`, `small_path`, `thumbnail_path`, `extension`, `type`, `file_size`, `width`, `height`, `status_id`, `created_at`, `updated_at`, `company_id`, `branch_id`) VALUES
(1, 1, 'dark_logo', 'dark_logo.png', 'static/dark_logo.png', 'static/dark_logo.png', 'static/dark_logo.png', 'static/dark_logo.png', '.png', 'png', 0, 100, 100, 1, '2024-06-25 06:58:18', '2024-06-25 06:58:18', 1, 1),
(2, 1, 'white_logo', 'white_logo.png', 'static/white_logo.png', 'static/white_logo.png', 'static/white_logo.png', 'static/white_logo.png', '.png', 'png', 0, 100, 100, 1, '2024-06-25 06:58:18', '2024-06-25 06:58:18', 1, 1),
(3, 1, 'fav', 'fav.png', 'static/fav.png', 'static/fav.png', 'static/fav.png', 'static/fav.png', '.png', 'png', 0, 100, 100, 1, '2024-06-25 06:58:18', '2024-06-25 06:58:18', 1, 1),
(4, 1, 'background_image', 'background_image.png', 'static/background_image.png', 'static/background_image.png', 'static/background_image.png', 'static/background_image.png', '.png', 'png', 0, 100, 100, 1, '2024-06-25 06:58:18', '2024-06-25 06:58:18', 1, 1),
(5, 1, 'android_icon', 'android_icon.png', 'static/android_icon.png', 'static/android_icon.png', 'static/android_icon.png', 'static/android_icon.png', '.png', 'png', 0, 100, 100, 1, '2024-06-25 06:58:18', '2024-06-25 06:58:18', 1, 1),
(6, 1, 'iso_icon', 'iso_icon.png', 'static/iso_icon.png', 'static/iso_icon.png', 'static/iso_icon.png', 'static/iso_icon.png', '.png', 'png', 0, 100, 100, 1, '2024-06-25 06:58:18', '2024-06-25 06:58:18', 1, 1),
(7, 1, 'support', 'support.png', 'static/support.png', 'static/support.png', 'static/support.png', 'static/support.png', '.png', 'png', 0, 100, 100, 1, '2024-06-25 06:58:18', '2024-06-25 06:58:18', 1, 1),
(8, 1, 'attendance', 'attendance.png', 'static/attendance.png', 'static/attendance.png', 'static/attendance.png', 'static/attendance.png', '.png', 'png', 0, 100, 100, 1, '2024-06-25 06:58:18', '2024-06-25 06:58:18', 1, 1),
(9, 1, 'notice', 'notice.png', 'static/notice.png', 'static/notice.png', 'static/notice.png', 'static/notice.png', '.png', 'png', 0, 100, 100, 1, '2024-06-25 06:58:18', '2024-06-25 06:58:18', 1, 1),
(10, 1, 'expense', 'expense.png', 'static/expense.png', 'static/expense.png', 'static/expense.png', 'static/expense.png', '.png', 'png', 0, 100, 100, 1, '2024-06-25 06:58:18', '2024-06-25 06:58:18', 1, 1),
(11, 1, 'leave', 'leave.png', 'static/leave.png', 'static/leave.png', 'static/leave.png', 'static/leave.png', '.png', 'png', 0, 100, 100, 1, '2024-06-25 06:58:18', '2024-06-25 06:58:18', 1, 1),
(12, 1, 'approval', 'approval.png', 'static/approval.png', 'static/approval.png', 'static/approval.png', 'static/approval.png', '.png', 'png', 0, 100, 100, 1, '2024-06-25 06:58:18', '2024-06-25 06:58:18', 1, 1),
(13, 1, 'phonebook', 'phonebook.png', 'static/phonebook.png', 'static/phonebook.png', 'static/phonebook.png', 'static/phonebook.png', '.png', 'png', 0, 100, 100, 1, '2024-06-25 06:58:18', '2024-06-25 06:58:18', 1, 1),
(14, 1, 'visit', 'visit.png', 'static/visit.png', 'static/visit.png', 'static/visit.png', 'static/visit.png', '.png', 'png', 0, 100, 100, 1, '2024-06-25 06:58:18', '2024-06-25 06:58:18', 1, 1),
(15, 1, 'appointments', 'appointments.png', 'static/appointments.png', 'static/appointments.png', 'static/appointments.png', 'static/appointments.png', '.png', 'png', 0, 100, 100, 1, '2024-06-25 06:58:18', '2024-06-25 06:58:18', 1, 1),
(16, 1, 'break', 'break.png', 'static/break.png', 'static/break.png', 'static/break.png', 'static/break.png', '.png', 'png', 0, 100, 100, 1, '2024-06-25 06:58:18', '2024-06-25 06:58:18', 1, 1),
(17, 1, 'report', 'report.png', 'static/report.png', 'static/report.png', 'static/report.png', 'static/report.png', '.png', 'png', 0, 100, 100, 1, '2024-06-25 06:58:18', '2024-06-25 06:58:18', 1, 1),
(21, 1, 'portfolio1', 'portfolio1.png', 'static/portfolio1.png', 'static/portfolio1.png', 'static/portfolio1.png', 'static/portfolio1.png', '.png', 'png', 0, 100, 100, 1, '2024-06-25 06:58:18', '2024-06-25 06:58:18', 1, 1),
(22, 1, 'portfolio2', 'portfolio2.png', 'static/portfolio2.png', 'static/portfolio2.png', 'static/portfolio2.png', 'static/portfolio2.png', '.png', 'png', 0, 100, 100, 1, '2024-06-25 06:58:18', '2024-06-25 06:58:18', 1, 1),
(23, 1, 'portfolio3', 'portfolio3.png', 'static/portfolio3.png', 'static/portfolio3.png', 'static/portfolio3.png', 'static/portfolio3.png', '.png', 'png', 0, 100, 100, 1, '2024-06-25 06:58:18', '2024-06-25 06:58:18', 1, 1),
(24, 1, 'portfolio4', 'portfolio4.png', 'static/portfolio4.png', 'static/portfolio4.png', 'static/portfolio4.png', 'static/portfolio4.png', '.png', 'png', 0, 100, 100, 1, '2024-06-25 06:58:18', '2024-06-25 06:58:18', 1, 1),
(25, 1, 'portfolio5', 'portfolio5.png', 'static/portfolio5.png', 'static/portfolio5.png', 'static/portfolio5.png', 'static/portfolio5.png', '.png', 'png', 0, 100, 100, 1, '2024-06-25 06:58:18', '2024-06-25 06:58:18', 1, 1),
(26, 1, 'portfolio6', 'portfolio6.png', 'static/portfolio6.png', 'static/portfolio6.png', 'static/portfolio6.png', 'static/portfolio6.png', '.png', 'png', 0, 100, 100, 1, '2024-06-25 06:58:18', '2024-06-25 06:58:18', 1, 1),
(27, 1, 'portfolio7', 'portfolio7.png', 'static/portfolio7.png', 'static/portfolio7.png', 'static/portfolio7.png', 'static/portfolio7.png', '.png', 'png', 0, 100, 100, 1, '2024-06-25 06:58:18', '2024-06-25 06:58:18', 1, 1),
(28, 1, 'portfolio8', 'portfolio8.png', 'static/portfolio8.png', 'static/portfolio8.png', 'static/portfolio8.png', 'static/portfolio8.png', '.png', 'png', 0, 100, 100, 1, '2024-06-25 06:58:18', '2024-06-25 06:58:18', 1, 1),
(29, 1, 'team1', 'team1.png', 'static/team1.png', 'static/team1.png', 'static/team1.png', 'static/team1.png', '.png', 'png', 0, 100, 100, 1, '2024-06-25 06:58:18', '2024-06-25 06:58:18', 1, 1),
(30, 1, 'team2', 'team2.png', 'static/team2.png', 'static/team2.png', 'static/team2.png', 'static/team2.png', '.png', 'png', 0, 100, 100, 1, '2024-06-25 06:58:18', '2024-06-25 06:58:18', 1, 1),
(31, 1, 'team3', 'team3.png', 'static/team3.png', 'static/team3.png', 'static/team3.png', 'static/team3.png', '.png', 'png', 0, 100, 100, 1, '2024-06-25 06:58:18', '2024-06-25 06:58:18', 1, 1),
(32, 1, 'team4', 'team4.png', 'static/team4.png', 'static/team4.png', 'static/team4.png', 'static/team4.png', '.png', 'png', 0, 100, 100, 1, '2024-06-25 06:58:18', '2024-06-25 06:58:18', 1, 1),
(33, 1, 'team5', 'team5.png', 'static/team5.png', 'static/team5.png', 'static/team5.png', 'static/team5.png', '.png', 'png', 0, 100, 100, 1, '2024-06-25 06:58:18', '2024-06-25 06:58:18', 1, 1),
(34, 1, 'team6', 'team6.png', 'static/team6.png', 'static/team6.png', 'static/team6.png', 'static/team6.png', '.png', 'png', 0, 100, 100, 1, '2024-06-25 06:58:18', '2024-06-25 06:58:18', 1, 1),
(35, 1, 'team7', 'team7.png', 'static/team7.png', 'static/team7.png', 'static/team7.png', 'static/team7.png', '.png', 'png', 0, 100, 100, 1, '2024-06-25 06:58:18', '2024-06-25 06:58:18', 1, 1),
(36, 1, 'team8', 'team8.png', 'static/team8.png', 'static/team8.png', 'static/team8.png', 'static/team8.png', '.png', 'png', 0, 100, 100, 1, '2024-06-25 06:58:18', '2024-06-25 06:58:18', 1, 1),
(37, 1, 'team8', 'team8.png', 'static/app-screen/screen-1.png', 'static/app-screen/screen-1.png', 'static/app-screen/screen-1.png', 'static/app-screen/screen-1.png', '.png', 'png', 0, 300, 700, 1, '2024-06-25 06:58:18', '2024-06-25 06:58:18', 1, 1),
(38, 1, 'team8', 'team8.png', 'static/app-screen/screen-2.png', 'static/app-screen/screen-2.png', 'static/app-screen/screen-2.png', 'static/app-screen/screen-2.png', '.png', 'png', 0, 300, 700, 1, '2024-06-25 06:58:18', '2024-06-25 06:58:18', 1, 1),
(39, 1, 'team8', 'team8.png', 'static/app-screen/screen-3.png', 'static/app-screen/screen-3.png', 'static/app-screen/screen-3.png', 'static/app-screen/screen-3.png', '.png', 'png', 0, 300, 700, 1, '2024-06-25 06:58:18', '2024-06-25 06:58:18', 1, 1),
(40, 1, 'cms1', 'cms1.png', 'vendor/Saas/Assets/images/img_1.png', 'vendor/Saas/Assets/images/img_1.png', 'vendor/Saas/Assets/images/img_1.png', 'vendor/Saas/Assets/images/img_1.png', '.png', 'png', 0, 500, 500, 1, '2024-06-25 06:58:18', '2024-06-25 06:58:18', 1, 1),
(41, 1, 'cms2', 'cms2.png', 'vendor/Saas/Assets/images/img_2.png', 'vendor/Saas/Assets/images/img_2.png', 'vendor/Saas/Assets/images/img_2.png', 'vendor/Saas/Assets/images/img_2.png', '.png', 'png', 0, 500, 500, 1, '2024-06-25 06:58:18', '2024-06-25 06:58:18', 1, 1),
(42, 1, 'cms3', 'cms3.png', 'vendor/Saas/Assets/images/img_3.png', 'vendor/Saas/Assets/images/img_3.png', 'vendor/Saas/Assets/images/img_3.png', 'vendor/Saas/Assets/images/img_3.png', '.png', 'png', 0, 500, 500, 1, '2024-06-25 06:58:18', '2024-06-25 06:58:18', 1, 1),
(43, 1, 'cms4', 'cms4.png', 'vendor/Saas/Assets/images/img_4.png', 'vendor/Saas/Assets/images/img_4.png', 'vendor/Saas/Assets/images/img_4.png', 'vendor/Saas/Assets/images/img_4.png', '.png', 'png', 0, 500, 500, 1, '2024-06-25 06:58:18', '2024-06-25 06:58:18', 1, 1),
(44, 1, 'cms5', 'cms5.png', 'vendor/Saas/Assets/images/img_5.png', 'vendor/Saas/Assets/images/img_5.png', 'vendor/Saas/Assets/images/img_5.png', 'vendor/Saas/Assets/images/img_5.png', '.png', 'png', 0, 500, 500, 1, '2024-06-25 06:58:18', '2024-06-25 06:58:18', 1, 1),
(45, 1, 'feature', 'feature.png', 'vendor/Saas/Assets/images/project.png', 'vendor/Saas/Assets/images/project.png', 'vendor/Saas/Assets/images/project.png', 'vendor/Saas/Assets/images/project.png', '.png', 'png', 0, 500, 500, 1, '2024-06-25 06:58:18', '2024-06-25 06:58:18', 1, 1),
(46, 1, 'cms6', 'cms6.png', 'vendor/Saas/Assets/images/img_6.png', 'vendor/Saas/Assets/images/img_6.png', 'vendor/Saas/Assets/images/img_6.png', 'vendor/Saas/Assets/images/img_6.png', '.png', 'png', 0, 500, 500, 1, '2024-06-25 06:58:18', '2024-06-25 06:58:18', 1, 1),
(47, 1, 'cms7', 'cms7.png', 'vendor/Saas/Assets/images/img_7.png', 'vendor/Saas/Assets/images/img_7.png', 'vendor/Saas/Assets/images/img_7.png', 'vendor/Saas/Assets/images/img_7.png', '.png', 'png', 0, 500, 500, 1, '2024-06-25 06:58:18', '2024-06-25 06:58:18', 1, 1),
(48, 1, 'cms8', 'cms8.png', 'vendor/Saas/Assets/images/img_8.png', 'vendor/Saas/Assets/images/img_8.png', 'vendor/Saas/Assets/images/img_8.png', 'vendor/Saas/Assets/images/img_8.png', '.png', 'png', 0, 500, 500, 1, '2024-06-25 06:58:18', '2024-06-25 06:58:18', 1, 1),
(49, 1, 'hero-image', 'hero-image.png', 'vendor/Saas/Assets/images/hero-image.png', 'vendor/Saas/Assets/images/hero-image.png', 'vendor/Saas/Assets/images/hero-image.png', 'vendor/Saas/Assets/images/hero-image.png', '.png', 'png', 0, 500, 500, 1, '2024-06-25 06:58:18', '2024-06-25 06:58:18', 1, 1),
(50, 1, NULL, NULL, 'allUploads/uploads/settings/logo/2024100209542024-04-16.jpg', NULL, NULL, NULL, '.jpg', 'jpg', NULL, NULL, NULL, NULL, '2024-10-02 02:54:59', '2024-10-02 02:54:59', 1, 1),
(51, 1, NULL, NULL, 'allUploads/uploads/settings/logo/202410020954Screenshot_2024-10-02_105316-removebg-preview.png', NULL, NULL, NULL, '.png', 'png', NULL, NULL, NULL, NULL, '2024-10-02 02:54:59', '2024-10-02 02:54:59', 1, 1),
(52, 1, NULL, NULL, 'allUploads/uploads/settings/logo/202410020954Screenshot_2024-10-02_105316-removebg-preview.png', NULL, NULL, NULL, '.png', 'png', NULL, NULL, NULL, NULL, '2024-10-02 02:54:59', '2024-10-02 02:54:59', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `country_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `userID` int(11) DEFAULT NULL,
  `face_recognition` tinyint(4) DEFAULT '1',
  `face_data` longtext COLLATE utf8mb4_unicode_ci,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_admin` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `is_hr` tinyint(4) DEFAULT NULL,
  `role_id` bigint(20) UNSIGNED DEFAULT NULL,
  `department_id` bigint(20) UNSIGNED DEFAULT NULL,
  `shift_id` bigint(20) UNSIGNED DEFAULT NULL,
  `designation_id` bigint(20) UNSIGNED DEFAULT NULL,
  `permissions` text COLLATE utf8mb4_unicode_ci,
  `verification_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'email verification code',
  `manager_id` bigint(20) UNSIGNED DEFAULT NULL,
  `employee_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `employee_type` enum('Permanent','On Probation','Contractual','Intern') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'On Probation',
  `grade` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nationality` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `facebook_link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `linkedin_link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `instagram_link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `passport_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `passport_file_id` bigint(20) UNSIGNED DEFAULT NULL,
  `passport_expire_date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `passport_is_notified` tinyint(4) NOT NULL DEFAULT '0',
  `eid_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `eid_file_id` bigint(20) UNSIGNED DEFAULT NULL,
  `eid_expire_date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `eid_is_notified` tinyint(4) NOT NULL DEFAULT '0',
  `visa_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `visa_file_id` bigint(20) UNSIGNED DEFAULT NULL,
  `visa_expire_date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `visa_is_notified` tinyint(4) NOT NULL DEFAULT '0',
  `insurance_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `insurance_file_id` bigint(20) UNSIGNED DEFAULT NULL,
  `insurance_expire_date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `insurance_is_notified` tinyint(4) NOT NULL DEFAULT '0',
  `labour_card_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `labour_card_file_id` bigint(20) UNSIGNED DEFAULT NULL,
  `labour_card_expire_date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `labour_card_is_notified` tinyint(4) NOT NULL DEFAULT '0',
  `nid_card_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nid_card_id` bigint(20) UNSIGNED DEFAULT NULL COMMENT 'this will be uploaded file',
  `tin` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tin_id_front_file` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tin_id_back_file` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bank_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bank_account` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_login_device` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `device_uuid` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `emergency_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `emergency_mobile_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `emergency_mobile_relationship` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'email verify token',
  `email_verify_token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'email verify token',
  `is_email_verified` enum('verified','non-verified') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'verified',
  `email_verified_at` timestamp NULL DEFAULT NULL COMMENT 'email verified at',
  `phone_verify_token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'phone verify token',
  `is_phone_verified` enum('verified','non-verified') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'verified',
  `phone_verified_at` timestamp NULL DEFAULT NULL COMMENT 'phone verified at',
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password_hints` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'user can set a password hint for easy remember',
  `avatar_id` bigint(20) UNSIGNED DEFAULT NULL,
  `status_id` bigint(20) UNSIGNED NOT NULL DEFAULT '1',
  `last_login_at` timestamp NULL DEFAULT NULL COMMENT 'last login at',
  `last_logout_at` timestamp NULL DEFAULT NULL COMMENT 'last logout at',
  `last_login_ip` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'last login ip',
  `device_token` longtext COLLATE utf8mb4_unicode_ci COMMENT 'device_token from firebase',
  `login_access` tinyint(4) NOT NULL DEFAULT '1' COMMENT '0 = off, 1 = on',
  `address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gender` enum('Male','Female','Unisex','Others') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `birth_date` date DEFAULT NULL,
  `religion` enum('Islam','Hindu','Christian') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Islam',
  `blood_group` enum('A+','A-','B+','B-','O+','O-','AB+','AB-') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `joining_date` date DEFAULT NULL,
  `basic_salary` double(16,2) NOT NULL DEFAULT '0.00',
  `marital_status` enum('Married','Unmarried') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Unmarried',
  `contract_start_date` date DEFAULT NULL,
  `contract_end_date` date DEFAULT NULL,
  `payslip_type` tinyint(4) NOT NULL DEFAULT '1' COMMENT '1 = monthly, 2 = weekly, 3 = daily',
  `late_check_in` int(11) NOT NULL DEFAULT '0',
  `early_check_out` int(11) NOT NULL DEFAULT '0',
  `extra_leave` int(11) NOT NULL DEFAULT '0',
  `monthly_leave` int(11) NOT NULL DEFAULT '0',
  `is_free_location` tinyint(4) NOT NULL DEFAULT '0',
  `time_zone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Asia/Dhaka',
  `speak_language` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'english',
  `lang` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `social_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `social_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `face_image` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `company_id` bigint(20) UNSIGNED DEFAULT '1',
  `branch_id` bigint(20) UNSIGNED DEFAULT '1',
  `attendance_method` json DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `country_id`, `name`, `userID`, `face_recognition`, `face_data`, `email`, `phone`, `is_admin`, `is_hr`, `role_id`, `department_id`, `shift_id`, `designation_id`, `permissions`, `verification_code`, `manager_id`, `employee_id`, `employee_type`, `grade`, `nationality`, `facebook_link`, `linkedin_link`, `instagram_link`, `passport_number`, `passport_file_id`, `passport_expire_date`, `passport_is_notified`, `eid_number`, `eid_file_id`, `eid_expire_date`, `eid_is_notified`, `visa_number`, `visa_file_id`, `visa_expire_date`, `visa_is_notified`, `insurance_number`, `insurance_file_id`, `insurance_expire_date`, `insurance_is_notified`, `labour_card_number`, `labour_card_file_id`, `labour_card_expire_date`, `labour_card_is_notified`, `nid_card_number`, `nid_card_id`, `tin`, `tin_id_front_file`, `tin_id_back_file`, `bank_name`, `bank_account`, `last_login_device`, `device_uuid`, `emergency_name`, `emergency_mobile_number`, `emergency_mobile_relationship`, `_token`, `email_verify_token`, `is_email_verified`, `email_verified_at`, `phone_verify_token`, `is_phone_verified`, `phone_verified_at`, `password`, `password_hints`, `avatar_id`, `status_id`, `last_login_at`, `last_logout_at`, `last_login_ip`, `device_token`, `login_access`, `address`, `gender`, `birth_date`, `religion`, `blood_group`, `joining_date`, `basic_salary`, `marital_status`, `contract_start_date`, `contract_end_date`, `payslip_type`, `late_check_in`, `early_check_out`, `extra_leave`, `monthly_leave`, `is_free_location`, `time_zone`, `speak_language`, `lang`, `social_id`, `social_type`, `remember_token`, `deleted_at`, `face_image`, `created_at`, `updated_at`, `company_id`, `branch_id`, `attendance_method`) VALUES
(1, 223, 'Admin', NULL, 1, NULL, 'admin@onesttech.com', '0172xxxxxxxx', '1', 0, 2, 1, NULL, 1, '[\"hr_menu\",\"designation_read\",\"designation_create\",\"designation_update\",\"designation_delete\",\"department_read\",\"department_create\",\"department_update\",\"department_delete\",\"user_read\",\"profile_view\",\"user_create\",\"user_edit\",\"user_permission\",\"user_update\",\"user_delete\",\"user_menu\",\"make_hr\",\"profile_image_view\",\"user_device_list\",\"reset_device\",\"attendance_profile\",\"phonebook_profile\",\"support_ticket_profile\",\"advance_profile\",\"commission_profile\",\"appointment_profile\",\"visit_profile\",\"leave_request_profile\",\"notice_profile\",\"salary_profile\",\"project_profile\",\"task_profile\",\"award_profile\",\"travel_profile\",\"role_read\",\"role_create\",\"role_update\",\"role_delete\",\"branch_read\",\"branch_create\",\"branch_update\",\"branch_delete\",\"leave_type_read\",\"leave_type_create\",\"leave_type_update\",\"leave_type_delete\",\"leave_menu\",\"leave_assign_read\",\"leave_assign_create\",\"leave_assign_update\",\"leave_assign_delete\",\"daily_leave_read\",\"leave_request_read\",\"leave_request_update\",\"leave_request_store\",\"leave_request_create\",\"leave_request_approve\",\"leave_request_reject\",\"leave_request_delete\",\"weekend_read\",\"weekend_update\",\"holiday_read\",\"holiday_create\",\"holiday_update\",\"holiday_delete\",\"schedule_read\",\"schedule_create\",\"schedule_update\",\"schedule_delete\",\"attendance_read\",\"attendance_create\",\"attendance_update\",\"attendance_delete\",\"attendance_menu\",\"shift_read\",\"shift_create\",\"shift_update\",\"shift_delete\",\"shift_menu\",\"announcement_menu\",\"notice_menu\",\"notice_list\",\"notice_edit\",\"notice_update\",\"notice_create\",\"notice_delete\",\"advance_type_menu\",\"advance_type_create\",\"advance_type_store\",\"advance_type_edit\",\"advance_type_update\",\"advance_type_delete\",\"advance_type_view\",\"advance_type_list\",\"account_menu\",\"account_create\",\"account_store\",\"account_edit\",\"account_update\",\"account_delete\",\"account_view\",\"account_list\",\"account_search\",\"project_menu\",\"project_create\",\"project_store\",\"project_edit\",\"project_update\",\"project_delete\",\"project_view\",\"project_list\",\"project_activity_view\",\"project_member_view\",\"project_member_delete\",\"project_complete\",\"project_payment\",\"project_invoice_view\",\"project_discussion_create\",\"project_discussion_store\",\"project_discussion_edit\",\"project_discussion_update\",\"project_discussion_delete\",\"project_discussion_view\",\"project_discussion_list\",\"project_discussion_comment\",\"project_discussion_reply\",\"project_file_create\",\"project_file_store\",\"project_file_edit\",\"project_file_update\",\"project_file_delete\",\"project_file_view\",\"project_file_list\",\"project_file_download\",\"project_file_comment\",\"project_file_reply\",\"project_notes_create\",\"project_notes_store\",\"project_notes_edit\",\"project_notes_update\",\"project_notes_delete\",\"project_notes_list\",\"project_files_comment\",\"general_settings_read\",\"general_settings_update\",\"email_settings_update\",\"storage_settings_update\",\"task_menu\",\"task_create\",\"task_store\",\"task_edit\",\"task_update\",\"task_delete\",\"task_view\",\"task_list\",\"task_activity_view\",\"task_assign_view\",\"task_assign_delete\",\"task_complete\",\"client_menu\",\"client_create\",\"client_store\",\"client_edit\",\"client_update\",\"client_delete\",\"client_view\",\"client_list\",\"task_discussion_create\",\"task_discussion_store\",\"task_discussion_edit\",\"task_discussion_update\",\"task_discussion_delete\",\"task_discussion_view\",\"task_discussion_list\",\"task_discussion_comment\",\"task_discussion_reply\",\"task_file_create\",\"task_file_store\",\"task_file_edit\",\"task_file_update\",\"task_file_delete\",\"task_file_view\",\"task_file_list\",\"task_file_download\",\"task_file_comment\",\"task_file_reply\",\"task_notes_create\",\"task_notes_store\",\"task_notes_edit\",\"task_notes_update\",\"task_notes_delete\",\"task_notes_list\",\"task_files_comment\",\"travel_type_menu\",\"travel_type_create\",\"travel_type_store\",\"travel_type_edit\",\"travel_type_update\",\"travel_type_delete\",\"travel_type_list\",\"travel_menu\",\"travel_create\",\"travel_store\",\"travel_edit\",\"travel_update\",\"travel_delete\",\"travel_list\",\"travel_approve\",\"travel_payment\",\"meeting_menu\",\"meeting_create\",\"meeting_store\",\"meeting_edit\",\"meeting_update\",\"meeting_delete\",\"meeting_list\",\"appointment_menu\",\"appointment_read\",\"appointment_create\",\"appointment_approve\",\"appointment_reject\",\"appointment_delete\",\"performance_menu\",\"performance_settings\",\"performance_indicator_menu\",\"performance_indicator_create\",\"performance_indicator_store\",\"performance_indicator_edit\",\"performance_indicator_update\",\"performance_indicator_delete\",\"performance_indicator_list\",\"performance_indicator_view\",\"performance_appraisal_menu\",\"performance_appraisal_create\",\"performance_appraisal_store\",\"performance_appraisal_edit\",\"performance_appraisal_update\",\"performance_appraisal_delete\",\"performance_appraisal_list\",\"performance_appraisal_view\",\"performance_goal_type_menu\",\"performance_goal_type_create\",\"performance_goal_type_store\",\"performance_goal_type_edit\",\"performance_goal_type_update\",\"performance_goal_type_delete\",\"performance_goal_type_list\",\"performance_goal_menu\",\"performance_goal_create\",\"performance_goal_store\",\"performance_goal_edit\",\"performance_goal_update\",\"performance_goal_delete\",\"performance_goal_view\",\"performance_goal_list\",\"performance_competence_type_menu\",\"performance_competence_type_create\",\"performance_competence_type_store\",\"performance_competence_type_edit\",\"performance_competence_type_update\",\"performance_competence_type_delete\",\"performance_competence_type_list\",\"performance_competence_menu\",\"performance_competence_create\",\"performance_competence_store\",\"performance_competence_edit\",\"performance_competence_update\",\"performance_competence_delete\",\"performance_competence_list\",\"attendance_report_read\",\"live_tracking_read\",\"report_menu\",\"leave_settings_read\",\"leave_settings_update\",\"ip_read\",\"ip_create\",\"ip_update\",\"ip_delete\",\"company_setup_menu\",\"company_setup_activation\",\"company_setup_activation_update\",\"company_setup_configuration\",\"company_setup_configuration_update\",\"company_setup_location\",\"company_settings_update\",\"location_create\",\"location_store\",\"location_edit\",\"location_update\",\"location_delete\",\"locationApi\",\"claim_read\",\"claim_create\",\"claim_update\",\"claim_delete\",\"payment_read\",\"payment_create\",\"payment_update\",\"payment_delete\",\"visit_menu\",\"visit_read\",\"visit_update\",\"visit_view\",\"app_settings_menu\",\"app_settings_update\",\"web_setup_menu\",\"content_menu\",\"content_update\",\"content_delete\",\"menu\",\"menu_create\",\"menu_store\",\"menu_edit\",\"menu_update\",\"menu_delete\",\"contact_menu\",\"contact_create\",\"contact_update\",\"contact_delete\",\"language_menu\",\"language_create\",\"language_edit\",\"language_update\",\"language_delete\",\"make_default\",\"setup_language\",\"team_member_menu\",\"team_member_read\",\"team_member_create\",\"team_member_store\",\"team_member_edit\",\"team_member_update\",\"team_member_delete\",\"support_menu\",\"support_read\",\"support_create\",\"support_reply\",\"support_delete\",\"model_read\",\"model_create\",\"model_update\",\"model_delete\",\"brand_read\",\"brand_create\",\"brand_update\",\"brand_delete\",\"machine_read\",\"machine_create\",\"machine_update\",\"machine_delete\",\"package_read\",\"package_create\",\"package_update\",\"package_delete\",\"institution_read\",\"institution_create\",\"institution_update\",\"institution_delete\",\"addons_menu\",\"employee_document_type_read\",\"employee_document_type_create\",\"employee_document_type_update\",\"employee_document_type_delete\",\"employee_document_read\",\"employee_document_create\",\"employee_document_download\"]', NULL, NULL, 'EMP-', 'On Probation', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'web', 'd520c7a8-421b-4563-b955-f5abc56b97ec', NULL, NULL, NULL, 'LiXwORmM2UxOP3zxUgxAf77gjQB7gyqtq3hMrBjX', 'dgQCGQoz32', 'verified', '2024-06-25 06:58:18', NULL, 'verified', NULL, '$2y$10$05SotE1KMUeZT/KvzkePOu71t0eMvWyHnFSyy4qsj1YRDPujpDpMy', NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, 'Islam', NULL, NULL, 0.00, 'Unmarried', NULL, NULL, 1, 0, 0, 0, 0, 0, 'Asia/Dhaka', 'english', 'vi', NULL, NULL, 'XMZEpI80o1Do2bZCky0Eg7n4jpCPY3SzqTmnRr0qSFJmfOMy29RWTicrKwgr', '2024-10-02 05:44:11', NULL, '2024-06-25 06:58:18', '2024-10-02 05:44:11', 1, 1, NULL),
(2, 223, 'HR', NULL, 1, NULL, 'hr@onesttech.com', '0171xxxxxxx1', '0', 1, 3, 1, NULL, 1, '\"[\\\"team_menu\\\",\\\"team_list\\\",\\\"team_create\\\",\\\"team_update\\\",\\\"team_edit\\\",\\\"team_delete\\\",\\\"team_member_view\\\",\\\"team_member_create\\\",\\\"team_member_edit\\\",\\\"team_member_delete\\\",\\\"team_member_assign\\\",\\\"team_member_unassign\\\",\\\"dashboard\\\",\\\"designation_read\\\",\\\"designation_create\\\",\\\"designation_update\\\",\\\"designation_delete\\\",\\\"shift_read\\\",\\\"shift_create\\\",\\\"shift_update\\\",\\\"shift_delete\\\",\\\"department_read\\\",\\\"department_create\\\",\\\"department_update\\\",\\\"department_delete\\\",\\\"user_menu\\\",\\\"user_read\\\",\\\"profile_view\\\",\\\"user_create\\\",\\\"user_edit\\\",\\\"user_update\\\",\\\"user_delete\\\",\\\"user_banned\\\",\\\"user_unbanned\\\",\\\"make_hr\\\",\\\"user_permission\\\",\\\"profile_image_view\\\",\\\"user_device_list\\\",\\\"reset_device\\\",\\\"role_read\\\",\\\"role_create\\\",\\\"role_update\\\",\\\"role_delete\\\",\\\"branch_read\\\",\\\"branch_create\\\",\\\"branch_update\\\",\\\"branch_delete\\\",\\\"leave_menu\\\",\\\"leave_type_read\\\",\\\"leave_type_create\\\",\\\"leave_type_update\\\",\\\"leave_type_delete\\\",\\\"leave_assign_read\\\",\\\"leave_assign_create\\\",\\\"leave_assign_update\\\",\\\"leave_assign_delete\\\",\\\"leave_request_read\\\",\\\"leave_request_create\\\",\\\"leave_request_approve\\\",\\\"leave_request_reject\\\",\\\"leave_request_delete\\\",\\\"appointment_read\\\",\\\"appointment_menu\\\",\\\"appointment_create\\\",\\\"appointment_approve\\\",\\\"appointment_reject\\\",\\\"appointment_delete\\\",\\\"weekend_read\\\",\\\"weekend_update\\\",\\\"attendance_update\\\",\\\"holiday_read\\\",\\\"holiday_create\\\",\\\"holiday_update\\\",\\\"holiday_delete\\\",\\\"schedule_read\\\",\\\"schedule_create\\\",\\\"schedule_update\\\",\\\"schedule_delete\\\",\\\"attendance_menu\\\",\\\"attendance_read\\\",\\\"attendance_create\\\",\\\"attendance_update\\\",\\\"attendance_delete\\\",\\\"leave_settings_read\\\",\\\"leave_settings_update\\\",\\\"company_settings_read\\\",\\\"company_settings_update\\\",\\\"locationApi\\\",\\\"company_setup_menu\\\",\\\"company_setup_activation\\\",\\\"company_setup_configuration\\\",\\\"company_setup_ip_whitelist\\\",\\\"company_setup_location\\\",\\\"ip_read\\\",\\\"ip_create\\\",\\\"ip_update\\\",\\\"ip_delete\\\",\\\"attendance_report_read\\\",\\\"live_tracking_read\\\",\\\"report_menu\\\",\\\"report\\\",\\\"claim_read\\\",\\\"claim_create\\\",\\\"claim_update\\\",\\\"claim_delete\\\",\\\"payment_read\\\",\\\"payment_create\\\",\\\"payment_update\\\",\\\"payment_delete\\\",\\\"visit_menu\\\",\\\"visit_read\\\",\\\"visit_view\\\",\\\"visit_update\\\",\\\"payroll_menu\\\",\\\"list_payroll_item\\\",\\\"create_payroll_item\\\",\\\"store_payroll_item\\\",\\\"update_payroll_item\\\",\\\"delete_payroll_item\\\",\\\"view_payroll_item\\\",\\\"payroll_item_menu\\\",\\\"list_payroll_set\\\",\\\"create_payroll_set\\\",\\\"store_payroll_set\\\",\\\"update_payroll_set\\\",\\\"delete_payroll_set\\\",\\\"view_payroll_set\\\",\\\"edit_payroll_set\\\",\\\"payroll_set_menu\\\",\\\"advance_salaries_menu\\\",\\\"advance_salaries_create\\\",\\\"advance_salaries_store\\\",\\\"advance_salaries_edit\\\",\\\"advance_salaries_update\\\",\\\"advance_salaries_delete\\\",\\\"advance_salaries_view\\\",\\\"advance_salaries_approve\\\",\\\"advance_salaries_list\\\",\\\"advance_salaries_pay\\\",\\\"advance_salaries_invoice\\\",\\\"advance_salaries_search\\\",\\\"payslip_menu\\\",\\\"salary_generate\\\",\\\"salary_view\\\",\\\"salary_delete\\\",\\\"salary_edit\\\",\\\"salary_update\\\",\\\"salary_payment\\\",\\\"payslip_list\\\",\\\"advance_type_menu\\\",\\\"advance_type_create\\\",\\\"advance_type_store\\\",\\\"advance_type_edit\\\",\\\"advance_type_update\\\",\\\"advance_type_delete\\\",\\\"advance_type_view\\\",\\\"advance_type_list\\\",\\\"salary_menu\\\",\\\"salary_store\\\",\\\"salary_edit\\\",\\\"salary_update\\\",\\\"salary_delete\\\",\\\"salary_view\\\",\\\"salary_list\\\",\\\"salary_search\\\",\\\"salary_pay\\\",\\\"salary_invoice\\\",\\\"salary_approve\\\",\\\"salary_generate\\\",\\\"salary_calculate\\\",\\\"account_menu\\\",\\\"account_create\\\",\\\"account_store\\\",\\\"account_edit\\\",\\\"account_update\\\",\\\"account_delete\\\",\\\"account_view\\\",\\\"account_list\\\",\\\"account_search\\\",\\\"deposit_menu\\\",\\\"deposit_create\\\",\\\"deposit_store\\\",\\\"deposit_edit\\\",\\\"deposit_update\\\",\\\"deposit_delete\\\",\\\"deposit_list\\\",\\\"expense_menu\\\",\\\"expense_create\\\",\\\"expense_store\\\",\\\"expense_edit\\\",\\\"expense_update\\\",\\\"expense_delete\\\",\\\"expense_list\\\",\\\"expense_view\\\",\\\"expense_approve\\\",\\\"expense_invoice\\\",\\\"expense_pay\\\",\\\"transaction_menu\\\",\\\"transaction_create\\\",\\\"transaction_store\\\",\\\"transaction_edit\\\",\\\"transaction_update\\\",\\\"transaction_delete\\\",\\\"transaction_view\\\",\\\"transaction_list\\\",\\\"deposit_category_menu\\\",\\\"deposit_category_create\\\",\\\"deposit_category_store\\\",\\\"deposit_category_edit\\\",\\\"deposit_category_update\\\",\\\"deposit_category_delete\\\",\\\"deposit_category_list\\\",\\\"payment_method_menu\\\",\\\"payment_method_create\\\",\\\"payment_method_store\\\",\\\"payment_method_edit\\\",\\\"payment_method_update\\\",\\\"payment_method_delete\\\",\\\"payment_method_list\\\",\\\"travel_menu\\\",\\\"travel_create\\\",\\\"travel_store\\\",\\\"travel_edit\\\",\\\"travel_update\\\",\\\"travel_delete\\\",\\\"travel_list\\\",\\\"travel_view\\\",\\\"travel_approve\\\",\\\"travel_invoice\\\",\\\"travel_pay\\\",\\\"meeting_menu\\\",\\\"meeting_create\\\",\\\"meeting_store\\\",\\\"meeting_edit\\\",\\\"meeting_update\\\",\\\"meeting_delete\\\",\\\"meeting_list\\\",\\\"meeting_view\\\",\\\"task_menu\\\",\\\"task.create\\\",\\\"task.index\\\",\\\"task.view\\\",\\\"task.edit\\\",\\\"conference_create\\\",\\\"conference_read\\\",\\\"conference_store\\\",\\\"conference_update\\\",\\\"conference_delete\\\",\\\"conference_join\\\",\\\"announcement_menu\\\",\\\"notice_menu\\\",\\\"notice_list\\\",\\\"notice_create\\\",\\\"notice_update\\\",\\\"notice_edit\\\",\\\"notice_delete\\\",\\\"send_sms_menu\\\",\\\"send_sms_list\\\",\\\"send_sms_create\\\",\\\"send_sms_update\\\",\\\"send_sms_edit\\\",\\\"send_sms_delete\\\",\\\"send_email_menu\\\",\\\"send_email_list\\\",\\\"send_email_create\\\",\\\"send_email_update\\\",\\\"send_email_edit\\\",\\\"send_email_delete\\\",\\\"send_notification_menu\\\",\\\"send_notification_list\\\",\\\"send_notification_create\\\",\\\"send_notification_update\\\",\\\"send_notification_edit\\\",\\\"send_notification_delete\\\",\\\"announcement_menu\\\",\\\"notice_menu\\\",\\\"notice_list\\\",\\\"notice_create\\\",\\\"notice_update\\\",\\\"notice_edit\\\",\\\"notice_delete\\\",\\\"send_sms_menu\\\",\\\"send_sms_list\\\",\\\"send_sms_create\\\",\\\"send_sms_update\\\",\\\"send_sms_edit\\\",\\\"send_sms_delete\\\",\\\"send_email_menu\\\",\\\"send_email_list\\\",\\\"send_email_create\\\",\\\"send_email_update\\\",\\\"send_email_edit\\\",\\\"send_email_delete\\\",\\\"send_notification_menu\\\",\\\"send_notification_list\\\",\\\"send_notification_create\\\",\\\"send_notification_update\\\",\\\"send_notification_edit\\\",\\\"send_notification_delete\\\",\\\"support_menu\\\",\\\"support_read\\\",\\\"support_create\\\",\\\"support_reply\\\",\\\"support_delete\\\"]\"', NULL, NULL, 'EMP-', 'On Probation', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'web', 'd520c7a8-421b-4563-b955-f5abc56b97ec', NULL, NULL, NULL, 'tvo6fNQMCMs1rnoXrwUNySr3Q6zumnSZwRUvVKy1', 'Fan31QpyOT', 'verified', '2024-06-25 06:58:18', NULL, 'verified', NULL, '$2y$10$saTkTqf9VdfRMHn6F/aCYOBYoYdsDuJ6P2d9MS7f2UdCtyUi/K1wK', NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, 'Islam', NULL, NULL, 0.00, 'Unmarried', NULL, NULL, 1, 0, 0, 0, 0, 0, 'Asia/Dhaka', 'english', NULL, NULL, NULL, 'R8LtYOAEJbN0L3ewZnGhNnNyorIpt9UqqRoalyxPVxf23GrtDTLGrQLHTzNC', '2024-10-02 03:06:18', NULL, '2024-06-25 06:58:18', '2024-10-02 03:06:18', 1, 1, NULL),
(3, 223, 'Ng&ocirc; Trường Vũ', NULL, 1, NULL, 'staff@onesttech.com', '92895313922', '0', 0, 4, 1, NULL, 1, '[\"designation_read\",\"designation_create\",\"designation_update\",\"department_read\",\"user_read\",\"profile_view\",\"user_create\",\"user_edit\",\"user_update\",\"user_menu\",\"profile_image_view\",\"user_device_list\",\"attendance_profile\",\"contract_profile\",\"phonebook_profile\",\"support_ticket_profile\",\"advance_profile\",\"commission_profile\",\"appointment_profile\",\"leave_request_profile\",\"notice_profile\",\"salary_profile\",\"project_profile\",\"task_profile\",\"award_profile\",\"role_read\",\"leave_type_read\",\"leave_type_create\",\"leave_type_update\",\"leave_menu\",\"leave_assign_read\",\"leave_assign_create\",\"leave_assign_update\",\"daily_leave_read\",\"leave_request_read\",\"leave_request_update\",\"leave_request_create\",\"weekend_read\",\"weekend_update\",\"holiday_read\",\"holiday_create\",\"schedule_read\",\"schedule_create\",\"schedule_update\",\"attendance_read\",\"attendance_create\",\"attendance_update\",\"attendance_menu\",\"shift_read\",\"shift_create\",\"shift_update\",\"account_menu\",\"account_view\",\"account_list\",\"account_search\",\"task_menu\",\"task_create\",\"task_edit\",\"task_update\",\"task_delete\",\"task_view\",\"task_list\",\"task_activity_view\",\"task_complete\",\"meeting_menu\",\"meeting_create\",\"meeting_store\",\"meeting_edit\",\"meeting_update\",\"meeting_view\",\"meeting_list\",\"appointment_menu\",\"appointment_read\",\"appointment_create\",\"attendance_report_read\",\"live_tracking_read\",\"report_menu\",\"leave_settings_read\",\"ip_read\",\"ip_create\",\"visit_menu\",\"visit_read\",\"visit_view\"]', NULL, 1, 'EMP-', 'On Probation', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'web', 'd520c7a8-421b-4563-b955-f5abc56b97ec', NULL, NULL, NULL, 'J1aA2kFflSxRvScjr6FW0zVoQg4d1P82pAw1klsb', 'BFB6jBWHPO', 'verified', '2024-06-25 06:58:18', NULL, 'verified', NULL, '$2y$10$9ozXVwXIKBZeVl4aQvEliuPc/IML/ktH2J7XS8LJ26yasLAira51m', NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, '', NULL, '0000-00-00', 'Islam', NULL, '2024-06-14', 0.00, 'Unmarried', NULL, NULL, 1, 0, 0, 0, 0, 0, 'Asia/Ho_Chi_Minh', 'english', NULL, NULL, NULL, 'RYdVVT26tLEav49naLtvFlLXOkBVjGRein2yUTOr7SXvDQfaAQvoGzkD2Vs4', '2024-10-02 05:43:41', NULL, '2024-06-25 06:58:18', '2024-10-02 05:43:41', 1, 1, NULL),
(4, 17, 'admin1', NULL, 1, NULL, 'admin1@gmail.com', '09289531393', '0', 0, 2, 1, NULL, 1, '[\"hr_menu\",\"designation_read\",\"designation_create\",\"designation_update\",\"designation_delete\",\"department_read\",\"department_create\",\"department_update\",\"department_delete\",\"user_read\",\"profile_view\",\"user_create\",\"user_edit\",\"user_permission\",\"user_update\",\"user_delete\",\"registerFace\",\"user_menu\",\"make_hr\",\"profile_image_view\",\"user_device_list\",\"reset_device\",\"attendance_profile\",\"contract_profile\",\"phonebook_profile\",\"support_ticket_profile\",\"advance_profile\",\"commission_profile\",\"appointment_profile\",\"visit_profile\",\"leave_request_profile\",\"notice_profile\",\"salary_profile\",\"project_profile\",\"task_profile\",\"award_profile\",\"travel_profile\",\"role_read\",\"role_create\",\"role_update\",\"role_delete\",\"branch_read\",\"branch_create\",\"branch_update\",\"branch_delete\",\"leave_type_read\",\"leave_type_create\",\"leave_type_update\",\"leave_type_delete\",\"leave_menu\",\"leave_assign_read\",\"leave_assign_create\",\"leave_assign_update\",\"leave_assign_delete\",\"daily_leave_read\",\"leave_request_read\",\"leave_request_update\",\"leave_request_store\",\"leave_request_create\",\"leave_request_approve\",\"leave_request_reject\",\"leave_request_delete\",\"weekend_read\",\"weekend_update\",\"holiday_read\",\"holiday_create\",\"holiday_update\",\"holiday_delete\",\"schedule_read\",\"schedule_create\",\"schedule_update\",\"schedule_delete\",\"attendance_read\",\"attendance_create\",\"attendance_update\",\"attendance_delete\",\"attendance_menu\",\"shift_read\",\"shift_create\",\"shift_update\",\"shift_delete\",\"announcement_menu\",\"notice_menu\",\"notice_list\",\"notice_edit\",\"notice_update\",\"notice_create\",\"notice_delete\",\"advance_type_menu\",\"advance_type_create\",\"advance_type_store\",\"advance_type_edit\",\"advance_type_update\",\"advance_type_delete\",\"advance_type_view\",\"advance_type_list\",\"account_menu\",\"account_create\",\"account_store\",\"account_edit\",\"account_update\",\"account_delete\",\"account_view\",\"account_list\",\"account_search\",\"project_menu\",\"project_create\",\"project_store\",\"project_edit\",\"project_update\",\"project_delete\",\"project_view\",\"project_list\",\"project_activity_view\",\"project_member_view\",\"project_member_delete\",\"project_complete\",\"project_payment\",\"project_invoice_view\",\"project_discussion_create\",\"project_discussion_store\",\"project_discussion_edit\",\"project_discussion_update\",\"project_discussion_delete\",\"project_discussion_view\",\"project_discussion_list\",\"project_discussion_comment\",\"project_discussion_reply\",\"project_file_create\",\"project_file_store\",\"project_file_edit\",\"project_file_update\",\"project_file_delete\",\"project_file_view\",\"project_file_list\",\"project_file_download\",\"project_file_comment\",\"project_file_reply\",\"project_notes_create\",\"project_notes_store\",\"project_notes_edit\",\"project_notes_update\",\"project_notes_delete\",\"project_notes_list\",\"project_files_comment\",\"general_settings_read\",\"general_settings_update\",\"email_settings_update\",\"storage_settings_update\",\"task_menu\",\"task_create\",\"task_store\",\"task_edit\",\"task_update\",\"task_delete\",\"task_view\",\"task_list\",\"task_activity_view\",\"task_assign_view\",\"task_assign_delete\",\"task_complete\",\"client_menu\",\"client_create\",\"client_store\",\"client_edit\",\"client_update\",\"client_delete\",\"client_view\",\"client_list\",\"task_discussion_create\",\"task_discussion_store\",\"task_discussion_edit\",\"task_discussion_update\",\"task_discussion_delete\",\"task_discussion_view\",\"task_discussion_list\",\"task_discussion_comment\",\"task_discussion_reply\",\"task_file_create\",\"task_file_store\",\"task_file_edit\",\"task_file_update\",\"task_file_delete\",\"task_file_view\",\"task_file_list\",\"task_file_download\",\"task_file_comment\",\"task_file_reply\",\"task_notes_create\",\"task_notes_store\",\"task_notes_edit\",\"task_notes_update\",\"task_notes_delete\",\"task_notes_list\",\"task_files_comment\",\"travel_type_menu\",\"travel_type_create\",\"travel_type_store\",\"travel_type_edit\",\"travel_type_update\",\"travel_type_delete\",\"travel_type_list\",\"travel_menu\",\"travel_create\",\"travel_store\",\"travel_edit\",\"travel_update\",\"travel_delete\",\"travel_view\",\"travel_list\",\"travel_approve\",\"travel_payment\",\"meeting_menu\",\"meeting_create\",\"meeting_store\",\"meeting_edit\",\"meeting_update\",\"meeting_delete\",\"meeting_view\",\"meeting_list\",\"appointment_menu\",\"appointment_read\",\"appointment_create\",\"appointment_approve\",\"appointment_reject\",\"appointment_delete\",\"performance_menu\",\"performance_settings\",\"performance_indicator_menu\",\"performance_indicator_create\",\"performance_indicator_store\",\"performance_indicator_edit\",\"performance_indicator_update\",\"performance_indicator_delete\",\"performance_indicator_list\",\"performance_indicator_view\",\"performance_appraisal_menu\",\"performance_appraisal_create\",\"performance_appraisal_store\",\"performance_appraisal_edit\",\"performance_appraisal_update\",\"performance_appraisal_delete\",\"performance_appraisal_list\",\"performance_appraisal_view\",\"performance_goal_type_menu\",\"performance_goal_type_create\",\"performance_goal_type_store\",\"performance_goal_type_edit\",\"performance_goal_type_update\",\"performance_goal_type_delete\",\"performance_goal_type_list\",\"performance_goal_menu\",\"performance_goal_create\",\"performance_goal_store\",\"performance_goal_edit\",\"performance_goal_update\",\"performance_goal_delete\",\"performance_goal_view\",\"performance_goal_list\",\"performance_competence_type_menu\",\"performance_competence_type_create\",\"performance_competence_type_store\",\"performance_competence_type_edit\",\"performance_competence_type_update\",\"performance_competence_type_delete\",\"performance_competence_type_list\",\"performance_competence_menu\",\"performance_competence_create\",\"performance_competence_store\",\"performance_competence_edit\",\"performance_competence_update\",\"performance_competence_delete\",\"performance_competence_list\",\"attendance_report_read\",\"live_tracking_read\",\"report_menu\",\"leave_settings_read\",\"leave_settings_update\",\"ip_read\",\"ip_create\",\"ip_update\",\"ip_delete\",\"company_setup_menu\",\"company_setup_activation\",\"company_setup_activation_update\",\"company_setup_configuration\",\"company_setup_configuration_update\",\"company_setup_location\",\"company_settings_update\",\"location_create\",\"location_store\",\"location_edit\",\"location_update\",\"location_delete\",\"locationApi\",\"claim_read\",\"claim_create\",\"claim_update\",\"claim_delete\",\"visit_menu\",\"visit_read\",\"visit_update\",\"visit_view\",\"app_settings_menu\",\"app_settings_update\",\"web_setup_menu\",\"content_menu\",\"content_read\",\"content_update\",\"content_delete\",\"menu\",\"menu_create\",\"menu_store\",\"menu_edit\",\"menu_update\",\"menu_delete\",\"service_menu\",\"service_read\",\"service_create\",\"service_update\",\"service_delete\",\"portfolio_menu\",\"portfolio_create\",\"portfolio_store\",\"portfolio_edit\",\"portfolio_update\",\"portfolio_delete\",\"contact_menu\",\"contact_create\",\"contact_update\",\"contact_delete\",\"language_menu\",\"language_create\",\"language_edit\",\"language_update\",\"language_delete\",\"make_default\",\"setup_language\",\"team_member_menu\",\"team_member_read\",\"team_member_create\",\"team_member_store\",\"team_member_edit\",\"team_member_update\",\"team_member_delete\",\"support_menu\",\"support_read\",\"support_create\",\"support_reply\",\"support_delete\",\"model_read\",\"model_create\",\"model_update\",\"model_delete\",\"brand_read\",\"brand_create\",\"brand_update\",\"brand_delete\",\"machine_read\",\"machine_create\",\"machine_update\",\"machine_delete\",\"package_read\",\"package_create\",\"package_update\",\"package_delete\",\"institution_read\",\"institution_create\",\"institution_update\",\"institution_delete\",\"addons_menu\",\"employee_document_type_read\",\"employee_document_type_create\",\"employee_document_type_update\",\"employee_document_type_delete\",\"employee_document_read\",\"employee_document_create\",\"employee_document_download\",\"subscription_read\",\"subscription_upgrade\"]', NULL, NULL, 'EMP-', 'On Probation', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'web', '6692de98-d63f-446a-b920-b56f1cfe6933', NULL, NULL, NULL, '2eSE3ik4Po3lnvbpIJLlCJfP1zGYyoCxFTpnzW4X', NULL, 'verified', NULL, NULL, 'verified', NULL, '$2y$10$V8b.qfwDWC9FWucViyxXSu7S3/W0DH9B0OFQzUWmnPwO0GOLSG1xq', NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 'binh duong', '', '0000-00-00', 'Islam', 'A+', '2024-02-18', 120000000.00, 'Unmarried', NULL, NULL, 1, 0, 0, 0, 0, 0, 'Asia/Dhaka', '', NULL, NULL, NULL, NULL, NULL, NULL, '2024-10-02 05:36:55', '2024-10-05 07:38:13', 1, 1, '{\"face_attendance\": 1}'),
(5, 231, 'Ngô Trường Vũ', NULL, 1, NULL, 'quyongtiktok@gmail.com', '0928953139', '0', 0, 4, 2, NULL, 3, '[\"designation_read\",\"department_read\",\"user_read\",\"profile_view\",\"user_create\",\"user_edit\",\"user_update\",\"user_menu\",\"profile_image_view\",\"user_device_list\",\"role_read\",\"leave_type_read\",\"leave_type_create\",\"leave_type_update\",\"leave_type_delete\",\"leave_menu\",\"leave_assign_read\",\"leave_assign_create\",\"leave_assign_update\",\"leave_assign_delete\",\"daily_leave_read\",\"leave_request_read\",\"leave_request_create\",\"weekend_read\",\"weekend_update\",\"holiday_read\",\"schedule_read\",\"schedule_create\",\"schedule_update\",\"schedule_delete\",\"attendance_read\",\"attendance_update\",\"attendance_menu\",\"shift_read\",\"shift_create\",\"shift_update\",\"account_menu\",\"account_view\",\"account_list\",\"account_search\",\"task_menu\",\"task_create\",\"task_edit\",\"task_update\",\"task_delete\",\"task_list\",\"task_activity_view\",\"task_assign_view\",\"task_complete\",\"client_menu\",\"client_create\",\"client_store\",\"client_edit\",\"client_update\",\"client_delete\",\"client_view\",\"client_list\",\"task_discussion_create\",\"task_discussion_store\",\"task_discussion_edit\",\"task_discussion_update\",\"task_discussion_delete\",\"task_discussion_view\",\"task_discussion_list\",\"task_discussion_comment\",\"task_discussion_reply\",\"task_file_create\",\"task_file_store\",\"task_file_edit\",\"task_file_update\",\"task_file_delete\",\"task_file_view\",\"task_file_list\",\"task_file_download\",\"task_file_comment\",\"task_file_reply\",\"task_notes_create\",\"task_notes_store\",\"task_notes_edit\",\"task_notes_update\",\"task_notes_delete\",\"task_notes_list\",\"task_files_comment\",\"travel_type_menu\",\"travel_type_create\",\"travel_type_store\",\"travel_type_edit\",\"travel_type_update\",\"travel_type_delete\",\"travel_type_list\",\"travel_menu\",\"travel_create\",\"travel_store\",\"travel_edit\",\"travel_update\",\"travel_view\",\"travel_list\",\"travel_approve\",\"meeting_menu\",\"meeting_create\",\"meeting_store\",\"meeting_edit\",\"meeting_update\",\"meeting_view\",\"meeting_list\",\"appointment_menu\",\"appointment_read\",\"appointment_create\",\"performance_menu\",\"performance_settings\",\"attendance_report_read\",\"report_menu\",\"leave_settings_read\",\"ip_read\",\"location_create\",\"location_update\",\"location_delete\",\"claim_read\",\"claim_create\",\"claim_update\",\"claim_delete\",\"visit_menu\",\"visit_read\",\"visit_update\",\"visit_view\",\"team_member_menu\",\"team_member_read\",\"team_member_create\",\"team_member_store\",\"team_member_edit\",\"team_member_update\",\"team_member_delete\"]', NULL, NULL, 'EMP-', 'On Probation', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'web', 'd520c7a8-421b-4563-b955-f5abc56b97ec', NULL, NULL, NULL, '3LOve0h4tUHkMpb77Wlcr3tenOvZbufNSVG3OSRV', NULL, 'verified', NULL, NULL, 'verified', NULL, '$2y$10$ov0NR0tlTIyIilOXeFXCCOhtOKSMVI.KSdVJgu3Ux46pRjeahXFKa', NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 'binh duong', '', '2002-06-14', '', 'O+', '2024-08-30', 50000000.00, 'Unmarried', NULL, NULL, 1, 0, 0, 0, 0, 0, 'Asia/Dhaka', 'viet nam', NULL, NULL, NULL, NULL, '2024-10-03 02:33:36', NULL, '2024-10-03 02:08:33', '2024-10-03 02:33:36', 1, 1, '{\"face_attendance\": 1, \"normal_attendance\": 1}'),
(6, 231, 'Ng&ocirc; Trường Vũ', NULL, 1, NULL, '2024801030014@student.tdmu.edu.vn', '0346930579', '0', 0, 4, 3, NULL, 1, '[\"hr_menu\",\"designation_read\",\"designation_create\",\"designation_update\",\"designation_delete\",\"department_read\",\"department_create\",\"department_update\",\"department_delete\",\"user_read\",\"profile_view\",\"user_create\",\"user_edit\",\"user_permission\",\"user_update\",\"user_delete\",\"registerFace\",\"user_menu\",\"make_hr\",\"profile_image_view\",\"user_device_list\",\"reset_device\",\"attendance_profile\",\"contract_profile\",\"phonebook_profile\",\"support_ticket_profile\",\"advance_profile\",\"commission_profile\",\"appointment_profile\",\"visit_profile\",\"leave_request_profile\",\"notice_profile\",\"salary_profile\",\"project_profile\",\"task_profile\",\"award_profile\",\"travel_profile\",\"role_read\",\"role_create\",\"role_update\",\"role_delete\",\"leave_type_read\",\"leave_type_create\",\"leave_type_update\",\"leave_type_delete\",\"leave_menu\",\"leave_assign_read\",\"leave_assign_create\",\"leave_assign_update\",\"leave_assign_delete\",\"daily_leave_read\",\"leave_request_read\",\"leave_request_update\",\"leave_request_store\",\"leave_request_create\",\"leave_request_approve\",\"leave_request_reject\",\"leave_request_delete\",\"weekend_read\",\"weekend_update\",\"holiday_read\",\"holiday_create\",\"holiday_update\",\"holiday_delete\",\"schedule_read\",\"schedule_create\",\"schedule_update\",\"schedule_delete\",\"attendance_read\",\"attendance_create\",\"attendance_update\",\"attendance_delete\",\"attendance_menu\",\"shift_read\",\"shift_create\",\"shift_update\",\"shift_delete\",\"announcement_menu\",\"notice_menu\",\"notice_list\",\"notice_edit\",\"notice_update\",\"notice_create\",\"notice_delete\",\"advance_type_menu\",\"advance_type_create\",\"advance_type_store\",\"advance_type_edit\",\"advance_type_update\",\"advance_type_delete\",\"advance_type_view\",\"advance_type_list\",\"account_menu\",\"account_create\",\"account_store\",\"account_edit\",\"account_update\",\"account_delete\",\"account_view\",\"account_list\",\"account_search\",\"project_menu\",\"project_create\",\"project_store\",\"project_edit\",\"project_update\",\"project_delete\",\"project_view\",\"project_list\",\"project_activity_view\",\"project_member_view\",\"project_member_delete\",\"project_complete\",\"project_payment\",\"project_invoice_view\",\"project_discussion_create\",\"project_discussion_store\",\"project_discussion_edit\",\"project_discussion_update\",\"project_discussion_delete\",\"project_discussion_view\",\"project_discussion_list\",\"project_discussion_comment\",\"project_discussion_reply\",\"project_file_create\",\"project_file_store\",\"project_file_edit\",\"project_file_update\",\"project_file_delete\",\"project_file_view\",\"project_file_list\",\"project_file_download\",\"project_file_comment\",\"project_file_reply\",\"project_notes_create\",\"project_notes_store\",\"project_notes_edit\",\"project_notes_update\",\"project_notes_delete\",\"project_notes_list\",\"general_settings_read\",\"general_settings_update\",\"email_settings_update\",\"storage_settings_update\",\"task_menu\",\"task_create\",\"task_store\",\"task_edit\",\"task_update\",\"task_delete\",\"task_view\",\"task_list\",\"task_activity_view\",\"task_assign_view\",\"task_assign_delete\",\"task_complete\",\"client_menu\",\"client_create\",\"client_store\",\"client_edit\",\"client_update\",\"client_delete\",\"client_view\",\"client_list\",\"task_discussion_create\",\"task_discussion_store\",\"task_discussion_edit\",\"task_discussion_update\",\"task_discussion_delete\",\"task_discussion_view\",\"task_discussion_list\",\"task_discussion_comment\",\"task_discussion_reply\",\"task_file_create\",\"task_file_store\",\"task_file_edit\",\"task_file_update\",\"task_file_delete\",\"task_file_view\",\"task_file_list\",\"task_file_download\",\"task_file_comment\",\"task_file_reply\",\"task_notes_create\",\"task_notes_store\",\"task_notes_edit\",\"task_notes_update\",\"task_notes_delete\",\"task_notes_list\",\"task_files_comment\",\"travel_type_menu\",\"travel_type_create\",\"travel_type_store\",\"travel_type_edit\",\"travel_type_update\",\"travel_type_delete\",\"travel_type_list\",\"travel_menu\",\"travel_create\",\"travel_store\",\"travel_edit\",\"travel_update\",\"travel_delete\",\"travel_view\",\"travel_list\",\"travel_approve\",\"travel_payment\",\"meeting_menu\",\"meeting_create\",\"meeting_store\",\"meeting_edit\",\"meeting_update\",\"meeting_delete\",\"meeting_list\",\"appointment_menu\",\"appointment_read\",\"appointment_create\",\"appointment_approve\",\"appointment_reject\",\"appointment_delete\",\"performance_menu\",\"performance_settings\",\"performance_indicator_menu\",\"performance_indicator_create\",\"performance_indicator_store\",\"performance_indicator_edit\",\"performance_indicator_update\",\"performance_indicator_delete\",\"performance_indicator_list\",\"performance_indicator_view\",\"performance_appraisal_menu\",\"performance_appraisal_create\",\"performance_appraisal_store\",\"performance_appraisal_edit\",\"performance_appraisal_update\",\"performance_appraisal_delete\",\"performance_appraisal_list\",\"performance_appraisal_view\",\"performance_goal_type_menu\",\"performance_goal_type_create\",\"performance_goal_type_store\",\"performance_goal_type_edit\",\"performance_goal_type_update\",\"performance_goal_type_delete\",\"performance_goal_type_list\",\"performance_goal_menu\",\"performance_goal_create\",\"performance_goal_store\",\"performance_goal_edit\",\"performance_goal_update\",\"performance_goal_delete\",\"performance_goal_view\",\"performance_goal_list\",\"performance_competence_type_menu\",\"performance_competence_type_create\",\"performance_competence_type_store\",\"performance_competence_type_edit\",\"performance_competence_type_update\",\"performance_competence_type_delete\",\"performance_competence_type_list\",\"performance_competence_menu\",\"performance_competence_create\",\"performance_competence_store\",\"performance_competence_edit\",\"performance_competence_update\",\"performance_competence_delete\",\"performance_competence_list\",\"attendance_report_read\",\"live_tracking_read\",\"report_menu\",\"leave_settings_read\",\"leave_settings_update\",\"ip_read\",\"ip_create\",\"ip_update\",\"ip_delete\",\"company_setup_menu\",\"company_setup_activation\",\"company_setup_activation_update\",\"company_setup_configuration\",\"company_setup_configuration_update\",\"company_setup_location\",\"company_settings_update\",\"location_create\",\"location_store\",\"location_edit\",\"location_update\",\"location_delete\",\"locationApi\",\"claim_read\",\"claim_create\",\"claim_update\",\"claim_delete\",\"visit_menu\",\"visit_read\",\"visit_update\",\"visit_view\",\"app_settings_menu\",\"app_settings_update\",\"web_setup_menu\",\"content_menu\",\"content_update\",\"content_delete\",\"menu\",\"menu_create\",\"menu_store\",\"menu_edit\",\"menu_update\",\"menu_delete\",\"service_menu\",\"service_read\",\"service_create\",\"service_update\",\"service_delete\",\"portfolio_menu\",\"portfolio_create\",\"portfolio_store\",\"portfolio_edit\",\"portfolio_update\",\"portfolio_delete\",\"contact_menu\",\"contact_create\",\"contact_update\",\"contact_delete\",\"language_menu\",\"language_create\",\"language_edit\",\"language_update\",\"language_delete\",\"make_default\",\"setup_language\",\"team_member_menu\",\"team_member_read\",\"team_member_create\",\"team_member_store\",\"team_member_edit\",\"team_member_update\",\"team_member_delete\",\"support_menu\",\"support_read\",\"support_create\",\"support_reply\",\"support_delete\",\"model_read\",\"model_create\",\"model_update\",\"model_delete\",\"brand_read\",\"brand_create\",\"brand_update\",\"brand_delete\",\"machine_read\",\"machine_create\",\"machine_update\",\"machine_delete\",\"package_read\",\"package_create\",\"package_update\",\"package_delete\",\"institution_read\",\"institution_create\",\"institution_update\",\"institution_delete\",\"addons_menu\",\"employee_document_type_read\",\"employee_document_type_create\",\"employee_document_type_update\",\"employee_document_type_delete\",\"employee_document_read\",\"employee_document_create\",\"employee_document_download\",\"subscription_read\",\"subscription_upgrade\"]', NULL, 6, 'EMP-', 'On Probation', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'web', 'd520c7a8-421b-4563-b955-f5abc56b97ec', NULL, NULL, NULL, '7a2IwvT1QQaXGIE3MpSPhuKCmbwFuPsfRfJB1KU5', NULL, 'verified', NULL, NULL, 'verified', NULL, '$2y$10$5PFQqUMZjHgZ5YqTaE3Ptu88v.hP5uZLspumtz23SXjT/7AkQPiYK', NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, '633/41, tổ 83, khu phố 9, phường Ph&uacute; Lợi, TP. Thủ Dầu Một, B&igrave;nh Dương', 'Male', '0000-00-00', 'Islam', NULL, '2024-10-05', 3000000.00, 'Unmarried', NULL, NULL, 1, 0, 0, 0, 0, 0, 'Asia/Ho_Chi_Minh', '', NULL, NULL, NULL, NULL, '2024-10-03 02:37:45', NULL, '2024-10-03 02:35:03', '2024-10-03 02:37:45', 1, 1, '{\"face_attendance\": 1}'),
(7, 231, 'Huỳnh thảo', NULL, 1, NULL, 'test@gmail.com', '1333332222', '0', 0, 4, 3, NULL, 3, '[\"designation_read\",\"department_read\",\"user_read\",\"profile_view\",\"user_create\",\"user_edit\",\"user_update\",\"user_menu\",\"profile_image_view\",\"user_device_list\",\"role_read\",\"leave_type_read\",\"leave_menu\",\"leave_assign_read\",\"leave_assign_create\",\"leave_assign_update\",\"leave_assign_delete\",\"daily_leave_read\",\"leave_request_read\",\"leave_request_update\",\"leave_request_create\",\"weekend_read\",\"weekend_update\",\"holiday_read\",\"schedule_read\",\"schedule_create\",\"schedule_update\",\"schedule_delete\",\"attendance_read\",\"attendance_update\",\"attendance_menu\",\"shift_read\",\"account_menu\",\"account_view\",\"account_list\",\"account_search\",\"task_menu\",\"task_create\",\"task_edit\",\"task_update\",\"task_delete\",\"task_list\",\"task_activity_view\",\"task_assign_view\",\"task_complete\",\"client_menu\",\"client_create\",\"client_store\",\"client_edit\",\"client_update\",\"client_delete\",\"client_view\",\"client_list\",\"task_discussion_create\",\"task_discussion_store\",\"task_discussion_edit\",\"task_discussion_update\",\"task_discussion_delete\",\"task_discussion_view\",\"task_discussion_list\",\"task_discussion_comment\",\"task_discussion_reply\",\"task_file_create\",\"task_file_store\",\"task_file_edit\",\"task_file_update\",\"task_file_delete\",\"task_file_view\",\"task_file_list\",\"task_file_download\",\"task_file_comment\",\"task_file_reply\",\"task_notes_create\",\"task_notes_store\",\"task_notes_edit\",\"task_notes_update\",\"task_notes_delete\",\"task_notes_list\",\"task_files_comment\",\"travel_type_menu\",\"travel_type_create\",\"travel_type_store\",\"travel_type_edit\",\"travel_type_update\",\"travel_type_delete\",\"travel_type_list\",\"travel_menu\",\"travel_create\",\"travel_store\",\"travel_edit\",\"travel_update\",\"travel_view\",\"travel_list\",\"travel_approve\",\"meeting_menu\",\"meeting_create\",\"meeting_store\",\"meeting_edit\",\"meeting_update\",\"meeting_view\",\"meeting_list\",\"appointment_menu\",\"appointment_read\",\"appointment_create\",\"performance_menu\",\"performance_settings\",\"attendance_report_read\",\"report_menu\",\"leave_settings_read\",\"ip_read\",\"location_create\",\"location_update\",\"location_delete\",\"claim_read\",\"claim_create\",\"claim_update\",\"claim_delete\",\"visit_menu\",\"visit_read\",\"visit_update\",\"visit_view\",\"team_member_menu\",\"team_member_read\",\"team_member_create\",\"team_member_store\",\"team_member_edit\",\"team_member_update\",\"team_member_delete\"]', NULL, 4, 'EMP-12345678', 'On Probation', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'web', 'd520c7a8-421b-4563-b955-f5abc56b97ec', NULL, NULL, NULL, '2AZquzmQrxfXCo0sEWW2NTFstuAwW5diLuiXKC6D', NULL, 'verified', NULL, NULL, 'verified', NULL, '$2y$10$pjdj.P2.h1a2RJkhPlCkmejam3Nhh9nhFCtps3aJLyZxLh/yWLQJy', NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 'binh duong', 'Male', '0000-00-00', 'Islam', NULL, '2024-09-14', 30000000.00, 'Unmarried', NULL, NULL, 1, 0, 0, 0, 0, 0, 'Asia/Ho_Chi_Minh', '', NULL, NULL, NULL, NULL, NULL, NULL, '2024-10-03 02:39:16', '2024-10-03 01:41:04', 1, 1, '{\"face_attendance\": 1, \"normal_attendance\": 1}');

-- --------------------------------------------------------

--
-- Table structure for table `user_devices`
--

CREATE TABLE `user_devices` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `device_token` longtext COLLATE utf8mb4_unicode_ci COMMENT 'device_token from firebase',
  `device_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'device_name from firebase',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `company_id` bigint(20) UNSIGNED DEFAULT '1',
  `branch_id` bigint(20) UNSIGNED DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user_document_requests`
--

CREATE TABLE `user_document_requests` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `branch_id` bigint(20) UNSIGNED NOT NULL DEFAULT '1',
  `company_id` bigint(20) UNSIGNED NOT NULL DEFAULT '1',
  `request_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `request_description` text COLLATE utf8mb4_unicode_ci,
  `approved` tinyint(1) DEFAULT NULL,
  `request_date` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user_shift_assigns`
--

CREATE TABLE `user_shift_assigns` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `shift_id` bigint(20) UNSIGNED NOT NULL,
  `status_id` bigint(20) UNSIGNED NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_shift_assigns`
--

INSERT INTO `user_shift_assigns` (`id`, `user_id`, `shift_id`, `status_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 1, '2024-06-25 06:58:18', '2024-06-25 06:58:18'),
(2, 2, 1, 1, '2024-06-25 06:58:18', '2024-06-25 06:58:18'),
(5, 3, 1, 1, '2024-10-02 05:19:13', '2024-10-02 05:19:13'),
(6, 4, 1, 1, '2024-10-02 05:36:55', '2024-10-02 05:36:55'),
(7, 5, 1, 1, '2024-10-03 02:08:33', '2024-10-03 02:08:33'),
(9, 6, 1, 1, '2024-10-03 02:36:05', '2024-10-03 02:36:05'),
(11, 7, 1, 1, '2024-10-03 02:40:31', '2024-10-03 02:40:31');

-- --------------------------------------------------------

--
-- Table structure for table `virtual_meetings`
--

CREATE TABLE `virtual_meetings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `duration` int(11) DEFAULT '0' COMMENT '0 means unlimited',
  `start_time` timestamp NULL DEFAULT NULL,
  `end_time` timestamp NULL DEFAULT NULL,
  `host` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'jitsi',
  `description` text COLLATE utf8mb4_unicode_ci,
  `datetime` text COLLATE utf8mb4_unicode_ci,
  `status_id` bigint(20) UNSIGNED NOT NULL DEFAULT '1',
  `created_by` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `company_id` bigint(20) UNSIGNED DEFAULT '1',
  `branch_id` bigint(20) UNSIGNED DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `visits`
--

CREATE TABLE `visits` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `date` date NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `status` enum('created','started','reached','completed','cancelled') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'created',
  `cancel_note` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `company_id` bigint(20) UNSIGNED DEFAULT '1',
  `branch_id` bigint(20) UNSIGNED DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `visit_images`
--

CREATE TABLE `visit_images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `imageable_id` int(10) UNSIGNED NOT NULL,
  `imageable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `company_id` bigint(20) UNSIGNED DEFAULT '1',
  `branch_id` bigint(20) UNSIGNED DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `visit_notes`
--

CREATE TABLE `visit_notes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `visit_id` bigint(20) UNSIGNED NOT NULL,
  `note` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('created','started','reached') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'created',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `company_id` bigint(20) UNSIGNED DEFAULT '1',
  `branch_id` bigint(20) UNSIGNED DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `visit_schedules`
--

CREATE TABLE `visit_schedules` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `visit_id` bigint(20) UNSIGNED NOT NULL,
  `latitude` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `longitude` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `location` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `note` longtext COLLATE utf8mb4_unicode_ci,
  `status` enum('created','started','reached','end') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'created',
  `started_at` timestamp NULL DEFAULT NULL,
  `reached_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `company_id` bigint(20) UNSIGNED DEFAULT '1',
  `branch_id` bigint(20) UNSIGNED DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `weekends`
--

CREATE TABLE `weekends` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` enum('saturday','sunday','monday','tuesday','wednesday','thursday','friday') COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int(11) DEFAULT NULL,
  `is_weekend` enum('yes','no') COLLATE utf8mb4_unicode_ci DEFAULT 'no',
  `status_id` bigint(20) UNSIGNED NOT NULL,
  `created_by` bigint(20) UNSIGNED DEFAULT '1',
  `updated_by` bigint(20) UNSIGNED DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `company_id` bigint(20) UNSIGNED DEFAULT '1',
  `branch_id` bigint(20) UNSIGNED DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `weekends`
--

INSERT INTO `weekends` (`id`, `name`, `order`, `is_weekend`, `status_id`, `created_by`, `updated_by`, `created_at`, `updated_at`, `company_id`, `branch_id`) VALUES
(1, 'saturday', NULL, 'no', 1, 1, 1, '2024-06-25 06:58:19', '2024-10-02 14:13:29', 1, 1),
(2, 'sunday', NULL, 'yes', 1, 1, 1, '2024-06-25 06:58:19', '2024-06-25 06:58:19', 1, 1),
(3, 'monday', NULL, 'no', 1, 1, 1, '2024-06-25 06:58:19', '2024-06-25 06:58:19', 1, 1),
(4, 'tuesday', NULL, 'no', 1, 1, 1, '2024-06-25 06:58:19', '2024-06-25 06:58:19', 1, 1),
(5, 'wednesday', NULL, 'no', 1, 1, 1, '2024-06-25 06:58:19', '2024-06-25 06:58:19', 1, 1),
(6, 'thursday', NULL, 'no', 1, 1, 1, '2024-06-25 06:58:19', '2024-06-25 06:58:19', 1, 1),
(7, 'friday', NULL, 'no', 1, 1, 1, '2024-06-25 06:58:19', '2024-06-25 06:58:19', 1, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accounts`
--
ALTER TABLE `accounts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `accounts_status_id_company_id_branch_id_index` (`status_id`,`company_id`,`branch_id`),
  ADD KEY `status_id` (`status_id`),
  ADD KEY `created_by` (`created_by`),
  ADD KEY `updated_by` (`updated_by`);

--
-- Indexes for table `activity_log`
--
ALTER TABLE `activity_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `subject` (`subject_type`,`subject_id`),
  ADD KEY `causer` (`causer_type`,`causer_id`),
  ADD KEY `activity_log_log_name_index` (`log_name`),
  ADD KEY `activity_log_batch_uuid_index` (`batch_uuid`),
  ADD KEY `activity_log_company_id_branch_id_index` (`company_id`,`branch_id`);

--
-- Indexes for table `advance_salaries`
--
ALTER TABLE `advance_salaries`
  ADD PRIMARY KEY (`id`),
  ADD KEY `advance_salaries_amount_date_index` (`amount`,`date`),
  ADD KEY `advance_salaries_company_id_branch_id_index` (`company_id`,`branch_id`),
  ADD KEY `advance_type_id` (`advance_type_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `pay` (`pay`),
  ADD KEY `status_id` (`status_id`),
  ADD KEY `approver_id` (`approver_id`),
  ADD KEY `return_status` (`return_status`),
  ADD KEY `created_by` (`created_by`),
  ADD KEY `updated_by` (`updated_by`);

--
-- Indexes for table `advance_salary_logs`
--
ALTER TABLE `advance_salary_logs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `advance_salary_logs_amount_index` (`amount`),
  ADD KEY `advance_salary_logs_company_id_branch_id_index` (`company_id`,`branch_id`),
  ADD KEY `advance_salary_id` (`advance_salary_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `created_by` (`created_by`),
  ADD KEY `updated_by` (`updated_by`);

--
-- Indexes for table `advance_types`
--
ALTER TABLE `advance_types`
  ADD PRIMARY KEY (`id`),
  ADD KEY `advance_types_id_index` (`id`),
  ADD KEY `advance_types_company_id_branch_id_index` (`company_id`,`branch_id`),
  ADD KEY `status_id` (`status_id`);

--
-- Indexes for table `all_contents`
--
ALTER TABLE `all_contents`
  ADD PRIMARY KEY (`id`),
  ADD KEY `all_contents_user_id_foreign` (`user_id`),
  ADD KEY `all_contents_status_id_foreign` (`status_id`),
  ADD KEY `all_contents_type_title_slug_index` (`type`,`title`,`slug`),
  ADD KEY `all_contents_company_id_branch_id_index` (`company_id`,`branch_id`);

--
-- Indexes for table `api_setups`
--
ALTER TABLE `api_setups`
  ADD PRIMARY KEY (`id`),
  ADD KEY `api_setups_company_id_branch_id_index` (`company_id`,`branch_id`),
  ADD KEY `status_id` (`status_id`);

--
-- Indexes for table `appoinments`
--
ALTER TABLE `appoinments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `appoinments_created_by_foreign` (`created_by`),
  ADD KEY `appoinments_appoinment_with_foreign` (`appoinment_with`),
  ADD KEY `appoinments_attachment_file_id_foreign` (`attachment_file_id`),
  ADD KEY `appoinments_company_id_branch_id_index` (`company_id`,`branch_id`),
  ADD KEY `status_id` (`status_id`);

--
-- Indexes for table `appoinment_participants`
--
ALTER TABLE `appoinment_participants`
  ADD PRIMARY KEY (`id`),
  ADD KEY `appoinment_participants_participant_id_foreign` (`participant_id`),
  ADD KEY `appoinment_participants_appoinment_id_foreign` (`appoinment_id`),
  ADD KEY `appoinment_participants_company_id_branch_id_index` (`company_id`,`branch_id`);

--
-- Indexes for table `appraisals`
--
ALTER TABLE `appraisals`
  ADD PRIMARY KEY (`id`),
  ADD KEY `appraisals_user_id_foreign` (`user_id`),
  ADD KEY `appraisals_added_by_foreign` (`added_by`),
  ADD KEY `appraisals_company_id_branch_id_index` (`company_id`,`branch_id`);

--
-- Indexes for table `appreciates`
--
ALTER TABLE `appreciates`
  ADD PRIMARY KEY (`id`),
  ADD KEY `appreciates_user_id_foreign` (`user_id`),
  ADD KEY `appreciates_appreciate_by_foreign` (`appreciate_by`),
  ADD KEY `appreciates_company_id_branch_id_index` (`company_id`,`branch_id`);

--
-- Indexes for table `app_screens`
--
ALTER TABLE `app_screens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `app_screens_status_id_foreign` (`status_id`),
  ADD KEY `app_screens_company_id_branch_id_index` (`company_id`,`branch_id`);

--
-- Indexes for table `assign_leaves`
--
ALTER TABLE `assign_leaves`
  ADD PRIMARY KEY (`id`),
  ADD KEY `assign_leaves_status_id_foreign` (`status_id`),
  ADD KEY `assign_leaves_type_id_status_id_index` (`type_id`,`status_id`),
  ADD KEY `assign_leaves_company_id_branch_id_index` (`company_id`,`branch_id`);

--
-- Indexes for table `attendances`
--
ALTER TABLE `attendances`
  ADD PRIMARY KEY (`id`),
  ADD KEY `attendances_user_id_foreign` (`user_id`),
  ADD KEY `attendances_shift_id_foreign` (`shift_id`),
  ADD KEY `attendances_status_id_foreign` (`status_id`),
  ADD KEY `attendances_face_image_foreign` (`face_image`),
  ADD KEY `attendances_in_status_approve_by_foreign` (`in_status_approve_by`),
  ADD KEY `attendances_out_status_approve_by_foreign` (`out_status_approve_by`),
  ADD KEY `attendances_company_id_branch_id_index` (`company_id`,`branch_id`);

--
-- Indexes for table `author_infos`
--
ALTER TABLE `author_infos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `author_infos_authorable_type_authorable_id_index` (`authorable_type`,`authorable_id`),
  ADD KEY `author_infos_created_by_foreign` (`created_by`),
  ADD KEY `author_infos_updated_by_foreign` (`updated_by`),
  ADD KEY `author_infos_approved_by_foreign` (`approved_by`),
  ADD KEY `author_infos_rejected_by_foreign` (`rejected_by`),
  ADD KEY `author_infos_cancelled_by_foreign` (`cancelled_by`),
  ADD KEY `author_infos_published_by_foreign` (`published_by`),
  ADD KEY `author_infos_unpublished_by_foreign` (`unpublished_by`),
  ADD KEY `author_infos_deleted_by_foreign` (`deleted_by`),
  ADD KEY `author_infos_archived_by_foreign` (`archived_by`),
  ADD KEY `author_infos_restored_by_foreign` (`restored_by`),
  ADD KEY `author_infos_referred_by_foreign` (`referred_by`),
  ADD KEY `author_infos_company_id_branch_id_index` (`company_id`,`branch_id`);

--
-- Indexes for table `awards`
--
ALTER TABLE `awards`
  ADD PRIMARY KEY (`id`),
  ADD KEY `awards_user_id_foreign` (`user_id`),
  ADD KEY `awards_created_by_foreign` (`created_by`),
  ADD KEY `awards_attachment_foreign` (`attachment`),
  ADD KEY `awards_goal_id_foreign` (`goal_id`),
  ADD KEY `awards_award_type_id_status_id_user_id_index` (`award_type_id`,`status_id`,`user_id`),
  ADD KEY `awards_company_id_branch_id_index` (`company_id`,`branch_id`),
  ADD KEY `status_id` (`status_id`);

--
-- Indexes for table `award_types`
--
ALTER TABLE `award_types`
  ADD PRIMARY KEY (`id`),
  ADD KEY `award_types_id_index` (`id`),
  ADD KEY `award_types_company_id_branch_id_index` (`company_id`,`branch_id`),
  ADD KEY `status_id` (`status_id`);

--
-- Indexes for table `bank_accounts`
--
ALTER TABLE `bank_accounts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `bank_accounts_account_number_unique` (`account_number`),
  ADD KEY `bank_accounts_company_id_branch_id_index` (`company_id`,`branch_id`),
  ADD KEY `bank_accounts_user_id_index` (`user_id`),
  ADD KEY `bank_accounts_status_id_index` (`status_id`),
  ADD KEY `bank_accounts_author_info_id_index` (`author_info_id`);

--
-- Indexes for table `branches`
--
ALTER TABLE `branches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `categories_name_type_serial_index` (`name`,`type`,`serial`),
  ADD KEY `categories_status_id_index` (`status_id`),
  ADD KEY `categories_author_info_id_index` (`author_info_id`);

--
-- Indexes for table `clients`
--
ALTER TABLE `clients`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `clients_email_unique` (`email`),
  ADD KEY `clients_company_id_branch_id_index` (`company_id`,`branch_id`),
  ADD KEY `status_id` (`status_id`);

--
-- Indexes for table `commissions`
--
ALTER TABLE `commissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `commissions_id_index` (`id`),
  ADD KEY `commissions_company_id_branch_id_index` (`company_id`,`branch_id`),
  ADD KEY `status_id` (`status_id`);

--
-- Indexes for table `companies`
--
ALTER TABLE `companies`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `companies_email_unique` (`email`),
  ADD UNIQUE KEY `companies_phone_unique` (`phone`),
  ADD KEY `companies_country_id_foreign` (`country_id`),
  ADD KEY `trade_licence_id` (`trade_licence_id`),
  ADD KEY `status_id` (`status_id`);

--
-- Indexes for table `company_configs`
--
ALTER TABLE `company_configs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `company_configs_company_id_branch_id_index` (`company_id`,`branch_id`);

--
-- Indexes for table `competences`
--
ALTER TABLE `competences`
  ADD PRIMARY KEY (`id`),
  ADD KEY `competences_competence_type_id_foreign` (`competence_type_id`),
  ADD KEY `competences_status_id_index` (`status_id`),
  ADD KEY `competences_company_id_branch_id_index` (`company_id`,`branch_id`),
  ADD KEY `status_id` (`status_id`);

--
-- Indexes for table `competence_types`
--
ALTER TABLE `competence_types`
  ADD PRIMARY KEY (`id`),
  ADD KEY `competence_types_status_id_index` (`status_id`),
  ADD KEY `competence_types_company_id_branch_id_index` (`company_id`,`branch_id`),
  ADD KEY `status_id` (`status_id`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `contacts_company_id_branch_id_index` (`company_id`,`branch_id`);

--
-- Indexes for table `conversations`
--
ALTER TABLE `conversations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `conversations_sender_id_foreign` (`sender_id`),
  ADD KEY `conversations_receiver_id_foreign` (`receiver_id`),
  ADD KEY `conversations_image_id_foreign` (`image_id`),
  ADD KEY `conversations_company_id_branch_id_index` (`company_id`,`branch_id`);

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `countries_country_code_unique` (`country_code`),
  ADD UNIQUE KEY `countries_name_unique` (`name`);

--
-- Indexes for table `currencies`
--
ALTER TABLE `currencies`
  ADD PRIMARY KEY (`id`),
  ADD KEY `currencies_company_id_branch_id_index` (`company_id`,`branch_id`);

--
-- Indexes for table `daily_leaves`
--
ALTER TABLE `daily_leaves`
  ADD PRIMARY KEY (`id`),
  ADD KEY `daily_leaves_user_id_foreign` (`user_id`),
  ADD KEY `daily_leaves_approved_by_tl_foreign` (`approved_by_tl`),
  ADD KEY `daily_leaves_approved_by_hr_foreign` (`approved_by_hr`),
  ADD KEY `daily_leaves_rejected_by_tl_foreign` (`rejected_by_tl`),
  ADD KEY `daily_leaves_rejected_by_hr_foreign` (`rejected_by_hr`),
  ADD KEY `daily_leaves_author_info_id_foreign` (`author_info_id`),
  ADD KEY `daily_leaves_company_id_branch_id_index` (`company_id`,`branch_id`),
  ADD KEY `status_id` (`status_id`);

--
-- Indexes for table `database_backups`
--
ALTER TABLE `database_backups`
  ADD PRIMARY KEY (`id`),
  ADD KEY `database_backups_company_id_branch_id_index` (`company_id`,`branch_id`);

--
-- Indexes for table `date_formats`
--
ALTER TABLE `date_formats`
  ADD PRIMARY KEY (`id`),
  ADD KEY `date_formats_company_id_branch_id_index` (`company_id`,`branch_id`);

--
-- Indexes for table `departments`
--
ALTER TABLE `departments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `departments_status_id_foreign` (`status_id`),
  ADD KEY `departments_company_id_branch_id_index` (`company_id`,`branch_id`);

--
-- Indexes for table `deposits`
--
ALTER TABLE `deposits`
  ADD PRIMARY KEY (`id`),
  ADD KEY `deposits_income_expense_category_id_foreign` (`income_expense_category_id`),
  ADD KEY `deposits_attachment_foreign` (`attachment`),
  ADD KEY `deposits_amount_date_index` (`amount`,`date`),
  ADD KEY `deposits_company_id_branch_id_index` (`company_id`,`branch_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `payment_method_id` (`payment_method_id`),
  ADD KEY `transaction_id` (`transaction_id`),
  ADD KEY `pay` (`pay`),
  ADD KEY `status_id` (`status_id`),
  ADD KEY `approver_id` (`approver_id`),
  ADD KEY `created_by` (`created_by`),
  ADD KEY `updated_by` (`updated_by`);

--
-- Indexes for table `designations`
--
ALTER TABLE `designations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `designations_status_id_foreign` (`status_id`),
  ADD KEY `designations_company_id_branch_id_index` (`company_id`,`branch_id`);

--
-- Indexes for table `discussions`
--
ALTER TABLE `discussions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `discussions_user_id_foreign` (`user_id`),
  ADD KEY `discussions_project_id_status_id_user_id_index` (`project_id`,`status_id`,`user_id`),
  ADD KEY `discussions_company_id_branch_id_index` (`company_id`,`branch_id`),
  ADD KEY `show_to_customer` (`show_to_customer`),
  ADD KEY `status_id` (`status_id`);

--
-- Indexes for table `discussion_comments`
--
ALTER TABLE `discussion_comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `discussion_comments_user_id_foreign` (`user_id`),
  ADD KEY `discussion_comments_attachment_foreign` (`attachment`),
  ADD KEY `discussion_comments_discussion_id_user_id_index` (`discussion_id`,`user_id`),
  ADD KEY `discussion_comments_company_id_branch_id_index` (`company_id`,`branch_id`);

--
-- Indexes for table `discussion_likes`
--
ALTER TABLE `discussion_likes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `discussion_likes_discussion_id_foreign` (`discussion_id`),
  ADD KEY `discussion_likes_user_id_foreign` (`user_id`),
  ADD KEY `discussion_likes_company_id_branch_id_index` (`company_id`,`branch_id`);

--
-- Indexes for table `domains`
--
ALTER TABLE `domains`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `domains_domain_unique` (`domain`),
  ADD KEY `domains_tenant_id_foreign` (`tenant_id`),
  ADD KEY `domains_company_id_branch_id_index` (`company_id`,`branch_id`);

--
-- Indexes for table `duty_schedules`
--
ALTER TABLE `duty_schedules`
  ADD PRIMARY KEY (`id`),
  ADD KEY `duty_schedules_shift_id_foreign` (`shift_id`),
  ADD KEY `duty_schedules_status_id_foreign` (`status_id`),
  ADD KEY `duty_schedules_id_index` (`id`),
  ADD KEY `duty_schedules_company_id_branch_id_index` (`company_id`,`branch_id`);

--
-- Indexes for table `employee_breaks`
--
ALTER TABLE `employee_breaks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `employee_breaks_user_id_foreign` (`user_id`),
  ADD KEY `employee_breaks_company_id_branch_id_index` (`company_id`,`branch_id`);

--
-- Indexes for table `employee_tasks`
--
ALTER TABLE `employee_tasks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `employee_tasks_assigned_id_foreign` (`assigned_id`),
  ADD KEY `employee_tasks_created_by_foreign` (`created_by`),
  ADD KEY `employee_tasks_attachment_file_id_foreign` (`attachment_file_id`),
  ADD KEY `employee_tasks_company_id_branch_id_index` (`company_id`,`branch_id`),
  ADD KEY `status_id` (`status_id`);

--
-- Indexes for table `expenses`
--
ALTER TABLE `expenses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `expenses_income_expense_category_id_foreign` (`income_expense_category_id`),
  ADD KEY `expenses_attachment_foreign` (`attachment`),
  ADD KEY `expenses_amount_date_index` (`amount`,`date`),
  ADD KEY `expenses_company_id_branch_id_index` (`company_id`,`branch_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `pay` (`pay`),
  ADD KEY `status_id` (`status_id`),
  ADD KEY `transaction_id` (`transaction_id`),
  ADD KEY `payment_method_id` (`payment_method_id`),
  ADD KEY `approver_id` (`approver_id`),
  ADD KEY `created_by` (`created_by`),
  ADD KEY `updated_by` (`updated_by`);

--
-- Indexes for table `expense_claims`
--
ALTER TABLE `expense_claims`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `expense_claims_invoice_number_unique` (`invoice_number`),
  ADD KEY `expense_claims_user_id_foreign` (`user_id`),
  ADD KEY `expense_claims_attachment_file_id_foreign` (`attachment_file_id`),
  ADD KEY `expense_claims_company_id_branch_id_index` (`company_id`,`branch_id`),
  ADD KEY `status_id` (`status_id`);

--
-- Indexes for table `expense_claim_details`
--
ALTER TABLE `expense_claim_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `expense_claim_details_user_id_foreign` (`user_id`),
  ADD KEY `expense_claim_details_hrm_expense_id_foreign` (`hrm_expense_id`),
  ADD KEY `expense_claim_details_expense_claim_id_foreign` (`expense_claim_id`),
  ADD KEY `expense_claim_details_company_id_branch_id_index` (`company_id`,`branch_id`);

--
-- Indexes for table `expire_notifications`
--
ALTER TABLE `expire_notifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`),
  ADD KEY `failed_jobs_company_id_branch_id_index` (`company_id`,`branch_id`);

--
-- Indexes for table `features`
--
ALTER TABLE `features`
  ADD PRIMARY KEY (`id`),
  ADD KEY `features_attachment_file_id_foreign` (`attachment_file_id`),
  ADD KEY `status_id` (`status_id`);

--
-- Indexes for table `goals`
--
ALTER TABLE `goals`
  ADD PRIMARY KEY (`id`),
  ADD KEY `goals_goal_type_id_foreign` (`goal_type_id`),
  ADD KEY `goals_status_id_company_id_branch_id_index` (`status_id`,`company_id`,`branch_id`),
  ADD KEY `status_id` (`status_id`),
  ADD KEY `created_by` (`created_by`);

--
-- Indexes for table `goal_types`
--
ALTER TABLE `goal_types`
  ADD PRIMARY KEY (`id`),
  ADD KEY `goal_types_status_id_company_id_branch_id_index` (`status_id`,`company_id`,`branch_id`),
  ADD KEY `status_id` (`status_id`);

--
-- Indexes for table `holidays`
--
ALTER TABLE `holidays`
  ADD PRIMARY KEY (`id`),
  ADD KEY `holidays_attachment_id_foreign` (`attachment_id`),
  ADD KEY `holidays_status_id_company_id_branch_id_index` (`status_id`,`company_id`,`branch_id`);

--
-- Indexes for table `home_pages`
--
ALTER TABLE `home_pages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `home_pages_status_id_company_id_branch_id_index` (`status_id`,`company_id`,`branch_id`),
  ADD KEY `status_id` (`status_id`),
  ADD KEY `created_by` (`created_by`),
  ADD KEY `updated_by` (`updated_by`);

--
-- Indexes for table `hrm_expenses`
--
ALTER TABLE `hrm_expenses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `hrm_expenses_user_id_foreign` (`user_id`),
  ADD KEY `hrm_expenses_income_expense_category_id_foreign` (`income_expense_category_id`),
  ADD KEY `hrm_expenses_attachment_file_id_foreign` (`attachment_file_id`),
  ADD KEY `hrm_expenses_status_id_company_id_branch_id_index` (`status_id`,`company_id`,`branch_id`),
  ADD KEY `status_id` (`status_id`),
  ADD KEY `claimed_status_id` (`is_claimed_status_id`),
  ADD KEY `claimed_approved_status_id` (`claimed_approved_status_id`);

--
-- Indexes for table `hrm_languages`
--
ALTER TABLE `hrm_languages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `hrm_languages_status_id_company_id_branch_id_index` (`status_id`,`company_id`,`branch_id`),
  ADD KEY `status_id` (`status_id`);

--
-- Indexes for table `income_expense_categories`
--
ALTER TABLE `income_expense_categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `income_expense_categories_attachment_file_id_foreign` (`attachment_file_id`),
  ADD KEY `income_expense_categories_company_id_branch_id_index` (`company_id`,`branch_id`),
  ADD KEY `status_id` (`status_id`);

--
-- Indexes for table `indicators`
--
ALTER TABLE `indicators`
  ADD PRIMARY KEY (`id`),
  ADD KEY `indicators_department_id_foreign` (`department_id`),
  ADD KEY `indicators_shift_id_foreign` (`shift_id`),
  ADD KEY `indicators_designation_id_foreign` (`designation_id`),
  ADD KEY `indicators_added_by_foreign` (`added_by`),
  ADD KEY `indicators_status_id_company_id_branch_id_index` (`status_id`,`company_id`,`branch_id`);

--
-- Indexes for table `ip_setups`
--
ALTER TABLE `ip_setups`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ip_setups_status_id_company_id_branch_id_index` (`status_id`,`company_id`,`branch_id`);

--
-- Indexes for table `jitsi_meetings`
--
ALTER TABLE `jitsi_meetings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jitsi_meetings_status_id_company_id_branch_id_index` (`status_id`,`company_id`,`branch_id`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_company_id_branch_id_index` (`company_id`,`branch_id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `languages_status_company_id_branch_id_index` (`status`,`company_id`,`branch_id`);

--
-- Indexes for table `late_in_out_reasons`
--
ALTER TABLE `late_in_out_reasons`
  ADD PRIMARY KEY (`id`),
  ADD KEY `late_in_out_reasons_attendance_id_foreign` (`attendance_id`),
  ADD KEY `late_in_out_reasons_company_id_branch_id_index` (`company_id`,`branch_id`);

--
-- Indexes for table `leave_requests`
--
ALTER TABLE `leave_requests`
  ADD PRIMARY KEY (`id`),
  ADD KEY `leave_requests_assign_leave_id_foreign` (`assign_leave_id`),
  ADD KEY `leave_requests_user_id_foreign` (`user_id`),
  ADD KEY `leave_requests_substitute_id_foreign` (`substitute_id`),
  ADD KEY `leave_requests_attachment_file_id_foreign` (`attachment_file_id`),
  ADD KEY `leave_requests_author_info_id_foreign` (`author_info_id`),
  ADD KEY `leave_requests_status_id_company_id_branch_id_index` (`status_id`,`company_id`,`branch_id`);

--
-- Indexes for table `leave_settings`
--
ALTER TABLE `leave_settings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `leave_settings_status_id_company_id_branch_id_index` (`status_id`,`company_id`,`branch_id`);

--
-- Indexes for table `leave_types`
--
ALTER TABLE `leave_types`
  ADD PRIMARY KEY (`id`),
  ADD KEY `leave_types_status_id_foreign` (`status_id`),
  ADD KEY `leave_types_name_status_id_company_id_branch_id_index` (`name`,`status_id`,`company_id`,`branch_id`);

--
-- Indexes for table `leave_years`
--
ALTER TABLE `leave_years`
  ADD PRIMARY KEY (`id`),
  ADD KEY `leave_years_type_id_foreign` (`type_id`),
  ADD KEY `leave_years_status_id_foreign` (`status_id`),
  ADD KEY `leave_years_company_id_branch_id_index` (`company_id`,`branch_id`);

--
-- Indexes for table `location_binds`
--
ALTER TABLE `location_binds`
  ADD PRIMARY KEY (`id`),
  ADD KEY `location_binds_user_id_foreign` (`user_id`),
  ADD KEY `location_binds_status_id_company_id_branch_id_index` (`status_id`,`company_id`,`branch_id`),
  ADD KEY `status_id` (`status_id`);

--
-- Indexes for table `location_logs`
--
ALTER TABLE `location_logs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `location_logs_user_id_company_id_branch_id_date_index` (`user_id`,`company_id`,`branch_id`,`date`);

--
-- Indexes for table `meetings`
--
ALTER TABLE `meetings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `meetings_user_id_foreign` (`user_id`),
  ADD KEY `meetings_attachment_file_id_foreign` (`attachment_file_id`),
  ADD KEY `meetings_status_id_company_id_branch_id_index` (`status_id`,`company_id`,`branch_id`),
  ADD KEY `status_id` (`status_id`);

--
-- Indexes for table `meeting_members`
--
ALTER TABLE `meeting_members`
  ADD PRIMARY KEY (`id`),
  ADD KEY `meeting_members_status_id_company_id_branch_id_index` (`status_id`,`company_id`,`branch_id`),
  ADD KEY `status_id` (`status_id`);

--
-- Indexes for table `meeting_participants`
--
ALTER TABLE `meeting_participants`
  ADD PRIMARY KEY (`id`),
  ADD KEY `meeting_participants_participant_id_foreign` (`participant_id`),
  ADD KEY `meeting_participants_meeting_id_foreign` (`meeting_id`),
  ADD KEY `meeting_participants_company_id_branch_id_index` (`company_id`,`branch_id`);

--
-- Indexes for table `meeting_setups`
--
ALTER TABLE `meeting_setups`
  ADD PRIMARY KEY (`id`),
  ADD KEY `meeting_setups_status_id_company_id_branch_id_index` (`status_id`,`company_id`,`branch_id`),
  ADD KEY `status_id` (`status_id`);

--
-- Indexes for table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`),
  ADD KEY `menus_status_id_company_id_branch_id_index` (`status_id`,`company_id`,`branch_id`),
  ADD KEY `status_id` (`status_id`);

--
-- Indexes for table `meta_information`
--
ALTER TABLE `meta_information`
  ADD PRIMARY KEY (`id`),
  ADD KEY `meta_information_created_by_foreign` (`created_by`),
  ADD KEY `meta_information_updated_by_foreign` (`updated_by`),
  ADD KEY `meta_information_type_company_id_branch_id_index` (`type`,`company_id`,`branch_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notes`
--
ALTER TABLE `notes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notes_user_id_foreign` (`user_id`),
  ADD KEY `notes_project_id_company_id_status_id_user_id_branch_id_index` (`project_id`,`company_id`,`status_id`,`user_id`,`branch_id`),
  ADD KEY `show_to_customer` (`show_to_customer`),
  ADD KEY `status_id` (`status_id`);

--
-- Indexes for table `notices`
--
ALTER TABLE `notices`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notices_created_by_foreign` (`created_by`),
  ADD KEY `notices_department_id_foreign` (`department_id`),
  ADD KEY `notices_attachment_file_id_foreign` (`attachment_file_id`),
  ADD KEY `notices_status_id_company_id_branch_id_index` (`status_id`,`company_id`,`branch_id`);

--
-- Indexes for table `notice_departments`
--
ALTER TABLE `notice_departments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notice_departments_company_id_branch_id_index` (`company_id`,`branch_id`);

--
-- Indexes for table `notice_view_logs`
--
ALTER TABLE `notice_view_logs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notice_view_logs_user_id_foreign` (`user_id`),
  ADD KEY `notice_view_logs_notice_id_foreign` (`notice_id`),
  ADD KEY `notice_view_logs_company_id_branch_id_index` (`company_id`,`branch_id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notifications_notifiable_type_notifiable_id_index` (`notifiable_type`,`notifiable_id`),
  ADD KEY `notifications_company_id_branch_id_index` (`company_id`,`branch_id`);

--
-- Indexes for table `notifications_old`
--
ALTER TABLE `notifications_old`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notifications_old_sender_id_foreign` (`sender_id`),
  ADD KEY `notifications_old_receiver_id_foreign` (`receiver_id`),
  ADD KEY `notifications_old_image_id_foreign` (`image_id`),
  ADD KEY `notifications_old_company_id_branch_id_index` (`company_id`,`branch_id`);

--
-- Indexes for table `notification_types`
--
ALTER TABLE `notification_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `notification_types_type_unique` (`type`),
  ADD KEY `notification_types_icon_foreign` (`icon`),
  ADD KEY `notification_types_status_id_company_id_branch_id_index` (`status_id`,`company_id`,`branch_id`),
  ADD KEY `status_id` (`status_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `payment_histories`
--
ALTER TABLE `payment_histories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `payment_histories_code_unique` (`code`),
  ADD KEY `payment_histories_user_id_foreign` (`user_id`),
  ADD KEY `payment_histories_expense_claim_id_foreign` (`expense_claim_id`),
  ADD KEY `payment_histories_attachment_file_id_foreign` (`attachment_file_id`),
  ADD KEY `payment_histories_index` (`payment_date`,`payment_status_id`,`company_id`,`branch_id`),
  ADD KEY `status_id` (`payment_status_id`);

--
-- Indexes for table `payment_history_details`
--
ALTER TABLE `payment_history_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `payment_history_details_payment_history_id_foreign` (`payment_history_id`),
  ADD KEY `payment_history_details_payment_method_id_foreign` (`payment_method_id`),
  ADD KEY `payment_history_details_paid_by_id_foreign` (`paid_by_id`),
  ADD KEY `payment_history_details_index` (`user_id`,`payment_status_id`,`company_id`,`branch_id`),
  ADD KEY `payment_status_id` (`payment_status_id`);

--
-- Indexes for table `payment_history_logs`
--
ALTER TABLE `payment_history_logs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `payment_history_logs_user_id_foreign` (`user_id`),
  ADD KEY `payment_history_logs_payment_history_id_foreign` (`payment_history_id`),
  ADD KEY `payment_history_logs_expense_claim_id_foreign` (`expense_claim_id`),
  ADD KEY `payment_history_logs_paid_by_id_foreign` (`paid_by_id`),
  ADD KEY `payment_history_logs_date_paid_by_id_company_id_branch_id_index` (`date`,`paid_by_id`,`company_id`,`branch_id`);

--
-- Indexes for table `payment_methods`
--
ALTER TABLE `payment_methods`
  ADD PRIMARY KEY (`id`),
  ADD KEY `payment_methods_attachment_file_id_foreign` (`attachment_file_id`),
  ADD KEY `payment_methods_status_id_company_id_branch_id_index` (`status_id`,`company_id`,`branch_id`),
  ADD KEY `status_id` (`status_id`);

--
-- Indexes for table `payment_types`
--
ALTER TABLE `payment_types`
  ADD PRIMARY KEY (`id`),
  ADD KEY `payment_types_status_id_type_company_id_branch_id_index` (`status_id`,`type`,`company_id`,`branch_id`),
  ADD KEY `payment_types_status_id_index` (`status_id`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `portfolios`
--
ALTER TABLE `portfolios`
  ADD PRIMARY KEY (`id`),
  ADD KEY `portfolios_attachment_foreign` (`attachment`),
  ADD KEY `portfolios_user_id_foreign` (`user_id`),
  ADD KEY `portfolios_status_id_company_id_branch_id_index` (`status_id`,`company_id`,`branch_id`),
  ADD KEY `status_id` (`status_id`);

--
-- Indexes for table `projects`
--
ALTER TABLE `projects`
  ADD PRIMARY KEY (`id`),
  ADD KEY `projects_goal_id_foreign` (`goal_id`),
  ADD KEY `projects_index` (`client_id`,`status_id`,`priority`,`start_date`,`end_date`,`company_id`,`branch_id`),
  ADD KEY `status_id` (`status_id`),
  ADD KEY `priority` (`priority`),
  ADD KEY `payment` (`payment`),
  ADD KEY `created_by` (`created_by`);

--
-- Indexes for table `project_activities`
--
ALTER TABLE `project_activities`
  ADD PRIMARY KEY (`id`),
  ADD KEY `project_activities_user_id_foreign` (`user_id`),
  ADD KEY `project_activities_project_id_user_id_company_id_branch_id_index` (`project_id`,`user_id`,`company_id`,`branch_id`);

--
-- Indexes for table `project_files`
--
ALTER TABLE `project_files`
  ADD PRIMARY KEY (`id`),
  ADD KEY `project_files_user_id_foreign` (`user_id`),
  ADD KEY `project_files_attachment_foreign` (`attachment`),
  ADD KEY `project_files_index` (`project_id`,`user_id`,`status_id`,`company_id`,`branch_id`),
  ADD KEY `show_to_customer` (`show_to_customer`),
  ADD KEY `status_id` (`status_id`);

--
-- Indexes for table `project_file_comments`
--
ALTER TABLE `project_file_comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `project_file_comments_user_id_foreign` (`user_id`),
  ADD KEY `project_file_comments_attachment_foreign` (`attachment`),
  ADD KEY `project_file_comments_index` (`project_file_id`,`user_id`,`company_id`,`branch_id`);

--
-- Indexes for table `project_membars`
--
ALTER TABLE `project_membars`
  ADD PRIMARY KEY (`id`),
  ADD KEY `project_membars_user_id_foreign` (`user_id`),
  ADD KEY `project_membars_added_by_foreign` (`added_by`),
  ADD KEY `project_membars_index` (`project_id`,`company_id`,`branch_id`,`status_id`,`user_id`),
  ADD KEY `status_id` (`status_id`);

--
-- Indexes for table `project_payments`
--
ALTER TABLE `project_payments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `project_payments_project_id_company_id_branch_id_amount_index` (`project_id`,`company_id`,`branch_id`,`amount`),
  ADD KEY `transaction_id` (`transaction_id`),
  ADD KEY `payment_method_id` (`payment_method_id`),
  ADD KEY `paid_by` (`paid_by`),
  ADD KEY `created_by` (`created_by`),
  ADD KEY `updated_by` (`updated_by`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `roles_status_id_company_id_branch_id_index` (`status_id`,`company_id`,`branch_id`);

--
-- Indexes for table `role_users`
--
ALTER TABLE `role_users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `role_users_user_id_foreign` (`user_id`),
  ADD KEY `role_users_role_id_foreign` (`role_id`),
  ADD KEY `role_users_company_id_branch_id_index` (`company_id`,`branch_id`);

--
-- Indexes for table `salary_generates`
--
ALTER TABLE `salary_generates`
  ADD PRIMARY KEY (`id`),
  ADD KEY `salary_generates_index` (`amount`,`date`,`status_id`,`company_id`,`branch_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `status_id` (`status_id`),
  ADD KEY `created_by` (`created_by`),
  ADD KEY `updated_by` (`updated_by`);

--
-- Indexes for table `salary_payment_logs`
--
ALTER TABLE `salary_payment_logs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `salary_payment_logs_salary_generate_id_foreign` (`salary_generate_id`),
  ADD KEY `salary_payment_logs_amount_company_id_branch_id_user_id_index` (`amount`,`company_id`,`branch_id`,`user_id`),
  ADD KEY `transaction_id` (`transaction_id`),
  ADD KEY `payment_method_id` (`payment_method_id`),
  ADD KEY `paid_by` (`paid_by`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `created_by` (`created_by`),
  ADD KEY `updated_by` (`updated_by`);

--
-- Indexes for table `salary_setups`
--
ALTER TABLE `salary_setups`
  ADD PRIMARY KEY (`id`),
  ADD KEY `salary_setups_gross_salary_index` (`gross_salary`),
  ADD KEY `salary_setups_status_id_company_id_branch_id_index` (`status_id`,`company_id`,`branch_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `status_id` (`status_id`),
  ADD KEY `created_by` (`created_by`),
  ADD KEY `updated_by` (`updated_by`);

--
-- Indexes for table `salary_setup_details`
--
ALTER TABLE `salary_setup_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `salary_setup_details_amount_status_id_company_id_branch_id_index` (`amount`,`status_id`,`company_id`,`branch_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `salary_setup_id` (`salary_setup_id`),
  ADD KEY `commission_id` (`commission_id`),
  ADD KEY `status_id` (`status_id`),
  ADD KEY `created_by` (`created_by`),
  ADD KEY `updated_by` (`updated_by`);

--
-- Indexes for table `salary_sheet_reports`
--
ALTER TABLE `salary_sheet_reports`
  ADD PRIMARY KEY (`id`),
  ADD KEY `salary_sheet_reports_company_id_branch_id_index` (`company_id`,`branch_id`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`),
  ADD KEY `services_user_id_foreign` (`user_id`),
  ADD KEY `services_attachment_foreign` (`attachment`),
  ADD KEY `services_id_status_id_company_id_branch_id_index` (`id`,`status_id`,`company_id`,`branch_id`),
  ADD KEY `status_id` (`status_id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `settings_status_id_foreign` (`status_id`),
  ADD KEY `settings_name_context_status_id_company_id_branch_id_index` (`name`,`context`,`status_id`,`company_id`,`branch_id`);

--
-- Indexes for table `shifts`
--
ALTER TABLE `shifts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `shifts_status_id_company_id_branch_id_index` (`status_id`,`company_id`,`branch_id`);

--
-- Indexes for table `sms_logs`
--
ALTER TABLE `sms_logs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sms_logs_company_id_branch_id_index` (`company_id`,`branch_id`);

--
-- Indexes for table `social_identities`
--
ALTER TABLE `social_identities`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `social_identities_provider_id_unique` (`provider_id`),
  ADD KEY `social_identities_user_id_foreign` (`user_id`),
  ADD KEY `social_identities_company_id_branch_id_index` (`company_id`,`branch_id`);

--
-- Indexes for table `statuses`
--
ALTER TABLE `statuses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `statuses_name_class_index` (`name`,`class`),
  ADD KEY `statuses_name_index` (`name`),
  ADD KEY `statuses_class_index` (`class`);

--
-- Indexes for table `subscription_plans`
--
ALTER TABLE `subscription_plans`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `subscription_plans_identifier_unique` (`identifier`),
  ADD UNIQUE KEY `subscription_plans_stripe_id_unique` (`stripe_id`),
  ADD KEY `status_id` (`status_id`);

--
-- Indexes for table `support_tickets`
--
ALTER TABLE `support_tickets`
  ADD PRIMARY KEY (`id`),
  ADD KEY `support_tickets_user_id_foreign` (`user_id`),
  ADD KEY `support_tickets_assigned_id_foreign` (`assigned_id`),
  ADD KEY `support_tickets_attachment_file_id_foreign` (`attachment_file_id`),
  ADD KEY `support_tickets_type_id_foreign` (`type_id`),
  ADD KEY `support_tickets_priority_id_foreign` (`priority_id`),
  ADD KEY `support_tickets_index` (`status_id`,`assigned_id`,`type_id`,`priority_id`,`company_id`,`branch_id`);

--
-- Indexes for table `tasks`
--
ALTER TABLE `tasks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tasks_goal_id_foreign` (`goal_id`),
  ADD KEY `tasks_company_id_branch_id_priority_status_id_index` (`company_id`,`branch_id`,`priority`,`status_id`),
  ADD KEY `status_id` (`status_id`),
  ADD KEY `priority` (`priority`),
  ADD KEY `created_by` (`created_by`),
  ADD KEY `project_id` (`project_id`);

--
-- Indexes for table `task_activities`
--
ALTER TABLE `task_activities`
  ADD PRIMARY KEY (`id`),
  ADD KEY `task_activities_user_id_foreign` (`user_id`),
  ADD KEY `task_activities_task_id_user_id_company_id_branch_id_index` (`task_id`,`user_id`,`company_id`,`branch_id`);

--
-- Indexes for table `task_discussions`
--
ALTER TABLE `task_discussions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `task_discussions_task_id_foreign` (`task_id`),
  ADD KEY `task_discussions_user_id_foreign` (`user_id`),
  ADD KEY `task_discussions_file_id_foreign` (`file_id`),
  ADD KEY `task_discussions_index` (`status_id`,`company_id`,`branch_id`,`user_id`,`task_id`),
  ADD KEY `show_to_customer` (`show_to_customer`),
  ADD KEY `status_id` (`status_id`);

--
-- Indexes for table `task_discussion_comments`
--
ALTER TABLE `task_discussion_comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `task_discussion_comments_user_id_foreign` (`user_id`),
  ADD KEY `task_discussion_comments_attachment_foreign` (`attachment`),
  ADD KEY `task_discussion_comments_index` (`task_discussion_id`,`company_id`,`branch_id`,`comment_id`,`user_id`);

--
-- Indexes for table `task_files`
--
ALTER TABLE `task_files`
  ADD PRIMARY KEY (`id`),
  ADD KEY `task_files_user_id_foreign` (`user_id`),
  ADD KEY `task_files_attachment_foreign` (`attachment`),
  ADD KEY `task_files_task_id_user_id_status_id_company_id_branch_id_index` (`task_id`,`user_id`,`status_id`,`company_id`,`branch_id`),
  ADD KEY `show_to_customer` (`show_to_customer`),
  ADD KEY `status_id` (`status_id`);

--
-- Indexes for table `task_file_comments`
--
ALTER TABLE `task_file_comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `task_file_comments_user_id_foreign` (`user_id`),
  ADD KEY `task_file_comments_attachment_foreign` (`attachment`),
  ADD KEY `task_file_comments_index` (`task_file_id`,`user_id`,`company_id`,`branch_id`);

--
-- Indexes for table `task_followers`
--
ALTER TABLE `task_followers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `task_followers_user_id_foreign` (`user_id`),
  ADD KEY `task_followers_added_by_foreign` (`added_by`),
  ADD KEY `task_followers_is_creator_foreign` (`is_creator`),
  ADD KEY `task_followers_index` (`task_id`,`user_id`,`status_id`,`company_id`,`branch_id`),
  ADD KEY `status_id` (`status_id`);

--
-- Indexes for table `task_members`
--
ALTER TABLE `task_members`
  ADD PRIMARY KEY (`id`),
  ADD KEY `task_members_user_id_foreign` (`user_id`),
  ADD KEY `task_members_added_by_foreign` (`added_by`),
  ADD KEY `task_members_index` (`task_id`,`company_id`,`status_id`,`user_id`,`branch_id`),
  ADD KEY `status_id` (`status_id`);

--
-- Indexes for table `task_notes`
--
ALTER TABLE `task_notes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `task_notes_user_id_foreign` (`user_id`),
  ADD KEY `task_notes_task_id_company_id_status_id_user_id_branch_id_index` (`task_id`,`company_id`,`status_id`,`user_id`,`branch_id`),
  ADD KEY `show_to_customer` (`show_to_customer`),
  ADD KEY `status_id` (`status_id`);

--
-- Indexes for table `teams`
--
ALTER TABLE `teams`
  ADD PRIMARY KEY (`id`),
  ADD KEY `teams_attachment_file_id_foreign` (`attachment_file_id`),
  ADD KEY `teams_user_id_foreign` (`user_id`),
  ADD KEY `teams_team_lead_id_foreign` (`team_lead_id`),
  ADD KEY `teams_status_id_company_id_branch_id_index` (`status_id`,`company_id`,`branch_id`),
  ADD KEY `status_id` (`status_id`);

--
-- Indexes for table `team_members`
--
ALTER TABLE `team_members`
  ADD PRIMARY KEY (`id`),
  ADD KEY `team_members_user_id_foreign` (`user_id`),
  ADD KEY `team_members_team_id_company_id_branch_id_index` (`team_id`,`company_id`,`branch_id`);

--
-- Indexes for table `tenants`
--
ALTER TABLE `tenants`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tenants_company_id_branch_id_index` (`company_id`,`branch_id`);

--
-- Indexes for table `tenant_subscriptions`
--
ALTER TABLE `tenant_subscriptions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tenant_subscriptions_status_id_foreign` (`status_id`),
  ADD KEY `tenant_subscriptions_payment_status_id_foreign` (`payment_status_id`);

--
-- Indexes for table `tenant_user_impersonation_tokens`
--
ALTER TABLE `tenant_user_impersonation_tokens`
  ADD PRIMARY KEY (`token`),
  ADD KEY `tenant_user_impersonation_tokens_tenant_id_foreign` (`tenant_id`),
  ADD KEY `tenant_user_impersonation_tokens_company_id_branch_id_index` (`company_id`,`branch_id`);

--
-- Indexes for table `testimonials`
--
ALTER TABLE `testimonials`
  ADD PRIMARY KEY (`id`),
  ADD KEY `testimonials_status_id_company_id_branch_id_index` (`status_id`,`company_id`,`branch_id`),
  ADD KEY `status_id` (`status_id`);

--
-- Indexes for table `ticket_replies`
--
ALTER TABLE `ticket_replies`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ticket_replies_support_ticket_id_foreign` (`support_ticket_id`),
  ADD KEY `ticket_replies_user_id_foreign` (`user_id`),
  ADD KEY `ticket_replies_company_id_branch_id_index` (`company_id`,`branch_id`);

--
-- Indexes for table `time_zones`
--
ALTER TABLE `time_zones`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `transactions_account_id_foreign` (`account_id`),
  ADD KEY `transactions_status_id_company_id_branch_id_index` (`status_id`,`company_id`,`branch_id`),
  ADD KEY `transaction_type` (`transaction_type`),
  ADD KEY `status_id` (`status_id`),
  ADD KEY `created_by` (`created_by`),
  ADD KEY `updated_by` (`updated_by`);

--
-- Indexes for table `translations`
--
ALTER TABLE `translations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `translations_company_id_branch_id_index` (`company_id`,`branch_id`);

--
-- Indexes for table `travel`
--
ALTER TABLE `travel`
  ADD PRIMARY KEY (`id`),
  ADD KEY `travel_user_id_foreign` (`user_id`),
  ADD KEY `travel_created_by_foreign` (`created_by`),
  ADD KEY `travel_attachment_foreign` (`attachment`),
  ADD KEY `travel_goal_id_foreign` (`goal_id`),
  ADD KEY `travel_index` (`travel_type_id`,`company_id`,`status_id`,`user_id`,`branch_id`),
  ADD KEY `status_id` (`status_id`);

--
-- Indexes for table `travel_types`
--
ALTER TABLE `travel_types`
  ADD PRIMARY KEY (`id`),
  ADD KEY `travel_types_status_id_company_id_branch_id_index` (`status_id`,`company_id`,`branch_id`),
  ADD KEY `status_id` (`status_id`);

--
-- Indexes for table `uploads`
--
ALTER TABLE `uploads`
  ADD PRIMARY KEY (`id`),
  ADD KEY `uploads_status_id_company_id_branch_id_index` (`status_id`,`company_id`,`branch_id`),
  ADD KEY `uploads_status_id_index` (`status_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `users_phone_unique` (`phone`),
  ADD KEY `users_country_id_foreign` (`country_id`),
  ADD KEY `users_role_id_foreign` (`role_id`),
  ADD KEY `users_department_id_foreign` (`department_id`),
  ADD KEY `users_shift_id_foreign` (`shift_id`),
  ADD KEY `users_designation_id_foreign` (`designation_id`),
  ADD KEY `users_manager_id_foreign` (`manager_id`),
  ADD KEY `users_passport_file_id_foreign` (`passport_file_id`),
  ADD KEY `users_eid_file_id_foreign` (`eid_file_id`),
  ADD KEY `users_visa_file_id_foreign` (`visa_file_id`),
  ADD KEY `users_insurance_file_id_foreign` (`insurance_file_id`),
  ADD KEY `users_labour_card_file_id_foreign` (`labour_card_file_id`),
  ADD KEY `users_nid_card_id_foreign` (`nid_card_id`),
  ADD KEY `users_avatar_id_foreign` (`avatar_id`),
  ADD KEY `users_face_image_foreign` (`face_image`),
  ADD KEY `users_combined_index` (`status_id`,`company_id`,`branch_id`,`email`,`manager_id`,`role_id`,`designation_id`,`is_admin`,`is_hr`,`department_id`,`shift_id`),
  ADD KEY `users_status_id_index` (`status_id`);

--
-- Indexes for table `user_devices`
--
ALTER TABLE `user_devices`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_devices_user_id_company_id_branch_id_index` (`user_id`,`company_id`,`branch_id`);

--
-- Indexes for table `user_document_requests`
--
ALTER TABLE `user_document_requests`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_document_requests_status_id_foreign` (`status_id`),
  ADD KEY `user_document_requests_user_id_index` (`user_id`),
  ADD KEY `user_document_requests_request_type_index` (`request_type`),
  ADD KEY `user_document_requests_approved_index` (`approved`),
  ADD KEY `user_document_requests_request_date_index` (`request_date`);

--
-- Indexes for table `user_shift_assigns`
--
ALTER TABLE `user_shift_assigns`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_shift_assigns_user_id_foreign` (`user_id`),
  ADD KEY `user_shift_assigns_shift_id_foreign` (`shift_id`),
  ADD KEY `user_shift_assigns_status_id_index` (`status_id`);

--
-- Indexes for table `virtual_meetings`
--
ALTER TABLE `virtual_meetings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `virtual_meetings_created_by_foreign` (`created_by`),
  ADD KEY `virtual_meetings_status_id_company_id_branch_id_index` (`status_id`,`company_id`,`branch_id`),
  ADD KEY `status_id` (`status_id`);

--
-- Indexes for table `visits`
--
ALTER TABLE `visits`
  ADD PRIMARY KEY (`id`),
  ADD KEY `visits_user_id_foreign` (`user_id`),
  ADD KEY `visits_status_company_id_branch_id_index` (`status`,`company_id`,`branch_id`);

--
-- Indexes for table `visit_images`
--
ALTER TABLE `visit_images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `visit_images_company_id_branch_id_index` (`company_id`,`branch_id`);

--
-- Indexes for table `visit_notes`
--
ALTER TABLE `visit_notes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `visit_notes_visit_id_foreign` (`visit_id`),
  ADD KEY `visit_notes_company_id_branch_id_index` (`company_id`,`branch_id`);

--
-- Indexes for table `visit_schedules`
--
ALTER TABLE `visit_schedules`
  ADD PRIMARY KEY (`id`),
  ADD KEY `visit_schedules_visit_id_company_id_branch_id_index` (`visit_id`,`company_id`,`branch_id`);

--
-- Indexes for table `weekends`
--
ALTER TABLE `weekends`
  ADD PRIMARY KEY (`id`),
  ADD KEY `weekends_status_id_foreign` (`status_id`),
  ADD KEY `weekends_company_id_branch_id_index` (`company_id`,`branch_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `accounts`
--
ALTER TABLE `accounts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `activity_log`
--
ALTER TABLE `activity_log`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=144;

--
-- AUTO_INCREMENT for table `advance_salaries`
--
ALTER TABLE `advance_salaries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `advance_salary_logs`
--
ALTER TABLE `advance_salary_logs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `advance_types`
--
ALTER TABLE `advance_types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `all_contents`
--
ALTER TABLE `all_contents`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `api_setups`
--
ALTER TABLE `api_setups`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `appoinments`
--
ALTER TABLE `appoinments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `appoinment_participants`
--
ALTER TABLE `appoinment_participants`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `appraisals`
--
ALTER TABLE `appraisals`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `appreciates`
--
ALTER TABLE `appreciates`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `app_screens`
--
ALTER TABLE `app_screens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `assign_leaves`
--
ALTER TABLE `assign_leaves`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `attendances`
--
ALTER TABLE `attendances`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `author_infos`
--
ALTER TABLE `author_infos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `awards`
--
ALTER TABLE `awards`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `award_types`
--
ALTER TABLE `award_types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bank_accounts`
--
ALTER TABLE `bank_accounts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `branches`
--
ALTER TABLE `branches`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `clients`
--
ALTER TABLE `clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `commissions`
--
ALTER TABLE `commissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `companies`
--
ALTER TABLE `companies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `company_configs`
--
ALTER TABLE `company_configs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `competences`
--
ALTER TABLE `competences`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `competence_types`
--
ALTER TABLE `competence_types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `conversations`
--
ALTER TABLE `conversations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=239;

--
-- AUTO_INCREMENT for table `currencies`
--
ALTER TABLE `currencies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=122;

--
-- AUTO_INCREMENT for table `daily_leaves`
--
ALTER TABLE `daily_leaves`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `database_backups`
--
ALTER TABLE `database_backups`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `date_formats`
--
ALTER TABLE `date_formats`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `departments`
--
ALTER TABLE `departments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `deposits`
--
ALTER TABLE `deposits`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `designations`
--
ALTER TABLE `designations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `discussions`
--
ALTER TABLE `discussions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `discussion_comments`
--
ALTER TABLE `discussion_comments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `discussion_likes`
--
ALTER TABLE `discussion_likes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `domains`
--
ALTER TABLE `domains`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `duty_schedules`
--
ALTER TABLE `duty_schedules`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `employee_breaks`
--
ALTER TABLE `employee_breaks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `employee_tasks`
--
ALTER TABLE `employee_tasks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `expenses`
--
ALTER TABLE `expenses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `expense_claims`
--
ALTER TABLE `expense_claims`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `expense_claim_details`
--
ALTER TABLE `expense_claim_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `expire_notifications`
--
ALTER TABLE `expire_notifications`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `features`
--
ALTER TABLE `features`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `goals`
--
ALTER TABLE `goals`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `goal_types`
--
ALTER TABLE `goal_types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `holidays`
--
ALTER TABLE `holidays`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `home_pages`
--
ALTER TABLE `home_pages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `hrm_expenses`
--
ALTER TABLE `hrm_expenses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `hrm_languages`
--
ALTER TABLE `hrm_languages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `income_expense_categories`
--
ALTER TABLE `income_expense_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `indicators`
--
ALTER TABLE `indicators`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ip_setups`
--
ALTER TABLE `ip_setups`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jitsi_meetings`
--
ALTER TABLE `jitsi_meetings`
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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=115;

--
-- AUTO_INCREMENT for table `late_in_out_reasons`
--
ALTER TABLE `late_in_out_reasons`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `leave_requests`
--
ALTER TABLE `leave_requests`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `leave_settings`
--
ALTER TABLE `leave_settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `leave_types`
--
ALTER TABLE `leave_types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `leave_years`
--
ALTER TABLE `leave_years`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `location_binds`
--
ALTER TABLE `location_binds`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `location_logs`
--
ALTER TABLE `location_logs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `meetings`
--
ALTER TABLE `meetings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `meeting_members`
--
ALTER TABLE `meeting_members`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `meeting_participants`
--
ALTER TABLE `meeting_participants`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `meeting_setups`
--
ALTER TABLE `meeting_setups`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `meta_information`
--
ALTER TABLE `meta_information`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=147;

--
-- AUTO_INCREMENT for table `notes`
--
ALTER TABLE `notes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `notices`
--
ALTER TABLE `notices`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `notice_departments`
--
ALTER TABLE `notice_departments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `notice_view_logs`
--
ALTER TABLE `notice_view_logs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `notifications_old`
--
ALTER TABLE `notifications_old`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `notification_types`
--
ALTER TABLE `notification_types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `payment_histories`
--
ALTER TABLE `payment_histories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `payment_history_details`
--
ALTER TABLE `payment_history_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `payment_history_logs`
--
ALTER TABLE `payment_history_logs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `payment_methods`
--
ALTER TABLE `payment_methods`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `payment_types`
--
ALTER TABLE `payment_types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `portfolios`
--
ALTER TABLE `portfolios`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `projects`
--
ALTER TABLE `projects`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `project_activities`
--
ALTER TABLE `project_activities`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `project_files`
--
ALTER TABLE `project_files`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `project_file_comments`
--
ALTER TABLE `project_file_comments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `project_membars`
--
ALTER TABLE `project_membars`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `project_payments`
--
ALTER TABLE `project_payments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `role_users`
--
ALTER TABLE `role_users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `salary_generates`
--
ALTER TABLE `salary_generates`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `salary_payment_logs`
--
ALTER TABLE `salary_payment_logs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `salary_setups`
--
ALTER TABLE `salary_setups`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `salary_setup_details`
--
ALTER TABLE `salary_setup_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `salary_sheet_reports`
--
ALTER TABLE `salary_sheet_reports`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `shifts`
--
ALTER TABLE `shifts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `sms_logs`
--
ALTER TABLE `sms_logs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `social_identities`
--
ALTER TABLE `social_identities`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `statuses`
--
ALTER TABLE `statuses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `subscription_plans`
--
ALTER TABLE `subscription_plans`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `support_tickets`
--
ALTER TABLE `support_tickets`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tasks`
--
ALTER TABLE `tasks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `task_activities`
--
ALTER TABLE `task_activities`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `task_discussions`
--
ALTER TABLE `task_discussions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `task_discussion_comments`
--
ALTER TABLE `task_discussion_comments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `task_files`
--
ALTER TABLE `task_files`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `task_file_comments`
--
ALTER TABLE `task_file_comments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `task_followers`
--
ALTER TABLE `task_followers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `task_members`
--
ALTER TABLE `task_members`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `task_notes`
--
ALTER TABLE `task_notes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `teams`
--
ALTER TABLE `teams`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `team_members`
--
ALTER TABLE `team_members`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tenant_subscriptions`
--
ALTER TABLE `tenant_subscriptions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `testimonials`
--
ALTER TABLE `testimonials`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ticket_replies`
--
ALTER TABLE `ticket_replies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `time_zones`
--
ALTER TABLE `time_zones`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=425;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `translations`
--
ALTER TABLE `translations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `travel`
--
ALTER TABLE `travel`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `travel_types`
--
ALTER TABLE `travel_types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `uploads`
--
ALTER TABLE `uploads`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `user_devices`
--
ALTER TABLE `user_devices`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_document_requests`
--
ALTER TABLE `user_document_requests`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_shift_assigns`
--
ALTER TABLE `user_shift_assigns`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `virtual_meetings`
--
ALTER TABLE `virtual_meetings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `visits`
--
ALTER TABLE `visits`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `visit_images`
--
ALTER TABLE `visit_images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `visit_notes`
--
ALTER TABLE `visit_notes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `visit_schedules`
--
ALTER TABLE `visit_schedules`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `weekends`
--
ALTER TABLE `weekends`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `accounts`
--
ALTER TABLE `accounts`
  ADD CONSTRAINT `accounts_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `accounts_status_id_foreign` FOREIGN KEY (`status_id`) REFERENCES `statuses` (`id`),
  ADD CONSTRAINT `accounts_updated_by_foreign` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`);

--
-- Constraints for table `advance_salaries`
--
ALTER TABLE `advance_salaries`
  ADD CONSTRAINT `advance_salaries_advance_type_id_foreign` FOREIGN KEY (`advance_type_id`) REFERENCES `advance_types` (`id`),
  ADD CONSTRAINT `advance_salaries_approver_id_foreign` FOREIGN KEY (`approver_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `advance_salaries_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `advance_salaries_pay_foreign` FOREIGN KEY (`pay`) REFERENCES `statuses` (`id`),
  ADD CONSTRAINT `advance_salaries_return_status_foreign` FOREIGN KEY (`return_status`) REFERENCES `statuses` (`id`),
  ADD CONSTRAINT `advance_salaries_status_id_foreign` FOREIGN KEY (`status_id`) REFERENCES `statuses` (`id`),
  ADD CONSTRAINT `advance_salaries_updated_by_foreign` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `advance_salaries_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `advance_salary_logs`
--
ALTER TABLE `advance_salary_logs`
  ADD CONSTRAINT `advance_salary_logs_advance_salary_id_foreign` FOREIGN KEY (`advance_salary_id`) REFERENCES `advance_salaries` (`id`),
  ADD CONSTRAINT `advance_salary_logs_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `advance_salary_logs_updated_by_foreign` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `advance_salary_logs_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `advance_types`
--
ALTER TABLE `advance_types`
  ADD CONSTRAINT `advance_types_status_id_foreign` FOREIGN KEY (`status_id`) REFERENCES `statuses` (`id`);

--
-- Constraints for table `all_contents`
--
ALTER TABLE `all_contents`
  ADD CONSTRAINT `all_contents_status_id_foreign` FOREIGN KEY (`status_id`) REFERENCES `statuses` (`id`),
  ADD CONSTRAINT `all_contents_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `api_setups`
--
ALTER TABLE `api_setups`
  ADD CONSTRAINT `api_setups_status_id_foreign` FOREIGN KEY (`status_id`) REFERENCES `statuses` (`id`);

--
-- Constraints for table `appoinments`
--
ALTER TABLE `appoinments`
  ADD CONSTRAINT `appoinments_appoinment_with_foreign` FOREIGN KEY (`appoinment_with`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `appoinments_attachment_file_id_foreign` FOREIGN KEY (`attachment_file_id`) REFERENCES `uploads` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `appoinments_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `appoinments_status_id_foreign` FOREIGN KEY (`status_id`) REFERENCES `statuses` (`id`);

--
-- Constraints for table `appoinment_participants`
--
ALTER TABLE `appoinment_participants`
  ADD CONSTRAINT `appoinment_participants_appoinment_id_foreign` FOREIGN KEY (`appoinment_id`) REFERENCES `appoinments` (`id`),
  ADD CONSTRAINT `appoinment_participants_participant_id_foreign` FOREIGN KEY (`participant_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `appraisals`
--
ALTER TABLE `appraisals`
  ADD CONSTRAINT `appraisals_added_by_foreign` FOREIGN KEY (`added_by`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `appraisals_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `appreciates`
--
ALTER TABLE `appreciates`
  ADD CONSTRAINT `appreciates_appreciate_by_foreign` FOREIGN KEY (`appreciate_by`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `appreciates_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `app_screens`
--
ALTER TABLE `app_screens`
  ADD CONSTRAINT `app_screens_status_id_foreign` FOREIGN KEY (`status_id`) REFERENCES `statuses` (`id`);

--
-- Constraints for table `assign_leaves`
--
ALTER TABLE `assign_leaves`
  ADD CONSTRAINT `assign_leaves_status_id_foreign` FOREIGN KEY (`status_id`) REFERENCES `statuses` (`id`),
  ADD CONSTRAINT `assign_leaves_type_id_foreign` FOREIGN KEY (`type_id`) REFERENCES `leave_types` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `attendances`
--
ALTER TABLE `attendances`
  ADD CONSTRAINT `attendances_face_image_foreign` FOREIGN KEY (`face_image`) REFERENCES `uploads` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `attendances_in_status_approve_by_foreign` FOREIGN KEY (`in_status_approve_by`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `attendances_out_status_approve_by_foreign` FOREIGN KEY (`out_status_approve_by`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `attendances_shift_id_foreign` FOREIGN KEY (`shift_id`) REFERENCES `shifts` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `attendances_status_id_foreign` FOREIGN KEY (`status_id`) REFERENCES `statuses` (`id`),
  ADD CONSTRAINT `attendances_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `author_infos`
--
ALTER TABLE `author_infos`
  ADD CONSTRAINT `author_infos_approved_by_foreign` FOREIGN KEY (`approved_by`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `author_infos_archived_by_foreign` FOREIGN KEY (`archived_by`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `author_infos_cancelled_by_foreign` FOREIGN KEY (`cancelled_by`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `author_infos_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `author_infos_deleted_by_foreign` FOREIGN KEY (`deleted_by`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `author_infos_published_by_foreign` FOREIGN KEY (`published_by`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `author_infos_referred_by_foreign` FOREIGN KEY (`referred_by`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `author_infos_rejected_by_foreign` FOREIGN KEY (`rejected_by`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `author_infos_restored_by_foreign` FOREIGN KEY (`restored_by`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `author_infos_unpublished_by_foreign` FOREIGN KEY (`unpublished_by`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `author_infos_updated_by_foreign` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `awards`
--
ALTER TABLE `awards`
  ADD CONSTRAINT `awards_attachment_foreign` FOREIGN KEY (`attachment`) REFERENCES `uploads` (`id`),
  ADD CONSTRAINT `awards_award_type_id_foreign` FOREIGN KEY (`award_type_id`) REFERENCES `award_types` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `awards_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `awards_goal_id_foreign` FOREIGN KEY (`goal_id`) REFERENCES `goals` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `awards_status_id_foreign` FOREIGN KEY (`status_id`) REFERENCES `statuses` (`id`),
  ADD CONSTRAINT `awards_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `award_types`
--
ALTER TABLE `award_types`
  ADD CONSTRAINT `award_types_status_id_foreign` FOREIGN KEY (`status_id`) REFERENCES `statuses` (`id`);

--
-- Constraints for table `bank_accounts`
--
ALTER TABLE `bank_accounts`
  ADD CONSTRAINT `bank_accounts_author_info_id_foreign` FOREIGN KEY (`author_info_id`) REFERENCES `author_infos` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `bank_accounts_status_id_foreign` FOREIGN KEY (`status_id`) REFERENCES `statuses` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `bank_accounts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `categories`
--
ALTER TABLE `categories`
  ADD CONSTRAINT `categories_author_info_id_foreign` FOREIGN KEY (`author_info_id`) REFERENCES `author_infos` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `categories_status_id_foreign` FOREIGN KEY (`status_id`) REFERENCES `statuses` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `clients`
--
ALTER TABLE `clients`
  ADD CONSTRAINT `clients_status_id_foreign` FOREIGN KEY (`status_id`) REFERENCES `statuses` (`id`);

--
-- Constraints for table `commissions`
--
ALTER TABLE `commissions`
  ADD CONSTRAINT `commissions_status_id_foreign` FOREIGN KEY (`status_id`) REFERENCES `statuses` (`id`);

--
-- Constraints for table `companies`
--
ALTER TABLE `companies`
  ADD CONSTRAINT `companies_country_id_foreign` FOREIGN KEY (`country_id`) REFERENCES `countries` (`id`),
  ADD CONSTRAINT `companies_status_id_foreign` FOREIGN KEY (`status_id`) REFERENCES `statuses` (`id`),
  ADD CONSTRAINT `companies_trade_licence_id_foreign` FOREIGN KEY (`trade_licence_id`) REFERENCES `uploads` (`id`);

--
-- Constraints for table `competences`
--
ALTER TABLE `competences`
  ADD CONSTRAINT `competences_competence_type_id_foreign` FOREIGN KEY (`competence_type_id`) REFERENCES `competence_types` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `competences_status_id_foreign` FOREIGN KEY (`status_id`) REFERENCES `statuses` (`id`);

--
-- Constraints for table `competence_types`
--
ALTER TABLE `competence_types`
  ADD CONSTRAINT `competence_types_status_id_foreign` FOREIGN KEY (`status_id`) REFERENCES `statuses` (`id`);

--
-- Constraints for table `conversations`
--
ALTER TABLE `conversations`
  ADD CONSTRAINT `conversations_image_id_foreign` FOREIGN KEY (`image_id`) REFERENCES `uploads` (`id`),
  ADD CONSTRAINT `conversations_receiver_id_foreign` FOREIGN KEY (`receiver_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `conversations_sender_id_foreign` FOREIGN KEY (`sender_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `daily_leaves`
--
ALTER TABLE `daily_leaves`
  ADD CONSTRAINT `daily_leaves_approved_by_hr_foreign` FOREIGN KEY (`approved_by_hr`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `daily_leaves_approved_by_tl_foreign` FOREIGN KEY (`approved_by_tl`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `daily_leaves_author_info_id_foreign` FOREIGN KEY (`author_info_id`) REFERENCES `author_infos` (`id`),
  ADD CONSTRAINT `daily_leaves_rejected_by_hr_foreign` FOREIGN KEY (`rejected_by_hr`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `daily_leaves_rejected_by_tl_foreign` FOREIGN KEY (`rejected_by_tl`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `daily_leaves_status_id_foreign` FOREIGN KEY (`status_id`) REFERENCES `statuses` (`id`),
  ADD CONSTRAINT `daily_leaves_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `departments`
--
ALTER TABLE `departments`
  ADD CONSTRAINT `departments_status_id_foreign` FOREIGN KEY (`status_id`) REFERENCES `statuses` (`id`);

--
-- Constraints for table `deposits`
--
ALTER TABLE `deposits`
  ADD CONSTRAINT `deposits_approver_id_foreign` FOREIGN KEY (`approver_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `deposits_attachment_foreign` FOREIGN KEY (`attachment`) REFERENCES `uploads` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `deposits_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `deposits_income_expense_category_id_foreign` FOREIGN KEY (`income_expense_category_id`) REFERENCES `income_expense_categories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `deposits_pay_foreign` FOREIGN KEY (`pay`) REFERENCES `statuses` (`id`),
  ADD CONSTRAINT `deposits_payment_method_id_foreign` FOREIGN KEY (`payment_method_id`) REFERENCES `payment_methods` (`id`),
  ADD CONSTRAINT `deposits_status_id_foreign` FOREIGN KEY (`status_id`) REFERENCES `statuses` (`id`),
  ADD CONSTRAINT `deposits_transaction_id_foreign` FOREIGN KEY (`transaction_id`) REFERENCES `transactions` (`id`),
  ADD CONSTRAINT `deposits_updated_by_foreign` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `deposits_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `designations`
--
ALTER TABLE `designations`
  ADD CONSTRAINT `designations_status_id_foreign` FOREIGN KEY (`status_id`) REFERENCES `statuses` (`id`);

--
-- Constraints for table `discussions`
--
ALTER TABLE `discussions`
  ADD CONSTRAINT `discussions_project_id_foreign` FOREIGN KEY (`project_id`) REFERENCES `projects` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `discussions_show_to_customer_foreign` FOREIGN KEY (`show_to_customer`) REFERENCES `statuses` (`id`),
  ADD CONSTRAINT `discussions_status_id_foreign` FOREIGN KEY (`status_id`) REFERENCES `statuses` (`id`),
  ADD CONSTRAINT `discussions_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `discussion_comments`
--
ALTER TABLE `discussion_comments`
  ADD CONSTRAINT `discussion_comments_attachment_foreign` FOREIGN KEY (`attachment`) REFERENCES `uploads` (`id`),
  ADD CONSTRAINT `discussion_comments_discussion_id_foreign` FOREIGN KEY (`discussion_id`) REFERENCES `discussions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `discussion_comments_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `discussion_likes`
--
ALTER TABLE `discussion_likes`
  ADD CONSTRAINT `discussion_likes_discussion_id_foreign` FOREIGN KEY (`discussion_id`) REFERENCES `discussions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `discussion_likes_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `domains`
--
ALTER TABLE `domains`
  ADD CONSTRAINT `domains_tenant_id_foreign` FOREIGN KEY (`tenant_id`) REFERENCES `tenants` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `duty_schedules`
--
ALTER TABLE `duty_schedules`
  ADD CONSTRAINT `duty_schedules_shift_id_foreign` FOREIGN KEY (`shift_id`) REFERENCES `shifts` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `duty_schedules_status_id_foreign` FOREIGN KEY (`status_id`) REFERENCES `statuses` (`id`);

--
-- Constraints for table `employee_breaks`
--
ALTER TABLE `employee_breaks`
  ADD CONSTRAINT `employee_breaks_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `employee_tasks`
--
ALTER TABLE `employee_tasks`
  ADD CONSTRAINT `employee_tasks_assigned_id_foreign` FOREIGN KEY (`assigned_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `employee_tasks_attachment_file_id_foreign` FOREIGN KEY (`attachment_file_id`) REFERENCES `uploads` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `employee_tasks_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `employee_tasks_status_id_foreign` FOREIGN KEY (`status_id`) REFERENCES `statuses` (`id`);

--
-- Constraints for table `expenses`
--
ALTER TABLE `expenses`
  ADD CONSTRAINT `expenses_approver_id_foreign` FOREIGN KEY (`approver_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `expenses_attachment_foreign` FOREIGN KEY (`attachment`) REFERENCES `uploads` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `expenses_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `expenses_income_expense_category_id_foreign` FOREIGN KEY (`income_expense_category_id`) REFERENCES `income_expense_categories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `expenses_pay_foreign` FOREIGN KEY (`pay`) REFERENCES `statuses` (`id`),
  ADD CONSTRAINT `expenses_payment_method_id_foreign` FOREIGN KEY (`payment_method_id`) REFERENCES `payment_methods` (`id`),
  ADD CONSTRAINT `expenses_status_id_foreign` FOREIGN KEY (`status_id`) REFERENCES `statuses` (`id`),
  ADD CONSTRAINT `expenses_transaction_id_foreign` FOREIGN KEY (`transaction_id`) REFERENCES `transactions` (`id`),
  ADD CONSTRAINT `expenses_updated_by_foreign` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `expenses_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `expense_claims`
--
ALTER TABLE `expense_claims`
  ADD CONSTRAINT `expense_claims_attachment_file_id_foreign` FOREIGN KEY (`attachment_file_id`) REFERENCES `uploads` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `expense_claims_status_id_foreign` FOREIGN KEY (`status_id`) REFERENCES `statuses` (`id`),
  ADD CONSTRAINT `expense_claims_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `expense_claim_details`
--
ALTER TABLE `expense_claim_details`
  ADD CONSTRAINT `expense_claim_details_expense_claim_id_foreign` FOREIGN KEY (`expense_claim_id`) REFERENCES `expense_claims` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `expense_claim_details_hrm_expense_id_foreign` FOREIGN KEY (`hrm_expense_id`) REFERENCES `hrm_expenses` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `expense_claim_details_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `features`
--
ALTER TABLE `features`
  ADD CONSTRAINT `features_attachment_file_id_foreign` FOREIGN KEY (`attachment_file_id`) REFERENCES `uploads` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `features_status_id_foreign` FOREIGN KEY (`status_id`) REFERENCES `statuses` (`id`);

--
-- Constraints for table `goals`
--
ALTER TABLE `goals`
  ADD CONSTRAINT `goals_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `goals_goal_type_id_foreign` FOREIGN KEY (`goal_type_id`) REFERENCES `goal_types` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `goals_status_id_foreign` FOREIGN KEY (`status_id`) REFERENCES `statuses` (`id`);

--
-- Constraints for table `goal_types`
--
ALTER TABLE `goal_types`
  ADD CONSTRAINT `goal_types_status_id_foreign` FOREIGN KEY (`status_id`) REFERENCES `statuses` (`id`);

--
-- Constraints for table `holidays`
--
ALTER TABLE `holidays`
  ADD CONSTRAINT `holidays_attachment_id_foreign` FOREIGN KEY (`attachment_id`) REFERENCES `uploads` (`id`),
  ADD CONSTRAINT `holidays_status_id_foreign` FOREIGN KEY (`status_id`) REFERENCES `statuses` (`id`);

--
-- Constraints for table `home_pages`
--
ALTER TABLE `home_pages`
  ADD CONSTRAINT `home_pages_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `home_pages_status_id_foreign` FOREIGN KEY (`status_id`) REFERENCES `statuses` (`id`),
  ADD CONSTRAINT `home_pages_updated_by_foreign` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`);

--
-- Constraints for table `hrm_expenses`
--
ALTER TABLE `hrm_expenses`
  ADD CONSTRAINT `hrm_expenses_attachment_file_id_foreign` FOREIGN KEY (`attachment_file_id`) REFERENCES `uploads` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `hrm_expenses_claimed_approved_status_id_foreign` FOREIGN KEY (`claimed_approved_status_id`) REFERENCES `statuses` (`id`),
  ADD CONSTRAINT `hrm_expenses_income_expense_category_id_foreign` FOREIGN KEY (`income_expense_category_id`) REFERENCES `income_expense_categories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `hrm_expenses_is_claimed_status_id_foreign` FOREIGN KEY (`is_claimed_status_id`) REFERENCES `statuses` (`id`),
  ADD CONSTRAINT `hrm_expenses_status_id_foreign` FOREIGN KEY (`status_id`) REFERENCES `statuses` (`id`),
  ADD CONSTRAINT `hrm_expenses_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `hrm_languages`
--
ALTER TABLE `hrm_languages`
  ADD CONSTRAINT `hrm_languages_status_id_foreign` FOREIGN KEY (`status_id`) REFERENCES `statuses` (`id`);

--
-- Constraints for table `income_expense_categories`
--
ALTER TABLE `income_expense_categories`
  ADD CONSTRAINT `income_expense_categories_attachment_file_id_foreign` FOREIGN KEY (`attachment_file_id`) REFERENCES `uploads` (`id`),
  ADD CONSTRAINT `income_expense_categories_status_id_foreign` FOREIGN KEY (`status_id`) REFERENCES `statuses` (`id`);

--
-- Constraints for table `indicators`
--
ALTER TABLE `indicators`
  ADD CONSTRAINT `indicators_added_by_foreign` FOREIGN KEY (`added_by`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `indicators_department_id_foreign` FOREIGN KEY (`department_id`) REFERENCES `departments` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `indicators_designation_id_foreign` FOREIGN KEY (`designation_id`) REFERENCES `designations` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `indicators_shift_id_foreign` FOREIGN KEY (`shift_id`) REFERENCES `shifts` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `indicators_status_id_foreign` FOREIGN KEY (`status_id`) REFERENCES `statuses` (`id`);

--
-- Constraints for table `ip_setups`
--
ALTER TABLE `ip_setups`
  ADD CONSTRAINT `ip_setups_status_id_foreign` FOREIGN KEY (`status_id`) REFERENCES `statuses` (`id`);

--
-- Constraints for table `jitsi_meetings`
--
ALTER TABLE `jitsi_meetings`
  ADD CONSTRAINT `jitsi_meetings_status_id_foreign` FOREIGN KEY (`status_id`) REFERENCES `statuses` (`id`);

--
-- Constraints for table `late_in_out_reasons`
--
ALTER TABLE `late_in_out_reasons`
  ADD CONSTRAINT `late_in_out_reasons_attendance_id_foreign` FOREIGN KEY (`attendance_id`) REFERENCES `attendances` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `leave_requests`
--
ALTER TABLE `leave_requests`
  ADD CONSTRAINT `leave_requests_assign_leave_id_foreign` FOREIGN KEY (`assign_leave_id`) REFERENCES `assign_leaves` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `leave_requests_attachment_file_id_foreign` FOREIGN KEY (`attachment_file_id`) REFERENCES `uploads` (`id`),
  ADD CONSTRAINT `leave_requests_author_info_id_foreign` FOREIGN KEY (`author_info_id`) REFERENCES `author_infos` (`id`),
  ADD CONSTRAINT `leave_requests_status_id_foreign` FOREIGN KEY (`status_id`) REFERENCES `statuses` (`id`),
  ADD CONSTRAINT `leave_requests_substitute_id_foreign` FOREIGN KEY (`substitute_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `leave_requests_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `leave_settings`
--
ALTER TABLE `leave_settings`
  ADD CONSTRAINT `leave_settings_status_id_foreign` FOREIGN KEY (`status_id`) REFERENCES `statuses` (`id`);

--
-- Constraints for table `leave_types`
--
ALTER TABLE `leave_types`
  ADD CONSTRAINT `leave_types_status_id_foreign` FOREIGN KEY (`status_id`) REFERENCES `statuses` (`id`);

--
-- Constraints for table `leave_years`
--
ALTER TABLE `leave_years`
  ADD CONSTRAINT `leave_years_status_id_foreign` FOREIGN KEY (`status_id`) REFERENCES `statuses` (`id`),
  ADD CONSTRAINT `leave_years_type_id_foreign` FOREIGN KEY (`type_id`) REFERENCES `leave_types` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `location_binds`
--
ALTER TABLE `location_binds`
  ADD CONSTRAINT `location_binds_status_id_foreign` FOREIGN KEY (`status_id`) REFERENCES `statuses` (`id`),
  ADD CONSTRAINT `location_binds_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `location_logs`
--
ALTER TABLE `location_logs`
  ADD CONSTRAINT `location_logs_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `meetings`
--
ALTER TABLE `meetings`
  ADD CONSTRAINT `meetings_attachment_file_id_foreign` FOREIGN KEY (`attachment_file_id`) REFERENCES `uploads` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `meetings_status_id_foreign` FOREIGN KEY (`status_id`) REFERENCES `statuses` (`id`),
  ADD CONSTRAINT `meetings_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `meeting_members`
--
ALTER TABLE `meeting_members`
  ADD CONSTRAINT `meeting_members_status_id_foreign` FOREIGN KEY (`status_id`) REFERENCES `statuses` (`id`);

--
-- Constraints for table `meeting_participants`
--
ALTER TABLE `meeting_participants`
  ADD CONSTRAINT `meeting_participants_meeting_id_foreign` FOREIGN KEY (`meeting_id`) REFERENCES `meetings` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `meeting_participants_participant_id_foreign` FOREIGN KEY (`participant_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `meeting_setups`
--
ALTER TABLE `meeting_setups`
  ADD CONSTRAINT `meeting_setups_status_id_foreign` FOREIGN KEY (`status_id`) REFERENCES `statuses` (`id`);

--
-- Constraints for table `menus`
--
ALTER TABLE `menus`
  ADD CONSTRAINT `menus_status_id_foreign` FOREIGN KEY (`status_id`) REFERENCES `statuses` (`id`);

--
-- Constraints for table `meta_information`
--
ALTER TABLE `meta_information`
  ADD CONSTRAINT `meta_information_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `meta_information_updated_by_foreign` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `notes`
--
ALTER TABLE `notes`
  ADD CONSTRAINT `notes_project_id_foreign` FOREIGN KEY (`project_id`) REFERENCES `projects` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `notes_show_to_customer_foreign` FOREIGN KEY (`show_to_customer`) REFERENCES `statuses` (`id`),
  ADD CONSTRAINT `notes_status_id_foreign` FOREIGN KEY (`status_id`) REFERENCES `statuses` (`id`),
  ADD CONSTRAINT `notes_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `notices`
--
ALTER TABLE `notices`
  ADD CONSTRAINT `notices_attachment_file_id_foreign` FOREIGN KEY (`attachment_file_id`) REFERENCES `uploads` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `notices_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `notices_department_id_foreign` FOREIGN KEY (`department_id`) REFERENCES `departments` (`id`),
  ADD CONSTRAINT `notices_status_id_foreign` FOREIGN KEY (`status_id`) REFERENCES `statuses` (`id`);

--
-- Constraints for table `notice_view_logs`
--
ALTER TABLE `notice_view_logs`
  ADD CONSTRAINT `notice_view_logs_notice_id_foreign` FOREIGN KEY (`notice_id`) REFERENCES `notices` (`id`),
  ADD CONSTRAINT `notice_view_logs_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `notifications_old`
--
ALTER TABLE `notifications_old`
  ADD CONSTRAINT `notifications_old_image_id_foreign` FOREIGN KEY (`image_id`) REFERENCES `uploads` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `notifications_old_receiver_id_foreign` FOREIGN KEY (`receiver_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `notifications_old_sender_id_foreign` FOREIGN KEY (`sender_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `notification_types`
--
ALTER TABLE `notification_types`
  ADD CONSTRAINT `notification_types_icon_foreign` FOREIGN KEY (`icon`) REFERENCES `uploads` (`id`),
  ADD CONSTRAINT `notification_types_status_id_foreign` FOREIGN KEY (`status_id`) REFERENCES `statuses` (`id`);

--
-- Constraints for table `payment_histories`
--
ALTER TABLE `payment_histories`
  ADD CONSTRAINT `payment_histories_attachment_file_id_foreign` FOREIGN KEY (`attachment_file_id`) REFERENCES `uploads` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `payment_histories_expense_claim_id_foreign` FOREIGN KEY (`expense_claim_id`) REFERENCES `expense_claims` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `payment_histories_payment_status_id_foreign` FOREIGN KEY (`payment_status_id`) REFERENCES `statuses` (`id`),
  ADD CONSTRAINT `payment_histories_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `payment_history_details`
--
ALTER TABLE `payment_history_details`
  ADD CONSTRAINT `payment_history_details_paid_by_id_foreign` FOREIGN KEY (`paid_by_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `payment_history_details_payment_history_id_foreign` FOREIGN KEY (`payment_history_id`) REFERENCES `payment_histories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `payment_history_details_payment_method_id_foreign` FOREIGN KEY (`payment_method_id`) REFERENCES `payment_methods` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `payment_history_details_payment_status_id_foreign` FOREIGN KEY (`payment_status_id`) REFERENCES `statuses` (`id`),
  ADD CONSTRAINT `payment_history_details_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `payment_history_logs`
--
ALTER TABLE `payment_history_logs`
  ADD CONSTRAINT `payment_history_logs_expense_claim_id_foreign` FOREIGN KEY (`expense_claim_id`) REFERENCES `expense_claims` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `payment_history_logs_paid_by_id_foreign` FOREIGN KEY (`paid_by_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `payment_history_logs_payment_history_id_foreign` FOREIGN KEY (`payment_history_id`) REFERENCES `payment_histories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `payment_history_logs_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `payment_methods`
--
ALTER TABLE `payment_methods`
  ADD CONSTRAINT `payment_methods_attachment_file_id_foreign` FOREIGN KEY (`attachment_file_id`) REFERENCES `uploads` (`id`),
  ADD CONSTRAINT `payment_methods_status_id_foreign` FOREIGN KEY (`status_id`) REFERENCES `statuses` (`id`);

--
-- Constraints for table `payment_types`
--
ALTER TABLE `payment_types`
  ADD CONSTRAINT `payment_types_status_id_foreign` FOREIGN KEY (`status_id`) REFERENCES `statuses` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `portfolios`
--
ALTER TABLE `portfolios`
  ADD CONSTRAINT `portfolios_attachment_foreign` FOREIGN KEY (`attachment`) REFERENCES `uploads` (`id`),
  ADD CONSTRAINT `portfolios_status_id_foreign` FOREIGN KEY (`status_id`) REFERENCES `statuses` (`id`),
  ADD CONSTRAINT `portfolios_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `projects`
--
ALTER TABLE `projects`
  ADD CONSTRAINT `projects_client_id_foreign` FOREIGN KEY (`client_id`) REFERENCES `clients` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `projects_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `projects_goal_id_foreign` FOREIGN KEY (`goal_id`) REFERENCES `goals` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `projects_payment_foreign` FOREIGN KEY (`payment`) REFERENCES `statuses` (`id`),
  ADD CONSTRAINT `projects_priority_foreign` FOREIGN KEY (`priority`) REFERENCES `statuses` (`id`),
  ADD CONSTRAINT `projects_status_id_foreign` FOREIGN KEY (`status_id`) REFERENCES `statuses` (`id`);

--
-- Constraints for table `project_activities`
--
ALTER TABLE `project_activities`
  ADD CONSTRAINT `project_activities_project_id_foreign` FOREIGN KEY (`project_id`) REFERENCES `projects` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `project_activities_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `project_files`
--
ALTER TABLE `project_files`
  ADD CONSTRAINT `project_files_attachment_foreign` FOREIGN KEY (`attachment`) REFERENCES `uploads` (`id`),
  ADD CONSTRAINT `project_files_project_id_foreign` FOREIGN KEY (`project_id`) REFERENCES `projects` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `project_files_show_to_customer_foreign` FOREIGN KEY (`show_to_customer`) REFERENCES `statuses` (`id`),
  ADD CONSTRAINT `project_files_status_id_foreign` FOREIGN KEY (`status_id`) REFERENCES `statuses` (`id`),
  ADD CONSTRAINT `project_files_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `project_file_comments`
--
ALTER TABLE `project_file_comments`
  ADD CONSTRAINT `project_file_comments_attachment_foreign` FOREIGN KEY (`attachment`) REFERENCES `uploads` (`id`),
  ADD CONSTRAINT `project_file_comments_project_file_id_foreign` FOREIGN KEY (`project_file_id`) REFERENCES `project_files` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `project_file_comments_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `project_membars`
--
ALTER TABLE `project_membars`
  ADD CONSTRAINT `project_membars_added_by_foreign` FOREIGN KEY (`added_by`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `project_membars_project_id_foreign` FOREIGN KEY (`project_id`) REFERENCES `projects` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `project_membars_status_id_foreign` FOREIGN KEY (`status_id`) REFERENCES `statuses` (`id`),
  ADD CONSTRAINT `project_membars_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `project_payments`
--
ALTER TABLE `project_payments`
  ADD CONSTRAINT `project_payments_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `project_payments_paid_by_foreign` FOREIGN KEY (`paid_by`) REFERENCES `clients` (`id`),
  ADD CONSTRAINT `project_payments_payment_method_id_foreign` FOREIGN KEY (`payment_method_id`) REFERENCES `payment_methods` (`id`),
  ADD CONSTRAINT `project_payments_project_id_foreign` FOREIGN KEY (`project_id`) REFERENCES `projects` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `project_payments_transaction_id_foreign` FOREIGN KEY (`transaction_id`) REFERENCES `transactions` (`id`),
  ADD CONSTRAINT `project_payments_updated_by_foreign` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`);

--
-- Constraints for table `roles`
--
ALTER TABLE `roles`
  ADD CONSTRAINT `roles_status_id_foreign` FOREIGN KEY (`status_id`) REFERENCES `statuses` (`id`);

--
-- Constraints for table `role_users`
--
ALTER TABLE `role_users`
  ADD CONSTRAINT `role_users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_users_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `salary_generates`
--
ALTER TABLE `salary_generates`
  ADD CONSTRAINT `salary_generates_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `salary_generates_status_id_foreign` FOREIGN KEY (`status_id`) REFERENCES `statuses` (`id`),
  ADD CONSTRAINT `salary_generates_updated_by_foreign` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `salary_generates_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `salary_payment_logs`
--
ALTER TABLE `salary_payment_logs`
  ADD CONSTRAINT `salary_payment_logs_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `salary_payment_logs_paid_by_foreign` FOREIGN KEY (`paid_by`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `salary_payment_logs_payment_method_id_foreign` FOREIGN KEY (`payment_method_id`) REFERENCES `payment_methods` (`id`),
  ADD CONSTRAINT `salary_payment_logs_salary_generate_id_foreign` FOREIGN KEY (`salary_generate_id`) REFERENCES `salary_generates` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `salary_payment_logs_transaction_id_foreign` FOREIGN KEY (`transaction_id`) REFERENCES `transactions` (`id`),
  ADD CONSTRAINT `salary_payment_logs_updated_by_foreign` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `salary_payment_logs_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `salary_setups`
--
ALTER TABLE `salary_setups`
  ADD CONSTRAINT `salary_setups_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `salary_setups_status_id_foreign` FOREIGN KEY (`status_id`) REFERENCES `statuses` (`id`),
  ADD CONSTRAINT `salary_setups_updated_by_foreign` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `salary_setups_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `salary_setup_details`
--
ALTER TABLE `salary_setup_details`
  ADD CONSTRAINT `salary_setup_details_commission_id_foreign` FOREIGN KEY (`commission_id`) REFERENCES `commissions` (`id`),
  ADD CONSTRAINT `salary_setup_details_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `salary_setup_details_salary_setup_id_foreign` FOREIGN KEY (`salary_setup_id`) REFERENCES `salary_setups` (`id`),
  ADD CONSTRAINT `salary_setup_details_status_id_foreign` FOREIGN KEY (`status_id`) REFERENCES `statuses` (`id`),
  ADD CONSTRAINT `salary_setup_details_updated_by_foreign` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `salary_setup_details_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `services`
--
ALTER TABLE `services`
  ADD CONSTRAINT `services_attachment_foreign` FOREIGN KEY (`attachment`) REFERENCES `uploads` (`id`),
  ADD CONSTRAINT `services_status_id_foreign` FOREIGN KEY (`status_id`) REFERENCES `statuses` (`id`),
  ADD CONSTRAINT `services_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `settings`
--
ALTER TABLE `settings`
  ADD CONSTRAINT `settings_status_id_foreign` FOREIGN KEY (`status_id`) REFERENCES `statuses` (`id`);

--
-- Constraints for table `shifts`
--
ALTER TABLE `shifts`
  ADD CONSTRAINT `shifts_status_id_foreign` FOREIGN KEY (`status_id`) REFERENCES `statuses` (`id`);

--
-- Constraints for table `social_identities`
--
ALTER TABLE `social_identities`
  ADD CONSTRAINT `social_identities_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `subscription_plans`
--
ALTER TABLE `subscription_plans`
  ADD CONSTRAINT `subscription_plans_status_id_foreign` FOREIGN KEY (`status_id`) REFERENCES `statuses` (`id`);

--
-- Constraints for table `support_tickets`
--
ALTER TABLE `support_tickets`
  ADD CONSTRAINT `support_tickets_assigned_id_foreign` FOREIGN KEY (`assigned_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `support_tickets_attachment_file_id_foreign` FOREIGN KEY (`attachment_file_id`) REFERENCES `uploads` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `support_tickets_priority_id_foreign` FOREIGN KEY (`priority_id`) REFERENCES `statuses` (`id`),
  ADD CONSTRAINT `support_tickets_status_id_foreign` FOREIGN KEY (`status_id`) REFERENCES `statuses` (`id`),
  ADD CONSTRAINT `support_tickets_type_id_foreign` FOREIGN KEY (`type_id`) REFERENCES `statuses` (`id`),
  ADD CONSTRAINT `support_tickets_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `tasks`
--
ALTER TABLE `tasks`
  ADD CONSTRAINT `tasks_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `tasks_goal_id_foreign` FOREIGN KEY (`goal_id`) REFERENCES `goals` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `tasks_priority_foreign` FOREIGN KEY (`priority`) REFERENCES `statuses` (`id`),
  ADD CONSTRAINT `tasks_project_id_foreign` FOREIGN KEY (`project_id`) REFERENCES `projects` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `tasks_status_id_foreign` FOREIGN KEY (`status_id`) REFERENCES `statuses` (`id`);

--
-- Constraints for table `task_activities`
--
ALTER TABLE `task_activities`
  ADD CONSTRAINT `task_activities_task_id_foreign` FOREIGN KEY (`task_id`) REFERENCES `tasks` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `task_activities_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `task_discussions`
--
ALTER TABLE `task_discussions`
  ADD CONSTRAINT `task_discussions_file_id_foreign` FOREIGN KEY (`file_id`) REFERENCES `uploads` (`id`),
  ADD CONSTRAINT `task_discussions_show_to_customer_foreign` FOREIGN KEY (`show_to_customer`) REFERENCES `statuses` (`id`),
  ADD CONSTRAINT `task_discussions_status_id_foreign` FOREIGN KEY (`status_id`) REFERENCES `statuses` (`id`),
  ADD CONSTRAINT `task_discussions_task_id_foreign` FOREIGN KEY (`task_id`) REFERENCES `tasks` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `task_discussions_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `task_discussion_comments`
--
ALTER TABLE `task_discussion_comments`
  ADD CONSTRAINT `task_discussion_comments_attachment_foreign` FOREIGN KEY (`attachment`) REFERENCES `uploads` (`id`),
  ADD CONSTRAINT `task_discussion_comments_task_discussion_id_foreign` FOREIGN KEY (`task_discussion_id`) REFERENCES `task_discussions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `task_discussion_comments_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `task_files`
--
ALTER TABLE `task_files`
  ADD CONSTRAINT `task_files_attachment_foreign` FOREIGN KEY (`attachment`) REFERENCES `uploads` (`id`),
  ADD CONSTRAINT `task_files_show_to_customer_foreign` FOREIGN KEY (`show_to_customer`) REFERENCES `statuses` (`id`),
  ADD CONSTRAINT `task_files_status_id_foreign` FOREIGN KEY (`status_id`) REFERENCES `statuses` (`id`),
  ADD CONSTRAINT `task_files_task_id_foreign` FOREIGN KEY (`task_id`) REFERENCES `tasks` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `task_files_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `task_file_comments`
--
ALTER TABLE `task_file_comments`
  ADD CONSTRAINT `task_file_comments_attachment_foreign` FOREIGN KEY (`attachment`) REFERENCES `uploads` (`id`),
  ADD CONSTRAINT `task_file_comments_task_file_id_foreign` FOREIGN KEY (`task_file_id`) REFERENCES `task_files` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `task_file_comments_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `task_followers`
--
ALTER TABLE `task_followers`
  ADD CONSTRAINT `task_followers_added_by_foreign` FOREIGN KEY (`added_by`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `task_followers_is_creator_foreign` FOREIGN KEY (`is_creator`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `task_followers_status_id_foreign` FOREIGN KEY (`status_id`) REFERENCES `statuses` (`id`),
  ADD CONSTRAINT `task_followers_task_id_foreign` FOREIGN KEY (`task_id`) REFERENCES `tasks` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `task_followers_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `task_members`
--
ALTER TABLE `task_members`
  ADD CONSTRAINT `task_members_added_by_foreign` FOREIGN KEY (`added_by`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `task_members_status_id_foreign` FOREIGN KEY (`status_id`) REFERENCES `statuses` (`id`),
  ADD CONSTRAINT `task_members_task_id_foreign` FOREIGN KEY (`task_id`) REFERENCES `tasks` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `task_members_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `task_notes`
--
ALTER TABLE `task_notes`
  ADD CONSTRAINT `task_notes_show_to_customer_foreign` FOREIGN KEY (`show_to_customer`) REFERENCES `statuses` (`id`),
  ADD CONSTRAINT `task_notes_status_id_foreign` FOREIGN KEY (`status_id`) REFERENCES `statuses` (`id`),
  ADD CONSTRAINT `task_notes_task_id_foreign` FOREIGN KEY (`task_id`) REFERENCES `tasks` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `task_notes_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `teams`
--
ALTER TABLE `teams`
  ADD CONSTRAINT `teams_attachment_file_id_foreign` FOREIGN KEY (`attachment_file_id`) REFERENCES `uploads` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `teams_status_id_foreign` FOREIGN KEY (`status_id`) REFERENCES `statuses` (`id`),
  ADD CONSTRAINT `teams_team_lead_id_foreign` FOREIGN KEY (`team_lead_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `teams_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `team_members`
--
ALTER TABLE `team_members`
  ADD CONSTRAINT `team_members_team_id_foreign` FOREIGN KEY (`team_id`) REFERENCES `teams` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `team_members_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `tenant_subscriptions`
--
ALTER TABLE `tenant_subscriptions`
  ADD CONSTRAINT `tenant_subscriptions_payment_status_id_foreign` FOREIGN KEY (`payment_status_id`) REFERENCES `statuses` (`id`),
  ADD CONSTRAINT `tenant_subscriptions_status_id_foreign` FOREIGN KEY (`status_id`) REFERENCES `statuses` (`id`);

--
-- Constraints for table `tenant_user_impersonation_tokens`
--
ALTER TABLE `tenant_user_impersonation_tokens`
  ADD CONSTRAINT `tenant_user_impersonation_tokens_tenant_id_foreign` FOREIGN KEY (`tenant_id`) REFERENCES `tenants` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `testimonials`
--
ALTER TABLE `testimonials`
  ADD CONSTRAINT `testimonials_status_id_foreign` FOREIGN KEY (`status_id`) REFERENCES `statuses` (`id`);

--
-- Constraints for table `ticket_replies`
--
ALTER TABLE `ticket_replies`
  ADD CONSTRAINT `ticket_replies_support_ticket_id_foreign` FOREIGN KEY (`support_ticket_id`) REFERENCES `support_tickets` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `ticket_replies_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `transactions`
--
ALTER TABLE `transactions`
  ADD CONSTRAINT `transactions_account_id_foreign` FOREIGN KEY (`account_id`) REFERENCES `accounts` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `transactions_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `transactions_status_id_foreign` FOREIGN KEY (`status_id`) REFERENCES `statuses` (`id`),
  ADD CONSTRAINT `transactions_transaction_type_foreign` FOREIGN KEY (`transaction_type`) REFERENCES `statuses` (`id`),
  ADD CONSTRAINT `transactions_updated_by_foreign` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`);

--
-- Constraints for table `travel`
--
ALTER TABLE `travel`
  ADD CONSTRAINT `travel_attachment_foreign` FOREIGN KEY (`attachment`) REFERENCES `uploads` (`id`),
  ADD CONSTRAINT `travel_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `travel_goal_id_foreign` FOREIGN KEY (`goal_id`) REFERENCES `goals` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `travel_status_id_foreign` FOREIGN KEY (`status_id`) REFERENCES `statuses` (`id`),
  ADD CONSTRAINT `travel_travel_type_id_foreign` FOREIGN KEY (`travel_type_id`) REFERENCES `travel_types` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `travel_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `travel_types`
--
ALTER TABLE `travel_types`
  ADD CONSTRAINT `travel_types_status_id_foreign` FOREIGN KEY (`status_id`) REFERENCES `statuses` (`id`);

--
-- Constraints for table `uploads`
--
ALTER TABLE `uploads`
  ADD CONSTRAINT `uploads_status_id_foreign` FOREIGN KEY (`status_id`) REFERENCES `statuses` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_avatar_id_foreign` FOREIGN KEY (`avatar_id`) REFERENCES `uploads` (`id`),
  ADD CONSTRAINT `users_country_id_foreign` FOREIGN KEY (`country_id`) REFERENCES `countries` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `users_department_id_foreign` FOREIGN KEY (`department_id`) REFERENCES `departments` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `users_designation_id_foreign` FOREIGN KEY (`designation_id`) REFERENCES `designations` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `users_eid_file_id_foreign` FOREIGN KEY (`eid_file_id`) REFERENCES `uploads` (`id`),
  ADD CONSTRAINT `users_face_image_foreign` FOREIGN KEY (`face_image`) REFERENCES `uploads` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `users_insurance_file_id_foreign` FOREIGN KEY (`insurance_file_id`) REFERENCES `uploads` (`id`),
  ADD CONSTRAINT `users_labour_card_file_id_foreign` FOREIGN KEY (`labour_card_file_id`) REFERENCES `uploads` (`id`),
  ADD CONSTRAINT `users_manager_id_foreign` FOREIGN KEY (`manager_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `users_nid_card_id_foreign` FOREIGN KEY (`nid_card_id`) REFERENCES `uploads` (`id`),
  ADD CONSTRAINT `users_passport_file_id_foreign` FOREIGN KEY (`passport_file_id`) REFERENCES `uploads` (`id`),
  ADD CONSTRAINT `users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `users_shift_id_foreign` FOREIGN KEY (`shift_id`) REFERENCES `shifts` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `users_status_id_foreign` FOREIGN KEY (`status_id`) REFERENCES `statuses` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `users_visa_file_id_foreign` FOREIGN KEY (`visa_file_id`) REFERENCES `uploads` (`id`);

--
-- Constraints for table `user_devices`
--
ALTER TABLE `user_devices`
  ADD CONSTRAINT `user_devices_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `user_document_requests`
--
ALTER TABLE `user_document_requests`
  ADD CONSTRAINT `user_document_requests_status_id_foreign` FOREIGN KEY (`status_id`) REFERENCES `statuses` (`id`),
  ADD CONSTRAINT `user_document_requests_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `user_shift_assigns`
--
ALTER TABLE `user_shift_assigns`
  ADD CONSTRAINT `user_shift_assigns_shift_id_foreign` FOREIGN KEY (`shift_id`) REFERENCES `shifts` (`id`),
  ADD CONSTRAINT `user_shift_assigns_status_id_foreign` FOREIGN KEY (`status_id`) REFERENCES `statuses` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `user_shift_assigns_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `virtual_meetings`
--
ALTER TABLE `virtual_meetings`
  ADD CONSTRAINT `virtual_meetings_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `virtual_meetings_status_id_foreign` FOREIGN KEY (`status_id`) REFERENCES `statuses` (`id`);

--
-- Constraints for table `visits`
--
ALTER TABLE `visits`
  ADD CONSTRAINT `visits_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `visit_notes`
--
ALTER TABLE `visit_notes`
  ADD CONSTRAINT `visit_notes_visit_id_foreign` FOREIGN KEY (`visit_id`) REFERENCES `visits` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `visit_schedules`
--
ALTER TABLE `visit_schedules`
  ADD CONSTRAINT `visit_schedules_visit_id_foreign` FOREIGN KEY (`visit_id`) REFERENCES `visits` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `weekends`
--
ALTER TABLE `weekends`
  ADD CONSTRAINT `weekends_status_id_foreign` FOREIGN KEY (`status_id`) REFERENCES `statuses` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
