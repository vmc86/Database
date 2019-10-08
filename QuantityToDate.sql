CREATE FUNCTION [dbo].[QuantityToDate]
(
	@DATE DATE,
	@CATEGORY_TITLE NVARCHAR(30)
)
RETURNS INT
AS
BEGIN
DECLARE @SUM_TO_DATE int;
SET @SUM_TO_DATE = 0;

SELECT @SUM_TO_DATE = SUM([Quantity])
FROM (
(SELECT Quantity FROM
[Buy] WHERE [Buy].[ProductId] IN (SELECT pc.ProductId FROM ProductCategories AS [pc]  WHERE CategoryId =
(SELECT c.Id FROM Categories AS c WHERE Title LIKE @CATEGORY_TITLE))
AND [DateBuy] <= @DATE)
UNION ALL
(SELECT Quantity * -1 FROM
[Sale] WHERE [Sale].[ProductId] IN (SELECT pc.ProductId FROM ProductCategories AS [pc]  WHERE CategoryId =
(SELECT c.Id FROM Categories AS c WHERE Title LIKE @CATEGORY_TITLE))
AND [DateSale] <= @DATE) 
) AS T;
	RETURN @SUM_TO_DATE;
END
