CREATE TABLE Employees1(
EmpID INT PRIMARY KEY,
EmpName VARCHAR(50),
DepartmentID INT
);

INSERT INTO Employees1 (EmpID, EmpName, DepartmentID)
VALUES
   (1,'Alice',101),
   (2,'Bob',102),
   (3,'Charlie',103),
   (4,'Diana',NULL),
   (5,'Eve',101);

CREATE TABLE Departments1 (
   DepartmentID INT PRIMARY KEY,
   DeptName VARCHAR(50),
   Location VARCHAR(50)
);

INSERT INTO Departments1 (DepartmentID, DeptName, Location) VALUES
   (101,'HR','New York'),
   (102,'IT','San Francisco'),
   (103,'Finance','Chicago'),
   (104,'Sales','Boston');

SELECT * FROM Employees1
SELECT * FROM Departments1

-- a) Inner Join: List all employees with assigned department names.
SELECT E.EmpID, E.EmpName, D.DeptName
FROM Employees1 AS E
INNER JOIN Departments1 AS D
ON E.DepartmentID = D.DepartmentID;


-- b) Left Join: Show all employees, with department name if assigned (NULL if not).
SELECT E.EmpID, E.EmpName, D.DeptName
FROM Employees1 AS E
LEFT JOIN Departments1 AS D
ON E.DepartmentID = D.DepartmentID;


-- c) Right Join: Show all departments, with employee name if exists (NULL if none).
SELECT D.DepartmentID, D.DeptName, E.EmpName
FROM Employees1 AS E
RIGHT JOIN Departments1 AS D
ON E.DepartmentID = D.DepartmentID;


-- d) Full Outer Join: Include all employees and departments, matching where possible.
SELECT E.EmpID, EmpName, D.DeptName
FROM Employees1 AS E
FULL OUTER JOIN Departments1 AS D
ON E.DepartmentID = D.DepartmentID;


-- e) Cross Join: Generate every combination of employee names and department names.
SELECT E.EmpName, D.DeptName
FROM Employees1 AS E
CROSS JOIN Departments1 AS D;


-- f) Union All: Create a list combining all employee names and department names in one column.
SELECT EmpName 
FROM Employees1
UNION ALL
SELECT DeptName
FROM Departments1;

-- g) Intersect: Find department IDs present in both tables.
SELECT DepartmentID
FROM Employees1
INTERSECT
SELECT DepartmentID
FROM Departments1;


-- h) Except: List department IDs in Departments but not in Employees.
SELECT DepartmentID
FROM Departments1
EXCEPT
SELECT DepartmentID
FROM Employees1;