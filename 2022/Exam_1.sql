use movies

-- Task 1
SELECT ms.NAME, ms.BIRTHDATE
FROM MOVIESTAR ms
WHERE ms.GENDER = 'F' AND ms.NAME LIKE '%e%'
ORDER BY ms.NAME ASC, ms.BIRTHDATE DESC

-- Task 2
use pc

SELECT p.maker, COUNT(l.model)
FROM product p
	LEFT OUTER JOIN laptop l ON p.model = l.model
GROUP BY p.maker

-- Task 3
SELECT p.model, COUNT(l.model) 
FROM product p
	LEFT OUTER JOIN laptop l ON p.model = l.model
WHERE p.maker IN (SELECT DISTINCT p.maker FROM product p WHERE p.type = 'PC') AND p.type = 'Laptop' or p.type = 'PC'
GROUP BY p.model

-- Task 4
use ships

SELECT DISTINCT c.COUNTRY
FROM CLASSES c
	JOIN SHIPS s ON c.CLASS = s.CLASS
WHERE (s.LAUNCHED LIKE '1942' AND s.NAME IN (SELECT o.SHIP FROM OUTCOMES o WHERE o.RESULT = 'ok'))
	OR c.NUMGUNS = 8