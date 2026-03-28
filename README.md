# 🧱 Instructions 🧱 #

###### ###### ###### ###### ###### ######
### 🚀 Getting Started 🚀
### ---------------------
### 1. Environment variables: .env file
### 2. Execute Docker DB: docker-compose up -d
### 3. make reset
### 4. make migrate-up
### 5. make seed
###### ###### ###### ###### ###### ######
### 🚀 New Migration 🚀
### ---------------------
### 1. make create-migration NAME=<migration_name>
### 2. make migrate-up
###### ###### ###### ###### ###### ######
### 🚀🚀 Rollback 🚀🚀
### ---------------------
### 1. make migrate-down
###### ###### ###### ###### ###### ######
### Another approach (Similar to Big Data)
### 1. make reset
### 2. make migrate-up
### 3. make run FILE=sql/generate-big-data.sql
### 3. make run FILE=sql/recalculate-likes.sql
###### ###### ###### ###### ###### ######