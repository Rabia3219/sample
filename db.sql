CREATE TABLE Employee (
    EmployeeID INT  PRIMARY KEY,
    FirstName VARCHAR (50),
    LastName VARCHAR (50),
    BirthDate DATE, 
    Position VARCHAR (50),
    Salary DECIMAL (10, 2)
);

SELECT *
FROM Employee
WHERE LastName IN (
    SELECT LastName
    FROM Employee
    WHERE DateOfBirth = '2000-07-10'
);
