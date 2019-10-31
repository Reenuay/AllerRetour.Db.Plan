-- Verify db-plan:customer_profiles on pg

BEGIN;

SELECT customer_id, first_name, last_name, birthday, gender FROM customer_profiles WHERE FALSE;

ROLLBACK;
