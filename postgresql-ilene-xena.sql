-- What is the population of the US? (HINT: 278357000)
SELECT name, population
FROM country
WHERE name LIKE 'United States'

-- What is the area of the US? (HINT: 9.36352e+06)
SELECT name, surfacearea
FROM country
WHERE name LIKE 'United States'

-- Which countries gained their independence before 1963?
SELECT name, indepyear
FROM country
WHERE indepyear < 1963
ORDER BY indepyear DESC

-- List the countries in Africa that have a population smaller than 30,000,000 and a life expectancy of more than 45? (HINT: 37 entries)
SELECT name, continent, population, lifeexpectancy
FROM country
WHERE continent LIKE 'Africa' AND population < 3e7 AND lifeexpectancy > 45

-- Which countries are something like a republic? (HINT: Are there 122 or 143?)
SELECT name, governmentform
FROM country
WHERE governmentform LIKE '%Republic%'
-- ANSWER: 143

-- Which countries are some kind of republic and achieved independence after 1945? (HINT: 92 entries)
SELECT name, governmentform, indepyear
FROM country
WHERE governmentform LIKE '%Republic%' AND indepyear > 1945

-- Which countries achieved independence after 1945 and are not some kind of republic? (HINT: 27 entries)
SELECT name, governmentform
FROM country
WHERE governmentform NOT LIKE '%Republic' AND indepyear > 1945

-- Which fifteen countries have the lowest life expectancy? (HINT: starts with Zambia, ends with Sierra Leonne)

SELECT name, lifeexpectancy
FROM country
WHERE lifeexpectancy != 0
ORDER BY lifeexpectancy 
LIMIT 15

-- Which fifteen countries have the highest life expectancy? (HINT: starts with Andorra, ends with Spain)

SELECT name, lifeexpectancy
FROM country
WHERE lifeexpectancy != 0
ORDER BY lifeexpectancy DESC
LIMIT 15

-- Which five countries have the lowest population density (density = population / surfacearea)? (HINT: starts with Greenland)

SELECT name, population,
population/surfacearea AS density
FROM country 
WHERE population != 0
ORDER BY density 
LIMIT 5

-- Which countries have the highest population density?(HINT: starts with Macao)
-- Which is the smallest country by area? (HINT: .4)
-- Which is the smallest country by population? (HINT: 50)?
-- Which is the biggest country by area? (HINT: 1.70754e+07)
-- Which is the biggest country by population? (HINT: 1277558000)
-- Who is the most influential head of state measured by population? (HINT: Jiang Zemin)
-- Of the countries with the top 10 gnp, which has the smallest population? (HINT: Canada)
-- Of the 10 least populated countries with permanent residents (a non-zero population), which has the largest surfacearea? (HINT: Svalbard and Jan Mayen)
-- Which region has the highest average gnp? (HINT: North America)
-- Who is the most influential head of state measured by surface area? (HINT: Elisabeth II)
-- What is the average life expectancy for all continents?
-- What are the most common forms of government? (HINT: use count(*))
-- How many countries are in North America?
-- What is the total population of all continents?