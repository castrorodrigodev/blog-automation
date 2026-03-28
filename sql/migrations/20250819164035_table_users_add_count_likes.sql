-- Migration: table_users_add_count_likes
-- Created at: Tue Aug 19 16:40:35 UTC 2025

-- Write your SQL script here

-- UP
ALTER TABLE posts ADD COLUMN count_likes INT DEFAULT 0;

-- DOWN
ALTER TABLE posts DROP COLUMN total_likes;