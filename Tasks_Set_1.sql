USE movies

-- 1.1. Напишете заявка, която извежда имената на актьорите мъже, участвали в ‘Terms
--      of Endearment’

--SELECT * FROM MOVIE
--WHERE STUDIONAME = 'Disney' AND YEAR = 1990
--SELECT * FROM MOVIE CROSS JOIN STARSIN
--WHERE MOVIE.TITLE = STARSIN.MOVIETITLE and MOVIE.YEAR = STARSIN.MOVIEYEAR

--SELECT ADDRESS FROM STUDIO
--WHERE STUDIO.NAME = 'MGM'

--SELECT BIRTHDA FROM MOVIESTAR
--WHERE MOVIESTAR.NAME = 'Sandra Bullock'

/*SELECT m.NAME
FROM MOVIESTAR m 
	JOIN STARSIN s 
	ON m.NAME = s.STARNAME
WHERE s.MOVIEYEAR = 1980 and s.MOVIETITLE LIKE 'Empire'*/

USE pc

--SELECT p.model, p.speed as 'Mhz', p.hd as 'GB' from pc p
--WHERE p.price < 1200

--SELECT p.model, p.price*1.1 FROM pc p
--ORDER BY p.price ASC

--SELECT l.model, l.ram, l.screen FROM laptop l
--WHERE l.price > 1000

--SELECT * FROM printer p
--WHERE p.color = 'y'

--SELECT p.model, p.speed, p.hd, p.cd FROM pc p
--WHERE p.price < 2000 and (p.cd = '12x' or p.cd = '16x')

--SELECT l.code, l.model, (l.speed+l.ram+10*l.screen) as Rating FROM laptop l

USE ships

--SELECT c.CLASS, c.COUNTRY FROM CLASSES c
--WHERE c.NUMGUNS < 10

--SELECT s.NAME as 'shipName' FROM ships s
--WHERE s.LAUNCHED < 1918

--SELECT s.NAME, o.BATTLE FROM SHIPS s JOIN OUTCOMES o ON s.NAME = o.SHIP
--WHERE o.RESULT = 'sunk'

--SELECT s.NAME FROM SHIPS s
--WHERE s.NAME = s.CLASS

--SELECT s.NAME FROM SHIPS s
--WHERE s.NAME LIKE 'R%'

SELECT s.NAME FROM SHIPS s
WHERE s.NAME LIKE '% %' AND s.NAME NOT LIKE '% % %'

--USE ships
--SELECT * FROM BATTLES

--USE ships
--SELECT * FROM CLASSES
--SELECT * FROM ships

/*SELECT s.NAME, c.NUMGUNS, c.DISPLACEMENT
FROM CLASSES c
	JOIN ships s ON c.CLASS = s.CLASS
WHERE s.LAUNCHED > 1941*/

/*SELECT b.NAME
FROM BATTLES b JOIN CLASSES c ON c.NUMGUNS = 6*/