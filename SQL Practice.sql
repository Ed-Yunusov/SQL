-- 1. Cоздать новую базу данных с названием “all_world”
CREATE DATABASE all_world;
-- 2. Cоздать новую таблицу “world”
CREATE TABLE world (id int (5), country varchar (20), population int (50), rating int (50), economy int (50), territory int (50));
-- 3. Заполнить таблицу данными
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
-- 4. Выбрать все столбцы в таблице
SELECT * FROM world;
-- 5. Выбрать только столбец “country”
SELECT country FROM world;
-- 6. Выбрать только уникальные строки в “rating” и “economy”
SELECT DISTINCT rating, economy FROM world;
-- 7. Выбрать любые 2-3 столбца и отсортировать их по 2-му столбцу (по убыванию)
SELECT population, rating, economy FROM world ORDER BY rating DESC;
-- 8. Выбрать столбцы “population” и “rating”, с рейтингом более 100
SELECT population, rating FROM world WHERE rating >100;
-- 9. ыбрать столбцы “population” и “rating”, с id равным 1
SELECT population, rating FROM world WHERE id = 1;
-- 10. Выбрать все записи из таблицы, где столбец “id” пуст
SELECT * FROM world WHERE id IS NULL;
-- 11. Вставить новую запись в таблицу (чтобы получилась 13я страна со всеми данными)
INSERT INTO world (id, country, population, rating, economy, territory) VALUES (13, “Ireland”,5000000,73,59,600500);
-- 12. Обновить запись в “territory” на любое новое значение, у которой id равен двум
SET SQL_SAFE_UPDATES = 0;
UPDATE world SET territory = 100000 WHERE id = 2;
-- 13. Обновить все записи в “territory” на любое новое значение
UPDATE world SET territory = 10000;
-- 14. Обновить запись в “economy” на любое новое значение, только для двух строк в столбце
UPDATE world SET economy = 5000 LIMIT 2;
-- 15. Удалить строчку, с id равным 10
DELETE FROM world WHERE id=10;
-- 16. Удалить столбец “population”
ALTER TABLE world DROP population;
-- 17. Добавить столбец “science” и поместить его в начало списка
ALTER TABLE world ADD science varchar(20) first;
-- 18. Посчитать сумму в столбце “economy”
SELECT SUM(economy) FROM world;
-- 19. Определить максимальное значение в столбце “rating”
SELECT MAX(rating) FROM world;
-- 20. Определить минимальное значение в столбце “economy”
SELECT MIN(economy) FROM world;
