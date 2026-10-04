-- Update Utilizadores
UPDATE Utilizadores
SET email = 'novo.joao@email.com'
WHERE nome = 'João Silva';

-- A Limpeza apagar registos sem sentido
DELETE FROM Vendas
WHERE quantidade = 0;

-- Adicionar a validação CHECK
ALTER TABLE Produtos
ADD CONSTRAINT preco_positivo CHECK (preco >= 0);
