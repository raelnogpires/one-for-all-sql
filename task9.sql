SELECT
	COUNT(r.reproduction_date) AS `quantidade_musicas_no_historico`
FROM SpotifyClone.reproductionStory AS r
INNER JOIN SpotifyClone.users AS u
	ON r.user_id = u.id
WHERE u.name = 'Bill';
