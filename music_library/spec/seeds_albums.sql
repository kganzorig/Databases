TRUNCATE TABLE albums RESTART IDENTITY; -- replace with your own table name.
TRUNCATE TABLE artists RESTART IDENTITY;

-- Below this line there should only be `INSERT` statements.
-- Replace these statements with your own seed data.

INSERT INTO albums (title, release_year, artist_id) VALUES('Doolittle', '1989', '1');
INSERT INTO albums (title, release_year, artist_id) VALUES('Waterloo', '1974', '2');