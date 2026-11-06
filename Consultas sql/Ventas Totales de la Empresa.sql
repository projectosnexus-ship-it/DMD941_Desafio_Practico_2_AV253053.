SELECT 
    SUM(SalesAmount) AS Ventas_Totales,
    SUM(OrderQuantity) AS Cantidad_Total_Productos,
    COUNT(SalesOrderNumber) AS Total_Transacciones
FROM FactInternetSales;