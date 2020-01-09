-- Verify db-plan:email_confirmation_tokens on pg

BEGIN;

SELECT
  id,
  email,
  token,
  is_used,
  date_expires
FROM email_confirmation_tokens
WHERE FALSE;

ROLLBACK;
