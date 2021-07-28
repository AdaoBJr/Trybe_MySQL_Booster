SELECT
c.ContactName 'Nome de contato',
    s.ShipperName 'Empresa que fez o envio',
    o.OrderDate 'Data do pedido'
FROM w3schools.orders o
JOIN w3schools.shippers s ON o.ShipperID = s.ShipperID
JOIN w3schools.customers c ON o.CustomerID = c.CustomerID
WHERE
s.ShipperName IN('Speedy Express', 'United Package')
ORDER BY c.ContactName, s.ShipperName, o.OrderDate;
