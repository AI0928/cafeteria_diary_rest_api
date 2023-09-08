DROP TABLE IF EXISTS employee_healths;

CREATE TABLE employee_healths (
    `employee_id` INT NOT NULL,
    `checkup_date` DATE NOT NULL,
    `height` FLOAT,
    `weight` FLOAT,
    `blood_pressure` VARCHAR(10),
    `blood_sugar` FLOAT,
    `cholesterol` FLOAT,
    PRIMARY KEY (`employee_id`, `checkup_date`)
);

alter table employee_healths default character set utf8mb4;

INSERT INTO employee_healths (employee_id, checkup_date, height, weight, blood_pressure, blood_sugar, cholesterol)
VALUES (1, '2023-08-31', 170.5, 65.2, '120/80', 100.0, 200.0),
       (2, '2023-08-31', 160.0, 50.0, '110/70', 80.0, 170.0),
       (3, '2023-08-31', 170.0, 60.0, '120/80', 90.0, 180.0),
       (4, '2023-08-31', 175.0, 70.0, '130/80', 100.0, 190.0);