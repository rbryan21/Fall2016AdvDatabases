-- Robert Bryan
-- August 6th, 2016

--ch4p1
SELECT SYSDATE AS "Date" 
FROM dual;

--ch4p2
SELECT employee_id, last_name, salary, NVL(((salary * .155) + salary), 0) AS "New Salary"
FROM employees;

--ch4p3
SELECT employee_id, last_name, salary, NVL(((salary * .155) + salary), 0) AS "New Salary",
NVL(((salary * .155) + salary), 0) - salary AS "Increase"
FROM employees;

--ch4p4
SELECT INITCAP(last_name) AS "Name", LENGTH(last_name) AS "Length"
FROM employees
WHERE last_name LIKE 'J%' OR
last_name LIKE 'A%' OR
last_name LIKE 'M%'
ORDER BY 1;

--ch4p5
SELECT INITCAP(last_name) AS "Name", LENGTH(last_name) AS "Length"
FROM employees
WHERE last_name LIKE UPPER('&input_letter%') 
ORDER BY 1;

--ch4p6
SELECT last_name, ROUND(MONTHS_BETWEEN(SYSDATE, hire_date), 0) AS months_worked
FROM employees
ORDER BY 2;

--ch4p7
SELECT last_name , LPAD(salary, 15, '$') AS salary
FROM employees;

--ch4p8
SELECT SUBSTR(last_name, 1, 8) || ' ' || LPAD('*', TRUNC(salary/1000), '*') AS employees_and_their_salaries
FROM employees
ORDER BY LENGTH(LPAD('*', TRUNC(salary/1000), '*')) DESC;

SELECT salary from employees order by 1 DESC;

--ch4p9
SELECT last_name, TRUNC((MONTHS_BETWEEN(SYSDATE, hire_date)/12*52)) AS tenure
FROM employees
WHERE department_id = 90
ORDER BY 2 DESC;

--ch4p10
SELECT SUBSTR(animal_name, 1, LENGTH(animal_name)-1) AS "Animal Name minus last letter", 
LPAD(RPAD(animal_age, 4, '-'), 7, '-') AS "Animal Age"
FROM animal
WHERE INSTR(LOWER(animal_name), 'r') <> 0 
ORDER BY LENGTH(animal_name) DESC;





