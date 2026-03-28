-- Migration: remove_trigger_and_prepare_batch
-- Created at: Sat Mar 28 12:51:09 UTC 2026

-- Write your SQL script here

-- UP
DROP TRIGGER IF EXISTS trg_increment_like ON likes;

DROP FUNCTION IF EXISTS increment_like_count ();

-- DOWN (opcional)
-- podrías recrearlo si quisieras