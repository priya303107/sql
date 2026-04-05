drop table Emplr
CREATE TABLE Emplr (
Employee_ID INT PRIMARY KEY,
Employee_Name VARCHAR(50),
Salary INT,
Department_ID VARCHAR(40)
);

INSERT INTO Emplr(Employee_ID, Employee_Name, Salary, Department_ID) 
VALUES
(1, 'Alice', 9000, 'D01'),
(2, 'Bob', 6000, 'D02'),
(3, 'Charlie', 4500, 'D03');
SELECT
Employee_Name, 
Salary,
CASE
WHEN Salary > 8000 THEN 'High'
WHEN Salary BETWEEN 5000 AND 8000 THEN 'Medium' 
ELSE 'Low'
END AS Salary_Category 
FROM Emplr;
go

SELECT
Employee_Name, 
Salary,
CASE
WHEN Salary > 6000 THEN 'Eligible for Bonus'
ELSE 'Not Eligible'
END AS Bonus_Status 
FROM Emplr;
go 

DROP PROCEDURE incrementcccounter;
GO

CREATE PROCEDURE incrementcccounter 
AS
BEGIN
DECLARE @Counter INT = 1;
WHILE @Counter <= 10 
BEGIN
PRINT 'Counter Value: ' + CAST(@Counter AS VARCHAR); 
SET @Counter = @Counter + 1;
END
END;

EXEC incrementcccounter;
go