SELECT 
    Transaction_ID,
    Customer_ID,
    Amount,
    Transaction_Type,
    Date,
    
    RANK() OVER (ORDER BY Amount DESC) AS Amount_Rank,
    
    LAG(Amount) OVER (ORDER BY Date) AS Prev_Amount,
    LEAD(Amount) OVER (ORDER BY Date) AS Next_Amount

FROM Transactions
ORDER BY Date;
