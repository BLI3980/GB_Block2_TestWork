-- 10. Удалив из таблицы верблюдов, т.к. верблюдов решили перевезти в другой питомник на зимовку. Объединить таблицы лошади, и ослы в одну таблицу
USE human_friends;
DELETE FROM camels;


SELECT *
FROM horses 
union
SELECT *
FROM donkeys;

/*
11.Создать новую таблицу “молодые животные” в которую попадут все
животные старше 1 года, но младше 3 лет и в отдельном столбце с точностью
до месяца подсчитать возраст животных в новой таблице
*/
DROP TABLE IF EXISTS young_animals;
CREATE TABLE young_animals (
	id TINYINT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    genus_id TINYINT UNSIGNED,
    name VARCHAR(50),
    commands VARCHAR(50),
    birthday DATE,
   	created_at DATETIME DEFAULT NOW(),
   	
   	FOREIGN KEY (genus_id) REFERENCES genuses(id) 
);


INSERT INTO young_animals (genus_id, name, commands, birthday)
VALUES 
	(1, 'Fluffy', 'Catch', '2022-04-25'),
	(2, 'Tiger', 'Jump', '2021-07-23'),
	(5, 'horse4', 'N/A', '2020-11-10'),
	(6, 'donkey4', 'N/A', '2022-01-01');
	

SELECT
  id,
  genus_id,
  name,
  commands,
  birthday,
  TIMESTAMPDIFF(MONTH, birthday, NOW()) AS age
FROM young_animals;

-- 12. Объединить все таблицы в одну, при этом сохраняя поля, указывающие на прошлую принадлежность к старым таблицам
SELECT *
FROM dogs 
union
SELECT *
FROM cats
union
SELECT *
FROM hamsters 
union
SELECT *
FROM camels
union
SELECT *
FROM horses 
union
SELECT *
FROM donkeys






