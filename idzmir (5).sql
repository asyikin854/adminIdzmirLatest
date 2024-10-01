-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 24, 2024 at 03:40 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `idzmir`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_infos`
--

CREATE TABLE `admin_infos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_infos`
--

INSERT INTO `admin_infos` (`id`, `username`, `email`, `email_verified_at`, `password`, `created_at`, `updated_at`) VALUES
(1, 'cs1', 'cs@gmail.com', NULL, '$2y$12$Clwqz15IGQ4eq6qpQWs6E.2UdfF9fM53uFron/hPWPMt9.iwRqPZW', NULL, '2024-06-06 05:03:01');

-- --------------------------------------------------------

--
-- Table structure for table `announcements`
--

CREATE TABLE `announcements` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `filename` varchar(255) DEFAULT NULL,
  `path` varchar(255) DEFAULT NULL,
  `title` varchar(255) NOT NULL,
  `content` varchar(255) NOT NULL,
  `url` varchar(255) DEFAULT NULL,
  `url_text` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `announcements`
--

INSERT INTO `announcements` (`id`, `filename`, `path`, `title`, `content`, `url`, `url_text`, `created_at`, `updated_at`) VALUES
(1, NULL, NULL, 'sfsfsadfsafsa', 'dfasfsadfsfsafasf', NULL, NULL, '2024-06-29 10:47:08', '2024-06-29 10:47:08'),
(2, '1719686850_WhatsApp Image 2024-05-24 at 20.53.26.jpeg', 'announcements/1719686850_WhatsApp Image 2024-05-24 at 20.53.26.jpeg', 'Holiday', 'happy holiday for all', 'http://127.0.0.1:8000', 'login page', '2024-06-29 10:47:30', '2024-06-29 10:47:30'),
(3, '1719690018_snack1.jpg', 'announcements/1719690018_snack1.jpg', 'asdfasf', 'asdfasdfdsafadsf', 'http://127.0.0.1:8000', 'login page', '2024-06-29 11:40:18', '2024-06-29 11:40:18'),
(4, '1719983784_Rehabilitation Management System.pdf', 'announcements/1719983784_Rehabilitation Management System.pdf', 'Welcome', 'Hi welcome', NULL, NULL, '2024-07-02 21:16:25', '2024-07-02 21:16:25'),
(5, NULL, NULL, 'Visit our website', 'our new website', 'http://idzmirkidshub.com/', 'Website Link', '2024-07-02 21:18:25', '2024-07-02 21:18:25');

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `child_infos`
--

CREATE TABLE `child_infos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `child_name` varchar(255) NOT NULL,
  `child_ic` varchar(255) NOT NULL,
  `child_dob` date NOT NULL,
  `child_passport` varchar(255) DEFAULT NULL,
  `child_nationality` varchar(255) NOT NULL,
  `child_race` varchar(255) NOT NULL,
  `child_bp` varchar(255) NOT NULL,
  `child_religion` varchar(255) NOT NULL,
  `child_sex` varchar(255) NOT NULL,
  `child_address` varchar(255) NOT NULL,
  `child_posscode` varchar(255) NOT NULL,
  `child_city` varchar(255) NOT NULL,
  `child_country` varchar(255) NOT NULL,
  `pediatricians` varchar(255) DEFAULT NULL,
  `recommend` varchar(255) DEFAULT NULL,
  `deadline` varchar(255) DEFAULT NULL,
  `diagnosis` varchar(255) DEFAULT NULL,
  `occ_therapy` varchar(255) DEFAULT NULL,
  `sp_therapy` varchar(255) DEFAULT NULL,
  `others` varchar(255) DEFAULT NULL,
  `house_income` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `package_id` bigint(20) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `child_infos`
--

INSERT INTO `child_infos` (`id`, `child_name`, `child_ic`, `child_dob`, `child_passport`, `child_nationality`, `child_race`, `child_bp`, `child_religion`, `child_sex`, `child_address`, `child_posscode`, `child_city`, `child_country`, `pediatricians`, `recommend`, `deadline`, `diagnosis`, `occ_therapy`, `sp_therapy`, `others`, `house_income`, `created_at`, `updated_at`, `package_id`) VALUES
(37, 'Aliff Irfan bin Muhaimin', '165151656415', '2024-01-01', NULL, 'Malaysian', 'Malay', 'Johor Bahru', 'Islam', 'Male', 'no 11, Jalan Ubi, Taman Uda Utama', '81200', 'Johor Bahru', 'Malaysia', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'less than RM 10000', '2024-06-14 06:07:04', '2024-06-14 06:36:55', 3),
(38, 'Haidi Bin Mahmoud', '201565269529', '2024-01-01', NULL, 'Malaysian', 'Malay', 'Johor Bahru', 'Islam', 'Male', 'no 23, Jalan Sri Perling 3, Taman Perling', '81200', 'Johor Bahru', 'Malaysia', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'less than RM 10000', '2024-06-26 02:27:04', '2024-09-12 02:56:08', 3),
(39, 'Anggun Inarah', '202151556134', '2024-07-23', NULL, 'Malaysian', 'Malay', 'johor bahru', 'Islam', 'Male', '20, level 20, Ataraxia, Forest City', '80000', 'Gelang Patah', 'Malaysia', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'less than RM 10000', '2024-07-02 01:18:43', '2024-07-02 01:23:08', 3),
(40, 'Muhaimin', '059651855165', '0001-01-25', NULL, 'Malaysian', 'Malay', 'Johor', 'Islam', 'Male', 'no. 21, Jalan Perwira, Taman Nusa Jaya,', '80000', 'Johor Bahru', 'Malaysia', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'less than RM 10000', '2024-07-02 19:33:32', '2024-07-02 19:35:51', 6),
(41, 'farhana', '985156156645', '2024-12-31', NULL, 'Malaysian', 'Malay', 'johor bahru', 'Islam', 'Male', 'no. 21, Jalan Perwira, Taman Nusa Jaya,', '81200', 'Johor Bahru', 'Malaysia', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '5000', '2024-09-10 09:13:55', '2024-09-23 02:11:58', 7);

-- --------------------------------------------------------

--
-- Table structure for table `child_schedules`
--

CREATE TABLE `child_schedules` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `child_id` bigint(20) UNSIGNED NOT NULL,
  `session` varchar(255) NOT NULL,
  `day` varchar(255) NOT NULL,
  `time` varchar(255) NOT NULL,
  `price` varchar(255) DEFAULT NULL,
  `therapist` varchar(255) DEFAULT NULL,
  `attendance` varchar(255) DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  `status` enum('approved','pending','disapproved','request') NOT NULL DEFAULT 'pending',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `date` date DEFAULT NULL,
  `session_id` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `child_schedules`
--

INSERT INTO `child_schedules` (`id`, `child_id`, `session`, `day`, `time`, `price`, `therapist`, `attendance`, `remark`, `status`, `created_at`, `updated_at`, `date`, `session_id`, `type`) VALUES
(289, 41, '4', 'Wednesday', '09:00', '1000', NULL, NULL, NULL, 'pending', '2024-09-23 07:58:33', '2024-09-23 07:58:33', '2024-09-25', '57dd993a-3796-4b24-8d35-ba1c2cd9caf7', 'grouping'),
(290, 41, '4', 'Wednesday', '14:00', '1000', NULL, NULL, NULL, 'pending', '2024-09-23 07:58:33', '2024-09-23 07:58:33', '2024-09-25', '57dd993a-3796-4b24-8d35-ba1c2cd9caf7', 'grouping'),
(291, 41, '4', 'Thursday', '09:00', '1000', NULL, NULL, NULL, 'pending', '2024-09-23 07:58:34', '2024-09-23 07:58:34', '2024-09-26', '57dd993a-3796-4b24-8d35-ba1c2cd9caf7', 'grouping'),
(292, 41, '4', 'Thursday', '14:00', '1000', NULL, NULL, NULL, 'pending', '2024-09-23 07:58:34', '2024-09-23 07:58:34', '2024-09-26', '57dd993a-3796-4b24-8d35-ba1c2cd9caf7', 'grouping'),
(293, 40, '4', 'Wednesday', '09:00', '1000', NULL, NULL, NULL, 'pending', '2024-09-23 09:42:56', '2024-09-23 09:42:56', '2024-09-25', '3f2ad1d9-aea6-4bfa-9f85-409092a259e1', 'grouping'),
(294, 40, '4', 'Wednesday', '14:00', '1000', NULL, NULL, NULL, 'pending', '2024-09-23 09:42:56', '2024-09-23 09:42:56', '2024-09-25', '3f2ad1d9-aea6-4bfa-9f85-409092a259e1', 'grouping'),
(295, 40, '4', 'Thursday', '09:00', '1000', NULL, NULL, NULL, 'pending', '2024-09-23 09:42:56', '2024-09-23 09:42:56', '2024-09-26', '3f2ad1d9-aea6-4bfa-9f85-409092a259e1', 'grouping'),
(296, 40, '4', 'Thursday', '14:00', '1000', NULL, NULL, NULL, 'pending', '2024-09-23 09:42:56', '2024-09-23 09:42:56', '2024-09-26', '3f2ad1d9-aea6-4bfa-9f85-409092a259e1', 'grouping'),
(297, 38, '4', 'Wednesday', '08:30', '500', NULL, NULL, NULL, 'pending', '2024-09-23 09:44:04', '2024-09-23 09:44:04', '2024-09-25', 'd7f59e5e-dc84-4299-aaa2-91dde247a484', 'individual'),
(298, 38, '4', 'Wednesday', '10:00', '500', NULL, NULL, NULL, 'pending', '2024-09-23 09:44:04', '2024-09-23 09:44:04', '2024-09-25', 'd7f59e5e-dc84-4299-aaa2-91dde247a484', 'individual'),
(299, 38, '4', 'Wednesday', '11:30', '500', NULL, NULL, NULL, 'pending', '2024-09-23 09:44:04', '2024-09-23 09:44:04', '2024-09-25', 'd7f59e5e-dc84-4299-aaa2-91dde247a484', 'individual'),
(300, 38, '4', 'Wednesday', '14:00', '500', NULL, NULL, NULL, 'pending', '2024-09-23 09:44:04', '2024-09-23 09:44:04', '2024-09-25', 'd7f59e5e-dc84-4299-aaa2-91dde247a484', 'individual');

-- --------------------------------------------------------

--
-- Table structure for table `cs_infos`
--

CREATE TABLE `cs_infos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cs_infos`
--

INSERT INTO `cs_infos` (`id`, `username`, `email`, `email_verified_at`, `password`, `name`, `created_at`, `updated_at`) VALUES
(1, 'firstcs', 'first@gmail.com', NULL, '$2y$12$d7Cu0aus8ifx/fSvegFeUuRHkESS.K/A7w7FH4cynKw7d4QqBD.2u', 'Aiman bin Tino', NULL, '2024-06-08 00:19:12');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `father_infos`
--

CREATE TABLE `father_infos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `child_id` bigint(20) UNSIGNED NOT NULL,
  `father_name` varchar(255) NOT NULL,
  `father_phone` varchar(255) NOT NULL,
  `father_ic` varchar(255) NOT NULL,
  `father_race` varchar(255) NOT NULL,
  `father_occ` varchar(255) NOT NULL,
  `father_email` varchar(255) NOT NULL,
  `father_address` varchar(255) NOT NULL,
  `father_posscode` varchar(255) NOT NULL,
  `father_city` varchar(255) NOT NULL,
  `father_work_address` varchar(255) NOT NULL,
  `father_work_posscode` varchar(255) NOT NULL,
  `father_work_city` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `father_infos`
--

INSERT INTO `father_infos` (`id`, `child_id`, `father_name`, `father_phone`, `father_ic`, `father_race`, `father_occ`, `father_email`, `father_address`, `father_posscode`, `father_city`, `father_work_address`, `father_work_posscode`, `father_work_city`, `created_at`, `updated_at`) VALUES
(1, 37, 'Muhaimin bin Muzaffar', '01756465156', '985151561561', 'Malay', 'Police Officer', 'muhaimin@gmail.com', 'no 11, Jalan Ubi, Taman Uda Utama', '81200', 'Johor Bahru', 'no 123, Jalan Ubi, Taman Uda Utama', '81200', 'Johor Bahru', '2024-06-14 06:07:04', '2024-06-14 06:07:04'),
(2, 38, 'Mahmoud bin Razak', '01465266156', '921525656151', 'Malay', 'Engineer', 'mahmoud@gmail.com', 'no 23, Jalan Sri Perling 3, Taman Perling', '81200', 'Johor Bahru', 'no 23, Jalan Sri Perling 3, Taman Perling', '81200', 'Johor Bahru', '2024-06-26 02:27:04', '2024-06-26 02:27:04'),
(3, 39, 'Abdullah', '0175466845', '546545648654', 'Malay', 'Clerk', 'abdullah@gmail.com', '20, level 20, Ataraxia, Forest City', '80000', 'Gelang Patah', 'Larkin', '81300', 'Johor Bahru', '2024-07-02 01:18:43', '2024-07-02 01:18:43'),
(4, 40, 'Muzaffar', '017561561656', '819851215615', 'Malay', 'Engineer', 'muzaffar@gmail.com', 'no. 21, Jalan Perwira, Taman Nusa Jaya,', '80000', 'Johor Bahru', 'no. 21, Jalan Perwira, Taman Nusa Jaya,', '80000', 'Johor Bahru', '2024-07-02 19:33:32', '2024-07-02 19:33:32'),
(5, 41, 'Ariff', '01781561566', '981256121561', 'Malay', 'Engineer', 'ariff@gmail.com', 'no. 21, Jalan Perwira, Taman Nusa Jaya,', '81200', 'Johor Bahru', 'Jalan rajah, Taman Nusa Jaya,', '80010', 'gelang patah', '2024-09-10 09:13:55', '2024-09-10 09:13:55');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2024_05_13_133528_create_child_infos', 1),
(5, '2024_05_13_135520_create_father_infos', 1),
(6, '2024_05_13_135535_create_mother_infos', 1),
(7, '2024_05_13_142331_create_parents_permission', 1),
(8, '2024_06_01_172526_create_parent_accounts', 2),
(9, '2024_06_02_170124_create_admin_infos', 3),
(10, '2024_06_02_170154_create_therapist_infos', 3),
(11, '2024_06_02_170203_create_cs_infos', 3),
(12, '2024_06_08_183104_create_packages', 4),
(13, '2024_06_08_190643_add_new_column_to_child_infos_table', 5),
(14, '2024_06_12_173542_create_child_schedule', 6),
(15, '2024_06_14_154649_add_new_column_to_child_schedules_table', 7),
(16, '2024_06_16_154852_add_new_column_to_child_schedules_table', 8),
(17, '2024_06_17_185307_create_announcements', 9),
(20, '2024_06_22_140022_add_new_column_to_session_reports_2', 12),
(25, '2024_06_24_124032_add_new_column_to_child_schedules', 14),
(26, '2024_06_21_154957_create_session_reports', 15),
(29, '2024_06_26_092457_add_new_column_to_packages', 16),
(30, '2024_06_26_191747_add_new_column_to_child_schedules_2', 17),
(31, '2014_10_12_000000_create_users_table', 18),
(32, '2014_10_12_100000_create_password_resets_table', 18),
(33, '2019_08_19_000000_create_failed_jobs_table', 18),
(34, '2019_12_14_000001_create_personal_access_tokens_table', 18),
(36, '2024_09_12_212949_add_status_to_users_table', 19),
(37, '2024_09_12_120313_create_slots', 20),
(38, '2024_09_12_231651_add_column_to_slots_table', 20),
(39, '2024_09_15_202558_create_payments_table', 21),
(40, '2024_09_21_130359_create_slots_rts', 22),
(41, '2024_09_23_094917_add_column_to_child_infos_table', 23),
(43, '2024_09_23_095638_add_column_to_payments_table', 24),
(44, '2024_09_23_095320_add_column_to_child_schedules_table', 25),
(45, '2024_09_23_173217_add_column_to_child_schedules_table_2', 26);

-- --------------------------------------------------------

--
-- Table structure for table `mother_infos`
--

CREATE TABLE `mother_infos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `child_id` bigint(20) UNSIGNED NOT NULL,
  `mother_name` varchar(255) NOT NULL,
  `mother_phone` varchar(255) NOT NULL,
  `mother_ic` varchar(255) NOT NULL,
  `mother_race` varchar(255) NOT NULL,
  `mother_occ` varchar(255) NOT NULL,
  `mother_email` varchar(255) NOT NULL,
  `mother_address` varchar(255) NOT NULL,
  `mother_posscode` varchar(255) NOT NULL,
  `mother_city` varchar(255) NOT NULL,
  `mother_work_address` varchar(255) NOT NULL,
  `mother_work_posscode` varchar(255) NOT NULL,
  `mother_work_city` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `mother_infos`
--

