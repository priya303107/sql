DROP TABLE EmployeeE
CREATE TABLE EmployeeE (
Employee_ID INT PRIMARY KEY,
Employee_Name VARCHAR(50)
);
SELECT * FROM sys.tables WHERE name = 'EmployeeE';
go

IF OBJECT_ID('trg_Set_Employee_Name_Unnamed', 'TR') IS NOT NULL 
DROP TRIGGER trg_Set_Employee_Name_Unnamed;
go

CREATE TRIGGER trg_Set_Employee_Name_Unnamed 
ON EmployeeE
AFTER INSERT
AS 
BEGIN
UPDATE EmployeeE
SET Employee_Name = 'Unnamed'
WHERE Employee_Name IS NULL AND Employee_ID IN (SELECT Employee_ID FROM inserted); 
END;
GO
SELECT * FROM sys.triggers WHERE name = 'trg_Set_Employee_Name_Unnamed';
GO
IF OBJECT_ID('trg_New_Employee_Added', 'TR') IS NOT NULL 
DROP TRIGGER trg_New_Employee_Added; 
GO 

CREATE TRIGGER trg_New_Employee_Added 
ON EmployeeE
AFTER INSERT 
AS
BEGIN
PRINT 'New employee added!';
END;
GO 
SELECT * FROM sys.triggers WHERE name = 'trg_New_Employee_Added';


INSERT INTO EmployeeE (Employee_ID, Employee_Name)
VALUES (1, NULL); 
INSERT INTO EmployeeE (Employee_ID, Employee_Name) 
VALUES (2, 'John Doe'); 
SELECT * FROM EmployeeE;
