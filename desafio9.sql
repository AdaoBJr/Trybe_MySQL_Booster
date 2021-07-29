SELECT
CONCAT(e.firstname, ' ', e.lastname) AS 'Nome completo',
COUNT(*) AS 'Total de pedidos'
FROM w3schools.orders AS o
INNER JOIN w3schools.employees AS e
ON e.employeeid = o.employeeid
GROUP BY o.employeeid
ORDER BY COUNT(*);
