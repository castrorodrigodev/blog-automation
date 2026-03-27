-- Migration: trigger_table_posts_increment_counnt_likes
-- Created at: Wed Aug 20 03:25:36 UTC 2025

-- Write your SQL script here

-- UP
CREATE OR REPLACE FUNCTION increment_like_count()
RETURNS TRIGGER AS $$
BEGIN
  UPDATE posts SET count_likes = count_likes + 1 WHERE id = NEW.post_id;
  RETURN NEW;
END;
$$ LANGUAGE plpgsql;

-- Trigger para incremento
CREATE TRIGGER trg_increment_like
AFTER INSERT ON likes
FOR EACH ROW
EXECUTE FUNCTION increment_like_count();

-- DOWN
DROP TRIGGER IF EXISTS trg_increment_like ON likes;

-- Luego borrar función
DROP FUNCTION IF EXISTS increment_like_count ();