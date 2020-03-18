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
