-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 01, 2024 at 07:53 AM
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
(1, 'admin', 'password', 'Admin User', 'Administrator', '2024-10-01 05:00:48', '2024-10-01 05:39:24', 'path/to/image.png'),
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
(1, '2024-01-05 02:00:00', 1, 'Admin User', 200.00, 20.00, 180.00, 20.00, 200.00),
(2, '2024-01-10 03:30:00', 3, 'Jenalyn Mirafuentes', 110.00, 10.00, 100.00, 10.00, 110.00),
(3, '2024-01-15 06:00:00', 4, 'Prince Laranjo Olaguera II', 310.00, 30.00, 300.00, 10.00, 310.00),
(4, '2024-01-20 02:15:00', 5, 'John Bert Onrubia', 220.00, 22.00, 210.00, 10.00, 220.00),
(5, '2024-01-25 04:30:00', 6, 'Sean Francis Ryan Castillo', 440.00, 40.00, 420.00, 20.00, 440.00),
(6, '2024-02-01 01:30:00', 7, 'Kian Carlo Apurado', 310.00, 30.00, 300.00, 10.00, 310.00),
(7, '2024-02-05 07:00:00', 8, 'James Galos', 240.00, 24.00, 240.00, 0.00, 240.00),
(8, '2024-02-10 05:30:00', 1, 'Admin User', 90.00, 10.00, 80.00, 10.00, 90.00),
(9, '2024-02-15 08:00:00', 3, 'Jenalyn Mirafuentes', 420.00, 40.00, 400.00, 20.00, 420.00),
(10, '2024-02-20 02:15:00', 4, 'Prince Laranjo Olaguera II', 440.00, 40.00, 420.00, 20.00, 440.00),
(11, '2024-02-25 04:00:00', 5, 'John Bert Onrubia', 220.00, 22.00, 210.00, 10.00, 220.00),
(12, '2024-03-01 02:30:00', 6, 'Sean Francis Ryan Castillo', 255.00, 25.00, 240.00, 15.00, 255.00),
(13, '2024-03-05 06:15:00', 7, 'Kian Carlo Apurado', 350.00, 35.00, 340.00, 10.00, 350.00),
(14, '2024-03-10 03:00:00', 8, 'James Galos', 160.00, 16.00, 160.00, 0.00, 160.00),
(15, '2024-03-15 04:45:00', 1, 'Admin User', 300.00, 30.00, 300.00, 0.00, 300.00),
(16, '2024-03-20 05:30:00', 3, 'Jenalyn Mirafuentes', 220.00, 22.00, 210.00, 10.00, 220.00),
(17, '2024-03-25 07:00:00', 4, 'Prince Laranjo Olaguera II', 240.00, 24.00, 240.00, 0.00, 240.00),
(18, '2024-04-01 03:15:00', 5, 'John Bert Onrubia', 150.00, 15.00, 150.00, 0.00, 150.00),
(19, '2024-04-05 02:30:00', 6, 'Sean Francis Ryan Castillo', 90.00, 10.00, 80.00, 10.00, 90.00),
(20, '2024-04-10 05:00:00', 7, 'Kian Carlo Apurado', 340.00, 34.00, 330.00, 10.00, 340.00),
(21, '2024-04-15 04:00:00', 8, 'James Galos', 150.00, 15.00, 150.00, 0.00, 150.00),
(22, '2024-04-20 06:45:00', 1, 'Admin User', 400.00, 40.00, 380.00, 20.00, 400.00),
(23, '2024-04-25 07:30:00', 3, 'Jenalyn Mirafuentes', 270.00, 27.00, 260.00, 10.00, 270.00),
(24, '2024-05-01 03:00:00', 4, 'Prince Laranjo Olaguera II', 300.00, 30.00, 290.00, 10.00, 300.00),
(25, '2024-05-05 02:15:00', 5, 'John Bert Onrubia', 150.00, 15.00, 150.00, 0.00, 150.00),
(26, '2024-05-10 04:30:00', 6, 'Sean Francis Ryan Castillo', 150.00, 15.00, 150.00, 0.00, 150.00),
(27, '2024-05-15 06:00:00', 7, 'Kian Carlo Apurado', 500.00, 50.00, 480.00, 20.00, 500.00),
(28, '2024-05-20 08:00:00', 8, 'James Galos', 200.00, 20.00, 190.00, 10.00, 200.00),
(29, '2024-05-25 05:45:00', 1, 'Admin User', 360.00, 36.00, 340.00, 20.00, 360.00),
(30, '2024-06-01 02:00:00', 3, 'Jenalyn Mirafuentes', 220.00, 22.00, 210.00, 10.00, 220.00),
(31, '2024-06-05 06:30:00', 4, 'Prince Laranjo Olaguera II', 300.00, 30.00, 290.00, 10.00, 300.00),
(32, '2024-06-10 05:00:00', 5, 'John Bert Onrubia', 110.00, 10.00, 100.00, 10.00, 110.00),
(33, '2024-06-15 04:00:00', 6, 'Sean Francis Ryan Castillo', 100.00, 10.00, 90.00, 10.00, 100.00),
(34, '2024-06-20 07:45:00', 7, 'Kian Carlo Apurado', 370.00, 37.00, 360.00, 10.00, 370.00),
(35, '2024-06-25 02:15:00', 8, 'James Galos', 150.00, 15.00, 150.00, 0.00, 150.00),
(36, '2024-06-30 03:30:00', 1, 'Admin User', 250.00, 25.00, 240.00, 10.00, 250.00),
(37, '2024-07-05 06:00:00', 3, 'Jenalyn Mirafuentes', 240.00, 24.00, 240.00, 0.00, 240.00),
(38, '2024-07-10 04:30:00', 4, 'Prince Laranjo Olaguera II', 160.00, 16.00, 160.00, 0.00, 160.00),
(39, '2024-07-15 05:30:00', 5, 'John Bert Onrubia', 450.00, 45.00, 440.00, 10.00, 450.00),
(40, '2024-07-20 02:15:00', 6, 'Sean Francis Ryan Castillo', 230.00, 23.00, 220.00, 10.00, 230.00),
(41, '2024-07-25 07:00:00', 7, 'Kian Carlo Apurado', 350.00, 35.00, 340.00, 10.00, 350.00),
(42, '2024-08-01 04:00:00', 8, 'James Galos', 400.00, 40.00, 380.00, 20.00, 400.00),
(43, '2024-08-05 06:00:00', 1, 'Admin User', 300.00, 30.00, 300.00, 0.00, 300.00),
(44, '2024-08-10 03:30:00', 3, 'Jenalyn Mirafuentes', 250.00, 25.00, 240.00, 10.00, 250.00),
(45, '2024-08-15 04:00:00', 4, 'Prince Laranjo Olaguera II', 200.00, 20.00, 190.00, 10.00, 200.00),
(46, '2024-08-20 07:00:00', 5, 'John Bert Onrubia', 170.00, 17.00, 160.00, 10.00, 170.00),
(47, '2024-08-25 02:15:00', 6, 'Sean Francis Ryan Castillo', 330.00, 33.00, 320.00, 10.00, 330.00),
(48, '2024-09-01 03:00:00', 7, 'Kian Carlo Apurado', 500.00, 50.00, 480.00, 20.00, 500.00),
(49, '2024-09-05 04:30:00', 8, 'James Galos', 600.00, 60.00, 580.00, 20.00, 600.00),
(50, '2024-09-10 06:00:00', 1, 'Admin User', 400.00, 40.00, 380.00, 20.00, 400.00);

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
(1, 101, 1, 'French Pressed Brewed Coffee', 'Coffee', 2, 90.00, 180.00, '2024-01-05 02:00:00'),
(2, 102, 2, 'Caffe Latte', 'Coffee', 1, 90.00, 90.00, '2024-01-10 03:30:00'),
(3, 103, 3, 'Caffe Mocha', 'Coffee', 3, 100.00, 300.00, '2024-01-15 06:00:00'),
(4, 104, 4, 'Caramel Latte', 'Coffee', 2, 105.00, 210.00, '2024-01-20 02:15:00'),
(5, 105, 5, 'Vanilla Latte', 'Coffee', 4, 105.00, 420.00, '2024-01-25 04:30:00'),
(6, 106, 6, 'Caramel Macchiato', 'Coffee', 3, 105.00, 315.00, '2024-02-01 01:30:00'),
(7, 107, 7, 'Dark Mocha', 'Coffee', 2, 120.00, 240.00, '2024-02-05 07:00:00'),
(8, 108, 8, 'Hazelnut Coffee', 'Coffee', 1, 95.00, 95.00, '2024-02-10 05:30:00'),
(9, 109, 9, 'Caramel Drizzle Frappe', 'Coffee', 3, 140.00, 420.00, '2024-02-15 08:00:00'),
(10, 110, 10, 'Iced Americano', 'Coffee', 4, 110.00, 440.00, '2024-02-20 02:15:00'),
(11, 111, 11, 'Almond Praline', 'Coffee', 2, 110.00, 220.00, '2024-02-25 04:00:00'),
(12, 112, 12, 'Mango Tea', 'Tea', 3, 85.00, 255.00, '2024-03-01 02:30:00'),
(13, 113, 13, 'Jasmine Tea', 'Tea', 5, 70.00, 350.00, '2024-03-05 06:15:00'),
(14, 114, 14, 'Milk Tea', 'Tea', 2, 80.00, 160.00, '2024-03-10 03:00:00'),
(15, 115, 15, 'Okinawa Tea', 'Tea', 3, 100.00, 300.00, '2024-03-15 04:45:00'),
(16, 116, 16, 'Red Velvet Tea', 'Tea', 1, 100.00, 100.00, '2024-03-20 05:30:00'),
(17, 117, 17, 'Earl Grey Tea', 'Tea', 4, 90.00, 360.00, '2024-03-25 07:00:00'),
(18, 118, 18, 'Milk Chocolate', 'Snacks', 6, 25.00, 150.00, '2024-04-01 03:15:00'),
(19, 119, 19, 'Oatmeal Cookie', 'Snacks', 3, 30.00, 90.00, '2024-04-05 02:30:00'),
(20, 120, 20, 'Delisioso Pan Tostado', 'Snacks', 4, 85.00, 340.00, '2024-04-10 05:00:00'),
(21, 121, 21, 'Chocolate Cake', 'Snacks', 1, 150.00, 150.00, '2024-04-15 04:00:00'),
(22, 122, 22, 'Cheese Burger', 'Snacks', 2, 200.00, 400.00, '2024-04-20 06:45:00'),
(23, 123, 23, 'Pasta Salad', 'Snacks', 3, 90.00, 270.00, '2024-04-25 07:30:00'),
(24, 124, 24, 'Tuna Sandwich', 'Snacks', 3, 100.00, 300.00, '2024-05-01 03:00:00'),
(25, 125, 25, 'Ice Cream Cake', 'Snacks', 1, 150.00, 150.00, '2024-05-05 02:15:00'),
(26, 126, 26, 'Chocolate Cookie', 'Snacks', 5, 30.00, 150.00, '2024-05-10 04:30:00'),
(27, 127, 27, 'Scones', 'Snacks', 4, 50.00, 200.00, '2024-05-15 06:00:00'),
(28, 128, 28, 'Chicken Wrap', 'Snacks', 2, 150.00, 300.00, '2024-05-20 08:00:00'),
(29, 129, 29, 'Fruit Tart', 'Snacks', 3, 120.00, 360.00, '2024-05-25 05:45:00'),
(30, 130, 30, 'Praline Mocha', 'Coffee', 2, 110.00, 220.00, '2024-06-01 02:00:00'),
(31, 131, 31, 'Strawberry Frappe', 'Coffee', 1, 140.00, 140.00, '2024-06-05 06:30:00'),
(32, 132, 32, 'Cinnamon Roll', 'Snacks', 2, 45.00, 90.00, '2024-06-10 05:00:00'),
(33, 133, 33, 'Peach Iced Tea', 'Tea', 3, 80.00, 240.00, '2024-06-15 04:00:00'),
(34, 134, 34, 'Mango Frappe', 'Coffee', 2, 130.00, 260.00, '2024-06-20 07:45:00'),
(35, 135, 35, 'Choco Lava Cake', 'Snacks', 1, 150.00, 150.00, '2024-06-25 02:15:00'),
(36, 136, 36, 'Peanut Butter Cookies', 'Snacks', 3, 35.00, 105.00, '2024-06-30 03:30:00'),
(37, 137, 37, 'Raspberry Cheesecake', 'Snacks', 2, 120.00, 240.00, '2024-07-05 06:00:00'),
(38, 138, 38, 'Blackberry Iced Tea', 'Tea', 1, 90.00, 90.00, '2024-07-10 04:30:00'),
(39, 139, 39, 'Mocha Frappe', 'Coffee', 3, 150.00, 450.00, '2024-07-15 02:30:00'),
(40, 140, 40, 'Tiramisu', 'Snacks', 1, 150.00, 150.00, '2024-07-20 03:45:00'),
(41, 141, 41, 'Green Tea', 'Tea', 2, 75.00, 150.00, '2024-08-01 06:00:00'),
(42, 142, 42, 'Berry Smoothie', 'Snacks', 2, 130.00, 260.00, '2024-08-05 08:15:00'),
(43, 143, 43, 'Honey Lemonade', 'Drinks', 3, 70.00, 210.00, '2024-08-10 07:30:00'),
(44, 144, 44, 'Ginger Ale', 'Drinks', 4, 50.00, 200.00, '2024-08-15 02:00:00'),
(45, 145, 45, 'Fresh Lemonade', 'Drinks', 2, 60.00, 120.00, '2024-08-20 04:30:00'),
(46, 146, 46, 'Peach Lemonade', 'Drinks', 3, 70.00, 210.00, '2024-08-25 06:00:00'),
(47, 147, 47, 'Tropical Smoothie', 'Snacks', 1, 140.00, 140.00, '2024-09-01 03:15:00'),
(48, 148, 48, 'Coconut Cake', 'Snacks', 1, 150.00, 150.00, '2024-09-05 04:00:00'),
(49, 149, 49, 'Carrot Cake', 'Snacks', 2, 120.00, 240.00, '2024-09-10 05:30:00'),
(50, 150, 50, 'Pumpkin Spice Latte', 'Coffee', 3, 100.00, 300.00, '2024-09-15 02:30:00');

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
