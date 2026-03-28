-- Migration: create_table_users
-- Created at: Sat Aug  9 15:03:44 UTC 2025

-- Write your SQL script here

-- UP
CREATE TABLE IF NOT EXISTS migrations (
    id SERIAL PRIMARY KEY,
    filename TEXT NOT NULL UNIQUE,
    applied_at TIMESTAMP NOT NULL DEFAULT NOW()
);

-- DOWN
DROP TABLE IF EXISTS migrations;
