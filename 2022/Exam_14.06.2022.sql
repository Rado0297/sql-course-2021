use pc

SELECT p1.code, p.type, p.model, p1.speed
FROM product p
	JOIN pc p1 ON p.model = p1.model
WHERE p1.price > 600
UNION
SELECT l.code, p.type, p.model, l.speed
FROM product p
	JOIN laptop l ON p.model = l.model
WHERE l.price > 600

-- Task 3 - Custom view
CREATE VIEW CustomView
SELECT p1.code, p.type, p.model, p1.speed
FROM product p
	JOIN pc p1 ON p.model = p1.model
WHERE p1.price > 600
UNION
SELECT l.code, p.type, p.model, l.speed
FROM product p
	JOIN laptop l ON p.model = l.model
WHERE l.price > 600


use ships

SELECT *
FROM CLASSES c

CREATE VIEW UnderTen
SELECT *
FROM OUTCOMES o
	JOIN SHIPS s ON o.SHIP = s.NAME
	JOIN CLASSES c ON s.CLASS = c.CLASS
WHERE c.NUMGUNS < 10

DELETE FROM UnderTen


-- Task 2
SELECT c.CLASS, SUM(c.NUMGUNS) AS NumGunCount, COUNT(s.NAME) AS ShipsCount, COUNT(o.BATTLE) AS SurigaoStraitCount
FROM CLASSES c
	JOIN SHIPS s ON c.CLASS = s.CLASS
	JOIN OUTCOMES o ON s.NAME = o.SHIP
WHERE o.BATTLE LIKE 'Surigao Strait'
GROUP BY c.CLASS
HAVING COUNT(s.NAME) <= 4

-- Task 4
CREATE PROCEDURE SelectAllCustomers @Limit int
AS
SELECT * FROM Customers WHERE City = @Limit
GO;

EXEC SelectAllCustomers @Limit = 'London';




USE radkov;

SELECT COUNT(s.NAME), s.CLASS
FROM SHIPS s
GROUP BY s.CLASS

-- Create View Example
CREATE VIEW IowaShips AS
SELECT s.NAME, s.CLASS
FROM SHIPS s
WHERE s.CLASS = 'Iowa'

SELECT *
FROM IowaShips

-- Create Trigger Example
CREATE TRIGGER dbo.NewIowaShip
ON dbo.SHIPS
AFTER INSERT
AS
BEGIN
    SET NOCOUNT ON;
    INSERT INTO dbo.SHIPS (
        product_id, 
        product_name,
        brand_id,
        category_id,
        model_year,
        list_price, 
        updated_at, 
        operation
    )
    SELECT
        i.product_id,
        product_name,
        brand_id,
        category_id,
        model_year,
        i.list_price,
        GETDATE(),
        'INS'
    FROM
        inserted i
    UNION ALL
    SELECT
        d.product_id,
        product_name,
        brand_id,
        category_id,
        model_year,
        d.list_price,
        GETDATE(),
        'DEL'
    FROM
        deleted d;
END

-- Create Procedure Example
CREATE PROCEDURE SelectAllShips
AS
SELECT * FROM ships
GO;

EXEC SelectAllShips;























































