USE movies



USE pc

CREATE VIEW Extractor
AS
SELECT l.code, p.type, l.model, l.price
FROM product p
	JOIN laptop l ON p.model = l.model
WHERE l.price > 600
UNION
SELECT p2.code, p.type, p2.model, p2.price
FROM product p
	JOIN pc p2 ON p.model = p2.model
WHERE p2.price > 600
GO

USE ships

SELECT o.RESULT, COUNT(o.RESULT)
FROM CLASSES c
	JOIN SHIPS s ON c.CLASS = s.CLASS
	JOIN OUTCOMES o ON s.NAME = o.SHIP
WHERE c.DISPLACEMENT < 64000
GROUP BY o.RESULT
HAVING o.RESULT NOT LIKE 'sunk'

















