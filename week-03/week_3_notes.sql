
-- CONCAT is used to string together multiple columns into one, it will take the literal order of what is in the parentheses, so to add a space, you need to add a string that includes a space
USE sakila;

SELECT CONCAT(first_name, " ", last_name, 10) AS "FullName" FROM customer;

-- creating views

USE world;

-- CREATE VIEW country_city_countrylanguage AS 
	SELECT country.code
    , city.name AS city
    , country.name AS country
    , countrylanguage.language 
    FROM city
	JOIN country 
    ON city.countrycode = country.code
	JOIN countrylanguage 
    ON country.code = countrylanguage.countrycode;
    
SELECT * FROM world.country_city_countrylanguage;

-- AGGREGATE FUNCTIONS EXAMPLE
-- no need to use HAVING as you're not searching with aggregated values, see HAVING comment for an example

SELECT Continent, Region, FORMAT(MAX(Population), 0), MIN(Population), FORMAT(AVG(Population), 2)
	FROM country
    WHERE Population > 0
    GROUP BY Continent, Region
	-- HAVING AVG(Population) >= 10465594.4444
    ORDER BY Continent, MAX(Population);
    
-- SUBQUERIES are queries within queries, such as a select within a select
-- Inner query is the nested query in closed parentheses, Outer query is what contains the subquery, examples below
-- IN operator looks for a list of values, specifically calls those listed

USE world;

SELECT Region FROM country
	WHERE Region IN ('Caribbean', 'Central Africa', 'Southern Europe');
    
SELECT Region FROM country
	WHERE Region LIKE "%east%";
    
SELECT Name as Country, Region, GNP FROM country
	WHERE Region IN ('Caribbean', 'Central Africa', 'Southern Europe')
;
    
SELECT Name as Country, Region, GNP FROM country
	WHERE Region IN
    (SELECT DISTINCT Region FROM country
    WHERE Region LIKE "%east%")
;
    
-- Had a detour, clearer subquery example below for sure
-- subqueries have to return same value format as it's fitting into,



SELECT
	ROUND(AVG(GNP), 0) AS "Avg GNP by Region",
    (SELECT ROUND(AVG(GNP), 0) FROM country AS country2
		WHERE country2.continent = country.continent) 
        AS "Avg GNP by Continent",
    Continent,
    Region
FROM country
GROUP BY Continent, Region
ORDER BY Continent, Region;

-- if a subquery returns multiple rows or columns, you can use JOIN with it

SELECT country.Name, Language FROM country
	JOIN (
		SELECT countrylanguage.countrycode, countrylanguage.language
		FROM countrylanguage
		WHERE Language LIKE ("%u%")) AS cl
	ON country.code = cl.countrycode;
    
-- UNION is used to vertically stack two SELECT statements, 
	-- automatically deduplicates the unique combinations
-- UNION ALL retains duplicates
-- ex

USE sakila;

SELECT first_name, last_name, email FROM staff
UNION -- ALL
SELECT first_name, last_name, email FROM customer;

-- ex2
USE world;

SELECT language FROM countrylanguage
JOIN country ON country.code = countrylanguage.countrycode
WHERE country.GNP > 1000000
UNION
SELECT language FROM countrylanguage
JOIN country ON country.code = countrylanguage.countrycode
WHERE country.Population > 5000000;

-- union operator is kind of like an OR operator for two sets!
-- INTERSECT is like an AND or an inner join operator! try INTERSECT on above examples
-- ex

USE sakila;

SELECT first_name FROM staff
INTERSECT
SELECT first_name FROM customer;

-- EXCEPT takes the first results and subtracts the second results and their commonality
-- EXCEPT is like a NOT! take this but not whats in the second part
-- ex below, but can try with above examples

SELECT first_name FROM customer
EXCEPT
SELECT first_name FROM staff;
-- removes MIKE, JOHN, and staff from the list compared to a UNION, see INTERSECT to see the duplicates

-- CTEs (common table expressions) can be queried like a table, but is not saved to the database and only exists for the current query
-- temp like a subquery, but defined at top instead of being nested within it, which makes complex queries easier to read and maintain
-- WITH gives you a nice little neat column to work with in the rest of your query
-- some people find CTEs an easier way to see what they need for a query, and then write the main query, ex below

-- comparing common subquery syntax vs cte
use world;

WITH AvgGNPCont AS (
	SELECT Continent
		, ROUND(AVG(GNP), 0) AS "Avg GNP by Continent"
		FROM country
		GROUP BY Continent
)
SELECT
	ROUND(AVG(GNP), 0) AS "Avg GNP by REGION",
	AvgGNPCont.`Avg GBP by Continent`
    , country.Region
    , country.Continent
	FROM country
    JOIN AvgGNPCont ON country.Continent = AvgGNP.Continent;
    
-- CASE structures
	-- basically like an if else, or a when then statement
    -- uses CASE, WHEN, THEN
    -- starts with CASE, ENDS with END
    
USE sakila;
    
SELECT first_name FROM staff; -- going to convert Mike and JON to Skip and JJ

SELECT 
	CASE first_name
		WHEN 'Mike' THEN 'Skip'
        WHEN 'Jon' THEN 'JJ'
        ELSE first_name
	END AS Nickname
FROM staff;

-- can also be used return conditions

SELECT
	customer.customer_id,
    customer.first_name,
    customer.last_name,
    COUNT(rental.rental_id) AS num_of_rentals,
    CASE
		WHEN COUNT(rental.rental_id) > 35 THEN 'Platinum VIP'
        WHEN COUNT(rental.rental_id) > 25 THEN 'Gold VIP'
        WHEN COUNT(rental.rental_id) > 15 THEN 'VIP'
        ELSE 'none'
	END AS 'VIP Status'
FROM customer
JOIN rental ON customer.customer_id = rental.customer_id
GROUP BY customer.customer_id, customer.first_name, customer.last_name
ORDER BY num_of_rentals;

-- WHEN THEN does not separate with commas