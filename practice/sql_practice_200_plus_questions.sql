-- CREATE DATABASE EcommerceDB;

USE EcommerceDB;

-- CREATE TABLE Categories
-- (
--     category_id INT PRIMARY KEY AUTO_INCREMENT,
--     category_name VARCHAR(50) NOT NULL UNIQUE
-- );

-- CREATE TABLE Customers
-- (
--     customer_id INT PRIMARY KEY AUTO_INCREMENT,
--     first_name VARCHAR(50) NOT NULL,
--     last_name VARCHAR(50) NOT NULL,
--     gender ENUM('Male','Female'),
--     email VARCHAR(100) UNIQUE,
--     phone VARCHAR(15) UNIQUE,
--     city VARCHAR(50),
--     state VARCHAR(50),
--     signup_date DATE DEFAULT (CURRENT_DATE)
-- );

-- CREATE TABLE Products
-- (
--     product_id INT PRIMARY KEY AUTO_INCREMENT,
--     product_name VARCHAR(100) NOT NULL,
--     category_id INT,
--     price DECIMAL(10,2) CHECK(price>0),
--     stock INT DEFAULT 0,
--     FOREIGN KEY(category_id)
--     REFERENCES Categories(category_id)
-- );

-- CREATE TABLE Orders
-- (
--     order_id INT PRIMARY KEY AUTO_INCREMENT,
--     customer_id INT,
--     order_date DATE,
--     order_status ENUM('Pending','Shipped','Delivered','Cancelled') DEFAULT 'Pending',

--     FOREIGN KEY(customer_id)
--     REFERENCES Customers(customer_id)
-- );

-- CREATE TABLE Order_Items
-- (
--     order_item_id INT PRIMARY KEY AUTO_INCREMENT,
--     order_id INT,
--     product_id INT,
--     quantity INT CHECK(quantity>0),

--     FOREIGN KEY(order_id)
--     REFERENCES Orders(order_id),

--     FOREIGN KEY(product_id)
--     REFERENCES Products(product_id)
-- );

-- CREATE TABLE Payments
-- (
--     payment_id INT PRIMARY KEY AUTO_INCREMENT,
--     order_id INT,
--     payment_method ENUM('UPI','Card','Cash','Net Banking'),
--     payment_status ENUM('Paid','Pending','Failed'),
--     amount DECIMAL(10,2),

--     FOREIGN KEY(order_id)
--     REFERENCES Orders(order_id)
-- );

-- CREATE TABLE Shipping
-- (
--     shipping_id INT PRIMARY KEY AUTO_INCREMENT,
--     order_id INT,
--     city VARCHAR(50),
--     delivery_status ENUM('Processing','Shipped','Delivered'),
--     delivery_date DATE,

--     FOREIGN KEY(order_id)
--     REFERENCES Orders(order_id)
-- );

-- CREATE TABLE Employees
-- (
--     emp_id INT PRIMARY KEY AUTO_INCREMENT,
--     emp_name VARCHAR(50),
--     manager_id INT,
--     department VARCHAR(50),
--     salary DECIMAL(10,2),

--     FOREIGN KEY(manager_id)
--     REFERENCES Employees(emp_id)
-- );


-- inserting values.............alter

-- INSERT INTO Categories (category_name)
-- VALUES
-- ('Electronics'),
-- ('Fashion'),
-- ('Home Appliances'),
-- ('Books'),
-- ('Sports');

-- INSERT INTO Customers
-- (first_name,last_name,gender,email,phone,city,state,signup_date)
-- VALUES
-- ('Sachin','Sharma','Male','sachin@gmail.com','9876543210','Delhi','Delhi','2024-01-10'),
-- ('Rahul','Verma','Male','rahul@gmail.com','9876543211','Noida','Uttar Pradesh','2024-01-15'),
-- ('Priya','Singh','Female','priya@gmail.com','9876543212','Jaipur','Rajasthan','2024-02-01'),
-- ('Aman','Gupta','Male','aman@gmail.com','9876543213','Lucknow','Uttar Pradesh','2024-02-12'),
-- ('Neha','Yadav','Female','neha@gmail.com','9876543214','Mumbai','Maharashtra','2024-03-05'),
-- ('Rohit','Kumar','Male','rohit@gmail.com','9876543215','Patna','Bihar','2024-03-12'),
-- ('Anjali','Sharma','Female','anjali@gmail.com','9876543216','Chandigarh','Punjab','2024-04-08'),
-- ('Karan','Malik','Male','karan@gmail.com','9876543217','Delhi','Delhi','2024-04-18'),
-- ('Pooja','Mehta','Female','pooja@gmail.com','9876543218','Indore','Madhya Pradesh','2024-05-10'),
-- ('Vikas','Arora','Male','vikas@gmail.com','9876543219','Pune','Maharashtra','2024-06-01');

-- INSERT INTO Products
-- (product_name,category_id,price,stock)
-- VALUES
-- ('Laptop',1,65000,20),
-- ('Mouse',1,799,100),
-- ('Keyboard',1,1499,70),
-- ('Smartphone',1,30000,40),
-- ('Headphones',1,2500,80),
-- ('T-Shirt',2,699,150),
-- ('Jeans',2,1499,90),
-- ('Refrigerator',3,35000,10),
-- ('Washing Machine',3,28000,12),
-- ('Cricket Bat',5,1800,40);

-- INSERT INTO Orders
-- (customer_id,order_date,order_status)
-- VALUES
-- (1,'2024-06-01','Delivered'),
-- (2,'2024-06-02','Shipped'),
-- (3,'2024-06-03','Pending'),
-- (4,'2024-06-05','Delivered'),
-- (5,'2024-06-07','Cancelled'),
-- (6,'2024-06-08','Delivered'),
-- (7,'2024-06-09','Shipped'),
-- (8,'2024-06-10','Pending'),
-- (9,'2024-06-11','Delivered'),
-- (10,'2024-06-12','Delivered');

-- INSERT INTO Order_Items
-- (order_id,product_id,quantity)
-- VALUES
-- (1,1,1),
-- (1,2,2),
-- (2,3,1),
-- (3,4,1),
-- (4,5,2),
-- (5,6,3),
-- (6,7,2),
-- (7,8,1),
-- (8,9,1),
-- (9,10,2),
-- (10,2,4),
-- (3,1,1),
-- (4,4,2),
-- (6,5,1),
-- (7,3,2);

-- INSERT INTO Payments
-- (order_id,payment_method,payment_status,amount)
-- VALUES
-- (1,'Card','Paid',66598),
-- (2,'UPI','Paid',1499),
-- (3,'Cash','Pending',30000),
-- (4,'Card','Paid',5000),
-- (5,'Net Banking','Failed',2097),
-- (6,'UPI','Paid',2998),
-- (7,'Card','Paid',35000),
-- (8,'Cash','Pending',28000),
-- (9,'UPI','Paid',3600),
-- (10,'Card','Paid',3196);

-- INSERT INTO Shipping
-- (order_id,city,delivery_status,delivery_date)
-- VALUES
-- (1,'Delhi','Delivered','2024-06-04'),
-- (2,'Noida','Shipped','2024-06-06'),
-- (3,'Jaipur','Processing',NULL),
-- (4,'Lucknow','Delivered','2024-06-08'),
-- (5,'Mumbai','Processing',NULL),
-- (6,'Patna','Delivered','2024-06-10'),
-- (7,'Chandigarh','Shipped',NULL),
-- (8,'Delhi','Processing',NULL),
-- (9,'Indore','Delivered','2024-06-13'),
-- (10,'Pune','Delivered','2024-06-14');

