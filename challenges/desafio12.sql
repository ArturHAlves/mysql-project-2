SELECT 
    a.nome AS artista,
    CASE COUNT(mf.user_id)
        WHEN 0 THEN '-'
        WHEN 1 THEN 'C'
        WHEN 2 THEN 'C'
        WHEN 3 THEN 'B'
        WHEN 4 THEN 'B'
        ELSE 'A'
    END ranking
FROM
    SpotifyClone.musicas_favoritas AS mf
        INNER JOIN
    SpotifyClone.musica AS m ON mf.musica_id = m.musica_id
        RIGHT JOIN
    SpotifyClone.album AS al ON m.album_id = al.album_id
        INNER JOIN
    SpotifyClone.artista AS a ON a.artista_id = al.artista_id
GROUP BY artista
ORDER BY REPLACE(ranking, '-', 'Z') ASC , artista ASC;
