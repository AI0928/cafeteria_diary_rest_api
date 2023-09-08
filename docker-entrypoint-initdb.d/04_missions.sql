DROP TABLE IF EXISTS missions;

CREATE TABLE missions (
  `id` INT NOT NULL AUTO_INCREMENT,
  `employee_id` INT NOT NULL,
  `name` VARCHAR(255) NOT NULL,
  `description` TEXT NOT NULL,
  `check_item` VARCHAR(255) NOT NULL,
  `level` DECIMAL(5, 1),
  `status` VARCHAR(255) NOT NULL,
  PRIMARY KEY (id)
);

alter table missions default character set utf8mb4;

INSERT INTO missions (employee_id, name, description, check_item, level, status) 
VALUES (1, 'Mission 1', 'Mission 1 description', 'salinity', 2, 'success'),
       (2, 'Mission 2', 'Mission 2 description', 'salinity', 2, 'Active'),
       (3, 'Mission 3', 'Mission 3 description', 'energy', 500, 'Active'),
       (1, 'Mission 4', 'Mission 4 description', 'energy', 500, 'Active');