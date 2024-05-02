SELECT 
    art.name AS Artista, 
    COUNT(hps.song_id) AS 'Quantidade de músicas reproduzidas'
FROM 
    artists AS art
JOIN 
    albums AS alb ON art.id = alb.artist_id
JOIN 
    songs AS sng ON alb.id = sng.album_id
JOIN 
    history_play_songs AS hps ON sng.id = hps.song_id
GROUP BY 
    art.name
HAVING 
    COUNT(hps.song_id) > 10
ORDER BY 
    art.name ASC;
