SELECT 
avg(height) AS "平均身長"
,avg(weight) AS "平均体重"
FROM players
WHERE position = 'GK'
