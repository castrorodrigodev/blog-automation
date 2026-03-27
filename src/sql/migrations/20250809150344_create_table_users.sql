-- Migration: create_table_users
-- Created at: Sat Aug  9 15:03:44 UTC 2025

-- Write your SQL script here

-- UP
CREATE TABLE IF NOT EXISTS users (
  id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  username TEXT NOT NULL,
  email TEXT NOT NULL,
  password TEXT NOT NULL
);

-- DOWN
DROP TABLE IF EXISTS users;
