-- 1.1.
use pc

SELECT AVG(p.speed)
FROM pc p

-- 1.2.
SELECT p.maker, AVG(l.speed)
FROM laptop l
	JOIN product p ON l.model = p.model
GROUP BY p.maker

-- 1.3.
SELECT AVG(l.speed)
FROM laptop l
WHERE l.price > 1000

-- 1.4.
SELECT p.maker, AVG(p2.price)
FROM pc p2
	JOIN product p ON p2.model = p.model
WHERE p.maker = 'A'
GROUP BY p.maker

-- 1.5.
SELECT p.maker, AVG(p2.price)
FROM pc p2
	JOIN product p ON p2.model = p.model
WHERE p.maker = 'B'
GROUP BY p.maker
UNION
SELECT p.maker, AVG(l.price)
FROM laptop l
	JOIN product p ON l.model = p.model
WHERE p.maker = 'B'
GROUP BY p.maker

-- 1.6.
SELECT AVG(p.price)
FROM pc p
GROUP BY p.speed

-- 1.7.
SELECT p.maker
FROM product p
WHERE p.type = 'PC'
GROUP BY p.maker
HAVING COUNT(*) >= 3

-- 1.8.
SELECT DISTINCT maker
FROM product
   JOIN pc ON product.model = pc.model
WHERE price = (SELECT MAX(price) FROM pc)

-- 1.9.
SELECT p.speed, AVG(p.price)
FROM pc p
WHERE p.price > 800
GROUP BY p.speed

-- 1.10.
SELECT AVG(p2.hd) AverageHD
FROM product p
    JOIN pc p2 ON p.model = p2.model
WHERE p.maker IN (SELECT maker
                FROM product
                WHERE type = 'Printer')

-- 1.11.
SELECT screen, MAX(price) - MIN(price) AS PriceDiff
FROM laptop
GROUP BY screen

-- 2.1.
use ships

SELECT COUNT(c.CLASS) as CountOfClasses
FROM CLASSES c

-- 2.2.
SELECT AVG(c.NUMGUNS) as AvgNumGuns
FROM CLASSES c
	JOIN SHIPS s ON c.CLASS = s.CLASS

-- 2.3.
SELECT DISTINCT s.CLASS, s.LAUNCHED
FROM CLASSES c
	JOIN SHIPS s ON c.CLASS = s.CLASS
WHERE s.LAUNCHED IN (SELECT MAX(s2.LAUNCHED) FROM SHIPS s2 WHERE s2.CLASS = s.CLASS)
	OR s.LAUNCHED IN (SELECT MIN(s3.LAUNCHED) FROM SHIPS s3 WHERE s3.class = s.CLASS)
ORDER BY s.CLASS ASC

-- 2.4.
SELECT s.CLASS, COUNT(s.CLASS)
FROM SHIPS s
	JOIN OUTCOMES o ON s.NAME = o.SHIP
WHERE o.RESULT = 'sunk'
GROUP BY s.CLASS

-- 2.5.
SELECT s.CLASS, COUNT(s.CLASS)
FROM SHIPS s
	JOIN OUTCOMES o ON s.NAME = o.SHIP
WHERE o.RESULT = 'sunk'
GROUP BY s.CLASS
HAVING s.CLASS IN (SELECT DISTINCT s.CLASS
					FROM SHIPS s
					GROUP BY s.CLASS
					HAVING COUNT(s.LAUNCHED) > 4)

-- 2.6.
SELECT c.COUNTRY, AVG(c.DISPLACEMENT)
FROM SHIPS s
	JOIN CLASSES c ON s.CLASS = c.CLASS
GROUP BY c.COUNTRY

-- EOF