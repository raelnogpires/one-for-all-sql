SELECT
	s.song_name AS `nome`,
	COUNT(r.reproduction_date) AS `reproducoes`
FROM SpotifyClone.songs AS s
INNER JOIN SpotifyClone.reproductionStory AS r
	ON r.song_id = s.id
INNER JOIN SpotifyClone.users AS u
	ON u.id = r.user_id
WHERE u.signature_id IN (
	SELECT sp.id FROM SpotifyClone.signaturePlans AS sp
	WHERE sp.type IN ('gratuito', 'pessoal')
)
GROUP BY `nome`
ORDER BY `nome`;

