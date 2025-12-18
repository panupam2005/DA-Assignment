CREATE TABLE Products1 (
   ProductID INT PRIMARY KEY,
   ProductName VARCHAR(50),
   Price DECIMAL(10,2),
   QuantitySold INT,
   Category VARCHAR(50)
 );

INSERT INTO Products1 (ProductID, ProductName, Price, QuantitySold, Category)
VALUES
   (1, 'Laptop',800.00,5,'Electronics'),
   (2, 'Smartphone',600.00,10,'Electronics'),
   (3, 'Desk Chair',120.00,15,'Furniture'),
   (4, 'Table',200.00,8,'Furniture'),
   (5, 'Notebook',5.00,20,'Stationery'),
   (6, 'Pen',2.00,50,'Stationery');

SELECT * FROM Products1;

-- a) Above-Average Price: Select products whose Price exceeds the average price.
SELECT * 
FROM Products1
WHERE Price > (
	SELECT AVG(Price)
	FROM Products1
);


-- b) Most Expensive Product: Display the ProductName and Price of the highest-priced item.
SELECT TOP 1 ProductName, Price
FROM Products1
ORDER BY Price DESC;


-- c) Category Counts: Show the total number of products in each Category (using a subquery).
SELECT DISTINCT Category, (
	SELECT COUNT(*)
	FROM Products1 P2
	WHERE P1.Category = P2.Category
	) AS Total_Products
FROM Products1 P1;


-- d) Below-Average Sales: Find products with QuantitySold below the average quantity sold.
SELECT *
FROM Products1
WHERE QuantitySold < (
	SELECT AVG(QuantitySold)
	FROM Products1
);


-- e) Electronics View: Create a view for all Electronics products.
CREATE VIEW electronic_view AS
SELECT *
FROM Products1
WHERE Category = 'Electronics';

SELECT * FROM electronic_view;