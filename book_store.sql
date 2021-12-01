-- Show Database --
SHOW DATABASES;

-- Create Database --
CREATE DATABASE bookstore;

-- Use Database --
USE bookstore;

-- Show Table --
SHOW TABLES;

-- Create Table --
CREATE TABLE books(
	id INT AUTO_INCREMENT PRIMARY KEY NOT NULL,
	author1 VARCHAR(100) NOT NULL,
	author2 VARCHAR(100),
	author3 VARCHAR(100),
	title VARCHAR(100),
	description TEXT,
	place_sell CHAR(3),
	stock INT DEFAULT 0,
	creation_date DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

-- Add Table --
ALTER TABLE books
ADD price INT DEFAULT 0;

ALTER TABLE books
ADD status ENUM('available', 'out of stock', 'limited');

-- Drop Column --
ALTER TABLE books
DROP COLUMN place_sell;

-- Insert Data --
INSERT INTO books (author1, title, stock) VALUES('J.R.Tolkien', 'Eragon', 5);
INSERT INTO books (author1, title, stock) VALUES('Leigh Bardugo', 'Crooked Kingdom', 3);
INSERT INTO books (author1, title, stock) VALUES('Nicola Yoon', 'The Sun Is Also a Star', 6);

-- Select --
--1
SELECT * FROM books;
--2
SELECT id AS ID, author1 AS A1, author2 AS A2, author3 AS A3, title AS TITLE FROM books;
--3
SELECT author1 AS author, title, stock FROM books WHERE id = 1;
--4
SELECT title, stock FROM books WHERE id = 2 AND author1 = 'Leigh Bardugo';
--5
SELECT title, stock FROM books WHERE id = 3 OR title = 'Eragon';
--6
SELECT title, stock FROM books WHERE NOT stock < 5;
--7
SELECT author1, title, stock FROM books ORDER BY id ASC;
--8
SELECT * FROM books LIMIT 2;
--9
UPDATE books SET author1 = 'Christoper Paolini', price = 150000
WHERE id = 1;
--10
DELETE FROM books WHERE id = 3;