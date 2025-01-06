/*
*  How many people were hired on any given hire date?
*  Database: Employees
*  Table: Employees
*/
SELECT hire_date,count( emp_no)
from employees
group by hire_date
  

/*
*   Show me all the employees, hired after 1991 and count the amount of positions they've had
*  Database: Employees
*/

SELECT e.emp_no,count(t.title)
FROM employees as e
inner join titles as t on e.emp_no=t.emp_no
where EXTRACT(year from e.hire_date) > 1991
GROUP by e.emp_no
order by e.emp_no asc

/*
*  Show me all the employees that work in the department development and the from and to date.
*  Database: Employees
*/

SELECT e.emp_no
FROM employees as e
