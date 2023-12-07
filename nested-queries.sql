-- Q1
-- USE Northwind;
-- SELECT ProductName FROM Products 
-- WHERE UnitPrice = (SELECT MAX(unitPrice) FROM Products);

-- Q2
-- SELECT OrderID, ShipName, ShipAddress
-- FROM Orders
-- WHERE ShipName = (SELECT ShipperID FROM Shippers WHERE ShipName = 'Federal Shipping');

-- Q3
-- SELECT OrderID
-- FROM `Order Details`
-- WHERE ProductId = (SELECT ProductId FROM Products WHERE ProductName LIKE "%Sasquatch Ale%");

-- Q4
-- SELECT FirstName, LastName
-- From Employees
-- WHERE employeeID = (SELECT EmployeeID FROM Orders WHERE OrderId = 10266);

-- Q5
-- SELECT ContactName
-- FROM customers
-- WHERE CustomerID = (SELECT CustomerID FROM orders WHERE orderID = 10266);
