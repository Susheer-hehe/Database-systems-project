use Project;
CREATE TABLE Customers (
  customer_id VARCHAR(20) PRIMARY KEY,
  first_name VARCHAR(50),
  last_name VARCHAR(50),
  email VARCHAR(100),
  phone_number VARCHAR(20),
  address TEXT,
  membership_id VARCHAR(20),
);
CREATE TABLE Membership (
  membership_id VARCHAR(20) PRIMARY KEY,
  membership_name VARCHAR(50),
  discount_percent DECIMAL(5,2),
  benefits_description NVARCHAR(MAX)
);
CREATE TABLE Products (
  product_id VARCHAR(20) PRIMARY KEY,
  product_name VARCHAR(100),
  product_type VARCHAR(50),
  price DECIMAL(10,2),
  digital BIT,
  release_date DATE
);
ALTER TABLE Customers
ADD CONSTRAINT FK_Customers_Membership
FOREIGN KEY (membership_id) REFERENCES Membership(membership_id);
CREATE TABLE Stores (
  store_id VARCHAR(20) PRIMARY KEY,
  location VARCHAR(100),
  email VARCHAR(100),
  established_at DATE
);
CREATE TABLE Employees (
  employee_id VARCHAR(20) PRIMARY KEY,
  first_name VARCHAR(50),
  last_name VARCHAR(50),
  email VARCHAR(100),
  phone_number VARCHAR(20),
  position VARCHAR(50),
  salary DECIMAL(10, 2),
  store_id VARCHAR(20),
  FOREIGN KEY (store_id) REFERENCES Stores(store_id)
);
CREATE TABLE Games (
  game_id VARCHAR(20) PRIMARY KEY,
  product_id VARCHAR(20),
  platform VARCHAR(50),
  genre VARCHAR(50),
  publisher VARCHAR(100),
  release_date DATE,
  name VARCHAR(100),
  FOREIGN KEY (product_id) REFERENCES Products(product_id)
);
CREATE TABLE Orders (
  order_id VARCHAR(20) PRIMARY KEY,
  customer_id VARCHAR(20),
  order_date DATE,
  payment_method VARCHAR(50),
  total_amount DECIMAL(10, 2),
  product_id VARCHAR(20),
  quantity INT,
  unit_price DECIMAL(10, 2),
  FOREIGN KEY (customer_id) REFERENCES Customers(customer_id),
  FOREIGN KEY (product_id) REFERENCES Products(product_id)
);
CREATE TABLE Inventory (
  inventory_id VARCHAR(20) PRIMARY KEY,
  store_id VARCHAR(20),
  product_id VARCHAR(20),
  stock_quantity INT,
  FOREIGN KEY (store_id) REFERENCES Stores(store_id),
  FOREIGN KEY (product_id) REFERENCES Products(product_id)
);
CREATE TABLE Shipment (
  restock_id VARCHAR(20) PRIMARY KEY,
  store_id VARCHAR(20),
  product_id VARCHAR(20),
  supplier_name VARCHAR(100),
  supplier_contact VARCHAR(100),
  restock_date DATE,
  quantity INT,
  status VARCHAR(50),
  FOREIGN KEY (store_id) REFERENCES Stores(store_id),
  FOREIGN KEY (product_id) REFERENCES Products(product_id)
);
CREATE TABLE Rentals (
  rental_id VARCHAR(20) PRIMARY KEY,
  customer_id VARCHAR(20),
  product_id VARCHAR(20),
  rental_date DATE,
  due_date DATE,
  return_date DATE,
  rental_fee DECIMAL(10, 2),
  is_returned Bit,
  FOREIGN KEY (customer_id) REFERENCES Customers(customer_id),
  FOREIGN KEY (product_id) REFERENCES Products(product_id)
);
CREATE TABLE Console (
  console_id VARCHAR(20) PRIMARY KEY,
  product_id VARCHAR(20),
  brand VARCHAR(50),
  model VARCHAR(50),
  storage_capacity VARCHAR(50),
  FOREIGN KEY (product_id) REFERENCES Products(product_id)
);
CREATE TABLE Sales (
  sale_id VARCHAR(20) PRIMARY KEY,
  product_id VARCHAR(20),
  store_id VARCHAR(20),
  sale_date DATE,
  quantity_sold INT,
  unit_price DECIMAL(10, 2),
  discount_applied BIT,
  total_sale_amount DECIMAL(10, 2),
  FOREIGN KEY (product_id) REFERENCES Products(product_id),
  FOREIGN KEY (store_id) REFERENCES Stores(store_id)
);
CREATE TABLE PCParts (
  part_id VARCHAR(20) PRIMARY KEY,
  product_id VARCHAR(20),
  part_type VARCHAR(50),
  brand VARCHAR(50),
  model VARCHAR(50),
  warranty_period VARCHAR(50),
  FOREIGN KEY (product_id) REFERENCES Products(product_id)
);