INSERT INTO `mother_infos` (`id`, `child_id`, `mother_name`, `mother_phone`, `mother_ic`, `mother_race`, `mother_occ`, `mother_email`, `mother_address`, `mother_posscode`, `mother_city`, `mother_work_address`, `mother_work_posscode`, `mother_work_city`, `created_at`, `updated_at`) VALUES
(1, 37, 'Aisyah binti Rahmat', '01815156151', '995615615615', 'Malay', 'Clerk', 'aisyah@gmail.com', 'no 11, Jalan Ubi, Taman Uda Utama', '81200', 'Johor Bahru', '41,. Jalan Mentadak, Taman Perling', '81200', 'Johor Bahru', '2024-06-14 06:07:04', '2024-06-14 06:07:04'),
(2, 38, 'Atiqah binti Suhaimi', '0186015612165', '904515641564', 'Malay', 'Clerk', 'atiqah@gmail.com', 'no 23, Jalan Sri Perling 3, Taman Perling', '81200', 'Johor Bahru', 'no 23, Jalan Sri Perling 3, Taman Perling', '81200', 'Johor Bahru', '2024-06-26 02:27:04', '2024-06-26 02:27:04'),
(3, 39, 'Nurasyikin', '01452347541', '846486548654', 'Malay', 'Programmer', 'asyikin@esrmy.com', '20, level 20, Ataraxia, Forest City', '80000', 'Gelang Patah', 'sfsafasifafiisoooin', '81200', 'Johor Bahru', '2024-07-02 01:18:43', '2024-07-02 01:18:43'),
(4, 40, 'Sakinah', '01651561655', '989415165165', 'Malay', 'Clerk', 'sakinah@gmail.com', 'no. 21, Jalan Perwira, Taman Nusa Jaya,', '80000', 'Johor Bahru', 'no. 21, Jalan Perwira, Taman Nusa Jaya,', '80000', 'Johor Bahru', '2024-07-02 19:33:32', '2024-07-02 19:33:32'),
(5, 41, 'Latifah', '01551564184', '984561561564', 'Malay', 'Housewife', 'latifah@gmail.com', 'no. 21, Jalan Perwira, Taman Nusa Jaya,', '81200', 'Johor Bahru', 'dsjlfhdsalkj', '81200', 'johor bahru', '2024-09-10 09:13:55', '2024-09-10 09:13:55');

-- --------------------------------------------------------

--
-- Table structure for table `packages`
--

CREATE TABLE `packages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `package_name` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `quota` varchar(255) NOT NULL,
  `package_step` varchar(255) DEFAULT NULL,
  `package_long_desc1` varchar(255) DEFAULT NULL,
  `package_long_desc2` varchar(255) DEFAULT NULL,
  `package_long_desc3` varchar(255) DEFAULT NULL,
  `package_short_desc1` varchar(255) DEFAULT NULL,
  `package_short_desc2` varchar(255) DEFAULT NULL,
  `package_short_desc3` varchar(255) DEFAULT NULL,
  `package_short_desc4` varchar(255) DEFAULT NULL,
  `package_short_desc5` varchar(255) DEFAULT NULL,
  `session_quantity` varchar(255) NOT NULL,
  `package_normal_price` varchar(255) NOT NULL,
  `package_wkday_price` varchar(255) NOT NULL,
  `package_wkend_price` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `packages`
--

INSERT INTO `packages` (`id`, `package_name`, `type`, `quota`, `package_step`, `package_long_desc1`, `package_long_desc2`, `package_long_desc3`, `package_short_desc1`, `package_short_desc2`, `package_short_desc3`, `package_short_desc4`, `package_short_desc5`, `session_quantity`, `package_normal_price`, `package_wkday_price`, `package_wkend_price`, `created_at`, `updated_at`) VALUES
(2, 'Full Asessment', 'individual', '10', 'Step 2', 'Asessment is a guideline to detect child\'s area of difficulty using standardize asessment form. Therapist will prioritize child\'s difficulty and Plan Intervention according to child\'s needs.', 'The checklist is based on developmental \'norms\' and leads to the development of Progress Report.', NULL, '3 Session Asessment', '1 Full Development Report', 'Consultation Session', 'HOME - PROGRAM', NULL, '4', '1600', '700', '800', NULL, NULL),
(3, 'Intervention with Consistency', 'individual', '10', 'Step 3', 'Based on the performance analysis result, the therapist choose suitable intervention approaches or plan adaptive strategies in order to compensate the child\'s ineffective actions.', 'Right treatment implementation to deliver good and fast result to the patient. Evidence-based practice.', NULL, 'Age: 0-12 Years Old', 'Duration: 1 hour', 'Session: 4 Session', 'Reporting: Progress Report every 6 months', 'Area of Intervention\r\n- Fine Motor Development \r\n- Grass Motor Development \r\n- Sensosry Processing\r\n- Speech & Language Development\r\n- Personal Social Development', '4', '1200', '500', '600', NULL, NULL),
(4, 'Re-Asessment', 'individual', '10', 'Step 4', 'Re-asessment is a guideline to detect child\'s area of difficulty using standardize asessment form. Therapist will prioritize child\'s difficulty and Plan Intervention according to child\'s needs.', 'The checklist is based on developmental \'norms\' and leads to the development of Progress Report.\r\n', NULL, '3 Session Asessment', '1 Full Development Report', 'Consultation Session', 'HOME - PROGRAM', NULL, '4', '1600', '700', '800', NULL, NULL),
(6, 'Ready To School Program ', 'grouping', '6', '4', NULL, NULL, NULL, 'Age: 5 - 12 Years Old', 'Duration: 2 Hour 30 Minute/Session, 10 Hours/Month', '1 Session/Week, 4 Session/Month', 'Reporting: Progress Summary Report Every 6 Month', 'Schedule:\r\nMorning: 09.00 a.m. - 11.30 a.m.\r\nEvening: 02.00 p.m. - 04.30 p.m.', '4', '2000', '1000', '1200', NULL, NULL),
(7, 'Ready To School Program', 'grouping', '6', '8', NULL, NULL, NULL, 'Age: 5 - 12 Years Old', 'Duration: \r\n2 Hour 30 Minute/Session,\r\n20 Hours/Month', 'Session:\r\n2 Session/Week,\r\n8 Session/Month', 'Reporting:\r\nProgress Summary Report Every 6 month', 'Schedule: Morning: 09.00 a.m. - 11.30 a.m., Evening: 02.00 p.m. - 04.30 p.m.', '8', '4000', '2000', '2200', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `parents_permission`
--

CREATE TABLE `parents_permission` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `child_id` bigint(20) UNSIGNED NOT NULL,
  `parent_sign` varchar(255) NOT NULL,
  `sign_name` varchar(50) NOT NULL,
  `sign_date` date NOT NULL,
  `sign_time` time NOT NULL,
  `agree_disagree` enum('agree','disagree') NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `parents_permission`
--

INSERT INTO `parents_permission` (`id`, `child_id`, `parent_sign`, `sign_name`, `sign_date`, `sign_time`, `agree_disagree`, `created_at`, `updated_at`) VALUES
(1, 37, 'Muhaimin', 'Muhaimin bin Muzaffar', '2024-06-14', '22:01:00', 'agree', '2024-06-14 06:07:04', '2024-06-14 06:07:04'),
(2, 38, 'Mahmoud', 'Mahmoud binti Razak', '2024-06-26', '18:21:00', 'agree', '2024-06-26 02:27:04', '2024-06-26 02:27:04'),
(3, 39, 'Nurasyikin', 'Nurasyikin', '2024-07-02', '17:13:00', 'agree', '2024-07-02 01:18:43', '2024-07-02 01:18:43'),
(4, 40, 'Sakinah', 'Sakinah', '2024-07-03', '11:29:00', 'agree', '2024-07-02 19:33:32', '2024-07-02 19:33:32'),
(5, 41, 'Ariff', 'Ariff', '2024-09-11', '01:11:00', 'agree', '2024-09-10 09:13:55', '2024-09-10 09:13:55');

-- --------------------------------------------------------

--
-- Table structure for table `parent_accounts`
--

CREATE TABLE `parent_accounts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `child_id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `parent_accounts`
--

INSERT INTO `parent_accounts` (`id`, `child_id`, `username`, `email`, `email_verified_at`, `password`, `created_at`, `updated_at`) VALUES
(1, 37, 'Muhaimin123', 'muhaimin@gmail.com', NULL, '$2y$12$AgO2jOcIbSB6ZLGr2/thg.TQC0fLQKr5Onw6pEcbrTXD5T9WXV3.u', '2024-06-14 06:07:04', '2024-06-14 06:07:04'),
(2, 38, 'mahmoud', 'mahmoud@gmail.com', NULL, '$2y$12$qNfbdCL8YMkrzbIIOmRiueFsfVX2Y.3GrRXE.D.dT5RqCI57jUSNq', '2024-06-26 02:27:04', '2024-06-26 02:27:04'),
(3, 39, 'Nurasyikin', 'asyikin@esrmy.com', NULL, '$2y$12$2uL/ykY/ZE8GxQ1/9jJkVuR8UX3NViKT83fc/ntObkz.6h1jEOdci', '2024-07-02 01:18:44', '2024-07-02 01:18:44'),
(4, 40, 'Sakinah', 'sakinah@gmail.com', NULL, '$2y$12$5scjq6JI4I9VwA.Wl2fEauwhSdCe.PJB78MN3XVuOmIHahQ68NlZO', '2024-07-02 19:33:32', '2024-07-02 19:33:32'),
(5, 41, 'ariff2', 'ariff@gmail.com', NULL, '$2y$12$pJT1csSZQvjZY31oazCAe.wC0USdW1I8m1JvjNU5DMK.ZHonWSxe6', '2024-09-10 09:13:56', '2024-09-10 09:13:56');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `child_id` bigint(20) UNSIGNED NOT NULL,
  `parent_id` bigint(20) UNSIGNED NOT NULL,
  `payment_id` varchar(255) NOT NULL,
  `reference` varchar(255) NOT NULL,
  `total_amount` decimal(8,2) NOT NULL,
  `currency` varchar(255) NOT NULL DEFAULT 'MYR',
  `payment_method` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'pending',
  `description` text DEFAULT NULL,
  `payment_date` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `session_id` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payments`
--

