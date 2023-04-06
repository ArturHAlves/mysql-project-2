SELECT
    u.nome AS 'pessoa_usuaria',
    COUNT(h.musica_id) AS 'musicas_ouvidas',
    ROUND(SUM(m.duracao_segundos) / 60, 2 ) AS 'total_minutos'
FROM
    SpotifyClone.usuario AS u
        INNER JOIN
    SpotifyClone.historico_reproducao AS h ON u.user_id = h.user_id
        INNER JOIN
    SpotifyClone.musica AS m ON h.musica_id = m.musica_id
GROUP BY pessoa_usuaria
ORDER BY pessoa_usuaria;
