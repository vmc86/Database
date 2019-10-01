CREATE TABLE [dbo].[Products]
(
	[Id] INT NOT NULL PRIMARY KEY IDENTITY,
	[Title] NVARCHAR(200) NOT NULL,
	[Sku] NVARCHAR(15) NOT NULL UNIQUE,
	[Alk] FLOAT NULL, --спирт содержание
	[Volume] FLOAT NULL, -- объем тары
	[DateExpiration] DATE NULL
)
