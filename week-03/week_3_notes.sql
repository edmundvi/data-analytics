
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
