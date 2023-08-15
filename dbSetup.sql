CREATE TABLE IF NOT EXISTS accounts(
  id VARCHAR(255) NOT NULL primary key COMMENT 'primary key',
  createdAt DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT 'Time Created',
  updatedAt DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Last Update',
  name varchar(255) COMMENT 'User Name',
  email varchar(255) COMMENT 'User Email',
  picture varchar(255) COMMENT 'User Picture'
) default charset utf8 COMMENT '';

CREATE TABLE zFighters(
  id INT NOT NULL PRIMARY KEY AUTO_INCREMENT COMMENT 'primary key',
  createdAt DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT 'Time Created',
  updatedAt DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Last Update',
  name VARCHAR(255) COMMENT 'User Name',
  race VARCHAR(255) COMMENT 'Fighters Race',
  powerLevel Int DEFAULT 100 COMMENT 'Fighters power level',
  isAlive BOOLEAN DEFAULT true COMMENT 'Fighters status'
) DEFAULT CHARSET utf8 COMMENT '';

DROP TABLE zFighters;

INSERT INTO `zFighters`(name, race, powerLevel, isAlive)
VALUES
('Goku', 'Saiyan', 9001, false),
('Vegeta', 'Saiyan', 1100, true),
('Piccolo', 'Namekian', 6000, true);

SELECT * FROM `zFighters` WHERE `isAlive` = TRUE;

CREATE TABLE houses(
  id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    createdAt DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT 'Time Created',
  updatedAt DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Last Update',
  name VARCHAR(255) NOT NULL,
  color VARCHAR(255) NOT NULL,
  year SMALLINT UNSIGNED DEFAULT 1800,
  price DECIMAL NOT NULL,
  haunted BOOLEAN DEFAULT false
) DEFAULT CHARSET utf8 COMMENT '';

DROP TABLE houses;

INSERT INTO houses (name, color, year, price, haunted)
VALUES 
('ye oldy', 'grey', 1805, 20000, true),
('New home', 'white', 2012, 99999, false);

UPDATE houses 
SET
haunted = false,
color = 'pink'
WHERE name = 'New home' LIMIT 1;