DROP TABLE IF EXISTS employees;

CREATE TABLE employees (
    `id` INT NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(255) NOT NULL,
    `age` INT,
    `gender` ENUM('male', 'female', 'other'),
    PRIMARY KEY (`id`)
);

INSERT INTO employees (name, age, gender) VALUES
    ('ItouHirobumi', 30, 'male'),
    ('HiguchiIchiyo', 25, 'female'),
    ('NoguchiHideyo', 40, 'male');