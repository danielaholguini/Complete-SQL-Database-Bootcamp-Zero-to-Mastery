
/*
* DB: Store
* Table: orders
* Question: Get all orders from customers who live in Ohio (OH), New York (NY) or Oregon (OR) state
* ordered by orderid
*/

select * from orders o
inner join customers c
on o.customerid = c.customerid 
where c.state  in ('OH', 'NY', 'OR')
order by orderid

/*
* DB: Store
* Table: products
* Question: Show me the inventory for each product
*/
select i.prod_id, i.quan_in_stock, p.title  from inventory i 
join products p 
on i.prod_id = p.prod_id 

/*
* DB: Employees
* Table: employees
* Question: Show me for each employee which department they work in
*/
SELECT e.first_name, dp.dept_name
FROM employees AS e
INNER JOIN dept_emp AS de ON de.emp_no = e.emp_no
INNER JOIN departments AS dp ON dp.dept_no = de.dept_no



