SELECT 
    g.EnglishCountryRegionName AS Pais,
    SUM(f.SalesAmount) AS Ventas_Totales
FROM FactInternetSales f
INNER JOIN DimCustomer c ON f.CustomerKey = c.CustomerKey
INNER JOIN DimGeography g ON c.GeographyKey = g.GeographyKey
GROUP BY g.EnglishCountryRegionName
ORDER BY Ventas_Totales DESC;