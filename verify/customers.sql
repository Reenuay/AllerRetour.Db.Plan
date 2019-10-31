-- Verify db-plan:customers on pg

BEGIN;

SELECT
  id,
  email,
  password_hash,
  card_id,
  date_created,
  is_verified_email
FROM customers
WHERE FALSE;

ROLLBACK;
