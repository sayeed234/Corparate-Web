-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 07, 2019 at 02:55 PM
-- Server version: 10.1.35-MariaDB
-- PHP Version: 7.2.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `creative_ac`
--

-- --------------------------------------------------------

--
-- Table structure for table `accountheads`
--

CREATE TABLE `accountheads` (
  `id` int(10) UNSIGNED NOT NULL,
  `ah_group_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ah_cat_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ac_head_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ac_head_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `acc_type_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ah_balance` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ah_date` date DEFAULT NULL,
  `time` time(6) NOT NULL,
  `accounthead_status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `accountheads`
--

INSERT INTO `accountheads` (`id`, `ah_group_name`, `ah_cat_name`, `ac_head_code`, `ac_head_name`, `acc_type_name`, `ah_balance`, `ah_date`, `time`, `accounthead_status`, `created_at`, `updated_at`) VALUES
(19, 'Asset', 'Fixed Asset', '11001', 'Office Decoration', 'Dabit', '0', '2019-03-28', '00:00:00.000000', 0, '2019-03-28 00:55:10', '2019-03-30 02:09:11'),
(20, 'Asset', 'Current Asset', '12002', 'Petty Cash', 'Dabit', '100', '2019-03-28', '00:00:00.000000', 1, '2019-03-28 00:57:04', '2019-03-30 02:09:23'),
(21, 'Expanse', 'Salary', '41001', 'Staff  Salary', 'Dabit', '0', '2019-03-28', '00:00:00.000000', 0, '2019-03-28 00:59:45', '2019-03-30 02:09:16'),
(22, 'Income', 'Sales', '31001', 'Sales', 'Dabit', '0', '2019-03-28', '00:00:00.000000', 1, '2019-03-28 01:01:01', '2019-03-28 05:14:35'),
(23, 'Liability', 'Bank Short Trams Loan', '21001', 'HSBC Bank Loan', 'Credit', '100', '2019-03-28', '00:00:00.000000', 1, '2019-03-28 01:03:11', '2019-03-28 05:09:01');

-- --------------------------------------------------------

--
-- Table structure for table `branches`
--

CREATE TABLE `branches` (
  `id` int(10) UNSIGNED NOT NULL,
  `branch_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `branch_mobile` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `branch_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `branch_address` text COLLATE utf8mb4_unicode_ci,
  `opening_date` date DEFAULT NULL,
  `opening_balance` double(8,2) DEFAULT NULL,
  `branch_status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `branches`
--

INSERT INTO `branches` (`id`, `branch_name`, `branch_mobile`, `branch_email`, `branch_address`, `opening_date`, `opening_balance`, `branch_status`, `created_at`, `updated_at`) VALUES
(3, 'second branch', '767878', 'update@email.com', 'uttara', '2019-03-12', 500.00, 0, '2019-03-25 04:04:36', '2019-04-01 05:34:53'),
(4, 'first', '123', 'one@email.com', 'abcd', '2019-03-19', 123.00, 1, '2019-03-26 09:44:41', '2019-04-01 05:37:41');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `cat_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cat_group_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cat_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cat_status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `cat_code`, `cat_group_name`, `cat_name`, `cat_status`, `created_at`, `updated_at`) VALUES
(10, '11000', 'Asset', 'Fixed Asset', 0, '2019-03-28 00:49:17', '2019-03-28 05:26:14'),
(11, '12000', 'Asset', 'Current Asset', 1, '2019-03-28 00:49:45', '2019-03-28 05:24:55'),
(12, '41000', 'Expanse', 'Salary', 1, '2019-03-28 00:58:59', '2019-03-28 00:58:59'),
(13, '31000', 'Income', 'Sales', 1, '2019-03-28 01:00:29', '2019-03-28 01:00:29'),
(14, '22000', 'Liability', 'Bank Short Trams Loan', 1, '2019-03-28 01:02:02', '2019-04-02 23:07:30');

-- --------------------------------------------------------

--
-- Table structure for table `collectionvouchers`
--

CREATE TABLE `collectionvouchers` (
  `id` int(10) UNSIGNED NOT NULL,
  `c_voucher` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `c_date` date DEFAULT NULL,
  `c_time` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `c_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `c_pre_due` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `c_purnum` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `c_ptype` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `c_des` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `c_amount` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int(255) DEFAULT NULL,
  `c_confirm_status` int(12) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `collectionvouchers`
--

INSERT INTO `collectionvouchers` (`id`, `c_voucher`, `c_date`, `c_time`, `c_name`, `c_pre_due`, `c_purnum`, `c_ptype`, `c_des`, `c_amount`, `user_id`, `c_confirm_status`, `created_at`, `updated_at`) VALUES
(2, 'CV040420191', '2019-04-03', NULL, '1', '545', NULL, 'Cash', 'nothing', '500', NULL, 0, '2019-04-04 04:38:06', '2019-04-06 05:25:54');

-- --------------------------------------------------------

--
-- Table structure for table `companies`
--

CREATE TABLE `companies` (
  `id` int(10) UNSIGNED NOT NULL,
  `company_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_mobile` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_website` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_address` text COLLATE utf8mb4_unicode_ci,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `currency_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_vat` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `companies`
--

INSERT INTO `companies` (`id`, `company_name`, `company_mobile`, `company_email`, `company_website`, `company_address`, `country`, `currency_code`, `company_vat`, `company_image`, `created_at`, `updated_at`) VALUES
(6, 'Creative Software', '123456', 'Update@email.com', 'www.update.com', '30/1,sukrabad,dhanmondi,dhaka, charpara,karimgonj,kishoregonj', 'AX', 'BRL', '001', 'public/image/WFP.jpg', '2019-03-26 12:36:41', '2019-04-02 23:18:48');

-- --------------------------------------------------------

--
-- Table structure for table `company_users`
--

CREATE TABLE `company_users` (
  `id` int(10) UNSIGNED NOT NULL,
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_mobile` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_role` int(11) DEFAULT NULL,
  `branch_id` int(11) DEFAULT NULL,
  `user_status` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `company_users`
--

INSERT INTO `company_users` (`id`, `first_name`, `last_name`, `user_email`, `user_mobile`, `user_password`, `user_role`, `branch_id`, `user_status`, `created_at`, `updated_at`) VALUES
(5, 'Monsur Ahmed', 'Shafiq', 'monsurahmedshafiq@gmail.com', '12345678', '$2y$10$E5exVqg4.5VIZkVlBFJr4.t0aj3qyPxuJXwmcQlIKtSBowD5YQntK', 2, 3, 1, '2019-04-03 23:37:21', '2019-04-06 04:57:07');

-- --------------------------------------------------------

--
-- Table structure for table `custormers`
--

CREATE TABLE `custormers` (
  `id` int(10) UNSIGNED NOT NULL,
  `customer_cat` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_mobile` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_address` text COLLATE utf8mb4_unicode_ci,
  `copaning_balance` double(8,2) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `custormers`
--

INSERT INTO `custormers` (`id`, `customer_cat`, `customer_name`, `customer_mobile`, `customer_email`, `customer_address`, `copaning_balance`, `created_at`, `updated_at`) VALUES
(1, 'Silver', 'Monsur Ahmed Shafiq', '0000000000', 'monsurahmedshafiq@gmail.com', '30/1,sukrabad,dhanmondi,dhaka, charpara,karimgonj,kishoregonj', 545.00, '2019-03-25 04:24:57', '2019-03-25 05:37:01'),
(3, 'Normal', 'dfdfdf', '0990909', 'update@email.com', 'update', 500.00, '2019-03-25 06:56:06', '2019-03-27 02:14:25'),
(4, 'Gold', 'second customer name', '3423434', 'a@email.com', 'uttara', 999.00, '2019-04-04 04:22:57', '2019-04-04 04:22:57');

-- --------------------------------------------------------

--
-- Table structure for table `groups`
--

CREATE TABLE `groups` (
  `id` int(10) UNSIGNED NOT NULL,
  `group_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `group_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `group_status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `groups`
--

INSERT INTO `groups` (`id`, `group_name`, `group_code`, `group_status`, `created_at`, `updated_at`) VALUES
(8, 'Asset', '10000', 0, '2019-03-28 00:46:26', '2019-04-01 05:46:19'),
(9, 'Liability', '20000', 1, '2019-03-28 00:47:01', '2019-03-28 05:24:47'),
(10, 'Income', '30000', 1, '2019-03-28 00:47:14', '2019-03-28 00:47:14'),
(11, 'Expanse', '40000', 1, '2019-03-28 00:47:40', '2019-03-28 00:47:40');

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
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_02_24_193233_create_verify_tokens_table', 1),
(4, '2019_03_25_060543_create_companies_table', 2),
(5, '2019_03_25_081800_create_companies_table', 3),
(6, '2019_03_25_093258_create_branches_table', 4),
(7, '2019_03_25_101142_create_custormers_table', 5),
(8, '2019_03_25_102732_create_suppliers_table', 6),
(9, '2019_03_26_120029_create_company_users_table', 7),
(10, '2019_03_27_050006_create_groups_table', 8),
(11, '2019_03_27_053824_create_categories_table', 9),
(12, '2019_03_27_092214_create_accountheads_table', 10),
(13, '2019_03_30_105844_create_transvouchers_table', 11),
(14, '2019_03_30_111633_create_paymentvouchers_table', 11),
(15, '2019_03_30_111722_create_collectionvouchers_table', 11);

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
-- Table structure for table `paymentvouchers`
--

CREATE TABLE `paymentvouchers` (
  `id` int(10) UNSIGNED NOT NULL,
  `pv_number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `p_date` date DEFAULT NULL,
  `p_time` time(6) DEFAULT NULL,
  `s_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pre_due` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parches_n` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `p_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `p_des` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `p_amount` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pconfirm_status` int(12) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `paymentvouchers`
--

INSERT INTO `paymentvouchers` (`id`, `pv_number`, `p_date`, `p_time`, `s_name`, `pre_due`, `parches_n`, `p_type`, `p_des`, `p_amount`, `pconfirm_status`, `created_at`, `updated_at`) VALUES
(3, 'PV040420191', '2019-04-04', '16:11:24.000000', '3', '500', 'Previous Dues', 'Bkash', 'Nothing for now', '100', 0, '2019-04-04 04:11:24', '2019-04-06 05:15:16');

-- --------------------------------------------------------

--
-- Table structure for table `suppliers`
--

CREATE TABLE `suppliers` (
  `id` int(10) UNSIGNED NOT NULL,
  `supplier_cat` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `supplier_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `supplier_mobile` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `supplier_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `supplier_address` text COLLATE utf8mb4_unicode_ci,
  `sopaning_balance` double(8,2) DEFAULT NULL,
  `supplier_date` date DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `suppliers`
--

INSERT INTO `suppliers` (`id`, `supplier_cat`, `supplier_name`, `supplier_mobile`, `supplier_email`, `supplier_address`, `sopaning_balance`, `supplier_date`, `created_at`, `updated_at`) VALUES
(1, 'Advance', 'Ahmed Traders', '54454', 'monsurahmedshafiq@gmail.com', 'Dhaka', 99.00, NULL, '2019-03-25 04:54:42', '2019-04-02 23:24:34'),
(3, 'Cash', 'Brothers Knite', '4333434', 'edtfyg@yfdfdg.com', 'Gazipur', 500.00, NULL, '2019-03-25 07:00:02', '2019-04-02 23:25:20'),
(4, 'After Sale', 'Khan Iron', '898989', 'a@gamil.com', 'Chitagonj', 0.00, NULL, '2019-03-27 02:26:55', '2019-04-02 23:25:47');

-- --------------------------------------------------------

--
-- Table structure for table `transvouchers`
--

CREATE TABLE `transvouchers` (
  `id` int(10) UNSIGNED NOT NULL,
  `t_date` date DEFAULT NULL,
  `t_time` time(6) DEFAULT NULL,
  `t_voucher` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `t_debit_head` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `t_debit_belence` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `t_credit_head` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `t_credit_belence` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `t_des` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `t_amount` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int(255) DEFAULT NULL,
  `confirm_id` int(12) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `transvouchers`
--

INSERT INTO `transvouchers` (`id`, `t_date`, `t_time`, `t_voucher`, `t_debit_head`, `t_debit_belence`, `t_credit_head`, `t_credit_belence`, `t_des`, `t_amount`, `user_id`, `confirm_id`, `created_at`, `updated_at`) VALUES
(8, '2019-04-07', '16:13:52.000000', 'TV070420190', '20', '100', '23', '100', 'testing for first Trisection Voucher', '50', NULL, NULL, '2019-04-07 04:13:52', '2019-04-07 04:13:52');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_status` tinyint(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `user_status`, `created_at`, `updated_at`) VALUES
(1, 'Monsur Ahmed Shafiq', 'monsurahmedshafiq@gmail.com', NULL, '$2y$10$4VhcF/dxtD664bk0QiyYQ.cbAJr6SAZps/zuUFDULW/fQEvmbLDjG', NULL, 0, '2019-03-24 01:19:30', '2019-03-24 02:05:33');

-- --------------------------------------------------------

--
-- Table structure for table `verify_tokens`
--

CREATE TABLE `verify_tokens` (
  `id` int(10) UNSIGNED NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `verify_tokens`
--

INSERT INTO `verify_tokens` (`id`, `email`, `token`, `created_at`, `updated_at`) VALUES
(10, 'monsurahmedshafiq@gmail.com', '787501', '2019-03-24 02:04:50', '2019-03-24 02:04:50');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accountheads`
--
ALTER TABLE `accountheads`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `branches`
--
ALTER TABLE `branches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `collectionvouchers`
--
ALTER TABLE `collectionvouchers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `companies`
--
ALTER TABLE `companies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `company_users`
--
ALTER TABLE `company_users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `custormers`
--
ALTER TABLE `custormers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `groups`
--
ALTER TABLE `groups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `paymentvouchers`
--
ALTER TABLE `paymentvouchers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `suppliers`
--
ALTER TABLE `suppliers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transvouchers`
--
ALTER TABLE `transvouchers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `verify_tokens`
--
ALTER TABLE `verify_tokens`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `accountheads`
--
ALTER TABLE `accountheads`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `branches`
--
ALTER TABLE `branches`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `collectionvouchers`
--
ALTER TABLE `collectionvouchers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `companies`
--
ALTER TABLE `companies`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `company_users`
--
ALTER TABLE `company_users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `custormers`
--
ALTER TABLE `custormers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `groups`
--
ALTER TABLE `groups`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `paymentvouchers`
--
ALTER TABLE `paymentvouchers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `suppliers`
--
ALTER TABLE `suppliers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `transvouchers`
--
ALTER TABLE `transvouchers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `verify_tokens`
--
ALTER TABLE `verify_tokens`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
