-- Criar o perfil de Leitor
CREATE ROLE leitor_Organizacao;
-- Criar o perfil de Editor
CREATE ROLE editor_Organizacao;-- Comando Delete

-- O Leitor só pode ver (SELECT) as tabelas
GRANT SELECT ON Utilizadores TO leitor_Organizacao;
GRANT SELECT ON Vendas TO leitor_Organizacao;
-- O Editor pode inserir dados (INSERT) e mudar coisas (UPDATE)
GRANT SELECT, INSERT, UPDATE ON Produtos TO editor_Organizacao;

-- Mudar o perfil ativo para o Gestor/Editor
RESET ROLE;
GRANT UPDATE ON Produtos TO editor_Organizacao;
-- Testar novamente:

SET ROLE editor_Organizacao;
UPDATE Produtos SET preco = 22.50 WHERE id = 1;

-- Depois de testar, o computador vai achar que você ainda é o estagiário ou
outro utilizador qualquer. Para voltar a ter poderes totais, escreva:
RESET ROLE;