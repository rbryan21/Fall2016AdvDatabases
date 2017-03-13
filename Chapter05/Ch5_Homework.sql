-- Robert Bryan
-- September 21st, 2016

--ch5p1
SELECT last_name || ' earns ' || TO_CHAR(salary, 'fm$99,999.00') || ' monthly but wants '
|| TO_CHAR(salary * 3, 'fm$99,999.00') AS "Dream Salaries"
FROM employees;

--ch5p2
SELECT last_name, hire_date, TO_CHAR(NEXT_DAY(ADD_MONTHS(hire_date, 6), 'Monday'),
'fmDay",the" DdTHSP "of "Month","fmYYYY') AS review
FROM employees;

--ch5p3
SELECT last_name, hire_date, TO_CHAR(hire_date, 'DAY') AS day
from employees
ORDER BY TO_CHAR(hire_date-1, 'D');

--ch5p4
SELECT last_name, 
  CASE
    TO_CHAR(NVL2(commission_pct, 0, commission_pct))
  WHEN '0' THEN TO_CHAR(commission_pct) 
    ELSE 'No commission'
END AS "COMM"
FROM employees;

--ch5p5
SELECT job_id, DECODE(job_id, 'AD_PRES', 'A',
                             'ST_MAN', 'B',
                             'IT_PROG', 'C',
                             'SA_REP', 'D',
                             'ST_CLERK', 'E', 
                             '0') AS grade
FROM employees;              

--ch5p6
SELECT job_id, 
  CASE
    job_id
      WHEN 'AD_PRES' THEN 'A'
      WHEN 'ST_MAN' THEN 'B'
      WHEN 'IT_PROG' THEN 'C'
      WHEN 'SA_REP' THEN 'D'
      WHEN 'ST_CLERK' THEN 'E'
      ELSE '0'
  END AS grade
  FROM employees;
  
--ch5p7
SELECT bldg_code AS "Building", room AS "Room",
  CASE
      WHEN capacity < 30 THEN 'Small'
      WHEN capacity > 30 AND capacity < 99 THEN 'Medium'
      ELSE 'Large'
  END AS "Capacity"
FROM location;

--ch5p8
SELECT call_id, course_name,
  CASE
      WHEN call_id LIKE '%1__' THEN 'Freshman'
      WHEN call_id LIKE '%2__' THEN 'Sophomore'
      WHEN call_id LIKE '%3__' THEN 'Junior'
      WHEN call_id LIKE '%4__' THEN 'Senior'
      ELSE 'Invalid Level'
  END AS "Level"
FROM course
ORDER by 3, 1;

--ch5p9
SELECT animal_id, animal_name, 
CASE
  WHEN animal_sex = 'M' THEN 'Male'
  WHEN animal_sex = 'F' THEN 'Female'
  ELSE 'Invalid gender'
END AS "Gender"
FROM animal
ORDER BY animal_sex;
  