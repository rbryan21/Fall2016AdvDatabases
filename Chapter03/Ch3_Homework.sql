-- Robert Bryan
-- September 6th, 2016

--ch3p1
SELECT last_name AS "Employee", salary AS "Salary"
FROM employees
WHERE salary NOT BETWEEN 2000 AND 9500
ORDER BY salary DESC;

--ch3p2
SELECT s_last AS "Student", s_dob AS "Date of Birth"
FROM student
WHERE s_dob BETWEEN '01-MAY-85' AND '30-SEP-85'
ORDER BY s_last;

--ch3p3
SELECT bldg_code, room, capacity
FROM location
WHERE capacity > 30 AND room LIKE '1%'
ORDER BY 3;

--ch3p4
SELECT last_name AS "Name", job_id AS "Job Title"
FROM employees
WHERE (job_id LIKE '%_MAN' OR
job_id LIKE '%_MGR') AND
commission_pct IS NULL
ORDER BY 1;

--ch3p5
SELECT call_id AS "Call ID", course_name AS "Course Name"
FROM course
WHERE course_name like '%C++%'
ORDER BY 1;

--ch3p6
SELECT s_first || ' ' || s_mi || '. ' || s_last AS "Full Name",
s_dob AS "Date of Birth", ROUND(((SYSDATE - s_dob)/365), 2) AS "Age"
FROM student
WHERE s_dob LIKE '%-%-86'
ORDER BY s_dob;

--ch3p7
SELECT last_name || ', ' || job_id AS "Employees", salary
FROM employees
WHERE salary BETWEEN &low_salary AND &high_salary
ORDER BY 1;

--ch3p8
SELECT department_id, &&second_column
FROM departments
WHERE department_id > &input_department_id
ORDER BY &second_column;
UNDEFINE second_column;

--This query returns the animals assigned to a certain a volunteer id that the user inputs
--ch4p9
SELECT &&entry_vol_id AS "Volunteer ID", animal_id AS "Animal ID", animal_name AS "Animal Name", arrival_date AS "Date of Arrival"
FROM animal
WHERE vol_id = &entry_vol_id
ORDER BY arrival_date;
UNDEFINE entry_vol_id;

