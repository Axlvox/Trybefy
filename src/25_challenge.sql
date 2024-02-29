SELECT a.title AS Álbum, COUNT(h.song_id) AS "Quantidade de músicas reproduzidas"
FROM albums a
LEFT JOIN songs s ON a.id = s.album_id
LEFT JOIN history_play_songs h ON s.id = h.song_id
GROUP BY a.title
ORDER BY COUNT(h.song_id) DESC, a.title
LIMIT 5;
