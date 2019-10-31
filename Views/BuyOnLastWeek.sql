CREATE VIEW [dbo].[BuyOnLastWeek]
	AS SELECT
		 [b].[DateBuy] AS 'Дата'
		,[p].[Title] AS 'продукт-название'
		,[b].[PriceBuy] * [b].[Quantity] AS 'цена общая'
		,[br].[Title] AS 'продавец-название'   
FROM [Buy] AS [b] 
	JOIN [Buyer] AS [br] ON ([br].[id] = [b].[BuyerId])
	JOIN [Products] AS [p] ON ([p].[Id] = [b].[ProductId])
WHERE [b].[DateBuy] >= DATEADD(WEEK, -6, GETDATE())