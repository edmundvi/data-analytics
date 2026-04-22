USE northwind;

-- 1.) Write a query to list the product id, product name, and unit price of every product that Northwind sells

SELECT ProductID, ProductName, UnitPrice
	FROM  products;

-- 2.) Write a query to identify produces where the unit price is $7.50 or less.

SELECT ProductName, UnitPrice
	FROM Products
	WHERE UnitPrice <= 7.5;

-- 3.) What are the products that we carry where we have no unites on hand, but 1 or more units are on backorder? Write a query that answers this question.alter

SELECT ProductName, UnitsInStock, UnitsOnOrder 
	FROM products
	WHERE UnitsInStock = 0 AND UnitsOnOrder >= 1;

-- 4.) Examine the products table. How does it identify the type of each item sold?
-- Where can you find a list of all categories? Write a query that answers all these
-- End with a query that creates a list of all seafood items.

SELECT ProductName, CategoryID FROM products;
SELECT CategoryID, CategoryName FROM categories;

-- bonus JOIN statement
SELECT products.ProductName, products.CategoryID, categories.CategoryName 
	FROM products
	JOIN categories
	ON products.CategoryID = categories.CategoryID; 

SELECT ProductName
	FROM products
	WHERE CategoryID = 8;

-- 5.) How do you know what supplier each product comes from? Where can you find info on suppliers?
-- Write a set of queries to find the specific identifier for "Tokyo Traders" and then find all products from that suppplier

SELECT ProductName, SupplierID FROM products;
SELECT SupplierID, CompanyName FROM suppliers;
SELECT ProductName 
	FROM products
	WHERE SupplierID = 4;

-- Bonus JOIN statement using shortened table identifiers
SELECT p.ProductName, p.SupplierID, s.CompanyName
	FROM products p
	JOIN suppliers s
	ON p.SupplierID = s.SupplierID
	WHERE p.SupplierID = 4;

-- 6.) How many employees work at northwind? What employees have "manager" somewhere in their job title?
-- Write queries to answer each question

SELECT * FROM employees;
SELECT COUNT(EmployeeID)
	FROM employees;
SELECT FirstName, LastName, Title 
	FROM employees
    WHERE Title LIKE "%manager%";