-- Passo 2: O comando "Ver Tudo" (O balanço inicial)
-- Abram o Neon SQL Editor, cliquem no SQL Editor e escrevam:
SELECT * FROM Vendas;

-- Passo 3: O comando "Filtro Inteligente" (Pedir dados específicos)
-- Vamos supor que o Diretor só quer saber das vendas que têm uma quantidade superior a 1.
SELECT id, utilizador_id, produto_id, quantidade
FROM Vendas
WHERE quantidade > 1;

-- Passo 4: O "Join" (O superpoder do Engenheiro)
-- O vosso Diretor não quer ver números de ID (ex: utilizador 1). Ele quer ver o nome
do João Silva. 
-- Para isso, temos de "colar" a tabela das Vendas com a tabela dos
Utilizadores. 
SELECT Vendas.id, Utilizadores.nome, Produtos.titulo, Vendas.quantidade
FROM Vendas
JOIN Utilizadores ON Vendas.utilizador_id = Utilizadores.id
JOIN Produtos ON Vendas.produto_id = Produtos.id;