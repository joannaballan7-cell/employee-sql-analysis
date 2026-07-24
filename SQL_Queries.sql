SELECT *
FROM employee_demographics;

SELECT *
FROM employee_salary;

SELECT *
FROM employee_salary
WHERE salary > 50000;

SELECT *
FROM employee_demographics
WHERE gender = 'Female';

SELECT AVG(salary) AS average_salary
FROM employee_salary;

SELECT first_name,
       last_name,
       salary
FROM employee_salary
ORDER BY salary DESC;

SELECT gender,
       COUNT(*) AS employee_count
FROM employee_demographics
GROUP BY gender;
