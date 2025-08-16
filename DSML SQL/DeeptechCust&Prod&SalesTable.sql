-- Switch to that database
USE DeeptechAssign2DB;
/*
-- Create Customer Table
CREATE TABLE Customer (
    customer_id INT PRIMARY KEY,
    name VARCHAR(100),
    location VARCHAR(100),
    age INT,
    gender VARCHAR(10)
);

-- Create Products Table
CREATE TABLE Products (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(100),
    category VARCHAR(50),
    price DECIMAL(12, 2)
);

-- Create Sales Table
CREATE TABLE Sales (
    sale_id INT PRIMARY KEY,
    customer_id INT,
    product_id INT,
    sale_date DATE,
    quantity INT,
    total_amount DECIMAL(12, 2),
    FOREIGN KEY (customer_id) REFERENCES Customer(customer_id),
    FOREIGN KEY (product_id) REFERENCES Products(product_id)
);*/

-- Insert Records into Customer Table
INSERT INTO Customer (customer_id, name, location, age, gender) VALUES
(1, 'John Doe', 'Lagos', 30, 'Male'),
(2, 'Jane Smith', 'Abuja', 28, 'Female'),
(3, 'Peter Adams', 'Port Harcourt', 40, 'Male'),
(4, 'Sarah Johnson', 'Kano', 35, 'Female');

-- Insert Records into Products Table
INSERT INTO Products (product_id, product_name, category, price) VALUES
(101, 'Laptop', 'Electronics', 350000.00),
(102, 'Phone', 'Electronics', 150000.00),
(103, 'Printer', 'Office', 85000.00);

-- Insert Records into Sales Table
INSERT INTO Sales (sale_id, customer_id, product_id, sale_date, quantity, total_amount) VALUES
(5001, 1, 101, '2024-01-10', 1, 350000.00),
(5002, 2, 102, '2024-02-15', 2, 300000.00),
(5003, 3, 103, '2024-03-20', 1, 85000.00),
(5004, 4, 101, '2024-03-25', 1, 350000.00);










