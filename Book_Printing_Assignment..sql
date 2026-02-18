--CREATE DATABASE Book_Printing;
USE Book_Printing;

CREATE TABLE Books (
    book_id INT PRIMARY KEY IDENTITY(1,1),
    standard VARCHAR(20),
    subject VARCHAR(50),
    price DECIMAL(10,2)
);

INSERT INTO Books (standard, subject, price) VALUES
-- 1st-4th
('1st-4th', 'Hindi', 60),
('1st-4th', 'Marathi', 60),
('1st-4th', 'English', 80),
('1st-4th', 'Science', 90),
('1st-4th', 'Maths', 100),

-- 5th-8th
('5th-8th', 'Hindi', 100),
('5th-8th', 'Marathi', 100),
('5th-8th', 'English', 100),
('5th-8th', 'Science', 120),
('5th-8th', 'Maths', 140),

-- 9th-10th
('9th-10th', 'Hindi', 150),
('9th-10th', 'Marathi', 150),
('9th-10th', 'English', 150),
('9th-10th', 'Science', 200),
('9th-10th', 'Maths', 250);

CREATE TABLE Notebooks (
    notebook_id INT PRIMARY KEY IDENTITY(1,1),
    type VARCHAR(50),
    pages INT,
    price DECIMAL(10,2)
);

INSERT INTO Notebooks (type, pages, price) VALUES
('Square', 100, 40),
('Square', 200, 70),
('4 Lines', 100, 30),
('4 Lines', 200, 50),
('2 Lines', 100, 30),
('2 Lines', 200, 50),
('Single Line', 100, 60),
('Single Line', 200, 100),
('A4 Notebook', 100, 100),
('A4 Notebook', 200, 180);

CREATE TABLE Orders (
    order_id INT PRIMARY KEY IDENTITY(1,1),
    item_name VARCHAR(100),
    quantity INT,
    price DECIMAL(10,2),
    total DECIMAL(10,2),
    order_date DATETIME DEFAULT GETDATE()
);

select * from Books;
select * from Notebooks;
select * from Orders;