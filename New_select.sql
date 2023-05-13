SELECT  g.name, count(p.name)
FROM genre as g
LEFT JOIN  genreperformer AS  gp ON  g.id = gp.genre_id
LEFT JOIN  performer AS  p  ON  gp.performer_id = p.id
GROUP BY  g.name
ORDER BY  count(p.id) DESC;

SELECT t.name, a.year_of_issue
FROM album a 
LEFT JOIN track t ON t.album_id = a.id 
WHERE (a.year_of_issue >= 2019) AND (a.year_of_issue <= 2020);


SELECT a.name, avg(t.duration) 
FROM album a 
LEFT JOIN track t ON album_id = a.id 
GROUP BY a.name 
ORDER BY AVG (t.duration);

SELECT p.name 
FROM performer p 
WHERE p.name NOT IN (SELECT p.name FROM performer p
		 LEFT JOIN performeralbum AS pa ON p.id = pa.performer_id 
		 LEFT JOIN album AS a ON a.id = pa.album_id
		 WHERE a.year_of_issue = 2020)
ORDER BY p.name;	


SELECT DISTINCT  c.name 
FROM collection c 
LEFT JOIN trackcollection tc ON c.id = tc.collection_id 
LEFT JOIN track t ON t.id = tc.track_id 
LEFT JOIN album a ON a.id = t.album_id 
LEFT JOIN performeralbum pa ON pa.album_id = a.id 
LEFT JOIN performer p ON p.id = pa.performer_id 
WHERE p.name LIKE '%%Maksim%%'
ORDER BY c.name;


SELECT a.name 
FROM album a 
LEFT JOIN performeralbum pa ON a.id = pa.album_id 
LEFT JOIN performer p ON p.id = pa.performer_id 
LEFT JOIN genreperformer gp ON p.id = gp.performer_id 
LEFT JOIN genre g ON g.id = gp.genre_id 
GROUP BY a.name 
HAVING count(g.name) > 1
ORDER BY a.name;

select t.name
from track AS  t
LEFT JOIN  trackcollection AS tc ON  t.id = tc.track_id
WHERE  tc.track_id IS NULL;


SELECT p.name, t.duration 
FROM track t 
LEFT JOIN album a ON a.id = t.album_id 
LEFT JOIN performeralbum pa ON pa.album_id = a.id 
LEFT JOIN performer p ON p.id = pa.performer_id 
GROUP BY p.name, t.duration 
HAVING t.duration = (SELECT min(duration) FROM track);


SELECT a.name 
FROM album a 
LEFT JOIN track t ON t.album_id = a.id 
WHERE t.album_id IN (SELECT album_id
			FROM track 
			GROUP BY album_id
			HAVING count(id) = (SELECT count(id) FROM track 
								GROUP BY album_id
								ORDER BY count 
								LIMIT 1)
);
					
					







