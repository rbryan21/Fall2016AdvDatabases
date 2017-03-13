--Robert Bryan
--November 6th, 2016

--ch10p1
INSERT INTO my_employee VALUES 
 ( 1
 ,  'Patel'
 , 'Ralph'
 , 'rpatel1'
 , 895
 );
 
--ch10p2 
INSERT INTO my_employee(ID, LAST_NAME, FIRST_NAME, USERID, SALARY) VALUES
  ( 2 
  , 'Dancs'
  , 'Betty'
  , 'bdancs'
  , 860
  );

--ch10p4  
@c:\oracle\ch10\ch10p3.sql 

--ch10p5
UPDATE my_employee
SET last_name = 'Drexler'
WHERE id = 3;

--ch10p6
UPDATE my_employee
SET salary = 1000
WHERE id IN (SELECT id FROM my_employee WHERE salary < 900);

--ch10p7
DELETE FROM my_employee
WHERE first_name = 'Betty' AND last_name = 'Dancs';

--ch10p8
COMMIT;

--ch10p9
@c:\oracle\ch10\ch10p3.sql

--ch10p10
SAVEPOINT Save1;

--ch10p11
DELETE my_employee;

--ch10p12
ROLLBACK TO Save1;

--ch10p13
@c:\oracle\ch10\ch10p13.sql