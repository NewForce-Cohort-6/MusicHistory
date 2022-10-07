--1. Query all of the entries in the `Genre` table
--SELECT Id, [Label] FROM Genre;

--2. Query all the entries in the `Artist` table and order by the artist's name. HINT: use the ORDER BY keywords
--SELECT Id, ArtistName, YearEstablished FROM Artist Order by ArtistName

--3. Write a `SELECT` query that lists all the songs in the `Song` table and include the Artist name
--SELECT Song.Id As 'Song Id', Song.Title, Song.SongLength, Song.ReleaseDate, Song.GenreId, Song.ArtistId, Song.AlbumId, a.Id As 'Artist Id', a.ArtistName, a.YearEstablished
--FROM Song
--Join Artist a on Song.ArtistId = a.Id

--4. Write a `SELECT` query that lists all the Artists that have a Pop Album
--SELECT * From Artist a
--Join Album al on a.Id = al.ArtistId
--Join Genre g on al.GenreId = g.Id
--WHERE g.[Label] = 'Pop'
--SELECT * From Artist a
--Join Album al on a.Id = al.ArtistId
--WHERE al.GenreId = 7
--SELECT * FROM Genre

--5. Write a `SELECT` query that lists all the Artists that have a Jazz or Rock Album
--SELECT * From Artist a
--Join Album al on a.Id = al.ArtistId
--Join Genre g on al.GenreId = g.Id
--WHERE g.[Label] = 'Rock' OR g.[Label] = 'Jazz'

--6. Write a `SELECT` statement that lists the Albums with no songs
--SELECT * FROM Album a
--Left Join Song s on a.id = s.AlbumId
--WHERE s.Id IS Null

--7. Using the `INSERT` statement, add one of your favorite artists to the `Artist` table.
--INSERT INTO Artist (ArtistName, YearEstablished) VALUES ('Taylor Swift', 2004);
--SELECT * FROM Artist 
--WHERE ArtistName = 'Taylor Swift'

--8. Using the `INSERT` statement, add one, or more, albums by your artist to the `Album` table.
--INSERT INTO Album (Title, ReleaseDate, AlbumLength, [Label], ArtistId, GenreId) VALUES ('Folklore', '07/24/2020', 3809, 'Republic', 28, 7);
--SELECT * FROM Album
--WHERE Title = 'Folklore'


--9. Using the `INSERT` statement, add some songs that are on that album to the `Song` table.

--INSERT INTO Song (Title, SongLength, ReleaseDate, GenreId, ArtistId, AlbumId) VALUES ('The 1', 210, '07/24/2020', 7, 28, 23);
--INSERT INTO Song (Title, SongLength, ReleaseDate, GenreId, ArtistId, AlbumId) VALUES ('Cardigan', 239, '07/24/2020', 7, 28, 23);
--INSERT INTO Song (Title, SongLength, ReleaseDate, GenreId, ArtistId, AlbumId) VALUES ('The Last Great American Dynasty', 231, '07/24/2020', 7, 28, 23);
--INSERT INTO Song (Title, SongLength, ReleaseDate, GenreId, ArtistId, AlbumId) VALUES ('Exile', 285, '07/24/2020', 7, 28, 23);
--INSERT INTO Song (Title, SongLength, ReleaseDate, GenreId, ArtistId, AlbumId) VALUES ('My Tears Ricochet', 255, '07/24/2020', 7, 28, 23);
--INSERT INTO Song (Title, SongLength, ReleaseDate, GenreId, ArtistId, AlbumId) VALUES ('Mirrorball', 209, '07/24/2020', 7, 28, 23);
--INSERT INTO Song (Title, SongLength, ReleaseDate, GenreId, ArtistId, AlbumId) VALUES ('Seven', 208, '07/24/2020', 7, 28, 23);
--INSERT INTO Song (Title, SongLength, ReleaseDate, GenreId, ArtistId, AlbumId) VALUES ('August', 261, '07/24/2020', 7, 28, 23);
--INSERT INTO Song (Title, SongLength, ReleaseDate, GenreId, ArtistId, AlbumId) VALUES ('This is Me Trying', 195, '07/24/2020', 7, 28, 23);
--INSERT INTO Song (Title, SongLength, ReleaseDate, GenreId, ArtistId, AlbumId) VALUES ('Illicit Affairs', 190, '07/24/2020', 7, 28, 23);
--INSERT INTO Song (Title, SongLength, ReleaseDate, GenreId, ArtistId, AlbumId) VALUES ('Invisible String', 252, '07/24/2020', 7, 28, 23);
--INSERT INTO Song (Title, SongLength, ReleaseDate, GenreId, ArtistId, AlbumId) VALUES ('Mad Woman', 237, '07/24/2020', 7, 28, 23);
--INSERT INTO Song (Title, SongLength, ReleaseDate, GenreId, ArtistId, AlbumId) VALUES ('Epiphany', 289, '07/24/2020', 7, 28, 23);
--INSERT INTO Song (Title, SongLength, ReleaseDate, GenreId, ArtistId, AlbumId) VALUES ('Betty', 294, '07/24/2020', 7, 28, 23);
--INSERT INTO Song (Title, SongLength, ReleaseDate, GenreId, ArtistId, AlbumId) VALUES ('Peace', 236, '07/24/2020', 7, 28, 23);
--INSERT INTO Song (Title, SongLength, ReleaseDate, GenreId, ArtistId, AlbumId) VALUES ('Hoax', 220, '07/24/2020', 7, 28, 23);
--INSERT INTO Song (Title, SongLength, ReleaseDate, GenreId, ArtistId, AlbumId) VALUES ('The Lakes', 211, '07/24/2020', 7, 28, 23);
--INSERT INTO Song (Title, SongLength, ReleaseDate, GenreId, ArtistId, AlbumId) VALUES ('This should be null', 211, 'delete me', null, 28, 23);

