SELECT
	  s.song_name AS `cancao`,
    COUNT(r.song_id) AS `reproducoes`
FROM SpotifyClone.songs AS s
INNER JOIN SpotifyClone.reproductionStory AS r
	  ON r.song_id = s.id
GROUP BY s.song_name
ORDER BY `reproducoes` DESC, s.song_name
LIMIT 2;
