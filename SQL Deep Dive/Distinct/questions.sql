/*
* DB: Employees
* Table: titles
* Question: What unique titles do we have?
*/

SELECT * FROM titles;
SELECT DISTINCT title
FROM titles;

/*
* DB: Employees
* Table: employees
* Question: How many unique birth dates are there?
*/

SELECT * FROM employees;
SELECT DISTINCT birth_date
FROM employees;

/*
* DB: World
* Table: country
* Question: Can I get a list of distinct life expectancy ages
* Make sure there are no nulls
*/

SELECT * FROM country;
SELECT DISTINCT lifeexpectancy
from country
WHERE lifeexpectancy is NOT NULL
order by lifeexpectancy
