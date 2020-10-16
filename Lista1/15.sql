SELECT art.Name,alb.Title,COUNT(tra.UnitPrice),SUM(tra.UnitPrice)
FROM album AS alb
JOIN track AS tra
JOIN artist AS art
WHERE (art.ArtistId = alb.ArtistId AND alb.AlbumId = tra.AlbumId)
GROUP BY alb.Title