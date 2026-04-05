DROP TABLE student_mrksht;

CREATE TABLE student_mrksht(rollno INT PRIMARY KEY,student_name VARCHAR(100) NOT NULL,maths INT,rdbms INT,ml INT);

INSERT INTO student_mrksht(rollno,student_name,maths,rdbms,ml) 
VALUES(1,'alice',85,75,92),
(2,'bob',68,95,89),
(3,'charlie',74,56,90),
(4,'david',90,85,90);
SELECT MIN(maths)AS min_maths FROM student_mrksht;

SELECT MAX(ml) AS max_ml FROM student_mrksht;

SELECT AVG(rdbms) AS avg_rdbms FROM student_mrksht;

SELECT COUNT(*)AS total_students FROM student_mrksht;

ALTER TABLE student_mrksht ADD total INT;
UPDATE student_mrksht SET total=maths+rdbms+ml;

SELECT *FROM student_mrksht;