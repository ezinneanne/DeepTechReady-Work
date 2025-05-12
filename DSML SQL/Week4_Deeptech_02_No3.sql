-- Create Materialized View (using indexed view in SQL Server)
/*
CREATE VIEW dbo.total_sales_per_month
WITH SCHEMABINDING /* materialized view version in sql server*/
AS
SELECT 
    YEAR(s.sale_date) AS sale_year,
    MONTH(s.sale_date) AS sale_month,
    COUNT_BIG(*) AS transaction_count,
    SUM(ISNULL(s.total_amount, 0)) AS total_sales
FROM dbo.Sales AS s
GROUP BY YEAR(s.sale_date), MONTH(s.sale_date);*/
GO


--creating a unique index cluster to materialize it--
CREATE UNIQUE CLUSTERED INDEX idx_total_sales_per_month
ON dbo.total_sales_per_month (sale_year, sale_month);


