-- Mascarar dados
CREATE VIEW Vendas_Anonimas AS
SELECT id, produto_id, quantidade, 'ANONIMO' AS nome_cliente
FROM Vendas;
-- Explicação literal: Esta tabela não existe de verdade. É uma janela mágica.
-- Quem olhar para ela só vê "ANONIMO". Os dados reais (o nome do cliente)
-- continuam seguros na tabela original, mas ninguém os vê por aqui.

-- Registo de modificações
CREATE TABLE Log_Acessos (
quem_fez_o_select TEXT,
data_acesso TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE OR REPLACE FUNCTION registar_acesso() RETURNS
TRIGGER AS $$
BEGIN
INSERT INTO Log_Acessos (quem_fez_o_select) VALUES
(current_user);
RETURN NULL;
END;
$$ LANGUAGE plpgsql;
-- Associar o porteiro (Trigger) à tabela de clientes para alterações
CREATE TRIGGER trigger_auditoria_clientes
AFTER UPDATE ON utilizadores

FOR EACH ROW
EXECUTE FUNCTION registar_alteracao();

-- Explicação literal: Sempre que alguém alterar um registo (UPDATE) na
-- tabela de Clientes, o sistema tira automaticamente uma fotografia ao nome
-- do utilizador atual e guarda-a no log de auditoria.
