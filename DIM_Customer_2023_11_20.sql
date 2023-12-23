-- Cleansed DIM_Customers Table --
SELECT 
	[City] AS [City],
	c.CustomerKey AS [Customer_Key],
--      ,[GeographyKey]
--      ,[CustomerAlternateKey]
--      ,[Title]
	c.firstname AS [First_Name],
--      ,[MiddleName]
	c.lastname AS [Last_Name],
	CONCAT(c.FirstName,' ',c.LastName) AS [Full_Name], -- Combined First and Last Name
--      ,[NameStyle]
--      ,[BirthDate]
--      ,[MaritalStatus]
--      ,[Suffix]
    CASE c.gender WHEN 'M' THEN 'Male' WHEN 'F' THEN 'Female' END AS [Gender],
--      ,[EmailAddress]
--      ,[YearlyIncome]
--      ,[TotalChildren]
--      ,[NumberChildrenAtHome]
--      ,[EnglishEducation]
--      ,[SpanishEducation]
--      ,[FrenchEducation]
--      ,[EnglishOccupation]
--      ,[SpanishOccupation]
--      ,[FrenchOccupation]
--      ,[HouseOwnerFlag]
--      ,[NumberCarsOwned]
--      ,[AddressLine1]
--      ,[AddressLine2]
--      ,[Phone]
	c.datefirstpurchase AS [DateFirstPurchase]
--      ,[CommuteDistance]
FROM [AdventureWorksDW2022].[dbo].[DimCustomer] AS c
LEFT JOIN [AdventureWorksDW2022].[dbo].[DimGeography] AS g ON g.GeographyKey = c.GeographyKey
ORDER BY CustomerKey ASC -- Ordered List by CustomerKey