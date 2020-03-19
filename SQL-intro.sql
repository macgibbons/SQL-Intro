--SELECT Title FROM Album
--WHERE Label = 'Columbia'

--SELECT al.Title, ar.ArtistName FROM Album al
--left join Artist ar ON ar.Id = al.ArtistId

--SELECT al.Title, al.Id, ar.ArtistName, g.Label FROM Album al
--left join Artist ar ON ar.Id = al.ArtistId
--left join Genre g ON g.Id = al.GenreId
--WHERE al.Id = 17

--UPDATE Album
--SET Title = 'Eliminater 2 : Judgementday'
--WHERE Id = 17

--SELECT * FROM Album
--WHERE Id = 17

SELECT * FROM Genre

INSERT INTO Artist (ArtistName, YearEstablished) VALUES ('Cohort37', '2020');

SELECT * FROM Artist

INSERT INTO Album (Title, ReleaseDate, ArtistId, AlbumLength, Label, GenreId) VALUES ('Test Album', '3/18/2020', 28, 29893, 'DefJam', 1)

SELECT * FROM Album

INSERT INTO Song (Title, ReleaseDate, ArtistId, SongLength, GenreId, AlbumId) VALUES ('Test Song 2', '3/18/2020', 28, 61,  1, 23)

SELECT * FROM Song

	--SELECT a.Title, s.Title, ar.ArtistName, g.Label
	--FROM Song s
	--LEFT JOIN Album a
	--on s.AlbumId = a.Id
	--LEFT JOIN Artist ar
	--ON s.ArtistId = ar.Id
	--LEFT JOIN Genre g
	--ON s.GenreId = g.Id

--ordering he albums by amount of songs and displaying the number of songs per album
SELECT COUNT(AlbumId)
AS 'Song Count', a.Title
FROM Song s
LEFT JOIN Album a
ON s.AlbumId = a.Id
GROUP BY AlbumId, a.Title
ORDER BY COUNT(AlbumId);

--ordering he artist by amount of songs and displaying the number of songs per artist
SELECT COUNT(ArtistId)
AS 'Song Count', ar.ArtistName
FROM Song s
LEFT JOIN Artist ar
ON s.ArtistId = ar.Id
GROUP BY ArtistId, ar.ArtistName
ORDER BY COUNT(ArtistId);

--ordering he artist by amount of songs and displaying the number of songs per artist
SELECT COUNT(GenreId)
AS 'Song Count', g.Label
FROM Song s
LEFT JOIN Genre g
ON s.GenreId = g.Id
GROUP BY GenreId, g.Label
ORDER BY COUNT(GenreId);