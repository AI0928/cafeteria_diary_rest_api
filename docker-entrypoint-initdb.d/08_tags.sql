DROP TABLE IF EXISTS tags;

CREATE TABLE tags (
    `id` INT NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(255) NOT NULL,
    `point` INT NOT NULL,
    PRIMARY KEY (id)
);

alter table tags default character set utf8mb4;

INSERT INTO tags (name, point) 
VALUES ('Exel', 1),
       ('Golang', 1),
       ('Vue', 1),
       ('Soccer', 1),
       ('Baseball', 1),
       ('Photography', 1);