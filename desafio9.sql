SELECT 
COUNT(r.song_id) AS "quantidade_musicas_no_historico"
FROM SpotifyClone.Reproductions AS r
INNER JOIN
	SpotifyClone.Users AS u
    ON u.user_id = r.user_id
WHERE u.user_name = 'Bill';