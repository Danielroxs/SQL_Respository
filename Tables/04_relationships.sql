CREATE TABLE dni(
	dni_id int  AUTO_INCREMENT PRIMARY KEY,
    dni_number int NOT NULL,
    user_id int,
    UNIQUE(dni_id),
    FOREIGN KEY(user_id) REFERENCES users(user_id)
)

CREATE TABLE companies(
	company_id int AUTO_INCREMENT PRIMARY KEY,
    name varchar(100) NOT NULL,
)

ALTER TABLE users
	ADD company_id int,
	ADD FOREIGN KEY(company_id) REFERENCES companies(company_id)

CREATE TABLE languajes(
	languaje_id int AUTO_INCREMENT PRIMARY KEY,
    name varchar(100) NOT NULL
)

CREATE TABLE users_languajes(
	users_languaje_id int AUTO_INCREMENT PRIMARY KEY,
    user_id int,
    languaje_id int,
    FOREIGN KEY(languaje_id) REFERENCES languajes(languaje_id),
    FOREIGN KEY(user_id) REFERENCES users(user_id),
    UNIQUE(user_id, languaje_id)
)

INSERT INTO companies (name) VALUES ('RoxDev');
INSERT INTO companies (name) VALUES ('DanDev');
INSERT INTO companies (name) VALUES ('LinkDev');