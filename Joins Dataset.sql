CREATE DATABASE Joins;
USE Joins;
CREATE TABLE Employee_1 (
    Emp_id INT PRIMARY KEY,
    Emp_name VARCHAR(40),
    Emp_dept VARCHAR(40)
);

CREATE TABLE Employee_2 (
    Emp_id INT PRIMARY KEY,
    Emp_name VARCHAR(40),
    Emp_dept VARCHAR(40)
);

SELECT 
    *
FROM
    Employee_1;
INSERT INTO Employee_1 VALUES(1001, "Alex", "Analyst");
INSERT INTO Employee_1 VALUES(1002, "Valva", "Researcher");
INSERT INTO Employee_1 VALUES(1003, "Jhon", "Project Manager");
INSERT INTO Employee_1 VALUES(1004, "Smith", "Tester");
INSERT INTO Employee_1 VALUES(101, "Chris", "Analyst");
INSERT INTO Employee_1 VALUES(102, "Jerry", "Researcher");
INSERT INTO Employee_1 VALUES(103, "Jamal", "Project Manager");
INSERT INTO Employee_1 VALUES(104, "Ven", "Tester");


SELECT 
    *
FROM
    Employee_2;
INSERT INTO Employee_2 VALUES(1001, "Bill", "Analyst");
INSERT INTO Employee_2 VALUES(1002, "Warren", "Researcher");
INSERT INTO Employee_2 VALUES(1003, "Elon", "Project Manager");
INSERT INTO Employee_2 VALUES(1004, "Sam", "Tester");
INSERT INTO Employee_2 VALUES(11, "Andy", "Analyst");
INSERT INTO Employee_2 VALUES(12, "Barry", "Researcher");
INSERT INTO Employee_2 VALUES(13, "Carol", "Project Manager");
INSERT INTO Employee_2 VALUES(14, "David", "Tester");


SELECT 
    *
FROM
    Employee_1;
DELETE FROM Employee_2 
WHERE
    Emp_id != 0;

SELECT * FROM Employee_2 WHERE Emp_name LIKE 'BILL';

SELECT * FROM Employee_2 WHERE Emp_dept is not Null;
SELECT * FROM Employee_2 WHERE Emp_dept is Null;

use world;

select * from city;

select * from city where CountryCode like 'i_d';
select * from city where District like '%Ma%ta';
select * from city where District like 'Maha%';
select * from city where Name like 'K%r' and District like 'Mahara%';