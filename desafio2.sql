SELECT (
	SELECT COUNT(songs.id) FROM SpotifyClone.songs) AS `cancoes`, 
    (SELECT COUNT(artists.id) FROM SpotifyClone.artists) AS `artistas`,
    (SELECT COUNT(albuns.id) FROM SpotifyClone.albuns) AS `albuns`
FROM DUAL;
