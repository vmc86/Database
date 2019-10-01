USE [Sklad]

SELECT * FROM Products; --отобразить все продукты

UPDATE --обновить
Products -- в таблице
SET Title = N'BALTIKA-999' --что сделать с полями
WHERE ID = 1;


UPDATE Products SET Title = N'Пиво';

UPDATE Products SET Title = N'BALTIKA-999'
WHERE Sku = '123000001';
UPDATE Products SET Title = N'LVIVSKE'
WHERE Sku = '123000002';
/*
UPDATE Products SET Quantity = Quantity + 1
WHERE Sku = '123000002';

UPDATE Products SET Quantity = 3
WHERE Quantity = 0;
*/