SELECT art.name artista,
    alb.name album
FROM SpotifyClone.artist art
    INNER JOIN album alb ON alb.artist_id = art.artist_id 
    AND art.name = 'Walter Phoenix';