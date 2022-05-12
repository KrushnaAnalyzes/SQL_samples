create database krushnaStore;
use krushnaStore;

CREATE TABLE customers 
(customerID int,
CustomerName varchar(60),
ContactName varchar(60),
Address varchar(60),
City text,
PostalCode int,
Country varchar(60)
);

ALTER TABLE customers ALTER COLUMN PostalCode VARCHAR(60);

INSERT INTO customers VALUES
(1,'Alfreds Futterkiste','Maria Anders','Obere Str. 57','Berlin','12209','Germany'),
(2,'Ana Trujillo Emparedados y helados','Ana Trujillo','Avda. de la Constitución 2222','México D.F.','05021','Mexico'),
(3,'Antonio Moreno Taquería','Antonio Moreno','Mataderos 2312','México D.F.','05023','Mexico'),
(4,'Around the Horn','Thomas Hardy','120 Hanover Sq.','London','WA1 1DP','UK'),
(5,'Berglunds snabbköp','Christina Berglund','Berguvsvägen 8','Luleå','S-958 22','Sweden')

SELECT * FROM customers;

SELECT CustomerName, City FROM customers;

SELECT DISTINCT Country FROM customers;

SELECT COUNT(DISTINCT Country) FROM customers;

SELECT CustomerName, City FROM customers WHERE Country = 'Mexico' OR Country = 'UK';
