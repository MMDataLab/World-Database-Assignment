-- 1. Determine the total number of cities within the United States

/* 
SELECT COUNT(*) AS "Total Number of Cities within the US"
FROM city
WHERE CountryCode = 'USA';
*/

-- 2. Identify the country with the highest life expectancy

/*
SELECT Name AS "Country with the Highest Life Expectancy"
FROM country
ORDER BY LifeEXpectancy DESC 
LIMIT 1;
*/

-- 3. Compile a list of Cities with the word 'New'

/* 
SELECT Name AS "Cities with the word 'New'"
FROM city
WHERE Name LIKE "%New%"
ORDER BY Name DESC;
*/

-- 4. List only the first 10 cities by population from the database.

/*
SELECT Name AS "Top 10 Most Populous Cities"
FROM city
ORDER BY Population DESC
LIMIT 10;
*/

-- 5. Identify Cities from the database with populations exceeding 2 million.

/*
SELECT Name AS "Cities with populations exceeding 2 million"
FROM city
WHERE Population > "2000000"
ORDER BY Population DESC;
*/

-- 6. Compile a list of cities from the database that start with the prefix 'Be'.

/*
SELECT Name AS "List of Cities with the prefix 'Be'"
FROM city
WHERE name LIKE "Be%";
*/ 

-- 7. Create a list identifying cities with populations ranging between 500,000 and 1 million.

/*
SELECT Name AS "Cities with Populations between 500,000 and 1 million, in ascending order"
FROM city
WHERE Population < "1000000" AND Population > "500000"
ORDER BY Population ASC;
*/

-- 8. Display a list of Cities in ascending order

/*
UPDATE city
SET Name = "San Cristobal de la Laguna"
WHERE ID = 698;
*/

/*
UPDATE city
SET Name = "s-Hertogenbosch"
WHERE ID = 20;
*/

/*
SELECT Name AS "List of Cities"
FROM city
ORDER BY Name ASC;
*/

-- 9. Identify the Most Populated City 

/*
SELECT Name AS "Most Populated City"
FROM city
ORDER BY Population DESC 
LIMIT 1;
*/

-- 10. A list of unique city names sorted alphabetically.

/*
SELECT Name AS "Unique City Names", COUNT(*)
FROM city
GROUP BY Name
ORDER BY Name ASC;
*/

-- 11. Identify the City with the lowest population.

/*
SELECT Name AS "City with the lowest population", Population
FROM city
ORDER BY Population ASC
Limit 1;
*/

-- 12. Country with the Largest Population.

/*
SELECT Name AS "Country with the Largest Population"
FROM country
ORDER BY Population DESC
LIMIT 1;
*/

-- 13. Find the Capital City of Spain

/*
SELECT city.Name AS "Capital City of Spain"
FROM city
INNER JOIN country
ON city.CountryCode = country.code
WHERE country.name = "Spain"
LIMIT 1
;
*/


-- 14. Find the Country with the Highest Life Expectancy.

/*
SELECT Name AS "Country with the Highest Life Expectancy"
FROM country
ORDER BY LifeExpectancy DESC
LIMIT 1;
*/

-- 15. List the Cities in Europe

/*
SELECT city.Name AS "Cities in Europe"
FROM city
INNER JOIN country
ON city.Countrycode = country.Code
WHERE continent = "Europe"
ORDER BY city.Name ASC;
*/

-- 16. Average Population by Country

/*
SELECT Name, AVG(Population) AS "Average population"
FROM country
GROUP BY Name
ORDER BY Population;
*/

-- 17. Capital Cities Comparison Analysis

/*
SELECT c.Name AS Capital_City, c.Population AS Population, co.Name AS Country
FROM city as c
INNER JOIN country as co ON c.ID = co.capital
ORDER BY c.Population DESC;
*/

-- 18. Countries with Low population Density

/*
SELECT Name, Population/SurfaceArea AS "Population Density"
FROM country
WHERE Population/SurfaceArea > 0
ORDER BY Population/SurfaceArea ASC
;
*/

-- 19. Cities with Highest GDP Per Capita

/*
SELECT AVG(country.GNP/city.Population) AS "Average GNP Per Capitaa"
FROM city
INNER JOIN country
ON city.CountryCode = country.Code;
*/

/*
SELECT city.Name, country.GNP/city.Population AS "GNP per Capitaa"
FROM city
INNER JOIN country
ON city.CountryCode = country.Code
WHERE country.GNP/city.Population > '7.1845473002'
ORDER BY country.GNP/city.Population DESC;
*/

-- 20. Cities ranked 31st to 40th in population

/*
SELECT Name AS "Cities ranked 31st to 40th by Population"
FROM city
ORDER BY Population DESC 
LIMIT 10 OFFSET 30;
*/
 