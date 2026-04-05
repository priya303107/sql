drop table Employee
CREATE TABLE Employee (
Employee_ID INT PRIMARY KEY,
Employee_Name VARCHAR(50),
Department_ID VARCHAR(40),
Salary INT
);
go


drop procedure InsertEmployee
go
CREATE PROCEDURE InsertEmployee
@Employee_ID INT,
@Employee_Name VARCHAR(50),
@Department_ID VARCHAR(40),
@Salary INT
AS 
BEGIN
INSERT INTO Employee (Employee_ID, Employee_Name, Department_ID, Salary) 
VALUES (@Employee_ID, @Employee_Name, @Department_ID, @Salary);
END;
go 

EXEC InsertEmployee @Employee_ID = 1, @Employee_Name = 'Alice', @Department_ID = 'D01', 
@Salary = 7000;
EXEC InsertEmployee @Employee_ID = 2, @Employee_Name = 'Bob', @Department_ID = 'D02', 
@Salary = 8000;
go


drop procedure GetEmployeeDetails
go
CREATE PROCEDURE GetEmployeeDetails
@Employee_ID INT
AS
BEGIN
SELECT Employee_Name, Salary 
FROM Employee
WHERE Employee_ID = @Employee_ID; 
END;
go 

EXEC GetEmployeeDetails @Employee_ID = 1;
go

drop procedure UpdateEmployeeSalary;
go

CREATE PROCEDURE UpdateEmployeeSalary
@Employee_ID INT,
@New_Salary INT
AS 
BEGIN
UPDATE Employee
SET Salary = @New_Salary
WHERE Employee_ID = @Employee_ID; 
END;
go 

EXEC UpdateEmployeeSalary @Employee_ID = 1, @New_Salary = 7500;
EXEC GetEmployeeDetails @Employee_ID = 1;
go
