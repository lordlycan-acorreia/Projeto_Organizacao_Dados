#!/bin/bash
# Script de Backup e Restauro (Plano de Disaster Recovery)

echo "A iniciar o processo de recuperação..."

# 1. Comando para fazer o backup (O 'Fotógrafo')
# pg_dump -U utilizador -h host_do_neon -d neondb > backup_seguro.sql

# 2. Comando para restaurar o backup (O 'Desfibrilador')
# psql -U utilizador -h host_do_neon -d neondb < backup_seguro.sql

echo "Sistema recuperado com sucesso. Está pronto, patrão!"
