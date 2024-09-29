-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 27, 2024 at 04:32 AM
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
-- Database: `coffee_shop`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_employees`
--

-- CREATE TABLE `tbl_employees` (
--   `employee_id` int(11) NOT NULL,
--   `employee_username` varchar(50) NOT NULL,
--   `employee_passsword` varchar(50) NOT NULL,
--   `employee_name` varchar(50) NOT NULL,
--   `employee_role` varchar(50) NOT NULL,
--   `employee_date_of_employment` timestamp NOT NULL DEFAULT current_timestamp(),
--   `employee_ImagePath` varchar(50) NOT NULL
-- ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_employees`
--

INSERT INTO `tbl_employees` (`employee_id`, `employee_username`, `employee_passsword`, `employee_name`, `employee_role`, `employee_date_of_employment`, `employee_ImagePath`) VALUES
(1, 'admin', 'password', 'Admin User', 'Administrator', '2024-09-25 12:49:04', 'path/to/image.png'),
(2, 'jen23', 'cashier123', 'Jenalyn Mirafuentes', 'Cashier', '2024-09-27 02:31:47', 'src\\Employees\\Jen.jpg'),
(3, 'prince23', 'chef123', 'Prince Laranjo Olaguera II', 'Chef', '2024-09-27 02:31:47', 'src\\Employees\\Prince.jpg'),
(4, 'berp23', 'asstchef123', 'John Bert Onrubia', 'Assistant Chef', '2024-09-27 02:31:47', 'src\\Employees\\Berp.jpg'),
(5, 'sean23', 'waiter123', 'Sean Francis Ryan Castillo', 'Waiter', '2024-09-27 02:31:47', 'src\\Employees\\Sean.jpg'),
(6, 'kian23', 'waiter123', 'Kian Carlo Apurado', 'Waiter', '2024-09-27 02:31:47', 'src\\Employees\\Kian.jpg'),
(7, 'jex23', 'manager123', 'James Galos', 'Owner/Manager', '2024-09-27 02:31:47', 'src\\Employees\\James.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_employees`
--
ALTER TABLE `tbl_employees`
  ADD PRIMARY KEY (`employee_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_employees`
--
ALTER TABLE `tbl_employees`
  MODIFY `employee_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
