/*
В виду неясности формулировки заданий контрольной работы и того, что на вопросы в чате 
платформы никто не отвечает, задания выполнены так, как я понял и посчитал правильным.
*/

-- 8. Создать таблицы с иерархией из диаграммы в БД

DROP DATABASE IF EXISTS human_friends;
CREATE DATABASE human_friends;
USE human_friends;

DROP TABLE IF EXISTS domestic_groups;
CREATE TABLE domestic_groups(
    id TINYINT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(50) UNIQUE,
   	created_at DATETIME DEFAULT NOW()
) COMMENT 'main table';


DROP TABLE IF EXISTS genuses;
CREATE TABLE genuses(	
    id TINYINT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    domestic_group_id TINYINT UNSIGNED NOT NULL,
    genus_name VARCHAR(50) UNIQUE,
   	created_at DATETIME DEFAULT NOW(),
   	
   	FOREIGN KEY (domestic_group_id) REFERENCES domestic_groups(id) 
);


DROP TABLE IF EXISTS dogs;
CREATE TABLE dogs(	
    id TINYINT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    genus_id TINYINT UNSIGNED NOT NULL,
    name VARCHAR(50),
    commands VARCHAR(50),
    birthday DATE,
   	created_at DATETIME DEFAULT NOW(),
   	
   	FOREIGN KEY (genus_id) REFERENCES genuses(id) 
);

DROP TABLE IF EXISTS cats;
CREATE TABLE cats(	
    id TINYINT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    genus_id TINYINT UNSIGNED NOT NULL,
    name VARCHAR(50),
    commands VARCHAR(50),
    birthday DATE,
   	created_at DATETIME DEFAULT NOW(),
   	
   	FOREIGN KEY (genus_id) REFERENCES genuses(id) 
);

DROP TABLE IF EXISTS hamsters;
CREATE TABLE hamsters(	
    id TINYINT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    genus_id TINYINT UNSIGNED NOT NULL,
    name VARCHAR(50),
    commands VARCHAR(50),
    birthday DATE,
   	created_at DATETIME DEFAULT NOW(),
   	
   	FOREIGN KEY (genus_id) REFERENCES genuses(id) 
);

DROP TABLE IF EXISTS horses;
CREATE TABLE horses(	
    id TINYINT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    genus_id TINYINT UNSIGNED NOT NULL,
    name VARCHAR(50),
    commands VARCHAR(50),
    birthday DATE,
   	created_at DATETIME DEFAULT NOW(),
   	
   	FOREIGN KEY (genus_id) REFERENCES genuses(id) 
);

DROP TABLE IF EXISTS camels;
CREATE TABLE camels(	
    id TINYINT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    genus_id TINYINT UNSIGNED NOT NULL,
    name VARCHAR(50),
    commands VARCHAR(50),
    birthday DATE,
   	created_at DATETIME DEFAULT NOW(),
   	
   	FOREIGN KEY (genus_id) REFERENCES genuses(id) 
);

DROP TABLE IF EXISTS donkeys;
CREATE TABLE donkeys(	
    id TINYINT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    genus_id TINYINT UNSIGNED NOT NULL,
    name VARCHAR(50),
    commands VARCHAR(50),
    birthday DATE,
   	created_at DATETIME DEFAULT NOW(),
   	
   	FOREIGN KEY (genus_id) REFERENCES genuses(id) 
);

















