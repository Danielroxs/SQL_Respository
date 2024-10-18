SELECT * FROM users
RIGHT JOIN dni
ON users.user_id = dni.user_id;

SELECT name, dni_number FROM users
RIGHT JOIN dni
ON users.user_id = dni.user_id;



SELECT name, dni_number FROM dni
RIGHT JOIN users
ON users.user_id = dni.user_id;