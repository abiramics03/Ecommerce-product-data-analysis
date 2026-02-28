USE webscraper_produits;
SELECT COUNT(*) FROM final_products;
SELECT COUNT(*) AS total_products
FROM final_products;
##Category-wise Product Count
SELECT category, COUNT(*) AS product_count
FROM final_products
GROUP BY category;
## Average Price by Category 
SELECT category, ROUND(AVG(price),2) AS avg_price
FROM final_products
GROUP BY category;
##Most Expensive Product
SELECT product_name, price
FROM final_products
ORDER BY price DESC
LIMIT 1;

##Top 5 Most Reviewed Products
SELECT product_name, reviews
FROM final_products
ORDER BY reviews DESC
LIMIT 5;

##Price Range Distribution
SELECT price_range, COUNT(*) AS total
FROM final_products
GROUP BY price_range;

##Brands with More Than 5 Products
SELECT brand, COUNT(*) AS total_products
FROM final_products
GROUP BY brand
HAVING COUNT(*) > 5;

##Category-wise Total Reviews
SELECT category, SUM(reviews) AS total_reviews
FROM final_products
GROUP BY category;

SELECT color, COUNT(*) AS total_products
FROM final_products
GROUP BY color
ORDER BY total_products DESC;

SELECT is_expensive, COUNT(*) AS total_products
FROM final_products
GROUP BY is_expensive;

SELECT category, COUNT(*) AS expensive_products
FROM final_products
WHERE is_expensive = 'Yes'
GROUP BY category;

SELECT is_expensive, ROUND(AVG(price),2) AS avg_price
FROM final_products
GROUP BY is_expensive;
