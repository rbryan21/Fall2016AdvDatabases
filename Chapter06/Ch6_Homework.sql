-- Robert Bryan
-- September 29th, 2016

--ch6p1
SELECT job_id AS "Job", TO_CHAR(MAX(salary), '$99,999') AS "Maximum", TO_CHAR(MIN(salary), '$99,999') AS "Minimum",
TO_CHAR(SUM(salary), '$999,999') AS "Total", COUNT(salary) AS "Number" 
FROM employees
GROUP BY job_id
ORDER BY 5, 1;

--ch6p2
SELECT department_id AS "Department", (MAX(salary) - MIN(salary)) AS "Difference"
FROM employees
GROUP BY department_id
HAVING (MAX(salary) - MIN(salary)) <> 0
ORDER BY 1;

--ch6p3
SELECT manager_id AS "Manager", MIN(salary) AS "Small sal"
FROM employees
WHERE manager_id IS NOT NULL
GROUP BY manager_id
HAVING MIN(salary) > 1000
ORDER BY 2 DESC;

--ch6p4
SELECT c_sec_day AS "Days", COUNT(c_sec_day) AS "Number of Classes"
FROM course_section
GROUP BY c_sec_day;

--ch6p5
SELECT c_sec_day AS "Days", TO_CHAR(c_sec_time, 'HH: MI AM') AS "Time", COUNT(c_sec_day) AS "Number of Classes"
FROM course_section
GROUP BY c_sec_day, c_sec_time
ORDER BY 1;

--ch6p6
SELECT
  (CASE
    WHEN c_sec_day = 'MTWRF' THEN 'Every day of the week'
    WHEN c_sec_day = 'MWF' THEN 'Mon - Wed - Fri'
    WHEN c_sec_day = 'TR' THEN 'Tues - Thurs'
    ELSE 'Invalid day'
  END)
    AS "Days",
    TO_CHAR(c_sec_time, 'fmHH:fmMI PM') AS "Time", COUNT(c_sec_day) AS "Number of classes"
FROM course_section
GROUP BY c_sec_day, c_sec_time
ORDER BY 1;

--ch6p7
SELECT breed_id AS "List of breeders", COUNT(animal_id) AS "Number of animals"
FROM animal
GROUP BY breed_id
ORDER BY 2 DESC;