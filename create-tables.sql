use test_db;

CREATE TABLE IF NOT EXISTS countries (
	id INT AUTO_INCREMENT PRIMARY KEY,
	name VARCHAR(50) NOT NULL,
	iso CHAR(3)
);

CREATE TABLE IF NOT EXISTS users (
	id INT AUTO_INCREMENT PRIMARY KEY,
	email VARCHAR(80) NOT NULL,
	citizenship_country_id INT,
	CONSTRAINT `fk_user_country` FOREIGN KEY (citizenship_country_id) REFERENCES countries (id)
);