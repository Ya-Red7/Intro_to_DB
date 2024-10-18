CREATE DATABASE IF NOT EXISTS alx_book_store;

CREATE TABLE Books (
    book_id  int (Primary Key)
    title VARCHAR(130)
    author_id int (Foreign Key)
    price FLOAT
    publication_date DATE
    REFERENCES Authors(author_id)
);
CREATE TABLE Authors(
    author_id int (Primary Key)
    author_name VARCHAR(215)
);
CREATE TABLE Customers(
    customer_id int (Primary Key)
    customer_name VARCHAR(215)
    email VARCHAR(215)
    address TEXT
);
CREATE TABLE Orders(
    order_id int (Primary Key)
    customer_id int (Foreign Key)
    order_date DATE
    REFERENCES Customers(customer_id)
);
CREATE TABLE Order_Details(
    orderdetailid int (Primary Key)
    order_id (Foreign Key)
    book_id (Foreign Key)
    quantity FLOAT
    REFERENCES Orders(order_id)
    REFERENCES Books(book_id)
);