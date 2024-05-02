SELECT 
    alb.title AS Álbum, 
    COUNT(hps.song_id) AS 'Quantidade de músicas reproduzidas'
FROM 
    albums AS alb
JOIN 
    songs AS sng ON alb.id = sng.album_id
JOIN 
    history_play_songs AS hps ON sng.id = hps.song_id
GROUP BY 
    alb.title
ORDER BY 
    COUNT(hps.song_id) DESC,
    alb.title ASC
LIMIT 5;
