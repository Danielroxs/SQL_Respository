START TRANSACTION;
INSERT INTO users (name, surname, age, email) VALUES ('Daniel', 'Rodriguez', 30, 'daniel@gmail.com');
INSERT INTO users (name, surname, age, email) VALUES ('Maria', 'Rodriguez', 30, 'maria@gmail.com');
COMMIT; /* Commit the transaction  PARA CONFIRMAR LAS TABLAS */

START TRANSACTION;
INSERT INTO users (name, surname, age, email) VALUES ('Daniel', 'Rodriguez', 30, 'daniel@gmail.com');
INSERT INTO users (name, surname, age, email) VALUES ('Maria', 'Rodriguez', 30, 'maria@gmail.com');
ROLLBACK; /* Rollback the transaction PARA DEVOLVER LAS TABLAS A SU ESTADO ANTERIOR */