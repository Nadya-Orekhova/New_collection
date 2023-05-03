SELECT name, year_of_issue  FROM  album 
WHERE year_of_issue = 2018;

SELECT name, duration FROM track 
ORDER BY duration DESC LIMIT 1 ;

SELECT name FROM track 
WHERE duration >= 210;

SELECT name  FROM collection 
WHERE (year_of_issue >= 2018) AND (year_of_issue >= 2018) ;

SELECT name FROM performer 
WHERE NOT name LIKE '%% %%' ;

SELECT name FROM track 
WHERE name LIKE '%my%' ;



