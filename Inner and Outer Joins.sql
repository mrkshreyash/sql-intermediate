USE world;
USE joins;

SELECT 
    *
FROM
    world.city;
SELECT 
    *
FROM
    world.country;
SELECT 
    *
FROM
    world.countrylanguage;

/*
	----- INNER JOINS ------
*/
SELECT 
    *
FROM
    world.country
        INNER JOIN
    world.city ON country.Code = city.CountryCode;


SELECT 
    *
FROM
    joins.employee_1
        INNER JOIN
    joins.employee_2 ON employee_1.Emp_id = employee_2.Emp_id;


/*
	----- LEFT JOINS ------
*/
SELECT 
    *
FROM
    joins.employee_1
        LEFT JOIN
    joins.employee_2 ON employee_1.Emp_name = employee_2.Emp_name;

/*
	----- RIGHT JOINS ------
*/

SELECT 
    *
FROM
    joins.employee_1
        RIGHT JOIN
    joins.employee_2 ON employee_1.Emp_name = employee_2.Emp_name;


/*
	----- LEFT OUTER JOINS ------
*/
SELECT 
    *
FROM
    joins.employee_1
        LEFT OUTER JOIN
    joins.employee_2 ON employee_1.Emp_id = employee_2.Emp_id;

/*
	----- RIGHT OUTER JOINS ------
*/
SELECT 
    *
FROM
    joins.employee_1
        RIGHT OUTER JOIN
    joins.employee_2 ON employee_1.Emp_id = employee_2.Emp_id;

/*
	----- FULL OUTER JOINS ------
    MySql does not support 'Full Outer Join' so we use 'UNION ALL' 
    operation to perform 'Full Outer JOin'.
*/

SELECT 
    *
FROM
    joins.employee_1
        RIGHT OUTER JOIN
    joins.employee_2 ON employee_1.Emp_id = employee_2.Emp_id 
UNION ALL SELECT 
    *
FROM
    joins.employee_1
        LEFT OUTER JOIN
    joins.employee_2 ON employee_1.Emp_id = employee_2.Emp_id;

