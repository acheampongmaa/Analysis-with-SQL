/* Where statement. It helps specify the data you want
 =, <>, <, >, And, Or, Like, Null, Not Null, In
 */
 
 /* Using = */
 SELECT *
 FROM EmployeeDemographics
 WHERE FirstName = 'Kwabena'
 
 /* Using <> everything except Kwabena that is not equal to */
 SELECT *
 FROM EmployeeDemographics
 WHERE FirstName <> 'Kwabena'
 
 /* Using > This excludes 30 */
 SELECT *
 FROM EmployeeDemographics
 WHERE Age > 30
 
 /* Using >= This includes 30 */
 SELECT *
 FROM EmployeeDemographics
 WHERE Age >= 30
 
  /* Using < This excludes 32 */
 SELECT *
 FROM EmployeeDemographics
 WHERE Age < 32
 
 /* Using < = This includes 32 */
 SELECT *
 FROM EmployeeDemographics
 WHERE Age <= 32
 
 /* Using AND. This gives both of the conditions given */
 SELECT *
 FROM EmployeeDemographics
 WHERE Age <= 32 AND Gender = 'Male'
 
 /* Using OR. This gives either one of the conditions given */
 SELECT *
 FROM EmployeeDemographics
 WHERE Age <= 32 OR Gender = 'Male'
 
 /* Using LIKE. Wildcards are used with this. This looks for the LN beginning with M */
SELECT *
FROM EmployeeDemographics
WHERE LastName LIKE 'M%'
 
 
   /* Using LIKE. Wildcards are used with this. This looks for the LN with E at any position */
 SELECT *
 FROM EmployeeDemographics
 WHERE LastName LIKE '%E%'
 
  /* Using NULL. There's no null so the table shows empty */
 SELECT *
 FROM EmployeeDemographics
 WHERE LastName is NULL
 
   /* Using NOT NULL */
 SELECT *
 FROM EmployeeDemographics
 WHERE LastName is NOT NULL
 
 
  --Using IN. This helps select multiple values
 SELECT *
 FROM EmployeeDemographics
 WHERE FirstName IN ('Ama', 'Kofi', 'Yaw', 'Esi')
