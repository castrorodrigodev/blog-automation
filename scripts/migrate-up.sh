#!/bin/bash
set -e
set -a
source .env
set +a

MIGRATIONS_DIR="sql/migrations"

# Crear tabla migrations si no existe
docker exec -i "$DB_CONTAINER" psql -U "$DB_USER" -d "$DB_NAME" <<'EOF'
CREATE TABLE IF NOT EXISTS migrations (
    id SERIAL PRIMARY KEY,
    filename TEXT NOT NULL UNIQUE,
    applied_at TIMESTAMP NOT NULL DEFAULT NOW()
);
EOF

# Aplicar solo migraciones nuevas
for file in $(ls "$MIGRATIONS_DIR"/*.sql | sort); do
    filename=$(basename "$file")

    # Verificar si ya está aplicada
    exists=$(docker exec -i "$DB_CONTAINER" psql -U "$DB_USER" -d "$DB_NAME" -t -c \
        "SELECT 1 FROM migrations WHERE filename = '$filename' LIMIT 1;")

    if [[ -n "$exists" ]]; then
        echo "✅ Already applied: $filename"
        continue
    fi

    echo "⏫ Applying migration: $filename"
    awk '/-- UP/{flag=1; next} /-- DOWN/{flag=0} flag' "$file" \
    | docker exec -i "$DB_CONTAINER" psql -U "$DB_USER" -d "$DB_NAME"

    # Registrar en la tabla migrations
    docker exec -i "$DB_CONTAINER" psql -U "$DB_USER" -d "$DB_NAME" -c \
        "INSERT INTO migrations (filename) VALUES ('$filename');"
done
