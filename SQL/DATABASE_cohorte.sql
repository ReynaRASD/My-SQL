CREATE SCHEMA Generetion;
USE GENERETION;

-- CREA TABLE
CREATE TABLE cohorte(id INT NOT NULL auto_increment, primary key(id));
ALTER TABLE cohorte ADD COLUMN nombre varchar(255) NOT NULL;
ALTER TABLE cohorte ADD COLUMN edad INT NOT NULL;

-- AGREGAR DATOS
INSERT INTO cohorte (nombre, edad) values
('Pedro', 15),
('Lucia', 24),
('Esperanza', 54);

-- mostrar datos
SELECT*FROM cohorte; -- para la tabla seleccionada por defecto
SELECT*FROM world.city; -- mostrar una tabla que no esta seleccionada
SELECT nombre FROM cohorte;
SELECT CountryCode, Population FROM world.city;
SELECT Name AS 'Nombre de los paises' FROM world.country; -- agregar un alias

-- UPDATE -- ACTUALIZAR VALORES
UPDATE cohorte SET nombre = 'Juan'; -- si no usamos el where se corre el riesgo de cambiar todos los valores de la columna

UPDATE cohorte SET
nombre = 'Juan',
edad = 30
WHERE id = 2;

-- DELETE borrar un registro o toda la columna
-- DELETE from cohorte;  -- esto elimina todo
-- no usar DELETE sin WHERE

DELETE FROM cohorte WHERE id = 3;
