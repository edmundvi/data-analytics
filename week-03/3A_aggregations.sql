USE northwind;

-- 1. Write a query to find the price of the cheapest item that Northwind sells. Then write a
-- second query to find the name of the product that has that price

SELECT MIN(UnitPrice) AS LowestPrice
	FROM products;
    
SELECT ProductName
	FROM products
    WHERE UnitPrice = 2.5;

-- 2. Write a query to find the average price of all items that Northwind sells.
-- (Bonus: Once you have written a working query, try asking Claude or ChatGPT for help
-- using the ROUND function to round the average price to the nearest cent.)

SELECT ROUND(AVG(UnitPrice), 2) AS AveragePrice
	FROM products;
-- Bess showed us how to use ROUND in class!

-- 3. Write a query to find the price of the most expensive item that Northwind sells. Then
-- write a second query to find the name of the product with that price, plus the name of
-- the supplier for that product.

SELECT MAX(UnitPrice) AS MostExpensive
	FROM products;
    
SELECT 
	p.ProductName
	, s.CompanyName AS SupplierName
	FROM products p
    JOIN suppliers s
		ON p.SupplierID = s.SupplierID
    WHERE UnitPrice = 263.5;

-- 4. Write a query to find total monthly payroll (the sum of all the employees’ monthly
-- salaries).

SELECT ROUND(SUM(Salary), 2) AS TotalMonthlyPayroll
	FROM employees;

-- 5. Write a query to identify the highest salary and the lowest salary amounts which any
-- employee makes. (Just the amounts, not the specific employees!)

SELECT 
	ROUND(MIN(salary), 2)
    , ROUND(MAX(salary), 2)
    FROM employees;

-- 6. Write a query to find the name and supplier ID of each supplier and the number of
-- items they supply. Hint: Join is your friend here.

SELECT
	s.SupplierID
    , s.CompanyName AS SupplierName
    , COUNT(p.SupplierID) AS ItemsSupplied
    FROM suppliers s
    JOIN products p
		ON s.SupplierID = p.SupplierID
    GROUP BY p.SupplierID, s.CompanyName;

-- 7. Write a query to find the list of all category names and the average price for items in
-- each category.

SELECT
	CategoryName
    , ROUND(AVG(p.UnitPrice), 2) AS AveragePrice
    FROM categories c
    JOIN products p
		ON c.CategoryID = p.CategoryID
    GROUP BY c.CategoryName;

-- 8. Write a query to find, for all suppliers that provide at least 5 items to Northwind, what
-- is the name of each supplier and the number of items they supply.

SELECT 
	s.CompanyName AS SupplierName
    , COUNT(p.SupplierID) AS ItemsSupplied
    FROM products p
	JOIN suppliers s
		ON s.SupplierID = p.SupplierID
    GROUP BY SupplierName
    HAVING ItemsSupplied >= 5;

-- 9. Write a query to list products currently in inventory by the product id, product name,
-- and inventory value (calculated by multiplying unit price by the number of units on
-- hand). Sort the results in descending order by value. If two or more have the same
-- value, order by product name. If a product is not in stock, leave it off the list.

SELECT 
	ProductID
    , ProductName
    , ROUND((UnitPrice * UnitsInStock), 2) AS InventoryValue
    FROM products
    WHERE UnitsInStock > 0
    ORDER BY 
		InventoryValue DESC
        , ProductName;
