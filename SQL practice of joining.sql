
-- Create Employees Table
CREATE TABLE Employees3 (
    employee_id int identity PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    department_id INT
);

-- Insert Data into Employees
INSERT INTO Employees3 (first_name, last_name, department_id)
VALUES
('Rahul', 'Sharma', 101),
('Priya', 'Mehta', 102),
('Ankit', 'Verma', 103),
('Simran', 'Kaur', NULL),
('Aman', 'Singh', 101);

-- Display Employees Data
SELECT * FROM Employees3;


-- Create Departments Table
CREATE TABLE Departments (
    department_id INT PRIMARY KEY,
    department_name VARCHAR(50)
);

-- Insert Data into Departments
INSERT INTO Departments (department_id, department_name)
VALUES
(101, 'Sales'),
(102, 'Marketing'),
(103, 'IT'),
(104, 'HR');

-- Display Departments Data


--inner join 2no tables only matching data in dispaly--
select 
e.employee_id,
e.first_name,
e.last_name,
d.department_id,
d.department_name
from employees3 e
inner join Departments d
on e.department_id = d.department_id;

--left join. left table full in display and right only matching row--
select 
e.employee_id,
e.first_name,
e.last_name,
d.department_id,
d.department_name
from employees3 e
left join Departments d
on e.department_id = d.department_id;

--right join. right table full in display and left only matching row--
select 
e.employee_id,
e.first_name,
e.last_name,
d.department_id,
d.department_name
from employees3 e
right join Departments d
on e.department_id = d.department_id;

--outer join 2no table full in display--
select 
e.employee_id,
e.first_name,
e.last_name,
d.department_id,
d.department_name
from employees3 e
full outer join Departments d
on e.department_id = d.department_id;

--CTEs--
WITH Employee_CTE AS
(
    SELECT *
    FROM Employees3
    WHERE department_id = 101
)

SELECT *
FROM Employee_CTE;