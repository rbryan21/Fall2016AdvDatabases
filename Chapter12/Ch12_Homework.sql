--Robert Bryan
--November 26th, 2016

--ch12p1
CREATE VIEW employees_vu 
 AS SELECT employee_id, last_name AS employee, department_id
    FROM employees;
   
--ch12p2    
SELECT * FROM employees_vu;

--ch12p3
SELECT employee, department_id FROM employees_vu;

--ch12p4
CREATE VIEW dept50
 AS SELECT employee_id AS empno, last_name AS employee, department_id AS deptno 
    FROM employees
    WHERE department_id = 50
WITH READ ONLY CONSTRAINT dept50_ro;

--ch12p5
DESC dept50;
SELECT * FROM dept50;

--ch12p6
UPDATE dept50
SET deptno = 80
WHERE empno = 143;

--ch12p7
CREATE SEQUENCE dept11_seq
  INCREMENT BY 10
  START WITH 300
  MAXVALUE 1000;
  
--ch12p8
INSERT INTO dept11
VALUES (dept11_seq.nextval, 'Education');

INSERT INTO dept11
VALUES (dept11_seq.nextval, 'Administration');

SELECT * FROM dept11;

--ch12p9
CREATE INDEX dept11_d_name_idx
            ON dept11(d_name);
            
--ch12p10
CREATE SYNONYM emp12
FOR employees;