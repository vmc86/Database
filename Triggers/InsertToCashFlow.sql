﻿CREATE TRIGGER [InsertToCashFlow]
	ON [dbo].[CashFlow]
	FOR INSERT
	AS
	BEGIN
		SET NOCOUNT ON
		DECLARE @MESSEGE NVARCHAR(500)
		, @OPERATION NVARCHAR(5)
		, @DATETIME DATE = GETDATE()
		;
		SELECT @OPERATION = TypeTranzactionId FROM CashFlow;
		SELECT @MESSEGE = Cash FROM CashFlow;
		
		IF @OPERATION = 1 SET @OPERATION = '-'
		ELSE IF @OPERATION = 2 SET @OPERATION = '+'

		SET @MESSEGE = CONCAT(N'ADD', @OPERATION, @MESSEGE)

		--IF @OPERATION = 1 SET @MESSEGE = CONCAT(N'ADD - ', @MESSEGE)
		--ELSE IF @OPERATION = 2 SET @MESSEGE = CONCAT(N'ADD + ', @MESSEGE);
		
		INSERT INTO [Log] ([Message], [DateTime]) VALUES (@MESSEGE, @DATETIME);
	END