-- Deploy db-plan:password_reset_tokens to pg

BEGIN;

CREATE TABLE password_reset_tokens (
  id BIGSERIAL PRIMARY KEY,
  email TEXT NOT NULL,
  token_hash TEXT NOT NULL,
  date_expires TIMESTAMPTZ NOT NULL DEFAULT now() + interval '12 hours'
);

COMMIT;
