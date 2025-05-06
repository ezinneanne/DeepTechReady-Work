-- 1. Create an index on the transaction_date column
CREATE INDEX idx_transaction_date
ON Transactions1 (transaction_date);
GO

-- 2. Aggregated transaction data per customer
SELECT 
    customer_id,
    COUNT(*) AS num_transactions,
    SUM(amount_spent) AS total_sales
FROM Transactions1
GROUP BY customer_id;
GO

-- 3. View the estimated execution plan (in SSMS: click "Display Estimated Execution Plan" or run this SET command)
SET SHOWPLAN_ALL ON;
GO

-- This will not execute the query but will return the execution plan
SELECT 
    customer_id,
    COUNT(*) AS num_transactions,
    SUM(amount_spent) AS total_sales
FROM Transactions1
GROUP BY customer_id;
GO

-- Turn the plan off afterward
SET SHOWPLAN_ALL OFF;
GO
