-- Comando Update

UPDATE Utilizadores
SET email = 'novo.joao@email.com'
WHERE nome = 'João Silva';

-- Comando Delete

DELETE FROM Vendas
WHERE quantidade = 0;

-- Constraint adicionada Utilizadores
-- ALTER TABLE Utilizadores
-- ADD CONSTRAINT email_valido CHECK (email LIKE '%@%.%');

-- Constraint adicionada Produtos
-- ALTER TABLE Produtos
-- ADD CONSTRAINT preco_positivo CHECK (preco >= 0);