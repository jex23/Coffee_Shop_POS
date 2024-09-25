
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
    employee_ImagePath VARCHAR(255) NOT NULL
);

-- Create tbl_sales (to store each sale's high-level info)
CREATE TABLE IF NOT EXISTS tbl_sales (
    sale_id INT AUTO_INCREMENT PRIMARY KEY,
    sale_date TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,  -- Store sale date/time
    employee_id INT,  -- Foreign key to the employee who handled the sale
    subtotal DECIMAL(10, 2) NOT NULL,  -- Subtotal of the sale
    vat DECIMAL(10, 2) NOT NULL,  -- VAT amount
    total DECIMAL(10, 2) NOT NULL,  -- Total amount
    FOREIGN KEY (employee_id) REFERENCES tbl_employees(employee_id)  -- Link to employees table
);

-- Create tbl_sales_items (store the products sold in each sale)
CREATE TABLE IF NOT EXISTS tbl_sales_items (
    sale_item_id INT AUTO_INCREMENT PRIMARY KEY,
    sale_id INT,  -- Foreign key to link each sale
    product_id INT,  -- Foreign key to reference each product sold
    quantity INT NOT NULL,  -- Quantity of the product sold
    price DECIMAL(10, 2) NOT NULL,  -- Price per item sold (at the time of sale)
    sale_item_time TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP, -- Time when the item was added to the sale
    FOREIGN KEY (sale_id) REFERENCES tbl_sales(sale_id) ON DELETE CASCADE,  -- Link to sales, cascade deletes
    FOREIGN KEY (product_id) REFERENCES tbl_products(product_id)  -- Link to products table
);