-- INSERT INTO Employees
-- (emp_name,manager_id,department,salary)
-- VALUES
-- ('Amit',NULL,'Management',90000),
-- ('Rahul',1,'Sales',55000),
-- ('Neha',1,'HR',50000),
-- ('Karan',2,'Sales',42000),
-- ('Priya',2,'Sales',41000),
-- ('Anjali',3,'HR',43000),
-- ('Rohit',1,'IT',65000),
-- ('Vikas',7,'IT',48000),
-- ('Pooja',7,'IT',46000),
-- ('Mohit',2,'Sales',39000);


-- queries.................
-- Q1. Display all records from the Customers table.
-- SELECT * FROM Customers;

-- Q2. Display only first_name, last_name, and city.
-- SELECT first_name, last_name, city
-- FROM Customers;

-- Q3. Display all products.
-- SELECT * FROM Products;

-- Q4. Display only: product_name ,price
-- select product_name , price from products;

-- Q5.  Display unique cities from the Customers table. (Hint: DISTINCT)
-- select distinct(city) from customers;

-- Q6. Show all customers who live in Delhi.
-- select * from customers
-- where city = 'delhi';

-- Q7. Show all products whose price is greater than 5000.
-- select * from products
-- where price > 5000;

-- Q8.  Show all customers whose gender is Female.
-- select * from customers
-- where gender = 'female';

-- Q9.  Show all orders with status Delivered.
-- select * from orders
-- where order_status ='delivered';

-- Q10.  Show all products whose stock is less than 50.
-- select * from products
-- where stock < 50;

-- Q11.  Display all products from the highest price to lowest price.
-- select * from products
-- order by price desc;

-- Q12.  Display customers ordered by first_name (A → Z).
-- select * from customers
-- order by first_name asc;

-- Q13.  Display orders from the latest date to oldest date.
-- select * from orders 
-- order by order_date desc;


-- Q14.  Display the top 5 most expensive products.
-- select * from products
-- order by price desc
-- limit 5;

-- Q15.  Display the first 3 customers.
-- select * from customers 
-- limit 3;


-- Q16.  How many customers are there?
-- select count(*) from customers;

-- Q17. Find the total stock of all products.
-- select sum(stock)as total_stock from products; 

-- Q18. Find the average product price.
-- select round(avg(price),2) as average_price from products;

-- Q19. Find the highest product price.
-- select max(price)as highest_price from products;

-- Q20. Find the lowest product price.
-- select min(price)as lowest_price from products;

-- Q21. Show all products whose price is between 1000 and 35000.
-- select * from products
-- where price between 1000 and 35000;

-- select * from products 
-- where price >= 1000 and price <= 35000;


-- Q22.  Show all customers whose city is Delhi or Noida.
-- select * from customers s
-- where city in  ('delhi' ,'noida');

-- select * from customers 
-- where city ='delhi' or city = 'noida';

-- Q23. Show all products whose name starts with 'S'.
-- select * from products 
-- where product_name like 's%';

-- Q24.  Show all customers whose email ends with gmail.com.
-- select * from customers
-- where email like '%@gmail.com';

-- Q25. Display all orders that are not Cancelled.
-- select * from orders
-- where order_status != 'cancelled';

-- Q26. Change Rahul's city from Noida to Gurgaon.
-- update customers
-- set city = 'gurgaon'
-- where customer_id =2;

-- Q27. Increase the price of Laptop by ₹5000.
-- update products
-- set price = price + 5000
-- where product_id =1;

-- Q28.  Increase the stock of Mouse by 20.
-- update products
-- set stock = stock + 20
-- where product_id = 2;

-- Q29.  Change all Pending orders to Shipped.
-- set sql_safe_updates =0;
-- update orders 
-- set order_status = 'shipped'
-- where order_status = 'pending';
-- set sql_safe_updates =1;

-- Q30.  Update the payment status of payment_id = 3 to Paid.
-- update payments 
-- set payment_status ='paid'
-- where payment_id = 3;
-- select * from payments;


-- show create table orders;
-- alter table orders

-- drop foreign key orders_ibfk_1;

-- alter table orders
-- add constraint fk_customer
-- foreign key(customer_id)
-- references customers(customer_id)
-- on delete cascade;

-- Q31. Delete the customer whose customer_id = 10.
-- delete from customers
-- where customer_id =10;

-- Q32. Delete all orders with status Cancelled.
-- delete from orders
-- where order_status ='cancelled'

-- Q33.  Delete all products whose stock is 0.
-- delete from products
-- where stock = 0;

-- Q34.  Delete all shipping records where delivery_status = 'Processing'.
-- delete from shipping
-- where delivery_status ='processing';

-- Q35.  Delete employees whose salary is less than 40000.
-- delete from employees
-- where salary = 40000;

-- Q36.  Add a new column named age in Customers.
-- alter table customers add column age int;

-- Q37.  Change the data type of phone to VARCHAR(20).
-- alter table customers modify  phone varchar(20); 

-- Q38.  Drop the age column.
-- alter table customers drop column age;

-- Q39.  Add a column discount DECIMAL(5,2) to Products.
-- alter table products add column discount decimal(5,2);

-- Q40.  Rename the table Shipping to Delivery.
-- rename table shipping to delivery;
-- select * from delivery;

-- Q41.  Display all customer names in UPPERCASE.
-- select upper(first_name)as first_name_upper,
-- upper(last_name)as last_name_upper
-- from customers;

-- Q42.  Display all product names in lowercase.
-- select lower(product_name)as products_name_upper
-- from products;

-- Q43.  Show the length of each customer's first name.
-- select length(first_name)as length_of_name
-- from customers;

-- Q44.  Combine first name and last name into a column called Full_Name.
-- select concat(first_name, ' ' ,last_name)as full_name
-- from customers; 

-- Q45.  Display the first 3 letters of every product name.
-- select left(product_name, 3)
-- from products;

-- Q46.  Round every product price to the nearest whole number.
-- select product_name , price ,round(price)as rounded_price
-- from products;

-- Q47.  Display the absolute value of -150.
-- select abs(-150)as absolute_value;

-- Q48.  Find the remainder when 55 is divided by 6.
-- select mod(55,6)as remainder;
-- select 55 % 6 as remainder;

-- Q49 Display today's date.
-- select curdate() as today_date;

-- Q50. Show the year, month, and day from every customer's signup date.
-- select signup_date,
-- year(signup_date)as signup_year,
-- month(signup_date)as signup_month,
-- day(signup_date)as signup_day
-- from customers;

-- Q51.  Display all customers whose first name contains 'a'.
-- select * from customers
-- where first_name like '%a%';

-- Q52. Display products whose names end with 'e'.
-- select * from products
-- where product_name like '%e';

-- Q53. Show all products with prices between ₹1000 and ₹50000.
-- select * from products
-- where price between 1000 and 50000;

-- Q54. Show customers who signed up after 1 March 2024.
-- select * from customers
-- where signup_date > '2024-03-01';

-- Q55. Display orders placed in June 2024.
-- select * from orders
-- where order_date between'2024-06-01' and '2024-06-30';

