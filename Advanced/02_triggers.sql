CREATE TABLE `hello_mysql`.`email_history` (
  `email_history_id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `email` VARCHAR(100) NOT NULL,
  PRIMARY KEY (`email_history_id`),
  UNIQUE KEY `email_history_id_UNIQUE` (`email_history_id` ASC), VISIBLE)



delimiter |

CREATE TRIGGER tg_email
AFTER UPDATE ON users
FOR EACH ROW
BEGIN
	IF OLD.email <> NEW.email THEN
		INSERT INTO email_history (user_id, email)
        VALUES (OLD.user_id, OLD.email);
        END IF;
END;

|

delimiter ;

UPDATE users SET email = 'daniel@gmail.com' WHERE user_id = 1;

DROP TRIGGER tg_email;