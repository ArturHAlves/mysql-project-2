SELECT 
    m.nome AS cancao, COUNT(h.musica_id) AS reproducoes
FROM
    SpotifyClone.musica AS m
        INNER JOIN
    SpotifyClone.historico_reproducao AS h ON m.musica_id = h.musica_id
GROUP BY cancao
ORDER BY reproducoes DESC , cancao ASC
LIMIT 2;
