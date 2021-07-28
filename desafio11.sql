select contactName as 'Nome', country as 'País', (select count(*) from w3schools.customers as clientes_2 where clientes_1.Country = clientes_2.Country and clientes_1.ContactName <> clientes_2.ContactName ) as 'Número de compatriotas' from w3schools.customers as clientes_1 having `Número de compatriotas` <> 0  order by `Nome`;