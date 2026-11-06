SELECT TOP 10 
    p.EnglishProductName AS Producto, 
    SUM(f.SalesAmount) AS Ventas_Totales
FROM FactInternetSales f
INNER JOIN DimProduct p ON f.ProductKey = p.ProductKey
GROUP BY p.EnglishProductName
ORDER BY Ventas_Totales DESC;