﻿CREATE PROCEDURE [dbo].[getRandomTask]	
AS
BEGIN
SET NOCOUNT ON;

DECLARE @GetId INT
		, @TEMP INT
		
	SELECT TOP(1) @GetId =  Id FROM Task 
	WHERE Id NOT IN (SELECT GetId FROM GeterTable)
	ORDER BY NEWID() -- случайный ID

IF @GetId IS NULL RETURN 0	

BEGIN TRY
	BEGIN TRANSACTION
		INSERT INTO GeterTable(GetId)
		VALUES	(@GetId)
	COMMIT TRANSACTION
	RETURN @GetId
END TRY
BEGIN CATCH
	ROLLBACK TRANSACTION
	--ловим ошибки
	PRINT ERROR_NUMBER();
	PRINT ERROR_MESSAGE();
	RETURN 0;
END CATCH

RETURN 0
END