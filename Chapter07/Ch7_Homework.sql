--Robert Bryan
--October 6th, 2016

--ch7p1
SELECT DISTINCT e.job_id, l.location_id, l.state_province
FROM employees e JOIN departments d
ON (e.department_id = d.department_id) 
  JOIN locations l 
  ON (d.location_id = l.location_id)
ORDER BY 1;

--ch7p2
SELECT e.last_name AS "Employee", e.job_id AS "Job Title", d.department_name AS "Department"
FROM employees e JOIN departments d
ON (e.department_id = d.department_id)
WHERE d.department_name LIKE 'IT'
ORDER BY 1;

--ch7p3
SELECT DISTINCT g.grade_level AS "Grade", d.department_name AS "Department", TO_CHAR(e.salary, '$99,999') AS "Salary"
FROM departments d JOIN employees e ON (d.department_id = e.department_id)
JOIN job_grades g ON e.salary
   BETWEEN g.lowest_sal AND g.highest_sal
WHERE department_name LIKE 'S%'
ORDER BY 1, 2, 3 DESC;

--ch7p4
SELECT first_name || ' ' || last_name AS "Upper Management", 
(CASE
  WHEN job_id LIKE '%_VP' THEN 'VICE PRESIDENT'
  WHEN job_id LIKE '%_PRES' THEN 'PRESIDENT'
  ELSE 'Invalid job_id'
END) AS "Job Title"
FROM employees
WHERE department_id = 90
ORDER BY 1;

--ch7p5
SELECT l.city AS "City", c.country_name AS "Country"
FROM locations l RIGHT OUTER JOIN countries c
ON (l.country_id = c.country_id);

--ch7p6
SELECT f.f_last as faculty , cs.sec_num AS "Section", cs.loc_id AS "LOC ID", l.bldg_code AS building
  FROM faculty f JOIN course_section cs ON (f.f_id = cs.f_id) JOIN location l ON (cs.loc_id = l.loc_id)
  WHERE bldg_code LIKE 'BUS'
  ORDER BY 1, 2;
  
--ch7p7
SELECT worker.last_name AS "Employee", TO_CHAR(worker.hire_date, 'MM/DD/RR') AS "Emp hired", manager.last_name AS "Manager",
TO_CHAR(manager.hire_date, 'MM/DD/RR') AS "Manager Hired"
FROM employees worker JOIN employees manager
ON (worker.manager_id = manager.employee_id)
WHERE worker.hire_date < manager.hire_date AND
(worker.hire_date LIKE '%-%-00' AND manager.hire_date LIKE '%-%-00');

--ch7p8
SELECT * FROM animal NATURAL JOIN volunteer
WHERE animal_sex LIKE 'F';