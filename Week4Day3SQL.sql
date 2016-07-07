--use NORTHWND

--CREATE DATABASE - creates a new database

--CREATE DATABASE TestDB;

--CREATE TABLE - creates a new table

--use TestDB

--CREATE TABLE Persons
--(
--PersonID int not null,
--LastName varchar (255) not null,
--FirstName varchar (255) not null,
--Address varchar (255),
--City varchar (255)
--);

--INSERT - inserts new data into a database

--Insert Persons (PersonID, LastName, FirstName, Address, City)
--Values (1, 'Weiss', 'Jim', '4120 Bandury Drive', 'Lake Orion');

--SELECT - extracts data from a database

--SELECT * FROM Persons;

--UPDATE - updates data in a database

--UPDATE Persons
--SET Address='8137 Hettenberger', City='Warren'
--WHERE FirstName='Chris';

--DELETE - deletes data from a database

--DELETE FROM Persons
--WHERE FirstName='Chris';

--ALTER TABLE - modifies a table

--ALTER TABLE Persons
--ADD State varchar(255) null

--ALTER DATABASE - modifies a database

--use master
--ALTER DATABASE TestDB
--MODIFY NAME=NewTestDB

--CREATE INDEX - creates an index (search key)

--use NewTestDB
--CREATE INDEX i1
--ON Persons (LastName)

--DROP TABLE - deletes a table

--DROP TABLE Persons

--DROP INDEX - deletes an index

--DROP INDEX i1
--ON Persons

--use NORTHWND

--SELECTS

--SELECT Freight, EmployeeID, ShipCity
--FROM Orders
--WHERE Freight > 20
--GROUP BY EmployeeID, Freight, ShipCity;

--GROUP BY
--SELECT EmployeeID, COUNT(TerritoryID) AS NumberOfTerritories
--FROM EmployeeTerritories
--GROUP BY EmployeeID 

--ORDER BY
--SELECT * FROM Customers
--ORDER BY City

--addition

--SELECT SUM(Freight), EmployeeID
--FROM Orders
--GROUP BY EmployeeID

--subtraction

--SELECT MAX(UnitPrice) - MIN(UnitPrice) AS UnitPriceDiffence
--FROM [Order Details]
--GROUP BY ProductID

--multiplication

--SELECT DISTINCT ProductID, UnitPrice * 1.25 AS NewUnitPrice
--FROM [Order Details]  
--ORDER BY ProductID ASC

--SELECT DISTINCT ProductID, (CEILING( UnitPrice * 1.25)) "DISTINCT(CEILING())"   
--FROM [Order Details]
--ORDER BY ProductID ASC

--SELECT DISTINCT ProductID, (FLOOR( UnitPrice * 1.25)) "DISTINCT(FLOOR())"   
--FROM [Order Details]
--ORDER BY ProductID ASC

--division

--use NORTHWND


--SELECT DISTINCT ProductID, UnitPrice / .75 AS UnitPriceSale
--FROM [Order Details]
--ORDER BY ProductID ASC

--% modulo

--SELECT 48 / 5 AS Integer, 48 % 5 AS Remainder ;

--ABS(x) - returns the absolute value of x

--SELECT ABS(-14.0), ABS(0.0), ABS(14.0);

--SIGN(x) - returns the sign of input x as -1, 0, or 1 (negative, zero, or positive respectively)

--SELECT SIGN(14);

--MOD(x,y) - modulo - returns the integer remainder of x divided by y (same as x%y)

--SELECT 3%2 AS Remainder;

--Msg 195, Level 15, State 10, Line 127
--'MOD' is not a recognized built-in function name.

--FLOOR(x) - returns the largest integer value that is less than or equal to x

--SEE ABOVE

--CEILING(x) or CEIL(x) - returns the smallest integer value that is greater than or equal to x

--SEE ABOVE

--POWER(x,y) - returns the value of x raised to the power of y

--SELECT POWER (7,2)

--ROUND(x) - returns the value of x rounded to the nearest whole integer

--SELECT Freight, ROUND(Freight, 0) AS RoundedFreight
--FROM [Orders]

--ROUND(x,d) - returns the value of x rounded to the number of decimal places specified by the value d

--SELECT Freight, ROUND(Freight, 1) AS RoundedFreight
--FROM [Orders]

--SQRT(x) - returns the square-root value of x

--SELECT SQRT (49)
