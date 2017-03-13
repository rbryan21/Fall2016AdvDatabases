--Robert Bryan
--November 13th, 2016

--ch9p1
SELECT department_id FROM departments
MINUS
SELECT department_id FROM employees WHERE job_id LIKE 'ST_CLERK';

--ch9p2
SELECT country_id, country_name FROM countries
MINUS
SELECT UNIQUE l.country_id, c.country_name from locations l
JOIN countries c ON (l.country_id = c.country_id);

--ch9p3
SELECT UNIQUE job_id, department_id FROM employees WHERE department_id = 10
UNION ALL
SELECT UNIQUE job_id, department_id FROM employees WHERE department_id = 50
UNION ALL
SELECT UNIQUE job_id, department_id FROM employees WHERE department_id = 20;

--ch9p4
SELECT employee_id, job_id FROM job_history
INTERSECT
SELECT employee_id, job_id FROM employees;


--ch9p5
SELECT last_name, department_id, TO_CHAR(NULL) FROM employees
UNION
SELECT TO_CHAR(NULL), department_id, department_name FROM departments;

--ch9p6
SELECT animal_name AS "Names that start with ''R''", 'Animal' AS "Type" FROM animal WHERE animal_name LIKE 'R%'
UNION
SELECT vol_first, 'Volunteer' FROM volunteer WHERE vol_first LIKE 'R%';
