CREATE TABLE [dbo].[CashFlow]
(
	[Id] INT NOT NULL PRIMARY KEY IDENTITY,
	[Cash] DECIMAL(10,2) NOT NULL, --сумма
	[DateTranzaction] DATE, --дата
	[TypeTranzactionId] INT, --тип трназзакции откуда и куда движение средств
	[TranzactionId] INT --идентификатор сделки
)
