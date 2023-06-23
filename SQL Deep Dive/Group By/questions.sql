/*
*  How many people were hired on any given hire date?
*  Database: Employees
*  Table: Employees
*/

SELECT count(e.emp_no), hire_date
FROM employees as e
group by hire_date 

/*
*   Show me all the employees, hired after 1991 and count the amount of positions they've had
*  Database: Employees
*/

SELECT count(t.title), t.emp_no 
FROM employees as e
join titles t 
on e.emp_no = t.emp_no 
where e.hire_date > '1991-12-31'
group by t.emp_no 

/*
*  Show me all the employees that work in the department development and the from and to date.
*  Database: Employees
*/

SELECT count(e.emp_no), de.from_date , de.to_date 
FROM employees as e
join dept_emp de 
on e.emp_no = de.emp_no 
join departments d 
on de.dept_no = d.dept_no 
where d.dept_name = 'Development'
group by   d.dept_name, de.from_date,  de.to_date 
