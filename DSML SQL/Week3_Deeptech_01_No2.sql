SELECT 
    c.Customer_ID,
    c.Name,
    c.State,
    c.Income,
    t.Total_Amount
FROM Customers c
JOIN (
    SELECT 
        Customer_ID,
        SUM(Amount) AS Total_Amount
    FROM Transactions
    GROUP BY Customer_ID
) t ON c.Customer_ID = t.Customer_ID
WHERE t.Total_Amount = (
    SELECT 
        MAX(Total)
    FROM (
        SELECT 
            Customer_ID,
            SUM(Amount) AS Total
        FROM Transactions
        GROUP BY Customer_ID
    ) sub
);
