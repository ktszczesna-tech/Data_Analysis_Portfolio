-- Cleansed FACT_InternetSales Table --
SELECT 
      [ProductKey],
      [OrderDateKey],
      [DueDateKey],
      [ShipDateKey],
      [CustomerKey],
      --,[PromotionKey]
      --,[CurrencyKey]
      --,[SalesTerritoryKey]
      [SalesOrderNumber],
      --,[SalesOrderLineNumber]
      --,[RevisionNumber]
      --,[OrderQuantity]
      --,[UnitPrice]
      --,[ExtendedAmount]
      --,[UnitPriceDiscountPct]
      --,[DiscountAmount]
      --,[ProductStandardCost]
      --,[TotalProductCost]
      [SalesAmount]
      --,[TaxAmt]
      --,[Freight]
      --,[CarrierTrackingNumber]
      --,[CustomerPONumber]
      --,[OrderDate]
      --,[DueDate]
      --,[ShipDate]
  FROM [AdventureWorksDW2025].[dbo].[FactInternetSales]
 WHERE OrderDateKey >= 20240101
ORDER BY
  OrderDateKey ASC