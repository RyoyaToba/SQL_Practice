SELECT
p.name,
p.position,
p.club,
count(player_id)
FROM
goals AS g
LEFT JOIN
players AS p
ON
g.player_id = p.id
GROUP BY
g.player_id,
p.position,
p.name,
p.club
ORDER BY
count(g.player_id) DESC;
