-- 0 SELECT basics
SELECT population FROM world WHERE name = 'Germany';
SELECT name, population FROM world WHERE name IN ('Sweden', 'Norway', 'Denmark');
SELECT name, area FROM world WHERE area BETWEEN 200000 AND 250000;

-- 1 SELECT name
SELECT name FROM world WHERE name LIKE 'Y%';
SELECT name FROM world WHERE name LIKE '%y';
SELECT name FROM world WHERE name LIKE '%x%';
SELECT name FROM world WHERE name LIKE '%land';
SELECT name FROM world WHERE name LIKE 'C%ia';
SELECT name FROM world WHERE name LIKE '%oo%';
SELECT name FROM world WHERE name LIKE '%a%a%a%';
SELECT name FROM world WHERE name LIKE '_t%' ORDER BY name;
SELECT name FROM world WHERE name LIKE '%o__o%';
SELECT name FROM world WHERE name LIKE '____';
SELECT name FROM world WHERE name = capital;
SELECT name FROM world WHERE capital = concat(name, ' City');
SELECT capital, name FROM world WHERE POSITION(name IN capital) != 0
SELECT capital, name FROM world WHERE (POSITION(name IN capital) != 0) AND (capital != name);
SELECT name, REPLACE(capital, name, '') FROM world WHERE (POSITION(name IN capital) != 0) AND (capital != name);