SELECT * FROM users
INNER JOIN dni

SELECT * FROM users
INNER JOIN dni
ON users.user_id = dni.user_id; 

SELECT * FROM users
JOIN dni
ON users.user_id = dni.user_id; 

SELECT name, dni_number,age FROM users
JOIN dni
ON users.user_id = dni.user_id
ORDER BY age ASC;

SELECT * FROM users
JOIN companies
ON users.company_id = companies.company_id;

SELECT * FROM companies
JOIN users
ON users.company_id = companies.company_id;

SELECT companies.name, users.name FROM companies
JOIN users
ON companies.company_id = users.company_id;

SELECT users.name, languajes.name
FROM users_languajes
JOIN users ON users_languajes.user_id = users.user_id
JOIN languajes ON users_languajes.languaje_id = languajes.languaje_id; 

SELECT users.name, languajes.name
FROM users
JOIN users_languajes ON users.user_id = users_languajes.user_id
JOIN languajes ON users_languajes.languaje_id = languajes.languaje_id; 