-- Q56.  Find all products that are more expensive than the average product price.
-- select avg(price)as average_price from products;
-- select * 
-- from products
-- where price <
-- (
-- select avg(price)
-- from products
-- );

-- Q57. Display the top 3 cheapest products.
-- select * from products
-- order by price asc
-- limit 3;

-- Q58. Show customers from Delhi who signed up after 1 April 2024.
-- select * from  customers
-- where city = 'delhi' 
-- and signup_date > '2024-04-01';

-- Q59. Increase the price of every product in the Electronics category by 10%.
-- update products
-- set price = price * 1.10
-- where category_id = 1;

-- Q60. Display all customers whose phone number starts with 9876.
-- select * from customers
-- where phone like '9876%';

-- Q61 . Count the number of employees in each department.
-- select department , count(*)as total_employee 
-- from employees
-- group by department;

-- Q62. Count the number of customers in each city.
-- select city , count(*)as total_customers 
-- from customers
-- group by city;

-- Q63. Count the number of products in each category.
-- select c.category_name , count(*)as total_produts
-- from categories c
-- join products p
-- on c.category_id = p.category_id
-- group by c.category_name;

-- Q64. Find the total salary of each department.
-- select department, sum(salary)as total_salary
-- from employees
-- group by department;

-- Q65. Find the average salary of each department.
-- select department , avg(salary)as average_salary 
-- from employees
-- group by department;

-- Q66. Find the highest salary in each department.
-- select department, max(salary)as highest_salary
-- from employees
-- group by department;

-- Q67. Find the lowest salary in each department.
-- select department , min(salary)as lowest_salary
-- from employees
-- group by department;

-- Q68. Find the total stock available in each category.
-- select c.category_name , sum(p.stock)as total_stock
-- from categories c
-- join products p
-- on c.category_id = p.category_id
-- group by c.category_name;

-- Q69. Find the average product price in each category.
-- select c.category_name, avg(p.price)as average_price 
-- from categories c
-- join products p
-- on c.category_id=p.category_id
-- group by c.category_name;

-- Q70. Find the total payment amount received by each payment method.
-- select payment_method , sum(amount)as total_payment_amount
-- from payments
-- group by payment_method
-- order by total_payment_amount desc;

-- Q71. Count the number of orders placed by each customer.
-- select c.customer_id, c.first_name , c.last_name , count(o.order_id)as total_order
-- from customers c
-- join orders o
-- on c.customer_id = o.customer_id
-- group by c.customer_id , c.first_name ,c.last_name;

-- Q72. Find the total amount spent by each customer.
-- select c.customer_id , c.first_name, c.last_name , sum(p.amount)as total_amount
-- from customers c
-- join orders o
-- on c.customer_id = o.customer_id
-- join payments p
-- on o.order_id = p.order_id
-- group by c.customer_id , c.first_name, c.last_name;

-- Q73. Find the total quantity sold for each product.
-- select p.product_id , p.product_name , sum(o.quantity)as total_sold
-- from products p
-- join order_items o
-- on p.product_id = o.product_id
-- group by p.product_id , p.product_name;


-- Q74. Find the total revenue generated by each product.
-- select p.product_id , p.product_name , sum(p.price * oi.quantity)as total_revenue
-- from products p
-- join order_items oi 
-- on p.product_id = oi.product_id
-- group by p.product_id , p.product_name;

-- -- Q75. Find the total revenue generated by each category.
-- select c.category_id , c.category_name , sum(p.price * oi.quantity)as total_revenue
-- from categories c
-- join products p
-- on c.category_id = p.category_id
-- join order_items oi
-- on p.product_id = oi.product_id
-- group by c.category_id , c.category_name;



-- Q76. Show departments where the average salary is greater than ₹50,000.
-- select department , avg(salary)as average_salary from employees
-- group by department
-- having avg(salary) > 50000;

-- Q77. Show cities having more than 2 customers.
-- select city, count(*)as total_customer from customers
-- group by city
-- having total_customer >= 2;


-- Q78. Show categories having more than 2 products.
-- select c.category_id,c.category_name , count(p.product_id)as total_products 
-- from categories c
-- join products p
-- on c.category_id = p.category_id
-- group by c.category_id , c.category_name
-- having total_products >2;


 -- Q79. Show customers who have placed more than 1 order.
-- select c.customer_id , c.first_name , c.last_name , count(o.order_id)as total_order
-- from customers c
-- join orders o
-- on c.customer_id =o.customer_id
-- group by c.customer_id, c.first_name,c.last_name
-- having count(o.order_id) > 1;

-- Q80. Show products whose total quantity sold is greater than 10.
-- select p.product_id , p.product_name , sum(oi.quantity)as total_quantity
-- from products p
-- join order_items oi
-- on p.product_id = oi.product_id
-- group by p.product_id, p.product_name
-- having sum(oi.quantity) > 10;
 
-- Q81. Show departments where the total salary is greater than ₹2,00,000.
-- select department , sum(salary)as total_salary
-- from employees
-- group by department
-- having sum(salary) > 200000;

-- Q82. Show cities where total revenue is greater than ₹50,000.
-- select c.city, sum(p.price * oi.quantity)as total_revenue
-- from customers c
-- join orders o
-- on c.customer_id = o.customer_id
-- join order_items oi
-- on o.order_id = oi.order_id
-- join products p
-- on oi.product_id =p.product_id
-- group by c.city
-- having total_revenue > 50000; 


-- Q83. Show payment methods receiving more than ₹1,00,000.
-- select payment_method, sum(amount)as total_amount
-- from payments
-- group by payment_method
-- having sum(amount) > 100000;


-- Q84. Show categories whose average price is greater than ₹20,000.
-- select c.category_id , c.category_name , round(avg(p.price),2)as average_price
-- from categories c
-- join products p
-- on c.category_id = p.category_id
-- group by c.category_id , c.category_name
-- having avg(p.price) > 20000;


-- Q85. Show customers who spent more than ₹50,000.
-- select c.customer_id , c.first_name , c.last_name , sum(p.amount)as total_amount_spent
-- from customers c
-- join orders o
-- on c.customer_id =o.customer_id
-- join payments p
-- on o.order_id =p.order_id
-- group by c.customer_id ,c.first_name , c.last_name
-- having sum(amount) > 50000;


-- Q86. Show departments having at least 3 employees.
-- select department , count(emp_id)as total_emnployee
-- from employees
-- group by department
-- having count(emp_id) >=3;

-- Q87. Show cities having an average customer spending greater than ₹25,000.
-- select c.city , 
-- round(avg(p.amount),2)as average_amount 
-- from customers c
-- join orders o
-- on c.customer_id = o.customer_id
-- join payments p
-- on o.order_id = p.order_id
-- group by c.city
-- having avg(p.amount) > 25000; 


-- Q88. Show products whose average quantity sold is greater than 3.
-- select p.product_id , p.product_name , round(avg(oi.quantity),2)as average_quantity
-- from products p
-- join order_items oi
-- on p.product_id = oi.product_id
-- group by p.product_id ,
-- p.product_name
-- having avg(oi.quantity) > 3;

-- Q89. Show categories generating more than ₹1,50,000 in revenue.
-- select c.category_id ,
--        c.category_name, 
-- 	   sum(p.price * oi.quantity)as total_revenue
-- from categories c
-- join products p
-- on c.category_id = p.category_id
-- join order_items oi
-- on p.product_id = oi.product_id
-- group by c.category_id ,
--          c.category_name
-- having sum(p.price * oi.quantity) > 150000 

