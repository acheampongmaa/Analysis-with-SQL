/* Aliasing */
/* Aliases are often used to make column names more readable.
An alias only exists for the duration of that query.
An alias is created with the AS keyword. It can also be done without AS */

/* Aliasing Column Names */
/* Example 1 */
SELECT firstname AS Fname
FROM EmployeeDemographics


/* Example 2 */
SELECT firstname  Fname
FROM EmployeeDemographics


/* Example 3 */
SELECT firstname + ' ' + lastname AS FullName
FROM EmployeeDemographics

/* Example 4 */
SELECT AVG(age) AS AvgAge
FROM EmployeeDemographics

/* Aliasing Table names */

/* Example 1 */
SELECT Demo.EmployeeID
FROM EmployeeDemographics AS Demo

/* Example 2 */
SELECT Demo.EmployeeID , Sal.Salary
FROM EmployeeDemographics AS Demo
JOIN EmployeeSalary AS Sal
on Demo.EmployeeID = Sal.EmployeeID