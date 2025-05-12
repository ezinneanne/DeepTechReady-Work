CREATE VIEW customer_total_purchases AS
SELECT 
    c.customer_id,
    c.name,
    SUM(s.total_amount) AS total_spent
FROM 
    dbo.Customer c
JOIN 
    dbo.Sales s ON c.customer_id = s.customer_id
GROUP BY 
    c.customer_id, c.name
HAVING 
    SUM(s.total_amount) > 300000;
