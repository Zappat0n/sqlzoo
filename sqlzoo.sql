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

-- 2 SELECT from World
SELECT name, continent, population FROM world;
SELECT name FROM world WHERE population > 200000000;
SELECT name, gdp / population FROM world WHERE population > 200000000;
SELECT name, population / 1000000 FROM world WHERE continent = 'South America';
SELECT name, population FROM world WHERE name IN ('France', 'Germany', 'Italy');
SELECT name FROM world WHERE name LIKE '%United%';
SELECT name, population, area FROM world WHERE population > 250000000 OR area > 3000000;
SELECT name, population, area FROM world WHERE population > 250000000 XOR area > 3000000;
SELECT name, ROUND(population / 1000000, 2), ROUND(gdp / 1000000000, 2) FROM world WHERE continent = 'South America';
SELECT name, ROUND(gdp / population / 1000, 0) * 1000 FROM world WHERE gdp > 1000000000000;
SELECT name, capital FROM world WHERE LENGTH(name) = LENGTH(capital);
SELECT name, capital FROM world WHERE LEFT(name,1) = LEFT(capital, 1) AND name != capital;
SELECT name FROM world WHERE name LIKE '%a%' AND name LIKE '%e%' AND name LIKE '%i%' AND name LIKE '%o%' AND name LIKE '%u%' AND name NOT LIKE '% %';

-- 3 SELECT from Nobel
SELECT yr, subject, winner FROM nobel WHERE yr = 1950;
SELECT winner FROM nobel WHERE yr = 1962 AND subject = 'Literature';
SELECT yr, subject FROM nobel WHERE winner = 'Albert Einstein';
SELECT winner FROM nobel WHERE yr >= 2000 AND subject = 'Peace';
SELECT yr, subject, winner FROM nobel WHERE yr >= 1980 AND yr <= 1989 AND subject = 'Literature';
SELECT * FROM nobel WHERE winner IN ('Theodore Roosevelt', 'Woodrow Wilson', 'Jimmy Carter', 'Barack Obama');
SELECT winner FROM nobel WHERE winner LIKE 'John%';
SELECT yr, subject, winner FROM nobel WHERE (yr = 1980 AND subject = 'Physics') OR (yr = 1984 AND subject = 'Chemistry');
SELECT yr, subject, winner FROM nobel WHERE yr = 1980 AND subject != 'Chemistry' AND subject != 'Medicine';
SELECT yr, subject, winner FROM nobel WHERE (yr < 1910 AND subject = 'Medicine') OR (yr >= 2004 AND subject = 'Literature');
SELECT yr, subject, winner FROM nobel WHERE winner = 'PETER GRÜNBERG';
SELECT yr, subject, winner FROM nobel WHERE winner = 'EUGENE O\'NEILL';
SELECT winner, yr, subject FROM nobel WHERE winner LIKE 'Sir%' ORDER BY yr DESC, winner ASC;
SELECT winner, subject FROM nobel WHERE yr=1984 ORDER BY subject IN ('Physics','Chemistry'), subject, winner;

