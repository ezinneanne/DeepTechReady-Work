SELECT
    CASE 
        WHEN c.age < 40 THEN 'Below 40'
        ELSE '40 and Above'
    END AS Age_Group,
    
    SUM(t.amount_spent) AS Total_Amount_Spent

FROM Customers1 c
JOIN Transactions1 t ON c.customer_id = t.customer_id

GROUP BY 
    CASE 
        WHEN c.age < 40 THEN 'Below 40'
        ELSE '40 and Above'
    END;
