-- 1.1.
use movies

SELECT m.TITLE, m.YEAR, s.NAME, s.ADDRESS
FROM MOVIE m
	JOIN STUDIO s ON m.STUDIONAME = s.NAME
WHERE m.LENGTH >= 120

-- 1.2.
SELECT DISTINCT s.NAME, s2.STARNAME
FROM STUDIO s
	JOIN MOVIE m ON s.NAME = m.STUDIONAME
	JOIN STARSIN s2 ON m.TITLE = s2.MOVIETITLE
ORDER BY s.NAME ASC

-- 1.3.
SELECT DISTINCT s.NAME
FROM STUDIO s
	JOIN MOVIE m ON s.NAME = m.STUDIONAME
	JOIN STARSIN s2 ON m.TITLE = s2.MOVIETITLE
WHERE s2.STARNAME = 'Harrison Ford'

-- 1.4.
SELECT DISTINCT s2.STARNAME
FROM STUDIO s
	JOIN MOVIE m ON s.NAME = m.STUDIONAME
	JOIN STARSIN s2 ON m.TITLE = s2.MOVIETITLE
WHERE s.NAME = 'MGM'

-- 1.5.
SELECT e.NAME, m.TITLE
FROM MOVIE m
    JOIN MOVIEEXEC e ON e.CERT# = m.PRODUCERC#
    JOIN MOVIE m2 ON m2.TITLE = 'Star Wars' AND m2.YEAR = 1977
WHERE m.PRODUCERC# = m2.PRODUCERC#

-- 1.6.
SELECT *
FROM MOVIESTAR m
	LEFT OUTER JOIN STARSIN s ON m.NAME = s.STARNAME
WHERE s.STARNAME is NULL

-- 2.1.
use pc

SELECT *
FROM product p
WHERE p.model NOT IN (
						SELECT l.model
						FROM laptop l
						UNION
						SELECT p.model
						FROM pc p
						UNION
						SELECT p2.model
						FROM printer p2)

-- 3.1.
use ships

SELECT s.NAME, c.COUNTRY, c.NUMGUNS, s.LAUNCHED
FROM SHIPS s
	JOIN CLASSES c ON s.CLASS = c.CLASS

-- 3.2.
SELECT *
FROM OUTCOMES o
	JOIN BATTLES b ON o.BATTLE = b.NAME
WHERE b.DATE LIKE '%1942%'

-- 3.3.
SELECT s.NAME
FROM SHIPS s
	LEFT OUTER JOIN OUTCOMES o ON s.NAME = o.SHIP
WHERE o.SHIP is NULL














-- EOF