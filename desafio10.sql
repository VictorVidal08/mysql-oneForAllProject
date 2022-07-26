SELECT 
s.song_name AS "nome",
COUNT(r.song_id) AS "reproducoes"
FROM SpotifyClone.Songs AS s
INNER JOIN
	SpotifyClone.Reproductions AS r
    ON s.song_id = r.song_id
INNER JOIN
	SpotifyClone.Users AS u
	ON u.user_id = r.user_id
WHERE u.subscription_id IN (1, 4)
GROUP BY nome
ORDER BY nome;