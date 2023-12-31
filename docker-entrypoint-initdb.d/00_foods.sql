DROP TABLE IF EXISTS foods;

CREATE TABLE foods (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(255),
  `energy` DECIMAL(5, 1),
  `protein`  DECIMAL(5, 1),
  `lipid`  DECIMAL(5, 1),
  `carbohydrates` DECIMAL(5, 1),
  `salinity` DECIMAL(5, 1),
  PRIMARY KEY (`id`)
);

alter table foods default character set utf8mb4;

INSERT INTO foods (name, energy, protein, lipid, carbohydrates, salinity) 
VALUES ('サバの味噌煮定食', 764, 39.62, 28.79, 93.37, 3.71),
       ('カツカレー', 1024, 26.95, 46.98, 134.39, 3.46),
       ('醤油ラーメン', 432, 21.13, 8.64, 72.49, 6.74),
       ('ポテトサラダ', 100, 2.94, 6.85, 9.98, 0.78),
       ('うどん', 	219, 5.98, 0.92, 49.68, 0.69),
       ('豆腐ハンバーグ', 228, 17.98, 15.82, 5.4, 2.16),
       ('鮭のムニエル', 211, 18.67, 13.21, 5.97, 1.23),
       ('ピザ', 842, 40.38, 35.72, 97.7, 5.26);