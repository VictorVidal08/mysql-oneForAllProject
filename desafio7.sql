SELECT 
al.album_name AS "album",
ar.artist AS "artista",
COUNT(f.user_id) AS "seguidores"
FROM SpotifyClone.Album AS al
INNER JOIN
	SpotifyClone.Artist AS ar
    ON ar.artist_id = al.artist_id
INNER JOIN 
	SpotifyClone.Following AS f
    ON f.artist_id = ar.artist_id
GROUP BY artista, album
ORDER BY seguidores DESC, artista, album;