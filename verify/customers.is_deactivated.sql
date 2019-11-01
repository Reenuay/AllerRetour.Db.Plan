-- Verify db-plan:customers.is_deactivated on pg

BEGIN;

SELECT is_deactivated FROM customers WHERE FALSE;

ROLLBACK;
