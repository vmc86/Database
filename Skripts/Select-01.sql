SELECT  --команда выборки
Title AS N'Название', 
Id AS N'Идентификатор' -- что выбрать (какие поля их таблицы) * - все
FROM Categories -- из какой таблицы 
WHERE --команда условия
--Id < 5 -- условие выбора
--Id IN (1,3,4)
--Title = N'Пиво'
Title LIKE N'В%'
ORDER BY Id;


SELECT * FROM Buy; 
SELECT * FROM Buyer;
SELECT * FROM Categories;
SELECT * FROM Country;
SELECT * FROM Manager;
SELECT * FROM ProductCategories; -- отобразить все продукты - категории
SELECT * FROM Products; --отобразить все продукты
SELECT * FROM Sale;
SELECT * FROM Saler;

/*
SELECT SUM(Quantity) FROM Products; -- SUM сумма

SELECT COUNT(Id) FROM Products WHERE Quantity =3; --COUNT количество

SELECT COUNT(Id) FROM Products; --COUNT количество

SELECT 
CONCAT(Title, ' code: ', Sku) AS N'Full name',
Title,
Sku
FROM Products;


SELECT * FROM Products p
JOIN 
ProductCategories pc
ON p.Id = pc.ProductId
JOIN
Categories c
ON c.Id = pc.CategoryId;

--все продукты категории Слабоалк
SELECT p.* FROM Products p
JOIN 
ProductCategories pc
ON p.Id = pc.ProductId
JOIN
Categories c
ON c.Id = pc.CategoryId
WHERE c.Id = 4;


*/