--Cоздать новую базу данных с названием “all_world”
CREATE DATABASE all_world;
--Cоздать новую таблицу “world”
CREATE TABLE world (id int (5), country varchar (20), population int (50), rating int (50), economy int (50), territory int (50));
--Заполнить таблицу данными
INSERT INTO world (id, country, population, rating, economy, territory)
values (1,'Russia',143300000,110,95,17075400);
 INSERT INTO world (id, country, population, rating, economy, territory)
values (2,'USA',310241000,128,140,9372610);
 INSERT INTO world (id, country, population, rating, economy, territory)
values (3,'Germany', 81802000,151,160,357022);
 INSERT INTO world (id, country, population, rating, economy, territory)
values (4,'France', 65447000,151,140,547030);
 INSERT INTO world (id, country, population, rating, economy, territory)
values (5,'Italy', 60402000, 151,130,301230);
 INSERT INTO world (id, country, population, rating, economy, territory)
values (6,'Spain',46073000,130,120,504782);
 INSERT INTO world (id, country, population, rating, economy, territory)
values (7,'China', 1339450000, 149,185,9596960);
 INSERT INTO world (id, country, population, rating, economy, territory)
values (8,'Japan', 127390000, 172,185,377835);
 INSERT INTO world (id, country, population, rating, economy, territory)
values (9,'Brazil', 193467000,97,85,8547000);
 INSERT INTO world (id, country, population, rating, economy, territory)
values (10,'IRAQ',31467000,104,90,437072);
 INSERT INTO world (id, country, population, rating, economy, territory)
values (11,'Sweden', 9380000,172,130,449964);
INSERT INTO world (id, country, population, rating, economy, territory)
values (NULL, NULL, NULL, NULL, NULL, NULL);
--Выбрать все столбцы в таблице
SELECT * FROM world;
--Выбрать только столбец “country”
SELECT country FROM world;
--Выбрать только уникальные строки в “rating” и “economy”
SELECT DISTINCT rating, economy FROM world;
--Выбрать любые 2-3 столбца и отсортировать их по 2-му столбцу (по убыванию)
SELECT population, rating, economy FROM world ORDER BY rating DESC;
--Выбрать столбцы “population” и “rating”, с рейтингом более 100
SELECT population, rating FROM world WHERE rating >100;
--Выбрать столбцы “population” и “rating”, с id равным 1
SELECT population, rating FROM world WHERE id = 1;
--Выбрать все записи из таблицы, где столбец “id” пуст
SELECT * FROM world WHERE id IS NULL;
-- Вставить новую запись в таблицу (чтобы получилась 13я страна со всеми данными)
INSERT INTO world (id, country, population, rating, economy, territory) VALUES (13, “Ireland”,5000000,73,59,600500);
--Обновить запись в “territory” на любое новое значение, у которой id равен двум
SET SQL_SAFE_UPDATES = 0;
UPDATE world SET territory = 100000 WHERE id = 2;
--Обновить все записи в “territory” на любое новое значение
UPDATE world SET territory = 10000;
--Обновить запись в “economy” на любое новое значение, только для двух строк в столбце
UPDATE world SET economy = 5000 LIMIT 2;
--Удалить строчку, с id равным 10
DELETE FROM world WHERE id=10;
--Удалить столбец “population”
ALTER TABLE world DROP population;
--Добавить столбец “science” и поместить его в начало списка
ALTER TABLE world ADD science varchar(20) first;
--Посчитать сумму в столбце “economy”
SELECT SUM(economy) FROM world;
--Определить максимальное значение в столбце “rating”
SELECT MAX(rating) FROM world;
--Определить минимальное значение в столбце “economy”
SELECT MIN(economy) FROM world;
