USE joins;


SELECT 
    a.Emp_dept, AVG(a.Salary)
FROM
    joins.employee_1 as a
        JOIN
    joins.employee_2 as b ON a.Emp_id = b.Emp_id
GROUP BY a.Emp_dept
HAVING AVG(a.salary) > 10000
ORDER BY AVG(a.Salary);

