DROP TABLE STUDENTX
CREATE TABLE STUDENTX ( 
Student_ID INT PRIMARY KEY,
Student_Name VARCHAR(50), 
Class VARCHAR(20),
Marks INT
);
INSERT INTO STUDENTX (Student_ID, Student_Name, Class, Marks) 
VALUES
(1, 'Alice', 'Class 10', 85),
(2, 'Bob', 'Class 10', 78),
(3, 'Charlie', 'Class 11', 92),
(4, 'David', 'Class 12', 88),
(5, 'Eva', 'Class 11', 76);
SELECT * FROM STUDENTX;

drop view TopStudentX
GO
CREATE VIEW TopStudentX AS

SELECT Student_ID, Student_Name, Class, Marks
FROM STUDENTX
WHERE Marks > 80;
go

SELECT * FROM TopStudentX; 


