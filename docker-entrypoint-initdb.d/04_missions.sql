DROP TABLE IF EXISTS missions;

CREATE TABLE missions (
  `id` INT NOT NULL AUTO_INCREMENT,
  `employee_id` INT NOT NULL,
  `name` VARCHAR(255) NOT NULL,
  `description` TEXT NOT NULL,
  `start_date` DATE NOT NULL,
  `end_date` DATE NOT NULL,
  `status` VARCHAR(255) NOT NULL,
  PRIMARY KEY (id)
);

INSERT INTO missions (employee_id, name, description, start_date, end_date, status) VALUES (1, 'Mission 1', 'Mission 1 description', '2023-09-01', '2023-09-30', 'In progress');
INSERT INTO missions (employee_id, name, description, start_date, end_date, status) VALUES (2, 'Mission 2', 'Mission 2 description', '2023-10-01', '2023-10-31', 'In progress');
INSERT INTO missions (employee_id, name, description, start_date, end_date, status) VALUES (3, 'Mission 3', 'Mission 3 description', '2023-11-01', '2023-11-30', 'In progress');
INSERT INTO missions (employee_id, name, description, start_date, end_date, status) VALUES (1, 'Mission 4', 'Mission 4 description', '2023-12-01', '2023-12-31', 'In progress');