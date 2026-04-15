/*
a) Under actor columns, I see categories describing actors such as 'actor_id' and 'first_name'.
b) Under film columns, I see categories describing films such as 'title' and 'length'.
c) 'film_actor' also contains both 'actor_id' and 'film_id'.
d) The 'rental' table includes info about different rentals, such as the date of the rental, who rented, and when it was rented. The info is easy to read but difficult to understand with so many rows.alter
e) The 'inventory' table includes info about what films are currently stored where in the inventory. I do think it can be difficult to read with repeating store ids and film ids in the same column.
f) The tables I'd need to understand the names of all films that were rented are 'film' and 'rental'. Rental tells you the id's of what's been rented when, and film will tell you the name of the films from their id.
*/

SELECT rental_date FROM rental;
SELECT inventory_id FROM rental;
SELECT film_id FROM rental;
SELECT film_id FROM film;
SELECT title FROM film;

