SELECT p.ProductName AS `Produto`,
MIN(od.Quantity) AS `Mínima`,
MAX(od.Quantity) AS `Máxima`,
ROUND(AVG(od.Quantity), 2) AS `Média`
FROM products AS p
JOIN order_details AS od
ON p.ProductID = od.ProductID
GROUP BY p.ProductName
ORDER BY `Média` ASC, `Produto`;
