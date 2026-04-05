drop table employess
CREATE TABLE employess(employee_id INT PRIMARY KEY,employee_name VARCHAR(50),department_id VARCHAR(50));
drop table departmentt
CREATE TABLE departmentt(department_id INT PRIMARY KEY,department_name VARCHAR(50));
INSERT INTO departmentt(department_id,department_name)VALUES (1,'HR'),(2,'IT'),(3,'FINANCE');
INSERT INTO employess(employee_id,employee_name,department_id)VALUES
(101,'john doe',1),(2,'jane smith',2),(103,'sma brown',NULL),(104,'emily davis',3),
(105,'michael johnson',1);
SELECT employess.employee_name,departmentt.department_name FROM employess INNER JOIN departmentt ON employess.department_id=departmentt.department_id;
SELECT employess.employee_name,departmentt.department_name FROM employess LEFT JOIN departmentt ON employess.department_id=departmentt.department_id
SELECT employess.employee_name,departmentt.department_name FROM employess FULL OUTER JOIN departmentt ON employess.department_id=departmentt.department_id;
