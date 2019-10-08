﻿USE [Sklad]
-- SELECT запросы с JOIN

/*1. Найти все поступления товара от конкретного поставщика*/
SELECT [br].[Title] AS 'Название поставщика', 
	   [p].[Title] AS 'Товар',
	   [b].[DateBuy] AS 'Дата поставки'
FROM [Buy] AS [b] 
	JOIN [Buyer] AS [br] ON ([br].[id] = [b].[BuyerId])
	JOIN [Products] AS [p] ON ([p].[Id] = [b].[ProductId])
WHERE [br].[Title] LIKE N'%Массандра%';

/*2. Найти сумму поступлений товаров за период времени*/
SELECT	[b].[DateBuy] AS 'Дата поставки',
		SUM([b].[PriceBuy]*[b].[Quantity]) AS 'Сумма поставки'
FROM [Buy] As [b]
WHERE [b].[DateBuy] >= '10.09.2019' AND [b].[DateBuy] <= '11.09.2019'
GROUP BY [b].[DateBuy]
ORDER BY [b].[DateBuy] ASC;


SELECT	SUM([b].[PriceBuy]*[b].[Quantity]) AS 'Сумма поставки за период'
FROM [Buy] As [b]
WHERE [b].[DateBuy] >= '10.09.2019' AND [b].[DateBuy] <= '11.09.2019'

/*3. Найти количество определенного товара на текущий момент времени */

SELECT	SUM([b].[Quantity]) AS 'Поставки'
FROM [Buy] As [b]
WHERE [b].[DateBuy] <= '03.10.2019'
AND
[b].[ProductId] = (SELECT Id FROM Products WHERE Title LIKE N'Оболонь')



SELECT	SUM([s].[Quantity]) AS 'Продажи'
FROM [Sale] As [s]
WHERE [s].[DateSale] <= '03.10.2019'
AND
[s].[ProductId] = (SELECT Id FROM Products WHERE Title LIKE N'Оболонь')


--ОСТАТОК на скдаде
SELECT	
(
SELECT	SUM([b].[Quantity]) 
FROM [Buy] As [b]
WHERE [b].[DateBuy] <= '03.10.2019'
AND
[b].[ProductId] = (SELECT Id FROM Products WHERE Title LIKE N'Оболонь')
)
-
(
SELECT	SUM([s].[Quantity]) 
FROM [Sale] As [s]
WHERE [s].[DateSale] <= '03.10.2019'
AND
[s].[ProductId] = (SELECT Id FROM Products WHERE Title LIKE N'Оболонь')
) AS 'Остаток на складе'


SELECT dbo.QuantityToDate('15.09.2019', N'Вино');

/* 4. Найти количество товара определенной категории на конкретный момент времени */
--ОСТАТОК на скдаде через UNION
SELECT SUM([Quantity]) AS Total
FROM (
(SELECT Quantity FROM
[Buy] WHERE [Buy].[ProductId] IN (SELECT pc.ProductId FROM ProductCategories AS [pc]  WHERE CategoryId =
(SELECT c.Id FROM Categories AS c WHERE Title LIKE N'Пиво'))
AND [DateBuy] <= '10.09.2019')
UNION ALL
(SELECT Quantity * -1 FROM
[Sale] WHERE [Sale].[ProductId] IN (SELECT pc.ProductId FROM ProductCategories AS [pc]  WHERE CategoryId =
(SELECT c.Id FROM Categories AS c WHERE Title LIKE N'Пиво'))
AND [DateSale] <= '10.09.2019') 
) AS T;


/* 4. Найти количество товара определенной категории на конкретный момент времени */
--ОСТАТОК на скдаде
SELECT	
(
SELECT	SUM([b].[Quantity])
FROM [Buy] As [b]
WHERE [b].[ProductId] IN 
(SELECT pc.ProductId FROM ProductCategories AS [pc]  WHERE CategoryId =
(SELECT c.Id FROM Categories AS c WHERE Title LIKE N'Пиво'))
AND [b].[DateBuy] <= '10.09.2019'
)
-
(
SELECT	SUM([s].[Quantity])
FROM [Sale] As [s]
WHERE [s].[ProductId] IN 
(SELECT pc.ProductId FROM ProductCategories AS [pc]  WHERE CategoryId =
(SELECT c.Id FROM Categories AS c WHERE Title LIKE N'Пиво'))
AND [s].[DateSale] <= '10.09.2019'
) AS 'Остаток на складе'


/*Дата поставки - товар - сумма*/
SELECT	[b].[DateBuy] AS 'Дата поставки'
		,[p].[Title] AS 'Товар'
		,([b].[PriceBuy]*[b].[Quantity]) AS 'Сумма поставки'
FROM [Buy] As [b]
	JOIN [Products] AS [p] ON ([p].[Id] = [b].[ProductId])
WHERE [p].[Title] LIKE N'%Оболонь%'
ORDER BY [b].[DateBuy] ASC;


/*
SELECT c.[name] AS 'Город', s.[name] AS 'Поставщик 1', s2.[name] AS 'Поставщик 2' 
FROM [Cities] AS c 
	JOIN [Suppliers] AS s ON (c.id = s.city_id) 
	JOIN [Suppliers] AS s2 ON (s.city_id = s2.city_id) 
WHERE s.id > s2.id;

SELECT * FROM Employers;
SELECT * FROM Sectors;

SELECT *, 'JOIN' FROM Employers e
JOIN Sectors s 
ON s.Id = e.SectorId;
 
SELECT *, 'LEFT JOIN' FROM Employers e
LEFT JOIN Sectors s 
ON s.Id = e.SectorId;

SELECT *, 'RIGHT JOIN' FROM Employers e
RIGHT JOIN Sectors s 
ON s.Id = e.SectorId;

SELECT *, 'FULL JOIN' FROM Employers e
FULL JOIN Sectors s 
ON s.Id = e.SectorId;
*/


DECLARE @TEMP INT;
SELECT @TEMP = dbo.QuantityToDate('10.09.2019', N'Пиво');
PRINT CONCAT('Total: ', @TEMP, ' items');