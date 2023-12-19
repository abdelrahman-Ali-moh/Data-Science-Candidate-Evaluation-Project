# retriev data from tables
SELECT * FROM od.products;
SELECT * FROM od.categories;
# filter table for customer state="sp"
SELECT * FROM od.customers where customer_state="SP";
# count state for customers table
SELECT customer_state, COUNT(*) AS state_count
FROM od.customers GROUP BY customer_state;
# count city for customers table
SELECT customer_city, COUNT(*) AS city_count
FROM od.customers GROUP BY customer_city ORDER BY city_count DESC LIMIT 5;
# min,max,avg,total_count for order_item table
SELECT min(price) AS min_price,
    max(price) AS max_price,
    AVG(price) AS avg_price,
    count(price) AS total_count FROM od.order_items;
    # avg freight value
SELECT
    AVG(freight_value) AS average_freight_value,
    COUNT(freight_value) AS freight_count FROM od.order_items;
    
SELECT price, freight_value
FROM od.order_items;
# show payment installment,payment sequential
SELECT payment_sequential, payment_installments, payment_value
FROM od.order_payments;
# payment type and value
SELECT payment_type, payment_value
FROM od.order_payments;

SELECT order_status,COUNT(*) AS count FROM od.orders GROUP BY order_status;

SELECT
    DATE(order_purchase_timestamp) AS purchase_date,
    COUNT(*) AS order_count
FROM
    od.orders
GROUP BY
    purchase_date
ORDER BY
    purchase_date;

SELECT DISTINCT product_category_name,count(*) as count FROM od.products group by product_category_name;
SELECT review_score, COUNT(*) AS score_count
FROM od.reviews
GROUP BY review_score ;

SELECT 
    DATE_FORMAT(review_creation_date, '%Y-%m') AS yea_month,
    review_score,
    COUNT(*) AS score_count
FROM 
    od.reviews
GROUP BY 
    yea_month, review_score
ORDER BY 
    yea_month, review_score;
    
SELECT seller_state, COUNT(*) AS state_count
FROM od.sellers
GROUP BY seller_state
ORDER BY state_count DESC;

SELECT seller_city, COUNT(*) AS city_count
FROM od.sellers
GROUP BY seller_city
ORDER BY city_count DESC
LIMIT 10;
