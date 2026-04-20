USE northwind;
/*
4.a) The products table holds the items Northwind sells.
4.b) The categories table holds the types/categories of the items Northwind sells.alter
*/

SELECT * FROM employees;

-- 5.a) Margaret Peacock is the employee whose name makes it look like she's a bird.

SELECT * FROM products;

/*
6a.) The query returns 77 records. There is a drop down menu where you 
	 set a limit to how many rows are returned.
6b.) SELECT * FROM products LIMIT 64;
*/

SELECT * FROM categories;

-- 7c.) The category ID of seafood is 7.

SELECT OrderID, OrderDate, ShipName, ShipCountry FROM orders LIMIT 50;
