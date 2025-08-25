SELECT * FROM world_life_expectancy;  


-- MAX AND MIN LIFE EXPECTANCY FOR EACH COUNTRY
SELECT Country, MIN(`Life expectancy`),
MAX(`Life expectancy`),
ROUND(MAX(`Life expectancy`) - MIN(`Life expectancy`), 1)AS `Life Increase Years`
FROM world_life_expectancy
GROUP BY Country
HAVING MIN(`Life expectancy`) <> 0
AND MAX(`Life expectancy`) <> 0
ORDER BY `Life Increase Years` ASC;


-- AVG LIFE EXPECTANCY OVER EACH YEAR
SELECT Year, ROUND(AVG(`Life expectancy`), 2) AS AVG_LIFE_EXPEC
FROM world_life_expectancy
WHERE `Life expectancy` <> 0
AND `Life expectancy` <> 0
GROUP BY Year
ORDER BY Year;


-- AVG GDP vs AVG Life Expectancy

SELECT Country, ROUND(AVG(`Life expectancy`), 1) AS Life_Exp,
ROUND(AVG(GDP), 1) AS GDP
FROM world_life_expectancy
GROUP BY Country
HAVING Life_Exp > 0
AND GDP > 0
ORDER BY GDP;


-- GROUPING GDPs

SELECT 
SUM(CASE WHEN GDP > 1500 THEN 1 ELSE 0 END) HIGH_GDP_Count,
AVG(CASE WHEN GDP > 1500 THEN `Life expectancy` ELSE NULL END) HIGH_GDP_Life_Exp,
SUM(CASE WHEN GDP <= 1500 THEN 1 ELSE 0 END) LOW_GDP_Count,
AVG(CASE WHEN GDP <= 1500 THEN `Life expectancy` ELSE NULL END) LOW_GDP_Life_Exp
FROM world_life_expectancy;
-- HEre we checked Correlation Between GDP AND life_exp, very strong coorelation



-- AVg life_exp for different status types

SELECT Status, COUNT(DISTINCT Country), ROUND(AVG(`Life expectancy`),1) AS AVG_Life_Exp
FROM world_life_expectancy
GROUP BY Status;


-- BMI VS LIFE EXPECTANCY

SELECT Country, ROUND(AVG(`Life expectancy`), 1) AS Life_Exp,
ROUND(AVG(BMI), 1) AS BMI
FROM world_life_expectancy
GROUP BY Country
HAVING Life_Exp > 0
AND BMI > 0
ORDER BY BMI;


SELECT * 
FROM world_life_expectancy;

-- Adult Mortality

SELECT Country,
Year,
`Life expectancy`,
`Adult Mortality`,
SUM(`Adult Mortality`) OVER(PARTITION BY Country ORDER BY Year) AS Rolling_totals
FROM world_life_expectancy;


