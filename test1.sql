-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th5 24, 2023 lúc 03:06 PM
-- Phiên bản máy phục vụ: 10.4.27-MariaDB
-- Phiên bản PHP: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `test1`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `admin_menu`
--

CREATE TABLE `admin_menu` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(11) NOT NULL DEFAULT 0,
  `order` int(11) NOT NULL DEFAULT 0,
  `title` varchar(50) NOT NULL,
  `icon` varchar(50) NOT NULL,
  `uri` varchar(255) DEFAULT NULL,
  `permission` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `admin_menu`
--

INSERT INTO `admin_menu` (`id`, `parent_id`, `order`, `title`, `icon`, `uri`, `permission`, `created_at`, `updated_at`) VALUES
(1, 0, 1, 'Dashboard', 'fa-bar-chart', '/', NULL, NULL, NULL),
(2, 0, 2, 'Admin', 'fa-tasks', '', NULL, NULL, NULL),
(3, 2, 3, 'Users', 'fa-users', 'auth/users', NULL, NULL, NULL),
(4, 2, 4, 'Roles', 'fa-user', 'auth/roles', NULL, NULL, NULL),
(5, 2, 5, 'Permission', 'fa-ban', 'auth/permissions', NULL, NULL, NULL),
(6, 2, 6, 'Menu', 'fa-bars', 'auth/menu', NULL, NULL, NULL),
(7, 2, 7, 'Operation log', 'fa-history', 'auth/logs', NULL, NULL, NULL),
(8, 0, 0, 'Category', 'fa-certificate', '/categories', '*', '2023-03-21 05:47:16', '2023-03-21 05:47:16'),
(10, 0, 0, 'Product', 'fa-product-hunt', '/products', '*', '2023-03-21 05:49:01', '2023-03-21 05:49:01'),
(11, 0, 0, 'User', 'fa-users', '/users', '*', '2023-03-21 05:49:42', '2023-03-21 05:49:42');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `admin_operation_log`
--

CREATE TABLE `admin_operation_log` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `path` varchar(255) NOT NULL,
  `method` varchar(10) NOT NULL,
  `ip` varchar(255) NOT NULL,
  `input` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `admin_operation_log`
--

