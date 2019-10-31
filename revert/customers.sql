-- Revert db-plan:customers from pg

BEGIN;

DROP TABLE customers;

COMMIT;
