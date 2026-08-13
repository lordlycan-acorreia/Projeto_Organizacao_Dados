# Projeto_Organizacao_Dados
Este é o repositório do sistema de gestão da organização. Aqui guardaremos toda a estrutura da nossa base de dados.

# Sistema de Gestão de Dados
Este sistema serve para gerir clientes, vendas e stocks da Organização.

## Como instalar e usar
Todo o código estrutural está nos ficheiros `.sql` da pasta principal. 
Para iniciar a base de dados, executar os comandos de `CREATE TABLE` presentes nos scripts.

## Avisos
Não existem passwords gravadas neste repositório. Em caso de falha de dados, utilizar os scripts de recuperação.

## Plano de Resiliência e Disaster Recovery (Regra 3-2-1)
Para garantir a salvaguarda dos dados, foi implementado um mecanismo de recuperação:
- O ficheiro `recuperar_tudo.sh` contém os comandos de `pg_dump` para exportar a base de dados e o comando `psql` para injetar o backup de volta.
- Sendo a base de dados alojada na Cloud (NeonDB), cumprimos o requisito de ter a cópia fora do local físico para prevenir desastres locais.
