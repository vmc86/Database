--Создание главного ключа
--Сертификат будет зашифрован мастер-ключем
--Если его нет на сервере его необходимо создать
CREATE MASTER KEY ENCRYPTION BY PASSWORD = 'SuccessFactors2019'

--Создание сертификата
use master;
create certificate vmcCertificate
with SUBJECT = 'vmc Certificate';
--Бэкап сертификата
BACKUP CERTIFICATE vmcCertificate
TO FILE = 'E:\SQL\MyCertificates\vmcCertificate.cer'
with PRIVATE KEY
(
FILE = 'E:\SQL\MyCertificates\vmcCertificate.pvk',
ENCRYPTION BY PASSWORD = 'SuccessFactors2019'
)