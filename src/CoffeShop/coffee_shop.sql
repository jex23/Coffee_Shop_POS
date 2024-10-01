-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 01, 2024 at 07:27 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `coffee_shop`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_employees`
--

CREATE TABLE `tbl_employees` (
  `employee_id` int(11) NOT NULL,
  `employee_username` varchar(255) NOT NULL,
  `employee_password` varchar(255) NOT NULL,
  `employee_name` varchar(255) NOT NULL,
  `employee_role` varchar(255) NOT NULL,
  `employee_date_of_employment` timestamp NOT NULL DEFAULT current_timestamp(),
  `last_Login` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `employee_ImagePath` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_employees`
--

INSERT INTO `tbl_employees` (`employee_id`, `employee_username`, `employee_password`, `employee_name`, `employee_role`, `employee_date_of_employment`, `last_Login`, `employee_ImagePath`) VALUES
(1, 'admin', 'password', 'Admin User', 'Administrator', '2024-10-01 05:00:48', '2024-10-01 05:26:36', 'path/to/image.png'),
(3, 'jen23', 'cashier123', 'Jenalyn Mirafuentes', 'Cashier', '2024-09-26 10:31:47', '2024-09-28 02:18:14', 'src/Employees/Jen.jpg'),
(4, 'prince23', 'chef123', 'Prince Laranjo Olaguera II', 'Chef', '2024-09-26 10:31:47', '2024-09-27 23:10:47', 'src/Employees/Prince.jpg'),
(5, 'berp23', 'asstchef123', 'John Bert Onrubia', 'Assistant Chef', '2024-09-26 10:31:47', '2024-09-27 18:22:38', 'src/Employees/Berp.jpg'),
(6, 'sean23', 'waiter123', 'Sean Francis Ryan Castillo', 'Waiter', '2024-09-26 10:31:47', '2024-09-27 18:22:38', 'src/Employees/Sean.jpg'),
(7, 'kian23', 'waiter123', 'Kian Carlo Apurado', 'Waiter', '2024-09-26 10:31:47', '2024-09-27 18:22:38', 'src/Employees/Kian.jpg'),
(8, 'jex23', 'manager123', 'James Galos', 'Owner/Manager', '2024-09-26 10:31:47', '2024-09-30 05:11:15', 'src/Employees/James.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_products`
--

CREATE TABLE `tbl_products` (
  `product_id` int(11) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `product_category` varchar(255) NOT NULL,
  `product_price` double NOT NULL,
  `product_ImagePath` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_products`
--

INSERT INTO `tbl_products` (`product_id`, `product_name`, `product_category`, `product_price`, `product_ImagePath`) VALUES
(2, 'French Pressed Brewed Coffee', 'Coffee', 90, 'src\\products\\Brewed toon.jpg'),
(3, 'Caffe Latte', 'Coffee', 90, 'src\\products\\Caffe Latte hot.jpg'),
(4, 'Cappuccino', 'Coffee', 90, 'src\\products\\cappuccino hot.jpg'),
(5, 'Caffe Mocha', 'Coffee', 100, 'src\\products\\Caffe Mocha.jpg'),
(6, 'Caramel Macchiato', 'Coffee', 105, 'src\\products\\Caramel Macchiato.jpg'),
(7, 'Caramel Latte', 'Coffee', 105, 'src\\products\\Caramel Latte.jpg'),
(8, 'Almond Latte', 'Coffee', 105, 'src\\products\\Almond Latte.jpg'),
(9, 'Vanilla Latte', 'Coffee', 105, 'src\\products\\Vanilla Latte.jpg'),
(10, 'Praline Mocha', 'Coffee', 110, 'src\\products\\Praline Mocha.jpg'),
(11, 'Almond Praline', 'Coffee', 110, 'src\\products\\Almond Praline.jpg'),
(12, 'Dark Mocha', 'Coffee', 120, 'src\\products\\Dark Mocha.jpg'),
(13, 'White Mocha', 'Coffee', 120, 'src\\products\\White Mocha.jpg'),
(14, 'Coffee Jelly', 'Coffee', 130, 'src\\products\\Coffee Jelly.jpg'),
(15, 'Iced Caffe Mocha', 'Coffee', 130, 'src\\products\\Iced Caffe Mocha.jpg'),
(16, 'Iced Caramel', 'Coffee', 130, 'src\\products\\Iced Caramel.jpg'),
(17, 'Iced Almond Latte', 'Coffee', 130, 'src\\products\\Iced Almond Latte.jpg'),
(18, 'Iced Caramel Macchiato', 'Coffee', 135, 'src\\products\\Iced Caramel Macchiato.jpg'),
(19, 'Iced Creamy Vanilla', 'Coffee', 140, 'src\\products\\Iced Creamy Vanilla.png'),
(20, 'Iced Praline Mocha', 'Coffee', 145, 'src\\products\\Iced Praline Mocha.jpg'),
(21, 'Iced Almond Praline', 'Coffee', 145, 'src\\products\\Iced Almond Praline.jpg'),
(22, 'Iced Dark Mocha', 'Coffee', 145, 'src\\products\\Iced Dark Mocha.jpg'),
(23, 'Iced White Mocha', 'Coffee', 145, 'src\\products\\Iced White Mocha.jpg'),
(24, 'Mocha Frappe', 'Coffee', 140, 'src\\products\\Mocha Frappe.jpg'),
(25, 'Coffee Jelly Frappe', 'Coffee', 140, 'src\\products\\Coffee Jelly Frappe.jpg'),
(26, 'Caramel Frappe', 'Coffee', 140, 'src\\products\\Caramel Frappe.jpg'),
(27, 'Creamy Vanilla Frappe', 'Coffee', 150, 'src\\products\\Creamy Vanilla Frappe.jpg'),
(28, 'Java Chips Frappe', 'Coffee', 150, 'src\\products\\Java Chips Frappe.jpg'),
(29, 'Java Peppermint Frappe', 'Coffee', 150, 'src\\products\\Java Peppermint Frappe.jpg'),
(30, 'Praline Mocha Frappe', 'Coffee', 155, 'src\\products\\Praline Mocha Frappe.jpg'),
(31, 'Almond Praline Frappe', 'Coffee', 155, 'src\\products\\Almond Praline Frappe.jpg'),
(32, 'Dark Mocha Frappe', 'Coffee', 165, 'src\\products\\Dark Mocha Frappe.jpg'),
(33, 'White Mocha Frappe', 'Coffee', 165, 'src\\products\\White Mocha Frappe.jpg'),
(34, 'Chocolate Milk Frappe', 'Coffee', 140, 'src\\products\\Chocolate Milk Frappe.jpg'),
(35, 'Milky Caramel Frappe', 'Coffee', 140, 'src\\products\\Milky Caramel Frappe.jpg'),
(36, 'Milky Creamy Vanilla Frappe', 'Coffee', 150, 'src\\products\\Milky Creamy Vanilla Frappe.jpg'),
(37, 'Cookies N Cream Frappe', 'Coffee', 155, 'src\\products\\Cookies N Cream Frappe.jpg'),
(38, 'Dark Chocolate with Cheese Frappe', 'Coffee', 165, 'src\\products\\Dark Chocolate with Cheese Frappe.jpg'),
(39, 'White Chocolate Frappe', 'Coffee', 165, 'src\\products\\White Chocolate Frappe.jpg'),
(40, 'Creamy Mango Tea', 'Tea', 125, 'src\\products\\Creamy Mango Tea.jpg'),
(41, 'Milky Strawberry Tea', 'Tea', 150, 'src\\products\\Milky Strawberry Tea.jpg'),
(42, 'Melon with Collagen Tea', 'Tea', 150, 'src\\products\\Melon with Collagen Tea.jpg'),
(43, 'Assam Tea', 'Tea', 90, 'src\\products\\Assam Tea.jpg'),
(44, 'Coffee Jelly Tea', 'Tea', 95, 'src\\products\\Coffee Jelly Tea.jpg'),
(45, 'Chocolate Tea', 'Tea', 95, 'src\\products\\Chocolate Tea.jpg'),
(46, 'Brown Sugar Tea', 'Tea', 95, 'src\\products\\Brown Sugar Tea.jpg'),
(47, 'Oreo Cookies Tea', 'Tea', 95, 'src\\products\\Oreo Cookies Tea.jpg'),
(48, 'Wintermelon Tea', 'Tea', 100, 'src\\products\\Wintermelon Tea.jpg'),
(49, 'Okinawa Tea', 'Tea', 100, 'src\\products\\Okinawa Tea.jpg'),
(50, 'Strawberry Cream Tea', 'Tea', 100, 'src\\products\\Strawberry Cream Tea.jpg'),
(51, 'Matcha Tea', 'Tea', 110, 'src\\products\\Matcha Tea.jpg'),
(52, 'Red Velvet Tea', 'Tea', 100, 'src\\products\\Red Velvet Tea.jpg'),
(53, 'Cheesecake Tea', 'Tea', 100, 'src\\products\\Cheesecake Tea.jpg'),
(54, 'Dark Choco Tea', 'Tea', 90, 'src\\products\\Dark Choco Tea.jpg'),
(55, 'Taro Tea', 'Tea', 90, 'src\\products\\Taro Tea.jpg'),
(56, 'Choco Kisses Tea', 'Tea', 90, 'src\\products\\Choco Kisses Tea.jpg'),
(57, 'Salted Caramel Tea', 'Tea', 100, 'src\\products\\Salted Caramel Tea.jpg'),
(58, 'Double Dutch Tea', 'Tea', 100, 'src\\products\\Double Dutch Tea.jpg'),
(59, 'Mint Tea', 'Tea', 70, 'src\\products\\Mint Tea.jpg'),
(60, 'Green Tea', 'Tea', 70, 'src\\products\\Green Tea.jpg'),
(61, 'Strawberry Tea Latte', 'Tea', 70, 'src\\products\\Strawberry Tea Latte.jpg'),
(62, 'Earl Grey Tea', 'Tea', 70, 'src\\products\\Earl Grey Tea.jpg'),
(63, 'Raspberry Tea', 'Tea', 130, 'src\\products\\Raspberry Tea.jpg'),
(64, 'Assam Tea Latte', 'Tea', 90, 'src\\products\\Assam Tea Latte.jpg'),
(65, 'Okinawa Tea Latte', 'Tea', 100, 'src\\products\\Okinawa Tea Latte.jpg'),
(66, 'Matcha Tea Latte', 'Tea', 110, 'src\\products\\Matcha Tea Latte.jpg'),
(67, 'Oatmeal Cookie', 'Snacks', 25, 'src\\products\\Oatmeal Cookie.jpg'),
(68, 'Chocolate Cookie', 'Snacks', 30, 'src\\products\\Chocolate Cookie.jpg'),
(69, 'Delisioso Pan Tostado', 'Snacks', 85, 'src\\products\\Delisioso Pan Tostado.jpg'),
(70, 'Tuna Sandwich', 'Snacks', 100, 'src\\products\\Tuna Sandwich.jpg'),
(71, 'Beefy Nachos', 'Snacks', 115, 'src\\products\\Beefy Nachos.jpg'),
(72, 'Clubhouse Sandwich', 'Snacks', 125, 'src\\products\\Clubhouse Sandwich.jpg'),
(73, 'Ube Halaya', 'Snacks', 125, 'src\\products\\Ube Halaya.jpg'),
(74, 'Chocolate Cake', 'Snacks', 145, 'src\\products\\Chocolate Cake.jpg'),
(75, 'Cheesecake', 'Snacks', 150, 'src\\products\\Cheesecake.jpg'),
(76, 'Ice Cream Cake', 'Snacks', 150, 'src\\products\\Ice Cream Cake.jpg'),
(77, 'Birthday Cake', 'Snacks', 150, 'src\\products\\Birthday Cake.jpg'),
(78, 'Red Velvet Cake', 'Snacks', 150, 'src\\products\\Red Velvet Cake.jpg'),
(79, 'Chocolate Chip Cookies', 'Snacks', 150, 'src\\products\\Chocolate Chip Cookies.jpg'),
(80, 'Jelly Beans', 'Snacks', 150, 'src\\products\\Jelly Beans.jpg'),
(81, 'Cheese Bread', 'Snacks', 150, 'src\\products\\Cheese Bread.jpg'),
(82, 'Cupcakes', 'Snacks', 150, 'src\\products\\Cupcakes.jpg'),
(83, 'Bread Roll', 'Snacks', 150, 'src\\products\\Bread Roll.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_sales`
--

CREATE TABLE `tbl_sales` (
  `sale_id` int(11) NOT NULL,
  `sale_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `employee_id` int(11) DEFAULT NULL,
  `employee_name` varchar(255) NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  `amount_change` decimal(10,2) NOT NULL,
  `subtotal` decimal(10,2) NOT NULL,
  `vat` decimal(10,2) NOT NULL,
  `total` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_sales`
--

INSERT INTO `tbl_sales` (`sale_id`, `sale_date`, `employee_id`, `employee_name`, `amount`, `amount_change`, `subtotal`, `vat`, `total`) VALUES
(1, '2024-01-01 01:00:00', 1, 'John Doe', 500.00, 0.00, 500.00, 0.00, 500.00),
(2, '2024-01-02 02:30:00', 2, 'Jane Smith', 300.00, 0.00, 300.00, 0.00, 300.00),
(3, '2024-01-03 03:15:00', 1, 'John Doe', 450.00, 0.00, 450.00, 0.00, 450.00),
(4, '2024-01-05 05:45:00', 3, 'Emily Davis', 650.00, 0.00, 650.00, 0.00, 650.00),
(5, '2024-01-06 06:20:00', 2, 'Jane Smith', 220.00, 0.00, 220.00, 0.00, 220.00),
(6, '2024-01-07 07:10:00', 1, 'John Doe', 400.00, 0.00, 400.00, 0.00, 400.00),
(7, '2024-01-10 01:30:00', 3, 'Emily Davis', 520.00, 0.00, 520.00, 0.00, 520.00),
(8, '2024-01-15 02:45:00', 4, 'Michael Brown', 300.00, 0.00, 300.00, 0.00, 300.00),
(9, '2024-02-01 04:00:00', 2, 'Jane Smith', 800.00, 0.00, 800.00, 0.00, 800.00),
(10, '2024-02-10 01:20:00', 3, 'Emily Davis', 720.00, 0.00, 720.00, 0.00, 720.00),
(11, '2024-02-15 03:10:00', 1, 'John Doe', 600.00, 0.00, 600.00, 0.00, 600.00),
(12, '2024-02-20 06:00:00', 2, 'Jane Smith', 550.00, 0.00, 550.00, 0.00, 550.00),
(13, '2024-03-01 05:50:00', 3, 'Emily Davis', 480.00, 0.00, 480.00, 0.00, 480.00),
(14, '2024-03-05 01:45:00', 4, 'Michael Brown', 650.00, 0.00, 650.00, 0.00, 650.00),
(15, '2024-03-10 02:20:00', 2, 'Jane Smith', 370.00, 0.00, 370.00, 0.00, 370.00),
(16, '2024-03-15 04:30:00', 1, 'John Doe', 490.00, 0.00, 490.00, 0.00, 490.00),
(17, '2024-03-20 07:10:00', 3, 'Emily Davis', 420.00, 0.00, 420.00, 0.00, 420.00),
(18, '2024-04-01 03:00:00', 4, 'Michael Brown', 390.00, 0.00, 390.00, 0.00, 390.00),
(19, '2024-04-10 06:30:00', 1, 'John Doe', 800.00, 0.00, 800.00, 0.00, 800.00),
(20, '2024-04-15 08:00:00', 2, 'Jane Smith', 450.00, 0.00, 450.00, 0.00, 450.00),
(21, '2024-05-01 02:15:00', 3, 'Emily Davis', 520.00, 0.00, 520.00, 0.00, 520.00),
(22, '2024-05-05 04:00:00', 4, 'Michael Brown', 600.00, 0.00, 600.00, 0.00, 600.00),
(23, '2024-05-10 03:45:00', 1, 'John Doe', 430.00, 0.00, 430.00, 0.00, 430.00),
(24, '2024-05-15 06:10:00', 2, 'Jane Smith', 510.00, 0.00, 510.00, 0.00, 510.00),
(25, '2024-06-01 01:30:00', 3, 'Emily Davis', 650.00, 0.00, 650.00, 0.00, 650.00),
(26, '2024-06-10 02:50:00', 4, 'Michael Brown', 420.00, 0.00, 420.00, 0.00, 420.00),
(27, '2024-06-15 04:15:00', 2, 'Jane Smith', 340.00, 0.00, 340.00, 0.00, 340.00),
(28, '2024-06-20 06:00:00', 1, 'John Doe', 580.00, 0.00, 580.00, 0.00, 580.00),
(29, '2024-07-01 03:30:00', 3, 'Emily Davis', 750.00, 0.00, 750.00, 0.00, 750.00),
(30, '2024-07-10 05:00:00', 4, 'Michael Brown', 600.00, 0.00, 600.00, 0.00, 600.00),
(31, '2024-07-15 07:00:00', 1, 'John Doe', 470.00, 0.00, 470.00, 0.00, 470.00),
(32, '2024-08-01 01:10:00', 2, 'Jane Smith', 800.00, 0.00, 800.00, 0.00, 800.00),
(33, '2024-08-05 02:30:00', 3, 'Emily Davis', 530.00, 0.00, 530.00, 0.00, 530.00),
(34, '2024-08-10 03:50:00', 4, 'Michael Brown', 640.00, 0.00, 640.00, 0.00, 640.00),
(35, '2024-08-15 06:20:00', 1, 'John Doe', 720.00, 0.00, 720.00, 0.00, 720.00),
(36, '2024-09-01 04:00:00', 2, 'Jane Smith', 390.00, 0.00, 390.00, 0.00, 390.00),
(37, '2024-09-10 02:00:00', 3, 'Emily Davis', 550.00, 0.00, 550.00, 0.00, 550.00),
(38, '2024-09-15 03:30:00', 4, 'Michael Brown', 470.00, 0.00, 470.00, 0.00, 470.00),
(39, '2024-09-20 06:00:00', 1, 'John Doe', 800.00, 0.00, 800.00, 0.00, 800.00),
(40, '2024-10-01 01:15:00', 2, 'Jane Smith', 600.00, 0.00, 600.00, 0.00, 600.00),
(41, '2024-10-10 03:00:00', 3, 'Emily Davis', 550.00, 0.00, 550.00, 0.00, 550.00),
(42, '2024-10-15 06:45:00', 4, 'Michael Brown', 740.00, 0.00, 740.00, 0.00, 740.00),
(43, '2024-11-01 02:30:00', 1, 'John Doe', 350.00, 0.00, 350.00, 0.00, 350.00),
(44, '2024-11-10 04:15:00', 2, 'Jane Smith', 430.00, 0.00, 430.00, 0.00, 430.00),
(45, '2024-11-15 06:00:00', 3, 'Emily Davis', 520.00, 0.00, 520.00, 0.00, 520.00),
(46, '2024-12-01 01:45:00', 4, 'Michael Brown', 650.00, 0.00, 650.00, 0.00, 650.00),
(47, '2024-12-10 03:30:00', 1, 'John Doe', 540.00, 0.00, 540.00, 0.00, 540.00),
(48, '2024-12-15 05:00:00', 2, 'Jane Smith', 400.00, 0.00, 400.00, 0.00, 400.00),
(49, '2024-12-20 07:15:00', 3, 'Emily Davis', 630.00, 0.00, 630.00, 0.00, 630.00),
(50, '2024-12-31 08:30:00', 4, 'Michael Brown', 780.00, 0.00, 780.00, 0.00, 780.00),
(51, '2025-01-01 01:00:00', 1, 'John Doe', 500.00, 0.00, 500.00, 0.00, 500.00),
(52, '2025-01-02 02:30:00', 2, 'Jane Smith', 300.00, 0.00, 300.00, 0.00, 300.00),
(53, '2025-01-03 03:15:00', 1, 'John Doe', 450.00, 0.00, 450.00, 0.00, 450.00),
(54, '2025-01-05 05:45:00', 3, 'Emily Davis', 650.00, 0.00, 650.00, 0.00, 650.00),
(55, '2025-01-06 06:20:00', 2, 'Jane Smith', 220.00, 0.00, 220.00, 0.00, 220.00),
(56, '2025-01-07 07:10:00', 1, 'John Doe', 400.00, 0.00, 400.00, 0.00, 400.00),
(57, '2025-01-10 01:30:00', 3, 'Emily Davis', 520.00, 0.00, 520.00, 0.00, 520.00),
(58, '2025-01-15 02:45:00', 4, 'Michael Brown', 300.00, 0.00, 300.00, 0.00, 300.00),
(59, '2025-02-01 04:00:00', 2, 'Jane Smith', 800.00, 0.00, 800.00, 0.00, 800.00),
(60, '2025-02-10 01:20:00', 3, 'Emily Davis', 720.00, 0.00, 720.00, 0.00, 720.00),
(61, '2025-02-15 03:10:00', 1, 'John Doe', 600.00, 0.00, 600.00, 0.00, 600.00),
(62, '2025-02-20 06:00:00', 2, 'Jane Smith', 550.00, 0.00, 550.00, 0.00, 550.00),
(63, '2025-03-01 05:50:00', 3, 'Emily Davis', 480.00, 0.00, 480.00, 0.00, 480.00),
(64, '2025-03-05 01:45:00', 4, 'Michael Brown', 650.00, 0.00, 650.00, 0.00, 650.00),
(65, '2025-03-10 02:20:00', 2, 'Jane Smith', 370.00, 0.00, 370.00, 0.00, 370.00),
(66, '2025-03-15 04:30:00', 1, 'John Doe', 490.00, 0.00, 490.00, 0.00, 490.00),
(67, '2025-03-20 07:10:00', 3, 'Emily Davis', 420.00, 0.00, 420.00, 0.00, 420.00),
(68, '2025-04-01 03:00:00', 4, 'Michael Brown', 390.00, 0.00, 390.00, 0.00, 390.00),
(69, '2025-04-10 06:30:00', 1, 'John Doe', 800.00, 0.00, 800.00, 0.00, 800.00),
(70, '2025-04-15 08:00:00', 2, 'Jane Smith', 450.00, 0.00, 450.00, 0.00, 450.00),
(71, '2025-05-01 02:15:00', 3, 'Emily Davis', 520.00, 0.00, 520.00, 0.00, 520.00),
(72, '2025-05-05 04:00:00', 4, 'Michael Brown', 600.00, 0.00, 600.00, 0.00, 600.00),
(73, '2025-05-10 03:45:00', 1, 'John Doe', 430.00, 0.00, 430.00, 0.00, 430.00),
(74, '2025-05-15 06:10:00', 2, 'Jane Smith', 510.00, 0.00, 510.00, 0.00, 510.00),
(75, '2025-06-01 01:30:00', 3, 'Emily Davis', 650.00, 0.00, 650.00, 0.00, 650.00),
(76, '2025-06-10 02:50:00', 4, 'Michael Brown', 420.00, 0.00, 420.00, 0.00, 420.00),
(77, '2025-06-15 04:15:00', 2, 'Jane Smith', 340.00, 0.00, 340.00, 0.00, 340.00),
(78, '2025-06-20 06:00:00', 1, 'John Doe', 580.00, 0.00, 580.00, 0.00, 580.00),
(79, '2025-07-01 03:30:00', 3, 'Emily Davis', 750.00, 0.00, 750.00, 0.00, 750.00),
(80, '2025-07-10 05:00:00', 4, 'Michael Brown', 600.00, 0.00, 600.00, 0.00, 600.00),
(81, '2025-07-15 07:00:00', 1, 'John Doe', 490.00, 0.00, 490.00, 0.00, 490.00),
(82, '2025-08-01 01:10:00', 2, 'Jane Smith', 800.00, 0.00, 800.00, 0.00, 800.00),
(83, '2025-08-05 02:30:00', 3, 'Emily Davis', 530.00, 0.00, 530.00, 0.00, 530.00),
(84, '2025-08-10 03:50:00', 4, 'Michael Brown', 640.00, 0.00, 640.00, 0.00, 640.00),
(85, '2025-08-15 06:20:00', 1, 'John Doe', 720.00, 0.00, 720.00, 0.00, 720.00),
(86, '2025-09-01 04:00:00', 2, 'Jane Smith', 390.00, 0.00, 390.00, 0.00, 390.00),
(87, '2025-09-10 02:00:00', 3, 'Emily Davis', 550.00, 0.00, 550.00, 0.00, 550.00),
(88, '2025-09-15 03:30:00', 4, 'Michael Brown', 470.00, 0.00, 470.00, 0.00, 470.00),
(89, '2025-09-20 06:00:00', 1, 'John Doe', 800.00, 0.00, 800.00, 0.00, 800.00),
(90, '2025-10-01 01:15:00', 2, 'Jane Smith', 600.00, 0.00, 600.00, 0.00, 600.00),
(91, '2025-10-10 03:00:00', 3, 'Emily Davis', 550.00, 0.00, 550.00, 0.00, 550.00),
(92, '2025-10-15 06:45:00', 4, 'Michael Brown', 740.00, 0.00, 740.00, 0.00, 740.00),
(93, '2025-11-01 02:30:00', 1, 'John Doe', 350.00, 0.00, 350.00, 0.00, 350.00),
(94, '2025-11-10 04:15:00', 2, 'Jane Smith', 430.00, 0.00, 430.00, 0.00, 430.00),
(95, '2025-11-15 06:00:00', 3, 'Emily Davis', 520.00, 0.00, 520.00, 0.00, 520.00),
(96, '2025-12-01 01:45:00', 4, 'Michael Brown', 650.00, 0.00, 650.00, 0.00, 650.00),
(97, '2025-12-10 03:30:00', 1, 'John Doe', 540.00, 0.00, 540.00, 0.00, 540.00),
(98, '2025-12-15 05:00:00', 2, 'Jane Smith', 400.00, 0.00, 400.00, 0.00, 400.00),
(99, '2025-12-20 07:15:00', 3, 'Emily Davis', 630.00, 0.00, 630.00, 0.00, 630.00),
(100, '2025-12-31 08:30:00', 4, 'Michael Brown', 780.00, 0.00, 780.00, 0.00, 780.00);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_sales_items`
--

CREATE TABLE `tbl_sales_items` (
  `sale_item_id` int(11) NOT NULL,
  `sale_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `product_name` varchar(255) NOT NULL,
  `product_category` varchar(255) NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `total_item_price` decimal(10,2) NOT NULL,
  `sale_item_time` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_sales_items`
--

INSERT INTO `tbl_sales_items` (`sale_item_id`, `sale_id`, `product_id`, `product_name`, `product_category`, `quantity`, `price`, `total_item_price`, `sale_item_time`) VALUES
(1, 1, 101, 'Espresso', 'Beverages', 2, 50.00, 100.00, '2024-01-01 01:00:00'),
(2, 1, 102, 'Cappuccino', 'Beverages', 3, 70.00, 210.00, '2024-01-01 01:00:00'),
(3, 2, 103, 'Latte', 'Beverages', 1, 60.00, 60.00, '2024-01-02 02:30:00'),
(4, 2, 104, 'Coffee', 'Beverages', 4, 40.00, 160.00, '2024-01-02 02:30:00'),
(5, 3, 105, 'Tea', 'Beverages', 5, 30.00, 150.00, '2024-01-03 03:15:00'),
(6, 4, 106, 'Croissant', 'Bakery', 3, 20.00, 60.00, '2024-01-05 05:45:00'),
(7, 4, 107, 'Muffin', 'Bakery', 4, 25.00, 100.00, '2024-01-05 05:45:00'),
(8, 5, 108, 'Sandwich', 'Food', 2, 90.00, 180.00, '2024-01-06 06:20:00'),
(9, 5, 109, 'Salad', 'Food', 1, 50.00, 50.00, '2024-01-06 06:20:00'),
(10, 6, 110, 'Scone', 'Bakery', 2, 35.00, 70.00, '2024-01-07 07:10:00'),
(11, 7, 111, 'Brownie', 'Dessert', 1, 45.00, 45.00, '2024-01-10 01:30:00'),
(12, 8, 112, 'Ice Cream', 'Dessert', 3, 20.00, 60.00, '2024-01-15 02:45:00'),
(13, 9, 113, 'Pasta', 'Food', 1, 150.00, 150.00, '2024-02-01 04:00:00'),
(14, 9, 114, 'Pizza', 'Food', 2, 200.00, 400.00, '2024-02-01 04:00:00'),
(15, 10, 115, 'Waffle', 'Dessert', 3, 25.00, 75.00, '2024-02-10 01:20:00'),
(16, 11, 116, 'Pancake', 'Dessert', 2, 30.00, 60.00, '2024-02-15 03:10:00'),
(17, 12, 117, 'Omelette', 'Food', 1, 100.00, 100.00, '2024-02-20 06:00:00'),
(18, 13, 118, 'Bagel', 'Bakery', 2, 15.00, 30.00, '2024-03-01 05:50:00'),
(19, 13, 119, 'Donut', 'Bakery', 3, 10.00, 30.00, '2024-03-01 05:50:00'),
(20, 14, 120, 'Fruit Salad', 'Food', 1, 80.00, 80.00, '2024-03-05 01:45:00'),
(21, 15, 121, 'Cheesecake', 'Dessert', 1, 45.00, 45.00, '2024-03-10 02:20:00'),
(22, 16, 122, 'Chili', 'Food', 2, 90.00, 180.00, '2024-03-15 04:30:00'),
(23, 17, 123, 'Lemonade', 'Beverages', 5, 20.00, 100.00, '2024-03-20 07:10:00'),
(24, 18, 124, 'Hot Chocolate', 'Beverages', 2, 50.00, 100.00, '2024-04-01 03:00:00'),
(25, 19, 125, 'Fruit Juice', 'Beverages', 3, 30.00, 90.00, '2024-04-10 06:30:00'),
(26, 20, 126, 'Nachos', 'Food', 2, 70.00, 140.00, '2024-04-15 08:00:00'),
(27, 21, 127, 'Tacos', 'Food', 1, 120.00, 120.00, '2024-04-20 01:15:00'),
(28, 22, 128, 'Burger', 'Food', 2, 150.00, 300.00, '2024-04-25 02:30:00'),
(29, 23, 129, 'Fries', 'Food', 1, 30.00, 30.00, '2024-04-30 03:50:00'),
(30, 24, 130, 'Soda', 'Beverages', 4, 15.00, 60.00, '2024-05-01 04:00:00'),
(31, 25, 131, 'Milkshake', 'Beverages', 2, 25.00, 50.00, '2024-05-05 02:00:00'),
(32, 26, 132, 'Lemon Tart', 'Dessert', 1, 60.00, 60.00, '2024-05-10 03:30:00'),
(33, 27, 133, 'Apple Pie', 'Dessert', 3, 40.00, 120.00, '2024-05-15 06:20:00'),
(34, 28, 134, 'Tiramisu', 'Dessert', 2, 55.00, 110.00, '2024-06-01 01:30:00'),
(35, 29, 135, 'Pudding', 'Dessert', 1, 35.00, 35.00, '2024-06-10 02:50:00'),
(36, 30, 136, 'Pasta Salad', 'Food', 2, 70.00, 140.00, '2024-06-15 04:15:00'),
(37, 31, 137, 'Stuffed Peppers', 'Food', 1, 110.00, 110.00, '2024-06-20 06:00:00'),
(38, 32, 138, 'Clam Chowder', 'Food', 3, 40.00, 120.00, '2024-07-01 03:30:00'),
(39, 33, 139, 'Spring Rolls', 'Food', 5, 20.00, 100.00, '2024-07-10 05:00:00'),
(40, 34, 140, 'Shrimp Scampi', 'Food', 1, 150.00, 150.00, '2024-07-15 07:00:00'),
(41, 35, 141, 'Grilled Cheese', 'Food', 4, 30.00, 120.00, '2024-08-01 01:10:00'),
(42, 36, 142, 'Caesar Salad', 'Food', 2, 80.00, 160.00, '2024-08-05 02:30:00'),
(43, 37, 143, 'Potato Skins', 'Appetizer', 3, 50.00, 150.00, '2024-08-10 03:50:00'),
(44, 38, 144, 'Bruschetta', 'Appetizer', 2, 40.00, 80.00, '2024-08-15 06:20:00'),
(45, 39, 145, 'Baked Ziti', 'Food', 1, 70.00, 70.00, '2024-09-01 04:00:00'),
(46, 40, 146, 'Roast Chicken', 'Food', 2, 120.00, 240.00, '2024-09-05 02:00:00'),
(47, 41, 147, 'Beef Tacos', 'Food', 3, 100.00, 300.00, '2024-09-10 03:30:00'),
(48, 42, 148, 'Chicken Wings', 'Appetizer', 5, 40.00, 200.00, '2024-09-15 06:00:00'),
(49, 43, 149, 'Spinach Dip', 'Appetizer', 1, 30.00, 30.00, '2024-09-20 01:00:00'),
(50, 44, 150, 'Vegetable Platter', 'Appetizer', 2, 50.00, 100.00, '2024-09-25 02:30:00'),
(51, 45, 151, 'Pineapple Cake', 'Dessert', 1, 35.00, 35.00, '2024-09-30 04:00:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_employees`
--
ALTER TABLE `tbl_employees`
  ADD PRIMARY KEY (`employee_id`);

--
-- Indexes for table `tbl_products`
--
ALTER TABLE `tbl_products`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `tbl_sales`
--
ALTER TABLE `tbl_sales`
  ADD PRIMARY KEY (`sale_id`);

--
-- Indexes for table `tbl_sales_items`
--
ALTER TABLE `tbl_sales_items`
  ADD PRIMARY KEY (`sale_item_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_employees`
--
ALTER TABLE `tbl_employees`
  MODIFY `employee_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `tbl_products`
--
ALTER TABLE `tbl_products`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=85;

--
-- AUTO_INCREMENT for table `tbl_sales`
--
ALTER TABLE `tbl_sales`
  MODIFY `sale_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT for table `tbl_sales_items`
--
ALTER TABLE `tbl_sales_items`
  MODIFY `sale_item_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
