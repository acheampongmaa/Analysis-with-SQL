/* Union, Union All. We will create new tables */

CREATE TABLE EmpolyeeDemographicsShop
(EmployeeID int,
FirstName varchar(50),
LastName varchar(50),
Age int,
 Gender varchar(50)
 )

Insert into EmpolyeeDemographicsShop VALUES
(1011, 'Emmanuel', 'Larbi', 26, 'Male'),
(NULL, 'Helen', 'Kyere', NULL, NULL),
(1013, 'Philimon', 'Mensah', NULL, 'Male')

CREATE TABLE EmpolyeeWarehouseDemographics
(EmployeeID int,
FirstName varchar(50),
LastName varchar(50),
Age int,
Gender varchar(50)
 
Insert into EmpolyeeWarehouseDemographics VALUES
 (1013, 'Philimon', 'Mensah', NULL, 'Male'),
 (1050, 'Daniel', 'Quarshie', 31, 'Male'),
 (1051, 'Nana', 'Appiah', 40, 'Male'),
 (1052, 'Milicent', 'Rockson', 31, 'Female')

/*Example. Union removes duplicates */
SELECT *
FROM EmpolyeeWarehouseDemographics
UNION
SELECT * 
FROM EmpolyeeDemographicsShop

/*Example. Union All doesn't removes duplicates */
SELECT *
FROM EmpolyeeWarehouseDemographics
UNION ALL
SELECT * 
FROM EmpolyeeDemographicsShop
ORDER BY employeeid