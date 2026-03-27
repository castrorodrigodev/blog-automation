#!/bin/bash

set -a
source .env
set +a

if [ -z "$DB_CONTAINER" ] || [ -z "$DB_USER" ] || [ -z "$DB_NAME" ]; then
  echo "Error: asegúrate de definir DB_CONTAINER, DB_USER y DB_NAME en tu archivo .env"
  exit 1
fi

cat src/sql/reset.sql | docker exec -i "$DB_CONTAINER" psql -U "$DB_USER" -d "$DB_NAME"
