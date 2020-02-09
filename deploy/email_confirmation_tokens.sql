-- Deploy db-plan:email_confirmation_tokens to pg

BEGIN;

CREATE TABLE email_confirmation_tokens (
  id BIGSERIAL PRIMARY KEY,
  customer_id BIGINT NOT NULL REFERENCES customers(id),
  token_hash TEXT NOT NULL,
  date_expires TIMESTAMPTZ NOT NULL DEFAULT now() + interval '12 hours'
);

COMMIT;
