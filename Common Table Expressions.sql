/* Common Table Expressions. This is used to create
a temporary table that exists only during the execution of a single query.
It make it easier to manage and write complex queries*/ 

/* Example 1 */
with cte_employee AS
(SELECT firstname, lastname, age
FROM EmployeeDemographics
WHERE age >= 30
)
 SELECT firstname, age 
 from cte_employee
 
 /* Example 2 */
 WITH employeename AS
 (SELECT firstname + '  ' + lastname AS FullName, gender
  FROM EmployeeDemographics
  WHERE gender = 'Female'
  )
  SELECT FullName, gender
  FROM employeename
  
  /*Example 3*/
  WITH EmployeeSal AS
  (SELECT firstname, lastname, jobtitle, salary
   FROM EmployeeSalary
   JOIN EmployeeDemographics
   ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID
   WHERE salary > 45000
   )
   SELECT firstname, lastname, jobtitle, salary
   FROM EmployeeSal
   
   /* Example 4 */
   WITH EmployeeSal AS
  (SELECT count(firstname) AS EmpName,
   COUNT(gender) AS TotalGender,
   AVG(salary) AS AvgSalary
   FROM EmployeeSalary
   JOIN EmployeeDemographics
   ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID
   WHERE salary >= 50000
   )
   SELECT EmpName, AvgSalary
   FROM EmployeeSal