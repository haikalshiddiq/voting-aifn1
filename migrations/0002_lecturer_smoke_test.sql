CREATE TABLE IF NOT EXISTS smoke_sessions (
  token_hash TEXT PRIMARY KEY,
  used INTEGER NOT NULL DEFAULT 0,
  created_at TEXT NOT NULL,
  last_seen_at TEXT NOT NULL,
  used_at TEXT
);
CREATE TABLE IF NOT EXISTS smoke_ballots (
  id TEXT PRIMARY KEY,
  candidate_nim TEXT NOT NULL,
  created_at TEXT NOT NULL
);
CREATE TABLE IF NOT EXISTS smoke_audit (
  id TEXT PRIMARY KEY,
  action TEXT NOT NULL,
  created_at TEXT NOT NULL
);
CREATE INDEX IF NOT EXISTS idx_smoke_sessions_active ON smoke_sessions(used,last_seen_at);