-- Q90.  Show payment methods used in more than 5 transactions.
-- select payment_method , count(payment_id)as total_transactions
-- from payments
-- group by payment_method
-- having total_transactions > 5;



-- Q91. Display employee name as Employee Name.
-- select emp_name as employee_name from employees;

-- Q92. Display product price as Product Price.
-- select price as product_price from products;

-- Q93. Display customer city as Customer City.
-- select city as customer_city from customers;

-- Q94. Display total salary as Total Salary.
-- select sum(salary)as total_salary from employees;

-- Q95. Display average product price as Average Price.
-- select avg(price)as average_price from products;

-- Q96. Display highest salary as Highest Salary.
-- select max(salary)as highest_salary from employees;

-- Q97. Display lowest product price as Lowest Price.
-- select min(price)as lowest_price from products;

-- Q98. Display employee name and department with user-friendly column names.
-- select emp_name as employee_name,
-- department as department_name
-- from employees;

-- Q99. Display customer first and last name as Customer Name.
-- select concat(first_name , ' ', last_name)as customer_name from customers;

-- Q100. Display product price after adding 18% GST and name the column Price After GST.
-- select product_name ,
-- round(price * 1.18,2) as price_after_gst
-- from products;


-- CASE Statement (Basic)
-- Q101.
-- Display all products.
-- If price is greater than ₹30,000, show Expensive, otherwise Affordable.

-- select product_id, product_name,
-- case
--      when price > 30000 then 'expensive'
--      else 'affordable'
--      end as price_category
--      from products;
     

-- Q102.
-- Display employees.
-- If salary is greater than ₹60,000, show High Salary, otherwise Normal Salary.

-- select emp_id , emp_name,
-- case
--      when salary > 60000 then 'high salary'
--      else 'normal salary'
--      end as salary_category
--      from employees;
     
-- Q103.
-- Display products.
-- If stock is 0, show Out of Stock, otherwise Available.

-- select
--      product_id ,
--      product_name,
-- case 
--      when stock = 0 then 'out of stock'
--      else 'available'
--      end as product_stocks_category
--      from products;

-- Q104.
-- Display customers.
-- If city is Delhi, show Local Customer, otherwise Outside Delhi.

-- select 
-- 	 customer_id,
--      first_name,
--      last_name,
-- case 
--      when city = 'delhi' then 'local customer'
--      else 'outside delhi'
--      end as city_category
--      from customers;
           



-- Q105.
-- Display orders.
-- If order status is Delivered, show Completed, otherwise Pending.
-- select
-- 	 order_id ,
-- case 
--       when order_status = 'delivered' then 'completed'
--       else 'pending'
--       end as status_category
--       from orders;
--      



-- 🟢 CASE (Intermediate)
-- Q106.
-- Display products.
-- Price > 50,000 → Premium
-- Price between 10,000 and 50,000 → Mid Range
-- Otherwise → Budget

-- select 
--       product_id,
--       product_name,
-- case
--     when price > 50000 then 'premium'
--        when price between 10000 and 50000 then 'mid range'
--           else 'budget'
--      end as price_category
--      from products;

-- Q107.
-- Display employees.
-- Salary > 80,000 → Excellent
-- Salary > 50,000 → Good
-- Otherwise → Average

-- select
--       emp_id,
--       emp_name,
-- case
--      when salary > 80000 then 'excellent'
-- 	   when salary > 50000 then 'good'
--          else 'average'
-- end as salary_category
-- from employees;         


-- Q108.
-- Display customers.
-- If signup date is before 2024, show Old Customer, otherwise New Customer.

-- select
--       customer_id,
--       first_name,
--       last_name,
-- case
--       when signup_date < 2024-01-01 then 'old customer'
--       else 'new customer'
--       end as customer_category
--       from customers;
--       

-- Q109.
-- Display orders.
-- If payment status is Paid, show Payment Received, otherwise Pending Payment.

-- select
--       o.order_id,
-- case
-- 	  when p.payment_status = 'paid' then 'payment received'
--         else 'pending payment'
-- end as payment_category
-- from orders o
-- left join payments p
-- on o.order_id = p.order_id;



-- 🟢 CASE + Aggregate Functions
-- Q111. Count Premium products.
-- select
--       count(
--             case 
--                  when price > 50000 then product_id
--                  end
-- 		   )
--                  as premium_products
--                  from products ;
				
		


-- Q112. Count Affordable products.
-- select 
-- count(
--       case 
--            when price < 20000 then product_id
--            end 
--            )
--            as affordable_products
--            from products; 

-- Q113. Count employees with High Salary.
-- select 
-- count (
--       case 
--           when salary > 50000 then emp_id
--           end
--           )
--           as high_salary_employee
--           from employees;

-- Q114. Find total salary of Excellent employees.
-- select
--      sum(
--      case 
--          when salary > 80000 then salary
--          else 0
--          end
--      )
-- 	     as total_excellent_salary
--          from employees;

-- Q115. Find average salary of Average employees.
-- select
-- 	round(avg(
--         case 
--              when salary <= 50000 then salary
--              end
-- 		   ),2)
--            as average_employee
--            from employees;

-- 🟢 CASE + GROUP BY
-- Q116. Count products by Stock Status.
-- select 
-- case 
-- when stock < 10 then 'low stock'
-- else 'sufficient stock'
-- end as stock_status,
-- count(*)as total_products
-- from products
-- group by stock_status;

-- Q117. Count employees by Salary Category.
-- select 
-- case 
--      when salary > 50000 then 'high salary'
--      else 'low salary'
--      end as salary_category,
--      count(*)as total_employee
--      from employees 
--      group by salary_category;
     
-- Q118. Count customers by City Category.
-- select 
--    case
--        when city = 'delhi' then 'local customer'
--        else 'outside delhi'
--        end as city_category,
--        count(*)as total_customers
--        from customers
--        group by city_category;

-- Q119. Find total sales by Order Status.
-- select
-- case 
-- when order_status = 'delivered' then 'completed'
-- when order_status in ('pending', 'shipped') then 'in progress'
-- else 'cancelled'
-- end as order_category,
-- sum(p.amount)as total_sales
-- from orders o
-- join payments p
-- on o.order_id = p.order_id
-- group by order_category;

-- Q120. Count payments by Payment Status.
-- select 
--    case 
--    when payment_status = 'paid' then 'completed'
--    when payment_status = 'pending' then 'in progress'
--    else 'failed'
--    end as payment_category,
-- count(*)as total_payments
-- from payments
-- group by payment_category;


-- 🟢 Real Business Questions
-- Q121.
-- Classify customers into:
-- Premium Customer
-- Regular Customer
-- based on total spending.

-- select c.customer_id , c.first_name , c.last_name,
-- sum(p.amount)as total_spending,
-- case  
-- when sum(p.amount) > 50000 then 'premium customer'
-- else 'regular customer'
-- end as customer_category
-- from customers c 
-- join orders o
-- on c.customer_id = o.customer_id
-- join payments p
-- on o.order_id = p.order_id
-- group by c.customer_id,
--          c.first_name,
--          c.last_name;


-- Q122.
-- Classify products into:
-- Fast Moving
-- Slow Moving
-- based on total quantity sold.

