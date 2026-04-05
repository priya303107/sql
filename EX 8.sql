CREATE TABLE EMPLOYEESSSS(employee_id INT PRIMARY KEY,emp_name VARCHAR(100),doj DATE, salary DECIMAL(10,2),city VARCHAR(100),position VARCHAR(100),department VARCHAR(100));
INSERT INTO EMPLOYEESSSS (employee_id,emp_name,doj,salary,city,position,department)
VALUES
(1, 'John Doe', '2020-01-15', 50000, 'New York', 'Manager', 'Sales'),
(2, 'Jane Smith', '2019-05-10', 60000, 'Los Angeles', 'Analyst', 'Marketing'),
(3, 'Emily Davis', '2021-03-22', 55000, 'Chicago', 'Developer', 'IT'),
(4, 'Michael Brown', '2018-07-30', 62000, 'New York', 'Manager', 'Marketing'), 
(5, 'Sarah Wilson', '2020-11-10', 53000, 'San Francisco', 'HR Executive', 'HR'), 
(6, 'Chris Johnson', '2019-10-01', 48000, 'Boston', 'Sales Executive', 'Sales'); 
SELECT *FROM EMPLOYEESSSS
SELECT employee_id,emp_name,doj,salary,city,position,department FROM EMPLOYEESSSS
GROUP BY department,employee_id,emp_name,doj,salary,city,position ORDER BY doj ASC,salary DESC;