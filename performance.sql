-- Criar um Índice (O Atalho)
CREATE INDEX idx_utilizador_nome ON Utilizadores(nome);

-- Criar o Explain
EXPLAIN SELECT * FROM Utilizadores WHERE nome = 'João Silva';