-- Verify db-plan:customers on pg

BEGIN;

SELECT
  id,
  email,
  password_hash,
  card_id,
  date_created,
  email_confirmed
FROM customers
WHERE FALSE;

ROLLBACK;
