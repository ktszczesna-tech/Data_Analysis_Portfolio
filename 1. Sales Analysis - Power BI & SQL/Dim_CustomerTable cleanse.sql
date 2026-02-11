-- Cleansed Dim_CustomerTable --
SELECT 
c.[CustomerKey],
      --,[GeographyKey]
      --,[CustomerAlternateKey]
      --,[Title]
      c.[FirstName] AS [First Name],
      --,[MiddleName]
      c.[LastName] AS [Last Name],
      c.FirstName + ' ' + c.LastName AS [Full Name], -- Combined First and Last Name
      --,[NameStyle]
      --,[BirthDate]
      --,[MaritalStatus]
      --,[Suffix]
      CASE c.[Gender] WHEN 'M' Then 'Male' WHEN 'F' THEN 'Female' END AS Gender,
      --,[EmailAddress]
      --,[YearlyIncome]
      --,[TotalChildren]
      --,[NumberChildrenAtHome]
      --,[EnglishEducation]
      --,[SpanishEducation]
      --,[FrenchEducation]
      --,[EnglishOccupation]
      --,[SpanishOccupation]
      --,[FrenchOccupation]
      --,[HouseOwnerFlag]
      --,[NumberCarsOwned]
      --,[AddressLine1]
      --,[AddressLine2]
      --,[Phone]
      [DateFirstPurchase],
      --,[CommuteDistance]
      g.city AS [Customer City] -- Joined in Customer City from Geography Table
FROM
  [AdventureWorksDW2025].[dbo].[DimCustomer] AS c
  LEFT JOIN [AdventureWorksDW2025].[dbo].[DimGeography] AS g ON g.GeographyKey = c.GeographyKey
  ORDER BY CustomerKey ASC -- Ordered by Customer Key
