-- Membership
INSERT INTO Membership VALUES ('M001', 'Gold', 15.00, 'Free rentals, early access to games');
INSERT INTO Membership VALUES ('M002', 'Silver', 10.00, 'Discounts on purchases');
INSERT INTO Membership VALUES ('M003', 'Bronze', 5.00, 'Monthly game offers');
INSERT INTO Membership VALUES ('M004', 'Platinum', 20.00, 'Highest tier benefits');
INSERT INTO Membership VALUES ('M005', 'Basic', 0.00, 'No benefits, free tier');

-- Customers
INSERT INTO Customers VALUES ('C001', 'John', 'Doe', 'john.doe@example.com', '1234567890', '123 Main St', 'M001');
INSERT INTO Customers VALUES ('C002', 'Alice', 'Smith', 'alice.smith@example.com', '9876543210', '456 Oak Ave', 'M002');
INSERT INTO Customers VALUES ('C003', 'Bob', 'Brown', 'bob.brown@example.com', '5554443322', '789 Pine Rd', 'M003');
INSERT INTO Customers VALUES ('C004', 'Charlie', 'Green', 'charlie@example.com', '7771234567', '11 Elm St', 'M004');
INSERT INTO Customers VALUES ('C005', 'Diana', 'Prince', 'diana@example.com', '2223334444', '321 Maple Ave', 'M005');

-- Stores
INSERT INTO Stores VALUES ('S001', 'New York', 'ny_store@example.com', '2015-06-01');
INSERT INTO Stores VALUES ('S002', 'Los Angeles', 'la_store@example.com', '2017-09-15');
INSERT INTO Stores VALUES ('S003', 'Chicago', 'chi_store@example.com', '2018-01-20');
INSERT INTO Stores VALUES ('S004', 'Houston', 'hou_store@example.com', '2019-03-10');
INSERT INTO Stores VALUES ('S005', 'Miami', 'mia_store@example.com', '2020-07-05');

-- Employees
INSERT INTO Employees VALUES ('E001', 'Karen', 'Lee', 'karen.lee@example.com', '1112223333', 'Manager', 60000.00, 'S001');
INSERT INTO Employees VALUES ('E002', 'Mike', 'Jones', 'mike.jones@example.com', '4445556666', 'Sales Associate', 40000.00, 'S002');
INSERT INTO Employees VALUES ('E003', 'Nina', 'Patel', 'nina.patel@example.com', '3334445555', 'Technician', 45000.00, 'S003');
INSERT INTO Employees VALUES ('E004', 'Liam', 'Young', 'liam.young@example.com', '2223334444', 'Inventory', 38000.00, 'S004');
INSERT INTO Employees VALUES ('E005', 'Sophie', 'King', 'sophie.king@example.com', '6667778888', 'Cashier', 35000.00, 'S005');

-- Products
INSERT INTO Products VALUES ('P009', 'Nintendo Switch', 'Console', 299.99, 0, '2017-03-03'),
INSERT INTO Products VALUES ('P010', 'PlayStation 4', 'Console', 399.99, 0, '2013-11-15'),
INSERT INTO Products VALUES ('P011', 'Xbox One', 'Console', 399.99, 0, '2013-11-22'),
INSERT INTO Products VALUES ('P012', 'Ryzen 7 5800X', 'PC Part', 399.99, 0, '2020-11-05'),
INSERT INTO Products VALUES ('P013', 'Corsair Vengeance 16GB', 'PC Part', 89.99, 0, '2021-06-10'),
INSERT INTO Products VALUES ('P014', 'ASUS ROG Strix B550-F', 'PC Part', 179.99, 0, '2021-03-25'),
INSERT INTO Products VALUES ('P015', 'Samsung 970 EVO Plus 1TB', 'PC Part', 149.99, 0, '2019-01-22');


-- Games
INSERT INTO Games VALUES ('G001', 'P001', 'PC', 'RPG', 'FromSoftware', '2022-02-25', 'Elden Ring');
INSERT INTO Games VALUES ('G002', 'P004', 'Xbox', 'FPS', '343 Industries', '2021-12-08','Halo Infinite');
INSERT INTO Games VALUES ('G003', 'P006', 'PlayStation', 'Adventure', 'Sony', '2023-05-15','God of War Ragnarok');
INSERT INTO Games VALUES ('G004', 'P007', 'PC', 'Strategy', 'Valve', '2018-11-05','Dota 2');
INSERT INTO Games VALUES ('G005', 'P008', 'Switch', 'Platformer', 'Nintendo', '2017-03-03','The Legend of Zelda: BOTW');

