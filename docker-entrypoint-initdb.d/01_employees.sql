DROP TABLE IF EXISTS employees;

CREATE TABLE employees (
    `id` INT NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(255) NOT NULL,
    `age` INT,
    `gender` ENUM('male', 'female', 'other'),
    PRIMARY KEY (`id`)
);

INSERT INTO employees (name, age, gender) VALUES
    ('Itou Hirobumi', 30, 'male'),
    ('Higuchi Ichiyo', 25, 'female'),
    ('Noguchi Hideyo', 40, 'male');