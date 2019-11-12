-- Verify db-plan:email_confirmed on pg

BEGIN;

SELECT email_confirmed FROM customers WHERE FALSE;

ROLLBACK;
