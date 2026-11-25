-- SQL Practice: SELECT and WHERE
-- Platform: HackerRank

SELECT DISTINCT CITY
FROM STATION
WHERE CITY NOT LIKE 'A%'
  AND CITY NOT LIKE 'E%'
  AND CITY NOT LIKE 'I%'
  AND CITY NOT LIKE 'O%'
  AND CITY NOT LIKE 'U%';

-- find the customer who high spending and placed order at least 3 times 

SELECT
    cus.customer_id,
    cus.customer_name,
    COUNT(o.order_id) AS total_orders,
    SUM(o.order_total) AS total_spending
FROM customers AS cus
LEFT JOIN orders AS o
    ON cus.customer_id = o.customer_id
GROUP BY
    cus.customer_id,
    cus.customer_name
HAVING COUNT(o.order_id) >= 3
ORDER BY total_spending DESC;
