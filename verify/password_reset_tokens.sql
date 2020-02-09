-- Verify db-plan:password_reset_tokens on pg

BEGIN;

SELECT
  id,
  customer_id,
  token_hash,
  date_expires
FROM password_reset_tokens
WHERE FALSE;

ROLLBACK;
