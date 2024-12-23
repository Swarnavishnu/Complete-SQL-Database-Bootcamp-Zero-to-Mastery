/*
* DB: Employees
* Table: employees
* Question: Sort employees by first name ascending and last name descending
*/
SELECT DISTINCT *
FROM employees
order by first_name ASC, last_name DESC

/*
* DB: Employees
* Table: employees
* Question: Sort employees by age
*/
SELECT*, EXTRACT(YEAR FROM AGE(birth_date)) AS age_in_years
FROM employees
order by age_in_years DESC  

/*
* DB: Employees
* Table: employees
* Question: Sort employees who's name starts with a "k" by hire_date
*/
FROM employees
where first_name LIKE'K%'
order by hire_date DESC
