--Create table if not exist with certain requirments
--id, emial, name, country(US, CO, TN)

CREATE TABLE IF NOT EXISTS users (
	id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	email VARCHAR(255) NOT NULL UNIQUE,
	name VARCHAR(255),
	country ENUM('US', 'CO', 'TN') DEFUALT AS 'US' NOT NULL
);
