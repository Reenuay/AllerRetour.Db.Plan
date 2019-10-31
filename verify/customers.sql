-- Verify db-plan:customers on pg

BEGIN;

SELECT id FROM customers WHERE FALSE;

ROLLBACK;
