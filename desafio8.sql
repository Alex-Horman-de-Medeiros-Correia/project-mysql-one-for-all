SELECT ar.name artista,
    alb.name album
FROM SpotifyClone.artist AS ar
    INNER JOIN album alb ON alb.artist_id = ar.artist_id 
    AND ar.name = 'Walter Phoenix';
    