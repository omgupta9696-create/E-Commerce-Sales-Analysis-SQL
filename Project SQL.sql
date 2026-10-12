create database ecom;
use ecom;
show tables;
select* from customers;
select * from products;
select * from orders;

create table customers (
customer_id int primary key,
customer_name varchar(50) not null,
city varchar(50) not null,
signup_date date not null);

create table products (
product_id int primary key,
product_name varchar(100) not null,
product_category varchar(50) not null,
selling_price decimal(10,2),
cost_price decimal(8,2)
);

create table orders (
order_id int primary key,
customer_id int not null, 
foreign key(customer_id) references customers(customer_id),
product_id int not null,
foreign key(product_id) references products(product_id),
order_date date not null,
quantity int not null check(quantity>0),
status enum('Completed','Pending','Cancelled'));



INSERT INTO customers
(customer_id, customer_name, city, signup_date)
VALUES
(1, 'Aarav Sharma', 'Lucknow', '2025-01-10'),
(2, 'Priya Verma', 'Delhi', '2025-01-15'),
(3, 'Rahul Singh', 'Mumbai', '2025-02-01'),
(4, 'Sneha Gupta', 'Lucknow', '2025-02-12'),
(5, 'Aditya Khan', 'Kanpur', '2025-03-05'),
(6, 'Ananya Mishra', 'Delhi', '2025-03-20'),
(7, 'Rohan Patel', 'Jaipur', '2025-04-02'),
(8, 'Isha Agarwal', 'Mumbai', '2025-04-15'),
(9, 'Vivek Yadav', 'Lucknow', '2025-05-01'),
(10, 'Meera Joshi', 'Pune', '2025-05-18'),
(11, 'Kabir Ali', 'Kanpur', '2025-06-10'),
(12, 'Pooja Saxena', 'Jaipur', '2025-06-25');

INSERT INTO products
(product_id, product_name, product_category,
 selling_price, cost_price)
VALUES
(101, 'Laptop', 'Electronics', 55000, 45000),
(102, 'Smartphone', 'Electronics', 25000, 19000),
(103, 'Headphones', 'Electronics', 2000, 1200),
(104, 'Keyboard', 'Accessories', 1500, 900),
(105, 'Mouse', 'Accessories', 800, 400),
(106, 'Office Chair', 'Furniture', 7000, 5000),
(107, 'Study Table', 'Furniture', 9000, 6500),
(108, 'Backpack', 'Fashion', 1800, 1000),
(109, 'T-Shirt', 'Fashion', 700, 350),
(110, 'Running Shoes', 'Fashion', 3500, 2200),
(111, 'Water Bottle', 'Home & Kitchen', 500, 200),
(112, 'Coffee Maker', 'Home & Kitchen', 4500, 3000),
(113, 'Monitor', 'Electronics', 12000, 9000),
(114, 'USB Cable', 'Accessories', 300, 100),
(115, 'Bookshelf', 'Furniture', 6000, 4200);


INSERT INTO orders
(order_id, customer_id, product_id, order_date,
 quantity, status)
VALUES
(1001, 1, 101, '2025-01-20', 1, 'Completed'),
(1002, 2, 102, '2025-01-22', 2, 'Completed'),
(1003, 3, 103, '2025-02-05', 3, 'Completed'),
(1004, 1, 105, '2025-02-10', 2, 'Completed'),
(1005, 4, 106, '2025-02-15', 1, 'Completed'),
(1006, 5, 108, '2025-03-08', 2, 'Completed'),
(1007, 6, 113, '2025-03-12', 1, 'Completed'),
(1008, 2, 104, '2025-03-18', 3, 'Completed'),
(1009, 7, 110, '2025-04-05', 2, 'Completed'),
(1010, 8, 112, '2025-04-10', 1, 'Completed'),
(1011, 3, 102, '2025-04-15', 1, 'Completed'),
(1012, 9, 109, '2025-04-20', 4, 'Completed'),
(1013, 10, 107, '2025-05-03', 1, 'Completed'),
(1014, 1, 103, '2025-05-10', 2, 'Completed'),
(1015, 11, 111, '2025-05-15', 5, 'Completed'),
(1016, 12, 115, '2025-05-22', 1, 'Completed'),
(1017, 4, 101, '2025-06-02', 1, 'Completed'),
(1018, 5, 105, '2025-06-08', 3, 'Completed'),
(1019, 6, 102, '2025-06-12', 1, 'Pending'),
(1020, 7, 114, '2025-06-18', 5, 'Completed'),
(1021, 8, 106, '2025-07-01', 2, 'Completed'),
(1022, 9, 113, '2025-07-05', 1, 'Cancelled'),
(1023, 10, 108, '2025-07-12', 2, 'Completed'),
(1024, 2, 112, '2025-07-18', 1, 'Completed'),
(1025, 11, 110, '2025-08-03', 1, 'Completed'),
(1026, 12, 109, '2025-08-10', 3, 'Completed'),
(1027, 1, 102, '2025-08-15', 1, 'Completed'),
(1028, 3, 107, '2025-08-20', 1, 'Pending'),
(1029, 4, 104, '2025-09-02', 2, 'Completed'),
(1030, 6, 101, '2025-09-10', 1, 'Completed'),
(1031, 9, 111, '2025-09-15', 4, 'Completed'),
(1032, 10, 105, '2025-09-20', 2, 'Cancelled'),
(1033, 5, 113, '2025-10-01', 1, 'Completed'),
(1034, 8, 103, '2025-10-08', 2, 'Completed'),
(1035, 2, 115, '2025-10-15', 1, 'Pending'),
(1036, 12, 102, '2025-10-22', 2, 'Completed');





