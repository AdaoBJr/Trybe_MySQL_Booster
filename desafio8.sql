SELECT c.ContactName AS `Nome de contato`,
s.ShipperName AS `Empresa que fez o envio`,
o.OrderDate AS `Data do pedido`
FROM w3schools.orders AS o
INNER JOIN w3schools.shippers AS s ON s.ShipperID = o.ShipperID
INNER JOIN w3schools.customers AS c ON c.CustomerID = o.CustomerID
WHERE s.ShipperName = "Speedy Express" or s.ShipperName = "United Package"
ORDER BY `Nome de contato`, `Empresa que fez o envio`, `Data do pedido`;
