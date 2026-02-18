-- Creation of Database
CREATE DATABASE Swaad;

-- Creating Menu Table
Create table Resturant_Menu(
Order_id int Primary key IDENTITY (1,1),
Order_name varchar(50),
Price Decimal(10,2)
);

INSERT INTO Resturant_Menu(Order_name, Price)
VALUES 
('Paneer Bhuna', 250),
('Paneer Kolhapuri', 250),
('Veg Kofta', 250),
('Veg Biryani', 180),
('Plain Dosa', 100),
('Masala Dosa', 120),
('Shev Bhaji', 200),
('Butter Naan', 40),
('Wheat Roti', 30),
('Maida Roti', 30),
('Dal Tadka', 150),
('Jeera Rice', 120),
('Veg Fried Rice', 160),
('Hakka Noodles', 170),
('Chole Bhature', 140),
('Idli Sambar', 80),
('Medu Vada', 90),
('Paneer Tikka', 280),
('Cold Coffee', 90),
('Gulab Jamun', 60);



-- Bill Printing 
CREATE TABLE Orders (
    order_id INT PRIMARY KEY IDENTITY(1,1),
    item_id INT,
    quantity INT,
    price DECIMAL(10,2),
    total DECIMAL(10,2),
    order_date DATETIME DEFAULT GETDATE(),
    FOREIGN KEY (item_id) REFERENCES Resturant_Menu(ID)
);

SELECT * FROM Orders