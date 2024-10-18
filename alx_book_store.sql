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
    customer_id int FOREIGN KEY ,
    order_date DATE,
    REFERENCES Customers(customer_id)
);
CREATE TABLE Order_Details(
    orderdetailid int PRIMARY KEY ,
    order_id FOREIGN KEY,
    book_id FOREIGN KEY,
    quantity FLOAT,
    REFERENCES Orders(order_id),
    REFERENCES Books(book_id)
);