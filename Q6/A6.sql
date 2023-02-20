-- 複問い合わせを使った正答
SELECT 
p.name AS 名前, 
p.position AS ポジション, 
p.club AS 所属クラブ, 
    (SELECT COUNT(id) FROM goals g WHERE g.player_id = p.id) AS ゴール数
FROM players p
ORDER BY ゴール数 DESC

-- テーブル結合のパターン
SELECT
p.name,
p.position,
p.club,
count(player_id)
FROM
goals AS g
JOIN
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
