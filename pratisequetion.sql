CREATE DATABASE pratice;
USE pratice;

										-- PRATICE QUETION NO. 1
CREATE TABLE container(
id INT PRIMARY KEY,
Value INT );

INSERT INTO container
 VALUES
 (1,-56),
 (2,76),
 (3,-84),
 (4,96),
 (5,-47);
 
 SELECT * FROM container;
 SET SQL_SAFE_UPDATES=0;
 
 UPDATE container
 SET value = -1 * value;

								-- PRATICE QUETION NO. 2
CREATE TABLE container2(
id INT,
year INT,
revenue INT );

INSERT INTO container2
VALUES 
(1,2018,60),
(1,2021,60),
(1,2020,60),
(2,2021,-60),
(3,2018,60),
(3,2016,60),
(4,2021,60);

SELECT * FROM container2;

SELECT id FROM container2
WHERE year = 2021 AND revenue > 0;

								-- PRATICE QUETION NO. 3
					
CREATE TABLE container3(
id INT PRIMARY KEY,
year INT);

INSERT INTO container3 VALUES
(1,1776),
(2,2001),
(3,1643),
(4,1865),
(5,1969);

SELECT substring(year,1,2)+1 AS centuries FROM container3;

						-- PRATICE QUETION NO.4

 CREATE TABLE container4(
 id INT PRIMARY KEY,
 value INT);
 
 INSERT INTO container4 VALUES
 (1,4),
 (2,11),
 (3,57),
 (4,24),
 (5,47);
 
 SELECT * ,
 CASE WHEN MOD(value,2) =0 THEN "EVEN"
      WHEN MOD(value,2) !=0 THEN "ODD"
 END AS EVEN_ODD FROM container4;

                              -- PRATICE QUETION NO.5
							
CREATE TABLE container5(
id INT PRIMARY KEY,
name VARCHAR(50),
age INT );

INSERT INTO container5 VALUES
(1,"BOB",21),
(2,"SAM",19),
(3,"JILL",18),
(4,"JIM",21),
(5,"SALLY",19),
(6,"JESS",20),
(7,"WILL",21);

DROP TABLE container5 ;

SELECT age,COUNT(age) as count FROM container5 
GROUP BY age
ORDER BY age ASC;

      -- QUETION NO.6
      
CREATE TABLE container6(
id INT PRIMARY KEY,
name VARCHAR(50));

INSERT INTO container6 VALUES
(1,"BOB"),
(2,"SAM"),
(3,"JILL"),
(4,"JIM"),
(5,"SALLY"),
(6,"JESS"),
(7,"WILL");

SELECT CONCAT("Hi, ",name,"! how are you today") AS Greating
FROM container6;


                             -- PRATICE QUETION NO.7

