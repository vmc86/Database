﻿CREATE TRIGGER [DeleteFromCashFlow]
	ON [dbo].[CashFlow]
	FOR DELETE
	AS
	BEGIN
		SET NOCOUNT ON
		DECLARE @MESSEGE NVARCHAR(500)
		, @DATETIME DATE = GETDATE()
		;
		SELECT @MESSEGE = Cash FROM CashFlow;
		SET @MESSEGE = CONCAT(N'DEL', @MESSEGE)
		INSERT INTO [Log] ([Message], [DateTime]) VALUES (@MESSEGE, @DATETIME);
	END