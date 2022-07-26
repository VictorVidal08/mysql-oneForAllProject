SELECT s.song_name AS cancao,
COUNT(r.reproduction_date) AS reproducoes
FROM SpotifyClone.Songs AS s
INNER JOIN
	SpotifyClone.Reproductions AS r
    ON s.song_id = r.song_id
GROUP BY s.song_name
ORDER BY reproducoes DESC, cancao
LIMIT 2;