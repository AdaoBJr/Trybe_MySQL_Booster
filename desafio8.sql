SELECT contato.ContactName AS "Nome de contato" shippers.ShipperName AS "Empresa que fez o envio" order.OrderDate AS "Data do pedido" FROM w3schools.customers AS customers INNER JOIN w3schools.orders AS orders ON customers.CustomerID = orders.CustomerID INNER JOIN w3schools.shippers AS shipper ON orders.ShipperID = shipper.ShipperID WHERE shipper.ShipperName = "Speedy Express" OR shipper.ShipperName = "United Package" ORDER BY contato.ContactName, shippers.ShipperName, order.OrderDate;
