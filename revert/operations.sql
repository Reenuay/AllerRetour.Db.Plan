-- Revert db-plan:operations from pg

BEGIN;

DROP TABLE operations;

COMMIT;
