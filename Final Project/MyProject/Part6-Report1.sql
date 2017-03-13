SET PAGESIZE 30
SET LINESIZE 70
SET FEEDBACK OFF
TTITLE 'Part 5 Semester Project|Each customer''s purchased builds'
BTITLE 'By - Robert Bryan'
BREAK ON customer_id SKIP 2
COL customer_id HEADING 'Customer ID' FORMAT 999
COL build_id HEADING 'Build ID' FORMAT 999
COL purchase_date HEADING 'Purchase Date' FORMAT A15
-- SQL Statement
-- Selects each customer that has purchased a build, what build id they have purchased, and the purchase date. 
SELECT customer_id, build_id, purchase_date FROM builds_purchased
ORDER BY 1;