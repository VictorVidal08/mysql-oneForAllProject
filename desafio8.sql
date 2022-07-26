SELECT 
ar.artist AS "artista",
al.album_name AS "album"
FROM SpotifyClone.Artist AS ar
INNER JOIN
	SpotifyClone.Album AS al
    ON ar.artist_id = al.artist_id
WHERE ar.artist = 'Walter Phoenix'
ORDER BY album;