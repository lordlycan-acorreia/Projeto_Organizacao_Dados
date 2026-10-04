-- Quanto se vendeu por produto
SELECT produto_id, SUM(quantidade) AS total_vendido
FROM Vendas
GROUP BY produto_id
ORDER BY total_vendido DESC;

-- Relatório de vendas mensal
CREATE OR REPLACE VIEW Relatorio_Vendas_Mensal AS
SELECT
DATE_TRUNC('month', data) AS mes_faturacao,
COUNT(*) AS total_vendas,
SUM(preco) AS receita_total
FROM Vendas
GROUP BY DATE_TRUNC('month', data)
ORDER BY mes_faturacao DESC;

-- Verificar os produtos com menos de 5 de stock
SELECT nome, stock
FROM Produtos
WHERE stock < 5;
