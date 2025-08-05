-- A. Total inventory value
SELECT ROUND(SUM(discountedSellingPrice * availableQuantity), 2) AS total_inventory_value
FROM products
WHERE outOfStock = FALSE;

-- B. Inventory value by category
SELECT Category, SUM(discountedSellingPrice * availableQuantity) AS total_value
FROM products
WHERE outOfStock = FALSE
GROUP BY Category
ORDER BY total_value DESC;

-- C. Top 5 products by inventory cost
SELECT name, availableQuantity, discountedSellingPrice,
       (availableQuantity * discountedSellingPrice) AS inventory_cost
FROM products
WHERE outOfStock = FALSE
ORDER BY inventory_cost DESC
LIMIT 5;

