-- O Diretor precisa de um resumo executivo imediato das vendas por produto.

SELECT
produto_id,
SUM(quantidade) AS total_unidades,
COUNT(id) AS numero_encomendas
FROM Vendas
GROUP BY produto_id
HAVING SUM(quantidade) > 5
ORDER BY total_unidades DESC;

-- Imagine que tem 1.000 vendas na gaveta. Quer saber o total de vendas por cada produto.

SELECT produto_id, SUM(quantidade) AS total_vendido
FROM Vendas
GROUP BY produto_id;

-- Se o Diretor quiser saber só os produtos que venderam mais de 10 unidades?

SELECT produto_id, SUM(quantidade) AS total_vendido
FROM Vendas
GROUP BY produto_id
HAVING SUM(quantidade) > 10;

-- Alterar a consulta utilizando um JOIN para cruzar a tabela de Vendas com a tabela de Produtos.

SELECT
p.titulo AS nome_produto,
SUM(v.quantidade) AS total_vendido
FROM Vendas v
JOIN Produtos p ON v.produto_id = p.id
GROUP BY p.titulo
HAVING SUM(v.quantidade) > 10;
