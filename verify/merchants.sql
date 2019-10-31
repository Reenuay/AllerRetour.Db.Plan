-- Verify db-plan:merchants on pg

BEGIN;

SELECT id FROM merchants WHERE FALSE;

ROLLBACK;
