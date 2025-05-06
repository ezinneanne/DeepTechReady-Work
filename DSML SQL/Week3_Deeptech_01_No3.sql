SELECT Customer_ID, Name, State, Income
FROM Customers
WHERE State = 'Lagos'

UNION

SELECT Customer_ID, Name, State, Income
FROM Customers
WHERE State = 'Edo';
