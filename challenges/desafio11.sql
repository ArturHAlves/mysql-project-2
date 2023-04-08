SELECT 
    al.nome AS album, COUNT(mf.user_id) AS favoritadas
FROM
    SpotifyClone.musicas_favoritas AS mf
        INNER JOIN
    SpotifyClone.musica AS m ON m.musica_id = mf.musica_id
        INNER JOIN
    SpotifyClone.album AS al ON m.album_id = al.album_id
GROUP BY al.nome
ORDER BY favoritadas DESC
LIMIT 3;
