WITH OrderTotals AS (
    SELECT 
        CustomerName,
        OrderID,
        Quantity * Price AS TotalAmount
    FROM Orders
)
SELECT 
    CustomerName,
    SUM(TotalAmount) AS TotalSpent
FROM OrderTotals
GROUP BY CustomerName
ORDER BY TotalSpent DESC;
