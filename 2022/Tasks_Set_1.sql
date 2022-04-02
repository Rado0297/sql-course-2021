USE movies

SELECT  *
FROM  MOVIE

-- 1.1.
SELECT s.ADDRESS 
FROM STUDIO s
WHERE s.NAME  = 'MGM'

-- 1.2.
SELECT m.BIRTHDATE
FROM MOVIESTAR m
WHERE m.NAME = 'Sandra Bullock'

-- 1.3.
SELECT s.STARNAME 
FROM STARSIN s
WHERE s.MOVIEYEAR = 1980 AND s.MOVIETITLE LIKE '%Empire%'

-- 1.4.
SELECT mc.NAME
FROM MOVIEEXEC mc
WHERE mc.NETWORTH >= 10000000

-- 1.5.
SELECT *
FROM MOVIESTAR mr
WHERE mr.GENDER = 'M' OR mr.ADDRESS LIKE '%Malibu'

-- 2.1.
USE pc

SELECT PC.model, PC.speed AS 'MHz', PC.hd AS 'GB' 
FROM PC
WHERE PC.price < 1200

-- 2.2.
SELECT l.model, l.price * 1.1
FROM laptop l
ORDER BY l.price ASC

-- 2.3.
SELECT l.model, l.ram, l.screen
FROM laptop l
WHERE l.price > 1000

-- 2.4.
SELECT *
FROM printer p
WHERE p.color = 'y'

-- 2.5.
SELECT PC.model, PC.speed, PC.hd
FROM PC
WHERE (PC.cd = '12x' OR PC.cd = '16x') AND PC.price < 2000

-- 2.6.
SELECT l.code, l.model, (l.speed + l.ram + 10*screen) as Rating
FROM laptop l
ORDER BY Rating DESC,
		l.code DESC

-- 3.1.
USE ships

SELECT c.CLASS, c.COUNTRY
FROM CLASSES c

-- 3.2.
SELECT s.NAME as shipName
FROM SHIPS s
WHERE s.LAUNCHED < 1918

-- 3.3.
SELECT o.SHIP, o.BATTLE
FROM OUTCOMES o
WHERE o.RESULT = 'sunk'

-- 3.4.
SELECT s.NAME
FROM SHIPS s
WHERE s.NAME = s.CLASS

-- 3.5.
SELECT s.NAME
FROM SHIPS s
WHERE s.NAME LIKE 'R%'

-- 3.6. HOW?????
SELECT *
FROM SHIPS s
WHERE s.NAME LIKE '%[ ]%' AND s.NAME NOT LIKE '%[ ]%[ ]%';















-- EOF