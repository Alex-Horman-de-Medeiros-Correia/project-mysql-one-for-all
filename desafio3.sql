SELECT name usuario,
    COUNT(duration) qtde_musicas_ouvidas,
    ROUND( (SUM(duration) / 60), 2) total_minutos
FROM (
        SELECT
            h.music_id,
            m.duration,
            u.name
        FROM SpotifyClone.history h
            INNER JOIN songs m ON h.music_id = m.music_id
            INNER JOIN user u ON u.user_id = h.user_id
    ) AS infos
GROUP BY name
ORDER BY name;
