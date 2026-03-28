-- Migration: table_users_not_null_birthdate
-- Created at: Sun Aug 10 00:25:14 UTC 2025

-- Write your SQL script here

-- UP
UPDATE users SET birth_date = '1970-01-01' WHERE birth_date IS NULL;
ALTER TABLE users ALTER COLUMN birth_date SET NOT NULL;

-- DOWN
ALTER TABLE users ALTER COLUMN birth_date DROP NOT NULL;
UPDATE users SET birth_date = NULL WHERE birth_date = DATE '1970-01-01';