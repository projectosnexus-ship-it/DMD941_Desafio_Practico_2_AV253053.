SELECT TOP 5
    c.FirstName + ' ' + c.LastName AS Cliente,
    c.YearlyIncome AS Ingreso_Anual,
    SUM(f.SalesAmount) AS Total_Gastado
FROM FactInternetSales f
INNER JOIN DimCustomer c ON f.CustomerKey = c.CustomerKey
GROUP BY c.FirstName, c.LastName, c.YearlyIncome
ORDER BY Total_Gastado DESC;