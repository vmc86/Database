USE [Sklad]

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
SELECT * FROM CashFlow;


SELECT SUM(Cash) FROM CashFlow 
	WHERE DateTranzaction <= GETDATE();
