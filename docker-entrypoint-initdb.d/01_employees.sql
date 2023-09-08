DROP TABLE IF EXISTS employees;

CREATE TABLE employees (
    `id` INT NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(255) NOT NULL,
    `password` VARCHAR(255) NOT NULL,
    `age` INT,
    `gender` ENUM('male', 'female', 'other'),
    `mileage` INT,
    PRIMARY KEY (`id`)
);


alter table employees default character set utf8mb4;

INSERT INTO employees (name, password, age, gender, mileage) VALUES
    ('ItouHirobumi', 'ItouHirobumi', 30, 'male', 0),
    ('HiguchiIchiyo', 'HiguchiIchiyo', 25, 'female', 0),
    ('NoguchiHideyo', 'NoguchiHideyo', 40, 'male', 0);