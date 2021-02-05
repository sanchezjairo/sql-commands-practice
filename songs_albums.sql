
CREATE TABLE Songs (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    name VARCHAR(70) NOT NULL,
    album_id INTEGER NOT NULL,
    FOREIGN KEY (album_id) REFERENCES Albums(id)
);

 /*  Created a table called 'songs' that has the following fields:
 * - id - integer, primary key
 * - name - string
 * - album_id - foreign key
 */
CREATE TABLE Albums (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    name VARCHAR(70) NOT NULL,
    artist VARCHAR(70) NOT NULL,
    year_published INTEGER NOT NULL
);

/* 
 * Inserted 5 rows of data into the songs table.
 */
INSERT INTO Songs
    (name, album_id)
VALUES
     ('California love', 1),
     ('yah mean', 2),
     ('Gods plan', 3),
     ('secrets', 4),
     ('Bored to Death', 5)
 
INSERT INTO Albums
    (name, artist, year_published)
VALUES
    ('All Eyez on Me', 'Tupac Shakur', 1996),
    ('Playboi Carti', 'Playboy Carti', 2017),
    ('Scorpion', 'Drake', 2018),
    ('Waking Up', 'OneRepublic', 2009),
    ('California', 'Blink-182', 2016)
;


/* Queries */

SELECT * FROM Songs;

SELECT * FROM Albums;

/* 
 *  made a table that joins a query to construct a table of Song Name : Album Name
 */
 SELECT Songs.name, Album.title FROM Songs
 JOIN Albums ON Albums.id = Songs.album_id

/*
 * Finds all albums published between 1970 and 1980.
 */
 SELECT Albums.title FROM Albums
 WHERE Albums.year_published > 1970 AND Albums.year_published < 1980

/*
 * Finds all songs on albums published between 1970 and 1980. 
 *(Hint: Use a table join.)
 */
SELECT Songs.name FROM Albums JOIN Songs
ON Albums.id = Songs.album_id
WHERE Albums.year_published > 1970 AND Albums.year_published < 1980;

 
/*
 * Finds all songs on albums with names containing 'California'.
 */
SELECT * FROM Songs
JOIN Albums ON Albums.id = Songs.album_id
WHERE Name LIKE "%California%";