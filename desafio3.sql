SELECT u.user_name AS "usuario",
COUNT(r.song_id) AS "qtde_musicas_ouvidas",
ROUND(SUM(s.duration)/60, 2) AS "total_minutos"
FROM SpotifyClone.Users AS u
INNER JOIN
	SpotifyClone.Reproductions AS r
    ON u.user_id = r.user_id
INNER JOIN 
	SpotifyClone.Songs AS s
    ON r.song_id = s.song_id
GROUP BY usuario
ORDER BY usuario;