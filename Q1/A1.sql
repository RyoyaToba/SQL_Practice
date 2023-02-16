SELECT
group_name
,min(ranking) AS "ランキング最上位"
,max(ranking) AS "ランキング最下位"
FROM
countries
GROUP BY
group_name
ORDER BY
group_name
