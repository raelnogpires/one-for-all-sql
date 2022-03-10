SELECT
	arts.name AS `artista`,
    a.name AS `album`,
    COUNT(f.user_id) AS `seguidores`
FROM SpotifyClone.artists AS arts
INNER JOIN SpotifyClone.albuns AS a
	ON a.artist_id = arts.id
INNER JOIN SpotifyClone.followingArtists AS f
	ON f.artist_id = arts.id
GROUP BY arts.name, a.name
ORDER BY `seguidores` DESC, arts.name ASC, a.name ASC;
