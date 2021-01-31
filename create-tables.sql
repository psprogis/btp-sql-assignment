-- fix warning with pk name
-- use NOT NULL AUTO_INCREMENT PRIMARY KEY for pks
CREATE TABLE IF NOT EXISTS countries (
	id INT,
	name VARCHAR(50) NOT NULL,
	iso VARCHAR(3),
	CONSTRAINT `pk_countries` PRIMARY KEY(id)
);

CREATE TABLE IF NOT EXISTS users (
	id INT,
	email VARCHAR(80) NOT NULL,
	citizenship_country_id INT,
  	CONSTRAINT `pk_users` PRIMARY KEY(id),
	CONSTRAINT `fk_user_country` FOREIGN KEY (citizenship_country_id) REFERENCES countries (id)
);