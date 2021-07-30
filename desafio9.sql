SELECT CONCAT(e.firstname, ' ', e.lastname) as 'Nome completo', COUNT(o.customerID) as 'Total de pedidos'  FROM w3schools.orders as o INNER JOIN w3schools.employees as e ON o.employeeID = e.employeeID GROUP BY CONCAT(e.firstname, ' ', e.lastname) ORDER BY COUNT(o.customerID);