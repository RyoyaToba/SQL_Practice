SELECT
 (SELECT 
  	name 
  FROM 
  	countries AS c 
  WHERE c.id = p.country_id
 ) AS "国名"
 ,avg(height) AS "平均身長"
FROM
players AS p
GROUP BY 
country_id
ORDER BY 
avg(height) DESC
