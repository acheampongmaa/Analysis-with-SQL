/* Case Statements. This is used to specify a condition
and what you want returned when the condition is met. It's like IF and ELSE statement*/

--SELECT * 
--FROM EmployeeDemographics

SELECT firstname, lastname, age,
CASE 
    WHEN Age > 30 THEN 'Old'
    WHEN Age BETWEEN 27 AND 30 THEN 'Young'
    ELSE 'Baby'
END    
    
FROM EmployeeDemographics
WHERE Age IS NOT NULL
ORDER BY Age

/* Case statements returns a value when the first condition is met */

/* Example 1. In this example since the first 
condition was met, the condition to return 'Esi' was ignored because
it had already returned 'Old' for Age > 30 */

SELECT firstname, lastname, age,
CASE 
    WHEN Age > 30 THEN 'Old'
    WHEN Age = 38 THEN 'Esi'
    ELSE 'Baby'
END    
    
FROM EmployeeDemographics
WHERE Age IS NOT NULL
ORDER BY Age


/* Example 2. In this example since the condition to return 'Esi' for Age = 38 was 
executed first before the rest */

SELECT firstname, lastname, age,
CASE 
    WHEN Age = 38 THEN 'Esi'
    WHEN Age > 30 THEN 'Old'
    ELSE 'Baby'
END    
    
FROM EmployeeDemographics
WHERE Age IS NOT NULL
ORDER BY Age