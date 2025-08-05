-- D. Top 5 highest discount values
SELECT name, mrp, discountedSellingPrice, (mrp - discountedSellingPrice) AS discount_value
FROM products
ORDER BY discount_value DESC
LIMIT 5;

-- E. Price per gram
SELECT name, ROUND(discountedSellingPrice * 1.0 / weightInGms, 2) AS price_per_gram
FROM products
WHERE weightInGms > 0
ORDER BY price_per_gram DESC;

-- F. Products with above-average discount in their category
WITH category_avg AS (
  SELECT Category, AVG(discountPercent) AS avg_discount
  FROM products
  GROUP BY Category
)
SELECT p.name, p.Category, p.discountPercent, c.avg_discount
FROM products p
JOIN category_avg c ON p.Category = c.Category
WHERE p.discountPercent > c.avg_discount;
