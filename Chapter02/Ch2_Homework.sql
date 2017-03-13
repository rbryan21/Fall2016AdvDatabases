-- Robert Bryan
-- August 28th, 2016

-- ch2p1
SELECT DISTINCT s_class AS "Classification"
FROM student;

-- ch2p2
SELECT employee_id AS "Emp#", last_name || ', ' || first_name AS "Employee", job_id AS "Job Title",
hire_date AS "Date Hired"
FROM employees;

-- ch2p3
SELECT f_first || ' ' || f_mi || '. ' || f_last || ':  ' || f_phone AS "Faculty Name: Phone"
FROM faculty;

-- ch2p4
SELECT last_name || q'<'s full salary is:>' AS "Employee", 
salary + NVL(commission_pct, 0) * 1000 AS "Full Salary" 
FROM employees; 

-- ch2p5
SELECT employee_id AS "Employee ID", start_date AS "Start Date", end_date AS "End_date",
end_date - start_date AS "Days of employment"
FROM job_history
ORDER BY 4;

-- This query returns the female animals with a null vol_id sorted by date arrived ascending. It could be useful
-- when a adopter wanted to adopt a female animal who had been in the shelter the longest time and did not have an associated
-- volunteer. It could easily be switched to males, or animals with a volunteer. 
-- ch2p6
SELECT animal_name || '''s (animal_id = ' || animal_id || ') vol_id is currently null' AS "Female Animals",
arrival_date AS "Date Arrived"
FROM animal
WHERE vol_id IS NULL AND
animal_sex = 'F'
ORDER BY arrival_date;