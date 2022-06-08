SELECT
	arts.name AS `artista`,
    a.name AS `album`
FROM SpotifyClone.artists AS arts
INNER JOIN SpotifyClone.albuns AS a
    ON a.artist_id = arts.id
WHERE arts.name = 'Walter Phoenix'
ORDER BY `album`;
