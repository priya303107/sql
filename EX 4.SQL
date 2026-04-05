IF OBJECT_ID('dbo.Myjob_history','U') IS NOT NULL
BEGIN
DROP TABLE dbo.Myjob_history;
END

IF OBJECT_ID('dbo.MyJobs','U') IS NOT NULL
    DROP TABLE dbo.MyJobs;
CREATE TABLE jobs0 (
job_id INT PRIMARY KEY, 
job_title VARCHAR(50)
);
-- Insert sample data into jobs table
INSERT INTO jobs0 (job_id, job_title) VALUES 
(1, 'Software Engineer'),
(2, 'Data Analyst'),
(3, 'Product Manager'); 
select * from jobs0
-- Create the job_history table 
DROP TABLE job_history;
CREATE TABLE job_history (
employee_id INT PRIMARY KEY,
start_date DATE,
end_date DATE,
job_id INT,
department_id INT,
CONSTRAINT fkL_job_id FOREIGN KEY (job_id) REFERENCES jobsH(job_id) 
);

-- Insert data into job_history
INSERT INTO job_history (employee_id, start_date, end_date, job_id, department_id) 
VALUES (1, '2020-01-01', '2022-06-01', 1, 101);
-- Create the products table
DROP TABLE products 
CREATE TABLE products (
product_id INT PRIMARY KEY, 
product_name VARCHAR(100),
mdg_date DATE,-- Manufacturing date 
exp_date DATE,-- Expiry date
price DECIMAL(10, 2),-- Price with two decimal places 
quantity INT,
brand VARCHAR(50)
);
-- Insert sample data into products table
INSERT INTO products (product_id, product_name, mdg_date, exp_date, price, quantity, brand) 
VALUES
(1, 'Noodles', '2023-01-01', '2024-06-01', 49.95, 100, 'Magiee'),
(2, 'Soap', '2023-03-01', '2024-09-01', 15.30, 200, 'Lux'),
(3, 'Shampoo', '2023-02-01', '2024-07-01', 79.99, 150, 'Sunsilk'),
(4, 'Biscuits', '2023-05-01', '2024-12-01', 20.60, 300, 'Parle'),
(5, 'Toothpaste', '2023-04-01', '2024-10-01', 55.70, 180, 'Colgate');
-- Round off the price 
UPDATE products
SET price = ROUND(price, 0);
-- Find the Ceiling of Noodles' price
SELECT product_name, CEILING(price) AS ceil_price 
FROM products
WHERE product_name = 'Noodles';-- Find the Floor of Soap's price
SELECT product_name, FLOOR(price) AS floor_price 
FROM products
WHERE product_name = 'Soap';
-- Replace the brand name 'Magiee' with 'Yippiee' 
UPDATE products
SET brand = 'Yippiee' 
WHERE brand = 'Magiee';
-- Convert product name to Uppercase 
UPDATE products
SET product_name = UPPER(product_name);
-- Concatenate brand and product name
SELECT CONCAT(brand, ' ', product_name) AS full_name 
FROM products;
SELECT product_name, LEN(product_name) AS name_length 
FROM products
ORDER BY product_name
OFFSET 0 ROWS FETCH NEXT 5 ROWS ONLY; -- Fetch only 5 product name
