--USE [Sklad]
/*
Задание 8.

1. Получить текущие дату-время
2. Получить год из переданной даты-времени
3. Получить месяц из переданной даты-времени
4. Получить дату из переданной даты-времени
5. Получить разницу в днях между двумя дата-время
6. Получить дату которая через 2 месяца после переданной даты
7. Получить дату которая 1 год, 2 месяца, 3 дня назад от переданной даты
8. Из таблицы платежей получить таблицу со следующими полями
	Год, Месяц, Дата, Количество платежей, Сумма платежей

*/

--1. Получить текущие дату-время
DECLARE @CURRENTDATE DATETIME = GETDATE()
, @CURRENTMONTH INT
, @CURRENTYEAR INT
, @TEMPDATETIME DATE = '2019-11-15';
SELECT @CURRENTDATE AS '1. Получить текущие дату-время';

--2. Получить год из переданной даты-времени
SET @CURRENTYEAR = YEAR(@CURRENTDATE) 
SELECT @CURRENTYEAR AS '2. Получить год из переданной даты-времени';
--3. Получить месяц из переданной даты-времени
SET @CURRENTMONTH =  MONTH(@CURRENTDATE)
SELECT @CURRENTMONTH AS '3. Получить месяц из переданной даты-времени';
--4. Получить дату из переданной даты-времени
SELECT CAST(@CURRENTDATE AS DATE) AS '4. Получить дату из переданной даты-времени'
--5. Получить разницу в днях между двумя дата-время
SELECT DATEDIFF(day, @CURRENTDATE, @TEMPDATETIME) AS '5. Получить разницу в днях между двумя дата-время'
--6. Получить дату которая через 2 месяца после переданной даты
SELECT DATEADD(month, 2, @CURRENTDATE) AS '6. Получить дату которая через 2 месяца после переданной даты'
--7. Получить дату которая 1 год, 2 месяца, 3 дня назад от переданной даты	
	SET @CURRENTDATE = DATEADD(year, -1, @CURRENTDATE)
	SET @CURRENTDATE = DATEADD(month, -2, @CURRENTDATE)
	SET @CURRENTDATE = DATEADD(day, -3, @CURRENTDATE)
PRINT @CURRENTDATE;
--7. Получить дату которая 1 год, 2 месяца, 3 дня назад от переданной даты
SELECT DATEADD(DAY,-3, DATEADD(MONTH, -2, (DATEADD(YEAR,-1, GETDATE())))) AS '7. Получить дату которая 1 год, 2 месяца, 3 дня назад от переданной даты';
--8. Из таблицы платежей получить таблицу со следующими полями
	--Год, Месяц, Дата, Количество платежей, Сумма платежей
USE [Sklad]
SELECT 
 YEAR([s].[DateSale]) AS 'Год'
,MONTH([s].[DateSale]) AS'Месяц'
,[s].[DateSale] AS 'Дата'
, COUNT([s].[DateSale]) AS 'Количество платежей'
, SUM([s].[PriceSale] * [s].[Quantity]) AS 'Сумма платежей'
FROM [Sale] AS [s]
GROUP BY [s].[DateSale]
ORDER BY [s].[DateSale] ASC;
