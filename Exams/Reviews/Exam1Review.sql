--Robert Bryan
--September 14th, 2016

--rev_p1
SET verify off;
SELECT last_name, TO_CHAR(salary, '$99,999') AS salary,
TO_CHAR(ROUND(salary + (salary * .15)), '$99,999') AS "New Salary",
TO_CHAR(ROUND(salary + (salary * .15)) - salary, '$99,999') AS "Increase"
FROM employees
WHERE salary BETWEEN &lowvalue AND &highvalue
ORDER BY salary DESC;

--rev_p2
SELECT RPAD(s_last || ', ' || s_first, 22, '*') || '  ' ||
TRUNC(MONTHS_BETWEEN(SYSDATE, s_dob)/12) AS "Student Name and Age",
s_pin AS "Pin", SUBSTR(s_pin, -1) || SUBSTR(s_pin, -2, 1) ||
SUBSTR(s_pin, -3, 1) || SUBSTR(s_pin, -4, 1) AS "Coded Pin"
FROM student
ORDER BY s_last;

--rev_p3
SELECT s_id AS "Student Number", c_sec_id || ' ' || NVL(grade, '--')
FROM enrollment
WHERE grade IS NULL OR
grade NOT LIKE 'C%'
ORDER BY grade NULLS FIRST;

--rev_p4
SELECT last_name || ', ' || first_name AS "Employee",
hire_date AS "Date Hired", NEXT_DAY(ADD_MONTHS(hire_date, 6), 'WEDNESDAY')  AS "6 Month Review"
FROM employees
WHERE hire_date >= TO_DATE('01-JAN-00', 'DD-MON-RR')
ORDER BY hire_date;

--rev_p5
SELECT c_sec_id AS "SECTION ID", sec_num AS "NUMBER", 
c_sec_day AS days, TO_CHAR(c_sec_time, 'HH:MI a.m.') AS time
FROM course_section
WHERE c_sec_day LIKE 'M%'
ORDER BY c_sec_day, c_sec_time;
