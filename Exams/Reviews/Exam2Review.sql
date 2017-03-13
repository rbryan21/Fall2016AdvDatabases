--Robert Bryan
--October 19th, 2016

--e2rp1
SELECT bldg_code, room, term_desc, call_id, sec_num, c_sec_day, TO_CHAR(c_sec_time, 'HH:MI AM') AS time
from location l JOIN course_section cs ON (l.loc_id = cs.loc_id)
  JOIN term t ON (cs.term_id = t.term_id) 
  JOIN course c ON (cs.course_id = c.course_id)
ORDER BY 1, 2;

--e2rp2
SELECT s_first, s_last, TO_CHAR(s_dob, 'MM/DD/YYYY') AS birthday
FROM student
WHERE s_class = (SELECT s_class
                 FROM student
                 WHERE s_first LIKE 'Sarah'
                  AND
                 s_last LIKE 'Miller')
AND
  s_first NOT LIKE 'Sarah' 
AND
  s_last NOT LIKE 'Miller';
  
--e2rp3
SELECT s_last || ', ' || s_first AS "Student", c_sec_id AS "Section", NVL2(grade, '**', '--') AS "Grade report"
FROM enrollment e JOIN student s ON (e.s_id = s.s_id)
ORDER BY s_last, s_first;

--e2rp4
SELECT DISTINCT s.s_id, s_last || ', ' || s_first AS "Student Name"
FROM student s JOIN enrollment e ON (s.s_id = e.s_id)
WHERE e.c_sec_id IN (SELECT c_sec_id FROM enrollment WHERE s_id = 2)
AND s.s_id <> 2;

--e2rp5
SELECT COUNT(employee_id) AS "High Earners"
FROM employees
WHERE salary > (SELECT AVG(salary)
                FROM employees);
                

--e2rp6 Additional Chapter 5 - Problem (1)
SELECT animal_name AS name, animal_age || ' years' AS age, animal_weight || ' lbs' AS weight,
(CASE
  WHEN animal_weight <= 15 THEN 'CITY'
  WHEN animal_weight > 15 AND animal_weight <= 40 THEN 'SUBURB'
  ELSE 'RURAL'
END) AS "Ideal Residence"
FROM animal
ORDER BY animal_weight;

--e2rp7 Addtion Chapter 6 - Problem (2)
SELECT animal_name AS "Animal Name", breed_name AS "Breed", vol_last AS "Volunteer Name", vol_phone AS "Phone"
FROM volunteer v JOIN animal a ON (v.vol_id = a.vol_id)
  JOIN breed b ON (a.breed_id = b.breed_id)
ORDER BY 1;