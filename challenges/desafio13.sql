SELECT 
    CASE
        WHEN u.idade <= 30 THEN 'Até 30 anos'
        WHEN u.idade BETWEEN 31 and 61 THEN 'Entre 31 e 60 anos'
        ELSE 'Maior de 60 anos'
    END faixa_etaria,
    COUNT(DISTINCT u.user_id) AS total_pessoas_usuarias,
    COUNT(mf.user_id) AS total_favoritadas
FROM
    SpotifyClone.usuario AS u
        LEFT JOIN
    SpotifyClone.musicas_favoritas AS mf ON u.user_id = mf.user_id
GROUP BY faixa_etaria
ORDER BY faixa_etaria;