-- select 
--  p.product_id , 
--  p.product_name,
--  sum(oi.quantity)as total_quantity_sold,
--  case 
--     when sum(oi.quantity) > 10 then 'fast moving'
--     else 'slow moving'
--     end as quantity_category
-- from products p
-- join order_items oi
-- on p.product_id = oi.product_id
-- group by
--         p.product_id ,
--         p.product_name;
        
        
-- Q123. Display employee performance based on salary.

-- select emp_id , emp_name, 
--      case
--          when salary > 65000 then 'excellent'
--          when  salary >30000 then 'good'
--          else 'average'
--          end as employee_performance
--          from employees;

-- Q124.  Display inventory status:
-- Low Stock
-- Medium Stock
-- High Stock

-- select product_id,
--        product_name,
-- case
--     when stock > 100 then 'hight stock'
--     when stock > 50 then 'medium stock'
--     else 'low stock'
--     end as stock_category
--     from products;


-- Q125. Create a sales report.
-- If total sales > ₹1,00,000
-- show Excellent Sales
-- otherwise
-- Needs Improvement

-- select payment_method,
--     sum(amount)as total_sales,
-- case 
--     when sum(amount) > 100000 then 'excellent sales'
--     else 'needs improvement'
--     end as sales_report
--     from payments
--     group by payment_method;
    
-- Q126. Classify cities based on revenue.
-- select 
--    c.city,
-- sum(p.price * oi.quantity)as total_revenue,
-- case
--     when sum(p.price * oi.quantity) > 100000 then 'high revenue city'
--     when sum(p.price * oi.quantity) > 50000 then 'emerging revenue city'
--     else 'standard revenue city'
--     end as city_category
--     from customers c
--     join orders o
--     on c.customer_id = o.customer_id
--     join order_items oi
--     on o.order_id = oi.order_id
--     join products p
--     on oi.product_id = p.product_id
--     group by c.city;


-- Q128. Classify products by price.
-- select
--       product_id,
--       product_name,
-- 	  price,
-- case 
--      when price > 100000 then 'premium products'
--      when price > 50000 then 'classic products'
--      else 'average products'
--      end as product_category
--      from products;

      

-- Q129. Create a dashboard-ready sales category.
-- select 
--       p.product_id,
--       p.product_name,
--       sum(p.price * oi.quantity)as total_sales,
-- case 
--       when sum(p.price * oi.quantity) > 100000 then 'high sales'
--       when sum(p.price * oi.quantity) > 50000 then 'medium sales'
--       else 'low sales'
--       end as sales_category
--       from products p
--       join order_items oi
--       on p.product_id = oi.product_id
-- group by
--       p.product_id,
--       p.product_name;


-- Q130. Create a complete customer report using CASE, AS, JOIN, and GROUP BY.
-- select 
--       c.customer_id,
--       concat(first_name , ' ' , last_name)as customer_name,
--       c.city,
--       count(distinct o.order_id)as total_orders,
--       sum(p.amount)as total_spending,
--       case
--           when sum(p.amount) > 100000 then 'vip customer'
--           when sum(p.amount) > 50000 then 'premium customer'
--           else 'regular customer'
--           end as customer_category
-- from customers c
-- join orders o
-- on c.customer_id = o.customer_id
-- join payments p
-- on o.order_id = p.order_id
-- group by 
--         c.customer_id,
--         c.first_name,
--         c.last_name,
--         c.city;
--        


-- 🔹 Part A – INNER JOIN (Q131–Q140)
-- Q131. Display every order with the customer's name.
-- select c.customer_id ,  
--        concat(first_name , ' ', last_name)as customer_name,
--        o.order_id
-- from customers c
-- inner join orders o
-- on c.customer_id = o.customer_id;

-- Q132. Display every order along with the payment amount and payment method.
-- select
--       o.order_id, 
--       p.amount,
--       p.payment_method
-- from orders o
-- inner join payments p 
-- on o.order_id = p.order_id;     

-- Q133. Display every ordered product with its category name.
-- select
--       p.product_id,
--       p.product_name,
--       c.category_name
-- from order_items oi 
-- inner join products p 
-- on oi.product_id = p.product_id
-- inner join categories c
-- on p.category_id = c.category_id;    
--      

-- Q134. Display customer name, order date, and payment amount.
-- select 
--       concat(first_name, ' ', last_name)as customer_name,
--       o.order_date, 
--       p.amount as payment_amount
-- from customers c
-- inner join orders o 
-- on c.customer_id = o.customer_id
-- inner join payments p    
-- on o.order_id = p.order_id; 

-- Q135. Display product name, quantity ordered, and total price.
-- select
--      p.product_name,
--      oi.quantity as quantity_ordered,
-- 	 (p.price * oi.quantity) as total_price
-- from products p     
-- inner join order_items oi
-- on p.product_id = oi.product_id;

-- Q136. Display all customers and the products they purchased.
-- select 
--       c.customer_id,
--       concat(first_name ,  ' ', last_name)as customer_name,
--       p.product_name
-- from customers c    
-- inner join orders o 
-- on c.customer_id = o.customer_id
-- inner join order_items oi
-- on o.order_id =  oi.order_id
-- inner join products p 
-- on oi.product_id = p.product_id;
      

-- Q137. Display each product with its category and stock.
-- select
--       p.product_id,
--       p.product_name,
--       c.category_name,
--       p.stock
-- from products p
-- inner join categories c 
-- on p.category_id = c.category_id;     



-- Q138. Display employee name along with department details.
-- select
--       emp_name,
--       department
--       from employees;

-- Q139. Display every payment with customer name and payment method.
-- select
--       concat(first_name , ' ' , last_name)as customer_name,
--       p.payment_method,
--       p.amount
-- from customers c
-- inner join orders o 
-- on c.customer_id = o.customer_id
-- inner join payments p 
-- on o.order_id = p.order_id;     


-- Q140. Display order ID, customer name, product name, quantity, and payment amount.
-- select
--      o.order_id,
--      concat(first_name , ' ' , last_name)as customer_name,
--      p.product_name,
--      oi.quantity,
--      py.amount as payment_amount
-- from customers c 
-- inner join orders o 
-- on c.customer_id = o.customer_id
-- inner join  order_items oi
-- on o.order_id = oi.order_id
-- inner join products p
-- on oi.product_id = p.product_id
-- inner join payments py
-- on o.order_id = py.order_id;


-- 🔹 Part B – LEFT JOIN (Q141–Q150)
-- Q141. Show all customers, including those who have never placed an order.
-- select * from customers c
-- left join orders o
-- on c.customer_id = o.customer_id;


-- Q142. Show all products, including those that have never been sold.
-- select * from products p
-- left join order_items oi
-- on p.product_id = oi.product_id;



-- Q143. Show all categories, including those without any products.
-- select 
--       c.category_id,
--       c.category_name,
--       p.product_name
-- from categories c      
-- left join products p
-- on c.category_id = p.category_id;




-- Q144. Show all employees, including those who are not assigned to any department.
-- select
--      emp_id,
--      emp_name,
--      department
-- from employees;     


-- Q145. Show all orders, including those without any payment.
-- select
--      o.order_id,
--      o.order_date,
--      py.payment_method,
--      py.amount as payment_amount
-- from orders o
-- left join payments py
-- on o.order_id = py.order_id;     


