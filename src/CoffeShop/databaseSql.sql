
/**
 * Author:  James
 * Created: Sep 25, 2024
 */
-- Create Coffee_Shop database if it doesn't exist
CREATE DATABASE IF NOT EXISTS Coffee_Shop;

-- Use the Coffee_Shop database
USE Coffee_Shop;

-- Create tbl_products (to store product details)
CREATE TABLE IF NOT EXISTS tbl_products (
    product_id INT AUTO_INCREMENT PRIMARY KEY,
    product_name VARCHAR(255) NOT NULL, 
    product_category VARCHAR(255) NOT NULL, 
    product_price DECIMAL(10, 2) NOT NULL,  -- Use DECIMAL for price instead of VARCHAR
    product_ImagePath VARCHAR(255) NOT NULL
);

-- Create tbl_employees (store employee details)
CREATE TABLE IF NOT EXISTS tbl_employees (
    employee_id INT AUTO_INCREMENT PRIMARY KEY,
    employee_username VARCHAR(255) NOT NULL, 
    employee_passsword VARCHAR(255) NOT NULL,  
    employee_name VARCHAR(255) NOT NULL, 
    employee_role VARCHAR(255) NOT NULL,  
    employee_date_of_employment TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    last_Login TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    employee_ImagePath VARCHAR(255) NOT NULL
);

-- Create tbl_sales to record sales
CREATE TABLE IF NOT EXISTS tbl_sales (
    sale_id INT AUTO_INCREMENT PRIMARY KEY,
    sale_date TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,  -- Store sale date/time
    employee_id INT,  -- Reference to the employee (ideally, this should be a foreign key)
    employee_name VARCHAR(255) NOT NULL,  -- Store the name of the employee making the sale
    amount DECIMAL(10, 2) NOT NULL,  -- Amount paid by the customer
    change DECIMAL(10, 2) NOT NULL,  -- Change of the customer
    subtotal DECIMAL(10, 2) NOT NULL,  -- Subtotal of the sale
    vat DECIMAL(10, 2) NOT NULL,  -- VAT amount
    total DECIMAL(10, 2) NOT NULL   -- Total amount
);

-- Create tbl_sales_items to store the products sold in each sale
CREATE TABLE IF NOT EXISTS tbl_sales_items (
    sale_item_id INT AUTO_INCREMENT PRIMARY KEY,
    sale_id INT,  -- Link each sale (this could be a foreign key referencing tbl_sales)
    product_id INT,  -- Reference each product sold (this could be a foreign key referencing products table)
    quantity INT NOT NULL,  -- Quantity of the product sold
    price DECIMAL(10, 2) NOT NULL,  -- Price per item sold (at the time of sale)
    total_item_price DECIMAL(10, 2) NOT NULL, -- Total Price per item sold (at the time of sale)
    sale_item_time TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP -- Time when the item was added to the sale
);



--  Insert User sample
INSERT INTO tbl_employees (employee_username, employee_passsword, employee_name, employee_role, employee_ImagePath)
VALUES ('admin', 'password', 'Admin User', 'Administrator', 'path/to/image.png');
