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
    (2, 1, '2022-01-01'),
    (2, 2, '2022-01-02');