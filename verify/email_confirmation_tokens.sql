-- Verify db-plan:email_confirmation_tokens on pg

BEGIN;

SELECT
  id,
  customer_id,
  token_hash,
  date_expires
FROM email_confirmation_tokens
WHERE FALSE;

ROLLBACK;
