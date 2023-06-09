USE movies

SELECT s.NAME FROM STUDIO s
WHERE s.NAME LIKE 'MGM'

SELECT ms.BIRTHDATE
FROM MOVIESTAR ms
WHERE ms.NAME LIKE 'Sandra Bullock'

SELECT sn.STARNAME
FROM STARSIN sn
WHERE sn.MOVIEYEAR = 1980 AND sn.MOVIETITLE LIKE '%Empire%'

SELECT me.NAME
FROM MOVIEEXEC me
WHERE me.NETWORTH > 10000000
--WHERE me.NETWORTH > 30000000

SELECT *
FROM MOVIESTAR ms
WHERE ms.GENDER LIKE 'M' OR ms.ADDRESS  LIKE 'Malibu'

USE pc

SELECT p.model, p.speed as MHz, p.hd AS GB
FROM pc p
WHERE p.price < 1200

SELECT l.model, l.price / 1.1
FROM laptop l
ORDER BY l.price ASC

SELECT l.model, l.ram, l.screen
FROM laptop l
WHERE l.price > 1000

SELECT *
FROM printer pr
WHERE pr.color = 'y'

SELECT p.model, p.speed, p.hd
FROM pc p
WHERE (p.cd LIKE '12x' OR p.cd LIKE '16x') AND p.price < 2000

SELECT l.code, l.model, (l.speed + l.ram + 10*l.screen) AS Rating
FROM laptop l
ORDER BY Rating, l.code

USE ships

SELECT c.CLASS, c.COUNTRY
FROM CLASSES c
WHERE c.NUMGUNS < 10

SELECT s.NAME as SHIP
FROM SHIPS s
WHERE s.LAUNCHED < 1918

SELECT o.SHIP, o.BATTLE
FROM OUTCOMES o
WHERE o.RESULT LIKE 'sunk'

SELECT s.NAME
FROM SHIPS s
WHERE s.NAME = s.CLASS

SELECT *
FROM SHIPS s
WHERE s.NAME LIKE 'R%'

SELECT *
FROM SHIPS s
WHERE s.NAME LIKE '%_ _%' AND s.NAME NOT LIKE '% % %'




















