-- Deploy db-plan:email_confirmation_tokens to pg

BEGIN;

CREATE TABLE email_confirmation_tokens (
  email TEXT NOT NULL,
  token TEXT NOT NULL UNIQUE,
  date_expires TIMESTAMPTZ NOT NULL DEFAULT now() + interval '12 hours'
);

COMMIT;
