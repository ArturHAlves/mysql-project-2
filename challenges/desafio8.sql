SELECT 
    a.nome AS artista, al.nome as album
FROM
    SpotifyClone.album AS al
        INNER JOIN
    SpotifyClone.artista AS a ON al.artista_id = a.artista_id
WHERE
    a.nome = 'Elis Regina'
ORDER BY al.nome ASC;
