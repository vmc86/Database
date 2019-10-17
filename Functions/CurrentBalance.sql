/*Данная функция возвращает сумму средств на счету
(бюджет/баланс) по состоянию на указанную дату*/

CREATE FUNCTION [dbo].[CurrentBalance]
(
@CurrentDate DATE
)
RETURNS INT
AS
BEGIN

IF @CurrentDate IS NULL SET @CurrentDate = GETDATE() 
--SET NOCOUNT ON;
--объявляем переменную
DECLARE
	@Cash DECIMAL(10,2) --сумма
SELECT @Cash =  SUM(Cash) FROM CashFlow 
	WHERE DateTranzaction <= @CurrentDate;
	RETURN @Cash
END