-- Q146. Show all products along with the total quantity sold (show 0 if never sold).
-- select
--       p.product_id,
--       p.product_name,
--       ifnull(sum(oi.quantity), 0)as total_quantity
-- from products p
-- left join order_items oi
-- on p.product_id = oi.product_id
-- group by 
--         p.product_id,
--         p.product_name;      
--       


-- Q147. Show every customer with the number of orders placed (show 0 if none).
-- select
--       c.customer_id,
--       concat(first_name, ' ' , last_name)as customer_name,
--       ifnull(count(o.order_id),0)as total_orders
-- from customers c
-- left join orders o 
-- on c.customer_id = o.customer_id
-- group by 
--         c.customer_id,
--         c.first_name,
--         c.last_name;
--       

-- Q148. Show every category with total revenue (show 0 if no sales).
-- select
--       c.category_id,
--       c.category_name,
--       ifnull(sum(p.price * oi.quantity),0)as total_revenue
-- from categories c 
-- left join products p
-- on c.category_id = p.category_id
-- left join order_items oi
-- on p.product_id = oi.product_id
-- group by
--         c.category_id,
--         c.category_name;
              

-- Q149. Show every employee with department name (show "No Department" if NULL).
-- select 
--       emp_id,
--       emp_name,
--       ifnull(department, 'no department')as department
-- from employees;

     
-- Q150. Show every product with category name (show "Uncategorized" if NULL).
-- select
--       p.product_id,
--       p.product_name,
--       ifnull(cg.category_name, 'uncategorized')as category_name
-- from products p
-- left join categories cg
-- on p.category_id = cg.category_id;      




-- 🔹 Part C – RIGHT JOIN & SELF JOIN (Q151–Q160)
-- Q151. Show all payments, including payments that are not linked to any order.
-- select
--      py.payment_id,
--      py.payment_method,
--      py.payment_status,
--      py.amount,
--      o.order_id
-- from orders o
-- right join payments py 
-- on o.order_id = py.order_id;    
--      

-- Q152. Show all order items, including those whose product details are missing.
-- select
--       oi.order_item_id,
--       oi.quantity,
--       p.product_id,
--       p.product_name
-- from products p 
-- right join order_items oi
-- on p.product_id = oi.product_id;
     



-- Q153. Show all categories, including products that belong to them. (Practice RIGHT JOIN by starting from products.)

-- select
--       c.category_id,
--       c.category_name,
--       p.product_name
-- from products p 
-- right join categories c 
-- on p.category_id = c.category_id;

-- Q154. Show all products with their order details, including order items even if the product record is missing.

-- select
--       p.product_id,
--       p.product_name,
--       o.order_id,
--       o.order_date,
--       o.order_status,
--       oi.order_item_id,
--       oi.quantity
-- from products p
-- right join order_items oi
-- on p.product_id = oi.product_id
-- inner join orders o 
-- on oi.order_id = o.order_id;    

-- Q155. Show all orders with payment details, including payments that are not linked to any order.
-- select 
--       o.order_id,
--       o.order_date,
--       py.payment_id,
--       py.payment_method,
--       py.amount
-- from orders o
-- right join payments py
-- on o.order_id = py.order_id;      
--       


-- Q156. Display each employee along with their manager's name.
-- SELECT
--     e.emp_id,
--     e.emp_name AS employee_name,
--     m.emp_name AS manager_name
-- FROM employees e
-- LEFT JOIN employees m
-- ON e.manager_id = m.emp_id;

-- Q157.

-- Display employees who report to the same manager.

-- Q158.

-- Display every employee and their manager's department.

-- Q159.

-- Find employees who do not have a manager.

-- Q160.

-- Display manager name and the number of employees reporting to each manager.




-- 🔹 Part D – Multi-table JOINs (Q161–Q170)
-- Q161. Generate a complete order report with customer, product, quantity, payment, and category.

-- SELECT
--     o.order_id,
--     o.order_date,
--     o.order_status,

--     cu.customer_id,
--     CONCAT(cu.first_name, ' ', cu.last_name) AS customer_name,

--     p.product_id,
--     p.product_name,
--     ca.category_name,

--     oi.quantity,
--     p.price,
--     (p.price * oi.quantity) AS total_price,

--     py.payment_id,
--     py.payment_method,
--     py.amount,
--     py.payment_status

-- FROM orders o

-- INNER JOIN customers cu
-- ON o.customer_id = cu.customer_id

-- INNER JOIN order_items oi
-- ON o.order_id = oi.order_id

-- INNER JOIN products p
-- ON oi.product_id = p.product_id

-- INNER JOIN categories ca
-- ON p.category_id = ca.category_id

-- INNER JOIN payments py
-- ON o.order_id = py.order_id;

-- Q162. Display each customer's total spending and number of orders.
-- select
--       c.customer_id,
--       concat(c.first_name ,  ' ' , c.last_name)as customer_name,
--       count(distinct o.order_id)as total_order,
--       sum(py.amount)as total_spending
-- from customers c
-- join orders o 
-- on c.customer_id = o.customer_id
-- join payments py
-- on o.order_id = py.order_id
-- group by
--         c.customer_id,
--         c.first_name,
--         c.last_name;
--      

-- Q163. Display category-wise revenue.
-- select
--       c.category_id,
--       c.category_name,
--       sum(p.price * oi.quantity)as total_revenue
-- from categories c

-- join products p
-- on c.category_id = p.category_id

-- join order_items oi
-- on p.product_id = oi.product_id

-- group by 
--        c.category_id,
--        c.category_name;
--       

-- Q164. Display city-wise revenue.
-- select
--       c.city,
--       sum(p.price * oi.quantity)as total_revenue
-- from customers c
-- join orders o 
-- on c.customer_id = o.customer_id
-- join order_items oi
-- on o.order_id = oi.order_id
-- join products p
-- on oi.product_id = p.product_id

-- group by
--         c.city;


-- Q165. Display monthly sales report.
-- select
--       month(o.order_date)as month_number,
--       monthname(o.order_date)as month_name,
--       sum(p.price * oi.quantity)as total_sales
-- from orders o
-- join order_items oi
-- on o.order_id = oi.order_id
-- join products p
-- on oi.product_id = p.product_id
-- group by 
--          month_number,
--          month_name
-- order by
--         month(o.order_date);         
--       



-- Q166. Display top-selling products.
-- select 
--       p.product_id,
--       p.product_name,
--       sum(oi.quantity)as total_quantity_sold
-- from products p
-- join order_items oi
-- on p.product_id = oi.product_id
-- group by
--         p.product_id,
--         p.product_name
-- order by
--          total_quantity_sold desc;        
--         

-- Q167. Display best-performing categories.
-- select
--       c.category_id,
--       c.category_name,
--       sum(p.price * oi.quantity)as total_revenue
-- from categories c
-- join products p
-- on c.category_id = p.category_id
-- join order_items oi
-- on p.product_id = oi.product_id
-- group by
--         c.category_id,
--         c.category_name
-- order by 
--         total_revenue 
--         limit 1;

-- Q168. Display average order value for each customer.
-- select
--       c.customer_id,
--       concat(c.first_name , ' ' , c.last_name)as customer_name,
--       count(distinct o.order_id)as total_order,
--       sum(py.amount)as total_spending,
--       round(sum(py.amount) / count(distinct o.order_id),2)as average_order_value
-- from customers c
-- join orders o
-- on c.customer_id = o.customer_id
-- join payments py
-- on o.order_id = py.order_id
-- group by
--         c.customer_id,
--         c.first_name,
--         c.last_name
-- order by
--         average_order_value desc;        
--       


