--Создание бекапа БД при помощи зашифрованного сертификата

DECLARE @DT DATETIME = GETDATE();
DECLARE @FILENAME NVARCHAR(50) = CONCAT(N'E:\SQL\', 
FORMAT( @DT, 'yyyy-MM-dd-HH.mm'), 
'-sklad_Encrypt.bak');

BACKUP DATABASE [Sklad] TO  DISK = @FILENAME 
WITH  DESCRIPTION = N'Sklad-Полная База данных Резервное копирование', 
FORMAT, INIT,  NAME = N'Sklad_All', SKIP, NOREWIND, NOUNLOAD, 
ENCRYPTION(ALGORITHM = AES_256, SERVER CERTIFICATE = [vmcCertificate]),  
STATS = 10, CHECKSUM

declare @backupSetId as int
select @backupSetId = position from msdb..backupset where database_name=N'Sklad' and backup_set_id=(select max(backup_set_id) from msdb..backupset where database_name=N'Sklad' )
if @backupSetId is null begin raiserror(N'Ошибка верификации. Сведения о резервном копировании для базы данных "Sklad" не найдены.', 16, 1) end
RESTORE VERIFYONLY FROM  DISK = @FILENAME WITH  FILE = @backupSetId,  NOUNLOAD,  NOREWIND
GO