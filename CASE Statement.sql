/*
		CASE STATEMENT
        Syntax:
		SELECT *,`		-- ',' comma is the most important thing after statement	
			CASE
				WHEN -- statemeents
				WHEN -- statements 2
				ELSE
			END
		FROM <table name>;
        
*/


USE joins;
SELECT *,
CASE
	WHEN Emp_dept = 'Analyst' THEN "DATA SCIENCE TEAM"
    ELSE Emp_dept
END
FROM joins.employee_1;
