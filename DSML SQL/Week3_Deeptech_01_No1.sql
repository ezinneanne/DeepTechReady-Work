SELECT 
    c.Customer_ID,
    c.Name,
    c.State,
    c.Income,
    t.Transaction_ID,
    t.Amount,
    t.Transaction_Type,
    t.Date
FROM Customers c
FULL OUTER JOIN Transactions t
    ON c.Customer_ID = t.Customer_ID
ORDER BY c.Customer_ID;
