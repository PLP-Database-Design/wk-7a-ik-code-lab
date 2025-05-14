ans 1

USE warehouse;

CREATE TABLE orders(
orderId INT PRIMARY KEY AUTO_INCREMENT,
customerName VARCHAR(100)
);

CREATE TABLE products(
product VARCHAR(100),
orderId INT,
FOREIGN KEY(orderId) REFERENCES orders(orderId)
);


ans 2

USE warehouses;

CREATE TABLE orders(
orderId INT PRIMARY KEY AUTO_INCREMENT,
product VARCHAR(100),
quantity INT NOT NULL
);

CREATE TABLE customers(
customerName VARCHAR(100),
product VARCHAR(100),
quantity INT NOT NULL,
FOREIGN KEY(product) REFERENCES orders(product)
);