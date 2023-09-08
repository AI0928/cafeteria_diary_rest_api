DROP TABLE IF EXISTS matches;

CREATE TABLE matches (
  `id` INT NOT NULL AUTO_INCREMENT,
  `employee_id` INT NOT NULL,
  `group_id` INT NOT NULL,
  `name` VARCHAR(255) NOT NULL,
  `description` TEXT NOT NULL,
  `date` DATE NOT NULL,
  `status` VARCHAR(255) NOT NULL,
  PRIMARY KEY (id)
);

alter table matches default character set utf8mb4;

INSERT INTO matches (employee_id, group_id, name, description, date, status) 
VALUES (1, 1, 'soccer+baseball', 'soccer+baseball', '2023-09-05', 'end'), 
(2, 2, 'excel', 'excel', '2023-09-06', 'wanted'), 
(3, 3, 'Golang+Vue', 'Golang+Vue', '2023-09-07', 'wanted');