--SELECT * FROM Song 
--Where ArtistId = 28

--10. Write a `SELECT` query that provides the song titles, album title, and artist name for all of the data you just entered in. Use the [`LEFT JOIN`](https://www.tutorialspoint.com/sql/sql-using-joins.htm) keyword sequence to connect the tables, and the `WHERE` keyword to filter the results to the album and artist you added.
--    > **Reminder:** Direction of join matters. Try the following statements and see the difference in results.

--    ```
--    SELECT a.Title, s.Title FROM Album a LEFT JOIN Song s ON s.AlbumId = a.Id;
--    SELECT a.Title, s.Title FROM Song s LEFT JOIN Album a ON s.AlbumId = a.Id;
--    ```
   --SELECT a.Title AS 'Album Title', s.Title AS 'Song Title', ar.ArtistName
   --FROM Album a 
   --LEFT JOIN Song s ON s.AlbumId = a.Id
   --LEFT JOIN Artist ar ON s.ArtistId = ar.Id
   --WHERE ar.ArtistName = 'Taylor Swift' AND a.Title = 'Folklore';




--11. Write a `SELECT` statement to display how many songs exist for each album. You'll need to use the `COUNT()` function and the `GROUP BY` keyword sequence.

--SELECT a.Title, COUNT(s.Id) AS '# of songs' from Album a
--Left Join Song s on a.Id = s.AlbumId
--Group by a.Title


--select * from album a
--left join song s on a.id = s.AlbumId

--12. Write a `SELECT` statement to display how many songs exist for each artist. You'll need to use the `COUNT()` function and the `GROUP BY` keyword sequence.

--SELECT a.ArtistName, COUNT(s.Id) AS '# of songs' from Artist a
--Left Join Song s on a.Id = s.ArtistId
--Group by a.ArtistName

--13. Write a `SELECT` statement to display how many songs exist for each genre. You'll need to use the `COUNT()` function and the `GROUP BY` keyword sequence.

--SELECT * FROM Genre g
--Left JOIN Song s on g.Id = s.GenreId

--SELECT g.[Label], Count(s.Id) as '# of songs'FROM Genre g
--Left JOIN Song s on g.Id = s.GenreId
--GROUP BY g.[Label]

--1. Write a `SELECT` query that lists the Artists that have put out records on more than one record label. Hint: When using `GROUP BY` instead of using a `WHERE` clause, use the [`HAVING`](https://www.tutorialspoint.com/sql/sql-having-clause.htm) keyword


--SELECT * FROM Artist a
--Left Join Album m on a.Id = m.ArtistId

--SELECT a.ArtistName, COUNT(distinct m.Label) as '# of Labels' FROM Artist a
--Left Join Album m on a.Id = m.ArtistId
--Group by a.ArtistName
--Having Count(Distinct m.[Label]) > 1

--1. Using `MAX()` function, write a select statement to find the album with the longest duration. The result should display the album title and the duration.
--SELECT TOP 5 Title, AlbumLength FROM Album
--ORDER BY AlbumLength DESC

--SELECT MAX(AlbumLength) AS Duration
--FROM Album;

--Select Title , AlbumLength FROM Album
--WHERE AlbumLength = (SELECT MAX(AlbumLength) AS Duration
--FROM Album)


--1. Using `MAX()` function, write a select statement to find the song with the longest duration. The result should display the song title and the duration.

--Select Top 1 * From Song
--Order by SongLength Desc

--Select MAX(SongLength) as 'Song Duration'
--From Song

Select Title, SongLength From Song
Where SongLength = (Select MAX(SongLength) as 'Song Duration'
From Song)

--1. Modify the previous query to also display the title of the album.
Select s.Title AS 'Song Title', s.SongLength, a.Title AS 'Album Title' From Song s
Join Album a on s.AlbumId = a.Id
Where s.SongLength = (Select MAX(SongLength) as 'Song Duration'
From Song)