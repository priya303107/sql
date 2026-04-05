drop table employyee0
CREATE TABLE employyee0( 
Employee_ID INT PRIMARY KEY, 
Employee_Name VARCHAR(50), 
Department_ID VARCHAR(40), 
Salary INT
);
drop table TEMP_EMPLOYEE2
CREATE TABLE TEMP_EMPLOYEE2 (
Employee_ID INT PRIMARY KEY, 
Employee_Name VARCHAR(50), 
Department_ID VARCHAR(40), 
Salary INT
);
INSERT INTO employyee0(Employee_ID, Employee_Name, Department_ID, Salary) 
VALUES 
(1, 'Alice Johnson', '101', 60000),
(2, 'Bob Smith', '102', 75000),
(3, 'Charlie Davis', '103', 50000),
(4, 'Diana Prince', '102', 85000),
(5, 'Edward Baker', '101', 62000);
INSERT INTO TEMP_EMPLOYEE2 (Employee_ID, Employee_Name, Department_ID, Salary) 
VALUES 
(6, 'Fiona Adams', '102', 78000),
(7, 'George King', '101', 52000),
(8, 'Harry Johnson', '102', 82000),
(9, 'Irene Foster', '104', 90000),
(10, 'Jake Evans', '102', 77000);
SELECT * FROM employyee0
SELECT * FROM TEMP_EMPLOYEE2

SELECT Employee_Name FROM employyee0 
UNION
SELECT Employee_Name FROM TEMP_EMPLOYEE2;

SELECT Employee_Name FROM employyee0
UNION ALL
SELECT Employee_Name FROM TEMP_EMPLOYEE2;

SELECT Employee_ID, Employee_Name FROM employyee 
WHERE Department_ID = '102'
UNION
SELECT Employee_ID, Employee_Name FROM TEMP_EMPLOYEE2 
WHERE Department_ID = '102';

SELECT Employee_ID, Salary FROM employyee0
UNION
SELECT Employee_ID, Salary FROM TEMP_EMPLOYEE2;
