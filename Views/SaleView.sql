﻿CREATE VIEW [dbo].[SaleView]
	AS SELECT
		 [s].[DateSale] AS 'Дата'
		,[p].[Title] AS 'продукт-название'
		,[s].[PriceSale] * [s].[Quantity] AS 'цена общая'
		,[sr].[Title] AS 'покупатель-название'   
FROM [Sale] AS [s] 
	JOIN [Saler] AS [sr] ON ([sr].[id] = [s].[SalerId])
	JOIN [Products] AS [p] ON ([p].[Id] = [s].[ProductId])