CREATE TABLE Employees2(
	EmpID INT PRIMARY KEY,
	Name VARCHAR(50),
	DateOfBirth DATE,
	JoinDate DATE
);

INSERT INTO Employees2 (EmpID, Name, DateOfBirth, JoinDate)
VALUES
	(1, 'Alice Johnson', '1985-05-20', '2010-06-15'),
    (2, 'Bob Smith', '1990-08-10', '2015-09-01'),
    (3, 'Charlie Brown', '1988-03-25', '2012-11-12'),
    (4, 'Diana Prince', '1992-01-30', '2017-07-08'),
    (5, 'Eve Adams', '1987-12-05', '2013-03-20');

SELECT * FROM Employees2;


-- a) Current Date & Time: Display the current system date and time.
SELECT CURRENT_TIMESTAMP AS Current_date_time;
SELECT GETDATE() AS Current_Date_Time;


-- b) Calculate Age: Compute each employee’s age in years based on DateOfBirth.
SELECT Name, DATEDIFF(year, DateOfBirth, CURRENT_TIMESTAMP) AS Age
FROM Employees2;


-- c) Calculate Experience: Compute total years of service since JoinDate.
SELECT EmpID, Name, DATEDIFF(YEAR, JoinDate, CURRENT_TIMESTAMP) AS Experience
FROM Employees2;


-- d) Extract DOB Components: Extract year, month, and day from DateOfBirth.
SELECT EmpID, Name, YEAR(DateOfBirth) AS Year, MONTH(DateOfBirth) AS Month, DAY(DateOfBirth) AS Day
FROM Employees2;


-- e) Born in August: List employees born in the month of August.
SELECT * 
FROM Employees2
WHERE DATENAME(Month, DateOfBirth) = 'August';



-- f) Upcoming Birthdays: Display names of employees whose birthdays fall in the next 30 days.
SELECT EmpID, Name, DateOfBirth
FROM Employees2
WHERE 
  DATEADD(YEAR, DATEDIFF(YEAR, DateOfBirth, GETDATE()), DateOfBirth)
BETWEEN CAST(GETDATE() AS DATE)
AND DATEADD(DAY, 30, CAST(GETDATE() AS DATE))
ORDER BY DateOfBirth;


