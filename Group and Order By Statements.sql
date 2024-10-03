/* Group By, Order By statement
 */
 
 /*Group by is used to apply some aggregate function in each group
 If males and females are in the dataset, using 'group by' will result
 in distinct names. When count is included, it counts the number of appearances
 in each group
 */

 /* Example 1 */
 SELECT Gender, COUNT(Gender)
 FROM EmployeeDemographics
 GROUP BY Gender
 
/* Example 2 */
 SELECT Gender, Age, COUNT(Gender)
 FROM EmployeeDemographics
 GROUP BY Gender, Age
 
/* Example 3 */
 SELECT Gender,Age, COUNT(Gender)
 FROM EmployeeDemographics
 WHERE Age > 30
GROUP BY Gender, Age
 
 /* Order by. This is used to order the count. SQL has the default of ASC
 */
  
 /* Example 1 */
 SELECT Gender,Age, COUNT(Gender) As CountGender
FROM EmployeeDemographics
GROUP BY Gender, Age
ORDER BY CountGender DESC
 
 /* Example 2 */
 SELECT *
 FROM EmployeeDemographics
 ORDER BY Age
 
 /* Example 3 */
 SELECT *
 FROM EmployeeDemographics
 ORDER BY Age DESC, Gender DESC
 
 /* Example 4. One can use the column number instead of name */
 SELECT *
 FROM EmployeeDemographics
 ORDER BY 4 DESC, 5 DESC
