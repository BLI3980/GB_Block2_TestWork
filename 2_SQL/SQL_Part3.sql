-- 9. Заполнить низкоуровневые таблицы именами(животных), командами, которые они выполняют и датами рождения
USE human_friends;

INSERT INTO domestic_groups (name)
VALUES 
	('Pet_animals'),
	('Pack_animals'); 

INSERT INTO genuses (domestic_group_id, genus_name)
VALUES 
	(1, 'dogs'),
	(1, 'cats'),
	(1, 'hamsters'),
	(2, 'camels'),
	(2, 'horses'),
	(2, 'donkeys');

INSERT INTO dogs (genus_id, name, commands, birthday)
VALUES 
	(1, 'Charlie', 'Sit, Stay, Lie down, Fetch, Roll over', '2020-02-05'),
	(1, 'Bailey', 'Sit, Stay, Fetch', '2015-11-16'),
	(1, 'Bear', 'Sit, Lie down, Roll over', '2022-09-04');
	
INSERT INTO cats (genus_id, name, commands, birthday)
VALUES 
	(2, 'Simba', 'Come, Stop, Do not even think about it', '2016-03-07'),
	(2, 'Leo', 'Eat, Jump', '2018-08-14'),
	(2, 'Kitty', 'Sit, Roll over, Freeze', '2022-01-07');

INSERT INTO hamsters (genus_id, name, commands, birthday)
VALUES 
	(3, 'Ginger', 'Come, Eat, Sleep', '2014-08-01'),
	(3, 'Biscuit', 'Come, Eat, Sleep','2020-11-12'),
	(3, 'Chip', 'Come, Eat, Sleep', '2009-04-07');

INSERT INTO camels (genus_id, name, commands, birthday)
VALUES 
	(4, 'camel1', 'N/A', '2010-08-25'),
	(4, 'camel2', 'N/A', '2012-11-10'),
	(4, 'camel3', 'N/A', '2014-09-03');

INSERT INTO horses (genus_id, name, commands, birthday)
VALUES 
	(5, 'horse1', 'N/A', '2013-04-23'),
	(5, 'horse2', 'N/A', '2019-11-07'),
	(5, 'horse3', 'N/A', '2011-06-21');

INSERT INTO donkeys (genus_id, name, commands, birthday)
VALUES 
	(6, 'donkey1', 'N/A', '2020-05-25'),
	(6, 'donkey2', 'N/A', '2012-11-29'),
	(6, 'donkey3', 'N/A', '2014-02-16');
	
