-- Create a database
CREATE DATABASE shopguydb;

-- select database 
 USE shopguydb;

-- Create customer table
CREATE TABLE Customers(
customer_id INT AUTO_INCREMENT PRIMARY KEY,
first_name VARCHAR(100) NOT NULL,
last_name VARCHAR(100) NOT NULL,
email VARCHAR(100) unique NOT NULL,
phone INT(20),
address TEXT,
city text VARCHAR(100),
Creation_date TIMESTAMP DEFAULT  CURRENT_TIMESTAMP
);

-- CREATE CATEGORY table
CREATE TABLE Categories(
category_id INT AUTO_INCREMENT PRIMARY KEY,
category_name VARCHAR(100) NOT NULL,
description_text VARCHAR(100)
);

-- create Product table
CREATE TABLE products(
product_ID INT AUTO_INCREMENT PRIMARY KEY,
category_ID INT,
product_name VARCHAR(100) NOT NULL,
brand VARCHAR(100),
size VARCHAR(10),
color VARCHAR(50),
Price DECIMAL(10,2) NOT NULL,
Stock_quality INT NOT NULL,
description TEXT,
image_url VARCHAR(150),
Created_time TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
FOREIGN KEY (category_id) REFERENCES categories(category_id)
);
 -- Create the table to show relationship between orders and customers
CREATE TABLE Orders(
order_id INT AUTO_INCREMENT PRIMARY KEY,
customer_id INT,
Order_date DATETIME,
status ENUM('in process', 'Processed', 'unprocessed') default('inprogress'),
total_amount DECIMAL(10,2),
FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
);

-- Create table order details and create relation between the order table and product table
CREATE TABLE Order_details(
Order_detail_id  INT AUTO_INCREMENT PRIMARY KEY,
order_id INT,
product_id INT,
Quantity INT NOT NULL,
price DECIMAL(10,2) NOT NULL,
FOREIGN KEY (order_id) REFERENCES Orders(order_id),
FOREIGN KEY (product_id) REFERENCES products(product_id)
);

-- Create payment table
CREATE TABLE payment(
payment_id INT AUTO_INCREMENT PRIMARY KEY,
order_id INT,
payment_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
amount DECIMAL(10,2),
method ENUM("Credit card", "Debit card", "Bank Transfer", "Cash") NOT NULL,
status ENUM("Pending", "completed", "failed") DEFAULT "pending",
FOREIGN KEY (order_id) REFERENCES Orders(order_id)
); 
 

 
