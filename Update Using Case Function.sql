USE joins;


ALTER TABLE joins.employee_1 ADD Salary int;
ALTER TABLE joins.employee_2 ADD Salary int;

SELECT * FROM employee_1;

UPDATE employee_1 SET Salary = 0;

UPDATE employee_1 SET Salary = 
CASE 
	WHEN Emp_dept = "Analyst" or Emp_dept = "Tester" THEN 10000
    WHEN Emp_dept = "Researcher" THEN  15000
    WHEN Emp_dept = "Project Manager" THEN 20000
    ELSE 1
END
WHERE Salary is not null;

SELECT * FROM employee_2;

UPDATE employee_2 SET Salary = 
CASE 
	WHEN Emp_dept = "Analyst" or Emp_dept ="Tester" THEN 10000
    WHEN Emp_dept = "Project Manager" THEN 20000
    WHEN Emp_dept = "Researcher" THEN 15000
    ELSE 0
END
WHERE Salary is NULL;