USE movies

-- 1.1.
SELECT s.STARNAME
FROM STARSIN s
WHERE s.STARNAME IN (SELECT m.NAME FROM MOVIESTAR m WHERE m.GENDER = 'M') AND s.MOVIETITLE = 'Terms of Endearment'

-- 1.2.
SELECT s.STARNAME
FROM STARSIN s
WHERE s.MOVIETITLE IN (SELECT m.TITLE FROM MOVIE m WHERE m.STUDIONAME = 'MGM' AND m.YEAR = 1995)

-- 1.3.
SELECT mc.NAME
FROM STUDIO s
	JOIN MOVIEEXEC mc ON s.PRESC#  = mc.CERT#
WHERE s.NAME = 'MGM'

-- 1.4.
SELECT *
FROM MOVIE m
	JOIN MOVIE m2 ON m2.TITLE = 'Star Wars' AND m2.YEAR = 1977
WHERE m.LENGTH > m2.LENGTH

-- 2.1.
USE pc

SELECT p.maker, l.speed
FROM laptop l
	JOIN product p ON p.model = l.model
WHERE l.hd >= 9

-- 2.2.
SELECT p.model, p.price
FROM pc p
	JOIN product p2 ON p2.model = p.model
WHERE p2.maker = 'B'
UNION
SELECT l.model, l.price
FROM laptop l
	JOIN product p ON p.model = l.model
WHERE p.maker = 'B'
UNION
SELECT pr.model, pr.price
FROM printer pr
	JOIN product p ON p.model = pr.model
WHERE p.maker = 'B'
ORDER BY price DESC

-- 2.3.
SELECT DISTINCT p1.hd
FROM pc p
	JOIN pc p2 ON p.code != p2.code
WHERE p.hd = p2.hd

-- 2.4.
SELECT p1.model, p2.model
FROM pc p1
    JOIN pc p2 ON p1.model < p2.model
WHERE p1.ram = p2.ram AND p1.speed = p2.speed

-- 2.5.
SELECT DISTINCT p1.maker
FROM pc pc1
	JOIN pc pc2 ON pc1.code != pc2.code
	JOIN product p1 ON pc1.model = p1.model
	JOIN product p2 ON pc2.model = p2.model
WHERE pc1.speed >= 1000 AND pc2.speed >= 1000 AND p1.maker = p2.maker

-- 3.1.
USE ships

SELECT 
FROM CLASSES c
WHERE c.DISPLACEMENT > 35000

-- 3.2.
SELECT s.NAME, c.DISPLACEMENT, c.NUMGUNS
FROM CLASSES c
	JOIN SHIPS s ON c.CLASS = s.CLASS
	JOIN OUTCOMES o ON s.NAME = o.SHIP
WHERE o.BATTLE = 'Guadalcanal'

-- 3.3.
SELECT DISTINCT c1.COUNTRY
FROM CLASSES c1 
    JOIN CLASSES c2 ON c1.COUNTRY = c2.COUNTRY
WHERE c1.TYPE = 'bb' and c2.TYPE = 'bc'

-- 3.4.
-- is it possible solution?
SELECT o.SHIP
FROM OUTCOMES o
	JOIN OUTCOMES o2 ON o.SHIP = o2.SHIP
WHERE o.RESULT = 'damaged' AND o.BATTLE != o2.BATTLE

SELECT o1.SHIP
FROM OUTCOMES o1
    JOIN BATTLES b1 ON o1.BATTLE = b1.NAME
    JOIN OUTCOMES o2 ON o1.SHIP = o2.SHIP
    JOIN BATTLES b2 ON o2.BATTLE = b2.NAME
WHERE o1.RESULT = 'damaged' AND b1.DATE < b2.DATE


















-- EOF