
USE AdventureWorksLT2012
GO

SELECT CompanyName 
FROM SalesLT.Customer c
JOIN SalesLT.SalesOrderHeader soh ON (c.CustomerID = soh.CustomerID) 
GROUP BY CompanyName 
HAVING SUM(Subtotal + TaxAmt + Freight) > 100000