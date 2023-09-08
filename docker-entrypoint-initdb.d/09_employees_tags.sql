DROP TABLE IF EXISTS employees_tags;

CREATE TABLE employees_tags (
    `id` INT NOT NULL AUTO_INCREMENT,
    `employee_id` INT NOT NULL,
    `matche_id` INT NOT NULL,
    `tags_id` INT NOT NULL,
    PRIMARY KEY (id)
);

alter table employees_tags default character set utf8mb4;

INSERT INTO employees_tags (employee_id, matche_id, tags_id) 
VALUES (1, 0, 1),
       (2, 0, 2),
       (3, 0, 3),
       (1, 0, 4),
       (2, 0, 5),
       (3, 0, 6),
       (1, 0, 2),
       (2, 0, 3),
       (0, 1, 4),
       (0, 1, 5),
       (0, 2, 1),
       (0, 3, 2),
       (0, 3, 3);

