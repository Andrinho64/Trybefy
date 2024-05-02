SELECT
    artist.name AS Artista,
    COUNT(al.id) AS `Quantidade de álbuns`
FROM
    artists AS artist
LEFT JOIN
    albums al ON artist.id = al.artist_id
GROUP BY
    artist.id
ORDER BY
    `Quantidade de álbuns` DESC,
    Artista ASC;
