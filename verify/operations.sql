-- Verify db-plan:operations on pg

BEGIN;

SELECT
  id,
  customer_id,
  merchant_id,
  amount,
  date_created
FROM operations
WHERE FALSE;

ROLLBACK;
