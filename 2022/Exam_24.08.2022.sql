USE pc;

CREATE VIEW Custom1 AS
SELECT l.code, p.type, p.model, l.price
FROM PRODUCT p
	JOIN LAPTOP l ON p.model = l.model
WHERE l.price > 600
UNION
SELECT p1.code, p.type, p.model, p1.price
FROM PRODUCT p
	JOIN PC p1 ON p.model = p1.model
WHERE p1.price > 600

SELECT *
FROM product p

USE ships;


SELECT DISTINCT  s.NAME
FROM CLASSES c
	JOIN SHIPS s ON c.CLASS = s.CLASS
	JOIN OUTCOMES o ON s.NAME = o.SHIP
WHERE c.COUNTRY = 'USA' AND c.NUMGUNS > 10

SELECT *
FROM SHIPS
WHERE CLASS LIKE 'North%'

SELECT s.NAME, (SELECT COUNT(s1.NAME)
				FROM SHIPS s1
				JOIN CLASSES c2 ON s1.CLASS = c2.CLASS
				WHERE c2.DISPLACEMENT = c.DISPLACEMENT)
FROM CLASSES c
	JOIN SHIPS s ON c.CLASS = s.CLASS
	JOIN OUTCOMES o ON s.NAME = o.SHIP
WHERE c.DISPLACEMENT < 64000


SELECT COUNT(o.RESULT), o.RESULT
FROM SHIPS s
	JOIN OUTCOMES o ON s.NAME = o.SHIP
GROUP BY o.RESULT























