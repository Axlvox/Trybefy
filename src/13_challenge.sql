SELECT ar.name AS `Artista`
FROM artists ar
JOIN (
    SELECT artist_id
    FROM albums
    GROUP BY artist_id
    HAVING COUNT(*) >= 3
) AS artist_albums ON ar.id = artist_albums.artist_id
ORDER BY ar.name ASC;
