CREATE TABLE [dbo].[Sale]
(
	[Id] INT NOT NULL PRIMARY KEY IDENTITY,
	[SalerId] INT,
	[ProductId] INT NOT NULL,
	[Quantity] INT NOT NULL DEFAULT(0),
	[PriceSale] DECIMAL(10,2),
	[DateSale] DATE,
	[ManagerId] INT NOT NULL,
	FOREIGN KEY ([ProductId]) REFERENCES Products(Id),
	FOREIGN KEY ([SalerId]) REFERENCES Saler(Id),
	FOREIGN KEY ([ManagerId]) REFERENCES Manager(Id)
)
