DROP TABLE EMPLOYEE1
CREATE TABLE EMPLOYEE1 (
Employee_Name VARCHAR(50), 
City VARCHAR(50)
);
DROP TABLE WORKS1 
CREATE TABLE WORKS1 (
Employee_Name VARCHAR(50), 
Company_Name VARCHAR(50), 
Salary INT
);
DROP TABLE COMPANY1
CREATE TABLE COMPANY1 (
Company_Name VARCHAR(50), 
City VARCHAR(50)
);
DROP TABLE MANAGES1
CREATE TABLE MANAGES1 (
Employee_Name VARCHAR(50), 
Manager_Name VARCHAR(50)
)

INSERT INTO EMPLOYEE1 (Employee_Name, City) VALUES 
('John Doe', 'Mumbai'),
('Alice Smith', 'Bangalore'), 
('Bob Johnson', 'Chennai'),
('Charlie Davis', 'Pune'),
('Emily Clark', 'Delhi');

INSERT INTO WORKS1 (Employee_Name, Company_Name, Salary) VALUES 
('John Doe', 'Infosys', 12000),
('Alice Smith', 'Wipro', 9500),
('Bob Johnson', 'TCS', 15000),
('Charlie Davis', 'Infosys', 10500), 
('Emily Clark', 'Wipro', 13000);

INSERT INTO COMPANY1 (Company_Name, City) VALUES 
('Infosys', 'Mumbai'),
('Wipro', 'Bangalore'),
('TCS', 'Chennai'),
('Accenture', 'Pune');

INSERT INTO MANAGES1 (Employee_Name, Manager_Name) VALUES 
('John Doe', 'Michael Scott'),
('Alice Smith', 'Dwight Schrute'), 
('Bob Johnson', 'Jim Halpert'), 
('Charlie Davis', 'Pam Beesly'), 
('Emily Clark', 'Stanley Hudson');

SELECT Employee_Name
FROM WORKS1
WHERE Company_Name = 'Infosys';

SELECT E.Employee_Name, E.City
FROM EMPLOYEE1 E, WORKS1 W
WHERE E.Employee_Name = W.Employee_Name AND W.Company_Name = 'Wipro';

SELECT E.Employee_Name, E.City
FROM EMPLOYEE1 E, WORKS1 W
WHERE E.Employee_Name = W.Employee_Name 
AND W.Company_Name = 'Infosys'
AND W.Salary > 10000;

SELECT E.Employee_Name
FROM EMPLOYEE1 E, WORKS1 W, COMPANY1 C
WHERE E.Employee_Name = W.Employee_Name 
AND W.Company_Name = C.Company_Name 
AND E.City = C.City;

SELECT Employee_Name
FROM WORKS1
WHERE Company_Name = 'Wipro';