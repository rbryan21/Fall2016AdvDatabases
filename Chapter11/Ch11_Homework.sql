--Semester Project - Advanced Databases - Fall 2016
--By: Robert Bryan


-----------------------------------------
------------- INITIAL DROPS -------------
-----------------------------------------  

DROP TABLE customer CASCADE CONSTRAINTS;
DROP TABLE ram CASCADE CONSTRAINTS;

----------------------------------------
------------- CREATE TABLES -------------
-----------------------------------------  

CREATE TABLE CUSTOMER 
      ( customer_id NUMBER,
        first_name VARCHAR2(40),
        last_name VARCHAR2(40),
        street_address VARCHAR2(60),
        state CHAR(2) DEFAULT 'GA',
        phone_number VARCHAR2(20),
        CONSTRAINT customer_customer_id_pk PRIMARY KEY(customer_id)
      );
 
CREATE TABLE ram
    ( ram_id NUMBER
    , ram_storage_capacity VARCHAR2(10)
    , ram_memory_type VARCHAR2(20)
    , ram_memory_technology VARCHAR2(20)
    , ram_color VARCHAR2(20)
    , ram_number_of_items NUMBER
    , ram_brand VARCHAR2(20)
    , ram_series VARCHAR2(20)
    , cost_price NUMBER(6, 2)
    , CONSTRAINT ram_ram_id_pk PRIMARY KEY (ram_id)
    );
  
----------------------------------------
--------- CUSTOMER TABLE INSERTS --------
-----------------------------------------    

INSERT INTO customer(FIRST_NAME, LAST_NAME, STREET_ADDRESS, STATE, 
PHONE_NUMBER) VALUES 
('Bob', 'Green', '4312 Heartsfield Lane', 'GA', '432-432-5423');
        
INSERT INTO customer(FIRST_NAME, LAST_NAME, STREET_ADDRESS, STATE, 
PHONE_NUMBER) VALUES 
('Kate', 'Smith', '2313 Tornado Drive', 'CA', '321-412-1231');

INSERT INTO customer(FIRST_NAME, LAST_NAME, STREET_ADDRESS, STATE, 
PHONE_NUMBER) VALUES 
('Zac', 'Toe', '3212 Safe Round', 'CA', '332-333-5423');

INSERT INTO customer(FIRST_NAME, LAST_NAME, STREET_ADDRESS, STATE, 
PHONE_NUMBER) VALUES 
('Faith', 'Smoltz', '2314 Life Savers Corner', 'GA', '102-442-1213');

INSERT INTO customer(FIRST_NAME, LAST_NAME, STREET_ADDRESS, STATE, 
PHONE_NUMBER) VALUES 
('Sarah', 'Twinkle', '1246 Green Smith Lane', 'GA', '770-432-4322');
        
INSERT INTO customer(FIRST_NAME, LAST_NAME, STREET_ADDRESS, STATE, 
PHONE_NUMBER) VALUES 
('Freddie', 'Mars', '8751 Dunkin'' Donuts Corner', 'GA', 
'232-123-4321');

-----------------------------------------
--------- RAM TABLE INSERTS -------------
-----------------------------------------
  
INSERT INTO ram(RAM_STORAGE_CAPACITY, RAM_MEMORY_TYPE, 
RAM_MEMORY_TECHNOLOGY, RAM_COLOR, RAM_NUMBER_OF_ITEMS, RAM_BRAND, 
RAM_SERIES, COST_PRICE) VALUES
( '8 GB', 'DDR3 SDRAM', 'DDR3 1600', 'Black', 1, 'Corsair', 
'Vengeance', 45);   
        
INSERT INTO ram(RAM_STORAGE_CAPACITY, RAM_MEMORY_TYPE, 
RAM_MEMORY_TECHNOLOGY, RAM_COLOR, RAM_NUMBER_OF_ITEMS, RAM_BRAND, 
RAM_SERIES, COST_PRICE) VALUES
('16 GB', 'DDR3 SDRAM', 'DDR3 1800', 'Black', 2, 'Kingston', 
'HyperX FURY', 80);         

INSERT INTO ram(RAM_STORAGE_CAPACITY, RAM_MEMORY_TYPE, 
RAM_MEMORY_TECHNOLOGY, RAM_COLOR, RAM_NUMBER_OF_ITEMS, RAM_BRAND,
RAM_SERIES, COST_PRICE) VALUES
('8 GB', 'DDR3 SDRAM', 'DDR3 1800', 'Red', 2, 'Kingston', 
'HyperX FURY', 55);  
    
 INSERT INTO ram(RAM_STORAGE_CAPACITY, RAM_MEMORY_TYPE, 
 RAM_MEMORY_TECHNOLOGY, RAM_COLOR, RAM_NUMBER_OF_ITEMS, RAM_BRAND,
RAM_SERIES, COST_PRICE) VALUES
('32 GB', 'DDR4 SDRAM', 'DDR4 2400', 'Red', 2, 'Ballistix',
'Sport LT', 170);           
        
INSERT INTO ram(RAM_STORAGE_CAPACITY, RAM_MEMORY_TYPE, 
RAM_MEMORY_TECHNOLOGY, RAM_COLOR, RAM_NUMBER_OF_ITEMS, 
 RAM_BRAND, RAM_SERIES, COST_PRICE) VALUES
   ('64 GB', 'DDR4 SDRAM', 'DDR4 2400', 'White', 4, 'Ballistix', 
   'Sport LT', 300);  
      
COMMIT;       
       