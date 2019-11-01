-- Revert db-plan:customers.is_deactivated from pg

BEGIN;

ALTER TABLE customers DROP COLUMN is_deactivated;

COMMIT;
