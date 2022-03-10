SELECT
	u.`name` AS `usuario`,
    IF(MAX(r.reproduction_date) LIKE '2021%', 'Usuário ativo', 'Usuário inativo') AS `condicao_usuario`
FROM SpotifyClone.users AS u
INNER JOIN SpotifyClone.reproductionStory AS r
	ON r.user_id = u.id
GROUP BY u.`name`
ORDER BY u.`name`;
