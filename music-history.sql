SELECT * FROM Genre;

INSERT INTO "Artist" 
	(ArtistId, ArtistName, YearEstablished) 
		VALUES (null, "Cocteau Twins", 1980);
INSERT INTO "Album"
	(AlbumId, Title, ReleaseDate, AlbumLength, Label, ArtistId, GenreId)
		VALUES (null, "Head over Heels", "10/31/1983", 2033, "4AD", 28, 1);

INSERT INTO "Song"
	(SongId, Title, SongLength, ReleaseDate, GenreId, ArtistId, AlbumId)
		VALUES (null, "Sugar Hiccup", 400, "10/31/1983", 1, 28, 23);

SELECT * FROM Artist WHERE ArtistName = "Cocteau Twins";
SELECT ArtistName FROM Artist WHERE ArtistName = "Cocteau Twins";


SELECT al.title, Count(s.Title) AS 'Song Count'
FROM Song as s 
LEFT JOIN Album as al ON s.AlbumId = al.AlbumId
GROUP BY s.AlbumId;

SELECT ar.ArtistName AS ' Artist Name', Count(s.SongId) AS 'Song Count'
FROM Song as s 
LEFT JOIN Artist as ar ON s.ArtistId = ar.ArtistId
GROUP BY s.ArtistId;

Select g.Label AS "Genre Type", Count(s.SongId) AS 'Song Count'
FROM Song as s 
LEFT JOIN Genre as g ON s.GenreId = g.GenreId
GROUP BY s.GenreId;

SELECT Title, Max(AlbumLength) FROM Album;

SELECT Title, Max(SongLength), AlbumId FROM Song;

SELECT s.Title, a.Title, ar.ArtistName
FROM Song as s
LEFT JOIN Artist as ar ON s.ArtistId = ar.ArtistId
LEFT JOIN Album as a ON s.AlbumId = a.AlbumId
WHERE ar.ArtistName = "Black Flag";

SELECT s.Title, a.Title,  a.ReleaseDate, ar.ArtistName
FROM Song as s
LEFT JOIN Artist as ar ON s.ArtistId = ar.ArtistId
LEFT JOIN Album as a ON s.AlbumId = a.AlbumId
WHERE ar.ArtistName = "Cocteau Twins";

SELECT al.title "Album Title" , s.title "Song Title" , MAX(s.SongLength) "Song Length"
FROM Song as s 
LEFT JOIN Album as al ON al.AlbumId = s.AlbumId;