INSERT INTO `payments` (`id`, `child_id`, `parent_id`, `payment_id`, `reference`, `total_amount`, `currency`, `payment_method`, `status`, `description`, `payment_date`, `created_at`, `updated_at`, `session_id`) VALUES
(46, 41, 5, 'PAY-XZJSICQJTJ', 'e96d293f-bbfb-4b60-b38c-d335a832d753', 500.00, 'MYR', 'FPX', 'failed', NULL, NULL, '2024-09-22 23:21:47', '2024-09-22 23:21:49', NULL),
(47, 41, 5, 'PAY-TUVQ6GLD3J', '95a9ff36-4cb9-43a0-876f-8f507917a52b', 500.00, 'MYR', 'FPX', 'failed', NULL, NULL, '2024-09-23 03:05:06', '2024-09-23 03:05:08', NULL),
(48, 41, 5, 'PAY-QRVAU6VH5G', '13eef39d-3a7e-446d-8f90-33a59702bd9b', 500.00, 'MYR', 'FPX', 'failed', NULL, NULL, '2024-09-23 03:08:37', '2024-09-23 03:08:38', '4d4b0eb9-e77f-41c2-b891-9e80783b2358'),
(49, 41, 5, 'PAY-LZSAKHHAUS', '3d60b469-0265-42d4-ab9c-c058e37c8adb', 500.00, 'MYR', 'FPX', 'failed', NULL, NULL, '2024-09-23 03:15:30', '2024-09-23 03:15:31', '69049cff-122c-4187-9553-bae76fb93775'),
(50, 41, 5, 'PAY-UTESHCLQBL', '00d51b04-0854-4e49-aeea-7ee7e09f34fe', 1000.00, 'MYR', 'FPX', 'failed', NULL, NULL, '2024-09-23 07:58:37', '2024-09-23 07:58:37', '57dd993a-3796-4b24-8d35-ba1c2cd9caf7'),
(51, 40, 4, 'PAY-TYCV9GYDX9', '5ee8671d-e55c-440a-a3d7-ece78e1e06e9', 1000.00, 'MYR', 'FPX', 'failed', NULL, NULL, '2024-09-23 09:42:59', '2024-09-23 09:42:59', '3f2ad1d9-aea6-4bfa-9f85-409092a259e1'),
(52, 38, 2, 'PAY-2C3AO3I24P', 'ce4a5533-78ba-4983-9b93-42b07ab99ab1', 500.00, 'MYR', 'FPX', 'failed', NULL, NULL, '2024-09-23 09:44:06', '2024-09-23 09:44:06', 'd7f59e5e-dc84-4299-aaa2-91dde247a484');

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('j87FDAYwPzjBkzjQoAdCaXJOA81zGBfrpIrHhJLU', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiQm1MRHNHVnlFa0V0MkVnTk1RR1pRNzRaZnc2NncwVnFCTzZkUURERCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzY6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9wcm9maWxlLXBhcmVudCI7fXM6NTM6ImxvZ2luX3BhcmVudF81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjU7fQ==', 1727113721),
('lsADHv8ESl98g2HMZt4ouboOCSqg0N2Tp97xy2aS', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoiWkFmOFlUeTJaUjhOREJSUE16SjBLQVI0T0szZEQ5Sk1tY2J4REJmRiI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MTp7aTowO3M6NjoiZXJyb3JzIjt9czozOiJuZXciO2E6MDp7fX1zOjk6Il9wcmV2aW91cyI7YToxOntzOjM6InVybCI7czo0NDoiaHR0cDovLzEyNy4wLjAuMTo4MDAwL2NoaWxkU2NoZWR1bGVWaWV3LzQxLzMiO31zOjUzOiJsb2dpbl9wYXJlbnRfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aToxO3M6NjoiZXJyb3JzIjtPOjMxOiJJbGx1bWluYXRlXFN1cHBvcnRcVmlld0Vycm9yQmFnIjoxOntzOjc6IgAqAGJhZ3MiO2E6MTp7czo3OiJkZWZhdWx0IjtPOjI5OiJJbGx1bWluYXRlXFN1cHBvcnRcTWVzc2FnZUJhZyI6Mjp7czoxMToiACoAbWVzc2FnZXMiO2E6MTp7czo1OiJlcnJvciI7YToxOntpOjA7czoxNToiUGF5bWVudCBmYWlsZWQuIjt9fXM6OToiACoAZm9ybWF0IjtzOjg6IjptZXNzYWdlIjt9fX19', 1727090131),
('zeG3d9UIIa9nWKWbg6evmtI9f3peU85GIeIhhC4Y', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiMXdiQnF5YnJyZ2g4SndOWjJQTEJ2Y0QzOFhBbHF6NXlIMlZXRXNFbSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzc6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9zY2hlZHVsZS1wYXJlbnQiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX1zOjUzOiJsb2dpbl9wYXJlbnRfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aTo1O30=', 1727185064);

-- --------------------------------------------------------

--
-- Table structure for table `session_reports`
--

CREATE TABLE `session_reports` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `schedules_id` bigint(20) UNSIGNED NOT NULL,
  `std_name` varchar(255) NOT NULL,
  `std_ic` varchar(255) NOT NULL,
  `session_attended` varchar(255) NOT NULL,
  `treatment_provided` varchar(255) NOT NULL,
  `date` date NOT NULL,
  `ques1_1` tinyint(1) DEFAULT NULL,
  `ques1_2` tinyint(1) DEFAULT NULL,
  `ques1_3` tinyint(1) DEFAULT NULL,
  `ques1_4` tinyint(1) DEFAULT NULL,
  `ques1_5` tinyint(1) DEFAULT NULL,
  `ques1_6` tinyint(1) DEFAULT NULL,
  `ques1_7` tinyint(1) DEFAULT NULL,
  `ques1_8` tinyint(1) DEFAULT NULL,
  `ques2_1` tinyint(1) DEFAULT NULL,
  `ques2_2` tinyint(1) DEFAULT NULL,
  `ques2_3` tinyint(1) DEFAULT NULL,
  `ques2_4` tinyint(1) DEFAULT NULL,
  `ques2_5` tinyint(1) DEFAULT NULL,
  `ques2_6` tinyint(1) DEFAULT NULL,
  `ques2_7a` tinyint(1) DEFAULT NULL,
  `ques2_7b` tinyint(1) DEFAULT NULL,
  `ques2_7c` tinyint(1) DEFAULT NULL,
  `ques2_7d` tinyint(1) DEFAULT NULL,
  `ques2_7e` tinyint(1) DEFAULT NULL,
  `ques2_7f` tinyint(1) DEFAULT NULL,
  `ques2_7g` tinyint(1) DEFAULT NULL,
  `ques2_8a` tinyint(1) DEFAULT NULL,
  `ques2_8b` tinyint(1) DEFAULT NULL,
  `ques2_8c` tinyint(1) DEFAULT NULL,
  `ques2_8d` tinyint(1) DEFAULT NULL,
  `ques2_8e` tinyint(1) DEFAULT NULL,
  `ques2_8f` tinyint(1) DEFAULT NULL,
  `ques2_8g` tinyint(1) DEFAULT NULL,
  `ques2_8h` tinyint(1) DEFAULT NULL,
  `ques2_8i` tinyint(1) DEFAULT NULL,
  `ques3_1` tinyint(1) DEFAULT NULL,
  `ques3_2` tinyint(1) DEFAULT NULL,
  `ques3_3` tinyint(1) DEFAULT NULL,
  `ques3_4` tinyint(1) DEFAULT NULL,
  `ques3_5` tinyint(1) DEFAULT NULL,
  `ques3_6` tinyint(1) DEFAULT NULL,
  `ques3_7` tinyint(1) DEFAULT NULL,
  `ques4_1a` tinyint(1) DEFAULT NULL,
  `ques4_1b` tinyint(1) DEFAULT NULL,
  `ques4_1c` tinyint(1) DEFAULT NULL,
  `ques4_1d` tinyint(1) DEFAULT NULL,
  `ques4_2` tinyint(1) DEFAULT NULL,
  `ques4_3` tinyint(1) DEFAULT NULL,
  `ques4_4` varchar(255) DEFAULT NULL,
  `ques4_5` varchar(255) DEFAULT NULL,
  `ques4_6` tinyint(1) DEFAULT NULL,
  `ques5_1` tinyint(1) DEFAULT NULL,
  `ques5_2` varchar(255) DEFAULT NULL,
  `ques5_3` tinyint(1) DEFAULT NULL,
  `ques5_4` tinyint(1) DEFAULT NULL,
  `ques5_5` tinyint(1) DEFAULT NULL,
  `ques5_6` tinyint(1) DEFAULT NULL,
  `ques5_7a` tinyint(1) DEFAULT NULL,
  `ques5_7b` tinyint(1) DEFAULT NULL,
  `ques5_7c` tinyint(1) DEFAULT NULL,
  `ques5_8a` tinyint(1) DEFAULT NULL,
  `ques5_8b` tinyint(1) DEFAULT NULL,
  `ques5_8c` tinyint(1) DEFAULT NULL,
  `ques6_1a` tinyint(1) DEFAULT NULL,
  `ques6_1b` tinyint(1) DEFAULT NULL,
  `ques6_1c` tinyint(1) DEFAULT NULL,
  `ques6_1d` tinyint(1) DEFAULT NULL,
  `ques6_1e` tinyint(1) DEFAULT NULL,
  `ques6_1f` tinyint(1) DEFAULT NULL,
  `ques6_1g` tinyint(1) DEFAULT NULL,
  `ques7_1a` tinyint(1) DEFAULT NULL,
  `ques7_1b` varchar(255) DEFAULT NULL,
  `ques7_1c` varchar(255) DEFAULT NULL,
  `ques7_2a` varchar(255) DEFAULT NULL,
  `ques7_2b` varchar(255) DEFAULT NULL,
  `ques7_3` tinyint(1) DEFAULT NULL,
  `ques7_4` tinyint(1) DEFAULT NULL,
  `ques7_5` varchar(255) DEFAULT NULL,
  `ques7_6` tinyint(1) DEFAULT NULL,
  `ques7_7` tinyint(1) DEFAULT NULL,
  `ques7_8` tinyint(1) DEFAULT NULL,
  `ques7_9` tinyint(1) DEFAULT NULL,
  `ques7_10` tinyint(1) DEFAULT NULL,
  `ques8_0` enum('Good','Average','Fair','Poor','Unable to follow') DEFAULT NULL,
  `remark1` varchar(255) DEFAULT NULL,
  `remark2` varchar(255) DEFAULT NULL,
  `remark3` varchar(255) DEFAULT NULL,
  `remark4` varchar(255) DEFAULT NULL,
  `remark5` varchar(255) DEFAULT NULL,
  `remark6` varchar(255) DEFAULT NULL,
  `remark7` varchar(255) DEFAULT NULL,
  `analysis` varchar(255) DEFAULT NULL,
  `plan` varchar(255) DEFAULT NULL,
  `therapist` varchar(255) NOT NULL,
  `status` enum('pending','approved') NOT NULL DEFAULT 'pending',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `slots`
--

CREATE TABLE `slots` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `day` varchar(255) NOT NULL,
  `start_time` varchar(255) NOT NULL,
  `end_time` varchar(255) NOT NULL,
  `is_available` tinyint(1) NOT NULL DEFAULT 1,
  `date` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `slots`
--

INSERT INTO `slots` (`id`, `day`, `start_time`, `end_time`, `is_available`, `date`, `created_at`, `updated_at`) VALUES
(1, 'Tuesday', '08:30', '09:30', 1, '2024-09-03', '2024-09-12 15:27:14', '2024-09-12 15:27:14'),
(2, 'Tuesday', '10:00', '11:00', 1, '2024-09-03', '2024-09-12 15:27:14', '2024-09-12 15:27:14'),
(3, 'Tuesday', '11:30', '12:30', 1, '2024-09-03', '2024-09-12 15:27:14', '2024-09-12 15:27:14'),
(4, 'Tuesday', '14:00', '15:00', 1, '2024-09-03', '2024-09-12 15:27:14', '2024-09-12 15:27:14'),
(5, 'Tuesday', '15:30', '16:30', 1, '2024-09-03', '2024-09-12 15:27:14', '2024-09-12 15:27:14'),
(6, 'Wednesday', '08:30', '09:30', 1, '2024-09-04', '2024-09-12 15:27:14', '2024-09-12 15:27:14'),
(7, 'Wednesday', '10:00', '11:00', 1, '2024-09-04', '2024-09-12 15:27:14', '2024-09-12 15:27:14'),
(8, 'Wednesday', '11:30', '12:30', 1, '2024-09-04', '2024-09-12 15:27:14', '2024-09-12 15:27:14'),
(9, 'Wednesday', '14:00', '15:00', 1, '2024-09-04', '2024-09-12 15:27:14', '2024-09-12 15:27:14'),
(10, 'Wednesday', '15:30', '16:30', 1, '2024-09-04', '2024-09-12 15:27:14', '2024-09-12 15:27:14'),
(11, 'Thursday', '08:30', '09:30', 1, '2024-09-05', '2024-09-12 15:27:14', '2024-09-12 15:27:14'),
(12, 'Thursday', '10:00', '11:00', 1, '2024-09-05', '2024-09-12 15:27:14', '2024-09-12 15:27:14'),
(13, 'Thursday', '11:30', '12:30', 1, '2024-09-05', '2024-09-12 15:27:14', '2024-09-12 15:27:14'),
(14, 'Thursday', '14:00', '15:00', 1, '2024-09-05', '2024-09-12 15:27:14', '2024-09-12 15:27:14'),
(15, 'Thursday', '15:30', '16:30', 1, '2024-09-05', '2024-09-12 15:27:14', '2024-09-12 15:27:14'),
(16, 'Friday', '08:30', '09:30', 1, '2024-09-06', '2024-09-12 15:27:14', '2024-09-12 15:27:14'),
(17, 'Friday', '10:00', '11:00', 1, '2024-09-06', '2024-09-12 15:27:14', '2024-09-12 15:27:14'),
(18, 'Friday', '11:30', '12:30', 1, '2024-09-06', '2024-09-12 15:27:14', '2024-09-12 15:27:14'),
(19, 'Friday', '14:00', '15:00', 1, '2024-09-06', '2024-09-12 15:27:14', '2024-09-12 15:27:14'),
(20, 'Friday', '15:30', '16:30', 1, '2024-09-06', '2024-09-12 15:27:14', '2024-09-12 15:27:14'),
(21, 'Saturday', '08:30', '09:30', 1, '2024-09-07', '2024-09-12 15:27:14', '2024-09-12 15:27:14'),
(22, 'Saturday', '10:00', '11:00', 1, '2024-09-07', '2024-09-12 15:27:14', '2024-09-12 15:27:14'),
(23, 'Saturday', '11:30', '12:30', 1, '2024-09-07', '2024-09-12 15:27:14', '2024-09-12 15:27:14'),
(24, 'Saturday', '14:00', '15:00', 1, '2024-09-07', '2024-09-12 15:27:14', '2024-09-12 15:27:14'),
(25, 'Saturday', '15:30', '16:30', 1, '2024-09-07', '2024-09-12 15:27:14', '2024-09-12 15:27:14'),
(26, 'Tuesday', '08:30', '09:30', 1, '2024-09-10', '2024-09-12 15:27:14', '2024-09-12 15:27:14'),
(27, 'Tuesday', '10:00', '11:00', 1, '2024-09-10', '2024-09-12 15:27:14', '2024-09-12 15:27:14'),
(28, 'Tuesday', '11:30', '12:30', 1, '2024-09-10', '2024-09-12 15:27:14', '2024-09-12 15:27:14'),
(29, 'Tuesday', '14:00', '15:00', 1, '2024-09-10', '2024-09-12 15:27:14', '2024-09-12 15:27:14'),
(30, 'Tuesday', '15:30', '16:30', 1, '2024-09-10', '2024-09-12 15:27:14', '2024-09-12 15:27:14'),
(31, 'Wednesday', '08:30', '09:30', 1, '2024-09-11', '2024-09-12 15:27:14', '2024-09-12 15:27:14'),
(32, 'Wednesday', '10:00', '11:00', 1, '2024-09-11', '2024-09-12 15:27:14', '2024-09-12 15:27:14'),
(33, 'Wednesday', '11:30', '12:30', 1, '2024-09-11', '2024-09-12 15:27:14', '2024-09-12 15:27:14'),
(34, 'Wednesday', '14:00', '15:00', 1, '2024-09-11', '2024-09-12 15:27:14', '2024-09-12 15:27:14'),
(35, 'Wednesday', '15:30', '16:30', 1, '2024-09-11', '2024-09-12 15:27:14', '2024-09-12 15:27:14'),
(36, 'Thursday', '08:30', '09:30', 1, '2024-09-12', '2024-09-12 15:27:14', '2024-09-12 15:27:14'),
(37, 'Thursday', '10:00', '11:00', 1, '2024-09-12', '2024-09-12 15:27:14', '2024-09-12 15:27:14'),
(38, 'Thursday', '11:30', '12:30', 1, '2024-09-12', '2024-09-12 15:27:14', '2024-09-12 15:27:14'),
(39, 'Thursday', '14:00', '15:00', 1, '2024-09-12', '2024-09-12 15:27:14', '2024-09-12 15:27:14'),
(40, 'Thursday', '15:30', '16:30', 1, '2024-09-12', '2024-09-12 15:27:14', '2024-09-12 15:27:14'),
(41, 'Friday', '08:30', '09:30', 1, '2024-09-13', '2024-09-12 15:27:14', '2024-09-12 15:27:14'),
(42, 'Friday', '10:00', '11:00', 1, '2024-09-13', '2024-09-12 15:27:14', '2024-09-12 15:27:14'),
(43, 'Friday', '11:30', '12:30', 1, '2024-09-13', '2024-09-12 15:27:14', '2024-09-12 15:27:14'),
(44, 'Friday', '14:00', '15:00', 1, '2024-09-13', '2024-09-12 15:27:14', '2024-09-12 15:27:14'),
(45, 'Friday', '15:30', '16:30', 1, '2024-09-13', '2024-09-12 15:27:14', '2024-09-12 15:27:14'),
(46, 'Saturday', '08:30', '09:30', 1, '2024-09-14', '2024-09-12 15:27:14', '2024-09-12 15:27:14'),
(47, 'Saturday', '10:00', '11:00', 1, '2024-09-14', '2024-09-12 15:27:14', '2024-09-12 15:27:14'),
(48, 'Saturday', '11:30', '12:30', 1, '2024-09-14', '2024-09-12 15:27:14', '2024-09-12 15:27:14'),
(49, 'Saturday', '14:00', '15:00', 1, '2024-09-14', '2024-09-12 15:27:14', '2024-09-12 15:27:14'),
(50, 'Saturday', '15:30', '16:30', 1, '2024-09-14', '2024-09-12 15:27:14', '2024-09-12 15:27:14'),
(51, 'Tuesday', '08:30', '09:30', 1, '2024-09-17', '2024-09-12 15:27:14', '2024-09-12 15:27:14'),
(52, 'Tuesday', '10:00', '11:00', 1, '2024-09-17', '2024-09-12 15:27:14', '2024-09-12 15:27:14'),
(53, 'Tuesday', '11:30', '12:30', 1, '2024-09-17', '2024-09-12 15:27:14', '2024-09-12 15:27:14'),
(54, 'Tuesday', '14:00', '15:00', 1, '2024-09-17', '2024-09-12 15:27:14', '2024-09-12 15:27:14'),
(55, 'Tuesday', '15:30', '16:30', 1, '2024-09-17', '2024-09-12 15:27:14', '2024-09-12 15:27:14'),
(56, 'Wednesday', '08:30', '09:30', 1, '2024-09-18', '2024-09-12 15:27:14', '2024-09-12 15:27:14'),
(57, 'Wednesday', '10:00', '11:00', 1, '2024-09-18', '2024-09-12 15:27:14', '2024-09-12 15:27:14'),
(58, 'Wednesday', '11:30', '12:30', 1, '2024-09-18', '2024-09-12 15:27:14', '2024-09-12 15:27:14'),
(59, 'Wednesday', '14:00', '15:00', 1, '2024-09-18', '2024-09-12 15:27:14', '2024-09-12 15:27:14'),
(60, 'Wednesday', '15:30', '16:30', 1, '2024-09-18', '2024-09-12 15:27:14', '2024-09-12 15:27:14'),
(61, 'Thursday', '08:30', '09:30', 1, '2024-09-19', '2024-09-12 15:27:14', '2024-09-12 15:27:14'),
(62, 'Thursday', '10:00', '11:00', 1, '2024-09-19', '2024-09-12 15:27:14', '2024-09-12 15:27:14'),
(63, 'Thursday', '11:30', '12:30', 1, '2024-09-19', '2024-09-12 15:27:14', '2024-09-12 15:27:14'),
(64, 'Thursday', '14:00', '15:00', 1, '2024-09-19', '2024-09-12 15:27:14', '2024-09-12 15:27:14'),
(65, 'Thursday', '15:30', '16:30', 1, '2024-09-19', '2024-09-12 15:27:14', '2024-09-12 15:27:14'),
(66, 'Friday', '08:30', '09:30', 1, '2024-09-20', '2024-09-12 15:27:14', '2024-09-12 15:27:14'),
(67, 'Friday', '10:00', '11:00', 1, '2024-09-20', '2024-09-12 15:27:14', '2024-09-12 15:27:14'),
(68, 'Friday', '11:30', '12:30', 1, '2024-09-20', '2024-09-12 15:27:14', '2024-09-12 15:27:14'),
(69, 'Friday', '14:00', '15:00', 1, '2024-09-20', '2024-09-12 15:27:14', '2024-09-12 15:27:14'),
(70, 'Friday', '15:30', '16:30', 1, '2024-09-20', '2024-09-12 15:27:14', '2024-09-12 15:27:14'),
(71, 'Saturday', '08:30', '09:30', 1, '2024-09-21', '2024-09-12 15:27:14', '2024-09-12 15:27:14'),
(72, 'Saturday', '10:00', '11:00', 1, '2024-09-21', '2024-09-12 15:27:14', '2024-09-12 15:27:14'),
(73, 'Saturday', '11:30', '12:30', 1, '2024-09-21', '2024-09-12 15:27:14', '2024-09-12 15:27:14'),
(74, 'Saturday', '14:00', '15:00', 1, '2024-09-21', '2024-09-12 15:27:14', '2024-09-12 15:27:14'),
(75, 'Saturday', '15:30', '16:30', 1, '2024-09-21', '2024-09-12 15:27:14', '2024-09-12 15:27:14'),
(76, 'Tuesday', '08:30', '09:30', 1, '2024-09-24', '2024-09-12 15:27:14', '2024-09-12 15:27:14'),
(77, 'Tuesday', '10:00', '11:00', 1, '2024-09-24', '2024-09-12 15:27:14', '2024-09-12 15:27:14'),
(78, 'Tuesday', '11:30', '12:30', 1, '2024-09-24', '2024-09-12 15:27:14', '2024-09-12 15:27:14'),
(79, 'Tuesday', '14:00', '15:00', 1, '2024-09-24', '2024-09-12 15:27:14', '2024-09-12 15:27:14'),
(80, 'Tuesday', '15:30', '16:30', 1, '2024-09-24', '2024-09-12 15:27:14', '2024-09-12 15:27:14'),
(81, 'Wednesday', '08:30', '09:30', 1, '2024-09-25', '2024-09-12 15:27:14', '2024-09-12 15:27:14'),
(82, 'Wednesday', '10:00', '11:00', 1, '2024-09-25', '2024-09-12 15:27:14', '2024-09-12 15:27:14'),
(83, 'Wednesday', '11:30', '12:30', 1, '2024-09-25', '2024-09-12 15:27:14', '2024-09-12 15:27:14'),
(84, 'Wednesday', '14:00', '15:00', 1, '2024-09-25', '2024-09-12 15:27:14', '2024-09-12 15:27:14'),
(85, 'Wednesday', '15:30', '16:30', 1, '2024-09-25', '2024-09-12 15:27:14', '2024-09-12 15:27:14'),
(86, 'Thursday', '08:30', '09:30', 1, '2024-09-26', '2024-09-12 15:27:14', '2024-09-12 15:27:14'),
(87, 'Thursday', '10:00', '11:00', 1, '2024-09-26', '2024-09-12 15:27:14', '2024-09-12 15:27:14'),
(88, 'Thursday', '11:30', '12:30', 1, '2024-09-26', '2024-09-12 15:27:14', '2024-09-12 15:27:14'),
(89, 'Thursday', '14:00', '15:00', 1, '2024-09-26', '2024-09-12 15:27:14', '2024-09-12 15:27:14'),
(90, 'Thursday', '15:30', '16:30', 1, '2024-09-26', '2024-09-12 15:27:14', '2024-09-12 15:27:14'),
(91, 'Friday', '08:30', '09:30', 1, '2024-09-27', '2024-09-12 15:27:14', '2024-09-12 15:27:14'),
(92, 'Friday', '10:00', '11:00', 1, '2024-09-27', '2024-09-12 15:27:14', '2024-09-12 15:27:14'),
(93, 'Friday', '11:30', '12:30', 1, '2024-09-27', '2024-09-12 15:27:14', '2024-09-12 15:27:14'),
(94, 'Friday', '14:00', '15:00', 1, '2024-09-27', '2024-09-12 15:27:14', '2024-09-12 15:27:14'),
(95, 'Friday', '15:30', '16:30', 1, '2024-09-27', '2024-09-12 15:27:14', '2024-09-12 15:27:14'),
(96, 'Saturday', '08:30', '09:30', 1, '2024-09-28', '2024-09-12 15:27:14', '2024-09-12 15:27:14'),
(97, 'Saturday', '10:00', '11:00', 1, '2024-09-28', '2024-09-12 15:27:14', '2024-09-12 15:27:14'),
(98, 'Saturday', '11:30', '12:30', 1, '2024-09-28', '2024-09-12 15:27:14', '2024-09-12 15:27:14'),
(99, 'Saturday', '14:00', '15:00', 1, '2024-09-28', '2024-09-12 15:27:14', '2024-09-12 15:27:14'),
(100, 'Saturday', '15:30', '16:30', 1, '2024-09-28', '2024-09-12 15:27:14', '2024-09-12 15:27:14');

-- --------------------------------------------------------

--
-- Table structure for table `slots_rts`
--

CREATE TABLE `slots_rts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `day` varchar(255) NOT NULL,
  `start_time` varchar(255) NOT NULL,
  `end_time` varchar(255) NOT NULL,
  `is_available` tinyint(1) NOT NULL DEFAULT 1,
  `date` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `slots_rts`
--

INSERT INTO `slots_rts` (`id`, `day`, `start_time`, `end_time`, `is_available`, `date`, `created_at`, `updated_at`) VALUES
(1, 'Tuesday', '09:00', '11:30', 1, '2024-09-03', '2024-09-21 11:41:56', '2024-09-21 11:41:56'),
(2, 'Tuesday', '14:00', '16:30', 1, '2024-09-03', '2024-09-21 11:41:56', '2024-09-21 11:41:56'),
(3, 'Wednesday', '09:00', '11:30', 1, '2024-09-04', '2024-09-21 11:41:56', '2024-09-21 11:41:56'),
(4, 'Wednesday', '14:00', '16:30', 1, '2024-09-04', '2024-09-21 11:41:56', '2024-09-21 11:41:56'),
(5, 'Thursday', '09:00', '11:30', 1, '2024-09-05', '2024-09-21 11:41:56', '2024-09-21 11:41:56'),
(6, 'Thursday', '14:00', '16:30', 1, '2024-09-05', '2024-09-21 11:41:56', '2024-09-21 11:41:56'),
(7, 'Friday', '09:00', '11:30', 1, '2024-09-06', '2024-09-21 11:41:56', '2024-09-21 11:41:56'),
(8, 'Friday', '14:00', '16:30', 1, '2024-09-06', '2024-09-21 11:41:56', '2024-09-21 11:41:56'),
(9, 'Saturday', '09:00', '11:30', 1, '2024-09-07', '2024-09-21 11:41:56', '2024-09-21 11:41:56'),
(10, 'Saturday', '14:00', '16:30', 1, '2024-09-07', '2024-09-21 11:41:56', '2024-09-21 11:41:56'),
(11, 'Tuesday', '09:00', '11:30', 1, '2024-09-10', '2024-09-21 11:41:56', '2024-09-21 11:41:56'),
(12, 'Tuesday', '14:00', '16:30', 1, '2024-09-10', '2024-09-21 11:41:56', '2024-09-21 11:41:56'),
(13, 'Wednesday', '09:00', '11:30', 1, '2024-09-11', '2024-09-21 11:41:56', '2024-09-21 11:41:56'),
(14, 'Wednesday', '14:00', '16:30', 1, '2024-09-11', '2024-09-21 11:41:56', '2024-09-21 11:41:56'),
(15, 'Thursday', '09:00', '11:30', 1, '2024-09-12', '2024-09-21 11:41:56', '2024-09-21 11:41:56'),
(16, 'Thursday', '14:00', '16:30', 1, '2024-09-12', '2024-09-21 11:41:56', '2024-09-21 11:41:56'),
(17, 'Friday', '09:00', '11:30', 1, '2024-09-13', '2024-09-21 11:41:56', '2024-09-21 11:41:56'),
(18, 'Friday', '14:00', '16:30', 1, '2024-09-13', '2024-09-21 11:41:56', '2024-09-21 11:41:56'),
(19, 'Saturday', '09:00', '11:30', 1, '2024-09-14', '2024-09-21 11:41:56', '2024-09-21 11:41:56'),
(20, 'Saturday', '14:00', '16:30', 1, '2024-09-14', '2024-09-21 11:41:56', '2024-09-21 11:41:56'),
(21, 'Tuesday', '09:00', '11:30', 1, '2024-09-17', '2024-09-21 11:41:56', '2024-09-21 11:41:56'),
(22, 'Tuesday', '14:00', '16:30', 1, '2024-09-17', '2024-09-21 11:41:56', '2024-09-21 11:41:56'),
(23, 'Wednesday', '09:00', '11:30', 1, '2024-09-18', '2024-09-21 11:41:56', '2024-09-21 11:41:56'),
(24, 'Wednesday', '14:00', '16:30', 1, '2024-09-18', '2024-09-21 11:41:56', '2024-09-21 11:41:56'),
(25, 'Thursday', '09:00', '11:30', 1, '2024-09-19', '2024-09-21 11:41:56', '2024-09-21 11:41:56'),
(26, 'Thursday', '14:00', '16:30', 1, '2024-09-19', '2024-09-21 11:41:56', '2024-09-21 11:41:56'),
(27, 'Friday', '09:00', '11:30', 1, '2024-09-20', '2024-09-21 11:41:56', '2024-09-21 11:41:56'),
(28, 'Friday', '14:00', '16:30', 1, '2024-09-20', '2024-09-21 11:41:56', '2024-09-21 11:41:56'),
(29, 'Saturday', '09:00', '11:30', 1, '2024-09-21', '2024-09-21 11:41:56', '2024-09-21 11:41:56'),
(30, 'Saturday', '14:00', '16:30', 1, '2024-09-21', '2024-09-21 11:41:56', '2024-09-21 11:41:56'),
(31, 'Tuesday', '09:00', '11:30', 1, '2024-09-24', '2024-09-21 11:41:56', '2024-09-21 11:41:56'),
(32, 'Tuesday', '14:00', '16:30', 1, '2024-09-24', '2024-09-21 11:41:56', '2024-09-21 11:41:56'),
(33, 'Wednesday', '09:00', '11:30', 1, '2024-09-25', '2024-09-21 11:41:56', '2024-09-21 11:41:56'),
(34, 'Wednesday', '14:00', '16:30', 1, '2024-09-25', '2024-09-21 11:41:56', '2024-09-21 11:41:56'),
(35, 'Thursday', '09:00', '11:30', 1, '2024-09-26', '2024-09-21 11:41:56', '2024-09-21 11:41:56'),
(36, 'Thursday', '14:00', '16:30', 1, '2024-09-26', '2024-09-21 11:41:56', '2024-09-21 11:41:56'),
(37, 'Friday', '09:00', '11:30', 1, '2024-09-27', '2024-09-21 11:41:56', '2024-09-21 11:41:56'),
(38, 'Friday', '14:00', '16:30', 1, '2024-09-27', '2024-09-21 11:41:56', '2024-09-21 11:41:56'),
(39, 'Saturday', '09:00', '11:30', 1, '2024-09-28', '2024-09-21 11:41:56', '2024-09-21 11:41:56'),
(40, 'Saturday', '14:00', '16:30', 1, '2024-09-28', '2024-09-21 11:41:56', '2024-09-21 11:41:56'),
(41, 'Tuesday', '09:00', '11:30', 1, '2024-10-01', '2024-09-21 11:41:56', '2024-09-21 11:41:56'),
(42, 'Tuesday', '14:00', '16:30', 1, '2024-10-01', '2024-09-21 11:41:56', '2024-09-21 11:41:56'),
(43, 'Wednesday', '09:00', '11:30', 1, '2024-10-02', '2024-09-21 11:41:56', '2024-09-21 11:41:56'),
(44, 'Wednesday', '14:00', '16:30', 1, '2024-10-02', '2024-09-21 11:41:56', '2024-09-21 11:41:56'),
(45, 'Thursday', '09:00', '11:30', 1, '2024-10-03', '2024-09-21 11:41:56', '2024-09-21 11:41:56'),
(46, 'Thursday', '14:00', '16:30', 1, '2024-10-03', '2024-09-21 11:41:56', '2024-09-21 11:41:56'),
(47, 'Friday', '09:00', '11:30', 1, '2024-10-04', '2024-09-21 11:41:56', '2024-09-21 11:41:56'),
(48, 'Friday', '14:00', '16:30', 1, '2024-10-04', '2024-09-21 11:41:56', '2024-09-21 11:41:56'),
(49, 'Saturday', '09:00', '11:30', 1, '2024-10-05', '2024-09-21 11:41:56', '2024-09-21 11:41:56'),
(50, 'Saturday', '14:00', '16:30', 1, '2024-10-05', '2024-09-21 11:41:56', '2024-09-21 11:41:56'),
(51, 'Tuesday', '09:00', '11:30', 1, '2024-10-08', '2024-09-21 11:41:56', '2024-09-21 11:41:56'),
(52, 'Tuesday', '14:00', '16:30', 1, '2024-10-08', '2024-09-21 11:41:56', '2024-09-21 11:41:56'),
(53, 'Wednesday', '09:00', '11:30', 1, '2024-10-09', '2024-09-21 11:41:56', '2024-09-21 11:41:56'),
(54, 'Wednesday', '14:00', '16:30', 1, '2024-10-09', '2024-09-21 11:41:56', '2024-09-21 11:41:56'),
(55, 'Thursday', '09:00', '11:30', 1, '2024-10-10', '2024-09-21 11:41:56', '2024-09-21 11:41:56'),
(56, 'Thursday', '14:00', '16:30', 1, '2024-10-10', '2024-09-21 11:41:56', '2024-09-21 11:41:56'),
(57, 'Friday', '09:00', '11:30', 1, '2024-10-11', '2024-09-21 11:41:56', '2024-09-21 11:41:56'),
(58, 'Friday', '14:00', '16:30', 1, '2024-10-11', '2024-09-21 11:41:56', '2024-09-21 11:41:56'),
(59, 'Saturday', '09:00', '11:30', 1, '2024-10-12', '2024-09-21 11:41:56', '2024-09-21 11:41:56'),
(60, 'Saturday', '14:00', '16:30', 1, '2024-10-12', '2024-09-21 11:41:56', '2024-09-21 11:41:56'),
(61, 'Tuesday', '09:00', '11:30', 1, '2024-10-15', '2024-09-21 11:41:56', '2024-09-21 11:41:56'),
(62, 'Tuesday', '14:00', '16:30', 1, '2024-10-15', '2024-09-21 11:41:56', '2024-09-21 11:41:56'),
(63, 'Wednesday', '09:00', '11:30', 1, '2024-10-16', '2024-09-21 11:41:56', '2024-09-21 11:41:56'),
(64, 'Wednesday', '14:00', '16:30', 1, '2024-10-16', '2024-09-21 11:41:56', '2024-09-21 11:41:56'),
(65, 'Thursday', '09:00', '11:30', 1, '2024-10-17', '2024-09-21 11:41:56', '2024-09-21 11:41:56'),
(66, 'Thursday', '14:00', '16:30', 1, '2024-10-17', '2024-09-21 11:41:56', '2024-09-21 11:41:56'),
(67, 'Friday', '09:00', '11:30', 1, '2024-10-18', '2024-09-21 11:41:56', '2024-09-21 11:41:56'),
(68, 'Friday', '14:00', '16:30', 1, '2024-10-18', '2024-09-21 11:41:56', '2024-09-21 11:41:56'),
(69, 'Saturday', '09:00', '11:30', 1, '2024-10-19', '2024-09-21 11:41:56', '2024-09-21 11:41:56'),
(70, 'Saturday', '14:00', '16:30', 1, '2024-10-19', '2024-09-21 11:41:56', '2024-09-21 11:41:56'),
(71, 'Tuesday', '09:00', '11:30', 1, '2024-10-22', '2024-09-21 11:41:56', '2024-09-21 11:41:56'),
(72, 'Tuesday', '14:00', '16:30', 1, '2024-10-22', '2024-09-21 11:41:56', '2024-09-21 11:41:56'),
(73, 'Wednesday', '09:00', '11:30', 1, '2024-10-23', '2024-09-21 11:41:56', '2024-09-21 11:41:56'),
(74, 'Wednesday', '14:00', '16:30', 1, '2024-10-23', '2024-09-21 11:41:56', '2024-09-21 11:41:56'),
(75, 'Thursday', '09:00', '11:30', 1, '2024-10-24', '2024-09-21 11:41:56', '2024-09-21 11:41:56'),
(76, 'Thursday', '14:00', '16:30', 1, '2024-10-24', '2024-09-21 11:41:56', '2024-09-21 11:41:56'),
(77, 'Friday', '09:00', '11:30', 1, '2024-10-25', '2024-09-21 11:41:56', '2024-09-21 11:41:56'),
(78, 'Friday', '14:00', '16:30', 1, '2024-10-25', '2024-09-21 11:41:56', '2024-09-21 11:41:56'),
(79, 'Saturday', '09:00', '11:30', 1, '2024-10-26', '2024-09-21 11:41:56', '2024-09-21 11:41:56'),
(80, 'Saturday', '14:00', '16:30', 1, '2024-10-26', '2024-09-21 11:41:56', '2024-09-21 11:41:56'),
(81, 'Tuesday', '09:00', '11:30', 1, '2024-10-29', '2024-09-21 11:41:56', '2024-09-21 11:41:56'),
(82, 'Tuesday', '14:00', '16:30', 1, '2024-10-29', '2024-09-21 11:41:56', '2024-09-21 11:41:56'),
(83, 'Wednesday', '09:00', '11:30', 1, '2024-10-30', '2024-09-21 11:41:56', '2024-09-21 11:41:56'),
(84, 'Wednesday', '14:00', '16:30', 1, '2024-10-30', '2024-09-21 11:41:56', '2024-09-21 11:41:56'),
(85, 'Thursday', '09:00', '11:30', 1, '2024-10-31', '2024-09-21 11:41:56', '2024-09-21 11:41:56'),
(86, 'Thursday', '14:00', '16:30', 1, '2024-10-31', '2024-09-21 11:41:56', '2024-09-21 11:41:56'),
(87, 'Friday', '09:00', '11:30', 1, '2024-11-01', '2024-09-21 11:41:56', '2024-09-21 11:41:56'),
(88, 'Friday', '14:00', '16:30', 1, '2024-11-01', '2024-09-21 11:41:56', '2024-09-21 11:41:56'),
(89, 'Saturday', '09:00', '11:30', 1, '2024-11-02', '2024-09-21 11:41:56', '2024-09-21 11:41:56'),
(90, 'Saturday', '14:00', '16:30', 1, '2024-11-02', '2024-09-21 11:41:56', '2024-09-21 11:41:56'),
(91, 'Tuesday', '09:00', '11:30', 1, '2024-11-05', '2024-09-21 11:41:56', '2024-09-21 11:41:56'),
(92, 'Tuesday', '14:00', '16:30', 1, '2024-11-05', '2024-09-21 11:41:56', '2024-09-21 11:41:56'),
(93, 'Wednesday', '09:00', '11:30', 1, '2024-11-06', '2024-09-21 11:41:56', '2024-09-21 11:41:56'),
(94, 'Wednesday', '14:00', '16:30', 1, '2024-11-06', '2024-09-21 11:41:56', '2024-09-21 11:41:56'),
(95, 'Thursday', '09:00', '11:30', 1, '2024-11-07', '2024-09-21 11:41:56', '2024-09-21 11:41:56'),
(96, 'Thursday', '14:00', '16:30', 1, '2024-11-07', '2024-09-21 11:41:56', '2024-09-21 11:41:56'),
(97, 'Friday', '09:00', '11:30', 1, '2024-11-08', '2024-09-21 11:41:56', '2024-09-21 11:41:56'),
(98, 'Friday', '14:00', '16:30', 1, '2024-11-08', '2024-09-21 11:41:56', '2024-09-21 11:41:56'),
(99, 'Saturday', '09:00', '11:30', 1, '2024-11-09', '2024-09-21 11:41:56', '2024-09-21 11:41:56'),
(100, 'Saturday', '14:00', '16:30', 1, '2024-11-09', '2024-09-21 11:41:56', '2024-09-21 11:41:56'),
(101, 'Tuesday', '09:00', '11:30', 1, '2024-11-12', '2024-09-21 11:41:56', '2024-09-21 11:41:56'),
(102, 'Tuesday', '14:00', '16:30', 1, '2024-11-12', '2024-09-21 11:41:56', '2024-09-21 11:41:56'),
(103, 'Wednesday', '09:00', '11:30', 1, '2024-11-13', '2024-09-21 11:41:56', '2024-09-21 11:41:56'),
(104, 'Wednesday', '14:00', '16:30', 1, '2024-11-13', '2024-09-21 11:41:56', '2024-09-21 11:41:56'),
(105, 'Thursday', '09:00', '11:30', 1, '2024-11-14', '2024-09-21 11:41:56', '2024-09-21 11:41:56'),
(106, 'Thursday', '14:00', '16:30', 1, '2024-11-14', '2024-09-21 11:41:56', '2024-09-21 11:41:56'),
(107, 'Friday', '09:00', '11:30', 1, '2024-11-15', '2024-09-21 11:41:56', '2024-09-21 11:41:56'),
(108, 'Friday', '14:00', '16:30', 1, '2024-11-15', '2024-09-21 11:41:56', '2024-09-21 11:41:56'),
(109, 'Saturday', '09:00', '11:30', 1, '2024-11-16', '2024-09-21 11:41:56', '2024-09-21 11:41:56'),
(110, 'Saturday', '14:00', '16:30', 1, '2024-11-16', '2024-09-21 11:41:56', '2024-09-21 11:41:56'),
(111, 'Tuesday', '09:00', '11:30', 1, '2024-11-19', '2024-09-21 11:41:56', '2024-09-21 11:41:56'),
(112, 'Tuesday', '14:00', '16:30', 1, '2024-11-19', '2024-09-21 11:41:56', '2024-09-21 11:41:56'),
(113, 'Wednesday', '09:00', '11:30', 1, '2024-11-20', '2024-09-21 11:41:56', '2024-09-21 11:41:56'),
(114, 'Wednesday', '14:00', '16:30', 1, '2024-11-20', '2024-09-21 11:41:56', '2024-09-21 11:41:56'),
(115, 'Thursday', '09:00', '11:30', 1, '2024-11-21', '2024-09-21 11:41:56', '2024-09-21 11:41:56'),
(116, 'Thursday', '14:00', '16:30', 1, '2024-11-21', '2024-09-21 11:41:56', '2024-09-21 11:41:56'),
(117, 'Friday', '09:00', '11:30', 1, '2024-11-22', '2024-09-21 11:41:56', '2024-09-21 11:41:56'),
(118, 'Friday', '14:00', '16:30', 1, '2024-11-22', '2024-09-21 11:41:56', '2024-09-21 11:41:56'),
(119, 'Saturday', '09:00', '11:30', 1, '2024-11-23', '2024-09-21 11:41:56', '2024-09-21 11:41:56'),
(120, 'Saturday', '14:00', '16:30', 1, '2024-11-23', '2024-09-21 11:41:56', '2024-09-21 11:41:56'),
(121, 'Tuesday', '09:00', '11:30', 1, '2024-11-26', '2024-09-21 11:41:56', '2024-09-21 11:41:56'),
(122, 'Tuesday', '14:00', '16:30', 1, '2024-11-26', '2024-09-21 11:41:56', '2024-09-21 11:41:56'),
(123, 'Wednesday', '09:00', '11:30', 1, '2024-11-27', '2024-09-21 11:41:56', '2024-09-21 11:41:56'),
(124, 'Wednesday', '14:00', '16:30', 1, '2024-11-27', '2024-09-21 11:41:56', '2024-09-21 11:41:56'),
(125, 'Thursday', '09:00', '11:30', 1, '2024-11-28', '2024-09-21 11:41:56', '2024-09-21 11:41:56'),
(126, 'Thursday', '14:00', '16:30', 1, '2024-11-28', '2024-09-21 11:41:56', '2024-09-21 11:41:56'),
(127, 'Friday', '09:00', '11:30', 1, '2024-11-29', '2024-09-21 11:41:56', '2024-09-21 11:41:56'),
(128, 'Friday', '14:00', '16:30', 1, '2024-11-29', '2024-09-21 11:41:56', '2024-09-21 11:41:56'),
(129, 'Saturday', '09:00', '11:30', 1, '2024-11-30', '2024-09-21 11:41:56', '2024-09-21 11:41:56'),
(130, 'Saturday', '14:00', '16:30', 1, '2024-11-30', '2024-09-21 11:41:56', '2024-09-21 11:41:56'),
(131, 'Tuesday', '09:00', '11:30', 1, '2024-12-03', '2024-09-21 11:41:56', '2024-09-21 11:41:56'),
(132, 'Tuesday', '14:00', '16:30', 1, '2024-12-03', '2024-09-21 11:41:56', '2024-09-21 11:41:56'),
(133, 'Wednesday', '09:00', '11:30', 1, '2024-12-04', '2024-09-21 11:41:56', '2024-09-21 11:41:56'),
(134, 'Wednesday', '14:00', '16:30', 1, '2024-12-04', '2024-09-21 11:41:56', '2024-09-21 11:41:56'),
(135, 'Thursday', '09:00', '11:30', 1, '2024-12-05', '2024-09-21 11:41:56', '2024-09-21 11:41:56'),
(136, 'Thursday', '14:00', '16:30', 1, '2024-12-05', '2024-09-21 11:41:56', '2024-09-21 11:41:56'),
(137, 'Friday', '09:00', '11:30', 1, '2024-12-06', '2024-09-21 11:41:56', '2024-09-21 11:41:56'),
(138, 'Friday', '14:00', '16:30', 1, '2024-12-06', '2024-09-21 11:41:56', '2024-09-21 11:41:56'),
(139, 'Saturday', '09:00', '11:30', 1, '2024-12-07', '2024-09-21 11:41:56', '2024-09-21 11:41:56'),
(140, 'Saturday', '14:00', '16:30', 1, '2024-12-07', '2024-09-21 11:41:56', '2024-09-21 11:41:56'),
(141, 'Tuesday', '09:00', '11:30', 1, '2024-12-10', '2024-09-21 11:41:56', '2024-09-21 11:41:56'),
(142, 'Tuesday', '14:00', '16:30', 1, '2024-12-10', '2024-09-21 11:41:56', '2024-09-21 11:41:56'),
(143, 'Wednesday', '09:00', '11:30', 1, '2024-12-11', '2024-09-21 11:41:56', '2024-09-21 11:41:56'),
(144, 'Wednesday', '14:00', '16:30', 1, '2024-12-11', '2024-09-21 11:41:56', '2024-09-21 11:41:56'),
(145, 'Thursday', '09:00', '11:30', 1, '2024-12-12', '2024-09-21 11:41:56', '2024-09-21 11:41:56'),
(146, 'Thursday', '14:00', '16:30', 1, '2024-12-12', '2024-09-21 11:41:56', '2024-09-21 11:41:56'),
(147, 'Friday', '09:00', '11:30', 1, '2024-12-13', '2024-09-21 11:41:56', '2024-09-21 11:41:56'),
(148, 'Friday', '14:00', '16:30', 1, '2024-12-13', '2024-09-21 11:41:56', '2024-09-21 11:41:56'),
(149, 'Saturday', '09:00', '11:30', 1, '2024-12-14', '2024-09-21 11:41:56', '2024-09-21 11:41:56'),
(150, 'Saturday', '14:00', '16:30', 1, '2024-12-14', '2024-09-21 11:41:56', '2024-09-21 11:41:56'),
(151, 'Tuesday', '09:00', '11:30', 1, '2024-12-17', '2024-09-21 11:41:56', '2024-09-21 11:41:56'),
(152, 'Tuesday', '14:00', '16:30', 1, '2024-12-17', '2024-09-21 11:41:56', '2024-09-21 11:41:56'),
(153, 'Wednesday', '09:00', '11:30', 1, '2024-12-18', '2024-09-21 11:41:56', '2024-09-21 11:41:56'),
(154, 'Wednesday', '14:00', '16:30', 1, '2024-12-18', '2024-09-21 11:41:56', '2024-09-21 11:41:56'),
(155, 'Thursday', '09:00', '11:30', 1, '2024-12-19', '2024-09-21 11:41:56', '2024-09-21 11:41:56'),
(156, 'Thursday', '14:00', '16:30', 1, '2024-12-19', '2024-09-21 11:41:56', '2024-09-21 11:41:56'),
(157, 'Friday', '09:00', '11:30', 1, '2024-12-20', '2024-09-21 11:41:56', '2024-09-21 11:41:56'),
(158, 'Friday', '14:00', '16:30', 1, '2024-12-20', '2024-09-21 11:41:56', '2024-09-21 11:41:56'),
(159, 'Saturday', '09:00', '11:30', 1, '2024-12-21', '2024-09-21 11:41:56', '2024-09-21 11:41:56'),
(160, 'Saturday', '14:00', '16:30', 1, '2024-12-21', '2024-09-21 11:41:56', '2024-09-21 11:41:56'),
(161, 'Tuesday', '09:00', '11:30', 1, '2024-12-24', '2024-09-21 11:41:56', '2024-09-21 11:41:56'),
(162, 'Tuesday', '14:00', '16:30', 1, '2024-12-24', '2024-09-21 11:41:56', '2024-09-21 11:41:56'),
(163, 'Wednesday', '09:00', '11:30', 1, '2024-12-25', '2024-09-21 11:41:56', '2024-09-21 11:41:56'),
(164, 'Wednesday', '14:00', '16:30', 1, '2024-12-25', '2024-09-21 11:41:56', '2024-09-21 11:41:56'),
(165, 'Thursday', '09:00', '11:30', 1, '2024-12-26', '2024-09-21 11:41:56', '2024-09-21 11:41:56'),
(166, 'Thursday', '14:00', '16:30', 1, '2024-12-26', '2024-09-21 11:41:56', '2024-09-21 11:41:56'),
(167, 'Friday', '09:00', '11:30', 1, '2024-12-27', '2024-09-21 11:41:56', '2024-09-21 11:41:56'),
(168, 'Friday', '14:00', '16:30', 1, '2024-12-27', '2024-09-21 11:41:56', '2024-09-21 11:41:56'),
(169, 'Saturday', '09:00', '11:30', 1, '2024-12-28', '2024-09-21 11:41:56', '2024-09-21 11:41:56'),
(170, 'Saturday', '14:00', '16:30', 1, '2024-12-28', '2024-09-21 11:41:56', '2024-09-21 11:41:56'),
(171, 'Tuesday', '09:00', '11:30', 1, '2024-12-31', '2024-09-21 11:41:56', '2024-09-21 11:41:56'),
(172, 'Tuesday', '14:00', '16:30', 1, '2024-12-31', '2024-09-21 11:41:56', '2024-09-21 11:41:56'),
(173, 'Wednesday', '09:00', '11:30', 1, '2025-01-01', '2024-09-21 11:41:56', '2024-09-21 11:41:56'),
(174, 'Wednesday', '14:00', '16:30', 1, '2025-01-01', '2024-09-21 11:41:56', '2024-09-21 11:41:56'),
(175, 'Thursday', '09:00', '11:30', 1, '2025-01-02', '2024-09-21 11:41:56', '2024-09-21 11:41:56'),
(176, 'Thursday', '14:00', '16:30', 1, '2025-01-02', '2024-09-21 11:41:56', '2024-09-21 11:41:56'),
(177, 'Friday', '09:00', '11:30', 1, '2025-01-03', '2024-09-21 11:41:56', '2024-09-21 11:41:56'),
(178, 'Friday', '14:00', '16:30', 1, '2025-01-03', '2024-09-21 11:41:56', '2024-09-21 11:41:56'),
(179, 'Saturday', '09:00', '11:30', 1, '2025-01-04', '2024-09-21 11:41:56', '2024-09-21 11:41:56'),
(180, 'Saturday', '14:00', '16:30', 1, '2025-01-04', '2024-09-21 11:41:56', '2024-09-21 11:41:56'),
(181, 'Tuesday', '09:00', '11:30', 1, '2025-01-07', '2024-09-21 11:41:56', '2024-09-21 11:41:56'),
(182, 'Tuesday', '14:00', '16:30', 1, '2025-01-07', '2024-09-21 11:41:56', '2024-09-21 11:41:56'),
(183, 'Wednesday', '09:00', '11:30', 1, '2025-01-08', '2024-09-21 11:41:56', '2024-09-21 11:41:56'),
(184, 'Wednesday', '14:00', '16:30', 1, '2025-01-08', '2024-09-21 11:41:56', '2024-09-21 11:41:56'),
(185, 'Thursday', '09:00', '11:30', 1, '2025-01-09', '2024-09-21 11:41:56', '2024-09-21 11:41:56'),
(186, 'Thursday', '14:00', '16:30', 1, '2025-01-09', '2024-09-21 11:41:56', '2024-09-21 11:41:56'),
(187, 'Friday', '09:00', '11:30', 1, '2025-01-10', '2024-09-21 11:41:56', '2024-09-21 11:41:56'),
(188, 'Friday', '14:00', '16:30', 1, '2025-01-10', '2024-09-21 11:41:56', '2024-09-21 11:41:56'),
(189, 'Saturday', '09:00', '11:30', 1, '2025-01-11', '2024-09-21 11:41:56', '2024-09-21 11:41:56'),
(190, 'Saturday', '14:00', '16:30', 1, '2025-01-11', '2024-09-21 11:41:56', '2024-09-21 11:41:56'),
(191, 'Tuesday', '09:00', '11:30', 1, '2025-01-14', '2024-09-21 11:41:56', '2024-09-21 11:41:56'),
(192, 'Tuesday', '14:00', '16:30', 1, '2025-01-14', '2024-09-21 11:41:56', '2024-09-21 11:41:56'),
(193, 'Wednesday', '09:00', '11:30', 1, '2025-01-15', '2024-09-21 11:41:56', '2024-09-21 11:41:56'),
(194, 'Wednesday', '14:00', '16:30', 1, '2025-01-15', '2024-09-21 11:41:56', '2024-09-21 11:41:56'),
(195, 'Thursday', '09:00', '11:30', 1, '2025-01-16', '2024-09-21 11:41:56', '2024-09-21 11:41:56'),
(196, 'Thursday', '14:00', '16:30', 1, '2025-01-16', '2024-09-21 11:41:56', '2024-09-21 11:41:56'),
(197, 'Friday', '09:00', '11:30', 1, '2025-01-17', '2024-09-21 11:41:56', '2024-09-21 11:41:56'),
(198, 'Friday', '14:00', '16:30', 1, '2025-01-17', '2024-09-21 11:41:56', '2024-09-21 11:41:56'),
(199, 'Saturday', '09:00', '11:30', 1, '2025-01-18', '2024-09-21 11:41:56', '2024-09-21 11:41:56'),
(200, 'Saturday', '14:00', '16:30', 1, '2025-01-18', '2024-09-21 11:41:56', '2024-09-21 11:41:56'),
(201, 'Tuesday', '09:00', '11:30', 1, '2025-01-21', '2024-09-21 11:41:56', '2024-09-21 11:41:56'),
(202, 'Tuesday', '14:00', '16:30', 1, '2025-01-21', '2024-09-21 11:41:56', '2024-09-21 11:41:56'),
(203, 'Wednesday', '09:00', '11:30', 1, '2025-01-22', '2024-09-21 11:41:56', '2024-09-21 11:41:56'),
(204, 'Wednesday', '14:00', '16:30', 1, '2025-01-22', '2024-09-21 11:41:56', '2024-09-21 11:41:56'),
(205, 'Thursday', '09:00', '11:30', 1, '2025-01-23', '2024-09-21 11:41:56', '2024-09-21 11:41:56'),
(206, 'Thursday', '14:00', '16:30', 1, '2025-01-23', '2024-09-21 11:41:56', '2024-09-21 11:41:56'),
(207, 'Friday', '09:00', '11:30', 1, '2025-01-24', '2024-09-21 11:41:56', '2024-09-21 11:41:56'),
(208, 'Friday', '14:00', '16:30', 1, '2025-01-24', '2024-09-21 11:41:56', '2024-09-21 11:41:56'),
(209, 'Saturday', '09:00', '11:30', 1, '2025-01-25', '2024-09-21 11:41:56', '2024-09-21 11:41:56'),
(210, 'Saturday', '14:00', '16:30', 1, '2025-01-25', '2024-09-21 11:41:56', '2024-09-21 11:41:56'),
(211, 'Tuesday', '09:00', '11:30', 1, '2025-01-28', '2024-09-21 11:41:56', '2024-09-21 11:41:56'),
(212, 'Tuesday', '14:00', '16:30', 1, '2025-01-28', '2024-09-21 11:41:56', '2024-09-21 11:41:56'),
(213, 'Wednesday', '09:00', '11:30', 1, '2025-01-29', '2024-09-21 11:41:56', '2024-09-21 11:41:56'),
(214, 'Wednesday', '14:00', '16:30', 1, '2025-01-29', '2024-09-21 11:41:56', '2024-09-21 11:41:56'),
(215, 'Thursday', '09:00', '11:30', 1, '2025-01-30', '2024-09-21 11:41:56', '2024-09-21 11:41:56'),
(216, 'Thursday', '14:00', '16:30', 1, '2025-01-30', '2024-09-21 11:41:56', '2024-09-21 11:41:56'),
(217, 'Friday', '09:00', '11:30', 1, '2025-01-31', '2024-09-21 11:41:56', '2024-09-21 11:41:56'),
(218, 'Friday', '14:00', '16:30', 1, '2025-01-31', '2024-09-21 11:41:56', '2024-09-21 11:41:56'),
(219, 'Saturday', '09:00', '11:30', 1, '2025-02-01', '2024-09-21 11:41:56', '2024-09-21 11:41:56'),
(220, 'Saturday', '14:00', '16:30', 1, '2025-02-01', '2024-09-21 11:41:56', '2024-09-21 11:41:56'),
(221, 'Tuesday', '09:00', '11:30', 1, '2025-02-04', '2024-09-21 11:41:56', '2024-09-21 11:41:56'),
(222, 'Tuesday', '14:00', '16:30', 1, '2025-02-04', '2024-09-21 11:41:56', '2024-09-21 11:41:56'),
(223, 'Wednesday', '09:00', '11:30', 1, '2025-02-05', '2024-09-21 11:41:56', '2024-09-21 11:41:56'),
(224, 'Wednesday', '14:00', '16:30', 1, '2025-02-05', '2024-09-21 11:41:56', '2024-09-21 11:41:56'),
(225, 'Thursday', '09:00', '11:30', 1, '2025-02-06', '2024-09-21 11:41:56', '2024-09-21 11:41:56'),
(226, 'Thursday', '14:00', '16:30', 1, '2025-02-06', '2024-09-21 11:41:56', '2024-09-21 11:41:56'),
(227, 'Friday', '09:00', '11:30', 1, '2025-02-07', '2024-09-21 11:41:56', '2024-09-21 11:41:56'),
(228, 'Friday', '14:00', '16:30', 1, '2025-02-07', '2024-09-21 11:41:56', '2024-09-21 11:41:56'),
(229, 'Saturday', '09:00', '11:30', 1, '2025-02-08', '2024-09-21 11:41:56', '2024-09-21 11:41:56'),
(230, 'Saturday', '14:00', '16:30', 1, '2025-02-08', '2024-09-21 11:41:56', '2024-09-21 11:41:56'),
(231, 'Tuesday', '09:00', '11:30', 1, '2025-02-11', '2024-09-21 11:41:56', '2024-09-21 11:41:56'),
(232, 'Tuesday', '14:00', '16:30', 1, '2025-02-11', '2024-09-21 11:41:56', '2024-09-21 11:41:56'),
(233, 'Wednesday', '09:00', '11:30', 1, '2025-02-12', '2024-09-21 11:41:56', '2024-09-21 11:41:56'),
(234, 'Wednesday', '14:00', '16:30', 1, '2025-02-12', '2024-09-21 11:41:56', '2024-09-21 11:41:56'),
(235, 'Thursday', '09:00', '11:30', 1, '2025-02-13', '2024-09-21 11:41:56', '2024-09-21 11:41:56'),
(236, 'Thursday', '14:00', '16:30', 1, '2025-02-13', '2024-09-21 11:41:56', '2024-09-21 11:41:56'),
(237, 'Friday', '09:00', '11:30', 1, '2025-02-14', '2024-09-21 11:41:56', '2024-09-21 11:41:56'),
(238, 'Friday', '14:00', '16:30', 1, '2025-02-14', '2024-09-21 11:41:56', '2024-09-21 11:41:56'),
(239, 'Saturday', '09:00', '11:30', 1, '2025-02-15', '2024-09-21 11:41:56', '2024-09-21 11:41:56'),
(240, 'Saturday', '14:00', '16:30', 1, '2025-02-15', '2024-09-21 11:41:56', '2024-09-21 11:41:56'),
(241, 'Tuesday', '09:00', '11:30', 1, '2025-02-18', '2024-09-21 11:41:56', '2024-09-21 11:41:56'),
(242, 'Tuesday', '14:00', '16:30', 1, '2025-02-18', '2024-09-21 11:41:56', '2024-09-21 11:41:56'),
(243, 'Wednesday', '09:00', '11:30', 1, '2025-02-19', '2024-09-21 11:41:56', '2024-09-21 11:41:56'),
(244, 'Wednesday', '14:00', '16:30', 1, '2025-02-19', '2024-09-21 11:41:56', '2024-09-21 11:41:56'),
(245, 'Thursday', '09:00', '11:30', 1, '2025-02-20', '2024-09-21 11:41:56', '2024-09-21 11:41:56'),
(246, 'Thursday', '14:00', '16:30', 1, '2025-02-20', '2024-09-21 11:41:56', '2024-09-21 11:41:56'),
(247, 'Friday', '09:00', '11:30', 1, '2025-02-21', '2024-09-21 11:41:56', '2024-09-21 11:41:56'),
(248, 'Friday', '14:00', '16:30', 1, '2025-02-21', '2024-09-21 11:41:56', '2024-09-21 11:41:56'),
(249, 'Saturday', '09:00', '11:30', 1, '2025-02-22', '2024-09-21 11:41:56', '2024-09-21 11:41:56'),
(250, 'Saturday', '14:00', '16:30', 1, '2025-02-22', '2024-09-21 11:41:56', '2024-09-21 11:41:56'),
(251, 'Tuesday', '09:00', '11:30', 1, '2025-02-25', '2024-09-21 11:41:56', '2024-09-21 11:41:56'),
(252, 'Tuesday', '14:00', '16:30', 1, '2025-02-25', '2024-09-21 11:41:56', '2024-09-21 11:41:56'),
(253, 'Wednesday', '09:00', '11:30', 1, '2025-02-26', '2024-09-21 11:41:56', '2024-09-21 11:41:56'),
(254, 'Wednesday', '14:00', '16:30', 1, '2025-02-26', '2024-09-21 11:41:56', '2024-09-21 11:41:56'),
(255, 'Thursday', '09:00', '11:30', 1, '2025-02-27', '2024-09-21 11:41:56', '2024-09-21 11:41:56'),
(256, 'Thursday', '14:00', '16:30', 1, '2025-02-27', '2024-09-21 11:41:56', '2024-09-21 11:41:56'),
(257, 'Friday', '09:00', '11:30', 1, '2025-02-28', '2024-09-21 11:41:56', '2024-09-21 11:41:56'),
(258, 'Friday', '14:00', '16:30', 1, '2025-02-28', '2024-09-21 11:41:56', '2024-09-21 11:41:56'),
(259, 'Saturday', '09:00', '11:30', 1, '2025-03-01', '2024-09-21 11:41:56', '2024-09-21 11:41:56'),
(260, 'Saturday', '14:00', '16:30', 1, '2025-03-01', '2024-09-21 11:41:56', '2024-09-21 11:41:56'),
(261, 'Tuesday', '09:00', '11:30', 1, '2025-03-04', '2024-09-21 11:41:56', '2024-09-21 11:41:56'),
(262, 'Tuesday', '14:00', '16:30', 1, '2025-03-04', '2024-09-21 11:41:56', '2024-09-21 11:41:56'),
(263, 'Wednesday', '09:00', '11:30', 1, '2025-03-05', '2024-09-21 11:41:56', '2024-09-21 11:41:56'),
(264, 'Wednesday', '14:00', '16:30', 1, '2025-03-05', '2024-09-21 11:41:56', '2024-09-21 11:41:56'),
(265, 'Thursday', '09:00', '11:30', 1, '2025-03-06', '2024-09-21 11:41:56', '2024-09-21 11:41:56'),
(266, 'Thursday', '14:00', '16:30', 1, '2025-03-06', '2024-09-21 11:41:56', '2024-09-21 11:41:56'),
(267, 'Friday', '09:00', '11:30', 1, '2025-03-07', '2024-09-21 11:41:56', '2024-09-21 11:41:56'),
(268, 'Friday', '14:00', '16:30', 1, '2025-03-07', '2024-09-21 11:41:56', '2024-09-21 11:41:56'),
(269, 'Saturday', '09:00', '11:30', 1, '2025-03-08', '2024-09-21 11:41:56', '2024-09-21 11:41:56'),
(270, 'Saturday', '14:00', '16:30', 1, '2025-03-08', '2024-09-21 11:41:56', '2024-09-21 11:41:56'),
(271, 'Tuesday', '09:00', '11:30', 1, '2025-03-11', '2024-09-21 11:41:56', '2024-09-21 11:41:56'),
(272, 'Tuesday', '14:00', '16:30', 1, '2025-03-11', '2024-09-21 11:41:56', '2024-09-21 11:41:56'),
(273, 'Wednesday', '09:00', '11:30', 1, '2025-03-12', '2024-09-21 11:41:56', '2024-09-21 11:41:56'),
(274, 'Wednesday', '14:00', '16:30', 1, '2025-03-12', '2024-09-21 11:41:56', '2024-09-21 11:41:56'),
(275, 'Thursday', '09:00', '11:30', 1, '2025-03-13', '2024-09-21 11:41:56', '2024-09-21 11:41:56'),
(276, 'Thursday', '14:00', '16:30', 1, '2025-03-13', '2024-09-21 11:41:56', '2024-09-21 11:41:56'),
(277, 'Friday', '09:00', '11:30', 1, '2025-03-14', '2024-09-21 11:41:56', '2024-09-21 11:41:56'),
(278, 'Friday', '14:00', '16:30', 1, '2025-03-14', '2024-09-21 11:41:56', '2024-09-21 11:41:56'),
(279, 'Saturday', '09:00', '11:30', 1, '2025-03-15', '2024-09-21 11:41:56', '2024-09-21 11:41:56'),
(280, 'Saturday', '14:00', '16:30', 1, '2025-03-15', '2024-09-21 11:41:56', '2024-09-21 11:41:56'),
(281, 'Tuesday', '09:00', '11:30', 1, '2025-03-18', '2024-09-21 11:41:56', '2024-09-21 11:41:56'),
(282, 'Tuesday', '14:00', '16:30', 1, '2025-03-18', '2024-09-21 11:41:56', '2024-09-21 11:41:56'),
(283, 'Wednesday', '09:00', '11:30', 1, '2025-03-19', '2024-09-21 11:41:56', '2024-09-21 11:41:56'),
(284, 'Wednesday', '14:00', '16:30', 1, '2025-03-19', '2024-09-21 11:41:56', '2024-09-21 11:41:56'),
(285, 'Thursday', '09:00', '11:30', 1, '2025-03-20', '2024-09-21 11:41:56', '2024-09-21 11:41:56'),
(286, 'Thursday', '14:00', '16:30', 1, '2025-03-20', '2024-09-21 11:41:56', '2024-09-21 11:41:56'),
(287, 'Friday', '09:00', '11:30', 1, '2025-03-21', '2024-09-21 11:41:56', '2024-09-21 11:41:56'),
(288, 'Friday', '14:00', '16:30', 1, '2025-03-21', '2024-09-21 11:41:56', '2024-09-21 11:41:56'),
(289, 'Saturday', '09:00', '11:30', 1, '2025-03-22', '2024-09-21 11:41:56', '2024-09-21 11:41:56'),
(290, 'Saturday', '14:00', '16:30', 1, '2025-03-22', '2024-09-21 11:41:56', '2024-09-21 11:41:56'),
(291, 'Tuesday', '09:00', '11:30', 1, '2025-03-25', '2024-09-21 11:41:56', '2024-09-21 11:41:56'),
(292, 'Tuesday', '14:00', '16:30', 1, '2025-03-25', '2024-09-21 11:41:56', '2024-09-21 11:41:56'),
(293, 'Wednesday', '09:00', '11:30', 1, '2025-03-26', '2024-09-21 11:41:56', '2024-09-21 11:41:56'),
(294, 'Wednesday', '14:00', '16:30', 1, '2025-03-26', '2024-09-21 11:41:56', '2024-09-21 11:41:56'),
(295, 'Thursday', '09:00', '11:30', 1, '2025-03-27', '2024-09-21 11:41:56', '2024-09-21 11:41:56'),
(296, 'Thursday', '14:00', '16:30', 1, '2025-03-27', '2024-09-21 11:41:56', '2024-09-21 11:41:56'),
(297, 'Friday', '09:00', '11:30', 1, '2025-03-28', '2024-09-21 11:41:56', '2024-09-21 11:41:56'),
(298, 'Friday', '14:00', '16:30', 1, '2025-03-28', '2024-09-21 11:41:56', '2024-09-21 11:41:56'),
(299, 'Saturday', '09:00', '11:30', 1, '2025-03-29', '2024-09-21 11:41:56', '2024-09-21 11:41:56'),
(300, 'Saturday', '14:00', '16:30', 1, '2025-03-29', '2024-09-21 11:41:56', '2024-09-21 11:41:56'),
(301, 'Tuesday', '09:00', '11:30', 1, '2025-04-01', '2024-09-21 11:41:56', '2024-09-21 11:41:56'),
(302, 'Tuesday', '14:00', '16:30', 1, '2025-04-01', '2024-09-21 11:41:56', '2024-09-21 11:41:56'),
(303, 'Wednesday', '09:00', '11:30', 1, '2025-04-02', '2024-09-21 11:41:56', '2024-09-21 11:41:56'),
(304, 'Wednesday', '14:00', '16:30', 1, '2025-04-02', '2024-09-21 11:41:56', '2024-09-21 11:41:56'),
(305, 'Thursday', '09:00', '11:30', 1, '2025-04-03', '2024-09-21 11:41:56', '2024-09-21 11:41:56'),
(306, 'Thursday', '14:00', '16:30', 1, '2025-04-03', '2024-09-21 11:41:56', '2024-09-21 11:41:56'),
(307, 'Friday', '09:00', '11:30', 1, '2025-04-04', '2024-09-21 11:41:56', '2024-09-21 11:41:56'),
(308, 'Friday', '14:00', '16:30', 1, '2025-04-04', '2024-09-21 11:41:56', '2024-09-21 11:41:56'),
(309, 'Saturday', '09:00', '11:30', 1, '2025-04-05', '2024-09-21 11:41:56', '2024-09-21 11:41:56'),
(310, 'Saturday', '14:00', '16:30', 1, '2025-04-05', '2024-09-21 11:41:56', '2024-09-21 11:41:56'),
(311, 'Tuesday', '09:00', '11:30', 1, '2025-04-08', '2024-09-21 11:41:56', '2024-09-21 11:41:56'),
(312, 'Tuesday', '14:00', '16:30', 1, '2025-04-08', '2024-09-21 11:41:56', '2024-09-21 11:41:56'),
(313, 'Wednesday', '09:00', '11:30', 1, '2025-04-09', '2024-09-21 11:41:56', '2024-09-21 11:41:56'),
(314, 'Wednesday', '14:00', '16:30', 1, '2025-04-09', '2024-09-21 11:41:56', '2024-09-21 11:41:56'),
(315, 'Thursday', '09:00', '11:30', 1, '2025-04-10', '2024-09-21 11:41:56', '2024-09-21 11:41:56'),
(316, 'Thursday', '14:00', '16:30', 1, '2025-04-10', '2024-09-21 11:41:56', '2024-09-21 11:41:56'),
(317, 'Friday', '09:00', '11:30', 1, '2025-04-11', '2024-09-21 11:41:56', '2024-09-21 11:41:56'),
(318, 'Friday', '14:00', '16:30', 1, '2025-04-11', '2024-09-21 11:41:56', '2024-09-21 11:41:56'),
(319, 'Saturday', '09:00', '11:30', 1, '2025-04-12', '2024-09-21 11:41:56', '2024-09-21 11:41:56'),
(320, 'Saturday', '14:00', '16:30', 1, '2025-04-12', '2024-09-21 11:41:56', '2024-09-21 11:41:56'),
(321, 'Tuesday', '09:00', '11:30', 1, '2025-04-15', '2024-09-21 11:41:56', '2024-09-21 11:41:56'),
(322, 'Tuesday', '14:00', '16:30', 1, '2025-04-15', '2024-09-21 11:41:56', '2024-09-21 11:41:56'),
(323, 'Wednesday', '09:00', '11:30', 1, '2025-04-16', '2024-09-21 11:41:56', '2024-09-21 11:41:56'),
(324, 'Wednesday', '14:00', '16:30', 1, '2025-04-16', '2024-09-21 11:41:56', '2024-09-21 11:41:56'),
(325, 'Thursday', '09:00', '11:30', 1, '2025-04-17', '2024-09-21 11:41:56', '2024-09-21 11:41:56'),
(326, 'Thursday', '14:00', '16:30', 1, '2025-04-17', '2024-09-21 11:41:56', '2024-09-21 11:41:56'),
(327, 'Friday', '09:00', '11:30', 1, '2025-04-18', '2024-09-21 11:41:56', '2024-09-21 11:41:56'),
(328, 'Friday', '14:00', '16:30', 1, '2025-04-18', '2024-09-21 11:41:56', '2024-09-21 11:41:56'),
(329, 'Saturday', '09:00', '11:30', 1, '2025-04-19', '2024-09-21 11:41:56', '2024-09-21 11:41:56'),
(330, 'Saturday', '14:00', '16:30', 1, '2025-04-19', '2024-09-21 11:41:56', '2024-09-21 11:41:56'),
(331, 'Tuesday', '09:00', '11:30', 1, '2025-04-22', '2024-09-21 11:41:56', '2024-09-21 11:41:56'),
(332, 'Tuesday', '14:00', '16:30', 1, '2025-04-22', '2024-09-21 11:41:56', '2024-09-21 11:41:56'),
(333, 'Wednesday', '09:00', '11:30', 1, '2025-04-23', '2024-09-21 11:41:56', '2024-09-21 11:41:56'),
(334, 'Wednesday', '14:00', '16:30', 1, '2025-04-23', '2024-09-21 11:41:56', '2024-09-21 11:41:56'),
(335, 'Thursday', '09:00', '11:30', 1, '2025-04-24', '2024-09-21 11:41:56', '2024-09-21 11:41:56'),
(336, 'Thursday', '14:00', '16:30', 1, '2025-04-24', '2024-09-21 11:41:56', '2024-09-21 11:41:56'),
(337, 'Friday', '09:00', '11:30', 1, '2025-04-25', '2024-09-21 11:41:56', '2024-09-21 11:41:56'),
(338, 'Friday', '14:00', '16:30', 1, '2025-04-25', '2024-09-21 11:41:56', '2024-09-21 11:41:56'),
(339, 'Saturday', '09:00', '11:30', 1, '2025-04-26', '2024-09-21 11:41:56', '2024-09-21 11:41:56'),
(340, 'Saturday', '14:00', '16:30', 1, '2025-04-26', '2024-09-21 11:41:56', '2024-09-21 11:41:56'),
(341, 'Tuesday', '09:00', '11:30', 1, '2025-04-29', '2024-09-21 11:41:56', '2024-09-21 11:41:56'),
(342, 'Tuesday', '14:00', '16:30', 1, '2025-04-29', '2024-09-21 11:41:56', '2024-09-21 11:41:56'),
(343, 'Wednesday', '09:00', '11:30', 1, '2025-04-30', '2024-09-21 11:41:56', '2024-09-21 11:41:56'),
(344, 'Wednesday', '14:00', '16:30', 1, '2025-04-30', '2024-09-21 11:41:56', '2024-09-21 11:41:56'),
(345, 'Thursday', '09:00', '11:30', 1, '2025-05-01', '2024-09-21 11:41:56', '2024-09-21 11:41:56'),
(346, 'Thursday', '14:00', '16:30', 1, '2025-05-01', '2024-09-21 11:41:56', '2024-09-21 11:41:56'),
(347, 'Friday', '09:00', '11:30', 1, '2025-05-02', '2024-09-21 11:41:56', '2024-09-21 11:41:56'),
(348, 'Friday', '14:00', '16:30', 1, '2025-05-02', '2024-09-21 11:41:56', '2024-09-21 11:41:56'),
(349, 'Saturday', '09:00', '11:30', 1, '2025-05-03', '2024-09-21 11:41:56', '2024-09-21 11:41:56'),
(350, 'Saturday', '14:00', '16:30', 1, '2025-05-03', '2024-09-21 11:41:56', '2024-09-21 11:41:56'),
(351, 'Tuesday', '09:00', '11:30', 1, '2025-05-06', '2024-09-21 11:41:56', '2024-09-21 11:41:56'),
(352, 'Tuesday', '14:00', '16:30', 1, '2025-05-06', '2024-09-21 11:41:56', '2024-09-21 11:41:56'),
(353, 'Wednesday', '09:00', '11:30', 1, '2025-05-07', '2024-09-21 11:41:56', '2024-09-21 11:41:56'),
(354, 'Wednesday', '14:00', '16:30', 1, '2025-05-07', '2024-09-21 11:41:56', '2024-09-21 11:41:56'),
(355, 'Thursday', '09:00', '11:30', 1, '2025-05-08', '2024-09-21 11:41:56', '2024-09-21 11:41:56'),
(356, 'Thursday', '14:00', '16:30', 1, '2025-05-08', '2024-09-21 11:41:56', '2024-09-21 11:41:56'),
(357, 'Friday', '09:00', '11:30', 1, '2025-05-09', '2024-09-21 11:41:56', '2024-09-21 11:41:56'),
(358, 'Friday', '14:00', '16:30', 1, '2025-05-09', '2024-09-21 11:41:56', '2024-09-21 11:41:56'),
(359, 'Saturday', '09:00', '11:30', 1, '2025-05-10', '2024-09-21 11:41:56', '2024-09-21 11:41:56'),
(360, 'Saturday', '14:00', '16:30', 1, '2025-05-10', '2024-09-21 11:41:56', '2024-09-21 11:41:56'),
(361, 'Tuesday', '09:00', '11:30', 1, '2025-05-13', '2024-09-21 11:41:56', '2024-09-21 11:41:56'),
(362, 'Tuesday', '14:00', '16:30', 1, '2025-05-13', '2024-09-21 11:41:56', '2024-09-21 11:41:56'),
(363, 'Wednesday', '09:00', '11:30', 1, '2025-05-14', '2024-09-21 11:41:56', '2024-09-21 11:41:56'),
(364, 'Wednesday', '14:00', '16:30', 1, '2025-05-14', '2024-09-21 11:41:56', '2024-09-21 11:41:56'),
(365, 'Thursday', '09:00', '11:30', 1, '2025-05-15', '2024-09-21 11:41:56', '2024-09-21 11:41:56'),
(366, 'Thursday', '14:00', '16:30', 1, '2025-05-15', '2024-09-21 11:41:56', '2024-09-21 11:41:56'),
(367, 'Friday', '09:00', '11:30', 1, '2025-05-16', '2024-09-21 11:41:56', '2024-09-21 11:41:56'),
(368, 'Friday', '14:00', '16:30', 1, '2025-05-16', '2024-09-21 11:41:56', '2024-09-21 11:41:56'),
(369, 'Saturday', '09:00', '11:30', 1, '2025-05-17', '2024-09-21 11:41:56', '2024-09-21 11:41:56'),
(370, 'Saturday', '14:00', '16:30', 1, '2025-05-17', '2024-09-21 11:41:56', '2024-09-21 11:41:56'),
(371, 'Tuesday', '09:00', '11:30', 1, '2025-05-20', '2024-09-21 11:41:56', '2024-09-21 11:41:56'),
(372, 'Tuesday', '14:00', '16:30', 1, '2025-05-20', '2024-09-21 11:41:56', '2024-09-21 11:41:56'),
(373, 'Wednesday', '09:00', '11:30', 1, '2025-05-21', '2024-09-21 11:41:56', '2024-09-21 11:41:56'),
(374, 'Wednesday', '14:00', '16:30', 1, '2025-05-21', '2024-09-21 11:41:56', '2024-09-21 11:41:56'),
(375, 'Thursday', '09:00', '11:30', 1, '2025-05-22', '2024-09-21 11:41:56', '2024-09-21 11:41:56'),
(376, 'Thursday', '14:00', '16:30', 1, '2025-05-22', '2024-09-21 11:41:56', '2024-09-21 11:41:56'),
(377, 'Friday', '09:00', '11:30', 1, '2025-05-23', '2024-09-21 11:41:56', '2024-09-21 11:41:56'),
(378, 'Friday', '14:00', '16:30', 1, '2025-05-23', '2024-09-21 11:41:56', '2024-09-21 11:41:56'),
(379, 'Saturday', '09:00', '11:30', 1, '2025-05-24', '2024-09-21 11:41:56', '2024-09-21 11:41:56'),
(380, 'Saturday', '14:00', '16:30', 1, '2025-05-24', '2024-09-21 11:41:56', '2024-09-21 11:41:56'),
(381, 'Tuesday', '09:00', '11:30', 1, '2025-05-27', '2024-09-21 11:41:56', '2024-09-21 11:41:56'),
(382, 'Tuesday', '14:00', '16:30', 1, '2025-05-27', '2024-09-21 11:41:56', '2024-09-21 11:41:56'),
(383, 'Wednesday', '09:00', '11:30', 1, '2025-05-28', '2024-09-21 11:41:56', '2024-09-21 11:41:56'),
(384, 'Wednesday', '14:00', '16:30', 1, '2025-05-28', '2024-09-21 11:41:56', '2024-09-21 11:41:56'),
(385, 'Thursday', '09:00', '11:30', 1, '2025-05-29', '2024-09-21 11:41:56', '2024-09-21 11:41:56'),
(386, 'Thursday', '14:00', '16:30', 1, '2025-05-29', '2024-09-21 11:41:56', '2024-09-21 11:41:56'),
(387, 'Friday', '09:00', '11:30', 1, '2025-05-30', '2024-09-21 11:41:56', '2024-09-21 11:41:56'),
(388, 'Friday', '14:00', '16:30', 1, '2025-05-30', '2024-09-21 11:41:56', '2024-09-21 11:41:56'),
(389, 'Saturday', '09:00', '11:30', 1, '2025-05-31', '2024-09-21 11:41:56', '2024-09-21 11:41:56'),
(390, 'Saturday', '14:00', '16:30', 1, '2025-05-31', '2024-09-21 11:41:56', '2024-09-21 11:41:56'),
(391, 'Tuesday', '09:00', '11:30', 1, '2025-06-03', '2024-09-21 11:41:56', '2024-09-21 11:41:56'),
(392, 'Tuesday', '14:00', '16:30', 1, '2025-06-03', '2024-09-21 11:41:56', '2024-09-21 11:41:56'),
(393, 'Wednesday', '09:00', '11:30', 1, '2025-06-04', '2024-09-21 11:41:56', '2024-09-21 11:41:56'),
(394, 'Wednesday', '14:00', '16:30', 1, '2025-06-04', '2024-09-21 11:41:56', '2024-09-21 11:41:56'),
(395, 'Thursday', '09:00', '11:30', 1, '2025-06-05', '2024-09-21 11:41:56', '2024-09-21 11:41:56'),
(396, 'Thursday', '14:00', '16:30', 1, '2025-06-05', '2024-09-21 11:41:56', '2024-09-21 11:41:56'),
(397, 'Friday', '09:00', '11:30', 1, '2025-06-06', '2024-09-21 11:41:56', '2024-09-21 11:41:56'),
(398, 'Friday', '14:00', '16:30', 1, '2025-06-06', '2024-09-21 11:41:56', '2024-09-21 11:41:56'),
(399, 'Saturday', '09:00', '11:30', 1, '2025-06-07', '2024-09-21 11:41:56', '2024-09-21 11:41:56'),
(400, 'Saturday', '14:00', '16:30', 1, '2025-06-07', '2024-09-21 11:41:56', '2024-09-21 11:41:56'),
(401, 'Tuesday', '09:00', '11:30', 1, '2025-06-10', '2024-09-21 11:41:56', '2024-09-21 11:41:56'),
(402, 'Tuesday', '14:00', '16:30', 1, '2025-06-10', '2024-09-21 11:41:56', '2024-09-21 11:41:56'),
(403, 'Wednesday', '09:00', '11:30', 1, '2025-06-11', '2024-09-21 11:41:56', '2024-09-21 11:41:56'),
(404, 'Wednesday', '14:00', '16:30', 1, '2025-06-11', '2024-09-21 11:41:56', '2024-09-21 11:41:56'),
(405, 'Thursday', '09:00', '11:30', 1, '2025-06-12', '2024-09-21 11:41:56', '2024-09-21 11:41:56'),
(406, 'Thursday', '14:00', '16:30', 1, '2025-06-12', '2024-09-21 11:41:56', '2024-09-21 11:41:56'),
(407, 'Friday', '09:00', '11:30', 1, '2025-06-13', '2024-09-21 11:41:56', '2024-09-21 11:41:56'),
(408, 'Friday', '14:00', '16:30', 1, '2025-06-13', '2024-09-21 11:41:56', '2024-09-21 11:41:56'),
(409, 'Saturday', '09:00', '11:30', 1, '2025-06-14', '2024-09-21 11:41:56', '2024-09-21 11:41:56'),
(410, 'Saturday', '14:00', '16:30', 1, '2025-06-14', '2024-09-21 11:41:56', '2024-09-21 11:41:56'),
(411, 'Tuesday', '09:00', '11:30', 1, '2025-06-17', '2024-09-21 11:41:56', '2024-09-21 11:41:56'),
(412, 'Tuesday', '14:00', '16:30', 1, '2025-06-17', '2024-09-21 11:41:56', '2024-09-21 11:41:56'),
(413, 'Wednesday', '09:00', '11:30', 1, '2025-06-18', '2024-09-21 11:41:56', '2024-09-21 11:41:56'),
(414, 'Wednesday', '14:00', '16:30', 1, '2025-06-18', '2024-09-21 11:41:56', '2024-09-21 11:41:56'),
(415, 'Thursday', '09:00', '11:30', 1, '2025-06-19', '2024-09-21 11:41:56', '2024-09-21 11:41:56'),
(416, 'Thursday', '14:00', '16:30', 1, '2025-06-19', '2024-09-21 11:41:56', '2024-09-21 11:41:56'),
(417, 'Friday', '09:00', '11:30', 1, '2025-06-20', '2024-09-21 11:41:56', '2024-09-21 11:41:56'),
(418, 'Friday', '14:00', '16:30', 1, '2025-06-20', '2024-09-21 11:41:56', '2024-09-21 11:41:56'),
(419, 'Saturday', '09:00', '11:30', 1, '2025-06-21', '2024-09-21 11:41:56', '2024-09-21 11:41:56'),
(420, 'Saturday', '14:00', '16:30', 1, '2025-06-21', '2024-09-21 11:41:56', '2024-09-21 11:41:56'),
(421, 'Tuesday', '09:00', '11:30', 1, '2025-06-24', '2024-09-21 11:41:56', '2024-09-21 11:41:56'),
(422, 'Tuesday', '14:00', '16:30', 1, '2025-06-24', '2024-09-21 11:41:56', '2024-09-21 11:41:56'),
(423, 'Wednesday', '09:00', '11:30', 1, '2025-06-25', '2024-09-21 11:41:56', '2024-09-21 11:41:56'),
(424, 'Wednesday', '14:00', '16:30', 1, '2025-06-25', '2024-09-21 11:41:56', '2024-09-21 11:41:56'),
(425, 'Thursday', '09:00', '11:30', 1, '2025-06-26', '2024-09-21 11:41:56', '2024-09-21 11:41:56'),
(426, 'Thursday', '14:00', '16:30', 1, '2025-06-26', '2024-09-21 11:41:56', '2024-09-21 11:41:56'),
(427, 'Friday', '09:00', '11:30', 1, '2025-06-27', '2024-09-21 11:41:56', '2024-09-21 11:41:56'),
(428, 'Friday', '14:00', '16:30', 1, '2025-06-27', '2024-09-21 11:41:56', '2024-09-21 11:41:56'),
(429, 'Saturday', '09:00', '11:30', 1, '2025-06-28', '2024-09-21 11:41:56', '2024-09-21 11:41:56'),
(430, 'Saturday', '14:00', '16:30', 1, '2025-06-28', '2024-09-21 11:41:56', '2024-09-21 11:41:56'),
(431, 'Tuesday', '09:00', '11:30', 1, '2025-07-01', '2024-09-21 11:41:56', '2024-09-21 11:41:56'),
(432, 'Tuesday', '14:00', '16:30', 1, '2025-07-01', '2024-09-21 11:41:56', '2024-09-21 11:41:56'),
(433, 'Wednesday', '09:00', '11:30', 1, '2025-07-02', '2024-09-21 11:41:56', '2024-09-21 11:41:56'),
(434, 'Wednesday', '14:00', '16:30', 1, '2025-07-02', '2024-09-21 11:41:56', '2024-09-21 11:41:56'),
(435, 'Thursday', '09:00', '11:30', 1, '2025-07-03', '2024-09-21 11:41:56', '2024-09-21 11:41:56'),
(436, 'Thursday', '14:00', '16:30', 1, '2025-07-03', '2024-09-21 11:41:56', '2024-09-21 11:41:56'),
(437, 'Friday', '09:00', '11:30', 1, '2025-07-04', '2024-09-21 11:41:56', '2024-09-21 11:41:56'),
(438, 'Friday', '14:00', '16:30', 1, '2025-07-04', '2024-09-21 11:41:56', '2024-09-21 11:41:56'),
(439, 'Saturday', '09:00', '11:30', 1, '2025-07-05', '2024-09-21 11:41:56', '2024-09-21 11:41:56'),
(440, 'Saturday', '14:00', '16:30', 1, '2025-07-05', '2024-09-21 11:41:56', '2024-09-21 11:41:56'),
(441, 'Tuesday', '09:00', '11:30', 1, '2025-07-08', '2024-09-21 11:41:56', '2024-09-21 11:41:56'),
(442, 'Tuesday', '14:00', '16:30', 1, '2025-07-08', '2024-09-21 11:41:56', '2024-09-21 11:41:56'),
(443, 'Wednesday', '09:00', '11:30', 1, '2025-07-09', '2024-09-21 11:41:56', '2024-09-21 11:41:56'),
(444, 'Wednesday', '14:00', '16:30', 1, '2025-07-09', '2024-09-21 11:41:56', '2024-09-21 11:41:56'),
(445, 'Thursday', '09:00', '11:30', 1, '2025-07-10', '2024-09-21 11:41:56', '2024-09-21 11:41:56'),
(446, 'Thursday', '14:00', '16:30', 1, '2025-07-10', '2024-09-21 11:41:56', '2024-09-21 11:41:56'),
(447, 'Friday', '09:00', '11:30', 1, '2025-07-11', '2024-09-21 11:41:56', '2024-09-21 11:41:56'),
(448, 'Friday', '14:00', '16:30', 1, '2025-07-11', '2024-09-21 11:41:56', '2024-09-21 11:41:56'),
(449, 'Saturday', '09:00', '11:30', 1, '2025-07-12', '2024-09-21 11:41:56', '2024-09-21 11:41:56'),
(450, 'Saturday', '14:00', '16:30', 1, '2025-07-12', '2024-09-21 11:41:56', '2024-09-21 11:41:56'),
(451, 'Tuesday', '09:00', '11:30', 1, '2025-07-15', '2024-09-21 11:41:56', '2024-09-21 11:41:56'),
(452, 'Tuesday', '14:00', '16:30', 1, '2025-07-15', '2024-09-21 11:41:56', '2024-09-21 11:41:56'),
(453, 'Wednesday', '09:00', '11:30', 1, '2025-07-16', '2024-09-21 11:41:56', '2024-09-21 11:41:56'),
(454, 'Wednesday', '14:00', '16:30', 1, '2025-07-16', '2024-09-21 11:41:56', '2024-09-21 11:41:56'),
(455, 'Thursday', '09:00', '11:30', 1, '2025-07-17', '2024-09-21 11:41:56', '2024-09-21 11:41:56'),
(456, 'Thursday', '14:00', '16:30', 1, '2025-07-17', '2024-09-21 11:41:56', '2024-09-21 11:41:56'),
(457, 'Friday', '09:00', '11:30', 1, '2025-07-18', '2024-09-21 11:41:56', '2024-09-21 11:41:56'),
(458, 'Friday', '14:00', '16:30', 1, '2025-07-18', '2024-09-21 11:41:56', '2024-09-21 11:41:56'),
(459, 'Saturday', '09:00', '11:30', 1, '2025-07-19', '2024-09-21 11:41:56', '2024-09-21 11:41:56'),
(460, 'Saturday', '14:00', '16:30', 1, '2025-07-19', '2024-09-21 11:41:56', '2024-09-21 11:41:56'),
(461, 'Tuesday', '09:00', '11:30', 1, '2025-07-22', '2024-09-21 11:41:56', '2024-09-21 11:41:56'),
(462, 'Tuesday', '14:00', '16:30', 1, '2025-07-22', '2024-09-21 11:41:56', '2024-09-21 11:41:56'),
(463, 'Wednesday', '09:00', '11:30', 1, '2025-07-23', '2024-09-21 11:41:56', '2024-09-21 11:41:56'),
(464, 'Wednesday', '14:00', '16:30', 1, '2025-07-23', '2024-09-21 11:41:56', '2024-09-21 11:41:56'),
(465, 'Thursday', '09:00', '11:30', 1, '2025-07-24', '2024-09-21 11:41:56', '2024-09-21 11:41:56'),
(466, 'Thursday', '14:00', '16:30', 1, '2025-07-24', '2024-09-21 11:41:56', '2024-09-21 11:41:56'),
(467, 'Friday', '09:00', '11:30', 1, '2025-07-25', '2024-09-21 11:41:56', '2024-09-21 11:41:56'),
(468, 'Friday', '14:00', '16:30', 1, '2025-07-25', '2024-09-21 11:41:56', '2024-09-21 11:41:56'),
(469, 'Saturday', '09:00', '11:30', 1, '2025-07-26', '2024-09-21 11:41:56', '2024-09-21 11:41:56'),
(470, 'Saturday', '14:00', '16:30', 1, '2025-07-26', '2024-09-21 11:41:56', '2024-09-21 11:41:56'),
(471, 'Tuesday', '09:00', '11:30', 1, '2025-07-29', '2024-09-21 11:41:56', '2024-09-21 11:41:56'),
(472, 'Tuesday', '14:00', '16:30', 1, '2025-07-29', '2024-09-21 11:41:56', '2024-09-21 11:41:56'),
(473, 'Wednesday', '09:00', '11:30', 1, '2025-07-30', '2024-09-21 11:41:56', '2024-09-21 11:41:56'),
(474, 'Wednesday', '14:00', '16:30', 1, '2025-07-30', '2024-09-21 11:41:56', '2024-09-21 11:41:56'),
(475, 'Thursday', '09:00', '11:30', 1, '2025-07-31', '2024-09-21 11:41:56', '2024-09-21 11:41:56'),
(476, 'Thursday', '14:00', '16:30', 1, '2025-07-31', '2024-09-21 11:41:56', '2024-09-21 11:41:56'),
(477, 'Friday', '09:00', '11:30', 1, '2025-08-01', '2024-09-21 11:41:56', '2024-09-21 11:41:56'),
(478, 'Friday', '14:00', '16:30', 1, '2025-08-01', '2024-09-21 11:41:56', '2024-09-21 11:41:56'),
(479, 'Saturday', '09:00', '11:30', 1, '2025-08-02', '2024-09-21 11:41:56', '2024-09-21 11:41:56'),
(480, 'Saturday', '14:00', '16:30', 1, '2025-08-02', '2024-09-21 11:41:56', '2024-09-21 11:41:56'),
(481, 'Tuesday', '09:00', '11:30', 1, '2025-08-05', '2024-09-21 11:41:56', '2024-09-21 11:41:56'),
(482, 'Tuesday', '14:00', '16:30', 1, '2025-08-05', '2024-09-21 11:41:56', '2024-09-21 11:41:56'),
(483, 'Wednesday', '09:00', '11:30', 1, '2025-08-06', '2024-09-21 11:41:56', '2024-09-21 11:41:56'),
(484, 'Wednesday', '14:00', '16:30', 1, '2025-08-06', '2024-09-21 11:41:56', '2024-09-21 11:41:56'),
(485, 'Thursday', '09:00', '11:30', 1, '2025-08-07', '2024-09-21 11:41:56', '2024-09-21 11:41:56'),
(486, 'Thursday', '14:00', '16:30', 1, '2025-08-07', '2024-09-21 11:41:56', '2024-09-21 11:41:56'),
(487, 'Friday', '09:00', '11:30', 1, '2025-08-08', '2024-09-21 11:41:56', '2024-09-21 11:41:56'),
(488, 'Friday', '14:00', '16:30', 1, '2025-08-08', '2024-09-21 11:41:56', '2024-09-21 11:41:56'),
(489, 'Saturday', '09:00', '11:30', 1, '2025-08-09', '2024-09-21 11:41:56', '2024-09-21 11:41:56'),
(490, 'Saturday', '14:00', '16:30', 1, '2025-08-09', '2024-09-21 11:41:56', '2024-09-21 11:41:56'),
(491, 'Tuesday', '09:00', '11:30', 1, '2025-08-12', '2024-09-21 11:41:56', '2024-09-21 11:41:56'),
(492, 'Tuesday', '14:00', '16:30', 1, '2025-08-12', '2024-09-21 11:41:56', '2024-09-21 11:41:56'),
(493, 'Wednesday', '09:00', '11:30', 1, '2025-08-13', '2024-09-21 11:41:56', '2024-09-21 11:41:56'),
(494, 'Wednesday', '14:00', '16:30', 1, '2025-08-13', '2024-09-21 11:41:56', '2024-09-21 11:41:56'),
(495, 'Thursday', '09:00', '11:30', 1, '2025-08-14', '2024-09-21 11:41:56', '2024-09-21 11:41:56'),
(496, 'Thursday', '14:00', '16:30', 1, '2025-08-14', '2024-09-21 11:41:56', '2024-09-21 11:41:56'),
(497, 'Friday', '09:00', '11:30', 1, '2025-08-15', '2024-09-21 11:41:56', '2024-09-21 11:41:56'),
(498, 'Friday', '14:00', '16:30', 1, '2025-08-15', '2024-09-21 11:41:56', '2024-09-21 11:41:56'),
(499, 'Saturday', '09:00', '11:30', 1, '2025-08-16', '2024-09-21 11:41:56', '2024-09-21 11:41:56'),
(500, 'Saturday', '14:00', '16:30', 1, '2025-08-16', '2024-09-21 11:41:56', '2024-09-21 11:41:56'),
(501, 'Tuesday', '09:00', '11:30', 1, '2025-08-19', '2024-09-21 11:41:56', '2024-09-21 11:41:56'),
(502, 'Tuesday', '14:00', '16:30', 1, '2025-08-19', '2024-09-21 11:41:56', '2024-09-21 11:41:56'),
(503, 'Wednesday', '09:00', '11:30', 1, '2025-08-20', '2024-09-21 11:41:56', '2024-09-21 11:41:56'),
(504, 'Wednesday', '14:00', '16:30', 1, '2025-08-20', '2024-09-21 11:41:56', '2024-09-21 11:41:56'),
(505, 'Thursday', '09:00', '11:30', 1, '2025-08-21', '2024-09-21 11:41:56', '2024-09-21 11:41:56'),
(506, 'Thursday', '14:00', '16:30', 1, '2025-08-21', '2024-09-21 11:41:56', '2024-09-21 11:41:56'),
(507, 'Friday', '09:00', '11:30', 1, '2025-08-22', '2024-09-21 11:41:56', '2024-09-21 11:41:56'),
(508, 'Friday', '14:00', '16:30', 1, '2025-08-22', '2024-09-21 11:41:56', '2024-09-21 11:41:56'),
(509, 'Saturday', '09:00', '11:30', 1, '2025-08-23', '2024-09-21 11:41:56', '2024-09-21 11:41:56'),
(510, 'Saturday', '14:00', '16:30', 1, '2025-08-23', '2024-09-21 11:41:56', '2024-09-21 11:41:56'),
(511, 'Tuesday', '09:00', '11:30', 1, '2025-08-26', '2024-09-21 11:41:56', '2024-09-21 11:41:56'),
(512, 'Tuesday', '14:00', '16:30', 1, '2025-08-26', '2024-09-21 11:41:56', '2024-09-21 11:41:56');
INSERT INTO `slots_rts` (`id`, `day`, `start_time`, `end_time`, `is_available`, `date`, `created_at`, `updated_at`) VALUES
(513, 'Wednesday', '09:00', '11:30', 1, '2025-08-27', '2024-09-21 11:41:56', '2024-09-21 11:41:56'),
(514, 'Wednesday', '14:00', '16:30', 1, '2025-08-27', '2024-09-21 11:41:56', '2024-09-21 11:41:56'),
(515, 'Thursday', '09:00', '11:30', 1, '2025-08-28', '2024-09-21 11:41:56', '2024-09-21 11:41:56'),
(516, 'Thursday', '14:00', '16:30', 1, '2025-08-28', '2024-09-21 11:41:56', '2024-09-21 11:41:56'),
(517, 'Friday', '09:00', '11:30', 1, '2025-08-29', '2024-09-21 11:41:56', '2024-09-21 11:41:56'),
(518, 'Friday', '14:00', '16:30', 1, '2025-08-29', '2024-09-21 11:41:56', '2024-09-21 11:41:56'),
(519, 'Saturday', '09:00', '11:30', 1, '2025-08-30', '2024-09-21 11:41:56', '2024-09-21 11:41:56'),
(520, 'Saturday', '14:00', '16:30', 1, '2025-08-30', '2024-09-21 11:41:56', '2024-09-21 11:41:56');

-- --------------------------------------------------------

--
-- Table structure for table `therapist_infos`
--

CREATE TABLE `therapist_infos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `therapist_infos`
--

INSERT INTO `therapist_infos` (`id`, `username`, `email`, `email_verified_at`, `password`, `name`, `created_at`, `updated_at`) VALUES
(1, 'therapist1', 'therapist@gmail.com', NULL, '$2y$12$9SeuwxGBmDAG5bF07eblJOx9xkCjSxbBWs0lPItekzBw2Rs3x.Ti2', 'Pn. Nazihah', NULL, '2024-06-26 09:07:23'),
(2, 'therapist2', 'therapist2@gmail.com', NULL, '$2y$12$O8IYSJDIllLOTofyy/8bseJNGgN3kROOiutsQfm7EUcFfM.D.soxu', 'En. Maimunah', NULL, '2024-06-26 09:07:24'),
(3, 'therapist3', 'therapist3@gmail.com', NULL, '$2y$12$0THJi5kqosAAAZ4yhdcYCOMPkdyyCb32VaSIAWR7cJwS7o/lEYqhO', 'Pn. Khadijah', NULL, '2024-06-26 09:07:24');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_infos`
--
ALTER TABLE `admin_infos`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admin_infos_email_unique` (`email`);

--
-- Indexes for table `announcements`
--
ALTER TABLE `announcements`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `child_infos`
--
ALTER TABLE `child_infos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `child_infos_package_id_foreign` (`package_id`);

--
-- Indexes for table `child_schedules`
--
ALTER TABLE `child_schedules`
  ADD PRIMARY KEY (`id`),
  ADD KEY `child_schedules_child_id_foreign` (`child_id`);

--
-- Indexes for table `cs_infos`
--
ALTER TABLE `cs_infos`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `cs_infos_email_unique` (`email`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `father_infos`
--
ALTER TABLE `father_infos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `father_infos_child_id_foreign` (`child_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mother_infos`
--
ALTER TABLE `mother_infos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `mother_infos_child_id_foreign` (`child_id`);

--
-- Indexes for table `packages`
--
ALTER TABLE `packages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `parents_permission`
--
ALTER TABLE `parents_permission`
  ADD PRIMARY KEY (`id`),
  ADD KEY `parents_permission_child_id_foreign` (`child_id`);

--
-- Indexes for table `parent_accounts`
--
ALTER TABLE `parent_accounts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `parent_accounts_email_unique` (`email`),
  ADD KEY `parent_accounts_child_id_foreign` (`child_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `payments_payment_id_unique` (`payment_id`),
  ADD KEY `payments_child_id_foreign` (`child_id`),
  ADD KEY `payments_parent_id_foreign` (`parent_id`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `session_reports`
--
ALTER TABLE `session_reports`
  ADD PRIMARY KEY (`id`),
  ADD KEY `session_reports_schedules_id_foreign` (`schedules_id`);

--
-- Indexes for table `slots`
--
ALTER TABLE `slots`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `slots_rts`
--
ALTER TABLE `slots_rts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `therapist_infos`
--
ALTER TABLE `therapist_infos`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `therapist_infos_email_unique` (`email`);

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
-- AUTO_INCREMENT for table `admin_infos`
--
ALTER TABLE `admin_infos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `announcements`
--
ALTER TABLE `announcements`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `child_infos`
--
ALTER TABLE `child_infos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `child_schedules`
--
ALTER TABLE `child_schedules`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=301;

--
-- AUTO_INCREMENT for table `cs_infos`
--
ALTER TABLE `cs_infos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `father_infos`
--
ALTER TABLE `father_infos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `mother_infos`
--
ALTER TABLE `mother_infos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `packages`
--
ALTER TABLE `packages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `parents_permission`
--
ALTER TABLE `parents_permission`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `parent_accounts`
--
ALTER TABLE `parent_accounts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `session_reports`
--
ALTER TABLE `session_reports`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `slots`
--
ALTER TABLE `slots`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT for table `slots_rts`
--
ALTER TABLE `slots_rts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=521;

--
-- AUTO_INCREMENT for table `therapist_infos`
--
ALTER TABLE `therapist_infos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `child_infos`
--
ALTER TABLE `child_infos`
  ADD CONSTRAINT `child_infos_package_id_foreign` FOREIGN KEY (`package_id`) REFERENCES `packages` (`id`);

--
-- Constraints for table `child_schedules`
--
ALTER TABLE `child_schedules`
  ADD CONSTRAINT `child_schedules_child_id_foreign` FOREIGN KEY (`child_id`) REFERENCES `child_infos` (`id`);

--
-- Constraints for table `father_infos`
--
ALTER TABLE `father_infos`
  ADD CONSTRAINT `father_infos_child_id_foreign` FOREIGN KEY (`child_id`) REFERENCES `child_infos` (`id`);

--
-- Constraints for table `mother_infos`
--
ALTER TABLE `mother_infos`
  ADD CONSTRAINT `mother_infos_child_id_foreign` FOREIGN KEY (`child_id`) REFERENCES `child_infos` (`id`);

--
-- Constraints for table `parents_permission`
--
ALTER TABLE `parents_permission`
  ADD CONSTRAINT `parents_permission_child_id_foreign` FOREIGN KEY (`child_id`) REFERENCES `child_infos` (`id`);

--
-- Constraints for table `parent_accounts`
--
ALTER TABLE `parent_accounts`
  ADD CONSTRAINT `parent_accounts_child_id_foreign` FOREIGN KEY (`child_id`) REFERENCES `child_infos` (`id`);

--
-- Constraints for table `payments`
--
ALTER TABLE `payments`
  ADD CONSTRAINT `payments_child_id_foreign` FOREIGN KEY (`child_id`) REFERENCES `child_infos` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `payments_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `parent_accounts` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `session_reports`
--
ALTER TABLE `session_reports`
  ADD CONSTRAINT `session_reports_schedules_id_foreign` FOREIGN KEY (`schedules_id`) REFERENCES `child_schedules` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
