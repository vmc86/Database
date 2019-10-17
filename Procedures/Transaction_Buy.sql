/*
Транзакция закупки товара на склад
*/

CREATE PROCEDURE [dbo].[Transaction_Buy]
	
	@BuyerId INT,
	@ProductId INT,
	@Quantity INT,
	@PriceBuy DECIMAL(10,2),
	@DateBuy DATE,
	@ManagerId INT 
	
AS
BEGIN
SET NOCOUNT ON;
--объявляем переменную
DECLARE 
	@Cash DECIMAL(10,2), --сумма
	@DateTranzaction DATE = @DateBuy, --дата операции
	@TypeTranzactionId INT = 2, -- тип транзакции откуда и куда движение средств 1-sale 2-buy
	@TranzactionId INT,  --идентификатор сделки
	@CurrentDate DATE = GETDATE(),
	@BALANCE DECIMAL(10,2)

	SET @TranzactionId = IDENT_CURRENT('Buy') + 1; -- получаем последний Id в таблице Buy
	SET @Cash = @Quantity * @PriceBuy;
	SELECT @BALANCE = [dbo].[CurrentBalance](@CurrentDate);
	
--цена товара не может быть меньше или равной 0
IF @PriceBuy IS NULL OR @PriceBuy <= 0  RETURN 1;
--количество прихода и ухода товара не может 
--быть меньше или равной 0
IF @Quantity IS NULL OR @Quantity <= 0  RETURN 2;
--нельзя добавить приход если на оплату товара 
--не хватает денег (для buy)
IF @Cash > @BALANCE RETURN 3;

-- вставляем данные
BEGIN TRY
	BEGIN TRANSACTION
		INSERT INTO Buy(BuyerId, ProductId, Quantity, PriceBuy, DateBuy, ManagerId)
		VALUES	(@BuyerId, @ProductId, @Quantity, @PriceBuy, @DateBuy, @ManagerId)

		INSERT INTO CashFlow(Cash, DateTranzaction, TypeTranzactionId, TranzactionId)
		VALUES (@Cash * -1, @DateTranzaction, @TypeTranzactionId, @TranzactionId);
	COMMIT TRANSACTION
END TRY
BEGIN CATCH
	ROLLBACK TRANSACTION
		--ловим ошибки
		PRINT ERROR_NUMBER();
		PRINT ERROR_MESSAGE();
		RETURN 5;
END CATCH
--	возвращаем 0 - код успеха
RETURN 0
END