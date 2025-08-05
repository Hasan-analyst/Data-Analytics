-- G. Product classification
SELECT name, quantity, weightInGms,
       CASE 
         WHEN quantity >= 100 THEN 'Bulk'
         WHEN weightInGms >= 1000 THEN 'Heavy'
         ELSE 'Regular'
       END AS product_type
FROM products;

-- H. In-stock but zero quantity (potential data issue)
SELECT name, availableQuantity
FROM products
WHERE outOfStock = FALSE AND availableQuantity = 0;

-- I. Summary per category
SELECT Category,
       COUNT(*) AS total_products,
       AVG(mrp) AS avg_mrp,
       AVG(discountedSellingPrice) AS avg_price,
       AVG(discountPercent) AS avg_discount
FROM products
GROUP BY Category;
