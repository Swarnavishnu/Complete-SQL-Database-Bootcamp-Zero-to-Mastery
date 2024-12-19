/*
* DB: Employees
* Table: employees
* Question: Get me all the employees above 60, use the appropriate date functions
*/
select *,age(birth_date)
from employees
where( EXTRACT(YEAR from age(birth_date))) > 60;
SELECT * FROM employees;

/*
* DB: Employees
* Table: employees
* Question: How many employees where hired in February?
*/
select count(emp_no)
from employees
where (EXTRACT(month from (hire_date))) = 2
SELECT * FROM employees;

/*
* DB: Employees
* Table: employees
* Question: How many employees were born in november?
*/
select *
from employees
where( EXTRACT(MONTH from birth_date)) = 11;
SELECT * FROM employees;

/*
* DB: Employees
* Table: employees
* Question: Who is the oldest employee? (Use the analytical function MAX)
*/

SELECT * FROM employees;
SELECT MAX(AGE(birth_date)) 
FROM employees;

/*
* DB: Store
* Table: orders
* Question: How many orders were made in January 2004?
*/

SELECT * FROM orders;
SELECT *
from orders
where date_trunc('month',orderdate)=date '2004-01-01'
order by orderid DESC
