DROP TABLE IF EXISTS employee_food;

CREATE TABLE employee_food (
    `employee_id` INT NOT NULL,
    `food_id` INT NOT NULL,
    `date` DATE NOT NULL,
    PRIMARY KEY (`employee_id`, `food_id`, `date`)
);

INSERT INTO employee_food (employee_id, food_id, date) VALUES
    (1, 1, '2022-01-01'),
    (1, 2, '2022-01-02'),
    (1, 3, '2022-01-03'),
    (1, 6, '2022-01-04'),
    (1, 5, '2022-01-05'),
    (2, 7, '2022-01-01'),
    (2, 2, '2022-01-02'),
    (2, 5, '2022-01-03'),
    (2, 4, '2022-01-04'),
    (2, 8, '2022-01-05'),
    (3, 4, '2022-01-01'),
    (3, 5, '2022-01-02'),
    (3, 6, '2022-01-03'),
    (3, 1, '2022-01-04'),
    (3, 8, '2022-01-05');