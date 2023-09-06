DROP TABLE IF EXISTS foods;

CREATE TABLE foods (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(255),
  `energy` DECIMAL(5, 1),
  `protein`  DECIMAL(5, 1),
  `lipid`  DECIMAL(5, 1),
  `carbohydrates` DECIMAL(5, 1),
  PRIMARY KEY (`id`)
);


INSERT INTO foods (name, energy, protein, lipid, carbohydrates) 
VALUES ('鯖の味噌煮', 420.0, 32.6, 27.8, 13.2),
       ('カツカレー', 1024, 26.95, 46.98, 134.39),
       ('醤油ラーメン', 432, 21.13, 8.64, 72.49),
       ('ポテトサラダ', 100, 2.94, 6.85, 9.98),
       ('うどん', 	219, 5.98, 0.92, 49.68),
       ('豆腐ハンバーグ', 228, 17.98, 15.82, 5.4),
       ('鮭のムニエル', 211, 18.67, 13.21, 5.97),
       ('ピザ', 842, 40.38, 35.72, 97.7);