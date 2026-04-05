drop table Bank_customer01
CREATE TABLE Bank_customer01 ( 
accno INT PRIMARY KEY,
cust_name VARCHAR(50), 
place VARCHAR(50)
);
drop table Deposit01
CREATE TABLE Deposit01 (
accno INT, 
deposit_no INT,
damount DECIMAL(10, 2),
FOREIGN KEY (accno) REFERENCES Bank_customer(accno)
);
drop table Loan01 
CREATE TABLE Loan01(
accno INT, 
loan_no INT,
Lamount DECIMAL(10, 2),
FOREIGN KEY (accno) REFERENCES Bank_customer(accno)
);
INSERT INTO Bank_customer01 (accno, cust_name, place) VALUES 
(101, 'Alice', 'New York'),
(102, 'Bob', 'Los Angeles'),
(103, 'Charlie', 'Chicago'),
(104, 'David', 'Houston'),
(105, 'Eve', 'Phoenix');
INSERT INTO Deposit01 (accno, deposit_no, damount) VALUES 
(101, 1, 5000.00),
(102, 2, 10000.00),
(104, 3, 7000.00);
INSERT INTO Loan01 (accno, loan_no, Lamount) VALUES 
(103, 1, 15000.00),
(104, 2, 5000.00),
(105, 3, 8000.00);

SELECT * FROM Bank_customer01;

SELECT B.cust_name, D.damount
FROM Bank_customer01 B
JOIN Deposit01 D ON B.accno = D.accno
WHERE B.accno NOT IN (SELECT accno FROM Loan01);

SELECT B.cust_name, L.Lamount
FROM Bank_customer01 B
JOIN Loan01 L ON B.accno = L.accno
WHERE B.accno NOT IN (SELECT accno FROM Deposit01);

SELECT B.cust_name
FROM Bank_customer01 B
WHERE B.accno IN (SELECT accno FROM Deposit01) 
AND B.accno IN (SELECT accno FROM Loan01);