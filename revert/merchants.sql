-- Revert db-plan:merchants from pg

BEGIN;

DROP TABLE merchants;

COMMIT;
