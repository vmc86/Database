USE [Sklad]

SELECT * FROM Products; --отобразить все продукты

UPDATE --обновить
Products -- в таблице
SET Title = N'BALTIKA-999' --что сделать с полями
WHERE Id = 1;

UPDATE Products SET Title = N'Пиво';

UPDATE Products SET Title = N'BALTIKA-999'
WHERE Sku = '123000001';

UPDATE Products SET Title = N'LVIVSKE'
WHERE Sku = '123000002';

UPDATE Sale SET Quantity = Quantity + 1
WHERE ProductId = '2';

UPDATE Sale SET Quantity = 3
WHERE Quantity > 30;

UPDATE Sale SET PriceSale = 30.12
WHERE PriceSale > 100.01;

SELECT * FROM Products;

SELECT * FROM Sale;