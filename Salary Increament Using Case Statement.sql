USE joins;
Select * from employee_1;


Select * ,
CASE 
	WHEN Emp_dept = "Analyst" or Emp_dept = "Tester" THEN Salary + (Salary * .10)
    WHEN Emp_dept = "Researcher" THEN Salary + (Salary * .20)
    When Emp_dept = "Project Manager" THEN Salary + (Salary * .25)
    ELSE Salary
END as UpdatedSalary
FROM employee_1;