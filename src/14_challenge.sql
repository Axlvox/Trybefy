SELECT ar.name AS `Artista`, 
       al.title AS `Álbuns`
FROM artists ar
LEFT JOIN albums al ON ar.id = al.artist_id
ORDER BY ar.name ASC;
