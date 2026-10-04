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

Novidades da Versão 1.0 (Dashboard e Segurança)
- Dashboard de Vendas: Criámos VIEWS que permitem ao Diretor ver o resumo de vendas atualizado num clique, sem necessidade de cálculos manuais.
- Ética e Privacidade: Implementámos uma VIEW de dados anonimizados para garantir que os dados sensíveis dos clientes estão protegidos de acessos indevidos.

## Conclusão do Projeto (UFCD 10797)

Este repositório reflete a consolidação da infraestrutura de base de dados da Organização e marca a conclusão oficial do percurso prático do módulo UFCD 10797 (Gestão e Armazenamento de Dados). 

O sistema encontra-se agora estável, documentado e preparado para operação autónoma através dos ficheiros de apoio ao utilizador e estratégia futura.

## Continuidade e Gestão de Incidentes (SLA)

O sistema conta agora com uma infraestrutura de continuidade cloud. Foram implementadas rotinas estritas de monitorização (via `pg_stat_activity`), manutenção preventiva periódica e um registo centralizado de incidentes (`tb_log_incidentes`). Existe também um protocolo de comunicação transparente para atuar em tempo útil em caso de indisponibilidade de serviço, garantindo a rápida recuperação da infraestrutura.

## Encerramento Global e Transição Cloud (Hora 50)

A infraestrutura de dados da Organização encontra-se totalmente consolidada na nuvem (Neon PostgreSQL). A passagem de testemunho foi concluída assegurando três pilares de resiliência:

* **Autonomia Operacional ("Teste de Férias"):** O sistema não depende de um único técnico. Qualquer colaborador autorizado acede à vista `v_handoff_sistema` no Neon SQL Editor para consultar os manuais e rotinas diárias.
* **Segurança e Gestão de Acessos (RBAC):** Os perfis possuem permissões estritas para a sua função (ex: apenas `SELECT`), permitindo ligações externas via SSL para Power BI e Excel sem comprometer as credenciais de administração.
* **Proteção e Recuperação (PITR):** Através do recurso de Branches e Point-in-Time Recovery no Neon Console, a organização consegue reverter toda a base de dados para qualquer minuto específico em caso de desastre informático.
