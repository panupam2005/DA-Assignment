CREATE TABLE Employees
EmpID INT PRIMARY KEY,
Name VARCHAR(50),
Department VARCHAR(20),
Salary DECIMAL(10,2)
);

INSERT INTO Employees (EmpID, Name, Department, Salary) 
VALUES(1, 'John Doe', 'HR', 50000),
	(2, 'Jane Smith', 'IT', 60000),
	(3, 'Alice Johnson', 'Finance', 55000),
	(4, 'Bob Brown', 'HR', 45000),
	(5, 'Charlie White', 'IT', 65000);


CREATE TABLE Departments(
DeptID INT PRIMARY KEY,
DeptName VARCHAR(50),
Location VARCHAR(50)
);
INSERT INTO Departments(DeptID, DeptName, Location)
VALUES (101, 'Sales', 'New York');

SELECT * FROM Employees;
SELECT * FROM Departments;

SELECT DISTINCT Department FROM Employees;

SELECT * FROM Employees
WHERE Salary > 55000;












