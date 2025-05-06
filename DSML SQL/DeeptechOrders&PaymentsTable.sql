USE [DeeptechCustDB]

/*-- Create Orders table
IF NOT EXISTS(SELECT 1 FROM sys.tables WHERE name = 'Orders')
BEGIN
CREATE TABLE dbo.Orders (
    OrderID INT PRIMARY KEY,
    CustomerName VARCHAR(100),
    OrderDate DATE,
    Product VARCHAR(50),
    Quantity INT,
    Price DECIMAL(18, 2),
    State VARCHAR(50)
);
END*/

/*
IF NOT EXISTS(SELECT 1 FROM sys.tables WHERE name = 'Payments')
BEGIN
-- Create Payments table
CREATE TABLE dbo.Payments (
    PaymentID INT PRIMARY KEY,
    OrderID INT,
    PaymentDate DATE,
    PaymentAmount DECIMAL(18, 2),
    PaymentMethod VARCHAR(50),
    CONSTRAINT FK_Payments_Orders FOREIGN KEY (OrderID) REFERENCES dbo.Orders(OrderID)
);
END*/

/*
INSERT INTO dbo.Orders 
(
[OrderID], [CustomerName], [OrderDate], [Product], [Quantity], [Price], [State]
)
VALUES 
(1, 'Gabriel Aliyu', '2023-01-15', 'Laptop', 2, 350000, 'Sokoto'),
(2, 'Brown Abu', '2023-02-10', 'Phone', 5, 250000, 'Cross River'),
(3, 'Janet Ugo', '2023-03-20', 'Tablet', 3, 700000, 'Imo'),
(4, 'Abi Jude', '2023-01-20', 'Phone', 1, 150000, 'Kogi'),
(5, 'Garba Shehu', '2023-04-05', 'Laptop', 1, 500000, 'Borno');
GO
*/


INSERT INTO dbo.Payments 
(
[PaymentID], [OrderID], [PaymentDate], [PaymentAmount], [PaymentMethod]
)
VALUES 
(101, 1, '2023-01-16', 700000, 'Card'),
(102, 2, '2023-02-11', 1250000, 'Cash'),
(103, 3, '2023-03-21', 2100000, 'Bank Transfer'),
(104, 4, '2023-01-21', 150000, 'Card'),
(105, 5, '2023-04-06', 500000, 'Cash');
GO
