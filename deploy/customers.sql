-- Deploy db-plan:customers to pg

BEGIN;

CREATE TABLE customers (
  id BIGSERIAL PRIMARY KEY,
  email TEXT NOT NULL UNIQUE,
  password_hash TEXT NOT NULL,
  card_id TEXT NOT NULL UNIQUE,
  date_created TIMESTAMPTZ NOT NULL DEFAULT now(),
  is_verified_email BOOLEAN NOT NULL DEFAULT FALSE
);

COMMIT;
