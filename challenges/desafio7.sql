
SELECT a.nome as artista, al.nome as album, COUNT(s.user_id) AS pessoas_seguidoras
FROM SpotifyClone.album AS al
INNER JOIN SpotifyClone.artista AS a
ON al.artista_id = a.artista_id
INNER JOIN SpotifyClone.seguidores AS s
ON a.artista_id = s.artista_id 
GROUP BY album, artista
ORDER BY pessoas_seguidoras DESC, artista ASC, album ASC;
