SELECT art.name artista,
    alb.name album,
    COUNT(*) seguidores
FROM SpotifyClone.artist art
    INNER JOIN album AS alb ON alb.artist_id = art.artist_id
    INNER JOIN seguindo AS seg ON seg.artist_id = art.artist_id
GROUP BY album, artista
ORDER BY
    seguidores DESC,
    artista,
    album;