SELECT u.user_name AS "usuario",
IF(MAX(r.reproduction_date) > '2020-12-31 00:00:00', 'Usuário ativo', 'Usuário inativo') AS "condicao_usuario"
FROM SpotifyClone.Users AS u
INNER JOIN
	SpotifyClone.Reproductions AS r
    ON u.user_id = r.user_id
GROUP BY usuario
ORDER BY usuario;