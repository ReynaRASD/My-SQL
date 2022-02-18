/* 
Consultas de agrupamiento 
Las utilizamos para agrupar resultados que tengan el mismo valor 
*/  

SELECT * FROM inventory GROUP BY store_id; 

SELECT * FROM rental GROUP BY customer_id;  

-- Los GROUP BY tambien sirven para realizar un conteo 
-- Selecciona el country id y el numero de ciudades que tiene cada pais agrupado por pais 
SELECT country_id, COUNT(city_id) AS 'total_de_ciudades' FROM city GROUP BY country_id; 

-- Cuantas ciudades hay por pais, se le pone el numero 1 
SELECT * FROM city WHERE country_id = 1; 

-- Filtra los paises que tienen menos de dos ciudades el Having se utiliza cuando hacems consultas de este tipo 
SELECT country_id, COUNT(city_id) AS 'total_de_ciudades' FROM city GROUP BY country_id HAVING total_de_ciudades > 2; 

-- Obtener el pais que tenga mas ciudades con limit 1, seleccionamos al que tiene mas, si quieremos ver todos simplemente lo quitamos 
SELECT country_id, count(city_id) as 'Total_de_Ciudades' FROM city GROUP BY country_id ORDER BY Total_de_Ciudades DESC LIMIT 1; 

-- Pelicula que tenga una mayor duracion (Ejercicio)
SELECT * FROM film WHERE length ORDER BY length DESC LIMIT 1; 
/*
Respuesta de Carlos 
SELECT * FORM film ORDER BY length DESC LIMIT 1; 
*/

