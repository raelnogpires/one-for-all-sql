SELECT
	s.song_name AS `nome_musica`,
    CASE
    	WHEN s.song_name LIKE '%Streets%' THEN REPLACE(s.song_name, 'Streets', 'Code Review')
    	WHEN s.song_name LIKE '%Her Own%' THEN REPLACE(s.song_name, 'Her Own', 'Trybe')
    	WHEN s.song_name LIKE '%Inner Fire%' THEN REPLACE(s.song_name, 'Inner Fire', 'Project')
    	WHEN s.song_name LIKE '%Silly%' THEN REPLACE(s.song_name, 'Silly', 'Nice')
    	WHEN s.song_name LIKE '%Circus%' THEN REPLACE(s.song_name, 'Circus', 'Pull Request')
    END AS `novo_nome`
FROM SpotifyClone.songs AS s
HAVING `novo_nome` IS NOT NULL
ORDER BY `nome_musica`;
