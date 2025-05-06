USE [DeeptechCustDB]

/*IF NOT EXISTS(SELECT 1 FROM sys.tables WHERE name = 'Transactions')
BEGIN
CREATE TABLE dbo.Transactions
(
  [Transaction_ID] [varchar](10) PRIMARY KEY NOT NULL,
  [Customer_ID] [int] NOT NULL,
  [Amount] [int] NOT NULL,
  [Transaction_Type] [varchar](10) NOT NULL,
  [Date] [DATE] NOT NULL,
  CONSTRAINT fk_customer FOREIGN KEY (Customer_ID) REFERENCES dbo.Customers,
);
END*/

INSERT INTO dbo.Transactions 
(
    [Transaction_ID], [Customer_ID], [Amount], [Transaction_Type], [Date]
)
VALUES 
('T001', 3021, 8000, 'Credit', CAST('2024-12-01' AS DATE)),
('T002', 3028, 1000, 'Debit', CAST('2024-12-02' AS DATE)),
('T003', 3078, 4000, 'Credit', CAST('2024-12-03' AS DATE)),
('T004', 3067, 1500, 'Credit', CAST('2024-12-03' AS DATE)),
('T005', 3021, 15000, 'Debit', CAST('2024-12-04' AS DATE)),
('T006', 3097, 30000, 'Debit', CAST('2024-12-05' AS DATE)),
('T007', 3028, 90000, 'Credit', CAST('2024-12-05' AS DATE)),
('T008', 3056, 7600, 'Debit', CAST('2024-12-06' AS DATE)),
('T009', 3043, 5800, 'Credit', CAST('2024-12-06' AS DATE));
GO