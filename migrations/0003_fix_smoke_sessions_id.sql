-- AiFn1: align smoke_sessions schema with Worker queries.
-- The Worker inserts/reads smoke_sessions.id, but the deployed D1 table lacks it.

ALTER TABLE smoke_sessions ADD COLUMN id TEXT;

-- Preserve compatibility if rows already exist.
UPDATE smoke_sessions
SET id = lower(hex(randomblob(16)))
WHERE id IS NULL OR trim(id) = '';

CREATE UNIQUE INDEX IF NOT EXISTS idx_smoke_sessions_id
ON smoke_sessions(id);
