-- Migration: crate_table_likes
-- Created at: Tue Aug 19 06:09:08 UTC 2025

-- Write your SQL script here

-- UP
CREATE TABLE IF NOT EXISTS likes (
    user_id UUID NOT NULL REFERENCES users(id) ON DELETE CASCADE,
    post_id UUID NOT NULL REFERENCES posts(id) ON DELETE CASCADE,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY (user_id, post_id)
);

-- DOWN
DROP TABLE IF EXISTS likes;