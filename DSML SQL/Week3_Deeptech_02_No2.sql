SELECT 
    State,
    Product,
    SUM(Quantity * Price) AS Total_Revenue
FROM Orders
GROUP BY GROUPING SETS (
    (State, Product),  -- regular grouping
    (State),           -- subtotal per state
    (Product),         -- subtotal per product
    ()                 -- grand total
)
ORDER BY State, Product;
