USE [DeeptechCustDB]
/*
IF NOT EXISTS(SELECT 1 FROM sys.tables WHERE name = 'Customers1')
BEGIN
-- Create Customers Table
CREATE TABLE Customers1 (
    customer_id INT PRIMARY KEY,
    name VARCHAR(100),
    loyalty_points INT,
    registration_date DATE,
    age INT
);
END


IF NOT EXISTS(SELECT 1 FROM sys.tables WHERE name = 'Transactions1')
BEGIN
-- Create Transactions Table
CREATE TABLE Transactions1 (
    transaction_id INT PRIMARY KEY,
    customer_id INT,
    amount_spent DECIMAL(10, 2),
    transaction_date DATE,
    FOREIGN KEY (customer_id) REFERENCES Customers1(customer_id)
);
END


IF NOT EXISTS(SELECT 1 FROM sys.tables WHERE name = 'Products')
BEGIN
-- Create Products Table
CREATE TABLE Products (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(100),
    price DECIMAL(10, 2),
    category VARCHAR(50)
);
END


-- Insert into Customers
INSERT INTO Customers1 (customer_id, name, loyalty_points, registration_date, age) VALUES
(101, 'Shehu Salihu', 150, '2019-05-15', 35),
(201, 'Job Timothy', 200, '2020-06-20', 42),
(305, 'Agnes Pam', 300, '2018-08-10', 29),
(405, 'Esther James', 120, '2022-01-05', 50),
(509, 'Larry Adams', 250, '2021-10-12', 32);


-- Insert into Transactions
INSERT INTO Transactions1 (transaction_id, customer_id, amount_spent, transaction_date) VALUES
(1, 101, 100.00, '2023-05-10'),
(2, 201, 200.00, '2023-05-11'),
(3, 305, 300.00, '2023-05-12'),
(4, 405, 400.00, '2023-05-13'),
(5, 509, 150.00, '2023-05-14'),
(6, 305, 500.00, '2023-05-15');

*/
-- Insert into Products
INSERT INTO Products (product_id, product_name, price, category) VALUES
(102, 'Laptop', 200000.00, 'Electronics'),
(201, 'Smartphone', 500000.00, 'Electronics'),
(203, 'Blender', 120000.00, 'Home Appliance'),
(104, 'Sofa', 450000.00, 'Furniture'),
(107, 'Desk Lamp', 350000.00, 'Furniture');




