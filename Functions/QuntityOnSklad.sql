/*Данная функция возвращает количество 
товара по его идентификатору 
на указанную дату*/
CREATE FUNCTION [dbo].[QuntityOnSklad]
(
	@CurrentDate DATE,
	@ProductId INT
)
RETURNS INT
AS
BEGIN
DECLARE @SUM_TO_DATE int;
SET @SUM_TO_DATE = 0;

SELECT @SUM_TO_DATE = SUM([Quantity])
FROM (
(SELECT Quantity FROM
[Buy] WHERE [Buy].[ProductId] = @ProductId
AND [DateBuy] <= @CurrentDate)
UNION ALL
(SELECT Quantity * -1 FROM
[Sale] WHERE [Sale].[ProductId] = @ProductId
AND [DateSale] <= @CurrentDate) 
) AS T;
	RETURN @SUM_TO_DATE;
END