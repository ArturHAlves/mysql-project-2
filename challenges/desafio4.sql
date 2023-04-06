SELECT 
    u.nome AS 'pessoa_usuaria',
    IF(MAX(YEAR(h.data_reproducao)) >= 2021,
        'Ativa',
        'Inativa') AS 'status_pessoa_usuaria'
FROM
    SpotifyClone.usuario AS u
        INNER JOIN
    SpotifyClone.historico_reproducao AS h ON u.user_id = h.user_id
GROUP BY pessoa_usuaria
ORDER BY pessoa_usuaria ASC;

-- test
--test 
