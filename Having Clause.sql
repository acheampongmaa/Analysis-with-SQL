/* Having Clause */
/*Exaxmple 1*/
SELECT jobtitle, count(jobtitle)
FROM EmployeeDemographics
JOIN EmployeeSalary
ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID
GROUP BY jobtitle
HAVING COUNT(jobtitle)>1

/* Example 2*/
SELECT jobtitle, AVG(salary)
FROM EmployeeDemographics
JOIN EmployeeSalary
ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID
GROUP BY jobtitle
HAVING AVG(salary)> 45000
ORDER BY AVG(salary)