-- Console
INSERT INTO Console VALUES ('CNS001', 'P002', 'Sony', 'PlayStation 5', '825GB');
INSERT INTO Console VALUES ('CNS002', 'P005', 'Microsoft', 'Xbox Series X', '1TB');
INSERT INTO Console VALUES ('CNS003', 'P009', 'Nintendo', 'Switch', '32GB');
INSERT INTO Console VALUES ('CNS004', 'P010', 'Sony', 'PlayStation 4', '500GB');
INSERT INTO Console VALUES ('CNS005', 'P011', 'Microsoft', 'Xbox One', '1TB');

-- PC Parts
INSERT INTO PCParts VALUES ('PCP001', 'P003', 'GPU', 'NVIDIA', 'RTX 3080', '3 years');
INSERT INTO PCParts VALUES ('PCP002', 'P012', 'CPU', 'AMD', 'Ryzen 7 5800X', '3 years');
INSERT INTO PCParts VALUES ('PCP003', 'P013', 'RAM', 'Corsair', 'Vengeance 16GB', '5 years');
INSERT INTO PCParts VALUES ('PCP004', 'P014', 'Motherboard', 'ASUS', 'ROG Strix B550-F', '3 years');
INSERT INTO PCParts VALUES ('PCP005', 'P015', 'SSD', 'Samsung', '970 EVO Plus 1TB', '5 years');

-- Inventory
INSERT INTO Inventory VALUES ('I001', 'S001', 'P001', 20);
INSERT INTO Inventory VALUES ('I002', 'S002', 'P002', 10);
INSERT INTO Inventory VALUES ('I003', 'S003', 'P003', 15);
INSERT INTO Inventory VALUES ('I004', 'S004', 'P004', 8);
INSERT INTO Inventory VALUES ('I005', 'S005', 'P005', 12);

-- Orders
INSERT INTO Orders VALUES ('O001', 'C001', '2023-12-01', 'Credit Card', 59.99, 'P001', 1, 59.99);
INSERT INTO Orders VALUES ('O002', 'C002', '2023-12-05', 'PayPal', 49.99, 'P004', 1, 49.99);
INSERT INTO Orders VALUES ('O003', 'C003', '2023-12-10', 'Credit Card', 499.99, 'P002', 1, 499.99);
INSERT INTO Orders VALUES ('O004', 'C004', '2023-12-15', 'Cash', 699.99, 'P003', 1, 699.99);
INSERT INTO Orders VALUES ('O005', 'C005', '2023-12-20', 'Debit Card', 59.99, 'P001', 1, 59.99);

-- Sales
INSERT INTO Sales VALUES ('S001', 'P001', 'S001', '2023-12-01', 2, 59.99, 0, 119.99);
INSERT INTO Sales VALUES ('S002', 'P004', 'S002', '2023-12-05', 5, 49.99, 1, 224.5);
INSERT INTO Sales VALUES ('S003', 'P002', 'S003', '2023-12-10', 1, 499.99, 0, 499.99);
INSERT INTO Sales VALUES ('S004', 'P003', 'S004', '2023-12-15', 1, 699.99, 1, 629.99);
INSERT INTO Sales VALUES ('S005', 'P005', 'S005', '2023-12-20', 1, 499.99, 0, 499.99);

-- Shipment
INSERT INTO Shipment VALUES ('RS001', 'S001', 'P001', 'GameSupply Co.', '03211234567', '2025-05-01', 20, 'Delivered'), 
INSERT INTO Shipment VALUES ('RS002', 'S001', 'P002', 'PCParts Depot', '03334567890', '2025-05-03', 10, 'Delivered'), 
INSERT INTO Shipment VALUES ('RS003', 'S002', 'P004', 'ConsoleWorld Ltd.', '03456789123', '2025-05-07', 15, 'Pending'), 
INSERT INTO Shipment VALUES ('RS004', 'S003', 'P003', 'GadgetPlus Inc.', '03567891234', '2025-05-09', 12, 'Delivered'),
INSERT INTO Shipment VALUES ('RS005', 'S001', 'P005', 'NextTech Supplies', '03678912345', '2025-05-10', 8, 'Shipped');

-- Rentals
INSERT INTO Rentals VALUES ('R001', 'C001', 'P001', '2025-05-01', '2025-05-07', '2025-05-06', 500.00, 1),
INSERT INTO Rentals VALUES ('R002', 'C002', 'P002', '2025-05-03', '2025-05-10', NULL, 600.00, 0),
INSERT INTO Rentals VALUES ('R003', 'C003', 'P003', '2025-05-05', '2025-05-12', NULL, 450.00, 0),
INSERT INTO Rentals VALUES ('R004', 'C004', 'P004', '2025-05-06', '2025-05-13', '2025-05-12', 700.00, 1),
INSERT INTO Rentals VALUES ('R005', 'C005', 'P005', '2025-05-08', '2025-05-15', NULL, 550.00, 0);

