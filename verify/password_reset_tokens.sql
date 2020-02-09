-- Verify db-plan:password_reset_tokens on pg

BEGIN;

SELECT
  id,
  email,
  token_hash,
  date_expires
FROM password_reset_tokens
WHERE FALSE;

ROLLBACK;