-- Q169. Display products with highest revenue.
-- select
--       p.product_id,
--       p.product_name,
--       sum(p.price * oi.quantity)as total_revenue
-- from products p 
-- join order_items oi
-- on p.product_id = oi.product_id
-- group by 
--         p.product_id,
--         p.product_name
-- order by
--        total_revenue desc;        

-- Q170. Display customer purchase history.
-- select
--       c.customer_id,
--       concat(c.first_name, ' ' ,c.last_name)as customer_name,
--       o.order_id,
--       o.order_date,
--       p.product_name,
--       oi.quantity,
--       p.price,
--       (p.price * oi.quantity)as total_amount
-- from customers c
-- join orders o
-- on c.customer_id = o.customer_id
-- join order_items oi
-- on o.order_id = oi.order_id
-- join products p 
-- on oi.product_id = p.product_id
-- order by
--         c.customer_id,
--         o.order_date;


-- 🔹 Part E – Interview-Level JOINs (Q171–Q180)
-- Q171. Find customers who have placed orders but never made a payment.
-- select
--      c.customer_id,
--      concat(c.first_name, ' ' ,c.last_name)as customer_name,
--      o.order_id,
--      o.order_date
-- from customers c
-- inner join orders o
-- on c.customer_id = o.customer_id

-- left join payments py
-- on o.order_id = py.order_id

-- where py.payment_id is null;     
     

-- Q172. Find products that have never been ordered.
-- select
-- 	 p.product_id,
--      p.product_name
-- from products p	
-- left join order_items oi
-- on p.product_id = oi.product_id

-- where oi.order_item_id is null;


-- Q173. Find customers who purchased products from more than one category.
-- select
--       c.customer_id,
--       concat(c.first_name, ' ' , c.last_name)as customer_name,
--       count(distinct ca.category_id)as total_categories
-- from customers c 

-- join orders o 
-- on c.customer_id = o.customer_id

-- join order_items oi
-- on o.order_id = oi.order_id

-- join products p 
-- on oi.product_id = p.product_id 

-- join categories ca
-- on p.category_id = ca.category_id

-- group by
--         c.customer_id,
--         c.first_name,
--         c.last_name
-- having 
--       count(distinct ca.category_id) > 1;        


-- Q174. Find customers who purchased the most expensive product.
-- select
--       c.customer_id,
--       concat(c.first_name , ' ' , c.last_name)as customer_name,
--       p.product_id,
--       p.product_name,
-- 	  p.price
-- from customers c

-- join orders o
-- on c.customer_id = o.customer_id

-- join order_items oi
-- on o.order_id = oi.order_id

-- join products p
-- on oi.product_id = p.product_id

-- where p.price =
-- (
--    select max(price)
--    from products
-- );
--    
   
      

-- Q175.

-- Find the most popular payment method.
-- select
--       payment_method,
--       count(*)as total_payments
-- from payments 
-- group by
--         payment_method
-- order by 
--         total_payments desc
--         limit 1;

-- Q176. Find the category with the highest revenue.
-- select
--       ca.category_id,
--       ca.category_name,
--       sum(p.price * oi.quantity)as total_revenue
-- from categories ca

-- join products p
-- on ca.category_id = p.category_id

-- join order_items oi
-- on p.product_id = oi.product_id

-- group by
--        ca.category_id,
--        ca.category_name
-- order by 
--        total_revenue desc
-- 	   limit 1;


-- Q177. Find the customer with the highest total spending.
-- select
--       c.customer_id,
--       concat(c.first_name, ' ' , c.last_name)as customer_name,
--       sum(py.amount)as total_spending
-- from customers c

-- join orders o
-- on c.customer_id = o.customer_id

-- join payments py
-- on o.order_id = py.order_id

-- group by 
--         c.customer_id,
--         c.first_name,
--         c.last_name
-- order by
--          total_spending desc
--          limit 1;
--       


-- Q178. Find the product generating the highest revenue.
-- select
--       p.product_id,
--       p.product_name,
--       sum(p.price * oi.quantity)as total_revenue
-- from products p

-- join order_items oi
-- on p.product_id = oi.product_id

-- group by
--         p.product_id,
--         p.product_name
-- order by
--         total_revenue desc        
-- 		limit 1;
        

-- Q 179. find the city generating the highest revenue.

-- select 
--       c.city,
--       sum(p.price * oi.quantity)as total_revenue
-- from customers c

-- join orders o
-- on c.customer_id = o.customer_id

-- join order_items oi
-- on o.order_id = oi.order_id

-- join products p
-- on oi.product_id = p.product_id

-- group by
--         c.city
-- order by
--         total_revenue desc        
--         limit 1;      
--         

-- ⭐ Q180. Final Interview Challenge

-- Generate an Executive Sales Dashboard showing:

-- Customer Name
-- City
-- Total Orders
-- Total Spending
-- Average Order Value
-- Favorite Category
-- Most Used Payment Method

-- select
--       c.customer_id,
--       concat(c.first_name, ' ' , c.last_name)as customer_name,
--       c.gender,
--       c.email as email_id,
--       c.city,
--       count(distinct o.order_id)as total_orders,
--       sum(p.price * oi.quantity)as total_spending,
--       round(sum(p.price * oi.quantity) / count(distinct o.order_id),2)as average_order_value
-- from customers c

-- join orders o 
-- on c.customer_id = o.customer_id

-- join order_items oi
-- on o.order_id = oi.order_id 

-- join products p
-- on oi.product_id = p.product_id

-- group by 
--         c.customer_id,
--         c.first_name,
--         c.last_name,
--         c.gender,
--         c.email,
--         c.city
-- order by
--          total_orders desc,
--          total_spending desc,
--          average_order_value desc;
--       
      

-- Q181. Display all customer names and employee names in a single list.

-- select concat(first_name, ' ' ,last_name)as person_name
-- from customers

-- union
--  
-- select emp_name as person_name
-- from employees; 


-- Q182. Display all category names and employee departments in a single list.
-- select
--       category_name as Name
--       from categories
--       
--       union
--       
--  select
--       department as Name
--       from employees;


-- Q183.

-- Display all product names and category names.
-- select
--       product_name as name
--       from products
--       
--       union
--       
-- select
--       category_name as name
--       from categories;




-- Q184.

-- Display all customer names and employee names using UNION ALL.
-- select
--       concat(first_name, ' ' , last_name)as name
--       from customers
--       
--       union all
--       
-- select
--       emp_name as name
--       from employees;



-- Q185. Display all payment amounts and salaries using UNION ALL.
-- select
--       amount as value
--       from payments
--       
--       union all
--       
-- select
--       salary as value 
--       from employees;

-- 🔹 Part C – Views 
-- Q186. Create a view showing customer details.
-- create view customer_details as
-- select customer_id , concat(first_name, ' ' ,last_name)as customer_name, gender, email, phone, city, state, signup_date
-- from customers;

-- select * from customer_details;


-- Q187.

-- Create a view showing product details.
-- create view product_details as
-- select product_id, product_name, price, stock, discount
-- from products;

-- select * from product_details;


-- Q188.

-- Create a view showing monthly sales.
-- create view monthly_sales as
-- select 
--       month(o.order_date)as month_number,
--       monthname(o.order_date)as month_name,
--       sum(p.price * oi.quantity)as total_sales
-- from orders o

