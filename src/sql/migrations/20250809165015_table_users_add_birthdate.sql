-- Migration: table_users_add_birthdate
-- Created at: Sat Aug  9 16:50:15 UTC 2025

-- Write your SQL script here

-- UP
ALTER TABLE users
ADD COLUMN birth_date DATE;

-- DOWN
ALTER TABLE users
DROP COLUMN IF EXISTS birth_date;