-- Instrução de criação da View
CREATE OR REPLACE VIEW Relatorio_Vendas_Mensal AS
SELECT
DATE_TRUNC('month', v.data) AS mes_faturacao,
COUNT(*) AS total_vendas,
SUM(p.preco * v.quantidade) AS receita_total
FROM vendas v
JOIN produtos p ON v.produto_id = p.id
GROUP BY DATE_TRUNC('month', v.data)
ORDER BY mes_faturacao DESC
  
-- Consulta de stock crítico
SELECT titulo, stock
FROM Produtos
WHERE stock < 5;
