/*CREATE PROCEDURE update_product_price
AS
BEGIN
    -- Updating the price of Phones by 10%
    UPDATE Products
    SET price = price * 1.10
    WHERE product_name = 'Phone';
END;*/
GO

EXEC update_product_price;
Select * from dbo.Products