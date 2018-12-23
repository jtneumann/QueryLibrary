USE AdventureWorksLT2012
GO

SELECT SUM(OrderQty) AS '#Items>$1000' 
FROM SalesLT.Product p
     INNER JOIN SalesLT.SalesOrderDetail sod ON (p.ProductID = sod.ProductID) 
WHERE ListPrice > 1000 