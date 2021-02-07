-- country that start with Y

SELECT name FROM world 
WHERE name LIKE 'f%';

-- Find the countries that end with y
SELECT name FROM world
WHERE name LIKE '%y';

--  the countries that contain the letter x

SELECT name FROM world
WHERE name LIKE '%x%';

-- the countries that end with land

SELECT name FROM world 
WHERE name LIKE '%land';

-- Find the countries that start with C and end with ia

SELECT name FROM world 
WHERE name 'c%ia';

-- the country that has oo in the name

SELECT name FROM world 
WHERE name LIKE '%OO%';

-- the countries that have three or more a in the name

SELECT name FROM world
WHERE name LIKE '%a%a%a%';

SELECT name FROM world
 WHERE name LIKE '_t%'
ORDER BY name;

SELECT name FROM world
 WHERE name LIKE '%o__o%';
 
 SELECT name FROM world
 WHERE name LIKE '____';

  SELECT name
  FROM world
 WHERE name LIKE capital;

  SELECT name 
 FROM world 
 WHERE capital LIKE '% City%';

