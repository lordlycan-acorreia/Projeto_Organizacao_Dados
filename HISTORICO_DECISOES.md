# Histórico de Decisões Técnicas

- 04/10/2026: Decidimos usar a Cloud (NeonDB) em vez de uma base de dados local para garantir que o sistema está sempre acessível e à prova de falhas de hardware local.
- 04/10/2026: Na tabela Produtos, adicionámos a restrição CHECK (preco >= 0) para impedir erros humanos e não permitir que o sistema registe produtos com preços negativos.
- 04/10/2026: Criámos uma VIEW específica para ocultar os emails e dados pessoais dos clientes (dados anonimizados), garantindo o cumprimento das regras de proteção de dados.
- 04/10/2026: Desenvolvemos o script recuperar_tudo.sh para automatizar o processo de backup e restauro (utilizando pg_dump e psql), garantindo que a base de dados pode ser recuperada rapidamente em caso de desastre.
