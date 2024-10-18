CREATE DATABASE IF NOT EXISTS alx_book_store;

CREATE TABLE Books (
    book_id  int PRIMARY KEY ,
    title VARCHAR(130),
    author_id int FOREIGN KEY ,
    price FLOAT,
    publication_date DATE,
    REFERENCES Authors(author_id)
);
CREATE TABLE Authors(
    author_id int PRIMARY KEY ,
    author_name VARCHAR(215)
);
CREATE TABLE Customers(
    customer_id int PRIMARY KEY ,
    customer_name VARCHAR(215),
    email VARCHAR(215),
    address TEXT
);
CREATE TABLE Orders(
    order_id int PRIMARY KEY ,
    customer_id INT,
    order_date DATE,
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id)
);
CREATE TABLE Order_Details(
    orderdetailid int PRIMARY KEY ,
    order_id INT,
    book_id INT,
    quantity DOUBLE,
    FOREIGN KEY (order_id) REFERENCES Orders(order_id),
    FOREIGN KEY (book_id) REFERENCES Books(book_id)
);