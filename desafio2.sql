SELECT
(SELECT COUNT(song_name) FROM SpotifyClone.Songs) AS "cancoes",
(SELECT COUNT(artist) FROM SpotifyClone.Artist) AS "artistas",
(SELECT COUNT(album_name) FROM SpotifyClone.Album) AS "albuns";
