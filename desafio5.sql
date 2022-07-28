SELECT name cancao,
    COUNT(*) reproducoes
FROM (
        SELECT h.music_id, m.name
        FROM SpotifyClone.history h
            INNER JOIN musics m ON m.music_id = h.music_id
    ) AS music_stats
GROUP BY name
ORDER BY  reproducoes DESC, cancao
LIMIT 2;