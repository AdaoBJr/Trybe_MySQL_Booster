/*FEITO COM A AJUDA DO ALUNO JOÃO OLIVEIRA*/
select clientes.contactName as 'Nome de contato', fornecedores.shipperName as 'Empresa que fez o envio', pedidos.OrderDate as 'Data do pedido' from w3schools.customers as clientes inner join w3schools.orders as pedidos on pedidos.CustomerID = clientes.CustomerID inner join w3schools.shippers as fornecedores on fornecedores.ShipperID = pedidos.shipperID where pedidos.ShipperID in ('1', '2') order by `Nome de contato`, `Empresa que fez o envio`, `Data do pedido`;