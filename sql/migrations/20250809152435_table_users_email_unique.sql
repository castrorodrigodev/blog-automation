-- Migration: table_users_email_unique
-- Created at: Sat Aug  9 15:24:35 UTC 2025

-- Write your SQL script here

-- UP
ALTER TABLE users
ADD CONSTRAINT users_email_unique UNIQUE (email);

-- DOWN
ALTER TABLE users
DROP CONSTRAINT IF EXISTS users_email_unique;
