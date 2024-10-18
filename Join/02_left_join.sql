SELECT * FROM users
LEFT JOIN dni
ON users.user_id = dni.user_id;

SELECT name, dni_number FROM users
LEFT JOIN dni
ON users.user_id = dni.user_id;

SELECT name, dni_number FROM dni
LEFT JOIN users
ON users.user_id = dni.user_id;