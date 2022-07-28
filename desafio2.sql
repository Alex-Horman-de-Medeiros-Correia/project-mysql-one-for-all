SELECT COUNT(DISTINCT music_id) 'cancoes',
    COUNT(DISTINCT artist.artist_id) 'artistas',
    COUNT(DISTINCT album.album_id) 'albuns'
FROM SpotifyClone.musics
    INNER JOIN artist ON musics.artist_id IS NOT NULL
    INNER JOIN album ON album.artist_id IS NOT NULL;