SELECT 
    pc.EnglishProductCategoryName AS Categoria,
    SUM(f.SalesAmount) AS Ventas_Totales
FROM FactInternetSales f
INNER JOIN DimProduct p ON f.ProductKey = p.ProductKey
INNER JOIN DimProductSubcategory ps ON p.ProductSubcategoryKey = ps.ProductSubcategoryKey
INNER JOIN DimProductCategory pc ON ps.ProductCategoryKey = pc.ProductCategoryKey
GROUP BY pc.EnglishProductCategoryName
ORDER BY Ventas_Totales DESC;