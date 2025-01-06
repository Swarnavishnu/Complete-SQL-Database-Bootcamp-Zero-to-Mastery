
/*
*  Show me all the employees, hired after 1991, that have had more than 2 titles
*  Database: Employees
*/

SELECT e.emp_no,count(t.title)
FROM employees as e
inner join titles as t on e.emp_no=t.emp_no
where EXTRACT(year from e.hire_date) > 1991
GROUP by e.emp_no 
having count(t.title) > 2


/*
*  Show me all the employees that have had more than 15 salary changes that work in the department development
*  Database: Employees
*/
SELECT e.emp_no,count(s.salary)
FROM employees as e
inner join dept_emp as dp on e.emp_no = dp.emp_no
INNER JOIN salaries AS s ON e.emp_no = s.emp_no
where dp.dept_no = 'd005'
group by e.emp_no
having count(s.salary) > 15
order by e.emp_no ASC




/*
*  Show me all the employees that have worked for multiple departments
*  Database: Employees
*/
SELECT e.emp_no,count(dp.dept_no)
FROM employees as e
inner join dept_emp as dp on e.emp_no = dp.emp_no
group by e.emp_no
HAVING count(dp.dept_no)>1
order by e.emp_no ASC
