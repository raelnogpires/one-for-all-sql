SELECT
	MIN(`sp`.price) AS `faturamento_minimo`,
    MAX(`sp`.price) AS `faturamento_maximo`,
    ROUND(AVG(`sp`.price), 2) AS `faturamento_medio`,
    ROUND(SUM(`sp`.price), 2) AS `faturamento_total`
FROM SpotifyClone.signaturePlans AS `sp`
INNER JOIN SpotifyClone.users AS `u`
	ON `u`.signature_id = `sp`.id;
