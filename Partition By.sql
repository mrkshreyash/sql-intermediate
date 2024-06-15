USE joins;


SELECT Emp1.Emp_name, Emp1.Emp_dept, Emp1.Salary , count(Emp1.Emp_dept) over (partition by Emp1.Emp_dept) as Total_dept
from joins.employee_1 as Emp1
join joins.employee_2 as Emp2
on Emp1.Emp_id = Emp2.Emp_id;