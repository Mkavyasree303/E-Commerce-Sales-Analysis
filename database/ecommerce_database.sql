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
