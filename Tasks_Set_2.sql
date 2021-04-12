USE movies

--SELECT ms.NAME FROM MOVIESTAR ms JOIN STARSIN s ON ms.NAME = s.STARNAME
--WHERE ms.GENDER = 'm' AND s.MOVIETITLE = 'Terms of Endearment'

/*
SELECT * FROM STUDIO AS st 
	JOIN MOVIE AS m 
		ON st.PRESC# = m.PRODUCERC#
	JOIN STARSIN AS s
		ON m.TITLE = s.MOVIETITLE
WHERE st.NAME = 'MGM' AND m.YEAR = 1983
*/

--SELECT me.NAME FROM MOVIEEXEC AS me JOIN STUDIO AS s ON me.CERT# = s.PRESC#
--WHERE s.NAME = 'MGM'

/*
SELECT m1.TITLE
	FROM MOVIE AS m1
	JOIN MOVIE AS m2
		ON m2.TITLE = 'Star Wars' AND m2.YEAR = 1977
WHERE m1.LENGTH > m2.LENGTH
*/

USE pc

--SELECT p.maker, l.speed FROM laptop AS l JOIN product AS p ON l.model = p.model
--WHERE l.hd > 9

/*
SELECT u.model, u.price FROM product as p
	JOIN (
		SELECT model, price FROM laptop
		UNION 
		SELECT model, price FROM pc
		UNION
		SELECT model, price FROM printer
	) AS u
		ON p.model = u.model
WHERE p.maker = 'B'
ORDER BY price DESC
*/

/*
SELECT DISTINCT p1.hd
FROM pc p1
	JOIN pc p2
		ON p1.code != p2.code
WHERE p1.hd = p2.hd
*/

/*
SELECT p1.model, p2.model
FROM pc p1
	JOIN pc p2 ON p1.model < p2.model
WHERE p1.ram = p2.ram AND p1.speed = p2.speed
*/

/*
SELECT DISTINCT p1.maker FROM pc pc1
	JOIN pc pc2 ON pc1.code != pc2.code
	JOIN product p1 ON pc1.model = p1.model
	JOIN product p2 ON pc2.model = p2.model
WHERE pc1.speed >= 500 AND pc2.speed >= 500 AND p1.maker = p2.maker
*/

USE ships

/*
SELECT s.NAME FROM SHIPS AS s
	JOIN CLASSES AS c ON s.CLASS = c.CLASS
WHERE c.DISPLACEMENT > 35000
*/

/*
SELECT s.NAME, c.NUMGUNS, c.DISPLACEMENT FROM SHIPS AS s
	JOIN CLASSES AS c ON s.CLASS = c.CLASS
	JOIN OUTCOMES AS o ON s.NAME = o.SHIP
WHERE o.BATTLE = 'Guadalcanal'
*/

/*
SELECT DISTINCT c1.COUNTRY FROM CLASSES AS c1
	JOIN CLASSES AS c2 ON c1.COUNTRY = c2.COUNTRY
WHERE c1.TYPE = 'bb' AND c2.TYPE = 'bc'
*/

/*
SELECT o1.SHIP
FROM OUTCOMES o1
	JOIN BATTLES b1 ON o1.BATTLE = b1.NAME
	JOIN OUTCOMES o2 ON o2.SHIP = o1.SHIP
	JOIN BATTLES b2 ON o2.BATTLE = b2.NAME
WHERE o1.RESULT = 'damaged' AND b1.DATE < b2.DATE
*/