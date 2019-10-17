/*
Транзакция продажи товара со склада
*/

CREATE PROCEDURE [dbo].[Transaction_Sale]

	@SalerId INT,
	@ProductId INT,
	@Quantity INT,
	@PriceSale DECIMAL(10,2),
	@DateSale DATE,
	@ManagerId INT 
	
AS
BEGIN
SET NOCOUNT ON;
--объявляем переменную
DECLARE 
	@Cash DECIMAL(10,2), --сумма
	@DateTranzaction DATE = @DateSale, --дата
	@TypeTranzactionId INT = 1, -- тип транзакции откуда и куда движение средств 1-sale 2-buy
	@TranzactionId INT,  --идентификатор сделки
	@CurrentQuantity INT,
	@CurrentDate DATE = GETDATE()

	SET @TranzactionId = IDENT_CURRENT('Sale') + 1; -- получаем последний Id в таблице Sale
	SET @Cash = @Quantity * @PriceSale * 1.2;
	SELECT @CurrentQuantity = [dbo].[QuntityOnSklad](@CurrentDate, @ProductId) ;
--цена товара не может быть меньше или равной 0
IF @PriceSale IS NULL OR @PriceSale <= 0  RETURN 1;
--количество прихода и ухода товара не может 
--быть меньше или равной 0
IF @Quantity IS NULL OR @Quantity <= 0  RETURN 2;
--на складе не хватает (для sale)
IF @Quantity > @CurrentQuantity RETURN 4;

-- вставляем данные
BEGIN TRY
	BEGIN TRANSACTION
		INSERT INTO Sale(SalerId, ProductId, Quantity, PriceSale, DateSale, ManagerId)
		VALUES	(@SalerId, @ProductId, @Quantity, @PriceSale, @DateSale, @ManagerId)

		INSERT INTO CashFlow(Cash, DateTranzaction, TypeTranzactionId, TranzactionId)
		VALUES (@Cash, @DateTranzaction, @TypeTranzactionId, @TranzactionId);
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