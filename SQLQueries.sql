
--Retrieval Queries

-- View all customers
SELECT * FROM Customers;

-- View all games
SELECT * FROM Games;

-- View all orders made by a specific customer
SELECT * FROM Orders WHERE customer_id = 'C001';

-- Insertion Queries 

-- Add a new customer
INSERT INTO Customers (customer_id, first_name, last_name, email, phone_number, address, membership_id)
VALUES ('C006', 'Lara', 'Croft', 'lara@example.com', '03121234567', 'Tomb Street 7', 'M001');

-- Add a new store
INSERT INTO Stores (store_id, location, email, established_at)
VALUES ('S004', 'F-11 Islamabad', 'f11store@vgames.com', '2024-01-15');

-- Update Queries

-- Update a customer's phone number
UPDATE Customers
SET phone_number = '03123456789'
WHERE customer_id = 'C001';

-- Update a game's genre
UPDATE Games
SET genre = 'Action RPG'
WHERE game_id = 'G001';

-- Deletion Queries

-- Update a customer's phone number
UPDATE Customers
SET phone_number = '03123456789'
WHERE customer_id = 'C001';

-- Update a game's genre
UPDATE Games
SET genre = 'Action RPG'
WHERE game_id = 'G001';
