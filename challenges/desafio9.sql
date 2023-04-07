SELECT 
    COUNT(h.musica_id) AS musicas_no_historico
FROM
    SpotifyClone.historico_reproducao AS h
        INNER JOIN
    SpotifyClone.usuario AS u ON h.user_id = u.user_id
WHERE
    u.nome = 'Barbara Liskov'
GROUP BY u.nome;