INSERT INTO `admin_operation_log` (`id`, `user_id`, `path`, `method`, `ip`, `input`, `created_at`, `updated_at`) VALUES
(1, 1, 'admin', 'GET', '127.0.0.1', '[]', '2023-03-21 05:45:06', '2023-03-21 05:45:06'),
(2, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-03-21 05:45:15', '2023-03-21 05:45:15'),
(3, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"Category\",\"icon\":\"fa-certificate\",\"uri\":\"\\/categories\",\"roles\":[\"1\",null],\"permission\":\"*\",\"_token\":\"JpgwbI2ERiDUzLg7MFXrXqoJgoi8KmIcfEewvhzS\"}', '2023-03-21 05:47:16', '2023-03-21 05:47:16'),
(4, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2023-03-21 05:47:16', '2023-03-21 05:47:16'),
(5, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-03-21 05:47:24', '2023-03-21 05:47:24'),
(6, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"Product\",\"icon\":\"product\",\"uri\":null,\"roles\":[null],\"permission\":null,\"_token\":\"JpgwbI2ERiDUzLg7MFXrXqoJgoi8KmIcfEewvhzS\"}', '2023-03-21 05:48:09', '2023-03-21 05:48:09'),
(7, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2023-03-21 05:48:10', '2023-03-21 05:48:10'),
(8, 1, 'admin/auth/menu/9', 'DELETE', '127.0.0.1', '{\"_method\":\"delete\",\"_token\":\"JpgwbI2ERiDUzLg7MFXrXqoJgoi8KmIcfEewvhzS\"}', '2023-03-21 05:48:25', '2023-03-21 05:48:25'),
(9, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-03-21 05:48:25', '2023-03-21 05:48:25'),
(10, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-03-21 05:48:30', '2023-03-21 05:48:30'),
(11, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"Product\",\"icon\":\"fa-product-hunt\",\"uri\":\"\\/products\",\"roles\":[\"1\",null],\"permission\":\"*\",\"_token\":\"JpgwbI2ERiDUzLg7MFXrXqoJgoi8KmIcfEewvhzS\"}', '2023-03-21 05:49:00', '2023-03-21 05:49:00'),
(12, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2023-03-21 05:49:01', '2023-03-21 05:49:01'),
(13, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-03-21 05:49:05', '2023-03-21 05:49:05'),
(14, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"User\",\"icon\":\"fa-users\",\"uri\":\"\\/users\",\"roles\":[\"1\",null],\"permission\":\"*\",\"_token\":\"JpgwbI2ERiDUzLg7MFXrXqoJgoi8KmIcfEewvhzS\"}', '2023-03-21 05:49:42', '2023-03-21 05:49:42'),
(15, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2023-03-21 05:49:42', '2023-03-21 05:49:42'),
(16, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2023-03-21 05:49:47', '2023-03-21 05:49:47'),
(17, 1, 'admin/categories', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-03-21 05:49:52', '2023-03-21 05:49:52'),
(18, 1, 'admin/categories/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-03-21 05:49:55', '2023-03-21 05:49:55'),
(19, 1, 'admin/categories', 'POST', '127.0.0.1', '{\"name\":\"iPhone\",\"_token\":\"JpgwbI2ERiDUzLg7MFXrXqoJgoi8KmIcfEewvhzS\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/categories\"}', '2023-03-21 05:50:02', '2023-03-21 05:50:02'),
(20, 1, 'admin/categories', 'GET', '127.0.0.1', '[]', '2023-03-21 05:50:02', '2023-03-21 05:50:02'),
(21, 1, 'admin/categories/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-03-21 05:50:04', '2023-03-21 05:50:04'),
(22, 1, 'admin/categories', 'POST', '127.0.0.1', '{\"name\":\"iPad\",\"_token\":\"JpgwbI2ERiDUzLg7MFXrXqoJgoi8KmIcfEewvhzS\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/categories\"}', '2023-03-21 05:50:08', '2023-03-21 05:50:08'),
(23, 1, 'admin/categories', 'GET', '127.0.0.1', '[]', '2023-03-21 05:50:09', '2023-03-21 05:50:09'),
(24, 1, 'admin/categories/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-03-21 05:50:12', '2023-03-21 05:50:12'),
(25, 1, 'admin/categories', 'POST', '127.0.0.1', '{\"name\":\"Macbook\",\"_token\":\"JpgwbI2ERiDUzLg7MFXrXqoJgoi8KmIcfEewvhzS\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/categories\"}', '2023-03-21 05:50:18', '2023-03-21 05:50:18'),
(26, 1, 'admin/categories', 'GET', '127.0.0.1', '[]', '2023-03-21 05:50:19', '2023-03-21 05:50:19'),
(27, 1, 'admin/categories/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-03-21 05:50:21', '2023-03-21 05:50:21'),
(28, 1, 'admin/categories', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-03-21 05:50:31', '2023-03-21 05:50:31'),
(29, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-03-21 05:50:34', '2023-03-21 05:50:34'),
(30, 1, 'admin/products/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-03-21 05:50:36', '2023-03-21 05:50:36'),
(31, 1, 'admin/products', 'POST', '127.0.0.1', '{\"name\":\"iPhone 13\",\"price\":\"2729000\",\"quantity\":\"3\",\"status\":\"off\",\"category_id\":\"1\",\"_token\":\"JpgwbI2ERiDUzLg7MFXrXqoJgoi8KmIcfEewvhzS\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/products\"}', '2023-03-21 05:51:05', '2023-03-21 05:51:05'),
(32, 1, 'admin/products/create', 'GET', '127.0.0.1', '[]', '2023-03-21 05:51:06', '2023-03-21 05:51:06'),
(33, 1, 'admin/products', 'POST', '127.0.0.1', '{\"name\":\"iPhone 13\",\"price\":\"100\",\"quantity\":\"3\",\"status\":\"off\",\"category_id\":\"1\",\"_token\":\"JpgwbI2ERiDUzLg7MFXrXqoJgoi8KmIcfEewvhzS\"}', '2023-03-21 05:51:41', '2023-03-21 05:51:41'),
(34, 1, 'admin/products/create', 'GET', '127.0.0.1', '[]', '2023-03-21 05:51:42', '2023-03-21 05:51:42'),
(35, 1, 'admin/products', 'POST', '127.0.0.1', '{\"name\":\"iPhone 13\",\"price\":\"100\",\"quantity\":\"3\",\"status\":\"off\",\"category_id\":\"1\",\"_token\":\"JpgwbI2ERiDUzLg7MFXrXqoJgoi8KmIcfEewvhzS\"}', '2023-03-21 05:51:57', '2023-03-21 05:51:57'),
(36, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2023-03-21 05:51:57', '2023-03-21 05:51:57'),
(37, 1, 'admin/products/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-03-21 05:56:41', '2023-03-21 05:56:41'),
(38, 1, 'admin/products', 'POST', '127.0.0.1', '{\"name\":\"iphone 12\",\"price\":\"2000\",\"quantity\":\"4\",\"status\":\"off\",\"category_id\":\"1\",\"_token\":\"JpgwbI2ERiDUzLg7MFXrXqoJgoi8KmIcfEewvhzS\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/products\"}', '2023-03-21 05:57:18', '2023-03-21 05:57:18'),
(39, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2023-03-21 05:57:18', '2023-03-21 05:57:18'),
(40, 1, 'admin/products/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-03-21 05:57:24', '2023-03-21 05:57:24'),
(41, 1, 'admin/products', 'POST', '127.0.0.1', '{\"name\":\"iphone 14\",\"price\":\"3000\",\"quantity\":\"4\",\"status\":\"off\",\"category_id\":\"1\",\"_token\":\"JpgwbI2ERiDUzLg7MFXrXqoJgoi8KmIcfEewvhzS\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/products\"}', '2023-03-21 05:57:57', '2023-03-21 05:57:57'),
(42, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2023-03-21 05:57:58', '2023-03-21 05:57:58'),
(43, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2023-03-21 06:06:40', '2023-03-21 06:06:40'),
(44, 1, 'admin/products/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-03-21 06:06:50', '2023-03-21 06:06:50'),
(45, 1, 'admin/products', 'POST', '127.0.0.1', '{\"name\":\"iphone\",\"price\":\"100\",\"quantity\":null,\"status\":\"off\",\"category_id\":\"3\",\"_token\":\"JpgwbI2ERiDUzLg7MFXrXqoJgoi8KmIcfEewvhzS\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/products\"}', '2023-03-21 06:07:52', '2023-03-21 06:07:52'),
(46, 1, 'admin/products/create', 'GET', '127.0.0.1', '[]', '2023-03-21 06:07:54', '2023-03-21 06:07:54'),
(47, 1, 'admin/products', 'POST', '127.0.0.1', '{\"name\":\"iphone\",\"price\":\"100\",\"quantity\":\"0\",\"status\":\"off\",\"category_id\":\"3\",\"_token\":\"JpgwbI2ERiDUzLg7MFXrXqoJgoi8KmIcfEewvhzS\"}', '2023-03-21 06:08:04', '2023-03-21 06:08:04'),
(48, 1, 'admin/products/create', 'GET', '127.0.0.1', '[]', '2023-03-21 06:08:05', '2023-03-21 06:08:05'),
(49, 1, 'admin/products', 'POST', '127.0.0.1', '{\"name\":\"iphone\",\"price\":\"100\",\"quantity\":\"0\",\"status\":\"off\",\"category_id\":\"3\",\"_token\":\"JpgwbI2ERiDUzLg7MFXrXqoJgoi8KmIcfEewvhzS\"}', '2023-03-21 06:08:16', '2023-03-21 06:08:16'),
(50, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2023-03-21 06:08:16', '2023-03-21 06:08:16'),
(51, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2023-03-21 06:17:11', '2023-03-21 06:17:11'),
(52, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2023-03-21 06:18:38', '2023-03-21 06:18:38'),
(53, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2023-03-21 06:27:28', '2023-03-21 06:27:28'),
(54, 1, 'admin', 'GET', '127.0.0.1', '[]', '2023-03-21 06:27:46', '2023-03-21 06:27:46'),
(55, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-03-21 06:27:50', '2023-03-21 06:27:50'),
(56, 1, 'admin/products/4/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-03-21 06:27:58', '2023-03-21 06:27:58'),
(57, 1, 'admin/categories', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-03-21 06:30:01', '2023-03-21 06:30:01'),
(58, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-03-21 06:30:02', '2023-03-21 06:30:02'),
(59, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2023-03-21 06:30:17', '2023-03-21 06:30:17'),
(60, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2023-03-21 06:30:27', '2023-03-21 06:30:27'),
(61, 1, 'admin/products/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-03-21 06:30:31', '2023-03-21 06:30:31'),
(62, 1, 'admin/products', 'POST', '127.0.0.1', '{\"name\":\"iphone\",\"price\":\"12\",\"quantity\":\"3\",\"status\":\"off\",\"category_id\":\"1\",\"_token\":\"JpgwbI2ERiDUzLg7MFXrXqoJgoi8KmIcfEewvhzS\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/products\"}', '2023-03-21 06:30:51', '2023-03-21 06:30:51'),
(63, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2023-03-21 06:30:52', '2023-03-21 06:30:52'),
(64, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2023-03-21 06:31:04', '2023-03-21 06:31:04'),
(65, 1, 'admin/products/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-03-21 06:31:07', '2023-03-21 06:31:07'),
(66, 1, 'admin/products', 'POST', '127.0.0.1', '{\"name\":\"ssd\",\"price\":\"22\",\"quantity\":\"2\",\"status\":\"off\",\"category_id\":\"1\",\"_token\":\"JpgwbI2ERiDUzLg7MFXrXqoJgoi8KmIcfEewvhzS\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/products\"}', '2023-03-21 06:31:37', '2023-03-21 06:31:37'),
(67, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2023-03-21 06:31:38', '2023-03-21 06:31:38'),
(68, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2023-03-21 06:32:07', '2023-03-21 06:32:07'),
(69, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2023-03-21 06:32:24', '2023-03-21 06:32:24'),
(70, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2023-03-21 06:32:35', '2023-03-21 06:32:35'),
(71, 1, 'admin/products/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-03-21 06:34:02', '2023-03-21 06:34:02'),
(72, 1, 'admin/products', 'POST', '127.0.0.1', '{\"name\":\"mac\",\"price\":\"22\",\"quantity\":\"4\",\"status\":\"off\",\"category_id\":\"1\",\"_token\":\"JpgwbI2ERiDUzLg7MFXrXqoJgoi8KmIcfEewvhzS\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/products\"}', '2023-03-21 06:36:06', '2023-03-21 06:36:06'),
(73, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2023-03-21 06:36:06', '2023-03-21 06:36:06'),
(74, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2023-03-21 06:36:11', '2023-03-21 06:36:11'),
(75, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2023-03-21 06:38:09', '2023-03-21 06:38:09'),
(76, 1, 'admin/products/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-03-21 06:38:15', '2023-03-21 06:38:15'),
(77, 1, 'admin/products', 'POST', '127.0.0.1', '{\"name\":\"mac\",\"price\":\"12\",\"quantity\":\"7\",\"status\":\"off\",\"category_id\":\"3\",\"_token\":\"JpgwbI2ERiDUzLg7MFXrXqoJgoi8KmIcfEewvhzS\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/products\"}', '2023-03-21 06:39:12', '2023-03-21 06:39:12'),
(78, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2023-03-21 06:39:13', '2023-03-21 06:39:13'),
(79, 1, 'admin/_handle_action_', 'POST', '127.0.0.1', '{\"_key\":\"1\",\"_model\":\"App_Models_Product\",\"_token\":\"JpgwbI2ERiDUzLg7MFXrXqoJgoi8KmIcfEewvhzS\",\"_action\":\"Encore_Admin_Grid_Actions_Delete\",\"_input\":\"true\"}', '2023-03-21 06:40:44', '2023-03-21 06:40:44'),
(80, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-03-21 06:40:44', '2023-03-21 06:40:44'),
(81, 1, 'admin/_handle_action_', 'POST', '127.0.0.1', '{\"_key\":\"2\",\"_model\":\"App_Models_Product\",\"_token\":\"JpgwbI2ERiDUzLg7MFXrXqoJgoi8KmIcfEewvhzS\",\"_action\":\"Encore_Admin_Grid_Actions_Delete\",\"_input\":\"true\"}', '2023-03-21 06:40:54', '2023-03-21 06:40:54'),
(82, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-03-21 06:40:54', '2023-03-21 06:40:54'),
(83, 1, 'admin/_handle_action_', 'POST', '127.0.0.1', '{\"_key\":\"3\",\"_model\":\"App_Models_Product\",\"_token\":\"JpgwbI2ERiDUzLg7MFXrXqoJgoi8KmIcfEewvhzS\",\"_action\":\"Encore_Admin_Grid_Actions_Delete\",\"_input\":\"true\"}', '2023-03-21 06:41:03', '2023-03-21 06:41:03'),
(84, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-03-21 06:41:04', '2023-03-21 06:41:04'),
(85, 1, 'admin/_handle_action_', 'POST', '127.0.0.1', '{\"_key\":\"4\",\"_model\":\"App_Models_Product\",\"_token\":\"JpgwbI2ERiDUzLg7MFXrXqoJgoi8KmIcfEewvhzS\",\"_action\":\"Encore_Admin_Grid_Actions_Delete\",\"_input\":\"true\"}', '2023-03-21 06:41:11', '2023-03-21 06:41:11'),
(86, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-03-21 06:41:12', '2023-03-21 06:41:12'),
(87, 1, 'admin/products/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-03-21 06:41:16', '2023-03-21 06:41:16'),
(88, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-03-21 06:41:55', '2023-03-21 06:41:55'),
(89, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2023-03-21 06:41:58', '2023-03-21 06:41:58'),
(90, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2023-03-21 06:42:06', '2023-03-21 06:42:06'),
(91, 1, 'admin/_handle_action_', 'POST', '127.0.0.1', '{\"_key\":\"5\",\"_model\":\"App_Models_Product\",\"_token\":\"JpgwbI2ERiDUzLg7MFXrXqoJgoi8KmIcfEewvhzS\",\"_action\":\"Encore_Admin_Grid_Actions_Delete\",\"_input\":\"true\"}', '2023-03-21 06:42:48', '2023-03-21 06:42:48'),
(92, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-03-21 06:42:49', '2023-03-21 06:42:49'),
(93, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2023-03-21 06:46:48', '2023-03-21 06:46:48'),
(94, 1, 'admin/products/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-03-21 06:46:57', '2023-03-21 06:46:57'),
(95, 1, 'admin/products', 'POST', '127.0.0.1', '{\"name\":\"ipad\",\"price\":\"200\",\"quantity\":\"3\",\"status\":\"off\",\"category_id\":\"3\",\"_token\":\"JpgwbI2ERiDUzLg7MFXrXqoJgoi8KmIcfEewvhzS\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/products\"}', '2023-03-21 06:47:37', '2023-03-21 06:47:37'),
(96, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2023-03-21 06:47:37', '2023-03-21 06:47:37'),
(97, 1, 'admin/products/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-03-21 06:48:29', '2023-03-21 06:48:29'),
(98, 1, 'admin/products', 'POST', '127.0.0.1', '{\"name\":\"laptop\",\"price\":\"2\",\"quantity\":\"1\",\"status\":\"off\",\"category_id\":\"2\",\"_token\":\"JpgwbI2ERiDUzLg7MFXrXqoJgoi8KmIcfEewvhzS\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/products\"}', '2023-03-21 06:48:59', '2023-03-21 06:48:59'),
(99, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2023-03-21 06:49:00', '2023-03-21 06:49:00'),
(100, 1, 'admin/categories', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-03-21 06:49:13', '2023-03-21 06:49:13'),
(101, 1, 'admin/categories/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-03-21 06:49:18', '2023-03-21 06:49:18'),
(102, 1, 'admin/categories', 'POST', '127.0.0.1', '{\"name\":\"Laptop\",\"_token\":\"JpgwbI2ERiDUzLg7MFXrXqoJgoi8KmIcfEewvhzS\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/categories\"}', '2023-03-21 06:49:23', '2023-03-21 06:49:23'),
(103, 1, 'admin/categories', 'GET', '127.0.0.1', '[]', '2023-03-21 06:49:23', '2023-03-21 06:49:23'),
(104, 1, 'admin/categories/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-03-21 06:49:30', '2023-03-21 06:49:30'),
(105, 1, 'admin/categories', 'POST', '127.0.0.1', '{\"name\":\"Mac\",\"_token\":\"JpgwbI2ERiDUzLg7MFXrXqoJgoi8KmIcfEewvhzS\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/categories\"}', '2023-03-21 06:49:34', '2023-03-21 06:49:34'),
(106, 1, 'admin/categories', 'GET', '127.0.0.1', '[]', '2023-03-21 06:49:34', '2023-03-21 06:49:34'),
(107, 1, 'admin/categories/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-03-21 06:50:10', '2023-03-21 06:50:10'),
(108, 1, 'admin/categories', 'POST', '127.0.0.1', '{\"name\":\"AirPod\",\"_token\":\"JpgwbI2ERiDUzLg7MFXrXqoJgoi8KmIcfEewvhzS\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/categories\"}', '2023-03-21 06:50:15', '2023-03-21 06:50:15'),
(109, 1, 'admin/categories', 'GET', '127.0.0.1', '[]', '2023-03-21 06:50:15', '2023-03-21 06:50:15'),
(110, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-03-21 06:50:17', '2023-03-21 06:50:17'),
(111, 1, 'admin/_handle_action_', 'POST', '127.0.0.1', '{\"_key\":\"6\",\"_model\":\"App_Models_Product\",\"_token\":\"JpgwbI2ERiDUzLg7MFXrXqoJgoi8KmIcfEewvhzS\",\"_action\":\"Encore_Admin_Grid_Actions_Delete\",\"_input\":\"true\"}', '2023-03-21 06:50:23', '2023-03-21 06:50:23'),
(112, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-03-21 06:50:24', '2023-03-21 06:50:24'),
(113, 1, 'admin/_handle_action_', 'POST', '127.0.0.1', '{\"_key\":\"7\",\"_model\":\"App_Models_Product\",\"_token\":\"JpgwbI2ERiDUzLg7MFXrXqoJgoi8KmIcfEewvhzS\",\"_action\":\"Encore_Admin_Grid_Actions_Delete\",\"_input\":\"true\"}', '2023-03-21 06:50:33', '2023-03-21 06:50:33'),
(114, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-03-21 06:50:33', '2023-03-21 06:50:33'),
(115, 1, 'admin/_handle_action_', 'POST', '127.0.0.1', '{\"_key\":\"8\",\"_model\":\"App_Models_Product\",\"_token\":\"JpgwbI2ERiDUzLg7MFXrXqoJgoi8KmIcfEewvhzS\",\"_action\":\"Encore_Admin_Grid_Actions_Delete\",\"_input\":\"true\"}', '2023-03-21 06:50:37', '2023-03-21 06:50:37'),
(116, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-03-21 06:50:38', '2023-03-21 06:50:38'),
(117, 1, 'admin/_handle_action_', 'POST', '127.0.0.1', '{\"_key\":\"9\",\"_model\":\"App_Models_Product\",\"_token\":\"JpgwbI2ERiDUzLg7MFXrXqoJgoi8KmIcfEewvhzS\",\"_action\":\"Encore_Admin_Grid_Actions_Delete\",\"_input\":\"true\"}', '2023-03-21 06:50:45', '2023-03-21 06:50:45'),
(118, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-03-21 06:50:45', '2023-03-21 06:50:45'),
(119, 1, 'admin/_handle_action_', 'POST', '127.0.0.1', '{\"_key\":\"10\",\"_model\":\"App_Models_Product\",\"_token\":\"JpgwbI2ERiDUzLg7MFXrXqoJgoi8KmIcfEewvhzS\",\"_action\":\"Encore_Admin_Grid_Actions_Delete\",\"_input\":\"true\"}', '2023-03-21 06:50:51', '2023-03-21 06:50:51'),
(120, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-03-21 06:50:52', '2023-03-21 06:50:52'),
(121, 1, 'admin/products/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-03-21 06:50:54', '2023-03-21 06:50:54'),
(122, 1, 'admin/products', 'POST', '127.0.0.1', '{\"name\":\"iPhone 13\",\"price\":\"120\",\"quantity\":\"5\",\"status\":\"off\",\"category_id\":\"1\",\"_token\":\"JpgwbI2ERiDUzLg7MFXrXqoJgoi8KmIcfEewvhzS\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/products\"}', '2023-03-21 06:52:23', '2023-03-21 06:52:23'),
(123, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2023-03-21 06:52:24', '2023-03-21 06:52:24'),
(124, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2023-03-21 06:52:55', '2023-03-21 06:52:55'),
(125, 1, 'admin/_handle_action_', 'POST', '127.0.0.1', '{\"_key\":\"11\",\"_model\":\"App_Models_Product\",\"_token\":\"JpgwbI2ERiDUzLg7MFXrXqoJgoi8KmIcfEewvhzS\",\"_action\":\"Encore_Admin_Grid_Actions_Delete\",\"_input\":\"true\"}', '2023-03-21 06:53:02', '2023-03-21 06:53:02'),
(126, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-03-21 06:53:03', '2023-03-21 06:53:03'),
(127, 1, 'admin/products/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-03-21 06:53:05', '2023-03-21 06:53:05'),
(128, 1, 'admin/products', 'POST', '127.0.0.1', '{\"name\":\"iPhone 13\",\"price\":\"200\",\"quantity\":\"6\",\"status\":\"off\",\"category_id\":\"1\",\"_token\":\"JpgwbI2ERiDUzLg7MFXrXqoJgoi8KmIcfEewvhzS\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/products\"}', '2023-03-21 06:53:48', '2023-03-21 06:53:48'),
(129, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2023-03-21 06:53:48', '2023-03-21 06:53:48'),
(130, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2023-03-21 06:54:33', '2023-03-21 06:54:33'),
(131, 1, 'admin/products/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-03-21 06:54:44', '2023-03-21 06:54:44'),
(132, 1, 'admin/products', 'POST', '127.0.0.1', '{\"name\":\"iPhone 14\",\"price\":\"290\",\"quantity\":\"5\",\"status\":\"off\",\"category_id\":\"1\",\"_token\":\"JpgwbI2ERiDUzLg7MFXrXqoJgoi8KmIcfEewvhzS\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/products\"}', '2023-03-21 06:55:33', '2023-03-21 06:55:33'),
(133, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2023-03-21 06:55:33', '2023-03-21 06:55:33'),
(134, 1, 'admin/products/12/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-03-21 06:55:48', '2023-03-21 06:55:48'),
(135, 1, 'admin/products/12', 'PUT', '127.0.0.1', '{\"name\":\"iPhone 13\",\"price\":\"200\",\"quantity\":\"6\",\"status\":\"off\",\"category_id\":\"1\",\"_token\":\"JpgwbI2ERiDUzLg7MFXrXqoJgoi8KmIcfEewvhzS\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/products\"}', '2023-03-21 06:56:08', '2023-03-21 06:56:08'),
(136, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2023-03-21 06:56:08', '2023-03-21 06:56:08'),
(137, 1, 'admin/products/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-03-21 06:58:38', '2023-03-21 06:58:38'),
(138, 1, 'admin/products/create', 'GET', '127.0.0.1', '[]', '2023-03-21 06:58:44', '2023-03-21 06:58:44'),
(139, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-03-21 06:58:51', '2023-03-21 06:58:51'),
(140, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2023-03-21 06:58:52', '2023-03-21 06:58:52'),
(141, 1, 'admin/products/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-03-21 06:58:59', '2023-03-21 06:58:59'),
(142, 1, 'admin/products', 'POST', '127.0.0.1', '{\"name\":\"AirPosds Pro\",\"price\":\"4900\",\"quantity\":\"10\",\"status\":\"off\",\"category_id\":\"6\",\"_token\":\"JpgwbI2ERiDUzLg7MFXrXqoJgoi8KmIcfEewvhzS\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/products\"}', '2023-03-21 07:00:13', '2023-03-21 07:00:13'),
(143, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2023-03-21 07:00:14', '2023-03-21 07:00:14'),
(144, 1, 'admin/products/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-03-21 07:00:24', '2023-03-21 07:00:24'),
(145, 1, 'admin/products', 'POST', '127.0.0.1', '{\"name\":\"AirPod\",\"price\":\"2950000\",\"quantity\":\"7\",\"status\":\"off\",\"category_id\":\"6\",\"_token\":\"JpgwbI2ERiDUzLg7MFXrXqoJgoi8KmIcfEewvhzS\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/products\"}', '2023-03-21 07:01:24', '2023-03-21 07:01:24'),
(146, 1, 'admin/products/create', 'GET', '127.0.0.1', '[]', '2023-03-21 07:01:24', '2023-03-21 07:01:24'),
(147, 1, 'admin/products', 'POST', '127.0.0.1', '{\"name\":\"AirPod\",\"price\":\"2950\",\"quantity\":\"7\",\"status\":\"off\",\"category_id\":\"6\",\"_token\":\"JpgwbI2ERiDUzLg7MFXrXqoJgoi8KmIcfEewvhzS\"}', '2023-03-21 07:01:31', '2023-03-21 07:01:31'),
(148, 1, 'admin/products/create', 'GET', '127.0.0.1', '[]', '2023-03-21 07:01:31', '2023-03-21 07:01:31'),
(149, 1, 'admin/products', 'POST', '127.0.0.1', '{\"name\":\"AirPod\",\"price\":\"295\",\"quantity\":\"7\",\"status\":\"off\",\"category_id\":\"6\",\"_token\":\"JpgwbI2ERiDUzLg7MFXrXqoJgoi8KmIcfEewvhzS\"}', '2023-03-21 07:01:38', '2023-03-21 07:01:38'),
(150, 1, 'admin/products/create', 'GET', '127.0.0.1', '[]', '2023-03-21 07:01:38', '2023-03-21 07:01:38'),
(151, 1, 'admin/products', 'POST', '127.0.0.1', '{\"name\":\"AirPod\",\"price\":\"2950\",\"quantity\":\"7\",\"status\":\"off\",\"category_id\":\"6\",\"_token\":\"JpgwbI2ERiDUzLg7MFXrXqoJgoi8KmIcfEewvhzS\"}', '2023-03-21 07:01:53', '2023-03-21 07:01:53'),
(152, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2023-03-21 07:01:53', '2023-03-21 07:01:53'),
(153, 1, 'admin/_handle_action_', 'POST', '127.0.0.1', '{\"_key\":\"15\",\"_model\":\"App_Models_Product\",\"_token\":\"JpgwbI2ERiDUzLg7MFXrXqoJgoi8KmIcfEewvhzS\",\"_action\":\"Encore_Admin_Grid_Actions_Delete\",\"_input\":\"true\"}', '2023-03-21 07:02:07', '2023-03-21 07:02:07'),
(154, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-03-21 07:02:07', '2023-03-21 07:02:07'),
(155, 1, 'admin/products/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-03-21 07:02:10', '2023-03-21 07:02:10'),
(156, 1, 'admin/products', 'POST', '127.0.0.1', '{\"name\":\"AirPod\",\"price\":\"2930\",\"quantity\":null,\"status\":\"on\",\"category_id\":null,\"_token\":\"JpgwbI2ERiDUzLg7MFXrXqoJgoi8KmIcfEewvhzS\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/products\"}', '2023-03-21 07:02:32', '2023-03-21 07:02:32'),
(157, 1, 'admin/products/create', 'GET', '127.0.0.1', '[]', '2023-03-21 07:02:33', '2023-03-21 07:02:33'),
(158, 1, 'admin/products', 'POST', '127.0.0.1', '{\"name\":\"AirPod\",\"price\":\"2930\",\"quantity\":\"7\",\"status\":\"off\",\"category_id\":\"6\",\"_token\":\"JpgwbI2ERiDUzLg7MFXrXqoJgoi8KmIcfEewvhzS\"}', '2023-03-21 07:02:50', '2023-03-21 07:02:50'),
(159, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2023-03-21 07:02:51', '2023-03-21 07:02:51'),
(160, 1, 'admin/_handle_action_', 'POST', '127.0.0.1', '{\"_key\":\"16\",\"_model\":\"App_Models_Product\",\"_token\":\"JpgwbI2ERiDUzLg7MFXrXqoJgoi8KmIcfEewvhzS\",\"_action\":\"Encore_Admin_Grid_Actions_Delete\",\"_input\":\"true\"}', '2023-03-21 07:03:03', '2023-03-21 07:03:03'),
(161, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-03-21 07:03:03', '2023-03-21 07:03:03'),
(162, 1, 'admin/products/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-03-21 07:03:06', '2023-03-21 07:03:06'),
(163, 1, 'admin/products', 'POST', '127.0.0.1', '{\"name\":\"AirPod 2\",\"price\":\"120\",\"quantity\":\"6\",\"status\":\"off\",\"category_id\":\"6\",\"_token\":\"JpgwbI2ERiDUzLg7MFXrXqoJgoi8KmIcfEewvhzS\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/products\"}', '2023-03-21 07:03:34', '2023-03-21 07:03:34'),
(164, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2023-03-21 07:03:34', '2023-03-21 07:03:34'),
(165, 1, 'admin/products/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-03-21 07:03:40', '2023-03-21 07:03:40'),
(166, 1, 'admin/products', 'POST', '127.0.0.1', '{\"name\":\"AirPod\",\"price\":\"130\",\"quantity\":\"5\",\"status\":\"off\",\"category_id\":\"6\",\"_token\":\"JpgwbI2ERiDUzLg7MFXrXqoJgoi8KmIcfEewvhzS\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/products\"}', '2023-03-21 07:04:09', '2023-03-21 07:04:09'),
(167, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2023-03-21 07:04:09', '2023-03-21 07:04:09'),
(168, 1, 'admin/_handle_action_', 'POST', '127.0.0.1', '{\"_key\":\"18\",\"_model\":\"App_Models_Product\",\"_token\":\"JpgwbI2ERiDUzLg7MFXrXqoJgoi8KmIcfEewvhzS\",\"_action\":\"Encore_Admin_Grid_Actions_Delete\",\"_input\":\"true\"}', '2023-03-21 07:04:16', '2023-03-21 07:04:16'),
(169, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-03-21 07:04:17', '2023-03-21 07:04:17'),
(170, 1, 'admin/products/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-03-21 07:04:19', '2023-03-21 07:04:19'),
(171, 1, 'admin/categories', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-03-21 07:05:23', '2023-03-21 07:05:23'),
(172, 1, 'admin/categories/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-03-21 07:05:31', '2023-03-21 07:05:31'),
(173, 1, 'admin/categories', 'POST', '127.0.0.1', '{\"name\":\"Watch\",\"_token\":\"JpgwbI2ERiDUzLg7MFXrXqoJgoi8KmIcfEewvhzS\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/categories\"}', '2023-03-21 07:05:37', '2023-03-21 07:05:37'),
(174, 1, 'admin/categories', 'GET', '127.0.0.1', '[]', '2023-03-21 07:05:37', '2023-03-21 07:05:37'),
(175, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-03-21 07:05:42', '2023-03-21 07:05:42'),
(176, 1, 'admin/products/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-03-21 07:05:44', '2023-03-21 07:05:44'),
(177, 1, 'admin/products', 'POST', '127.0.0.1', '{\"name\":\"Apple Watch\",\"price\":\"230\",\"quantity\":\"3\",\"status\":\"off\",\"category_id\":\"7\",\"_token\":\"JpgwbI2ERiDUzLg7MFXrXqoJgoi8KmIcfEewvhzS\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/products\"}', '2023-03-21 07:06:10', '2023-03-21 07:06:10'),
(178, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2023-03-21 07:06:11', '2023-03-21 07:06:11'),
(179, 1, 'admin', 'GET', '127.0.0.1', '[]', '2023-03-21 07:09:37', '2023-03-21 07:09:37'),
(180, 1, 'admin/categories', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-03-21 07:09:40', '2023-03-21 07:09:40'),
(181, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-03-21 07:09:43', '2023-03-21 07:09:43'),
(182, 1, 'admin/products/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-03-21 07:09:46', '2023-03-21 07:09:46'),
(183, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-03-21 07:09:55', '2023-03-21 07:09:55'),
(184, 1, 'admin/_handle_action_', 'POST', '127.0.0.1', '{\"_key\":\"19\",\"_model\":\"App_Models_Product\",\"_token\":\"JpgwbI2ERiDUzLg7MFXrXqoJgoi8KmIcfEewvhzS\",\"_action\":\"Encore_Admin_Grid_Actions_Delete\",\"_input\":\"true\"}', '2023-03-21 07:10:06', '2023-03-21 07:10:06'),
(185, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-03-21 07:10:06', '2023-03-21 07:10:06'),
(186, 1, 'admin/products/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-03-21 07:10:08', '2023-03-21 07:10:08'),
(187, 1, 'admin/products', 'POST', '127.0.0.1', '{\"name\":\"Apple Watch\",\"price\":\"890\",\"quantity\":\"1\",\"status\":\"off\",\"category_id\":\"7\",\"_token\":\"JpgwbI2ERiDUzLg7MFXrXqoJgoi8KmIcfEewvhzS\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/products\"}', '2023-03-21 07:10:42', '2023-03-21 07:10:42'),
(188, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2023-03-21 07:10:42', '2023-03-21 07:10:42'),
(189, 1, 'admin/products/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-03-21 07:10:46', '2023-03-21 07:10:46'),
(190, 1, 'admin/products', 'POST', '127.0.0.1', '{\"name\":\"Apple Watch\",\"price\":\"23\",\"quantity\":\"1\",\"status\":\"off\",\"category_id\":\"7\",\"_token\":\"JpgwbI2ERiDUzLg7MFXrXqoJgoi8KmIcfEewvhzS\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/products\"}', '2023-03-21 07:11:07', '2023-03-21 07:11:07'),
(191, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2023-03-21 07:11:07', '2023-03-21 07:11:07'),
(192, 1, 'admin/products/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-03-21 07:11:14', '2023-03-21 07:11:14'),
(193, 1, 'admin/products', 'POST', '127.0.0.1', '{\"name\":\"Apple Watch\",\"price\":\"100\",\"quantity\":\"5\",\"status\":\"off\",\"category_id\":\"7\",\"_token\":\"JpgwbI2ERiDUzLg7MFXrXqoJgoi8KmIcfEewvhzS\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/products\"}', '2023-03-21 07:11:37', '2023-03-21 07:11:37'),
(194, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2023-03-21 07:11:38', '2023-03-21 07:11:38'),
(195, 1, 'admin/products/21/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-03-21 07:11:57', '2023-03-21 07:11:57'),
(196, 1, 'admin/products/21', 'PUT', '127.0.0.1', '{\"name\":\"Apple Watch\",\"price\":\"23\",\"quantity\":\"2\",\"status\":\"off\",\"category_id\":\"7\",\"_token\":\"JpgwbI2ERiDUzLg7MFXrXqoJgoi8KmIcfEewvhzS\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/products\"}', '2023-03-21 07:12:13', '2023-03-21 07:12:13'),
(197, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2023-03-21 07:12:13', '2023-03-21 07:12:13'),
(198, 1, 'admin/products/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-03-21 07:12:19', '2023-03-21 07:12:19'),
(199, 1, 'admin/products', 'POST', '127.0.0.1', '{\"name\":\"Apple Watch\",\"price\":\"199\",\"quantity\":\"13\",\"status\":\"off\",\"category_id\":\"7\",\"_token\":\"JpgwbI2ERiDUzLg7MFXrXqoJgoi8KmIcfEewvhzS\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/products\"}', '2023-03-21 07:12:48', '2023-03-21 07:12:48'),
(200, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2023-03-21 07:12:50', '2023-03-21 07:12:50'),
(201, 1, 'admin/products/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-03-21 07:12:53', '2023-03-21 07:12:53'),
(202, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-03-21 07:13:11', '2023-03-21 07:13:11'),
(203, 1, 'admin/products/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-03-21 07:13:18', '2023-03-21 07:13:18'),
(204, 1, 'admin/products', 'POST', '127.0.0.1', '{\"name\":null,\"price\":\"140\",\"quantity\":\"0\",\"status\":\"off\",\"category_id\":\"7\",\"_token\":\"JpgwbI2ERiDUzLg7MFXrXqoJgoi8KmIcfEewvhzS\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/products\"}', '2023-03-21 07:13:48', '2023-03-21 07:13:48'),
(205, 1, 'admin/products/create', 'GET', '127.0.0.1', '[]', '2023-03-21 07:13:49', '2023-03-21 07:13:49'),
(206, 1, 'admin/products', 'POST', '127.0.0.1', '{\"name\":\"Apple Watch\",\"price\":\"140\",\"quantity\":\"0\",\"status\":\"off\",\"category_id\":\"7\",\"_token\":\"JpgwbI2ERiDUzLg7MFXrXqoJgoi8KmIcfEewvhzS\"}', '2023-03-21 07:14:03', '2023-03-21 07:14:03'),
(207, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2023-03-21 07:14:04', '2023-03-21 07:14:04'),
(208, 1, 'admin/products/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-03-21 07:14:17', '2023-03-21 07:14:17'),
(209, 1, 'admin/products', 'POST', '127.0.0.1', '{\"name\":\"watch\",\"price\":\"111\",\"quantity\":\"6\",\"status\":\"off\",\"category_id\":\"7\",\"_token\":\"JpgwbI2ERiDUzLg7MFXrXqoJgoi8KmIcfEewvhzS\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/products\"}', '2023-03-21 07:14:50', '2023-03-21 07:14:50'),
(210, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2023-03-21 07:14:51', '2023-03-21 07:14:51'),
(211, 1, 'admin', 'GET', '127.0.0.1', '[]', '2023-03-21 19:29:39', '2023-03-21 19:29:39'),
(212, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-03-21 19:29:47', '2023-03-21 19:29:47'),
(213, 1, 'admin/_handle_action_', 'POST', '127.0.0.1', '{\"_key\":\"21\",\"_model\":\"App_Models_Product\",\"_token\":\"uL1tviaxDr8KsypGz7PYRE37JXU92feGPVVU7rf9\",\"_action\":\"Encore_Admin_Grid_Actions_Delete\",\"_input\":\"true\"}', '2023-03-21 19:29:56', '2023-03-21 19:29:56'),
(214, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-03-21 19:29:56', '2023-03-21 19:29:56'),
(215, 1, 'admin/_handle_action_', 'POST', '127.0.0.1', '{\"_key\":\"22\",\"_model\":\"App_Models_Product\",\"_token\":\"uL1tviaxDr8KsypGz7PYRE37JXU92feGPVVU7rf9\",\"_action\":\"Encore_Admin_Grid_Actions_Delete\",\"_input\":\"true\"}', '2023-03-21 19:30:02', '2023-03-21 19:30:02'),
(216, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-03-21 19:30:02', '2023-03-21 19:30:02'),
(217, 1, 'admin', 'GET', '127.0.0.1', '[]', '2023-03-21 21:05:08', '2023-03-21 21:05:08'),
(218, 1, 'admin', 'GET', '127.0.0.1', '[]', '2023-03-21 21:07:35', '2023-03-21 21:07:35'),
(219, 1, 'admin', 'GET', '127.0.0.1', '[]', '2023-03-21 21:07:56', '2023-03-21 21:07:56'),
(220, 1, 'admin', 'GET', '127.0.0.1', '[]', '2023-03-21 21:14:46', '2023-03-21 21:14:46'),
(221, 1, 'admin/auth/logout', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-03-21 21:14:50', '2023-03-21 21:14:50'),
(222, 1, 'admin', 'GET', '127.0.0.1', '[]', '2023-03-22 08:13:42', '2023-03-22 08:13:42'),
(223, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-03-22 08:13:51', '2023-03-22 08:13:51'),
(224, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-03-22 08:18:51', '2023-03-22 08:18:51'),
(225, 1, 'admin/auth/login', 'GET', '127.0.0.1', '[]', '2023-03-22 08:18:53', '2023-03-22 08:18:53'),
(226, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-03-22 08:21:09', '2023-03-22 08:21:09'),
(227, 1, 'admin/products/12/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-03-22 08:21:14', '2023-03-22 08:21:14'),
(228, 1, 'admin/products/12', 'PUT', '127.0.0.1', '{\"name\":\"iPhone 13\",\"price\":\"200\",\"quantity\":\"6\",\"status\":\"on\",\"category_id\":\"1\",\"_token\":\"LgUNdxw7RgDCnm62Xj2a4UcF134nxfZjMGNHvdEX\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/products\"}', '2023-03-22 08:21:20', '2023-03-22 08:21:20'),
(229, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2023-03-22 08:21:20', '2023-03-22 08:21:20'),
(230, 1, 'admin/products/13/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-03-22 08:24:27', '2023-03-22 08:24:27'),
(231, 1, 'admin/products/13', 'PUT', '127.0.0.1', '{\"name\":\"iPhone 14\",\"price\":\"290\",\"quantity\":\"5\",\"status\":\"on\",\"category_id\":\"1\",\"_token\":\"LgUNdxw7RgDCnm62Xj2a4UcF134nxfZjMGNHvdEX\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/products\"}', '2023-03-22 08:24:31', '2023-03-22 08:24:31'),
(232, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2023-03-22 08:24:32', '2023-03-22 08:24:32'),
(233, 1, 'admin/products/12/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-03-22 08:26:39', '2023-03-22 08:26:39'),
(234, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-03-22 08:26:41', '2023-03-22 08:26:41'),
(235, 1, 'admin/products/13/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-03-22 08:26:44', '2023-03-22 08:26:44'),
(236, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-03-22 08:26:46', '2023-03-22 08:26:46'),
(237, 1, 'admin/products/14/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-03-22 08:26:50', '2023-03-22 08:26:50'),
(238, 1, 'admin/products/14', 'PUT', '127.0.0.1', '{\"name\":\"AirPosds Pro\",\"price\":\"4900\",\"quantity\":\"10\",\"status\":\"on\",\"category_id\":\"6\",\"_token\":\"LgUNdxw7RgDCnm62Xj2a4UcF134nxfZjMGNHvdEX\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/products\"}', '2023-03-22 08:26:56', '2023-03-22 08:26:56'),
(239, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2023-03-22 08:26:56', '2023-03-22 08:26:56'),
(240, 1, 'admin/products/17/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-03-22 08:27:12', '2023-03-22 08:27:12'),
(241, 1, 'admin/products/17', 'PUT', '127.0.0.1', '{\"name\":\"AirPod 2\",\"price\":\"120\",\"quantity\":\"6\",\"status\":\"on\",\"category_id\":\"6\",\"_token\":\"LgUNdxw7RgDCnm62Xj2a4UcF134nxfZjMGNHvdEX\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/products\"}', '2023-03-22 08:27:16', '2023-03-22 08:27:16'),
(242, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2023-03-22 08:27:17', '2023-03-22 08:27:17'),
(243, 1, 'admin/products/20/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-03-22 08:27:21', '2023-03-22 08:27:21'),
(244, 1, 'admin/products/20', 'PUT', '127.0.0.1', '{\"name\":\"Apple Watch\",\"price\":\"890\",\"quantity\":\"1\",\"status\":\"on\",\"category_id\":\"7\",\"_token\":\"LgUNdxw7RgDCnm62Xj2a4UcF134nxfZjMGNHvdEX\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/products\"}', '2023-03-22 08:27:27', '2023-03-22 08:27:27'),
(245, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2023-03-22 08:27:28', '2023-03-22 08:27:28'),
(246, 1, 'admin/products/23/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-03-22 08:27:33', '2023-03-22 08:27:33'),
(247, 1, 'admin/products/23', 'PUT', '127.0.0.1', '{\"name\":\"Apple Watch\",\"price\":\"199\",\"quantity\":\"13\",\"status\":\"on\",\"category_id\":\"7\",\"_token\":\"LgUNdxw7RgDCnm62Xj2a4UcF134nxfZjMGNHvdEX\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/products\"}', '2023-03-22 08:27:39', '2023-03-22 08:27:39'),
(248, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2023-03-22 08:27:39', '2023-03-22 08:27:39'),
(249, 1, 'admin/products/24/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-03-22 08:27:46', '2023-03-22 08:27:46'),
(250, 1, 'admin/products/24', 'PUT', '127.0.0.1', '{\"name\":\"Apple Watch\",\"price\":\"140\",\"quantity\":\"0\",\"status\":\"on\",\"category_id\":\"7\",\"_token\":\"LgUNdxw7RgDCnm62Xj2a4UcF134nxfZjMGNHvdEX\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/products\"}', '2023-03-22 08:27:49', '2023-03-22 08:27:49'),
(251, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2023-03-22 08:27:49', '2023-03-22 08:27:49'),
(252, 1, 'admin/products/25/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-03-22 08:27:51', '2023-03-22 08:27:51'),
(253, 1, 'admin/products/25', 'PUT', '127.0.0.1', '{\"name\":\"watch\",\"price\":\"111\",\"quantity\":\"6\",\"status\":\"on\",\"category_id\":\"7\",\"_token\":\"LgUNdxw7RgDCnm62Xj2a4UcF134nxfZjMGNHvdEX\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/products\"}', '2023-03-22 08:27:56', '2023-03-22 08:27:56'),
(254, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2023-03-22 08:27:56', '2023-03-22 08:27:56'),
(255, 1, 'admin/products/25/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-03-22 08:28:29', '2023-03-22 08:28:29'),
(256, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-03-22 08:28:33', '2023-03-22 08:28:33'),
(257, 1, 'admin', 'GET', '127.0.0.1', '[]', '2023-03-22 19:03:39', '2023-03-22 19:03:39'),
(258, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-03-22 19:03:43', '2023-03-22 19:03:43'),
(259, 1, 'admin/products/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-03-22 19:03:50', '2023-03-22 19:03:50'),
(260, 1, 'admin/products', 'POST', '127.0.0.1', '{\"name\":\"Watch Ultra\",\"price\":\"290\",\"quantity\":\"1\",\"status\":\"on\",\"category_id\":\"7\",\"_token\":\"oYQhoBHIW1oJfqc0K6tDJ96qG9uHqPkE3RlELGDN\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/products\"}', '2023-03-22 19:04:34', '2023-03-22 19:04:34'),
(261, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2023-03-22 19:04:34', '2023-03-22 19:04:34'),
(262, 1, 'admin', 'GET', '127.0.0.1', '[]', '2023-03-29 00:15:07', '2023-03-29 00:15:07'),
(263, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-03-29 00:15:12', '2023-03-29 00:15:12'),
(264, 1, 'admin/categories', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-03-29 00:15:16', '2023-03-29 00:15:16'),
(265, 1, 'admin', 'GET', '127.0.0.1', '[]', '2023-04-09 04:43:53', '2023-04-09 04:43:53'),
(266, 1, 'admin', 'GET', '127.0.0.1', '[]', '2023-04-09 04:45:12', '2023-04-09 04:45:12'),
(267, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-04-09 04:45:15', '2023-04-09 04:45:15'),
(268, 1, 'admin', 'GET', '127.0.0.1', '[]', '2023-04-09 04:58:05', '2023-04-09 04:58:05'),
(269, 1, 'admin', 'GET', '127.0.0.1', '[]', '2023-04-09 05:50:37', '2023-04-09 05:50:37'),
(270, 1, 'admin/categories', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-04-09 05:50:44', '2023-04-09 05:50:44'),
(271, 1, 'admin/categories/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-04-09 05:57:00', '2023-04-09 05:57:00'),
(272, 1, 'admin/categories', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-04-09 05:57:02', '2023-04-09 05:57:02'),
(273, 1, 'admin/_handle_action_', 'POST', '127.0.0.1', '{\"_key\":\"1\",\"_model\":\"App_Models_Category\",\"_token\":\"EaeMAN9IFnkboGZpm5moKsHJD52kFGYke54tSj7y\",\"_action\":\"Encore_Admin_Grid_Actions_Delete\",\"_input\":\"true\"}', '2023-04-09 05:57:21', '2023-04-09 05:57:21'),
(274, 1, 'admin/categories', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-04-09 05:57:21', '2023-04-09 05:57:21'),
(275, 1, 'admin/_handle_action_', 'POST', '127.0.0.1', '{\"_key\":\"2\",\"_model\":\"App_Models_Category\",\"_token\":\"EaeMAN9IFnkboGZpm5moKsHJD52kFGYke54tSj7y\",\"_action\":\"Encore_Admin_Grid_Actions_Delete\",\"_input\":\"true\"}', '2023-04-09 05:57:27', '2023-04-09 05:57:27'),
(276, 1, 'admin/categories', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-04-09 05:57:27', '2023-04-09 05:57:27'),
(277, 1, 'admin/_handle_action_', 'POST', '127.0.0.1', '{\"_key\":\"3\",\"_model\":\"App_Models_Category\",\"_token\":\"EaeMAN9IFnkboGZpm5moKsHJD52kFGYke54tSj7y\",\"_action\":\"Encore_Admin_Grid_Actions_Delete\",\"_input\":\"true\"}', '2023-04-09 05:57:31', '2023-04-09 05:57:31'),
(278, 1, 'admin/categories', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-04-09 05:57:31', '2023-04-09 05:57:31'),
(279, 1, 'admin/_handle_action_', 'POST', '127.0.0.1', '{\"_key\":\"4\",\"_model\":\"App_Models_Category\",\"_token\":\"EaeMAN9IFnkboGZpm5moKsHJD52kFGYke54tSj7y\",\"_action\":\"Encore_Admin_Grid_Actions_Delete\",\"_input\":\"true\"}', '2023-04-09 05:57:36', '2023-04-09 05:57:36'),
(280, 1, 'admin/categories', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-04-09 05:57:36', '2023-04-09 05:57:36'),
(281, 1, 'admin/_handle_action_', 'POST', '127.0.0.1', '{\"_key\":\"5\",\"_model\":\"App_Models_Category\",\"_token\":\"EaeMAN9IFnkboGZpm5moKsHJD52kFGYke54tSj7y\",\"_action\":\"Encore_Admin_Grid_Actions_Delete\",\"_input\":\"true\"}', '2023-04-09 05:57:41', '2023-04-09 05:57:41'),
(282, 1, 'admin/categories', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-04-09 05:57:41', '2023-04-09 05:57:41'),
(283, 1, 'admin/_handle_action_', 'POST', '127.0.0.1', '{\"_key\":\"6\",\"_model\":\"App_Models_Category\",\"_token\":\"EaeMAN9IFnkboGZpm5moKsHJD52kFGYke54tSj7y\",\"_action\":\"Encore_Admin_Grid_Actions_Delete\",\"_input\":\"true\"}', '2023-04-09 05:57:46', '2023-04-09 05:57:46'),
(284, 1, 'admin/categories', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-04-09 05:57:47', '2023-04-09 05:57:47'),
(285, 1, 'admin/_handle_action_', 'POST', '127.0.0.1', '{\"_key\":\"7\",\"_model\":\"App_Models_Category\",\"_token\":\"EaeMAN9IFnkboGZpm5moKsHJD52kFGYke54tSj7y\",\"_action\":\"Encore_Admin_Grid_Actions_Delete\",\"_input\":\"true\"}', '2023-04-09 05:57:51', '2023-04-09 05:57:51'),
(286, 1, 'admin/categories', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-04-09 05:57:52', '2023-04-09 05:57:52'),
(287, 1, 'admin/categories/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-04-09 05:57:54', '2023-04-09 05:57:54'),
(288, 1, 'admin/categories', 'POST', '127.0.0.1', '{\"name\":\"B\\u00e0n\",\"_token\":\"EaeMAN9IFnkboGZpm5moKsHJD52kFGYke54tSj7y\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/categories\"}', '2023-04-09 05:59:21', '2023-04-09 05:59:21'),
(289, 1, 'admin/categories', 'GET', '127.0.0.1', '[]', '2023-04-09 05:59:21', '2023-04-09 05:59:21'),
(290, 1, 'admin/categories/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-04-09 05:59:26', '2023-04-09 05:59:26'),
(291, 1, 'admin/categories', 'POST', '127.0.0.1', '{\"name\":\"Gh\\u1ebf\",\"_token\":\"EaeMAN9IFnkboGZpm5moKsHJD52kFGYke54tSj7y\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/categories\"}', '2023-04-09 05:59:31', '2023-04-09 05:59:31'),
(292, 1, 'admin/categories', 'GET', '127.0.0.1', '[]', '2023-04-09 05:59:31', '2023-04-09 05:59:31'),
(293, 1, 'admin/categories/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-04-09 06:00:34', '2023-04-09 06:00:34'),
(294, 1, 'admin/categories', 'POST', '127.0.0.1', '{\"name\":\"T\\u1ee7\",\"_token\":\"EaeMAN9IFnkboGZpm5moKsHJD52kFGYke54tSj7y\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/categories\"}', '2023-04-09 06:00:42', '2023-04-09 06:00:42'),
(295, 1, 'admin/categories', 'GET', '127.0.0.1', '[]', '2023-04-09 06:00:43', '2023-04-09 06:00:43'),
(296, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-04-09 06:00:48', '2023-04-09 06:00:48'),
(297, 1, 'admin/products/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-04-09 06:00:51', '2023-04-09 06:00:51'),
(298, 1, 'admin/products', 'POST', '127.0.0.1', '{\"name\":\"B\\u00e0n Sofa \\u2013 B\\u00e0n Cafe \\u2013 B\\u00e0n Tr\\u00e0 G\\u1ed7 Cao Su MOHO MILAN 601 Tr\\u1eafng\",\"price\":\"549000\",\"quantity\":\"1\",\"status\":\"on\",\"category_id\":\"8\",\"_token\":\"EaeMAN9IFnkboGZpm5moKsHJD52kFGYke54tSj7y\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/products\"}', '2023-04-09 06:03:25', '2023-04-09 06:03:25'),
(299, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2023-04-09 06:03:27', '2023-04-09 06:03:27'),
(300, 1, 'admin/products/27/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-04-09 06:03:49', '2023-04-09 06:03:49');
INSERT INTO `admin_operation_log` (`id`, `user_id`, `path`, `method`, `ip`, `input`, `created_at`, `updated_at`) VALUES
(301, 1, 'admin/products/27', 'PUT', '127.0.0.1', '{\"name\":\"B\\u00e0n Sofa \\u2013 B\\u00e0n Cafe \\u2013 B\\u00e0n Tr\\u00e0 G\\u1ed7 Cao Su MOHO MILAN 601 Tr\\u1eafng\",\"price\":\"549000\",\"quantity\":\"1\",\"status\":\"off\",\"category_id\":\"8\",\"_token\":\"EaeMAN9IFnkboGZpm5moKsHJD52kFGYke54tSj7y\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/products\"}', '2023-04-09 06:05:23', '2023-04-09 06:05:23'),
(302, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2023-04-09 06:05:24', '2023-04-09 06:05:24'),
(303, 1, 'admin/products/27/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-04-09 06:06:43', '2023-04-09 06:06:43'),
(304, 1, 'admin/products/27', 'PUT', '127.0.0.1', '{\"name\":\"B\\u00e0n Sofa \\u2013 B\\u00e0n Cafe \\u2013 B\\u00e0n Tr\\u00e0 G\\u1ed7 Cao Su MOHO MILAN 601 Tr\\u1eafng\",\"price\":\"549000\",\"quantity\":\"1\",\"status\":\"off\",\"category_id\":\"8\",\"_token\":\"EaeMAN9IFnkboGZpm5moKsHJD52kFGYke54tSj7y\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/products\"}', '2023-04-09 06:07:06', '2023-04-09 06:07:06'),
(305, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2023-04-09 06:07:07', '2023-04-09 06:07:07'),
(306, 1, 'admin/products/27/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-04-09 06:07:12', '2023-04-09 06:07:12'),
(307, 1, 'admin/products/27', 'PUT', '127.0.0.1', '{\"name\":\"B\\u00e0n Sofa \\u2013 B\\u00e0n Cafe \\u2013 B\\u00e0n Tr\\u00e0 G\\u1ed7 Cao Su MOHO MILAN 601 Tr\\u1eafng\",\"price\":\"549000\",\"quantity\":\"1\",\"status\":\"on\",\"category_id\":\"8\",\"_token\":\"EaeMAN9IFnkboGZpm5moKsHJD52kFGYke54tSj7y\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/products\"}', '2023-04-09 06:07:17', '2023-04-09 06:07:17'),
(308, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2023-04-09 06:07:18', '2023-04-09 06:07:18'),
(309, 1, 'admin/products/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-04-09 06:07:40', '2023-04-09 06:07:40'),
(310, 1, 'admin/products', 'POST', '127.0.0.1', '{\"name\":\"B\\u00e0n Sofa \\u2013 B\\u00e0n Cafe \\u2013 B\\u00e0n Tr\\u00e0 G\\u1ed7 Cao Su MOHO MILAN 601 Tr\\u1eafng\",\"price\":\"54900\",\"quantity\":\"4\",\"status\":\"on\",\"category_id\":\"8\",\"_token\":\"EaeMAN9IFnkboGZpm5moKsHJD52kFGYke54tSj7y\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/products\"}', '2023-04-09 06:08:09', '2023-04-09 06:08:09'),
(311, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2023-04-09 06:08:10', '2023-04-09 06:08:10'),
(312, 1, 'admin/products/28/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-04-09 06:09:04', '2023-04-09 06:09:04'),
(313, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-04-09 06:09:34', '2023-04-09 06:09:34'),
(314, 1, 'admin/products/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-04-09 06:09:36', '2023-04-09 06:09:36'),
(315, 1, 'admin/products', 'POST', '127.0.0.1', '{\"name\":\"ban\",\"price\":\"22222\",\"quantity\":\"2\",\"status\":\"on\",\"category_id\":\"8\",\"_token\":\"EaeMAN9IFnkboGZpm5moKsHJD52kFGYke54tSj7y\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/products\"}', '2023-04-09 06:10:00', '2023-04-09 06:10:00'),
(316, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2023-04-09 06:10:00', '2023-04-09 06:10:00'),
(317, 1, 'admin/products/29/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-04-09 06:10:12', '2023-04-09 06:10:12'),
(318, 1, 'admin/products/29', 'PUT', '127.0.0.1', '{\"name\":\"ban\",\"price\":\"22222\",\"quantity\":\"2\",\"status\":\"off\",\"category_id\":\"8\",\"_token\":\"EaeMAN9IFnkboGZpm5moKsHJD52kFGYke54tSj7y\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/products\"}', '2023-04-09 06:10:27', '2023-04-09 06:10:27'),
(319, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2023-04-09 06:10:28', '2023-04-09 06:10:28'),
(320, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2023-04-09 06:10:44', '2023-04-09 06:10:44'),
(321, 1, 'admin/products/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-04-09 06:10:54', '2023-04-09 06:10:54'),
(322, 1, 'admin/products', 'POST', '127.0.0.1', '{\"name\":\"ipad\",\"price\":\"222\",\"quantity\":\"2\",\"status\":\"on\",\"category_id\":\"8\",\"_token\":\"EaeMAN9IFnkboGZpm5moKsHJD52kFGYke54tSj7y\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/products\"}', '2023-04-09 06:11:38', '2023-04-09 06:11:38'),
(323, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2023-04-09 06:11:38', '2023-04-09 06:11:38'),
(324, 1, 'admin/products/30/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-04-09 06:11:52', '2023-04-09 06:11:52'),
(325, 1, 'admin/products/30', 'PUT', '127.0.0.1', '{\"name\":\"ipad\",\"price\":\"222\",\"quantity\":\"2\",\"status\":\"on\",\"category_id\":\"8\",\"_token\":\"EaeMAN9IFnkboGZpm5moKsHJD52kFGYke54tSj7y\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/products\"}', '2023-04-09 06:12:37', '2023-04-09 06:12:37'),
(326, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2023-04-09 06:12:39', '2023-04-09 06:12:39'),
(327, 1, 'admin/products/30/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-04-09 06:12:48', '2023-04-09 06:12:48'),
(328, 1, 'admin/products/30', 'PUT', '127.0.0.1', '{\"name\":\"ipad\",\"price\":\"222\",\"quantity\":\"2\",\"status\":\"off\",\"category_id\":\"8\",\"_token\":\"EaeMAN9IFnkboGZpm5moKsHJD52kFGYke54tSj7y\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/products\"}', '2023-04-09 06:12:54', '2023-04-09 06:12:54'),
(329, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2023-04-09 06:12:55', '2023-04-09 06:12:55'),
(330, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2023-04-09 06:13:17', '2023-04-09 06:13:17'),
(331, 1, 'admin/products/30/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-04-09 06:14:15', '2023-04-09 06:14:15'),
(332, 1, 'admin/products/30', 'PUT', '127.0.0.1', '{\"name\":\"ipad\",\"price\":\"222\",\"quantity\":\"2\",\"status\":\"on\",\"category_id\":\"8\",\"_token\":\"EaeMAN9IFnkboGZpm5moKsHJD52kFGYke54tSj7y\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/products\"}', '2023-04-09 06:14:43', '2023-04-09 06:14:43'),
(333, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2023-04-09 06:14:43', '2023-04-09 06:14:43'),
(334, 1, 'admin/_handle_action_', 'POST', '127.0.0.1', '{\"_key\":\"30\",\"_model\":\"App_Models_Product\",\"_token\":\"EaeMAN9IFnkboGZpm5moKsHJD52kFGYke54tSj7y\",\"_action\":\"Encore_Admin_Grid_Actions_Delete\",\"_input\":\"true\"}', '2023-04-09 06:14:53', '2023-04-09 06:14:53'),
(335, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-04-09 06:14:54', '2023-04-09 06:14:54'),
(336, 1, 'admin/_handle_action_', 'POST', '127.0.0.1', '{\"_key\":\"29\",\"_model\":\"App_Models_Product\",\"_token\":\"EaeMAN9IFnkboGZpm5moKsHJD52kFGYke54tSj7y\",\"_action\":\"Encore_Admin_Grid_Actions_Delete\",\"_input\":\"true\"}', '2023-04-09 06:15:01', '2023-04-09 06:15:01'),
(337, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-04-09 06:15:01', '2023-04-09 06:15:01'),
(338, 1, 'admin/products/27/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-04-09 06:20:20', '2023-04-09 06:20:20'),
(339, 1, 'admin/products/27', 'PUT', '127.0.0.1', '{\"name\":\"B\\u00e0n Sofa \\u2013 B\\u00e0n Cafe \\u2013 B\\u00e0n Tr\\u00e0 G\\u1ed7 Cao Su MOHO MILAN 601 Tr\\u1eafng\",\"price\":\"549000\",\"quantity\":\"1\",\"status\":\"on\",\"category_id\":\"8\",\"_token\":\"EaeMAN9IFnkboGZpm5moKsHJD52kFGYke54tSj7y\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/products\"}', '2023-04-09 06:20:36', '2023-04-09 06:20:36'),
(340, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2023-04-09 06:20:37', '2023-04-09 06:20:37'),
(341, 1, 'admin/products/28/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-04-09 06:21:48', '2023-04-09 06:21:48'),
(342, 1, 'admin/products/28', 'PUT', '127.0.0.1', '{\"name\":\"B\\u00e0n Sofa \\u2013 B\\u00e0n Cafe \\u2013 B\\u00e0n Tr\\u00e0 Tr\\u00f2n Cao G\\u1ed7 MOHO OSLO 901\",\"price\":\"79900\",\"quantity\":\"1\",\"status\":\"on\",\"category_id\":\"8\",\"_token\":\"EaeMAN9IFnkboGZpm5moKsHJD52kFGYke54tSj7y\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/products\"}', '2023-04-09 06:22:31', '2023-04-09 06:22:31'),
(343, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2023-04-09 06:22:31', '2023-04-09 06:22:31'),
(344, 1, 'admin/products/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-04-09 06:22:34', '2023-04-09 06:22:34'),
(345, 1, 'admin/products', 'POST', '127.0.0.1', '{\"name\":\"Set 2 B\\u00e0n Sofa \\u2013 B\\u00e0n Cafe \\u2013 B\\u00e0n Tr\\u00e0 G\\u1ed7 Cao Su MOHO MILAN 601\",\"price\":\"1148000\",\"quantity\":\"0\",\"status\":\"on\",\"category_id\":\"8\",\"_token\":\"EaeMAN9IFnkboGZpm5moKsHJD52kFGYke54tSj7y\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/products\"}', '2023-04-09 06:24:11', '2023-04-09 06:24:11'),
(346, 1, 'admin/products/create', 'GET', '127.0.0.1', '[]', '2023-04-09 06:24:13', '2023-04-09 06:24:13'),
(347, 1, 'admin/products', 'POST', '127.0.0.1', '{\"name\":\"Set 2 B\\u00e0n Sofa \\u2013 B\\u00e0n Cafe \\u2013 B\\u00e0n Tr\\u00e0 G\\u1ed7 Cao Su MOHO MILAN 601\",\"price\":\"114800\",\"quantity\":\"0\",\"status\":\"on\",\"category_id\":\"8\",\"_token\":\"EaeMAN9IFnkboGZpm5moKsHJD52kFGYke54tSj7y\"}', '2023-04-09 06:25:07', '2023-04-09 06:25:07'),
(348, 1, 'admin/products/create', 'GET', '127.0.0.1', '[]', '2023-04-09 06:25:08', '2023-04-09 06:25:08'),
(349, 1, 'admin/products', 'POST', '127.0.0.1', '{\"name\":\"Set 2 B\\u00e0n Sofa \\u2013 B\\u00e0n Cafe \\u2013 B\\u00e0n Tr\\u00e0 G\\u1ed7 Cao Su MOHO MILAN 601\",\"price\":\"11480\",\"quantity\":\"0\",\"status\":\"on\",\"category_id\":\"8\",\"_token\":\"EaeMAN9IFnkboGZpm5moKsHJD52kFGYke54tSj7y\"}', '2023-04-09 06:25:12', '2023-04-09 06:25:12'),
(350, 1, 'admin/products/create', 'GET', '127.0.0.1', '[]', '2023-04-09 06:25:13', '2023-04-09 06:25:13'),
(351, 1, 'admin/products', 'POST', '127.0.0.1', '{\"name\":\"Set 2 B\\u00e0n Sofa \\u2013 B\\u00e0n Cafe \\u2013 B\\u00e0n Tr\\u00e0 G\\u1ed7 Cao Su MOHO MILAN 601\",\"price\":\"1148\",\"quantity\":\"0\",\"status\":\"on\",\"category_id\":\"8\",\"_token\":\"EaeMAN9IFnkboGZpm5moKsHJD52kFGYke54tSj7y\"}', '2023-04-09 06:25:18', '2023-04-09 06:25:18'),
(352, 1, 'admin/products/create', 'GET', '127.0.0.1', '[]', '2023-04-09 06:25:18', '2023-04-09 06:25:18'),
(353, 1, 'admin/products', 'POST', '127.0.0.1', '{\"name\":\"Set 2 B\\u00e0n Sofa \\u2013 B\\u00e0n Cafe \\u2013 B\\u00e0n Tr\\u00e0 G\\u1ed7 Cao Su MOHO MILAN 601\",\"price\":\"114\",\"quantity\":\"0\",\"status\":\"on\",\"category_id\":\"8\",\"_token\":\"EaeMAN9IFnkboGZpm5moKsHJD52kFGYke54tSj7y\"}', '2023-04-09 06:25:23', '2023-04-09 06:25:23'),
(354, 1, 'admin/products/create', 'GET', '127.0.0.1', '[]', '2023-04-09 06:25:24', '2023-04-09 06:25:24'),
(355, 1, 'admin/products', 'POST', '127.0.0.1', '{\"name\":\"Set 2 B\\u00e0n Sofa \\u2013 B\\u00e0n Cafe \\u2013 B\\u00e0n Tr\\u00e0 G\\u1ed7 Cao Su MOHO MILAN 601\",\"price\":\"11400\",\"quantity\":\"0\",\"status\":\"on\",\"category_id\":\"8\",\"_token\":\"EaeMAN9IFnkboGZpm5moKsHJD52kFGYke54tSj7y\"}', '2023-04-09 06:25:53', '2023-04-09 06:25:53'),
(356, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2023-04-09 06:25:54', '2023-04-09 06:25:54'),
(357, 1, 'admin/products/31/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-04-09 06:26:03', '2023-04-09 06:26:03'),
(358, 1, 'admin/products/31', 'PUT', '127.0.0.1', '{\"name\":\"Set 2 B\\u00e0n Sofa \\u2013 B\\u00e0n Cafe \\u2013 B\\u00e0n Tr\\u00e0 G\\u1ed7 Cao Su MOHO MILAN 601\",\"price\":\"11400\",\"quantity\":\"1\",\"status\":\"on\",\"category_id\":\"8\",\"_token\":\"EaeMAN9IFnkboGZpm5moKsHJD52kFGYke54tSj7y\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/products\"}', '2023-04-09 06:26:15', '2023-04-09 06:26:15'),
(359, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2023-04-09 06:26:16', '2023-04-09 06:26:16'),
(360, 1, 'admin/products/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-04-09 06:26:23', '2023-04-09 06:26:23'),
(361, 1, 'admin/products', 'POST', '127.0.0.1', '{\"name\":\"B\\u00e0n Sofa \\u2013 B\\u00e0n Cafe \\u2013 B\\u00e0n Tr\\u00e0 Tr\\u00f2n G\\u1ed7 MOHO OSLO 901\",\"price\":\"1299000\",\"quantity\":\"0\",\"status\":\"on\",\"category_id\":\"8\",\"_token\":\"EaeMAN9IFnkboGZpm5moKsHJD52kFGYke54tSj7y\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/products\"}', '2023-04-09 06:27:04', '2023-04-09 06:27:04'),
(362, 1, 'admin/products/create', 'GET', '127.0.0.1', '[]', '2023-04-09 06:27:05', '2023-04-09 06:27:05'),
(363, 1, 'admin/products', 'POST', '127.0.0.1', '{\"name\":\"B\\u00e0n Sofa \\u2013 B\\u00e0n Cafe \\u2013 B\\u00e0n Tr\\u00e0 Tr\\u00f2n G\\u1ed7 MOHO OSLO 901\",\"price\":\"12990\",\"quantity\":\"1\",\"status\":\"on\",\"category_id\":\"8\",\"_token\":\"EaeMAN9IFnkboGZpm5moKsHJD52kFGYke54tSj7y\"}', '2023-04-09 06:27:20', '2023-04-09 06:27:20'),
(364, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2023-04-09 06:27:21', '2023-04-09 06:27:21'),
(365, 1, 'admin/products/31/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-04-09 06:27:30', '2023-04-09 06:27:30'),
(366, 1, 'admin/products/31', 'PUT', '127.0.0.1', '{\"name\":\"Set 2 B\\u00e0n Sofa \\u2013 B\\u00e0n Cafe \\u2013 B\\u00e0n Tr\\u00e0 G\\u1ed7 Cao Su MOHO MILAN 601\",\"price\":\"11400\",\"quantity\":\"1\",\"status\":\"on\",\"category_id\":\"8\",\"_token\":\"EaeMAN9IFnkboGZpm5moKsHJD52kFGYke54tSj7y\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/products\"}', '2023-04-09 06:27:42', '2023-04-09 06:27:42'),
(367, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2023-04-09 06:27:43', '2023-04-09 06:27:43'),
(368, 1, 'admin/products/32/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-04-09 06:27:49', '2023-04-09 06:27:49'),
(369, 1, 'admin/products/32', 'PUT', '127.0.0.1', '{\"name\":\"B\\u00e0n Sofa \\u2013 B\\u00e0n Cafe \\u2013 B\\u00e0n Tr\\u00e0 Tr\\u00f2n G\\u1ed7 MOHO OSLO 901\",\"price\":\"12990\",\"quantity\":\"1\",\"status\":\"on\",\"category_id\":\"8\",\"_token\":\"EaeMAN9IFnkboGZpm5moKsHJD52kFGYke54tSj7y\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/products\"}', '2023-04-09 06:27:58', '2023-04-09 06:27:58'),
(370, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2023-04-09 06:27:59', '2023-04-09 06:27:59'),
(371, 1, 'admin/products/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-04-09 06:28:07', '2023-04-09 06:28:07'),
(372, 1, 'admin/products', 'POST', '127.0.0.1', '{\"name\":\"B\\u00e0n Sofa \\u2013 B\\u00e0n Cafe \\u2013 B\\u00e0n Tr\\u00e0 Tr\\u00f2n G\\u1ed7 MOHO OSLO 901\",\"price\":\"2990\",\"quantity\":\"0\",\"status\":\"on\",\"category_id\":\"8\",\"_token\":\"EaeMAN9IFnkboGZpm5moKsHJD52kFGYke54tSj7y\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/products\"}', '2023-04-09 06:28:34', '2023-04-09 06:28:34'),
(373, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2023-04-09 06:28:35', '2023-04-09 06:28:35'),
(374, 1, 'admin/products/31/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-04-09 06:28:49', '2023-04-09 06:28:49'),
(375, 1, 'admin/products/31', 'PUT', '127.0.0.1', '{\"name\":\"Set 2 B\\u00e0n Sofa \\u2013 B\\u00e0n Cafe \\u2013 B\\u00e0n Tr\\u00e0 G\\u1ed7 Cao Su MOHO MILAN 601\",\"price\":\"11400\",\"quantity\":\"1\",\"status\":\"on\",\"category_id\":\"8\",\"_token\":\"EaeMAN9IFnkboGZpm5moKsHJD52kFGYke54tSj7y\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/products\"}', '2023-04-09 06:29:03', '2023-04-09 06:29:03'),
(376, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2023-04-09 06:29:04', '2023-04-09 06:29:04'),
(377, 1, 'admin/products/32/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-04-09 06:29:13', '2023-04-09 06:29:13'),
(378, 1, 'admin/products/32', 'PUT', '127.0.0.1', '{\"name\":\"B\\u00e0n Sofa \\u2013 B\\u00e0n Cafe \\u2013 B\\u00e0n Tr\\u00e0 Tr\\u00f2n G\\u1ed7 MOHO OSLO 901\",\"price\":\"12990\",\"quantity\":\"1\",\"status\":\"on\",\"category_id\":\"8\",\"_token\":\"EaeMAN9IFnkboGZpm5moKsHJD52kFGYke54tSj7y\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/products\"}', '2023-04-09 06:29:26', '2023-04-09 06:29:26'),
(379, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2023-04-09 06:29:26', '2023-04-09 06:29:26'),
(380, 1, 'admin/products/33/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-04-09 06:29:35', '2023-04-09 06:29:35'),
(381, 1, 'admin/products/33', 'PUT', '127.0.0.1', '{\"name\":\"B\\u00e0n Sofa \\u2013 B\\u00e0n Cafe \\u2013 B\\u00e0n Tr\\u00e0 Tr\\u00f2n G\\u1ed7 MOHO OSLO 901\",\"price\":\"2990\",\"quantity\":\"1\",\"status\":\"on\",\"category_id\":\"8\",\"_token\":\"EaeMAN9IFnkboGZpm5moKsHJD52kFGYke54tSj7y\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/products\"}', '2023-04-09 06:30:05', '2023-04-09 06:30:05'),
(382, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2023-04-09 06:30:05', '2023-04-09 06:30:05'),
(383, 1, 'admin/products/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-04-09 06:30:40', '2023-04-09 06:30:40'),
(384, 1, 'admin/products', 'POST', '127.0.0.1', '{\"name\":\"B\\u00e0n Sofa - B\\u00e0n Cafe - B\\u00e0n Tr\\u00e0 G\\u1ed7 MOHO VLINE 501\",\"price\":\"59900\",\"quantity\":\"0\",\"status\":\"on\",\"category_id\":\"8\",\"_token\":\"EaeMAN9IFnkboGZpm5moKsHJD52kFGYke54tSj7y\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/products\"}', '2023-04-09 06:32:06', '2023-04-09 06:32:06'),
(385, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2023-04-09 06:32:06', '2023-04-09 06:32:06'),
(386, 1, 'admin/products/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-04-09 06:32:11', '2023-04-09 06:32:11'),
(387, 1, 'admin/products', 'POST', '127.0.0.1', '{\"name\":\"B\\u00e0n Sofa - B\\u00e0n Cafe - B\\u00e0n Tr\\u00e0 G\\u1ed7 MOHO VLINE 502\",\"price\":\"68900\",\"quantity\":\"1\",\"status\":\"on\",\"category_id\":\"8\",\"_token\":\"EaeMAN9IFnkboGZpm5moKsHJD52kFGYke54tSj7y\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/products\"}', '2023-04-09 06:32:45', '2023-04-09 06:32:45'),
(388, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2023-04-09 06:32:45', '2023-04-09 06:32:45'),
(389, 1, 'admin/products/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-04-09 06:32:48', '2023-04-09 06:32:48'),
(390, 1, 'admin/products', 'POST', '127.0.0.1', '{\"name\":\"B\\u00e0n Sofa - B\\u00e0n Cafe - B\\u00e0n Tr\\u00e0 G\\u1ed7 MOHO VLINE 503\",\"price\":\"67800\",\"quantity\":\"1\",\"status\":\"on\",\"category_id\":\"8\",\"_token\":\"EaeMAN9IFnkboGZpm5moKsHJD52kFGYke54tSj7y\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/products\"}', '2023-04-09 06:33:22', '2023-04-09 06:33:22'),
(391, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2023-04-09 06:33:22', '2023-04-09 06:33:22'),
(392, 1, 'admin/products/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-04-09 06:33:48', '2023-04-09 06:33:48'),
(393, 1, 'admin/products', 'POST', '127.0.0.1', '{\"name\":\"B\\u00e0n Sofa - B\\u00e0n Cafe - B\\u00e0n Tr\\u00e0 G\\u1ed7 MOHO VLINE 504\",\"price\":\"58900\",\"quantity\":\"1\",\"status\":\"on\",\"category_id\":\"8\",\"_token\":\"EaeMAN9IFnkboGZpm5moKsHJD52kFGYke54tSj7y\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/products\"}', '2023-04-09 06:34:13', '2023-04-09 06:34:13'),
(394, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2023-04-09 06:34:14', '2023-04-09 06:34:14'),
(395, 1, 'admin/products/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-04-09 06:34:17', '2023-04-09 06:34:17'),
(396, 1, 'admin/products', 'POST', '127.0.0.1', '{\"name\":\"B\\u00e0n Sofa - B\\u00e0n Cafe - B\\u00e0n Tr\\u00e0 G\\u1ed7 Th\\u00f4ng MOHO VLINE 505\",\"price\":\"75900\",\"quantity\":\"0\",\"status\":\"on\",\"category_id\":\"8\",\"_token\":\"EaeMAN9IFnkboGZpm5moKsHJD52kFGYke54tSj7y\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/products\"}', '2023-04-09 07:22:28', '2023-04-09 07:22:28'),
(397, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2023-04-09 07:22:30', '2023-04-09 07:22:30'),
(398, 1, 'admin/products/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-04-09 07:24:05', '2023-04-09 07:24:05'),
(399, 1, 'admin/products', 'POST', '127.0.0.1', '{\"name\":\"Gh\\u1ebf Sofa G\\u1ed7 Cao Su T\\u1ef1 Nhi\\u00ean MOHO FREDERICIA 601\",\"price\":\"56900\",\"quantity\":\"0\",\"status\":\"on\",\"category_id\":\"9\",\"_token\":\"EaeMAN9IFnkboGZpm5moKsHJD52kFGYke54tSj7y\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/products\"}', '2023-04-09 07:24:42', '2023-04-09 07:24:42'),
(400, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2023-04-09 07:24:42', '2023-04-09 07:24:42'),
(401, 1, 'admin/products/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-04-09 07:25:09', '2023-04-09 07:25:09'),
(402, 1, 'admin/products', 'POST', '127.0.0.1', '{\"name\":\"Gh\\u1ebf Sofa G\\u1ed7 Cao Su T\\u1ef1 Nhi\\u00ean MOHO FREDERICIA 602\",\"price\":\"63900\",\"quantity\":\"1\",\"status\":\"on\",\"category_id\":\"9\",\"_token\":\"EaeMAN9IFnkboGZpm5moKsHJD52kFGYke54tSj7y\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/products\"}', '2023-04-09 07:27:34', '2023-04-09 07:27:34'),
(403, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2023-04-09 07:27:35', '2023-04-09 07:27:35'),
(404, 1, 'admin/products/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-04-09 07:28:06', '2023-04-09 07:28:06'),
(405, 1, 'admin/products', 'POST', '127.0.0.1', '{\"name\":\"Gh\\u1ebf Sofa G\\u1ed7 Cao Su T\\u1ef1 Nhi\\u00ean MOHO FREDERICIA 603\",\"price\":\"36800\",\"quantity\":\"2\",\"status\":\"on\",\"category_id\":\"9\",\"_token\":\"EaeMAN9IFnkboGZpm5moKsHJD52kFGYke54tSj7y\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/products\"}', '2023-04-09 07:28:36', '2023-04-09 07:28:36'),
(406, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2023-04-09 07:28:36', '2023-04-09 07:28:36'),
(407, 1, 'admin/products/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-04-09 07:29:12', '2023-04-09 07:29:12'),
(408, 1, 'admin/products', 'POST', '127.0.0.1', '{\"name\":\"V\\u1ecf B\\u1ecdc N\\u1ec7m Sofa MOHO VLINE M\\u00e0u X\\u00e1m \\u0110\\u1eadm\",\"price\":\"18900\",\"quantity\":\"2\",\"status\":\"on\",\"category_id\":\"9\",\"_token\":\"EaeMAN9IFnkboGZpm5moKsHJD52kFGYke54tSj7y\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/products\"}', '2023-04-09 07:29:59', '2023-04-09 07:29:59'),
(409, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2023-04-09 07:30:00', '2023-04-09 07:30:00'),
(410, 1, 'admin/products/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-04-09 07:30:15', '2023-04-09 07:30:15'),
(411, 1, 'admin/products', 'POST', '127.0.0.1', '{\"name\":\"V\\u1ecf B\\u1ecdc N\\u1ec7m Sofa MOHO VLINE M\\u00e0u X\\u00e1m \\u0110\\u1eadm 02\",\"price\":\"150000\",\"quantity\":\"1\",\"status\":\"on\",\"category_id\":\"9\",\"_token\":\"EaeMAN9IFnkboGZpm5moKsHJD52kFGYke54tSj7y\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/products\"}', '2023-04-09 07:30:48', '2023-04-09 07:30:48'),
(412, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2023-04-09 07:30:48', '2023-04-09 07:30:48'),
(413, 1, 'admin', 'GET', '127.0.0.1', '[]', '2023-04-09 08:14:15', '2023-04-09 08:14:15'),
(414, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-04-09 08:14:19', '2023-04-09 08:14:19'),
(415, 1, 'admin/products/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-04-09 08:15:41', '2023-04-09 08:15:41'),
(416, 1, 'admin/products', 'POST', '127.0.0.1', '{\"name\":\"V\\u1ecf B\\u1ecdc N\\u1ec7m Sofa MOHO VLINE M\\u00e0u Be\",\"price\":\"98000\",\"quantity\":\"1\",\"status\":\"on\",\"category_id\":\"9\",\"_token\":\"EaeMAN9IFnkboGZpm5moKsHJD52kFGYke54tSj7y\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/products\"}', '2023-04-09 08:16:22', '2023-04-09 08:16:22'),
(417, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2023-04-09 08:16:23', '2023-04-09 08:16:23'),
(418, 1, 'admin/products/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-04-09 08:16:31', '2023-04-09 08:16:31'),
(419, 1, 'admin/products', 'POST', '127.0.0.1', '{\"name\":\"Gh\\u1ebf Sofa G\\u00f3c Ch\\u1eef L G\\u1ed7 Cao Su T\\u1ef1 Nhi\\u00ean MOHO VLINE 601 K\\u00e8m \\u0110\\u00f4n\",\"price\":\"59000\",\"quantity\":\"1\",\"status\":\"on\",\"category_id\":\"9\",\"_token\":\"EaeMAN9IFnkboGZpm5moKsHJD52kFGYke54tSj7y\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/products\"}', '2023-04-09 08:17:27', '2023-04-09 08:17:27'),
(420, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2023-04-09 08:17:27', '2023-04-09 08:17:27'),
(421, 1, 'admin/products/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-04-09 08:17:33', '2023-04-09 08:17:33'),
(422, 1, 'admin/products', 'POST', '127.0.0.1', '{\"name\":\"Gh\\u1ebf Sofa G\\u1ed7 Cao Su T\\u1ef1 Nhi\\u00ean MOHO FIJI 401\",\"price\":\"34900\",\"quantity\":\"1\",\"status\":\"on\",\"category_id\":\"9\",\"_token\":\"EaeMAN9IFnkboGZpm5moKsHJD52kFGYke54tSj7y\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/products\"}', '2023-04-09 08:18:33', '2023-04-09 08:18:33'),
(423, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2023-04-09 08:18:34', '2023-04-09 08:18:34'),
(424, 1, 'admin/products/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-04-09 08:19:58', '2023-04-09 08:19:58'),
(425, 1, 'admin/products', 'POST', '127.0.0.1', '{\"name\":\"Gh\\u1ebf Sofa G\\u1ed7 Cao Su T\\u1ef1 Nhi\\u00ean MOHO FYN 901\",\"price\":\"71200\",\"quantity\":\"1\",\"status\":\"on\",\"category_id\":\"9\",\"_token\":\"EaeMAN9IFnkboGZpm5moKsHJD52kFGYke54tSj7y\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/products\"}', '2023-04-09 08:20:26', '2023-04-09 08:20:26'),
(426, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2023-04-09 08:20:26', '2023-04-09 08:20:26'),
(427, 1, 'admin/products/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-04-09 08:21:02', '2023-04-09 08:21:02'),
(428, 1, 'admin/products', 'POST', '127.0.0.1', '{\"name\":\"Gh\\u1ebf Sofa G\\u1ed7 Cao Su T\\u1ef1 Nhi\\u00ean MOHO TROMSO 601\",\"price\":\"75000\",\"quantity\":\"1\",\"status\":\"on\",\"category_id\":\"9\",\"_token\":\"EaeMAN9IFnkboGZpm5moKsHJD52kFGYke54tSj7y\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/products\"}', '2023-04-09 08:21:20', '2023-04-09 08:21:20'),
(429, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2023-04-09 08:21:21', '2023-04-09 08:21:21'),
(430, 1, 'admin/products/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-04-09 08:21:50', '2023-04-09 08:21:50'),
(431, 1, 'admin/products', 'POST', '127.0.0.1', '{\"name\":\"Combo B\\u1ebfp mini 1m2 MOHO KITCHEN\",\"price\":\"26800\",\"quantity\":\"1\",\"status\":\"on\",\"category_id\":\"10\",\"_token\":\"EaeMAN9IFnkboGZpm5moKsHJD52kFGYke54tSj7y\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/products\"}', '2023-04-09 08:22:59', '2023-04-09 08:22:59'),
(432, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2023-04-09 08:23:01', '2023-04-09 08:23:01'),
(433, 1, 'admin/products/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-04-09 08:23:14', '2023-04-09 08:23:14'),
(434, 1, 'admin/products', 'POST', '127.0.0.1', '{\"name\":\"H\\u1ec6 T\\u1ee6 B\\u1ebeP MOHO KITCHEN D\\u00d2NG ESSENTIAL\",\"price\":\"18000\",\"quantity\":\"1\",\"status\":\"on\",\"category_id\":\"10\",\"_token\":\"EaeMAN9IFnkboGZpm5moKsHJD52kFGYke54tSj7y\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/products\"}', '2023-04-09 08:23:35', '2023-04-09 08:23:35'),
(435, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2023-04-09 08:23:36', '2023-04-09 08:23:36'),
(436, 1, 'admin/products/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-04-09 08:23:38', '2023-04-09 08:23:38'),
(437, 1, 'admin/products', 'POST', '127.0.0.1', '{\"name\":\"H\\u1ec6 T\\u1ee6 B\\u1ebeP MOHO KITCHEN D\\u00d2NG MIX (H\\u1ec6 T\\u1ee6 B\\u1ebeP K\\u1ebeT H\\u1ee2P)\",\"price\":\"99800\",\"quantity\":\"1\",\"status\":\"on\",\"category_id\":\"10\",\"_token\":\"EaeMAN9IFnkboGZpm5moKsHJD52kFGYke54tSj7y\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/products\"}', '2023-04-09 08:24:40', '2023-04-09 08:24:40'),
(438, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2023-04-09 08:24:40', '2023-04-09 08:24:40'),
(439, 1, 'admin/products/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-04-09 08:25:04', '2023-04-09 08:25:04'),
(440, 1, 'admin/products', 'POST', '127.0.0.1', '{\"name\":\"H\\u1ec6 T\\u1ee6 B\\u1ebeP MOHO KITCHEN D\\u00d2NG PREMIUM\",\"price\":\"15600\",\"quantity\":\"1\",\"status\":\"on\",\"category_id\":\"10\",\"_token\":\"EaeMAN9IFnkboGZpm5moKsHJD52kFGYke54tSj7y\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/products\"}', '2023-04-09 08:25:28', '2023-04-09 08:25:28'),
(441, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2023-04-09 08:25:28', '2023-04-09 08:25:28'),
(442, 1, 'admin/products/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-04-09 08:26:29', '2023-04-09 08:26:29'),
(443, 1, 'admin/products', 'POST', '127.0.0.1', '{\"name\":\"H\\u1ec6 T\\u1ee6 B\\u1ebeP MOHO KITCHEN D\\u00d2NG PREMIUM 02\",\"price\":\"58000\",\"quantity\":\"1\",\"status\":\"on\",\"category_id\":\"10\",\"_token\":\"EaeMAN9IFnkboGZpm5moKsHJD52kFGYke54tSj7y\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/products\"}', '2023-04-09 08:26:58', '2023-04-09 08:26:58'),
(444, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2023-04-09 08:26:58', '2023-04-09 08:26:58'),
(445, 1, 'admin', 'GET', '127.0.0.1', '[]', '2023-04-09 18:54:18', '2023-04-09 18:54:18'),
(446, 1, 'admin', 'GET', '127.0.0.1', '[]', '2023-05-14 06:43:49', '2023-05-14 06:43:49'),
(447, 1, 'admin', 'GET', '127.0.0.1', '[]', '2023-05-19 21:36:14', '2023-05-19 21:36:14'),
(448, 1, 'admin/categories', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-05-19 21:36:18', '2023-05-19 21:36:18'),
(449, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-05-19 21:36:24', '2023-05-19 21:36:24'),
(450, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-05-19 21:36:35', '2023-05-19 21:36:35'),
(451, 1, 'admin/categories', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-05-19 21:36:41', '2023-05-19 21:36:41'),
(452, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-05-19 21:36:48', '2023-05-19 21:36:48'),
(453, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-05-19 21:36:50', '2023-05-19 21:36:50'),
(454, 1, 'admin/categories', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-05-19 21:36:59', '2023-05-19 21:36:59'),
(455, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-05-19 21:37:03', '2023-05-19 21:37:03'),
(456, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-05-19 21:37:06', '2023-05-19 21:37:06'),
(457, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-05-19 21:37:10', '2023-05-19 21:37:10'),
(458, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-05-19 21:37:12', '2023-05-19 21:37:12'),
(459, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-05-19 21:37:16', '2023-05-19 21:37:16'),
(460, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-05-19 21:37:17', '2023-05-19 21:37:17'),
(461, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-05-19 21:37:17', '2023-05-19 21:37:17'),
(462, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-05-19 21:37:17', '2023-05-19 21:37:17'),
(463, 1, 'admin/categories', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-05-19 21:37:23', '2023-05-19 21:37:23'),
(464, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-05-19 21:37:24', '2023-05-19 21:37:24'),
(465, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-05-19 21:37:24', '2023-05-19 21:37:24'),
(466, 1, 'admin/categories', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-05-19 21:37:25', '2023-05-19 21:37:25'),
(467, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-05-19 21:37:25', '2023-05-19 21:37:25'),
(468, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-05-19 21:37:31', '2023-05-19 21:37:31'),
(469, 1, 'admin/categories', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-05-19 21:37:33', '2023-05-19 21:37:33'),
(470, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-05-19 21:37:34', '2023-05-19 21:37:34'),
(471, 1, 'admin/categories', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-05-19 21:37:36', '2023-05-19 21:37:36'),
(472, 1, 'admin/categories', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-05-19 21:37:39', '2023-05-19 21:37:39'),
(473, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-05-19 21:37:39', '2023-05-19 21:37:39'),
(474, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-05-19 21:37:40', '2023-05-19 21:37:40'),
(475, 1, 'admin/categories', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-05-19 21:37:41', '2023-05-19 21:37:41'),
(476, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-05-19 21:37:42', '2023-05-19 21:37:42'),
(477, 1, 'admin/categories', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-05-19 21:37:44', '2023-05-19 21:37:44'),
(478, 1, 'admin/categories', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-05-19 21:37:45', '2023-05-19 21:37:45'),
(479, 1, 'admin/categories', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-05-19 21:38:36', '2023-05-19 21:38:36'),
(480, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-05-19 21:38:36', '2023-05-19 21:38:36'),
(481, 1, 'admin/categories', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-05-19 21:38:37', '2023-05-19 21:38:37'),
(482, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-05-19 21:38:37', '2023-05-19 21:38:37'),
(483, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-05-19 21:38:38', '2023-05-19 21:38:38'),
(484, 1, 'admin/categories', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-05-19 21:38:38', '2023-05-19 21:38:38'),
(485, 1, 'admin/categories', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-05-19 21:38:38', '2023-05-19 21:38:38'),
(486, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-05-19 21:38:39', '2023-05-19 21:38:39'),
(487, 1, 'admin/categories', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-05-19 21:38:39', '2023-05-19 21:38:39'),
(488, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-05-19 21:38:40', '2023-05-19 21:38:40'),
(489, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-05-19 21:38:40', '2023-05-19 21:38:40'),
(490, 1, 'admin', 'GET', '127.0.0.1', '[]', '2023-05-23 22:02:16', '2023-05-23 22:02:16'),
(491, 1, 'admin/categories', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-05-23 22:02:24', '2023-05-23 22:02:24'),
(492, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-05-23 22:04:54', '2023-05-23 22:04:54'),
(493, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-05-23 22:05:16', '2023-05-23 22:05:16'),
(494, 1, 'admin/categories', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-05-23 22:07:18', '2023-05-23 22:07:18'),
(495, 1, 'admin', 'GET', '127.0.0.1', '[]', '2023-05-24 00:48:58', '2023-05-24 00:48:58'),
(496, 1, 'admin', 'GET', '127.0.0.1', '[]', '2023-05-24 00:49:00', '2023-05-24 00:49:00'),
(497, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-05-24 00:49:04', '2023-05-24 00:49:04'),
(498, 1, 'admin', 'GET', '127.0.0.1', '[]', '2023-05-24 00:55:07', '2023-05-24 00:55:07'),
(499, 1, 'admin/categories', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-05-24 00:55:11', '2023-05-24 00:55:11'),
(500, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2023-05-24 00:55:18', '2023-05-24 00:55:18'),
(501, 1, 'admin/users', 'GET', '127.0.0.1', '[]', '2023-05-24 00:55:34', '2023-05-24 00:55:34');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `admin_permissions`
--

CREATE TABLE `admin_permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) NOT NULL,
  `slug` varchar(50) NOT NULL,
  `http_method` varchar(255) DEFAULT NULL,
  `http_path` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `admin_permissions`
--

INSERT INTO `admin_permissions` (`id`, `name`, `slug`, `http_method`, `http_path`, `created_at`, `updated_at`) VALUES
(1, 'All permission', '*', '', '*', NULL, NULL),
(2, 'Dashboard', 'dashboard', 'GET', '/', NULL, NULL),
(3, 'Login', 'auth.login', '', '/auth/login\r\n/auth/logout', NULL, NULL),
(4, 'User setting', 'auth.setting', 'GET,PUT', '/auth/setting', NULL, NULL),
(5, 'Auth management', 'auth.management', '', '/auth/roles\r\n/auth/permissions\r\n/auth/menu\r\n/auth/logs', NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `admin_roles`
--

CREATE TABLE `admin_roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) NOT NULL,
  `slug` varchar(50) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `admin_roles`
--

INSERT INTO `admin_roles` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Administrator', 'administrator', '2023-03-21 05:02:10', '2023-03-21 05:02:10');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `admin_role_menu`
--

CREATE TABLE `admin_role_menu` (
  `role_id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `admin_role_menu`
--

INSERT INTO `admin_role_menu` (`role_id`, `menu_id`, `created_at`, `updated_at`) VALUES
(1, 2, NULL, NULL),
(1, 8, NULL, NULL),
(1, 10, NULL, NULL),
(1, 11, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `admin_role_permissions`
--

CREATE TABLE `admin_role_permissions` (
  `role_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `admin_role_permissions`
--

INSERT INTO `admin_role_permissions` (`role_id`, `permission_id`, `created_at`, `updated_at`) VALUES
(1, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `admin_role_users`
--

CREATE TABLE `admin_role_users` (
  `role_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `admin_role_users`
--

INSERT INTO `admin_role_users` (`role_id`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `admin_users`
--

CREATE TABLE `admin_users` (
  `id` int(10) UNSIGNED NOT NULL,
  `username` varchar(190) NOT NULL,
  `password` varchar(60) NOT NULL,
  `name` varchar(255) NOT NULL,
  `avatar` varchar(255) DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `admin_users`
--

INSERT INTO `admin_users` (`id`, `username`, `password`, `name`, `avatar`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', '$2y$10$rH20AdBOpy6XKSbzGkbel.BXRluxSsfd8xvEELUXSREYq40QpEfea', 'Administrator', NULL, 'okVamY1fdOHXldarkHtq46Yk115gy2EV9ZhW5XYN9ZS9T9exwCfpYyraQvv3', '2023-03-21 05:02:10', '2023-03-21 05:02:10');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `admin_user_permissions`
--

CREATE TABLE `admin_user_permissions` (
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `categories`
--

INSERT INTO `categories` (`id`, `name`, `created_at`, `updated_at`) VALUES
(8, 'Bàn', '2023-04-09 05:59:21', '2023-04-09 05:59:21'),
(9, 'Ghế', '2023-04-09 05:59:31', '2023-04-09 05:59:31'),
(10, 'Tủ', '2023-04-09 06:00:42', '2023-04-09 06:00:42');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `failed_jobs`
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
-- Cấu trúc bảng cho bảng `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2016_01_04_173148_create_admin_tables', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(6, '2023_03_21_120333_create_categories_table', 2),
(7, '2023_03_21_120348_create_products_table', 2);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `personal_access_tokens`
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
-- Cấu trúc bảng cho bảng `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `price` decimal(8,2) NOT NULL,
  `quantity` int(11) NOT NULL DEFAULT 1,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `products`
--

INSERT INTO `products` (`id`, `name`, `image`, `price`, `quantity`, `status`, `category_id`, `created_at`, `updated_at`) VALUES
(27, 'Bàn Sofa – Bàn Cafe – Bàn Trà Gỗ Cao Su MOHO MILAN 601 Trắng', 'images/ban-1-2.jpg', '549000.00', 1, 1, 8, '2023-04-09 06:03:27', '2023-04-09 06:20:36'),
(28, 'Bàn Sofa – Bàn Cafe – Bàn Trà Tròn Cao Gỗ MOHO OSLO 901', 'images/ban-4-1.jpg', '79900.00', 1, 1, 8, '2023-04-09 06:08:09', '2023-04-09 06:22:31'),
(31, 'Set 2 Bàn Sofa – Bàn Cafe – Bàn Trà Gỗ Cao Su MOHO MILAN 601', 'images/ban-5-4.jpg', '11400.00', 1, 1, 8, '2023-04-09 06:25:54', '2023-04-09 06:29:03'),
(32, 'Bàn Sofa – Bàn Cafe – Bàn Trà Tròn Gỗ MOHO OSLO 901', 'images/ban-6-1.jpg', '12990.00', 1, 1, 8, '2023-04-09 06:27:20', '2023-04-09 06:29:26'),
(33, 'Bàn Sofa – Bàn Cafe – Bàn Trà Tròn Gỗ MOHO OSLO 901', 'images/ban-4-4.jpg', '2990.00', 1, 1, 8, '2023-04-09 06:28:35', '2023-04-09 06:30:05'),
(34, 'Bàn Sofa - Bàn Cafe - Bàn Trà Gỗ MOHO VLINE 501', 'images/ban-7-1.jpg', '59900.00', 0, 1, 8, '2023-04-09 06:32:06', '2023-04-09 06:32:06'),
(35, 'Bàn Sofa - Bàn Cafe - Bàn Trà Gỗ MOHO VLINE 502', 'images/ban-7-2.jpg', '68900.00', 1, 1, 8, '2023-04-09 06:32:45', '2023-04-09 06:32:45'),
(36, 'Bàn Sofa - Bàn Cafe - Bàn Trà Gỗ MOHO VLINE 503', 'images/ban-7-3.jpg', '67800.00', 1, 1, 8, '2023-04-09 06:33:22', '2023-04-09 06:33:22'),
(37, 'Bàn Sofa - Bàn Cafe - Bàn Trà Gỗ MOHO VLINE 504', 'images/ban-7-4.jpg', '58900.00', 1, 1, 8, '2023-04-09 06:34:13', '2023-04-09 06:34:13'),
(38, 'Bàn Sofa - Bàn Cafe - Bàn Trà Gỗ Thông MOHO VLINE 505', 'images/ban-8-1.jpg', '75900.00', 0, 1, 8, '2023-04-09 07:22:29', '2023-04-09 07:22:29'),
(39, 'Ghế Sofa Gỗ Cao Su Tự Nhiên MOHO FREDERICIA 601', 'images/ghe-5-1.jpg', '56900.00', 0, 1, 9, '2023-04-09 07:24:42', '2023-04-09 07:24:42'),
(40, 'Ghế Sofa Gỗ Cao Su Tự Nhiên MOHO FREDERICIA 602', 'images/ghe-8-5.jpg', '63900.00', 1, 1, 9, '2023-04-09 07:27:34', '2023-04-09 07:27:34'),
(41, 'Ghế Sofa Gỗ Cao Su Tự Nhiên MOHO FREDERICIA 603', 'images/ghe-7-2.jpg', '36800.00', 2, 1, 9, '2023-04-09 07:28:36', '2023-04-09 07:28:36'),
(42, 'Vỏ Bọc Nệm Sofa MOHO VLINE Màu Xám Đậm', 'images/ghee011.jpg', '18900.00', 2, 1, 9, '2023-04-09 07:29:59', '2023-04-09 07:29:59'),
(43, 'Vỏ Bọc Nệm Sofa MOHO VLINE Màu Xám Đậm 02', 'images/ghe-3-1.jpg', '150000.00', 1, 1, 9, '2023-04-09 07:30:48', '2023-04-09 07:30:48'),
(44, 'Vỏ Bọc Nệm Sofa MOHO VLINE Màu Be', 'images/ghee05.jpg', '98000.00', 1, 1, 9, '2023-04-09 08:16:22', '2023-04-09 08:16:22'),
(45, 'Ghế Sofa Góc Chữ L Gỗ Cao Su Tự Nhiên MOHO VLINE 601 Kèm Đôn', 'images/ghee06.jpg', '59000.00', 1, 1, 9, '2023-04-09 08:17:27', '2023-04-09 08:17:27'),
(46, 'Ghế Sofa Gỗ Cao Su Tự Nhiên MOHO FIJI 401', 'images/ghee07.jpg', '34900.00', 1, 1, 9, '2023-04-09 08:18:33', '2023-04-09 08:18:33'),
(47, 'Ghế Sofa Gỗ Cao Su Tự Nhiên MOHO FYN 901', 'images/ghee08.jpg', '71200.00', 1, 1, 9, '2023-04-09 08:20:26', '2023-04-09 08:20:26'),
(48, 'Ghế Sofa Gỗ Cao Su Tự Nhiên MOHO TROMSO 601', 'images/ghee09.jpg', '75000.00', 1, 1, 9, '2023-04-09 08:21:21', '2023-04-09 08:21:21'),
(49, 'Combo Bếp mini 1m2 MOHO KITCHEN', 'images/tu1.jpg', '26800.00', 1, 1, 10, '2023-04-09 08:23:00', '2023-04-09 08:23:00'),
(50, 'HỆ TỦ BẾP MOHO KITCHEN DÒNG ESSENTIAL', 'images/tu2.jpg', '18000.00', 1, 1, 10, '2023-04-09 08:23:35', '2023-04-09 08:23:35'),
(51, 'HỆ TỦ BẾP MOHO KITCHEN DÒNG MIX (HỆ TỦ BẾP KẾT HỢP)', 'images/tu3.jpg', '99800.00', 1, 1, 10, '2023-04-09 08:24:40', '2023-04-09 08:24:40'),
(52, 'HỆ TỦ BẾP MOHO KITCHEN DÒNG PREMIUM', 'images/tu4.jpg', '15600.00', 1, 1, 10, '2023-04-09 08:25:28', '2023-04-09 08:25:28'),
(53, 'HỆ TỦ BẾP MOHO KITCHEN DÒNG PREMIUM 02', 'images/tu5.jpg', '58000.00', 1, 1, 10, '2023-04-09 08:26:58', '2023-04-09 08:26:58');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `phone`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Đắc Hiếu', 'hieuhoang1082003@gmail.com', '0333847035', NULL, '$2y$10$8Pualp6hK8xOyzHTj2xKJOG40gG62mYW3MRqvXrMpbWN8u41KVxZy', NULL, '2023-03-21 21:56:55', '2023-03-21 21:56:55'),
(2, 'Dương', 'duong1782004@gmail.com', '0362688138', NULL, '$2y$10$0k/iny0AeJmYesi19qb69eGsQybuUlecrVWHBEL1S88x1hgx9U5sS', NULL, '2023-05-14 08:24:55', '2023-05-14 08:24:55');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `admin_menu`
--
ALTER TABLE `admin_menu`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `admin_operation_log`
--
ALTER TABLE `admin_operation_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `admin_operation_log_user_id_index` (`user_id`);

--
-- Chỉ mục cho bảng `admin_permissions`
--
ALTER TABLE `admin_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admin_permissions_name_unique` (`name`),
  ADD UNIQUE KEY `admin_permissions_slug_unique` (`slug`);

--
-- Chỉ mục cho bảng `admin_roles`
--
ALTER TABLE `admin_roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admin_roles_name_unique` (`name`),
  ADD UNIQUE KEY `admin_roles_slug_unique` (`slug`);

--
-- Chỉ mục cho bảng `admin_role_menu`
--
ALTER TABLE `admin_role_menu`
  ADD KEY `admin_role_menu_role_id_menu_id_index` (`role_id`,`menu_id`);

--
-- Chỉ mục cho bảng `admin_role_permissions`
--
ALTER TABLE `admin_role_permissions`
  ADD KEY `admin_role_permissions_role_id_permission_id_index` (`role_id`,`permission_id`);

--
-- Chỉ mục cho bảng `admin_role_users`
--
ALTER TABLE `admin_role_users`
  ADD KEY `admin_role_users_role_id_user_id_index` (`role_id`,`user_id`);

--
-- Chỉ mục cho bảng `admin_users`
--
ALTER TABLE `admin_users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admin_users_username_unique` (`username`);

--
-- Chỉ mục cho bảng `admin_user_permissions`
--
ALTER TABLE `admin_user_permissions`
  ADD KEY `admin_user_permissions_user_id_permission_id_index` (`user_id`,`permission_id`);

--
-- Chỉ mục cho bảng `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Chỉ mục cho bảng `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Chỉ mục cho bảng `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Chỉ mục cho bảng `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_category_id_foreign` (`category_id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `users_phone_unique` (`phone`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `admin_menu`
--
ALTER TABLE `admin_menu`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT cho bảng `admin_operation_log`
--
ALTER TABLE `admin_operation_log`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=502;

--
-- AUTO_INCREMENT cho bảng `admin_permissions`
--
ALTER TABLE `admin_permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `admin_roles`
--
ALTER TABLE `admin_roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `admin_users`
--
ALTER TABLE `admin_users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
