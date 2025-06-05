Create DATABASE SalesDB;
USE SalesDB;

CREATE TABLE Sales(
sales_id INT PRIMARY KEY,
product_name VARCHAR(100),
CUSTOMER_NAME varchar(100),
quantity INT,
price_per_unit DECIMAL(10,2),
sales_date DATE 
); 
SELECT * FROM sales;
INSERT INTO Sales (sales_id, product_name, customer_name, quantity, price_per_unit, sales_date) 
VALUES 
(1,'Laptop', 'Alisha',2,750.50, '2024-01-01'),
(2,'Phone','Bella',5,300.99,'2024-01-05'),
(3,'Tablet','Chirag',3,450.75,'2024-01-10'),
(4,'Monitor','Deepika',1,200.00,'2024-01-15'); 

SELECT COUNT(*) AS total_sales FROM Sales;
SELECT SUM (quantity* price_per_unit) AS total_revenue, AVG(quantity*price_per_unit) AS avg_revenue FROM Sales;
SELECT MAX (price_per_unit) AS highest_price, MIN(price_per_unit) AS lowest_price FROM Sales; 
SELECT CONCAT(product_name, 'sold to' , customer_name) AS sale_description FROM Sales;
SELECT UPPER(product_name) AS product_uppercase, LOWER(product_name) AS product_lowercase FROM Sales;
SELECT Round(AVG(price_per_unit)) AS avg_price_rounded From Sales;
SELECT CEIL(avg(price_per_unit)) AS ceil_avg_price, floor(avg(price_per_unit)) as floor_avg_price from Sales;
select now() as 'current_date_time', curdate() as 'current_date';
from Sales 
where sale_id=1;

select date_add(sale_date, interval 30 day) as new_date from Sales where sale_id =1;
select cast(quantity as char) as quantity_as_string from Sales where sale_id =3;
select convert(price_per_unit,char) as price_as_string from Sales where sale_id =4;
















































