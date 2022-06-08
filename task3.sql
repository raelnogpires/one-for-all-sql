SELECT
	u.`name` AS `usuario`,
    COUNT(r.reproduction_date) AS `qtde_musicas_ouvidas`,
    CAST(SUM(s.length_seconds / 60) AS DECIMAL(16,2)) AS `total_minutos`
FROM SpotifyClone.`users` AS u
INNER JOIN SpotifyClone.reproductionStory AS r
	ON u.id = r.user_id
INNER JOIN SpotifyClone.songs AS s
	ON s.id = r.song_id
GROUP BY u.name
ORDER BY u.name;
