CREATE TABLE [dbo].[Buy] --Приход
(
	[Id] INT NOT NULL PRIMARY KEY IDENTITY,
	[BuyerId] INT NOT NULL,
	[ProductId] INT NOT NULL,
	[Quantity] INT NOT NULL DEFAULT(0),
	[PriceBuy] DECIMAL(10,2),
	[DateBuy] DATE,
	[ManagerId] INT NOT NULL,
	FOREIGN KEY ([ProductId]) REFERENCES Products(Id),
	FOREIGN KEY ([BuyerId]) REFERENCES Buyer(Id),
	FOREIGN KEY ([ManagerId]) REFERENCES Manager(Id)
)
