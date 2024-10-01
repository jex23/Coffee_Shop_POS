-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 01, 2024 at 03:11 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

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
  `employee_passsword` varchar(255) NOT NULL,
  `employee_name` varchar(255) NOT NULL,
  `employee_role` varchar(255) NOT NULL,
  `employee_date_of_employment` timestamp NOT NULL DEFAULT current_timestamp(),
  `last_Login` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `employee_ImagePath` varchar(255) NOT NULL,
  `employee_image_path` varchar(255) NOT NULL,
  `employee_password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_employees`
--

INSERT INTO `tbl_employees` (`employee_id`, `employee_username`, `employee_passsword`, `employee_name`, `employee_role`, `employee_date_of_employment`, `last_Login`, `employee_ImagePath`, `employee_image_path`, `employee_password`) VALUES
(1, 'admin', 'password', 'Admin User', 'Administrator', '2024-09-28 02:19:21', '2024-10-01 01:01:33', 'path/to/image.png', '', ''),
(2, 'admin', 'password', 'Admin User', 'Administrator', '2024-09-25 04:49:04', '2024-10-01 01:01:33', 'path/to/image.png', '', ''),
(3, 'jen23', 'cashier123', 'Jenalyn Mirafuentes', 'Cashier', '2024-09-26 18:31:47', '2024-09-28 10:18:14', 'src/Employees/Jen.jpg', '', ''),
(4, 'prince23', 'chef123', 'Prince Laranjo Olaguera II', 'Chef', '2024-09-26 18:31:47', '2024-09-28 07:10:47', 'src/Employees/Prince.jpg', '', ''),
(5, 'berp23', 'asstchef123', 'John Bert Onrubia', 'Assistant Chef', '2024-09-26 18:31:47', '2024-09-28 02:22:38', 'src/Employees/Berp.jpg', '', ''),
(6, 'sean23', 'waiter123', 'Sean Francis Ryan Castillo', 'Waiter', '2024-09-26 18:31:47', '2024-09-28 02:22:38', 'src/Employees/Sean.jpg', '', ''),
(7, 'kian23', 'waiter123', 'Kian Carlo Apurado', 'Waiter', '2024-09-26 18:31:47', '2024-09-28 02:22:38', 'src/Employees/Kian.jpg', '', ''),
(8, 'jex23', 'manager123', 'James Galos', 'Owner/Manager', '2024-09-26 18:31:47', '2024-09-30 13:11:15', 'src/Employees/James.jpg', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_products`
--

CREATE TABLE `tbl_products` (
  `product_id` int(11) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `product_category` varchar(255) NOT NULL,
  `product_price` double NOT NULL,
  `product_ImagePath` varchar(255) NOT NULL,
  `product_image_path` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_products`
--

INSERT INTO `tbl_products` (`product_id`, `product_name`, `product_category`, `product_price`, `product_ImagePath`, `product_image_path`) VALUES
(2, 'French Pressed Brewed Coffee', 'Coffee', 90, 'src\\products\\Brewed toon.jpg', ''),
(3, 'Caffe Latte', 'Coffee', 90, 'src\\products\\Caffe Latte hot.jpg', ''),
(4, 'Cappuccino', 'Coffee', 90, 'src\\products\\cappuccino hot.jpg', ''),
(5, 'Caffe Mocha', 'Coffee', 100, 'src\\products\\ coffee mocha hot.jpg', ''),
(6, 'Caramel Macchiato', 'Coffee', 105, 'src\\products\\caramel Macchiato hot.jpg', ''),
(7, 'Caramel Latte', 'Coffee', 105, 'src\\products\\caramel latte hot.jpg', ''),
(8, 'Almond Latte', 'Coffee', 105, 'src\\products\\Almond Latte Hot.jpg', ''),
(9, 'Vanilla Latte', 'Coffee', 105, 'src\\products\\Vanilla Latte Hot.jpg', ''),
(10, 'Praline Mocha', 'Coffee', 110, 'src\\products\\Praline Mocha Hot.jpg', ''),
(11, 'Almond Praline', 'Coffee', 110, 'src\\products\\Almond Praline Hot.jpg', ''),
(12, 'Dark Mocha', 'Coffee', 120, 'src\\products\\Dark Mocha Iced.jpg', ''),
(13, 'White Mocha', 'Coffee', 120, 'src\\products\\Vanilla Latte Hot.jpg', ''),
(15, 'Coffee Jelly', 'Coffee', 130, 'src\\products\\Coffee Jelly iced.jpg', ''),
(16, 'Iced Caffe Mocha', 'Coffee', 130, 'src\\products\\Caffe Mocha Iced.jpg', ''),
(17, 'Iced Caramel', 'Coffee', 130, 'src\\products\\caramel Iced.jpg', ''),
(18, 'Iced Almond Latte', 'Coffee', 130, 'src\\products\\Almond Praline Iced.jpg', ''),
(19, 'Iced Caramel Macchiato', 'Coffee', 135, 'src\\products\\Caramel Macchiato Iced.jpg', ''),
(20, 'Iced Creamy Vanilla', 'Coffee', 140, 'src\\products\\Creamy Vanilla.png', ''),
(21, 'Iced Praline Mocha', 'Coffee', 145, 'src\\products\\Almond Praline Hot.jpg', ''),
(22, 'Iced Almond Praline', 'Coffee', 145, 'src\\products\\Praline Mocha Iced.jpg', ''),
(23, 'Iced Dark Mocha', 'Coffee', 145, 'src\\products\\Dark Mocha Iced.jpg', ''),
(24, 'Iced White Mocha', 'Coffee', 145, 'src\\products\\White Mocha Iced.jpg', ''),
(25, 'Mocha Frappe', 'Coffee', 140, 'src\\products\\Mocha Frappes.jpg', ''),
(26, 'Coffee Jelly Frappe', 'Coffee', 140, 'src\\products\\Coffee Jelly Frappes.jpg', ''),
(27, 'Caramel Frappe', 'Coffee', 140, 'src\\products\\Caramel Frappes.jpg', ''),
(28, 'Creamy Vanilla Frappe', 'Coffee', 150, 'src\\products\\Creamy Vanilla Frappes.jpg', ''),
(29, 'Java Chips Frappe', 'Coffee', 150, 'src\\products\\Java Chips Frappes.jpg', ''),
(30, 'Java Peppermint Frappe', 'Coffee', 150, 'src\\products\\Java Peppermint Frappes.jpg', ''),
(31, 'Praline Mocha Frappe', 'Coffee', 155, 'src\\products\\Praline Mocha Frappes.jpg', ''),
(32, 'Almond Praline Frappe', 'Coffee', 155, 'src\\products\\Almond Praline Frappes.jpg', ''),
(33, 'Dark Mocha Frappe', 'Coffee', 165, 'src\\products\\Dark Mocha Frappes.jpg', ''),
(34, 'White Mocha Frappe', 'Coffee', 165, 'src\\products\\White Mocha Frappes.jpg', ''),
(35, 'Chocolate Milk Frappe', 'Coffee', 140, 'src\\products\\Chocolate Milk Frappes.jpg', ''),
(36, 'Milky Caramel Frappe', 'Coffee', 140, 'src\\products\\Caramel Frappes.jpg', ''),
(37, 'Milky Creamy Vanilla Frappe', 'Coffee', 150, 'src\\products\\Creamy Vanilla Frappes.jpg', ''),
(38, 'Cookies N Cream Frappe', 'Coffee', 155, 'src\\products\\Cookies N Cream Milk Frappes.jpg', ''),
(39, 'Dark Chocolate with Cheese Frappe', 'Coffee', 165, 'src\\products\\Dark Chocolate Milk Frappes.jpg', ''),
(40, 'White Chocolate Frappe', 'Coffee', 165, 'src\\products\\White Chocolate Milk Frappes.jpg', ''),
(41, 'Creamy Mango Tea', 'Tea', 125, 'src\\products\\Creamy Mango Fruit Smoothies.jpg', ''),
(42, 'Milky Strawberry Tea', 'Tea', 150, 'src\\products\\Milky Strawberry Fruit Smoothies.jpg', ''),
(43, 'Melon with Collagen Tea', 'Tea', 150, 'src\\products\\Melon with Collagen Fruit Smoothies.jpg', ''),
(44, 'Assam Tea', 'Tea', 90, 'src\\products\\Assam Milk Tea.jpg', ''),
(45, 'Coffee Jelly Tea', 'Tea', 95, 'src\\products\\Coffee Jelly Milk Tea.jpg', ''),
(46, 'Chocolate Tea', 'Tea', 95, 'src\\products\\Chocolate Milk Tea.jpg', ''),
(47, 'Brown Sugar Tea', 'Tea', 95, 'src\\products\\Brown Sugar Tea.jpg', ''),
(48, 'Oreo Cookies Tea', 'Tea', 95, 'src\\products\\Oreo Cookies.jpg', ''),
(49, 'Wintermelon Tea', 'Tea', 100, 'src\\products\\Wintermelon Milk TEa.jpg', ''),
(50, 'Okinawa Tea', 'Tea', 100, 'src\\products\\Okinawa Milk Tea.jpg', ''),
(51, 'Strawberry Cream Tea', 'Tea', 100, 'src\\products\\Strawberry Cream Milk Tea.jpg', ''),
(52, 'Matcha Tea', 'Tea', 110, 'src\\products\\Matcha Milk TEa.jpg', ''),
(53, 'Red Velvet Tea', 'Tea', 100, 'src\\products\\Red Velvet Milk Tea.jpg', ''),
(54, 'Cheesecake Tea', 'Tea', 100, 'src\\products\\Cheesecake Milk Tea.jpg', ''),
(55, 'Dark Choco Tea', 'Tea', 90, 'src\\products\\Dark Choco Milk Tea.jpg', ''),
(56, 'Taro Tea', 'Tea', 90, 'src\\products\\Taro Milk TEa.jpg', ''),
(57, 'Choco Kisses Tea', 'Tea', 90, 'src\\products\\Choco Kisses Milk TEa.jpg', ''),
(58, 'Salted Caramel Tea', 'Tea', 100, 'src\\products\\Brown Sugar Milk Tea.jpg', ''),
(59, 'Double Dutch Tea', 'Tea', 100, 'src\\products\\Double Dutch Milk Tea.jpg', ''),
(60, 'Mint Tea', 'Tea', 70, 'src\\products\\Mint Hot Tea.jpg', ''),
(61, 'Green Tea', 'Tea', 70, 'src\\products\\Assam Tea Latte.jpg', ''),
(62, 'Strawberry Tea Latte', 'Tea', 70, 'src\\products\\Strawberry Tea Latte.jpg', ''),
(63, 'Earl Grey Tea', 'Tea', 70, 'src\\products\\Earl Grey Hot Tea.jpg', ''),
(64, 'Raspberry Tea', 'Tea', 130, 'src\\products\\Raspberry Fruit Tea.jpg', ''),
(65, 'Assam Tea Latte', 'Tea', 90, 'src\\products\\Assam Tea Latte.jpg', ''),
(66, 'Okinawa Tea Latte', 'Tea', 100, 'src\\products\\Okinawa Tea Latte.jpg', ''),
(67, 'Matcha Tea Latte', 'Tea', 110, 'src\\products\\Matcha Tea Latte.jpg', ''),
(68, 'Oatmeal Cookie', 'Snacks', 25, 'src\\products\\Oatmeal Cookie.jpg', ''),
(69, 'Chocolate Cookie', 'Snacks', 30, 'src\\products\\Chocolate Cookie.jpg', ''),
(70, 'Delisioso Pan Tostado', 'Snacks', 85, 'src\\products\\Delisioso Pan Tostado.jpg', ''),
(71, 'Tuna Sandwich', 'Snacks', 100, 'src\\products\\Tuna Sandwich.jpg', ''),
(72, 'Beefy Nachos', 'Snacks', 115, 'src\\products\\Beefy Nachos.jpg', ''),
(73, 'Clubhouse Sandwich', 'Snacks', 125, 'src\\products\\Clubhouse Sandwich.jpg', ''),
(74, 'Ube Halaya', 'Snacks', 125, 'src\\products\\Ube Halaya.jpg', ''),
(75, 'Chocolate Cake', 'Snacks', 145, 'src\\products\\Chocolate Cake.jpg', ''),
(76, 'Cheesecake', 'Snacks', 150, 'src\\products\\Cheesecake.jpg', ''),
(77, 'Ice Cream Cake', 'Snacks', 150, 'src\\products\\Ice Cream Cake.jpg', ''),
(78, 'Birthday Cake', 'Snacks', 150, 'src\\products\\Birthday Cake.jpg', ''),
(79, 'Red Velvet Cake', 'Snacks', 150, 'src\\products\\Red Velvet Cake.jpg', ''),
(80, 'Chocolate Chip Cookies', 'Snacks', 150, 'src\\products\\Chocolate Chip Cookies.jpg', ''),
(81, 'Jelly Beans', 'Snacks', 150, 'src\\products\\Jelly Beans.jpg', ''),
(82, 'Cheese Bread', 'Snacks', 150, 'src\\products\\Cheese Bread.jpg', ''),
(83, 'Cupcakes', 'Snacks', 150, 'src\\products\\Cupcakes.jpg', ''),
(84, 'Bread Roll', 'Snacks', 150, 'src\\products\\Bread Roll.jpg', '');

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
(50, '2024-10-01 01:04:31', 1, 'Admin User', 10000.00, 5676.80, 3860.00, 463.20, 4323.20);

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
(5, 50, 2, 'French Pressed Brewed Coffee', 'Coffee', 5, 90.00, 450.00, '2024-10-01 01:04:31'),
(6, 50, 3, 'Caffe Latte', 'Coffee', 3, 90.00, 270.00, '2024-10-01 01:04:31'),
(7, 50, 4, 'Cappuccino', 'Coffee', 2, 90.00, 180.00, '2024-10-01 01:04:31'),
(8, 50, 41, 'Creamy Mango Tea', 'Tea', 4, 125.00, 500.00, '2024-10-01 01:04:31'),
(9, 50, 42, 'Milky Strawberry Tea', 'Tea', 4, 150.00, 600.00, '2024-10-01 01:04:31'),
(10, 50, 43, 'Melon with Collagen Tea', 'Tea', 7, 150.00, 1050.00, '2024-10-01 01:04:31'),
(11, 50, 46, 'Chocolate Tea', 'Tea', 2, 95.00, 190.00, '2024-10-01 01:04:31'),
(12, 50, 44, 'Assam Tea', 'Tea', 6, 90.00, 540.00, '2024-10-01 01:04:31'),
(13, 50, 68, 'Oatmeal Cookie', 'Snacks', 2, 25.00, 50.00, '2024-10-01 01:04:31'),
(14, 50, 69, 'Chocolate Cookie', 'Snacks', 1, 30.00, 30.00, '2024-10-01 01:04:31');

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
  MODIFY `employee_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tbl_products`
--
ALTER TABLE `tbl_products`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=85;

--
-- AUTO_INCREMENT for table `tbl_sales`
--
ALTER TABLE `tbl_sales`
  MODIFY `sale_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `tbl_sales_items`
--
ALTER TABLE `tbl_sales_items`
  MODIFY `sale_item_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
