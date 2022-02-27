USE sakila;

-- Selecciona todas las peliculas que tienen la categoria de drama
SELECT*FROM film_category WHERE category_id = 7;

-- Esto es lo mismo de arriba, pero de una consulta haces otra, pero solo funciona con id, si metes category ya no funciona porque son todos los datos.
SELECT*FROM film WHERE film_id IN(SELECT film_id FROM film_category WHERE category_id = 7);

-- Obtener los datos de las peliculas de una categoria
SELECT*FROM film WHERE film_id IN (1,2,3,6,4);

-- Obtener todas las peliculas en donde haya participado una actriz o actor
SELECT*FROM film WHERE film_id IN (SELECT film_id FROM film_actor WHERE actor_id = 14);
SELECT film_id FROM film_actor WHERE actor_id = 14; -- es lo mismo

-- Beetween nos permite seleccionar un rango e valores
SELECT*FROM actor WHERE actor_id BETWEEN 16 AND 35;

SELECT * FROM film WHERE film_id IN (SELECT film_id FROM film_actor WHERE actor_id = (SELECT actor_id FROM actor WHERE first_name = 'RITA' AND last_name = 'REYNOLDS'));


