SELECT 
    d.CalendarYear AS Año,
    d.CalendarQuarter AS Trimestre,
    SUM(f.SalesAmount) AS Ventas_Totales
FROM FactInternetSales f
INNER JOIN DimDate d ON f.OrderDateKey = d.DateKey
GROUP BY d.CalendarYear, d.CalendarQuarter
ORDER BY Año, Trimestre;