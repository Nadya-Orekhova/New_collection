INSERT INTO genre (name)
VALUES ('Pop'), ('Rock'), ('Hip-hop'), ('Techno'), ('Metal');

INSERT	INTO performer (name)
VALUES ('Maksim'), ('Queen'), ('Nirvana'), ('RHCP'), ('Basta'), ('Boris'), ('Ben Adam'), ('Metallica');

INSERT INTO genreperformer (genre_id, performer_id)
VALUES (1, 1), (2, 2), (2, 3), (2, 4), (3, 5), (4, 6), (5, 7), (5, 8);

INSERT INTO album (name, year_of_issue)
VALUES ('Tears', 2018), ('On Air', 2017), ('Nirvana', 2002), ('The Getaway', 2016), ('Mona', 2020), ('Space Diver', 2021), ('best', 2019), ('Death', 2019);

INSERT INTO performeralbum (performer_id, album_id)
VALUES (1, 1), (2, 2), (3, 3), (4, 4), (5, 5), (6, 6), (7, 7), (8, 8);

INSERT INTO track (album_id, name, duration)
VALUES (1, 'Tears', 180), (1, 'Letting go', 270), (2, 'Fly', 210), (2, 'Radio Ga GA', 600), (2, 'Somebody', 510), (3, 'Rape Me', 99), (3, 'In Bloom', 828), (3, 'Polly', 510), (3, 'Dumb', 330), (4, 'Sappy',150), (5, 'Snow', 600), (5,'Cant stop', 330), (5, 'Road', 510),  (6, 'ZZZ', 198), (7, 'Moscow', 612), (8, 'Die', 90), (8, 'Master', 600);

INSERT INTO collection (name, year_of_issue)
VALUES ('Basta', 2017), ('Best', 2016), ('Rock Stars', 2022), ('Pub Rock', 2022), ('See My', 2018), ('Swizz', 2002), ('BBQ', 2021), ('Ultra', 2019);

INSERT INTO trackcollection (track_id, collection_id)
VALUES (1, 1), (4, 2), (4, 3), (4, 4), (5, 5), (15, 6), (13, 7), (17,8);

INSERT INTO track (album_id, name, duration)
VALUES (1, 'my', 180);
