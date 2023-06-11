USE movies

SELECT ms.NAME
FROM MOVIESTAR ms
	JOIN STARSIN s ON s.STARNAME = ms.NAME 
	JOIN MOVIE m ON m.TITLE = s.MOVIETITLE
WHERE ms.GENDER LIKE 'M' AND s.MOVIETITLE LIKE 'Terms of Endearment'

SELECT s.STARNAME
FROM STARSIN s
	JOIN MOVIE m ON s.MOVIETITLE = m.TITLE
WHERE m.STUDIONAME = 'MGM' AND m.YEAR = 1995

SELECT *
FROM MOVIE m
 JOIN MOVIEEXEC me ON m.PRODUCERC# = me.CERT#
WHERE m.STUDIONAME LIKE 'MGM'

SELECT *
FROM MOVIE m1
	JOIN MOVIE m2 ON m2.TITLE = 'Star Wars'
WHERE m1.LENGTH > m2.LENGTH

USE pc

SELECT p.maker, l.speed
FROM laptop l
	JOIN product p ON l.model = p.model
WHERE l.hd >= 9

SELECT u.model, u.price, p.maker
FROM product p
	JOIN (SELECT l.model, l.price FROM laptop l
			UNION
			SELECT p2.model, p2.price FROM pc p2
			UNION
			SELECT pr.model, pr.price FROM printer pr) u ON p.model = u.model
WHERE p.maker LIKE 'B'
ORDER BY price DESC

SELECT DISTINCT p1.hd
FROM pc p1
	JOIN pc p2 ON p1.code != p2.code
WHERE p1.hd = p2.hd

SELECT p1.model, p2.model
FROM pc p1
	JOIN pc p2 ON p1.model < p2.model
WHERE p1.ram = p2.ram AND p1.speed = p2.speed

SELECT DISTINCT p1.maker
FROM pc pc1
    JOIN pc pc2 ON pc1.code != pc2.code
    JOIN product p1 ON pc1.model = p1.model
    JOIN product p2 ON pc2.model = p2.model
WHERE pc1.speed >= 500 AND pc2.speed >= 500 AND p1.maker = p2.maker

USE ships

SELECT s.NAME
FROM SHIPS s
	JOIN CLASSES c ON s.CLASS = c.CLASS
WHERE c.DISPLACEMENT > 35000

SELECT s.NAME, c.DISPLACEMENT, c.NUMGUNS
FROM CLASSES c
	JOIN SHIPS s ON c.CLASS = s.CLASS
	JOIN OUTCOMES o ON s.NAME = o.SHIP
WHERE o.BATTLE LIKE 'Guadalcanal'

SELECT DISTINCT c1.COUNTRY
FROM CLASSES c1 
    JOIN CLASSES c2 ON c1.COUNTRY = c2.COUNTRY
WHERE c1.TYPE = 'bb' and c2.TYPE = 'bc'

SELECT o1.SHIP
FROM OUTCOMES o1
    JOIN BATTLES b1 ON o1.BATTLE = b1.NAME
    JOIN OUTCOMES o2 ON o1.SHIP = o2.SHIP
    JOIN BATTLES b2 ON o2.BATTLE = b2.NAME
WHERE o1.RESULT = 'damaged' AND b1.DATE < b2.DATE



















