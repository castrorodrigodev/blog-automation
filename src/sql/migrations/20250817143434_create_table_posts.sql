-- Migration: create_table_posts
-- Created at: Sun Aug 17 14:34:34 UTC 2025

-- Write your SQL script here

-- UP
CREATE TABLE IF NOT EXISTS posts (
  id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  content TEXT NOT NULL,
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  user_id UUID REFERENCES users(id) ON DELETE CASCADE
);

-- DOWN
DROP TABLE IF EXISTS posts;