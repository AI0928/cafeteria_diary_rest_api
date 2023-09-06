DROP TABLE IF EXISTS employees_matches;

CREATE TABLE employees_matches (
  `id` INT NOT NULL AUTO_INCREMENT,
  `employee_id` INT NOT NULL,
  `group_id` INT NOT NULL,
  PRIMARY KEY (id)
);

INSERT INTO employees_matches (employee_id, group_id) VALUES (1, 1), (2, 2), (3, 3), (1, 2), (2, 3), (3, 1);