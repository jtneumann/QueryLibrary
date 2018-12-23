--Find the number of left racing socks ('Racing Socks, L') ordered by CompanyName 'Riding Cycles'
USE AdventureWorksLT2012
GO

SELECT SUM(OrderQty) AS 'Number of Left Racking Stocks ordered by Riding Cycles'
FROM SalesLT.Customer c
	INNER JOIN SalesLT.SalesOrderHeader soh ON c.CustomerID = soh.CustomerID
	INNER JOIN SalesLT.SalesOrderDetail sod ON soh.SalesOrderID = sod.SalesOrderID
	INNER JOIN SalesLT.Product p ON sod.ProductID = p.ProductID
WHERE CompanyName = 'Riding Cycles' AND p.Name = 'Racing Socks, L'


