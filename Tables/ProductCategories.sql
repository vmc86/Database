CREATE TABLE [dbo].[ProductCategories]
(
	[ProductId] INT NOT NULL,
	[CategoryId] INT NOT NULL,
	FOREIGN KEY ([ProductId]) REFERENCES Products(Id),
	FOREIGN KEY ([CategoryId]) REFERENCES Categories(Id),
	PRIMARY KEY ([ProductId],[CategoryId])
	/*
	ALTER TABLE [dbo].[ProductCategories]
DROP CONSTRAINT PK_ProductCategories_ProductId_CategoryId;

ALTER TABLE [dbo].[ProductCategories]
DROP CONSTRAINT FK_ProductCategories_ProductId;

ALTER TABLE [dbo].[ProductCategories]
DROP COLUMN [CategoryId];

ALTER TABLE [dbo].[ProductCategories]
ADD [CategoryT] INT NOT NULL, [CategoryT2] INT NOT NULL;
*/
)
