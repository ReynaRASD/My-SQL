/*
MAX nos permite obtener el valor maximo 
MIN nos permite obtener el valor minimo 
AVG nos permite obtener un promedio 
SUM nos todos los elementos de una columna 
*/ 

SELECT * FROM film ORDER BY length DESC LIMIT 1;  

-- Obtiene la mayor duracion, esto solo nos devuelve el numero, osea solo dato 
SELECT MAX(length) FROM film; 

SELECT MAX(RENTAL_RATE) from film;  

-- Obtiene la menor duracion 
SELECT MIN(length) FROM film; 

-- AVG Nos permite obtener el promedio de duracion 
SELECT AVG(length) FROM film; 

-- Nos permite obtener la suma de los elementos de las columnas 
SELECT SUM(replacement_cost) FROM film;  
