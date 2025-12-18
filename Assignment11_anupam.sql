CREATE TABLE Orders1(
	OrderID INT PRIMARY KEY,
	OrderDate DATE,
	Amount Decimal(10,2)
);

INSERT INTO Orders1 (OrderID, OrderDate, Amount)
VALUES
	(1, '2024-11-01', 250.50),
    (2, '2024-11-02', 300.75),
    (3, '2024-11-03', 150.25);

SELECT * FROM Orders1;

-- a) Amount to String: Convert the Amount column to a textual string.
SELECT CONVERT(varchar, Amount) Amount_text
FROM Orders1;


-- b) Date to String: Format OrderDate as a string (e.g., 'YYYY-MM-DD').
SELECT CAST(OrderDate AS varchar(20)) Date_string
FROM Orders1;


-- c) String to Date: Convert literal '2024-11-05' into a DATE type.
SELECT CONVERT(DATETIME, '2024-11-05') AS Date_time;


-- d) Extract Year: Retrieve the year component from OrderDate.
SELECT OrderID, YEAR(OrderDate) AS Order_year
FROM Orders1;


-- e) Concatenate Fields: Combine OrderDate and Amount into one string.
SELECT CONCAT(CONVERT(VARCHAR, OrderDate), '&', CONVERT(VARCHAR, Amount)) AS OrderDate_amount
FROM Orders1;

