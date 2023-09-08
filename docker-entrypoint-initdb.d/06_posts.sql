DROP TABLE IF EXISTS posts;

CREATE TABLE posts (
  `id` INT PRIMARY KEY AUTO_INCREMENT,
  `employee_id` INT NOT NULL,
  `title` VARCHAR(255),
  `content` TEXT,
  `created_at` DATE
);

alter table posts default character set utf8mb4;

INSERT INTO posts (employee_id, title) VALUES (1, '1のPOST');
INSERT INTO posts (employee_id, title) VALUES (2, '2のPOST');
INSERT INTO posts (employee_id, title) VALUES (3, '3のPOST');
INSERT INTO posts (employee_id, title) VALUES (1, '1の二回目のPOST');