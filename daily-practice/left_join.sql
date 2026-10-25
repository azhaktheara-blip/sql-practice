-- Select region, and average gdp_percapita as avg_gdp find dgp 
SELECT region, AVG(gdp_percapita) AS avg_gdp

FROM countries AS c
LEFT JOIN economies AS e
USING(code)
WHERE year = 2010
-- Group by region
GROUP BY region;

SELECT region, AVG(gdp_percapita) AS avg_gdp
FROM countries AS c
LEFT JOIN economies AS e
USING(code)
WHERE year = 2010
GROUP BY region
-- Order by descending avg_gdp
ORDER BY avg_gdp
-- Return only first 10 records
LIMIT 10;
