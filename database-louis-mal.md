

What is the population of the US? (HINT: 278357000)
SELECT name, population
FROM country
WHERE name = 'United States'

What is the area of the US? (HINT: 9.36352e+06)
SELECT name, surfacearea
FROM country
WHERE name = 'United States'

Which countries gained their independence before 1963?
SELECT name, indepyear
FROM country
WHERE indepyear < 1963

List the countries in Africa that have a population smaller than 30,000,000 and a life expectancy of more than 45? (HINT: 37 entries)
SELECT name, continent, population, lifeexpectancy
FROM country
WHERE continent='Africa' AND population < 3e7 AND lifeexpectancy > 45

Which countries are something like a republic? (HINT: Are there 122 or 143?)
SELECT name, governmentform
FROM country
WHERE governmentform
LIKE '%epublic'
Answer: 143

Which countries are some kind of republic and achieved independence after 1945? (HINT: 92 entries)
SELECT name, governmentform, indepyear
FROM country
WHERE governmentform LIKE '%epublic' AND indepyear > 1945

Which countries achieved independence after 1945 and are not some kind of republic? (HINT: 27 entries)
SELECT name, governmentform, indepyear
FROM country
WHERE governmentform NOT LIKE '%epublic' AND indepyear > 1945

Which fifteen countries have the lowest life expectancy? (HINT: starts with Zambia, ends with Sierra Leonne)
SELECT name, lifeexpectancy
FROM country
ORDER BY lifeexpectancy ASC
LIMIT 15

Which fifteen countries have the highest life expectancy? (HINT: starts with Andorra, ends with Spain)
SELECT name, lifeexpectancy
FROM country
WHERE lifeexpectancy IS NOT NULL
ORDER by lifeexpectancy DESC
LIMIT 15

Which five countries have the lowest population density (density = population / surfacearea)? (HINT: starts with Greenland)
SELECT name, population surfacearea, population / surfacearea AS population_density
FROM country
WHERE population != 0
ORDER by population_density ASC
LIMIT 5

Which countries have the highest population density?(HINT: starts with Macao)
SELECT name, population surfacearea, population / surfacearea AS population_density
FROM country
WHERE population != 0
ORDER by population_density desc
LIMIT 5

Which is the smallest country by area? (HINT: .4)
SELECT name, surfacearea
FROM country
WHERE surfacearea != 0
ORDER by surfacearea asc

Which is the smallest country by population? (HINT: 50)?
SELECT name, population
FROM country
WHERE population != 0
ORDER by population asc

Which is the biggest country by area? (HINT: 1.70754e+07)
SELECT name, surfacearea
FROM country
ORDER by surfacearea desc

Which is the biggest country by population? (HINT: 1277558000)
SELECT name, population
FROM country
ORDER by population desc

Who is the most influential head of state measured by population? (HINT: Jiang Zemin)
SELECT name, population, headofstate
FROM country
ORDER by population desc

Of the countries with the top 10 gnp, which has the smallest population? (HINT: Canada)
SELECT name, population, gnp
FROM country
ORDER by gnp des
limit 10

Of the 10 least populated countries with permanent residents (a non-zero population), which has the 
largest surfacearea? (HINT: Svalbard and Jan Mayen)
SELECT name, population, surfacearea
FROM country
WHERE population != 0
ORDER by population asc
LIMIT 10

Which region has the highest average gnp? (HINT: North America)
SELECT region, AVG(gnp)
FROM country
GROUP BY region
ORDER BY avg DESC

Who is the most influential head of state measured by surface area? (HINT: Elisabeth II)
SELECT headofstate, SUM(surfacearea)
FROM country
GROUP BY headofstate
ORDER BY sum DESC

What is the average life expectancy for all continents?
SELECT continent, AVG(lifeexpectancy)
FROM country
GROUP BY continent

What are the most common forms of government? (HINT: use count(*))
SELECT governmentform, COUNT(governmentform)
FROM country
GROUP BY governmentform
ORDER BY count DESC

How many countries are in North America?
SELECT continent, COUNT(country)
FROM country
GROUP BY continent
ORDER BY count DESC

What is the total population of all continents?
SELECT continent, SUM(population)
FROM country
GROUP BY continent
ORDER BY sum DESC
