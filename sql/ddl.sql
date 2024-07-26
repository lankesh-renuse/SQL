-- Active: 1710397665719@@127.0.0.1@3306@employee
SHOW DATABASES;

CREATE DATABASE IF NOT EXISTS college;

USE college;

ALTER DATABASE college READ only = 0;
-- set autocommit = "off"
SET autocommit = "on";

SELECT database();

SHOW TABLES;

CREATE TABLE india (
    SELECT *
    FROM world.city
    WHERE
        countrycode = "ind"
);

DROP TABLE india;

RENAME TABLE india TO cities;

CREATE TABLE student (
    id int PRIMARY KEY, name VARCHAR(50), marks float, age int
);

DESC student;

ALTER TABLE student ADD COLUMN email VARCHAR(50);

ALTER TABLE student DROP COLUMN email;
alter table student modify name VARCHAR(60) first;

ALTER TABLE student MODIFY  name varchar(60);

ALTER TABLE student RENAME COLUMN id TO sid;

ALTER TABLE student MODIFY marks int after age;

ALTER TABLE student ADD CHECK (age > 18);
alter table student MODIFY  id int  AUTO_INCREMENT;

SELECT * FROM student;