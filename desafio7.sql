SELECT art.name artista,
    alb.name album,
    COUNT(*) seguidores
FROM SpotifyClone.artist art
    INNER JOIN album alb ON alb.artist_id = art.artist_id
    INNER JOIN following fol ON fol.artist_id = art.artist_id
GROUP BY album, artista
ORDER BY
    seguidores DESC,
    artista,
    album;