-- join order_items oi
-- on o.order_id = oi.order_id

-- join products p
-- on oi.product_id = p.product_id

-- group by
--         month(o.order_date),
--         monthname(o.order_date)
-- order by
--         month(o.order_date);

-- select * from monthly_sales;        
      

-- Q189. Drop the monthly sales view.

-- drop view monthly_sales;



-- 🔹 Part D – Indexes 
-- Q190. Create an index on customer_id in the Orders table.

-- CREATE INDEX idx_customer_id
-- ON Orders(customer_id);

-- SHOW INDEX FROM Orders;

-- Q191. Create an index on product_name in the Products table.

-- CREATE INDEX idx_product_name
-- ON Products(product_name);

-- show index from products;

-- Q192. Create a composite index on (customer_id, order_date).

-- create index idx_customer_orderdate
-- ON Orders(customer_id, order_date);

-- SHOW INDEX FROM Orders;

-- Q193. Show all indexes of the Orders table.
-- SHOW INDEX FROM Orders;

-- Q194. Drop the index created on product_name.
-- drop index idx_product_name
-- on products;




-- 🔹 Part E – Mini Business Challenges
-- Q195

-- Create a view showing each customer's:

-- Name
-- Total Orders
-- Total Spending

-- CREATE VIEW customer_order_summary AS
-- SELECT
--       c.customer_id,
--       CONCAT(c.first_name, ' ', c.last_name) AS customer_name,
--       COUNT(DISTINCT o.order_id) AS total_orders,
--       SUM(p.price * oi.quantity) AS total_spending
-- FROM customers c

-- JOIN orders o
-- ON c.customer_id = o.customer_id

-- JOIN order_items oi
-- ON o.order_id = oi.order_id

-- JOIN products p
-- ON oi.product_id = p.product_id

-- GROUP BY
--       c.customer_id,
--       c.first_name,
--       c.last_name;

-- SELECT * FROM customer_order_summary;



-- ⭐ Q196. Final Interview Challenge Create an Executive Sales View containing:

-- Customer Name
-- City
-- Total Orders
-- Total Spending
-- Average Order Value
-- Customer Category (CASE)

-- Then write a query to retrieve only Gold and Platinum customers from that view.

-- CREATE VIEW  Executive_sales_summary AS
-- select  
-- 	  c.customer_id,
--       CONCAT(c.first_name, ' ' , c.last_name)AS customer_name,
--       c.city,
--       COUNT(DISTINCT o.order_id)AS total_orders,
--       SUM(p.price * oi.quantity)AS total_spending,
--       ROUND(SUM(p.price * oi.quantity)/ COUNT(DISTINCT o.order_id),2)AS average_order_value,
-- CASE
--       WHEN SUM(p.price * oi.quantity) >= 60000 THEN 'platinum'
--       WHEN SUM(p.price * oi.quantity) >= 30000 THEN 'gold'
--       WHEN SUM(p.price * oi.quantity) >= 10000 THEN 'silver'
--       ELSE 'bronze'
--       END AS customer_category
--       
-- FROM customers c

-- JOIN orders o
-- ON c.customer_id = o.customer_id

-- JOIN order_items oi
-- ON o.order_id = oi.order_id

-- JOIN products p
-- ON oi.product_id = p.product_id

-- GROUP BY
--         c.customer_id,
--         c.first_name,
--         c.last_name,
--         c.city;
--       
-- select * from Executive_sales_summary;      
--       
-- 🔹 Single Row Subquery
-- Q197. Find the customers who purchased the most expensive product.
-- SELECT
--       c.customer_id,
--       CONCAT(c.first_name, ' ', c.last_name) AS customer_name,
--       p.product_name,
--       p.price
-- FROM customers c

-- JOIN orders o
-- ON c.customer_id = o.customer_id

-- JOIN order_items oi
-- ON o.order_id = oi.order_id

-- JOIN products p
-- ON oi.product_id = p.product_id

-- WHERE p.price =
-- (
--       SELECT MAX(price)
--       FROM products
-- );


-- Q198. Find the products whose price is greater than the average product price.
-- SELECT
--       product_id,
--       product_name,
--       price
-- FROM products

-- WHERE price >
-- (
--       SELECT AVG(price)
--       FROM products
-- );

-- Q199. Find all orders whose payment amount is greater than the average payment amount.
-- SELECT
--       payment_id,
--       order_id,
--       payment_method,
--       amount
-- FROM payments

-- WHERE amount >
-- (
--       SELECT AVG(amount)
--       FROM payments
-- );

-- Q200. Find the employees whose salary is higher than the average salary.
-- SELECT
--       emp_id,
--       emp_name,
--       department,
--       salary
-- FROM employees

-- WHERE salary >
-- (
--       SELECT AVG(salary)
--       FROM employees
-- );

-- Q201. Find the products whose price is equal to the second highest price.
-- SELECT
--       product_id,
--       product_name,
--       price
-- FROM products

-- WHERE price =
-- (
--       SELECT MAX(price)
--       FROM products
--       WHERE price <
--       (
--             SELECT MAX(price)
--             FROM products
--       )
-- );


-- 🔹 Multiple Row Subquery (IN & EXISTS)
-- Q202. Find the customers who have placed at least one order.

-- SELECT
--       customer_id,
--       CONCAT(first_name,' ',last_name) AS customer_name
-- FROM customers

-- WHERE customer_id IN
-- (
--       SELECT customer_id
--       FROM orders
-- );

-- Q203. Find the products that have never been ordered.
-- SELECT
--       product_id,
--       product_name
-- FROM products

-- WHERE product_id NOT IN
-- (
--       SELECT product_id
--       FROM order_items
-- );

-- Q204. Find the customers who purchased products belonging to the Electronics category.

-- SELECT
--       customer_id,
--       CONCAT(first_name,' ',last_name) AS customer_name
-- FROM customers

-- WHERE customer_id IN
-- (
--       SELECT o.customer_id
--       FROM orders o

--       JOIN order_items oi
--       ON o.order_id = oi.order_id

--       JOIN products p
--       ON oi.product_id = p.product_id

--       JOIN categories c
--       ON p.category_id = c.category_id

--       WHERE c.category_name = 'Electronics'
-- );

-- Q205. Find the customers who have at least one successful payment (Paid).

-- SELECT
--       c.customer_id,
--       CONCAT(c.first_name,' ',c.last_name) AS customer_name
-- FROM customers c

-- WHERE EXISTS
-- (
--       SELECT 1
--       FROM orders o

--       JOIN payments py
--       ON o.order_id = py.order_id

--       WHERE o.customer_id = c.customer_id
--       AND py.payment_status = 'Paid'
-- );

-- Q206. Find the products that appear in any order.
-- SELECT
--       p.product_id,
--       p.product_name
-- FROM products p

-- WHERE EXISTS
-- (
--       SELECT 1
--       FROM order_items oi

--       WHERE oi.product_id = p.product_id
-- );

-- Bonus Q207. Find the customers who have never placed any order.
-- SELECT
--       c.customer_id,
--       CONCAT(c.first_name,' ',c.last_name) AS customer_name
-- FROM customers c

-- WHERE NOT EXISTS
-- (
--       SELECT 1
--       FROM orders o

--       WHERE o.customer_id = c.customer_id
-- );

