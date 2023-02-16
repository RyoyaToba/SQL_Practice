SELECT 
kickoff AS "キックオフ日時" 
,c1.name AS "国名１"
,c2.name AS "国名２"
FROM 
pairings AS p
JOIN
countries AS c1
ON
c1.id = p.my_country_id
JOIN
countries AS c2
ON
c2.id = p.enemy_country_id
ORDER BY
kickoff
