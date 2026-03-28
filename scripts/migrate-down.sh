#!/bin/bash
set -e
set -a
source .env
set +a

MIGRATIONS_DIR="sql/migrations"

# Obtener última migration aplicada
last_migration=$(docker exec -i "$DB_CONTAINER" psql -U "$DB_USER" -d "$DB_NAME" -t -c \
    "SELECT filename FROM migrations ORDER BY id DESC LIMIT 1;" | xargs)

if [[ -z "$last_migration" ]]; then
    echo "⚠️ No migrations to roll back."
    exit 0
fi

file="$MIGRATIONS_DIR/$last_migration"

if [[ ! -f "$file" ]]; then
    echo "❌ Migration file not found: $file"
    exit 1
fi

echo "⏬ Rolling back: $last_migration"
awk '/-- DOWN/{flag=1; next} /-- UP/{flag=0} flag' "$file" \
| docker exec -i "$DB_CONTAINER" psql -U "$DB_USER" -d "$DB_NAME"

# Quitar de la tabla migrations
docker exec -i "$DB_CONTAINER" psql -U "$DB_USER" -d "$DB_NAME" -c \
    "DELETE FROM migrations WHERE filename = '$last_migration';"
