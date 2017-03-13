--Robert Bryan
--October 15th, 2016

--ch8p1
SELECT DISTINCT s_first || ' ' || s_last AS "Enrolled Student"
FROM student WHERE s_id IN (SELECT s_id 
                            FROM enrollment);
                            
--ch8p2
SELECT employee_id, last_name, salary
FROM employees e JOIN departments d
  ON (e.department_id = d.department_id)
JOIN locations l 
  ON (d.location_id = l.location_id)
WHERE salary > (SELECT AVG(salary) 
                              FROM employees)
AND (l.city LIKE '%San Francisco')
ORDER BY 3 DESC;

--ch8p3
SELECT last_name, department_id, salary
FROM employees 
  WHERE (department_id, salary) IN (SELECT department_id, AVG(salary)
                                                 FROM employees
                                                 GROUP BY department_id);
                                                 
--ch8p4
SELECT last_name, job_id, salary AS "TOTAL SAL"
FROM employees WHERE salary > ANY (SELECT salary
                                    FROM employees
                                    WHERE job_id LIKE '%MAN%' 
                                    OR job_id LIKE '%MGR') 
AND
job_id LIKE 'SA_REP'
ORDER BY "TOTAL SAL";

--ch8p5
SELECT last_name, hire_date
FROM employees WHERE department_id = (SELECT department_id
                                      FROM employees
                                      WHERE last_name LIKE '&&enter_name')
AND
last_name NOT LIKE '&enter_name';
UNDEFINE enter_name;

--ch8p6
SELECT department_id, last_name, job_id        
FROM employees
WHERE department_id = (SELECT department_id
                        FROM departments 
                        WHERE department_name LIKE 'Executive');
                        
--ch8p7
SELECT animal_id, animal_name
FROM animal a JOIN volunteer v
ON (a.vol_id = v.vol_id)
WHERE (a.animal_id, a.vol_id) IN (SELECT animal_id, vol_id
                              FROM volunteer
                              WHERE vol_city LIKE 'Memphis');