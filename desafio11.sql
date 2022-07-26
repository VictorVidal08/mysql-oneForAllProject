SELECT 
s.song_name AS "nome_musica",
CASE
WHEN song_name LIKE '%Her Own' THEN REPLACE(song_name, 'Her Own', 'Trybe')
WHEN song_name LIKE '%Inner Fire' THEN REPLACE(song_name, 'Inner Fire', 'Project')
WHEN song_name LIKE '%Silly' THEN REPLACE(song_name, 'Silly', 'Nice')
WHEN song_name LIKE '%Circus' THEN REPLACE(song_name, 'Circus', 'Pull Request')
WHEN s.song_name LIKE '%Streets' THEN REPLACE(s.song_name, 'Streets', 'Code Review')
END AS "novo_nome"
FROM SpotifyClone.Songs AS s
WHERE s.song_name LIKE '%Streets'
    OR s.song_name LIKE '%Her Own'
    OR s.song_name LIKE '%Inner Fire'
    OR s.song_name LIKE '%Silly'
    OR s.song_name LIKE '%Circus'
ORDER BY nome_musica;