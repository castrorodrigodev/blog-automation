#!/bin/bash

set -a
source .env
set +a

SQL_FILE=$1

if [ -z "$SQL_FILE" ]; then
  echo "Uso: $0 archivo.sql"
  exit 1
fi

if [ ! -f "$SQL_FILE" ]; then
  echo "Error: archivo '$SQL_FILE' no encontrado."
  exit 1
fi

if [ -z "$DB_CONTAINER" ] || [ -z "$DB_USER" ] || [ -z "$DB_NAME" ]; then
  echo "Error: asegúrate de definir DB_CONTAINER, DB_USER y DB_NAME en tu archivo .env"
  exit 1
fi

cat "$SQL_FILE" | docker exec -i "$DB_CONTAINER" psql -U "$DB_USER" -d "$DB_NAME"
