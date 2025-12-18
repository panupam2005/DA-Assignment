CREATE TABLE Employees3 (
   EmpID INT PRIMARY KEY,
   Name VARCHAR(50),
   Department VARCHAR(50),
   Email VARCHAR(50)
 );

INSERT INTO Employees3 (EmpID, Name, Department, Email) VALUES
   (1, 'Alice Johnson','HR','alice.johnson@example.com'),
   (2, 'Bob Smith','IT','bob.smith@example.com'),
   (3, 'Charlie Brown','Finance','charlie.brown@example.com'),
   (4, 'Diana Prince','HR','diana.prince@example.com'),
   (5, 'Eve Adams','IT','eve.adams@example.org');

SELECT * FROM Employees3;


-- a) @example.com Emails: List employees with emails in the example.com domain.
SELECT * 
FROM Employees3
WHERE Email LIKE '%example.com';


-- b) Names Starting with 'A': Select employees whose names start with 'A'.
SELECT *
FROM Employees3
WHERE Name LIKE 'A%';


-- c) Names Ending with 'son': Find employees whose names end with 'son'.
SELECT *
FROM Employees3
WHERE Name LIKE '%son';


-- d) Second Letter 'v': Retrieve employees whose second character in the name is 'v'.
SELECT *
FROM Employees3
WHERE Name LIKE '_v%';


-- e) Departments Containing 'IT': Select employees in departments containing 'IT'.
SELECT *
FROM Employees3
WHERE Department LIKE '%IT%';


-- f) Case-Insensitive 'hr': Find employees in departments with 'hr' regardless of case.
SELECT *
FROM Employees3
WHERE LOWER(Department) LIKE '%hr%';