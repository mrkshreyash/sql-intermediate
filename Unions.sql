/*
	Covered : UNION, UNION ALL
*/

-- ***** UNION ******
SELECT * 
FROM joins.employee_1
UNION
SELECT * 
FROM joins.employee_2
ORDER BY Emp_id;


-- ****** UNION ALL *******
-- UNION ALL checks duplicate values and shows the result. Due to this we get more rows.
SELECT *
FROM joins.employee_1
UNION ALL
SELECT *
FROM joins.employee_2
ORDER BY Emp_id;