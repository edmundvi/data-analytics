USE northwind;

-- 1. Create a single query to list the product id, product name, unit price and category
-- name of all products. Order by category name and within that, by product name.

SELECT products.ProductID, products.ProductName, products.UnitPrice, categories.CategoryName
	FROM products
    JOIN categories
		ON products.CategoryID = categories.CategoryID
    ORDER BY categories.CategoryName, products.ProductName;

-- 2. Create a single query to list the product id, product name, unit price and supplier
-- name of all products that cost more than $75. Order by product name.

SELECT 
	p.ProductID
	, p.ProductName
	, p.UnitPrice
	, s.CompanyName AS Supplier
	FROM products p
    JOIN suppliers s
		ON p.SupplierID = s.SupplierID
    WHERE UnitPrice > 75
    ORDER BY ProductName;

-- 3. Create a single query to list the product id, product name, unit price, category name,
-- and supplier name of every product. Order by product name.

SELECT
	p.ProductID
    , p.ProductName
    , p.UnitPrice
	, c.CategoryName
    , s.CompanyName AS SupplierName
    FROM products p
    JOIN categories c
		ON p.CategoryID = c.CategoryID
    JOIN suppliers s
		ON p.SupplierID = s.SupplierID
    ORDER BY ProductName;
    
-- 4. Create a single query to list the order id, ship name, ship address, and shipping
-- company name of every order that shipped to Germany. Assign the shipping company
-- name the alias ‘Shipper.’ Order by the name of the shipper, then the name of who it
-- shipped to.

SELECT o.OrderID
	, o.ShipName
    , o.ShipAddress
    , s.CompanyName AS ShipperName
    , o.ShipCountry
	FROM orders o
    JOIN shippers s
		ON o.ShipVia = s.ShipperID
    WHERE o.ShipCountry = "Germany"
    ORDER BY Shipper;

-- 5. Start from the same query as above (#4), but omit OrderID and add logic to group by
-- ship name, with a count of how many orders were shipped for that ship name.

SELECT o.ShipName
	, count(ShipName) AS "NumberOfOrders"
    , o.ShipAddress
    , s.CompanyName AS Shipper
    , o.ShipCountry
	FROM orders o
    JOIN shippers s
		ON o.ShipVia = s.ShipperID
    WHERE o.ShipCountry = "Germany"
    GROUP BY ShipName, ShipAddress, Shipper, ShipCountry
    ORDER BY Shipper;

-- 6. Create a single query to list the order id, order date, ship name, ship address of all
-- orders that included Sasquatch Ale.

SELECT * FROM orders;
SELECT * FROM `order details`;
SELECT * FROM products;
SELECT
	o.OrderID
    , o.OrderDate
    , o.ShipName
    , o.ShipAddress
    -- , p.ProductName
    FROM orders o
	JOIN `order details` o2
		ON o.OrderID = o2.OrderID
	JOIN products p
		ON o2.ProductID = p.ProductID
	WHERE ProductName = "Sasquatch Ale";
    
-- I was planning on using Sasquatch Ale's ProductID in WHERE
-- but I was too lazy to find it and just spelled it out since they're both in the products table anyway.