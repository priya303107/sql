 DROP TABLE sales_mman;
 CREATE TABLE sales_mman(
salesman_no INT PRIMARY KEY,
s_name VARCHAR(100) NOT NULL,  
place VARCHAR(100),
phone VARCHAR(15) UNIQUE
);
DROP TABLE sales_orderrr
CREATE TABLE sales_orderrr(
order_no INT PRIMARY KEY,
order_date DATE NOT NULL,
salesman_no INT,
del_type CHAR(1),
order_status VARCHAR(20),
CONSTRAINT chk1_del_type CHECK (del_type IN ('P', 'F')),
CONSTRAINT chk1_order_status CHECK (order_status IN ('Inprocess', 'Fullfilled', 'Backorder',
'Cancelled'))
);
INSERT INTO sales_mman (salesman_no, s_name, place, phone) 
VALUES
(1, 'John Doe', 'New York', '123-456-7890'),
(2, 'Jane Smith', 'Los Angeles', '234-567-8901'),
(3, 'Mike Johnson', 'Chicago', '345-678-9012');
INSERT INTO sales_orderrr (order_no,order_date,salesman_no,del_type,order_status)VALUES 
(101,'2024-10-10',1,'P','Inprocess'),
(102,'2024-10-11',2,'F','Fullfilled'),
(103,'2024-10-12',3,'P','Backorder');

ALTER TABLE sales_orderrr
ADD CONSTRAINT fkl_salesman FOREIGN KEY (salesman_no)REFERENCES 
sales_man(salesman_no);


ALTER TABLE sales_orderrr
DROP CONSTRAINT fkl_salesman; 

ALTER TABLE sales_orderrr
DROP CONSTRAINT chk1_del_type;

ALTER TABLE sales_orderrr
DROP CONSTRAINT chk1_order_status;
SELECT *FROM sales_mman

SELECT *FROM sales_orderrr
