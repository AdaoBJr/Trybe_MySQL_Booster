select c.ContactName as 'Nome de contato', s.ShipperName as 'Empresa que fez o envio', o.OrderDate as 'Data do pedido' from orders o inner join shippers s on o.ShipperID = s.ShipperID inner join customers c on o.CustomerID = c.CustomerID where o.ShipperID in (1, 2) order by c.ContactName, s.ShipperName, o.OrderDate;