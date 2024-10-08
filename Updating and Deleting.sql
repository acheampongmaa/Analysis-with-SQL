/* Updating and Deleting data */

/* Updating alters an existing table */

 /* Inserting more records in the table so we can update*/
 INSERT INTO EmployeeDemographics (firstname, lastname)
 VALUES 
 ('Abena', 'Gyedu')
 
 INSERT INTO EmployeeDemographics (employeeid, firstname, lastname,gender)
 VALUES 
 (1012, 'Kwakye', 'Opoku', 'Male')

SELECT *
FROM EmployeeDemographics

/*Example 1 */
/* SET will be used to specify which column and value we want to update */

SELECT *
FROM EmployeeDemographics

UPDATE EmployeeDemographics
SET employeeid = 1011
WHERE firstname = 'Abena' AND lastname = 'Gyedu'

UPDATE EmployeeDemographics
SET Age = 31 , Gender = 'Female'
WHERE firstname = 'Abena' AND lastname = 'Gyedu'

/*Deleting removes an entire row */

/*Example 1 When one uses DELETE directly, the entire row is 
removed without you knowing. However, you can use SELECT
which shows you the exact row you're deleting. This keeps you on a safer side*/


SELECT * 
FROM EmployeeDemographics
WHERE employeeid = 1005

DELETE FROM EmployeeDemographics
WHERE employeeid = 1005

SELECT *
FROM EmployeeDemographics