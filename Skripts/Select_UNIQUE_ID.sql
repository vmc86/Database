USE [Sklad]

DECLARE @TEMP INT
EXEC @TEMP = dbo.[getRandomTask]
PRINT @TEMP;