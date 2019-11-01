-- Deploy db-plan:customers.is_deactivated to pg

BEGIN;

ALTER TABLE customers ADD COLUMN is_deactivated BOOLEAN NOT NULL DEFAULT FALSE;

COMMIT;
