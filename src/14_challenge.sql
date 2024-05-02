SELECT
    artists.name AS Artista,
    GROUP_CONCAT(albums.title SEPARATOR ',') AS Álbuns
FROM
    artists
INNER JOIN
    albums ON artists.id = albums.artist_id
GROUP BY
    artists.id
ORDER BY
    Artista ASC;
