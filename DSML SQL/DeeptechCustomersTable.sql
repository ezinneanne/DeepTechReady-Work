USE [DeeptechCustDB]

/*IF NOT EXISTS(SELECT 1 FROM sys.tables WHERE name = 'Customers')
BEGIN
CREATE TABLE dbo.Customers
(
  [Customer_ID] [int] PRIMARY KEY NOT NULL,
  [Name] [varchar](100) NOT NULL,
  [State] [varchar](50) NOT NULL,
  [Income] [int] NOT NULL,
);
END*/

INSERT INTO dbo.Customers 
(
[Customer_ID], [Name], [State], [Income]
) VALUES
(3021, 'Kolawale Saidu', 'Lagos', 85000),
(3028, 'Ade Abu', 'Edo', 120000),
(3067, 'Imabong Udo', 'Akwa Ibom', 65000),
(3078, 'Diana Ross', 'Cross River', 95000),
(3097, 'Adullahi Usman', 'Yobe', 70000),
(3043, 'Jefferson Chris', 'Taraba', 51000),
(3056, 'Chidinma Ikena', 'Abia', 67000);
GO