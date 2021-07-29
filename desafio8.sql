SELECT ContactName AS "Nome de contato", ShipperName AS "Empresa que fez o envio", 
OrderDate AS "Data do pedido" FROM  w3schools.orders AS o
INNER JOIN  w3schools.customers AS c ON o.CustomerID = c.CustomerID
INNER JOIN w3schools.shippers AS s ON o.ShipperID = s.ShipperID
  WHERE o.ShipperID IN (1, 2)
  ORDER BY ContactName, ShipperName, OrderDate;
