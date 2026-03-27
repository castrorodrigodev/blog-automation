.PHONY: up down reset create seed run migrate-up migrate-down

up:
	docker-compose up -d

down:
	docker-compose down -v

reset:
	./src/scripts/run-sql.sh src/sql/reset.sql

# create:
# 	./src/scripts/run-sql.sh src/sql/base/create.sql

create-migration:
	./src/scripts/create-migration.sh $(NAME)

migrate-up:
	./src/scripts/migrate-up.sh

migrate-down:
	./src/scripts/migrate-down.sh

seed:
	./src/scripts/run-sql.sh src/sql/seeds/seed.sql

run:
	@echo "Uso: make run FILE=src/sql/archivo.sql"
	@if [ -z "$(FILE)" ]; then \
		echo "ERROR: Debes pasar FILE=archivo.sql"; \
		exit 1; \
	fi
	./src/scripts/run-sql.sh $(FILE)
# make run FILE=src/sql/mi_archivo.sql
