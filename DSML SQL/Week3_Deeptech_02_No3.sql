SELECT 
    OrderID,
    CustomerName,
    OrderDate,
    YEAR(OrderDate) AS OrderYear,
    MONTH(OrderDate) AS OrderMonth
FROM dbo.Orders;
