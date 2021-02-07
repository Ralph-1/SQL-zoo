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


 SELECT name, continent, population FROM world;

 SELECT name FROM world
WHERE population >= 200000000;

SELECT name, gdp/population
FROM world
WHERE population > 20000000;

SELECT name, population/1000000
FROM world
WHERE continent = 'South America';

SELECT name, population
FROM world
WHERE  name IN ('France', 'Germany', 'Italy');

SELECT name 
FROM world 
WHERE name LIKE '%United%';

SELECT name, population, area
FROM world 
WHERE area > 3000000
 OR population > 250000000;

SELECT name, population, area
FROM world 
WHERE area > 3000000
 XOR population > 250000000;

  SELECT name, ROUND((population / 1000000), 2) 
 AS pop_in_mllns, ROUND((gdp / 1000000000), 2) 
 AS gdp_in_bllns 
 FROM world 
 WHERE continent='South America';

 SELECT name, ROUND(GDP/population, -3) 
FROM world
WHERE GDP >= 1000000000000;

SELECT name, capital 
  FROM world
 WHERE LENGTH(name) = LENGTH(capital);

SELECT name, capital FROM world
WHERE LEFT(name, 1) = LEFT(capital, 1) 
AND name <> capital;

SELECT name FROM world
WHERE name LIKE '%a%' AND
name LIKE '%e%' AND
name LIKE '%i%' AND
name LIKE '%o%' AND
name LIKE '%u%' AND
name NOT LIKE '% %';

SELECT name FROM world
WHERE population >
(SELECT population FROM world
WHERE name='Russia');

SELECT name FROM world
WHERE continent = 'Europe' 
AND GDP/population > (SELECT GDP/population FROM world WHERE name = 'United Kingdom')

SELECT name, continent FROM world
WHERE continent IN (SELECT continent FROM world WHERE name = 'Argentina' OR name = 'Australia')
ORDER BY name

SELECT name, population FROM world
WHERE population > (SELECT population FROM world WHERE name = 'Canada') 
AND population < (SELECT population FROM world WHERE name = 'Poland')

SELECT name, CONCAT(ROUND(population/(SELECT population FROM world WHERE name = 'Germany') * 100, 0), '%') 
FROM world
WHERE continent = 'Europe'

SELECT SUM(population)
FROM world

SELECT DISTINCT continent FROM world
