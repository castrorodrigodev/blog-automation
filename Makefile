SCRIPTS_DIR=scripts
SQL_DIR=sql

.PHONY: up down reset create seed run migrate-up migrate-down

up:
	docker-compose up -d

down:
	docker-compose down -v

reset:
	${SCRIPTS_DIR}/run-sql.sh ${SQL_DIR}/reset.sql

# create:
# 	${SCRIPTS_DIR}/run-sql.sh ${SQL_DIR}/base/create.sql

create-migration:
	${SCRIPTS_DIR}/create-migration.sh $(NAME)

migrate-up:
	${SCRIPTS_DIR}/migrate-up.sh

migrate-down:
	${SCRIPTS_DIR}/migrate-down.sh

seed:
	${SCRIPTS_DIR}/run-sql.sh ${SQL_DIR}/seeds/seed.sql

run:
	@echo "Uso: make run FILE=${SQL_DIR}/archivo.sql"
	@if [ -z "$(FILE)" ]; then \
		echo "ERROR: Debes pasar FILE=archivo.sql"; \
		exit 1; \
	fi
	${SCRIPTS_DIR}/run-sql.sh $(FILE)
# make run FILE=${SQL_DIR}/mi_archivo.sql
