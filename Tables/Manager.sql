﻿CREATE TABLE [dbo].[Manager]
(
	[Id] INT NOT NULL PRIMARY KEY IDENTITY,
	[Post] NVARCHAR(50), --должность
	[FullName] NVARCHAR(100) UNIQUE,
	[DateOfBirth] DATE NOT NULL,
	[Sex] NVARCHAR(5),
	[Adress] NVARCHAR(200),
	[Telephone] NVARCHAR(20) UNIQUE,
	[Pasport] NVARCHAR(100) UNIQUE
)
