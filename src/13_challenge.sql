SELECT
    artists.name AS Artista
FROM
    artists
JOIN
    (
        SELECT
            artist_id
        FROM
            albums
        GROUP BY
            artist_id
        HAVING
            COUNT(*) >= 3
    ) as album_count ON artists.id = album_count.artist_id
ORDER BY
    Artista ASC;
