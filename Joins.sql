 /* Inner Full/Left/Right Outer joins */
 
 /* Inserting more records in the table*/
 --INSERT INTO EmployeeDemographics (firstname, lastname)
 --VALUES 
 --('Abena', 'Gyedu')
 
 --INSERT INTO EmployeeDemographics (employeeid, firstname, lastname,gender)
 --VALUES 
 --(1012, 'Kwakye', 'Opoku', 'Male')
 
 --DELETE FROM EmployeeDemographics
 --WHERE firstname = 'Abena' AND lastname = 'Gyedu'
 
 --INSERT INTO EmployeeSalary (employeeid, salary)
--VALUES 
 --(1011, 47000)
 
 --INSERT INTO EmployeeSalary (jobtitle, salary)
--VALUES 
--('Salesman', 43000)

--SELECT *
--FROM EmployeeSalary

/* Inner Join. Returns only rows with a match in both tables */

--SELECT * 
--FROM EmployeeDemographics
--INNER JOIN EmployeeSalary
--ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID

/* Full Outer Join. Returns all matching records from 
both tables whether the other table matches or not */

--SELECT * 
--FROM EmployeeDemographics
--FULL OUTER JOIN EmployeeSalary
--ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID


/* Left Outer Join. Returns entire left table
In this case the employeedemographics table is the left
and the empolyee salary table is the right*/

--SELECT * 
--FROM EmployeeDemographics
--LEFT OUTER JOIN EmployeeSalary
--ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID

/* Right Outer Join. Returns entire RIGHT table
In this case the empolyee salary table is the right 
and the employeedemographics table is the left*/

--SELECT * 
--FROM EmployeeDemographics
--RIGHT OUTER JOIN EmployeeSalary
--ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID

/* Selecting specific columns. Note that you
won't always select the entire table
*/

--SELECT EmployeeDemographics.EmployeeID, firstname, lastname, jobtitle, salary
--FROM EmployeeDemographics
--INNER JOIN EmployeeSalary
--ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID

--SELECT EmployeeSalary.EmployeeID, firstname, lastname, jobtitle, salary
--FROM EmployeeDemographics
--RIGHT OUTER JOIN EmployeeSalary
--ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID

--SELECT EmployeeDemographics.EmployeeID, firstname, lastname, jobtitle, salary
--FROM EmployeeDemographics
--LEFT OUTER JOIN EmployeeSalary
--ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID

/*Use case. Knowing highest paid employee apart from Yaw Twum */

--SELECT EmployeeSalary.EmployeeID, firstname, lastname, salary
--FROM EmployeeDemographics
--INNER JOIN EmployeeSalary
--ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID
--WHERE firstname <> 'Yaw'
--ORDER BY salary DESC

/*Use case. Knowing average salary for sales personnel*/

SELECT jobtitle, AVG(salary)
FROM EmployeeDemographics
INNER JOIN EmployeeSalary
ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID
WHERE jobtitle = 'Sales Personnel'
GROUP BY jobtitle