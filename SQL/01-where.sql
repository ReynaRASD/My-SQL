/*
Where nos permite obtener valores a traves de un campo especifico
*/

USE sakila;
-- Obtiene todas las columnas, la informacion de la tabla actor.
SELECT*FROM actor;
SELECT actor_id, first_name, last_name FROM actor; -- solo selecciona las columnas que quieras

/*
OPERADORES DE COMPARACION:

Igual           =
Distinto        !=
Menor           <
Mayor           >
Menor o igual   <=
Mayor o igual   >=
Entre           between A and B
En              in
Es nulo         is null
No nulo         is not null
Como            like
No es como      not like

*/

-- selecciona de la tabla actor y columna first_name todas las personas que no se llamen Penelope
SELECT*FROM actor WHERE first_name != 'Penelope';

SELECT*FROM film WHERE film_id > 50;

SELECT*FROM film WHERE film_id <= 50;

-- Selecciona de la tabla customer los id's pares
SELECT*FROM customer WHERE customer_id % 2 = 0;

SELECT*FROM film WHERE rental_rate = 2.99 AND rating = 'PG-13';

/* Comodines */

-- Selecciona de la tabla actor todas las personas cuyo fisrt_name termina con e
SELECT*FROM actor WHERE first_name LIKE '%e';

-- Selecciona de la tabla actor todas las personas cuyo fist_name inicia con an
SELECT * FROM actor WHERE first_name LIKE 'an%';

-- Que contenga una "n", no importa la posición en donde esté. 
SELECT * FROM actor WHERE last_name LIKE '%n%';

-- Solo hace falta que una de las condiciones se cumpla
SELECT * FROM actor WHERE first_name LIKE 'b%' OR last_name LIKE 'b%';

SELECT*FROM actor WHERE first_name LIKE '%k_r%';