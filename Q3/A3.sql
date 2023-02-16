SELECT
c.name
,avg(p.height) AS "平均身長"
FROM countries AS c
JOIN players AS p
ON p.country_id = c.id
GROUP BY c.id, c.name
ORDER BY avg(height) DESC
