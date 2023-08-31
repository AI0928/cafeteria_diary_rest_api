DROP TABLE IF EXISTS foods;

CREATE TABLE foods (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(255),
  `energy` DECIMAL(5, 1),
  `protein`  DECIMAL(5, 1),
  `lipid`  DECIMAL(5, 1),
  `cholesterol`  DECIMAL(5, 1),
  `carbohydrates` DECIMAL(5, 1) ,
  PRIMARY KEY (`id`)
);


INSERT INTO foods (name, energy, protein, lipid, cholesterol, carbohydrates) VALUES ('apple', 52.0, 0.3, 0.2, 0.0, 14.0);
INSERT INTO foods (name, energy, protein, lipid, cholesterol, carbohydrates) VALUES ('banana', 89.0, 1.1, 0.3, 0.0, 23.9);