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
-- Employee salary analysis with demographics

SELECT 
    d.first_name,
    d.last_name,
    d.gender,
    s.salary,
    s.occupation
FROM employee_demographics d
JOIN employee_salary s
    ON d.employee_id = s.employee_id
ORDER BY s.salary DESC;
