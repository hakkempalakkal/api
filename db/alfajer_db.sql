-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 23, 2021 at 05:54 PM
-- Server version: 10.4.20-MariaDB
-- PHP Version: 7.3.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `alfajer_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_agent`
--

CREATE TABLE `tbl_agent` (
  `agent_id` bigint(20) UNSIGNED NOT NULL,
  `agent_name` varchar(255) DEFAULT NULL,
  `agent_mob` varchar(15) DEFAULT NULL,
  `agent_address` text DEFAULT NULL,
  `agent_email` varchar(100) DEFAULT NULL,
  `agent_photo` text DEFAULT NULL,
  `agent_added_date` datetime DEFAULT NULL,
  `agent_updated_date` datetime DEFAULT NULL,
  `agent_added_by` bigint(20) DEFAULT NULL,
  `agent_status` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_agent`
--

INSERT INTO `tbl_agent` (`agent_id`, `agent_name`, `agent_mob`, `agent_address`, `agent_email`, `agent_photo`, `agent_added_date`, `agent_updated_date`, `agent_added_by`, `agent_status`) VALUES
(1, 'agent1', NULL, NULL, NULL, NULL, NULL, '2021-08-17 12:30:08', NULL, 1),
(2, 'agent2', NULL, NULL, NULL, NULL, NULL, '2021-08-18 10:26:55', NULL, 1),
(4, 'Agent3', '45454554', 'deira,dubai', 'agent3@gmail.com', 'uploads/agent/agent3_2021_08_17_10_55_14.jpg', '2021-08-17 10:55:14', '2021-08-18 10:25:10', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_agent_login`
--

CREATE TABLE `tbl_agent_login` (
  `login_id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(100) DEFAULT NULL,
  `password` text DEFAULT NULL,
  `agent_id` bigint(20) DEFAULT NULL,
  `access_token` text DEFAULT NULL,
  `access_token_gen_time` datetime DEFAULT NULL,
  `device_notification_id` text DEFAULT NULL,
  `login_status` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_agent_login`
--

INSERT INTO `tbl_agent_login` (`login_id`, `username`, `password`, `agent_id`, `access_token`, `access_token_gen_time`, `device_notification_id`, `login_status`) VALUES
(2, 'agent3@gmail.com', '12345678', 0, NULL, NULL, NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_agent_routes`
--

CREATE TABLE `tbl_agent_routes` (
  `assigned_id` bigint(20) UNSIGNED NOT NULL,
  `agent_id` bigint(20) NOT NULL,
  `route_id` bigint(20) NOT NULL,
  `start_date` date NOT NULL DEFAULT '0000-00-00',
  `end_date` date DEFAULT '0000-00-00',
  `assign_added_date` datetime DEFAULT NULL,
  `assign_updated_date` datetime DEFAULT NULL,
  `assign_status` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_agent_routes`
--

INSERT INTO `tbl_agent_routes` (`assigned_id`, `agent_id`, `route_id`, `start_date`, `end_date`, `assign_added_date`, `assign_updated_date`, `assign_status`) VALUES
(10, 1, 1, '2021-08-18', '2021-08-18', '2021-08-18 13:33:17', '2021-08-18 13:34:02', 1),
(11, 2, 2, '2021-08-18', '0000-00-00', '2021-08-18 13:33:50', '2021-08-18 13:33:50', 1),
(12, 4, 1, '2021-08-18', '2021-08-18', '2021-08-18 13:34:02', '2021-08-18 14:25:42', 1),
(13, 2, 1, '2021-08-18', '0000-00-00', '2021-08-18 14:25:42', '2021-08-18 14:25:42', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_application_user`
--

CREATE TABLE `tbl_application_user` (
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `full_name` varchar(255) DEFAULT NULL,
  `designation` varchar(255) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `user_photo` text DEFAULT NULL,
  `user_added_date` datetime DEFAULT NULL,
  `user_updated_date` datetime DEFAULT NULL,
  `user_status` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_application_user`
--

INSERT INTO `tbl_application_user` (`user_id`, `full_name`, `designation`, `email`, `user_photo`, `user_added_date`, `user_updated_date`, `user_status`) VALUES
(1, 'Admin', 'Administrator', 'demo@user.com', NULL, NULL, NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_application_user_login`
--

CREATE TABLE `tbl_application_user_login` (
  `login_id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(100) DEFAULT NULL,
  `password` text DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `login_status` tinyint(4) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_application_user_login`
--

INSERT INTO `tbl_application_user_login` (`login_id`, `username`, `password`, `user_id`, `login_status`) VALUES
(1, 'demo@user1.com', 'd375af34cc08aba9a1cc9b6596a70c36', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_area`
--

CREATE TABLE `tbl_area` (
  `area_id` bigint(20) UNSIGNED NOT NULL,
  `area_name` varchar(255) DEFAULT NULL,
  `region_id` bigint(20) DEFAULT NULL,
  `area_description` text DEFAULT NULL,
  `area_added_date` datetime DEFAULT NULL,
  `area_updated_date` datetime DEFAULT NULL,
  `area_status` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_area`
--

INSERT INTO `tbl_area` (`area_id`, `area_name`, `region_id`, `area_description`, `area_added_date`, `area_updated_date`, `area_status`) VALUES
(1, 'area1', 1, NULL, NULL, NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_billing_type`
--

CREATE TABLE `tbl_billing_type` (
  `billing_type_id` bigint(20) UNSIGNED NOT NULL,
  `billing_type` varchar(30) DEFAULT NULL,
  `description` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_billing_type`
--

INSERT INTO `tbl_billing_type` (`billing_type_id`, `billing_type`, `description`) VALUES
(1, 'Cash', NULL),
(2, 'Credit', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_building`
--

CREATE TABLE `tbl_building` (
  `building_id` bigint(20) UNSIGNED NOT NULL,
  `building_name` varchar(255) DEFAULT NULL,
  `route_id` bigint(20) DEFAULT NULL,
  `region_id` bigint(20) DEFAULT NULL,
  `area_id` bigint(20) DEFAULT NULL,
  `building_address` text DEFAULT NULL,
  `building_lat` varchar(30) DEFAULT NULL,
  `building_long` varchar(30) DEFAULT NULL,
  `building_added_date` datetime DEFAULT NULL,
  `building_updated_date` datetime DEFAULT NULL,
  `building_status` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_building`
--

INSERT INTO `tbl_building` (`building_id`, `building_name`, `route_id`, `region_id`, `area_id`, `building_address`, `building_lat`, `building_long`, `building_added_date`, `building_updated_date`, `building_status`) VALUES
(1, 'building1', 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_category`
--

CREATE TABLE `tbl_category` (
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `category_name` varchar(255) DEFAULT NULL,
  `parent_id` int(11) DEFAULT 0,
  `category_added_date` datetime DEFAULT NULL,
  `category_updated_date` datetime DEFAULT NULL,
  `category_status` tinyint(4) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_category`
--

INSERT INTO `tbl_category` (`category_id`, `category_name`, `parent_id`, `category_added_date`, `category_updated_date`, `category_status`) VALUES
(1, 'Product', 0, '2021-08-14 11:45:35', '2021-08-14 11:54:02', 1),
(2, 'Asset', 0, '2021-08-14 11:53:54', '2021-08-14 11:53:54', 1),
(3, '12 Pcs', 1, '2021-08-14 12:52:01', '2021-08-14 13:09:49', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_customer`
--

CREATE TABLE `tbl_customer` (
  `customer_id` bigint(20) UNSIGNED NOT NULL,
  `customer_name` varchar(255) DEFAULT NULL,
  `parent_id` bigint(20) DEFAULT NULL,
  `customer_phone` varchar(20) DEFAULT NULL,
  `customer_email` varchar(100) DEFAULT NULL,
  `customer_street_no` varchar(255) DEFAULT NULL,
  `customer_type` varchar(20) DEFAULT NULL,
  `route_id` bigint(20) DEFAULT NULL,
  `building_id` bigint(20) DEFAULT NULL,
  `region_id` bigint(20) DEFAULT NULL,
  `area_id` bigint(20) DEFAULT NULL,
  `billing_type_id` bigint(20) DEFAULT NULL,
  `customer_created_type` varchar(20) DEFAULT NULL,
  `customer_added_by` bigint(20) DEFAULT NULL,
  `customer_added_date` datetime DEFAULT NULL,
  `customer_updated_date` datetime DEFAULT NULL,
  `customer_status` tinyint(4) DEFAULT NULL,
  `customer_deposit_amount` double DEFAULT NULL,
  `last_deposited_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_customer`
--

INSERT INTO `tbl_customer` (`customer_id`, `customer_name`, `parent_id`, `customer_phone`, `customer_email`, `customer_street_no`, `customer_type`, `route_id`, `building_id`, `region_id`, `area_id`, `billing_type_id`, `customer_created_type`, `customer_added_by`, `customer_added_date`, `customer_updated_date`, `customer_status`, `customer_deposit_amount`, `last_deposited_date`) VALUES
(1, 'lulu', 0, '894456456456', 'lulu@gmail.com', 'dubai', 'Commercial', 1, 1, 1, 1, 1, 'By Direct', 1, '2021-08-16 14:46:49', '2021-08-17 10:07:41', 1, 1000, '2021-08-16 00:00:00'),
(2, 'palmtrix technplogies llc', 0, '9745045666', 'info@palmtrix.com', 'dubai', 'Commercial', 1, 1, 1, 1, 1, 'By Direct', 1, '2021-08-16 14:46:49', '2021-08-17 10:07:41', 1, 1000, '2021-08-16 00:00:00'),
(3, 'Mahesh malhothra', 0, '9745045685', 'info@palmtrix.com', 'dubai', 'Commercial', 1, 1, 1, 1, 1, 'By Direct', 1, '2021-08-16 14:46:49', '2021-08-17 10:07:41', 1, 1000, '2021-08-16 00:00:00'),
(4, 'Seaways solutions', 0, '9745045685', 'info@seaways.com', 'dubai', 'Commercial', 1, 1, 1, 1, 1, 'By Direct', 1, '2021-08-16 14:46:49', '2021-08-17 10:07:41', 1, 1000, '2021-08-16 00:00:00'),
(5, 'Sanjeev shivan', 0, '9745045685', 'sanjeevshivan@gmail.com.com', 'dubai', 'Commercial', 1, 1, 1, 1, 1, 'By Direct', 1, '2021-08-16 14:46:49', '2021-08-17 10:07:41', 1, 1000, '2021-08-16 00:00:00'),
(6, 'ubaidh ibrahim', 0, '9745862555', 'ubaith@gmail.com', 'dubai', 'Commercial', 1, 1, 1, 1, 1, 'By Direct', 1, '2021-08-16 14:46:49', '2021-08-17 10:07:41', 1, 1000, '2021-08-16 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_customer_asset`
--

CREATE TABLE `tbl_customer_asset` (
  `asset_id` bigint(20) UNSIGNED NOT NULL,
  `customer_id` bigint(20) DEFAULT NULL,
  `asset_added_date` datetime DEFAULT NULL,
  `asset_updated_date` datetime DEFAULT NULL,
  `product_id` bigint(20) DEFAULT NULL,
  `warranty_expiry_date` date DEFAULT NULL,
  `asset_status` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_customer_deposit`
--

CREATE TABLE `tbl_customer_deposit` (
  `customer_deposit_id` bigint(20) UNSIGNED NOT NULL,
  `customer_id` bigint(20) DEFAULT NULL,
  `deposit_amount` double DEFAULT NULL,
  `deposited_date` datetime DEFAULT NULL,
  `deposit_updated_date` datetime DEFAULT NULL,
  `deposit_status` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_customer_deposit`
--

INSERT INTO `tbl_customer_deposit` (`customer_deposit_id`, `customer_id`, `deposit_amount`, `deposited_date`, `deposit_updated_date`, `deposit_status`) VALUES
(1, 1, 500, '2021-08-13 19:31:05', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_customer_feedback`
--

CREATE TABLE `tbl_customer_feedback` (
  `feedback_id` bigint(20) UNSIGNED NOT NULL,
  `feedback_type` varchar(100) DEFAULT NULL,
  `feedback_note` text DEFAULT NULL,
  `feedback_added_by` bigint(20) DEFAULT NULL,
  `customer_id` bigint(20) DEFAULT NULL,
  `feedback_added_date` datetime DEFAULT NULL,
  `feedback_updated_date` datetime DEFAULT NULL,
  `feedback_status` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_customer_login`
--

CREATE TABLE `tbl_customer_login` (
  `login_id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(100) DEFAULT NULL,
  `password` text DEFAULT NULL,
  `customer_id` bigint(20) DEFAULT NULL,
  `access_token` text DEFAULT NULL,
  `access_token_gen_time` datetime DEFAULT NULL,
  `device_notification_id` text DEFAULT NULL,
  `login_status` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_customer_login`
--

INSERT INTO `tbl_customer_login` (`login_id`, `username`, `password`, `customer_id`, `access_token`, `access_token_gen_time`, `device_notification_id`, `login_status`) VALUES
(1, 'luluhypermarket', '$2y$10$LR6b5mYz8nDoG6nqTifC8OPVT0gDp0zi030ha2qj0.xJttjtTd8Km', 1, NULL, NULL, NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_customer_offer_price`
--

CREATE TABLE `tbl_customer_offer_price` (
  `offer_price_id` bigint(20) UNSIGNED NOT NULL,
  `customer_id` bigint(20) DEFAULT NULL,
  `product_id` bigint(20) DEFAULT NULL,
  `offer_price` double DEFAULT NULL,
  `offer_price_added_date` datetime DEFAULT NULL,
  `offer_price_updated_date` datetime DEFAULT NULL,
  `offer_price_status` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_customer_offer_price`
--

INSERT INTO `tbl_customer_offer_price` (`offer_price_id`, `customer_id`, `product_id`, `offer_price`, `offer_price_added_date`, `offer_price_updated_date`, `offer_price_status`) VALUES
(1, 1, 1, 5, '2021-08-23 16:01:57', '2021-08-23 16:01:57', 1),
(2, 1, 2, 10, '2021-08-23 16:01:57', '2021-08-23 16:01:57', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_customer_offer_price_request`
--

CREATE TABLE `tbl_customer_offer_price_request` (
  `request_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) DEFAULT NULL,
  `offer_price` double DEFAULT NULL,
  `old_price` double DEFAULT NULL,
  `requested_by` bigint(20) DEFAULT NULL,
  `requested_on` datetime DEFAULT NULL,
  `approved_by` bigint(20) DEFAULT NULL,
  `approved_on` datetime DEFAULT NULL,
  `request_updated_date` datetime DEFAULT NULL,
  `request_status` tinyint(4) DEFAULT NULL,
  `status_remarks` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_customer_wallet`
--

CREATE TABLE `tbl_customer_wallet` (
  `customer_wallet_id` bigint(20) UNSIGNED NOT NULL,
  `customer_id` bigint(20) DEFAULT NULL,
  `wallet_started_date` datetime DEFAULT NULL,
  `wallet_closed_date` datetime DEFAULT NULL,
  `wallet_status` tinyint(4) DEFAULT NULL,
  `closed_reason` text DEFAULT NULL,
  `wallet_balance` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_customer_wallet`
--

INSERT INTO `tbl_customer_wallet` (`customer_wallet_id`, `customer_id`, `wallet_started_date`, `wallet_closed_date`, `wallet_status`, `closed_reason`, `wallet_balance`) VALUES
(1, 1, '2021-08-23 16:02:56', '2021-08-23 16:02:56', 1, NULL, 500);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_despatch`
--

CREATE TABLE `tbl_despatch` (
  `despatch_id` bigint(20) UNSIGNED NOT NULL,
  `despatch_date` date DEFAULT NULL,
  `despatch_agent_id` bigint(20) DEFAULT NULL,
  `store_id` bigint(20) DEFAULT NULL,
  `despatch_updated_date` datetime DEFAULT NULL,
  `despatch_status` tinyint(4) DEFAULT NULL,
  `route_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_despatch`
--

INSERT INTO `tbl_despatch` (`despatch_id`, `despatch_date`, `despatch_agent_id`, `store_id`, `despatch_updated_date`, `despatch_status`, `route_id`) VALUES
(1, '2021-08-23', 1, 1, '2021-08-23 16:18:23', 0, 1),
(2, '2021-08-24', 1, 1, '2021-08-23 16:18:23', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_despatch_entry`
--

CREATE TABLE `tbl_despatch_entry` (
  `despatch_entry_id` bigint(20) UNSIGNED NOT NULL,
  `despatch_id` bigint(20) DEFAULT NULL,
  `product_id` bigint(20) DEFAULT NULL,
  `required_qty` int(11) DEFAULT NULL,
  `extra_qty` int(11) DEFAULT NULL,
  `despatch_added_date` datetime DEFAULT NULL,
  `despatch_updated_date` datetime DEFAULT NULL,
  `despatch_entry_status` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_despatch_entry`
--

INSERT INTO `tbl_despatch_entry` (`despatch_entry_id`, `despatch_id`, `product_id`, `required_qty`, `extra_qty`, `despatch_added_date`, `despatch_updated_date`, `despatch_entry_status`) VALUES
(1, 1, 1, 50, 50, '2021-08-23 16:19:16', '2021-08-23 16:19:16', 0),
(2, 1, 2, 30, 20, '2021-08-23 16:19:16', '2021-08-23 16:19:16', 0),
(3, 1, 3, 20, 20, '2021-08-23 16:19:16', '2021-08-23 16:19:16', 0),
(4, 2, 1, 40, 20, '2021-08-23 16:19:16', '2021-08-23 16:19:16', 0),
(5, 2, 2, 40, 20, '2021-08-23 16:19:16', '2021-08-23 16:19:16', 0),
(6, 2, 3, 80, 10, '2021-08-23 16:21:03', '2021-08-23 16:21:03', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_despatch_note`
--

CREATE TABLE `tbl_despatch_note` (
  `despatch_note_id` bigint(20) UNSIGNED NOT NULL,
  `despatch_id` bigint(20) DEFAULT NULL,
  `despatch_date` date DEFAULT NULL,
  `despatch_agent_id` bigint(20) DEFAULT NULL,
  `store_id` bigint(20) DEFAULT NULL,
  `despatch_updated_date` datetime DEFAULT NULL,
  `despatch_status` tinyint(4) DEFAULT NULL,
  `despatch_approved_by` datetime DEFAULT NULL,
  `despatch_approved_on` datetime DEFAULT NULL,
  `route_id` bigint(20) DEFAULT NULL,
  `despatch_remarks` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_despatch_note_entry`
--

CREATE TABLE `tbl_despatch_note_entry` (
  `despatch_entry_id` bigint(20) UNSIGNED NOT NULL,
  `despatch_id` bigint(20) DEFAULT NULL,
  `product_id` bigint(20) DEFAULT NULL,
  `required_qty` int(11) DEFAULT NULL,
  `extra_qty` int(11) DEFAULT NULL,
  `despatch_entry_added_date` datetime DEFAULT NULL,
  `despatch_entry_updated_date` datetime DEFAULT NULL,
  `despatch_entry_status` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_menu_item`
--

CREATE TABLE `tbl_menu_item` (
  `menu_id` bigint(20) UNSIGNED NOT NULL,
  `menu_title` varchar(255) DEFAULT NULL,
  `page_url` varchar(255) DEFAULT NULL,
  `module` varchar(255) DEFAULT NULL,
  `parent_menu` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `created_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_order`
--

CREATE TABLE `tbl_order` (
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `customer_id` bigint(20) DEFAULT NULL,
  `order_source` varchar(255) DEFAULT NULL,
  `order_type` varchar(100) DEFAULT NULL,
  `order_date` date DEFAULT NULL,
  `order_updated_date` datetime DEFAULT NULL,
  `order_added_by` bigint(20) DEFAULT NULL,
  `order_status` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_order`
--

INSERT INTO `tbl_order` (`order_id`, `customer_id`, `order_source`, `order_type`, `order_date`, `order_updated_date`, `order_added_by`, `order_status`) VALUES
(1, 1, 'Agent', 'Recurring', '2021-08-02', '2021-08-23 16:10:21', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_order_lines`
--

CREATE TABLE `tbl_order_lines` (
  `order_line_id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) DEFAULT NULL,
  `product_id` bigint(20) DEFAULT NULL,
  `product_qty` int(11) DEFAULT NULL,
  `product_price` double DEFAULT NULL,
  `order_line_added_date` datetime DEFAULT NULL,
  `order_line_updated_date` datetime DEFAULT NULL,
  `order_line_status` tinyint(4) DEFAULT NULL,
  `delivery_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_order_lines`
--

INSERT INTO `tbl_order_lines` (`order_line_id`, `order_id`, `product_id`, `product_qty`, `product_price`, `order_line_added_date`, `order_line_updated_date`, `order_line_status`, `delivery_date`) VALUES
(1, 1, 1, 5, 5, '2021-08-23 16:11:29', '2021-08-23 16:11:29', 0, '2021-08-24');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_organisation`
--

CREATE TABLE `tbl_organisation` (
  `org_id` bigint(20) NOT NULL,
  `org_name` varchar(255) DEFAULT NULL,
  `org_tag_line` varchar(255) DEFAULT NULL,
  `org_address` text DEFAULT NULL,
  `org_phone` varchar(15) DEFAULT NULL,
  `org_fax` varchar(20) DEFAULT NULL,
  `org_email` varchar(100) DEFAULT NULL,
  `org_logo` text DEFAULT NULL,
  `org_trn` varchar(255) DEFAULT NULL,
  `org_invoice_prefix` varchar(20) DEFAULT NULL,
  `org_added_date` datetime DEFAULT NULL,
  `org_updated_date` datetime DEFAULT NULL,
  `org_status` tinyint(4) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_organisation`
--

INSERT INTO `tbl_organisation` (`org_id`, `org_name`, `org_tag_line`, `org_address`, `org_phone`, `org_fax`, `org_email`, `org_logo`, `org_trn`, `org_invoice_prefix`, `org_added_date`, `org_updated_date`, `org_status`) VALUES
(2, 'Al-fajer', 'Food Stuf Factory Outlet', 'deira,dubai', '067663288', '067663288', 'info@alfajer.com', 'uploads/organisation/Al-fajer_2021_08_12_09_28_17.png', '00245766576987698', 'ALFJ-', '2021-08-12 09:28:17', '2021-08-13 10:51:40', 1),
(3, 'alfajr', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-13 10:51:47', 2);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_organisation_users`
--

CREATE TABLE `tbl_organisation_users` (
  `org_user_id` bigint(20) UNSIGNED NOT NULL,
  `org_id` bigint(20) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_persona`
--

CREATE TABLE `tbl_persona` (
  `persona_id` bigint(20) UNSIGNED NOT NULL,
  `persona_name` varchar(255) DEFAULT NULL,
  `persona_description` text DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `persona_status` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_persona_permission`
--

CREATE TABLE `tbl_persona_permission` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `persona_id` int(11) DEFAULT NULL,
  `can_access` tinyint(4) DEFAULT NULL,
  `can_create` tinyint(4) DEFAULT NULL,
  `can_edit` tinyint(4) DEFAULT NULL,
  `can_delete` tinyint(4) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `created_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_product`
--

CREATE TABLE `tbl_product` (
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `product_name` varchar(255) DEFAULT NULL,
  `product_code` varchar(255) DEFAULT NULL,
  `category_id` bigint(20) DEFAULT NULL,
  `subcategory_id` bigint(20) DEFAULT NULL,
  `product_description` text DEFAULT NULL,
  `product_selling_price` double DEFAULT NULL,
  `near_expiry_selling_price_limit` double DEFAULT NULL,
  `expiry_days` int(11) DEFAULT NULL,
  `warranty_days` int(11) DEFAULT NULL,
  `near_expiry_days` int(11) DEFAULT NULL,
  `product_barcode` varchar(255) DEFAULT NULL,
  `product_image` text DEFAULT NULL,
  `product_added_date` datetime DEFAULT NULL,
  `product_updated_date` datetime DEFAULT NULL,
  `product_status` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_product`
--

INSERT INTO `tbl_product` (`product_id`, `product_name`, `product_code`, `category_id`, `subcategory_id`, `product_description`, `product_selling_price`, `near_expiry_selling_price_limit`, `expiry_days`, `warranty_days`, `near_expiry_days`, `product_barcode`, `product_image`, `product_added_date`, `product_updated_date`, `product_status`) VALUES
(1, 'Zero Sodium 5G bottle 18.9 ltr', '4545', 1, 0, '5g bottle', 12, 0, 10, 0, 0, '', 'uploads/product/Zero Sodium 5G bottle 18.9 ltr_2021_08_14_16_00_58.png', '2021-08-14 14:37:26', '2021-08-14 16:00:58', 1),
(2, 'Al Fajer water cup 200 ml 30 pc', '45666', 1, 3, 'Al Fajer water cup 200 ml 30 pc', 5, 4, 5, 0, 5, '51', NULL, '2021-08-19 12:35:14', '2021-08-19 12:35:14', 1),
(3, 'Al Fajer water 500 Ml 24 pc', '88465', 1, 3, 'Al Fajer water 500 Ml 24 pc', 12, 10, 5, 0, 5, '4848585', NULL, '2021-08-19 12:36:26', '2021-08-19 12:36:26', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_product_price_request`
--

CREATE TABLE `tbl_product_price_request` (
  `request_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) DEFAULT NULL,
  `new_price` double DEFAULT NULL,
  `old_price` double DEFAULT NULL,
  `requested_by` bigint(20) DEFAULT NULL,
  `requested_on` datetime DEFAULT NULL,
  `requested_updated_date` datetime DEFAULT NULL,
  `approved_by` bigint(20) DEFAULT NULL,
  `approved_on` datetime DEFAULT NULL,
  `requested_status` varchar(20) DEFAULT NULL,
  `status_remark` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_region`
--

CREATE TABLE `tbl_region` (
  `region_id` bigint(20) UNSIGNED NOT NULL,
  `region_code` varchar(255) DEFAULT NULL,
  `region_name` varchar(255) DEFAULT NULL,
  `region_description` text DEFAULT NULL,
  `region_added_date` datetime DEFAULT NULL,
  `region_updated_date` datetime DEFAULT NULL,
  `region_status` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_region`
--

INSERT INTO `tbl_region` (`region_id`, `region_code`, `region_name`, `region_description`, `region_added_date`, `region_updated_date`, `region_status`) VALUES
(1, 'REG1', 'region1', NULL, NULL, NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_return`
--

CREATE TABLE `tbl_return` (
  `return_id` bigint(20) UNSIGNED NOT NULL,
  `route_id` bigint(20) DEFAULT NULL,
  `return_date` date DEFAULT NULL,
  `return_updated_date` datetime DEFAULT NULL,
  `return_status` tinyint(4) DEFAULT NULL,
  `delivery_agent_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_return_entry`
--

CREATE TABLE `tbl_return_entry` (
  `return_entry_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) DEFAULT NULL,
  `return_count` int(11) DEFAULT NULL,
  `return_type` varchar(20) DEFAULT NULL,
  `return_note` text DEFAULT NULL,
  `return_id` bigint(20) DEFAULT NULL,
  `return_entry_added_date` datetime DEFAULT NULL,
  `return_entry_updated_date` datetime DEFAULT NULL,
  `return_entry_added_by` bigint(20) DEFAULT NULL,
  `return_entry_status` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_route`
--

CREATE TABLE `tbl_route` (
  `route_id` bigint(20) UNSIGNED NOT NULL,
  `route_code` varchar(255) DEFAULT NULL,
  `route_name` varchar(255) DEFAULT NULL,
  `route_start` varchar(255) DEFAULT NULL,
  `route_end` varchar(255) DEFAULT NULL,
  `route_description` text DEFAULT NULL,
  `route_added_date` datetime DEFAULT NULL,
  `route_updated_date` datetime DEFAULT NULL,
  `route_status` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_route`
--

INSERT INTO `tbl_route` (`route_id`, `route_code`, `route_name`, `route_start`, `route_end`, `route_description`, `route_added_date`, `route_updated_date`, `route_status`) VALUES
(1, 'R1', 'route1', NULL, NULL, NULL, NULL, NULL, 1),
(2, 'R2', 'route2', NULL, NULL, NULL, NULL, NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_stock`
--

CREATE TABLE `tbl_stock` (
  `stock_id` bigint(20) UNSIGNED NOT NULL,
  `store_id` bigint(20) DEFAULT NULL,
  `stock_added_date` datetime DEFAULT NULL,
  `stock_updated_date` datetime DEFAULT NULL,
  `stock_added_by` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_stock`
--

INSERT INTO `tbl_stock` (`stock_id`, `store_id`, `stock_added_date`, `stock_updated_date`, `stock_added_by`) VALUES
(1, 1, '2021-08-15 00:00:00', '2021-08-16 06:12:04', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_stock_entry`
--

CREATE TABLE `tbl_stock_entry` (
  `stock_entry_id` bigint(20) UNSIGNED NOT NULL,
  `stock_id` bigint(20) DEFAULT NULL,
  `product_id` bigint(20) DEFAULT NULL,
  `stock_count` int(11) DEFAULT NULL,
  `stock_entry_added_by` bigint(20) DEFAULT NULL,
  `stock_entry_added_date` datetime DEFAULT NULL,
  `stock_entry_updated_date` datetime DEFAULT NULL,
  `stock_entry_status` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_stock_entry`
--

INSERT INTO `tbl_stock_entry` (`stock_entry_id`, `stock_id`, `product_id`, `stock_count`, `stock_entry_added_by`, `stock_entry_added_date`, `stock_entry_updated_date`, `stock_entry_status`) VALUES
(1, 1, 1, 10, 1, '2021-08-15 00:00:00', '2021-08-16 06:12:04', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_stock_modification_request`
--

CREATE TABLE `tbl_stock_modification_request` (
  `request_id` bigint(20) UNSIGNED NOT NULL,
  `stock_entry_id` bigint(20) DEFAULT NULL,
  `old_qty` int(11) DEFAULT NULL,
  `new_qty` int(11) DEFAULT NULL,
  `requested_on` datetime DEFAULT NULL,
  `requested_by` bigint(20) DEFAULT NULL,
  `approved_by` bigint(20) DEFAULT NULL,
  `approved_on` datetime DEFAULT NULL,
  `status_remarks` text DEFAULT NULL,
  `request_status` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_store`
--

CREATE TABLE `tbl_store` (
  `store_id` bigint(20) UNSIGNED NOT NULL,
  `store_name` varchar(255) DEFAULT NULL,
  `store_phone` varchar(15) DEFAULT NULL,
  `store_address` text DEFAULT NULL,
  `store_email` varchar(100) DEFAULT NULL,
  `store_cperson` varchar(255) DEFAULT NULL,
  `store_cperson_mob` varchar(15) DEFAULT NULL,
  `store_added_date` datetime DEFAULT NULL,
  `store_updated_date` datetime DEFAULT NULL,
  `store_status` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_store`
--

INSERT INTO `tbl_store` (`store_id`, `store_name`, `store_phone`, `store_address`, `store_email`, `store_cperson`, `store_cperson_mob`, `store_added_date`, `store_updated_date`, `store_status`) VALUES
(1, 'alfajer', '984654', 'deira,dubai', 'store@alfajer.com', 'johns', '98463132', '2021-08-14 10:13:52', '2021-08-14 10:52:25', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user_access`
--

CREATE TABLE `tbl_user_access` (
  `persona_acc_id` bigint(20) UNSIGNED NOT NULL,
  `persona_id` bigint(20) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_wallet_recharge`
--

CREATE TABLE `tbl_wallet_recharge` (
  `wallet_recharge_id` bigint(20) UNSIGNED NOT NULL,
  `customer_wallet_id` bigint(20) DEFAULT NULL,
  `recharge_date` datetime DEFAULT NULL,
  `recharge_amount` double DEFAULT NULL,
  `agent_id` bigint(20) DEFAULT NULL,
  `recharge_mode` varchar(20) DEFAULT NULL,
  `recharge_status` tinyint(4) DEFAULT NULL,
  `transacation_id` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_wallet_recharge`
--

INSERT INTO `tbl_wallet_recharge` (`wallet_recharge_id`, `customer_wallet_id`, `recharge_date`, `recharge_amount`, `agent_id`, `recharge_mode`, `recharge_status`, `transacation_id`) VALUES
(1, 1, '2021-08-23 16:04:51', 500, 1, 'cash', 1, '464767887557');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_agent`
--
ALTER TABLE `tbl_agent`
  ADD PRIMARY KEY (`agent_id`);

--
-- Indexes for table `tbl_agent_login`
--
ALTER TABLE `tbl_agent_login`
  ADD PRIMARY KEY (`login_id`);

--
-- Indexes for table `tbl_agent_routes`
--
ALTER TABLE `tbl_agent_routes`
  ADD PRIMARY KEY (`assigned_id`);

--
-- Indexes for table `tbl_application_user`
--
ALTER TABLE `tbl_application_user`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `tbl_application_user_login`
--
ALTER TABLE `tbl_application_user_login`
  ADD PRIMARY KEY (`login_id`);

--
-- Indexes for table `tbl_area`
--
ALTER TABLE `tbl_area`
  ADD PRIMARY KEY (`area_id`);

--
-- Indexes for table `tbl_billing_type`
--
ALTER TABLE `tbl_billing_type`
  ADD PRIMARY KEY (`billing_type_id`);

--
-- Indexes for table `tbl_building`
--
ALTER TABLE `tbl_building`
  ADD PRIMARY KEY (`building_id`);

--
-- Indexes for table `tbl_category`
--
ALTER TABLE `tbl_category`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `tbl_customer`
--
ALTER TABLE `tbl_customer`
  ADD PRIMARY KEY (`customer_id`);

--
-- Indexes for table `tbl_customer_asset`
--
ALTER TABLE `tbl_customer_asset`
  ADD PRIMARY KEY (`asset_id`);

--
-- Indexes for table `tbl_customer_deposit`
--
ALTER TABLE `tbl_customer_deposit`
  ADD PRIMARY KEY (`customer_deposit_id`);

--
-- Indexes for table `tbl_customer_feedback`
--
ALTER TABLE `tbl_customer_feedback`
  ADD PRIMARY KEY (`feedback_id`);

--
-- Indexes for table `tbl_customer_login`
--
ALTER TABLE `tbl_customer_login`
  ADD PRIMARY KEY (`login_id`);

--
-- Indexes for table `tbl_customer_offer_price`
--
ALTER TABLE `tbl_customer_offer_price`
  ADD PRIMARY KEY (`offer_price_id`);

--
-- Indexes for table `tbl_customer_offer_price_request`
--
ALTER TABLE `tbl_customer_offer_price_request`
  ADD PRIMARY KEY (`request_id`);

--
-- Indexes for table `tbl_customer_wallet`
--
ALTER TABLE `tbl_customer_wallet`
  ADD PRIMARY KEY (`customer_wallet_id`);

--
-- Indexes for table `tbl_despatch`
--
ALTER TABLE `tbl_despatch`
  ADD PRIMARY KEY (`despatch_id`);

--
-- Indexes for table `tbl_despatch_entry`
--
ALTER TABLE `tbl_despatch_entry`
  ADD PRIMARY KEY (`despatch_entry_id`);

--
-- Indexes for table `tbl_despatch_note`
--
ALTER TABLE `tbl_despatch_note`
  ADD PRIMARY KEY (`despatch_note_id`);

--
-- Indexes for table `tbl_despatch_note_entry`
--
ALTER TABLE `tbl_despatch_note_entry`
  ADD PRIMARY KEY (`despatch_entry_id`);

--
-- Indexes for table `tbl_menu_item`
--
ALTER TABLE `tbl_menu_item`
  ADD PRIMARY KEY (`menu_id`);

--
-- Indexes for table `tbl_order`
--
ALTER TABLE `tbl_order`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `tbl_order_lines`
--
ALTER TABLE `tbl_order_lines`
  ADD PRIMARY KEY (`order_line_id`);

--
-- Indexes for table `tbl_organisation`
--
ALTER TABLE `tbl_organisation`
  ADD PRIMARY KEY (`org_id`);

--
-- Indexes for table `tbl_organisation_users`
--
ALTER TABLE `tbl_organisation_users`
  ADD PRIMARY KEY (`org_user_id`);

--
-- Indexes for table `tbl_persona`
--
ALTER TABLE `tbl_persona`
  ADD PRIMARY KEY (`persona_id`);

--
-- Indexes for table `tbl_persona_permission`
--
ALTER TABLE `tbl_persona_permission`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_product`
--
ALTER TABLE `tbl_product`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `tbl_product_price_request`
--
ALTER TABLE `tbl_product_price_request`
  ADD PRIMARY KEY (`request_id`);

--
-- Indexes for table `tbl_region`
--
ALTER TABLE `tbl_region`
  ADD PRIMARY KEY (`region_id`);

--
-- Indexes for table `tbl_return`
--
ALTER TABLE `tbl_return`
  ADD PRIMARY KEY (`return_id`);

--
-- Indexes for table `tbl_return_entry`
--
ALTER TABLE `tbl_return_entry`
  ADD PRIMARY KEY (`return_entry_id`);

--
-- Indexes for table `tbl_route`
--
ALTER TABLE `tbl_route`
  ADD PRIMARY KEY (`route_id`);

--
-- Indexes for table `tbl_stock`
--
ALTER TABLE `tbl_stock`
  ADD PRIMARY KEY (`stock_id`);

--
-- Indexes for table `tbl_stock_entry`
--
ALTER TABLE `tbl_stock_entry`
  ADD PRIMARY KEY (`stock_entry_id`);

--
-- Indexes for table `tbl_stock_modification_request`
--
ALTER TABLE `tbl_stock_modification_request`
  ADD PRIMARY KEY (`request_id`);

--
-- Indexes for table `tbl_store`
--
ALTER TABLE `tbl_store`
  ADD PRIMARY KEY (`store_id`);

--
-- Indexes for table `tbl_user_access`
--
ALTER TABLE `tbl_user_access`
  ADD PRIMARY KEY (`persona_acc_id`);

--
-- Indexes for table `tbl_wallet_recharge`
--
ALTER TABLE `tbl_wallet_recharge`
  ADD PRIMARY KEY (`wallet_recharge_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_agent`
--
ALTER TABLE `tbl_agent`
  MODIFY `agent_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_agent_login`
--
ALTER TABLE `tbl_agent_login`
  MODIFY `login_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_agent_routes`
--
ALTER TABLE `tbl_agent_routes`
  MODIFY `assigned_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `tbl_application_user`
--
ALTER TABLE `tbl_application_user`
  MODIFY `user_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_application_user_login`
--
ALTER TABLE `tbl_application_user_login`
  MODIFY `login_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_area`
--
ALTER TABLE `tbl_area`
  MODIFY `area_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_billing_type`
--
ALTER TABLE `tbl_billing_type`
  MODIFY `billing_type_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_building`
--
ALTER TABLE `tbl_building`
  MODIFY `building_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_category`
--
ALTER TABLE `tbl_category`
  MODIFY `category_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_customer`
--
ALTER TABLE `tbl_customer`
  MODIFY `customer_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tbl_customer_asset`
--
ALTER TABLE `tbl_customer_asset`
  MODIFY `asset_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_customer_deposit`
--
ALTER TABLE `tbl_customer_deposit`
  MODIFY `customer_deposit_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_customer_feedback`
--
ALTER TABLE `tbl_customer_feedback`
  MODIFY `feedback_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_customer_login`
--
ALTER TABLE `tbl_customer_login`
  MODIFY `login_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_customer_offer_price`
--
ALTER TABLE `tbl_customer_offer_price`
  MODIFY `offer_price_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_customer_offer_price_request`
--
ALTER TABLE `tbl_customer_offer_price_request`
  MODIFY `request_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_customer_wallet`
--
ALTER TABLE `tbl_customer_wallet`
  MODIFY `customer_wallet_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_despatch`
--
ALTER TABLE `tbl_despatch`
  MODIFY `despatch_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_despatch_entry`
--
ALTER TABLE `tbl_despatch_entry`
  MODIFY `despatch_entry_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tbl_despatch_note`
--
ALTER TABLE `tbl_despatch_note`
  MODIFY `despatch_note_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_despatch_note_entry`
--
ALTER TABLE `tbl_despatch_note_entry`
  MODIFY `despatch_entry_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_menu_item`
--
ALTER TABLE `tbl_menu_item`
  MODIFY `menu_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_order`
--
ALTER TABLE `tbl_order`
  MODIFY `order_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_order_lines`
--
ALTER TABLE `tbl_order_lines`
  MODIFY `order_line_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_organisation`
--
ALTER TABLE `tbl_organisation`
  MODIFY `org_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_organisation_users`
--
ALTER TABLE `tbl_organisation_users`
  MODIFY `org_user_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_persona`
--
ALTER TABLE `tbl_persona`
  MODIFY `persona_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_persona_permission`
--
ALTER TABLE `tbl_persona_permission`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_product`
--
ALTER TABLE `tbl_product`
  MODIFY `product_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_product_price_request`
--
ALTER TABLE `tbl_product_price_request`
  MODIFY `request_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_region`
--
ALTER TABLE `tbl_region`
  MODIFY `region_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_return`
--
ALTER TABLE `tbl_return`
  MODIFY `return_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_return_entry`
--
ALTER TABLE `tbl_return_entry`
  MODIFY `return_entry_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_route`
--
ALTER TABLE `tbl_route`
  MODIFY `route_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_stock`
--
ALTER TABLE `tbl_stock`
  MODIFY `stock_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_stock_entry`
--
ALTER TABLE `tbl_stock_entry`
  MODIFY `stock_entry_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_stock_modification_request`
--
ALTER TABLE `tbl_stock_modification_request`
  MODIFY `request_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_store`
--
ALTER TABLE `tbl_store`
  MODIFY `store_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_user_access`
--
ALTER TABLE `tbl_user_access`
  MODIFY `persona_acc_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_wallet_recharge`
--
ALTER TABLE `tbl_wallet_recharge`
  MODIFY `wallet_recharge_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
