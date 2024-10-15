SELECT name, init_date AS 'Fecha de inicio en programacion' FROM users WHERE age BETWEEN 20 AND 31;

SELECT name, init_date AS "Fecha de inicio en programacion" FROM users WHERE name = "Dan";

SELECT CONCAT('Nombre: ', name, ', Apellido: ', surname) FROM users;

SELECT CONCAT('Nombre: ', name, ', Apellido: ', surname) AS "Nombre Completo" FROM users;