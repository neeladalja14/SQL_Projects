SELECT count(*) FROM sales.transactions;

SELECT count(*) FROM sales.customers;

SELECT count(*) FROM sales.transactions where market_code="Mark001"; 
-- selects all the market cdes for chennai(mark001) and counts the total number of it. 


-- does inner join with the date table on transcation table. 
-- finds transcations of year 2020
SELECT 
    sales.transactions.*, sales.date.*
FROM
    sales.transactions
        INNER JOIN
    sales.date ON sales.transactions.order_date = sales.date.date
WHERE
    sales.date.year = 2020;
    
    
-- find the transaction revenue in the year 2020
SELECT 
    SUM(sales.transactions.sales_amount)
FROM
    sales.transactions
        INNER JOIN
    sales.date ON sales.transactions.order_date = sales.date.date
WHERE
    sales.date.year = 2020;
    
    
-- this querry finds th totl revenue done in the chennai market, code == mark001

SELECT 
    SUM(sales.transactions.sales_amount)
FROM
    sales.transactions
        INNER JOIN
    sales.date ON sales.transactions.order_date = sales.date.date
WHERE
    sales.date.year = 2020 and sales.transactions.market_code="mark001";
    
    
-- select distinct products sold in specific market with marke code
SELECT distinct product_code FROM sales.transactions WHERE market_code="Mark001";