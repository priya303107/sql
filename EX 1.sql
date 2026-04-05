IF OBJECT_ID('dbo.count70','U')IS NOT NULL
BEGIN 
DROP TABLE dbo.count70;
END;
CREATE TABLE countriesS (
country_id INT,
country_name VARCHAR(50), 
region_id INT
);
INSERT INTO countriesS (country_id, country_name, region_id) VALUES 
(1, 'USA', 1),
(2, 'Canada', 1),
(3, 'Germany', 2),
(4, 'Australia', 3),
(5, 'Japan', 4);

Select * from countriesS

ALTER TABLE countriesS ADD capital VARCHAR(50);


UPDATE countriesS SET capital = 'Washington D.C.' WHERE country_id = 1; 
UPDATE countriesS SET capital = 'Ottawa' WHERE country_id = 2; 
UPDATE countriesS SET capital = 'Berlin' WHERE country_id = 3;
UPDATE countriesS SET capital = 'Canberra' WHERE country_id = 4; 
UPDATE countriesS SET capital = 'Tokyo' WHERE country_id = 5;
SELECT *FROM countrIEsS
DELETE FROM countriesS WHERE country_id = 5; 
ALTER TABLE countriesS DROP COLUMN country_id;
