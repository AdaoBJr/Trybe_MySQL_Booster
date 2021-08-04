-- 13 - Exibe todos produtos que já tiveram um pedido associado
--  requerindo uma quantidade desse produto maior que 80
-- Exiba todos os produtos que já tiveram um pedido associado
--  requerindo uma quantidade desse produto maior que 80.
-- Use o banco w3schools como referência
-- Monte uma query que exiba 02 colunas:
-- A primeira deve possuir o alias "Produto" e exibir o nome do produto.
-- A segunda deve possuir o alias "Preço" e exibir o preço desse produto.
-- Os resultados devem estar ordenados pelo nome do produto em ordem alfabética.

SELECT 
    p.ProductName AS 'Produto', p.Price AS 'Preço'
FROM
    products AS p
        INNER JOIN
    order_details AS od ON p.ProductID = od.ProductID
WHERE
    od.Quantity > 80
ORDER BY p.ProductName ASC;
